unit s_Compras_Orc_GerarOrcVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, S_PVO,dbtables, Grids, DBGrids,S_SelEmp;

type
  TFrm_Compras_Orc_GerarOrcVendas = class(TForm)
    Label1: TLabel;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Label4: TLabel;
    edt_codven: TEdit;
    edt_NOMVEN: TEdit;
    Label5: TLabel;
    CB_TABPV: TComboBox;
    edt_CODPV: TEdit;
    NOMPV: TEdit;
    bbFaturar: TBitBtn;
    bbSair: TBitBtn;
    lbl_pedido_origem: TLabel;
    cds_pedfor2: TClientDataSet;
    src_pedfor2: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    cds_pedfor2PF2CHAVE: TIntegerField;
    cds_pedfor2PF2CODPRO: TFloatField;
    cds_pedfor2PF2QTDP: TFloatField;
    cds_pedfor2PDNOME: TStringField;
    cds_pedfor2PDUND: TStringField;
    cds_pedfor2PF2ITEM: TIntegerField;
    cds_pedfor2PF1DATAP: TDateTimeField;
    cds_pedfor2PF1TOTALL: TFloatField;
    cds_pedfor2FRAZAO: TStringField;
    cds_aliquotas: TClientDataSet;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_credsn: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    tb_ped02_pre: TClientDataSet;
    tb_ped02_preP2ICMS_PERC: TFloatField;
    tb_ped02_preP2ICMS_PPRED: TFloatField;
    tb_ped02_preP2ICMSSN_PERC: TFloatField;
    tb_ped02_preP2ST_IVA: TFloatField;
    tb_ped02_preP2ST_REDUT: TFloatField;
    tb_ped02_preP2ST_ICMSCRED: TFloatField;
    tb_ped02_preP2ST_ICMSDEB: TFloatField;
    tb_ped02_preP2MODBCST: TIntegerField;
    tb_ped02_preP2IPI_PERC: TFloatField;
    tb_ped02_preP2CST: TStringField;
    tb_ped02_preP2CSOSN_ORI: TIntegerField;
    tb_ped02_preP2CSOSN: TIntegerField;
    tb_ped02_preP2PIS_PERC: TFloatField;
    tb_ped02_preP2CST_PIS: TStringField;
    tb_ped02_preP2CST_COFINS: TStringField;
    tb_ped02_preP2COFINS_PERC: TFloatField;
    tb_ped02_preP2CONTESP: TIntegerField;
    tb_ped02_preP2CODPRO: TFloatField;
    tb_ped02_preP2ICMS_PPRED_101: TFloatField;
    tb_ped02_preP2ST_IVA_101: TFloatField;
    tb_ped02_preP2ST_REDUT_101: TFloatField;
    tb_ped02_preP2ST_ICMSCRED_101: TFloatField;
    tb_ped02_preP2ST_ICMSDEB_101: TFloatField;
    tb_ped02_preP2MODBCST_101: TFloatField;
    tb_ped02_preP2CFOP_ECF: TIntegerField;
    tb_ped02_preP2CFOP_NF: TIntegerField;
    tb_ped02_preP2PRECO_MAXCONS: TFloatField;
    tb_ped02_preP2QTD: TFloatField;
    tb_ped02_preP2CODEMP: TIntegerField;
    tb_ped02_preP2LOTSEQ: TIntegerField;
    tb_ped02_preP2CHAVE: TIntegerField;
    tb_ped02_preP2ORDEM: TIntegerField;
    tb_ped02_preP2PRECO: TFloatField;
    tb_ped02_preP2ITEM: TIntegerField;
    tb_ped02_preP2CONS_PROPRIO: TIntegerField;
    tb_ped02_prePDNOME: TStringField;
    tb_ped02_preP2DESCPR: TFloatField;
    tb_ped02_preP2PCOMIS: TFloatField;
    tb_ped02_preP2CODVEN: TFloatField;
    tb_ped02_preP2CST_IPI: TStringField;
    tb_ped02_preP2DESCFIN_PERC: TFloatField;
    tb_ped02_preP2AMBIENTE: TStringField;
    tb_ped02_preP2DESC_COMP: TStringField;
    tb_ped02_preP2PROMOCAO: TStringField;
    tb_ped02_preP2DESC_PERC01: TFloatField;
    tb_ped02_preP2DESC_PERC02: TFloatField;
    tb_ped02_preP2DESC_PERC03: TFloatField;
    tb_ped02_preP2VALDES: TFloatField;
    tb_ped02_preP2TIPO_PCO: TIntegerField;
    tb_ped02_preP2ICMS_ALIPI: TFloatField;
    tb_ped02_preP2ALIQICMSDES: TFloatField;
    tb_ped02_preP2ALIQAPROXTRIB: TFloatField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PCOTAB: TFloatField;
    tb_ped02_preP2UCPR: TFloatField;
    tb_ped02_preP2PCOCUS: TFloatField;
    cds_pedfor2PDPRECO1: TFloatField;
    cds_pedfor2PDUCPR: TFloatField;
    cds_pedfor2PDPRECOC: TFloatField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02_preP2CBENEF: TStringField;
    tb_ped02_preP2ID_NEW: TFloatField;
    tb_ped02_preP2ID_PED01_NEW: TFloatField;
    tb_ped02_preP2ID_NEW_101: TFloatField;
    tb_ped02_preP2IRRF_PERC: TFloatField;
    tb_ped02_preP2IRRF_VALOR: TFloatField;
    tb_ped02_preP2CSLL_PERC: TFloatField;
    tb_ped02_preP2CSLL_VALOR: TFloatField;
    cds_aliquotasrequer_pedori: TIntegerField;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    tb_ped02_preP2MOTIVODESONERACAO: TFloatField;
    cds_aliquotasal_ibs_mun: TFloatField;
    cds_aliquotasal_ibs_uf: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    tb_ped02_preP2CBS_CST: TStringField;
    tb_ped02_preP2CODCLASSTRIB: TStringField;
    tb_ped02_preP2CBS_ALIQ: TFloatField;
    tb_ped02_preP2IBS_UF_ALIQ: TFloatField;
    tb_ped02_preP2IBS_MUN_ALIQ: TFloatField;
    tb_ped02_preP2NRECEITUARIO: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codvenExit(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CODPVExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
  private
    { Private declarations }
    mPed_Cli_CRT: integer;

    mChave_Fat: integer;

    function fLerPedidoDeCompras: boolean;

    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;


  public

    { Public declarations }
    form_pvo_fatemp: Tfrm_Pvo;
     Form_SelEmp: TFrm_SelEmp;

    mPFCodEmp: integer;
    mPFChave: integer;


  end;

var
  Frm_Compras_Orc_GerarOrcVendas: TFrm_Compras_Orc_GerarOrcVendas;

  mfatemp_tipop_padrao: Integer=0;

implementation

uses S_DM1, Func,lerarq, func_excecoes, S_Vendas_GravarPedido;

{$R *.dfm}

procedure TFrm_Compras_Orc_GerarOrcVendas.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_codcliExit(Sender: TObject);
begin
if BBSAIR.Focused then
   exit;
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if trim(edt_codcli.Text)='' then
   exit;
if not flcadcli(1,0,edt_codcli.Text) then
   begin
   fmensagem('Cliente não Cadastrado!',0,['0'],0);
   edt_CODCLI.SetFocus;
   exit;
   end
else
   begin
   edt_NOMCLI.Text  :=DM1.Tb_CliCRAZAO.Value;
   if DM1.Tb_CliCCODVEN.Asfloat>0 then
      edt_CODVEN.Text  :=DM1.Tb_CliCCODVEN.AsString
   else
      begin
      edt_CODVEN.Text:='';
      edt_NOMVEN.Text:='';
      end;
   mPed_Cli_CRT := DM1.Tb_CliCSUPERMICRO.asinteger;

   if fsonumero(edt_CODVEN.Text)>0 then
      begin
      edt_codvenExit(self);
      end;
   if DM1.Tb_CliCCODPV.asfloat>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
      edt_CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
      cb_tabpvExit(Self);
      end;
   end;
flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);

if (Trim(edt_CODCLI.Text) = '') or (ValInt(edt_CODCLI.Text) = 0) then
   edt_NOMCLI.Text := '';

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_codvenExit(Sender: TObject);
begin
if flcadven(1,0,Trim(edt_CODVEN.Text)) then
   edt_NOMVEN.Text:=DM1.Tb_VenVNOME.Value
else
   begin
   fmensagem('Vendedor não Cadastrado!',0,['0'],0);
   if edt_CODVEN.Enabled then
      edt_CODVEN.SetFocus;
   end;

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.CB_TABPVExit(Sender: TObject);
begin
if (BBSAIR.Focused) then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') then
   begin
   fmensagem('Tabelas Válidas "AV","AP","PP","PO"',0,['0'],0);
   exit;
   end;
if CB_TABPV.Text='PO' then
   edt_CODPV.Text:='99';

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_codcliKeyPress(
  Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'Frm_FatEmp',key);
   edt_codcliExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_codvenKeyPress(
  Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODVEN.Text:=fChamaVen(0,'frm_campras_orc_gerar',Key);
   edt_codvenExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_CODPVKeyPress(
  Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_CODPV.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(edt_codpv.Text)<>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
      edt_CODPVExit(self);
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.edt_CODPVExit(Sender: TObject);
begin
if (CB_TABPV.Text='PO') and (edt_CODPV.Text='99') then
   begin
   NOMPV.Text:='Plano Opcional(Digitado)';
   form_pvo_fatemp.ShowModal;
   mpvtdc       := form_pvo_fatemp.CB_PVTPDC.ItemIndex;
   mpvtc        := form_pvo_fatemp.CB_PVTPC.ItemIndex;
   mpvtpd1      := form_pvo_fatemp.CB_PVTPD1.ItemIndex;
   mpvtpd2      := form_pvo_fatemp.CB_PVTPD2.ItemIndex;
   mpvtpdesf    := form_pvo_fatemp.CB_PVTPDESF.ItemIndex;
   mtpp         := form_pvo_fatemp.CB_TPP.ItemIndex;
   mpvcom       := valfloat(form_pvo_fatemp.COM.Text);
   mpvactd      := valfloat(form_pvo_fatemp.ACTD.Text);
   mpvact00     := valfloat(form_pvo_fatemp.ACT00.Text);
   mpvact01     := ValFloat(form_pvo_fatemp.ACT01.Text);
   mpvact99     := ValFloat(form_pvo_fatemp.ACT99.Text);
   mpvdes       := ValFloat(form_pvo_fatemp.DES.Text);
   mpvdes1      := ValFloat(form_pvo_fatemp.DES1.Text);
   mpvdes2      := ValFloat(form_pvo_fatemp.DES2.Text);
   mpvdescf     := ValFloat(form_pvo_fatemp.DESCF.Text);
   mpvddescf    := form_pvo_fatemp.CB_PVDDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(form_pvo_fatemp.DIASDESCF.Text));
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,edt_CODpv.Text) then
      begin
      fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      end
   else
      begin
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
      mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
      mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
      mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
      mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
      mtpp         := DM1.Tb_PVPVTPP.AsInteger;
      mpvcom       := DM1.Tb_PVPVCOM.Value;
      mpvactd      := DM1.Tb_PVPVACTD.Value;
      mpvact00     := DM1.Tb_PVPVACT00.Value;
      mpvact01     := DM1.Tb_PVPVACT01.Value;
      mpvact99     := DM1.Tb_PVPVACT99.Value;
      mpvdes       := DM1.Tb_PVPVDES.Value;
      mpvdes1      := DM1.Tb_PVPVDES1.Value;
      mpvdes2      := DM1.Tb_PVPVDES2.Value;
      mpvdescf     := DM1.Tb_PVPVDESCF.Value;
      mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
      mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
      form_pvo_fatemp.Tb_Po99_nov.Close;
      form_pvo_fatemp.Tb_Po99_nov.SQL.Clear;
      form_pvo_fatemp.Tb_Po99_nov.SQL.add('Select PV2CODEMP as POCODEMP, '
                             +' PV2PRAZO as POPRAZO from CADPV2 '
                             +' where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                             +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                             +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                             +' order by PV2PRAZO');
      form_pvo_fatemp.Tb_Po99_nov.Open;
      end;
   end;

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_PVO, form_pvo_fatemp);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;


function TFrm_Compras_Orc_GerarOrcVendas.fLerPedidoDeCompras: boolean;
var
query_pf: tQuery;
begin
cds_aliquotas.CreateDataSet;

query_pf:=tQuery.create(nil);
query_pf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_pf.SQL.add('SELECT PF2CHAVE,PF2CODPRO,PF2QTDP,PDNOME,PDUND,PF2ITEM '
                +' ,PF1DATA AS PF1DATAP, PF1TOTLIQ AS PF1TOTALL, FRAZAO '
                +',CASE WHEN PDPRECO1=0 THEN PF2PU ELSE PDPRECO1 END AS PDPRECO1,PDUCPR,PDPRECOC '
                +' FROM CADPF1,CADPF2,CADPRO,CADFOR '
                +' WHERE PDCODPRO=PF2CODPRO '
                +' AND PDCODEMP='+intToStr(iif(mPFCodEmp>100, mpfCodemp-100, mpfcodemp))

                +' AND PF1CODEMP=PF2CODEMP '
                +' AND PF1CHAVE=PF2CHAVE '
                +' AND FCODFOR=PF1CODFOR  '
                +' AND PF1CODEMP='+Inttostr(mPFCodEmp)
//                +' AND PF1CODEMP='+intToStr(iif(mPFCodEmp>100, mpfCodemp-100, mpfcodemp))

                +' AND PF2CODEMP='+Inttostr(mPFCodEmp)
                +' AND PF2CHAVE='+Inttostr(mPFChave)
                +' order by PF2ITEM '
                );
try
   query_pf.Open;
   if query_pf.isEmpty then
      begin
      lbl_pedido_origem.Caption:='Chave '+IntToStr(mPFChave)+'/'+IntToStr(mPFCodEmp)+' chave não encontrada! ';
      result := false;
      end
   else
      begin
      lbl_pedido_origem.Caption:='Chave '+IntToStr(mPFChave)+' - '+query_pf.fieldbyname('FRAZAO').Asstring+' Data '
      + formatdatetime(fdt2, query_pf.fieldbyname('PF1DATAP').AsDateTime);
      result := true;
      end;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf,293,'SGE','CAMPOS_ORC_GERAR_ORC_VENDAS');
   result:=false;
   end;
   end;
if cds_pedfor2.Active then
   cds_pedfor2.EmptyDataSet
else
   begin
//   cds_pedfor2.CreateDataSet;
   cds_pedfor2.Open;
   end;
cds_pedfor2PDPRECO1.displayformat := mCasas;   

While not Query_pf.Eof do
   begin
   cds_pedfor2.Append;         
   cds_pedfor2PF2CHAVE.AsInteger := query_pf.fieldbyname('PF2CHAVE').AsInteger;
   cds_pedfor2PF2CODPRO.AsFloat := query_pf.fieldbyname('PF2CODPRO').AsFloat;
   cds_pedfor2PF2QTDP.AsFloat := query_pf.fieldbyname('PF2QTDP').AsFloat;
   cds_pedfor2PDNOME.AsString := query_pf.fieldbyname('PDNOME').AsString;
   cds_pedfor2PDUND.AsString := query_pf.fieldbyname('PDUND').AsString;
   cds_pedfor2PF2ITEM.AsInteger := query_pf.fieldbyname('PF2ITEM').AsInteger;
   cds_pedfor2PF1DATAP.AsDateTime := query_pf.fieldbyname('PF1DATAP').AsDateTime;
   cds_pedfor2PF1TOTALL.AsFloat := query_pf.fieldbyname('PF1TOTALL').AsFloat;
   cds_pedfor2FRAZAO.AsString := query_pf.fieldbyname('FRAZAO').AsString;
   cds_pedfor2PDPRECO1.AsFloat := query_pf.fieldbyname('PDPRECO1').AsFloat;
   cds_pedfor2PDUCPR.AsFloat := query_pf.fieldbyname('PDUCPR').AsFloat;
   cds_pedfor2PDPRECOC.AsFloat := query_pf.fieldbyname('PDPRECOC').AsFloat;
   cds_pedfor2.Post;
   Query_pf.next;
   end;

query_pf.close;
freeandnil(query_pf);

end;

procedure TFrm_Compras_Orc_GerarOrcVendas.FormActivate(Sender: TObject);
begin
if (mPFChave>0) then
   begin
   fLerPedidoDeCompras;
   end;
end;


function TFrm_Compras_Orc_GerarOrcVendas.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mQtdPed: Real;
  mDesconto: Real;

  mDadosParametros: tDadosParametros;

{  mChave_Fat: Real;
}
  Query_Cons:TQuery;

  query_exe: TQuery;

mItemPed: Integer;
    mPed_UF_Cli            : String;
    mPed_Cli_RazSoc        : String;
    mPed_Cli_ConsFin       : Boolean;
    mPed_Cli_Revenda_CP    : Boolean;
    mPed_Cli_ST            : Boolean;
    mPed_Cli_icmsnr        : Boolean;
    mPed_Cli_MotDes        : Integer;
    mPed_Cli_REDICMSNOR    : Boolean;
    mPed_CliCalcIPI        : Boolean;
mSeq_Item: Integer;

    procedure preencherDadosCli;
    begin
    if (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.AsFloat<>fSonumero(edt_codcli.text)) then
       flcadcli(1,0,edt_codcli.text);
             mPed_UF_Cli          := DM1.Tb_CliCUF.AsString;
      mPed_Cli_ConsFin     :=DM1.Tb_CliCCONSF.AsInteger=1;
      mPed_Cli_Revenda_CP  :=DM1.Tb_CliCREVENDA_CP.AsInteger=1;
      mPed_CliCalcIPI     :=DM1.Tb_CliCIPI.AsInteger=1;
      mPed_Cli_MotDes      := DM1.Tb_CliCMOTDES.AsInteger;
      mPed_Cli_ST          :=DM1.Tb_CliCICMSR.AsInteger=1;
      mPed_Cli_icmsnr      :=DM1.Tb_CliCICMSTP.AsInteger=1;
      mPed_Cli_REDICMSNOR  :=DM1.Tb_CliCREDICMSNOR.AsInteger<>1;
      mPed_Cli_RazSoc      :=DM1.Tb_CliCRAZAO.AsString;


    end;

begin

try
    Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
    preencherDadosCli;
    cds_aliquotas.EmptyDataSet;
    fParametrosAliquotas(fsonumero(edt_codcli.Text)
    ,0 // tipo do pedido
    ,mPed_UF_Cli
    ,mPed_Cli_RazSoc
    ,mVenda_GP.mPd_EstNor
    ,mVenda_GP.mPd_EstCons
    ,mVenda_GP.mPd_EstTerc
    ,mVenda_GP.mPd_EstVenda
    ,mPed_Cli_MotDes
    ,mPed_Cli_ConsFin
    ,mPed_Cli_Revenda_CP
    ,mPed_CliCalcIPI
    ,mPed_Cli_ST
    ,mPed_Cli_REDICMSNOR
    ,mPed_Cli_icmsnr
    ,cds_aliquotas);


    mVenda_GP.mPed1_Codemp:=1;
    mvenda_gp.mped1_Chave:=0;
    mVenda_GP.mPed1_CodCli:=fsonumero(edt_codcli.Text);
    mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
    mVenda_GP.mPed1_Tipo_Ped:=0;
    mVenda_GP.mPed1_CodFP:=0;
    mVenda_GP.mPed1_NomFP:='';
    if fLerGenerico_query('CADFP','FPDESC,FPCODIGO',' 1=1 ORDER BY FPCODIGO ',query_consulta) then
       begin
       mVenda_GP.mPed1_CodFP:=query_consulta.fieldbyname('FPCODIGO').AsInteger;
       mVenda_GP.mPed1_NomFP:=query_consulta.fieldbyname('FPDESC').AsString;
       end;



    mVenda_GP.mPed1_BaixaFP:='N';
    mVenda_GP.mPed1_CodPV:=1;
    mVenda_GP.mPed1_PvaCtd:=0;
    mVenda_GP.mPed1_TabPV:='AV';
    mVenda_GP.mPed1_TpComis:=0;
    mVenda_GP.mPed1_Codven:=valint(edt_codven.Text);
    mVenda_GP.mped1_submod_grav:=0;
    mVenda_GP.mPed1_cfop1:=5101;
    mVenda_GP.mPed1_cfop2:=5101;

    mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger;
    if mVenda_GP.mPed1_Frete_CIFFOB<0 then
      mVenda_GP.mPed1_Frete_CIFFOB:=0;
    mVenda_GP.mPed1_CodTra:=0;

    mVenda_GP.mPed1_AjustaFP:='S';

    if not flcadpv(1,0,CB_TABPV.Text,edt_CODpv.Text) then
      flcadpv(1,0,'AV','01');
    mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
    mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
    mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
    mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
    mVenda_GP.mped1_tppco:=2; // preco extra;
    mVenda_GP.mPed1_Tabela:='1';
    flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

    DM1.Tb_PV2.First;
    mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
    mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
    mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';


    DM1.Tb_PV2.Next;
    while not DM1.Tb_PV2.Eof do

       begin
       mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
       mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
       mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';

       DM1.Tb_PV2.Next;
       end;
    mVenda_GP.mPed1_QtdParc_ant:=-1;
    mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
    mVenda_GP.mPed1_AjustaFP :='S';
    mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
    mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
    mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
    mVenda_GP.mPed1_Codcv       :=0;
    mVenda_GP.mPed1_pDesc01     :=0;
    mVenda_GP.mPed1_Desc_Rateado  :=0;


    mVenda_GP.mPed1_QtdDec:=DM1.Tb_PargerPCASASPU.AsInteger;


    mVenda_GP.mped1_npedori1 :='Pedigo Fornecedor '+ intToStr(mPFChave);
    mVenda_GP.mped1_npedori2 :='';

    mVenda_GP.fGravarPed01(0,0);

    query_exe:=TQuery.Create(self);
    query_exe.DatabaseName:='SG_ASSOC';

    cds_pedfor2.First;
    mItemPed:=0;
    tb_ped02_pre.CreateDataSet;
    Tb_Ped02_pre.EmptyDataSet;

    While not cds_pedfor2.Eof do
       begin
       fGerarEvento('772');
       mItemPed:=mItemPed+1;
       tb_ped02_pre.Append;
       tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
       tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
       tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
          tb_ped02_preP2ID_PED01_NEW.AsInteger  :=mVenda_GP.mPed1_id_new_000;
       if mVenda_GP.mPed1_Codemp>100 then
          begin
          tb_ped02_preP2ID_NEW_101.AsInteger    :=fBuscarProximoid('CADP02_SEQ');
          tb_ped02_preP2ID_PED01_NEW.AsInteger  :=mVenda_GP.mPed1_id_new_100;
          end
       else
          begin
          tb_ped02_preP2ID_NEW.AsInteger        :=fBuscarProximoid('CADP02_SEQ');
          tb_ped02_preP2ID_PED01_NEW.AsInteger  :=mVenda_GP.mPed1_id_new_000;
          end;

       tb_ped02_preP2ORDEM.AsInteger  :=01;
       tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
       tb_ped02_preP2CODPRO.AsFloat   :=cds_pedfor2PF2CODPRO.AsFloat;
       tb_ped02_preP2QTD.AsFloat      :=arredonda( cds_pedfor2PF2QTDP.AsFloat, DM1.Tb_PargerPCASQTD.AsInteger) ;

       tb_ped02_preP2PRECO.AsFloat    :=arredonda(cds_pedfor2PDPRECO1.AsFloat, mVenda_GP.mPed1_QtdDec);
       tb_ped02_preP2VALDES.AsFloat   :=0;
       tb_ped02_preP2CODVEN.AsInteger :=valint(edt_codven.Text);
       tb_ped02_preP2PCOTAB.AsFloat   :=cds_pedfor2PDPRECO1.AsFloat;
       tb_ped02_preP2UCPR.AsFloat     :=cds_pedfor2PDUCPR.AsFloat;
       Tb_Ped02_preP2CFOP_NF.AsString        :=cds_aliquotasCfo_rev_Ret.AsString;
       Tb_Ped02_preP2CFOP_ECF.AsString :=cds_aliquotasCfo_SubEcf_Ret.AsString;

       tb_ped02_preP2PCOCUS.AsFloat   :=cds_pedfor2PDPRECOC.AsFloat;
       tb_ped02_preP2PCOCUS.AsFloat   :=cds_pedfor2PDPRECOC.AsFloat;





       fDadosFiscais(cds_pedfor2PF2CODPRO.AsFloat
                    ,mPed_UF_Cli
                    ,mPed_Cli_ConsFin
                    ,mPed_Cli_Revenda_CP

                    ,mPed_Cli_icmsnr
                    ,mPed_CliCalcIPI
                    ,mPed_Cli_REDICMSNOR
                    ,mPed_Cli_MotDes
                    ,tb_ped02_pre
                    ,cds_aliquotas
                    ,mPed_Cli_CRT);


       tb_ped02_preP2DESC_PERC01.AsFloat    :=0;
       tb_ped02_preP2DESC_PERC02.AsFloat    :=0;
       tb_ped02_preP2DESC_PERC03.AsFloat    :=0;

       tb_ped02_pre.Post;
       mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;


       mVenda_GP.fGravarItemCDS(0 // produto
                           ,0
                           ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                           ,mVenda_GP.mPed1_CodFP
                           ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                           ,0 //pSituacao: Integer;
                           ,'0'
                           ,mVenda_GP.mPed1_NomFP
                           ,mVenda_GP.mPed1_BaixaFP
                           ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                           ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                           ,tb_ped02_preP2PCOTAB.AsFloat //,pPrecoTab_Cal
                           ,tb_ped02_preP2UCPR.AsFloat // pPrecoUCPR_Cal
                           ,tb_ped02_preP2PCOCUS.AsFloat // pPrecoCus_Cal
                           ,0 // pPrecoMax_Cal,
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0
                           ,0,
                           mDadosParametros

                           ,tb_ped02_pre);
       cds_pedfor2.Next;
       end;
    tb_ped02_pre.Close;


    Query_Cons:=TQuery.Create(nil);
    Query_Cons.DatabaseName:='SG_ASSOC';


    mDesconto:=0;
    if mDesconto>0 then
       begin
       mvenda_gp.mPed1_Desc_Rateado:=mDesconto  ;
       mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;
       mVenda_GP.fGravarItem(0 // produto
                            ,0
                            ,0 //p2Estoque
                            ,mVenda_GP.mPed1_CodFP
                            ,3 //apenas calcular
                            ,0 //pSituacao: Integer;
                            ,''
                            ,mVenda_GP.mPed1_NomFP
                            ,mVenda_GP.mPed1_BaixaFP
                            ,0 //pQtd_Cal
                            ,0 // pPrecoUnit_Cal
                            ,0 //,pPrecoTab_Cal
                            ,0 // pPrecoUCPR_Cal
                            ,0 // pPrecoCus_Cal
                            ,0 // pPrecoMax_Cal,
                            ,0 // qtd mQtd_Ant
                            ,0 // valfloat(edt_valseg.Text)
                            ,0 // ValFloat(edt_valfre.Text)
                            ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                            ,0 //  valfloat(edt_despAces.Text)
                            ,mvenda_gp.mPed1_Desc_Rateado
                            ,mDadosParametros

                            ,nil);


       end;
    mChave_Fat := mVenda_GP.mPed1_Chave;


    if mChave_Fat<>0 then
       begin
       la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

       query_exe.Close;
       query_exe.SQL.Clear;
       query_exe.SQL.add('Update CADP01 set P1TIPO=0'+IntToStr(mfatemp_tipop_padrao)
                         +' where '+iif(la_Empresas='','',la_empresas+' and ')
                         +' P1LOTSEQ=0'+IntToStr(ls_numped)
                         +' and P1CHAVE=0'+FloatToStr(mChave_Fat));
       Try
          query_exe.ExecSQL;
          fdm1StartCommit;
       except
          ex_erroSql(01,711,'Frm_FatEmp','CADP01');
          end;
      end;
    // termino
except on e : exception do
   begin
   Messagedlg('Erro ao faturar emprestimo'+e.message,mterror,[mbOk],0);
   end;
   end;
edt_CODCLI.Text:='';
edt_NOMCLI.Text:='';

edt_CODVEN.Text:='';
edt_NOMVEN.Text:='';
edt_codpv.clear;
cb_tabpv.itemindex:=0;

if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);
FreeAndNil(mVenda_GP);
MessageDlg('Pedido Faturado.Chave '+inttoStr(mChave_Fat),mtInformation,[mbOk],0);
close;
// termino
end;



procedure TFrm_Compras_Orc_GerarOrcVendas.bbFaturarClick(Sender: TObject);
begin
if ValFloat(edt_codcli.Text)<=0 then
   begin
   fmensagem('Código do Cliente tem que ser Preenchido!',0,['0'],0);
   if edt_codcli.Enabled then
      edt_codcli.SetFocus;
   exit;
   end;

if ValFloat(edt_codven.Text)<=0 then
   begin
   fmensagem('Código do Vendedor tem que ser Preenchido!',0,['0'],0);
   if edt_CODVEN.Enabled then
      edt_CODVEN.SetFocus;
   exit;
   end;
if (Trim(CB_TABPV.Text)='') or (ValFloat(edt_CODPV.Text)<=0) then
   begin
   fmensagem('Plano de Vendas tem que ser Preenchido!',0,['0'],0);
   CB_TABPV.SetFocus;
   exit;
   end;

fFaturarPedido_ultimo(0);
end;

end.
