unit OpcionesVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, DB, ADODB, Menus, StdActns, ActnList,
  JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl, cxControls,
  JvExControls, JvComponent, JvEnterTab, cxCheckBox, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxContainer, cxEdit, cxTextEdit, cxMemo, cxGraphics,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBExtLookupComboBox, cxPC, cxintl;

type
  TfrmOpcionesVenta = class(TfrmOpcionesModule)
    qrParametros: TADOQuery;
    qrParametrosSecuenciaEntrada: TLargeintField;
    qrParametrosSecuencia: TLargeintField;
    qrParametrosRNC: TStringField;
    qrParametrosSecuenciaDev: TLargeintField;
    qrParametrosSecuenciaCot: TLargeintField;
    qrParametrosIndetificadorFactura: TStringField;
    qrParametrosIdentificadorDevolucion: TStringField;
    qrParametrosIdentificadorCotizacion: TStringField;
    qrParametrosImprimirAlGrabar: TBooleanField;
    qrParametrosIdentificadorMuestra: TStringField;
    qrParametrosSecuenciaMuestra: TLargeintField;
    qrParametrosAutoNumerarClientes: TBooleanField;
    qrParametrosSecuenciaCliente: TLargeintField;
    qrParametrosAutoNumerarPacientes: TBooleanField;
    qrParametrosAutoNumerarPruebas: TBooleanField;
    qrParametrosSecuenciaPruebas: TLargeintField;
    qrParametrosImprimirAlGrabarRecibo: TBooleanField;
    qrParametrosImprimirAlGrabarFacturaSeg: TBooleanField;
    qrParametrosNotaFacturaSeguro: TMemoField;
    qrParametrosNotaFacturaPaciente: TMemoField;
    qrParametrosNotaFacturaNoSeguro: TMemoField;
    qrParametrosIdentificadorRecibo: TStringField;
    qrParametrosSecuenciaRecibo: TLargeintField;
    qrParametrosIdentificadorNC: TStringField;
    qrParametrosSecuenciaNC: TLargeintField;
    qrParametrosImprimirAlGrabarNC: TBooleanField;
    qrParametrosPreciosBaseDolares: TBooleanField;
    qrParametrosMonedaID: TStringField;
    qrParametrosMonedaDolares: TStringField;
    qrParametrosAutoNumerarDoctor: TBooleanField;
    cxPageControl1: TcxPageControl;
    lcDatosItem34: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBSpinEdit11: TcxDBSpinEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBSpinEdit12: TcxDBSpinEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBSpinEdit13: TcxDBSpinEdit;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBSpinEdit14: TcxDBSpinEdit;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBSpinEdit15: TcxDBSpinEdit;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBSpinEdit16: TcxDBSpinEdit;
    cxDBSpinEdit17: TcxDBSpinEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBSpinEdit18: TcxDBSpinEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBSpinEdit19: TcxDBSpinEdit;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBSpinEdit20: TcxDBSpinEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup01: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup02: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup03: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup05: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup04: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup06: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup09: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    cxDBMemo7: TcxDBMemo;
    cxDBMemo8: TcxDBMemo;
    cxDBMemo9: TcxDBMemo;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup51: TdxLayoutGroup;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutItem61: TdxLayoutItem;
    dxLayoutItem62: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBExtLookupComboBox5: TcxDBExtLookupComboBox;
    cxDBExtLookupComboBox6: TcxDBExtLookupComboBox;
    cxDBExtLookupComboBox7: TcxDBExtLookupComboBox;
    cxDBExtLookupComboBox8: TcxDBExtLookupComboBox;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group29: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutGroup07: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrParametrosIdentificadorCuadre: TStringField;
    qrParametrosSecuenciaCuadre: TLargeintField;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    qrParametrosDiasEntrePruebas: TIntegerField;
    dxLayoutGroup41: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutGroup08: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    qrParametrosAutoNumerarCombos: TBooleanField;
    qrParametrosSecuenciaCombos: TLargeintField;
    dxLayoutGroup13: TdxLayoutGroup;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    qrParametrosClienteLaboratorio: TStringField;
    qrParametrosAutoNumerarTarjetas: TBooleanField;
    qrParametrosSecuenciaTarjetas: TLargeintField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dxLayoutGroup44: TdxLayoutGroup;
    cxDBExtLookupComboBox3: TcxDBExtLookupComboBox;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBExtLookupComboBox4: TcxDBExtLookupComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    qrParametrosAutoNumerarPlanes: TBooleanField;
    qrParametrosSecuenciaPlanes: TLargeintField;
    qrParametrosAutoNumerarPlanCombo: TBooleanField;
    qrParametrosSecuenciaPlanCombo: TLargeintField;
    qrParametrosClienteCap: TStringField;
    qrParametrosClientePlanAnual: TStringField;
    EdExterior: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    qrParametrosSecuenciaAct: TLargeintField;
    qrParametrosSecuenciaLabel: TLargeintField;
    qrParametrosDireccion: TMemoField;
    qrParametrosNotaExterior: TStringField;
    qrParametrosEmpresa: TStringField;
    qrParametrosNotaFacturaExterior: TMemoField;
    cxDBExtLookupComboBox9: TcxDBExtLookupComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBExtLookupComboBox10: TcxDBExtLookupComboBox;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBExtLookupComboBox11: TcxDBExtLookupComboBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBExtLookupComboBox12: TcxDBExtLookupComboBox;
    dxLayoutControl3Item9: TdxLayoutItem;
    qrParametrosGrupoAcc: TStringField;
    qrParametrosGrupoCli: TStringField;
    qrParametrosGrupoEmp: TStringField;
    qrParametrosGrupoLab: TStringField;
    qrParametrosGrupoPriv: TStringField;
    qrParametrosGrupoSeg: TStringField;
    qrParametrosGrupoVip: TStringField;
    qrParametrosGrupoCia: TStringField;
    cxDBMemo10: TcxDBMemo;
    dxLayoutControl2Item2: TdxLayoutItem;
    qrParametrosGrupoProy: TStringField;
    cxDBExtLookupComboBox13: TcxDBExtLookupComboBox;
    dxLayoutControl3Item10: TdxLayoutItem;
    qrParametrosClienteProyecto: TStringField;
    cxDBExtLookupComboBox14: TcxDBExtLookupComboBox;
    dxLayoutControl3Item11: TdxLayoutItem;
    qrParametrosClienteClinica: TStringField;
    dxLayoutGroup55: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    qrParametrosBanco_Cuenta_1: TStringField;
    qrParametrosBanco_Nombre_1: TStringField;
    qrParametrosBanco_Cuenta_2: TStringField;
    qrParametrosBanco_Nombre_2: TStringField;
    qrParametrosGrupoSoc: TStringField;
    qrParametrosClientePlanSocial: TStringField;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBExtLookupComboBox15: TcxDBExtLookupComboBox;
    qrParametrosGrupoExt: TStringField;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    qrParametrosNotaNCreditoBalance: TMemoField;
    qrParametrosSecuenciaPaciente: TLargeintField;
    qrParametrosSecuenciaDoctor: TLargeintField;
    qrParametrosDescuento_Empleado: TBCDField;
    qrParametrosCod_ISO: TStringField;
    qrParametrosServidor_AS400: TStringField;
    dxLayoutControl2Item4: TdxLayoutItem;
    qrParametrosNota_AutorizacionX: TStringField;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    dxLayoutControl2Item6: TdxLayoutItem;
    qrParametrosNotaFacturaSeguroUniv: TMemoField;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    qrParametrosNotaFacturaEnvase: TMemoField;
    cxDBMemo4: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesVenta: TfrmOpcionesVenta;

implementation
uses DataModule;
{$R *.dfm}

procedure TfrmOpcionesVenta.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrClientes.Close;
  DM.qrClientes.Open;
end;

end.
