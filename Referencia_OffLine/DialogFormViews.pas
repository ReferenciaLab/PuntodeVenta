unit DialogFormViews;

interface                                  

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxLayoutControl, StdCtrls, cxButtons, DatosModule, Grids, DBGrids,
  JvStringHolder, Menus, cxCheckBox, PymeConst, ABSMain;

type
  TfrmDlgFormViews = class(TfrmDialogModule)
    tvViews: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDialogItem3: TdxLayoutItem;
    dsVistas: TDataSource;
    tvViewsViewName: TcxGridDBColumn;
    strView: TJvStrHolder;
    cxButton1: TcxButton;
    lcDialogItem4: TdxLayoutItem;
    pmSetDefault: TPopupMenu;
    miSetAsDefault: TMenuItem;
    miRestoreDefault: TMenuItem;
    cmdDelDefault: TADOCommand;
    cmdSetDefault: TADOCommand;
    qrDefaultView: TADOQuery;
    tvViewsDBColumn1: TcxGridDBColumn;
    qrVistas: TABSQuery;
    qrVistasTipo: TIntegerField;
    qrVistasFormName: TStringField;
    qrVistasViewName: TStringField;
    qrVistasSavedView: TMemoField;
    qrVistasDefault: TBooleanField;
    procedure qrVistas1NewRecord(DataSet: TDataSet);
    procedure qrVistas1BeforePost(DataSet: TDataSet);
    procedure btAceptarClick(Sender: TObject);
    procedure qrVistas1BeforeDelete(DataSet: TDataSet);
    procedure qrVistas1ViewNameValidate(Sender: TField);
    procedure pmSetDefaultPopup(Sender: TObject);
    procedure miRestoreDefaultClick(Sender: TObject);
    procedure miSetAsDefaultClick(Sender: TObject);
    procedure qrVistas1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    CurForm : String;
    CallGrid : TCxGrid;
    CallLc   : TdxLayoutControl;
    CurTipo : Integer;
    CurRol : Integer;
    IsDeveloper : Boolean;
  public
    { Public declarations }
    procedure ManageFormDeveloper( FormName : String ; Tipo : Integer ; _CurRol : String);
    procedure ManageViews( FormName : String; FormCaption : String; CallerGrid : TcxGrid );
    procedure ManageLayOut( FormName : String; FormCaption : String; CallerLc : TdxLayoutControl );
  end;

var
  frmDlgFormViews: TfrmDlgFormViews;

implementation

uses DataModule, DbTables;

{$R *.dfm}

{ TfrmDlgFormViews }

procedure TfrmDlgFormViews.ManageViews(FormName, FormCaption: String;
  CallerGrid: TcxGrid);
begin
  Caption := SVistas + FormCaption;
  CurForm := FormName;
  CurTipo := 1;
  CallGrid := CallerGrid;
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := CurRol;
  qrDefaultView.Parameters.ParamByName('pForm').Value := CurForm;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := CurTipo;
  qrDefaultView.Open;
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := CurForm;
  qrVistas.ParamByName('pTipo').Value := CurTipo;
  qrVistas.Open;
  ShowModal;
end;

procedure TfrmDlgFormViews.qrVistas1NewRecord(DataSet: TDataSet);
begin
  inherited;
  qrVistasFormName.Text := CurForm;
  qrVistasTipo.Value := CurTipo;
end;

procedure TfrmDlgFormViews.qrVistas1BeforePost(DataSet: TDataSet);
var
  FileName : String;
begin
  inherited;
  FileName := ExtractFilePath( ParamStr(0) ) + CurForm + '_' + qrVistasViewName.Value + '.pvw';
  if FileExists( FileName ) then
     DeleteFile( FileName );
  if CurTipo = 1 then
    CallGrid.ActiveView.StoreToIniFile(FileName,True,[gsoUseFilter,gsoUseSummary])
  else
    CallLc.SaveToIniFile( FileName );
  strView.Strings.Clear;
  strView.Strings.LoadFromFile( FileName );
  qrVistasSavedView.Value := strView.Strings.Text;
  if FileExists( CurForm + '_' + qrVistasViewName.Value + '.pvw' ) then
    DeleteFile( CurForm + '_' + qrVistasViewName.Value + '.pvw' );
end;

procedure TfrmDlgFormViews.btAceptarClick(Sender: TObject);
var
  FileName : String;
begin
  inherited;
  FileName := ExtractFilePath( ParamStr(0) ) + CurForm + '_' + qrVistasViewName.Value + '.pvw';
  if qrVistasViewName.Text <> '' then begin
    try
      if FileExists( FileName ) then
          DeleteFile( FileName );
      strView.Strings.Clear;
      strView.Strings.Text := qrVistasSavedView.Value;
      strView.Strings.SaveToFile( FileName );
      if CurTipo = 1 then
        CallGrid.ActiveView.RestoreFromIniFile(FileName,False,False,[gsoUseFilter,gsoUseSummary])
      else
        CallLc.LoadFromIniFile(FileName);
      if FileExists( FileName ) then
        DeleteFile( FileName );
    except
      DM.Error(SErrorEnProcesoIn);//, mtError, [mbOK], 0);
      raise;
    end;
  end;
end;

procedure TfrmDlgFormViews.qrVistas1BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if qrVistasViewName.Text <> '' then begin
    if FileExists(CurForm + '_' + qrVistasViewName.Text + '.pvw') then
      DeleteFile(CurForm + '_' + qrVistasViewName.Text + '.pvw');
  end;
end;

procedure TfrmDlgFormViews.qrVistas1ViewNameValidate(Sender: TField);
begin
  inherited;
  if qrVistasViewName.Text = '' then begin
    DM.Warning(SDebeEspecificarUn3);//, mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmDlgFormViews.pmSetDefaultPopup(Sender: TObject);
begin
  inherited;
  miSetAsDefault.Enabled := ( qrVistasViewName.Text <> '' );
end;

procedure TfrmDlgFormViews.miRestoreDefaultClick(Sender: TObject);
begin
  inherited;
  cmdDelDefault.Parameters.ParamByName('pUser').Value := CurRol;
  cmdDelDefault.Parameters.ParamByName('pForm').Value := CurForm;
  cmdDelDefault.Parameters.ParamByName('pTipo').Value := CurTipo;
  cmdDelDefault.Execute;

  qrDefaultView.Close;
  qrDefaultView.Open;

  if (not IsDeveloper) then begin
    Close;
    ( Owner as TForm ).Close;
  end else
    tvViews.DataController.UpdateItems(False);

end;

procedure TfrmDlgFormViews.miSetAsDefaultClick(Sender: TObject);
begin
  inherited;
  cmdDelDefault.Parameters.ParamByName('pUser').Value := CurRol;
  cmdDelDefault.Parameters.ParamByName('pForm').Value := CurForm;
  cmdDelDefault.Parameters.ParamByName('pTipo').Value := CurTipo;
  cmdDelDefault.Execute;

  cmdSetDefault.Parameters.ParamByName('pUser').Value := CurRol;
  cmdSetDefault.Parameters.ParamByName('pForm').Value := CurForm;
  cmdSetDefault.Parameters.ParamByName('pView').Value := qrVistasViewName.Text;
  cmdSetDefault.Parameters.ParamByName('pTipo').Value := CurTipo;
  cmdSetDefault.Execute;


  qrDefaultView.Close;
  qrDefaultView.Open;
  tvViews.DataController.UpdateItems(False);

end;

procedure TfrmDlgFormViews.qrVistas1CalcFields(DataSet: TDataSet);
begin
  inherited;
  qrVistasDefault.Value := ( qrVistasViewName.Text = qrDefaultView.FieldByName('ViewName').Text );
end;

procedure TfrmDlgFormViews.ManageLayOut(FormName, FormCaption: String;
  CallerLc: TdxLayoutControl);
begin
  Caption := SDisenos + FormCaption;
  CurForm := FormName;
  CurTipo := 2;
  miSetAsDefault.Caption := SUsarEsteDiseno;
  CallLc := CallerLc;
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := CurRol;
  qrDefaultView.Parameters.ParamByName('pForm').Value := CurForm;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := CurTipo;
  qrDefaultView.Open;
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := CurForm;
  qrVistas.ParamByName('pTipo').Value := CurTipo;
  qrVistas.Open;
  ShowModal;
end;

procedure TfrmDlgFormViews.ManageFormDeveloper(FormName: String;
  Tipo: Integer; _CurRol : String);
var
  mi: TMenuItem;
begin
  IsDeveloper := True;
  CurTipo := Tipo;
  CurRol := StrToInt(_CurRol);
  if CurTipo = 1 then begin
    Caption := SVistas + FormName;
  end else begin
    Caption := SDisenos + FormName;
  end;
  CurForm := FormName;
  miSetAsDefault.Caption := SUsarEsteDiseno;
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := CurRol;
  qrDefaultView.Parameters.ParamByName('pForm').Value := CurForm;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := CurTipo;
  qrDefaultView.Open;
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := CurForm;
  qrVistas.ParamByName('pTipo').Value := CurTipo;
  qrVistas.Open;
  //
  tvViews.OptionsData.Deleting := False;
  tvViews.OptionsData.Inserting := False;
  tvViews.OptionsData.Appending := False;
  liBtAceptar.Visible := False;
  tvViews.OptionsView.NewItemRow := False;
  tvViews.OptionsSelection.MultiSelect := True;
  //
  ShowModal;
end;

procedure TfrmDlgFormViews.FormCreate(Sender: TObject);
begin
  inherited;
  CurRol := DM.CurRol;
end;

end.
