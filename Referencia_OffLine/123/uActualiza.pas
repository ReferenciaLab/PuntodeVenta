unit uActualiza;

interface

uses Windows,Forms,ShellApi,SysUtils,DlgMensajes,Classes,DB;

Function Ejecuta_Dos(Filename, Parametros, ExecDir : String) : Integer;
function GetAppInfo(fName: string):string;
Function CheckVerEXE(NombreEXE,VerOK,servidor,Usuario,Password:string):Boolean;
Function VerificaVersionExec(App,servidor,Usuario,Password:string):Boolean;

implementation

uses uBuscaDatos,ADODB,DataModule;

Function Ejecuta_Dos(Filename, Parametros, ExecDir : String) : Integer;
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;
begin
  ExecuteFile:=Filename;

  FillChar(SEInfo, SizeOf(SEInfo), 0);
  SEInfo.cbSize := SizeOf(TShellExecuteInfo);
  with SEInfo do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpFile := PChar(ExecuteFile);
    if Trim(parametros) <> '' then
      lpParameters := PChar(Parametros);
    if Trim(ExecDir) <> '' then
      lpDirectory := PChar(ExecDir);
    nShow := SW_hide;
  end;

  if ShellExecuteEx(@SEInfo) then
  begin
    repeat
      Application.ProcessMessages;
      GetExitCodeProcess(SEInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE) or
	  Application.Terminated;
    Result := ExitCode;
  end
  else
    Result := 911;
end;

function GetAppInfo(fName: string):string;
type
  PaLeerBuffer = array [0..MAX_PATH] of char;
var
  Size, Size2 : DWord;
  Pt, Pt2     : Pointer;
  Idioma      : string;
begin
  Result:='';
  Size := GetFileVersionInfoSize(PChar (fName), Size2); {First modification !}
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    GetFileVersionInfo (PChar (fName), 0, Size, Pt); {Last modification !}
    VerQueryValue( Pt, '\VarFileInfo\Translation',Pt2, Size2);
    Idioma:=IntToHex( DWord(Pt2^) ,8 );
    Idioma:=Copy(Idioma,5,4)+Copy(Idioma,1,4);
    VerQueryValue( Pt,Pchar('\StringFileInfo\'+Idioma+'\'+'FileVersion'),Pt2, Size2);
    if Size2 > 0 then
    begin
      Result:=Copy(PaLeerBuffer(Pt2^),1,Size2);
    end;
    FreeMem (Pt);
  end
end;

Function CheckVerEXE(NombreEXE,VerOK,servidor,Usuario,Password:string):Boolean;
var
  tmpVersion,
  tmpRuta,
  tmpArchivoExe,
  tmpArchivoVerEXE,
  tmpCompleto:string;
  blActSQLOk,blExiste:Boolean;
  blob: TStream;
begin
  Result:=FALSE;
  tmpRuta:=ExtractFilePath(ParamStr(0));
  tmpArchivoExe:=NombreEXE+'.exe';
  tmpCompleto:=tmpRuta+tmpArchivoExe;
  tmpVersion:=trim(GetAppInfo(tmpCompleto));
  tmpArchivoVerEXE := NombreEXE+'('+VerOK+').exe';
  blActSQLOk:=false;
//  if tmpVersion='' then exit;
  //REVIZAR VERSIONES EXISTENTES VERSUS LA QUE DEBE ESTAR
  if VerOK <> tmpVersion then
  begin
    //ACTUALIZACION NEWVER
    IF NombreEXE = 'NEWVER' THEN
    BEGIN
      if FileExists(tmpRuta+'newver.exe') then
      begin
        copyfile(pchar(tmpRuta+'newver.exe'),pchar(tmpRuta+'newverold.exe'),False);
        Ejecuta_Dos(tmpRuta+'newverold.exe ',NombreEXE+' '+VerOK+' '+servidor+' '+Usuario+' '+Password,'N');
        if FileExists(tmpRuta+'newver.exe') then
          DeleteFile(tmpRuta+'newverold.exe');
      end
      else
      begin
        TRY
          //SQL Extract DESDE servidor
          With DM.sqlCommand do
          begin
            close;
            sql.clear;
            sql.add('SELECT DATA,MD5 FROM dbo.APP_VER');
            SQL.ADD(' WHERE APLICACION='+#39+NombreEXE+#39);
            SQL.ADD(' AND VERSION='+#39+VerOK+#39);
            try
              OPEN;
            except
              Application.Terminate;
              exit;
            end;
            if not IsEmpty then
            begin
              blob:= frmBuscaDatos.adUtil.CreateBlobStream(frmBuscaDatos.adUtil.fieldbyname('DATA'), bmRead);
              try
                blob.Seek(0, soFromBeginning);
                WITH TFileStream.Create(tmpRuta+NombreEXE+'.exe', fmCreate) DO
                BEGIN
                  TRY
                    CopyFrom(blob, blob.Size);
                  FINALLY
                    Free;
                  END;
                END;
                blob.Free;
              except
              end;
            end;
          end;
        except
        end;
      end;
    END
    ELSE
    begin
      if EtMensajeDlg('Existe una nueva versión de la aplicación. ¿Desea actualizarla?',etConfirmacion,[etSi,etNo],0, dm.imagenes.Items[0].Bitmap,true) = etrSi then
      begin
        Application.Terminate;
        Winexec(pchar(tmpRuta+'newver.exe '+NombreEXE+' '+VerOK+' '+servidor+' '+Usuario+' '+Password+' S'),SW_NORMAL);
        Result:=TRUE;
      end;
    END;
  END;
end;

Function VerificaVersionExec(App,servidor,Usuario,Password:string):Boolean;
begin
  Result:=FALSE;
  with  DM.sqlCommand do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM dbo.Aplicaciones');
    SQL.Add('WHERE Nombre_Corto='+#39+App+#39);
    sql.add('or Nombre_Corto   ='+#39+'NEWVER'+#39);
    OPEN;
    First;
    while not eof do
    begin
      if fieldbyname('VERSION').AsString <> '' then
         Result:=CheckVerEXE(UpperCase(fieldbyname('Nombre_Corto').AsString),fieldbyname('Version').AsString, servidor,Usuario,Password);
      next;
    end;
    close;
  end;
end;

end.

