unit AttachDb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, RzLaunch;

type
  TfrmAttach = class(TForm)
    lbTexto: TLabel;
    adoCon: TADOConnection;
    rzLauncher: TRzLauncher;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAttach: TfrmAttach;

implementation

{$R *.dfm}

procedure TfrmAttach.FormShow(Sender: TObject);
var
  sql: string;
begin
  try
    lbTexto.Caption := 'Inicializando Servicio';
    Application.ProcessMessages;
    rzLauncher.Execute;
  except
    raise;
    abort;
  end;
  try
    lbTexto.Caption := 'Intentando conectar al serviodor...';
    Application.ProcessMessages;
    adoCon.ConnectionString := 'Data Source=.\PYMESOLDB';
    adoCon.ConnectionString := adoCon.ConnectionString + ';Initial Catalog=master';
    adoCon.ConnectionString := adoCon.ConnectionString + ';User ID=sa';
    adoCon.ConnectionString := adoCon.ConnectionString + ';Password=pymesol';
    adoCon.Connected := True;
    lbTexto.Caption := 'Conectado!';
  except
    raise;
    lbTexto.Caption := 'Erro conectando al servidor';
    Abort;
  end;
  try
    lbTexto.Caption := 'Atachando bases de datos';
    Application.ProcessMessages;
    sql := 'CREATE DATABASE PymeAccounting ON  ' +
      ' (FILENAME = ' + #39 + ExtractFilePath( ParamStr(0) ) + '\PymeAccounting_Data.mdf'+ #39 + '),' +
      ' (FILENAME = ' + #39 + ExtractFilePath( ParamStr(0) ) + '\PymeAccounting_Log.ldf' + #39 + ')' +
      ' FOR ATTACH ';
     adoCon.Execute(sql);
    lbTexto.Caption := 'Atachando compañia de ejemplo';
    sql := 'CREATE DATABASE PymeSample ON  ' +
      ' (FILENAME = ' + #39 + ExtractFilePath( ParamStr(0) ) + '\PymeSample_Data.mdf'+ #39 + '),' +
      ' (FILENAME = ' + #39 + ExtractFilePath( ParamStr(0) ) + '\PymeSample_Log.ldf' + #39 + ')' +
      ' FOR ATTACH ';
     adoCon.Execute(sql);
    lbTexto.Caption :=  'Proceso finalizado!';
  except
    raise;
    lbTexto.Caption := 'Erro atachando base de datos';
    Abort;
  end;
  Close;
end;

end.
