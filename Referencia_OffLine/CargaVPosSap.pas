unit CargaVPosSap;

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
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TfrmCargaVPosSap = class(TForm)
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
    dxLayoutControl3Item42: TdxLayoutItem;
    GrupoToma: TdxLayoutGroup;
    FechaIni: TcxDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    FechaFin: TcxDateEdit;
    dxLayoutControl3Item33: TdxLayoutItem;
    cbExtCliente: TcxExtLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cbExtGrupoCliente: TcxExtLookupComboBox;
    qconsulta: TADOQuery;
    qrVerificaCliente: TADOQuery;
    spMensaje: TLMDSimplePanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    qrVerificaCFiscal: TADOQuery;
    qrClienteck: TADOQuery;
    qrPeriodo: TADOQuery;
    procedure cbExtGrupoClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function  ActCargaVPosSap  : Boolean;
    Function  ActPreFacturaSap : Boolean;
  private
    { Private declarations }
    CodCliente  : String;
    CodGrupo    : String;
    qfind       : TADOQuery;
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmCargaVPosSap: TfrmCargaVPosSap;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmCargaVPosSap.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCargaVPosSap.FormShow(Sender: TObject);
begin
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;

  If not DM.qrGrupoClienteFact.Active then
    DM.qrGrupoClienteFact.Open;
    
  If not DM.qrCliente.Active then
    DM.qrCliente.Open;
  DM.qrParametro.close;
  DM.qrParametro.open;
end;

procedure TfrmCargaVPosSap.Run;
Var Muestrano_Ant,Mensaje     : String;
//    qrVerificaCliente         : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
       If (cbExtCliente.Text = EmptyStr) And (cbExtGrupoCliente.Text = EmptyStr) then
       Begin
          EtMensajeDlg('Debe Seleccionar el Cliente o el Grupo.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          cbExtCliente.SetFocus;
          Exit;
       end;
       If FechaIni.Text = EmptyStr then
       Begin
          EtMensajeDlg('Debe Seleccionar Fecha de Inicio.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          FechaIni.SetFocus;
          Exit;
       end;
       If FechaFin.Text = EmptyStr then
       Begin
          EtMensajeDlg('Debe Seleccionar Fecha Fin.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          FechaFin.SetFocus;
          Exit;
       end;
       If FechaFin.Date > DM.Buscar_Fecha_Actual then
       Begin
          EtMensajeDlg('Fecha Final No puede ser mayor que la fecha del día.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          If FechaFin.Enabled = True Then FechaFin.SetFocus;
          Exit;
       end;

       If MessageDlg('Desea Cargar Ventas del Cliente '+cbExtCliente.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
       begin
          Application.ProcessMessages;
          If cbExtCliente.Text<>EmptyStr then
             CodCliente:= cbExtCliente.EditValue
          else
             CodCliente:= EmptyStr;

          If cbExtGrupoCliente.Text<>EmptyStr then
             CodGrupo:= cbExtGrupoCliente.EditValue
          else
             CodGrupo:= EmptyStr;

// Crea en Base de Datos Interfaz en Tabla Pedido y PedidoDetalle
// Valida Si el Cliente Existe en SAP

//          If (CodCliente = '') and (CodGrupo<>'') Then
//          begin
             forms.Application.ProcessMessages;
             spMensaje.Visible := True;
             Label1.Caption:='Validando Buscando Clientes del Grupo.';
             With qconsulta, sql do
             begin
                Close;
                if (CodGrupo<>'') And (CodCliente='')  then
                begin
                    If StrToInT(CodGrupo) < 50 then
                    Begin
                        Text := ' Select Distinct ClienteID,ClienteNombre from PtEntradaPaciente '+#13+
                                ' Where Origen = '+#39+CodGrupo+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+' And RecID In (Select refrecid from ptentradapacientedetalle where Dataareaid='+#39+'ldr'+#39+')';
                    end
                    else
                    begin
                        qFind := DM.Find('SELECT GrupoID FROM ptClienteBlk (nolock) WHERE GrupoIDFac = :GrupoID', CodGrupo);
                        If Length(qFind.FieldByName('GrupoID').AsString) = 2 then
                        begin
                            Text := ' Select Distinct e.ClienteID,ClienteNombre from PtEntradaPaciente e Inner Join ptClienteBlk c '+
                                    ' On e.ClienteID=c.ClienteId Where GrupoIDFac = '+#39+CodGrupo+#39+' And e.Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                    ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                    ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+' And RecID In (Select refrecid from ptentradapacientedetalle where Dataareaid='+#39+'ldr'+#39+')';
                        end;

                    end;
                end;
                if (CodCliente<>'') And (CodGrupo='') then
                begin
                    Text := ' Select Distinct ClienteID,ClienteNombre from PtEntradaPaciente '+#13+
                            ' Where ClienteID = '+#39+CodCliente+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                            ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                            ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+' And RecID In (Select refrecid from ptentradapacientedetalle where Dataareaid='+#39+'ldr'+#39+')';
                end;
                if (CodCliente<>'') And (CodGrupo<>'') then
                begin
                    If StrToInT(CodGrupo) < 50 then
                    Begin
                        Text := ' Select Distinct ClienteID,ClienteNombre from PtEntradaPaciente '+#13+
                                ' Where Origen = '+#39+CodGrupo+#39+' And ClienteID = '+#39+CodCliente+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+' And RecID In (Select refrecid from ptentradapacientedetalle where Dataareaid='+#39+'ldr'+#39+')';
                    end
                    else
                    begin
                        Text := ' Select Distinct e.ClienteID,ClienteNombre from PtEntradaPaciente e Inner Join ptClienteBlk c '+
                                ' On e.ClienteID=c.ClienteId Where GrupoIDFac ='+#39+CodGrupo+#39+' And e.ClienteID = '+#39+CodCliente+#39+' And e.Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+' And RecID In (Select refrecid from ptentradapacientedetalle where Dataareaid='+#39+'ldr'+#39+')';
                    end;
                end;
                Open;
//             end;
            if (qconsulta.RecordCount > 0) then
            begin
             qconsulta.First;
//             qrVerificaCliente := DM.NewQuery;
             Mensaje:=EmptyStr;
             forms.Application.ProcessMessages;
             Label1.Caption:='Validando Existencia Cliente(s) en SAP.';
             While not qconsulta.eof do
             begin
                 With qrVerificaCliente, sql do
                 begin
                    Close;
                    Text := '  Declare @fechaFinal Datetime '+
                            '  Set @fechaFinal='+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+
                            '  Select Periodo_Venc_Factura=DateAdd(mm,ExtraMonth,Convert(smalldatetime,'+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+',108))+ExtraDays '+
                            '  from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OCRD c inner join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OCTG t on c.GroupNum=t.GroupNum '+
                            '  Where  CardCode='+#39+qconsulta.Fieldbyname('ClienteID').AsString+#39;
                    Open;
                 end;
                 With qrPeriodo, sql do
                 begin
                    Close;
                    Text := '  Declare @fechaFinal Datetime '+
                            '  Set @fechaFinal='+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+
                            '  Select Periodo_Venc_Periodo=T_DueDate from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OFPR '+
                            '  Where Code=Ltrim(Str(Year(@fechaFinal)))+'#39'-'+#39+'+LTrim(Str(Month(@fechaFinal))) ';
                    Open;
                 end;
                 if (Length(qrVerificaCliente.FieldByname('Periodo_Venc_Factura').AsString)>0) And
                    (Length(qrPeriodo.FieldByname('Periodo_Venc_Periodo').AsString)>0) Then
                 begin
                     If (qrVerificaCliente.FieldByname('Periodo_Venc_Factura').AsDatetime) > (qrPeriodo.FieldByname('Periodo_Venc_Periodo').AsDatetime) Then
                     begin
                            Mensaje:=Mensaje+'Cliente ('+qconsulta.Fieldbyname('ClienteID').AsString+' '+qconsulta.Fieldbyname('ClienteNombre').AsString+').  Vencimiento periodo contable es menor que el Vencimiento de la Factura. Comuniquese con computos.'+#13;
                     end;
                 end;
                 With qrVerificaCliente, sql do
                 begin
                    Close;
                    Text := ' Select CardCode from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OCRD Where CardCode='+#39+qconsulta.Fieldbyname('ClienteID').AsString+#39;
                    Open;
                    if (qrVerificaCliente.FieldByname('CardCode').AsString = EmptyStr) Then
                    begin
                        Mensaje:=Mensaje+'Cliente ('+qconsulta.Fieldbyname('ClienteID').AsString+' '+qconsulta.Fieldbyname('ClienteNombre').AsString+').  No existe en SAP.'+#13;
                    end;
                 end;

                 With qrVerificaCFiscal, sql do
                 begin
                    Close;
                    Text := ' SELECT U_Comprob from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OCRD Where CardCode='+#39+qconsulta.Fieldbyname('ClienteID').AsString+#39;
                    Open;
                    if (qrVerificaCFiscal.FieldByname('U_Comprob').AsString = EmptyStr) Then
                    begin
                        Mensaje:=Mensaje+'Tipo Comprobante del Cliente ('+qconsulta.Fieldbyname('ClienteID').AsString+' '+qconsulta.Fieldbyname('ClienteNombre').AsString+').  Está en blanco en SAP.'+#13;
                    end;
                 end;
                 If (qconsulta.Fieldbyname('ClienteID').AsString<>EmptyStr) then
                 begin
                     With qrClienteck, sql do
                     begin
                        Close;
                        Text := ' Select Muestrano,PacienteID,NombrePaciente From PtEntradaPaciente where ClienteID='+#39+qconsulta.Fieldbyname('ClienteID').AsString+#39+
                                ' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+
                                ' And Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                                ' And PacienteID Not In (Select ClienteID From Ptcliente)';
                        Open;
                        if (qrClienteck.RecordCount > 0) Then
                        begin
                            Mensaje:=Mensaje+'Entrada ('+qrClienteck.Fieldbyname('Muestrano').AsString+' Cod. Paciente='+qrClienteck.Fieldbyname('PacienteID').AsString+' Nombre='+qrClienteck.Fieldbyname('NombrePaciente').AsString+').  No existe Cod. Paciente en Punto de Venta.  Favor Registrar PacienteID válido en la Entrada.'+#13;
                        end;
                     end;
                 end;
                 qconsulta.Next;
             end;
            end;
          end;
//Fin validación de Clientes
// Valida Si Las pruebas facturadas existen en SAP
//          If (CodCliente = '') and (CodGrupo<>'') Then
//          begin
             forms.Application.ProcessMessages;
             Label1.Caption:='Validando Buscando Servicios del Grupo.';
             With qconsulta, sql do
             begin
                Close;
                if (CodGrupo<>'') And (CodCliente='')  then
                begin
                    If StrToInT(CodGrupo) < 50 then
                    Begin
                      Text := ' Select Distinct PruebaID,Descripcion from PtEntradaPacienteDetalle Where RefrecID in ( Select  recid from PtEntradaPaciente '+
                              ' Where Origen = '+#39+CodGrupo+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                              ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                              ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+')';
                    end
                    else
                    begin
                        If Length(qFind.FieldByName('GrupoID').AsString) = 2 then
                        begin
                          Text := ' Select Distinct PruebaID,Descripcion from PtEntradaPacienteDetalle Where RefrecID in ( Select recid from PtEntradaPaciente e Inner Join ptClienteBlk c '+
                                  ' On e.ClienteID=c.ClienteId Where GrupoIDFac = '+#39+CodGrupo+#39+' And e.Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                  ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                  ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+')';
                        end;
                    end;
                end;
                if (CodCliente<>'') And (CodGrupo='') then
                begin
                    Text := ' Select Distinct PruebaID,Descripcion from PtEntradaPacienteDetalle Where RefrecID in ( Select  recid from PtEntradaPaciente '+
                            ' Where ClienteID = '+#39+CodCliente+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                            ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                            ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+')';
                end;
                if (CodCliente<>'') And (CodGrupo<>'') then
                begin
                    If StrToInT(CodGrupo) < 50 then
                    Begin
                      Text := ' Select Distinct PruebaID,Descripcion from PtEntradaPacienteDetalle Where RefrecID in ( Select  recid from PtEntradaPaciente '+
                              ' Where Origen = '+#39+CodGrupo+#39+' And ClienteID = '+#39+CodCliente+#39+' And Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                              ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                              ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+')';
                    end
                    else
                    begin
                      qFind := DM.Find('SELECT GrupoID FROM ptClienteBlk (nolock) WHERE GrupoIDFac = :GrupoID', CodGrupo);
                      If Length(qFind.FieldByName('GrupoID').AsString) = 2 then
                      begin
                          Text := ' Select Distinct PruebaID,Descripcion from PtEntradaPacienteDetalle Where RefrecID in ( Select  recid from PtEntradaPaciente e Inner Join ptClienteBlk c '+
                                  ' On e.ClienteID=c.ClienteId Where GrupoIDFac = '+#39+CodGrupo+#39+' And e.ClienteID = '+#39+CodCliente+#39+' And e.Estatus='+#39+'0'+#39+' And Estatus_Sap='+#39+'A'+#39+
                                  ' And Transferido='+#39+'0'+#39+' And Fecha between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+
                                  ' And '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39+')';
                      end;
                    end;
                end;
                Open;
//             end;
            if (qconsulta.RecordCount > 0) then
            begin
             qconsulta.First;
//             qrVerificaCliente := DM.NewQuery;
//             Mensaje:=EmptyStr;
             forms.Application.ProcessMessages;
             Label1.Caption:='Validando Existencia Servicio(s) en SAP.';
             While not qconsulta.eof do
             begin
                 With qrVerificaCliente, sql do
                 begin
                    Close;
                    Text := ' Select ItemCode From '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OITM Where ItemCode='+#39+qconsulta.Fieldbyname('PruebaID').AsString+#39+' And ItmsGrpCod in (125,118)';
                    Open;
                    if (qrVerificaCliente.FieldByname('ItemCode').AsString = EmptyStr) Then
                    begin
                        Mensaje:=Mensaje+'Servicio ('+qconsulta.Fieldbyname('PruebaID').AsString+' '+qconsulta.Fieldbyname('Descripcion').AsString+').  No existe en SAP.'+#13;
                    end;
                 end;
                 qconsulta.Next;
             end;
            end;
//Fin validación de pruebas
            If Mensaje <> EmptyStr then
            begin
                Showmessage(Mensaje);
                Exit;
            end;
            spMensaje.Visible := False;
            Label1.Caption:='PROCESANDO POR FAVOR ESPERE...';
            FreeAndNil(qrVerificaCliente);
            FreeAndNil(qconsulta);

          If Not ActCargaVPosSap Then
          begin
            if CodCliente <> '' then
            begin
              Raise exception.CreateFmt( ' NO Se Pudo Generar la carga del Cliente '+cbExtCliente.text+'.'+ #13 +
                                      ' Se Ha Generado Un Error en ActCargaVPosSap. '+ #13 +
                                      ' Por Favor, Intentelo Nuevamente.!!!', []);
            end
            else if (CodCliente ='') and (CodGrupo <> '') then
            begin
              Raise exception.CreateFmt( ' NO Se Pudo Generar la carga del Grupo Cliente '+cbExtGrupoCliente.text+'.'+ #13 +
                                      ' Se Ha Generado Un Error en ActCargaVPosSap. '+ #13 +
                                      ' Por Favor, Intentelo Nuevamente.!!!', []);
            end;
          end
          else
          begin
            if CodCliente <> '' then
              DM.Info('La carga del cliente '+cbExtCliente.Text+' fué realizada satisfactoriamente.')
            else if (CodCliente ='') and (CodGrupo<>'') then
              DM.Info('La carga del cliente '+cbExtGrupoCliente.Text+' fué realizada satisfactoriamente.');
          end;
          FreeAndNil(qFind);
       end;
       end;
  end;
 end;
function TfrmCargaVPosSap.ActCargaVPosSap : Boolean;
begin
Result := False;
Try
  with  dm.sp_ActCargaVPosSap, Parameters do
  begin
    ParamByName('@GrupoID').Value       := CodGrupo;
    ParamByName('@Cte').Value           := CodCliente;
    ParamByName('@Fecha_Desde').Value   := FormatDateTime('yyyymmdd', FechaIni.Date);
    ParamByName('@Fecha_Hasta').Value   := FormatDateTime('yyyymmdd', FechaFin.Date);
    ExecProc;
    Result:= True;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End

end;
function TfrmCargaVPosSap.ActPreFacturaSap : Boolean;
begin
Result := False;
Try
  with  dm.ActPreFacturaSap, Parameters do
  begin
    ParamByName('@GrupoID').Value         := CodGrupo;
    ParamByName('@ClienteID').Value       := CodCliente;
    ParamByName('@FechaInicial').Value    := FormatDateTime('yyyymmdd', FechaIni.Date);
    ParamByName('@FechaFinal').Value      := FormatDateTime('yyyymmdd', FechaFin.Date);
    ExecProc;
    Result:= True;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;

procedure TfrmCargaVPosSap.cbExtGrupoClienteExit(Sender: TObject);
begin
  if cbExtGrupoCliente.Text = EmptyStr then
  begin
       With DM.qrCliente, sql do
       begin
          Close;
          Text := ' Select c.Clienteid,c.Nombre As Nombre_Cliente, g.Descripcion as Grupo_Cliente '+
                  ' From PtCliente c  (nolock) Inner Join PtGrupoCliente g  (nolock) On '+
                  ' c.GrupoCliente=g.GrupoCliente '+
                  ' WHERE c.GrupoCliente Not in  ('+#39+'03'+#39+','+#39+'04'+#39+','+#39+'05'+#39+')'+
                  ' AND c.DataAreaId = '+#39+'ldr'+#39+' And g.DataAreaId = '+#39+'ldr'+#39;
          Open;
       end;
  end
  else if cbExtGrupoCliente.EditValue < 50 Then
  begin
       With DM.qrCliente, sql do
       begin
          Close;
          Text := ' Select c.Clienteid,c.Nombre As Nombre_Cliente, g.Descripcion as Grupo_Cliente '+
                  ' From PtCliente c  (nolock) Inner Join PtGrupoCliente g  (nolock) On '+
                  ' c.GrupoCliente=g.GrupoCliente '+
                  ' WHERE c.GrupoCliente Not in  ('+#39+'03'+#39+','+#39+'04'+#39+','+#39+'05'+#39+')'+
                  ' AND c.DataAreaId = '+#39+'ldr'+#39+' And g.DataAreaId = '+#39+'ldr'+#39+' And c.GrupoCliente='+#39+cbExtGrupoCliente.EditValue+#39;
          Open;
       end;
  end
  else if cbExtGrupoCliente.EditValue > 50 Then
  begin
       With DM.qrCliente, sql do
       begin
          Close;
          Text := ' Select c.Clienteid,c.Nombre As Nombre_Cliente, g.Descripcion as Grupo_Cliente '+
                  ' From PtCliente c  (nolock) Inner Join PtGrupoCliente g  (nolock) On '+
                  ' c.GrupoCliente=g.GrupoCliente '+
                  ' WHERE c.GrupoCliente Not in  ('+#39+'03'+#39+','+#39+'04'+#39+','+#39+'05'+#39+')'+
                  ' AND c.DataAreaId = '+#39+'ldr'+#39+' And g.DataAreaId = '+#39+'ldr'+#39+
                  ' AND clienteid in (Select clienteID from [dbo].[ptClienteBlk] Where GruPoIDFac='+#39+cbExtGrupoCliente.EditValue+#39+')';
          Open;
       end;
  end;

end;

end.
