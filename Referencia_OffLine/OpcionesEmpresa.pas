unit OpcionesEmpresa;

interface
                
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, DB, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, dxLayoutControl, cxControls, JvExControls, JvEnterTab,
  cxMemo, cxDBEdit, cxMaskEdit, cxHyperLinkEdit, cxContainer, cxEdit,
  cxTextEdit, ADODB, RzTabs, StdCtrls, Mask, RzEdit, cxDropDownEdit,
  cxImageComboBox, cxColorComboBox, cxDBColorComboBox, ExtCtrls,
  cxButtonEdit, RzShellDialogs, cxGraphics, JvComponentBase, cxintl;

type
  TfrmOpcionesEmpresa = class(TfrmOpcionesModule)
    lcDatosItem1: TdxLayoutItem;
    pcParametros: TRzPageControl;
    TabSheet1: TRzTabSheet;
    lcEmpresa: TdxLayoutControl;
    lcEmpresaGroup_Root1: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    lcEmpresaGroup2: TdxLayoutGroup;
    TabSheet2: TRzTabSheet;
    lcOpciones: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    qrParametros: TADOQuery;
    qrParametrosColorConsulta: TIntegerField;
    qrParametrosColorAgregar: TIntegerField;
    qrParametrosColorEditar: TIntegerField;
    qrParametrosColorBorrar: TIntegerField;
    qrParametrosTituloEmpresa: TStringField;
    qrParametrosSubTituloEmpresa: TStringField;
    qrParametrosSerial: TStringField;
    qrParametrosInterface: TIntegerField;
    qrParametrosMenuFont: TStringField;
    qrParametrosFormsFont: TStringField;
    qrParametrosDireccion: TStringField;
    qrParametrosPais: TStringField;
    qrParametrosCiudad: TStringField;
    qrParametrosEstado: TStringField;
    qrParametrosZipCode: TStringField;
    qrParametrosDireccionWeb: TStringField;
    qrParametroseMail: TStringField;
    qrParametrosTelefono: TStringField;
    qrParametrosFax: TStringField;
    qrParametrosRNC: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    lcEmpresaItem1: TdxLayoutItem;
    cxDBHyperLinkEdit1: TcxDBHyperLinkEdit;
    lcEmpresaItem2: TdxLayoutItem;
    cxDBHyperLinkEdit2: TcxDBHyperLinkEdit;
    lcEmpresaItem3: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    lcEmpresaItem4: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcEmpresaItem5: TdxLayoutItem;
    lcEmpresaGroup1: TdxLayoutGroup;
    cxDBMaskEdit2: TcxDBMaskEdit;
    lcEmpresaItem6: TdxLayoutItem;
    cxDBMaskEdit3: TcxDBMaskEdit;
    lcEmpresaItem7: TdxLayoutItem;
    lcOpcionesGroup1: TdxLayoutGroup;
    lcOpcionesGroup2: TdxLayoutGroup;
    cbMenuFont: TcxDBComboBox;
    cbFormFont: TcxDBComboBox;
    lcOpcionesItem2: TdxLayoutItem;
    lcOpcionesItem3: TdxLayoutItem;
    ceConsulta: TRzColorEdit;
    lcOpcionesItem4: TdxLayoutItem;
    ceAgrega: TRzColorEdit;
    lcOpcionesItem5: TdxLayoutItem;
    ceModifica: TRzColorEdit;
    lcOpcionesItem6: TdxLayoutItem;
    ceBorra: TRzColorEdit;
    lcOpcionesItem7: TdxLayoutItem;
    qrParametrosRutaReportes: TStringField;
    rzFindFolder: TRzSelectFolderDialog;
    procedure qrParametrosAfterPost(DataSet: TDataSet);
    procedure qrParametrosAfterOpen(DataSet: TDataSet);
    procedure qrParametrosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesEmpresa: TfrmOpcionesEmpresa;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmOpcionesEmpresa.qrParametrosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ceConsulta.SelectedColor := qrParametrosColorConsulta.Value;
  ceAgrega.SelectedColor := qrParametrosColorAgregar.Value;
  ceModifica.SelectedColor := qrParametrosColorEditar.Value;
  ceBorra.SelectedColor := qrParametrosColorBorrar.Value;
end;

procedure TfrmOpcionesEmpresa.qrParametrosAfterPost(DataSet: TDataSet);
begin
  inherited;
  DM.qrParam.Close;
  DM.qrParam.Open;
  DM.SetCompanyOptions;
end;

procedure TfrmOpcionesEmpresa.qrParametrosBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrParametrosColorConsulta.Value := ceConsulta.SelectedColor;
  qrParametrosColorAgregar.Value := ceAgrega.SelectedColor;
  qrParametrosColorEditar.Value := ceModifica.SelectedColor;
  qrParametrosColorBorrar.Value:= ceBorra.SelectedColor;
end;

procedure TfrmOpcionesEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  cbMenuFont.Properties.Items.Assign(Screen.Fonts);
  cbFormFont.Properties.Items.Assign(Screen.Fonts);
  lcEmpresa.LookAndFeel := lcDatos.LookAndFeel;
  lcOpciones.LookAndFeel := lcDatos.LookAndFeel;
  pcParametros.BackgroundColor := lcDatos.LookAndFeel.GroupOptions.Color;
  pcParametros.Color := lcDatos.LookAndFeel.GroupOptions.Color;
  pcParametros.ActivePageIndex := 0;
end;

procedure TfrmOpcionesEmpresa.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  rzFindFolder.SelectedPathName := qrParametrosRutaReportes.Text;
  if rzFindFolder.Execute then
    qrParametrosRutaReportes.Text := rzFindFolder.SelectedFolder.PathName;
end;

end.
