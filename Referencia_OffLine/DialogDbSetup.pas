unit DialogDbSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, PymeConst, cxTextEdit, cxintl;

type
  TfrmDialogDbSetup = class(TfrmDialogModule)
    tvEmpresas: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDialogItem1: TdxLayoutItem;
    dsEmpresas: TDataSource;
    tvEmpresasServidor: TcxGridDBColumn;
    tvEmpresasNombre: TcxGridDBColumn;
    tvEmpresasAccesoNT: TcxGridDBColumn;
    tvEmpresasSqlUser: TcxGridDBColumn;
    tvEmpresasSqlPassword: TcxGridDBColumn;
    tvEmpresasDescripcion: TcxGridDBColumn;
    conTest: TADOConnection;
    btFunciones: TcxButton;
    liBtFunciones: TdxLayoutItem;
    pmFunciones: TPopupMenu;
    CopiadeSeguridad1: TMenuItem;
    RestaurarCopia1: TMenuItem;
    CrearNueva1: TMenuItem;
    N1: TMenuItem;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    procedure RestaurarCopia1Click(Sender: TObject);
    procedure CopiadeSeguridad1Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogDbSetup: TfrmDialogDbSetup;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDialogDbSetup.btCancelarClick(Sender: TObject);
begin
  //inherited;
  try
    conTest.Close;
    conTest.DefaultDatabase := '';
    conTest.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('SqlUser').Text;
    conTest.ConnectionString := conTest.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('SqlPassword').Text;
    conTest.Open;
    DM.Info(SConexionExistosa);
  except
    raise;
  end;
end;

procedure TfrmDialogDbSetup.CopiadeSeguridad1Click(Sender: TObject);
var
  sqlCmd : String;
begin
  inherited;
  try
    if SaveDialog.Execute then
    begin
      conTest.Close;
      conTest.DefaultDatabase := '';
      conTest.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
      conTest.ConnectionString := conTest.ConnectionString + ';Initial Catalog=' + DM.ApplEmpresas.FieldByName('Nombre').Text;
      conTest.ConnectionString := conTest.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('SqlUser').Text;
      conTest.ConnectionString := conTest.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('SqlPassword').Text;
      conTest.Open;
      //
      sqlCmd := 'BACKUP DATABASE [' + DM.ApplEmpresas.FieldByName('Nombre').Text + '] ';
      sqlCmd := sqlCmd + 'TO DISK = ' + #39 + SaveDialog.FileName + #39;
      sqlCmd := sqlCmd + ' WITH NOFORMAT, INIT, ';
      sqlCmd := sqlCmd + ' NAME = ' + #39 + 'Laboratorio backup' + #39 + ', ';
      sqlCmd := sqlCmd + ' NOREWIND, NOUNLOAD, NOSKIP';
      //
      try
        Application.ProcessMessages;
        Cursor := crHourGlass;
        conTest.Execute(sqlCmd);
        if conTest.Errors.Count = 0 then
          DM.Info(SProcesoCompletado);
      finally
        Cursor := crDefault;
      end;
    end;
  except
    raise;
  end;
end;

procedure TfrmDialogDbSetup.RestaurarCopia1Click(Sender: TObject);
var
  sqlCmd: string;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    try
      conTest.Close;
      conTest.DefaultDatabase := '';
      conTest.ConnectionString := 'Data Source=' + DM.ApplEmpresas.FieldByName('Servidor').Text;
      conTest.ConnectionString := conTest.ConnectionString + ';Initial Catalog=Master';
      conTest.ConnectionString := conTest.ConnectionString + ';User ID=' + DM.ApplEmpresas.FieldByName('SqlUser').Text;
      conTest.ConnectionString := conTest.ConnectionString + ';Password=' +  DM.ApplEmpresas.FieldByName('SqlPassword').Text;
      conTest.Open;
      //
      sqlCmd := 'RESTORE DATABASE [' + DM.ApplEmpresas.FieldByName('Nombre').Text + ']';
      sqlCmd := sqlCmd + ' FROM DISK = ' + #39 + OpenDialog.FileName + #39;
      sqlCmd := sqlCmd + ' WITH FILE = 1, NOREWIND, NOUNLOAD, REPLACE';
      try
        Application.ProcessMessages;
        Cursor := crHourGlass;
        conTest.Execute(sqlCmd);
        if conTest.Errors.Count = 0 then
          DM.Info(SProcesoCompletado);
      finally
        Cursor := crDefault;
      end;
    except
      raise;
    end;
  end;
end;

end.
