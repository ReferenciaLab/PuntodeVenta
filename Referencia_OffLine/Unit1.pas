unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, StdCtrls, cxControls, cxContainer, cxEdit, cxCurrencyEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TForm1 = class(TForm)
    cgReclamacionDetalle: TcxGrid;
    dbDatosRec: TcxGridDBTableView;
    dbDatosRecCodigo: TcxGridDBColumn;
    dbDatosRecDescripcion: TcxGridDBColumn;
    dbDatosRecMontoAfiliado: TcxGridDBColumn;
    dbDatosRecMontoArs: TcxGridDBColumn;
    dbDatosRecError: TcxGridDBColumn;
    lvDatosRec: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    txtCliente: TcxCurrencyEdit;
    Label2: TLabel;
    CurMontoAfiliado: TcxCurrencyEdit;
    Label3: TLabel;
    CurTotal: TcxCurrencyEdit;
    Label4: TLabel;
    CurMontoTotalPV: TcxCurrencyEdit;
    Label5: TLabel;
    CurPorcentajeCob: TcxCurrencyEdit;
    Label6: TLabel;
    CurDiferencia: TcxCurrencyEdit;
    Label7: TLabel;
    txtReclamacion: TcxCurrencyEdit;
    Label8: TLabel;
    txtTipoPlan: TcxTextEdit;
    Label9: TLabel;
    txtEstado: TcxTextEdit;
    Label10: TLabel;
    txtAfiliado: TcxCurrencyEdit;
    btImprimir: TcxButton;
    BtAceptar: TcxButton;
    BtCancelar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
