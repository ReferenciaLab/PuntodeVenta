unit DialogProcesarPruebas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxGraphics, cxSpinEdit, cxTimeEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, ADODB, cxintl;

type
  TfrmDialogProcesarPruebas = class(TfrmDialogModule)
    edfecha: TcxDateEdit;
    lcDialogItem2: TdxLayoutItem;
    edhora: TcxTimeEdit;
    lcDialogItem3: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    EdUsuario: TcxTextEdit;
    lcDialogItem4: TdxLayoutItem;
    EdClave: TcxTextEdit;
    lcDialogItem5: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    valor        : Boolean;
    Usuario      : String;
    fleboId      : String;

    procedure Run;
    procedure VerificarUsuario;
  end;

var
  frmDialogProcesarPruebas: TfrmDialogProcesarPruebas;

implementation

uses Main, DataModule, PymeConst;

{$R *.dfm}


procedure TfrmDialogProcesarPruebas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Down) or (Key = 13) then
    PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if Key = Vk_Up then
    PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;
end;


procedure TfrmDialogProcesarPruebas.FormShow(Sender: TObject);
begin
  inherited;
  edhora.Time := Time;
  edhora.Properties.ReadOnly := False;
  EdFecha.Properties.ReadOnly := False;
  EdFecha.Date := frmMain.frmTmpMuestra.fecha_label;
end;


procedure TfrmDialogProcesarPruebas.Run;
begin
 showmodal;

 if ModalResult = mrOk then
   Begin
     VerificarUsuario;

     If ( DM.Mensaje('Desea Actualizar Los Datos de Entrega de Esta Toma?', mb_yesno) = id_yes ) And
        ( valor = true ) Then
       Begin
//         frmMain.frmTmpMuestra.UserId := Usuario;
//         frmMain.frmTmpMuestra.ActPruebas(Usuario, edfecha.Date, edhora.Text);
//         frmMain.frmTmpMuestra.ActPruebas(edusuario.Text, edfecha.Date, edhora.Text);
         frmMain.frmTmpMuestra.UserId := edusuario.Text;
         frmMain.frmTmpMuestra.ActPruebas(fleboId, edfecha.Date, edhora.Text);
       End;
   End;
end;


procedure TfrmDialogProcesarPruebas.VerificarUsuario;
Var
 clave  : String;
 qfind  : TADOQuery;
begin
 valor := False;
 usuario := '';

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM SysUsuarios, PTUsuarioSucursal '+
                   ' WHERE  SysUsuarios.UserID = PTUsuarioSucursal.UserID '+
                   ' AND SysUsuarios.UserID = '+#39+edusuario.Text+#39+
//                   ' AND SysUsuarios.Clave = '+#39+edclave.Text+#39+
                   ' AND PTUsuarioSucursal.SucursalID = '+#39+DM.CurSucursal+#39;
 qfind.Open;

 If qfind.RecordCount = 0 then
  begin
   DM.Error(SUsuarioClaveNoE);
  end
 else
  begin
//   if (DecryptKey(qfind.FieldByName('Clave').AsString) <> edClave.Text) then
   usuario  := qfind.FieldByName('Nombre').AsString;
   clave    := DecryptKey(qfind.FieldByName('Clave').AsString);
   fleboId  := qfind.FieldByName('CodigoFlebotomista').AsString;

//   if (qfind.FieldByName('Clave').AsString <> edClave.Text) then
   if (clave <> edClave.Text) then
    Begin
     DM.Error('La Clave y/o El Usuario Suministrado Es Incorrecto.');
    end
   else
    begin
     valor := True;
     DM.Info('La Flebotomista '+ Usuario +' Ha Sido Autorizada');
    end;
  end;
end;



end.

