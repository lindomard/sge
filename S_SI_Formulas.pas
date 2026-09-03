unit S_SI_Formulas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBTables, DB,S_DM1, Grids, DBGrids,
  DBCtrls, func, ComCtrls;

type
  TFrm_SI_Formulas = class(TForm)
    panel_cab: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    bbatualizar: TBitBtn;
    bbFechar: TBitBtn;
    Tb_Comp: TQuery;
    Tb_CompCPCODEMP: TFloatField;
    Tb_CompCPORDEM: TFloatField;
    Tb_CompCPCODPRO: TFloatField;
    Tb_CompCPCODMAT: TFloatField;
    Tb_CompCPQUANT: TFloatField;
    Tb_CompCPPU: TFloatField;
    Tb_CompCPNUMERO: TStringField;
    Tb_CompCPMPNUM: TStringField;
    Tb_CompCPCODPRO_ACAB: TFloatField;
    Tb_CompCPALICMSCRED: TFloatField;
    Tb_CompCPICMSCRED: TFloatField;
    Tb_CompCPVLRINC: TFloatField;
    Tb_CompCPALIQORI: TFloatField;
    Tb_Comptotal: TFloatField;
    Tb_Comptotalliq: TFloatField;
    Tb_CompCPPERCENT: TFloatField;
    Tb_CompCPPERCENT_REST: TFloatField;
    Tb_CompCPTIPO: TFloatField;
    Tb_CompCPQTD_PAD: TFloatField;
    Tb_CompPDNOME: TStringField;
    Tb_CompPDUND: TStringField;
    Tb_Compobservacao: TStringField;
    Src_Comp: TDataSource;
    U_Comp: TUpdateSQL;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    panel_cabitens: TPanel;
    MIN02_PED_CODEMP: TEdit;
    st_codemp: TStaticText;
    st_chave: TStaticText;
    st_razao: TStaticText;
    st_vlrtot: TStaticText;
    CODMAT: TEdit;
    NOMMAT: TEdit;
    PERC: TEdit;
    OBSERV: TEdit;
    st_qtdvol: TStaticText;
    UND: TEdit;
    StaticText2: TStaticText;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Panel2: TPanel;
    Edit2: TEdit;
    StaticText5: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    StaticText10: TStaticText;
    Edit7: TEdit;
    StaticText11: TStaticText;
    GroupBox4: TGroupBox;
    DBGrid4: TDBGrid;
    DBNavigator4: TDBNavigator;
    Panel3: TPanel;
    Edit8: TEdit;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    StaticText15: TStaticText;
    Edit12: TEdit;
    StaticText16: TStaticText;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Edit1: TEdit;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    CODPRO_ACAB: TEdit;
    NOMPRO_ACAB: TEdit;
    Edit4: TEdit;
    StaticText6: TStaticText;
    UND_ACAB: TEdit;
    StaticText7: TStaticText;
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SI_Formulas: TFrm_SI_Formulas;

implementation

{$R *.dfm}

procedure TFrm_SI_Formulas.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SI_Formulas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
