unit DialogSysDataExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, dxLayoutControl, StdCtrls, cxButtons, cxControls,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, DB, ADODB, QExport3, QExport3XML, QImport2Wizard, PymeConst,
  Menus, cxLookAndFeelPainters, cxintl;

type
  TfrmDialogSysDataExport = class(TfrmDialogModule)
    qExportXML: TQExport3XML;
    ExportDataSet: TADODataSet;
    rgDataSet: TcxRadioGroup;
    lcDialogItem1: TdxLayoutItem;
    edFileName: TcxButtonEdit;
    lcDialogItem2: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    qImportWizard: TQImport2Wizard;
    OpenDialog: TOpenDialog;
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
  frmDialogSysDataExport: TfrmDialogSysDataExport;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDialogSysDataExport.edFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if IsImport then begin
    if OpenDialog.Execute then begin
      edFileName.Text := OpenDialog.FileName;
    end;
  end else begin
    if SaveDialog.Execute then begin
      edFileName.Text := SaveDialog.FileName;
    end;
  end;
end;

procedure TfrmDialogSysDataExport.edFileNamePropertiesChange(
  Sender: TObject);
begin
  inherited;
  btAceptar.Enabled := (edFileName.EditText <> '');
end;

procedure TfrmDialogSysDataExport.SetForImport;
begin
  Caption := SImportacionDeDatos;
  rgDataSet.Caption := SDatosAImportar;
  IsImport := True;
end;

end.
