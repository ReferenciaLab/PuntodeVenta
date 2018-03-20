unit DialogFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB , AdoDB, DialogModule, cxLookAndFeelPainters,
  cxFilterControl, cxDBFilterControl, dxLayoutControl, StdCtrls, cxButtons,
  cxControls;

type
  TfrmDialogFilter = class(TfrmDialogModule)
    dbFilterControl: TcxDBFilterControl;
    lcDialogItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetFilterCondicion( DataSet : TDataSet ) : String;
  end;

var
  frmDialogFilter: TfrmDialogFilter;

implementation

uses DataModule;

{$R *.dfm}

function TfrmDialogFilter.GetFilterCondicion(DataSet: TDataSet): String;
begin
  dbFilterControl.DataSet := DataSet;
  ShowModal;
  if ModalResult = mrOk  then begin
    Result := dbFilterControl.FilterText;
    ShowMessage(Result);
  end else begin
    Result := '';
  end;
end;

end.
