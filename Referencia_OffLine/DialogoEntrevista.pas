unit DialogoEntrevista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, DB, ADODB, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxGraphics, cxMaskEdit, cxDropDownEdit;

type
  TfrmDlgEntrevista = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    dsDatos: TDataSource;
    dsDonacion: TDataSource;
    tbDonacion: TADOTable;
    dsPaciente: TDataSource;
    tbPacientes: TADOTable;
    lcDialogItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDialogItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDialogItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDialogItem4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDialogItem5: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    lcDialogItem6: TdxLayoutItem;
    lcDialogGroup4: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgEntrevista: TfrmDlgEntrevista;

implementation
uses DataModule;

{$R *.dfm}

procedure TfrmDlgEntrevista.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrDonaciones.Close;
  DM.qrDonaciones.Open;

  tbPacientes.Close;
  tbPacientes.Open;

end;

end.
