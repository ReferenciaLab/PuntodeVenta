unit DatosDoctor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxCurrencyEdit, cxContainer, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxMemo, cxCalendar, cxCheckBox, cxintl;

type
  TfrmDatosDoctor = class(TfrmDatosModule)
    qrDoctor: TADOQuery;
    tvDatosDoctorID: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    eddoctor: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem9: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem11: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem12: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem10: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem13: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    lcDatosItem14: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    lcDatosGroup5: TdxLayoutGroup;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    BtCrearInternet: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    BtLookInternet: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrDoctorDIRECCION: TStringField;
    qrDoctorDIRECCIONCONSULTA2: TStringField;
    qrDoctorDIRECCIONCONSULTA1: TStringField;
    qrDoctorRECID: TLargeintField;
    procedure BtCrearInternetClick(Sender: TObject);
    procedure BtLookInternetClick(Sender: TObject);
    procedure qrDoctorBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrDoctorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
     Procedure Actualizar_Usuario(usuario: string; cedula: string; cliente: string);

     Procedure Insertar_Usuario(usuario: string; clave: string; name: string;
                                cedula: string; cliente: string; tipo: string;
                                actual: string);

     Function Buscar_User_Internet(Cliente : String) : Boolean;
    { Public declarations }
  end;

var
  frmDatosDoctor: TfrmDatosDoctor;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosDoctor.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrCiudad.Close;
  DM.qrCiudad.Open;

  DM.qrespecialidad.Close;
  DM.qrespecialidad.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  eddoctor.Properties.ReadOnly := DM.qrParametroAutoNumerarDoctor.Value;
end;

procedure TfrmDatosDoctor.qrDoctorBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrDoctor.State = dsInsert) Or
     (qrDoctor.State = dsEdit) Then
    If (qrDoctorDOCTORID.IsNull) Or
       (qrDoctorDOCTORID.Value = '')Then
      AutoKeyField := 'DoctorID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrDoctor.State = dsInsert) and (DM.qrParametroAutoNumerarDoctor.Value) then
  begin
   qrDoctorDOCTORID.Value := formatfloat('0000', DM.qrParametroSecuenciaDoctor.asfloat);

   DM.qrParametro.edit;
   DM.qrParametroSecuenciaDoctor.Value := DM.qrParametroSecuenciaDoctor.Value + 1;
   DM.qrParametro.Post;
  end;

  qrDoctorCODIGOAXAPTA.Value := qrDoctorDOCTORID.Value;
  qrDoctorUsuarioInternet.Value := qrDoctorDOCTORID.Value;  
  qrDoctorCodigoResultado.Value := qrDoctorCodigoWeb.Value;

  If ( qrDoctorCodigoWeb.IsNull ) Or
     ( qrDoctorCodigoWeb.Value = '' ) Then
    qrDoctorCodigoWeb.Value := qrDoctorCodigoWeb.Value;
{
  If ( qrDoctorCodigoWeb.Value <> '' ) Then
    If Buscar_User_Internet(qrDoctorDoctorID.Value) Then
      Actualizar_Usuario(qrDoctorDoctorID.Value, qrDoctorCodigoWeb.Value, qrDoctorDoctorID.Value)
    Else
      Insertar_Usuario(qrDoctorDoctorID.Value, RightStr(qrDoctorDoctorID.Value, 3),
                       qrDoctorNombre.Value, qrDoctorCodigoWeb.Value,
                       qrDoctorDoctorID.Value, 'D', 'N');
}
end;

procedure TfrmDatosDoctor.qrDoctorNewRecord(DataSet: TDataSet);
Var RecId: Integer;
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  RecId := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrDoctorRECID.Value := RecId;
  qrDoctorDATAAREAID.Value := DM.CurEmpresa;

  qrDoctorComision.Value := 0;
  qrDoctorResultadoDoctor.Value := 0;
  qrDoctorPublicarInternet.Value := 0;

  qrDoctorDoctorID.Value := formatfloat('0000',DM.qrParametroSecuenciaDoctor.asfloat);
  qrDoctorCodigoResultado.Value := formatfloat('0000',DM.qrParametroSecuenciaDoctor.asfloat);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmDatosDoctor.Actualizar_Usuario(usuario: string; cedula: string; cliente: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' UPDATE PTUsuariosInternet SET '+
                     ' UsuarioInternet = :usr, '+
                     ' Identificacion = :idn, '+
                     ' ClienteId = :clt, '+
                     ' Actualizado = :act '+
                     ' WHERE ClienteId = ' + #39 + Cliente + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND Tipo = ' + #39 + 'D' + #39;
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := cedula;
 qinsert.Parameters[2].Value := cliente;
 qinsert.Parameters[3].Value := 'N';
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;

//Insertando el Usuario de Internet Creado.
procedure TfrmDatosDoctor.Insertar_Usuario(usuario: string; clave: string; name: string; cedula: string;
                                           cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                     ' ClienteId, Tipo, Actualizado, DataAreaId, RecId) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8)';
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := clave;
 qinsert.Parameters[2].Value := name;
 qinsert.Parameters[3].Value := cedula;
 qinsert.Parameters[4].Value := cliente;
 qinsert.Parameters[5].Value := tipo;
 qinsert.Parameters[6].Value := 'N';
 qinsert.Parameters[7].Value := qrDoctorDATAAREAID.Value;
 qinsert.Parameters[8].Value := qrDoctorRECID.Value;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


//Validando la Existencia del Usuario Creado.
Function TfrmDatosDoctor.Buscar_User_Internet(Cliente : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
                    ' WHERE ClienteId = ' + #39 + Cliente + #39 +
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                    ' AND Tipo = ' + #39 + 'D' + #39;
  qfind.Open;

  If (qfind.RecordCount > 0) then
    Result := True
  Else
    Result := False;

  FreeAndNil(qfind);
end;


procedure TfrmDatosDoctor.BtCrearInternetClick(Sender: TObject);
begin
  inherited;
  If ( qrDoctorCodigoWeb.Value <> '' ) Then
    If Buscar_User_Internet(qrDoctorDoctorID.Value) Then
      Actualizar_Usuario(qrDoctorDoctorID.Value, qrDoctorCodigoWeb.Value, qrDoctorDoctorID.Value)
    Else
   if Not((Trim(qrDoctorDoctorID.Value)=EmptyStr)      Or (Trim(qrDoctorDoctorID.Value)=EmptyStr) Or
          (Trim(qrDoctorNombre.Value)=EmptyStr) Or (Trim(qrDoctorCodigoWeb.Value)=EmptyStr) Or
          (Trim(qrDoctorDoctorID.Value)=EmptyStr))then
   begin
      Insertar_Usuario(qrDoctorDoctorID.Value, RightStr(qrDoctorDoctorID.Value, 3),
                       qrDoctorNombre.Value, qrDoctorCodigoWeb.Value,
                       qrDoctorDoctorID.Value, 'D', 'N');
   end;
end;

procedure TfrmDatosDoctor.BtLookInternetClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8029, qrDoctorDoctorID.Value);
end;

end.
