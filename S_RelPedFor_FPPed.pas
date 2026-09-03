unit S_RelPedFor_FPPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp, CheckLst,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF, S_FPag,
  DBClient;

type
  TFrm_RelPedFor_FPPed = class(TForm)
    Qr_LDR: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText4: TStaticText;
    edt_codfor: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Src_LDR: TDataSource;
    cb_agrupar: TComboBox;
    CB_SEMBORDA: TCheckBox;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    Label2: TLabel;
    TabSheet3: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand_cabgru: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    sbSalvarPadrao: TSpeedButton;
    CB_VISREL: TCheckBox;
    rlgrupo_chave: TRLGroup;
    lbl_cabchave: TRLMemo;
    lbl_cabcliente: TRLMemo;
    lbl_cabtotliq: TRLMemo;
    lbl_cabdatap: TRLMemo;
    RLBand_detail: TRLBand;
    lbl_nomfp: TRLDBText;
    lbl_fpgto: TRLDBText;
    lbl_dtfp: TRLDBText;
    RG_FILTRO: TRadioGroup;
    st_forma: TStaticText;
    lbx_codfp: TListBox;
    OMITIR_FP: TCheckBox;
    CODFP: TEdit;
    lbl_cabcodfp: TRLMemo;
    lbl_cabnomfp: TRLMemo;
    lbl_cabfpgto: TRLMemo;
    lbl_cabdtfp: TRLMemo;
    rl_bandtotPed: TRLBand;
    lbl_totPfpgto: TRLLabel;
    lbl_TotPchave: TRLLabel;
    lbl_TotPdatap: TRLLabel;
    lbl_TotPcliente: TRLLabel;
    lbl_TotPtotliq: TRLLabel;
    lbl_TotPcodfp: TRLLabel;
    lbl_TotPnomfp: TRLLabel;
    lbl_TotPdtfp: TRLLabel;
    rlTotalGer: TRLBand;
    lbl_totfpgto: TRLLabel;
    lbl_totchave: TRLLabel;
    lbl_totdatap: TRLLabel;
    lbl_totcliente: TRLLabel;
    lbl_tottotliq: TRLLabel;
    lbl_totcodfp: TRLLabel;
    lbl_totnomfp: TRLLabel;
    lbl_totdtfp: TRLLabel;
    rl_bandtot: TRLBand;
    lbl_TotGchave: TRLLabel;
    lbl_TotGdatap: TRLLabel;
    lbl_TotGcliente: TRLLabel;
    lbl_TotGtotliq: TRLLabel;
    lbl_TotGcodfp: TRLLabel;
    lbl_TotGnomfp: TRLLabel;
    lbl_TotGdtfp: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    lbl_codfp: TRLDBText;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    matricial: TRLDraftFilter;
    lbl_totgfpgto: TRLLabel;
    rg_tpdata: TRadioGroup;
    RLSubDetail1: TRLSubDetail;
    cds_resumo: TClientDataSet;
    cds_resumores_forma: TStringField;
    cds_resumovalor: TFloatField;
    cds_resumoqtd_ped: TIntegerField;
    src_resumo: TDataSource;
    RLBand7: TRLBand;
    lbl_codcai: TRLMemo;
    rldet_codcai: TRLDBText;
    rltot_codcai: TRLLabel;
    TabSheet2: TTabSheet;
    sbn_coddep: TSpeedButton;
    StaticText6: TStaticText;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    lbx_codloc: TListBox;
    StaticText9: TStaticText;
    CODUF: TEdit;
    OMITIR_UF: TCheckBox;
    lbx_coduf: TListBox;
    CB_FORCAR: TCheckBox;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    StaticText10: TStaticText;
    edt_codusr_cx: TEdit;
    Qr_LDRPFPSEQ: TFloatField;
    Qr_LDRPFPFORMA: TStringField;
    Qr_LDRPF1VNOMFP: TStringField;
    Qr_LDRPF1VVALOR: TFloatField;
    Qr_LDRPF1VDATAV: TDateTimeField;
    Qr_LDRPF1STATUS: TFloatField;
    Qr_LDRPF1CODEMP: TFloatField;
    Qr_LDRP1TIPO: TFloatField;
    Qr_LDRPF1CHAVE: TFloatField;
    Qr_LDRPF1CODFOR: TFloatField;
    Qr_LDRPF1DATANF: TDateTimeField;
    Qr_LDRP1CUPACRE: TFloatField;
    Qr_LDRP1CUPDES: TFloatField;
    Qr_LDRP1TOTALL: TFloatField;
    Qr_LDRFPLOTE: TFloatField;
    Qr_LDRCAIXA: TFloatField;
    Qr_LDRPF1TOTDES: TFloatField;
    Qr_LDRPF1TOTBRU: TFloatField;
    Qr_LDRPF1OBS: TMemoField;
    Qr_LDRFRAZAO: TStringField;
    Qr_LDRFDENOM: TStringField;
    Qr_LDRNOMGRU: TStringField;
    lbl_chave: TRLLabel;
    lbl_datap: TRLLabel;
    lbl_cliente: TRLLabel;
    lbl_totliq: TRLLabel;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure cb_agruparClick(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_bandtotBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFPExit(Sender: TObject);
    procedure CODFPKeyPress(Sender: TObject; var Key: Char);
    procedure rl_bandtotPedBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand_detailBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RelPedFor_FPPed: TFrm_RelPedFor_FPPed;

  mTotTit_Gru: Real;
  mTotTit_Ger: Real;

  mTotFP_Gru: Real;
  mTotFP_Ger: Real;

  mQtdFP_Gru: Integer;
  mQtdFP_Ger: Integer;

  mQtdTit_Gru: Integer;
  mQtdTit_Ger: Integer;

  mDataPesq: String;
  mChave_ant: Real;
  mCodEmp_Ant: Real;

implementation

uses S_C, func_excecoes;

{$R *.DFM}

procedure TFrm_RelPedFor_FPPed.bbSairClick(Sender: TObject);
begin
close;                        
end;

procedure TFrm_RelPedFor_FPPed.bbImprimirClick(Sender: TObject);
var
mNomeGrupo: String;
mDataSel: String;
mNomeOrdem: string;

begin
if rg_tpdata.ItemIndex=0 then
  begin
  mDataPesq:='PF1DATA';
  mDataSel:='PF1DATA';
  end
else
  begin
  mDataPesq:='PF1DATANF';
  mDataSel:='PF1DATANF';
  end;









mNomeGrupo:='';
mNomeOrdem:='';
RLBand_cabgru.Visible:=true;
rl_bandtot.Visible   :=true;

if cb_agrupar.Text='Ano' then
   begin
   mNomeGrupo:=chr(39)+'Ano: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYY'+chr(39)+')';
   mNomeOrdem:='TO_CHAR('+mDataSel+', '+chr(39)+'YYYY'+chr(39)+')';
   end
else if cb_agrupar.Text='Mes' then
   begin
   mNomeGrupo:=chr(39)+'Ano/Mês: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+')';
   mNomeOrdem:='TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+')';
   end
else if cb_agrupar.text='Cidade' then
   begin
   mNomeGrupo:=chr(39)+'UF-Cidade: '+chr(39)+'|| FUF ||'+chr(39)+'-'+chr(39)+'|| FCIDADE';
   mNomeOrdem:='FUF,FCIDADE';
   end
else if cb_agrupar.Text='Fornecedor - Razão Social' then
   begin
   mNomeGrupo:=chr(39)+'Razão Social: '+chr(39)+'|| FRAZAO ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PF1CODFOR)';
   mNomeOrdem:='FRAZAO,PF1CODFOR';
   end
else if cb_agrupar.text='Fornecedor - Nome Fantasia' then
   begin
   mNomeGrupo:=chr(39)+'Fantasia: '+chr(39)+'|| FDENOM ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PF1CODFOR)';
   mNomeOrdem:='FDENOM,PF1CODFOR';
   end
else if cb_agrupar.Text='Estado' then
   begin
   mNomeGrupo:=chr(39)+'Sigla do Estado: '+chr(39)+'|| FUF';
   mNomeOrdem:='FUF';
   end
else if cb_agrupar.Text='Forma de Pagamento' then
   begin
   mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(PF1VNOMFP,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', PF1VNOMFP)  ';
   mNomeOrdem:='PF1VNOMFP';
   end
else if cb_agrupar.Text='Sem Separar' then
   begin
   mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39);
   mNomeOrdem:='';
   RLBand_cabgru.Visible:=false;
   rl_bandtot.Visible   :=false;
   end
else
   begin
   mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39);
   mNomeOrdem:='';
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF1' ,'PF1CODEMP','PF1VCODEMP' ,'PF1LOTSEQ' ,'PF1VLOTSEQ','PF1CHAVE' ,'PF1VCHAVE');
{
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'CADDAP','PF1CODEMP','CACODEMP','PF1CHAVE','CACHAVEP','PF1LOTSEQ','CALOTSEQ_CP');
}
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');

{
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';

fInnerJoin6(0,'FPCPDUP','FPCPDUP.FPDUP_CODEMP','CACODEMP','FPCPDUP.FPNUMERO','CANUMERO','FPCPDUP.FPDESD','CADESD','FPCPDUP.FPTIPO','CADUP','FPCPDUP.FPDTEMIS'
,'CADTEMIS','FPCPDUP.FPCODFOR','CACODFOR');

if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'FPCP','FPCP.CODEMP','FPCPDUP.CPCODEMP','FPCP.FPLOTE','FPCPDUP.FPLOTE','FPCP.FPLOTSEQ','FPCPDUP.FPLOTSEQ');
}





Qr_LDR.Close;
Qr_LDR.SQL.Clear;
Qr_LDR.SQL.Add('Select  0 AS  PFPSEQ '
              +', TO_CHAR(PF1VCODFP) AS PFPFORMA '
              +',PF1VNOMFP ,PF1VVALOR,PF1VDATAV,PF1STATUS '
              +',PF1CODEMP,0 AS P1TIPO,PF1CHAVE,PF1CODFOR '
              +','+mDataSel+' as PF1DATANF,0 AS P1CUPACRE,0 AS P1CUPDES, '
              +'(PF1TOTLIQ) AS P1TOTALL, 0 as FPLOTE,0 AS CAIXA '
              +',PF1TOTDES,PF1TOTBRU,PF1OBS,FRAZAO '
              +',FDENOM,'+mNomeGrupo+' as NOMGRU '
              +' from CADPF1V'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
               +iif(la_empresas='','',la_empresas+' and ')
              +'  PF1STATUS <> 9 ');

if trim(MDT1.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT2.Text))+chr(39));
Qr_LDR.SQL.add(' and PF1STATUS<9 ');

if RG_FILTRO.ItemIndex=0 then
   Qr_LDR.Sql.Add(' and PF1STATUS=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and PF1STATUS<>0');

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and PF1CODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if Trim(mcinst2) <> '' then
   Qr_LDR.SQL.Add('    and PF1CODUSR '+mcinst2);




mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and FUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and FCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and PF1VCODFP '+mcinst2);

{
if (trim(mNomeGrupo)<>'') and (mNomeGrupo<>chr(39)+insere2(' ',' ',40)+chr(39))   then
   Qr_LDR.SQL.add(' group by '+mNomeGrupo);
   }
if trim(mnomeordem)<>'' then
   Qr_LDR.SQL.add(' order by '+mnomeordem);

//   ex_erroSql_Novo(Qr_LDR,432,'SGE','CADPF1');

try
   Qr_LDR.Open;
except
   ex_erroSql_Novo(Qr_LDR,432,'SGE','CADPF1');
   end;







mChave_ant :=0;
mCodEmp_Ant:=0;


lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);

lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
lbl_titulo.Caption:='Relatório de Pedidos de Compras c/forma de Pagamento';
rl_bandtotPed.Visible:=false;
if not cds_resumo.Active  then
   cds_resumo.open;
cds_resumo.EmptyDataSet;
RLReport1.PreviewModal;

end;

procedure TFrm_RelPedFor_FPPed.edt_codforExit(Sender: TObject);
begin
edt_codfor.Text:=fdeixanum2(edt_codfor.Text);
if Trim(edt_codfor.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',edt_codfor.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(edt_codfor.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codfor.text := '';
      edt_codfor.SetFocus;
      end
   else
      begin
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      edt_codfor.text := '';
      edt_codfor.SetFocus;
      end;
   end;


end;

procedure TFrm_RelPedFor_FPPed.edt_codforKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'Frm_relpedfor_fpped',key);
   key:=#0;
   edt_codforExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelPedFor_FPPed.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
end;

procedure TFrm_RelPedFor_FPPed.FormCreate(Sender: TObject);
var
x: Integer;
begin
cb_agrupar.ItemIndex:=9;
mboolean:=true;
//lbl_cabres.Borders.DrawTop:=mboolean;



Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime(fdt2, date);
Qr_LDRP1CUPACRE.DisplayFormat    :=mcasas;
Qr_LDRP1CUPDES.DisplayFormat     :=mcasas;
Qr_LDRP1TOTALL.DisplayFormat     :=mcasas;
Qr_LDRPF1TOTBRU.DisplayFormat     :=mcasas;
Qr_LDRPF1VDATAV.DisplayFormat     :=fdt2;
Qr_LDRPF1VVALOR.DisplayFormat     :=mcasas;


flfilpad(codusr,'_RELPEDFOR_FPPED','');




if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPEDFOR_FPPED','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;




if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPEDFOR_FPPED','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPEDFOR_FPPED','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);



cds_resumovalor.DisplayFormat:=mcasas;
end;

procedure TFrm_RelPedFor_FPPed.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabchave.Alignment     :=taRightJustify;
   lbl_cabdatap.Alignment     :=taRightJustify;
   lbl_cabcliente.Alignment   :=taRightJustify;
   lbl_cabtotliq.Alignment    :=taRightJustify;
   lbl_cabcodfp.Alignment     :=taRightJustify;
   lbl_cabnomfp.Alignment     :=taRightJustify;
   lbl_cabdtfp.Alignment      :=taRightJustify;
   lbl_cabfpgto.Alignment     :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabchave.Alignment     :=taCenter;
   lbl_cabdatap.Alignment     :=taCenter;
   lbl_cabcliente.Alignment   :=taCenter;
   lbl_cabtotliq.Alignment    :=taCenter;
   lbl_cabcodfp.Alignment     :=taCenter;
   lbl_cabnomfp.Alignment     :=taCenter;
   lbl_cabdtfp.Alignment      :=taCenter;
   lbl_cabfpgto.Alignment     :=taCenter;
   end;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;
band_cab.Borders.DrawBottom      :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;


lbl_cabchave.Borders.DrawRight     :=mboolean;
lbl_cabdatap.Borders.DrawRight  :=mboolean;
lbl_cabcliente.Borders.DrawRight:=mboolean;
lbl_cabtotliq.Borders.DrawRight :=mboolean;
lbl_cabcodfp.Borders.DrawRight  :=mboolean;
lbl_cabnomfp.Borders.DrawRight  :=mboolean;
lbl_cabdtfp.Borders.DrawRight   :=mboolean;
lbl_cabfpgto.Borders.DrawRight  :=mboolean;


lbl_chave.Borders.DrawRight   :=mboolean;
lbl_datap.Borders.DrawRight   :=mboolean;
lbl_cliente.Borders.DrawRight :=mboolean;
lbl_totliq.Borders.DrawRight :=mboolean;

lbl_codfp.Borders.DrawRight   :=mboolean;
lbl_nomfp.Borders.DrawRight   :=mboolean;
lbl_dtfp.Borders.DrawRight   :=mboolean;
lbl_fpgto.Borders.DrawRight   :=mboolean;

rlgrupo_chave.Borders.DrawLeft   :=mboolean;
rlgrupo_chave.Borders.DrawRight  :=mboolean;
rlgrupo_chave.Borders.DrawTop    :=mboolean;
rlgrupo_chave.Borders.DrawBottom :=mboolean;



lbl_totchave.Borders.DrawRight     :=mboolean;
lbl_totdatap.Borders.DrawRight  :=mboolean;
lbl_totcliente.Borders.DrawRight:=mboolean;
lbl_tottotliq.Borders.DrawRight :=mboolean;
lbl_totcodfp.Borders.DrawRight  :=mboolean;
lbl_totnomfp.Borders.DrawRight  :=mboolean;
lbl_totdtfp.Borders.DrawRight   :=mboolean;
lbl_totfpgto.Borders.DrawRight  :=mboolean;

lbl_totgchave.Borders.DrawRight     :=mboolean;
lbl_totgdatap.Borders.DrawRight  :=mboolean;
lbl_TotGcliente.Borders.DrawRight:=mboolean;
lbl_totgtotliq.Borders.DrawRight :=mboolean;
lbl_totgcodfp.Borders.DrawRight  :=mboolean;
lbl_totgnomfp.Borders.DrawRight  :=mboolean;
lbl_totgdtfp.Borders.DrawRight   :=mboolean;
lbl_totgfpgto.Borders.DrawRight  :=mboolean;

lbl_totpchave.Borders.DrawRight     :=mboolean;
lbl_totpdatap.Borders.DrawRight  :=mboolean;
lbl_Totpcliente.Borders.DrawRight:=mboolean;
lbl_totptotliq.Borders.DrawRight :=mboolean;
lbl_totpcodfp.Borders.DrawRight  :=mboolean;
lbl_totpnomfp.Borders.DrawRight  :=mboolean;
lbl_totpdtfp.Borders.DrawRight   :=mboolean;
lbl_totpfpgto.Borders.DrawRight  :=mboolean;














end;


procedure TFrm_RelPedFor_FPPed.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_RELPEDFOR_FPPED',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RelPedFor_FPPed.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RelPedFor_FPPed.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      lbx_codloc.Items.Add(CODLOC.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end
   else
      begin
      fMensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RelPedFor_FPPed.sbn_coddepClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_RelPe_FPPed','');
if trim(CODUF.Text)<>'' then
   CODUFExit(Self);

end;

procedure TFrm_RelPedFor_FPPed.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_RelPedFor_FPPed.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_RELPEDFOR_FPPED' ,'');
fGravaPadroes(codusr,'CB_SEMBORDA'    ,'checked'        ,'_RELPEDFOR_FPPED',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'     ,'itemindex'      ,'_RELPEDFOR_FPPED',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'        ,'_RELPEDFOR_FPPED',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'        ,'_RELPEDFOR_FPPED',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'RG_FILTRO'      ,'itemindex'      ,'_RELPEDFOR_FPPED',IntTostr(RG_FILTRO.ItemIndex));


fMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_RelPedFor_FPPed.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_RelPedFor_FPPed.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if flqr1('PNOM,PUF','P','CADUF','C','PUF',CODUF.Text) then
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end
   else
      begin
      fMensagem('Estado não Cadastrado!',0,['0'],0);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;


end;

procedure TFrm_RelPedFor_FPPed.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mTotTit_Gru:=0;
mTotTit_Ger:=0;

mTotFP_Gru:=0;
mTotFP_Ger:=0;

mQtdFP_Gru:=0;
mQtdFP_Ger:=0;

mQtdTit_Gru:=0;
mQtdTit_Ger:=0;

end;

procedure TFrm_RelPedFor_FPPed.rl_bandtotBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lbl_totgfpgto.Caption :=Formatfloat(mcasas, mTotFP_Ger);
lbl_TotGtotliq.Caption:=Formatfloat(mcasas, mTotTit_Ger);
lbl_TotGcodfp.Caption :=IntTostr(mQtdFP_Ger);
lbl_TotGdatap.Caption :=IntTostr(mQtdTit_Ger);


mTotFP_Ger  :=0;
mTotTit_Ger :=0;
mQtdFP_Ger  :=0;
mQtdTit_Ger :=0;


end;

procedure TFrm_RelPedFor_FPPed.lbx_codfpKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfp.ItemIndex>=0 then
      lbx_codfp.Items.Delete(lbx_codfp.ItemIndex);

end;

procedure TFrm_RelPedFor_FPPed.CODFPExit(Sender: TObject);
begin
CODFP.Text:=fdeixanum2(CODFP.Text);
if Trim(CODFP.Text)<>'' then
   begin
   DM1.Tb_FP.Close;
   DM1.Tb_FP.SQL.Clear;
   DM1.Tb_FP.SQL.add('Select * from CADFP ');
   if trim(CODFP.Text)<>'' then
      DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+Trim(CODFP.Text));
   DM1.Tb_FP.Open;
   if DM1.Tb_FP.Eof then
      begin
      fMensagem('Forma de Pagamento não Cadastrado!',0,['0'],0);
      CODFP.SetFocus;
      end
   else
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_FPFPCODIGO.ASSTRING))
                                    +' - '+DM1.Tb_FPFPDESC.Value);

      CODFP.text := '';
      CODFP.SetFocus;
      end;
   end;


end;

procedure TFrm_RelPedFor_FPPed.CODFPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFP.text:=fChamaFPag(0,'frm_fped',key);
   CODFPExit(Self);
   key:=#0;
   end
else
   if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_RelPedFor_FPPed.rl_bandtotPedBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totpfpgto.Caption :=Formatfloat(mcasas, mTotFP_Gru);
lbl_TotPtotliq.Caption:=Formatfloat(mcasas, mTotTit_Gru);
lbl_TotPcodfp.Caption :=IntTostr(mQtdFP_Gru);
lbl_TotPdatap.Caption :=IntTostr(mQtdTit_Gru);


mTotFP_Gru  :=0;
mTotTit_Gru :=0;
mQtdFP_Gru  :=0;
mQtdTit_Gru :=0;

end;

procedure TFrm_RelPedFor_FPPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelPedFor_FPPed.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;
end;

procedure TFrm_RelPedFor_FPPed.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelPedFor_FPPed.lbx_codbcoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RelPedFor_FPPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_RelPedFor_FPPed.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
fAjustarFormaPgto;
end;

procedure TFrm_RelPedFor_FPPed.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;

end;

procedure TFrm_RelPedFor_FPPed.edt_codusr_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelPedFor_FPPed.lbx_codusr_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_RelPedFor_FPPed.RLBand_detailBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (mChave_ant<>Qr_LDRPF1CHAVE.AsFloat)  or (mCodEmp_Ant<>Qr_LDRPF1CODEMP.AsFloat) then
   begin
   mChave_ant:=Qr_LDRPf1CHAVE.asfloat;
   lbl_chave.Caption     :=Qr_LDRPf1CHAVE.AsString;
   lbl_datap.Caption     :=FormatDatetime(fdt2,  Qr_LDRPF1DATANF.AsDateTime);
   lbl_cliente.Caption    :=Qr_LDRFRAZAO.AsString;
   lbl_totliq.Caption     :=Formatfloat(mcasas, Qr_LDRP1TOTALL.AsFloat);

   mTotTit_Gru:=mTotTit_Gru+Qr_LDRP1TOTALL.AsFloat;
   mTotTit_Ger:=mTotTit_Ger+Qr_LDRP1TOTALL.AsFloat;

   mChave_ant:=Qr_LDRPF1CHAVE.asfloat;
   mCodEmp_Ant:=Qr_LDRPF1CODEMP.AsFloat;


   mQtdTit_Gru :=mQtdTit_Gru+1;
   mQtdTit_Ger :=mQtdTit_Ger+1;


   end
else
   begin
   lbl_chave.Caption   :='';
   lbl_datap.Caption   :='';
   lbl_cliente.Caption :='';
   lbl_totliq.Caption  :='';
   end;

mQtdFP_Gru :=mQtdFP_Gru+1;
mQtdFP_Ger :=mQtdFP_Ger+1;
mTotFP_Gru :=mTotFP_Gru+Qr_LDRPF1VVALOR.AsFloat;
mTotFP_Ger :=mTotFP_Ger+Qr_LDRPF1VVALOR.AsFloat;

end;

end.
