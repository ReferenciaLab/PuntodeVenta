unit OpcionesPrestamo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, cxGraphics, cxDropDownEdit, cxCalc, cxDBEdit,
  dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxImageComboBox,
  DB, ADODB, Menus, StdActns, ActnList, JvComponentBase, JvFormPlacement,
  ExtCtrls, cxControls, JvExControls, JvComponent, JvEnterTab, cxSpinEdit;

type
  TfrmOpcionesPrestamo = class(TfrmOpcionesModule)
    qrPreParametros: TADOQuery;
    qrPreParametrosPeriodoPago: TStringField;
    qrPreParametrosTipoCalculo: TStringField;
    qrPreParametrosTasaMora: TBCDField;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem1: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcDatosItem2: TdxLayoutItem;
    cxDBCalcEdit1: TcxDBCalcEdit;
    lcDatosItem3: TdxLayoutItem;
    qrPreParametrosUltSolicitud: TIntegerField;
    qrPreParametrosUltPrestamo: TIntegerField;
    qrPreParametrosUltRecibo: TIntegerField;
    qrPreParametrosUltNotaDebito: TIntegerField;
    qrPreParametrosUltNotaCredito: TIntegerField;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBSpinEdit4: TcxDBSpinEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBSpinEdit5: TcxDBSpinEdit;
    lcDatosItem8: TdxLayoutItem;
    qrPreParametrosDiasGracia: TIntegerField;
    cxDBSpinEdit6: TcxDBSpinEdit;
    lcDatosItem9: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesPrestamo: TfrmOpcionesPrestamo;

implementation
 uses DataModule;
{$R *.dfm}

procedure TfrmOpcionesPrestamo.FormCreate(Sender: TObject);
begin
  inherited;
  SetComponentsColor(DM.ColorModifica);
end;

end.
