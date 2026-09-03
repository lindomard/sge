unit S_Inv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,s_DM1,lerarq, StdCtrls, ExtCtrls, Mask,
  S_For,S_TipPro,S_TCon,S_Impres, Buttons,S_DM4,S_Pro, CheckLst, ComCtrls,S_Ram,
  RLReport, RLRichFilter, RLXLSFilter, RLFilters, RLPDFFilter,
  RLDraftFilter,s_lerarq_geral;

type
  TFrm_Inv = class(TForm)
    Label4: TLabel;
    NUMPAGI: TEdit;
    cbEmitirTermos: TCheckBox;
    Label5: TLabel;
    MDT1: TMaskEdit;
    bbImprimir: TBitBtn;
    Tb_Inv: TQuery;
    bbSair: TBitBtn;
    Tb_InvPDNOME: TStringField;
    Tb_InvPDMARCA: TStringField;
    Tb_InvPDUND: TStringField;
    Tb_InvCODTIP: TFloatField;
    Tb_InvPDPRECO: TFloatField;
    Tb_InvCESALDO: TFloatField;
    Tb_InvCECODPRO: TFloatField;
    Tb_InvFRAZAO: TStringField;
    Tb_InvPDCODFOR: TFloatField;
    Tb_InvPDCLAS: TStringField;
    MDATINV: TMaskEdit;
    lbl_datinv: TLabel;
    CB_QDEC_QTD: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    CB_QDEC_PU: TComboBox;
    bbSalvar: TBitBtn;
    rg_anterior: TRadioGroup;
    lbl_nominv: TLabel;
    cb_salvo: TComboBox;
    bbPadrao: TBitBtn;
    Label9: TLabel;
    MTITULO: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CLBNivel: TCheckListBox;
    Label11: TLabel;
    Label15: TLabel;
    CLBEstoque: TCheckListBox;
    Label1: TLabel;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    Label2: TLabel;
    CODTIP: TEdit;
    OMITIR_TPRO: TCheckBox;
    lbx_codtip: TListBox;
    Label3: TLabel;
    CODCON: TEdit;
    OMITIR_CON: TCheckBox;
    lbx_codcon: TListBox;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    lbx_codgru: TListBox;
    Label10: TLabel;
    CODRAM: TEdit;
    OMITIR_RAM: TCheckBox;
    lbx_codram: TListBox;
    Label14: TLabel;
    CLBStatus: TCheckListBox;
    CB_TPPRECO: TComboBox;
    Label13: TLabel;
    Label16: TLabel;
    CB_TPINV: TComboBox;
    Label17: TLabel;
    cb_separado: TComboBox;
    CB_TOTALIZAR: TCheckBox;
    Label18: TLabel;
    TOTAL_TRANSP: TEdit;
    rdg_impressao: TRadioGroup;
    tbs_relatorio: TTabSheet;
    rlp_inventario: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    lbl_classificacao: TRLLabel;
    lbl_discriminacao: TRLLabel;
    lbl_unidade: TRLLabel;
    lbl_quantidade: TRLLabel;
    RLLabel11: TRLLabel;
    lbl_unitario: TRLLabel;
    lbl_total: TRLLabel;
    rlg_situacao: TRLGroup;
    tl_situacao: TRLBand;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLDBText1: TRLDBText;
    RLDB_PDCLAS: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    rlg_produtos: TRLGroup;
    RLBand4: TRLBand;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand5: TRLBand;
    RLDB_PDCLAS3: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    rlg_fornecedor: TRLGroup;
    RLBand6: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText15: TRLDBText;
    RLBand7: TRLBand;
    RLDB_PDCLAS2: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    rld_semseparacao: TRLBand;
    RLDB_PDCLAS4: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    Src_Inv: TDataSource;
    RLDBText31: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    Tb_InvTotal: TFloatField;
    rlb_totalsitu: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand8: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand9: TRLBand;
    RLLabel12: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLBand11: TRLBand;
    RLLabel15: TRLLabel;
    RLDBResult10: TRLDBResult;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    data_emissao: TRLLabel;
    TS_ABERTURA: TTabSheet;
    rlp_abertura: TRLReport;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText33: TRLDBText;
    rl_emis1: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText39: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText40: TRLDBText;
    rl_emis2: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel19: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    CIDADE_ESTADO: TRLLabel;
    TS_FINAL: TTabSheet;
    rlp_fechamento: TRLReport;
    RLLabel29: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText37: TRLDBText;
    rl_emis11: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText44: TRLDBText;
    rl_emis12: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel42: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    cidade_estado2: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLSystemInfo7: TRLSystemInfo;
    cb_classpcod: TCheckBox;
    Tb_InvPDCODBAR: TFloatField;
    CLBSit: TCheckListBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label12: TLabel;
    Label19: TLabel;
    Tb_InvPDSIT: TStringField;
    Label20: TLabel;
    edt_ncm: TEdit;
    CB_CST_ATUAL: TCheckBox;
    TabSheet4: TTabSheet;
    CLBSitCsosn: TCheckListBox;
    Label21: TLabel;
    bbsalvarcomlotes: TBitBtn;
    Label81: TLabel;
    CB_FILIAL: TComboBox;
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure NUMPAGIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDATINVExit(Sender: TObject);
    procedure CB_QDEC_QTDExit(Sender: TObject);
    procedure CB_QDEC_PUExit(Sender: TObject);
    procedure rg_anteriorClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure cb_salvoExit(Sender: TObject);
    procedure bbPadraoClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBNivelClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure cb_separadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TOTAL_TRANSPExit(Sender: TObject);
    procedure Tb_InvCalcFields(DataSet: TDataSet);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlp_aberturaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlp_fechamentoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CLBSitClick(Sender: TObject);
    procedure CLBSitCsosnClick(Sender: TObject);
    procedure bbsalvarcomlotesClick(Sender: TObject);
    procedure CB_FILIALExit(Sender: TObject);
  private
    { Private declarations }
    function fLerinv(ptipo: Integer): Boolean;
    function fAtualizaPadrao(pTipo: Integer): Boolean;



    function fGravarFiltrosInvgra03_gd(pNomeInv: String): Boolean;




  public
    { Public declarations }
    form_impres_inv: tFrm_Impres;
  end;

var
  Frm_Inv: TFrm_Inv;
  inv_caspu, inv_casqtd: String;
  mdia,mmes,mano: Word;

implementation

uses func_excecoes, S_GPro, S_DM2;

{$R *.dfm}


{select COD, PDCODPRO, QTD, PDSALDO, PDSALDO - QTD AS ANT from (
select COD, sum(QTD) as QTD from (
select p2codpro as COD, sum(decode(p1tipo_entsai,1,p2qtd*-1,p2qtd)) as QTD
from cadp02, cadp01
where p1datap>='01/01/2014' and p1tipo>0 and p1status<9 and p1tipo<>10
and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq and p1ordem=p2ordem
group by p2codemp, p2chave, p1submod, p2codpro, p1tipo_entsai
union
select ajcodpro as COD, sum(decode(ajtipom,1,ajqtd*-1,ajqtd)) as QTD
from cadaju where ajdata>='01/01/2014'
group by ajcodpro
union
select pf2codpro as COD, sum(pf2qtdp) as QTD
from cadpf2, cadpf1
where pf1codemp=pf2codemp and pf1chave=pf2chave and pf1lotseq=pf2lotseq
and PF1STATUS>0 and PF1TIPO<2 and PF1DATA>='01/01/2014'
group by pf2codpro
) group by cod), cadpro where pdcodpro=cod} 

procedure TFrm_Inv.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text :=fChamaFor(0,'frm_Inv',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Inv.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;


end;

procedure TFrm_Inv.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text :=fChamaTipPro(0,'frm_Inv',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Inv.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if ValFloat(CODTIP.Text)<=0 then
   exit;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;
end;

procedure TFrm_Inv.NUMPAGIExit(Sender: TObject);
begin
if ValFloat(NUMPAGI.Text)<1 then
   NUMPAGI.Text:='1'
else
   NUMPAGI.Text:=FloatToStr(ValFloat(NUMPAGI.Text));

end;

procedure TFrm_Inv.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_Inv.bbImprimirClick(Sender: TObject);
var
mlin, mpag: Integer;
mextenso,mtipant: String;
mtotal: Real;
mtotG: Real;
mTotUnd: Real;
Saltar: Boolean;
mTotGruUnd: Real;
mTotGruVlr: Real;

begin
if Trim(MDT1.Text)='/  /' then
   begin
   FMensagem('Data do Inventario campo Obrigatório!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
inv_caspu :='#,##0'+iif(CB_QDEC_PU.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PU.ItemIndex),'');
inv_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');
if rg_anterior.ItemIndex=1 then
   begin
   if Trim(MDATINV.Text)='/  /' then
      begin
      FMensagem('Data do Inventário, campo obrigatório!,',0,['0'],0);
      MDATINV.SetFocus;
      exit;
      end;
   DecodeDate(StrtoDate(MDATINV.Text),mano,mmes,mdia);
   end
else if rg_anterior.ItemIndex=2 then
   begin
   if cb_salvo.Text='' then
      begin
      FMensagem('Favor Selecionar um nome válido de arquivo!',0,['0'],0);
      cb_salvo.SetFocus;
      end;
   end;
if not fLerinv(0) then
   begin
   FMensagem('Nada ha ser Impresso!',0,['0'],0);
   exit;
   end;

if rdg_impressao.ItemIndex = 1 then
   begin
   testeform := TFrm_Inv(FindGlobalComponent('form_impres_inv'));
   if (testeform=nil)  then
      Application.CreateForm(Tfrm_Impres, form_impres_inv);
form_impres_inv.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=StrToInt('0'+NUMPAGI.Text);
if not cbEmitirTermos.Checked then
   mpag:=mpag-1;
mTotG  :=ValFloat(TOTAL_TRANSP.Text);
mTotUnd:=0;
mTotGruUnd:=0;
mTotGruVlr:=0;

Tb_Inv.First;

if cb_separado.ItemIndex=1 then
   mtipant:=Tb_InvPDSIT.Value
else if cb_separado.ItemIndex=2 then
   mtipant:=FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)
else if cb_separado.ItemIndex=3 then
   mtipant:=FormatFloat('00000',Tb_InvCODTIP.AsInteger)
else
   mtipant:='';
while not Tb_Inv.Eof do
   begin
   if mlin=0 then
      Begin
      mpag:=mpag+1;
      mlin:=04;
      form_impres_inv.Rdprint1.ImpF(mlin,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
      mlin:=mlin+2;
      form_impres_inv.Rdprint1.Impf(mlin,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//      form_impres_inv.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
      insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
  //    form_impres_inv.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',mpag)+
      insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
      ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
      mlin:=mlin+1;
      mcinst:='';
      mcinst2:='';
      if CLBNivel.Checked[0] then
         begin
         mcinst2:=mcinst2+mcinst+'PRODUTO ACABADO';
         mcinst:='/';
         end;

      if CLBNivel.Checked[1]=true then
         begin
         mcinst2:=mcinst2+mcinst+'SERVICO';
         mcinst:='/';
         end;
      if CLBNivel.Checked[2]=true then
         begin
         mcinst2:=mcinst2+mcinst+'MATERIA PRIMA REVENDA';
         mcinst:='/';
         end;
      if CLBNivel.Checked[3]=true then
         begin
         mcinst2:=mcinst2+mcinst+'PRODUTO EM PRODUCAO';
         mcinst:='/';
         end;
      if CLBNivel.Checked[4]=true then
         begin
         mcinst2:=mcinst2+mcinst+'MATERIA PRIMA';
         mcinst:='/';
         end;
      if CLBNivel.Checked[5]=true then
         begin
         mcinst2:=mcinst2+mcinst+'INSUMOS';
         mcinst:='/';
         end;
      if CLBNivel.Checked[6]=true then
         begin
         mcinst2:=mcinst2+mcinst+'ACESSORIOS';
         mcinst:='/';
         end;
      if CLBNivel.Checked[7]=true then
         begin
         mcinst2:=mcinst2+mcinst+'OUTROS';
         mcinst:='/';
         end;


     form_impres_inv.Rdprint1.ImpF(mlin,01,Centra(mcinst2,' ',80),mNeg);

//      form_impres_inv.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
      mlin:=mlin+1;
      if trim(MTITULO.Text)<>'' then
         begin
         form_impres_inv.Rdprint1.ImpF(mlin,01,Centra(MTITULO.Text,' ',80),mNeg);
         mlin:=mlin+1;
         end;

//cb_classpcod
      form_impres_inv.Rdprint1.ImpF(mlin,01,insere(' ',' ',132),mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+------------------------------------+',mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.Impf(mlin,01,'|                 |                                                     |     |               |             V A L O R E S          |',mReduz);
      if not cb_classpcod.Checked then
        begin
        mlin:=mlin+1;
        form_impres_inv.Rdprint1.Impf(mlin,01,'|  CLASSIFICACAO  | DISCRIMINACAO                                       | UND |   QUANTIDADE  +-------------------+----------------+',mReduz);
        mlin:=mlin+1;
        form_impres_inv.Rdprint1.Impf(mlin,01,'|     FISCAL      |                                                     |     |               |        UNITARIO   |          TOTAL |',mReduz);
        mlin:=mlin+1;
        end
      else
        begin
        mlin:=mlin+1;
        form_impres_inv.Rdprint1.Impf(mlin,01,'|    CODIGO DO    | DISCRIMINACAO                                       | UND |   QUANTIDADE  +-------------------+----------------+',mReduz);
        mlin:=mlin+1;
        form_impres_inv.Rdprint1.Impf(mlin,01,'|     PRODUTO     |                                                     |     |               |        UNITARIO   |          TOTAL |',mReduz);
        mlin:=mlin+1;
        end;
        form_impres_inv.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
        if ( mpag<>(StrToInt('0'+NUMPAGI.Text)+iif(cbEmitirTermos.Checked,1,0)))
          or (mtotg<>0)  then
         begin
         mlin:=mlin+1;
         form_impres_inv.Rdprint1.ImpF(mlin,01,'| TOTAL TRANSPORTADO........>>>>>'+Insere2(' ',' ',83)+insere(FormatFloat('#,##0.00',mtotg),' ',14)+' |',mReduz);
         end;
{
Sem Separar
Fornecedor
Situação Tributaria
Tipo do Produto
}
      if cb_separado.ItemIndex>0 then
         begin
         if cb_separado.ItemIndex=1 then
            begin
            mlin:=mlin+1;
            form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
              begin
              form_impres_inv.Rdprint1.impf(mlin,02,'Produtos com situacao Tributaria: '+Tb_InvPDSIT.Value,mNeg);
              end
            else
              begin
              form_impres_inv.Rdprint1.impf(mlin,02,'Produtos com situacao Tributaria: '+Tb_InvPDSIT.Value,mNeg);
              end;


            end
         else if cb_separado.ItemIndex=2 then
            begin
            mlin:=mlin+1;
            form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            form_impres_inv.Rdprint1.impf(mlin,02,'Fornecedor.: '+FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)+' - '+Tb_InvFRAZAO.Value,mNeg);
            end
         else if cb_separado.ItemIndex=3 then
            begin
            mlin:=mlin+1;
            form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
            flqr1('TNOME','T','CADTP','N','TCODTIP',Tb_InvCODTIP.AsString);
            form_impres_inv.Rdprint1.impf(mlin,02,'Produtos: '+Trim(DM1.Query1.Fields[0].AsString),mNeg)
            end;
         end;
      end;
   mlin:=mlin+1;
   mtotal:=Tb_InvPDPRECO.Value*Tb_InvCESALDO.Value;
   mtotal:=Arredonda(mtotal,mcasger);
   if not cb_classpcod.Checked then
     begin
     form_impres_inv.Rdprint1.ImpF(mlin,01,'| '+insere2(Tb_InvPDCLAS.Value,' ',15)+' | '+insere2(Tb_InvPDNOME.Value+' '+Tb_InvPDMARCA.Value,' ',51)+' | '+Insere2(Tb_InvPDUND.Value,' ',3)+' | ' +
                    insere(FormatFloat(inv_casqtd, Tb_InvCESALDO.Value),' ',13)+' |'+insere(FormatFloat(inv_caspu,Tb_InvPDPRECO.Value),' ',18)+' | '+
                    insere(FormatFloat(mcasas,mtotal),' ',14)+' |',mReduz);
     end
   else
     begin
     form_impres_inv.Rdprint1.ImpF(mlin,01,'| '+insere2(IIF(Tb_InvPDCODBAR.Value>0,Tb_InvPDCODBAR.Value,Tb_InvCECODPRO.Value),' ',15)+' | '+insere2(Tb_InvPDNOME.Value+' '+Tb_InvPDMARCA.Value,' ',51)+' | '+Insere2(Tb_InvPDUND.Value,' ',3)+' | ' +
//     form_impres_inv.Rdprint1.ImpF(mlin,01,'| '+insere2(Tb_InvCECODPRO.AsString,' ',15)+' | '+insere2(Tb_InvPDNOME.Value+' '+Tb_InvPDMARCA.Value,' ',51)+' | '+Insere2(Tb_InvPDUND.Value,' ',3)+' | ' +
                    insere(FormatFloat(inv_casqtd, Tb_InvCESALDO.Value),' ',13)+' |'+insere(FormatFloat(inv_caspu,Tb_InvPDPRECO.Value),' ',18)+' | '+
                    insere(FormatFloat(mcasas,mtotal),' ',14)+' |',mReduz);
     end;
   mtotg:=mtotg+mtotal;
   mTotUnd:=mTotUnd+Tb_InvCESALDO.AsFloat;
   mTotGruVlr:=mtotGruVlr+mtotal;
   mTotGruUnd:=mTotGruUnd+Tb_InvCESALDO.AsFloat;

   Tb_Inv.Next;
   if cb_separado.ItemIndex>0 then
      begin
      if (CB_SEPARADO.ItemIndex=1) and (mtipant<>Tb_InvPDSIT.Value) then
         begin
         saltar:=true;
         mtipant:=Tb_InvPDSIT.Value;
         end
      else if (CB_SEPARADO.ItemIndex=2) and (mtipant<>FormatFloat('00000',Tb_InvPDCODFOR.AsInteger)) then
         begin
         saltar:=true;
         mtipant:=FormatFloat('00000',Tb_InvPDCODFOR.AsInteger);
         end
      else if (CB_SEPARADO.ItemIndex=3) and (mtipant<>FormatFloat('0000',Tb_InvCODTIP.AsInteger)) then
         begin
         saltar:=true;
         mtipant:=FormatFloat('00000',Tb_InvCODTIP.AsInteger);
         end;
      end;
   if ((mlin>58) and not (Tb_Inv.Eof)) or (saltar) then
      begin
      if ((Tb_Inv.Eof) or (saltar)) and
         (cb_separado.ItemIndex>0)
         and (CB_TOTALIZAR.Checked)
         and ((mTotGruUnd<>0) or (mTotGruVlr<>0)) then
         begin
         mlin:=mlin+1;
         form_impres_inv.Rdprint1.ImpF(mlin,01,'| Sub-Total.................>>>>> '+insere2(' ',' ',60)+'|'+
         insere(FormatFloat(inv_casqtd, mTotGruUnd),' ',18)+' | '+
         insere(FormatFloat(mcasas,mTotGruVlr),' ',14)+' |',mReduz);
         mTotGruUnd:=0;
         mTotGruVlr:=0;
         end;
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'| TOTAL A TRANSPORTAR.......>>>>> '+insere2(' ',' ',60)+'|'+
      insere(FormatFloat(inv_casqtd, mTotUnd),' ',18)+' | '+
      insere(FormatFloat(mcasas,mtotg),' ',14)+' |',mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
      form_impres_inv.Rdprint1.Novapagina;
      mlin:=0;
      saltar:=false;
      end;
   if Tb_Inv.Eof then
      begin
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'| TOTAL GERAL DO INVENTARIO.>>>>> '+insere2(' ',' ',60)+'|'+
      insere(FormatFloat(inv_casqtd, mTotUnd),' ',18)+' | '+
       insere(FormatFloat(mcasas,mtotg),' ',14)+' |',mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.Impf(mlin,01,'+-----------------+-----------------------------------------------------+-----+---------------+-------------------+----------------+',mReduz);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_inv.Rdprint1.ImpF(mlin,02,'Importa o presente inventario de mercadoria a importancia de r$'+insere(FormatFloat(mcasas,mtotg),' ',12),mNormal);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      mextenso:=UpperCase(Extenso(mtotg));
      form_impres_inv.Rdprint1.Impf(mlin,02,Insere2(Copy(mextenso,001,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_inv.Rdprint1.impf(mlin,02,Insere2(Copy(mextenso,076,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'|'+insere(' ',' ',130)+'|',mReduz);
      form_impres_inv.Rdprint1.Impf(mlin,02,Insere2(Copy(mextenso,151,75),'*',75),mNormal);
      mlin:=mlin+1;
      form_impres_inv.Rdprint1.ImpF(mlin,01,'+'+insere(' ',' ',130)+'+',mReduz);
      form_impres_inv.Rdprint1.NovaPagina;
      end;
   end;

if cbEmitirTermos.Checked then
   begin
   form_impres_inv.Rdprint1.ImpF(04,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
   form_impres_inv.Rdprint1.Impf(06,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//   form_impres_inv.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
   insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
//   form_impres_inv.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',1)+
   insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_inv.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.ImpF(10,01,insere(' ',' ',132),mReduz);

   form_impres_inv.Rdprint1.ImpF(13,01,Centra('TERMO DE ABERTURA',' ',80),mNeg);
   form_impres_inv.Rdprint1.ImpF(16,01,'      CONTEM ESTE LIVRO '+FormatFloat('0000',mpag+2-StrToInt(NUMPAGI.Text))+' FOLHAS NUMERADAS POR PROCESSAMENTO ELETRONICO DE',mNormal);
   form_impres_inv.Rdprint1.ImpF(18,01,'DADOS, DO NUMERO '+FormatFloat('0000',StrToInt(NUMPAGI.Text))+' AO '+FormatFloat('0000',mpag+1)+' E SERVIRAO PARA O LANCAMENTO DAS OPERACOES PRO-',mNormal);
   form_impres_inv.Rdprint1.Impf(20,01,'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO                 ',mNormal);
   form_impres_inv.Rdprint1.Impf(23,10,'NOME.....................: '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(25,10,'ENDERECO.................: '+DM1.Tb_EmpENDERECO.Value,mNormal);
   form_impres_inv.Rdprint1.ImpF(27,10,'BAIRRO...................: '+DM1.Tb_EmpBAIRRO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(29,10,'CIDADE - UF..............: '+Trim(DM1.Tb_EmpCIDADE.Value)+' - '+DM1.Tb_EmpUF.Value,mNormal);
   form_impres_inv.Rdprint1.ImpF(31,10,'INSCRICAO ESTADUAL.......: '+DM1.Tb_EmpINSCRICAO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(33,10,'C.N.P.J.(MF) No. ........: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
   form_impres_inv.Rdprint1.ImpF(35,10,'REG. JUNTA COMERCIAL No..: '+DM1.Tb_EmpJUCEG.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(41,10,DM1.Tb_EmpCIDADE.Value+' '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_inv.Rdprint1.Impf(45,10,'___'+insere('_','_',Length(dm1.Tb_EmpRAZAO.Value))+'___',mNormal);
   form_impres_inv.Rdprint1.ImpF(46,10,'   '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_inv.Rdprint1.Novapagina;
// termo  de encerramento


   form_impres_inv.Rdprint1.ImpF(04,01,Centra('REGISTRO DE INVENTARIO',' ',80),mNeg);
   form_impres_inv.Rdprint1.Impf(06,01,'FIRMA.............: '+DM1.Tb_EmpRAZAO.Value,mNormal);
//   form_impres_inv.Rdprint1.ImpF(07,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.Impf(07,01,'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value+
   insere(' ',' ',2)+'C.N.P.J.(MF)......: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
//   form_impres_inv.Rdprint1.ImpF(08,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.ImpF(08,01,'FOLHA.............: '+FormatFloat('0000',mpag+1)+
   insere(' ',' ',05)+'EST. EXISTENTE EM.: '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_inv.Rdprint1.ImpF(09,01,insere(' ',' ',132),mReduz);
   form_impres_inv.Rdprint1.ImpF(10,01,insere(' ',' ',132),mReduz);

   form_impres_inv.Rdprint1.ImpF(13,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mNeg);
   form_impres_inv.Rdprint1.ImpF(16,01,'      CONTEM ESTE LIVRO '+FormatFloat('0000',mpag+2-StrToInt(NUMPAGI.Text))+' FOLHAS NUMERADAS POR PROCESSAMENTO ELETRONICO DE',mNormal);
   form_impres_inv.Rdprint1.ImpF(18,01,'DADOS, DO NUMERO '+FormatFloat('0000',StrToInt(NUMPAGI.Text))+' AO '+FormatFloat('0000',mpag+1)+' E SERVIRAM PARA O LANCAMENTO DAS OPERACOES PRO-',mNormal);
   form_impres_inv.Rdprint1.Impf(20,01,'PRIAS DO ESTABELECIMENTO DO CONTRIBUINTE ABAIXO IDENTIFICADO                 ',mNormal);
   form_impres_inv.Rdprint1.Impf(23,10,'NOME.....................: '+DM1.Tb_EmpRAZAO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(25,10,'ENDERECO.................: '+DM1.Tb_EmpENDERECO.Value,mNormal);
   form_impres_inv.Rdprint1.ImpF(27,10,'BAIRRO...................: '+DM1.Tb_EmpBAIRRO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(29,10,'CIDADE - UF..............: '+DM1.Tb_EmpCIDADE.Value+' - '+DM1.Tb_EmpUF.Value,mNormal);
   form_impres_inv.Rdprint1.ImpF(31,10,'INSCRICAO ESTADUAL.......: '+DM1.Tb_EmpINSCRICAO.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(33,10,'C.N.P.J.(MF) No. ........: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),mNormal);
   form_impres_inv.Rdprint1.ImpF(35,10,'REG. JUNTA COMERCIAL No..: '+DM1.Tb_EmpJUCEG.Value,mNormal);
   form_impres_inv.Rdprint1.Impf(41,10,DM1.Tb_EmpCIDADE.Value+' '+FormatDateTime('dd',StrToDate(MDT1.Text))+
   ' de '+NMes(StrToDate(MDT1.Text))+' de '+FormatDateTime('yyyy',StrToDate(MDT1.Text))+'.',mNormal);
   form_impres_inv.Rdprint1.Impf(45,10,'___'+insere('_','_',Length(dm1.Tb_EmpRAZAO.Value))+'___',mNormal);
   form_impres_inv.Rdprint1.ImpF(46,10,'   '+DM1.Tb_EmpRAZAO.Value,mNormal);
   end;
if form_impres_inv.Rdprint1.Setup then form_impres_inv.Rdprint1.Fechar;
form_impres_inv.free;
form_impres_inv:=nil;

end else begin

   inv_caspu :='#,##0'+iif(CB_QDEC_PU.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PU.ItemIndex),'');
   inv_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');


   Tb_InvPDPRECO.DisplayFormat := inv_caspu;
   Tb_InvCESALDO.DisplayFormat := inv_casqtd;

   if cb_separado.ItemIndex=1 then begin
      rlg_situacao.Visible    := True;
      rlg_produtos.Visible    := False;
      rlg_fornecedor.Visible  := False;
      rld_semseparacao.Visible:= False;
   end else if cb_separado.ItemIndex=2 then begin
      rlg_situacao.Visible    := False;
      rlg_produtos.Visible    := False;
      rlg_fornecedor.Visible  := True;
      rld_semseparacao.Visible:= False;
   end else if cb_separado.ItemIndex=3 then begin
      rlg_situacao.Visible    := False;
      rlg_produtos.Visible    := True;
      rlg_fornecedor.Visible  := False;
      rld_semseparacao.Visible:= False;
   end else begin
      rlg_situacao.Visible    := False;
      rlg_produtos.Visible    := False;
      rlg_fornecedor.Visible  := False;
      rld_semseparacao.Visible:= True;
   end;
   if cb_classpcod.checked=true then
      begin
      lbl_classificacao.Caption:='Código';
      RLDB_PDCLAS.DataField:='CECODPRO';
      RLDB_PDCLAS2.DataField:='CECODPRO';
      RLDB_PDCLAS3.DataField:='CECODPRO';
      RLDB_PDCLAS4.DataField:='CECODPRO';
      end
   else
      begin
      lbl_classificacao.Caption:='Classificacao Fiscal';
      RLDB_PDCLAS.DataField:='PDCLAS';
      RLDB_PDCLAS2.DataField:='PDCLAS';
      RLDB_PDCLAS3.DataField:='PDCLAS';
      RLDB_PDCLAS4.DataField:='PDCLAS';
      end;


   if cbEmitirTermos.Checked=True then
      begin
      rlp_abertura.NextReport:=rlp_inventario;
      rlp_inventario.NextReport:=rlp_fechamento;
      rlp_abertura.PreviewModal;
      end
   else
     rlp_inventario.PreviewModal;

  end;

end;

procedure TFrm_Inv.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Inv.FormCreate(Sender: TObject);
begin

CB_FILIAL.Items.Clear;

if fLerGenerico_query('CADPRO_FILIAL','CFNOME,CFFILIAL','CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))+' order by CFFILIAL ',query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      CB_FILIAL.Items.Add('['+query_consulta.fieldbyName('CFFILIAL').asstring+'] - '+query_consulta.fieldbyName('CFNOME').asstring ) ;
      query_consulta.Next;
      end;
   end;
CB_FILIAL.Items.add('Totas');
if log_filial_padrao=0 then
   begin
   CB_FILIAL.Itemindex:=CB_FILIAL.Items.Count-1;
   end
else
   begin
   CB_FILIAL.ItemIndex:=0;
   end;





if codusr = 1111 then
   tbs_relatorio.TabVisible := True
else
   tbs_relatorio.TabVisible := False;

MDT1.Text   :=FormatDateTime(fdt2, pdatasis);
MDATINV.Text:=FormatDateTime(fdt2, pdatasis);
fAtualizaPadrao(0);

end;

procedure TFrm_Inv.MDATINVExit(Sender: TObject);
begin
if Trim(MDATINV.Text)<>'/  /' then
   begin
   Try
      MDATINV.Text:=FormatDateTime(fdt2, StrtoDate(MDATINV.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      MDATINV.SetFocus;
      end;
   if StrtoDate(mdatinv.text)>=date then
      begin
      fmensagem('Favor Utilizar a Opção Inventario Atual para esta data!',0,['0'],0);
      rg_anterior.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_Inv.CB_QDEC_QTDExit(Sender: TObject);
begin
with CB_QDEC_QTD do ItemIndex:=Items.IndexOf(CB_QDEC_QTD.text);
CB_QDEC_QTD.Text:=CB_QDEC_QTD.Items[CB_QDEC_QTD.ItemIndex];

end;

procedure TFrm_Inv.CB_QDEC_PUExit(Sender: TObject);
begin
with CB_QDEC_PU do ItemIndex:=Items.IndexOf(CB_QDEC_PU.text);
CB_QDEC_PU.Text:=CB_QDEC_PU.Items[CB_QDEC_PU.ItemIndex];

end;

procedure TFrm_Inv.rg_anteriorClick(Sender: TObject);
begin
if rg_anterior.ItemIndex=0 then
   begin
   lbl_datinv.Visible:=False;
   MDATINV.Visible   :=False;
   lbl_nominv.Visible:=False;
   cb_salvo.Visible  :=False;
   CB_CST_ATUAL.Visible:=false;
   end
else if rg_anterior.ItemIndex=1 then
   begin
   lbl_datinv.Visible:=true;
   MDATINV.Visible   :=true;
   lbl_nominv.Visible:=False;
   cb_salvo.Visible  :=False;
   CB_CST_ATUAL.Visible:=false;
   end
else if rg_anterior.ItemIndex=2 then //  salvo
   begin
   lbl_datinv.Visible:=false;
   MDATINV.Visible   :=false;
   lbl_nominv.Visible:=true;
   cb_salvo.Visible  :=true;
   CB_CST_ATUAL.Visible:=true;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select IGNOMEINV from INVGRA '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntTostr(codemp))
                     +' Group by IGNOMEINV ');
   DM1.Query2.Open;
   cb_salvo.Items.Clear;
   While not DM1.Query2.Eof do
      begin
      cb_salvo.Items.Add(DM1.Query2.Fields[0].AsString);
      DM1.Query2.Next;
      end;
   cb_salvo.ItemIndex:=0;
   end;



end;

procedure TFrm_Inv.bbSalvarClick(Sender: TObject);
var
  nomeArq: String;
  mCampo_Qtd: String;

  mfilial: integer;
  mSelect: String;
begin
if Trim(MDT1.Text)='/  /' then
   begin
   FMensagem('Data do Inventario campo Obrigatório!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
inv_caspu :='#,##0'+iif(CB_QDEC_PU.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PU.ItemIndex),'');
inv_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');
if rg_anterior.ItemIndex=1 then
   begin
   if Trim(MDATINV.Text)='/  /' then
      begin
      FMensagem('Data do Inventário, campo obrigatório!,',0,['0'],0);
      MDATINV.SetFocus;
      exit;
      end;
   DecodeDate(StrtoDate(MDATINV.Text),mano,mmes,mdia);
   end
else if rg_anterior.ItemIndex=2 then
   begin
   if cb_salvo.Text='' then
      begin
      FMensagem('Favor Selecionar um nome válido de arquivo!',0,['0'],0);
      cb_salvo.SetFocus;
      end;
   end;
if not fLerinv(0) then
   begin
   FMensagem('Não ha registro a ser salvo!',0,['0'],0);
   exit;
   end;
nomeArq:=InputBox('Nome do Inventário','Entre com o nome do Inventario:','');
If Trim(nomeArq)='' then
   exit;
nomeArq:=fRetAspas(nomeArq);
if length(nomeArq)>30 then
   nomeArq:=copy(nomearq,1,30);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from INVGRA where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'','  IGCODEMP=0'+IntTostr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomeArq+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   mcinst:='Ja Existe um Arquivo salvo com este nome '+#13
          +nomeArq+#13
          +'Quer Substitui-lo? ';
   end
else
   begin
   mcinst:='Confirma gravação do Inventário com o'+#13
          +'Nome de '+nomeArq+'?';
   end;
if  fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
   exit;
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from INVGRA where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntTosTr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomearq+chr(39));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2137,'frm_inv','INVGRA');
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'IGDATAEMI',ptInput);

DM1.Query1.SQL.add('Insert  into INVGRA (IGCODEMP , '
                  +'  IGNOMEINV, '
                  +'  IGCODPRO, '
                  +'  IGVALOR_TRANSP, '
                  +'  IGDATAEMI, '
                  +'  IGSIT, '
                  +'  IGCODTIP, '
                  +'  IGPRECO, '
                  +'  IGQTD) ');

mSelect:='Select '+IntTostr(codemp)+' as codemp, '
                  +chr(39)+nomeArq+chr(39)+' as nome, '
                  +' PDCODPRO AS CODPRO, '
                  +mudavp(TOTAL_TRANSP.Text)+' as valor_transp, '
                  +'  :IGDATAEMI, ';
if rg_anterior.ItemIndex=2 then   // SALVO
   begin
   mCampo_Qtd:='IGQTD';
   mSelect:=mSelect+'  IGSIT AS PDSIT, IGCODTIP AS CODTIP,';
   mSelect:=mSelect+' IGPRECO AS PDPRECO, ';
   mSelect:=mSelect+mCampo_Qtd+' AS CESALDO '
                 +' from INVGRA,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                 +' IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39)
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                 +' and PDCODPRO=IGCODPRO '
                 +iif(la_instrucao='','',' and ')+la_instrucao;

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODFOR '+mcinst2;

   if trim(edt_ncm.Text)<>'' then
       mSelect:=mSelect+' and PDCLAS like '+chr(39)+edt_ncm.Text+'%'+chr(39);
   mcinst2:=fItenstCheckListBox2(0,CLBSit);
   if trim(mcinst2)<>'' then
      begin
      mSelect:=mSelect+' and (PDFIS_CST_ICMS_EST_REV '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CST_ICMS_EST_CF '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CST_ICMS_INT_REV '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CST_ICMS_INT_CF '+mcinst2+')';
      end;

   mcinst2:=fItenstCheckListBox2(0,CLBSitCsosn);
   if trim(mcinst2)<>'' then
      begin
      mSelect:=mSelect+' and (PDFIS_CSOSN_EST_REV '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CSOSN_EST_CF '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CSOSN_INT_REV '+mcinst2;
      mSelect:=mSelect+' or PDFIS_CSOSN_INT_CF '+mcinst2+')';
      end;

   mcinst2:=fItenstCheckListBox(0,CLBStatus);

   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDSTATUS '+mcinst2;;


   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODCON '+mcinst2;

   mcinst2:=fItenstCheckListBox(0,CLBNivel);

   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDNIVEL '+mcinst2;


   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODCON '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and IGCODTIP '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODGRU '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODRAM '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODPRO '+mcinst2;

   if CB_SEPARADO.ItemIndex=0 then
      mSelect:=mSelect+' Order by PDNOME '
   else if CB_SEPARADO.ItemIndex=1 then
      mSelect:=mSelect+' Order by IGSIT,PDNOME '
   else if CB_SEPARADO.ItemIndex=2 then
      mSelect:=mSelect+' Order by FRAZAO,PDNOME '
   else if CB_SEPARADO.ItemIndex=3 then
      mSelect:=mSelect+' Order by IGCODTIP,PDNOME '
   end
else
   begin



   if CB_TPINV.ItemIndex=0 then
      mCampo_Qtd:='CESALDO'
   else if CB_TPINV.ItemIndex=1 then
      mCampo_Qtd:='CESALDOC'
   else if CB_TPINV.ItemIndex=2 then
      mCampo_Qtd:='CESALDOR'
   else if CB_TPINV.ItemIndex=3 then
      mCampo_Qtd:='CESALDOT';

   if rg_anterior.ItemIndex=1 then
       begin
       mfilial:=ValInt(fExtraiCodigoEntreChaves(CB_FILIAL.text));
       if mfilial<1 then
          mfilial:=-1;
       mCampo_Qtd:='fsaldoanterior(:DATAINV,CECODPRO,'+Inttostr(mfilial)+' ) ';
       end;


   if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
     begin
     mSelect:=mSelect+' PDFIS_CSOSN_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CSOSN_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_INT_CF AS PDSIT,';
     end
   else
     begin
     mSelect:=mSelect+' PDFIS_CST_ICMS_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CST_ICMS_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_INT_CF AS PDSIT,';
     end;


   mSelect:=mSelect+' PDCODTIP AS CODTIP,  ';
   if CB_TPPRECO.ItemIndex=0 then
      mSelect:=mSelect+' PDPRECO1 AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=1 then
      mSelect:=mSelect+' PDPRECO2 AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=2 then
      mSelect:=mSelect+' PDPRECO3 AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=3 then
      mSelect:=mSelect+' PDPRECOC AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=4 then
      mSelect:=mSelect+' PDPCOMC   AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=5 then
      mSelect:=mSelect+' PDUCPR   AS PDPRECO, '
   else if CB_TPPRECO.ItemIndex=6 then
      mSelect:=mSelect+' PDPCOFAB  AS PDPRECO, ';
   mSelect:=mSelect+mCampo_Qtd+' AS CESALDO ';


   mSelect:=mSelect+' from CADEST,CADPRO'
                     +iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CECODEMP=0'+IntToStr(codemp)+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +'PDCODPRO=CECODPRO '
                 +iif(la_instrucao='','',' and ')+la_instrucao;

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
       mSelect:=mSelect+' and PDCODFOR '+mcinst2;

   if trim(edt_ncm.Text)<>'' then
      mSelect:=mSelect+' and PDCLAS like '+chr(39)+edt_ncm.Text+'%'+chr(39);

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDNIVEL '+mcinst2;

   mcinst2:=fItenstCheckListBox(0,CLBStatus);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDSTATUS  '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODTIP '+mcinst2;
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODCON '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODGRU '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODRAM '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      mSelect:=mSelect+' and PDCODPRO '+mcinst2;


   if CB_SEPARADO.ItemIndex=0 then
      mSelect:=mSelect+' Order by PDNOME '
   else if CB_SEPARADO.ItemIndex=1 then
      mSelect:=mSelect+' Order by PDSIT,PDNOME '
   else if CB_SEPARADO.ItemIndex=2 then
      mSelect:=mSelect+' Order by FRAZAO,PDNOME '
   else if CB_SEPARADO.ItemIndex=3 then
      mSelect:=mSelect+' Order by PDCODTIP,PDNOME '
   end;


mcinst2:=fInstrucaoEstoque(CLBEstoque,'CESALDO');
if trim(mcinst2)<>'' then
   mSelect:='Select * from ('+mSelect+')  where  '+mcinst2;

DM1.Query1.SQL.add(mselect);


if trim(MDT1.Text)='/  /' then
   DM1.Query1.ParamByName('IGDATAEMI').AsDateTime:=date
else
   DM1.Query1.ParamByName('IGDATAEMI').AsDateTime:=StrToDateTime(MDT1.Text);

// DM1.Query1.SQL.add(' Order by PDCODTIP,PDNOME ')

   if rg_anterior.ItemIndex=1 then
       begin
       DM1.Query1.ParamByName('DATAINV').AsDateTime:=StrToDateTime(MDATINV.Text);
       end;



Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(Dm1.query1,1306,'func Erro:'+e.Message ,'CADLGC');
   end;
   end;
FMensagem('Arquivo Exportado!',0,['0'],0);

end;

function TFrm_Inv.fLerinv(ptipo: Integer): Boolean;
var
mCampo_Qtd: String;
mgroupby: string;
 mfilial: integer;

begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');
Tb_Inv.Close;
Tb_Inv.SQL.Clear;
Tb_Inv.SQL.Add('Select max(PDNOME) AS PDNOME,max(PDMARCA) as  PDMARCA,max(PDUND) as PDUND, max(PDCLAS) as  PDCLAS, max(PDCODFOR) as PDCODFOR, max(FRAZAO) as FRAZAO,');

if rg_anterior.ItemIndex=2 then  // saldo
   begin
   mCampo_Qtd:='sum(IGQTD) ';

   Tb_Inv.SQL.add(' max(IGCODTIP) AS CODTIP, ');

   if CB_CST_ATUAL.Checked then
      begin
      if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
        begin
        Tb_Inv.SQL.Add(' max( PDFIS_CSOSN_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CSOSN_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_INT_CF) AS PDSIT,');
        end
      else
        begin
        Tb_Inv.SQL.Add(' max( PDFIS_CST_ICMS_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CST_ICMS_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_INT_CF) AS PDSIT,');
        end;
      end
   else
      Tb_Inv.SQL.add(' max(IGSIT) AS PDSIT, ');


   mgroupby:='IGCODPRO';
   Tb_Inv.SQL.Add(' max(IGPRECO) AS PDPRECO, ');
   Tb_Inv.SQL.Add(' max(PDCODBAR) as PDCODBAR, ');
   Tb_INv.SQL.Add(mCampo_Qtd+' AS CESALDO, '
                 +' IGCODPRO AS CECODPRO '
                  +' from INVGRA,CADPRO'
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                 +' IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39)
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                 +' and PDCODPRO=IGCODPRO '
                 +iif(la_instrucao='','',' and ')+la_instrucao);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODFOR '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDNIVEL '+mcinst2);;

   mcinst2:=fItenstCheckListBox(0,CLBStatus);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDSTATUS  '+mcinst2);;

   if trim(edt_ncm.Text)<>'' then
      begin
      Tb_Inv.SQL.Add(' and PDCLAS like '+chr(39)+edt_ncm.Text+'%'+chr(39));
      end;

   mcinst2:=fItenstCheckListBox2(0,CLBSit);
   if trim(mcinst2)<>'' then
      begin
      Tb_Inv.SQL.Add(' and (PDFIS_CST_ICMS_EST_REV '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_EST_CF '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_INT_REV '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_INT_CF '+mcinst2+')');
      end;

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and IGCODTIP '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODCON '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODPRO '+mcinst2);


   mfilial:=ValInt(fExtraiCodigoEntreChaves(CB_FILIAL.text));
   if mfilial>0 then
      Tb_Inv.SQL.add(' and IGFILIAL=0'+Inttostr(mfilial));

   Tb_Inv.SQL.add('Group by '+mgroupby);
   if CB_SEPARADO.ItemIndex=0 then
      Tb_Inv.SQL.add(' Order by PDNOME ')
   else if CB_SEPARADO.ItemIndex=1 then
      Tb_Inv.SQL.add(' Order by PDSIT,PDNOME ')
   else if CB_SEPARADO.ItemIndex=2 then
      Tb_Inv.SQL.add(' Order by FRAZAO,PDNOME ')
   else if CB_SEPARADO.ItemIndex=3 then
      Tb_Inv.SQL.add(' Order by IGCODTIP,PDNOME ')
   end
else
   begin
   if CB_TPINV.ItemIndex=0 then
      mCampo_Qtd:='CESALDO '
   else if CB_TPINV.ItemIndex=1 then
      mCampo_Qtd:='CESALDOC '
   else if CB_TPINV.ItemIndex=2 then
      mCampo_Qtd:='CESALDOR '
   else if CB_TPINV.ItemIndex=3 then
      mCampo_Qtd:='CESALDOT ';
   mCampo_Qtd:='sum('+mCampo_Qtd+')';
   mgroupby:=' CECODPRO ';

   if rg_anterior.ItemIndex=1 then
       begin
       mfilial:=ValInt(fExtraiCodigoEntreChaves(CB_FILIAL.text));
       if mfilial<1 then
          mfilial:=-1;
       mCampo_Qtd:='fsaldoanterior(:DATAINV,'+mgroupby+','+Inttostr(mfilial)+' ) ';
//       Tb_Inv.ParamByName('DATAINV').AsDateTime:=StrToDate(MDATINV.text);
       end;

   Tb_Inv.SQL.add(' max(PDCODTIP) AS CODTIP, ');

   if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
     begin
     Tb_Inv.SQL.Add(' max( PDFIS_CSOSN_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CSOSN_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_INT_CF) AS PDSIT,');
     end
   else
     begin
     Tb_Inv.SQL.Add('max( PDFIS_CST_ICMS_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_EST_CF||'+chr(39)+'|'+chr(39)
                      +'||PDFIS_CST_ICMS_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_INT_CF) AS PDSIT,');
     end;



   if CB_TPPRECO.ItemIndex=0 then
      Tb_Inv.SQL.Add(' max(PDPRECO1) AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=1 then
      Tb_Inv.SQL.Add(' max(PDPRECO2) AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=2 then
      Tb_Inv.SQL.Add(' max(PDPRECO3) AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=3 then
      Tb_Inv.SQL.Add(' max(PDPRECOC) AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=4 then
      Tb_Inv.SQL.Add(' max(PDPCOMC)   AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=5 then
      Tb_Inv.SQL.Add(' max(PDUCPR)   AS PDPRECO, ')
   else if CB_TPPRECO.ItemIndex=6 then
      Tb_Inv.SQL.Add(' max(PDPCOFAB) AS PDPRECO, ');
    Tb_INv.SQL.Add(mCampo_Qtd+' AS CESALDO, ');
   Tb_Inv.SQL.Add(' max(PDCODBAR) as PDCODBAR, ');
   Tb_Inv.SQL.add('  CECODPRO '
                 +' from CADEST,CADPRO'
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CECODEMP=0'+IntToStr(codemp)+' and ')
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                 +' PDCODPRO=CECODPRO '
                 +iif(la_instrucao='','',' and ')+la_instrucao);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODFOR '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDNIVEL '+mcinst2);;

   mcinst2:=fItenstCheckListBox(0,CLBStatus);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDSTATUS  '+mcinst2);

   if rg_anterior.itemindex<>1 then 
       begin
       mfilial:=ValInt(fExtraiCodigoEntreChaves(CB_FILIAL.text));
       if mfilial>0 then
          Tb_Inv.SQL.add(' and CEFILIAL=0'+Inttostr(mfilial));
       end;


   if trim(edt_ncm.Text)<>'' then
     begin
     Tb_Inv.SQL.Add(' and PDCLAS like '+chr(39)+edt_ncm.Text+'%'+chr(39));
     end;

   mcinst2:=fItenstCheckListBox2(0,CLBSit);
   if trim(mcinst2)<>'' then
      begin
      Tb_Inv.SQL.Add(' and (PDFIS_CST_ICMS_EST_REV '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_EST_CF '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_INT_REV '+mcinst2);
      Tb_Inv.SQL.Add(' or PDFIS_CST_ICMS_INT_CF '+mcinst2+')');
      end;


   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODTIP '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODCON '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Tb_Inv.SQL.Add(' and PDCODPRO '+mcinst2);

   Tb_Inv.SQL.add(' group by '+mgroupby);

   if CB_SEPARADO.ItemIndex=0 then
      Tb_Inv.SQL.add(' Order by PDNOME ')
   else if CB_SEPARADO.ItemIndex=1 then
      Tb_Inv.SQL.add(' Order by PDSIT,PDNOME ')
   else if CB_SEPARADO.ItemIndex=2 then
      Tb_Inv.SQL.add(' Order by FRAZAO,PDNOME ')
   else if CB_SEPARADO.ItemIndex=3 then
      Tb_Inv.SQL.add(' Order by PDCODTIP,PDNOME ');
   if rg_anterior.ItemIndex=1 then
       begin
       Tb_Inv.ParamByName('DATAINV').AsDateTime:=StrToDateTime(MDATINV.Text);
       end;

   end;

mcinst2:=fInstrucaoEstoque(CLBEstoque,'CESALDO');
if trim(mcinst2)<>'' then
    Tb_Inv.SQL.Text:='Select * from ('+Tb_Inv.SQL.Text+')  where  '+mcinst2;


try

   Tb_Inv.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_Inv,307,'func2 ' ,E.Message+' CADBAL03');
   end;
if Tb_Inv.Eof then
   result:=False
else
   result:=True;
end;
procedure TFrm_Inv.cb_salvoExit(Sender: TObject);
begin
cb_salvo.text:=cb_salvo.Items.Strings[cb_salvo.ItemIndex];
if Trim(cb_salvo.Text)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select IGVALOR_TRANSP,IGDATAEMI from INVGRA '
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                     +' IGNOMEINV='+chr(39)+cb_salvo.Text+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.IsEmpty then
      begin
      TOTAL_TRANSP.Text:='';
      if trim(MDATINV.Text)='/  /' then
         MDATINV.Text:=FormatDateTime(fdt2, date);
      end
   else
      begin
      TOTAL_TRANSP.Text:=FormatFloat(mcasas, DM1.Query1.fieldbyName('IGVALOR_TRANSP').AsFloat);
      if DM1.Query1.FieldByName('IGDATAEMI').IsNull then
         MDT1.Text:=FormatDateTime(fdt2, date)
      else
         MDT1.Text:=FormatDateTime(fdt2, DM1.Query1.FieldByName('IGDATAEMI').AsDateTime);
      end;
   end;

end;

procedure TFrm_Inv.bbPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_INV','');
fGravaPadroes(codusr,'CB_TPINV'      ,'itemindex' ,'_INV',IntTostr(CB_TPINV.ItemIndex));
fGravaPadroes(codusr,'CB_TPPRECO'    ,'itemindex' ,'_INV',IntTostr(CB_TPPRECO.ItemIndex));
fGravaPadroes(codusr,'CB_QDEC_QTD'   ,'itemindex' ,'_INV',IntTostr(CB_QDEC_QTD.ItemIndex));
fGravaPadroes(codusr,'CB_QDEC_PU'    ,'itemindex' ,'_INV',IntTostr(CB_QDEC_PU.ItemIndex));
fGravaPadroes(codusr,'NUMPAGI'       ,'Text'      ,'_INV',NUMPAGI.Text);
fGravaPadroes(codusr,'CBEMITIRTERMOS','checked'   ,'_INV',iif(cbEmitirTermos.Checked,'true','false'));
fGravaPadroes(codusr,'CB_SEPARADO'   ,'itemindex' ,'_INV',IntTostr(CB_SEPARADO.ItemIndex));
fGravaPadroes(codusr,'RDG_IMPRESSAO' ,'itemindex' ,'_INV',IntToStr(rdg_impressao.ItemIndex));
fGravaPadroes(codusr,'CB_TOTALIZAR'  ,'checked'   ,'_INV',iif(CB_TOTALIZAR.Checked,'true','false'));
FMensagem('Gravado!',0,['0'],0);

end;

function TFrm_Inv.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
begin
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

mform:='_INV';
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TPINV']),[]) then
   CB_TPINV.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TPPRECO']),[]) then
   CB_TPPRECO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_QDEC_QTD']),[]) then
   CB_QDEC_QTD.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_QDEC_PU']),[]) then
   CB_QDEC_PU.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'NUMPAGI']),[]) then
   NUMPAGI.Text:=DM4.Tb_FilPadFPVALOR.Value;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CBEMITIRTERMOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      cbEmitirTermos.Checked:=true
   else
      cbEmitirTermos.Checked:=false;
   end
else
   cbEmitirTermos.Checked:=false;




if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_SEPARADO']),[]) then
   CB_SEPARADO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',VarArrayOf([codusr,mform,'RDG_IMPRESSAO']),[]) then
   rdg_impressao.ItemIndex := ValInt(DM4.Tb_FilPadFPVALOR.Value);   
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TOTALIZAR']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_TOTALIZAR.Checked:=true
   else
      CB_TOTALIZAR.Checked:=false;
   end;

cb_separadoClick(SELF);

result:=True;
end;

procedure TFrm_Inv.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;
end;

procedure TFrm_Inv.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_Inv.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;



end;

procedure TFrm_Inv.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   exit;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_Inv.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;
end;

procedure TFrm_Inv.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;
end;

procedure TFrm_Inv.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   exit;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;
end;

procedure TFrm_Inv.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;
end;

procedure TFrm_Inv.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
end;

procedure TFrm_Inv.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);
end;

procedure TFrm_Inv.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);
end;

procedure TFrm_Inv.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_Inv.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_Inv.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Inv.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Inv.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;

procedure TFrm_Inv.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_Inv.cb_separadoClick(Sender: TObject);
begin
CB_TOTALIZAR.Visible:=cb_separado.ItemIndex>0;
end;

procedure TFrm_Inv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Inv.TOTAL_TRANSPExit(Sender: TObject);
begin
TOTAL_TRANSP.Text:=formatFloat(mcasas, valFloat(TOTAL_TRANSP.Text));
end;

procedure TFrm_Inv.Tb_InvCalcFields(DataSet: TDataSet);
begin
   Tb_InvTotal.AsFloat         := Tb_InvPDPRECO.AsFloat * Tb_InvCESALDO.AsFloat;
end;

procedure TFrm_Inv.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var text_data: String;
    Mes: array[1..12] of string;
    iMes: Integer;
begin
mes[1] :='Janeiro';
mes[2] :='Fevereiro';
mes[3] :='Março';
mes[4] :='Abril';
mes[5] :='Maio';
mes[6] :='Junho';
mes[7] :='Julho';
mes[8] :='Agosto';
mes[9] :='Setembro';
mes[10]:='Outubro';
mes[11]:='Novembro';
mes[12]:='Dezembro';
iMes:=StrToInt(copy(MDT1.Text,4,2));
data_emissao.Caption:=copy(MDT1.Text,1,2)+' de '+mes[iMes]+' de '+copy(MDT1.Text,7,4)+'.';
end;

procedure TFrm_Inv.rlp_aberturaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var text_data: String;
    Mes: array[1..12] of string;
    iMes: Integer;
begin
mes[1] :='Janeiro';
mes[2] :='Fevereiro';
mes[3] :='Março';
mes[4] :='Abril';
mes[5] :='Maio';
mes[6] :='Junho';
mes[7] :='Julho';
mes[8] :='Agosto';
mes[9] :='Setembro';
mes[10]:='Outubro';
mes[11]:='Novembro';
mes[12]:='Dezembro';
iMes:=StrToInt(copy(MDT1.Text,4,2));
rl_emis1.Caption:=copy(MDT1.Text,1,2)+' de '+mes[iMes]+' de '+copy(MDT1.Text,7,4)+'.';
rl_emis2.Caption:=dm1.Tb_EmpCIDADE.AsString+' '+copy(MDT1.Text,1,2)+' de '+mes[iMes]+' de '+copy(MDT1.Text,7,4)+'.';
CIDADE_ESTADO.Caption:=dm1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString;

end;

procedure TFrm_Inv.rlp_fechamentoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var text_data: String;
    Mes: array[1..12] of string;
    iMes: Integer;
begin
mes[1] :='Janeiro';
mes[2] :='Fevereiro';
mes[3] :='Março';
mes[4] :='Abril';
mes[5] :='Maio';
mes[6] :='Junho';
mes[7] :='Julho';
mes[8] :='Agosto';
mes[9] :='Setembro';
mes[10]:='Outubro';
mes[11]:='Novembro';
mes[12]:='Dezembro';
iMes:=StrToInt(copy(MDT1.Text,4,2));
rl_emis11.Caption:=copy(MDT1.Text,1,2)+' de '+mes[iMes]+' de '+copy(MDT1.Text,7,4)+'.';
rl_emis12.Caption:=dm1.Tb_EmpCIDADE.AsString+' '+copy(MDT1.Text,1,2)+' de '+mes[iMes]+' de '+copy(MDT1.Text,7,4)+'.';
CIDADE_ESTADO2.Caption:=dm1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString;
end;

procedure TFrm_Inv.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_Inv.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');  
end;

procedure TFrm_Inv.CLBSitClick(Sender: TObject);
begin
CLBSit:=Valida_CheckList(CLBSit);
end;

procedure TFrm_Inv.CLBSitCsosnClick(Sender: TObject);
begin
CLBSitCsosn:=Valida_CheckList(CLBSitCsosn);
end;

procedure TFrm_Inv.bbsalvarcomlotesClick(Sender: TObject);
var
  nomeArq: String;
  mCampo_Qtd: String;
  query_exe: tquery;
begin
if Trim(MDT1.Text)='/  /' then
   begin
   FMensagem('Data do Inventario campo Obrigatório!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;

if rg_anterior.ItemIndex<>0 then
   begin
   MessageDlg('Valido apenas para inventario atual!',mtWarning,[mbOk],0);
   exit;
   end;

inv_caspu :='#,##0'+iif(CB_QDEC_PU.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PU.ItemIndex),'');
inv_casqtd:='#,##0'+iif(CB_QDEC_QTD.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_QTD.ItemIndex),'');
if rg_anterior.ItemIndex=1 then
   begin
   if Trim(MDATINV.Text)='/  /' then
      begin
      FMensagem('Data do Inventário, campo obrigatório!,',0,['0'],0);
      MDATINV.SetFocus;
      exit;
      end;
   DecodeDate(StrtoDate(MDATINV.Text),mano,mmes,mdia);
   end
else if rg_anterior.ItemIndex=2 then
   begin
   if cb_salvo.Text='' then
      begin
      FMensagem('Favor Selecionar um nome válido de arquivo!',0,['0'],0);
      cb_salvo.SetFocus;
      end;
   end;
if not fLerinv(0) then
   begin
   FMensagem('Não ha registro a ser salvo!',0,['0'],0);
   exit;
   end;
nomeArq:=InputBox('Nome do Inventário','Entre com o nome do Inventario:','');
If Trim(nomeArq)='' then
   exit;
nomeArq:=fRetAspas(nomeArq);
if length(nomeArq)>30 then
   nomeArq:=copy(nomearq,1,30);
query_exe:=tquery.create(NIL);
query_exe.databasename:=DM1.SG_ASSOC.databasename;



query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.add('Select count(*) from INVGRA_GD where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'','  IGCODEMP=0'+IntTostr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomeArq+chr(39));
query_exe.Open;
if query_exe.Fields[0].AsInteger>0 then
   begin
   mcinst:='Ja Existe um Arquivo salvo com este nome '+#13
          +nomeArq+#13
          +'Quer Substitui-lo? ';
   end
else
   begin
   mcinst:='Confirma gravação do Inventário com o'+#13
          +'Nome de '+nomeArq+'?';
   end;
if  fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
   exit;
query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.add('Delete from INVGRA_GD where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntTosTr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+nomearq+chr(39));
Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2137,'frm_inv','INVGRA_GD');
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

query_exe.Close;
query_exe.SQL.Clear;
query_exe.Params.CreateParam(ftString,'IGDATAEMI',ptInput);

query_exe.SQL.add('Insert  into INVGRA_GD (IGCODEMP , '
                  +'  IGNOMEINV, '
                  +'  IGCODPRO, '
                  +'  IGVALOR_TRANSP, '
                  +'  IGDATAEMI, '
                  +'  IGSIT, '
                  +'  IGCODTIP, '
                  +'  IGPRECO, '
                  +'  IGQTD'
                  +'  ,IGGRADE'
                  +'  ,IGDTVCTO'

                  +') '
                  +'Select '+IntTostr(codemp)+' as codemp, '
                  +chr(39)+nomeArq+chr(39)+' as nome, '
                  +' PDCODPRO AS CODPRO, '
                  +mudavp(TOTAL_TRANSP.Text)+' as valor_transp, '
                  +'  :IGDATAEMI, '
                  );

if CB_TPINV.ItemIndex=0 then
   mCampo_Qtd:='CLQTD'
else if CB_TPINV.ItemIndex=1 then
   mCampo_Qtd:='CLQTDC'
else if CB_TPINV.ItemIndex=2 then
   mCampo_Qtd:='CLQTDR'
else if CB_TPINV.ItemIndex=3 then
   mCampo_Qtd:='CLQTDT';

if ((DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)) then
  begin
  query_exe.SQL.Add(' PDFIS_CSOSN_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_EST_CF||'+chr(39)+'|'+chr(39)
                   +'||PDFIS_CSOSN_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CSOSN_INT_CF AS PDSIT,');
  end
else
  begin
  query_exe.SQL.Add(' PDFIS_CST_ICMS_EST_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_EST_CF||'+chr(39)+'|'+chr(39)
                   +'||PDFIS_CST_ICMS_INT_REV||'+chr(39)+'|'+chr(39)+'||PDFIS_CST_ICMS_INT_CF AS PDSIT,');
  end;



query_exe.SQL.Add(' PDCODTIP AS CODTIP,  ');
if CB_TPPRECO.ItemIndex=0 then
   query_exe.SQL.Add(' PDPRECO1 AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=1 then
   query_exe.SQL.Add(' PDPRECO2 AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=2 then
   query_exe.SQL.Add(' PDPRECO3 AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=3 then
   query_exe.SQL.Add(' PDPRECOC AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=4 then
   query_exe.SQL.Add(' PDPCOMC   AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=5 then
   query_exe.SQL.Add(' PDUCPR   AS PDPRECO, ')
else if CB_TPPRECO.ItemIndex=6 then
   query_exe.SQL.Add(' PDPCOFAB  AS PDPRECO, ');
query_exe.SQL.Add(mCampo_Qtd+' AS CLQTD ');

query_exe.SQL.Add(',CLNUMERO,CLDTVCTO');



query_exe.SQL.Add(' from CADLGC,CADPRO'
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '
              +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntToStr(codemp)+' and ')
              +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
              +'PDCODPRO=CLCODPRO '
              +iif(la_instrucao='','',' and ')+la_instrucao);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODFOR '+mcinst2);

if trim(edt_ncm.Text)<>'' then
  query_exe.SQL.Add(' and PDCLAS like '+chr(39)+edt_ncm.Text+'%'+chr(39));

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDNIVEL '+mcinst2);;

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   Tb_Inv.SQL.Add(' and PDSTATUS  '+mcinst2);;

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODTIP '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODCON '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODRAM '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and PDCODPRO '+mcinst2);

mcinst2:=fInstrucaoEstoque(CLBEstoque,mCampo_Qtd);
if trim(mcinst2)<>'' then
   query_exe.SQL.Add(' and  '+mcinst2);

if CB_SEPARADO.ItemIndex=0 then
   query_exe.SQL.add(' Order by PDNOME ')
else if CB_SEPARADO.ItemIndex=1 then
   query_exe.SQL.add(' Order by PDSIT,PDNOME ')
else if CB_SEPARADO.ItemIndex=2 then
   query_exe.SQL.add(' Order by FRAZAO,PDNOME ')
else if CB_SEPARADO.ItemIndex=3 then
   query_exe.SQL.add(' Order by PDCODTIP,PDNOME ');


if trim(MDT1.Text)='/  /' then
   query_exe.ParamByName('IGDATAEMI').AsDateTime:=date
else
   query_exe.ParamByName('IGDATAEMI').AsDateTime:=StrToDateTime(MDT1.Text);

// query_exe.SQL.add(' Order by PDCODTIP,PDNOME ')

Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_EXE,2318,'SGE','CADVER');
   end;
fGravarFiltrosInvgra03_gd(nomeArq);

query_exe.close;
freeandnil(query_exe);

FMensagem('Arquivo Exportado!',0,['0'],0);

end;

function tFrm_inv.fGravarFiltrosInvgra03_gd(pNomeInv: String): Boolean;
var
  query_exe: tquery;
  x_filtros: Integer;
  mchave_id: Integer;

   function fGravar(ptipo,pcodigo: string; pOmitir: integer):boolean;
   begin
   if fLerGenerico_query('INVGRA_GD03','max(IG3SEQ) as chave','IG3CHAVE='+QuotedStr(pNomeInv),query_consulta) then
      mchave_id:=query_consulta.fieldbyname('chave').Asinteger+1
   else
      mchave_id:=0;
   query_exe.parambyname('SEQ').AsInteger     := mchave_id;
   query_exe.parambyname('CODIGO').AsString  := pcodigo;
   query_exe.parambyname('TIPO').AsString    := ptipo;
   query_exe.parambyname('OMITIR').AsInteger := pOmitir;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
      result:=true;
   except on e : exception do
      begin
      verteclado(0);
      query_exe.close;
      freeandnil(query_exe);
      ex_erroSql_Novo(query_exe,307,'func2 '+E.MESSAGE ,'CADBAL03');
      result:=false;
      end;
      end;
   end;

begin


query_exe:=tquery.create(NIL);
query_exe.databasename:=DM1.SG_ASSOC.databasename;



query_exe.close;
query_exe.sql.clear;
query_exe.SQL.add('insert into INVGRA_GD03 ('
                 +' IG3CODEMP '
                 +',IG3CHAVE '
                 +',IG3SEQ '
                 +',IG3CODIGO  '
                 +',IG3TIPO '
                 +',IG3OMITIR  '
                 +')  values ('
                 +' 1'
                 +',:CHAVE '
                 +',:SEQ '
                 +',:CODIGO  '
                 +',:TIPO '
                 +',:OMITIR  '
                 +' )');
query_exe.parambyname('CHAVE').asstring :=pNomeInv;


for x_filtros:=0 to lbx_codgru.Items.Count - 1 do
   begin
   fGravar('GRU',Copy(lbx_codgru.Items[x_filtros],1,7),iif(OMITIR_GRU.Checked,1,0));
   end;

for x_filtros:=0 to lbx_codram.Items.Count - 1 do
   begin
   fGravar('RAM',Copy(lbx_codram.Items[x_filtros],1,7),iif(OMITIR_RAM.Checked,1,0));
   end;

for x_filtros:=0 to lbx_codtip.Items.Count - 1 do
   begin
   fGravar('TIP',Copy(lbx_codtip.Items[x_filtros],1,7),iif(OMITIR_TPRO.Checked,1,0));
   end;

query_exe.close;
freeandnil(query_exe);
end;


procedure TFrm_Inv.CB_FILIALExit(Sender: TObject);
begin
if CB_FILIAL.ItemIndex<0 then
   with CB_FILIAL do ItemIndex :=Items.IndexOf(CB_FILIAL.Text)
else
   CB_FILIAL.text:=CB_FILIAL.Items.Strings[CB_FILIAL.ItemIndex];


end;

end.
