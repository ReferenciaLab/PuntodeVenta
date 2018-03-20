{ 3/31/2000 11:02:03 AM (GMT-5) > [sysdba on TEMISROA] checked out / }
{ 3/31/2000 11:01:33 AM (GMT-5) > [sysdba on TEMISROA] checked in   }
{ 3/31/2000 10:57:10 AM (GMT-5) > [sysdba on TEMISROA] checked out / }
unit ConsultaMapa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, HotImage, wwdblook, StdCtrls, wwdbdatetimepicker, Buttons, Db,
  ADODB, StrHlder, ExtDlgs, Menus, RXCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppStrtch, ppCTMain, ppVar,
  ppPrnabl, ppCtrls, ppBands, ppModule, daDatMod, ppRegion;

type
  TfmConsultaMapa = class(TForm)
    pnToolbar: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    dpDesde: TwwDBDateTimePicker;
    dpHasta: TwwDBDateTimePicker;
    lcProducto: TwwDBLookupCombo;
    sbMapa: TScrollBox;
    hmRepDom: THotImage;
    qrGraficoProvincia: TADODataSet;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    taParamSys: TADOTable;
    taParamSysServerName: TStringField;
    taParamSysColorMapaConDegradacion: TBooleanField;
    taParamSysColorDesdeVentas: TIntegerField;
    taParamSysColorHastaVentas: TIntegerField;
    taParamSysColorDesdeCobros: TIntegerField;
    taParamSysColorHastaCobros: TIntegerField;
    taParamSysColorDesdeCxC: TIntegerField;
    taParamSysColorHastaCxC: TIntegerField;
    taParamSysColor1: TIntegerField;
    taParamSysColor2: TIntegerField;
    taParamSysColor3: TIntegerField;
    taParamSysColor4: TIntegerField;
    taParamSysColor5: TIntegerField;
    taParamSysRutaReportes: TStringField;
    taParamSysUltimoReporte: TIntegerField;
    taParamSysPctImpuesto: TFloatField;
    taParamSysSucursalIndependiente: TBooleanField;
    lbTotal: TLabel;
    Label18: TLabel;
    lcSucursal: TwwDBLookupCombo;
    Label6: TLabel;
    cbTipoGrafica: TComboBox;
    qrSucursalAct: TADOQuery;
    qrSucursalActIdCompania: TIntegerField;
    qrSucursalActIdSucursal: TIntegerField;
    qrSucursalActNombre: TStringField;
    qrSucursalActCalle: TStringField;
    qrSucursalActSector: TStringField;
    qrSucursalActCiudad: TStringField;
    qrSucursalActTelefono: TStringField;
    qrSucursalActFax: TStringField;
    qrSucursalActFechaCreacion: TDateTimeField;
    qrSucursalActEncargado: TStringField;
    qrSucursalActeMail: TStringField;
    qrSucursalActIdEnviarA: TIntegerField;
    qrSucursalActAgregadaPor: TStringField;
    qrSucursalActAgregadaEn: TDateTimeField;
    qrSucursalActModificadaPor: TStringField;
    qrSucursalActModificadaEn: TDateTimeField;
    qrSucursalActSelected: TBooleanField;
    shVentas: TStrHolder;
    qrProducto: TADOQuery;
    shCxc: TStrHolder;
    shCobros: TStrHolder;
    SaveDlg: TSavePictureDialog;
    shProducto: TStrHolder;
    lbTitulo: TLabel;
    Bevel1: TBevel;
    sbCopiar: TSpeedButton;
    sbPrint: TSpeedButton;
    sbRefresh: TSpeedButton;
    sbGrabar: TSpeedButton;
    sbFechas: TRxSpeedButton;
    pmFechas: TPopupMenu;
    miHoy: TMenuItem;
    EsteMs1: TMenuItem;
    Ultimos2Meses1: TMenuItem;
    Ultimos3Meses1: TMenuItem;
    Ultimos6Meses1: TMenuItem;
    EsteAo1: TMenuItem;
    plMapa: TppDBPipeline;
    ppMapa: TppReport;
    dsGraficoProvincia: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lbTitle: TppLabel;
    plSucursal: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppRgMapa: TppRegion;
    ppImgMapa: TppImage;
    qrProv: TADODataSet;
    pbMapa: TImage;
    shFabricante: TStrHolder;
    qrFabricante: TADOQuery;
    lcFabricante: TwwDBLookupCombo;
    qrProductoCount: TADODataSet;
    qrFabricanteNombre: TStringField;
    qrFabricanteFabricante: TStringField;
    qrProductoCountCantidad: TBCDField;
    shVentasMapa: TStrHolder;
    dsSucursalAct: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure cbTipoGraficaClick(Sender: TObject);
    procedure qrSucursalActBeforeOpen(DataSet: TDataSet);
    procedure lcProductoDropDown(Sender: TObject);
    procedure qrProductoBeforeOpen(DataSet: TDataSet);
    procedure qrSucursalActAfterScroll(DataSet: TDataSet);
    procedure qrProductoAfterOpen(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbGrabarClick(Sender: TObject);
    procedure EsteAo1Click(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure hmRepDomClick(Sender: TObject);
    procedure cbTipoGraficaChange(Sender: TObject);
    procedure qrFabricanteAfterOpen(DataSet: TDataSet);
    procedure qrFabricanteBeforeOpen(DataSet: TDataSet);
    procedure lcFabricanteEnter(Sender: TObject);
    procedure dsSucursalActDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
	  aColores: Array of TColor;
    aPuntos: Array[1..30] Of TPoint;
    aRango: Array[1..5, 1..5] of Double;
    aDivisores: Array[1..20] of Integer;
    aPosColor: Array of Integer;
    rMin,rMax : Double;
    procedure CalcularRangos;
    procedure GenerarColores;
    function IndiceDelRango(Monto: Double): Integer;
    procedure LimpiaMapa;
    procedure VentasDrillDown;
    procedure VentasPorFabricanteDrillDown;
  public
    { Public declarations }
  end;

var
  fmConsultaMapa: TfmConsultaMapa;

implementation

uses StrUtils,Math,DateUtil,DataModule;

{$R *.DFM}

procedure TfmConsultaMapa.FormCreate(Sender: TObject);
begin
  //
	taParamSys.Close;
  taParamSys.Open;
  qrSucursalAct.Close;
  qrSucursalAct.Open;
  qrProducto.Close;
  qrProducto.Open;
  qrFabricante.close;
  qrFabricante.open;
	//
	aPuntos[ 1] := Point(350, 246);
	aPuntos[ 2] := Point(561, 262);
	aPuntos[ 3] := Point(183, 231);
	aPuntos[ 4] := Point(129, 268);
	aPuntos[ 5] := Point(133, 330);
	aPuntos[ 6] := Point( 63, 122);
	aPuntos[ 7] := Point(293, 120);
	aPuntos[ 8] := Point(501, 192);
	aPuntos[ 9] := Point( 60, 184);
	aPuntos[10] := Point(290,  80);
	aPuntos[11] := Point(418, 175);
	aPuntos[12] := Point( 90, 318);
	aPuntos[13] := Point(500, 270);
	aPuntos[14] := Point(243, 144);
	aPuntos[15] := Point(329,  74);
	aPuntos[16] := Point(272, 216);
	aPuntos[17] := Point(108,  60);
	aPuntos[18] := Point(330, 220);
	aPuntos[19] := Point( 73, 346);
	aPuntos[20] := Point(252, 248);
	aPuntos[21] := Point(208,  56);
	aPuntos[22] := Point(266, 117);
	aPuntos[23] := Point(441, 134);
	aPuntos[24] := Point(290, 233);
	aPuntos[25] := Point(127, 227);
	aPuntos[26] := Point(462, 250);
	aPuntos[27] := Point(320, 175);
	aPuntos[28] := Point(196, 102);
	aPuntos[29] := Point(113, 131);
	aPuntos[30] := Point(151,  76);
  //
  aDivisores[1]  := 1;
  aDivisores[2]  := 10;
  aDivisores[3]  := 10;
  aDivisores[4]  := 100;
  aDivisores[5]  := 1000;
  aDivisores[6]  := 1000;
  aDivisores[7]  := 10000;
  aDivisores[8]  := 10000;
  aDivisores[9]  := 100000;
  aDivisores[10] := 100000;
  aDivisores[11] := 1000000;
  aDivisores[12] := 1000000;
  aDivisores[13] := 10000000;
  aDivisores[14] := 10000000;
  //
	dpDesde.Date := DM.SystemDate;
  dpHasta.Date := DM.SystemDate;
  cbTipoGrafica.ItemIndex := 0;
  cbTipoGraficaClick(Sender);

  qrSucursalAct.First;
  while Not ((qrSucursalActIdSucursal.Value = DM.qrSucursalesDefaultIdSucursal.Value) AND (qrSucursalActIdCompania.Value = DM.qrSucursalesDefaultIdCompania.Value)) do begin
   if qrSucursalAct.Eof then begin
    Break;
   end;
   qrSucursalAct.Next;
  end;
  lcSucursal.Text := qrSucursalActNombre.Text;

end;

procedure TfmConsultaMapa.LimpiaMapa;
var i : Integer;
  vColor : TColor;
begin
	for i := 1 to 30 do begin
     vColor := hmRepDom.PictureCanvas.Pixels[ aPuntos[i].x, aPuntos[i].y];
     hmRepDom.PictureCanvas.Brush.Color := clWhite;
     hmRepDom.PictureCanvas.FloodFill(aPuntos[i].X, aPuntos[i].Y, vColor, fsSurface);
     hmRepDom.HotSpots.Spots[ i - 1 ].HintText := '';
  end;
end;

procedure TfmConsultaMapa.CalcularRangos;
Var sMin, sMax: String;
    iMin, iMax, iLenMin, iLenMax, iIntervalo, iX, iLen: Integer;
    rCentavo: Double;
begin

  iIntervalo := Ceil( (rMax - Max(rMin,0)) / 4 );
  iLen := Length( IntToStr( iIntervalo ) );
  iIntervalo := Trunc( (iIntervalo / aDivisores[ iLen ] ) ) * aDivisores[ iLen ] ;

  iMin    := Ceil(Max(rMin,0));
  iMax    := Ceil(rMax);

  iLenMin := Length( IntToStr( iMin ) );
  iLenMax := Length( IntToStr( iMax ) );

  iMax    := Trunc( ((iMax / aDivisores[ iLenMax ] ) + 1.00) ) * aDivisores[ iLenMax ] ;

  aRango[5,1] := 0.00;
  aRango[5,2] := 0.00;

  rCentavo := 0.00;
  For iX := 4 Downto 1 Do Begin
    aRango[iX, 1] := ( Trunc( iMin / aDivisores[ iLenMin ] ) * aDivisores[ iLenMin ] ) + rCentavo;
    iMin := Trunc(aRango[iX, 1] + iIntervalo);
    aRango[iX, 2] := ( Trunc( iMin / aDivisores[ iLenMin ] ) * aDivisores[ iLenMin ] );
    rCentavo := 0.01;
    iMin := Trunc( aRango[iX, 2] );
  End;


  If rMin <= 0 Then
      aRango[4, 1] := 0.01
  Else
      aRango[4, 1] := Max(rMin,0);

  aRango[1, 2] := rMax;

end;

procedure TfmConsultaMapa.sbRefreshClick(Sender: TObject);
var i : Integer;
    pColor, vColor : TColor;
    fTotalPais : Double;
begin
	//
  LimpiaMapa;
  //
    qrGraficoProvincia.Close;
  case cbTipoGrafica.ItemIndex of
    0:qrGraficoProvincia.CommandText := shVentas.Strings.Text;
    1:qrGraficoProvincia.CommandText := shCobros.Strings.Text;
    2:qrGraficoProvincia.CommandText := shCxc.Strings.Text;
    3:qrGraficoProvincia.CommandText := shProducto.Strings.Text;
    4:qrGraficoProvincia.CommandText := shFabricante.Strings.Text;
  end;
  case cbTipoGrafica.ItemIndex of
    0:lbTitulo.Caption := 'Ventas del Periodo';
    1:lbTitulo.Caption := 'Cobros del Periodo';
    2:lbTitulo.Caption := 'Cuentas por Cobrar ';
    3:lbTitulo.Caption := 'Ventas Producto';
    4:lbTitulo.Caption := 'Ventas por Fablicante';
  end;
   qrGraficoProvincia.Parameters.ParamByName('pCompania').Value := DM.Compania;
   qrGraficoProvincia.Parameters.ParamByName('pSucursal').Value := qrSucursalAct.FieldByName('IdSucursal').Value;
  if cbTipoGrafica.ItemIndex <> 2 then begin
   qrGraficoProvincia.Parameters.ParamByName('pFecIni').Value := dpDesde.Date;
   qrGraficoProvincia.Parameters.ParamByName('pFecFin').Value := dpHasta.Date;
  end;
  if (cbTipoGrafica.ItemIndex = 3) and (lcProducto.Text <> '') then begin
   qrGraficoProvincia.Parameters.ParamByName('pProducto').Value := qrProducto.FieldByName('Producto').Text;
  end;
  if (cbTipoGrafica.ItemIndex = 4) and (lcFabricante.Text <> '') then begin
   qrGraficoProvincia.Parameters.ParamByName('pFabricante').Value := qrFabricante.FieldByName('Fabricante').Text;
  end;
 try
   qrGraficoProvincia.Open;
 except
  Try
   qrGraficoProvincia.Open;
  except
   qrGraficoProvincia.Open;
  end;
 end;


  //
  qrGraficoProvincia.Sort := 'Total';
  qrGraficoProvincia.Last;
  rMax := qrGraficoProvincia.FieldByName('Total').AsFloat;
  qrGraficoProvincia.First;
  rMin := qrGraficoProvincia.FieldByName('Total').AsFloat;
  //
  Shape1.Visible := True;
  Shape2.Visible := True;
  Shape3.Visible := True;
  Shape4.Visible := True;
  Shape5.Visible := True;
  //
  CalcularRangos;
  if rMin <> rMax then begin
    label5.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[5, 1] ), 14 );
    label4.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[4, 1] ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[4, 2] ), 14 ) ;
    label3.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[3, 1] ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[3, 2] ), 14 ) ;
    label2.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[2, 1] ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[2, 2] ), 14 ) ;
    label1.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[1, 1] ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[1, 2] ), 14 ) ;
  end else begin
    label5.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 );
    label4.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) ;
    label3.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) ;
    label2.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', 0 ), 14 ) ;
    label1.Caption := AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[1, 1] ), 14 ) + ' - ' + AddChar( ' ', FormatFLoat( '###,###,##0.00', aRango[1, 2] ), 14 ) ;
  end;
  //
  GenerarColores;
  If Not taParamSysColorMapaConDegradacion.Value Then Begin
    aColores[0] :=  taParamSysColor1.Value;
    aColores[1] :=  taParamSysColor2.Value;
    aColores[2] :=  taParamSysColor3.Value;
    aColores[3] :=  taParamSysColor4.Value;
    aColores[4] :=  taParamSysColor5.Value;
  End;
  Shape1.Brush.Color :=  aColores[0];
  Shape2.Brush.Color :=  aColores[1];
  Shape3.Brush.Color :=  aColores[2];
  Shape4.Brush.Color :=  aColores[3];
  Shape5.Brush.Color :=  aColores[4];
  //
	fTotalPais := 0;
  while not qrGraficoProvincia.EOF do begin
  	i := qrGraficoProvincia.FieldByName('IdSpot').AsInteger;
     if qrGraficoProvincia.FieldByName('Total').AsFloat < 0 then
     	pColor := clBtnFace
  	else

     if  cbTipoGrafica.ItemIndex = 3 then begin
      qrProductoCount.close;
      qrProductoCount.Parameters.ParamByName('pCompania').value  := DM.Compania;
      qrProductoCount.Parameters.ParamByName('pSucursal').value  := qrSucursalAct.FieldByName('IdSucursal').Value;
      qrProductoCount.Parameters.ParamByName('pFecIni').Value    := dpDesde.Date;
      qrProductoCount.Parameters.ParamByName('pFecFin').Value    := dpHasta.Date;
      qrProductoCount.Parameters.ParamByName('pProducto').Value  := qrGraficoProvincia.FieldByName('Producto').value;
      qrProductoCount.Parameters.ParamByName('pProvincia').value := qrGraficoProvincia.FieldByName('IdProvincias').value;
      qrProductoCount.open;
     end;

     pColor := aColores[IndiceDelRango(qrGraficoProvincia.FieldByName('Total').AsFloat)];
     vColor := hmRepDom.PictureCanvas.Pixels[ aPuntos[i].x, aPuntos[i].y];
     hmRepDom.PictureCanvas.Brush.Color := pColor;
     hmRepDom.PictureCanvas.FloodFill(aPuntos[i].X, aPuntos[i].Y, vColor, fsSurface);
     if cbTipoGrafica.ItemIndex = 3 then begin
      hmRepDom.HotSpots.Spots[ i - 1 ].HintText := qrGraficoProvincia.FieldByName('Nombre').Text + ' ' +
     													  FormatFloat('#,##0.00',qrGraficoProvincia.FieldByName('Total').AsFloat)+ ' / ' + qrProductoCountCantidad.Text;
     end else begin
      hmRepDom.HotSpots.Spots[ i - 1 ].HintText := qrGraficoProvincia.FieldByName('Nombre').Text + ' ' +
     													  FormatFloat('#,##0.00',qrGraficoProvincia.FieldByName('Total').AsFloat);
     end;
     //
     fTotalPais := fTotalPais + qrGraficoProvincia.FieldByName('Total').AsFloat;
     //
  	qrGraficoProvincia.Next;
  end;
  //
  lbTotal.Caption := 'Total General: ' + FormatFloat('#,##0.00', fTotalPais);
  //
end;

procedure TfmConsultaMapa.GenerarColores;
Var RGBDesde, RGBHasta, RGBDif: Array[0..2] of Byte;
		Contador, Rojo, Verde, Azul, i, iContador: Integer;
		Factor: Array[0..2] of Shortint;
    rColores, rContador: Double;
    	iRango : Integer;
begin

  iRango := 4;

  taParamSys.Close;
  If  Not taParamSys.Active Then taParamSys.Open;
  taParamSys.First;

	RGBDesde[0] := GetRValue(ColorToRGB(taParamSysColorDesdeVentas.Value));
	RGBDesde[1] := GetGValue(ColorToRGB(taParamSysColorDesdeVentas.Value));
	RGBDesde[2] := GetBValue(ColorToRGB(taParamSysColorDesdeVentas.Value));

	RGBHasta[0] := GetRValue(ColorToRGB(taParamSysColorHastaVentas.Value));
	RGBHasta[1] := GetGValue(ColorToRGB(taParamSysColorHastaVentas.Value));
	RGBHasta[2] := GetBValue(ColorToRGB(taParamSysColorHastaVentas.Value));

	For Contador := 0 to 2 Do Begin
		RGBDif[Contador] := Abs( RGBHasta[Contador] - RGBDesde[Contador] );
		If RGBHasta[Contador] > RGBDesde[Contador] Then
			Factor[Contador] := 1
		Else
			Factor[Contador] := -1;
	End;

  rColores := 255 / iRango;

  aColores := NIL;
  SetLength( aColores, iRango+1 );
  SetLength( aPosColor, iRango+1 );

  iContador := 0;
  rContador := 0.00;
  i := 0;
	For Contador := 0 to iRango Do Begin
		Rojo  := RGBDesde[0] + Factor[0]  * MulDiv(iContador,RGBDif[0],255);
		Verde := RGBDesde[1] + Factor[1]  * MulDiv(iContador,RGBDif[1],255);
		Azul  := RGBDesde[2] + Factor[2]  * MulDiv(iContador,RGBDif[2],255);
		aColores[i] := RGB( Rojo, Verde, Azul );
    aPosColor[i] := iContador;
    rContador := rContador + rColores;
    iContador := Trunc( rContador );
    Inc(i);
	End;
  //aColores[Contador] := clBlue;

end;

function TfmConsultaMapa.IndiceDelRango( Monto: Double ): Integer;
Var iX: Integer;
begin
  Result := 4;
  For iX := 5 Downto 1 Do Begin
    If (Monto >= aRango[iX, 1]) And (Monto <= aRango[iX, 2]) Then Begin
      Result := iX-1;
      Break;
    End;
  End;
end;

procedure TfmConsultaMapa.cbTipoGraficaClick(Sender: TObject);
begin
	lcProducto.Enabled := ( (cbTipoGrafica.ItemIndex = 3) or (cbTipoGrafica.ItemIndex = 4) );
  dpDesde.Enabled    := (cbTipoGrafica.ItemIndex <> 2);
  dpHasta.Enabled    := (cbTipoGrafica.ItemIndex <> 2);
end;

procedure TfmConsultaMapa.qrSucursalActBeforeOpen(DataSet: TDataSet);
begin
	qrSucursalAct.Parameters.ParamByName('pCompania').Value := DM.Compania;
end;

procedure TfmConsultaMapa.lcProductoDropDown(Sender: TObject);
begin
	qrProducto.Close;
  qrProducto.Open;
end;

procedure TfmConsultaMapa.qrProductoBeforeOpen(DataSet: TDataSet);
begin
	qrProducto.Parameters.ParamByName('pCompania').Value := DM.Compania;
  qrProducto.Parameters.ParamByName('pSucursal').Value := qrSucursalAct.FieldByName('IdSucursal').Text;
end;

procedure TfmConsultaMapa.qrSucursalActAfterScroll(DataSet: TDataSet);
begin
	qrProducto.Close;
  qrProducto.Open;
end;

procedure TfmConsultaMapa.qrProductoAfterOpen(DataSet: TDataSet);
begin
	lcProducto.Text := qrProducto.FieldByName('DescripcionDeVenta').Text;
end;

procedure TfmConsultaMapa.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_F5 then sbRefresh.Click;
end;

procedure TfmConsultaMapa.sbGrabarClick(Sender: TObject);
begin
	if SaveDlg.Execute then begin
  	hmRepDom.Picture.SaveToFile(SaveDlg.FileName);
  end;
end;

procedure TfmConsultaMapa.EsteAo1Click(Sender: TObject);
var a,m,d : Word;
begin
	case (Sender as TComponent).Tag of
  	1:Begin
         dpDesde.Date := DM.SystemDate;
         dpHasta.Date := DM.SystemDate;
       End;
  	2:Begin
         DecodeDate(Date,a,m,d);
         dpDesde.Date := EncodeDate(a,m,1);
         dpHasta.Date := DM.SystemDate;
       End;
     3:Begin
     	 dpDesde.Date := IncDate(Date,0,-2,0);
         dpHasta.Date := DM.SystemDate;
       End;
     4:Begin
     	 dpDesde.Date := IncDate(Date,0,-3,0);
         dpHasta.Date := DM.SystemDate;
       End;
     5:Begin
     	 dpDesde.Date := IncDate(Date,0,-6,0);
         dpHasta.Date := DM.SystemDate;
       End;
  	6:Begin
         DecodeDate(Date,a,m,d);
         dpDesde.Date := EncodeDate(a,1,1);
         dpHasta.Date := DM.SystemDate;
       End;
  end;
  sbRefresh.Click;
end;

procedure TfmConsultaMapa.sbPrintClick(Sender: TObject);
var img : TBitMap;
begin
	img := Self.GetFormImage;
	plSucursal.Caption := lcSucursal.Text;
  lbTitle.Caption := cbTipoGrafica.Text + ' - Del: ' + dpDesde.Text + ' Al: ' + dpHasta.Text;
  ppImgMapa.Picture.Assign(img);
	ppMapa.Print;
end;

procedure TfmConsultaMapa.hmRepDomClick(Sender: TObject);
begin
  case cbTipoGrafica.ItemIndex of
    0:VentasDrillDown;
    4:VentasPorFabricanteDrillDown;
  else ShowMessage('Opcion no implementada.');
  end;
end;

procedure TfmConsultaMapa.VentasDrillDown;
var i, y : Integer;
    p, o, s : TPoint;
begin
  p.X := 0;
  p.Y := 0;
  o.x := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.TopLeft.x * -1;
  o.y := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.TopLeft.y * -1;
  s.x := o.x + 5;
  s.y := o.y + 5;
    y := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.Bottom -
         hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.Top;
  i := hmRepDom.SelectedSpot.SpotID;
  qrProv.Close;
  qrProv.Parameters.ParamByName('pId').Value := i;
  qrProv.Open;

	pbMapa.Picture := nil;
  pbMapa.Canvas.Brush.Color := clBlack;
  hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].DrawShape( pbMapa.Canvas, s, True );

  pbMapa.Canvas.Brush.Color := clLime;
  hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].DrawShape( pbMapa.Canvas, o, True );


	with DM do begin
     //DM.imgLogo.Picture.Assign( pbMapa.Picture );
     qrVentas.Close;
     qrVentas.CommandText := shVentasMapa.Strings.Text;
     qrVentas.Parameters.ParamByName('pCompania').Value := Compania;
     qrVentas.Parameters.ParamByName('pSucursal').Value := qrSucursalAct.FieldByName('IdSucursal').Text;
     qrVentas.Parameters.ParamByName('pFecIni').Value := dpDesde.Date;
     qrVentas.Parameters.ParamByName('pFecFin').Value := dpHasta.Date;
     qrVentas.Parameters.ParamByName('pProv').Value := qrProv.FieldByName('IdProvincias').Text;
     lbTitulo.Caption := 'Desde : ' + dpDesde.Text + ' - Hasta: ' + dpHasta.Text;
     lbSubTitulo.Caption := 'Provincia: ' + qrProv.FieldByName('Nombre').Text;
		ppVentas.Print;
  end;
end;

procedure TfmConsultaMapa.cbTipoGraficaChange(Sender: TObject);
begin
 if cbTipoGrafica.Text = 'Ventas por Fablicante' then begin
  Label11.Caption := 'Fablicante';
  lcFabricante.Visible := True;
  lcProducto.Visible   := False;
  qrFabricante.Close;
  qrFabricante.Open;
 end else begin
  Label11.Caption := 'Producto';
  lcProducto.Visible   := True;
  lcFabricante.Visible := False;
 end;
end;

procedure TfmConsultaMapa.qrFabricanteAfterOpen(DataSet: TDataSet);
begin
  lcFabricante.Text := qrFabricante.FieldByName('Nombre').Text;
end;

procedure TfmConsultaMapa.qrFabricanteBeforeOpen(DataSet: TDataSet);
begin
	qrFabricante.Parameters.ParamByName('pCompania').Value := DM.Compania;
	qrFabricante.Parameters.ParamByName('pSucursal').Value := qrSucursalActIdSucursal.Value;

end;
procedure TfmConsultaMapa.VentasPorFabricanteDrillDown;
var i, y : Integer;
    p, o, s : TPoint;
begin
  p.X := 0;
  p.Y := 0;
  o.x := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.TopLeft.x * -1;
  o.y := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.TopLeft.y * -1;
  s.x := o.x + 5;
  s.y := o.y + 5;
    y := hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.Bottom -
         hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].BoundsRect.Top;
  i := hmRepDom.SelectedSpot.SpotID;
  qrProv.Close;
  qrProv.Parameters.ParamByName('pId').Value := i;
  qrProv.Open;

  pbMapa.Picture := nil;
  pbMapa.Canvas.Brush.Color := clBlack;
  hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].DrawShape( pbMapa.Canvas, s, True );

  pbMapa.Canvas.Brush.Color := clLime;
  hmRepDom.HotSpots.Spots[hmRepDom.SpotIndex].DrawShape( pbMapa.Canvas, o, True );


     with DM do begin
     //DM.imgLogo.Picture.Assign( pbMapa.Picture );
     qrVentasPorFabricante.Close;
     qrVentasPorFabricante.Parameters.ParamByName('pCompania').Value   := Compania;
     qrVentasPorFabricante.Parameters.ParamByName('pSucursal').Value   := qrSucursalAct.FieldByName('IdSucursal').Text;
     qrVentasPorFabricante.Parameters.ParamByName('pFecIni').Value     := dpDesde.Date;
     qrVentasPorFabricante.Parameters.ParamByName('pFecFin').Value     := dpHasta.Date;
     qrVentasPorFabricante.Parameters.ParamByName('pFabricante').Value := qrFabricanteFabricante.Text;
     qrVentasPorFabricante.Parameters.ParamByName('pProvincia').Value  := qrProv.FieldByName('IdProvincias').Text;
     qrVentasPorFabricante.Open;

     pplbTitulo.Caption := 'Desde : ' + dpDesde.Text + ' - Hasta: ' + dpHasta.Text;
     pplbSubTitulo.Caption := 'Provincia: ' + qrProv.FieldByName('Nombre').Text;

     ppVentasPorFabricante.Print;
  end;
end;

procedure TfmConsultaMapa.lcFabricanteEnter(Sender: TObject);
begin
 qrFabricante.close;
 qrFabricante.open;
end;

procedure TfmConsultaMapa.dsSucursalActDataChange(Sender: TObject;
  Field: TField);
begin
 qrFabricante.close;
 qrFabricante.Open;

end;

end.
