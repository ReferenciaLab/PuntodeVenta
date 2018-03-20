unit DialogConsultaPacienteDom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxintl, cxLabel,dlgmensajes;

type
  TfrmDialogConsultaPacienteDom = class(TfrmDialogConsulta)
    qrPacientes: TADOQuery;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    BtNuevo: TcxButton;
    qrPacientesCteDomID: TIntegerField;
    qrPacientesTipo_Documento: TIntegerField;
    qrPacientesDocumento: TStringField;
    qrPacientesNombre: TStringField;
    qrPacientesSexo: TSmallintField;
    qrPacientesDireccion: TStringField;
    qrPacientesFecha_Nacimiento: TDateTimeField;
    qrPacientesClienteID: TStringField;
    qrPacientesTel_Oficina: TStringField;
    qrPacientesTel_Residencia: TStringField;
    qrPacientesTel_Celular: TStringField;
    qrPacientesEmail: TStringField;
    qrPacientesUserID: TStringField;
    qrPacientesEstatus: TStringField;
    dbDatosCteDomID: TcxGridDBColumn;
    dbDatosTipo_Documento: TcxGridDBColumn;
    dbDatosDocumento: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosTel_Oficina: TcxGridDBColumn;
    dbDatosTel_Residencia: TcxGridDBColumn;
    dbDatosTel_Celular: TcxGridDBColumn;
    dbDatosEstatus: TcxGridDBColumn;
    dbDatosApellidos: TcxGridDBColumn;
    procedure edbuscarExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
    Function  Buscar_Mascara(Tipo_Doc : Integer) : String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPacienteDom: TfrmDialogConsultaPacienteDom;
  adentrogrid, _buscar : Boolean;

implementation

uses DataModule, DatosClientesDomicilio, Main;

{$R *.dfm}


procedure TfrmDialogConsultaPacienteDom.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;
 sqlString := 'Select * from PtClienteDom Where Estatus='+#39+'A'+#39;

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND Documento like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Tel_Oficina like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND Tel_Residencia like '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND Tel_Celular like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' AND Nombres like '+#39+'%'+edbuscar.Text+'%'+#39;
     5 : sqlString := sqlString + ' AND Apellidos like '+#39+'%'+edbuscar.Text+'%'+#39;
     6 : sqlString := sqlString + ' AND CteDomID like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 If (Trim(edbuscar.Text) = EmptyStr) or (Length(Trim(edbuscar.Text)) < 5) then
 begin
      EtMensajeDlg('Debe escribir criterio de búsqueda más exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;
 sqlString := sqlString + ' Order By CteDomID ';
 frmMain.frmDom.qrClienteDomicilio.Close;
 frmMain.frmDom.qrClienteDomicilio.SQL.Text := sqlString;
 frmMain.frmDom.qrClienteDomicilio.Open;
end;

procedure TfrmDialogConsultaPacienteDom.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := True;
  _buscar := False;
end;

procedure TfrmDialogConsultaPacienteDom.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := False;
  _buscar := True;
end;

procedure TfrmDialogConsultaPacienteDom.edbuscarExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
end;

procedure TfrmDialogConsultaPacienteDom.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
//  BuscarData;
end;

procedure TfrmDialogConsultaPacienteDom.FormCreate(Sender: TObject);
begin
  inherited;
  dsDatos.DataSet := frmMain.frmDom.qrClienteDomicilio;
  dbDatos.DataController.KeyFieldNames:='CteDomID';
  edbuscarpor.ItemIndex := 0
end;

procedure TfrmDialogConsultaPacienteDom.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 13) and (AdentroGrid) then
    begin
      Close;
      ModalResult := mrOk;
    end;

  if (key = 13) and (_buscar) then
    begin
      If (AdentroGrid) then
        Begin
          Close;
          ModalResult := mrOk;
        end
      Else
        BuscarData;
    end;

  if (key = 27) then
    begin
      Close;
    end;

  if (key = vk_f1) then
    begin
      BtNuevo.Click;
    end;

  if (key = vk_f9) then
    begin
      Close;

      if (qrPacientes.RecordCount >0) then
        ModalResult := mrOk;
    end;
end;

procedure TfrmDialogConsultaPacienteDom.FormShow(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  frmMain.frmDom.qrClienteDomicilio.Close;
  edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaPacienteDom.Run;
Var
 qfind : TADOQuery;
 qfindciudad : TADOquery;
 ClienteFactura, strNombreCliente : string;
begin
  _buscar := True;
 AdentroGrid := false;
 showmodal;

 if ModalResult = mrOk then
 begin
          If (frmMain.frmDom.qrClienteDomicilio.RecordCount > 0) Then
          Begin

              If (frmMain.frmDom.qrClienteDomicilioEstatus.AsString = 'I') Then
                Raise exception.CreateFmt(' El Paciente: (' + frmMain.frmDom.qrClienteDomicilioCteDomID.AsString + ') ' + frmMain.frmDom.qrClienteDomicilioNombres.AsString + #13 +
                                          ' NO Puede Facturarse porque: '+ #13 + ' El Paciente Esta INACTIVO.!!! ' + #13 +
                                          ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
          End;
          frmMain.frmDom.qrClienteDomicilio.Edit;
          frmMain.frmDom.qrClienteDomicilioCteDomID.Value         := frmMain.frmDom.qrClienteDomicilioCteDomID.Value;
          frmMain.frmDom.EdClienteDom.Properties.ReadOnly         := True;
          frmMain.frmDom.EdClienteDom.Style.Color                 := ClAqua;
          frmMain.frmDom.qrClienteDomicilioTipo_Documento.Value   := frmMain.frmDom.qrClienteDomicilioTipo_documento.Value;
          frmMain.frmDom.edCedula.Properties.EditMask             := Buscar_Mascara(frmMain.frmDom.qrClienteDomicilioTipo_documento.Value);
          frmMain.frmDom.edCedula.Update;
          frmMain.frmDom.qrClienteDomicilioDocumento.Value        := frmMain.frmDom.qrClienteDomicilioDocumento.Value;
          frmMain.frmDom.qrClienteDomicilioNombres.Value          := frmMain.frmDom.qrClienteDomicilioNombres.Value;
          frmMain.frmDom.qrClienteDomicilioApellidos.Value        := frmMain.frmDom.qrClienteDomicilioApellidos.Value;
          frmMain.frmDom.qrClienteDomicilioSexo.Value             := frmMain.frmDom.qrClienteDomicilioSexo.Value;
          frmMain.frmDom.qrClienteDomicilioDireccion.Value        := frmMain.frmDom.qrClienteDomicilioDireccion.Value;
          frmMain.frmDom.qrClienteDomicilioFecha_Nacimiento.Value := frmMain.frmDom.qrClienteDomicilioFecha_Nacimiento.Value;
          frmMain.frmDom.qrClienteDomicilioClienteID.Value        := frmMain.frmDom.qrClienteDomicilioClienteID.Value;
          frmMain.frmDom.qrClienteDomicilioTel_Oficina.Value      := frmMain.frmDom.qrClienteDomicilioTel_Oficina.Value;
          frmMain.frmDom.qrClienteDomicilioTel_Residencia.Value   := frmMain.frmDom.qrClienteDomicilioTel_Residencia.Value;
          frmMain.frmDom.qrClienteDomicilioTel_Celular.Value      := frmMain.frmDom.qrClienteDomicilioTel_Celular.Value;
          frmMain.frmDom.qrClienteDomicilioEmail.Value            := frmMain.frmDom.qrClienteDomicilioEmail.Value;
          frmMain.frmDom.qrClienteDomicilioTipo_Cliente.Value     := frmMain.frmDom.qrClienteDomicilioTipo_Cliente.Value;
          If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(frmMain.frmDom,Copy(frmMain.frmDom.qrClienteDomicilioDocumento.AsString,1,3),Copy(frmMain.frmDom.qrClienteDomicilioDocumento.AsString,5,7),Copy(frmMain.frmDom.qrClienteDomicilioDocumento.AsString,13,1));
          If frmMain.frmDom.qrClienteDomicilioCteDomID.Value > 0 then
          begin
              With frmMain.frmDom.qrClienteDomDet, sql do
              begin
                Close;
                Clear;
                Text :='Select *  From PtClienteDomDetalle Where CteDomID = '+#39+ frmMain.frmDom.qrClienteDomicilioCteDomID.AsString+#39+' Order by Fecha Desc,Hora Desc';
                Open;
              end;
          end;
          frmMain.frmDom.qrClienteDomicilio.Post;
          Exit;
  end;
end;
Function TfrmDialogConsultaPacienteDom.Buscar_Mascara(Tipo_Doc : Integer) : String;
Var
 qMascara  : TAdoQuery;
begin
  qMascara := DM.NewQuery;
  qMascara.Close;
  qMascara.SQL.Text := ' SELECT * FROM PtDocumento (nolock) '+
                     ' WHERE TipoDocID = ' + IntToStr(Tipo_Doc) +
                     ' AND Estatus = ' + #39 + 'A' + #39;

  qMascara.Open;
  if (qMascara.RecordCount > 0) then
    result := qMascara.Fieldbyname('Mascara').AsString
  else
    result := EmptyStr;
  FreeAndNil(qMascara);
End;

end.

