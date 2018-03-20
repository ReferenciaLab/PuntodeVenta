unit DialogSysDataClientesBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, dxLayoutControl, StdCtrls, cxButtons, cxControls,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, DB, ADODB, QExport3, QExport3XML, QImport2Wizard, PymeConst,
  Menus, cxLookAndFeelPainters;

type
  TfrmDialogSysDataClientesBackup = class(TfrmDialogModule)
    qExportXML: TQExport3XML;
    ExportDataSet: TADODataSet;
    rgDataSet: TcxRadioGroup;
    lcDialogItem1: TdxLayoutItem;
    edFileName: TcxButtonEdit;
    lcDialogItem2: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    qImportWizard: TQImport2Wizard;
    OpenDialog: TOpenDialog;
    ExportDataSetEmpresaID: TStringField;
    ExportDataSetDepartamento: TStringField;
    ExportDataSetFiller1: TStringField;
    ExportDataSetEmpleadoID: TStringField;
    ExportDataSetNombre: TStringField;
    ExportDataSetEdad: TIntegerField;
    ExportDataSetSexo: TStringField;
    ExportDataSetSucursal: TStringField;
    ExportDataSetCargoCiudad: TStringField;
    ExportDataSetFiller2: TStringField;
    ExportDataSetClienteID: TStringField;
    ExportDataSetComboId: TStringField;
    procedure edFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edFileNamePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    IsImport : Boolean;
  public
    { Public declarations }
    procedure SetForImport;
  end;

var
  frmDialogSysDataClientesBackup: TfrmDialogSysDataClientesBackup;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDialogSysDataClientesBackup.edFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then begin
    edFileName.Text := OpenDialog.FileName;
  end;
end;

procedure TfrmDialogSysDataClientesBackup.edFileNamePropertiesChange(
  Sender: TObject);
begin
  inherited;
  btAceptar.Enabled := (edFileName.EditText <> '');
end;

procedure TfrmDialogSysDataClientesBackup.SetForImport;
begin
  Caption := SImportacionDeDatos;
  rgDataSet.Caption := SDatosAImportar;
  IsImport := True;
end;

end.
