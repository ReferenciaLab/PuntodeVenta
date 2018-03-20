unit DialogFormViewRol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxContainer, cxListBox, dxLayoutControl, StdCtrls,
  cxButtons, cxControls, DB, ADODB, Menus, cxLookAndFeelPainters;

type
  TfrmDialogFormViewRol = class(TfrmDialogModule)
    lbNo: TcxListBox;
    lcDialogItem1: TdxLayoutItem;
    lbSi: TcxListBox;
    lcDialogItem2: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    btAdd: TcxButton;
    lcDialogItem3: TdxLayoutItem;
    btDel: TcxButton;
    lcDialogItem4: TdxLayoutItem;
    qrRoles: TADOQuery;
    qrFormRol: TADOQuery;
    qrRolesRolID: TSmallintField;
    qrRolesDescripcion: TStringField;
    qrRolesAdministrador: TBooleanField;
    qrRolesDesarrollador: TBooleanField;
    cmdDelDefault: TADOCommand;
    cmdSetDefault: TADOCommand;
    procedure btAddClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
  private
    { Private declarations }
    CurForm : String;
    CurView : String;
    CurTipo : Integer;
    Changed : Boolean;
    procedure ProcesaCambios;
  public
    { Public declarations }
    procedure ShowForm( FormName : String ; ViewName : String ; Tipo : Integer );
  end;

var
  frmDialogFormViewRol: TfrmDialogFormViewRol;

implementation

uses DataModule;

{$R *.dfm}

{ TfrmDialogFormViewRol }

procedure TfrmDialogFormViewRol.ShowForm(FormName: String ; ViewName : String ; Tipo : Integer);
begin
  CurForm := FormName;
  CurView := ViewName;
  CurTipo := Tipo;
  lbSi.Items.Clear;
  lbNo.Items.Clear;
  qrRoles.Close;
  qrRoles.Open;
  while not qrRoles.Eof do begin
    qrFormRol.Close;
    qrFormRol.Parameters.ParamByName('pForm').Value := FormName;
    qrFormRol.Parameters.ParamByName('pView').Value := ViewName;
    qrFormRol.Parameters.ParamByName('pTipo').Value := Tipo;
    qrFormRol.Parameters.ParamByName('pRol').Value := qrRolesRolId.Value;
    qrFormRol.Open;
    if qrFormRol.IsEmpty then
      lbNo.Items.Add(qrRolesDescripcion.Text)
    else
      lbSi.Items.Add(qrRolesDescripcion.Text);
    qrRoles.Next;
  end;    // while
  Changed := False;
  ShowModal;
  if (ModalResult = mrOk) and (Changed) then ProcesaCambios;
end;

procedure TfrmDialogFormViewRol.btAddClick(Sender: TObject);
begin
  inherited;
  Changed := True;
  if lbNo.ItemIndex <> -1 then begin
    lbSi.Items.Add(lbNo.Items[lbNo.ItemIndex]);
    lbNo.DeleteSelected;
  end;
end;

procedure TfrmDialogFormViewRol.btDelClick(Sender: TObject);
begin
  inherited;
  Changed := True;
  if lbSi.ItemIndex <> -1 then begin
    lbNo.Items.Add(lbSi.Items[lbSi.ItemIndex]);
    lbSi.DeleteSelected;
  end;
end;

procedure TfrmDialogFormViewRol.ProcesaCambios;
var
  I: Integer;
begin
  //
  for I := 0 to lbSi.Items.Count - 1 do begin    // Iterate
    qrRoles.Locate('Descripcion', lbSi.Items[i],[]);
    cmdDelDefault.Parameters.ParamByName('pUser').Value := qrRolesRolID.Value;
    cmdDelDefault.Parameters.ParamByName('pForm').Value := CurForm;
    cmdDelDefault.Parameters.ParamByName('pTipo').Value := CurTipo;
    cmdDelDefault.Execute;
    //
    cmdSetDefault.Parameters.ParamByName('pUser').Value := qrRolesRolID.Value;
    cmdSetDefault.Parameters.ParamByName('pForm').Value := CurForm;
    cmdSetDefault.Parameters.ParamByName('pView').Value := CurView;
    cmdSetDefault.Parameters.ParamByName('pTipo').Value := CurTipo;
    cmdSetDefault.Execute;
  end;    // for
end;

end.
