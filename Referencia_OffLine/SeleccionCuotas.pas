unit SeleccionCuotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB;

type
  TfrmSeleccionCuotas = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    lcDialogGroup4: TdxLayoutGroup;
    bttodas: TcxButton;
    lcDialogItem1: TdxLayoutItem;
    btpagar: TcxButton;
    lcDialogItem2: TdxLayoutItem;
    btabonar: TcxButton;
    lcDialogItem3: TdxLayoutItem;
    qrCoopPrestamoLineas: TADOQuery;
    qrCoopPrestamoLineasPrestamoNo: TIntegerField;
    qrCoopPrestamoLineasCuotaNo: TIntegerField;
    qrCoopPrestamoLineasFechaVencimiento: TDateTimeField;
    qrCoopPrestamoLineasCapital: TBCDField;
    qrCoopPrestamoLineasInteres: TBCDField;
    qrCoopPrestamoLineasCapitalPagado: TBCDField;
    qrCoopPrestamoLineasInteresPagado: TBCDField;
    qrCoopPrestamoLineasMoraPagada: TBCDField;
    qrCoopPrestamoLineasEstatus: TBooleanField;
    qrCoopPrestamoLineasMoraBloqueada: TBooleanField;
    qrCoopPrestamoLineasTotalCuota: TCurrencyField;
    qrCoopPrestamoLineasMora: TCurrencyField;
    qrCoopPrestamoLineasPendiente: TCurrencyField;
    dsDatos: TDataSource;
    qrCoopPagoPrestamoLineas: TADOQuery;
    qrCoopPagoPrestamoLineasSecuencia: TIntegerField;
    qrCoopPagoPrestamoLineasPrestamoNo: TIntegerField;
    qrCoopPagoPrestamoLineasCuotaNo: TIntegerField;
    qrCoopPagoPrestamoLineasFecha: TDateTimeField;
    qrCoopPagoPrestamoLineasCapitalPagado: TBCDField;
    qrCoopPagoPrestamoLineasInteresPagado: TBCDField;
    qrCoopPagoPrestamoLineasMoraPagada: TBCDField;
    qrCoopPagoPrestamoLineasTotalPagado: TBCDField;
    dsDatotosLineas: TDataSource;
    lcDialogItem7: TdxLayoutItem;
    grSeleccionadas: TcxGrid;
    tvDatosLineas: TcxGridDBTableView;
    tvDatosLineasPrestamoNo: TcxGridDBColumn;
    tvDatosLineasCuotaNo: TcxGridDBColumn;
    tvDatosLineasFecha: TcxGridDBColumn;
    tvDatosLineasCapitalPagado: TcxGridDBColumn;
    tvDatosLineasInteresPagado: TcxGridDBColumn;
    tvDatosLineasMoraPagada: TcxGridDBColumn;
    tvDatosLineasTotalPagado: TcxGridDBColumn;
    lvDatosLineas: TcxGridLevel;
    lcDialogItem6: TdxLayoutItem;
    grDisponible: TcxGrid;
    tvConsulta: TcxGridDBTableView;
    tvConsultaCuotaNo: TcxGridDBColumn;
    tvConsultaFechaVencimiento: TcxGridDBColumn;
    tvConsultaCapital: TcxGridDBColumn;
    tvConsultaInteres: TcxGridDBColumn;
    tvConsultaMora: TcxGridDBColumn;
    tvConsultaMoraBloqueada: TcxGridDBColumn;
    tvConsultaTotalCuota: TcxGridDBColumn;
    tvConsultaCapitalPagado: TcxGridDBColumn;
    tvConsultaInteresPagado: TcxGridDBColumn;
    tvConsultaPendiente: TcxGridDBColumn;
    tvConsultaEstatus: TcxGridDBColumn;
    lvConsulta: TcxGridLevel;
    tvConsultaPrestamoNo: TcxGridDBColumn;
    qrCoopPagoPrestamoLineasInteresAbono: TBCDField;
    procedure btabonarClick(Sender: TObject);
    procedure bttodasClick(Sender: TObject);
    procedure btpagarClick(Sender: TObject);
    procedure qrCoopPrestamoLineasCalcFields(DataSet: TDataSet);
    procedure AbonoCuota;
    procedure AbonoCapital;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Run(_socio,_secuencia : String);
  end;

var
  frmSeleccionCuotas: TfrmSeleccionCuotas;
  Secuencia : Integer;
  Socio     : String;
  Mora,Capital,Interes : Double;

implementation
 uses DataModule,Main;
{$R *.dfm}

procedure TfrmSeleccionCuotas.AbonoCapital;
Var
 QCuotas : TADOQuery;
begin
 QCuotas := DM.NewQuery;

 QCuotas.Close;
 QCuotas.SQL.Text := 'Select l.* from CoopPrestamo p,CoopPrestamoLineas l '+
                     ' where p.prestamono = l.prestamono '+
                     '   and p.socioid =  '+ #39 + Socio + #39 +
                     '   and l.estatus = 0 ' +
                     ' Order by l.PrestamoNo Desc,l.CuotaNo Desc';
 QCuotas.Open;
 QCuotas.First;

 while (Dm.ValorAbonar > 0) and (not QCuotas.Eof)  do begin


   Capital := QCuotas.FieldByName('Capital').Value - QCuotas.FieldByName('CapitalPagado').Value;
   Interes := QCuotas.FieldByName('Interes').Value - QCuotas.FieldByName('InteresPagado').Value;

   if Capital > DM.ValorAbonar then begin
    Capital := DM.ValorAbonar;
    Interes := 0;
   end;

   qrCoopPagoPrestamoLineas.Insert;
   qrCoopPagoPrestamoLineasSecuencia.Value     := Secuencia;
   qrCoopPagoPrestamoLineasPrestamoNo.Value    := QCuotas.FieldByName('PrestamoNo').Value;
   qrCoopPagoPrestamoLineasCuotaNo.Value       := QCuotas.FieldByName('CuotaNo').Value;
   qrCoopPagoPrestamoLineasFecha.Value         := QCuotas.FieldByName('FechaVencimiento').Value;
   qrCoopPagoPrestamoLineasCapitalPagado.Value := Capital;
   qrCoopPagoPrestamoLineasInteresPagado.Value := 0;
   qrCoopPagoPrestamoLineasInteresAbono.Value := Interes;
   qrCoopPagoPrestamoLineasMoraPagada.Value    := 0;
   qrCoopPagoPrestamoLineasTotalPagado.Value   := qrCoopPagoPrestamoLineasCapitalPagado.Value;
   qrCoopPagoPrestamoLineas.Post;

   QCuotas.Next;

   DM.ValorAbonar := DM.ValorAbonar - Capital;
 end;
 FreeAndNil(QCuotas);

end;

procedure TfrmSeleccionCuotas.AbonoCuota;
begin
  if DM.ValorAbonar > 0 then begin
    Mora := 0;
    Capital := 0;
    Interes := 0;

    Mora := qrCoopPrestamoLineasMora.Value;
    DM.ValorAbonar := DM.ValorAbonar - Mora;

    if DM.ValorAbonar > 0 then begin
      Interes := qrCoopPrestamoLineasInteres.Value - qrCoopPrestamoLineasInteresPagado.Value;
      if Interes <= DM.ValorAbonar then
        DM.ValorAbonar := DM.ValorAbonar - Interes
      else begin
       Interes := DM.ValorAbonar;
       DM.ValorAbonar := 0;
      end;
    end;

    if DM.ValorAbonar > 0 then begin
      Capital := qrCoopPrestamoLineasCapital.Value - qrCoopPrestamoLineasCapitalPagado.Value;
      if Capital > DM.ValorAbonar then
       Capital := DM.ValorAbonar;
    end;

    if qrCoopPagoPrestamoLineas.Locate('Secuencia;PrestamoNo;CuotaNo', VarArrayOf([Secuencia,qrCoopPrestamoLineasPrestamoNo.Value,qrCoopPrestamoLineasCuotaNo.Value]), [loPartialKey]) = False then begin
      qrCoopPagoPrestamoLineas.Insert;
      qrCoopPagoPrestamoLineasSecuencia.Value     := Secuencia;
      qrCoopPagoPrestamoLineasPrestamoNo.Value    := qrCoopPrestamoLineasPrestamoNo.Value;
      qrCoopPagoPrestamoLineasCuotaNo.Value       := qrCoopPrestamoLineasCuotaNo.Value;
      qrCoopPagoPrestamoLineasFecha.Value         := qrCoopPrestamoLineasFechaVencimiento.Value;
      qrCoopPagoPrestamoLineasCapitalPagado.Value := Capital;
      qrCoopPagoPrestamoLineasInteresPagado.Value := Interes;
      qrCoopPagoPrestamoLineasMoraPagada.Value    := Mora;
      qrCoopPagoPrestamoLineasTotalPagado.Value   := qrCoopPagoPrestamoLineasCapitalPagado.Value + qrCoopPagoPrestamoLineasInteresPagado.Value +
                                                  qrCoopPagoPrestamoLineasMoraPagada.Value;
      qrCoopPagoPrestamoLineas.Post;
    end else
      DM.Info('Esta Cuota ya ha sido seleccionada.');
  end;

end;

procedure TfrmSeleccionCuotas.bttodasClick(Sender: TObject);
begin
  inherited;
  dsDatos.DataSet := nil;

  qrCoopPrestamoLineas.First;
  while not qrCoopPrestamoLineas.Eof do begin
    if qrCoopPagoPrestamoLineas.Locate('Secuencia;PrestamoNo;CuotaNo', VarArrayOf([Secuencia,qrCoopPrestamoLineasPrestamoNo.Value,qrCoopPrestamoLineasCuotaNo.Value]), [loPartialKey]) = False then begin
      qrCoopPagoPrestamoLineas.Insert;
      qrCoopPagoPrestamoLineasSecuencia.Value     := Secuencia;
      qrCoopPagoPrestamoLineasPrestamoNo.Value    := qrCoopPrestamoLineasPrestamoNo.Value;
      qrCoopPagoPrestamoLineasCuotaNo.Value       := qrCoopPrestamoLineasCuotaNo.Value;
      qrCoopPagoPrestamoLineasFecha.Value         := qrCoopPrestamoLineasFechaVencimiento.Value;
      qrCoopPagoPrestamoLineasCapitalPagado.Value := qrCoopPrestamoLineasCapital.Value - qrCoopPrestamoLineasCapitalPagado.Value;
      qrCoopPagoPrestamoLineasInteresPagado.Value := qrCoopPrestamoLineasInteres.Value - qrCoopPrestamoLineasInteresPagado.Value;
      qrCoopPagoPrestamoLineasMoraPagada.Value    := qrCoopPrestamoLineasMora.Value;
      qrCoopPagoPrestamoLineasTotalPagado.Value   := qrCoopPagoPrestamoLineasCapitalPagado.Value + qrCoopPagoPrestamoLineasInteresPagado.Value +
                                                     qrCoopPagoPrestamoLineasMoraPagada.Value;
      qrCoopPagoPrestamoLineas.Post;

    end;
    qrCoopPrestamoLineas.Next;
  end;
  qrCoopPrestamoLineas.First;
  dsDatos.DataSet := qrCoopPrestamoLineas;
end;

procedure TfrmSeleccionCuotas.btpagarClick(Sender: TObject);
begin
  inherited;
  if qrCoopPagoPrestamoLineas.Locate('Secuencia;PrestamoNo;CuotaNo', VarArrayOf([Secuencia,qrCoopPrestamoLineasPrestamoNo.Value,qrCoopPrestamoLineasCuotaNo.Value]), [loPartialKey]) = False then begin
   qrCoopPagoPrestamoLineas.Insert;
   qrCoopPagoPrestamoLineasSecuencia.Value     := Secuencia;
   qrCoopPagoPrestamoLineasPrestamoNo.Value    := qrCoopPrestamoLineasPrestamoNo.Value;
   qrCoopPagoPrestamoLineasCuotaNo.Value       := qrCoopPrestamoLineasCuotaNo.Value;
   qrCoopPagoPrestamoLineasFecha.Value         := qrCoopPrestamoLineasFechaVencimiento.Value;
   qrCoopPagoPrestamoLineasCapitalPagado.Value := qrCoopPrestamoLineasCapital.Value - qrCoopPrestamoLineasCapitalPagado.Value;
   qrCoopPagoPrestamoLineasInteresPagado.Value := qrCoopPrestamoLineasInteres.Value - qrCoopPrestamoLineasInteresPagado.Value;
   qrCoopPagoPrestamoLineasMoraPagada.Value    := qrCoopPrestamoLineasMora.Value;
   qrCoopPagoPrestamoLineasTotalPagado.Value   := qrCoopPagoPrestamoLineasCapitalPagado.Value + qrCoopPagoPrestamoLineasInteresPagado.Value +
                                                  qrCoopPagoPrestamoLineasMoraPagada.Value;
   qrCoopPagoPrestamoLineas.Post;
  end else
   DM.Info('Esta Cuota ya ha sido seleccionada.');
end;

procedure TfrmSeleccionCuotas.btabonarClick(Sender: TObject);
begin
  inherited;
  if (DM.TipoPago = 'Abono a Capital') and (qrCoopPagoPrestamoLineas.RecordCount > 0) then begin
    DM.Info('Debe eliminar las lineas seleccionadas para poder generar el abono a capital');
    Abort;
  end;

  DM.ValorAbonar := qrCoopPrestamoLineasPendiente.Value;
  frmMain.LanzaVentana(-5004);

  if DM.TipoPago = 'Abono a Capital' then
    AbonoCapital
  else
    AbonoCuota;


end;

procedure TfrmSeleccionCuotas.qrCoopPrestamoLineasCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrCoopPrestamoLineasTotalCuota.Value := qrCoopPrestamoLineasCapital.Value + qrCoopPrestamoLineasInteres.Value;
  qrCoopPrestamoLineasPendiente.Value := qrCoopPrestamoLineasTotalCuota.Value - qrCoopPrestamoLineasCapitalPagado.Value -
                                         qrCoopPrestamoLineasInteresPagado.Value;
  qrCoopPrestamoLineasMora.Value := DM.CalcMora(qrCoopPrestamoLineasPrestamoNo.Value,qrCoopPrestamoLineasCuotaNo.Value);                                         

end;

procedure TfrmSeleccionCuotas.Run(_socio,_secuencia : String);
begin
  Socio := _socio;
  qrCoopPrestamoLineas.Close;
  qrCoopPrestamoLineas.Parameters[0].Value := _socio;
  qrCoopPrestamoLineas.Open;


  Caption := 'Cuotas Pendientes del Socio:' + _socio;
  Secuencia := strtoint(_secuencia);

  qrCoopPagoPrestamoLineas.Close;
  qrCoopPagoPrestamoLineas.Parameters[0].Value := Secuencia;
  qrCoopPagoPrestamoLineas.Open;

  qrCoopPagoPrestamoLineas.Connection.BeginTrans;

  if DM.TipoPago = 'Abono a Capital' then begin
    btpagar.Enabled := False;
    bttodas.Enabled := False;
    btabonar.Caption := 'Abono a Capital';
  end;
  
  Showmodal;

  if ModalResult <> mrOk  then
     qrCoopPagoPrestamoLineas.Connection.RollbackTrans;
  


end;

end.
