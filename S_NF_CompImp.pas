unit S_NF_CompImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,db,dbtables,func,lerarq,S_DM1,
  Mask,S_Pedcli,S_Ven,S_SI,func2,S_CFO, ToolEdit, CurrEdit, ComCtrls;

type
  tCstCbenef = record
  Cst: string;
  cBenef: String;
  Origem: string;
  end;

type
  TFrm_NF_CompImp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBEMITENF: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    gb_cabecalho: TGroupBox;
    gb_obsnf: TGroupBox;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    NUMNF: TEdit;
    Label3: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    RGTIPO: TRadioGroup;
    Memo1: TMemo;
    Qr_Ped01: TQuery;
    Qr_Ped01P1CODEMP: TFloatField;
    Qr_Ped01P1CHAVE: TFloatField;
    Qr_Ped01P1ORDEM: TFloatField;
    Qr_Ped01P1CODCLI: TFloatField;
    Qr_Ped01P1CODVEN: TFloatField;
    Qr_Ped01P1CODV02: TFloatField;
    Qr_Ped01P1CODV03: TFloatField;
    Qr_Ped01P1DATAP: TDateTimeField;
    Qr_Ped01P1DATANF: TDateTimeField;
    Qr_Ped01P1NUMNF: TFloatField;
    Qr_Ped01P1SERIE: TStringField;
    Qr_Ped01P1SUBSER: TStringField;
    Qr_Ped01P1MODELO: TStringField;
    Qr_Ped01P1SUBMOD: TStringField;
    Qr_Ped01P1STATUS: TFloatField;
    Qr_Ped01P1TIPO: TFloatField;
    Qr_Ped01P1TOTALB: TFloatField;
    Qr_Ped01P1TOTALL: TFloatField;
    Qr_Ped01P1CODUSR: TFloatField;
    Qr_Ped01P1HORADIG: TStringField;
    Qr_Ped01P1DTMOD: TDateTimeField;
    Qr_Ped01P1HRMOD: TStringField;
    Qr_Ped01P1USRMOD: TFloatField;
    Qr_Ped01P1CONF: TStringField;
    Qr_Ped01P1CODCON: TFloatField;
    Qr_Ped01P1DATCON: TDateTimeField;
    Qr_Ped01P1HORCON: TStringField;
    Qr_Ped01P1TIPENT: TFloatField;
    Qr_Ped01P1PREVENT: TDateTimeField;
    Qr_Ped01P1HPREVENT: TStringField;
    Qr_Ped01P1CODENT: TFloatField;
    Qr_Ped01P1PRAZO: TFloatField;
    Qr_Ped01P1DATENT: TDateTimeField;
    Qr_Ped01P1HORENT: TStringField;
    Qr_Ped01P1TABPV: TStringField;
    Qr_Ped01P1CODPV: TFloatField;
    Qr_Ped01P1CUPOM: TFloatField;
    Qr_Ped01P1BASEN: TFloatField;
    Qr_Ped01P1ICMSN: TFloatField;
    Qr_Ped01P1REPAS: TFloatField;
    Qr_Ped01P1BASER: TFloatField;
    Qr_Ped01P1ICMSR: TFloatField;
    Qr_Ped01P1BASENP: TFloatField;
    Qr_Ped01P1BASENN: TFloatField;
    Qr_Ped01P1BASENI: TFloatField;
    Qr_Ped01P1ICMSNP: TFloatField;
    Qr_Ped01P1ICMSNN: TFloatField;
    Qr_Ped01P1ICMSNI: TFloatField;
    Qr_Ped01P1BASERP: TFloatField;
    Qr_Ped01P1BASERN: TFloatField;
    Qr_Ped01P1BASERI: TFloatField;
    Qr_Ped01P1ICMSRP: TFloatField;
    Qr_Ped01P1ICMSRN: TFloatField;
    Qr_Ped01P1ICMSRI: TFloatField;
    Qr_Ped01P1BASENRI: TFloatField;
    Qr_Ped01P1ICMSNRI: TFloatField;
    Qr_Ped01P1BASENRP: TFloatField;
    Qr_Ped01P1ICMSNRP: TFloatField;
    Qr_Ped01P1BASENRN: TFloatField;
    Qr_Ped01P1ICMSNRN: TFloatField;
    Qr_Ped01P1IPIINA: TFloatField;
    Qr_Ped01P1IPIPOS: TFloatField;
    Qr_Ped01P1IPINEG: TFloatField;
    Qr_Ped01P1TOTTRI: TFloatField;
    Qr_Ped01P1TOTRET: TFloatField;
    Qr_Ped01P1TOTISE: TFloatField;
    Qr_Ped01P1TOTPOS: TFloatField;
    Qr_Ped01P1TOTNEG: TFloatField;
    Qr_Ped01P1TOTINA: TFloatField;
    Qr_Ped01P1TOTDES: TFloatField;
    Qr_Ped01P1TOTUCPR: TFloatField;
    Qr_Ped01P1DESC01: TFloatField;
    Qr_Ped01P1DESC02: TFloatField;
    Qr_Ped01P1VLRDES: TFloatField;
    Qr_Ped01P1PAVDES: TFloatField;
    Qr_Ped01P1CODTRA: TFloatField;
    Qr_Ped01P1QTDVOL: TFloatField;
    Qr_Ped01P1PESOL: TFloatField;
    Qr_Ped01P1PESOB: TFloatField;
    Qr_Ped01P1ESPECIE: TStringField;
    Qr_Ped01P1FRETEPC: TFloatField;
    Qr_Ped01P1VALFRE: TFloatField;
    Qr_Ped01P1UFPV: TStringField;
    Qr_Ped01P1PLACAV: TStringField;
    Qr_Ped01P1BANCO: TFloatField;
    Qr_Ped01P1CODSER: TFloatField;
    Qr_Ped01P1CODLDR: TFloatField;
    Qr_Ped01P1PCOMIS: TFloatField;
    Qr_Ped01P1COMIS: TFloatField;
    Qr_Ped01P1COMIST: TFloatField;
    Qr_Ped01P1COMISS: TFloatField;
    Qr_Ped01P1ORIGEM: TFloatField;
    Qr_Ped01P1CODTLV: TFloatField;
    Qr_Ped01P1BCISSQN: TFloatField;
    Qr_Ped01P1VISSQN: TFloatField;
    Qr_Ped01P1ETIVOL: TFloatField;
    Qr_Ped01P1CODSEP: TFloatField;
    Qr_Ped01P1DATASEP: TDateTimeField;
    Qr_Ped01P1HORSEP: TStringField;
    Qr_Ped01P1CODEMB: TFloatField;
    Qr_Ped01P1DATAEMB: TDateTimeField;
    Qr_Ped01P1HOREMB: TStringField;
    Qr_Ped01P1NUMCF: TFloatField;
    Qr_Ped01P1CODECF: TFloatField;
    Qr_Ped01P1DATACF: TDateTimeField;
    Qr_Ped01P1TPPCO: TFloatField;
    Qr_Ped01P1SEMCOM: TFloatField;
    Qr_Ped01P1DESCFIN: TFloatField;
    Qr_Ped01P1LOTCV: TFloatField;
    Qr_Ped01P1LOTCS: TFloatField;
    Qr_Ped01P1LOTCT: TFloatField;
    Qr_Ped01P1PVTC: TFloatField;
    Qr_Ped01P1PVCOM: TFloatField;
    Qr_Ped01P1PVACTD: TFloatField;
    Qr_Ped01P1PVACT00: TFloatField;
    Qr_Ped01P1PVACT01: TFloatField;
    Qr_Ped01P1PVACT99: TFloatField;
    Qr_Ped01P1PVTDC: TFloatField;
    Qr_Ped01P1PVDES: TFloatField;
    Qr_Ped01P1PVTPD1: TFloatField;
    Qr_Ped01P1PVDES1: TFloatField;
    Qr_Ped01P1PVTPD2: TFloatField;
    Qr_Ped01P1PVDES2: TFloatField;
    Qr_Ped01P1PVTPDESF: TFloatField;
    Qr_Ped01P1PVDESCF: TFloatField;
    Qr_Ped01P1PVDIASDESCF: TFloatField;
    Qr_Ped01P1PVDDESCF: TFloatField;
    Qr_Ped01P1TPP: TFloatField;
    Qr_Ped01P1SITAC: TFloatField;
    Qr_Ped01P1VLRACRE: TFloatField;
    Qr_Ped01P1PEDORI1: TStringField;
    Qr_Ped01P1PEDORI2: TStringField;
    Qr_Ped01P1MOTIVO: TStringField;
    Qr_Ped01P1NUMVIS: TStringField;
    Qr_Ped01P1DATVIS: TDateTimeField;
    Qr_Ped01P1SITPED: TFloatField;
    Qr_Ped01P1TOTDI01: TFloatField;
    Qr_Ped01P1TOTDI02: TFloatField;
    Qr_Ped01P1TOTDIVL: TFloatField;
    Qr_Ped01P1DATDOC: TDateTimeField;
    Qr_Ped01P1EMIDOC: TFloatField;
    Qr_Ped01P1ACRECONV: TFloatField;
    Qr_Ped01P1ACREGER: TFloatField;
    Qr_Ped01P1PACRECONV: TFloatField;
    Qr_Ped01P1PACREGER: TFloatField;
    Qr_Ped01P1NAUT: TStringField;
    Qr_Ped01P1CODDEP: TFloatField;
    Qr_Ped01P1TOTOUT: TFloatField;
    Qr_Ped01P1CODCV: TFloatField;
    Qr_Ped01P1LOTEDM: TFloatField;
    Qr_Ped01P1NPEDORI: TFloatField;
    Qr_Ped01P1FORMACE: TFloatField;
    Qr_Ped01P1COMV02: TFloatField;
    Qr_Ped01P1COMV03: TFloatField;
    Qr_Ped01P1PVCOM02: TFloatField;
    Qr_Ped01P1PVCOM03: TFloatField;
    Qr_PedNF: TQuery;
    Qr_PedNFPNCODEMP: TFloatField;
    Qr_PedNFPNCHAVE: TFloatField;
    Qr_PedNFPNORDEM: TFloatField;
    Qr_PedNFPNLINHA: TFloatField;
    Qr_PedNFPNOBS: TStringField;
    Label8: TLabel;
    DATAP: TMaskEdit;
    NOMVEN: TEdit;
    CODVEN: TEdit;
    Label9: TLabel;
    Qr_Ped01P1LOTSEQ: TFloatField;
    Qr_Ped01P1MINUTA: TFloatField;
    Qr_Ped01P1LOTCV02: TFloatField;
    Qr_Ped01P1LOTCV03: TFloatField;
    Qr_Ped01P1SITCPR: TFloatField;
    Qr_Ped01P1CFO1: TStringField;
    Qr_Ped01P1CFO2: TStringField;
    Qr_PedNFPNLOTSEQ: TFloatField;
    Label10: TLabel;
    CFOP: TEdit;
    NOMCFO: TEdit;
    Qr_Ped01P1BLQPRM: TFloatField;
    Qr_Ped01P1PEDORI: TFloatField;
    Qr_Ped01P1TOTDI03: TFloatField;
    Qr_Ped01P1VALDES01: TFloatField;
    Qr_Ped01P1VALDES02: TFloatField;
    Qr_Ped01P1TARBAN: TFloatField;
    Qr_Ped01P1PVTPD3: TFloatField;
    Qr_Ped01P1PVDES3: TFloatField;
    Qr_Ped01P1CFOSER: TStringField;
    Qr_Ped01P1VALSEG: TFloatField;
    Panel3: TPanel;
    Label15: TLabel;
    gb_nfref: TGroupBox;
    Label16: TLabel;
    edt_chaveref: TEdit;
    nf_refer: TMemo;
    SB1: TSpeedButton;
    Label18: TLabel;
    edt_LOTSEQ: TEdit;
    Qr_PedNFPNCODEMP_PEDORI: TFloatField;
    Qr_PedNFPNLOTSEQ_PEDORI: TFloatField;
    Qr_PedNFPNCHAVE_PEDORI: TFloatField;
    Qr_PedNFPNORDEM_PEDORI: TFloatField;
    Label17: TLabel;
    edt_pcouni: TCurrencyEdit;
    Qr_PedNFPNPCOUNIT: TFloatField;
    Qr_Ped01P1NFE_ENVXML: TFloatField;
    Timer1: TTimer;
    Qr_Ped01P1DATHOR_ULTEVE: TDateTimeField;
    Qr_Ped01P1CODUSR_ULTEVE: TFloatField;
    Qr_Ped01P1COMP_ULTEVE: TStringField;
    Qr_Ped01P1SEMCOMP: TStringField;
    Qr_Ped01P1OBS1: TMemoField;
    Qr_Ped01P1OBS2: TMemoField;
    Qr_Ped01P1OBS3: TMemoField;
    Qr_Ped01P1ID_NEW: TFloatField;
    Panel_cst: TPanel;
    lbl_cst_csosn: TLabel;
    CB_CST_ICMS: TComboBox;
    lbl_cod_benef: TLabel;
    cb_cod_benef: TComboBox;
    Label19: TLabel;
    cb_origem: TComboBox;
    PageControl1: TPageControl;
    tsIcmsNormal: TTabSheet;
    TabSheet1: TTabSheet;
    tsDifal: TTabSheet;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    edt_BCICMSST: TEdit;
    Label6: TLabel;
    edt_ICMSST: TEdit;
    ICMS: TEdit;
    Label5: TLabel;
    BCICMS: TEdit;
    Label11: TLabel;
    VALFRE: TEdit;
    Label12: TLabel;
    VALSEG: TEdit;
    Label13: TLabel;
    TARBAN: TEdit;
    Label14: TLabel;
    IPIINA: TEdit;
    edt_vBCUFDest: TEdit;
    Label4: TLabel;
    Label20: TLabel;
    edt_vBCFCPUFDest: TEdit;
    Label21: TLabel;
    edt_pFCPUFDest: TEdit;
    Label22: TLabel;
    edt_pICMSUFDest: TEdit;
    Label23: TLabel;
    edt_pICMSInter: TEdit;
    Label24: TLabel;
    edt_pICMSInterPart: TEdit;
    Label25: TLabel;
    edt_vFCPUFDest: TEdit;
    Label26: TLabel;
    edt_vICMSUFDest: TEdit;
    Label27: TLabel;
    edt_vICMSUFRemet: TEdit;
    cb_mod_bc_st: TComboBox;
    Label28: TLabel;
    Label29: TLabel;
    edt_iva: TEdit;
    Label30: TLabel;
    edt_pmc_pauta: TEdit;
    Label31: TLabel;
    edt_pRedutIcmsSt: TEdit;
    Label32: TLabel;
    edt_icms_cred: TEdit;
    Label33: TLabel;
    edt_icms_deb: TEdit;
    Label34: TLabel;
    gb_descProd: TGroupBox;
    Qr_Ped01P1NOME_PROD: TStringField;
    edt_nome_prod: TEdit;
    procedure BBSAIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure DATAPExit(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure RGTIPOExit(Sender: TObject);
    procedure BCICMSExit(Sender: TObject);
    procedure ICMSExit(Sender: TObject);
    procedure edt_BCICMSSTExit(Sender: TObject);
    procedure edt_ICMSSTExit(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBEMITENFClick(Sender: TObject);
    procedure CFOPKeyPress(Sender: TObject; var Key: Char);
    procedure CFOPExit(Sender: TObject);
    procedure VALFREExit(Sender: TObject);
    procedure VALSEGExit(Sender: TObject);
    procedure TARBANExit(Sender: TObject);
    procedure IPIINAExit(Sender: TObject);
    procedure BCICMSKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB1Click(Sender: TObject);
    procedure edt_chaverefExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CB_CST_ICMSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_cod_benefClick(Sender: TObject);
    procedure RGTIPOEnter(Sender: TObject);
    procedure RGTIPOClick(Sender: TObject);
  private
    { Private declarations }

    mtipo_ant: integer;
    
    mCstCBenf: tCstCbenef;

    function fNF_CompImpcompsql(ptipo: Integer): Boolean;
    function FNF_CompImpGravap01(ptipo: Integer): Boolean;
    function FNF_CompImpExcluir(ptipo: Integer): Boolean;
    function FNF_CarregaCFo(ptipo: Integer): Boolean;

    procedure fVerificaCbenef;


    function fTestarChaveOri(): boolean;



    procedure fAtualizarCstCsosn(pUf: String);

    procedure fAtualizarCodigoBeneficio(pCstIcms: String);


    function fbuscarCSOSN_CST(pCsosn: Boolean): tCstCbenef;

    procedure fAtualizarCstIcms;

    procedure fAtualizarOrigem;


    procedure fAtualizarCstCsosnCbenef(pAtualiza: Boolean);


  public
    { Public declarations }

      mAlterouCstAuto: boolean;
      mchave, mordem: Integer;
      msql_ped01 : String;
      msql_ped02 : String;
      msql_pednf : String;
      mopernfc   : Integer;
      mtipop     : Integer;
      mstatus    : Integer;
      msitdoc    : Integer;
      mpcodemp   : Integer;
      mIdPed01New_origem: integer;
      Form_PedCli_NF_CompImp: TFrm_Pedcli;

  end;
  function fNF_CompImpgant(ptipo: Integer): Boolean;

var
  Frm_NF_CompImp: TFrm_NF_CompImp;
implementation

uses S_Agde, S_DM4, S_ManNF, func_excecoes;

{$R *.dfm}

procedure TFrm_NF_CompImp.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_NF_CompImp.BBLIMPARClick(Sender: TObject);
begin
mtipo_ant          :=-1;
Memo1.Lines.Clear;
CHAVE.Text         :='';
NUMNF.Text         :='';
CODCLI.Text        :='';
NOMCLI.Text        :='';
CODVEN.Text        :='';
NOMVEN.Text        :='';
CFOP.Text          :='';
NOMCFO.Text        :='';
RGTIPO.ItemIndex   :=0;
Memo1.Text         :='';
BCICMS.Text        :=FormatFloat(mcasas, 0);
edt_nome_prod.clear;
ICMS.Text          :=FormatFloat(mcasas, 0);
edt_BCICMSST.Text      :=FormatFloat(mcasas, 0);
edt_ICMSST.Text        :=FormatFloat(mcasas, 0);
VALFRE.Text        :=FormatFloat(mcasas, 0);
VALSEG.Text        :=FormatFloat(mcasas, 0);
TARBAN.Text        :=FormatFloat(mcasas, 0);
IPIINA.Text        :=FormatFloat(mcasas, 0);
edt_pcouni.Text        :=FormatFloat(mcasas, 0);
edt_chaveref.Text  :='';
edt_LOTSEQ.Text    :='';
nf_refer.Lines.Clear;

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBEMITENF.Enabled  :=False;
Panel2.Enabled     :=False;
gb_nfref.Enabled :=false;
mstatus            :=0;
msitdoc            :=0;
mtipop             :=91;
DATAP.Text         :=FormatDatetime(fdt2, Date);
CFOP.Text          :='';
end;

procedure TFrm_NF_CompImp.BBINCLUIRClick(Sender: TObject);
begin
mAlterouCstAuto:=true;
mopernfc:=0;
BBLIMPAR.Click;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBEXCLUIR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBEMITENF.Enabled:=False;
RGTIPO.ItemIndex:=0;
RGTIPOClick(self);


Panel2.Enabled:=True;
gb_nfref.Enabled :=true;
CODCLI.SetFocus;

end;

procedure TFrm_NF_CompImp.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_NF_CompIMP',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_NF_CompImp.CODCLIExit(Sender: TObject);
begin
if (BBLIMPAR.Focused) or (BBSAIR.Focused) then
   exit;
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   fAtualizarCstCsosn(DM1.Tb_CliCUF.AsString);
   end;


end;

procedure TFrm_NF_CompImp.DATAPExit(Sender: TObject);
begin
if (BBLIMPAR.Focused) or (BBSAIR.Focused) then
   exit;
if Trim(DATAP.Text)='/  /' then
   begin
   fmensagem('Data do Pedido campo obrigatório!',0,['0'],0);
   DATAP.SetFocus;
   exit;
   end;
try
   DATAP.Text:=FormatDateTime(fdt2, StrtoDate(DATAP.Text));
except
   fmensagem('Data Inválida!',0,['0'],0);
   exit
   end;
end;

procedure TFrm_NF_CompImp.BBGRAVARClick(Sender: TObject);
begin
if not flcadcli(1,0,CODCLI.Text) then
   begin
   fmensagem('Código do Cliente campo obrigatório!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
if valint(Frm_NF_CompImp.CFOP.Text)=0 then
   begin
   Messagedlg('Tem que ter cfop!',mtwarning,[mbOk],0);
   exit;
   end;

try
   DATAP.Text:=FormatDateTime(fdt2, StrtoDate(DATAP.Text));
except
   fmensagem('Favor digitar uma data de Pedido válida!',0,['0'],0);
   DATAP.SetFocus;
   exit
   end;
if (RGTIPO.ItemIndex=2) and (DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value) then
   begin
   fmensagem('Esta opçao é valida Somente para operações Interestadual!',0,['0'],0);
   RGTIPO.SetFocus;
   exit;
   end;
if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   fmensagem('Cliente sem Estado!',0,['0'],0);
   exit;
   end;

if fSonumero(edt_chaveref.Text)=0 then
   begin
   if RGTIPO.itemindex<>3 then
      begin
      fmensagem('Favor Digitar uma Chave de Referencia!',0,['0'],0);
      edt_chaveref.SetFocus;
      exit;
      end;
   end;


if mopernfc=1 then
   begin
   FNF_CompImpExcluir(0);
   end
else
   begin
   if (codemp>100) then
      flcadpar01(0,codemp-100,'1')
   else
      flcadpar01(0,codemp,'1');
   if DM1.Tb_PargerPFORPEDPAD.asinteger=3 then
      begin
      mchave:=fbuscarSequencia('PEDVEN_'+'0');
      fbuscaNUMPED( iif(codemp>100,codemp-100,codemp));
      end
   else
      begin
      DM4.Tb_Par01.Edit;
      mchave:=DM4.Tb_Par01PNUMPED.AsInteger;
      DM4.Tb_Par01PNUMPED.Value:=mchave+1;
      fbuscarSequencia('PEDVEN_'+'0');
      DM4.Tb_Par01.pOST;

      end;

   mordem:=1;
   end;
FNF_CompImpGravap01(0);
mopernfc:=3;
BBLOCALIZAR.Click;
mopernfc:=0;
end;

procedure TFrm_NF_CompImp.BBLOCALIZARClick(Sender: TObject);
var
x,mqtd: Integer;

begin


if mopernfc<>3 then
   begin
   if Form_PedCli_NF_CompImp=nil then
      Application.CreateForm(TFrm_PedCli, Form_PedCli_NF_CompImp)
   else
      begin
      Form_PedCli_NF_CompImp.Free;
      Form_PedCli_NF_CompImp := nil;
      Application.CreateForm(TFrm_PedCli, Form_PedCli_NF_CompImp);
      end;
   Form_PedCli_NF_CompImp.ori_pedcli:='frm_nfcompimp';
   Form_PedCli_NF_CompImp.ShowModal;

   mchave:=ValInt(Form_PedCli_NF_CompImp.chave.Text);
//   mordem:=ValInt(Form_PedCli_NF_CompImp.ORDEM.Text);


// alterado
   mordem:=01;
   fNF_CompImpcompsql(0);
   Form_PedCli_NF_CompImp.Free;
   Form_PedCli_NF_CompImp := nil;

   if trim(msql_ped01)='' then
      begin
      fmensagem('Pedido não encontrado!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   msql_ped01  := '(P1CODEMP=0'+IntToStr(codemp) +' or '+'P1CODEMP=0' +IntTostr(iif(codemp>99,100-codemp,100+codemp))+') '+' and p1CHAVE=0'+IntToStr(mchave);
   msql_pednf  := '(PNCODEMP=0'+IntToStr(codemp) +' or '+'PNCODEMP=0'+IntTostr(iif(codemp>99,100-codemp,100+codemp))+') ' +' and PNCHAVE=0'+IntToStr(mchave);
   msql_ped02  := '(P2CODEMP=0'+IntToStr(codemp) +' or '+'P2CODEMP=0' +IntTostr(iif(codemp>99,100-codemp,100+codemp))+') '+' and p2CHAVE=0'+IntToStr(mchave);

   mordem:=1;
   end;
if (mchave>0) then
   begin
   mordem:=1;
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
   Frm_Agde.Show;
   Frm_Agde.Update;
   BBINCLUIR.Enabled     :=True;
   BBLOCALIZAR.Enabled   :=True;
   BBALTERAR.Enabled     :=True;
   BBEXCLUIR.Enabled     :=True;
   BBGRAVAR.Enabled      :=False;
   BBEMITENF.Enabled     :=True;
   Qr_Ped01.Close;
   Qr_Ped01.Sql.Clear;
   Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<>9 and');
   Qr_Ped01.SQL.Add(msql_ped01+' order by P1CODEMP,P1CHAVE,P1ORDEM');
   Qr_Ped01.Open;
   if Qr_Ped01.Eof then
      begin
      BBLIMPAR.Click;
      fmensagem('Chave não encontrado!',0,['0'],0);
      Frm_Agde.Free;
      exit;
      end;
   Qr_PedNF.Close;
   Qr_PedNF.Sql.Clear;
   Qr_PedNF.sQl.add('Select * from CADPNF where ');
   Qr_PedNF.SQL.Add(msql_pednf+' order by PNCODEMP,PNCHAVE,PNLINHA');
   Qr_PedNF.Open;
   edt_pcouni.Text:=FormatFloat(mcasas, Qr_PedNFPNPCOUNIT.Value);
   Memo1.Lines.Clear;
   While not Qr_PedNF.Eof do
      begin
      Memo1.Lines.Add(Qr_PedNFPNOBS.Value);
      Qr_PedNF.Next;
      end;
   flcadcli(1,0,Qr_Ped01P1CODCLI.AsString);
   msitdoc         :=Qr_Ped01P1EMIDOC.AsInteger;
   CODCLI.Text     :=Qr_Ped01P1CODCLI.AsString;
   NOMCLI.Text     :=DM1.Tb_CliCRAZAO.Value;
   mtipop          :=Qr_Ped01P1TIPO.AsInteger;
   mstatus         :=Qr_Ped01P1STATUS.AsInteger;
   codven.Text     :=Qr_Ped01P1CODVEN.AsString;
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_Ped01P1CODVEN.AsString) then
      NOMVEN.Text     :=DM1.Query1.fields[0].AsString;
   NUMNF.Text      :=Qr_Ped01P1NUMNF.AsString;
   RGTIPO.ItemIndex:=Qr_Ped01P1TIPO.AsInteger-91;
   BCICMS.Text     :=FormatFloat(mcasas, Qr_Ped01P1BASEN.Value);
   edt_nome_prod.text   :=Qr_Ped01P1NOME_PROD.Value;


   ICMS.Text       :=FormatFloat(mcasas, Qr_Ped01P1ICMSN.Value);
   edt_BCICMSST.Text   :=FormatFloat(mcasas, Qr_Ped01P1BASER.Value);
   edt_ICMSST.Text     :=FormatFloat(mcasas, Qr_Ped01P1ICMSR.Value);
   VALFRE.Text     :=FormatFloat(mcasas, Qr_Ped01P1VALFRE.Value);
   VALSEG.Text     :=FormatFloat(mcasas, Qr_Ped01P1VALSEG.Value);
   TARBAN.Text     :=FormatFloat(mcasas, Qr_Ped01P1TARBAN.Value);
   IPIINA.Text     :=FormatFloat(mcasas, Qr_Ped01P1IPIINA.Value);
   CHAVE.Text      :=Qr_Ped01P1CHAVE.AsString;
   DATAP.Text      :=FormatDateTime(fdt2, Qr_Ped01P1DATAP.Value);

   edt_chaveref.Text:=Qr_PedNFPNCHAVE_PEDORI.AsString;
   edt_LOTSEQ.Text  :=Qr_PedNFPNLOTSEQ_PEDORI.AsString;
   mpcodemp         :=Qr_PedNFPNCODEMP_PEDORI.AsInteger;
   CFOP.Text       :=Qr_Ped01P1CFO1.AsString;
   if flcadcfo(1,0,CFOP.Text) then
      NOMCFO.Text  :=DM1.Tb_CfoCFNOME.Value
   else
      NOMCFO.Text  :='';
   edt_chaverefExit(Self);

   end;
freeandnil(Frm_Agde);
end;



function TFrm_NF_CompImp.fNF_CompImpcompsql(ptipo: Integer): Boolean;
var
mcomp: String;



begin
msql_ped01 :='';
msql_pednf :='';
msql_ped02 :='';


Form_PedCli_NF_CompImp.Tb_Ped.First;
mcomp:='( (';
While not Form_PedCli_NF_CompImp.Tb_Ped.Eof do
   begin
   msql_ped01 :=msql_ped01+mcomp
               +'P1CODEMP=0'+Form_PedCli_NF_CompImp.Tb_PedP1CODEMP.AsString
               +' and P1LOTSEQ=0'+Form_PedCli_NF_CompImp.Tb_PedP1LOTSEQ.AsString
               +' and P1CHAVE=0'+Form_PedCli_NF_CompImp.Tb_PedP1CHAVE.AsString
               +' and P1ORDEM=0'+Form_PedCli_NF_CompImp.Tb_PedP1ORDEM.AsString;
   msql_ped02 :=msql_ped02+mcomp
               +'P2CODEMP=0'+Form_PedCli_NF_CompImp.Tb_PedP1CODEMP.AsString
               +' and P2LOTSEQ=0'+Form_PedCli_NF_CompImp.Tb_PedP1LOTSEQ.AsString
               +' and P2CHAVE=0'+Form_PedCli_NF_CompImp.Tb_PedP1CHAVE.AsString
               +' and P2ORDEM=0'+Form_PedCli_NF_CompImp.Tb_PedP1ORDEM.AsString;

   msql_pednf :=msql_pednf+mcomp
               +'PNCODEMP=0'+Form_PedCli_NF_CompImp.Tb_PedP1CODEMP.AsString
               +' and PNLOTSEQ=0'+Form_PedCli_NF_CompImp.Tb_PedP1LOTSEQ.AsString
               +' and PNCHAVE=0'+Form_PedCli_NF_CompImp.Tb_PedP1CHAVE.AsString
               +' and PNORDEM=0'+Form_PedCli_NF_CompImp.Tb_PedP1ORDEM.AsString;
   mcomp:=') or (';
   Form_PedCli_NF_CompImp.Tb_Ped.Next;
   end;
if mcomp=') or (' then
   begin
   mcomp:=')) ';
   msql_ped01 :=msql_ped01 +mcomp;
   msql_ped02 :=msql_ped02 +mcomp;
   msql_pednf :=msql_pednf +mcomp;
   end;
result:=True;
end;

procedure TFrm_NF_CompImp.BBALTERARClick(Sender: TObject);
begin
mopernfc:=1;
if Qr_Ped01P1TIPO.AsInteger<91 then
   begin
   fmensagem('Não Pode ser alterado aqui, use FATURAMENTO->MANUTENÇÃO',0,['0'],0);
   exit;
   end;
if Qr_Ped01P1EMIDOC.Value>0 then
    begin
    fmensagem('Pedido ja foi Emitido Documento, Nao Pode Ser Alterado!',0,['0'],0);
    exit;
    end;

if (Qr_Ped01P1SITPED.Value = 1) and ( (Qr_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
   and (trunc((now-Qr_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1))  then
   begin
   mcinst2:=Qr_Ped01P1CODUSR.AsString+' - ';
   if Qr_Ped01P1CODUSR.AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Qr_Ped01P1CODUSR.AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+Qr_Ped01P1COMP_ULTEVE.AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Qr_Ped01P1DATHOR_ULTEVE.AsDateTime);


   fMensagem(mcinst,0,['0'],0);
   exit;
   end;


Panel2.Enabled   :=True;
gb_nfref.Enabled :=true;
DATAP.SetFocus;
BBINCLUIR.Enabled:=False;
BBALTERAR.Enabled:=False;
BBGRAVAR.Enabled :=True;
BBEMITENF.Enabled:=False;
BBEXCLUIR.Enabled:=False;

end;

function TFrm_NF_CompImp.FNF_CompImpGravap01(ptipo: Integer): Boolean;

var
mtabpv: String;
mcodpv: Real;
mIdPed01New: integer;

x: Integer;




begin
mtabpv:='AV';
mcodpv:=01;
if not flcadpv(1,0,mtabpv,FloatToStr(mcodpv)) then
   flcadpv(1,1,'','');
mtabpv:=DM1.Tb_PVPVCODTIP.Value;
mcodpv:=DM1.Tb_PVPVCODPV.Value;


DM4.Qr_IncPed01.Close;
DM4.Qr_IncPed01.ParambyName('P1CODEMP').AsFloat     := codemp;
DM4.Qr_IncPed01.ParambyName('P1LOTSEQ').AsFloat     := ls_numped;
DM4.Qr_IncPed01.ParambyName('P1CHAVE').AsFloat      := mchave;
DM4.Qr_IncPed01.ParambyName('P1ANALISE').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1ACRESCIMO').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1CHAVE_NIVEL').AsFloat:= 00;
DM4.Qr_IncPed01.ParambyName('P1ORDEM').AsFloat      := mordem;
DM4.Qr_IncPed01.ParambyName('P1CODCLI').AsFloat     := ValFloat(Frm_NF_CompImp.CODCLI.Text);
DM4.Qr_IncPed01.ParambyName('P1CODVEN').AsFloat     := ValFloat(Frm_NF_CompImp.CODVEN.Text);
DM4.Qr_IncPed01.ParambyName('P1CODASSE').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1CODV02').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1CODV03').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1CODV04').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1DATAP').AsDatetime   := StrtoDate(Frm_NF_CompImp.DATAP.Text);
if msitdoc>0 then
   begin
   DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDate      :=StrtoDate(Frm_NF_CompImp.DATAP.Text);
   DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDate      :=StrtoDate(Frm_NF_CompImp.DATAP.Text);
   DM4.Qr_IncPed01.ParambyName('P1SERIE').AsString     := Frm_NF_CompImp.Qr_Ped01P1SERIE.Value;
   DM4.Qr_IncPed01.ParambyName('P1SUBSER').AsString    := Frm_NF_CompImp.Qr_Ped01P1SUBSER.Value;
   DM4.Qr_IncPed01.ParambyName('P1MODELO').AsString    := Frm_NF_CompImp.Qr_Ped01P1MODELO.Value;
   DM4.Qr_IncPed01.ParambyName('P1STATUS').AsFloat     := Frm_NF_CompImp.Qr_Ped01P1STATUS.Value;
   DM4.Qr_IncPed01.ParambyName('P1CODUSR').AsFloat     := Frm_NF_CompImp.Qr_Ped01P1CODUSR.Value;
   DM4.Qr_IncPed01.ParambyName('P1HORADIG').AsString   := Frm_NF_CompImp.Qr_Ped01P1HORADIG.Value;
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime   := Date;
   DM4.Qr_IncPed01.ParambyName('P1HRMOD').AsString     := FormatDateTime(fhr, time);
   DM4.Qr_IncPed01.ParambyName('P1USRMOD').AsFloat     := codusr;
   end
else
   begin
   DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDate      :=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDate      :=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1SERIE').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1SUBSER').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1MODELO').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1STATUS').AsFloat     := mstatus;
   DM4.Qr_IncPed01.ParambyName('P1CODUSR').AsFloat     := codusr;
   DM4.Qr_IncPed01.ParambyName('P1HORADIG').AsString   := FormatDateTime(fhr, time);
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime   := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HRMOD').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1USRMOD').AsFloat     := 0;
   end;
DM4.Qr_IncPed01.ParambyName('P1NUMNF').AsFloat      := ValFloat(Frm_NF_CompImp.NUMNF.Text);
DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis('0');
DM4.Qr_IncPed01.ParambyName('P1FORMACE').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1OBS1').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1OBS2').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1OBS3').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1TIPO').AsFloat       := mtipop;
DM4.Qr_IncPed01.ParambyName('P1PEDORI').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1SITPED').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTALB').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTALL').AsFloat     := ValFloat(Frm_NF_CompImp.edt_ICMSST.Text)
                                                      +ValFloat(Frm_NF_CompImp.IPIINA.Text)
                                                      +ValFloat(Frm_NF_CompImp.VALFRE.Text)
                                                      +ValFloat(Frm_NF_CompImp.TARBAN.Text)
                                                      +ValFloat(Frm_NF_CompImp.VALSEG.Text);
if RGTIPO.ItemIndex=3 then
   DM4.Qr_IncPed01.ParambyName('P1TOTALL').AsFloat     := ValFloat(edt_pcouni.Text);

DM4.Qr_IncPed01.ParambyName('P1TOTEXTCOM').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1CONF').AsString      :='N';
DM4.Qr_IncPed01.ParambyName('P1CODCON').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1DATCON').AsDateTime:=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORCON').AsString    := ' ';
DM4.Qr_IncPed01.ParambyName('P1TIPENT').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1PREVENT').AsDateTime:= pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HPREVENT').AsString    := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODENT').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1PRAZO').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1DATENT').AsDateTime := pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORENT').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1TABPV').AsString       := mtabpv;
DM4.Qr_IncPed01.ParambyName('P1CODPV').AsFloat        := mcodpv;
DM4.Qr_IncPed01.ParambyName('P1CUPOM').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1BASEN').AsFloat        := ValFloat(Frm_NF_CompImp.BCICMS.Text);
DM4.Qr_IncPed01.ParambyName('P1NOME_PROD').AsString   := edt_nome_prod.Text;

DM4.Qr_IncPed01.ParambyName('P1ICMSN').AsFloat        := ValFloat(Frm_NF_CompImp.ICMS.Text);
DM4.Qr_IncPed01.ParambyName('P1REPAS').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1BASER').AsFloat        := ValFloat(Frm_NF_CompImp.edt_BCICMSST.Text);
DM4.Qr_IncPed01.ParambyName('P1ICMSR').AsFloat        := ValFloat(Frm_NF_CompImp.edt_ICMSST.Text);
DM4.Qr_IncPed01.ParambyName('P1BASENP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1BASENN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1BASENI').AsFloat       := ValFloat(Frm_NF_CompImp.BCICMS.Text);
DM4.Qr_IncPed01.ParambyName('P1ICMSNP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSNN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSNI').AsFloat       := ValFloat(Frm_NF_CompImp.ICMS.Text);
DM4.Qr_IncPed01.ParambyName('P1BASERP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1BASERN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1BASERI').AsFloat       := ValFloat(Frm_NF_CompImp.edt_BCICMSST.Text);
DM4.Qr_IncPed01.ParambyName('P1ICMSRP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSRN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSRI').AsFloat       := ValFloat(Frm_NF_CompImp.edt_ICMSST.Text);
DM4.Qr_IncPed01.ParambyName('P1BASENRI').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRI').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1BASENRP').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRP').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1BASENRN').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRN').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1IPIINA').AsFloat       := ValFloat(Frm_NF_CompImp.IPIINA.Text);
DM4.Qr_IncPed01.ParambyName('P1IPIPOS').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1IPINEG').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTTRI').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTRET').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTISE').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTOUT').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTPOS').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTNEG').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTINA').AsFloat       := 0;
//DM4.Qr_IncPed01.ParambyName('P1PISCOFN').AsFloat      := 0;
//DM4.Qr_IncPed01.ParambyName('P1PISCOFR').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTDES').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTDI01').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTDI02').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTDI03').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1VALDES01').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1VALDES02').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTDIVL').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTUCPR').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1DESC01').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1DESC02').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1VLRDES').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1PAVDES').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1CODTRA').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1QTDVOL').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1PESOL').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1PESOB').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1ESPECIE').AsString     := ' ';
DM4.Qr_IncPed01.ParambyName('P1FRETEPC').AsFloat      := 1;
DM4.Qr_IncPed01.ParambyName('P1VALFRE').AsFloat       := ValFloat(Frm_NF_CompImp.VALFRE.Text);
DM4.Qr_IncPed01.ParambyName('P1TARBAN').AsFloat       := ValFloat(Frm_NF_CompImp.TARBAN.Text);
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := 0;

DM4.Qr_IncPed01.ParambyName('P1UFPV').AsString        := ' ';
DM4.Qr_IncPed01.ParambyName('P1PLACAV').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1BANCO').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1CODSER').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1CODLDR').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1PCOMIS').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1CODCV').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1LOTEDM').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMIS').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1COMV02').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMV03').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMV04').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMIST').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMISS').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1COMASSE').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1ORIGEM').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1NPEDORI').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1CODTLV').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1BCISSQN').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1VISSQN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1ETIVOL').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1CODSEP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORSEP').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODEMB').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1DATAEMB').AsDateTime   :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HOREMB').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1NUMCF').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1CODECF').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1DATACF').AsDateTime    :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1TPPCO').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1SEMCOM').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1DESCFIN').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1LOTCV').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat     :=0;
DM4.Qr_IncPed01.ParambyName('P1LOTCS').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1LOTCT').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTC').AsFloat         :=0;
DM4.Qr_IncPed01.ParambyName('P1PVCOM').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1PVCOM02').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVCOM03').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVCOM04').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVACTD').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVACT00').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVACT01').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVACT99').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTDC').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDES').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTPD1').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDES1').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTPD2').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDES2').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTPD3').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDES3').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1PVTPDESF').AsFloat     :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDESCF').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDIASDESCF').AsFloat  :=0;
DM4.Qr_IncPed01.ParambyName('P1PVDDESCF').AsFloat     :=0;
DM4.Qr_IncPed01.ParambyName('P1TPP').AsFloat          :=0;
DM4.Qr_IncPed01.ParambyName('P1SITAC').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1VLRACRE').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1PEDORI1').AsString     :=' ';
DM4.Qr_IncPed01.ParambyName('P1PEDORI2').AsString     :=' ';
DM4.Qr_IncPed01.ParambyName('P1MOTIVO').AsString      :=' ';
DM4.Qr_IncPed01.ParambyName('P1NUMVIS').AsString      :=' ';
DM4.Qr_IncPed01.ParambyName('P1DATVIS').AsDateTime    :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1EMIDOC').AsFloat       := msitdoc;
DM4.Qr_IncPed01.ParambyName('P1ACRECONV').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1ACREGER').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1PACRECONV').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1PACREGER').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1CODDEP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1NAUT').AsString        := ' ';
DM4.Qr_IncPed01.ParambyName('P1MINUTA').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1SITCPR').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1LOTCV02').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1LOTCV03').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1LOTCV04').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1SEMCOMP').AsString     := '0';
DM4.Qr_IncPed01.ParambyName('P1CFO1').AsString        := fdeixanum(Frm_NF_CompImp.CFOP.Text);
DM4.Qr_IncPed01.ParambyName('P1CFO2').AsString        := ' ';
DM4.Qr_IncPed01.ParambyName('P1CFOSER').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1BLQPRM').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1VALSEG').AsFloat       := ValFloat(Frm_NF_CompImp.VALSEG.Text);
DM4.Qr_IncPed01.ParambyName('P1PDESCLIB').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1PDESCL_USR').AsFloat   := codusr;
DM4.Qr_IncPed01.ParambyName('P1PROCESSO').AsString    := ' ';
DM4.Qr_IncPed01.ParambyName('P1CUPACRE').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1CUPDES').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1LEMAT').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1QTDMAN').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1DTACERTO').AsDateTime  := pdatanula;
DM4.Qr_IncPed01.ParambyName('P1LTACERTO').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1CANHOTO').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1ALIQDEB').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTCGRU').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTSGRU').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTSERLIQ').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1DTHRCHEG').AsDatetime  := Now;
DM4.Qr_IncPed01.ParambyName('P1CODPRIOR').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1PROMOCAO').AsString    := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODBLOQ').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1COMIS_EXTRA').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1QTDM3').AsFloat         := 0;
DM4.Qr_IncPed01.ParambyName('P1VFRE_CUSENT').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1VALENT').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1PRAZO_ENT').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1SEPAMB').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1PZOLIB').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1PZOLIB_USR').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1BLOQPEND').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1CODBLOQ_LIB').AsString  := ' ';
DM4.Qr_IncPed01.ParambyName('P1ECF_SERIE').AsString    :=' ';
DM4.Qr_IncPed01.ParambyName('P1CX_CODCAI').AsFloat     :=codcai;
DM4.Qr_IncPed01.ParambyName('P1CX_LOTMOV').AsFloat     :=lotmov;
DM4.Qr_IncPed01.ParambyName('P1DUP_PROD').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1DUP_SERV').AsFloat      :=0;
DM4.Qr_IncPed01.ParambyName('P1INCTB').AsFloat         :=DM4.Tb_Par01PINCTB.Value;
DM4.Qr_IncPed01.ParambyName('P1EMITENTE').AsString     :='P';
DM4.Qr_IncPed01.ParambyName('P1PVACREDESREG').AsFloat    :=0;
DM4.Qr_IncPed01.ParambyName('P1PVAJCOMIS').AsFloat       :=0;
DM4.Qr_IncPed01.ParambyName('P1LOCAL').AsFloat           :=0;
DM4.Qr_IncPed01.ParambyName('P1TOTPROM').AsFloat         := 0;
if valint(frm_NF_CompImp.CFOP.Text) <5000 then
  DM4.Qr_IncPed01.ParambyName('P1TIPO_ENTSAI').AsFloat     := 1
else
  DM4.Qr_IncPed01.ParambyName('P1TIPO_ENTSAI').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTPIS').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTCOFINS').AsFloat    := 0;
DM4.Qr_IncPed01.ParambyName('P1RED_BCISSQN').AsFloat  := 0;
DM4.Qr_IncPed01.ParambyName('P1BCINSS').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1RED_BCINSS').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1VINSS').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1BCIRRF').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1RED_BCIRRF').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1VIRRF').AsFloat        := 0;
DM4.Qr_IncPed01.ParambyName('P1NFE_ENVXML').AsFloat   := 0;
DM4.Qr_IncPed01.ParambyName('P1QTDDECPU').AsFloat     := dm1.Tb_PargerPCASASPU.AsInteger;
DM4.Qr_IncPed01.ParambyName('P1TPEMIS').AsFloat       := 1;
DM4.Qr_IncPed01.ParambyName('P1TOTDESCPR').AsFloat  := 0;
mIdPed01New := fBuscarProximoid('CADP01_SEQ');;
DM4.Qr_IncPed01.ParambyName('P1ID_NEW').AsFloat         :=mIdPed01New;
DM4.Qr_IncPed01.ParambyName('P1NOME_PROD').AsString   := edt_nome_prod.Text;

try
   DM4.Qr_IncPed01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(DM4.Qr_IncPed01,1063,'SGE','CADP01');
   end;
   end;




DM1.Query4.Close;
DM1.Query4.SQL.Clear;
{
DM1.Query4.Params.CreateParam(ftstring,'CODEMP',ptinput);   // 00
DM1.Query4.Params.CreateParam(ftstring,'LOTSEQ',ptinput);  // 01
DM1.Query4.Params.CreateParam(ftstring,'CHAVE',ptinput);  // 01
DM1.Query4.Params.CreateParam(ftstring,'ORDEM',ptinput);  // 02
DM1.Query4.Params.CreateParam(ftstring,'LINHA',ptinput);  // 02
DM1.Query4.Params.CreateParam(ftstring,'OBS',ptinput);  // 02
}
DM1.Query4.SQL.Add('Insert into CADPNF ('
                  +' PNCODEMP, '
                  +' PNLOTSEQ, '
                  +' PNCHAVE, '
                  +' PNORDEM, '
                  +' PNCODEMP_PEDORI, '
                  +' PNLOTSEQ_PEDORI, '
                  +' PNCHAVE_PEDORI, '
                  +' PNORDEM_PEDORI, '
                  +' PNPCOUNIT, '
                  +' PNLINHA, '
                  +' PNOBS'
                  +',PNID_NEW '
                  +',PNID_PED01_NEW'
                  +',PNID_PEDORI_NEW '

                  +') values ('
                  +' :CODEMP, '
                  +' :LOTSEQ, '
                  +' :CHAVE, '
                  +' :ORDEM, '
                  +' :CODEMP_PEDORI, '
                  +' :LOTSEQ_PEDORI, '
                  +' :CHAVE_PEDORI, '
                  +' :ORDEM_PEDORI, '
                  +' :PNPCOUNIT, '
                  +' :LINHA, '
                  +' :OBS'
                  +',:PNID_NEW '
                  +',:PNID_PED01_NEW'
                  +',:PNID_PEDORI_NEW '

                  +')');
if memo1.lines.count<1 then
   memo1.lines.add('.');
if edt_pcouni.Value=0 then
   begin
   if valfloat(BCICMS.text)>0 then
      edt_pcouni.value:=valfloat(BCICMS.text);
   end;

if edt_pcouni.Value=0 then
   begin
   if valfloat(edt_BCICMSST.text)>0 then
      edt_pcouni.value:=valfloat(edt_BCICMSST.text);
   end;

if edt_pcouni.Value=0 then
   begin
   if valfloat(VALFRE.text)>0 then
      edt_pcouni.value:=valfloat(VALFRE.text);
   end;


if edt_pcouni.Value=0 then
   begin
   if valfloat(VALSEG.text)>0 then
      edt_pcouni.value:=valfloat(VALSEG.text);
   end;



if edt_pcouni.Value=0 then
   begin
   if valfloat(TARBAN.text)>0 then
      edt_pcouni.value:=valfloat(TARBAN.text);
   end;

if edt_pcouni.Value=0 then
   begin
   if valfloat(IPIINA.text)>0 then
      edt_pcouni.value:=valfloat(IPIINA.text);
   end;

for x:=0 to Memo1.Lines.Count-1 do
   begin
   DM1.Query4.Close;
   DM1.Query4.ParamByName('CODEMP').AsInteger:=codemp;
   DM1.Query4.ParamByName('LOTSEQ').AsInteger:=ls_numped;
   DM1.Query4.ParamByName('CHAVE').AsInteger :=mchave;
   DM1.Query4.ParamByName('ORDEM').AsInteger :=mordem;
   DM1.Query4.ParamByName('CODEMP_PEDORI').AsInteger:=mpcodemp;
   DM1.Query4.ParamByName('LOTSEQ_PEDORI').AsInteger:=valint(edt_LOTSEQ.Text);
   DM1.Query4.ParamByName('CHAVE_PEDORI').AsFloat   :=fSonumero(edt_chaveref.Text);
   DM1.Query4.ParamByName('ORDEM_PEDORI').AsInteger :=01;
   DM1.Query4.ParamByName('PNPCOUNIT').AsFloat      :=edt_pcouni.Value;
   DM1.Query4.ParamByName('LINHA').AsInteger :=x+1;
   DM1.Query4.ParamByName('OBS').AsString    :=copy(Memo1.Lines[x],1,60);
   DM1.Query4.ParamByName('PNID_NEW').Asfloat            :=fBuscarProximoId('CADPNF_SEQ');
   DM1.Query4.ParamByName('PNID_PED01_NEW').Asfloat      :=mIdPed01New;
   DM1.Query4.ParamByName('PNID_PEDORI_NEW').Asfloat     :=mIdPed01New_origem;


   try
      DM1.Query4.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro de Instrução nO. 954, contactar suporte!',0,['0'],0);
      break
      end;
//LDC


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Insert into CADP02D ('
                  +'P2DCODEMP, '
                  +'P2DLOTSEQ,'
                  +'P2DCHAVE,'
                  +'P2DORDEM,'
                  +'P2DITEM,'
                  +'P2DLINHA,'
                  +'P2DCODPRO,'
                  +'P2DGRADE,'
                  +'P2DTIPO,'
                  +'P2DESC'
                  +',P2DID_NEW'
                  +',P2DID_PED01_NEW '

                  +')  values ('
                  +':CODEMP ,'
                  +':LOTSEQ,'
                  +':CHAVE,'
                  +':ORDEM,'
                  +':ITEM,'
                  +':LINHA,'
                  +':CODPRO,'
                  +':LOTE '+','
                  +'0,'
                  +':DESC'
                  +',:P2DID_NEW'
                  +',:P2DID_PED01_NEW '

                  +')');
   DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query1.ParamByName('LOTSEQ').AsFloat:=ls_numped;
   DM1.Query1.ParamByName('CHAVE').AsFloat:=mchave;
   DM1.Query1.ParamByName('ORDEM').AsFloat:=mOrdem;
   DM1.Query1.ParamByName('ITEM').AsFloat:=x+1;
   DM1.Query1.ParamByName('LINHA').AsFloat:=x+1;
   DM1.Query1.ParamByName('CODPRO').AsFloat:=-1;

   DM1.Query1.ParamByName('LOTE').AsString :='';
   if Length(Memo1.Lines[x])>60 then
      DM1.Query1.ParamByName('DESC').AsString:=copy(Memo1.Lines[x],1,60)
   else
      DM1.Query1.ParamByName('DESC').AsString:=Memo1.Lines[x];
   DM1.Query1.ParamByName('P2DID_NEW').AsFloat :=fBuscarProximoId('CADP02D_SEQ');
   DM1.Query1.ParamByName('P2DID_PED01_NEW').AsFloat :=mIdPed01New;

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query2,10148,'Frm_Ped_02','CADP02D');

      end;


//TERMINO


   end;


DM4.Qr_IncPed02.Close;
DM4.Qr_IncPed02.ParambyName('P2ID_NEW').AsFloat      :=fBuscarProximoId('CADP02_SEQ');
DM4.Qr_IncPed02.ParambyName('P2ID_PED01_NEW').AsFloat:=mIdPed01New;
DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=codemp;
DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ls_numped;
DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchave;
DM4.Qr_IncPed02.ParambyName('P2CHAVE_NIVEL').AsFloat :=0;
DM4.Qr_IncPed02.ParambyName('P2PCREDSN').AsFloat     :=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;

DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=mordem;
DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=01;
DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=-1;
DM4.Qr_IncPed02.ParambyName('P2UND').AsString        :='';
DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=-1;
DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=1;
DM4.Qr_IncPed02.ParambyName('P2QTD_ATEN').AsFloat    :=1;
DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       :='';
DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsString     :='';

DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=0;

//mCstCBenf:=fbuscarCSOSN_CST(false);

DM4.Qr_IncPed02.ParambyName('P2REDUTICM').AsInteger :=0;
//mCstCBenf:=fbuscarCSOSN_CST(true);

//DM4.Qr_IncPed02.ParambyName('P2CSOSN').AsString      :=mCstCBenf.Cst;


DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        :=COPY(CB_ORIGEM.TEXT,1,1)+ copy(CB_CST_ICMS.Text,1,2);
if DM1.Tb_EmpEMP_OPTSIMPLES.asinteger=3 then
   DM4.Qr_IncPed02.ParambyName('P2CSOSN').AsString      :=COPY(CB_ORIGEM.TEXT,1,1)+ copy(CB_CST_ICMS.Text,1,2)
else
   DM4.Qr_IncPed02.ParambyName('P2CSOSN').AsString      :=COPY(CB_ORIGEM.TEXT,1,1)+ copy(CB_CST_ICMS.Text,1,3);


DM4.Qr_IncPed02.ParambyName('P2CSOSN_ORI').AsString  :='0';
DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       :=ValFloat(BCICMS.Text);

DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       :=ValFloat(ICMS.Text);
DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=ValFloat(edt_BCICMSST.Text);
DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=ValFloat(edt_ICMSST.Text);
DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     :='A';
if ValFloat(IPIINA.Text)=0 then
   DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=0
else
   DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=Arredonda((ValFloat(IPIINA.Text)*100)/edt_pcouni.Value,2);
DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=ValFloat(IPIINA.Text);
DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=0;
if valfloat(ICMS.Text)=0 then
   DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=0
else
   try
   DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=Arredonda((ValFloat(ICMS.Text)*100)/edt_pcouni.Value,2);
   except
       DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=0;
      end;
DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOMIS').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOMIS').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOM02').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOM03').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOM04').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOM02').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOM03').Value        :=0;
DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=fsonumero(CFOP.Text);
DM4.Qr_IncPed02.ParambyName('P2CFOSUBECF').Value     :=fsonumero(CFOP.Text);
DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    :=0;
DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   :='';
DM4.Qr_IncPed02.ParambyName('P2DESCPR').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2AMBIENTE').AsString   :='';
DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGUE').AsFloat:=0;
DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGANDO').AsFloat:=0;
DM4.Qr_IncPed02.ParambyName('P2PCOMIS_EXTRA').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOMIS_EXTRA').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2STATUS_PED1').AsFloat   :=0;
DM4.Qr_IncPed02.ParambyName('P2TIPO').AsFloat          :=0;
DM4.Qr_IncPed02.ParambyName('P2CODAGRU').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2CONSIG').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_IVA').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_REDUT').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_ICMCRED').AsFloat    :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_ICMDEB').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2REDUTICM').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2PRAZO').AsFloat         :=0;
DM4.Qr_IncPed02.ParambyName('P2ALPIS').AsFloat         :=0;
DM4.Qr_IncPed02.ParambyName('P2VALPIS').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ALCOFINS').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2COFINS').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=edt_pcouni.Value;
DM4.Qr_IncPed02.ParambyName('P2CONS_PROPRIO').AsFloat:=0;
DM4.Qr_IncPed02.ParambyName('P2TIPO_PCO').AsFloat    :=0;
DM4.Qr_IncPed02.ParambyName('P2COMPLEMENTO').AsString:='';
DM4.Qr_IncPed02.ParambyName('P2CODPRO_ORI').AsString :=' ';
DM4.Qr_IncPed02.ParambyName('P2NOMPRO_ORI').AsString :=' ';
DM4.Qr_IncPed02.ParambyName('P2KIT_PRO').AsString :='N';

DM4.Qr_IncPed02.ParambyName('P2KIT_PRO').AsString :='N';
DM4.Qr_IncPed02.ParambyName('P2CBENEF').AsString  :=cb_cod_benef.Text;

DM4.Qr_IncPed02.ParambyName('P2VFRERAT').AsFloat  :=VALFLOAT(VALFRE.Text);
DM4.Qr_IncPed02.ParambyName('P2VSEGRAT').AsFloat  :=VALFLOAT(VALSEG.Text);
DM4.Qr_IncPed02.ParambyName('P2VDESPACESRAT').AsFloat  :=VALFLOAT(TARBAN.Text);





Try
   DM4.Qr_IncPed02.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(DM4.Qr_IncPed02,1337,'SGE','CADP02');
   end;
   end;



result:=true;
end;

procedure TFrm_NF_CompImp.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_NF_Complmp',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_NF_CompImp.CODVENExit(Sender: TObject);
begin
if ValFloat(CODVEN.Text)<=0 then
   CODVEN.Text:='';
if not (RGTIPO.Focused) and (trim(CODVEN.Text)='') then
   exit;
if not flcadven(1,0,CODVEN.Text) then
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end
else
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;

end;

procedure TFrm_NF_CompImp.RGTIPOExit(Sender: TObject);
begin
mtipop:=91+RGTIPO.ItemIndex;
if (mtipop=93) then
   begin
   if DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value then
      begin
      fmensagem('Opção válida somente operações interestadual!',0,['0'],0);
      exit;
      end;
   end;
if fsonumero(CFOP.Text)<=0 then
   FNF_CarregaCFo(0);
if (mtipo_ant<>mtipop) or (trim(edt_nome_prod.text)='')  then
   begin
   if mtipop=94 then
      edt_nome_prod.text:='TRANSFERENCIA DE CREDITO ACUMULADO DE ICMS'
   else
      edt_nome_prod.text:='COMPLEMENTO DE IMPOSTO';
   end;


{   if (DM2.Qr_CabP1TIPO.AsInteger=94) then
      mNomeProd:=DM2.Qr 'TRANSFERENCIA DE CREDITO ACUMULADO DE ICMS'
   else
      mNomeProd:='COMPLEMENTO DE IMPOSTO';
 }


end;

function TFrm_NF_CompImp.FNF_CompImpExcluir(ptipo: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Delete from CADPNF where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' PNCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PNLOTSEQ=0'+IntTostr(ls_numped)
                  +' and PNCHAVE=0'+IntTostr(mchave)
                  +' and PNORDEM=0'+IntToStr(mordem));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar excluir o CADPNF Chave='+IntToStr(mchave),0,['0'],0);
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Delete from CADP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P1CHAVE=0'+IntTostr(mchave)
                  +' and P1ORDEM=0'+IntToStr(mordem));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar excluir o CADP01 Chave='+IntToStr(mchave),0,['0'],0);
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Delete from CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P2LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P2CHAVE=0'+IntTostr(mchave)
                  +' and P2ORDEM=0'+IntToStr(mordem));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar excluir o CADP01 Chave='+IntToStr(mchave),0,['0'],0);
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Delete from CADP02D where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2DCODEMP=0'+IntToStr(codemp)+' and ')
                  +' P2DLOTSEQ=0'+IntTostr(ls_numped)
                  +' and P2DCHAVE=0'+IntTostr(mchave)
                  +' and P2DORDEM=0'+IntToStr(mordem));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar excluir o CADP01 Chave='+IntToStr(mchave),0,['0'],0);
   end;

result:=True;
end;

procedure TFrm_NF_CompImp.BCICMSExit(Sender: TObject);
begin
if ValFloat(BCICMS.Text)<=0 then
   BCICMS.Text:='0';
BCICMS.Text:=FormatFloat(mcasas, ValFloat(BCICMS.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:=ValFloat(BCICMS.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.ICMSExit(Sender: TObject);
begin
if ValFloat(ICMS.Text)<=0 then
   ICMS.Text:='0';
ICMS.Text:=FormatFloat(mcasas, ValFloat(ICMS.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(ICMS.Text)/17) * ValFloat(ICMS.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.edt_BCICMSSTExit(Sender: TObject);
begin
if ValFloat(edt_BCICMSST.Text)<=0 then
   edt_BCICMSST.Text:='0';
edt_BCICMSST.Text:=FormatFloat(mcasas, ValFloat(edt_BCICMSST.Text));

IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(edt_BCICMSST.Text)/128.57) * ValFloat(edt_BCICMSST.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.edt_ICMSSTExit(Sender: TObject);
begin
if ValFloat(edt_ICMSST.Text)<=0 then
   edt_ICMSST.Text:='0';
edt_ICMSST.Text:=FormatFloat(mcasas, ValFloat(edt_ICMSST.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(edt_ICMSST.Text)/128.57) * ValFloat(edt_ICMSST.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.BBEXCLUIRClick(Sender: TObject);
var
mResult: Integer;
aceita: Boolean;
mMotivo_Exclusao: String;
begin
Qr_Ped01.Close;
Qr_Ped01.Sql.Clear;
Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<>9 and');
Qr_Ped01.SQL.Add(msql_ped01+' order by P1CODEMP,P1CHAVE,P1ORDEM');
Qr_Ped01.Open;

if Qr_Ped01P1TIPO.AsInteger<91 then
   begin
   fmensagem('Não Pode ser alterado aqui, use FATURAMENTO->MANUTENÇÃO',0,['0'],0);
   exit;
   end;

if (Qr_Ped01P1SITPED.Value = 1) and ( (Qr_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
   and (trunc((now-Qr_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
    begin
   mcinst2:=Qr_Ped01P1CODUSR.AsString+' - ';
   if Qr_Ped01P1CODUSR.AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Qr_Ped01P1CODUSR.AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+Qr_Ped01P1COMP_ULTEVE.AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Qr_Ped01P1DATHOR_ULTEVE.AsDateTime);


   fMensagem(mcinst,0,['0'],0);
   exit;
   end;

if fmensagem('Quer realmente excluir este pedido?',0,['1','2'],2)<>mrYes then
   exit;
Res1:='';
flcadpar01(0,Qr_Ped01P1CODEMP.AsInteger,'1');
flcadpar02(0,0,codusr,'4');

if Qr_Ped01P1STATUS.Value=2 then
   begin
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      mValidarSenha.pTipo:=0;
      mValidarSenha.pCodusr:=codusr;
      mValidarSenha.pCodSen:=4;
      mValidarSenha.pCodEmp:=0;
      mValidarSenha.pCodCli:=Qr_Ped01P1CODCLI.AsFloat;
      mValidarSenha.pLotSeq:=0;
      mValidarSenha.pChave :=0;
      mValidarSenha.pOrdem :=0;
      mValidarSenha.pTexto :='Senha para Excluir o Pedido apos a emissão da nota fiscal';
      mValidarSenha.pChave_St:='';
      mValidarSenha.pDesc_requisitado :=0;

      if fValidaSenha(mValidarSenha)<>0 then
         exit
      end;
   end
else
   begin
   flcadpar02(0,0,codusr,'3');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      mValidarSenha.pTipo:=0;
      mValidarSenha.pCodusr:=codusr;
      mValidarSenha.pCodSen:=3;
      mValidarSenha.pCodEmp:=0;
      mValidarSenha.pCodCli:=Qr_Ped01P1CODCLI.AsFloat;
      mValidarSenha.pLotSeq:=0;
      mValidarSenha.pChave :=0;
      mValidarSenha.pOrdem :=0;
      mValidarSenha.pTexto :='Senha para Excluir o Pedido';
      mValidarSenha.pChave_St:='';
      mValidarSenha.pDesc_requisitado :=0;

      if fValidaSenha(mValidarSenha)<>0 then
         exit;
      end;
   end;

While true do
   begin
   mMotivo_Exclusao:='';
   if InputQuery('Motivo da Exclusao!','Digite o Motivo da Exclusao:',mMotivo_Exclusao) then
      mMotivo_Exclusao:=trim(mMotivo_Exclusao)
   else
      break;
   if length(mMotivo_Exclusao)<15 then
      begin
      fmensagem('O Motivo Tem que ter pelo menos quinze letras!',0,['0'],0);
      continue;
      end;
   if trim(mMotivo_Exclusao)<>'' then
      break;
   end;
if trim(mMotivo_Exclusao)='' then
   exit;


Qr_Ped01.First;
While not Qr_Ped01.Eof do
   begin
   if (Qr_Ped01P1CODEMP.AsFloat<100) and (Qr_Ped01P1STATUS.AsFloat>1) then
      begin
      if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
         begin
         if Qr_Ped01P1NFE_ENVXML.AsFloat=9 then
            begin
            if pdatasis<Date then
               pdatasis:=Date;
            if (pdatasis-Qr_Ped01P1DATANF.AsDateTime)>6 then
                begin
                fmensagem('Esta nota Fiscal não Permitido o Cancelamento pelo SEFAZ'
                         +'Mais de 6 dias apos a emissão!',0,['0'],0);
                exit;
                end;
            mResult:=fCancelarNFE(Qr_Ped01P1CODEMP.AsInteger,Qr_Ped01P1LOTSEQ.AsInteger,
                   Qr_Ped01P1CHAVE.AsInteger,Qr_Ped01P1ORDEM.AsInteger,
                   Qr_Ped01P1NUMNF.AsInteger,mMotivo_Exclusao,true);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao validar o xml!',0,['0'],0);
               exit;
               end;

{
            mResult:=fCancelarNFE(Qr_Ped01P1CODEMP.AsFloat,Qr_Ped01P1LOTSEQ.AsFloat,
                   Qr_Ped01P1CHAVE.AsFloat,Qr_Ped01P1ORDEM.AsFloat,
                   Qr_Ped01P1NUMNF.AsFloat,mMotivo_Exclusao,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao validar o xml!',0,['0'],0);
               exit;
               end;
}
            end
         else
            begin
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('SELECT NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO'
                              +',NSNUMERO,NSTOTNOTA,NSNFE_NUMPROT,NSDTEMIS,NSSERIE,NSTIPDOC FROM CADNS where '
                              +iif(DM1.Qr_TID.locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+Qr_Ped01P1CODEMP.AsString+' and ')
                              +' NSLOTSEQ_CP=0'+Qr_Ped01P1LOTSEQ.AsString
                              +' and NSCHAVEP=0'+Qr_Ped01P1CHAVE.AsString
                              +' and NSORDEMP=0'+Qr_Ped01P1ORDEM.AsString
                              +' and NSNUMERO=0'+Qr_Ped01P1NUMNF.AsString
                            +'  and NSTIPO<2 ' );
            DM1.Query2.Open;
            if DM1.Query2.IsEmpty then
               begin
               fmensagem('Erro ao Procurar a Nota Fiscal: '+Qr_Ped01P1NUMNF.AsString,0,['0'],0);
               exit;
               end;

            if valint(DM1.Query2.FieldByName('NSSERIE').AsString)=0  then  //  serie
               begin
               DM1.Query1.close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                                 +' and PNF_CHAVE=:CHAVE ');
               DM1.Query1.ParamByName('CODEMP').AsInteger:=DM4.Qr_Ped01P1CODEMP.AsInteger;
               DM1.Query1.ParamByName('CHAVE').Value     :=DM1.Query2.fieldbyname('NSTIPDOC').AsString;
               DM1.Query1.Open;
               mcinst:=dm1.Query1.FieldbyName('PNF_SERIE').AsString;
               end
            else
               mcinst:=DM1.Query2.FieldByName('NSSERIE').AsString;
            mResult:=fInutilizarNFE(Qr_Ped01P1CHAVE.Asinteger,
                                    Qr_Ped01P1LOTSEQ.Asinteger,
                                    Qr_Ped01P1CODEMP.Asinteger,

            mMotivo_Exclusao,
            '55', mcinst,valint(formatDateTime('yyyy',DM1.Query2.FieldbyName('NSDTEMIS').AsDateTime)),
            DM1.Query2.fieldbyName('NSNUMERO').AsInteger,
            DM1.Query2.fieldbyName('NSNUMERO').AsInteger,true);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao validar o xml!',0,['0'],0);
               exit;
               end;

            if valint(DM1.Query2.FieldByName('NSSERIE').AsString)=0  then  //  serie
               begin
               DM1.Query1.close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select PNF_SERIE from CADPAR_NF where PNF_CODEMP=:CODEMP '
                                 +' and PNF_CHAVE=:CHAVE ');
               DM1.Query1.ParamByName('CODEMP').AsInteger:=DM4.Qr_Ped01P1CODEMP.AsInteger;
               DM1.Query1.ParamByName('CHAVE').Value     :=DM1.Query2.fieldbyname('NSTIPDOC').AsString;
               DM1.Query1.Open;

               mcinst:=dm1.Query1.FieldbyName('PNF_SERIE').AsString;
               end
            else
               mcinst:=DM1.Query2.FieldByName('NSSERIE').AsString;
            mResult:=fInutilizarNFE(
                                    DM4.Qr_Ped01P1CHAVE.Asinteger,
                                    DM4.Qr_Ped01P1LOTSEQ.Asinteger,
                                    DM4.Qr_Ped01P1CODEMP.Asinteger,

            mMotivo_Exclusao,'55',
            mcinst,valint(formatDateTime('yyyy',DM1.Query2.FieldbyName('NSDTEMIS').AsDateTime)),
            DM1.Query2.fieldbyName('NSNUMERO').AsInteger,
            DM1.Query2.fieldbyName('NSNUMERO').AsInteger,false);
            if mResult<>0 then
               begin
               fmensagem('erro '+IntTostr(mResult)+' ao Inutilizar NFE!',0,['0'],0);
               exit;
               end;

            end;
         end;
      end;
//   fped01gant(9);
   Qr_Ped01.Next;
   end;

Qr_Ped01.First;

fNF_CompImpgant(9);
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Update CADP01 set P1STATUS=9, '
                  +' P1USRMOD=0'+IntTostr(codusr)+','
                  +' P1DTMOD='+chr(39)+FormatDatetime(fdt,pdatasis)+chr(39)+','
                  +' P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)
                  +'  where P1CODEMP=0'+Qr_Ped01P1CODEMP.AsString
                  +' and P1LOTSEQ=0'+Qr_Ped01P1LOTSEQ.AsString
                  +' and P1CHAVE=0'+Qr_Ped01P1CHAVE.AsString
                  +' and P1ORDEM=0'+Qr_Ped01P1ORDEM.AsString);
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  fmensagem('Erro de Instrução 4879. Contactar Suporte!',0,['0'],0);
  end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Update CADP02 set P2STATUS=9 '
                   +'  where P2CODEMP=0'+Qr_Ped01P1CODEMP.AsString
                   +' and P2LOTSEQ=0'+Qr_Ped01P1LOTSEQ.AsString
                   +' and P2CHAVE=0'+Qr_Ped01P1CHAVE.AsString
                   +' and P2ORDEM=0'+Qr_Ped01P1ORDEM.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
fExecutarSql('Update CADNS SET NSSTATUS=case when NSNUMERO>0 then 9 else NSSTATUS end '
                  +', NSNFCE_SITUACAO=case when NSNFCE_NUMERO>0 then 9 else NSNFCE_SITUACAO end '
                  +' where NSCODEMP=0'+Qr_Ped01P1CODEMP.AsString
                  +' and NSLOTSEQ_CP=0'+Qr_Ped01P1LOTSEQ.AsString
                  +' and NSCHAVEP=0'+Qr_Ped01P1CHAVE.AsString
                  +' and NSORDEMP=0'+Qr_Ped01P1ORDEM.AsString
                            +'  and NSTIPO<2 ' );


fmensagem('Pedido Excluido!',0,['0'],0);
BBLIMPAR.Click;

end;

function fNF_CompImpgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(P1CODNOV) from OLD_CADP01');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADP01 (';
v:='';
for x:=0 to DM1.Tb_Ped01.FieldCount-1 do
   begin
   if DM1.Tb_Ped01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ped01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',P1CODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Ped01.FieldCount-1 do
   begin
   if DM1.Tb_Ped01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Ped01.Fields[x].FieldName='P1STATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as P1STATUS '
   else if DM1.Tb_Ped01.Fields[x].FieldName='P1USRMOD' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as P1USRMOD '
   else if DM1.Tb_Ped01.Fields[x].FieldName='P1DTMOD' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as P1DTMOD '
   else if DM1.Tb_Ped01.Fields[x].FieldName='P1HRMOD' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as P1HRMOD '
   else
      minstru:=minstru+v+DM1.Tb_Ped01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P1CODNOV ';
minstru:=minstru+' from CADP01 where P1CODEMP=0'+Frm_NF_CompImp.Qr_Ped01P1CODEMP.AsString
                +' and P1LOTSEQ=0'+Frm_NF_CompImp.Qr_Ped01P1LOTSEQ.AsString
                +' and P1CHAVE=0'+Frm_NF_CompImp.Qr_Ped01P1CHAVE.AsString
                +' and P1ORDEM=0'+Frm_NF_CompImp.Qr_Ped01P1ORDEM.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao P017137. Contactar Suporte',0,['0'],0);
   end;

minstru:='Insert into OLD_CADPNF (';
v:='';
for x:=0 to DM1.Tb_PNF.FieldCount-1 do
   begin
   if DM1.Tb_PNF.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_PNF.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',P1NCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_PNF.FieldCount-1 do
   begin
   if DM1.Tb_PNF.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_PNF.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PNCODNOV ';
minstru:=minstru+' from CADPNF where PNCODEMP=0'+Frm_NF_CompImp.Qr_Ped01P1CODEMP.AsString
                +' and PNLOTSEQ=0'+Frm_NF_CompImp.Qr_Ped01P1LOTSEQ.AsString
                +' and PNCHAVE=0'+Frm_NF_CompImp.Qr_Ped01P1CHAVE.AsString
                +' and PNORDEM=0'+Frm_NF_CompImp.Qr_Ped01P1ORDEM.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao P017190. Contactar Suporte',0,['0'],0);
   end;
result:=True;
end;
procedure TFrm_NF_CompImp.BBEMITENFClick(Sender: TObject);
var
reemissao: Boolean;
pSerieNF,pModNF: string;
mNumNF: Integer;

peletronica: boolean;
mmensagem: string;

begin
if Qr_Ped01P1TIPO.AsInteger<91 then
   begin
   fmensagem('Não Pode ser Emitido aqui, use FATURAMENTO->MANUTENÇÃO',0,['0'],0);
   exit;
   end;

DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.Sql.Clear;
DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<'+mstatus_excluido+' and');

DM4.Qr_Ped01.SQL.Add(msql_ped01+' order by P1CODEMP,P1CHAVE,P1ORDEM');
DM4.Qr_Ped01.Open;
if DM4.Qr_Ped01.isempty then
   begin
   fMensagem('erro ao selecionar registros',0,['0'],0);
   exit;
   end;

if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   msql_ped02:=msql_ped02+' and  PDCODEMP(+)=P2CODEMP ';
msql_ped02:=msql_ped02+' and  PDCODPRO(+)=P2CODPRO ';

flQrPed02(1,1,DM4.Qr_Ped01P1FORMACE.AsInteger, msql_ped02,0,0);

reemissao:=False;


mMensagem := 'Nota Complementar';
if not fTestarServidor_NFE(codemp,'SERIE1',mMensagem, peletronica) then
   begin
   MessageDlg(mmensagem+#13+'Servidor de Nota Fiscal Eletronica Não esta Ativa!',mtWarning,[mbOk],0);
   exit;
   end;

//mcodemp:=Qr_Ped01P1CODEMP.AsInteger;
if Qr_Ped01P1STATUS.Value>1 then
   begin
   if fmensagem('Este Pedido fa Foi Emitido Nota Fiscal. Quer Reemitir?',0,['1','2'],2)=mrYes then
      begin
      if flcadp01(0,0,Qr_Ped01P1LOTSEQ.AsInteger,Qr_Ped01P1CHAVE.AsString,Qr_Ped01P1ORDEM.AsString) then
         begin
         FPedEmiteNf(0,Qr_Ped01P1CODSER.AsInteger,0,Qr_Ped01P1LOTSEQ.AsInteger,Qr_Ped01P1CHAVE.AsInteger,Qr_Ped01P1ORDEM.AsInteger,Qr_Ped01P1CODEMP.AsInteger,0,Qr_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); //  alterado Reemisao de Nota fiscal
         end;
      reemissao:=true;
      end;
   end
else
   begin
   if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (Qr_Ped01P1CODEMP.AsInteger<100) then
      begin
      if not fTestaNFE(Qr_Ped01P1CODEMP.AsFloat,Qr_Ped01P1CODCLI.AsFloat,Qr_Ped01.FieldbyName('P1LOTSEQ').AsFloat,
                Qr_Ped01.FieldbyName('P1CHAVE').AsFloat,
                Qr_Ped01.FieldbyName('P1ORDEM').AsFloat) then
          exit;
      end;

   if flcadp01(0,0,Qr_Ped01P1LOTSEQ.AsInteger,Qr_Ped01P1CHAVE.AsString,Qr_Ped01P1ORDEM.AsString) then
      begin
      if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
         begin
//         if not fValidaXML(1,Qr_Ped01) then
//            exit;
         end;
      end;


   reemissao:=False;

   pSerieNF:='';
   pModNF  :='';
   mnumnf:=fBuscarNUMNF(Qr_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(Qr_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('update CADP01 set '
                     +' P1NUMNF=0'+FloatToStr(mnumnf)+','
                     +' P1DATANF='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1DATDOC='+chr(39)+FormatDateTime(fdt,date)+chr(39)+','
                     +' P1SERIE='+chr(39)+pSerieNF+chr(39)+','
                     +' P1MODELO='+chr(39)+pModNF+chr(39)+','
                     +' P1STATUS=2,P1EMIDOC=1 '
                     +' where P1CODEMP=0'+Qr_Ped01P1CODEMP.AsString
                     +' and P1LOTSEQ=0'+Qr_Ped01P1LOTSEQ.AsString
                     +' and P1CHAVE=0'+Qr_Ped01P1CHAVE.AsString
                     +' and P1ORDEM=0'+Qr_Ped01P1ORDEM.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;

   except
      fmensagem('Erro de Instrução 5100. Contactar Suporte!',0,['0'],0);
      end;
   if flcadp01(0,0,Qr_Ped01P1LOTSEQ.AsInteger,Qr_Ped01P1CHAVE.AsString,Qr_Ped01P1ORDEM.AsString) then
      begin
      Fgravarnf(0);
      FPedEmiteNf(0,Qr_Ped01P1CODSER.AsInteger,0,Qr_Ped01P1LOTSEQ.AsInteger, Qr_Ped01P1CHAVE.AsInteger,Qr_Ped01P1ORDEM.AsInteger,Qr_Ped01P1CODEMP.AsInteger,0,Qr_Ped01P1FORMACE.AsInteger,false,false,reemissao,1,0,0); //   alter ad Reemisao de Nota fiscal
      end;
   end;
BBLIMPAR.Click;


end;

procedure TFrm_NF_CompImp.CFOPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CFOP.Text:=fChamacfop(0,'frm_cfo',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_NF_CompImp.CFOPExit(Sender: TObject);
begin
if ValFloat(CFOP.Text)<=0 then
   CFOP.Text:='';
if not (RGTIPO.Focused) and (trim(CFOP.Text)='') then
   exit;
if not flcadcfo(1,0,CFOP.Text) then
   begin
   fmensagem('cfo não Cadastrado!',0,['0'],0);
   CFOP.SetFocus;
   end
else
   NOMCFO.Text:=DM1.Tb_CfoCFNOME.Value;

end;

function TFrm_NF_CompImp.FNF_CarregaCFo(ptipo: Integer): Boolean;
begin

if mtipop=91 then
   begin
   if DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value then
      CFOP.Text:='5601'
   else
      CFOP.Text:='6603';
   end
else if mtipop=92 then
   begin
   if DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value then
      CFOP.Text:='5602'
   else
      CFOP.Text:='6603';
   end
else if mtipop=93 then
   begin
   if DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value then
      CFOP.Text:='5603'
   else
      CFOP.Text:='6603';
   end
else if mtipop=94 then
   begin
   if DM1.Tb_CliCUF.Value=DM1.Tb_EmpUF.Value then
      CFOP.Text:='5602'
   else
      CFOP.Text:='6602';
   end;

result:=True;
end;

procedure TFrm_NF_CompImp.VALFREExit(Sender: TObject);
begin
if ValFloat(VALFRE.Text)<=0 then
   VALFRE.Text:='0';

VALFRE.Text:=FormatFloat(mcasas, ValFloat(VALFRE.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(VALFRE.Text)/5) * ValFloat(VALFRE.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.VALSEGExit(Sender: TObject);
begin
if ValFloat(VALSEG.Text)<=0 then
   VALSEG.Text:='0';

VALSEG.Text:=FormatFloat(mcasas, ValFloat(VALSEG.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(VALSEG.Text)/5) * ValFloat(VALSEG.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.TARBANExit(Sender: TObject);
begin
if ValFloat(TARBAN.Text)<=0 then
   TARBAN.Text:='0';

TARBAN.Text:=FormatFloat(mcasas, ValFloat(TARBAN.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(TARBAN.Text)/5) * ValFloat(TARBAN.Text);
fAtualizarCstCsosnCbenef(false);
end;

procedure TFrm_NF_CompImp.IPIINAExit(Sender: TObject);
begin
if ValFloat(IPIINA.Text)<=0 then
   IPIINA.Text:='0';

IPIINA.Text:=FormatFloat(mcasas, ValFloat(IPIINA.Text));
IF edt_pcouni.Value<=0 then
   edt_pcouni.Value:= (ValFloat(IPIINA.Text)/5) * ValFloat(IPIINA.Text);
fAtualizarCstCsosnCbenef(false);

end;

procedure TFrm_NF_CompImp.BCICMSKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_NF_CompImp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_NF_CompImp.SB1Click(Sender: TObject);
begin
if Form_PedCli_NF_CompImp=nil then
   Application.CreateForm(TFrm_PedCli, Form_PedCli_NF_CompImp);
if Form_PedCli_NF_CompImp=nil then
   begin
   Form_PedCli_NF_CompImp.Free;
   Form_PedCli_NF_CompImp:=nil;
   Application.CreateForm(TFrm_PedCli, Form_PedCli_NF_CompImp);
   end;
Form_PedCli_NF_CompImp.ShowModal;
edt_chaveref.Text:=Form_PedCli_NF_CompImp.chave.Text;
mpcodemp:=Form_PedCli_NF_CompImp.Tb_PedP1CODEMP.AsInteger;
edt_LOTSEQ.Text:=Form_PedCli_NF_CompImp.Tb_PedP1LOTSEQ.AsString;
Form_PedCli_NF_CompImp.Free;
Form_PedCli_NF_CompImp:=nil;
edt_chaverefExit(Self);
end;

procedure TFrm_NF_CompImp.edt_chaverefExit(Sender: TObject);
begin
edt_chaveref.Text:=fdeixanum2(edt_chaveref.Text);
if trim(edt_LOTSEQ.Text)<>'' then
   edt_LOTSEQ.Text:=IntToStr(ls_numped);

if (not fTestarChaveOri()) then
   edt_chaveref.SetFocus;

end;

function TFrm_NF_CompImp.fTestarChaveOri(): boolean;
begin
if fSonumero(CFOP.Text)<=0 then
   begin
   MessageDlg('Favor Colocar um Cnpj Válido!',mtWarning,[mbOk],0);
   result := false;
   exit;
   end;

if fsonumero(edt_chaveref.Text)>0 then
   begin
   if fsonumero(CFOP.Text)>4999 then
      begin
      if not flcadp01(0,mpcodemp,valint(edt_LOTSEQ.Text),edt_chaveref.Text,'') then
         begin
         fmensagem('Chave não Encontrada!',0,['0'],0);
         edt_chaveref.SetFocus;
         end
      else
         begin
         mIdPed01New_origem:=DM1.Tb_Ped01P1ID_NEW.AsInteger;
         mpcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
         nf_refer.Lines.Clear;
         nf_refer.Lines.Add(DM1.Tb_Ped01nomcli.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_Ped01P1TOTALL.AsFloat)
                         +' Número NF: '+FormatFloat('000000', DM1.Tb_Ped01P1NUMNF.AsFloat)
                         +' Dt.Emissão: '+FormatDateTime(fdt2, DM1.Tb_Ped01P1DATANF.AsDateTime));
         fAtualizarCstCsosnCbenef(mAlterouCstAuto);
         end
      end
   else
      begin
      if not flcadpf1(0,valint(edt_LOTSEQ.Text),edt_chaveref.Text) then

   //function flcadpf1(ptipo,plotseq: Integer; pvalor: String): Boolean;

         begin
         fmensagem('Chave não Encontrada!',0,['0'],0);
         edt_chaveref.SetFocus;
         end
      else
         begin
         mIdPed01New_origem:=DM1.Tb_pf1PF1ID_NEW.AsInteger;
         mpcodemp:=DM1.Tb_pf1PF1CODEMP.AsInteger;
         nf_refer.Lines.Clear;
         nf_refer.Lines.Add(DM1.Tb_PF1PF1CHAVE.AsString+' Valor: '+Formatfloat(mcasas, DM1.Tb_PF1PF1TOTLIQ.AsFloat)
                            +' Número NF: '+FormatFloat('000000', DM1.Tb_PF1PF1NUMNF.AsFloat)
                            +' Dt.Emissão: '+FormatDateTime(fdt2, DM1.Tb_PF1PF1DATANF.AsDateTime));
         fAtualizarCstCsosnCbenef(mAlterouCstAuto);
        end;
      end;
   end;

end;


procedure TFrm_NF_CompImp.Timer1Timer(Sender: TObject);
begin
if (bbGraVar.Enabled) and (mopernfc=1) then
   fMantemPedidoEmManutencao(0,iif(mpcodemp=0,codemp,mpcodemp),ls_numped,valint(CHAVE.Text));

end;

procedure TFrm_NF_CompImp.fVerificaCbenef;
var
mCbenef: string;
mCst: string;
const
   pValorReducao = 0;
begin



mCst:=copy(CB_CST_ICMS.Text,1,2);
if (mCst='20') then
   begin
   if (pValorReducao=0) then
      begin
      CB_CST_ICMS.text :='00';
      cb_cod_benef.Text:='';
      fAtualizarCstIcms;
      cb_cod_benef.ItemIndex := cb_cod_benef.Items.IndexOf(cb_cod_benef.Text);
      exit;
      end
   end;

if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
   begin
   if (trim(cb_cod_benef.Text)='') and  ((mCst<>'00')  and (mCst<>'10') and (mCst<>'51') and (mCst<>'60')) then
      begin
      if (pValorReducao=0) then
         begin
         if (mCst='90') then
            cb_cod_benef.text:='SEM CBENEF'
         end
      else
         begin
         if DM1.Tb_CliCUF.AsString=DM1.Tb_EmpUF.AsString then
            begin
            if DM1.Tb_CliCCONSF.AsInteger=1 then
               begin
               cb_cod_benef.Text    :=DM1.Tb_ProPDCBENEF_CST_DENTROE_CONSFIN.AsString;
               end
            else
               begin
               cb_cod_benef.Text    :=DM1.Tb_ProPDCBENEF_CST_DENTROE_REV.AsString;
               end;
            end
         else
            begin
            if DM1.Tb_CliCCONSF.AsInteger=1 then
               begin
               cb_cod_benef.Text    :=DM1.Tb_ProPDCBENEF_CST_FORAE_CONSFIN.AsString;
               end
            else
               begin
               cb_cod_benef.Text    :=DM1.Tb_ProPDCBENEF_CST_FORAE_REV.AsString;
               end;
            end;
         end;
      cb_cod_benef.ItemIndex := cb_cod_benef.Items.IndexOf(cb_cod_benef.text);
      end;
   end;

end;



procedure TFrm_NF_CompImp.fAtualizarCstCsosn(pUf: String);
begin
CB_CST_ICMS.Clear;
if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
   begin
   CB_CST_ICMS.Items.add('00 - Tributado integralmente ');
   CB_CST_ICMS.Items.add('02 - Tributação monofásica própria sobre combustíveis;');
   CB_CST_ICMS.Items.add('10 - Tributado e com cobr.  do ICMS por subs. trib.');
   CB_CST_ICMS.Items.add('15 - Tributação monofásica própria e com responsabilidade pela retenção sobre combustíveis;');
   CB_CST_ICMS.Items.add('20 - Com redução de base de cálculo');
   CB_CST_ICMS.Items.add('30 - Isenta ou não trib. e com cobr. do ICMS por subs. trib.');
   CB_CST_ICMS.Items.add('40 - Isenta ou não tributada');
   CB_CST_ICMS.Items.add('41 - Não tributada');
   CB_CST_ICMS.Items.add('50 - Com suspensão ou deferimento');
   CB_CST_ICMS.Items.add('51 - Diferimento');
   CB_CST_ICMS.Items.add('53 - Tributação monofásica sobre combustíveis com recolhimento diferido;');
   CB_CST_ICMS.Items.add('60 - ICMS cobrado anteriormente por substituição tributária');
   CB_CST_ICMS.Items.add('61 - Tributação monofásica sobre combustíveis cobrada anteriormente;');
   CB_CST_ICMS.Items.add('70 - Com red. de base de cálc. e cobr. do ICMS por subs. trib.');
   CB_CST_ICMS.Items.add('90 - Outras');
   fAtualizarCodigoBeneficio(copy(CB_CST_ICMS.Items[0],1,2));
   end
else
   begin
   CB_CST_ICMS.Items.add('101 - Tributada pelo Simples Nacional com permissão de crédito');
   CB_CST_ICMS.Items.add('102 - Tributada pelo Simples Nacional sem permissão de crédito');
   CB_CST_ICMS.Items.add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta');
   CB_CST_ICMS.Items.add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária');
   CB_CST_ICMS.Items.add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária');
   CB_CST_ICMS.Items.add('203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária');
   CB_CST_ICMS.Items.add('300 - Imune');
   CB_CST_ICMS.Items.add('400 - Não tributada pelo Simples Nacional');
   CB_CST_ICMS.Items.add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação');
   CB_CST_ICMS.Items.add('900 - Outros');
   end;


CB_CST_ICMS.ItemIndex:=0;
end;

procedure TFrm_NF_CompImp.fAtualizarCodigoBeneficio(pCstIcms: String);
var
query_consulta: tQuery;
begin
cb_cod_benef.Items.Clear;

query_consulta:=tQuery.create(nil);
query_consulta.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
if fLerGenerico_query('CADCST_ICMS,CADCST_ICMS_CBENEF','CSTB_ID,CSTB_ID_CST,CSTB_UF,CSTB_CBENEF'
   ,'CST_CODIGO='+QuotedStr(pCstIcms)+' AND CSTB_ID_CST = CST_ID ORDER BY CSTB_CBENEF',query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      cb_cod_benef.Items.Add(query_consulta.fieldbyname('CSTB_CBENEF').Asstring);
      query_consulta.Next;
      end;
   cb_cod_benef.Items.Add('');

   end;
if pCstIcms='90' then
   cb_cod_benef.Items.Add('SEM CBENEF');

query_consulta.close;
freeandnil(query_consulta);

cb_cod_benef.ItemIndex:=0;
end;

procedure TFrm_NF_CompImp.CB_CST_ICMSClick(Sender: TObject);
begin
fAtualizarCodigoBeneficio(copy(cb_cst_icms.text,1,2));
mAlterouCstAuto:=false;

end;

procedure TFrm_NF_CompImp.FormCreate(Sender: TObject);
begin
tsDifal.TabVisible:=false;
fAtualizarCstCsosn(DM1.Tb_EmpUF.AsString);
mAlterouCstAuto:=true;
end;


function TFrm_NF_CompImp.fbuscarCSOSN_CST(pCsosn: Boolean): tCstCbenef;
var
query_csosn: TQuery;
begin
query_csosn:=TQuery.create(nil);
query_csosn.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_csosn.SQL.add('select P2CSOSN,P2SIT,P2CBENEF,P2CODPRO from cadp02 where '
                   +' P2CODEMP=:CODEMP '
                   +' and P2CHAVE=:CHAVE '
                   +' AND P2LOTSEQ=:LOTSEQ ');

query_csosn.ParamByName('CODEMP').AsInteger:=mpcodemp;
query_csosn.ParamByName('LOTSEQ').AsInteger:=valint(edt_LOTSEQ.Text);
query_csosn.ParamByName('CHAVE').AsFloat   :=fSonumero(edt_chaveref.Text);
try
   query_csosn.open;
   if pcsosn then
      result.Cst:=query_csosn.fieldbyname('P2CSOSN').asstring
   else
      begin
      result.Cst:=copy(query_csosn.fieldbyname('P2SIT').asstring,2,2);
      result.Origem:=copy(query_csosn.fieldbyname('P2SIT').asstring,1,1);
      end;
   result.cBenef:=query_csosn.fieldbyname('P2CBENEF').asstring;

   if (DM1.Tb_ProPDCODPRO.AsInteger<>query_csosn.fieldbyname('P2CODPRO').asinteger) then
      flcadpro(1,0,codemp,query_csosn.fieldbyname('P2CODPRO').AsString);

except ON E: Exception do
   begin
   if pcsosn then
      result.Cst:='900'
   else
      result.Cst:='90';
   ex_erroSql_Novo(query_csosn,641,'_stru'+e.message,'user');
   end;
   end;
query_csosn.Close;
freeandnil(query_csosn);

end;


procedure TFrm_NF_CompImp.fAtualizarCstIcms;
var
x: integer;
begin
for x:=0 to CB_CST_ICMS.Items.Count-1 do
   begin
   if (CB_CST_ICMS.Text = copy(CB_CST_ICMS.Items[x],1,length(CB_CST_ICMS.text))) then
      begin
      CB_CST_ICMS.Text:=CB_CST_ICMS.Items[x];
      CB_CST_ICMS.ItemIndex:=CB_CST_ICMS.Items.IndexOf(CB_CST_ICMS.Text);
      break;
      end;
   end;


end;


procedure TFrm_NF_CompImp.fAtualizarOrigem;
var
x: integer;
begin
for x:=0 to cb_origem.Items.Count-1 do
   begin
   if (cb_origem.Text = copy(cb_origem.Items[x],1,length(cb_origem.text))) then
      begin
      cb_origem.Text:=cb_origem.Items[x];
      break;
      end;
   end;


end;


procedure TFrm_NF_CompImp.fAtualizarCstCsosnCbenef(pAtualiza: boolean);
begin
if not pAtualiza then
   exit;

if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
   begin
   mCstCBenf:=fbuscarCSOSN_CST(false);
   end
else
   begin
   mCstCBenf:=fbuscarCSOSN_CST(true);
   end;
CB_CST_ICMS.Text:=mCstCBenf.Cst;
cb_origem.Text:=mCstCBenf.Origem;



if (valfloat(edt_BCICMSST.Text)>0) or (valfloat(edt_ICMSST.text)>0) then
   begin
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=3 then
      CB_CST_ICMS.Text        :='90'
   else
      CB_CST_ICMS.Text        :='900';
   end;
fAtualizarOrigem;
fAtualizarCstIcms;

fVerificaCbenef;

end;
procedure TFrm_NF_CompImp.cb_cod_benefClick(Sender: TObject);
begin
mAlterouCstAuto:=false;
end;

procedure TFrm_NF_CompImp.RGTIPOEnter(Sender: TObject);
begin
mtipo_ant :=rgtipo.itemindex;
end;

procedure TFrm_NF_CompImp.RGTIPOClick(Sender: TObject);
begin
mtipop:=91+RGTIPO.ItemIndex;
if (mtipo_ant<>mtipop) or (trim(edt_nome_prod.text)='')  then
   begin
   if mtipop=94 then
      edt_nome_prod.text:='TRANSFERENCIA DE CREDITO ACUMULADO DE ICMS'
   else
      edt_nome_prod.text:='COMPLEMENTO DE IMPOSTO';
   end;



end;

end.
