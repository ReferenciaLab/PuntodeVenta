unit UntPuntoVentaNCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxintl, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, DB, ADODB,
  StdCtrls, Mask, DBCtrls, cxLookAndFeelPainters, cxButtons, cxMemo, cxControls,
  cxContainer, cxEdit, cxTextEdit, dxLayoutControl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, Grids, DBGrids;

type
  TFrmPuntoVentaNCF = class(TfrmCustomModule)
    Qclientes: TADOQuery;
    QclientesCLIENTEID: TStringField;
    QclientesNOMBRE: TStringField;
    QclientesTIPOCLIENTE: TStringField;
    QclientesFORMAPAGO: TStringField;
    QclientesMONEDAID: TStringField;
    QclientesDesGrupo: TStringField;
    QclientesFORMA_PAGO: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    F: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    btNueva: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxTextEdit2: TcxTextEdit;
    cxMemo1: TcxMemo;
    cxRadioGroup1: TcxRadioGroup;
    cgEntradasDBTableView1: TcxGridDBTableView;
    cgEntradasLevel1: TcxGridLevel;
    cgEntradas: TcxGrid;
    cxDateEdit1: TcxDateEdit;
    PanelClientes: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxEditStyleController1: TcxEditStyleController;
    Label8: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    DBGrid1: TDBGrid;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    QbuscarClientes: TADOQuery;
    DSBuscarCliente: TDataSource;
    cxButton7: TcxButton;
    cgEntradasDBTableView1Column1: TcxGridDBColumn;
    cgEntradasDBTableView1Column2: TcxGridDBColumn;
    cgEntradasDBTableView1Column3: TcxGridDBColumn;
    cgEntradasDBTableView1Column4: TcxGridDBColumn;
    cgEntradasDBTableView1Column5: TcxGridDBColumn;
    cgEntradasDBTableView1Column6: TcxGridDBColumn;
    Qentradas: TADOQuery;
    Qtemporal: TADOQuery;
    DSentradas: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton6Click(Sender: TObject);
    procedure btNuevaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure  BuscarCliente;
  end;

var
  FrmPuntoVentaNCF: TFrmPuntoVentaNCF;

implementation

uses Main, DataModule, UntBuscarEntradas;

{$R *.dfm}

procedure TFrmPuntoVentaNCF.btNuevaClick(Sender: TObject);
begin
  inherited;
 if PanelClientes.Visible = false then
    begin
     PanelClientes.Visible := true;
    end;
end;

procedure TFrmPuntoVentaNCF.BuscarCliente;
begin
  With QbuscarClientes do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('Select top 150 A.CLIENTEID, A.NOMBRE, A.TIPOCLIENTE, A.FORMAPAGO, A.MONEDAID, B.DESCRIPCION As DesGrupo, C.DESCRIPCION AS FORMA_PAGO');
      Sql.Add('From PTCLIENTE A, PTGRUPOCLIENTE B, PTFORMADEPAGO C');
      Sql.Add('WHERE A.GRUPOCLIENTE = B.GRUPOCLIENTE');
      Sql.Add('AND A.FORMAPAGO = C.FORMADEPAGOID');
      Sql.Add('AND A.GRUPOCLIENTE IN(''7'',''9'',''10'',''12'',''14'',''15'')');
      if cxTextEdit1.Text <> '' then
      Sql.Add('And A.CLIENTEID = ' +#39+ cxTextEdit1.Text +#39);
      if cxTextEdit3.Text <> '' then
      Sql.Add('And A.NOMBRE like ' +#39+'%'+ cxTextEdit3.Text+'%' +#39);
      Sql.Add('');
      Open;
    end;
end;

procedure TFrmPuntoVentaNCF.cxButton1Click(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrmbuscarEntradas, FrmbuscarEntradas);
FrmbuscarEntradas.edbuscar.Text := DBEdit2.Text;
FrmbuscarEntradas.ShowModal;
     Qentradas.close;
     Qentradas.Open;
  //   frmMain.LanzaVentana(-7995);
end;

procedure TFrmPuntoVentaNCF.cxButton5Click(Sender: TObject);
begin
  inherited;
 if QbuscarClientes.RecordCount > 0 then
    begin
      Qclientes.Close;
      Qclientes.Parameters.ParamByName('CLIENTE').Value := QbuscarClientes.FieldByName('CLIENTEID').Value;
      Qclientes.Open;
    end;
    QbuscarClientes.Close;
    cxTextEdit1.Clear;
    cxTextEdit3.Clear;
    PanelClientes.Visible := false;
end;

procedure TFrmPuntoVentaNCF.cxButton6Click(Sender: TObject);
begin
  inherited;
PanelClientes.Visible := false;
end;

procedure TFrmPuntoVentaNCF.cxButton7Click(Sender: TObject);
begin
  inherited;
    BuscarCliente;
end;

procedure TFrmPuntoVentaNCF.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then
   BEGIN
     BuscarCliente;
   end;
end;

procedure TFrmPuntoVentaNCF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if QbuscarClientes.RecordCount > 0 then
    begin
      Qclientes.Close;
      Qclientes.Parameters.ParamByName('CLIENTE').Value := QbuscarClientes.FieldByName('CLIENTEID').Value;
      Qclientes.Open;
    end;
    QbuscarClientes.Close;
    cxTextEdit1.Clear;
    cxTextEdit3.Clear;
    PanelClientes.Visible := false;


end;

procedure TFrmPuntoVentaNCF.FormCreate(Sender: TObject);
begin
  inherited;
frmMain.Exis_Vta := True;

Qtemporal.Close;
Qtemporal.ExecSQL;

Qentradas.Close;
Qentradas.Open;
//dxLayoutControl1.LookAndFeel := dmAppActions.lnfWeb;
//lcGeneral.LookAndFeel := dmAppActions.lnfWeb;
//lgBotones.LookAndFeel := dmAppActions.lnfWeb;//dmAppActions.lnfButtonGroup;
end;

end.
