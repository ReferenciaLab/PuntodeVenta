unit DialogoTipoDonacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, DB, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  ADODB, cxCheckBox, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxImageComboBox;

type
  TfrmDlgDatosDonacion = class(TfrmDialogModule)
    dsDatos: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDialogItem1: TdxLayoutItem;
    tbPacientes: TADOTable;
    dsPaciente: TDataSource;
    lcDialogGroup3: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDialogItem2: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDialogItem3: TdxLayoutItem;
    tbDonacion: TADOTable;
    dsDonacion: TDataSource;
    cxDBComboBox1: TcxDBComboBox;
    lcDialogItem4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgDatosDonacion: TfrmDlgDatosDonacion;

implementation
uses DataModule;

{$R *.dfm}

procedure TfrmDlgDatosDonacion.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrDonaciones.Close;
  DM.qrDonaciones.Open;
  
  tbPacientes.Close;
  tbPacientes.Open;

end;

end.
