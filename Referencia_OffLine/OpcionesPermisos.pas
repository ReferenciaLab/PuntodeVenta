unit OpcionesPermisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, StdCtrls,
  ExtCtrls, dxLayoutControl, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, JvBDEQuery, JvComponent, JvFormPlacement,
  ImgList, ADODB, dxmdaset, ActnList, Grids, DBGrids, Menus, StdActns,
  JvExControls, JvEnterTab, PymeConst, JvComponentBase;

type
  TfrmOpcionesPermisos = class(TfrmOpcionesModule)
    lcDatosGroup1: TdxLayoutGroup;
    cmdNoAccess: TJvSQLScript;
    cmdFullAccess: TJvSQLScript;
    cmdFillOpciones: TJvSQLScript;
    lcDatosItem2: TdxLayoutItem;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label5: TLabel;
    lcDatosGroup2: TdxLayoutGroup;
    qrSysPermisos: TADOQuery;
    qrSysPermisosRolID: TSmallintField;
    qrSysPermisosNivel: TSmallintField;
    ilPermisos: TImageList;
    dxMemData: TdxMemData;
    dxMemDataCategoria: TStringField;
    dxMemDataSubCategoria: TStringField;
    dxMemDataTexto: TStringField;
    dxMemDataPermiso: TIntegerField;
    tvPermisos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDatosItem1: TdxLayoutItem;
    tvPermisosCategoria: TcxGridDBColumn;
    tvPermisosSubCategoria: TcxGridDBColumn;
    tvPermisosTexto: TcxGridDBColumn;
    tvPermisosPermiso: TcxGridDBColumn;
    tvPermisosOpcionID: TcxGridDBColumn;
    tvPermisosRecId: TcxGridDBColumn;
    dxMemDataOpcionID: TLargeintField;
    qrSysPermisosOpcionID: TIntegerField;
    procedure dxMemDataAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    CurRol : Integer;
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure ShowRol( iRol : Integer );
  end;

var
  frmOpcionesPermisos: TfrmOpcionesPermisos;

implementation

uses Main, Math, StrUtils;

{$R *.dfm}

{ TfrmOpcionesPermisos }

procedure TfrmOpcionesPermisos.RegisterActions;
begin
  //  inherited;

end;

procedure TfrmOpcionesPermisos.ShowRol(iRol: Integer);
var
  i : Integer;
  s : String;
  x : Integer;
  y : Integer;
begin
  CurRol := iRol;
  qrSysPermisos.Close;
  qrSysPermisos.Parameters.ParamByName('pRol').Value := iRol;
  qrSysPermisos.Open;

  dxMemData.Close;
  dxMemData.Open;
  With frmMain do begin
    try
      screen.Cursor := crHourGlass;
      dxMemData.DisableControls;
      spTexto.Caption := SLeyendoEstructuraD;
      spTexto.Update;
      for i := 0 to frmMain.alMainMenu.ActionCount -1 do begin
        dxMemData.Append;
        s := frmMain.alMainMenu.Actions[i].Category;
        x := 1;
        y := Pos('_', s );
        dxMemDataCategoria.Text := MidStr( s, x, y - 1);
        dxMemDataSubCategoria.Text := MidStr( s, y + 1, 100  );
        dxMemDataTexto.Text := ( frmMain.alMainMenu.Actions[i] as TAction ).Caption;
        dxMemDataOpcionID.Value := frmMain.alMainMenu.Actions[i].Tag;
        if qrSysPermisos.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]) then
          dxMemDataPermiso.Value := qrSysPermisosNivel.Value
        else
          dxMemDataPermiso.Value := 0;
        dxMemData.Post;
      end;
    finally
      dxMemData.EnableControls;
      spTexto.Caption := '';
      screen.Cursor := crDefault;
    end;
  end;
  dxMemData.First;
//  Show;
  tvPermisos.DataController.Groups.FullCollapse;
  tvPermisos.DataController.GotoFirst;
end;

procedure TfrmOpcionesPermisos.dxMemDataAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qrSysPermisos.Locate('OpcionID',dxMemDataOpcionID.Value,[]) then begin
    qrSysPermisos.Edit;
    qrSysPermisosNivel.Value := dxMemDataPermiso.Value;
    qrSysPermisos.Post;
  end else begin
    qrSysPermisos.Append;
    qrSysPermisosRolID.Value := CurRol;
    qrSysPermisosOpcionID.Value := dxMemDataOpcionID.Value;
    qrSysPermisosNivel.Value := dxMemDataPermiso.Value;
    qrSysPermisos.Post;
  end;
end;

end.
