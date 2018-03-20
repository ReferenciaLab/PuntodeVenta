unit DialogCargaMasiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db, cxintl, FileCtrl, RzFilSys, LMDCustomComponent, LMDStarter,ShellApi,
  ADODB, LMDCustomButton, LMDButton,dlgMensajes, LMDBaseController,
  LMDCustomContainer, LMDCustomImageList, LMDBitmapList;

type
  TfrmDialogCargaMasiva = class(TfrmDialogModule)
    drvUnidad: TRzDriveComboBox;
    LMDStarter1: TLMDStarter;
    qrASDetalle: TADOQuery;
    qrASDetalleIN4MUE: TBCDField;
    qrASDetalleIN4COD: TIntegerField;
    qrASDetalleIN4NOM: TStringField;
    qrASDetalleIN4STS: TStringField;
    qrASDetalleIN4DEP: TIntegerField;
    qrASDetalleIN4FEC: TIntegerField;
    qrASDetalleIN4HOR: TIntegerField;
    qrASDetalleIN4USU: TStringField;
    qrASDetalleIN4COM: TStringField;
    qrASDetalleIN4PET: TIntegerField;
    qrASDetalleIN4ANT: TBCDField;
    qrASDetalleIN4VAL: TBCDField;
    qrASDetalleIN4TIP: TStringField;
    qrASDetalleIN4ACT: TStringField;
    qrASEncabezado: TADOQuery;
    qrASEncabezadoIN3MUE: TBCDField;
    qrASEncabezadoIN3NOM: TStringField;
    qrASEncabezadoIN3HOR: TIntegerField;
    qrASEncabezadoIN3DIR: TStringField;
    qrASEncabezadoIN3EDA: TIntegerField;
    qrASEncabezadoIN3NAC: TIntegerField;
    qrASEncabezadoIN3TEL: TStringField;
    qrASEncabezadoIN3CAT: TStringField;
    qrASEncabezadoIN3FEC: TIntegerField;
    qrASEncabezadoIN3USU: TStringField;
    qrASEncabezadoIN3SEX: TStringField;
    qrASEncabezadoIN3CED: TBCDField;
    qrASEncabezadoIN3SUC: TIntegerField;
    qrASEncabezadoIN3CDO: TIntegerField;
    qrASEncabezadoIN3DOC: TStringField;
    qrASEncabezadoIN3CLI: TBCDField;
    qrASEncabezadoIN3FAC: TBCDField;
    qrASEncabezadoIN3PAG: TBCDField;
    qrASEncabezadoIN3RES: TBCDField;
    qrASEncabezadoIN3EPA: TIntegerField;
    qrASEncabezadoIN3IPA: TIntegerField;
    qrASEncabezadoIN3EDO: TIntegerField;
    qrASEncabezadoIN3IDO: TIntegerField;
    qrASEncabezadoIN3RCL: TIntegerField;
    qrASEncabezadoIN3ICL: TIntegerField;
    qrASEncabezadoIN3COM: TStringField;
    qrASEncabezadoIN3ABR: TIntegerField;
    qrASEncabezadoIN3REL: TBCDField;
    qrASEncabezadoIN3REF: TStringField;
    qrASEncabezadoIN3ACT: TStringField;
    qrASEncabezadoIN3TAS: TBCDField;
    qrASEncabezadoIN3FPA: TBCDField;
    qrASEncabezadoIN3POL: TStringField;
    qrASEncabezadoIN3TAR: TBCDField;
    qrASInternet: TADOQuery;
    qrASInternetIN8USU: TStringField;
    qrASInternetIN8PAS: TStringField;
    qrASInternetIN8NOM: TStringField;
    qrASInternetIN8TIP: TStringField;
    qrASInternetIN8COD: TStringField;
    qrASInternetIN8ACT: TStringField;
    DBAS: TADOConnection;
    Qry_Util: TADOQuery;
    Qry_Cons: TADOQuery;
    btnRefrescar: TLMDButton;
    Imagenes: TLMDBitmapList;
    procedure FormShow(Sender: TObject);
    procedure btnRefrescarClick(Sender: TObject);
  private
    { Private declarations }
    Function  ConnectDrive(letra, path: string): boolean;
    procedure Listar( sDirectorio: string; var Resultado: TStringList );
    Function  TipoDeDisco(RaizDisco: string): string;

  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogCargaMasiva: TfrmDialogCargaMasiva;
  Termine, lmdOk : boolean;


implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialogCargaMasiva.Run;
var    Archivos: TStringList;
              i: integer;
        qUpdate: TAdoQuery;
begin
// DM.qrParametro.Close;
// DM.qrParametro.Open;

 drvUnidad.Text := '';
 showmodal;
 If ModalResult = mrOk Then
   Begin
     If (drvUnidad.Text <> '') Then
       Begin
//         if ForceConect then
          Archivos := TStringList.Create;
          Listar( drvUnidad.Text, Archivos );

          for i:=0 to Archivos.Count-1 do
          begin
            Archivos.Strings[i]:=copy(Archivos.Strings[i],1,
                                      length(Archivos.Strings[i])-4);
            LMDStarter1.Command := 'cmd.exe';
            LMDStarter1.Parameters := '/c bcp Programacion.dbo.'+Archivos.Strings[i]+' in '+drvUnidad.Text+'\'+Archivos.Strings[i]+'.Txt'+' -Usa -Pwagc1069 -SProfamil-979752\SqlExpress -c';
            LMDStarter1.Wait := True;
            LMDStarter1.Execute;
          end;
          if Archivos.Count < 1 then Archivos.Free;
  Try
      DBAS.Connected:=True;
//      DBAS.BeginTrans;
      Screen.Cursor := crHourGlass;
      with Qry_Util,sql do
      begin
        close;
        clear;
        add('select name from dbo.sysobjects Where name like '+#39+'AS_%'+#39);
        Open;
        if Qry_Util.RecordCount > 0 then
        begin
//          LMDProgressFill1.MaxValue:=RecordCount;
          First;
          while not eof  do
          begin
            Qry_Cons.Close;
            Qry_Cons.SQL.Clear;
            Qry_Cons.SQL.Add('Select * from dbo.'+FieldByName('Name').AsString);
            Qry_Cons.SQL.Add(' Where Sincroniza='+#39+'N'+#39);
            Qry_Cons.Open;
            if Qry_Cons.RecordCount > 0 then
            begin
              Qry_Cons.First;
              while not Qry_Cons.eof do
              begin
                Application.ProcessMessages;
//                LMDProgressFill1.Caption:='Pasando Data AS400 - Query '+FieldByName('Name').AsString;
//                LMDProgressFill1.Caption:='Tabla No.'+inttostr(LMDProgressFill1.UserValue)+' de '+inttostr(LMDProgressFill1.MaxValue);
                if FieldByName('Name').AsString = 'AS_INTERNET' then
                begin
                        qrASInternet.Close;
                        qrASInternet.Parameters.ParamByName('Usuario').Value  := Qry_Cons.FieldByName('UsuarioInternet').AsString;
                        qrASInternet.Parameters.ParamByName('Codigo').Value  := Qry_Cons.FieldByName('Identificacion').AsString;
                        qrASInternet.Open;

                        If qrASInternet.Eof then
                          qrASInternet.Insert
                        Else
                          qrASInternet.Edit;

                        qrASInternetIN8USU.AsString := Qry_Cons.FieldByName('UsuarioInternet').AsString;
                        qrASInternetIN8PAS.AsString := Qry_Cons.FieldByName('ClaveInternet').AsString;
                        qrASInternetIN8NOM.AsString := Qry_Cons.FieldByName('Nombre').AsString;
                        qrASInternetIN8TIP.AsString := Qry_Cons.FieldByName('Tipo').AsString;
                        qrASInternetIN8COD.AsString := Qry_Cons.FieldByName('Identificacion').AsString;
                        qrASInternetIN8ACT.AsString := '';
                        qrASInternet.Post;
                        qUpdate.Close;
                        qUpdate.SQL.Clear;
                        qUpdate.SQL.Add(' Update dbo.'+Qry_Util.FieldByName('Name').AsString);
                        qUpdate.SQL.Add(' Set  Sincroniza='+#39+'S'+#39);
                        qUpdate.SQL.Add(' Where Sincroniza='+#39+'N'+#39);
                        qUpdate.SQL.Add(' And UsuarioInternet='+#39+Qry_Cons.FieldByName('UsuarioInternet').AsString+#39);
                        qUpdate.SQL.Add(' And ClaveInternet='+#39+Qry_Cons.FieldByName('ClaveInternet').AsString+#39);
                        qUpdate.ExecSQL;
                end;
                if FieldByName('Name').AsString = 'AS_MUESTRA' then
                begin
                      qrASEncabezado.Close;
                      qrASEncabezado.Parameters.ParamByName('Muestra').Value  := Qry_Cons.FieldByName('Muestra').AsString;
                      qrASEncabezado.Open;

                      If qrASEncabezado.Eof then
                        qrASEncabezado.Insert
                      else
                        qrASEncabezado.Edit;

                      //Cargando Valores Por Defecto para Evitar Errores.

                      qrASEncabezadoIN3ACT.AsString     := '';
                      qrASEncabezadoIN3MUE.AsString     := Qry_Cons.FieldByName('Muestra').AsString;
                      qrASEncabezadoIN3NOM.AsString     := Qry_Cons.FieldByName('Nombre').AsString;
                      qrASEncabezadoIN3HOR.AsString     := Qry_Cons.FieldByName('Hora').AsString;
                      qrASEncabezadoIN3DIR.AsString     := Qry_Cons.FieldByName('Direccion').AsString;
                      qrASEncabezadoIN3EDA.AsString     := Qry_Cons.FieldByName('Edad').AsString;
                      qrASEncabezadoIN3NAC.AsInteger    := Qry_Cons.FieldByName('Fecha_Nacimiento').AsInteger;
                      qrASEncabezadoIN3TEL.AsString     := Qry_Cons.FieldByName('Telefono').AsString;
                      qrASEncabezadoIN3CAT.AsString     := Qry_Cons.FieldByName('Categoria').AsString;
                      qrASEncabezadoIN3FEC.AsInteger    := Qry_Cons.FieldByName('Fecha').Asinteger;
                      qrASEncabezadoIN3USU.AsString     := Qry_Cons.FieldByName('Usuario').AsString;
                      qrASEncabezadoIN3SEX.AsString     := Qry_Cons.FieldByName('Sexo').AsString;
                      qrASEncabezadoIN3CED.AsString     := Qry_Cons.FieldByName('Cedula').AsString;;
                      qrASEncabezadoIN3SUC.AsString     := Qry_Cons.FieldByName('Sucursal').AsString;
                      qrASEncabezadoIN3CDO.AsString     := Qry_Cons.FieldByName('Codigo_Doctor').AsString;
                      qrASEncabezadoIN3DOC.AsString     := Qry_Cons.FieldByName('Doctor').AsString;
                      qrASEncabezadoIN3CLI.AsString     := Qry_Cons.FieldByName('Cliente').AsString;
                      qrASEncabezadoIN3FAC.AsCurrency   := Qry_Cons.FieldByName('Facturado').AsCurrency;
                      qrASEncabezadoIN3PAG.AsCurrency   := Qry_Cons.FieldByName('Pagado').AsCurrency;
                      qrASEncabezadoIN3RES.AsCurrency   := Qry_Cons.FieldByName('Resto').AsCurrency;
                      qrASEncabezadoIN3EPA.AsInteger    := Qry_Cons.FieldByName('Tipo_Res_Paciente').asinteger;
                      qrASEncabezadoIN3IPA.AsInteger    := Qry_Cons.FieldByName('Internet_Paciente').asinteger;
                      qrASEncabezadoIN3EDO.AsInteger    := Qry_Cons.FieldByName('Tipo_Res_Doctor').asinteger;
                      qrASEncabezadoIN3IDO.AsInteger    := Qry_Cons.FieldByName('Internet_Doctor').asinteger;
                      qrASEncabezadoIN3RCL.AsInteger    := Qry_Cons.FieldByName('Tipo_Res_Cliente').asinteger;
                      qrASEncabezadoIN3ICL.AsInteger    := Qry_Cons.FieldByName('Internet_Cliente').asinteger;
                      qrASEncabezadoIN3COM.AsString     := Qry_Cons.FieldByName('Comentario').AsString;
                      qrASEncabezadoIN3ABR.AsInteger    := Qry_Cons.FieldByName('Paciente_Clinica').asinteger;
                      qrASEncabezadoIN3REL.AsString     := Qry_Cons.FieldByName('Num_Relacion_Internet').AsString;
                      qrASEncabezadoIN3REF.AsString     := Qry_Cons.FieldByName('Referencia_Externa').AsString;
                      qrASEncabezadoIN3TAS.AsCurrency   := Qry_Cons.FieldByName('Tasa').AsCurrency;
                      qrASEncabezadoIN3FPA.AsCurrency   := Qry_Cons.FieldByName('Diferencia_Neto').AsCurrency;
                      qrASEncabezadoIN3TAR.AsCurrency   := Qry_Cons.FieldByName('Tarjeta_Pago').AsCurrency;
                      qrASEncabezadoIN3POL.AsString     := Qry_Cons.FieldByName('Poliza').AsString;
                      qrASEncabezado.Post;
                      qrASEncabezado.Close;
                      qUpdate.Close;
                      qUpdate.SQL.Clear;
                      qUpdate.SQL.Add(' Update dbo.'+Qry_Util.FieldByName('Name').AsString);
                      qUpdate.SQL.Add(' Set  Sincroniza='+#39+'S'+#39);
                      qUpdate.SQL.Add(' Where Sincroniza='+#39+'N'+#39);
                      qUpdate.SQL.Add(' And Muestra='+#39+Qry_Cons.FieldByName('Muestra').AsString+#39);
                      qUpdate.ExecSQL;
                end;
                if FieldByName('Name').AsString = 'AS_MUESTRA_DET' then
                begin
                      qrASDetalle.Close;
                      qrASDetalle.Parameters.ParamByName('Muestra').Value := Qry_Cons.FieldByName('Muestra').AsString;
                      qrASDetalle.Parameters.ParamByName('Codigo').Value  := Qry_Cons.FieldByName('Codigo').AsString;;
                      qrASDetalle.Open;

                      If qrASDetalle.Eof Then
                          qrASDetalle.Insert
                      Else
                          qrASDetalle.Edit;

                      qrASDetalleIN4MUE.AsString   := Qry_Cons.FieldByName('Muestra').AsString;
                      qrASDetalleIN4COD.AsString   := Qry_Cons.FieldByName('Codigo').AsString;
                      qrASDetalleIN4NOM.AsString   := Qry_Cons.FieldByName('Nombre_Prueba').AsString;
                      qrASDetalleIN4STS.AsString   := Qry_Cons.FieldByName('Estatus').AsString;
                      qrASDetalleIN4DEP.AsString   := Qry_Cons.FieldByName('Departamento').AsString;
                      qrASDetalleIN4FEC.AsInteger  := Qry_Cons.FieldByName('Fecha_Entrada').Asinteger;
                      qrASDetalleIN4HOR.AsString   := Qry_Cons.FieldByName('Hora').AsString;
                      qrASDetalleIN4USU.AsString   := Qry_Cons.FieldByName('Usuario').AsString;
                      qrASDetalleIN4COM.AsString   := Qry_Cons.FieldByName('Comentario').AsString;
                      qrASDetalleIN4PET.AsInteger  := Qry_Cons.FieldByName('Peticion2Muestra').Asinteger;
                      qrASDetalleIN4ANT.AsString   := Qry_Cons.FieldByName('Num_Muestra_Ant').AsString;
                      qrASDetalleIN4TIP.AsString   := Qry_Cons.FieldByName('Tipo_Muestra').AsString;
                      qrASDetalleIN4VAL.AsCurrency := Qry_Cons.FieldByName('Valor').AsCurrency;
                      qrASDetalleIN4ACT.AsString   := Qry_Cons.FieldByName('Actualiza').AsString;
                      qrASDetalle.Post;
                      qrASDetalle.Close;
                      qUpdate.Close;
                      qUpdate.SQL.Clear;
                      qUpdate.SQL.Add(' Update dbo.'+Qry_Util.FieldByName('Name').AsString);
                      qUpdate.SQL.Add(' Set  Sincroniza='+#39+'S'+#39);
                      qUpdate.SQL.Add(' Where Sincroniza='+#39+'N'+#39);
                      qUpdate.SQL.Add(' And Muestra='+#39+Qry_Cons.FieldByName('Muestra').AsString+#39);
                      qUpdate.SQL.Add(' And Codigo='+#39+Qry_Cons.FieldByName('Codigo').AsString+#39);
                      qUpdate.ExecSQL;
                end;
                  Qry_Cons.Next;
                End;
              End
              else
                Qry_Util.Next;
            end;
            Next;
          end;
        end;
  Except
    on e : Exception do
    begin
//      if DBAS.InTransaction then  DBAS.RollbackTrans;
      Screen.Cursor := crDefault;
      dm.Error('Ocurrio un error al momento de Grabar.  Verifique.');
      exit;
    end;
  end;
//  DBAS.CommitTrans;
  Screen.Cursor := crDefault;
  dm.Info('Sincronización Realizada Exitósamente.');
 end;
end;
end;
procedure TfrmDialogCargaMasiva.btnRefrescarClick(Sender: TObject);
Var i: integer;
 Drive:String;
 Tipo_Drive : word;
begin
  inherited;
begin
      drvUnidad.Refresh;
      repeat
        For i := 0 to drvUnidad.Items.Count + 1 do
        begin
          if UpperCase(Copy(drvUnidad.Items.Strings[i],1,1)) = 'A' then Continue;
          Drive := Copy(drvUnidad.Items.Strings[i],1,1)+':\';
          Tipo_Drive := GetDriveType(PChar(Drive));
          if tipo_drive = DRIVE_REMOVABLE then Break;
        end;
      until (tipo_drive = DRIVE_REMOVABLE) or (EtMensajeDlg('El Dispositivo No esta Disponible para Grabar, Verifique que este insertado. Desea Reintentar ?',etConfirmacion,[etSi,etNo],0,imagenes.Items[4].Bitmap,true) = etrNo);
      drvUnidad.ItemIndex := 0;
end;
end;

Function TfrmDialogCargaMasiva.ConnectDrive(letra, path: string): boolean;
begin
  Try
    if GetDriveType(PChar(letra)) <> 1 then
    begin
      Result := True;
      exit;
    end;

    if copy(path,length(trim(path)),1) = '\' then
      Delete(path,length(trim(path)),1);
    Termine := False;
    lmdOk   := True;
    LMDStarter1.Command    := 'cmd.exe';
    LMDStarter1.Parameters := '/c net use '+letra+' '+path;
    LMDStarter1.Execute;
    while not termine do application.ProcessMessages;

    if not lmdOk then
    begin
      DM.Error('Error Ejecutando Comando SISTEMA OPERATIVO NET USE');
    end;

    if GetDriveType(PChar(letra)) = 1 then
    begin
      DM.Error('Error Conectando al Servidor de Backup ');
      Result := False;
    end
    else
      Result := True;
  except
    on e: Exception do
    begin
      Result := False;
      DM.Error('Error Conectando al Servidor  de Backup =' + e.message);
    end;
  end;
end;

procedure TfrmDialogCargaMasiva.FormShow(Sender: TObject);
Var i         : Integer;
    Resultado : String;
begin
  inherited;
    for i := 0 to drvUnidad.Items.Count+1 do
    begin
      Resultado := TipoDeDisco(Trim(Copy(drvUnidad.Items.Strings[i],1,2))+'\');
      if Resultado <> 'floppy/extraible' then
      begin
         drvUnidad.Items.Delete(i);
      end;
    end;
    drvUnidad.ItemIndex := 0;
end;

procedure TfrmDialogCargaMasiva.Listar( sDirectorio: string; var Resultado: TStringList );
var  Busqueda: TSearchRec;
  iResultado: Integer;
begin  // Nos aseguramos que termine en contrabarra
  sDirectorio := IncludeTrailingBackslash( sDirectorio );
  iResultado :=  FindFirst( sDirectorio + '*.txt', faAnyFile, Busqueda );
  while iResultado = 0 do
  begin    // ¿Ha encontrado un archivo y no es un directorio?
      if ( Busqueda.Attr and faArchive = faArchive ) and
         ( Busqueda.Attr and faDirectory <> faDirectory ) then
        Resultado.Add( Busqueda.Name );
       iResultado := FindNext( Busqueda );
     end;
     FindClose( Busqueda );
end;
function TfrmDialogCargaMasiva.TipoDeDisco(RaizDisco: string): string;
var i: word;
begin
   i := GetDriveType(PChar(LowerCase(RaizDisco)));
   case i of
     { Unknown }
     0:               result := 'no puedo determinarlo';
     { it doesn't exist }
     1:               result := 'no existe';
     { Floppy }
     DRIVE_REMOVABLE: result := 'floppy/extraible';
     { Fixed }
     DRIVE_FIXED:     result := 'disco fijo';
     { Net unit }
     DRIVE_REMOTE:    result := 'unidad de red';
     { CD-ROM }
     DRIVE_CDROM:     result := 'cd-rom';
     { Ram Drive }
     DRIVE_RAMDISK:   result := 'disco-ram';
   end;
end;
end.
