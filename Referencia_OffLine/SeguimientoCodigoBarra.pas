Unit SeguimientoCodigoBarra;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxLookupEdit, cxDBLookupEdit, cxintl;

type
  TfrmSeguimientoCodigoBarra = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxGrid1DBTableView1PruebaID: TcxGridDBColumn;
    cxGrid1DBTableView1DeptId: TcxGridDBColumn;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    dxLayoutControl2Group4: TdxLayoutGroup;
    BtImprimir: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    qrLabels: TADOQuery;
    dsDatos: TDataSource;
    EdDepto: TcxExtLookupComboBox;
    dxLayoutControl2Item10: TdxLayoutItem;
    EdLabel: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    EdMuestra: TcxTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    EdFecha: TcxDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxGrid1DBTableView1EntradaId: TcxGridDBColumn;
    cxGrid1DBTableView1MuestraNo: TcxGridDBColumn;
    cxGrid1DBTableView1Secuencia: TcxGridDBColumn;
    cxGrid1DBTableView1Sucursal: TcxGridDBColumn;
    qrLabelsMuestraNo: TStringField;
    qrLabelsPruebaID: TStringField;
    qrLabelsrecid: TLargeintField;
    qrLabelsSecuencia: TIntegerField;
    qrLabelsRefRecid: TLargeintField;
    qrLabelsSucursal: TStringField;
    qrLabelsDeptId: TStringField;
    qrLabelsUserid: TStringField;
    qrLabelsFecha: TDateTimeField;
    qrLabelsHora: TStringField;
    qrLabelsAccion: TIntegerField;
    qrLabelsLabel: TStringField;
    cxGrid1DBTableView1Userid: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Hora: TcxGridDBColumn;
    cxGrid1DBTableView1Accion: TcxGridDBColumn;
    procedure EdFechaPropertiesChange(Sender: TObject);
    procedure EdMuestraPropertiesChange(Sender: TObject);
    procedure EdLabelPropertiesChange(Sender: TObject);
    procedure EdDeptoPropertiesChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    recid                       : Integer;
    Departamento                : String;
    muestranumber, Usuario      : String;
    urgente, reportado, doctor  : TcxStyle;

    procedure BuscarDatos;
    procedure ImprimirUnico;
    function  FindDepto(Descripcion : String) : String;
    function  Buscar_Labels(muestra: String; prueba: String): Boolean;
    procedure Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmSeguimientoCodigoBarra       : TfrmSeguimientoCodigoBarra;
  SecuenciaLabel                  : integer;
  SecAct                          : integer;
  qfindLb                         : TADOQuery;
  secuencia                       : integer;
  Descripcion, titulo             : string;
  depact,muestraact               : string;
  colact                          : integer;
  Dias                            : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


function TfrmSeguimientoCodigoBarra.FindDepto(Descripcion: string) : String;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM PTDepartamento WHERE Descripcion = :desc ORDER BY DepId', Descripcion);
 result := qfind.FieldByName('DepId').AsString;
 FreeAndNil(qfind);
end;


//Buscando el Label de la Prueba Registrada.
function TfrmSeguimientoCodigoBarra.Buscar_Labels(muestra: String; prueba: String): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTLabel '+
                   ' WHERE PruebaId = :prue '+
                   ' AND MuestraNo = :mues ';
 qfind.Parameters.ParamByName('prue').Value := prueba;
 qfind.Parameters.ParamByName('mues').Value := muestra;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;

 FreeAndNil(qfind);
end;



procedure TfrmSeguimientoCodigoBarra.Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

//  Valor := muestraact + '-' + IntToStr(secuencia) + '-' + DM.CurSucursal;
  Valor := muestraact + '-' + qrLabelsSecuencia.AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento (MuestraNo, PruebaID, RecordId, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label, RecId) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11, :12)';
  Qinsert.Parameters[0].Value := qrLabelsMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrLabelsPruebaID.Value;
  Qinsert.Parameters[2].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[3].Value := qrLabelsSecuencia.Value;
  Qinsert.Parameters[4].Value := qrLabelsRecid.Value;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
//  Qinsert.Parameters[6].Value := DM.qrDepartamentosDepid.Value;
  Qinsert.Parameters[6].Value := FindDepto(EdDepto.Text);
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 3;
  Qinsert.Parameters[11].Value := Valor;
  Qinsert.Parameters[12].Value := DM.Get_Secuencia_Id;
  Qinsert.ExecSQL;

  //Imprimiendo el Label Actual.
  ImprimirUnico;

  FreeAndNil(Qinsert);
end;


procedure TfrmSeguimientoCodigoBarra.ImprimirUnico;
Var
 labels, idx                  : Integer;
 text1, text2                 : TextFile;
 qprint, quser, qfind, qtotal : TADOQuery;
 cadena, printer, valor, ruta : String;
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
 quser := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :usr', DM.CurUser);
 printer := quser.FieldByName('RutaBarcode').AsString;
 FreeAndNil(quser);

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                   ' PTLabelTemp a, ldrDepartments b, PTCliente c '+
                   ' WHERE a.MuestraNo = '+ #39 + qrLabelsMuestraNo.Value + #39 +
                   ' AND a.PruebaId = '+ #39 + qrLabelsPruebaID.Value + #39 +
                   ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                   ' ORDER BY a.Label ASC ';
 qfind.Open;

 qfind.First;
 For idx := 1 To qfind.RecordCount Do
// While Not qfind.Eof Do
  begin
   cadena := 'C:\barcode';
   assignfile(text1, cadena);
   rewrite(text1);

//   writeln(texto,'N');
//   writeln(texto,'N');
   writeln(text1, 'FK"FORMA"');
   writeln(text1, 'FS"FORMA"');
   writeln(text1, '');
   writeln(text1,'q1200');
   writeln(text1,'Q200,30+0');
   writeln(text1,'S2');
   writeln(text1,'D8');
   writeln(text1,'ZT');

   writeln(text1,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('MuestraNo').AsString+'"');
   writeln(text1,'A220,112,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').AsString+'"');  //+ Qfind.FieldByName('Label').AsString + '"');
   writeln(text1,'A415,112,0,1,1,1,N,"' + Qfind.FieldByName('DescDept').AsString+'"');
   writeln(text1,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').AsString+'"');
   writeln(text1,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').AsString+'"');

   writeln(text1,'FE');
   writeln(text1,'');
   writeln(text1,'FR"FORMA"');
   writeln(text1,'?');
   writeln(text1,'P1');
   writeln(text1,'');
   system.closefile(text1);

   cadena := 'C:\imprimir.bat';
   assignfile(text2, cadena);
   rewrite(text2);

//   writeLn(text1,'PRINT /d:lpt1 c:\barcode ');
//   writeLn(text1,'PRINT /D:\\hpnew\Generico c:\barcode ');
//   ruta := 'PRINT /D:' + printer + ' c:\barcode ';

   if (AnsiContainsStr(DM.CurRuta, '\\')) then
     ruta := 'PRINT /D:' + DM.CurRuta + ' c:\barcode '
   Else
     ruta := 'PRINT /d:lpt1 c:\barcode ';

   writeLn(text2, ruta);
   closefile(text2);
   winexec('C:\imprimir.bat', SW_SHOWNORMAL);

   qfind.Next;
//   winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
  end;

  FreeAndNil(qfind);
end;


procedure TfrmSeguimientoCodigoBarra.BtImprimirClick(Sender: TObject);
begin
 inherited;
 If (qrLabels.RecordCount > 0) Then
   frmMain.LanzaVentana(-8028)
 Else
   Begin
    Beep;
    Raise exception.CreateFmt('Debe Seleccionar un Numero de Muestra Para Poder Imprimir el Label.',[]);
   End;
end;


procedure TfrmSeguimientoCodigoBarra.EdDeptoPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmSeguimientoCodigoBarra.EdFechaPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmSeguimientoCodigoBarra.EdLabelPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmSeguimientoCodigoBarra.EdMuestraPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarDatos;
end;


procedure TfrmSeguimientoCodigoBarra.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;


procedure TfrmSeguimientoCodigoBarra.BuscarDatos;
Var
  Seleccion : String;
begin
  Seleccion := ' SELECT * FROM PTLabelSeguimiento WHERE Recid > 0 ';

    If (EdDepto.Text <> '') Then
      Seleccion := Seleccion + ' AND DeptId LIKE '+#39+ FindDepto(EdDepto.Text) +#39;
//      Seleccion := Seleccion + ' AND DeptId LIKE '+#39+ DM.qrDepartamentosDepid.Value +#39;

    If (EdMuestra.Text <> '') Then
      Seleccion := Seleccion + ' AND MuestraNo LIKE '+#39+ EdMuestra.Text +#39;

//    If (EdLabel.Text <> '') Then
//      Seleccion := Seleccion + ' AND EmpresaID LIKE '+#39+ EdLabel.Text +#39;

//    If (EdFecha.Text <> '') Then
//      Seleccion := Seleccion + ' AND FechaSangre BETWEEN '+#39+ EdFecha.Text +#39;

  Seleccion := Seleccion + ' ORDER BY DeptId, MuestraNo, PruebaId, Recid ';

  qrLabels.Close;
  qrLabels.SQL.Text := Seleccion;
  qrLabels.Open;
end;


procedure TfrmSeguimientoCodigoBarra.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Pantalla de Seguimiento de Codigos de Barra (LABELS).';

  frmMain.Exis_Codigo := True;

  SetColorTo(dm.ColorModifica);

  DM.qrDepartamentos.Close;
  DM.qrDepartamentos.Open;
  DM.qrDepartamentos.First;

  qrLabels.Close;
  qrLabels.Open;
end;


procedure TfrmSeguimientoCodigoBarra.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Codigo := False;
end;


procedure TfrmSeguimientoCodigoBarra.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;



END.

