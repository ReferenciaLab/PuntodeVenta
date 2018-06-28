unit ActNCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxMaskEdit,ADODB, cxGraphics, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxCalendar;

type
  TfrmActNCF = class(TForm)
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
    btBuscar: TcxButton;
    txtPaciente: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    txtNombreCia: TcxTextEdit;
    cboTipoNCF: TcxComboBox;
    mskRNC: TcxMaskEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    txtNCFID: TcxTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cbExtDocumento: TcxExtLookupComboBox;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    msKMonto: TcxMaskEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    txtUsuario: TcxTextEdit;
    dtFecha: TcxDateEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxButton4: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
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
  frmActNCF: TfrmActNCF;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}

procedure TfrmActNCF.btBuscarClick(Sender: TObject);
begin
  if (Trim(txtMuestrano.Text)<> EmptyStr) Then
  begin
       If Verifica_Muestra(txtMuestrano.text) then
          Estado
       else
          ShowMessage('N�mero de Muestra='+txtMuestrano.text+' NO EXISTE.')
  end;
end;

procedure TfrmActNCF.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmActNCF.Run;
Var
 qMuestra  : TAdoQuery;
begin
 showmodal;
{ if ModalResult = mrOk then
 begin
    qMuestra := DM.NewQuery;
    qMuestra.Close;
    qMuestra.SQL.Text := ' Update ptEntradaPaciente Set Cuadrado=0'+
                         ' WHERE Muestrano = ' + #39 + txtMuestrano.Text+ #39 +
                         ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
    qMuestra.ExecSQL;
    Dm.Info('Entrada Tiene Opci�n Cobros Activada.');
 end;
}
end;
Function TfrmActNCF.Verifica_Muestra(Muestrano : String) : Boolean;
Var
 qMuestra  : TAdoQuery;
begin
  qMuestra := DM.NewQuery;
  With qMuestra, sql do
  begin
    Close;
    Text := ' SELECT NCFTYPEID,NCFID,NCFNAME FROM ptEntradaPaciente '+
            ' WHERE Muestrano = '+#39+Muestrano+#39;
    Open;
    if (RecordCount = 0) then
    begin
      Raise exception.CreateFmt('N�mero de Laboratorio No Existe.  Verifique.', []);
      result := False;
    end
    else
    begin
      Close;
      Text := ' SELECT e.Transferido,e.NOMBREPACIENTE,e.NCFTYPEID,e.NCFID,e.NCFNAME,n.RNC,n.Fecha,n.Monto,n.UserID '+
	            ' FROM ptEntradaPaciente e INNER JOIN NCFTABLEPTV n '+
	            ' on e.MUESTRANO COLLATE SQL_AltDiction_CP850_CI_AI = n.MUESTRANO COLLATE SQL_AltDiction_CP850_CI_AI '+
              ' WHERE e.Muestrano = '+#39+Muestrano+#39+ ' And e.NCFID<>'+#39+#39;
      Open;
      if (RecordCount > 0) then
      begin
        txtPaciente.Text      := fieldbyname('NombrePaciente').AsString;
        txtUsuario.Text       := fieldbyname('UserID').AsString;
        mskMonto.Text         := fieldbyname('Monto').AsString;
        dtFecha.EditValue     := fieldbyname('Fecha').AsString;
        txtNombreCia.Text     := fieldbyname('NCFNAME').AsString;
        cboTipoNCF.Text       := fieldbyname('NCFTYPEID').AsString;
        txtNCFID.Text         := fieldbyname('NCFID').AsString;
        With DM.qrDocumento, sql do
        begin
          Close;
          Clear;
          Text :='Select *  From PtDocumento Where TipoDocID IN (1,2,3)';
          Open;
        end;
        if (Length(trim(mskRNC.Text))=11) then
            cbExtDocumento.ItemIndex :=0
        else if (Length(trim(mskRNC.Text))=13) then
            cbExtDocumento.ItemIndex :=1;
        mskRNC.Text       := fieldbyname('RNC').AsString;
        if qMuestra.fieldbyname('Transferido').AsString='1' then
        begin
           Raise exception.CreateFmt('Entrada Ya Facturada No puede realizar cambios.  Verifique.', []);
           result := False;
        end
        else
        begin
          cxButton1.Enabled := True;
          cxButton3.Enabled := True;
        end;
        result := True
      end
      else
      begin
        Raise exception.CreateFmt('N�mero de Laboratorio No Tiene Comprobante Fiscal.  Verifique.', []);
        result := False;
      end;
    end;
  end;
  FreeAndNil(qMuestra);
End;
procedure TfrmActNCF.cbExtDocumentoPropertiesChange(Sender: TObject);
begin
  mskRNC.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
  mskRNC.Update;
end;

procedure TfrmActNCF.cxButton1Click(Sender: TObject);
Var qmodifica : TADOQuery;
begin
     If (txtMuestrano.Text <> EmptyStr) And (mskRNC.Text<>EmptyStr) And
        (txtNombreCia.Text<>EmptyStr) then
     begin
       if MessageDlg('Desea Eliminar N�mero de Comprobante Fiscal?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
       begin
          qmodifica := DM.NewQuery;
          With qmodifica, sql do
          begin
            Close;
            Text := ' Update PtEntradaPaciente set NCFNAME = '+#39+#39+',NCFTYPEID = '+#39+#39+',NCFID = '+#39+#39+
                    ' Where Muestrano='+#39+txtMuestrano.Text+#39+
                    ' Delete NCFTABLEPTV Where Muestrano='+#39+txtMuestrano.Text+#39;
            ExecSQL;
          end;
          cxButton4Click(Sender);
          FreeAndNil(qmodifica);
       end;
     end;
end;

procedure TfrmActNCF.cxButton3Click(Sender: TObject);
Var qmodifica : TADOQuery;
begin
     If (txtMuestrano.Text <> EmptyStr) And (mskRNC.Text<>EmptyStr) And
        (txtNombreCia.Text<>EmptyStr) then
     begin
      qmodifica := DM.NewQuery;
      With qmodifica, sql do
      begin
        Close;
        Text := ' Update PtEntradaPaciente set NCFNAME = '+#39+txtNombreCia.Text+#39+
                ' Where Muestrano='+#39+txtMuestrano.Text+#39+
                ' Update NCFTABLEPTV set RNC = '+#39+mskRNC.Text+#39+
                ' ,NCFNAME = '+#39+txtNombreCia.Text+#39+
                ' Where Muestrano='+#39+txtMuestrano.Text+#39;
        ExecSQL;
      end;
      cxButton4Click(Sender);
      FreeAndNil(qmodifica);
     end;
end;

procedure TfrmActNCF.cxButton4Click(Sender: TObject);
begin
  TxtMuestrano.Text         :=  EmptyStr;
  TxtUsuario.Text           :=  EmptyStr;
  TxtPaciente.Text          :=  EmptyStr;
  mskMonto.Text             :=  EmptyStr;
  dtFecha.Text              :=  '__/__/____';
  cboTipoNCF.ItemIndex      :=  -1;
  txtNCFID.Text             :=  EmptyStr;
  cbExtDocumento.ItemIndex  :=  -1;
  mskRNC.Text               :=  EmptyStr;
  txtNombreCia.Text         :=  EmptyStr;
  cxButton1.Enabled         :=  False;
  cxButton3.Enabled         :=  False;
end;

Procedure TfrmActNCF.Estado;
Var
 qMuestra  : TAdoQuery;
begin
{  qMuestra := DM.NewQuery;
  qMuestra.Close;
  qMuestra.SQL.Text := ' SELECT Origen,Cuadrado,Transferido,Muestrano,(Neto)-(TotalPagado) as Pendiente FROM ptEntradaPaciente '+
                       ' WHERE Muestrano = ' + #39 + txtMuestrano.Text+ #39 +
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qMuestra.Open;
  if (qMuestra.RecordCount > 0) then
  begin
      if (qMuestra.FieldByName('Cuadrado').Value = 0) Then
      begin
        ShowMessage('Orden Tiene Boton de Cobros Habilitado.  Verifique.');
        txtMuestrano.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if qMuestra.FieldByName('Transferido').Value = 1 Then
      begin
        ShowMessage('Orden fu� transferida a Axapta.');
        txtMuestrano.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if (qMuestra.FieldByName('Pendiente').Value = 0) and (qMuestra.FieldByName('Cuadrado').Value = 1) Then
      begin
        ShowMessage('Orden Ya fu� Saldada � Cuadrada.');
        txtMuestrano.Text:=EmptyStr;
        txtPaciente.Text:=EmptyStr;
      end
      else if (qMuestra.FieldByName('Pendiente').Value > 0) and (qMuestra.FieldByName('Cuadrado').Value = 1) Then
        cxButton1.Enabled := True;
  end;
  FreeAndNil(qMuestra);
}
End;


end.
