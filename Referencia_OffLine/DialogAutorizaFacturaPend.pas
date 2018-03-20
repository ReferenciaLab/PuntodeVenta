unit DialogAutorizaFacturaPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxGraphics, cxSpinEdit, cxTimeEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, ADODB, cxintl;

type
  TfrmDialogAutorizaFacturaPend = class(TfrmDialogModule)
    EdUsuario: TcxTextEdit;
    lcDialogItem4: TdxLayoutItem;
    EdClave: TcxTextEdit;
    lcDialogItem5: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    valor  : Boolean;
    Usuario : String;

    procedure Run;
    procedure Cargar;
    procedure VerificarUsuario;
  end;

var
  frmDialogAutorizaFacturaPend: TfrmDialogAutorizaFacturaPend;

implementation

uses Main, DataModule, PymeConst;

{$R *.dfm}


procedure TfrmDialogAutorizaFacturaPend.Cargar;
begin
    EdUsuario.Text := '';
//  edhora.Time := Time;
//  edfecha.Date := DM.SystemDate;
//  CbDepto.Text := frmMain.frmRegMuestras.EdDepto.Text;
//  edhora.Properties.ReadOnly := True;
//  edfecha.Properties.ReadOnly := True;
//  CbDepto.Properties.ReadOnly := True;
end;


procedure TfrmDialogAutorizaFacturaPend.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Down) or (Key = 13) then
    PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if Key = Vk_Up then
    PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;
end;


procedure TfrmDialogAutorizaFacturaPend.Run;
begin
 Cargar;
 showmodal;
 If ModalResult = mrOk  then
 Begin
    VerificarUsuario;
 End;
end;


procedure TfrmDialogAutorizaFacturaPend.VerificarUsuario;
Var
 clave      : String;
 muestrano  : String;
 Monto_Pend : Currency;
 qfind      : TADOQuery;
begin
 valor := False;
 usuario := '';

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM SysUsuarios u, SysRoles r '+
                   ' WHERE  u.RolID = r.RolID '+
                   ' AND u.UserID = '+#39+edusuario.Text+#39;
 qfind.Open;

  If qfind.RecordCount = 0 then
  begin
   DM.Error(SUsuarioClaveNoE);
  end
  else
  begin
//   if (DecryptKey(qfind.FieldByName('Clave').AsString) <> edClave.Text) then
    If qfind.FieldByName('Autoriza_Pendiente').AsBoolean = False then
    begin
        Raise exception.CreateFmt('Usuario No Autorizado.', []);
    end;
   usuario := qfind.FieldByName('Nombre').AsString;
   clave := DecryptKey(qfind.FieldByName('Clave').AsString);

//   if (qfind.FieldByName('Clave').AsString <> edClave.Text) then
   If (clave <> edClave.Text) then
   Begin
     DM.Error('La Clave y/o El Usuario Suministrado Es Incorrecto.');
     Tiene_Balance:=0;
   end
   else
   begin
       valor := True;
       Tiene_Balance:=1;
       if Factura_st='M' then
       begin
         Muestrano := frmMain.frmTmpMod.qrEntradaPacienteMUESTRANO.Text;
         Monto_Pend:= frmMain.frmTmpMod.qrEntradaPacienteTotalPendiente.AsFloat;
       end
       else  if Factura_st='I' then
       begin
         Muestrano  := frmMain.frmTmp.qrEntradaPacienteMUESTRANO.Text;
         Monto_Pend :=frmMain.frmTmp.qrEntradaPacienteTotalPendiente.AsFloat;
       end
       else  if Factura_st='F' then
       begin
         Muestrano  := frmMain.frmTmpND.qrEntradaPacienteMUESTRANO.Text;
         Monto_Pend :=frmMain.frmTmpND.qrEntradaPacienteTotalPendiente.AsFloat;
       end;

       qfind := DM.NewQuery;
       Try
           With qfind, sql do
           begin
              Close;
              Clear;
              Text := ' SELECT * FROM PTAutorizaFacturaPend '+
                      ' WHERE  Muestrano = '+#39+Muestrano+#39+' And Estatus='+#39+'P'+#39;
              Open;

              If RecordCount = 1 then
              Begin
                  Close;
                  Clear;
                  Text := ' Update PTAutorizaFacturaPend Set Monto = '+FloatToStr(Monto_Pend)+
                          ' Where Muestrano='+#39+Muestrano+#39;
                  ExecSQL;
              End
              Else If RecordCount = 0 then
              Begin
                  Close;
                  Clear;
                  Text := ' INSERT INTO PTAutorizaFacturaPend(Muestrano,Fecha,UserID,UserID_Aut,Monto,Estatus) VALUES ( '+#39+Muestrano+#39+','+#39+FormatDateTime('yyyymmdd', DM.SystemDate)+#39+','+#39+DM.CurUser+#39+','+#39+edusuario.Text+#39+','+FloatToStr(Monto_Pend)+','+#39+'P'+#39+')';
                  ExecSQL;
              end;
           end;

       Except
           Raise exception.CreateFmt('Error Creando PTAutorizaFacturaPend. Muestra Num='+Muestrano, []);
       End;
   end;
  end;
  FreeAndNil(qfind);
end;

end.

