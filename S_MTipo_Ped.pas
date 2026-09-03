unit S_MTipo_Ped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids,
  DBGrids, jpeg,LERARQ, DB,dbtables;

type
  TFrm_MTipo_Ped = class(TForm)
    Panel1: TPanel;
    BBnAtu: TBitBtn;
    CAMPO: TComboBox;
    PC1: TPageControl;
    tsCad: TTabSheet;
    tsTab: TTabSheet;
    MANUT: TGroupBox;
    ALTERAR: TBitBtn;
    INCLUIR: TBitBtn;
    GroupBox2: TGroupBox;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    GRAVAR: TBitBtn;
    SAIR: TBitBtn;
    Edit1: TMaskEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    lbl_emp: TLabel;
    Pesquisapor: TLabel;
    Label1: TLabel;
    txt_codigo: TEdit;
    Label2: TLabel;
    txt_descricao: TEdit;
    GroupBox1: TGroupBox;
    CB_ENTRADA_NORMAL: TCheckBox;
    CB_ENTRADA_CONSIGNADO: TCheckBox;
    CB_ENTRADA_REM_VENDA: TCheckBox;
    CB_ENTRADA_EST_TERC: TCheckBox;
    CB_SAIDA_NORMAL: TCheckBox;
    CB_SAIDA_CONSIGNADO: TCheckBox;
    CB_SAIDA_REM_VENDA: TCheckBox;
    CB_SAIDA_EST_TERC: TCheckBox;
    GB_DENTRO: TGroupBox;
    Label3: TLabel;
    txt_DENTRO_CFOP_RV_ST: TEdit;
    txt_DENTRO_SUBST_CFOP_ST: TEdit;
    Label5: TLabel;
    txt_DENTRO_CFOP_RV_TRIB: TEdit;
    txt_DENTRO_SUBST_CFOP_TRIB: TEdit;
    Label7: TLabel;
    txt_DENTRO_CFOP_RV_ISENT: TEdit;
    txt_DENTRO_SUBST_CFOP_ISENT: TEdit;
    GB_FORA: TGroupBox;
    CB_GERADUP: TCheckBox;
    CB_ATIVO: TCheckBox;
    Label15: TLabel;
    txt_codusr_inc: TEdit;
    txt_dathor_inc: TEdit;
    Label16: TLabel;
    txt_codusr_alt: TEdit;
    txt_dathor_alt: TEdit;
    Src_mTip_Ped: TDataSource;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    txt_DENTRO_CFOP_RVCP_ST: TEdit;
    txt_DENTRO_CFOP_RVCP_TRIB: TEdit;
    txt_DENTRO_CFOP_RVCP_ISENT: TEdit;
    StaticText3: TStaticText;
    txt_DENTRO_CFOP_CF_ST: TEdit;
    txt_DENTRO_CFOP_CF_TRIB: TEdit;
    txt_DENTRO_CFOP_CF_ISENT: TEdit;
    StaticText4: TStaticText;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    StaticText5: TStaticText;
    txt_FORA_CFOP_RV_ST: TEdit;
    txt_FORA_CFOP_RV_TRIB: TEdit;
    txt_FORA_CFOP_RV_ISENT: TEdit;
    StaticText6: TStaticText;
    txt_FORA_CFOP_RVCP_ST: TEdit;
    txt_FORA_CFOP_RVCP_TRIB: TEdit;
    txt_FORA_CFOP_RVCP_ISENT: TEdit;
    StaticText7: TStaticText;
    txt_FORA_CFOP_CF_ST: TEdit;
    txt_FORA_CFOP_CF_TRIB: TEdit;
    txt_FORA_CFOP_CF_ISENT: TEdit;
    StaticText8: TStaticText;
    txt_FORA_SUBST_CFOP_ST: TEdit;
    txt_FORA_SUBST_CFOP_TRIB: TEdit;
    txt_FORA_SUBST_CFOP_ISENT: TEdit;
    CB_CALCIMP_RV_DENTRO: TCheckBox;
    CB_CALCIMP_RVCP_DENTRO: TCheckBox;
    CB_CALCIMP_CF_DENTRO: TCheckBox;
    CB_CALCIMP_RV_FORA: TCheckBox;
    CB_CALCIMP_RVCP_FORA: TCheckBox;
    CB_CALCIMP_CF_FORA: TCheckBox;
    bbAtuCad: TBitBtn;
    TsAliquotas: TTabSheet;
    GroupBox3: TGroupBox;
    Label82: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    gb_icms_norInter: TGroupBox;
    Label96: TLabel;
    Label97: TLabel;
    Label107: TLabel;
    FORA_ICMSA: TEdit;
    FORA_REDUTNA: TEdit;
    FORA_ICMSB: TEdit;
    FORA_REDUTNB: TEdit;
    FORA_ICMSC: TEdit;
    FORA_REDUTNC: TEdit;
    FORA_ICMSD: TEdit;
    FORA_REDUTND: TEdit;
    FORA_ICMSE: TEdit;
    FORA_REDUTNE: TEdit;
    FORA_ICMSF: TEdit;
    FORA_REDUTNF: TEdit;
    FORA_ICMSG: TEdit;
    FORA_REDUTNG: TEdit;
    FORA_ICMSH: TEdit;
    FORA_REDUTNH: TEdit;
    FORA_ICMSI: TEdit;
    FORA_REDUTNI: TEdit;
    gb_icms_norEst: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label94: TLabel;
    DENTRO_ICMSA: TEdit;
    DENTRO_REDUTNA: TEdit;
    DENTRO_ICMSB: TEdit;
    DENTRO_REDUTNB: TEdit;
    DENTRO_ICMSC: TEdit;
    DENTRO_REDUTNC: TEdit;
    DENTRO_ICMSD: TEdit;
    DENTRO_REDUTND: TEdit;
    DENTRO_ICMSE: TEdit;
    DENTRO_REDUTNE: TEdit;
    DENTRO_ICMSF: TEdit;
    DENTRO_REDUTNF: TEdit;
    DENTRO_ICMSG: TEdit;
    DENTRO_REDUTNG: TEdit;
    DENTRO_ICMSH: TEdit;
    DENTRO_REDUTNH: TEdit;
    DENTRO_ICMSI: TEdit;
    DENTRO_REDUTNI: TEdit;
    GB_SERVICO: TGroupBox;
    Label102: TLabel;
    Label103: TLabel;
    DENTRO_CFOSER: TEdit;
    FORA_CFOSER: TEdit;
    CB_DENTRO_CIMP_SER: TCheckBox;
    CB_FORA_CIMP_SER: TCheckBox;
    bbIncluirFaltas: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    edt_PCF_CBS_ALIQA_DE: TEdit;
    edt_PCF_CBS_ALIQB_DE: TEdit;
    edt_PCF_CBS_ALIQC_DE: TEdit;
    edt_PCF_CBS_ALIQD_DE: TEdit;
    edt_PCF_CBS_ALIQE_DE: TEdit;
    edt_PCF_CBS_ALIQF_DE: TEdit;
    edt_PCF_CBS_ALIQG_DE: TEdit;
    edt_PCF_CBS_ALIQH_DE: TEdit;
    edt_PCF_CBS_ALIQI_DE: TEdit;
    edt_PCF_IBS_ALIQA_DE: TEdit;
    edt_PCF_IBS_ALIQB_DE: TEdit;
    edt_PCF_IBS_ALIQC_DE: TEdit;
    edt_PCF_IBS_ALIQD_DE: TEdit;
    edt_PCF_IBS_ALIQE_DE: TEdit;
    edt_PCF_IBS_ALIQF_DE: TEdit;
    edt_PCF_IBS_ALIQG_DE: TEdit;
    edt_PCF_IBS_ALIQH_DE: TEdit;
    edt_PCF_IBS_ALIQI_DE: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edt_PCF_CBS_ALIQA_FE: TEdit;
    edt_PCF_CBS_ALIQB_FE: TEdit;
    edt_PCF_CBS_ALIQC_FE: TEdit;
    edt_PCF_CBS_ALIQD_FE: TEdit;
    edt_PCF_CBS_ALIQE_FE: TEdit;
    edt_PCF_CBS_ALIQF_FE: TEdit;
    edt_PCF_CBS_ALIQG_FE: TEdit;
    edt_PCF_CBS_ALIQH_FE: TEdit;
    edt_PCF_CBS_ALIQI_FE: TEdit;
    edt_PCF_IBS_ALIQA_FE: TEdit;
    edt_PCF_IBS_ALIQB_FE: TEdit;
    edt_PCF_IBS_ALIQC_FE: TEdit;
    edt_PCF_IBS_ALIQD_FE: TEdit;
    edt_PCF_IBS_ALIQE_FE: TEdit;
    edt_PCF_IBS_ALIQF_FE: TEdit;
    edt_PCF_IBS_ALIQG_FE: TEdit;
    edt_PCF_IBS_ALIQH_FE: TEdit;
    edt_PCF_IBS_ALIQI_FE: TEdit;
    Label135: TLabel;
    CB_TPFINNFE: TComboBox;
    bbExportar: TBitBtn;
    procedure SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBnAtuClick(Sender: TObject);
    procedure Src_mTip_PedDataChange(Sender: TObject; Field: TField);
    procedure bbAtuCadClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure txt_codigoExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_STExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_ISENTExit(Sender: TObject);
    procedure txt_FORA_CFOP_RV_STExit(Sender: TObject);
    procedure txt_FORA_CFOP_RV_TRIBExit(Sender: TObject);
    procedure txt_FORA_CFOP_RV_ISENTExit(Sender: TObject);
    procedure txt_FORA_CFOP_RVCP_STExit(Sender: TObject);
    procedure txt_FORA_CFOP_RVCP_TRIBExit(Sender: TObject);
    procedure txt_FORA_CFOP_RVCP_ISENTExit(Sender: TObject);
    procedure txt_FORA_CFOP_CF_STExit(Sender: TObject);
    procedure txt_FORA_CFOP_CF_TRIBExit(Sender: TObject);
    procedure txt_FORA_CFOP_CF_ISENTExit(Sender: TObject);
    procedure txt_FORA_SUBST_CFOP_STExit(Sender: TObject);
    procedure txt_FORA_SUBST_CFOP_TRIBExit(Sender: TObject);
    procedure txt_FORA_SUBST_CFOP_ISENTExit(Sender: TObject);
    procedure DENTRO_ICMSAExit(Sender: TObject);
    procedure DENTRO_ICMSBExit(Sender: TObject);
    procedure DENTRO_ICMSCExit(Sender: TObject);
    procedure DENTRO_ICMSDExit(Sender: TObject);
    procedure DENTRO_ICMSEExit(Sender: TObject);
    procedure DENTRO_ICMSFExit(Sender: TObject);
    procedure DENTRO_ICMSGExit(Sender: TObject);
    procedure DENTRO_ICMSHExit(Sender: TObject);
    procedure DENTRO_ICMSIExit(Sender: TObject);
    procedure FORA_ICMSAExit(Sender: TObject);
    procedure FORA_ICMSBExit(Sender: TObject);
    procedure FORA_ICMSCExit(Sender: TObject);
    procedure FORA_ICMSDExit(Sender: TObject);
    procedure FORA_ICMSEExit(Sender: TObject);
    procedure FORA_ICMSFExit(Sender: TObject);
    procedure FORA_ICMSGExit(Sender: TObject);
    procedure FORA_ICMSHExit(Sender: TObject);
    procedure FORA_ICMSIExit(Sender: TObject);
    procedure DENTRO_REDUTNAExit(Sender: TObject);
    procedure DENTRO_REDUTNBExit(Sender: TObject);
    procedure DENTRO_REDUTNCExit(Sender: TObject);
    procedure DENTRO_REDUTNDExit(Sender: TObject);
    procedure DENTRO_REDUTNEExit(Sender: TObject);
    procedure DENTRO_REDUTNFExit(Sender: TObject);
    procedure DENTRO_REDUTNGExit(Sender: TObject);
    procedure DENTRO_REDUTNHExit(Sender: TObject);
    procedure DENTRO_REDUTNIExit(Sender: TObject);
    procedure FORA_REDUTNAExit(Sender: TObject);
    procedure FORA_REDUTNBExit(Sender: TObject);
    procedure FORA_REDUTNCExit(Sender: TObject);
    procedure FORA_REDUTNDExit(Sender: TObject);
    procedure FORA_REDUTNEExit(Sender: TObject);
    procedure FORA_REDUTNFExit(Sender: TObject);
    procedure FORA_REDUTNGExit(Sender: TObject);
    procedure FORA_REDUTNHExit(Sender: TObject);
    procedure FORA_REDUTNIExit(Sender: TObject);
    procedure bbIncluirFaltasClick(Sender: TObject);
    procedure edt_PCF_CBS_ALIQA_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQA_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQB_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQC_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQD_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQE_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQF_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQG_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQH_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQI_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQA_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQB_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQC_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQD_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQE_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQF_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQG_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQH_DEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQI_DEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQB_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQC_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQD_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQE_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQF_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQG_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQH_FEExit(Sender: TObject);
    procedure edt_PCF_CBS_ALIQI_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQA_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQB_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQC_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQD_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQE_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQF_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQG_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQH_FEExit(Sender: TObject);
    procedure edt_PCF_IBS_ALIQI_FEExit(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
  private
    { Private declarations }
    function Atualizar(pTipo: Integer): Boolean;
    function fGravarTipPed(pTipo: Integer): Boolean;
    function fAtualizarCfop(ptipo: Integer):Boolean;
    function fAtualizarTipo(pCodigo,pGerDup,pAtiva: Integer): Boolean;

    procedure fIncluirFaltantes;

    function fExportar: boolean;


  public
    { Public declarations }
  end;
function fTipPedgant(ptipo: Integer): Boolean;
function fAtualizardadosGerais(pOrigem: Integer): Boolean;

var
  Frm_MTipo_Ped: TFrm_MTipo_Ped;
  mtipo: Integer;
  mCodAnt: Real;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  mcaporig: String;
  mtped_oper: Integer;
implementation

uses Func, S_DM1, S_DM2, func_excecoes;

{$R *.dfm}

procedure TFrm_MTipo_Ped.SAIRClick(Sender: TObject);
begin
modalResult:=MrOk;
Close;
end;

procedure TFrm_MTipo_Ped.FormActivate(Sender: TObject);
begin
if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end;
if CAMPO.ItemIndex=-1 then
   CAMPO.ItemIndex:=0;
if mtipo<>1 then
   BBnAtu.Click;
end;

procedure TFrm_MTipo_Ped.INCLUIRClick(Sender: TObject);
begin
PC1.ActivePageIndex:=0;
tsCad.Enabled       :=True;
TsAliquotas.Enabled       :=True;
DBGrid1.Enabled     :=False;
ALTERAR.Enabled     :=False;
INCLUIR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
BBnAtu.Enabled      :=False;
DBNavigator1.Enabled:=False;
mtped_oper :=0;
Atualizar(1);
txt_descricao.SetFocus;
mCodAnt :=0;

end;

procedure TFrm_MTipo_Ped.ALTERARClick(Sender: TObject);
begin
if PC1.ActivePage<>tsCad then
   PC1.ActivePage:=tsCad;
tsCad.Enabled       :=True;
TsAliquotas.Enabled       :=True;
DBGrid1.Enabled     :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
GRAVAR.Enabled      :=True;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=True;
BBnAtu.Enabled      :=False;
DBNavigator1.Enabled:=False;
mtped_oper :=1;
txt_descricao.SetFocus;
mCodAnt :=DM2.Tb_TipPedTPCODIGO.AsFloat;

end;

procedure TFrm_MTipo_Ped.EXCLUIRClick(Sender: TObject);
begin
if DM2.Tb_TipPedTPCODIGO.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;

if DM2.Tb_TipPedTPCODIGO.AsFloat<26 then
   begin
   fmensagem('Este Parametro Esta Protegido contra exclusão!',0,['0'],0);
   Exit;
   end;
if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)<>mrYes then
   exit;
fTipPedgant(9);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADTIPPED where TPCODIGO=0'+DM2.Tb_TipPedTPCODIGO.AsString);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Tentar excluir Tipos de Pedidos: '+DM2.Tb_TipPedTPCODIGO.AsString,0,['0'],0);
   end;
BBnAtuClick(self);
CANCELARClicK(self);
end;

procedure TFrm_MTipo_Ped.CANCELARClick(Sender: TObject);
begin
DBGrid1.Enabled     :=True;
INCLUIR.Enabled     :=bbinc_true;
ALTERAR.Enabled     :=bbalt_true;
GRAVAR.Enabled      :=false;
EXCLUIR.Enabled     :=bbexc_true;
CANCELAR.Enabled    :=True;
tsCad.Enabled       :=False;
TsAliquotas.Enabled       :=false;
BBnAtu.Enabled      :=True;
DBNavigator1.Enabled:=True;

end;

procedure TFrm_MTipo_Ped.FormCreate(Sender: TObject);
var
x: Integer;
begin
    mcaporig:=Caption;

mboolean:=false;
for x:=0 to 1 do
   begin
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Select * from CADPARCFO where ');
   if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
      begin
      DM1.Query3.SQL.Add('( PCODEMP=0'+IntTosTr(codemp)+' or PCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+') and ');
      end;
   DM1.Query3.SQL.Add(' PLOCAL=0'+IntToStr(x));
   DM1.Query3.Open;
   if DM1.Query3.IsEmpty then
      begin
      mboolean:=true;
      fAtualizarCfop(x);
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Select * from CADPARCFO where ');
      if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
         begin
         DM1.Query3.SQL.Add('( PCODEMP=0'+IntTosTr(codemp)+' or PCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+') and ');
         end;
      DM1.Query3.SQL.Add(' PLOCAL=0'+IntToStr(x));
      DM1.Query3.Open;
      end;
   if x=0 then
      begin

      DENTRO_CFOSER.Text:=DM1.Query3.fieldbyName('PCFOSER').AsString;
      CB_DENTRO_CIMP_SER.Checked:=DM1.Query3.fieldbyName('PCIMP_SER').AsInteger=1;


      DENTRO_ICMSA.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSA').AsFloat);
      DENTRO_REDUTNA.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNA').AsFloat);

      DENTRO_ICMSB.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSB').AsFloat);
      DENTRO_REDUTNB.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNB').AsFloat);
      DENTRO_ICMSC.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSC').AsFloat);
      DENTRO_REDUTNC.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNC').AsFloat);
      DENTRO_ICMSD.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSD').AsFloat);
      DENTRO_REDUTND.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTND').AsFloat);
      DENTRO_ICMSE.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSE').AsFloat);
      DENTRO_REDUTNE.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNE').AsFloat);
      DENTRO_ICMSF.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSF').AsFloat);
      DENTRO_REDUTNF.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNF').AsFloat);
      DENTRO_ICMSG.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSG').AsFloat);
      DENTRO_REDUTNG.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNG').AsFloat);
      DENTRO_ICMSH.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSH').AsFloat);
      DENTRO_REDUTNH.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNH').AsFloat);
      DENTRO_ICMSI.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSI').AsFloat);
      DENTRO_REDUTNI.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNI').AsFloat);



      edt_PCF_CBS_ALIQA_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQA').Asfloat);
      edt_PCF_CBS_ALIQB_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQB').Asfloat);
      edt_PCF_CBS_ALIQC_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQC').Asfloat);
      edt_PCF_CBS_ALIQD_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQD').Asfloat);
      edt_PCF_CBS_ALIQE_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQE').Asfloat);
      edt_PCF_CBS_ALIQF_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQF').Asfloat);
      edt_PCF_CBS_ALIQG_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQG').Asfloat);
      edt_PCF_CBS_ALIQH_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQH').Asfloat);
      edt_PCF_CBS_ALIQI_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQI').Asfloat);




      edt_PCF_IBS_ALIQA_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQA').Asfloat);
      edt_PCF_IBS_ALIQB_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQB').Asfloat);
      edt_PCF_IBS_ALIQC_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQC').Asfloat);
      edt_PCF_IBS_ALIQD_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQD').Asfloat);
      edt_PCF_IBS_ALIQE_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQE').Asfloat);
      edt_PCF_IBS_ALIQF_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQF').Asfloat);
      edt_PCF_IBS_ALIQG_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQG').Asfloat);
      edt_PCF_IBS_ALIQH_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQH').Asfloat);
      edt_PCF_IBS_ALIQI_DE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQI').Asfloat);



      end
   else
      begin

      FORA_CFOSER.Text:=DM1.Query3.fieldbyName('PCFOSER').AsString;
      CB_FORA_CIMP_SER.Checked:=DM1.Query3.fieldbyName('PCIMP_SER').AsInteger=1;

      FORA_ICMSA.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSA').AsFloat);
      FORA_REDUTNA.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNA').AsFloat);

      FORA_ICMSB.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSB').AsFloat);
      FORA_REDUTNB.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNB').AsFloat);
      FORA_ICMSC.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSC').AsFloat);
      FORA_REDUTNC.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNC').AsFloat);
      FORA_ICMSD.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSD').AsFloat);
      FORA_REDUTND.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTND').AsFloat);
      FORA_ICMSE.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSE').AsFloat);
      FORA_REDUTNE.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNE').AsFloat);
      FORA_ICMSF.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSF').AsFloat);
      FORA_REDUTNF.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNF').AsFloat);
      FORA_ICMSG.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSG').AsFloat);
      FORA_REDUTNG.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNG').AsFloat);
      FORA_ICMSH.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSH').AsFloat);
      FORA_REDUTNH.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNH').AsFloat);
      FORA_ICMSI.Text   :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PICMSI').AsFloat);
      FORA_REDUTNI.Text :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PREDUTNI').AsFloat);

      edt_PCF_CBS_ALIQA_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQA').Asfloat);
      edt_PCF_CBS_ALIQB_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQB').Asfloat);
      edt_PCF_CBS_ALIQC_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQC').Asfloat);
      edt_PCF_CBS_ALIQD_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQD').Asfloat);
      edt_PCF_CBS_ALIQE_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQE').Asfloat);
      edt_PCF_CBS_ALIQF_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQF').Asfloat);
      edt_PCF_CBS_ALIQG_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQG').Asfloat);
      edt_PCF_CBS_ALIQH_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQH').Asfloat);
      edt_PCF_CBS_ALIQI_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_CBS_ALIQI').Asfloat);




      edt_PCF_IBS_ALIQA_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQA').Asfloat);
      edt_PCF_IBS_ALIQB_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQB').Asfloat);
      edt_PCF_IBS_ALIQC_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQC').Asfloat);
      edt_PCF_IBS_ALIQD_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQD').Asfloat);
      edt_PCF_IBS_ALIQE_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQE').Asfloat);
      edt_PCF_IBS_ALIQF_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQF').Asfloat);
      edt_PCF_IBS_ALIQG_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQG').Asfloat);
      edt_PCF_IBS_ALIQH_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQH').Asfloat);
      edt_PCF_IBS_ALIQI_FE.text  :=Formatfloat(mcasas_pct, DM1.Query3.fieldbyName('PCF_IBS_ALIQI').Asfloat);




      end;
   end;

bbExportar.Visible:=codusr=1111;

end;


procedure TFrm_MTipo_Ped.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key<>9) and (key<>27) then
   begin
   if (key=115) and (shift=[ssalt]) then
   else
      begin
      if key=8 then
         Edit1.Text:=copy(Edit1.Text,1,length(Edit1.Text)-1)
      else if (key=32) or (key>60) then
         Edit1.Text:=Edit1.Text+Char(key);
      end;
   end;

end;

procedure TFrm_MTipo_Ped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MTipo_Ped.BBnAtuClick(Sender: TObject);
begin
flTipPed(CAMPO.ItemIndex,Edit1.Text);

end;

function tFrm_MTipo_Ped.Atualizar(pTipo: Integer): Boolean;
begin
if (ptipo=1) or  (not DM2.Tb_TipPed.Active) or (DM2.Tb_TipPedTPCODIGO.IsNull) then
   begin
   txt_codigo.Clear;
   txt_descricao.Clear;
   CB_ENTRADA_NORMAL.Checked    :=false;
   CB_ENTRADA_CONSIGNADO.Checked:=false;
   CB_ENTRADA_REM_VENDA.Checked :=false;
   CB_ENTRADA_EST_TERC.Checked  :=false;

   CB_SAIDA_NORMAL.Checked      :=false;
   CB_SAIDA_CONSIGNADO.Checked  :=false;
   CB_SAIDA_REM_VENDA.Checked   :=false;
   CB_SAIDA_EST_TERC.Checked    :=false;

   txt_DENTRO_CFOP_RV_ST.Clear;
   txt_DENTRO_CFOP_RV_TRIB.Clear;
   txt_DENTRO_CFOP_RV_ISENT.Clear;
   CB_CALCIMP_RV_DENTRO.Checked :=true;

   txt_DENTRO_CFOP_RVCP_ST.Clear;
   txt_DENTRO_CFOP_RVCP_TRIB.Clear;
   txt_DENTRO_CFOP_RVCP_ISENT.Clear;
   CB_CALCIMP_RVCP_DENTRO.Checked :=true;

   txt_DENTRO_CFOP_CF_ST.Clear;
   txt_DENTRO_CFOP_CF_TRIB.Clear;
   txt_DENTRO_CFOP_CF_ISENT.Clear;
   CB_CALCIMP_CF_DENTRO.Checked :=true;


   txt_DENTRO_SUBST_CFOP_ST.Clear;
   txt_DENTRO_SUBST_CFOP_TRIB.Clear;
   txt_DENTRO_SUBST_CFOP_ISENT.Clear;


   txt_FORA_CFOP_RV_ST.Clear;
   txt_FORA_CFOP_RV_TRIB.Clear;
   txt_FORA_CFOP_RV_ISENT.Clear;
   CB_CALCIMP_RV_FORA.Checked :=true;

   txt_FORA_CFOP_RVCP_ST.Clear;
   txt_FORA_CFOP_RVCP_TRIB.Clear;
   txt_FORA_CFOP_RVCP_ISENT.Clear;
   CB_CALCIMP_RVCP_FORA.Checked :=true;


   txt_FORA_CFOP_CF_ST.Clear;
   txt_FORA_CFOP_CF_TRIB.Clear;
   txt_FORA_CFOP_CF_ISENT.Clear;
   CB_CALCIMP_CF_FORA.Checked :=true;



   txt_FORA_SUBST_CFOP_ST.Clear;
   txt_FORA_SUBST_CFOP_TRIB.Clear;
   txt_FORA_SUBST_CFOP_ISENT.Clear;

   CB_GERADUP.Checked         := false;
   CB_ATIVO.Checked           := false;

   txt_codusr_inc.Clear;
   txt_dathor_inc.Clear;

   txt_codusr_alt.Clear;
   txt_dathor_alt.Clear;
   CB_TPFINNFE.ItemIndex:=1;

   end
else
   begin
   txt_codigo.Text                  := DM2.Tb_TipPedTPCODIGO.AsString;
   txt_descricao.Text               := DM2.Tb_TipPedTPNOME.AsString;
   CB_ENTRADA_NORMAL.Checked        := DM2.Tb_TipPedTPENTRADA_NORMAL.AsInteger=1;
   CB_ENTRADA_CONSIGNADO.Checked    := DM2.Tb_TipPedTPENTRADA_CONSIGNADO.AsInteger=1;
   CB_ENTRADA_REM_VENDA.Checked     := DM2.Tb_TipPedTPENTRADA_REM_VENDA.AsInteger=1;
   CB_ENTRADA_EST_TERC.Checked      := DM2.Tb_TipPedTPENTRADA_EST_TERC.AsInteger=1;

   CB_SAIDA_NORMAL.Checked          := DM2.Tb_TipPedTPSAIDA_NORMAL.AsInteger=1;
   CB_SAIDA_CONSIGNADO.Checked      :=DM2.Tb_TipPedTPSAIDA_CONSIGNADO.AsInteger=1;
   CB_SAIDA_REM_VENDA.Checked       :=DM2.Tb_TipPedTPSAIDA_REM_VENDA.AsInteger=1;
   CB_SAIDA_EST_TERC.Checked        :=DM2.Tb_TipPedTPSAIDA_EST_TERC.AsInteger=1;


   txt_DENTRO_CFOP_RV_ST.Text       := DM2.Tb_TipPedTPDENTRO_CFOP_RV_ST.AsString;
   txt_DENTRO_CFOP_RV_TRIB.Text     := DM2.Tb_TipPedTPDENTRO_CFOP_RV_TRIB.AsString;
   txt_DENTRO_CFOP_RV_ISENT.Text    := DM2.Tb_TipPedTPDENTRO_CFOP_RV_ISENTO.AsString;
   CB_CALCIMP_RV_DENTRO.Checked     := DM2.Tb_TipPedTPCALCIMP_RV_DENTRO.AsInteger<>1;

   txt_DENTRO_CFOP_RVCP_ST.Text     := DM2.Tb_TipPedTPDENTRO_CFOP_RVCP_ST.AsString;
   txt_DENTRO_CFOP_RVCP_TRIB.Text   := DM2.Tb_TipPedTPDENTRO_CFOP_RVCP_TRIB.AsString;
   txt_DENTRO_CFOP_RVCP_ISENT.Text  := DM2.Tb_TipPedTPDENTRO_CFOP_RVCP_ISENTO.AsString;
   CB_CALCIMP_RVCP_DENTRO.Checked   := DM2.Tb_TipPedTPCALCIMP_RVCP_DENTRO.AsInteger<>1;

   txt_DENTRO_CFOP_CF_ST.Text       := DM2.Tb_TipPedTPDENTRO_CFOP_CF_ST.AsString;
   txt_DENTRO_CFOP_CF_TRIB.Text     := DM2.Tb_TipPedTPDENTRO_CFOP_CF_TRIB.AsString;
   txt_DENTRO_CFOP_CF_ISENT.Text    := DM2.Tb_TipPedTPDENTRO_CFOP_CF_ISENTO.AsString;
   CB_CALCIMP_CF_DENTRO.Checked     := DM2.Tb_TipPedTPCALCIMP_CF_DENTRO.AsInteger<>1;


   txt_DENTRO_SUBST_CFOP_ST.Text    := DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_ST.AsString;
   txt_DENTRO_SUBST_CFOP_TRIB.Text  := DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_TRIB.AsString;
   txt_DENTRO_SUBST_CFOP_ISENT.Text := DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_ISENTO.AsString;



   txt_FORA_CFOP_RV_ST.Text            := DM2.Tb_TipPedTPFORA_CFOP_RV_ST.AsString;
   txt_FORA_CFOP_RV_TRIB.Text          := DM2.Tb_TipPedTPFORA_CFOP_RV_TRIB.AsString;
   txt_FORA_CFOP_RV_ISENT.Text         := DM2.Tb_TipPedTPFORA_CFOP_RV_ISENTO.AsString;
   CB_CALCIMP_RV_FORA.Checked          := DM2.Tb_TipPedTPCALCIMP_RV_FORA.AsInteger<>1;

   txt_FORA_CFOP_RVCP_ST.Text          := DM2.Tb_TipPedTPFORA_CFOP_RVCP_ST.AsString;
   txt_FORA_CFOP_RVCP_TRIB.Text        := DM2.Tb_TipPedTPFORA_CFOP_RVCP_TRIB.AsString;
   txt_FORA_CFOP_RVCP_ISENT.Text       := DM2.Tb_TipPedTPFORA_CFOP_RVCP_ISENTO.AsString;
   CB_CALCIMP_RVCP_FORA.Checked        := DM2.Tb_TipPedTPCALCIMP_RVCP_FORA.AsInteger<>1;

   txt_FORA_CFOP_CF_ST.Text            := DM2.Tb_TipPedTPFORA_CFOP_CF_ST.AsString;
   txt_FORA_CFOP_CF_TRIB.Text          := DM2.Tb_TipPedTPFORA_CFOP_CF_TRIB.AsString;
   txt_FORA_CFOP_CF_ISENT.Text         := DM2.Tb_TipPedTPFORA_CFOP_CF_ISENTO.AsString;
   CB_CALCIMP_CF_FORA.Checked          := DM2.Tb_TipPedTPCALCIMP_CF_FORA.AsInteger<>1;



   txt_FORA_SUBST_CFOP_ST.Text         := DM2.Tb_TipPedTPFORA_SUBST_CFOP_ST.AsString;
   txt_FORA_SUBST_CFOP_TRIB.Text       := DM2.Tb_TipPedTPFORA_SUBST_CFOP_TRIB.AsString;
   txt_FORA_SUBST_CFOP_ISENT.Text      := DM2.Tb_TipPedTPFORA_SUBST_CFOP_ISENTO.AsString;

   CB_GERADUP.Checked                  := DM2.Tb_TipPedTPGERDUP.AsInteger<>1;
   CB_ATIVO.Checked                    := DM2.Tb_TipPedTPATIVO.AsInteger<>1;

   txt_codusr_inc.Text                 := DM2.Tb_TipPedTPCODUSR_INC.AsString;
   txt_dathor_inc.Text                 := FormatDateTime(fdathor, DM2.Tb_TipPedTPDATHOR_INC.AsDateTime);

   txt_codusr_alt.Text                  := DM2.Tb_TipPedTPCODUSR_ALT.AsString;
   txt_dathor_alt.Text                  := FormatDateTime(fdathor, DM2.Tb_TipPedTPDATHOR_ALT.AsDateTime);

   CB_TPFINNFE.ItemIndex                := DM2.Tb_TipPedTPFINNFE.AsInteger;

   end;

result:=true;
end;
procedure TFrm_MTipo_Ped.Src_mTip_PedDataChange(Sender: TObject;
  Field: TField);
begin
if not GRAVAR.Enabled then
   begin
   if DM2.Tb_TipPedTPCODIGO.IsNull then
      Atualizar(1)
   else
      begin
      if (DM2.Tb_TipPedTPCODIGO.AsFloat=0) and (Trim(txt_codigo.Text)<>'0') then
         Atualizar(0)
      else if (DM2.Tb_TipPedTPCODIGO.AsFloat<>ValFloat(txt_codigo.Text)) then
         Atualizar(0);
      end;
   end;
end;

procedure TFrm_MTipo_Ped.bbAtuCadClick(Sender: TObject);
begin
if fMensagem('Ira Substituir todos. Tem Certeza que quer Atualizar o Cadastro de Estado?',0,['1','2'],2)<>mrYes then
   exit;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADUF set ');

DM1.Query2.SQL.Add(' PCFOSER=0'+fdeixanum2(DENTRO_CFOSER.Text));
DM1.Query2.SQL.Add(',PCIMP_SER=0'+iif(CB_DENTRO_CIMP_SER.Checked,'1','0'));

DM1.Query2.SQL.Add(',PICMSA=0'+mudavp(DENTRO_ICMSA.Text));
DM1.Query2.SQL.Add(',PREDUTNA=0'+mudavp(DENTRO_REDUTNA.Text));
DM1.Query2.SQL.Add(',PICMSB=0'+mudavp(DENTRO_ICMSB.Text));
DM1.Query2.SQL.Add(',PREDUTNB=0'+mudavp(DENTRO_REDUTNB.Text));

DM1.Query2.SQL.Add(',PICMSNC=0'+mudavp(DENTRO_ICMSC.Text));
DM1.Query2.SQL.Add(',PREDUTNC=0'+mudavp(DENTRO_REDUTNC.Text));

DM1.Query2.SQL.Add(',PICMSND=0'+mudavp(DENTRO_ICMSD.Text));
DM1.Query2.SQL.Add(',PREDUTND=0'+mudavp(DENTRO_REDUTND.Text));

DM1.Query2.SQL.Add(',PICMSNE=0'+mudavp(DENTRO_ICMSE.Text));
DM1.Query2.SQL.Add(',PREDUTNE=0'+mudavp(DENTRO_REDUTNE.Text));

DM1.Query2.SQL.Add(',PICMSNF=0'+mudavp(DENTRO_ICMSF.Text));
DM1.Query2.SQL.Add(',PREDUTNF=0'+mudavp(DENTRO_REDUTNF.Text));

DM1.Query2.SQL.Add(',PICMSNG=0'+mudavp(DENTRO_ICMSG.Text));
DM1.Query2.SQL.Add(',PREDUTNG=0'+mudavp(DENTRO_REDUTNG.Text));

DM1.Query2.SQL.Add(',PICMSNH=0'+mudavp(DENTRO_ICMSH.Text));
DM1.Query2.SQL.Add(',PREDUTNH=0'+mudavp(DENTRO_REDUTNH.Text));

DM1.Query2.SQL.Add(',PICMSNI=0'+mudavp(DENTRO_ICMSI.Text));
DM1.Query2.SQL.Add(',PREDUTNI=0'+mudavp(DENTRO_REDUTNI.Text));




DM1.Query2.SQL.Add(',PCBS_ALIQA=0'+mudavp(edt_PCF_CBS_ALIQA_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQB=0'+mudavp(edt_PCF_CBS_ALIQB_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQC=0'+mudavp(edt_PCF_CBS_ALIQC_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQD=0'+mudavp(edt_PCF_CBS_ALIQD_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQE=0'+mudavp(edt_PCF_CBS_ALIQE_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQF=0'+mudavp(edt_PCF_CBS_ALIQF_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQG=0'+mudavp(edt_PCF_CBS_ALIQG_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQH=0'+mudavp(edt_PCF_CBS_ALIQH_DE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQI=0'+mudavp(edt_PCF_CBS_ALIQI_DE.text));




DM1.Query2.SQL.Add(',PIBS_ALIQA=0'+mudavp(edt_PCF_IBS_ALIQA_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQB=0'+mudavp(edt_PCF_IBS_ALIQB_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQC=0'+mudavp(edt_PCF_IBS_ALIQC_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQD=0'+mudavp(edt_PCF_IBS_ALIQD_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQE=0'+mudavp(edt_PCF_IBS_ALIQE_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQF=0'+mudavp(edt_PCF_IBS_ALIQF_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQG=0'+mudavp(edt_PCF_IBS_ALIQG_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQH=0'+mudavp(edt_PCF_IBS_ALIQH_DE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQI=0'+mudavp(edt_PCF_IBS_ALIQI_DE.text));




DM1.Query2.SQL.Add(' where ');
if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
   begin
   DM1.Query2.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
   end;
DM1.Query2.SQL.add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.sql.SavetoFile(mpastatemp +'sql.txt');
   end;

// FORA
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

DM1.Query2.SQL.Add('Update CADUF set ');

DM1.Query2.SQL.Add(' PCFOSER=0'+fdeixanum2(FORA_CFOSER.Text));
DM1.Query2.SQL.Add(',PCIMP_SER=0'+iif(CB_FORA_CIMP_SER.Checked,'1','0'));
DM1.Query2.SQL.Add(',PICMSA=0'+mudavp(FORA_ICMSA.Text));
DM1.Query2.SQL.Add(',PREDUTNA=0'+mudavp(FORA_REDUTNA.Text));
DM1.Query2.SQL.Add(',PICMSB=0'+mudavp(FORA_ICMSB.Text));
DM1.Query2.SQL.Add(',PREDUTNB=0'+mudavp(FORA_REDUTNB.Text));

DM1.Query2.SQL.Add(',PICMSNC=0'+mudavp(FORA_ICMSC.Text));
DM1.Query2.SQL.Add(',PREDUTNC=0'+mudavp(FORA_REDUTNC.Text));

DM1.Query2.SQL.Add(',PICMSND=0'+mudavp(FORA_ICMSD.Text));
DM1.Query2.SQL.Add(',PREDUTND=0'+mudavp(FORA_REDUTND.Text));

DM1.Query2.SQL.Add(',PICMSNE=0'+mudavp(FORA_ICMSE.Text));
DM1.Query2.SQL.Add(',PREDUTNE=0'+mudavp(FORA_REDUTNE.Text));

DM1.Query2.SQL.Add(',PICMSNF=0'+mudavp(FORA_ICMSF.Text));
DM1.Query2.SQL.Add(',PREDUTNF=0'+mudavp(FORA_REDUTNF.Text));

DM1.Query2.SQL.Add(',PICMSNG=0'+mudavp(FORA_ICMSG.Text));
DM1.Query2.SQL.Add(',PREDUTNG=0'+mudavp(FORA_REDUTNG.Text));

DM1.Query2.SQL.Add(',PICMSNH=0'+mudavp(FORA_ICMSH.Text));
DM1.Query2.SQL.Add(',PREDUTNH=0'+mudavp(FORA_REDUTNH.Text));

DM1.Query2.SQL.Add(',PICMSNI=0'+mudavp(FORA_ICMSI.Text));
DM1.Query2.SQL.Add(',PREDUTNI=0'+mudavp(FORA_REDUTNI.Text));



DM1.Query2.SQL.Add(',PCBS_ALIQA=0'+mudavp(edt_PCF_CBS_ALIQA_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQB=0'+mudavp(edt_PCF_CBS_ALIQB_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQC=0'+mudavp(edt_PCF_CBS_ALIQC_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQD=0'+mudavp(edt_PCF_CBS_ALIQD_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQE=0'+mudavp(edt_PCF_CBS_ALIQE_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQF=0'+mudavp(edt_PCF_CBS_ALIQF_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQG=0'+mudavp(edt_PCF_CBS_ALIQG_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQH=0'+mudavp(edt_PCF_CBS_ALIQH_FE.text));
DM1.Query2.SQL.Add(',PCBS_ALIQI=0'+mudavp(edt_PCF_CBS_ALIQI_FE.text));




DM1.Query2.SQL.Add(',PIBS_ALIQA=0'+mudavp(edt_PCF_IBS_ALIQA_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQB=0'+mudavp(edt_PCF_IBS_ALIQB_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQC=0'+mudavp(edt_PCF_IBS_ALIQC_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQD=0'+mudavp(edt_PCF_IBS_ALIQD_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQE=0'+mudavp(edt_PCF_IBS_ALIQE_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQF=0'+mudavp(edt_PCF_IBS_ALIQF_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQG=0'+mudavp(edt_PCF_IBS_ALIQG_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQH=0'+mudavp(edt_PCF_IBS_ALIQH_FE.text));
DM1.Query2.SQL.Add(',PIBS_ALIQI=0'+mudavp(edt_PCF_IBS_ALIQI_FE.text));



DM1.Query2.SQL.Add(' where ');
if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
   begin
   DM1.Query2.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
   end;
DM1.Query2.SQL.add(' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.sql.SavetoFile(mpastatemp +'sql.txt');
   end;


fAtualizardadosGerais(0);

fmensagem('Cadastro de Estado Atualidado!',0,['0'],0);


//fAjustarTipoPedido(0);

end;


function fTipPedgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(TPCODNOV) from OLD_CADTIPPED');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADTIPPED (';
v:='';
for x:=0 to DM2.Tb_TipPed.FieldCount-1 do
   begin
   if DM2.Tb_TipPed.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_TipPed.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',TPCODNOV,TPCODUSR,TPDATHOR,TPTIPOEVE   ) Select ';

v:='';
for x:=0 to DM2.Tb_TipPed.FieldCount-1 do
   begin
   if DM2.Tb_TipPed.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_TipPed.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as TPCODNOV ';
minstru:=minstru+v+IntTostr(codusr)+' as TPCODNOV ';

minstru:=minstru+',:TPDATHOR, '+IntTostr(pTipo)+' as TPTIPOEVE ';
minstru:=minstru+' from CADTIPPED where TPCODIGO=0'+DM2.Tb_TipPedTPCODIGO.Asstring;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'TPDATHOR',ptInput);

DM1.Query1.SQL.add(minstru);
DM1.Query1.ParamByName('TPDATHOR').AsDateTime:=Now;

Try
   DM1.Query1.ExecSQL;
   fdm1Startcommit;
except
   ex_erroSql(01,1184,'Frm_mtipoped','CADPFP');
   verteclado(1);
   fmensagem('Erro ao Fazer o Backup da Alteracao AC00953. Contactar Suporte',0,['0'],0);
   end;
result:=True;
end;

procedure TFrm_MTipo_Ped.GRAVARClick(Sender: TObject);
begin
if trim(txt_descricao.Text)='' then
   begin
   fmensagem('Descrição Invalida!',0,['0'],0);
   PC1.ActivePage:=tsCad;
   txt_descricao.SetFocus;
   exit;
   end;
if (ValInt(txt_codigo.Text)=0) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select max(TPCODIGO) from CADTIPPED');
   DM1.Query1.Open;
   txt_codigo.Text:=FloatToStr(DM1.query1.fields[0].asFloat+1);
   end
else if (mtped_oper=0) or ((mtped_oper=1) and (mCodAnt<>valfloat(txt_codigo.Text)) ) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select TPNOME from CADTIPPED where TPCODIGO=0'+fdeixanum2(txt_codigo.text));
   DM1.Query1.Open;
   if not (DM1.Query1.IsEmpty) then
      begin
      fmensagem('Este Código ja Esta cadastrado para: '+DM1.Query1.fields[0].AsString,0,['0'],0);
      if mtped_oper=1 then
         txt_codigo.Text:=FloatToStr(mCodAnt)
      else
         txt_codigo.Text:='';
      txt_codigo.SetFocus;
      exit;
      end;
   end;

if mtped_oper=1 then
   fTipPedgant(8);


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADPARCFO set ');

DM1.Query2.SQL.Add(' PCFOSER=0'+fdeixanum2(DENTRO_CFOSER.Text));
DM1.Query2.SQL.Add(',PCIMP_SER=0'+iif(CB_DENTRO_CIMP_SER.Checked,'1','0'));

DM1.Query2.SQL.Add(',PICMSA=0'+mudavp(DENTRO_ICMSA.Text));
DM1.Query2.SQL.Add(',PREDUTNA=0'+mudavp(DENTRO_REDUTNA.Text));

DM1.Query2.SQL.Add(',PICMSB=0'+mudavp(DENTRO_ICMSB.Text));
DM1.Query2.SQL.Add(',PREDUTNB=0'+mudavp(DENTRO_REDUTNB.Text));

DM1.Query2.SQL.Add(',PICMSC=0'+mudavp(DENTRO_ICMSC.Text));
DM1.Query2.SQL.Add(',PREDUTNC=0'+mudavp(DENTRO_REDUTNC.Text));

DM1.Query2.SQL.Add(',PICMSD=0'+mudavp(DENTRO_ICMSD.Text));
DM1.Query2.SQL.Add(',PREDUTND=0'+mudavp(DENTRO_REDUTND.Text));

DM1.Query2.SQL.Add(',PICMSE=0'+mudavp(DENTRO_ICMSE.Text));
DM1.Query2.SQL.Add(',PREDUTNE=0'+mudavp(DENTRO_REDUTNE.Text));

DM1.Query2.SQL.Add(',PICMSF=0'+mudavp(DENTRO_ICMSF.Text));
DM1.Query2.SQL.Add(',PREDUTNF=0'+mudavp(DENTRO_REDUTNF.Text));

DM1.Query2.SQL.Add(',PICMSG=0'+mudavp(DENTRO_ICMSG.Text));
DM1.Query2.SQL.Add(',PREDUTNG=0'+mudavp(DENTRO_REDUTNG.Text));

DM1.Query2.SQL.Add(',PICMSH=0'+mudavp(DENTRO_ICMSH.Text));
DM1.Query2.SQL.Add(',PREDUTNH=0'+mudavp(DENTRO_REDUTNH.Text));

DM1.Query2.SQL.Add(',PICMSI=0'+mudavp(DENTRO_ICMSI.Text));
DM1.Query2.SQL.Add(',PREDUTNI=0'+mudavp(DENTRO_REDUTNI.Text));



DM1.Query2.SQL.Add(',PCF_CBS_ALIQA=0'+mudavp(edt_PCF_CBS_ALIQA_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQB=0'+mudavp(edt_PCF_CBS_ALIQB_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQC=0'+mudavp(edt_PCF_CBS_ALIQC_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQD=0'+mudavp(edt_PCF_CBS_ALIQD_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQE=0'+mudavp(edt_PCF_CBS_ALIQE_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQF=0'+mudavp(edt_PCF_CBS_ALIQF_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQG=0'+mudavp(edt_PCF_CBS_ALIQG_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQH=0'+mudavp(edt_PCF_CBS_ALIQH_DE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQI=0'+mudavp(edt_PCF_CBS_ALIQI_DE.Text));




DM1.Query2.SQL.Add(',PCF_IBS_ALIQA=0'+mudavp(edt_PCF_IBS_ALIQA_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQB=0'+mudavp(edt_PCF_IBS_ALIQB_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQC=0'+mudavp(edt_PCF_IBS_ALIQC_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQD=0'+mudavp(edt_PCF_IBS_ALIQD_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQE=0'+mudavp(edt_PCF_IBS_ALIQE_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQF=0'+mudavp(edt_PCF_IBS_ALIQF_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQG=0'+mudavp(edt_PCF_IBS_ALIQG_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQH=0'+mudavp(edt_PCF_IBS_ALIQH_DE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQI=0'+mudavp(edt_PCF_IBS_ALIQI_DE.Text));




DM1.Query2.SQL.Add(' where ');
if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
   begin
   DM1.Query2.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
   end;
DM1.Query2.SQL.add(' PLOCAL=0');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.sql.SavetoFile(mpastatemp +'sql.txt');
   end;

// FORA
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADPARCFO set ');

DM1.Query2.SQL.Add(' PCFOSER=0'+fdeixanum2(FORA_CFOSER.Text));
DM1.Query2.SQL.Add(',PCIMP_SER=0'+iif(CB_FORA_CIMP_SER.Checked,'1','0'));


DM1.Query2.SQL.Add(',PICMSA=0'+mudavp(FORA_ICMSA.Text));
DM1.Query2.SQL.Add(',PREDUTNA=0'+mudavp(FORA_REDUTNA.Text));

DM1.Query2.SQL.Add(',PICMSB=0'+mudavp(FORA_ICMSB.Text));
DM1.Query2.SQL.Add(',PREDUTNB=0'+mudavp(FORA_REDUTNB.Text));

DM1.Query2.SQL.Add(',PICMSC=0'+mudavp(FORA_ICMSC.Text));
DM1.Query2.SQL.Add(',PREDUTNC=0'+mudavp(FORA_REDUTNC.Text));

DM1.Query2.SQL.Add(',PICMSD=0'+mudavp(FORA_ICMSD.Text));
DM1.Query2.SQL.Add(',PREDUTND=0'+mudavp(FORA_REDUTND.Text));

DM1.Query2.SQL.Add(',PICMSE=0'+mudavp(FORA_ICMSE.Text));
DM1.Query2.SQL.Add(',PREDUTNE=0'+mudavp(FORA_REDUTNE.Text));

DM1.Query2.SQL.Add(',PICMSF=0'+mudavp(FORA_ICMSF.Text));
DM1.Query2.SQL.Add(',PREDUTNF=0'+mudavp(FORA_REDUTNF.Text));

DM1.Query2.SQL.Add(',PICMSG=0'+mudavp(FORA_ICMSG.Text));
DM1.Query2.SQL.Add(',PREDUTNG=0'+mudavp(FORA_REDUTNG.Text));

DM1.Query2.SQL.Add(',PICMSH=0'+mudavp(FORA_ICMSH.Text));
DM1.Query2.SQL.Add(',PREDUTNH=0'+mudavp(FORA_REDUTNH.Text));

DM1.Query2.SQL.Add(',PICMSI=0'+mudavp(FORA_ICMSI.Text));
DM1.Query2.SQL.Add(',PREDUTNI=0'+mudavp(FORA_REDUTNI.Text));



DM1.Query2.SQL.Add(',PCF_CBS_ALIQA=0'+mudavp(edt_PCF_CBS_ALIQA_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQB=0'+mudavp(edt_PCF_CBS_ALIQB_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQC=0'+mudavp(edt_PCF_CBS_ALIQC_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQD=0'+mudavp(edt_PCF_CBS_ALIQD_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQE=0'+mudavp(edt_PCF_CBS_ALIQE_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQF=0'+mudavp(edt_PCF_CBS_ALIQF_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQG=0'+mudavp(edt_PCF_CBS_ALIQG_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQH=0'+mudavp(edt_PCF_CBS_ALIQH_FE.Text));
DM1.Query2.SQL.Add(',PCF_CBS_ALIQI=0'+mudavp(edt_PCF_CBS_ALIQI_FE.Text));




DM1.Query2.SQL.Add(',PCF_IBS_ALIQA=0'+mudavp(edt_PCF_IBS_ALIQA_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQB=0'+mudavp(edt_PCF_IBS_ALIQB_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQC=0'+mudavp(edt_PCF_IBS_ALIQC_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQD=0'+mudavp(edt_PCF_IBS_ALIQD_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQE=0'+mudavp(edt_PCF_IBS_ALIQE_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQF=0'+mudavp(edt_PCF_IBS_ALIQF_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQG=0'+mudavp(edt_PCF_IBS_ALIQG_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQH=0'+mudavp(edt_PCF_IBS_ALIQH_FE.Text));
DM1.Query2.SQL.Add(',PCF_IBS_ALIQI=0'+mudavp(edt_PCF_IBS_ALIQI_FE.Text));



DM1.Query2.SQL.Add(' where ');
if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
   begin
   DM1.Query2.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
   end;
DM1.Query2.SQL.add(' PLOCAL=1');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.sql.SavetoFile(mpastatemp +'sql.txt');
   end;


fGravarTipPed(mtped_oper);
fAtualizarTipo(valint(txt_codigo.Text),iif(CB_GERADUP.checked=true,0,1),iif(CB_ATIVO.Checked=true,0,1));

CANCELARClick(self);
end;

procedure TFrm_MTipo_Ped.txt_codigoExit(Sender: TObject);
begin
txt_codigo.Text:=fdeixanum2(txt_codigo.Text);
if trim(txt_codigo.Text)='' then
   begin
   if mtped_oper=1 then
      txt_codigo.Text:=FloatToStr(mCodAnt);
   exit;
   end;
if (mtped_oper=0) or ((mtped_oper=1) and (mCodAnt<>valfloat(txt_codigo.Text)) ) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select TPNOME from CADTIPPED where TPCODIGO=0'+fdeixanum2(txt_codigo.text));
   DM1.Query1.Open;
   if not (DM1.Query1.IsEmpty) then
      begin
      fmensagem('Este Código ja Esta cadastrado para: '+DM1.Query1.fields[0].AsString,0,['0'],0);
      if mtped_oper=1 then
         txt_codigo.Text:=FloatToStr(mCodAnt)
      else
         txt_codigo.Text:='';
      txt_codigo.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RV_STExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RV_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_ST.Text);
if txt_DENTRO_CFOP_RV_ST.Text<>'' then
   begin
   if (txt_DENTRO_CFOP_RV_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_ST.Text[1]<>'5') then
      begin
      fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
      txt_DENTRO_CFOP_RV_ST.SetFocus;
      exit;
      end;
   if valint(txt_DENTRO_CFOP_RVCP_ST.Text)=0 then
      txt_DENTRO_CFOP_RVCP_ST.Text :=txt_DENTRO_CFOP_RV_ST.Text;
   if valint(txt_DENTRO_CFOP_CF_ST.Text)=0 then
      txt_DENTRO_CFOP_CF_ST.Text   :=txt_DENTRO_CFOP_RV_ST.Text;
   if valint(txt_DENTRO_SUBST_CFOP_ST.Text)=0 then
   txt_DENTRO_SUBST_CFOP_ST.Text:=txt_DENTRO_CFOP_RV_ST.Text;
   end;
end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RV_TRIBExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RV_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_TRIB.Text);
if txt_DENTRO_CFOP_RV_TRIB.Text<>'' then
   begin
   if (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'5') then
      begin
      fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
      txt_DENTRO_CFOP_RV_TRIB.SetFocus;
      exit;
      end;

   if valint(txt_DENTRO_CFOP_RVCP_TRIB.Text)=0 then
      txt_DENTRO_CFOP_RVCP_TRIB.Text :=txt_DENTRO_CFOP_RV_TRIB.Text;
   if valint(txt_DENTRO_CFOP_CF_TRIB.Text)=0 then
      txt_DENTRO_CFOP_CF_TRIB.Text   :=txt_DENTRO_CFOP_RV_TRIB.Text;
   if valint(txt_DENTRO_SUBST_CFOP_TRIB.Text)=0 then
   txt_DENTRO_SUBST_CFOP_TRIB.Text:=txt_DENTRO_CFOP_RV_TRIB.Text;
   if txt_DENTRO_CFOP_RV_ISENT.Text='' then
      begin
      txt_DENTRO_CFOP_RV_ISENT.Text:=txt_DENTRO_CFOP_RV_TRIB.Text;
      txt_DENTRO_CFOP_RV_ISENTExit(Self);
      end;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RV_ISENTExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RV_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_ISENT.Text);
if txt_DENTRO_CFOP_RV_ISENT.Text<>'' then
   begin
   if (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'5') then
      begin
      fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
      txt_DENTRO_CFOP_RV_ISENT.SetFocus;
      exit;
      end;

   if valint(txt_DENTRO_CFOP_RVCP_ISENT.Text)=0 then
      txt_DENTRO_CFOP_RVCP_ISENT.Text :=txt_DENTRO_CFOP_RV_ISENT.Text;
   if valint(txt_DENTRO_CFOP_CF_ISENT.Text)=0 then
      txt_DENTRO_CFOP_CF_ISENT.Text   :=txt_DENTRO_CFOP_RV_ISENT.Text;
   if valint(txt_DENTRO_SUBST_CFOP_ISENT.Text)=0 then
   txt_DENTRO_SUBST_CFOP_ISENT.Text:=txt_DENTRO_CFOP_RV_ISENT.Text;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RVCP_STExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RVCP_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_ST.Text);
if (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_RVCP_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RVCP_TRIBExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RVCP_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_TRIB.Text);
if (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_RVCP_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_RVCP_ISENTExit(Sender: TObject);
begin
txt_DENTRO_CFOP_RVCP_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_ISENT.Text);
if (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_RVCP_ISENT.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_CF_STExit(Sender: TObject);
begin
txt_DENTRO_CFOP_CF_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_ST.Text);
if (txt_DENTRO_CFOP_CF_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_ST.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_CF_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_CF_TRIBExit(Sender: TObject);
begin
txt_DENTRO_CFOP_CF_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_TRIB.Text);
if (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_CF_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_CFOP_CF_ISENTExit(Sender: TObject);
begin
txt_DENTRO_CFOP_CF_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_ISENT.Text);
if (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_CFOP_CF_ISENT.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_SUBST_CFOP_STExit(Sender: TObject);
begin
txt_DENTRO_SUBST_CFOP_ST.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_ST.Text);
if (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_SUBST_CFOP_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_SUBST_CFOP_TRIBExit(Sender: TObject);
begin
txt_DENTRO_SUBST_CFOP_TRIB.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_TRIB.Text);
if (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_SUBST_CFOP_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_DENTRO_SUBST_CFOP_ISENTExit(Sender: TObject);
begin
txt_DENTRO_SUBST_CFOP_ISENT.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_ISENT.Text);
if (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'5') then
   begin
   fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
   txt_DENTRO_SUBST_CFOP_ISENT.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RV_STExit(Sender: TObject);
begin
txt_FORA_CFOP_RV_ST.Text:=fdeixanum2(txt_FORA_CFOP_RV_ST.Text);
if txt_FORA_CFOP_RV_ST.Text<>'' then
   begin
   if (txt_FORA_CFOP_RV_ST.Text[1]<>'2') and (txt_FORA_CFOP_RV_ST.Text[1]<>'6') then
      begin
      fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
      txt_FORA_CFOP_RV_ST.SetFocus;
      exit;
      end;

   if valint(txt_FORA_CFOP_RVCP_ST.Text)=0 then
      txt_FORA_CFOP_RVCP_ST.Text :=txt_FORA_CFOP_RV_ST.Text;
   if valint(txt_FORA_CFOP_CF_ST.Text)=0 then
      txt_FORA_CFOP_CF_ST.Text   :=txt_FORA_CFOP_RV_ST.Text;
   if valint(txt_FORA_SUBST_CFOP_ST.Text)=0 then
   txt_FORA_SUBST_CFOP_ST.Text:=txt_FORA_CFOP_RV_ST.Text;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RV_TRIBExit(Sender: TObject);
begin
txt_FORA_CFOP_RV_TRIB.Text:=fdeixanum2(txt_FORA_CFOP_RV_TRIB.Text);
if txt_FORA_CFOP_RV_TRIB.Text<>'' then
   begin
   if (txt_FORA_CFOP_RV_TRIB.Text[1]<>'2') and (txt_FORA_CFOP_RV_TRIB.Text[1]<>'6') then
      begin
      fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
      txt_FORA_CFOP_RV_TRIB.SetFocus;
      exit;
      end;

   if valint(txt_FORA_CFOP_RVCP_TRIB.Text)=0 then
      txt_FORA_CFOP_RVCP_TRIB.Text :=txt_FORA_CFOP_RV_TRIB.Text;
   if valint(txt_FORA_CFOP_CF_TRIB.Text)=0 then
      txt_FORA_CFOP_CF_TRIB.Text   :=txt_FORA_CFOP_RV_TRIB.Text;
   if valint(txt_FORA_SUBST_CFOP_TRIB.Text)=0 then
   txt_FORA_SUBST_CFOP_TRIB.Text:=txt_FORA_CFOP_RV_TRIB.Text;
   if txt_FORA_CFOP_RV_ISENT.Text='' then
      begin
      txt_FORA_CFOP_RV_ISENT.Text:=txt_FORA_CFOP_RV_TRIB.Text;
      txt_FORA_CFOP_RV_ISENTExit(Self);
      end;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RV_ISENTExit(Sender: TObject);
begin
txt_FORA_CFOP_RV_ISENT.Text:=fdeixanum2(txt_FORA_CFOP_RV_ISENT.Text);
if txt_FORA_CFOP_RV_ISENT.Text<>'' then
   begin
   if (txt_FORA_CFOP_RV_ISENT.Text[1]<>'2') and (txt_FORA_CFOP_RV_ISENT.Text[1]<>'6') then
      begin
      fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
      txt_FORA_CFOP_RV_ISENT.SetFocus;
      exit;
      end;

   if valint(txt_FORA_CFOP_RVCP_ISENT.Text)=0 then
      txt_FORA_CFOP_RVCP_ISENT.Text :=txt_FORA_CFOP_RV_ISENT.Text;
   if valint(txt_FORA_CFOP_CF_ISENT.Text)=0 then
      txt_FORA_CFOP_CF_ISENT.Text   :=txt_FORA_CFOP_RV_ISENT.Text;
   if valint(txt_FORA_SUBST_CFOP_ISENT.Text)=0 then
   txt_FORA_SUBST_CFOP_ISENT.Text:=txt_FORA_CFOP_RV_ISENT.Text;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RVCP_STExit(Sender: TObject);
begin
txt_FORA_CFOP_RVCP_ST.Text:=fdeixanum2(txt_FORA_CFOP_RVCP_ST.Text);
if (txt_FORA_CFOP_RVCP_ST.Text[1]<>'2') and (txt_FORA_CFOP_RVCP_ST.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_RVCP_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RVCP_TRIBExit(Sender: TObject);
begin
txt_FORA_CFOP_RVCP_TRIB.Text:=fdeixanum2(txt_FORA_CFOP_RVCP_TRIB.Text);
if (txt_FORA_CFOP_RVCP_TRIB.Text[1]<>'2') and (txt_FORA_CFOP_RVCP_TRIB.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_RVCP_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_RVCP_ISENTExit(Sender: TObject);
begin
txt_FORA_CFOP_RVCP_ISENT.Text:=fdeixanum2(txt_FORA_CFOP_RVCP_ISENT.Text);
if (txt_FORA_CFOP_RVCP_ISENT.Text[1]<>'2') and (txt_FORA_CFOP_RVCP_ISENT.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_RVCP_ISENT.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_CF_STExit(Sender: TObject);
begin
txt_FORA_CFOP_CF_ST.Text:=fdeixanum2(txt_FORA_CFOP_CF_ST.Text);
if (txt_FORA_CFOP_CF_ST.Text[1]<>'2') and (txt_FORA_CFOP_CF_ST.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_CF_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_CF_TRIBExit(Sender: TObject);
begin
txt_FORA_CFOP_CF_TRIB.Text:=fdeixanum2(txt_FORA_CFOP_CF_TRIB.Text);
if (txt_FORA_CFOP_CF_TRIB.Text[1]<>'2') and (txt_FORA_CFOP_CF_TRIB.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_CF_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_CFOP_CF_ISENTExit(Sender: TObject);
begin
txt_FORA_CFOP_CF_ISENT.Text:=fdeixanum2(txt_FORA_CFOP_CF_ISENT.Text);
if (txt_FORA_CFOP_CF_ISENT.Text[1]<>'2') and (txt_FORA_CFOP_CF_ISENT.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_CFOP_CF_ISENT.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_SUBST_CFOP_STExit(Sender: TObject);
begin
txt_FORA_SUBST_CFOP_ST.Text:=fdeixanum2(txt_FORA_SUBST_CFOP_ST.Text);
if (txt_FORA_SUBST_CFOP_ST.Text[1]<>'2') and (txt_FORA_SUBST_CFOP_ST.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_SUBST_CFOP_ST.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_SUBST_CFOP_TRIBExit(Sender: TObject);
begin
txt_FORA_SUBST_CFOP_TRIB.Text:=fdeixanum2(txt_FORA_SUBST_CFOP_TRIB.Text);
if (txt_FORA_SUBST_CFOP_TRIB.Text[1]<>'2') and (txt_FORA_SUBST_CFOP_TRIB.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_SUBST_CFOP_TRIB.SetFocus;
   exit;
   end;

end;

procedure TFrm_MTipo_Ped.txt_FORA_SUBST_CFOP_ISENTExit(Sender: TObject);
begin
txt_FORA_SUBST_CFOP_ISENT.Text:=fdeixanum2(txt_FORA_SUBST_CFOP_ISENT.Text);
if (txt_FORA_SUBST_CFOP_ISENT.Text[1]<>'2') and (txt_FORA_SUBST_CFOP_ISENT.Text[1]<>'6') then
   begin
   fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
   txt_FORA_SUBST_CFOP_ISENT.SetFocus;
   exit;
   end;

end;

function TFrm_MTipo_Ped.fGravarTipPed(pTipo: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'TPCODIGO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPNOME',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPGERDUP',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPATIVO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RV_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_RVCP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_CFOP_CF_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDENTRO_SUBST_CFOP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RV_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_RVCP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_CFOP_CF_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_ST',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_TRIB',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFORA_SUBST_CFOP_ISENTO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_NORMAL',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_CONSIGNADO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_REM_VENDA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPENTRADA_EST_TERC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_NORMAL',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_CONSIGNADO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_REM_VENDA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPSAIDA_EST_TERC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCODUSR_INC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDATHOR_INC',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCODUSR_ALT',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPDATHOR_ALT',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RV_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RVCP_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_CF_DENTRO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RV_FORA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_RVCP_FORA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPCALCIMP_CF_FORA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'TPFINNFE',ptinput);


if ptipo=0 then // inclusao
   begin
   DM1.Query2.SQL.Add('Insert into CADTIPPED ('
          +'TPCODIGO'
          +',TPNOME'
          +',TPGERDUP'
          +',TPATIVO'
          +',TPDENTRO_CFOP_RV_ST'
          +',TPDENTRO_CFOP_RV_TRIB'
          +',TPDENTRO_CFOP_RV_ISENTO'
          +',TPDENTRO_CFOP_RVCP_ST'
          +',TPDENTRO_CFOP_RVCP_TRIB'
          +',TPDENTRO_CFOP_RVCP_ISENTO'
          +',TPDENTRO_CFOP_CF_ST'
          +',TPDENTRO_CFOP_CF_TRIB'
          +',TPDENTRO_CFOP_CF_ISENTO'
          +',TPDENTRO_SUBST_CFOP_ST'
          +',TPDENTRO_SUBST_CFOP_TRIB'
          +',TPDENTRO_SUBST_CFOP_ISENTO'
          +',TPFORA_CFOP_RV_ST'
          +',TPFORA_CFOP_RV_TRIB'
          +',TPFORA_CFOP_RV_ISENTO'
          +',TPFORA_CFOP_RVCP_ST'
          +',TPFORA_CFOP_RVCP_TRIB'
          +',TPFORA_CFOP_RVCP_ISENTO'
          +',TPFORA_CFOP_CF_ST'
          +',TPFORA_CFOP_CF_TRIB'
          +',TPFORA_CFOP_CF_ISENTO'
          +',TPFORA_SUBST_CFOP_ST'
          +',TPFORA_SUBST_CFOP_TRIB'
          +',TPFORA_SUBST_CFOP_ISENTO'
          +',TPENTRADA_NORMAL'
          +',TPENTRADA_CONSIGNADO'
          +',TPENTRADA_REM_VENDA'
          +',TPENTRADA_EST_TERC'
          +',TPSAIDA_NORMAL'
          +',TPSAIDA_CONSIGNADO'
          +',TPSAIDA_REM_VENDA'
          +',TPSAIDA_EST_TERC'
          +',TPCODUSR_INC'
          +',TPDATHOR_INC'
          +',TPCODUSR_ALT'
          +',TPDATHOR_ALT'
          +',TPCALCIMP_RV_DENTRO'
          +',TPCALCIMP_RVCP_DENTRO'
          +',TPCALCIMP_CF_DENTRO'
          +',TPCALCIMP_RV_FORA'
          +',TPCALCIMP_RVCP_FORA'
          +',TPCALCIMP_CF_FORA'
          +',TPFINNFE'
          +') Values  ('
          +':TPCODIGO'
          +',:TPNOME'
          +',:TPGERDUP'
          +',:TPATIVO'
          +',:TPDENTRO_CFOP_RV_ST'
          +',:TPDENTRO_CFOP_RV_TRIB'
          +',:TPDENTRO_CFOP_RV_ISENTO'
          +',:TPDENTRO_CFOP_RVCP_ST'
          +',:TPDENTRO_CFOP_RVCP_TRIB'
          +',:TPDENTRO_CFOP_RVCP_ISENTO'
          +',:TPDENTRO_CFOP_CF_ST'
          +',:TPDENTRO_CFOP_CF_TRIB'
          +',:TPDENTRO_CFOP_CF_ISENTO'
          +',:TPDENTRO_SUBST_CFOP_ST'
          +',:TPDENTRO_SUBST_CFOP_TRIB'
          +',:TPDENTRO_SUBST_CFOP_ISENTO'
          +',:TPFORA_CFOP_RV_ST'
          +',:TPFORA_CFOP_RV_TRIB'
          +',:TPFORA_CFOP_RV_ISENTO'
          +',:TPFORA_CFOP_RVCP_ST'
          +',:TPFORA_CFOP_RVCP_TRIB'
          +',:TPFORA_CFOP_RVCP_ISENTO'
          +',:TPFORA_CFOP_CF_ST'
          +',:TPFORA_CFOP_CF_TRIB'
          +',:TPFORA_CFOP_CF_ISENTO'
          +',:TPFORA_SUBST_CFOP_ST'
          +',:TPFORA_SUBST_CFOP_TRIB'
          +',:TPFORA_SUBST_CFOP_ISENTO'
          +',:TPENTRADA_NORMAL'
          +',:TPENTRADA_CONSIGNADO'
          +',:TPENTRADA_REM_VENDA'
          +',:TPENTRADA_EST_TERC'
          +',:TPSAIDA_NORMAL'
          +',:TPSAIDA_CONSIGNADO'
          +',:TPSAIDA_REM_VENDA'
          +',:TPSAIDA_EST_TERC'
          +',:TPCODUSR_INC'
          +',:TPDATHOR_INC'
          +',:TPCODUSR_ALT'
          +',:TPDATHOR_ALT'
          +',:TPCALCIMP_RV_DENTRO'
          +',:TPCALCIMP_RVCP_DENTRO'
          +',:TPCALCIMP_CF_DENTRO'
          +',:TPCALCIMP_RV_FORA'
          +',:TPCALCIMP_RVCP_FORA'
          +',:TPCALCIMP_CF_FORA'
          +',:TPFINNFE'

          +')'
          );
   end
else
   begin
   DM1.Query2.SQL.Add('Update CADTIPPED set '
          +' TPNOME=:TPNOME'
          +',TPGERDUP=:TPGERDUP'
          +',TPATIVO=:TPATIVO'
          +',TPDENTRO_CFOP_RV_ST=:TPDENTRO_CFOP_RV_ST'
          +',TPDENTRO_CFOP_RV_TRIB=:TPDENTRO_CFOP_RV_TRIB'
          +',TPDENTRO_CFOP_RV_ISENTO=:TPDENTRO_CFOP_RV_ISENTO'
          +',TPCALCIMP_RV_DENTRO=:TPCALCIMP_RV_DENTRO'
          +',TPDENTRO_CFOP_RVCP_ST=:TPDENTRO_CFOP_RVCP_ST'
          +',TPDENTRO_CFOP_RVCP_TRIB=:TPDENTRO_CFOP_RVCP_TRIB'
          +',TPDENTRO_CFOP_RVCP_ISENTO=:TPDENTRO_CFOP_RVCP_ISENTO'
          +',TPCALCIMP_RVCP_DENTRO=:TPCALCIMP_RVCP_DENTRO'
          +',TPDENTRO_CFOP_CF_ST=:TPDENTRO_CFOP_CF_ST'
          +',TPDENTRO_CFOP_CF_TRIB=:TPDENTRO_CFOP_CF_TRIB'
          +',TPDENTRO_CFOP_CF_ISENTO=:TPDENTRO_CFOP_CF_ISENTO'
          +',TPCALCIMP_CF_DENTRO=:TPCALCIMP_CF_DENTRO'
          +',TPDENTRO_SUBST_CFOP_ST=:TPDENTRO_SUBST_CFOP_ST'
          +',TPDENTRO_SUBST_CFOP_TRIB=:TPDENTRO_SUBST_CFOP_TRIB'
          +',TPDENTRO_SUBST_CFOP_ISENTO=:TPDENTRO_SUBST_CFOP_ISENTO'
          +',TPFORA_CFOP_RV_ST=:TPFORA_CFOP_RV_ST'
          +',TPFORA_CFOP_RV_TRIB=:TPFORA_CFOP_RV_TRIB'
          +',TPFORA_CFOP_RV_ISENTO=:TPFORA_CFOP_RV_ISENTO'
          +',TPCALCIMP_RV_FORA=:TPCALCIMP_RV_FORA'
          +',TPFORA_CFOP_RVCP_ST=:TPFORA_CFOP_RVCP_ST'
          +',TPFORA_CFOP_RVCP_TRIB=:TPFORA_CFOP_RVCP_TRIB'
          +',TPFORA_CFOP_RVCP_ISENTO=:TPFORA_CFOP_RVCP_ISENTO'
          +',TPCALCIMP_RVCP_FORA=:TPCALCIMP_RVCP_FORA'
          +',TPFORA_CFOP_CF_ST=:TPFORA_CFOP_CF_ST'
          +',TPFORA_CFOP_CF_TRIB=:TPFORA_CFOP_CF_TRIB'
          +',TPFORA_CFOP_CF_ISENTO=:TPFORA_CFOP_CF_ISENTO'
          +',TPCALCIMP_CF_FORA=:TPCALCIMP_CF_FORA'
          +',TPFORA_SUBST_CFOP_ST=:TPFORA_SUBST_CFOP_ST'
          +',TPFORA_SUBST_CFOP_TRIB=:TPFORA_SUBST_CFOP_TRIB'
          +',TPFORA_SUBST_CFOP_ISENTO=:TPFORA_SUBST_CFOP_ISENTO'
          +',TPENTRADA_NORMAL=:TPENTRADA_NORMAL'
          +',TPENTRADA_CONSIGNADO=:TPENTRADA_CONSIGNADO'
          +',TPENTRADA_REM_VENDA=:TPENTRADA_REM_VENDA'
          +',TPENTRADA_EST_TERC=:TPENTRADA_EST_TERC'
          +',TPSAIDA_NORMAL=:TPSAIDA_NORMAL'
          +',TPSAIDA_CONSIGNADO=:TPSAIDA_CONSIGNADO'
          +',TPSAIDA_REM_VENDA=:TPSAIDA_REM_VENDA'
          +',TPSAIDA_EST_TERC=:TPSAIDA_EST_TERC'
          +',TPFINNFE =:TPFINNFE '
          +',TPCODUSR_INC=:TPCODUSR_INC'
          +',TPDATHOR_INC=:TPDATHOR_INC'
          +',TPCODUSR_ALT=:TPCODUSR_ALT'
          +',TPDATHOR_ALT=:TPDATHOR_ALT');
   DM1.Query2.SQL.Add(' where TPCODIGO=:TPCODIGO');
   end;

DM1.Query2.ParambyName('TPCODIGO').AsFloat                  :=Valfloat(txt_codigo.Text);
DM1.Query2.ParambyName('TPNOME').AsString                   :=txt_descricao.Text;
DM1.Query2.ParambyName('TPGERDUP').AsFloat                  :=iif(CB_GERADUP.Checked,0,1);
DM1.Query2.ParambyName('TPATIVO').AsFloat                   :=iif(CB_ATIVO.Checked,0,1);
DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_ST').AsString      :=txt_DENTRO_CFOP_RV_ST.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_TRIB').AsString    :=txt_DENTRO_CFOP_RV_TRIB.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_RV_ISENTO').AsString  :=txt_DENTRO_CFOP_RV_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_RV_DENTRO').AsFloat       :=iif(CB_CALCIMP_RV_DENTRO.Checked,0,1);

DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_ST').AsString     :=txt_DENTRO_CFOP_RVCP_ST.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_TRIB').AsString   :=txt_DENTRO_CFOP_RVCP_TRIB.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_RVCP_ISENTO').AsString :=txt_DENTRO_CFOP_RVCP_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_RVCP_DENTRO').AsFloat      :=iif(CB_CALCIMP_RVCP_DENTRO.Checked,0,1);

DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_ST').AsString       :=txt_DENTRO_CFOP_CF_ST.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_TRIB').AsString     :=txt_DENTRO_CFOP_CF_TRIB.Text;
DM1.Query2.ParambyName('TPDENTRO_CFOP_CF_ISENTO').AsString   :=txt_DENTRO_CFOP_CF_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_CF_DENTRO').AsFloat        :=iif(CB_CALCIMP_CF_DENTRO.Checked,0,1);

DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_ST').AsString    :=txt_DENTRO_SUBST_CFOP_ST.Text;
DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_TRIB').AsString  :=txt_DENTRO_SUBST_CFOP_TRIB.Text;
DM1.Query2.ParambyName('TPDENTRO_SUBST_CFOP_ISENTO').AsString:=txt_DENTRO_SUBST_CFOP_ISENT.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_RV_ST').AsString         :=txt_FORA_CFOP_RV_ST.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_RV_TRIB').AsString       :=txt_FORA_CFOP_RV_TRIB.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_RV_ISENTO').AsString     :=txt_FORA_CFOP_RV_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_RV_FORA').AsFloat          :=iif(CB_CALCIMP_RV_FORA.Checked,0,1);

DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_ST').AsString       :=txt_FORA_CFOP_RVCP_ST.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_TRIB').AsString     :=txt_FORA_CFOP_RVCP_TRIB.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_RVCP_ISENTO').AsString   :=txt_FORA_CFOP_RVCP_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_RVCP_FORA').AsFloat       :=iif(CB_CALCIMP_RVCP_FORA.Checked,0,1);

DM1.Query2.ParambyName('TPFORA_CFOP_CF_ST').AsString        :=txt_FORA_CFOP_CF_ST.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_CF_TRIB').AsString      :=txt_FORA_CFOP_CF_TRIB.Text;
DM1.Query2.ParambyName('TPFORA_CFOP_CF_ISENTO').AsString    :=txt_FORA_CFOP_CF_ISENT.Text;
DM1.Query2.ParambyName('TPCALCIMP_CF_FORA').AsFloat         :=iif(CB_CALCIMP_CF_FORA.Checked,0,1);

DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_ST').AsString     :=txt_FORA_SUBST_CFOP_ST.Text;
DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_TRIB').AsString   :=txt_FORA_SUBST_CFOP_TRIB.Text;
DM1.Query2.ParambyName('TPFORA_SUBST_CFOP_ISENTO').AsString :=txt_FORA_SUBST_CFOP_ISENT.Text;
DM1.Query2.ParambyName('TPENTRADA_NORMAL').AsFloat          :=iif(CB_ENTRADA_NORMAL.Checked,1,0);
DM1.Query2.ParambyName('TPENTRADA_CONSIGNADO').AsFloat      :=iif(CB_ENTRADA_CONSIGNADO.Checked,1,0);
DM1.Query2.ParambyName('TPENTRADA_REM_VENDA').AsFloat       :=iif(CB_ENTRADA_REM_VENDA.Checked,1,0);
DM1.Query2.ParambyName('TPENTRADA_EST_TERC').AsFloat        :=iif(CB_ENTRADA_EST_TERC.Checked,1,0);
DM1.Query2.ParambyName('TPSAIDA_NORMAL').AsFloat            :=iif(CB_SAIDA_NORMAL.Checked,1,0);
DM1.Query2.ParambyName('TPSAIDA_CONSIGNADO').AsFloat        :=iif(CB_SAIDA_CONSIGNADO.Checked,1,0);
DM1.Query2.ParambyName('TPSAIDA_REM_VENDA').AsFloat         :=iif(CB_SAIDA_REM_VENDA.Checked,1,0);
DM1.Query2.ParambyName('TPSAIDA_EST_TERC').AsFloat          :=iif(CB_SAIDA_EST_TERC.Checked,1,0);
DM1.Query2.ParambyName('TPFINNFE').AsInteger                :=CB_TPFINNFE.ItemIndex;


if pTipo=0 then
   begin
   DM1.Query2.ParambyName('TPCODUSR_INC').AsFloat           :=codusr;
   DM1.Query2.ParambyName('TPDATHOR_INC').AsDateTime        :=now;
   DM1.Query2.ParambyName('TPCODUSR_ALT').AsString          :='';
   DM1.Query2.ParambyName('TPDATHOR_ALT').AsString          :='';
   end
else
   begin
   DM1.Query2.ParambyName('TPCODUSR_INC').AsFloat           :=DM2.Tb_TipPedTPCODUSR_INC.AsFloat;
   DM1.Query2.ParambyName('TPDATHOR_INC').AsDateTime        :=DM2.Tb_TipPedTPDATHOR_INC.AsDateTime;
   DM1.Query2.ParambyName('TPCODUSR_ALT').AsFloat           :=codusr;
   DM1.Query2.ParambyName('TPDATHOR_ALT').AsDateTime        :=now;
   end;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,1184,'Frm_mtipoped','CADPFP');
   exit;
   end;
result:=true;
end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSAExit(Sender: TObject);
begin
DENTRO_ICMSA.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSA.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSBExit(Sender: TObject);
begin
DENTRO_ICMSB.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSB.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSCExit(Sender: TObject);
begin
DENTRO_ICMSC.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSC.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSDExit(Sender: TObject);
begin
DENTRO_ICMSD.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSD.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSEExit(Sender: TObject);
begin
DENTRO_ICMSE.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSE.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSFExit(Sender: TObject);
begin
DENTRO_ICMSF.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSF.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSGExit(Sender: TObject);
begin
DENTRO_ICMSG.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSG.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSHExit(Sender: TObject);
begin
DENTRO_ICMSH.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSH.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_ICMSIExit(Sender: TObject);
begin
DENTRO_ICMSI.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_ICMSI.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSAExit(Sender: TObject);
begin
FORA_ICMSA.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSA.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSBExit(Sender: TObject);
begin
FORA_ICMSB.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSB.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSCExit(Sender: TObject);
begin
FORA_ICMSC.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSC.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSDExit(Sender: TObject);
begin
FORA_ICMSD.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSD.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSEExit(Sender: TObject);
begin
FORA_ICMSE.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSE.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSFExit(Sender: TObject);
begin
FORA_ICMSF.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSF.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSGExit(Sender: TObject);
begin
FORA_ICMSG.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSG.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSHExit(Sender: TObject);
begin
FORA_ICMSH.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSH.Text));

end;

procedure TFrm_MTipo_Ped.FORA_ICMSIExit(Sender: TObject);
begin
FORA_ICMSI.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_ICMSI.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNAExit(Sender: TObject);
begin
DENTRO_REDUTNA.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNA.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNBExit(Sender: TObject);
begin
DENTRO_REDUTNB.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNB.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNCExit(Sender: TObject);
begin
DENTRO_REDUTNC.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNC.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNDExit(Sender: TObject);
begin
DENTRO_REDUTND.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTND.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNEExit(Sender: TObject);
begin
DENTRO_REDUTNE.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNE.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNFExit(Sender: TObject);
begin
DENTRO_REDUTNF.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNF.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNGExit(Sender: TObject);
begin
DENTRO_REDUTNG.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNG.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNHExit(Sender: TObject);
begin
DENTRO_REDUTNH.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNH.Text));

end;

procedure TFrm_MTipo_Ped.DENTRO_REDUTNIExit(Sender: TObject);
begin
DENTRO_REDUTNI.Text:=Formatfloat(mcasas_pct, ValFloat(DENTRO_REDUTNI.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNAExit(Sender: TObject);
begin
FORA_REDUTNA.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNA.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNBExit(Sender: TObject);
begin
FORA_REDUTNB.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNB.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNCExit(Sender: TObject);
begin
FORA_REDUTNC.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNC.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNDExit(Sender: TObject);
begin
FORA_REDUTND.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTND.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNEExit(Sender: TObject);
begin
FORA_REDUTNE.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNE.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNFExit(Sender: TObject);
begin
FORA_REDUTNF.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNF.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNGExit(Sender: TObject);
begin
FORA_REDUTNG.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNG.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNHExit(Sender: TObject);
begin
FORA_REDUTNH.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNH.Text));

end;

procedure TFrm_MTipo_Ped.FORA_REDUTNIExit(Sender: TObject);
begin
FORA_REDUTNI.Text:=Formatfloat(mcasas_pct, ValFloat(FORA_REDUTNI.Text));

end;


function TFrm_MTipo_Ped.fAtualizarCfop(ptipo: Integer):Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADPARCFO ('
                  +' PCODEMP '
                  +',PLOCAL '
                  +',PICMSA '
                  +',PICMSB '
                  +',PICMSC '
                  +',PICMSD '
                  +',PICMSE '
                  +',PICMSF '
                  +',PICMSG '
                  +',PICMSH '
                  +',PICMSI '
                  +',PREDUTNA '
                  +',PREDUTNB '
                  +',PREDUTNC '
                  +',PREDUTND '
                  +',PREDUTNE '
                  +',PREDUTNF '
                  +',PREDUTNG '
                  +',PREDUTNH '
                  +',PREDUTNI '
                  +',PCFOSUBECF_R '
                  +',PCFOSUBECF_T )');

DM1.Query1.SQL.Add(' Select '+IntToStr(codemp)+' as CODEMP ');
DM1.Query1.SQL.Add(','+IntToStr(ptipo)+' as PLOCAL '
                  +',max(PICMSA) '
                  +',max(PICMSB) '
                  +',max(PICMSNC) '
                  +',max(PICMSND) '
                  +',max(PICMSNE) '
                  +',max(PICMSNF) '
                  +',max(PICMSNG) '
                  +',max(PICMSNH) '
                  +',max(PICMSNI) '
                  +',max(PREDUTNA) '
                  +',max(PREDUTNB) '
                  +',max(PREDUTNC) '
                  +',max(PREDUTND) '
                  +',max(PREDUTNE) '
                  +',max(PREDUTNF) '
                  +',max(PREDUTNG) '
                  +',max(PREDUTNH) '
                  +',max(PREDUTNI) '
                  +',max(PCFOSUBECF_R) '
                  +',max(PCFOSUBECF_T) ' );
DM1.Query1.SQL.Add(' from CADUF where ');
if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
   begin
   DM1.Query1.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
   end;
if ptipo=0 then
   DM1.Query1.SQL.add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39))
else
   DM1.Query1.SQL.add(' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SavetoFile(mpastatemp +'sql.txt');
   // lindomar

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADPARCFO ('
                     +' PCODEMP '
                     +',PLOCAL '
                     +',PICMSA '
                     +',PICMSB '
                     +',PICMSC '
                     +',PICMSD '
                     +',PICMSE '
                     +',PICMSF '
                     +',PICMSG '
                     +',PICMSH '
                     +',PICMSI '
                     +',PREDUTNA '
                     +',PREDUTNB '
                     +',PREDUTNC '
                     +',PREDUTND '
                     +',PREDUTNE '
                     +',PREDUTNF '
                     +',PREDUTNG '
                     +',PREDUTNH '
                     +',PREDUTNI '
                     +',PCFOSUBECF_R '
                     +',PCFOSUBECF_T )');

   DM1.Query1.SQL.Add(' Select '+IntToStr(codemp)+' as CODEMP ');
   DM1.Query1.SQL.Add(','+IntToStr(ptipo)+' as PLOCAL '
                     +',0 '
                     +',0 '
                     +',0 '
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0'
                     +',0');
   DM1.Query1.SQL.Add(' from CADUF where ');
   if not DM1.Qr_tid.Locate('TINOME','CADUF',[]) then
      begin
      DM1.Query1.SQL.add(' (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntTostr(iif(codemp>100,codemp-100,codemp+100))+') and ');
      end;
   if ptipo=0 then
      DM1.Query1.SQL.add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39))
   else
      DM1.Query1.SQL.add(' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));

   try
      DM1.Query1.execsql;
   except
      DM1.Query1.sql.SavetoFile(mpastatemp +'sql.txt');
      end;

   fdm1startcommit;

   // lindomar


   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select count(*) from CADPARCFO where PLOCAL=0'+IntTosTr(ptipo));
DM1.Query2.Open;
if DM1.Query2.Fields[0].AsInteger<1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADPARCFO ('
                     +' PCODEMP '
                     +',PLOCAL '
                     +',PICMSA '  //01
                     +',PICMSB '  //02
                     +',PICMSC '      //03
                     +',PICMSD '          //04
                     +',PICMSE '  //05
                     +',PICMSF '  //06
                     +',PICMSG ' //077
                     +',PICMSH ' //08
                     +',PICMSI ' //09
                     +',PREDUTNA ' //10
                     +',PREDUTNB ' //11
                     +',PREDUTNC ' //12
                     +',PREDUTND ' //13
                     +',PREDUTNE ' //14
                     +',PREDUTNF ' //15
                     +',PREDUTNG ' //16
                     +',PREDUTNH ' //17
                     +',PREDUTNI ' //18
                     +',PCFOSUBECF_R ' //19
                     +',PCFOSUBECF_T ' //20
                     +') Values (');
    DM1.Query1.SQL.Add(IntToStr(codemp));
    DM1.Query1.SQL.Add(','+IntToStr(ptipo));
    DM1.Query1.SQL.Add(',0');  //01
    DM1.Query1.SQL.Add(',0');  //02
    DM1.Query1.SQL.Add(',0');  //03
    DM1.Query1.SQL.Add(',0');  //04
    DM1.Query1.SQL.Add(',0');  //05
    DM1.Query1.SQL.Add(',0');  //06
    DM1.Query1.SQL.Add(',0');  //07
    DM1.Query1.SQL.Add(',0');  //08
    DM1.Query1.SQL.Add(',0');  //09
    DM1.Query1.SQL.Add(',0');  //10
    DM1.Query1.SQL.Add(',0');  //11
    DM1.Query1.SQL.Add(',0');  //12
    DM1.Query1.SQL.Add(',0');  //13
    DM1.Query1.SQL.Add(',0');  //14
    DM1.Query1.SQL.Add(',0');  //15
    DM1.Query1.SQL.Add(',0');  //16
    DM1.Query1.SQL.Add(',0');  //17
    DM1.Query1.SQL.Add(',0');  //18
    DM1.Query1.SQL.Add(',0');  //19
    DM1.Query1.SQL.Add(',0)'); // I

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.SavetoFile(mpastatemp +'sql.txt');
      end;
   end;
result:=true;
end;



function fAtualizardadosGerais(pOrigem: Integer): Boolean;
begin
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Sql.Add('Select PCODEMP AS  CODEMP,PUF AS UF from CADUF ');
if not DM1.Qr_TID.locate('TINOME','CADUF',[]) then
  DM1.Query3.Sql.add(' where (PCODEMP=0'+IntToStr(codemp)+' or PCODEMP=0'+IntToStr(codemp+(iif(codemp>100,-100,100)))+')')
else if DM1.Qr_TIDTIQTD.AsInteger=1 then
  DM1.Query3.Sql.add(' where PCODEMP=0'+IntToStr(codemp));
DM1.Query3.Open;



While not DM1.Query3.Eof do
   begin
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.Add('delete from  CADUF_TPPED where  UFTP_UF='+chr(39)+DM1.Query3.fieldbyName('UF').AsString+chr(39));
   if not DM1.Qr_TID.locate('TINOME','CADUF',[]) then
     DM1.Query4.Sql.add(' and UFTP_CODEMP=0'+IntToStr(DM1.Query3.fieldbyName('CODEMP').AsInteger))
   else if DM1.Qr_TIDTIQTD.AsInteger=1 then
     DM1.Query4.Sql.add(' and UFTP_CODEMP=0'+IntToStr(DM1.Query3.fieldbyName('CODEMP').AsInteger))
   else if DM1.Qr_TIDTIQTD.AsInteger=2 then
     DM1.Query4.Sql.add(' and (UFTP_CODEMP=0'+IntToStr(DM1.Query3.fieldbyName('CODEMP').AsInteger)+' or UFTP_CODEMP=0'+IntToStr(DM1.Query3.fieldbyName('CODEMP').AsInteger+(iif(DM1.Query3.fieldbyName('CODEMP').AsInteger>100,-100,100)))+')');

   try
      DM1.Query4.ExecSQL;

      fdm1StartCommit;
   except
      DM1.Query4.SQL.SaveToFile(mpastatemp +'sql.txt');
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Insert into CADUF_TPPED ('
          +' UFTP_CODEMP'
          +',UFTP_UF'
          +',UFTP_CODTPPED'
          +',UFTP_CFOP_RV_ST'
          +',UFTP_CFOP_RV_TRIB'
          +',UFTP_CFOP_RV_ISENTO'
          +',UFTP_CALCIMP_RV'
          +',UFTP_CFOP_RVCP_ST'
          +',UFTP_CFOP_RVCP_TRIB'
          +',UFTP_CFOP_RVCP_ISENTO'
          +',UFTP_CALCIMP_RVCP'
          +',UFTP_CFOP_CF_ST'
          +',UFTP_CFOP_CF_TRIB'
          +',UFTP_CFOP_CF_ISENTO'
          +',UFTP_CALCIMP_CF'
          +',UFTP_SUBST_CFOP_ST'
          +',UFTP_SUBST_CFOP_TRIB'
          +',UFTP_SUBST_CFOP_ISENTO )'
          +' (Select '
          +DM1.Query3.fieldbyName('CODEMP').AsString
          +','+chr(39)+DM1.Query3.fieldbyName('UF').AsString+chr(39)
          +', TPCODIGO ');
   if DM1.Query3.fieldbyName('UF').AsString=DM1.Tb_EmpUF.Value then
      begin
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_ST ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_TRIB ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_RV_DENTRO ');

      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_ST ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_TRIB ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_RVCP_DENTRO ');

      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_ST ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_TRIB ');
      DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_CF_DENTRO ');

      DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_ST ');
      DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_TRIB');
      DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_ISENTO ');
      end
   else
      begin
      DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_ST ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_TRIB ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_RV_FORA ');

      DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_ST ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_TRIB ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_RVCP_FORA ');

      DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_ST ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_TRIB ');
      DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_ISENTO ');
      DM1.Query2.SQL.Add(', TPCALCIMP_CF_FORA ');

      DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_ST ');
      DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_TRIB');
      DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_ISENTO ');
      end;
   DM1.Query2.SQL.Add(' from CADTIPPED )');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query2.SQL.SaveToFile(mpastatemp +'sql01.txt');
      fmensagem('Erro ao Carregar dados dos tipos de pedidos!',0,['0'],0);
      end;
   DM1.Query3.Next;
   end;
result:=true;
end;

procedure TFrm_MTipo_Ped.bbExportarClick(Sender: TObject);
begin
fExportar;


end;
function TFrm_MTipo_Ped.fAtualizarTipo(pCodigo,pGerDup,pAtiva: Integer): Boolean;
var
query_exec: tQuery;
begin

query_exec:=tQuery.create(nil);
query_exec.DatabaseName:='SG_ASSOC';
Query_Exec.Close;
Query_Exec.SQL.Clear;
Query_Exec.SQL.Add('Update PARGER set PDUPTIP'+IntToStr(pCodigo)+'='+IntTostr(pGerDup)
                  +',PDESTTIP'+IntToStr(pCodigo)+'='+IntTostr(pAtiva));
try
   query_exec.ExecSQL;
   fdm1StartCommit;
except
  end;
FreeAndNil(query_exec);
result:=true;
end;
procedure TFrm_MTipo_Ped.bbIncluirFaltasClick(Sender: TObject);
begin
if fMensagem('Incluir os Tipos de Pedidos que Estão Faltando. Tem Certeza?',0,['1','2'],2)<>mrYes then
   exit;
fIncluirFaltantes;
end;

procedure TFrm_MTipo_Ped.fIncluirFaltantes;
var
query_atu: tQuery;

begin
query_atu:=tQuery.create(nil);
query_atu.DatabaseName := DM1.SG_ASSOC.DatabaseName;
query_atu.SQL.add('MERGE INTO CADUF_TPPED T1 USING ('
            +'select  TPCODIGO    '
            +',TPNOME,    '
            +' UFTP_CODEMP    '
            +' ,PUF,PCODEMP    '
            +'          ,UFTP_UF    '
            +'      ,'+quotedstr(DM1.Tb_EmpUF.AsString)+' AS ESTADO_EMPRESA '
            +'          ,PUF AS UFTP_UF_NOVO    '
            +'          ,UFTP_CODTPPED    '
            +'          ,TPCODIGO AS UFTP_CODTPPED_NOVO    '
            +'          ,UFTP_CFOP_RV_ST    '
            +'          ,TPFORA_CFOP_RV_ST AS UFTP_CFOP_RV_ST_FORA    '
            +'          ,TPDENTRO_CFOP_RV_ST AS UFTP_CFOP_RV_ST_DENTRO    '
            +'          ,UFTP_CFOP_RV_TRIB    '
            +'          ,TPFORA_CFOP_RV_TRIB AS  UFTP_CFOP_RV_TRIB_FORA    '
            +'          ,TPDENTRO_CFOP_RV_TRIB AS  UFTP_CFOP_RV_TRIB_DENTRO    '
            +'          ,UFTP_CFOP_RV_ISENTO    '
            +'          ,TPFORA_CFOP_RV_ST AS  UFTP_CFOP_RV_ISENTO_FORA    '
            +'          ,TPDENTRO_CFOP_RV_ST AS  UFTP_CFOP_RV_ISENTO_DENTRO    '
            +'          ,UFTP_CALCIMP_RV    '
            +'          ,TPCALCIMP_RV_FORA AS UFTP_CALCIMP_RV_FORA    '
            +'          ,TPCALCIMP_RV_DENTRO AS UFTP_CALCIMP_RV_DENTRO    '
            +'          ,UFTP_CFOP_RVCP_ST    '
            +'          ,TPFORA_CFOP_RVCP_ST AS  UFTP_CFOP_RVCP_ST_FORA    '
            +'          ,TPDENTRO_CFOP_RVCP_ST AS  UFTP_CFOP_RVCP_ST_DENTRO     '
            +'          ,UFTP_CFOP_RVCP_TRIB    '
            +'          ,TPFORA_CFOP_RVCP_TRIB AS  UFTP_CFOP_RVCP_TRIB_FORA    '
            +'          ,TPDENTRO_CFOP_RVCP_TRIB AS  UFTP_CFOP_RVCP_TRIB_DENTRO    '
            +'          ,UFTP_CFOP_RVCP_ISENTO    '
            +'          ,TPFORA_CFOP_RVCP_ISENTO AS  UFTP_CFOP_RVCP_ISENTO_FORA    '
            +'          ,TPDENTRO_CFOP_RVCP_ISENTO AS  UFTP_CFOP_RVCP_ISENTO_DENTRO    '
            +'        ,UFTP_CALCIMP_RVCP    '
            +'          ,TPCALCIMP_RVCP_FORA AS UFTP_CALCIMP_RVCP_FORA    '
            +'          ,TPCALCIMP_RVCP_DENTRO AS UFTP_CALCIMP_RVCP_DENTRO    '
            +'          ,UFTP_CFOP_CF_ST    '
            +'          ,TPFORA_CFOP_CF_ST AS  UFTP_CFOP_CF_ST_FORA    '
            +'          ,TPDENTRO_CFOP_CF_ST AS  UFTP_CFOP_CF_ST_DENTRO    '
            +'        ,UFTP_CFOP_CF_TRIB    '
            +'          ,TPFORA_CFOP_CF_TRIB AS  UFTP_CFOP_CF_TRIB_FORA    '
            +'          ,TPDENTRO_CFOP_CF_TRIB AS  UFTP_CFOP_CF_TRIB_DENTRO    '
            +'        ,UFTP_CFOP_CF_ISENTO    '
            +'          ,TPFORA_CFOP_CF_ISENTO AS  UFTP_CFOP_CF_ISENTO_FORA    '
            +'          ,TPDENTRO_CFOP_CF_ISENTO AS  UFTP_CFOP_CF_ISENTO_DENTRO    '
            +'        ,UFTP_CALCIMP_CF    '
            +'          ,TPCALCIMP_CF_FORA AS UFTP_CALCIMP_CF_FORA    '
            +'          ,TPCALCIMP_CF_DENTRO AS UFTP_CALCIMP_CF_DENTRO    '
            +'          ,UFTP_SUBST_CFOP_ST    '
            +'          ,TPFORA_SUBST_CFOP_ST AS  UFTP_SUBST_CFOP_ST_FORA    '
            +'          ,TPDENTRO_SUBST_CFOP_ST AS  UFTP_SUBST_CFOP_ST_DENTRO    '
            +'          ,UFTP_SUBST_CFOP_TRIB    '
            +'          ,TPFORA_SUBST_CFOP_TRIB AS  UFTP_SUBST_CFOP_TRIB_FORA    '
            +'          ,TPDENTRO_SUBST_CFOP_TRIB AS  UFTP_SUBST_CFOP_TRIB_DENTRO    '
            +'          ,UFTP_SUBST_CFOP_ISENTO    '
            +'          ,TPFORA_SUBST_CFOP_ISENTO AS  UFTP_SUBST_CFOP_ISENTO_FORA    '
            +'          ,TPDENTRO_SUBST_CFOP_ISENTO AS  UFTP_SUBST_CFOP_ISENTO_DENTRO    '
            +' from        CADUF, CADTIPPED    '
            +'   left join  CADUF_TPPED on (TPCODIGO = UFTP_CODTPPED )    '
            +'   where    '
            +' UFTP_UF IS NULL    '
            +'   ) ss    '
            +'   on (t1.UFTP_UF = ss.UFTP_UF_NOVO    '
            +'   AND t1.UFTP_CODTPPED = ss.UFTP_CODTPPED_NOVO    '
            +'   AND t1.UFTP_CODEMP = ss.PCODEMP)    '
            +'   WHEN NOT MATCHED THEN    '
            +'             INSERT(    '
            +'             UFTP_CODEMP    '
            +'          ,UFTP_UF    '
            +'          ,UFTP_CODTPPED    '
            +'          ,UFTP_CFOP_RV_ST    '
            +'          ,UFTP_CFOP_RV_TRIB    '
            +'          ,UFTP_CFOP_RV_ISENTO    '
            +'          ,UFTP_CALCIMP_RV    '
            +'          ,UFTP_CFOP_RVCP_ST    '
            +'          ,UFTP_CFOP_RVCP_TRIB    '
            +'          ,UFTP_CFOP_RVCP_ISENTO    '
            +'          ,UFTP_CALCIMP_RVCP    '
            +'          ,UFTP_CFOP_CF_ST    '
            +'          ,UFTP_CFOP_CF_TRIB    '
            +'          ,UFTP_CFOP_CF_ISENTO    '
            +'          ,UFTP_CALCIMP_CF    '
            +'          ,UFTP_SUBST_CFOP_ST    '
            +'          ,UFTP_SUBST_CFOP_TRIB    '
            +'          ,UFTP_SUBST_CFOP_ISENTO )    '
            +'          values (    '
            +'      ss.PCODEMP,    '
            +'      ss.UFTP_UF_NOVO,    '
            +'      ss.UFTP_CODTPPED_NOVO,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RV_ST_DENTRO else UFTP_CFOP_RV_ST_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RV_TRIB_DENTRO else UFTP_CFOP_RV_TRIB_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RV_ISENTO_DENTRO else UFTP_CFOP_RV_ISENTO_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CALCIMP_RV_DENTRO else UFTP_CALCIMP_RV_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RVCP_ST_DENTRO else UFTP_CFOP_RVCP_ST_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RVCP_TRIB_DENTRO else UFTP_CFOP_RVCP_TRIB_FORA end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_RVCP_ISENTO_DENTRO else UFTP_CFOP_RVCP_ISENTO_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CALCIMP_RVCP_DENTRO else UFTP_CALCIMP_RVCP_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_CF_ST_DENTRO else UFTP_CFOP_CF_ST_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_CF_TRIB_DENTRO else UFTP_CFOP_CF_TRIB_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CFOP_CF_ISENTO_DENTRO else UFTP_CFOP_CF_ISENTO_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_CALCIMP_CF_DENTRO else UFTP_CALCIMP_CF_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_SUBST_CFOP_ST_DENTRO else UFTP_SUBST_CFOP_ST_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_SUBST_CFOP_TRIB_DENTRO else UFTP_SUBST_CFOP_TRIB_fora end,    '
            +'      case when ss.ESTADO_EMPRESA=UFTP_UF_NOVO then UFTP_SUBST_CFOP_ISENTO_DENTRO else UFTP_SUBST_CFOP_ISENTO_fora end    '
            +'      )    ');

ex_erroSql_Novo(query_atu,2310,'CADUF_TPPED','CADUF_TPPED');

try
   query_atu.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_atu,2310,'CADUF_TPPED','CADUF_TPPED');
   end;
   end;


query_atu.close;
freeandnil(query_atu);

ShowMessage('Concluido!');

end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQA_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQA_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQA_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQA_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQA_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQA_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQB_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQB_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQB_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQC_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQC_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQC_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQD_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQD_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQD_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQE_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQE_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQE_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQF_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQF_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQF_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQG_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQG_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQG_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQH_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQH_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQH_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQI_DEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQI_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQI_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQA_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQA_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQA_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQB_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQB_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQB_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQC_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQC_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQC_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQD_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQD_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQD_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQE_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQE_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQE_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQF_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQF_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQF_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQG_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQG_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQG_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQH_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQH_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQH_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQI_DEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQI_DE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQI_DE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQB_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQB_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQB_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQC_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQC_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQC_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQD_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQD_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQD_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQE_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQE_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQE_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQF_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQF_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQF_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQG_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQG_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQG_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQH_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQH_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQH_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_CBS_ALIQI_FEExit(Sender: TObject);
begin
edt_PCF_CBS_ALIQI_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_CBS_ALIQI_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQA_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQA_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQA_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQB_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQB_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQB_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQC_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQC_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQC_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQD_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQD_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQD_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQE_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQE_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQE_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQF_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQF_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQF_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQG_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQG_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQG_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQH_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQH_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQH_FE.Text));
end;

procedure TFrm_MTipo_Ped.edt_PCF_IBS_ALIQI_FEExit(Sender: TObject);
begin
edt_PCF_IBS_ALIQI_FE.Text:=Formatfloat(mcasas_pct, ValFloat(edt_PCF_IBS_ALIQI_FE.Text));
end;

function TFrm_MTipo_Ped.fExportar: boolean;
var
mTiposDePedidos: tStrings;
mNomeSaida: String;
mLinha: String;
mColunaExcel: integer;
   procedure fAdicionarColuna(pNome: String);
   begin
   mColunaExcel:=mColunaExcel+1;
   mLinha:=mLinha+pNome+'-'+ColunaParaLetraExcel(mColunaExcel)+';';
   end;
begin
mNomeSaida:=ExtractFilePath(Application.ExeName)+'\TIPOPED.CSV';
mTiposDePedidos:=TStringList.Create;
mColunaExcel:=0;

mLinha:='';

fAdicionarColuna('TPCODIGO');
fAdicionarColuna('TPNOME');
fAdicionarColuna('TPENTRADA_NORMAL');
fAdicionarColuna('TPENTRADA_CONSIGNADO');
fAdicionarColuna('TPENTRADA_REM_VENDA');
fAdicionarColuna('TPENTRADA_EST_TERC');
fAdicionarColuna('TPSAIDA_NORMAL');
fAdicionarColuna('TPSAIDA_CONSIGNADO');
fAdicionarColuna('TPSAIDA_REM_VENDA');
fAdicionarColuna('TPSAIDA_EST_TERC');
fAdicionarColuna('TPDENTRO_CFOP_RV_ST');
fAdicionarColuna('TPDENTRO_CFOP_CF_ST');
fAdicionarColuna('TPDENTRO_SUBST_CFOP_ST');
fAdicionarColuna('TPDENTRO_CFOP_RV_TRIB');
fAdicionarColuna('TPDENTRO_CFOP_CF_TRIB');
fAdicionarColuna('TPDENTRO_SUBST_CFOP_TRIB');
fAdicionarColuna('TPDENTRO_CFOP_RV_ISENTO');
fAdicionarColuna('TPDENTRO_CFOP_CF_ISENTO');
fAdicionarColuna('TPDENTRO_SUBST_CFOP_ISENTO');
fAdicionarColuna('TPCALCIMP_RV_DENTRO');
fAdicionarColuna('TPCALCIMP_CF_DENTRO');
fAdicionarColuna('TPFORA_CFOP_RV_ST');
fAdicionarColuna('TPFORA_CFOP_CF_ST');
fAdicionarColuna('TPFORA_SUBST_CFOP_ST');
fAdicionarColuna('TPFORA_CFOP_RV_TRIB');
fAdicionarColuna('TPFORA_CFOP_CF_TRIB');
fAdicionarColuna('TPFORA_SUBST_CFOP_TRIB');
fAdicionarColuna('TPFORA_CFOP_RV_ISENTO');
fAdicionarColuna('TPFORA_CFOP_CF_ISENTO');
fAdicionarColuna('TPFORA_SUBST_CFOP_ISENTO');
fAdicionarColuna('TPCALCIMP_RV_FORA');
fAdicionarColuna('TPCALCIMP_CF_FORA');
fAdicionarColuna('TPGERDUP');
fAdicionarColuna('TPATIVO');
fAdicionarColuna('TPFINNFE');
mTiposDePedidos.Add(mLinha);




dm2.Tb_TipPed.First;
While not DM2.Tb_TipPed.Eof do
   begin
   mLinha:=DM2.Tb_TipPedTPCODIGO.AsString+';';
   mLinha:=mLinha+RetiraAcentos(DM2.Tb_TipPedTPNOME.AsString)+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPENTRADA_NORMAL.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPENTRADA_CONSIGNADO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPENTRADA_REM_VENDA.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPENTRADA_EST_TERC.AsString+';';

   mLinha:=mLinha+DM2.Tb_TipPedTPSAIDA_NORMAL.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPSAIDA_CONSIGNADO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPSAIDA_REM_VENDA.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPSAIDA_EST_TERC.AsString+';';


   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_RV_ST.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_CF_ST.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_ST.AsString+';';

   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_RV_TRIB.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_CF_TRIB.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_TRIB.AsString+';';

   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_RV_ISENTO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_CFOP_CF_ISENTO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPDENTRO_SUBST_CFOP_ISENTO.AsString+';';

   mLinha:=mLinha+iif(DM2.Tb_TipPedTPCALCIMP_RV_DENTRO.AsInteger=1,'true','false')+';';
   mLinha:=mLinha+iif(DM2.Tb_TipPedTPCALCIMP_CF_DENTRO.AsInteger=1,'true','false')+';';



   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_RV_ST.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_CF_ST.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_SUBST_CFOP_ST.AsString+';';

   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_RV_TRIB.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_CF_TRIB.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_SUBST_CFOP_TRIB.AsString+';';

   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_RV_ISENTO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_CFOP_CF_ISENTO.AsString+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFORA_SUBST_CFOP_ISENTO.AsString+';';

   mLinha:=mLinha+iif(DM2.Tb_TipPedTPCALCIMP_RV_FORA.AsInteger=1,'true','false')+';';
   mLinha:=mLinha+iif(DM2.Tb_TipPedTPCALCIMP_CF_FORA.AsInteger=1,'true','false')+';';

   mLinha:=mLinha+iif(DM2.Tb_TipPedTPGERDUP.AsInteger=1,'true','false')+';';
   mLinha:=mLinha+iif(DM2.Tb_TipPedTPATIVO.AsInteger=1,'false','true')+';';
   mLinha:=mLinha+DM2.Tb_TipPedTPFINNFE.AsString+';';
   mTiposDePedidos.Add(mLinha);
   DM2.Tb_TipPed.Next;
   end;
try
   mTiposDePedidos.SaveToFile(mNomeSaida);
   MessageDlg('Arquivo salvo como '+mNomeSaida,mtInformation,[mbOk],0);
   freeandnil(mTiposDePedidos);
   result:=true;
except
   begin
   MessageDlg('Erro ao Tentar Salvar o Arquivo '+mNomeSaida,mtError,[mbOk],0);
   result:=false;
   end;
   end;


end;

end.
