unit mvutils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,  Dialogs,
  ExtCtrls, StdCtrls, Forms, DBCtrls, ComCtrls, Grids, DBgrids, dxDBGrid,
  DBTables, DB, RXDBCtrl, AdvAlertWindow, UnitGlobal;

const letrasunidad : array[1..19] of string = ('Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho', 'Nueve', 'Diez', 'Once', 'Doce', 'Trece', 'Catorce', 'Quince', 'Diez y Seis', 'Diez y Siete',
                                               'Diez y Ocho', 'Diez y Nueve');
      letrascentena : array[1..9] of string = ('Ciento', 'Doscientos', 'Trescientos', 'Cuatrocientos', 'Quinientos', 'Seiscientos', 'Setecientos', 'Ochocientos', 'Novecientos');
      letrasdecena : array[1..9] of string = ('Diez', 'Veinte', 'Treinta', 'Cuarenta', 'Cincuenta', 'Sesenta', 'Setenta', 'Ochenta', 'Noventa');

  procedure VerifiCambiosDBEdit;
  procedure VerifiCambiosEdit;
  procedure CambiaColorSoloLectura;
  procedure CambiaColorModifica;
  Procedure auditoria_add(usuario,tipo,accion : string;documento : integer);
  Procedure Ejecutar_auditoria(tipo,titulo : string;documento : integer);
  function validafecha(dfecha: string): Boolean;
  function confirma(msg: string): Boolean;
  function millones(valor : real) : string;
  function redondeo(valor: double):double;
  function ObtenerNoDoc(Tipo,Grupo : string) : integer;
  Procedure ProQueryCliente(Codigo : String);
  Procedure ProQueryVendedor(Codigo : integer);
  Procedure ProQueryArticulos(Codigo : String);
  function FillGrupoSec : Tstrings;
  function GrupoSecPrimaria : string;
  function GrupoSecHide : Boolean;
  function ValidarError : Boolean;
  function mensage(mensg,titulo : pchar;botones : word) : integer;
  function ObtenerRegistroNo : Integer;
  function Control_usuario(formid,codigo : string) : integer;
  function mensaje(mensg,titulo : pchar;botones : word) : integer;
  function MaxPkey(Tabla :string; Campo :string) : integer;
  function RecId : integer;
  function IdTransaccion : integer;
  function CreateQuery : Tquery;
  function Find(Sql : String; Params : String) : Tquery;
  function TaxRateFind(CodImp : String; TransDate : TDateTime) : Double;
  procedure AddInfoLog(Texto : string; index : integer; imageIndex : integer);
  function UltimoCostoArt(Codigo : String) : Double;
  function ModeloInventario : TModeloInventario;
  function CostoPromedio(_Codigo : String;_Almacen : String) : Double;
  function PagoEfectivo(condcion : String) : Boolean;
  function findCuentaSistema : TQuery;
  function InventarioFisico(_Codigo : String;_Almacen : String) : Double;
  procedure showinfo;
  function findCustParams : TQuery;
  function TipoDocDesc(Tipo_doc : String) : String;

  procedure NuevaVenta;
  procedure SetDatosCliente;
  Function VerificarDias(Codigo : string) : boolean;
  Function VerificarLimite(Codigo : string) : boolean;
  Function BalancePendiente(Codigo : string) : Double;
  procedure calculatotales;
  function  GetTotalCantidadfactdet : Double;

  function CompFiscalDesc(compfiscalid : string) : string;
  function VerificarCompFiscal(compfiscalid : string;gruposec : string) : boolean;
  function NextCompFiscal(compfiscalid : string;gruposec : string) : string;

  var
     UForma,Ucolector : TForm;
     CambiosDBEdit, CambiosEdit : Boolean;
     isCallFromVenta : Boolean;
     limite,dias_limite,dias_mayor,valor : double;
     factura : integer;

implementation

uses mvdata, mvdataVta, auditoria;


function CompFiscalDesc(compfiscalid : string) : string;
var
 qfind : TQuery;
begin
  qfind := find('Select * from CompFiscal Where CompFiscalid = :fis',compfiscalid);

  result := qfind.fieldbyname('Descripcion').AsString;

  FreeAndNil(qfind);
end;

function NextCompFiscal(compfiscalid : string;gruposec : string) : string;
var
 qfind : TQuery;
 valor : string;
begin
 valor := '';

 if (gruposec = 'GR1') then
  begin
    qfind := find('Select * from CompFiscal Where CompFiscalid = :fis',compfiscalid);

    valor := qfind.fieldbyname('Mascarilla').AsString + formatfloat('00000000',qfind.fieldbyname('Proximo').asfloat);

    qfind.Close;
    qfind.sql.Text := 'Update CompFiscal Set Proximo = proximo + 1 where CompFiscalid = "'+ compfiscalid + '"';
    qfind.ExecSQL;

    FreeAndNil(qfind);
  end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 if (gruposec = 'GR2') then
  begin
    qfind := find('Select * from CompFiscal Where CompFiscalid = :fis',compfiscalid);

    valor := qfind.fieldbyname('Mascarilla').AsString + formatfloat('00000000',qfind.fieldbyname('Otra').asfloat);

    qfind.Close;
    qfind.sql.Text := 'Update CompFiscal Set Otra = Otra + 1 where CompFiscalid = "'+ compfiscalid + '"';
    qfind.ExecSQL;

    FreeAndNil(qfind);
  end;
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 result := valor;
end;

function VerificarCompFiscal(compfiscalid : string;gruposec : string) : boolean;
var
 qfind : TQuery;
 restan : integer;
begin
 if (gruposec = 'GR1') then
 begin
  qfind := find('Select * from CompFiscal Where CompFiscalid = :fis',compfiscalid);

  restan := qfind.fieldbyname('Final').asinteger - qfind.fieldbyname('Proximo').asinteger;

  if ((restan <= qfind.fieldbyname('Avisar').asinteger) and (restan > 0)) then
      Mensaje(Pchar('Tan solo restan '+ inttostr(restan) +' numeros de comprobantes fiscales para "'+qfind.fieldbyname('Descripcion').asstring+'". Porfavor verificar.'),TitleSystem,mb_ok + mb_iconinformation);

  if (restan > 0) then
      result := true
  else
   begin
     Mensaje(pchar('Los numeros de comprobantes fiscales para "'+qfind.fieldbyname('Descripcion').asstring+'", se han agotado. Porfavor verificar.'),TitleSystem,mb_ok + mb_iconinformation);
     result := false;
   end;

  FreeAndNil(qfind);
 end
 else
  result := true;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function TaxRateFind(CodImp : String; TransDate : TDateTime) : Double;
Var
 qfind : TQuery;
begin
 qfind := CreateQuery;

 qfind.Active := false;
 qfind.sql.Text := ' SELECT * FROM impuestosvalue '+
                   ' WHERE Desde <= :trans '+
                   ' AND hasta >= :trans '+
                   ' AND codimpuesto = :cod ';
 qfind.ParamByName('trans').AsDateTime := TransDate;
 qfind.ParamByName('cod').AsString := CodImp;
 qfind.Active := true;

 result := qfind.FieldByName('Tasa').AsFloat;

 FreeAndNil(qfind);
end;

function ObtenerRegistroNo : Integer;
var numero : integer;
begin
 //Buscar ultimo numero registrono
 mvfdata.querygral.active := false;
 mvfdata.querygral.sql.text := 'SELECT * FROM secuencia';
 mvfdata.querygral.active := true;
 mvfdata.querygral.First;

 Numero := mvfdata.querygral.Fields[0].asinteger + 1;

 //Actualizar ultimo numero registrono
 mvfdata.querygral.active := false;
 mvfdata.querygral.sql.text := 'UPDATE secuencia SET registrono = registrono + 1 ';
 mvfdata.querygral.execsql;

 Result := Numero;
end;

{Procedimiento para personalizar mensages}
function mensage(mensg,titulo : pchar;botones : word) : integer;
begin
 Result := Application.MessageBox(mensg,titulo,botones);
end;  


function GrupoSecHide : Boolean;
begin
 mvfdata.qgral1.Active := False;
 mvfdata.qgral1.sql.Text := 'Select gruposec from usuarios '+
                            'where codigo = :cod';
 mvfdata.qgral1.Params[0].asstring := mvfdata.QpdxUsuario.value;
 mvfdata.qgral1.Active := True;

 if (mvfdata.qgral1.Fields[0].asstring = 'S') then
  Result := True
 else
  Result := False;

end;


function FillGrupoSec : Tstrings;
Var
  StringList: TStrings;
begin
  mvfdata.qgral1.Active := False;
  mvfdata.qgral1.sql.Text := 'Select * from GrupoSecTable';
  mvfdata.qgral1.Active := True;

  StringList := TStringList.Create;
  try
    with StringList do begin
     add('Todos');
     while not mvfdata.qgral1.Eof do
      begin
       add(mvfdata.qgral1.fieldbyname('grupoid').value);
       mvfdata.qgral1.Next;
      end;

    end;
  finally
    Result := StringList;
  end;
end;

function GrupoSecPrimaria : string;
begin
  mvfdata.qgral1.Active := False;
  mvfdata.qgral1.sql.Text := 'Select grupoid from GrupoSecTable where gruposecprimario = :parm';
  mvfdata.qgral1.Params[0].asstring := 'S';
  mvfdata.qgral1.Active := True;

  Result := mvfdata.qgral1.fieldbyname('grupoid').value;
end;

Procedure ProQueryCliente(Codigo : String);
begin
  mvfdataVta.QueryCliente.Active := false;
  mvfdataVta.QueryCliente.Params[0].AsString := Codigo;
  mvfdataVta.QueryCliente.Active := True;
end;

Procedure ProQueryArticulos(Codigo : String);
begin
  mvfdataVta.QueryArticulos.Active := false;
  mvfdataVta.QueryArticulos.Params[0].AsString := Codigo;
  mvfdataVta.QueryArticulos.Active := True;
end;

Procedure ProQueryVendedor(Codigo : integer);
begin
  mvfdataVta.QueryVendedor.Active := false;
  mvfdataVta.QueryVendedor.Params[0].asinteger := Codigo;
  mvfdataVta.QueryVendedor.Active := True;
end;

Procedure Ejecutar_auditoria(tipo,titulo : string; documento : integer);
begin
 mvfdata.Qauditoria.Active := False;
 mvfdata.Qauditoria.Params[0].asstring := tipo;
 mvfdata.Qauditoria.Params[1].asinteger := documento;
 mvfdata.Qauditoria.Active := True;

 mvfdata.titulo :=  titulo + inttostr(documento);

 fauditoria := Tfauditoria.Create(Application);
 fauditoria.ShowModal;
 fauditoria.Destroy;
end;


Procedure auditoria_add(usuario,tipo,accion : string;documento : integer);
 var comentario : string;
 begin
  if accion = 'A' then Comentario := 'Registro Adicionado';
  if accion = 'N' then Comentario := 'Registro Anulado';
  if accion = 'M' then Comentario := 'Registro Modificado';
  mvfdata.qgral1.Active := false;
  mvfdata.qgral1.sql.Text := 'insert into auditoria values(:0,:1,:2,:3,:4,:5,:6)';
  mvfdata.qgral1.Params[0].asstring := usuario;
  mvfdata.qgral1.Params[1].asstring := Tipo;
  mvfdata.qgral1.Params[2].asinteger := documento;
  mvfdata.qgral1.Params[3].asdate := date;
  mvfdata.qgral1.Params[4].asstring := copy(timetostr(now),1,5);
  mvfdata.qgral1.Params[5].asstring := accion;
  mvfdata.qgral1.Params[6].asstring := comentario;
  mvfdata.qgral1.ExecSQL;
 end;


procedure VerifiCambiosDBEdit;
var
   i : Integer;
begin
CambiosDBEdit := False;
for i := 1 to UForma.ComponentCount -1 do
    if UForma.Components[i] is TDBEdit then
       if (UForma.Components[i] as TDBEdit).Modified then
          begin
          CambiosDBEdit := (UForma.Components[i] as TDBEdit).Modified;
          Break
          end; {for}
end; {begin procedure}


{Procedimiento para verificar si hubo cambio
 en por lo menos un campo de la pantalla (Edit)}

procedure VerifiCambiosEdit;
var
   i : Integer;
begin
CambiosDBEdit := False;
for i := 1 to UForma.ComponentCount -1 do
    if UForma.Components[i] is TEdit then
       if (UForma.Components[i] as TEdit).Modified then
          begin
          CambiosEdit := (UForma.Components[i] as TEdit).Modified;
          Break
          end; {for}
end; {begin procedure}

{begin procedure}{Procedimiento para hacer que los componentes DBEdit,
 DBMemo y DBGrid solo puedan ser vistos y no modificados}
procedure CambiaColorSoloLectura;
var
   i : Integer;
begin
for i := 0 to Uforma.ComponentCount -1 do
    begin
    if Uforma.Components[i] is TDBLookupComboBox then
       with UForma.Components[i] as TDBLookupComboBox do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}
    if Uforma.Components[i] is TDBComboBox then
       with UForma.Components[i] as TDBComboBox do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}
    if Uforma.Components[i] is TDBEdit then
       with UForma.Components[i] as TDBEdit do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}
    if UForma.Components[i] is TDBMemo then
       with UForma.Components[i] as TDBMemo do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}


    if UForma.Components[i] is TDBGrid then
       with UForma.Components[i] as TDBGrid do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}

    if UForma.Components[i] is TdxDBGrid then
       with UForma.Components[i] as TdxDBGrid do
       begin
       Color := $00F9FDFF
       end; {with}

    if UForma.Components[i] is TDBDateEdit then
       with UForma.Components[i] as TDBDateEdit do
       begin
       ReadOnly := True;
       Color := $00F9FDFF
       end; {with}
    if Uforma.Components[i] is TDBRadioGroup then
       with UForma.Components[i] as TDBRadioGroup do
       begin
       ReadOnly := True;
       end; {with}

    if UForma.Components[i] is TDBCheckBox then
       with UForma.Components[i] as TDBCheckBox do
       begin
       ReadOnly := True;
       end; {with}
    end; {for}
end; {begin procedure}


{Procedimiento para hacer que los componentes DBEdit,
 DBMemo y DBGrid puedan ser modificados}
procedure CambiaColorModifica;
var
   i : Integer;
begin
for i := 0 to Uforma.ComponentCount -1 do
    begin
    if Uforma.Components[i] is TDBLookupComboBox then
       with UForma.Components[i] as TDBLookupComboBox do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}
    if Uforma.Components[i] is TDBComboBox then
       with UForma.Components[i] as TDBComboBox do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}
    if Uforma.Components[i] is TDBEdit then
       with UForma.Components[i] as TDBEdit do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}
    if UForma.Components[i] is TDBMemo then
       with UForma.Components[i] as TDBMemo do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}
    if UForma.Components[i] is TDBDateEdit then
       with UForma.Components[i] as TDBDateEdit do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}


    if UForma.Components[i] is TDBGrid then
       with UForma.Components[i] as TDBGrid do
       begin
       ReadOnly := false;
       Color := clwindow
       end; {with}

    if UForma.Components[i] is TdxDBGrid then
       with UForma.Components[i] as TdxDBGrid do
       begin
       Color := clwindow
       end; {with}

    if Uforma.Components[i] is TDBRadioGroup then
       with UForma.Components[i] as TDBRadioGroup do
       begin
       ReadOnly := false;
       end; {with}

    if UForma.Components[i] is TDBCheckBox then
       with UForma.Components[i] as TDBCheckBox do
       begin
       ReadOnly := false;
       end; {with}
    end; {for}
end; {begin procedure}


function ObtenerNoDoc(Tipo,Grupo : string) : integer;
 begin
   mvfdata.qgral1.Active := False;
   mvfdata.qgral1.sql.Text := 'Select SecuenciaTable.Siguiente,SecuenciaTable.SecuenciaID from GrupoSecLine,SecuenciaTable '+
                              'Where GrupoSecLine.GrupoID = :1 '+
                              '  and GrupoSecLine.TipoDocID = :2 ' +
                              '  and SecuenciaTable.SecuenciaID = GrupoSecLine.SecuenciaID';
   mvfdata.qgral1.Params[0].asstring := Grupo;
   mvfdata.qgral1.Params[1].asstring := Tipo;
   mvfdata.qgral1.Active := True;

   if (mvfdata.qgral1.RecordCount > 0) Then
    begin
     mvfdata.qgral.Active := False;
     mvfdata.qgral.sql.Text := 'Update SecuenciaTable set siguiente = siguiente + 1 '+
                               'Where SecuenciaID = :1';
     mvfdata.qgral.Params[0].asstring := mvfdata.qgral1.Fields[1].Asstring;
     mvfdata.qgral.ExecSQL;

     Result := mvfdata.qgral1.Fields[0].AsInteger;
    end
   else
     Result := 0;
 end;


function validafecha(dfecha: string): Boolean;
 var
  valfecha: boolean;
  valdia: integer;
  dia,mes: string;
 begin
  valfecha  := false;
  dia := copy(dfecha,1,2);
  mes := copy(dfecha,4,2);
  if dia <> '  ' then
     valdia := StrToInt(dia)
  else
     valdia := 32;

  if (mes='01') or (mes='03') or (mes='05') or (mes='07') or
     (mes='08') or (mes='10') or (mes='12') then
     begin
      if (valdia <= 31) then
       valfecha := true
      else
       valfecha := false;
  end;

  if (mes='04') or (mes='06') or (mes='09') or (mes='11')then
     begin
      if (valdia >= 1) and (valdia <= 30) then
       valfecha := true
      else
       valfecha := false;
  end;

  if mes='02' then
     begin
      if (valdia >= 1) and (valdia <= 28) then
       valfecha := true
      else
       valfecha := false;
  end;

  Result := valfecha;
 end;

 function confirma(msg: string): Boolean;
 begin
   Result := MessageDlg(msg, mtconfirmation, [mbYes, mbNo], 0) = mrYes;
 end;

function millones(valor : real) : string;
var
    letra,valorchar: string;
    valorentero: integer;
    decimales,enteros,millones,miles,cientos,decenas,unidades: real;
begin
 letra := '';
 valorchar := '';
 millones := 0;
 miles := 0;
 cientos := 0;
 decenas := 0;
 unidades := 0;
 enteros := int(valor);
 decimales := (valor - enteros);
 if enteros >= 1000000 then
  begin
   millones := int(enteros/1000000);
   enteros := (enteros - (millones * 1000000));
 end;
 if enteros >= 1000 then
  begin
   miles := int(enteros/1000);
   enteros := (enteros - (miles * 1000));
 end;
 if enteros >= 100 then
  begin
   cientos := int(enteros/100);
   enteros := (enteros - (cientos * 100));
 end;
 if enteros >= 20 then
  begin
   decenas := int(enteros/10);
   enteros := (enteros - (decenas * 10));
 end;
 if enteros >= 1 then
  begin
   unidades := int(enteros);
   enteros := (enteros - unidades);
 end;

 //Calculo de los millones
 //Menos de 20 millones
 if (millones >0) and (millones <20) then
  begin
   valorentero := strtoint(floattostr(millones));
   if valorentero >0 then
    letra := letrasunidad[valorentero] + ' Millones';
   if millones = 1 then
    letra := 'Un Millon';
 end;
 //Entre 20 y 99 millones
 if (millones >=20) and (millones <100) then
  begin
   valorchar := formatfloat('##',millones);
   valorentero := strtoint(copy(valorchar,1,1));
   if valorentero >0 then
    letra := letrasdecena[valorentero] ;
   valorentero := strtoint(copy(valorchar,2,1));
   if valorentero > 0 then
    letra := letra + ' y ' + letrasunidad[valorentero] + ' Millones'
   else
    letra := letra + ' Millones';
 end;
 //Mas de 99 millones
 if millones >=100 then
  begin
   valorchar := formatfloat('###',millones);
   valorentero := strtoint(copy(valorchar,1,1));
   if valorentero >0 then
    letra := letrascentena[valorentero] ;
   if strtoint(copy(valorchar,2,2)) <20 then
    begin
     valorentero := strtoint(copy(valorchar,2,2));
     if valorentero > 0 then
      letra := letra + ' ' + letrasunidad[valorentero];
    end
   else
    begin
     valorentero := strtoint(copy(valorchar,2,1));
     if valorentero > 0 then
      letra := letra + ' ' + letrasdecena[valorentero];
     valorentero := strtoint(copy(valorchar,3,1));
     if valorentero > 0 then
      if copy(valorchar,2,1) = '0' then
       letra := letra + ' ' + letrasunidad[valorentero]
      else
       letra := letra + ' y ' + letrasunidad[valorentero];
   end;
   letra := letra + ' Millones';

   if millones = 100 then
    letra := 'Cien Millones';
 end;


 //Calculo de los miles
 //Menos de 20 Miles
 if (Miles >0) and (Miles <20) then
  begin
   if Miles = 1 then
    letra := letra + ' Mil'
   else
    begin
     valorentero := strtoint(floattostr(Miles));
     if valorentero >0 then
      letra := letra + letrasunidad[valorentero] + ' Mil';
   end;
 end;
 //Entre 20 y 99 Miles
 if (Miles >=20) and (Miles <100) then
  begin
   valorchar := formatfloat('##',Miles);
   valorentero := strtoint(copy(valorchar,1,1));
   if valorentero >0 then
    letra := letra + ' ' + letrasdecena[valorentero] ;
   valorentero := strtoint(copy(valorchar,2,1));
   if valorentero > 0 then
    letra := letra + ' y ' + letrasunidad[valorentero] + ' Mil'
   else
    letra := letra + ' Mil';
 end;
 //Mas de 99 Miles
 if Miles >=100 then
  begin
   if Miles = 100 then
    letra := letra + ' Cien Mil'
   else
    begin
     valorchar := formatfloat('###',Miles);
     valorentero := strtoint(copy(valorchar,1,1));
     if valorentero >0 then
      letra := letra + ' ' + letrascentena[valorentero] ;
     if strtoint(copy(valorchar,2,2)) <20 then
      begin
       valorentero := strtoint(copy(valorchar,2,2));
       if valorentero > 0 then
        letra := letra + ' ' + letrasunidad[valorentero];
      end
     else
      begin
       valorentero := strtoint(copy(valorchar,2,1));
       if valorentero > 0 then
        letra := letra + ' ' + letrasdecena[valorentero];
       valorentero := strtoint(copy(valorchar,3,1));
       if valorentero > 0 then
        if copy(valorchar,2,1) = '0' then
         letra := letra + ' ' + letrasunidad[valorentero]
        else
         letra := letra + ' y ' + letrasunidad[valorentero];
     end;
     letra := letra + ' Mil';
   end;
 end;

 //Calculo de los cientos
 if Cientos >0 then
  begin
   if (Cientos = 1) and (decenas = 0) and (unidades = 0) then
    letra := letra + ' Cien'
   else
    begin
     valorentero := strtoint(floattostr(Cientos));
     if valorentero >0 then
      letra := letra + ' ' + letrascentena[valorentero];
   end;
 end;

 //Calculo de las decenas
 if Decenas >=2 then
  begin
    valorentero := strtoint(floattostr(decenas));
    if valorentero >0 then
     letra := letra + ' ' + letrasdecena[valorentero];
 end;

 //calculo entre 11 y 19
 if decenas <=1 then
  begin
    valorentero := strtoint(floattostr((decenas * 10) + unidades));
    if valorentero >0 then
     letra := letra + ' ' + letrasunidad[valorentero];
  end
 else
  if unidades >0 then
   begin
    valorentero := strtoint(floattostr(unidades));
    if valorentero >0 then
     letra := letra + ' y ' + letrasunidad[valorentero];
 end;
 result := letra + ' con ' + copy(formatfloat('0.00',decimales),3,2) + '/100';
end;

function redondeo(valor: double):double;
var valtext: string;
begin
 valtext := formatfloat('########0.00',valor);
 result := strtofloat(valtext);
end;

function Control_usuario(formid,codigo : string) : integer;
begin
 mvfdata.qgral.Active := False;
 mvfdata.qgral.sql.Text := 'SELECT acceso FROM Seguridad WHERE usuario = "'+codigo+'" AND formid = "'+formid + '"';
 mvfdata.qgral.Active := true;

 result := mvfdata.qgral.Fields[0].asinteger;
end;

{Procedimiento para personalizar mensages}
function mensaje(mensg,titulo : pchar;botones : word) : integer;
begin
 Result := Application.MessageBox(mensg,titulo,botones);
end;

//Verifica Max Primary Key de una tabla
function MaxPkey(Tabla :string; Campo :string) : integer;
begin
 mvfdata.Qgeneral.Active := False;
 mvfdata.Qgeneral.sql.Text := 'Select max('+ Campo +') from '+ Tabla;
 mvfdata.Qgeneral.Active := True;

 if mvfdata.Qgeneral.Fields[0].asstring <> '' then
  Result := mvfdata.Qgeneral.Fields[0].asinteger + 1
 else
  Result := 1;
end;

function RecId : integer;
var
 RecID : Integer;
 QrecId : Tquery;
begin
 QrecId := TQuery.create(nil);
 QrecId.DatabaseName := 'beta';

 QrecID.Active := False;
 QrecID.sql.Text := 'Select * from Secuencia';
 QrecID.Active := True;

 if QrecID.Fields[0].asstring <> '' then
  RecID := QrecID.Fields[0].asinteger + 1
 else
  RecID := 1;

 QrecID.Active := False;
 QrecID.sql.Text := 'Update Secuencia set RegistroNo = RegistroNo + 1';
 QrecID.ExecSQL;

 Result := RecID;

 FreeAndNil(QrecID);
end;

function IdTransaccion : integer;
var
 TransID : Integer;
 QTransId : Tquery;
begin
 QTransId := TQuery.create(nil);
 QTransId.DatabaseName := 'beta';

 QTransId.Active := False;
 QTransId.sql.Text := 'Select * from Secuencia';
 QTransId.Active := True;

 if QTransId.Fields[1].asstring <> '' then
  TransID := QTransId.Fields[0].asinteger + 1
 else
  TransID := 1;

 QTransId.Active := False;
 QTransId.sql.Text := 'Update Secuencia set ID_TRANSACCION = ID_TRANSACCION + 1';
 QTransId.ExecSQL;

 Result := TransID;

 FreeAndNil(QTransId);
end;


procedure AddInfoLog(Texto : string; index : integer; imageIndex : integer);
Var
 i : Integer;
begin
 for i := 0 to Ucolector.ComponentCount -1 do
  begin
   if Ucolector.Components[i] is TAdvAlertWindow then
     with Ucolector.Components[i] as TAdvAlertWindow do
     begin
      AlertMessages.Add.Text.Add(Texto);
      AlertMessages.Items[index].ImageIndex := imageIndex;
     end; {with}
  end;
end;

procedure showinfo;
Var
 i : Integer;
begin
 for i := 0 to Ucolector.ComponentCount -1 do
 begin
  if Ucolector.Components[i] is TAdvAlertWindow then
     with Ucolector.Components[i] as TAdvAlertWindow do
     begin
       Show;
     end;
 end;
end;

function UltimoCostoArt(Codigo : String) : Double;
Var
 Qfind : TQuery;
begin
 Qfind := find('Select * from Articulos where codigo = :cod', Codigo);

 result := Qfind.FieldByName('PrecioCompra').asfloat;

 FreeAndNil(qfind);
end;

function ModeloInventario : TModeloInventario;
Var
 Qfind : TQuery;
begin
 Qfind := CreateQuery;

 Qfind.Active := false;
 Qfind.sql.Text := 'Select * from InventParam';
 Qfind.Active := True;

 if (Qfind.FieldByName('ModeloInventario').asinteger = 0) then
     result := CostoPromedioFecha
 else
     result := UltimoCosto;
     
 FreeAndNil(qfind);
end;

function CostoPromedio(_Codigo : String;_Almacen : String) : Double;
Var
 Qfind : TQuery;
begin
 Qfind := CreateQuery;

 Qfind.Active := false;
 Qfind.sql.Text := ' SELECT PostedValue,PostedQty FROM InventSum WHERE CodArt = :cod '+
                   ' AND Almacen = :alm';
 Qfind.Params[0].AsString := _Codigo;
 Qfind.Params[1].AsString := _Almacen;
 Qfind.Active := True;

 if (Qfind.FieldByName('PostedQty').AsFloat <> 0) then
     result := Qfind.FieldByName('PostedValue').AsFloat/Qfind.FieldByName('PostedQty').AsFloat
 else
     result := 0;

 FreeAndNil(qfind);     
end;

function InventarioFisico(_Codigo : String;_Almacen : String) : Double;
Var
 Qfind : TQuery;
begin
 Qfind := CreateQuery;

 Qfind.Active := false;
 Qfind.sql.Text := ' SELECT PostedQty FROM InventSum WHERE CodArt = :cod '+
                   ' AND Almacen = :alm';
 Qfind.Params[0].AsString := _Codigo;
 Qfind.Params[1].AsString := _Almacen;
 Qfind.Active := True;

 result := Qfind.FieldByName('PostedQty').AsFloat;

 FreeAndNil(qfind);
end;

function PagoEfectivo(condcion : String) : Boolean;
Var
 QcondicionPago : TQuery;
begin
 QcondicionPago := find('SELECT * FROM CondicionesPago WHERE Condicionpago = :cond',condcion);

 if (qcondicionPago.FieldByName('PagoEfectivo').asstring = 'S') then
   result := True
 else
   result := False;

 FreeAndNil(QcondicionPago);
end;


function TipoDocDesc(Tipo_doc : String) : String;
Var
 Qfind : TQuery;
begin
 Qfind := find('Select * from Documentos Where Tipo_doc = :tip',Tipo_doc);
 result := Qfind.fieldbyname('Descripcion').asstring;
 FreeAndNil(qfind);
end;


procedure NuevaVenta;
Var
 QCuentaSistema, CustParams : TQuery;
begin
  QCuentaSistema := findCuentaSistema;
  CustParams := findCustParams;

  mvfdataVta.factcab.insert;
  mvfdataVta.factcabREGISTRONO.value := Recid;
  mvfdataVta.factcabEstatus.value := '0';
  mvfdataVta.factcabFecha.value := date;
  mvfdataVta.factcabPaga_itbis.value := 'S';
  mvfdataVta.factcabDesc_pesos.value := 0.00;
  mvfdataVta.factcabDESC_PORC.Value := 0.00;
  mvfdataVta.factcabBruto.value := 0.00;
  mvfdataVta.factcabItbis.value := 0.00;
  mvfdataVta.factcabDescuento.value := 0.00;
  mvfdataVta.factcabNeto.value := 0.00;
  mvfdataVta.factcabEfectivo.value := 0.00;
  mvfdataVta.factcabCheque.value := 0.00;
  mvfdataVta.factcabTarjeta.value := 0.00;
  mvfdataVta.factcabNOTACREDITO.value := 0.00;
  mvfdataVta.factcabPUNTOS.value := 0.00;
  mvfdataVta.factcabCUENTAXCOBRAR.value := 0.00;

  mvfdataVta.factcabPOSTINGPROFILE.Value := QCuentaSistema.fieldbyname('PostingProfileCliente').Value;

  mvfdataVta.factcabCLIENTE.Value := CustParams.fieldbyname('ClienteGenerico').AsString;
  SetDatosCliente;
  mvfdataVta.factcabVENDEDOR.Value := CustParams.fieldbyname('VendedorGenerico').asinteger;

  mvfdataVta.factcabPRECIOSITBIS.Value := CustParams.fieldbyname('PRECIOSITBIS').asstring;

  FreeAndNil(QCuentaSistema);
  FreeAndNil(CustParams);
end;

procedure SetDatosCliente;
begin
  limite := 0;
  dias_limite := 0;
  mvfdata.querygral.active := false;
  mvfdata.querygral.sql.text := ' SELECT clt_nombre,clt_direccion,clt_ciudad, ' +
                                ' clt_telefono1,clt_vendedor, clt_postal,clt_limitecr,lim_dias,'+
                                ' Nombre_envio,Direccion_envio,telefono_envio,GrupoID,Ciudad_envio, '+
                                ' Clt_estatus,Descuento,itbis,CondicionPago,CompFiscalid FROM clientes ' +
                                ' WHERE clt_codigo = :clt';
  mvfdata.querygral.params[0].AsString :=mvfdataVta.factcabCLIENTE.value;
  mvfdata.querygral.active := true;

  mvfdataVta.factcab.Edit;
  mvfdataVta.factcabCLIENTE.value :=mvfdataVta.factcabCLIENTE.value;
  mvfdataVta.factcabNombre.value := mvfdata.querygral.fields[0].asstring;
  mvfdataVta.factcabDireccion.value := mvfdata.querygral.fields[1].asstring;
  mvfdataVta.factcabCiudad.value := mvfdata.querygral.fields[2].asstring;
  mvfdataVta.factcabTelefono.value := mvfdata.querygral.fields[3].asstring;
  mvfdataVta.factcabCONDICIONPAGO.Value := mvfdata.querygral.fields[16].asstring;

  limite := mvfdata.querygral.Fields[6].asfloat;
  dias_limite := mvfdata.querygral.Fields[7].asfloat;

  mvfdataVta.factcabNOMBRE_ADIC.Value := mvfdata.querygral.fields[8].asstring;
  mvfdataVta.factcabDIRECCION_ADIC.Value := mvfdata.querygral.fields[9].asstring;
  mvfdataVta.factcabTELEFONO_ADIC.Value := mvfdata.querygral.fields[10].asstring;

  if (GrupoSecHide) then
    mvfdataVta.factcabGRUPOID.Value := GrupoSecPrimaria
  else
    mvfdataVta.factcabGRUPOID.Value := mvfdata.querygral.fields[11].asstring;

  mvfdataVta.factcabCIUDAD_ADIC.Value := mvfdata.querygral.fields[12].asstring;

  if (mvfdata.querygral.fields[14].asstring = 'S') then
    mvfdataVta.factcabDesc_porc.value := mvfdata.companiaDESC_PORC.Value
  else
    mvfdataVta.factcabDesc_porc.value := 0;

  mvfdataVta.factcabPAGA_ITBIS.Value := mvfdata.querygral.fields[15].asstring;
  mvfdataVta.factcabCOMPFISCALID.Value := mvfdata.querygral.fields[17].asstring;
end;


Function VerificarLimite(Codigo : string) : boolean;
Var total : double;
begin
 total := 0;
 //Verificar el total pendiente
 mvfdata.qgral1.Active := False;
 mvfdata.qgral1.sql.Text := 'SELECT aplica, sum(valor) '+
//                            'FROM cxctrx WHERE cliente = '+ codigo +
                            'FROM cxctrx WHERE cliente = '+ #39 + codigo + #39 +
                            ' GROUP BY aplica '+
                            ' HAVING SUM(valor) > 1 ';
 mvfdata.qgral1.Active := true;

 if mvfdata.qgral1.RecordCount > 0 then
  begin
   mvfdata.qgral1.First;
   while not mvfdata.qgral1.EOF do
    begin
     total := total + mvfdata.qgral1.Fields[1].asfloat;
     mvfdata.qgral1.Next;
    end;
  end;

  total := total +mvfdataVta.factcabNETO.Value;

  if limite < total then
   result := true
  else
   result := False;
end;

Function VerificarDias(Codigo : string) : boolean;
var dias : double;
begin
 dias_mayor := 0;
 dias := 0;
 //Verificar el total pendiente
 mvfdata.qgral1.Active := False;
 mvfdata.qgral1.sql.Text := ' SELECT c.aplica ,MIN(c.fecha) ,MIN(c.fechavenc), '+
                            ' SUM(c.valor) FROM cxctrx c '+
//                            'WHERE c.cliente = '+ codigo +' and c.fecha <= :ffin and '+
                            ' WHERE c.cliente = '+ #39 + codigo + #39 +
                            ' AND c.fecha <= :ffin '+
                            ' AND c.aplica <> 0 GROUP BY c.aplica '+
                            ' HAVING SUM(c.valor)> 1 '+
                            ' ORDER BY c.aplica';
 mvfdata.qgral1.params[0].asdate :=mvfdataVta.factcabFECHA.Value;
 mvfdata.qgral1.Active := true;

 if mvfdata.qgral1.RecordCount > 0 then
  begin
   mvfdata.qgral1.First;
   while not mvfdata.qgral1.EOF do
    begin
     dias := mvfdataVta.factcabFECHA.Value - mvfdata.qgral1.Fields[2].asdatetime;
     if dias > dias_mayor then
      begin
       dias_mayor := dias;
       factura := mvfdata.qgral1.Fields[0].asinteger;
       valor := mvfdata.qgral1.Fields[3].asfloat;
      end;
     mvfdata.qgral1.Next;
    end;
  end;

  if dias_limite < dias_mayor then
   result := true
  else
   result := False;
end;


Function BalancePendiente(Codigo : string) : Double;
var total : double;
begin
 total := 0;
 //Verificar el total pendiente
 mvfdata.qgral1.Active := False;
 mvfdata.qgral1.sql.Text := ' SELECT aplica, SUM(valor) '+
//                            'FROM cxctrx WHERE cliente = '+ codigo +
                            ' FROM cxctrx WHERE cliente = '+ #39 + codigo + #39 +
                            ' GROUP BY aplica '+
                            ' HAVING SUM(valor) > 1 ';
 mvfdata.qgral1.Active := true;

 if mvfdata.qgral1.RecordCount > 0 then
  begin
   mvfdata.qgral1.First;
   while not mvfdata.qgral1.EOF do
    begin
     total := total + mvfdata.qgral1.Fields[1].asfloat;
     mvfdata.qgral1.Next;
    end;
  end;

  result := total;
end;

function DinamicHeight(_heightDef,_character : Integer; _cadstr : String) : Integer;
Var
 factor,idx,adicionar : integer;
 letant : String;
begin
  adicionar := 0;
  for idx := 1 to strlen(Pchar(_cadstr)) do
  begin
   if (copy(_cadstr,idx,1) = #13) then
       adicionar := adicionar + 1;
  end;

  if (frac(strlen(Pchar(_cadstr)) / _character) >= 0.5) and (adicionar = 0) then
      adicionar := adicionar + 1;

  factor := trunc(strlen(Pchar(_cadstr)) / _character) + adicionar;

  if (factor = 0) then
      factor := 1;

  result := _heightDef *  factor;
end;

procedure Calculatotales;
Var
  idx: integer;
  Bm : TBookMark;
begin
 idx := 0;
 idx := 0;
 mvfdata.ValorDescuento  := 0;
 mvfdata.ValorItbis := 0;
 mvfdata.ValorBruto := 0;
 mvfdata.CantidadTotal := 0;

 if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
   mvfdata.CantidadTotal := GetTotalCantidadfactdet;

 Bm := mvfdataVta.Factdet.GetBookmark;

 mvfdataVta.Factdet.DisableControls;
 mvfdataVta.Factdet.first;

 While not mvfdataVta.factdet.Eof do
 begin
  if (mvfdataVta.factdetCODIGO.AsString = '') or
     (mvfdataVta.factdetCODIGO.IsNull) then
   mvfdataVta.factdet.Delete
  else
  begin
   idx := idx + 1;
   mvfdata.DescuentoPesosCab := 0;

   if (mvfdataVta.factcabPRECIOSITBIS.Value = 'S') and
      (mvfdataVta.factdetCODIMPUESTO.value <> '') and
      (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') then
     mvfdata.PrecioSinItbis := Redondeo( mvfdataVta.factdetPRECIO.Value /
                              ((TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) + 1) )
   else
     mvfdata.PrecioSinItbis := mvfdataVta.factdetPRECIO.Value;

   mvfdata.Bruto := Redondeo(mvfdataVta.factdetCANTIDAD.Value * mvfdata.PrecioSinItbis);

   mvfdata.DescuentoPorc := Redondeo( (mvfdata.Bruto - mvfdataVta.factdetDESC_PESOS.Value) *
                                      (mvfdataVta.factdetDESC_PORC.Value /100) );

   if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
     mvfdata.DescuentoPesosCab := Redondeo(mvfdataVta.factdetCANTIDAD.Value *
                                           mvfdataVta.factcabDESC_PESOS.Value /
                                           mvfdata.CantidadTotal);

   if (mvfdataVta.factcabDESC_PORC.Value > 0) then
     mvfdata.DescuentoPorc := Redondeo( mvfdata.DescuentoPorc +
                                      ((mvfdataVta.factdetVALOR.Value - mvfdata.DescuentoPesosCab) *
                                        mvfdataVta.factcabDESC_PORC.Value /100) );

   mvfdata.DescuentoPesos := Redondeo(mvfdata.DescuentoPesosCab + mvfdataVta.factdetDESC_PESOS.Value);

   if (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') and (mvfdataVta.factdetCODIMPUESTO.value <> '') then
     mvfdata.Itbis := Redondeo( (mvfdata.Bruto - mvfdata.DescuentoPorc - mvfdata.DescuentoPesos) *
                                (TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) )
   else
     mvfdata.Itbis := 0;

   mvfdataVta.factdet.edit;
   mvfdataVta.factdetLinea_no.value := idx;
   mvfdataVta.factdetSALESID.Value :=mvfdataVta.factcabSALESID.Value;

   mvfdata.ValorBruto := Redondeo(mvfdata.ValorBruto + mvfdata.Bruto);
   mvfdata.ValorItbis := Redondeo(mvfdata.ValorItbis + mvfdata.Itbis);
   mvfdata.ValorDescuento := Redondeo(mvfdata.ValorDescuento + mvfdata.DescuentoPesos + mvfdata.DescuentoPorc);

   mvfdataVta.factdet.next;
  end;
 end;

 mvfdataVta.Factdet.GotoBookmark(Bm);
 mvfdataVta.Factdet.FreeBookmark(Bm);
 mvfdataVta.Factdet.EnableControls;

 mvfdataVta.factcab.Edit;
 mvfdataVta.factcabBruto.value := Redondeo(mvfdata.ValorBruto);
 mvfdataVta.factcabItbis.value := Redondeo(mvfdata.ValorItbis);
 mvfdataVta.factcabDescuento.value := Redondeo(mvfdata.ValorDescuento);
 mvfdataVta.factcabNeto.value := Redondeo(mvfdata.ValorBruto +
                                          mvfdata.ValorItbis -
                                          mvfdata.ValorDescuento);
{
Var idx: integer;
    ValorTotal, ValorDescuento, ValorItbis, ValorBruto: Double;
    DescuentoPorc, DescuentoPesosCab, DescuentoPesos: Double;
    Itbis, Bruto, CantidadTotal, PrecioSinItbis: Double;
begin
 ValorTotal := 0.00;
 ValorDescuento  := 0.00;
 ValorItbis := 0.00;
 ValorBruto := 0.00;

 if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
     CantidadTotal := GetTotalCantidadfactdet;

 mvfdataVta.factdet.DisableControls;
 mvfdataVta.factdet.first;

 for idx := 1 to mvfdataVta.factdet.recordcount do
 begin
  if (mvfdataVta.factdetCODIGO.AsString = '') or
     (mvfdataVta.factdetCODIGO.IsNull) then
   mvfdataVta.factdet.Delete
  else
  begin
   DescuentoPesosCab := 0;

   if (mvfdataVta.factcabPRECIOSITBIS.Value = 'S') and
      (mvfdataVta.factdetCODIMPUESTO.value <> '') and
      (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') then
     PrecioSinItbis := Redondeo( mvfdataVta.factdetPRECIO.Value /
                       ((TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) + 1) )
   else
     PrecioSinItbis := mvfdataVta.factdetPRECIO.Value;

   Bruto := mvfdataVta.factdetCANTIDAD.Value * PrecioSinItbis;
   DescuentoPorc := Redondeo( (Bruto - mvfdataVta.factdetDESC_PESOS.Value) *
                              (mvfdataVta.factdetDESC_PORC.Value /100) );

   if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
     DescuentoPesosCab := Redondeo(mvfdataVta.factdetCANTIDAD.Value * mvfdataVta.factcabDESC_PESOS.Value / CantidadTotal);

   if (mvfdataVta.factcabDESC_PORC.Value > 0) then
     DescuentoPorc := Redondeo( DescuentoPorc +
                              ((mvfdataVta.factdetVALOR.Value - DescuentoPesosCab) *
                                mvfdataVta.factcabDESC_PORC.Value /100) );

   DescuentoPesos := Redondeo(DescuentoPesosCab + mvfdataVta.factdetDESC_PESOS.Value);

   if (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') and (mvfdataVta.factdetCODIMPUESTO.value <> '') then
     Itbis := Redondeo( (Bruto - DescuentoPorc - DescuentoPesos) *
                        (TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) )
   else
     Itbis := 0;

   mvfdataVta.factdet.edit;
   mvfdataVta.factdetLinea_no.value := idx;
   mvfdataVta.factdetSALESID.Value :=mvfdataVta.factcabSALESID.Value;

   if not mvfdataVta.factdet.eof then
    mvfdataVta.factdet.next;

   ValorBruto := Redondeo(ValorBruto + Bruto);
   ValorItbis := Redondeo(ValorItbis + Itbis);
   ValorDescuento := Redondeo(ValorDescuento + DescuentoPesos + DescuentoPorc);
  end;
 end;

 mvfdataVta.factdet.EnableControls;

 mvfdataVta.factcab.edit;
 mvfdataVta.factcabBruto.value := redondeo(ValorBruto);
 mvfdataVta.factcabItbis.value := redondeo(ValorItbis);
 mvfdataVta.factcabDescuento.value := redondeo(ValorDescuento);
 mvfdataVta.factcabNeto.value := redondeo(ValorBruto + ValorItbis - ValorDescuento);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

 idx := 0;
 ValorDescuento  := 0.00;
 ValorItbis := 0.00;
 ValorBruto := 0.00;

 if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
   CantidadTotal := GetTotalCantidadfactdet;

 mvfdataVta.factdet.DisableControls;
 mvfdataVta.factdet.First;

 While not mvfdataVta.factdet.Eof do
 begin
  if (mvfdataVta.factdetCODIGO.AsString = '') or
     (mvfdataVta.factdetCODIGO.IsNull) then
   mvfdataVta.factdet.Delete
  else
  begin
   idx := idx + 1;
   DescuentoPesosCab := 0;

   if (mvfdataVta.factcabPRECIOSITBIS.Value = 'S') and
      (mvfdataVta.factdetCODIMPUESTO.value <> '') and
      (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') then
     PrecioSinItbis := Redondeo( mvfdataVta.factdetPRECIO.Value /
                       ((TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) + 1) )
   else
     PrecioSinItbis := mvfdataVta.factdetPRECIO.Value;

   Bruto := Redondeo(mvfdataVta.factdetCANTIDAD.Value * PrecioSinItbis);

   DescuentoPorc := Redondeo( (Bruto - mvfdataVta.factdetDESC_PESOS.Value) *
                              (mvfdataVta.factdetDESC_PORC.Value /100) );

   if (mvfdataVta.factcabDESC_PESOS.Value > 0) then
     DescuentoPesosCab := Redondeo(mvfdataVta.factdetCANTIDAD.Value * mvfdataVta.factcabDESC_PESOS.Value / CantidadTotal);

   if (mvfdataVta.factcabDESC_PORC.Value > 0) then
     DescuentoPorc := Redondeo( DescuentoPorc +
                              ((mvfdataVta.factdetVALOR.Value - DescuentoPesosCab) *
                                mvfdataVta.factcabDESC_PORC.Value /100) );

   DescuentoPesos := Redondeo(DescuentoPesosCab + mvfdataVta.factdetDESC_PESOS.Value);

   if (mvfdataVta.factcabPAGA_ITBIS.Value = 'S') and (mvfdataVta.factdetCODIMPUESTO.value <> '') then
     Itbis := Redondeo( (Bruto - DescuentoPorc - DescuentoPesos) *
                        (TaxRateFind(mvfdataVta.factdetCODIMPUESTO.value,mvfdataVta.factcabFECHA.Value) /100) )
   else
     Itbis := 0;

   mvfdataVta.factdet.edit;
   mvfdataVta.factdetLinea_no.value := idx;
   mvfdataVta.factdetSALESID.Value :=mvfdataVta.factcabSALESID.Value;

   ValorBruto := Redondeo(ValorBruto + Bruto);
   ValorItbis := Redondeo(ValorItbis + Itbis);
   ValorDescuento := Redondeo(ValorDescuento + DescuentoPesos + DescuentoPorc);

   mvfdataVta.factdet.next;
  end;
 end;

 mvfdataVta.factdet.EnableControls;

 mvfdataVta.factcab.edit;
 mvfdataVta.factcabBruto.value := redondeo(ValorBruto);
 mvfdataVta.factcabItbis.value := redondeo(ValorItbis);
 mvfdataVta.factcabDescuento.value := redondeo(ValorDescuento);
 mvfdataVta.factcabNeto.value := redondeo(ValorBruto + ValorItbis - ValorDescuento);
}
end;


function GetTotalCantidadfactdet : Double;
Var
 Cantidad : Double;
begin
 mvfdataVta.factdet.DisableControls;
 mvfdataVta.factdet.First;

 Cantidad := 0;
 While (not mvfdataVta.factdet.Eof) do
 begin
  Cantidad := Cantidad + mvfdataVta.factdetCANTIDAD.Value;
  mvfdataVta.factdet.Next;
 end;
 mvfdataVta.factdet.EnableControls;

 Result := Cantidad;
end;


function ValidarError : Boolean;
begin
 mvfdata.qgral1.Active := False;
 mvfdata.qgral1.sql.Text := 'Select * from compania';
 mvfdata.qgral1.Active := True;

 if (mvfdata.qgral1.FieldByName('Fecha_Detener').asDateTime <= date) then
   begin
     mvfdata.qgral.Active := False;
     mvfdata.qgral.sql.Text := 'UPDATE compania SET '+
                               'proyecto_no = "2008-002", '+
                               'detener = "S" ';
     mvfdata.qgral.ExecSQL;

     Result := True;
   end;

 if (mvfdata.qgral1.FieldByName('Detener').asstring = 'S') then
   Result := True
 else
   Result := False;
end;


function CreateQuery : Tquery;
Var
 Query : TQuery;
begin
 Query := TQuery.Create(nil);
 Query.DatabaseName := 'beta';
 Result := Query;

// FreeAndNil(Query);
end;

function Find(Sql : String; Params : String) : Tquery;
Var
 Query : TQuery;
begin
 Query := TQuery.create(nil);
 Query.DatabaseName := 'beta';

 Query.Active := False;
 Query.sql.Text := Sql;
 Query.Params[0].AsString := Params;
 Query.Active := True;

 Result := Query;

// FreeAndNil(Query);
end;


function findCuentaSistema : TQuery;
Var
 QCuentaSistema : TQuery;
begin
 QCuentaSistema := CreateQuery;

 QCuentaSistema.Active := false;
 QCuentaSistema.sql.Text := 'Select * from CuentasSistema';
 QCuentaSistema.Active := true;

 result := QCuentaSistema;
end;

function findCustParams : TQuery;
Var
 QCustParams : TQuery;
begin
 QCustParams := CreateQuery;

 QCustParams.Active := false;
 QCustParams.sql.Text := 'Select * from CustParams';
 QCustParams.Active := true;

 result := QCustParams;
end;


end.


