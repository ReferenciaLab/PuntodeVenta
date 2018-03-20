program NewVer;

uses
  Forms,
  Unit1 in 'Formas\Unit1.pas' {Form1},
  IDLib in '..\Librerias\Delphi 7\IDLib.pas',
  UCryptString in '..\Librerias\Delphi 7\UCryptString.pas',
  icmp_dll in '..\Librerias\Delphi 7\icmp_dll.pas',
  IPExtra in '..\Librerias\Delphi 7\IPExtra.pas',
  ping_funcs in '..\Librerias\Delphi 7\ping_funcs.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Nueva Versión';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
