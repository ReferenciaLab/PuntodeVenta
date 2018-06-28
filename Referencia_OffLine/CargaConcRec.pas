unit CargaConcRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ppStrtch,
  ppRichTx, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, DB, ppDB, ppDBPipe, JvMemoryDataset, dlgMensajes,
  cxDBExtLookupComboBox, ExtCtrls, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, ComCtrls, ShlObj, cxShellCommon,
  cxShellComboBox, cxShellBrowserDialog, dxDockControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvCsvData, cxCheckBox,StrUtils;

type
  TfrmCargaConcRec = class(TForm)
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
    GrupoSucursales: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    cbExtGrupoArs: TcxExtLookupComboBox;
    qconsulta: TADOQuery;
    qrVerificaCliente: TADOQuery;
    spMensaje: TLMDSimplePanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    qrVerificaCFiscal: TADOQuery;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cboShellArchivo: TcxShellComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxDockingManager1: TdxDockingManager;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    JvCsvDataSet1: TJvCsvDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl3Item3: TdxLayoutItem;
    dsCSV: TDataSource;
    JvCsvDataSet1NoAutorizacion: TStringField;
    JvCsvDataSet1Paciente: TStringField;
    JvCsvDataSet1Fecha: TStringField;
    JvCsvDataSet1NoAfiliacion: TStringField;
    JvCsvDataSet1MontoReclamo: TStringField;
    JvCsvDataSet1MontoPagado: TStringField;
    cxGrid1DBTableView1NoAutorizacion: TcxGridDBColumn;
    cxGrid1DBTableView1Paciente: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1NoAfiliacion: TcxGridDBColumn;
    cxGrid1DBTableView1MontoReclamo: TcxGridDBColumn;
    cxGrid1DBTableView1MontoPagado: TcxGridDBColumn;
    qInsert: TADOQuery;
    qFind: TADOQuery;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    chkHumano: TcxCheckBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    dtFechaInicio: TcxDateEdit;
    dtFechaFin: TcxDateEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    mdLongitud: TcxMaskEdit;
    procedure cboShellArchivoClick(Sender: TObject);
    procedure btaceptarcuadreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function  CreaID : String;
  private
    { Private declarations }
    CodCliente  : String;
    CodGrupo    : String;
    RutaArchivo : String;
    Mensaje     : WideString;
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmCargaConcRec: TfrmCargaConcRec;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmCargaConcRec.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCargaConcRec.FormShow(Sender: TObject);
begin
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;

  If not DM.qrGrupoClienteArs.Active then
    DM.qrGrupoClienteArs.Open;

  If not DM.qrCliente.Active then
    DM.qrCliente.Open;
end;

procedure TfrmCargaConcRec.Run;
Var Muestrano_Ant     : String;
//    qrVerificaCliente         : TADOQuery;
begin
 showmodal;
 if ModalResult = mrNone then
 begin
       If (cbExtGrupoArs.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe Seleccionar el Grupo del Cliente.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cbExtGrupoArs.SetFocus;
          Exit;
       end;
       If cboShellArchivo.Text = EmptyStr then
       Begin
          EtMensajeDlg('Debe Seleccionar Arhivo de Carga Extensi�n CSV.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cboShellArchivo.SetFocus;
          Exit;
       end;
       If (dtFechaInicio.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe digitar la fecha inicio generaci�n.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          dtFechaInicio.SetFocus;
          Exit;
       end;
       If (dtFechaFin.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe digitar la fecha fin generaci�n.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          dtFechaFin.SetFocus;
          Exit;
       end;

       If MessageDlg('Desea Cargar Archivo '+cboShellArchivo.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
       begin
          Application.ProcessMessages;
          If cbExtGrupoArs.Text<>EmptyStr then
             CodGrupo:= cbExtGrupoArs.EditValue
          else
             CodGrupo:= EmptyStr;

          If cboShellArchivo.Text<>EmptyStr then
             RutaArchivo:= cboShellArchivo.EditValue
          else
             RutaArchivo:= EmptyStr;
          JvCsvDataSet1.FileName:=cboShellArchivo.EditValue;
       end;
  end;
 end;

procedure TfrmCargaConcRec.btaceptarcuadreClick(Sender: TObject);
Var StrArchivo,Num_Aprob,ID : String;
     Monto_Dif           : Currency;
     Long_Auto           : Integer;
begin
Try
       If (cbExtGrupoArs.Text = EmptyStr) Then
       Begin
          EtMensajeDlg('Debe Seleccionar el Grupo del Cliente.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cbExtGrupoArs.SetFocus;
          Exit;
       end;
       If (dtFechaInicio.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe digitar la fecha inicio generaci�n.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          dtFechaInicio.SetFocus;
          Exit;
       end;
       If (dtFechaFin.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe digitar la fecha fin generaci�n.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          dtFechaFin.SetFocus;
          Exit;
       end;
       If cboShellArchivo.Text = EmptyStr then
       Begin
          EtMensajeDlg('Debe Seleccionar Arhivo de Carga Extensi�n CSV.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cboShellArchivo.SetFocus;
          Exit;
       end
       Else
       If (UpperCase(cboShellArchivo.EditText)='C:\CONCILIACIONARS') then
       Begin
          EtMensajeDlg('Debe Seleccionar Arhivo de Carga Extensi�n CSV.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cboShellArchivo.SetFocus;
          Exit;
       end
       Else
       If (Length(mdLongitud.EditText)= 0) then
       Begin
          EtMensajeDlg('Debe Seleccionar la longiutd de la autorizacion.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          mdLongitud.SetFocus;
          Exit;
       end
       Else

       If (Length(cbExtGrupoArs.Text) > 0) And (UpperCase(cboShellArchivo.EditText)<>'C:\CONCILIACIONARS') then
       begin
          StrArchivo:=cboShellArchivo.EditingValue;
          If UpperCase(Copy(StrArchivo,1,3)+'_'+Copy(StrArchivo,5,3))<>UpperCase(cbExtGrupoArs.EditingValue) then
          begin
           EtMensajeDlg('Grupo de Ars no est� relacionado con archivo seleccionado.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
           cbExtGrupoArs.SetFocus;
           Exit;
          end;
       end;

       If MessageDlg('Desea Cargar Archivo '+cboShellArchivo.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
       begin
          Application.ProcessMessages;
          If cbExtGrupoArs.Text<>EmptyStr then
             CodGrupo:= cbExtGrupoArs.EditValue
          else
             CodGrupo:= EmptyStr;

          If cboShellArchivo.Text<>EmptyStr then
             RutaArchivo:= Copy(cboShellArchivo.EditValue,4)
          else
             RutaArchivo:= EmptyStr;
          ID := CreaID;
          qfind.Close;
          qfind.SQL.Text := ' Select NombreArchivo from ConciliacionArs_Head Where NombreArchivo='#39+RutaArchivo+#39;
          qfind.Open;
          if qfind.RecordCount > 0 then
          begin
             EtMensajeDlg('Archivo ya ha sido generado.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
             cboShellArchivo.SetFocus;
             Exit;
          end
          else
          begin
               qfind.Close;
               qfind.sql.Clear;
               qfind.SQL.Text := ' Select Top 1 Cod_Grupo,Descripcion From ClienteArs Where Cod_Grupo='+#39+CodGrupo+#39;
               qfind.Open;
               if qfind.RecordCount > 0 then
               begin
                Try
                   With qInsert,sql do
                   begin
                     Close;
                     Clear;
                     qInsert.Sql.Add('  INSERT INTO ConciliacionArs_Head (ID, GrupoArs, NombreCliente, Estado, Fecha, Seleccionar, NombreArchivo) '+
                                 ' VALUES ('+#39+ID+#39+','+#39+qfind.FieldByName('Cod_Grupo').AsString+#39+','+
                                    #39+qfind.FieldByName('Descripcion').AsString+#39+','+#39+'A'+#39+','+
                                    #39+formatdatetime('yyyymmdd',DM.SystemDate)+#39+','+#39+'0'+#39+','+
                                    #39+RutaArchivo+#39+')');
                     ExecSQL;
                   End
                Except
                   Raise exception.CreateFmt('Error Creando ConciliacionArs_Head.', []);
               end;
              end;
          end;
          spMensaje.Visible :=True;
          JvCsvDataSet1.Active        := False;
          JvCsvDataSet1.FileName      := cboShellArchivo.Text;
          JvCsvDataSet1.CsvKeyDef     :='NO.AUTORIZACION';
          JvCsvDataSet1.HasHeaderRow  := True;
          JvCsvDataSet1.LoadsFromFile := True;
          JvCsvDataSet1.Active        := True;
          If JvCsvDataSet1.RecordCount > 0 then
          Begin
            JvCsvDataSet1.First;
            While Not JvCsvDataSet1.Eof do
            begin

              Num_Aprob := JvCsvDataSet1NoAutorizacion.AsString;
              Long_Auto := mdLongitud.EditValue;
              if (cbExtGrupoArs.EditingValue = 'ARS_HUM') Or (cbExtGrupoArs.EditingValue = 'ARS_PRI') then
              Begin
//                if(Length(JvCsvDataSet1NoAutorizacion.AsString) > 9) and (chkHumano.Checked = True) Then
//                   Num_Aprob := JvCsvDataSet1NoAutorizacion.AsString
//                else If (Length(JvCsvDataSet1NoAutorizacion.AsString) > 9) and (chkHumano.Checked = False) Then
//                   Num_Aprob := RightStr(JvCsvDataSet1NoAutorizacion.AsString,7)
//                else
                   Num_Aprob := RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto);

                If(Length(Num_Aprob) = Long_Auto) then
                Begin
                   qfind.Close;
                   qfind.SQL.Text := ' Select * from PedidoVenta p inner join ClienteArs c  on p.ClienteID=c.ClienteID'+
                                     ' Where c.Cod_Grupo='+#39+CodGrupo+#39+' and p.AprobacionNo='+#39+Num_Aprob+#39+
                                     ' and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39;
                   qfind.Open;

                   If (qfind.RecordCount=0) then
                   begin
                       qfind.Close;
                       qfind.SQL.Text := ' Select * from PedidoVenta p inner join ClienteArs c  on p.ClienteID=c.ClienteID'+
                                         ' Where c.Cod_Grupo='+#39+CodGrupo+#39+' and p.AprobacionNo Like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                         ' and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39;
                       qfind.Open;
                   End
                end
                else
                begin
                       qfind.Close;
                       qfind.SQL.Text := ' Select * from PedidoVenta p inner join ClienteArs c  on p.ClienteID=c.ClienteID'+
                                         ' Where c.Cod_Grupo='+#39+CodGrupo+#39+' and p.AprobacionNo like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                         ' and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39;
                       qfind.Open;
                end
              end
              else
              begin
                if JvCsvDataSet1NoAutorizacion.Text<>'' then
                begin
                   qfind.Close;
                   qfind.SQL.Text := ' Select * from PedidoVenta p inner join ClienteArs c  on p.ClienteID=c.ClienteID'+
                                     ' Where c.Cod_Grupo='+#39+CodGrupo+#39+' and p.AprobacionNo like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                     ' and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39;
                   qfind.Open;
                end
                else
                begin
                   qfind.Close;
                   qfind.SQL.Text := ' Select * from PedidoVenta p inner join ClienteArs c  on p.ClienteID=c.ClienteID'+
                                     ' Where c.Cod_Grupo='+#39+CodGrupo+#39+' and p.AprobacionNo like '+#39+'%'+'XFREF6'+#39+
                                     ' and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39;
                   qfind.Open;
                end;
              end;
              if qFind.RecordCount > 0 then
              begin

                          If Not(qFind.FieldByName('MontoFacturado').AsFloat=JvCsvDataSet1MontoPagado.AsFloat) Then
                          Begin
                              Monto_Dif := qFind.FieldByName('MontoFacturado').AsFloat - JvCsvDataSet1MontoPagado.AsFloat;
                              if(abs(Monto_Dif) > 40) Then
                              Begin
                                 //  Insertar en tabla de ArsConciaci�n
                                 Try
                                   With qInsert,sql do
                                   begin
                                       Close;
                                       Clear;
                                       Text  :='  INSERT INTO ConciliacionArs (ID,Num_Aprobacion, ClienteID, Fecha, NombrePaciente, PolizaID, Estatus, Monto_Reclamdo, Monto_Aprobado, Diferencia,Muestrano) '+
                                               '  VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10)';
                                       Parameters[0].Value := ID;
                                       Parameters[1].Value := Num_Aprob;
                                       Parameters[2].Value := qFind.FieldByName('ClienteId').AsString;
                                       Parameters[3].Value := JvCsvDataSet1Fecha.AsDateTime;
                                       Parameters[4].Value := JvCsvDataSet1Paciente.AsString;
                                       Parameters[5].Value := JvCsvDataSet1NoAfiliacion.AsString;
                                       Parameters[6].Value := 'I';
                                       Parameters[7].Value := qFind.FieldByName('MontoFacturado').AsFloat;
                                       Parameters[8].Value := JvCsvDataSet1MontoPagado.AsFloat;
                                       Parameters[9].Value := qFind.FieldByName('MontoFacturado').AsFloat-JvCsvDataSet1MontoPagado.AsFloat;
                                       Parameters[10].Value := qFind.FieldByName('Muestrano').AsString;
                                       ExecSQL;
                                     End
                                    Except
                                           Raise exception.CreateFmt('Error Creando ConciliacionArs.', []);
                                    end;
                                   With qInsert,sql do
                                   begin
                                     Close;
                                     Clear;
                                     Add('  UPDATE PedidoVenta '+
                                         '  Set Estatus_Ars='+#39+'I'+#39+','+'Pagado_Ars='+FloatToStr(JvCsvDataSet1MontoPagado.AsFloat)+','+'ID_ARS='+#39+ID+#39+',ReConciliado='+'1'+
                                         '  Where ClienteID='+#39+qFind.FieldByName('ClienteId').AsString+#39+' and AprobacionNo Like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                         '  and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39);
                                     ExecSQL;
                                   end;
                              end
                              Else
                              Begin
                                 With qInsert,sql do
                                 begin
                                     Close;
                                     Clear;
                                     Add('  UPDATE PedidoVenta '+
                                         '  Set Estatus_Ars='+#39+'C'+#39+','+'Pagado_Ars='+FloatToStr(qfind.FieldByName('MontoFacturado').AsFloat)+','+
                                         '  ReConciliado='+'1'+','+'ID_ARS='+#39+ID+#39+
                                         '  Where ClienteID='+#39+qFind.FieldByName('ClienteId').AsString+#39+' and AprobacionNo Like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                         '  and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39);
                                     ExecSQL;
                                 end;
                              end
                          end
                          else
                          begin
                               With qInsert,sql do
                               begin
                                   Close;
                                   Clear;
                                   Add('  UPDATE PedidoVenta '+
                                       '  Set Estatus_Ars='+#39+'C'+#39+','+'Pagado_Ars='+FloatToStr(qfind.FieldByName('MontoFacturado').AsFloat)+','+
                                       '  ReConciliado='+'1'+','+'ID_ARS='+#39+ID+#39+
                                       '  Where ClienteID='+#39+qFind.FieldByName('ClienteId').AsString+#39+' and AprobacionNo Like '+#39+'%'+RightStr(JvCsvDataSet1NoAutorizacion.AsString,Long_Auto)+#39+
                                       '  and fecha between '+#39+FormatDateTime('yyyymmdd', dtfechainicio.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd', dtfechafin.Date)+#39);
                                   ExecSQL;
                               end;
                          end
//                     end
              end
              Else
              Begin
                Try
                   If Num_Aprob='' then Num_Aprob:=IntToStr(Random(5000));
                   With qInsert,sql do
                   begin
                         Close;
                         Clear;
                         Text  :='  INSERT INTO ConciliacionArs (ID,Num_Aprobacion, ClienteID, Fecha, NombrePaciente, PolizaID, Estatus, Monto_Reclamdo, Monto_Aprobado, Diferencia,Muestrano) '+
                                 '  VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10)';
                         Parameters[0].Value := ID;
                         Parameters[1].Value := Num_Aprob;
                         Parameters[2].Value := qFind.FieldByName('ClienteId').AsString;
                         Parameters[3].Value := JvCsvDataSet1Fecha.AsDateTime;
                         Parameters[4].Value := JvCsvDataSet1Paciente.AsString;
                         Parameters[5].Value := JvCsvDataSet1NoAfiliacion.AsString;
                         Parameters[6].Value := 'N';
                         Parameters[7].Value := JvCsvDataSet1MontoReclamo.AsFloat;
                         Parameters[8].Value := JvCsvDataSet1MontoPagado.AsFloat;
                         Parameters[9].Value := JvCsvDataSet1MontoReclamo.AsFloat-JvCsvDataSet1MontoPagado.AsFloat;
                         Parameters[10].Value := qFind.FieldByName('Muestrano').AsString;
                         ExecSQL;
                    End
                   Except
                         Raise exception.CreateFmt('Error Creando ConciliacionArs.', []);
                   end;
              end;
             JvCsvDataSet1.Next;
            end;
            JvCsvDataSet1.First;
            JvCsvDataSet1.Refresh;
            spMensaje.Visible :=False;
          end;
       end;
  Except
      Raise exception.CreateFmt('Error Procedimiento aceptar Paciente '+JvCsvDataSet1Paciente.AsString+' y Num_Aprob = '+Num_Aprob, []);
  end;
end;

procedure TfrmCargaConcRec.cboShellArchivoClick(Sender: TObject);
begin
  If cbExtGrupoArs.Text = EmptyStr then
  begin
       EtMensajeDlg('Grupo de Ars est� en blanco.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
       cbExtGrupoArs.SetFocus;
       Exit;
  end;
end;

function TfrmCargaConcRec.CreaID : String;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' SELECT NEWID() AS ID ';
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.FieldByName('ID').Value
  else
    result := EmptyStr;
  FreeAndNil(qconsulta);
end;
end.
