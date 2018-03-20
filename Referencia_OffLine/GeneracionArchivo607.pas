unit GeneracionArchivo607;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ppStrtch,
  ppRichTx, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, DB, ppDB, ppDBPipe, JvMemoryDataset, dlgMensajes,
  cxDBExtLookupComboBox, ppParameter, DateUtils;

type
  TfrmGeneracionArchivo607 = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl3Group14: TdxLayoutGroup;
    GrupoParametros: TdxLayoutGroup;
    GroupSaldo: TdxLayoutGroup;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    GrupoToma: TdxLayoutGroup;
    FechaIni: TcxDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    FechaFin: TcxDateEdit;
    dxLayoutControl3Item33: TdxLayoutItem;
    RgImpresion: TcxRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    ppReporte607: TppReport;
    ppDetailBand21: TppDetailBand;
    ppDBText223: TppDBText;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
    JvReporte: TJvMemoryData;
    dsReporteJ: TDataSource;
    ppReporteArc607: TppDBPipeline;
    ppParameterList1: TppParameterList;
    JvReporteDetalle: TStringField;
    procedure FechaIniExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmGeneracionArchivo607: TfrmGeneracionArchivo607;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmGeneracionArchivo607.FechaIniExit(Sender: TObject);
begin
  if Length(FechaIni.EditValue)> 0 then
  begin
    FechaFin.Date := EndOfTheMonth(FechaIni.Date);
  end;
end;

procedure TfrmGeneracionArchivo607.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up)  then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmGeneracionArchivo607.FormShow(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  FechaIni.Date := DM.Buscar_Fecha_Actual;
  FechaFin.Date := DM.Buscar_Fecha_Actual;
end;

procedure TfrmGeneracionArchivo607.Run;
Var Muestrano_Ant,CodSucursal  : String;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
 If MessageDlg('Desea Generar Arhivo 607 ?', mtWarning, [mbYes,mbNo], 0) = mrYes then
 begin
    Application.ProcessMessages;
    If (FechaIni.Text=EmptyStr) then
    begin
      EtMensajeDlg('Fecha Inicial No puede estar en blanco.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
      Exit;
    end;
    If (FechaFin.Text=EmptyStr) then
    begin
      EtMensajeDlg('Fecha Final No puede estar en blanco.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
      Exit;
    end;
    Seleccion :=  ' select Rtrim(detalle) As Detalle from PtReporte607 '+
                  ' where Ano='+#39+IntToStr(DateUtils.YearOf(FechaIni.Date))+#39+
                  ' and Mes='+#39+FormatFloat('00', DateUtils.MonthOf(FechaIni.Date))+#39+
                  ' Union All '+
                  ' Select RTrim(Detalle) As Detalle from PtReporte607Detalle '+
                  ' Where Tipo='+#39+'4'+#39+' and Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+
                  ' Union All '+
                  ' Select RTrim(Detalle) As Detalle from PtReporte607Detalle '+
                  ' Where Tipo<>'+#39+'4'+#39+' and Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
    With qrReporte, sql do
    begin
      Close;
      SQL.Text := Seleccion;
      Open;
      if IsEmpty then
      begin
          EtMensajeDlg('Esta búsqueda NO arrojó datos.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          Exit;
      end;
      First;
      dsReporte.Enabled := False;
      if not jvReporte.Active then
         jvReporte.Active := true;
      jvReporte.EmptyTable;
      while not eof do
      begin
          jvReporte.Append;
          jvReporteDetalle.AsString          := fieldbyname('Detalle').AsString;
        Next;
      end;
      jvReporte.First;
      dsReporte.Enabled := True;
   end;
   If (jvReporte.RecordCount > 0) Then
   Begin
        If (RgImpresion.ItemIndex = 0) Then
           ppReporte607.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppReporte607.DeviceType := dtPrinter;
        ppReporte607.Print;
   end;
  end;
 end;
 end;
end.
