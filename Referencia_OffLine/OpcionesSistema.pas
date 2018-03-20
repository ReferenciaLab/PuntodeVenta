unit OpcionesSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, JvComponent, JvFormPlacement, DB,
  dxLayoutControl, cxControls, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ADODB, cxGroupBox, cxRadioGroup, cxDropDownEdit,
  cxImageComboBox, Menus, StdActns, ActnList, JvExControls, JvEnterTab;

type
  TfrmOpcionesSistema = class(TfrmOpcionesModule)
    qrParametros: TADOQuery;
    qrParametrosColorConsulta: TIntegerField;
    qrParametrosColorAgregar: TIntegerField;
    qrParametrosColorEditar: TIntegerField;
    qrParametrosColorBorrar: TIntegerField;
    qrParametrosTituloEmpresa: TStringField;
    qrParametrosSubTituloEmpresa: TStringField;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    edConsulta: TcxDBButtonEdit;
    lcDatosItem1: TdxLayoutItem;
    edAgregar: TcxDBButtonEdit;
    lcDatosItem2: TdxLayoutItem;
    edModificar: TcxDBButtonEdit;
    lcDatosItem3: TdxLayoutItem;
    edBorrar: TcxDBButtonEdit;
    lcDatosItem4: TdxLayoutItem;
    edTitulo: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    ColorDlg: TColorDialog;
    qrParametrosSerial: TStringField;
    lcDatosGroup3: TdxLayoutGroup;
    qrParametrosInterface: TIntegerField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem7: TdxLayoutItem;
    cbMenuFont: TcxDBComboBox;
    lcDatosItem8: TdxLayoutItem;
    cbFormFont: TcxDBComboBox;
    lcDatosItem9: TdxLayoutItem;
    qrParametrosMenuFont: TStringField;
    qrParametrosFormsFont: TStringField;
    procedure qrParametrosColorConsultaChange(Sender: TField);
    procedure qrParametrosAfterOpen(DataSet: TDataSet);
    procedure edConsultaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure qrParametrosAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetEditColors;
  public
    { Public declarations }
  end;

var
  frmOpcionesSistema: TfrmOpcionesSistema;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmOpcionesSistema.qrParametrosColorConsultaChange(
  Sender: TField);
begin
  inherited;
  SetEditColors;
end;

procedure TfrmOpcionesSistema.SetEditColors;
begin
  edConsulta.Style.Font.Color := qrParametrosColorConsulta.Value;
  edConsulta.Style.Color      := qrParametrosColorConsulta.Value;
  edAgregar.Style.Font.Color := qrParametrosColorAgregar.Value;
  edAgregar.Style.Color      := qrParametrosColorAgregar.Value;
  edModificar.Style.Font.Color := qrParametrosColorEditar.Value;
  edModificar.Style.Color      := qrParametrosColorEditar.Value;
  edBorrar.Style.Font.Color := qrParametrosColorBorrar.Value;
  edBorrar.Style.Color      := qrParametrosColorBorrar.Value;
end;

procedure TfrmOpcionesSistema.qrParametrosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetEditColors;
end;

procedure TfrmOpcionesSistema.edConsultaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if dsDatos.DataSet.State = dsBrowse then Exit;
  ColorDlg.Color := ( Sender as TcxDbButtonEdit).Style.Color;
  if ColorDlg.Execute then begin
    dsDatos.DataSet.FieldByName( ( Sender as TcxDbButtonEdit).DataBinding.DataField ).Value := ColorDlg.Color;
    SetEditColors;
  end;
end;

procedure TfrmOpcionesSistema.cxButton1Click(Sender: TObject);
begin
  inherited;
  ShowMessage(DM.HashString(qrParametrosTituloEmpresa.Text));
end;

procedure TfrmOpcionesSistema.qrParametrosAfterPost(DataSet: TDataSet);
begin
  inherited;
  if ( DM.IsActivated ) and ( qrParametrosSerial.Text <> DM.HashString(qrParametrosTituloEmpresa.Text) ) then begin
    DM.Warning('Este cambio ha desactivado la aplicación.');//, mtWarning, [mbOK], 0);
    Close;
    frmMain.Close;
  end;
end;

procedure TfrmOpcionesSistema.FormCreate(Sender: TObject);
begin
  inherited;
  cbFormFont.Properties.Items.Assign(Screen.Fonts);
  cbMenuFont.Properties.Items.Assign(Screen.Fonts);
  edTitulo.Enabled := DM.IsAdmin;
end;

end.
