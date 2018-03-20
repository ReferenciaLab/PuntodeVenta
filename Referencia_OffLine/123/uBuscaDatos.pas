unit uBuscaDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ADODB, LMDCustomComponent, LMDBaseController, LMDCustomContainer,
  LMDCustomImageList, LMDBitmapList, ExtCtrls, DB, ImgList;

type
  TfrmBuscaDatos = class(TForm)
    adoConVisor: TADOConnection;
    GetLibros: TADOQuery;
    ImageList1: TImageList;
    adoCons: TADOQuery;
    GetDataEstatus: TADOQuery;
    adUtil: TADOQuery;
    dsGetLibro: TDataSource;
    dsDataEstatus: TDataSource;
    dsGetCons: TDataSource;
    Imagenes: TLMDBitmapList;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaDatos: TfrmBuscaDatos;

implementation

{$R *.dfm}

end.
