unit UAS400;

interface

uses
  SysUtils, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TInterfaseAS = class(TDataModule)
    ASConnection: TADOConnection;
    qrASDetalle: TADOQuery;
    qrASEncabezado: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASEncabezadoIN3MUE: TBCDField;
    qrASEncabezadoIN3NOM: TStringField;
    qrASEncabezadoIN3HOR: TIntegerField;
    qrASEncabezadoIN3DIR: TStringField;
    qrASEncabezadoIN3EDA: TIntegerField;
    qrASEncabezadoIN3NAC: TIntegerField;
    qrASEncabezadoIN3TEL: TStringField;
    qrASEncabezadoIN3CAT: TStringField;
    qrASEncabezadoIN3FEC: TIntegerField;
    qrASEncabezadoIN3USU: TStringField;
    qrASEncabezadoIN3SEX: TStringField;
    qrASEncabezadoIN3CED: TBCDField;
    qrASEncabezadoIN3SUC: TIntegerField;
    qrASEncabezadoIN3CDO: TIntegerField;
    qrASEncabezadoIN3DOC: TStringField;
    qrASEncabezadoIN3CLI: TBCDField;
    qrASEncabezadoIN3FAC: TBCDField;
    qrASEncabezadoIN3PAG: TBCDField;
    qrASEncabezadoIN3RES: TBCDField;
    qrASEncabezadoIN3EPA: TIntegerField;
    qrASEncabezadoIN3IPA: TIntegerField;
    qrASEncabezadoIN3EDO: TIntegerField;
    qrASEncabezadoIN3IDO: TIntegerField;
    qrASEncabezadoIN3RCL: TIntegerField;
    qrASEncabezadoIN3ICL: TIntegerField;
    qrASEncabezadoIN3COM: TStringField;
    qrASEncabezadoIN3ABR: TIntegerField;
    qrASEncabezadoIN3REL: TBCDField;
    qrASEncabezadoIN3REF: TStringField;
    qrASDetalleIN4MUE: TBCDField;
    qrASDetalleIN4COD: TIntegerField;
    qrASDetalleIN4NOM: TStringField;
    qrASDetalleIN4STS: TStringField;
    qrASDetalleIN4DEP: TIntegerField;
    qrASDetalleIN4FEC: TIntegerField;
    qrASDetalleIN4HOR: TIntegerField;
    qrASDetalleIN4USU: TStringField;
    qrASDetalleIN4COM: TStringField;
    qrASDetalleIN4PET: TIntegerField;
    qrASDetalleIN4ANT: TBCDField;
    qrASDetalleIN4TIP: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function SetEncabezado(
      Muestra: String;
      Nombre: String;
      Hora: String;
      Direccion: String;
      Edad: Integer;
      FechaNacimieto: String;
      Telefono: String;
      Categoria: String;
      Fecha: String;
      Usuario: String;
      Sexo: String;
      Cedula: String;
      Sucursal: Integer;
      CodigoDoctor: String;
      Doctor: String;
      CLiente: String;
      Facturado: Currency;
      Pagado: Currency;
      Resto: Currency;
      TipoResultadoPaciente: Integer;
      InternetPaciente: Integer;
      TipoResultadoDoctor: Integer;
      InternetDoctor: Integer;
      TipoResultadoCliente: Integer;
      InternetCliente: Integer;
      Comentario: String;
      PacienteClinica: Integer;
      NumeroRelacionInternet: Integer;
      ReferenciaExterna: String = ''
    ): Boolean;

    function SetDetalle(
      Muestra: String;
      CodigoPrueba: string;
      Prueba: String;
      Status: String;
      Depto: Integer;
      FechaEntrada: String;
      Hora: string;
      Usuario: String;
      Comentario: String;
      Peticion2Muestra: Integer;
      NumeroMuestraAnterior: Integer;
      TipoMuestra: String
    ): Boolean;


  end;

var
  InterfaseAS: TInterfaseAS;
    Const
      _AreaId = 'bds';

implementation
uses DataModule, Main, StrUtils, Windows;

{$R *.dfm}

function TInterfaseAS.SetDetalle(
  Muestra: String;
  CodigoPrueba: string;
  Prueba: String;
  Status: String;
  Depto: Integer;
  FechaEntrada: String;
  Hora: string;
  Usuario: String;
  Comentario: String;
  Peticion2Muestra: Integer;
  NumeroMuestraAnterior: Integer;
  TipoMuestra: String  ): Boolean;

var
  Dia, Mes, Year: Word;
begin

  qrASDetalle.Close;
  qrASDetalle.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASDetalle.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASDetalle.Open;

  if qrASDetalle.Eof then
    qrASDetalle.Insert
  else
    qrASDetalle.Edit;

    qrASDetalleIN4MUE.AsString:= LeftStr(Muestra, 11);
    qrASDetalleIN4COD.AsString:= CodigoPrueba;
    qrASDetalleIN4NOM.AsString:= LeftStr(Prueba, 50);
    qrASDetalleIN4STS.AsString:= LeftStr(Status, 1);
    qrASDetalleIN4DEP.AsInteger:= Depto;

    DecodeDate(StrToDate(FechaEntrada), Year, Mes, Dia);
    qrASDetalleIN4FEC.AsString:=    RightStr('00' + IntToStr(Dia), 2) +
                                    RightStr('00' + IntToStr(Mes), 2) +
                                    RightStr('0000' + IntToStr(Year), 2);
    qrASDetalleIN4HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASDetalleIN4USU.AsString:= LeftStr(Usuario, 10);
    qrASDetalleIN4COM.AsString:= LeftStr(Comentario, 100);
    qrASDetalleIN4PET.AsInteger:= Peticion2Muestra;
    qrASDetalleIN4ANT.AsInteger:= NumeroMuestraAnterior;
    qrASDetalleIN4TIP.AsString:= LeftStr(TipoMuestra, 1);

  qrASDetalle.Post;
  qrASDetalle.Close;

end;

function TInterfaseAS.SetEncabezado(
  Muestra: String;
  Nombre: String;
  Hora: String;
  Direccion: String;
  Edad: Integer;
  FechaNacimieto: String;
  Telefono: String;
  Categoria: String;
  Fecha: String;
  Usuario: String;
  Sexo: String;
  Cedula: String;
  Sucursal: Integer;
  CodigoDoctor: String;
  Doctor: String;
  CLiente: String;
  Facturado: Currency;
  Pagado: Currency;
  Resto: Currency;
  TipoResultadoPaciente: Integer;
  InternetPaciente: Integer;
  TipoResultadoDoctor: Integer;
  InternetDoctor: Integer;
  TipoResultadoCliente: Integer;
  InternetCliente: Integer;
  Comentario: String;
  PacienteClinica: Integer;
  NumeroRelacionInternet: Integer;
  ReferenciaExterna: string = ''
): Boolean;
var
  Dia, Mes, Year: Word;

begin

 { qrASEncabezado.Close;
  qrASEncabezado.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASEncabezado.Open;
  }
  if qrASEncabezado.Eof then
    qrASEncabezado.Insert
  else
    qrASEncabezado.Edit;

    qrASEncabezadoIN3MUE.AsString:= LeftStr(Muestra, 11);
    qrASEncabezadoIN3NOM.AsString:= LeftStr(Nombre, 40);
    qrASEncabezadoIN3HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
    qrASEncabezadoIN3DIR.AsString:= LeftStr(Direccion, 40);
    qrASEncabezadoIN3EDA.AsInteger:= Edad;

    DecodeDate(StrToDate(Fechanacimieto), Year, Mes, Dia);
    qrASEncabezadoIN3NAC.AsString:=  RightStr('00' + IntToStr(Dia), 2) +
                                     RightStr('00' + IntToStr(Mes), 2) +
                                     RightStr('0000' + IntToStr(Year), 2);

    qrASEncabezadoIN3TEL.AsString:= Telefono;
    qrASEncabezadoIN3CAT.AsString:= Categoria;

    DecodeDate(StrToDate(Fecha), Year, Mes, Dia);
    qrASEncabezadoIN3FEC.AsString:=   RightStr('00' + IntToStr(Dia), 2) +
                                      RightStr('00' + IntToStr(Mes), 2) +
                                      RightStr('0000' + IntToStr(Year), 2);
    qrASEncabezadoIN3USU.AsString:= LeftStr(Usuario, 10);
    qrASEncabezadoIN3SEX.AsString:= LeftStr(Sexo, 1);
    qrASEncabezadoIN3CED.AsString:= LeftStr(Cedula, 11);
    qrASEncabezadoIN3SUC.AsInteger:= Sucursal;
    qrASEncabezadoIN3CDO.AsString:= CodigoDoctor;
    qrASEncabezadoIN3DOC.AsString:= Doctor;
    qrASEncabezadoIN3CLI.AsString:= Cliente;
    qrASEncabezadoIN3FAC.AsCurrency:= Facturado;
    qrASEncabezadoIN3PAG.AsCurrency:= Pagado;
    qrASEncabezadoIN3RES.AsCurrency:= Resto;
    qrASEncabezadoIN3EPA.AsInteger:= TiporesultadoPaciente;
    qrASEncabezadoIN3IPA.AsInteger:= InternetPaciente;
    qrASEncabezadoIN3EDO.AsInteger:= TipoResultadoDoctor;
    qrASEncabezadoIN3IDO.AsInteger:= InternetDoctor;
    qrASEncabezadoIN3RCL.AsInteger:= TipoResultadoCliente;
    qrASEncabezadoIN3ICL.AsInteger:= InternetCliente;
    qrASEncabezadoIN3COM.AsString:= LeftStr(Comentario, 50);
    qrASEncabezadoIN3ABR.AsInteger:= PacienteClinica;
    qrASEncabezadoIN3REL.AsInteger:= NumeroRelacionInternet;
    qrASEncabezadoIN3REF.AsString:= LeftStr(ReferenciaExterna, 20);

  qrASEncabezado.Post;
  qrASEncabezado.Close;

end;

end.
