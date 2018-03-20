unit ActivaCobroPV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxMaskEdit,ADODB;

type
  TfrmActivaCobro = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    txtMuestrano: TcxMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    btBuscar: TcxButton;
    txtPaciente: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    txtFactura: TcxMaskEdit;
    procedure btBuscarClick(Sender: TObject);
    Procedure Estado;
    Function  Verifica_Muestra(Muestrano : String) : Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmActivaCobro: TfrmActivaCobro;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}

procedure TfrmActivaCobro.btBuscarClick(Sender: TObject);
begin
  if (Trim(txtMuestrano.Text)<> EmptyStr) And (Trim(txtFactura.Text)<> EmptyStr) Then
  begin
       If Verifica_Muestra(txtMuestrano.text) then
          Estado
       else
          ShowMessage('Número de Muestra='+txtMuestrano.text+' NO EXISTE.')
  end;
end;

procedure TfrmActivaCobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmActivaCobro.Run;
Var
 qMuestra  : TAdoQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
    qMuestra := DM.NewQuery;
    qMuestra.Close;
    qMuestra.SQL.Text := ' Update ptEntradaPaciente Set Cuadrado=0'+
                         ' WHERE Muestrano = ' + #39 + txtMuestrano.Text+ #39 +
                         ' And EntradaId = '+#39+txtFactura.Text+#39+
                         ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
    qMuestra.ExecSQL;
    Dm.Info('Entrada Tiene Opción Cobros Activada.');
 end;
end;
Function TfrmActivaCobro.Verifica_Muestra(Muestrano : String) : Boolean;
Var
 qMuestra  : TAdoQuery;
begin
  qMuestra := DM.NewQuery;
  With qMuestra, sql do
  begin
    Close;
    Text := ' SELECT Muestrano,NombrePaciente FROM ptEntradaPaciente '+
                       ' WHERE Muestrano = ' + #39 + Muestrano + #39 +
                       ' And EntradaId = '+#39+txtFactura.Text+#39+
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
    Open;
    if (RecordCount > 0) then
    begin
      txtPaciente.Text := fieldbyname('NombrePaciente').AsString;
      result := True
    end
    else
      result := False;
  end;
  FreeAndNil(qMuestra);
End;
Procedure TfrmActivaCobro.Estado;
Var
 qMuestra  : TAdoQuery;
begin
  qMuestra := DM.NewQuery;
  qMuestra.Close;
  qMuestra.SQL.Text := ' SELECT Origen,Cuadrado,Transferido,Muestrano,(Neto)-(TotalPagado) as Pendiente FROM ptEntradaPaciente '+
                       ' WHERE Muestrano = ' + #39 + txtMuestrano.Text+ #39 +
                       ' And EntradaId = '+#39+txtFactura.Text+#39+
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qMuestra.Open;
  if (qMuestra.RecordCount > 0) then
  begin
{      if ((qMuestra.FieldByName('Origen').Value = '07') Or
         (qMuestra.FieldByName('Origen').Value = '09') Or
         (qMuestra.FieldByName('Origen').Value = '10') Or
         (qMuestra.FieldByName('Origen').Value = '12')) And (qMuestra.FieldByName('FormadePagos').Value = 'CRE') And
          PerteneceQuincena then
      begin
        ShowMessage('Tipo de Entrada a Crédito No se Habilita el Cobro.  Verifique.');
        txtMuestrano.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else
}
      if (qMuestra.FieldByName('Cuadrado').Value = 0) Then
      begin
        ShowMessage('Orden Tiene Boton de Cobros Habilitado.  Verifique.');
        txtMuestrano.Text:=EmptyStr;
        txtFactura.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if qMuestra.FieldByName('Transferido').Value = 1 Then
      begin
        ShowMessage('Orden fué transferida a Axapta.');
        txtMuestrano.Text:=EmptyStr;
        txtFactura.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if (qMuestra.FieldByName('Pendiente').Value = 0) and (qMuestra.FieldByName('Cuadrado').Value = 1) Then
      begin
        ShowMessage('Orden Ya fué Saldada ó Cuadrada.');
        txtMuestrano.Text:=EmptyStr;
        txtFactura.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if (qMuestra.FieldByName('Pendiente').Value > 0) and (qMuestra.FieldByName('Cuadrado').Value = 1) Then
        cxButton1.Enabled := True;
  end;
  FreeAndNil(qMuestra);
End;


end.
