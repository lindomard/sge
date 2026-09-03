unit S_Fatur_OrcGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RLReport,S_DM1,s_DM2, StdCtrls, Buttons,func,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter, ExtCtrls,lerarq,func2, S_SelEmp, rlTypes;
                                                 
type
  TFrm_Fatur_OrcGrupo = class(TForm)
    PC1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    rl_cabtit: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLcabCodpro: TRLLabel;
    RLCabQtd: TRLLabel;
    RLCabUnd: TRLLabel;
    RLCabNome: TRLLabel;
    RLCabMarca: TRLLabel;
    RLCabPU: TRLLabel;
    RLCabTotal: TRLLabel;
    rl_cabamb: TRLBand;
    db_cabamb: TRLDBText;
    RLBand4: TRLBand;
    RLCodPro: TRLDBText;
    RLQtd: TRLDBText;
    RLUnd: TRLDBText;
    RLPU: TRLDBText;
    RLTotal: TRLDBText;
    bbVisualiza: TBitBtn;
    Label1: TLabel;
    CHAVE: TEdit;
    RLBand6: TRLBand;
    RLrodape: TRLLabel;
    Label2: TLabel;
    MDATAP: TEdit;
    Label3: TLabel;
    VALORP: TEdit;
    Label4: TLabel;
    MCLIENTE: TEdit;
    Label5: TLabel;
    MCIDADE: TEdit;
    lbl_obs: TLabel;
    bbEmail: TBitBtn;
    BBSAIR: TBitBtn;
    Matricial: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    rl_cablogo: TRLBand;
    RLImage_cab: TRLImage;
    CB_CABPRIMPAG: TCheckBox;
    CB_IMPCABLOG: TCheckBox;
    lbl_TAMFONCAB: TLabel;
    TAMFONCAB: TEdit;
    sbSalvarPadrao: TSpeedButton;
    Label8: TLabel;
    CB_EXTENSAO: TComboBox;
    lbl_ordem: TLabel;
    CB_ORDEM: TComboBox;
    lbl_TAMFONCABOBS: TLabel;
    TAMFONCABOBS: TEdit;
    CB_DADOSCLI: TCheckBox;
    rldb_razao: TRLDBText;
    rlobs: TRLMemo;
//    m_corfel: TRLMemo;
    RLcabemp: TRLBand;
    rldb_fantasia: TRLDBText;
    RLDBText1: TRLDBText;
    lbl_cnpj_ie2: TRLLabel;
    RLDBText2: TRLDBText;
    rlobs2: TRLMemo;
    RLXLSFilter1: TRLXLSFilter;
    chk_bordas: TCheckBox;
    bbImprimir: TBitBtn;
    RLCabGrade: TRLLabel;
    RLCabLote: TRLDBText;
    Memo_obs: TMemo;
    CB_INF_GERAIS: TCheckBox;
    ts_Conf_gerais: TTabSheet;
    edt_txt_linha01: TEdit;
    Label6: TLabel;
    edt_txt_linha02: TEdit;
    Label7: TLabel;
    edt_txt_linha03: TEdit;
    Label9: TLabel;
    edt_txt_linha04: TEdit;
    Label10: TLabel;
    edt_txt_linha05: TEdit;
    Label11: TLabel;
    edt_txt_linha06: TEdit;
    Label12: TLabel;
    sbt_linhas: TSpeedButton;
    Label13: TLabel;
    edt_cabecalho: TEdit;
    cb_descom: TCheckBox;
    cb_desger: TCheckBox;
    RLMarca: TRLDBMemo;
    cb_impmarca: TCheckBox;
    cb_TrocaCab: TCheckBox;
    RLSubDetail2: TRLSubDetail;
    RLBand1: TRLBand;
    rlDescAdicional: TRLLabel;
    rlValor: TRLLabel;
    RLBand3: TRLBand;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLVALORADD: TRLLabel;
    RLBand7: TRLBand;
    RLLabel4: TRLLabel;
    RLTOTALADD: TRLLabel;
    RLBand8: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    db_cnpj: TRLDBText;
    RLLabel6: TRLLabel;
    db_ender: TRLDBText;
    RLLabel7: TRLLabel;
    db_bairro: TRLDBText;
    RLLabel8: TRLLabel;
    db_cidade: TRLDBText;
    RLLabel9: TRLLabel;
    db_uf: TRLDBText;
    RLLabel10: TRLLabel;
    db_cep: TRLDBText;
    db_ie: TRLDBText;
    RLLabel11: TRLLabel;
    db_nomcon: TRLDBText;
    RLLabel12: TRLLabel;
    db_fonecon: TRLDBText;
    db_fone01: TRLDBText;
    RLLabel13: TRLLabel;
    db_nomven: TRLDBText;
    RLLabel14: TRLLabel;
    db_datped: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    db_pag: TRLSystemInfo;
    db_qtdpag: TRLSystemInfo;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    db_prazoEnt: TRLDBText;
    RLLabel19: TRLLabel;
    db_ValProposta: TRLDBText;
    db_TipoFrete: TRLDBText;
    lbl_tipofrete: TRLLabel;
    db_fantasia: TRLDBText;
    RLLabel21: TRLLabel;
    lbl_cabchave: TRLLabel;
    lblObs: TRLLabel;
    RLBand5_totais_ant: TRLBand;
    lblFormaPgto: TRLLabel;
    lbl_planovendas: TRLLabel;
    lbl_transportadora: TRLLabel;
    rl_rodOrcCiente: TRLBand;
    RLLabel24: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand10: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel30: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    banner: TRLLabel;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
    rlprazos: TRLLabel;
    rlForma: TRLLabel;
    rl_nomefrete: TRLLabel;
    rl_obsgeral: TRLBand;
    m_texto: TRLMemo;
    rl_cabecalho: TRLLabel;
    cb_tagAssinatura: TCheckBox;
    RLDBText3: TRLDBText;
    rllnObsPed: TRLMemo;
    rlMemo_Obs: TRLMemo;
    cb_Lotes: TCheckBox;
    tsRelatorio2: TTabSheet;
    RLReport2: TRLReport;
    rl_cabtit2: TRLBand;
    lbl_cabchave2: TRLLabel;
    lblObs2: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLGroup2: TRLGroup;
    RLBand12: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLCabNome2: TRLLabel;
    RLCabMarca2: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLBand14: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLNome2: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLMarca2: TRLDBMemo;
    RLBand16: TRLBand;
    RLLabel43: TRLLabel;
    rl_cablogo2: TRLBand;
    RLImage_cab2: TRLImage;
    RLDBText17: TRLDBText;
    RLMemo1: TRLMemo;
    RLcabemp2: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText22: TRLDBText;
    lbl_cnpj_ie22: TRLLabel;
    RLDBText23: TRLDBText;
    RLMemo2: TRLMemo;
    RLBand22: TRLBand;
    RLLabel52: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel53: TRLLabel;
    db_cnpj2: TRLDBText;
    RLLabel54: TRLLabel;
    db_ender2: TRLDBText;
    RLLabel55: TRLLabel;
    db_bairro2: TRLDBText;
    RLLabel56: TRLLabel;
    db_cidade2: TRLDBText;
    RLLabel57: TRLLabel;
    db_uf2: TRLDBText;
    RLLabel58: TRLLabel;
    db_cep2: TRLDBText;
    db_ie2: TRLDBText;
    RLLabel59: TRLLabel;
    db_nomcon2: TRLDBText;
    RLLabel60: TRLLabel;
    db_fonecon2: TRLDBText;
    db_fone012: TRLDBText;
    RLLabel61: TRLLabel;
    db_nomven2: TRLDBText;
    RLLabel62: TRLLabel;
    db_datped2: TRLDBText;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    db_pag2: TRLSystemInfo;
    db_qtdpag2: TRLSystemInfo;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    db_prazoEnt2: TRLDBText;
    RLLabel67: TRLLabel;
    db_ValProposta2: TRLDBText;
    db_TipoFrete2: TRLDBText;
    RLLabel68: TRLLabel;
    db_fantasia2: TRLDBText;
    RLLabel69: TRLLabel;
    RLDBText42: TRLDBText;
    RLBand23: TRLBand;
    RLMensTotalb2: TRLLabel;
    RLMensTotdes2: TRLLabel;
    RLMensTotall2: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    lbl_transportadora2: TRLLabel;
    lbl_totout2: TRLLabel;
    RLTotout2: TRLLabel;
    RL_TOTALST2: TRLLabel;
    RLTotalb2: TRLLabel;
    rlprazos2: TRLLabel;
    rlForma2: TRLLabel;
    rltipo_frete2: TRLLabel;
    rl_nomefrete2: TRLLabel;
    RLTotdes2: TRLLabel;
    RLTotST2: TRLLabel;
    RLTotall2: TRLLabel;
    rl_rodOrcCiente2: TRLBand;
    RLLabel87: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLBand25: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel94: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel95: TRLLabel;
    cb_sepambiente: TCheckBox;
    cb_tipofrete: TCheckBox;
    cb_normal: TCheckBox;
    RLNome: TRLDBMemo;
    rlRazao: TRLMemo;
    RLBand_totais: TRLBand;
    RLMensTotalb: TRLLabel;
    RL_TOTALST: TRLLabel;
    RLMensTotdes: TRLLabel;
    lbl_totout: TRLLabel;
    RLMensTotall: TRLLabel;
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure bbEmailClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure TAMFONCABExit(Sender: TObject);
    procedure rl_cabtitAfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_EXTENSAOExit(Sender: TObject);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure TAMFONCABOBSExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rl_cablogoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbImprimirClick(Sender: TObject);
    procedure ExecutarImpVis(Sender: TObject);
    procedure CB_EXTENSAOClick(Sender: TObject);
    procedure rl_obsgeralBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure CB_INF_GERAISClick(Sender: TObject);
    procedure sbt_linhasClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbVisualizaClick(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_rodOrcCienteBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand23BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cb_normalClick(Sender: TObject);
  private
    { Private declarations }
    function fFatur_orcAbrePedido(pTipo: Integer): Boolean;
    procedure fBeforePrint;

    procedure fAjustarBandas;

  public
    { Public declarations }
    TipoPreco: Integer;
    pOrigem_OrgGrupo: Integer;

    Form_SelEmp: TFrm_SelEmp;



    procedure fCustomizarrelatorio(pNormal: boolean);
  end;

var
  Frm_Fatur_OrcGrupo: TFrm_Fatur_OrcGrupo;
  mValidarPadroes: Boolean=true;
  xTotalP: Real;
  xTotalA: Real;
  xImpVis: Integer;//0 - imprime 1 - visualiza
  xTotalAdd: Real;
  mCasasSaldo: Integer;

implementation

uses S_DM4, Math, DB, func_excecoes;

{$R *.dfm}

procedure TFrm_Fatur_OrcGrupo.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLrodape.Caption:='Relatório emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time)+'. Intersys Systemas: (62) 3093-6601';
end;

procedure TFrm_Fatur_OrcGrupo.FormCreate(Sender: TObject);
var
  x: Integer;
begin
mCasasSaldo:=0;
for x:=1 to length(mcasas) do
  begin
  if Copy(mcasas,x,1)='0' then
    mCasasSaldo:=mCasasSaldo+1;
  end;
if mCasasSaldo>0 then
  mCasasSaldo:=mCasasSaldo-1;



xTotalP:=0;
xTotalA:=0;
xTotalAdd:=0;

TsRelatorio.TabVisible :=False;
tsRelatorio2.TabVisible:=False;

//if (valint(copy(mpseg,4,2))=2) then
if Log_TipoLote=1 then // usa lotes de mercadorias
   begin
   RLCabGrade.Caption:='Lote';
   cb_Lotes.Visible:=True;
   end
else
   begin
   RLCabGrade.Visible:=false;
   RLCabLote.Visible :=false;
   RLCabNome.Left    :=RLCabGrade.Left;
   RLCabNome.Width   :=RLCabNome.Width+RLCabGrade.Width;
   end;

if flfilpad(-1,'_FATUR_ORCGRUPO','CB_EXTENSAO') then
   begin
   mValidarPadroes:=false;
   CB_EXTENSAO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   CB_EXTENSAOClick(self);
   mValidarPadroes:=true;
   end;

if DM4.Qr_Ped01P1SEPAMB.AsInteger=1 then
   begin
   lbl_ordem.Visible:=false;
   CB_ORDEM.Visible :=false;
   end;

if flfilpad(0,'_Pedido_Fortes','CB_DESCOM') then
  begin
  if DM4.Tb_FilPad2FPVALOR.Value='true' then
     begin
     fGerarEvento('523 DESCRICAO COMPLEMENTAR');
     RLCabMarca2.caption:='Desc.Compl';
     RLCabMarca.caption:='Desc.Compl';
     RLMarca2.DataField :='P2COMPLEMENTO';
     RLMarca.DataField :='P2COMPLEMENTO';
     end
  else
     begin
     fGerarEvento('533 MARCA');

     RLCabMarca2.caption:='Marca';
     RLCabMarca.caption:='Marca';
     RLMarca2.DataField :='PDMARCA';
     RLMarca.DataField :='PDMARCA';
     end;
  end;


Memo_Obs.Lines.Clear;

if flfilpad(0,'_FATUR_ORCGRUPO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CABPRIMPAG',[]) then
      CB_CABPRIMPAG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEPAMBIENTE',[]) then
      cb_sepambiente.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPOFRETE',[]) then
      cb_tipofrete.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPCABLOG',[]) then
      CB_IMPCABLOG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TAGASSINATURA',[]) then
      cb_tagAssinatura.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DADOSCLI',[]) then
      CB_DADOSCLI.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMFONCAB',[]) then
      TAMFONCAB.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMFONCABOBS',[]) then
      TAMFONCABOBS.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MEMO_OBS',[]) then
      Memo_obs.Lines.Add(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INF_GERAIS',[]) then
      CB_INF_GERAIS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESCOM',[]) then
      cb_descom.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESGER',[]) then
      cb_desger.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPMARCA',[]) then
      cb_impmarca.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TROCACAB',[]) then
      cb_TrocaCab.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOTES',[]) then
      cb_Lotes.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_cabecalho',[]) then
      edt_cabecalho.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha01',[]) then
      edt_txt_linha01.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha02',[]) then
      edt_txt_linha02.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha03',[]) then
      edt_txt_linha03.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha04',[]) then
      edt_txt_linha04.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha05',[]) then
      edt_txt_linha05.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','lbl_linha06',[]) then
      edt_txt_linha06.Text:=DM4.Tb_FilPad2FPVALOR2.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=DM4.Tb_FilPad2FPVALOR2.AsInteger;
  end;

ts_Conf_gerais.TabVisible := CB_INF_GERAIS.Checked;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_Fatur_OrcGrupo.BBSAIRClick(Sender: TObject);
begin
close;
end;

function TFrm_Fatur_OrcGrupo.fFatur_orcAbrePedido(pTipo: Integer): Boolean;
var
mJoin_Cadp02_Lotes: String;
begin


result:=true;

la_Empresas :='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
La_Empresas:=fEmpresas_Selecionadas('CADPED','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM2.Qr_Cab.Close;
DM2.Qr_Cab.SQL.Clear;
DM2.Qr_Cab.SQL.Add('Select min(P1CODEMP) as P1CODEMP, '
                  +'       min(P1ORDEM)  as P1ORDEM, '
                  +'       sum(P1TOTALB) as P1TOTALB,'
                  +'       sum(P1TOTALL) as P1TOTALL,'
                  +'       sum(P1TOTVALAPROXTRIB) AS P1TOTVALAPROXTRIB,'
                  +'       sum(P1BASEN)  as P1BASEN'
                  +'       ,sum(P1ICMS_BCFRE) as P1ICMS_BCFRE '
                  +'       ,sum(P1ICMS_ALFRE) as P1ICMS_ALFRE '
                  +'       ,sum(P1ICMS_VLFRE) as P1ICMS_VLFRE '
                  +'       ,sum(P1DESPACES) as P1DESPACES '

                  +'       ,max(P1SERIE)  as P1SERIE '
                  +'       ,max(P1DATVIS) as P1DATVIS '
                  +'       ,max(P1NUMVIS) as P1NUMVIS  '
                     +'       ,max(P1NFE_IMP_UFSAIDA_PAIS) as P1NFE_IMP_UFSAIDA_PAIS '
                     +'       ,max(P1NFE_IMP_XLOCEXPORTA) as P1NFE_IMP_XLOCEXPORTA '
                     +'       ,max(P1NFE_IMP_XLOCDESPACHO) as P1NFE_IMP_XLOCDESPACHO '
                     +'       ,max(P1TRUNCARREND) as P1TRUNCARREND '


                     +',sum(P1TOTPIS)      as P1TOTPIS '
                     +'       ,sum(P1CSLL)   as P1CSLL '
                     +'       ,sum(P1IRRF)   as P1IRRF '

                     +'       ,max(P1TPEMIS) AS P1TPEMIS '
                     +'       ,max(P1CODSER) AS P1CODSER '

                     +',sum(P1TOTCOFINS)   as P1TOTCOFINS '
                     +',sum(P1RED_BCISSQN) as P1RED_BCISSQN '
                     +',sum(P1BCINSS)      as P1BCINSS '
                     +',sum(P1RED_BCINSS)  as  P1RED_BCINSS '
                     +',sum(P1VINSS)       as  P1VINSS '
                     +',sum(P1BCIRRF)      as  P1BCIRRF '
                     +',sum(P1RED_BCIRRF)  as P1RED_BCIRRF '
                     +',sum(P1VIRRF)       as P1VIRRF '
                     +',max(P1NFE_ENVXML) as P1NFE_ENVXML '

                     +',max(P1NFCE_NUMERO) as  P1NFCE_NUMERO'
                     +',max(P1NFCE_DATA) as P1NFCE_DATA'

                     +',max(P1NFCE_SERIE) as P1NFCE_SERIE'
                     +',MAX(P1NFCE_SITUACAO) AS P1NFCE_SITUACAO '
                     +',max(P1NFCE_MODELO) AS P1NFCE_MODELO'
                     +',max(P1NFCE_CHV_ACESSO) as P1NFCE_CHV_ACESSO'
                     +',max(P1NFCE_NPROT) as  P1NFCE_NPROT '


                  +','
                  +'       sum(P1ICMSN)  as P1ICMSN,'
                  +'       sum(P1BASER)  as P1BASER,'
                  +'       sum(P1ICMSR)  as P1ICMSR,'
                  +'       sum(P1TOTDES) as P1TOTDES,'
                  +'       sum(P1TOTDI01) as P1TOTDI01, '
                  +'       sum(P1TOTDI02) as P1TOTDI02, '
                  +'       sum(P1TOTDI02) as P1TOTDI03, '
                  +'       sum(P1TOTDIVL) as P1TOTDIVL, '
                  +'       sum(P1TOTTRI) as P1TOTTRI,'
                  +'       sum(P1TOTRET) as P1TOTRET,'
                  +'       sum(P1TOTISE) as P1TOTISE,'
                  +'       sum(P1BASENP) as P1BASENP,'
                  +'       sum(P1BASENN) as P1BASENN,'
                  +'       sum(P1BASENI) as P1BASENI,'
                  +'       sum(P1ICMSNP) as P1ICMSNP,'
                  +'       sum(P1ICMSNN) as P1ICMSNN,'
                  +'       sum(P1BASENI) as P1BASENI,'
                  +'       sum(P1ICMSNP) as P1ICMSNP,'
                  +'       sum(P1ICMSNN) as P1ICMSNN,'
                  +'       sum(P1ICMSNI) as P1ICMSNI,'
                  +'       sum(P1BASERP) as P1BASERP,'
                  +'       sum(P1BASERN) as P1BASERN,'
                  +'       sum(P1BASERI) as P1BASERI,'
                  +'       sum(P1ICMSRP) as P1ICMSRP,'
                  +'       sum(P1ICMSRN) as P1ICMSRN,'
                  +'       sum(P1ICMSRI) as P1ICMSRI,'
                  +'       sum(P1BASENRI) as P1BASENRI,'
                  +'       sum(P1BASENRP) as P1BASENRP,'
                  +'       sum(P1BASENRN) as P1BASENRN,'
                  +'       sum(P1ICMSNRI) as P1ICMSNRI,'
                  +'       sum(P1ICMSNRP) as P1ICMSNRP,'
                  +'       sum(P1ICMSNRN) as P1ICMSNRN,'
                  +'       sum(P1TOTPOS) as P1TOTPOS,'
                  +'       sum(P1TOTNEG) as P1TOTNEG,'
                  +'       sum(P1TOTINA) as P1TOTINA,'
                  +'       sum(P1TOTOUT) as P1TOTOUT,'
                  +'       sum(P1DESC01) as P1DESC01,'
                  +'       sum(P1DESC02) as P1DESC02,'
                  +'       sum(P1VLRDES) as P1VLRDES,'
                  +'       sum(P1REPAS)  as P1REPAS,'
                  +'       sum(P1QTDVOL) as P1QTDVOL,'
                  +'       sum(P1VALFRE) as P1VALFRE,'
                  +'       sum(P1ACRECONV) as P1ACRECONV,'
                  +'       sum(P1ACREGER)  as P1ACREGER, '
                  +'       sum(P1IPIPOS)   as P1IPIPOS, '
                  +'       sum(P1IPINEG)   as P1IPINEG, '
                  +'       sum(P1IPIINA)   as P1IPIINA, '
                  +'       sum(P1TARBAN)   as P1TARBAN, '
                  +'       sum(P1TOTCGRU)  as P1TOTCGRU, '
                  +'       sum(P1TOTSGRU)  as P1TOTSGRU, '
                  +'       sum(P1VALSEG)   as P1VALSEG, '
                  +'       sum(P1CUPACRE)  as P1CUPACRE, '
                  +'       sum(P1CUPDES)   as P1CUPDES, '
                  +'       max(P1CFO1)     as P1CFO1, '
                  +'       max(P1CFO2)     as P1CFO2, '
                  +'       max(P1PESOL)  as P1PESOL,'
                  +'       max(P1PESOB)  as P1PESOB, '
                  +'       max(P1NUMNF)  as P1NUMNF, '
                  +'       max(P1NUMCF)  as P1NUMCF, '
                  +'       max(P1SUBMOD)  as P1SUBMOD, '
                  +'       max(P1ALIQDEB) as P1ALIQDEB, '
                  +'       sum(P1BCISSQN) as P1BCISSQN, '
                  +'       sum(P1VISSQN)  as P1VISSQN, '
                  +'       sum(P1TOTSERLIQ) as P1TOTSERLIQ, '
                  +'       max(P1CFOSER)  as P1CFOSER, '
                  +'       max(P1NPEDORI) as P1NPEDORI, '
                  +'       max(P1PEDORI1) as P1PEDORI1, '
                  +'       max(P1PEDORI2) as P1PEDORI2, '
                  +'       max(P1EMITENTE) as P1EMITENTE, '
                  +'       max(P1BANCO) as P1BANCO, ');
if cb_sepambiente.Checked=true then
   DM2.Qr_Cab.SQL.Add('       1 as P1SEPAMB, ')
else
   DM2.Qr_Cab.SQL.Add('       max(P1SEPAMB) as P1SEPAMB, ');
DM2.Qr_Cab.SQL.Add('       max(P1QTDDECPU) as P1QTDDECPU, '
                  +'       max(P1INCTB) as  P1INCTB, '
                  +'       sum(P1COMIS) AS  P1COMIS, '
                  +'       sum(P1COMV02) as P1COMV02, '
                     +'       sum(P1IRRF) as P1IRRF, '
                    +'        sum(P1CSLL) AS P1CSLL, '
                  
                  +'       max(P1CODV02) as P1CODV02, '
                  +'       max(CCONSF) AS CCONSF, '
                  +'       max(CREVENDA_CP) as CREVENDA_CP, '
                  +'       max(CDEC5834) AS CDEC5834, '
                  +'       max(CDEC5825) AS CDEC5825, '
                  +'       P1LOTSEQ,P1CHAVE,P1CODCLI,'
                  +'       max(P1DATAP) as P1DATAP ,'
                  +'       max(P1DATANF) as  P1DATANF,P1CODVEN,P1CODASSE,'
                  +'       P1CODECF,P1DATACF, '
                  +'       P1OBS1,P1OBS2,P1OBS3,P1FRETEPC,P1UFPV,P1PLACAV,'
                  +'       P1CODUSR,P1HORADIG,P1TABPV,P1CODPV,P1TIPENT,P1TIPO,P1TIPO_ENTSAI,'
                  +'       CCODBAIC, CCODLOCC,CCEPC,CCIDADEC,CUFC,CBAIRROC,CENDERC,'
                  +'       P1CODTRA,CCODBAI,CCODLOC,CCEP,CCELULAR,CFONERES,CFAX,'
                  +'       P1ESPECIE,P1PREVENT,P1HPREVENT,CFONECOM,CDTCAD,CRAZAO,CDENOM,CPONTOR,'
                  +'       COBS01,COBS02,COBS03,COBS04,COBS05,CSITCLI,CLIM1,CLIM2,'
                  +'       CREDICMSNOR,CCIDADE,CUF,CBAIRRO,CLOG,CNUM,CCOMPL,CCODRED,CNOMCON,CFONCON,P1CODCV, '
                  +'       CFONE01,CFONE02,CFONE03,CICMSR,'
                  +'       RAZAO,FANTASIA,ENDERECO,BAIRRO, '
                  +'       CIDADE,UF,CGC,INSCRICAO,'
                  +'       FONE,FAX,E_MAIL ');
if ptipo=1 then
   begin
   DM2.Qr_Cab.Sql.Add('       From OLD_CADP01,CADEMP '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +'  P1STATUS<'+mstatus_excluido+' and (P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+iif(codemp>100,IntToStr(codemp-100),IntToStr(codemp+100))+')'
                     +' and P1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString);
   end
else
   begin
   DM2.Qr_Cab.Sql.Add('       From CADP01,CADEMP '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and '));

{   if DM1.Qr_Tid.locate('TINOME','CADPED',[]) then
      DM2.Qr_Cab.SQL.Add(' (P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(codemp+iif(codemp>100,100,100))+') and ')
   else
      DM2.Qr_Cab.SQL.Add(' P1CODEMP=0'+IntToStr(codemp)+' and ');}

   if trim(la_Empresas)<>'' then
      DM2.Qr_Cab.SQL.Add(la_Empresas+' and');
   DM2.Qr_Cab.Sql.Add('  P1STATUS<'+mstatus_excluido+' '
                  +'       and CODEMP=0'+IntToStr(codemp)
                  +'       and P1LOTSEQ=0'+IntTostr(ls_numped)
                  +'       and P1CHAVE=0'+fdeixanum2(CHAVE.Text));
   end;
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   begin
   DM2.Qr_Cab.Sql.Add(' and CCODEMP=P1CODEMP');
   end;
DM2.Qr_Cab.SQL.add('       and CCODCLI=P1CODCLI '
                  +'       group by P1LOTSEQ,P1CHAVE,P1CODCLI,P1CODVEN,P1CODASSE,'
                  +'       P1CODECF,P1DATACF, '
                  +'       P1OBS1,P1OBS2,P1OBS3,P1FRETEPC,P1UFPV,P1PLACAV,'
                  +'       P1CODUSR,P1HORADIG,P1TABPV,P1CODPV,P1TIPO,P1TIPO_ENTSAI,'
                  +'       CCODBAIC, CCODLOCC,CCEPC,CCIDADEC,CUFC,CBAIRROC,CENDERC, '
                  +'       P1CODTRA,CCODBAI,CCODLOC,CCEP,CCELULAR,CFONERES,CFAX,'
                  +'       P1ESPECIE,P1PREVENT,P1HPREVENT,P1TIPENT,'
                  +'       CFONECOM,'
                  +'       CDTCAD,CRAZAO,CDENOM,CPONTOR,'
                  +'       COBS01,COBS02,COBS03,COBS04,COBS05,CSITCLI,CLIM1,CLIM2,'
                  +'       CREDICMSNOR,CCIDADE,'
                  +'       CUF,CBAIRRO,CLOG,CNUM,CCOMPL,CCODRED,CNOMCON,CFONCON,P1CODCV,'
                  +'       CFONE01,CFONE02,CFONE03, CICMSR,'
                  +'       RAZAO,FANTASIA,ENDERECO,BAIRRO, '
                  +'       CIDADE,UF,CGC,INSCRICAO,'
                  +'       FONE,FAX,E_MAIL '
                  );

//ex_erroSql_Novo(DM2.Qr_cab,792,'SGE','CADVER');


try
   DM2.Qr_Cab.Open;
except
   DM2.Qr_Cab.sql.savetofile(mpastatemp +'sql1.TXT');
   end;

if DM2.Qr_Cab.Eof then
  begin
  fmensagem('Chave não Encontrada!',0,['0'],0);
  result:=false;
  exit;
  end;



DM2.Qr_AddExt.Close;
DM2.Qr_AddExt.SQL.Clear;
DM2.Qr_AddExt.SQL.Add(' select * from CADP01_ADDEXT ');
DM2.Qr_AddExt.SQL.Add(' where P1AE_CHAVE='+fdeixanum2(CHAVE.Text));
DM2.Qr_AddExt.SQL.Add(' and P1AE_CODEMP='+IntToStr(codemp));
DM2.Qr_AddExt.SQL.Add(' and P1AE_LOTSEQ='+IntTostr(ls_numped));
DM2.Qr_AddExt.SQL.Add(' order by P1AE_ITEM ');
try
  DM2.Qr_AddExt.Open;
except
  DM2.Qr_AddExt.SQL.SaveToFile(mpastatemp +'sql2.txt');
  end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
La_Empresas:=fEmpresas_Selecionadas('CADPED','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);


if (Log_TipoLote =1) and (DM4.Qr_Ped01P1TIPO.AsInteger<>0) then
  begin
  mJoin_Cadp02_Lotes:=' left join '++iif(ptipo=1,'OLD_','')+' CADP02_LOTES ON '
                          +' ( P2LM_CODEMP=P2CODEMP AND P2LM_LOTSEQ=P2LOTSEQ AND P2LM_CHAVE=P2CHAVE AND P2LM_CODPRO=P2CODPRO AND P2LM_ITEM=P2ITEM ) ';

//  la_instrucao:=la_instrucao+' and ';
  fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
  mcinst2:=fGerarInstrucaoQtd(1,'CASE WHEN P2LM_LOTE IS NULL THEN  CASE WHEN P2LOTE is null then P2LOTE ELSE P2LOTE END ELSE P2LM_LOTE END ',Form_SelEmp.CLB_EMPRESAS);
  mcinst3:=fGerarInstrucaoQtd(1,'CASE WHEN P2LM_DTVCTO IS NULL THEN  CASE WHEN P2DTVCTO is null then P2DTVCTO ELSE P2DTVCTO END ELSE P2LM_DTVCTO END ',Form_SelEmp.CLB_EMPRESAS);
  mcinst4:=fGerarInstrucaoQtd(1,'ROUND(( CASE WHEN P2LM_QTD IS NULL THEN   CASE WHEN P2QTD is null then P2QTD ELSE P2QTD END ELSE P2LM_QTD END ) ,'+IntToStr(mCasasSaldo)+')',Form_SelEmp.CLB_EMPRESAS);

  mcinst2:='CASE WHEN P2LM_LOTE IS NULL THEN  CASE WHEN P2LOTE is null then P2LOTE ELSE P2LOTE END ELSE P2LM_LOTE END ';
  mcinst3:='CASE WHEN P2LM_DTVCTO IS NULL THEN  CASE WHEN P2DTVCTO is null then P2DTVCTO ELSE P2DTVCTO END ELSE P2LM_DTVCTO END ';
  mcinst4:='ROUND(( CASE WHEN P2LM_QTD IS NULL THEN   CASE WHEN P2QTD is null then P2QTD ELSE P2QTD END ELSE P2LM_QTD END ) ,'+IntToStr(mCasasSaldo)+')';
//  mcinst4:='P2QTD';

  end
else
  begin
  mcinst2:='P2LOTE';
  mcinst3:='P2DTVCTO';
  mcinst4:='P2QTD';
  end;

DM2.Qr_Cor.Close;
DM2.Qr_Cor.SQL.Clear;
DM2.Qr_Cor.SQL.Add('Select min(P2CODEMP)   as P2CODEMP, '
                  +'      min(P2ORDEM)              as P2ORDEM, '
                  +iif(DM4.Qr_Ped01P1FORMACE.AsInteger=0,'P2ITEM','P2ITEM ')+' as P2ITEM, '
//                  +iif(DM4.Qr_Ped01P1FORMACE.AsInteger=0,'P2ITEM','min(P2ITEM) ')+' as P2ITEM, '
                  +'      max('+mcinst2+') as P2LOTE,  '
{ retirado para resolver o problema do seu eduardo da corfel, ver uma nova configuração antes de
mandar para a pro-loja
                  +iif(DM4.Qr_Ped01P1FORMACE.AsInteger=1,' sum(P2PRECO) as P2PRECO, P2QTD AS P2QTD,'
                      ,'  P2PRECO, SUM(P2QTD) AS P2QTD, ')
}

                  +iif(DM4.Qr_Ped01P1FORMACE.AsInteger=1,' sum(P2PRECO) as P2PRECO, max('+mcinst4+') AS P2QTD,'
                      ,'  P2PRECO, SUM('+mcinst4+') AS P2QTD, ')

                  +'      sum(P2BASEN) as P2BASEN,'
                   +'      sum(P2VDESPACESRAT) as P2VDESPACESRAT,'
                   +'      sum(P2VSEGRAT) as P2VSEGRAT,'
                   +'      sum(P2VFRERAT) as P2VFRERAT,'


                  +'      sum(P2ICMSN) as P2ICMSN,'
                  +'      sum(P2BASER) as P2BASER,'
                  +'      sum(P2ICMSR) as P2ICMSR,'
                  +'      sum(P2REPAS)      as P2REPAS,'
                  +'      sum(P2BCINR)      as P2BCINR,'
                  +'      sum(P2ICMSNR)     as P2ICMSNR, '
                  +'      max(P2ST_IVA)     as P2ST_IVA, '
                  +'      max(P2ST_REDUT)   as P2ST_REDUT, '
                  +'      max(P2ST_ICMCRED) as P2ST_ICMCRED, '
                  +'      max(P2ST_ICMDEB)  as P2ST_ICMDEB, '
                  +'      max(P2REDUTICM)   as P2REDUTICM, '
                  +'      sum(P2DESCRAT) as P2DESCRAT,'
                  +'      sum(P2VALDES) as P2VALDES, '
                  +'      sum(P2TOTDES) as P2TOTDES, '
                  +'      sum(P2VALIPI) as P2VALIPI, '
                  +'      max(P2PCOMIS) as P2PCOMIS,'
                  +'      sum(P2VCOMIS) as P2VCOMIS, '
                  +'      max(P2PCOM02) as P2PCOM02, '
                  +'      max(P2CODAGRU) as P2CODAGRU, '
                  +'      max(P2CONSIG)   as P2CONSIG, '
                  +'      sum(P2VCOM02) as P2VCOM02, '
                   +'      max(P2ALPIS) as P2ALPIS, '
                   +'      sum(P2VALPIS) as P2VALPIS, '
                   +'      max(P2CST_PIS) as P2CST_PIS, '
                   +'      max(P2ALCOFINS) as P2ALCOFINS, '
                   +'      sum(P2COFINS) as P2COFINS, '
                   +'      max(P2CST_COFINS) as P2CST_COFINS, '

                  +'      max(P2PDESCF) as P2PDESCF, '
                  +'      max(PDNOMCON) as PDNOMCON, '
                  +'      max(PDREFER) AS PDREFER, '

                  +'      max(P2PCOTAB) as P2PCOTAB, '
                  +'      max(P2PCOFPG) as P2PCOFPG, '
                  +'      max('+mcinst3+') AS P2DTVCTO, '
                  +'      P2LOTSEQ,P2CHAVE,P2CODPRO, P2SIT,'
                  +'     max(P2CSOSN) as P2CSOSN,'
                  +'    max(P2CSOSN_ORI) as P2CSOSN_ORI,P2ALIPI,'
                  +'   max(P2PCREDSN) as P2PCREDSN, '
                  +'   max(P2VLRICMS_SN) as P2VLRICMS_SN, '
                  +'      P2DESC1,P2DESC2,P2DESC3,max(P2CFO) AS P2CFO,'
                  +'      max(P2CFOSUBECF) as P2CFOSUBECF, '
                  +'      P2PCOMAX,P2PROMOCAO,max(P2DESCPR) as P2DESCPR, '
                  +'      P2COMPLEMENTO '
                  +' ,max(decode(trim(p2nompro_ori),null,pdnome,p2nompro_ori)) as PDNOME, '
                  +' PDUND,P2UND,PDCODBAR,PDCODTIP,PDNOME2,'
                  +' max(PDPRZVAL_DIAS) AS PDPRZVAL_DIAS,max(PDPRZVAL) as PDPRZVAL'
                  +' ,max(PDPRZVAL_ANOS) as  PDPRZVAL_ANOS,'
                  +IIF(DM2.Qr_Cabp1SEPAMB.AsInteger<>1 ,QuotedStr(' '),'TRIM(P2AMBIENTE)')+' AS GRUPO,    '
                  +'PDMARCA,PDREFER,PDNIVEL,PDPMC,PDCLAS,P2LISTA,P2ALIQ,P2ALIQNR,PDSECAO,PDLADO,PDPRAT,PDRUA'
                 +'      ,max(P2CONTESP) as P2CONTESP ');
DM2.Qr_Cor.Sql.add(', max(case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end )   as P2NOMPRO_ORI '
                  +'       ,DECODE(max(P2CODPRO_ORI),null,to_char(max(PDCODPRO)),'+chr(39)+' '+chr(39)+',to_char(max(PDCODPRO)),'
                  +' max(P2CODPRO_ORI)) as P2CODPRO_ORI '

                   +', max(P2COMPRA_XPED) AS P2COMPRA_XPED '
                   +', max(P2COMPRA_NITEMPED) AS P2COMPRA_NITEMPED '

                   +',max(P2IMP_IMP_ALIQ) as P2IMP_IMP_ALIQ'
                   +',max(P2IMP_IMP_VALOR) as P2IMP_IMP_VALOR '
                   +',max(P2IMP_IMP_VDESDPADU) as P2IMP_IMP_VDESDPADU '
                   +',max(P2IMP_IMP_VII) as P2IMP_IMP_VII'
                   +',max(P2IMP_IMP_VIOF) as P2IMP_IMP_VIOF'
       +' ,max(P2IMP_TPVIATRANSP) as P2IMP_TPVIATRANSP '

       +',MAX(P2CEST) as P2CEST '
       +',MAX(P2CBENEF) as P2CBENEF '
       +',MAX(P2NRECEITUARIO) as P2NRECEITUARIO '


       +',max(P2CPUFDEST) as P2CPUFDEST '
       +',max(P2ICMSUFDEST) as P2ICMSUFDEST '
       +',max(P2ICMSINTER) as P2ICMSINTER '
       +',max(P2ICMSINTERPART) as P2ICMSINTERPART '
       +',sum(P2VFCPUDEST) as P2VFCPUDEST '
       +',sum(P2VICMSUFDEST) as P2VICMSUFDEST '
       +',sum(P2VICMSUFREMET) as P2VICMSUFREMET '
       +',sum(P2VBCUFDEST) as P2VBCUFDEST '
       +',max(P2MOTIVODESONERACAO) as P2MOTIVODESONERACAO '
       +',sum(P2VICMSDES) as P2VICMSDES '




       +' ,max(P2IMP_VAFRMM) as P2IMP_VAFRMM '
       +',max(P2IMP_TPINTERMEDIARIO) as P2IMP_TPINTERMEDIARIO '
       +',max(P2IMP_CNPJ) as P2IMP_CNPJ '
      +' ,max(P2IMP_UFTERCEIRO) as P2IMP_UFTERCEIRO '

                   +',max(P2IMP_IMP_VBC) as P2IMP_IMP_VBC '
       +',max(P2IPI_VBC) as P2IPI_VBC '
       +',max(P2PIS_VBC) as P2PIS_VBC'
       +',max(P2COFINS_VBC) as P2COFINS_VBC '
       +',max(PDREGMS) as PDREGMS '
       +',max(PDEMBPAD) as PDEMBPAD '


       +',sum(P2VALAPROXTRIB) as P2VALAPROXTRIB'

        +'        ,max(P2IRRF_PERC) AS P2IRRF_PERC '
                      +'        ,sum(P2IRRF_VALOR) AS P2IRRF_VALOR '
                      +'        ,max(P2CSLL_PERC) AS P2CSLL_PERC '
                      +'        ,sum(P2CSLL_VALOR) AS P2CSLL_VALOR '

       +',max(PDIPI_CENQ) as PDIPI_CENQ '
       +',max(PDIPI_CST) as  PDIPI_CST'

+',max(P2CBS_CST) as  P2CBS_CST '
       +',max(P2CODCLASSTRIB) as  P2CODCLASSTRIB '
       +',max(P2CBS_ALIQ) as  P2CBS_ALIQ '
       +',max(P2CBS_BC) as  P2CBS_BC '
       +',max(P2CBS_VALOR) as  P2CBS_VALOR '
       +',max(P2IBS_UF_ALIQ) as  P2IBS_UF_ALIQ '
       +',max(P2IBS_UF_VALOR) as  P2IBS_UF_VALOR '
       +',max(P2IBS_MUN_ALIQ) as  P2IBS_MUN_ALIQ '
       +',max(P2IBS_MUN_VALOR) as  P2IBS_MUN_VALOR '
       +',max(P2CBS_DEV_TRIB) as  P2CBS_DEV_TRIB '

       
        +',max(PDNOME_COMPRA) as PDNOME_COMPRA '
        +',max(PDCOMPRA_UND) as PDCOMPRA_UND '
       



                  );


if ptipo=1 then
   begin
   DM2.Qr_Cor.Sql.Add('       From OLD_CADP02'
                   +' LEFT JOIN CADPRO on (PDCODPRO = P2CODPRO)  '
                   +mJoin_Cadp02_Lotes
                   +'  '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join+' where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' P2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString);
   end
else
   begin
   DM2.Qr_Cor.SQL.Add('     from CADP02        '
                   +' LEFT JOIN CADPRO on (PDCODPRO = P2CODPRO)  '
                   +mJoin_Cadp02_Lotes

                   +iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join+' where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +'      P2CHAVE=0'+fdeixanum2(CHAVE.Text));

{   if DM1.Qr_Tid.locate('TINOME','CADPED',[]) then
      DM2.Qr_Cor.SQL.Add(' (P2CODEMP=0'+IntToStr(codemp)+' or P2CODEMP=0'+IntToStr(codemp+iif(codemp>100,100,100))+') and ')
   else
      DM2.Qr_Cor.SQL.Add(' P2CODEMP=0'+IntToStr(codemp)+' and ');}


   end;

if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM2.Qr_Cor.Sql.Add(' and PDCODEMP=P2CODEMP');
DM2.Qr_Cor.SQL.Add('      group by TRIM(P2AMBIENTE),PDMARCA,PDREFER,P2LOTSEQ,P2CHAVE,P2CODPRO,P2SIT,P2ALIPI, '
                  +'      P2DESC1,P2DESC2,P2DESC3, P2DTVCTO,P2PCOMAX,P2PROMOCAO,'
                  +'      P2COMPLEMENTO ');
if cb_Lotes.Checked then
   begin
   DM2.Qr_Cor.sql.add(' ,P2LOTE ');
   if (Log_TipoLote =1) and (DM4.Qr_Ped01P1TIPO.AsInteger<>0) then
       DM2.Qr_Cor.sql.add(',P2LM_LOTE ');
   end;
DM2.Qr_Cor.sql.add('      ,PDUND,P2UND,PDCODBAR,PDCODTIP,PDNOME2,'
                  +'      PDNIVEL,PDPMC,PDCLAS,P2LISTA,P2ALIQ,P2ALIQNR,PDSECAO,PDLADO,PDPRAT,PDRUA'
                  +iif(DM4.Qr_Ped01P1FORMACE.AsInteger=1,',P2QTD '
                       ,',P2PRECO'));
//if DM4.Qr_Ped01P1FORMACE.AsInteger=0 then
  DM2.Qr_Cor.SQL.Add(',P2ITEM ');

if DM2.Qr_Cabp1SEPAMB.AsInteger<>1 then
   begin
   if CB_ORDEM.ItemIndex=6 then
      DM2.Qr_Cor.SQL.Add(' order by PDSECAO,PDLADO,PDPRAT,PDRUA,PDNOME ')
   else if CB_ORDEM.ItemIndex=5 then
      DM2.Qr_Cor.SQL.Add(' order by PDSECAO,PDLADO,PDPRAT,PDRUA,PDNOME ')
   else if CB_ORDEM.ItemIndex=4 then
      DM2.Qr_Cor.SQL.Add(' order by PDMARCA,PDNOME ')
   else if CB_ORDEM.ItemIndex=3 then
      DM2.Qr_Cor.SQL.Add(' order by P2CODPRO ')
   else if CB_ORDEM.ItemIndex=2 then
      DM2.Qr_Cor.SQL.Add(' order by P2ORDEM,P2ITEM ')
   else if CB_ORDEM.ItemIndex=1 then
      DM2.Qr_Cor.SQL.Add(' order by PDNOME2')
   else
      DM2.Qr_Cor.SQL.Add(' order by PDNOME');
   end
else
   begin
   if CB_ORDEM.ItemIndex=6 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),PDSECAO,PDLADO,PDPRAT,PDRUA,PDNOME ')
   else if CB_ORDEM.ItemIndex=5 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),PDSECAO,PDLADO,PDPRAT,PDRUA,PDNOME ')
   else if CB_ORDEM.ItemIndex=4 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),PDMARCA,PDNOME ')
   else if CB_ORDEM.ItemIndex=3 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),P2CODPRO ')
   else if CB_ORDEM.ItemIndex=2 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),P2ORDEM,P2ITEM ')
   else if CB_ORDEM.ItemIndex=1 then
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),PDNOME2')
   else
      DM2.Qr_Cor.SQL.Add(' order by TRIM(P2AMBIENTE),PDNOME');
   end;

// DM2.Qr_Cor.sql.SaveToFile(mpastatemp +'sql3__01.txt');

try
   DM2.Qr_Cor.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM2.Qr_Cor,824,'Fatur_OrcGrupo '+E.MESSAGE,'CADP02');
   result:=false;
   end;
   end;

if DM2.Qr_CabP1QTDDECPU.AsInteger>1 then
   begin
   DM2.Qr_Corprecounitario.DisplayFormat      :='#,##0.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
   DM2.Qr_CorP2PRECO.DisplayFormat       :='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
   DM2.Qr_SerP2SPRECO.DisplayFormat      :='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
   DM2.Qr_AddExtP1AE_VALOR.DisplayFormat :='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
   end
else
   begin
   DM2.Qr_Corprecounitario.DisplayFormat      :=mcasaspu;

   DM2.Qr_CorP2PRECO.DisplayFormat       :=mcasaspu;
   DM2.Qr_SerP2SPRECO.DisplayFormat      :=mcasaspu;
   DM2.Qr_AddExtP1AE_VALOR.DisplayFormat :=mcasaspu;
   end;

end;

procedure TFrm_Fatur_OrcGrupo.bbEmailClick(Sender: TObject);
begin
xImpVis:=2;
ExecutarImpVis(self);
{if (CB_EXTENSAO.ItemIndex=4) and (pOrigem_OrgGrupo<>1) then
   begin
   DM4.Qr_Ped01.First;
   FPedEmiteNf(0,2,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,DM4.Qr_Ped01P1ORDEM.AsInteger,DM4.Qr_Ped01P1CODEMP.AsInteger,1,DM4.Qr_Ped01P1FORMACE.AsInteger,true,false,true,1,0,0); // orcamento
   end
else
   begin
   if fFatur_orcAbrePedido(pOrigem_OrgGrupo) then
      begin
      rl_cablogo.Visible:=true;
      rl_cabtit.Visible :=true;

      DM4.Tb_LogoSis.Close;
      DM4.Tb_LogoSis.SQL.Clear;
      DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                            +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
      if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
         DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                               +' or LSCODEMP is null )');

      DM4.Tb_LogoSis.Open;
      if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
         DeleteFile('C:\SGE\LOGO_ORCAM.jpg');


      if not DM4.Tb_LogoSis.Eof then
         begin
         if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
            DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');
         end;
      if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
         begin
         RLImage_cab.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
         rl_cablogo.Visible:=true;
         end
      else
         rl_cablogo.Visible:=false;

      if CB_EXTENSAO.ItemIndex=0 then
         mcinst4:=fProcNomeEmail(0,'HTML')
      else if CB_EXTENSAO.ItemIndex=1 then
         mcinst4:=fProcNomeEmail(0,'PDF')
      else if CB_EXTENSAO.ItemIndex=2 then
         mcinst4:=fProcNomeEmail(0,'RTF')
      else if CB_EXTENSAO.ItemIndex=3 then
         mcinst4:=fProcNomeEmail(0,'XLS');

      RLMemo1.Lines.Clear;
      RLMemo1.Lines.Add(Memo_obs.Text);
      if valint(TAMFONCABOBS.Text)<>0 then
         begin
         rl_cabtit.Font.Height:=StrToInt(TAMFONCABOBS.Text);
         rl_cabtit.Height     :=(StrToInt(TAMFONCABOBS.Text)*-1)+4;
         end;
      if CB_DADOSCLI.Checked then
         begin
         db_fantasia.Font.Style:=[fsBold];
         db_ender.Font.Style   :=[fsBold];
         db_bairro.Font.Style  :=[fsBold];
         db_cidade.Font.Style  :=[fsBold];
         db_uf.Font.Style      :=[fsBold];
         db_cep.Font.Style     :=[fsBold];
         db_cnpj.Font.Style    :=[fsBold];
         db_ie.Font.Style      :=[fsBold];
         db_nomcon.Font.Style  :=[fsBold];
         db_fonecon.Font.Style :=[fsBold];
         db_fone01.Font.Style  :=[fsBold];
         db_nomven.Font.Style  :=[fsBold];
         db_chaveped.Font.Style:=[fsBold];
         db_datped.Font.Style  :=[fsBold];
         db_pag.Font.Style     :=[fsBold];
         db_qtdpag.Font.Style  :=[fsBold];
         end
      else
         begin
         db_fantasia.Font.Style:=[];
         db_ender.Font.Style   :=[];
         db_bairro.Font.Style  :=[];
         db_cidade.Font.Style  :=[];
         db_uf.Font.Style      :=[];
         db_cep.Font.Style     :=[];
         db_cnpj.Font.Style    :=[];
         db_ie.Font.Style      :=[];
         db_nomcon.Font.Style  :=[];
         db_fonecon.Font.Style :=[];
         db_fone01.Font.Style  :=[];
         db_nomven.Font.Style  :=[];
         db_chaveped.Font.Style:=[];
         db_datped.Font.Style  :=[];
         db_pag.Font.Style     :=[];
         db_qtdpag.Font.Style  :=[];
         end;

      RLReport1.SaveToFile(mcinst4);
      if flqr1('CRAZAO,CEMAIL','C','CADCLI','N','CCODCLI',DM2.Qr_CabP1CODCLI.AsString) then
         fEnviarEmail(mcinst4,DM1.Query1.FieldbyName('CEMAIL').AsString)
      else
         fEnviarEmail(mcinst4,'');
      DeleteFile(mcinst4);
      end;
   end;}
end;

procedure TFrm_Fatur_OrcGrupo.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_FATUR_ORCGRUPO','');

fGravaPadroes(0,'CB_CABPRIMPAG'    ,'checked'   ,'_FATUR_ORCGRUPO',iif(CB_CABPRIMPAG.Checked,'true','false'));
fGravaPadroes(0,'CB_SEPAMBIENTE'   ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_sepambiente.Checked,'true','false'));
fGravaPadroes(0,'CB_TIPOFRETE'     ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_tipofrete.Checked,'true','false'));
fGravaPadroes(0,'CB_IMPCABLOG'    ,'checked'   ,'_FATUR_ORCGRUPO',iif(CB_IMPCABLOG.Checked,'true','false'));
fGravaPadroes(0,'TAMFONCAB'       ,'text'      ,'_FATUR_ORCGRUPO',TAMFONCAB.Text);
fGravaPadroes(0,'TAMFONCABOBS'    ,'text'      ,'_FATUR_ORCGRUPO',TAMFONCABOBS.Text);
fGravaPadroes(0,'CB_DADOSCLI'     ,'checked'   ,'_FATUR_ORCGRUPO',iif(CB_DADOSCLI.Checked,'true','false'));
fGravaPadroes(0,'MEMO_OBS'        ,'text'      ,'_FATUR_ORCGRUPO',Memo_obs.Text);
fGravaPadroes(0,'CB_INF_GERAIS'   ,'checked'   ,'_FATUR_ORCGRUPO',iif(CB_INF_GERAIS.Checked,'true','false'));
fGravaPadroes(0,'CB_DESCOM'       ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_descom.Checked,'true','false'));
fGravaPadroes(0,'CB_DESGER'       ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_desger.Checked,'true','false'));
fGravaPadroes(0,'CB_IMPMARCA'     ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_impmarca.Checked,'true','false'));
fGravaPadroes(0,'CB_TROCACAB'     ,'checked'   ,'_FATUR_ORCGRUPO',iif(cb_TrocaCab.Checked,'true','false'));
fGravaPadroes(0,'CB_TAGASSINATURA','checked'   ,'_FATUR_ORCGRUPO',iif(cb_tagAssinatura.Checked,'true','false'));
fGravaPadroes2(0,'CB_ORDEM'      ,'text'   ,'_FATUR_ORCGRUPO','',IntToStr(CB_ORDEM.ItemIndex));
fGravaPadroes2(0,'lbl_cabecalho' ,'text'   ,'_FATUR_ORCGRUPO','',edt_cabecalho.Text);
fGravaPadroes2(0,'lbl_linha01'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha01.Text);
fGravaPadroes2(0,'lbl_linha02'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha02.Text);
fGravaPadroes2(0,'lbl_linha03'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha03.Text);
fGravaPadroes2(0,'lbl_linha04'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha04.Text);
fGravaPadroes2(0,'lbl_linha05'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha05.Text);
fGravaPadroes2(0,'lbl_linha06'   ,'text'   ,'_FATUR_ORCGRUPO','',edt_txt_linha06.Text);
fGravaPadroes(0,'CB_LOTES','checked'   ,'_FATUR_ORCGRUPO',iif(cb_Lotes.Checked,'true','false'));

end;

procedure TFrm_Fatur_OrcGrupo.TAMFONCABExit(Sender: TObject);
begin
TAMFONCAB.Text:=FloatToStr(ValFloat(TAMFONCAB.Text));
end;

procedure TFrm_Fatur_OrcGrupo.rl_cabtitAfterPrint(Sender: TObject);
begin
if CB_CABPRIMPAG.Checked then
   begin
   rl_cablogo.Visible:=false;
   rl_cabtit.Visible :=false;
   end;
end;

procedure TFrm_Fatur_OrcGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fatur_OrcGrupo.CB_EXTENSAOExit(Sender: TObject);
begin
with CB_EXTENSAO do ItemIndex:=Items.IndexOf(CB_EXTENSAO.Text);

CB_EXTENSAO.text:=CB_EXTENSAO.Items.Strings[CB_EXTENSAO.ItemIndex];
if CB_EXTENSAO.Text='' then
   CB_EXTENSAO.ItemIndex:=1;
if DM4.Qr_Ped01P1SEPAMB.AsInteger<>1 then
   begin
   if CB_EXTENSAO.ItemIndex=4 then
      begin
      lbl_ordem.Visible:=false;
      CB_ORDEM.Visible :=false;
      end
   else
      begin
      lbl_ordem.Visible:=true;
      CB_ORDEM.Visible :=true;
      end;
   end;


end;

procedure TFrm_Fatur_OrcGrupo.CB_ORDEMExit(Sender: TObject);
begin
with CB_ORDEM do ItemIndex:=Items.IndexOf(CB_ORDEM.Text);

CB_ORDEM.text:=CB_ORDEM.Items.Strings[CB_ORDEM.ItemIndex];
if CB_ORDEM.Text='' then
   CB_ORDEM.ItemIndex:=2;

end;

procedure TFrm_Fatur_OrcGrupo.TAMFONCABOBSExit(Sender: TObject);
begin
TAMFONCABOBS.Text:=FloatToStr(ValFloat(TAMFONCABOBS.Text));
end;

procedure TFrm_Fatur_OrcGrupo.FormShow(Sender: TObject);

begin
DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.Sql.Clear;
DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<'+mstatus_excluido+' and P1CHAVE=0'+fDeixanum(CHAVE.Text));
DM4.Qr_Ped01.SQL.Add(' order by P1CODEMP,P1CHAVE,P1ORDEM');
DM4.Qr_Ped01.Open;
PC1.ActivePage := tsGeral;
DM2.Qr_AddExtP1AE_VALOR.DisplayFormat :=mcasaspu;
end;

procedure TFrm_Fatur_OrcGrupo.rl_cablogoBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
rlobs.Caption:='';
rlobs.Lines.Clear;
rlobs.Lines.Add('CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value);
rlobs.Lines.Add(DM1.Tb_Empender.AsString);
rlobs2.Caption:='';
rlobs2.Lines.Clear;
if (length(DM1.Tb_EmpFONE.Value) > 1) then
  begin
  if Length(DM1.Tb_EmpFax.Value) > 1 then
    begin
    if (trim(rlobs.Caption) <> '') or (trim(rlobs2.Caption) <> '') then
      rlobs.Caption:=rlobs.Caption+' ';
    rlobs.Lines.Add('Fone/WhatsApp: '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value);
    rlobs2.Caption:=rlobs.Caption+' ';
    rlobs2.Caption:=rlobs.Caption+'Fone/Fax '+DM1.Tb_EmpFONE.Value+'/'+DM1.Tb_EmpFAX.Value;
    end
  else
    begin
    if (trim(rlobs.Caption) <> '') or (trim(rlobs2.Caption) <> '') then
      rlobs.Caption:=rlobs.Caption+' ';
    rlobs.Lines.Add('Fone/WhatsApp: '+DM1.Tb_EmpFONE.AsString);
    rlobs2.Caption:=rlobs.Caption+' ';
    rlobs2.Caption:=rlobs.Caption+'Fone/WhatsApp: '+DM1.Tb_EmpFONE.Value;
    end;
  end;
if length(DM1.Tb_EmpE_MAIL.Value) > 1 then
  begin
  if (trim(rlobs.Caption) <> '') or (trim(rlobs2.Caption) <> '') then
    rlobs.Caption:=rlobs.Caption+' ';
  rlobs.Lines.Add('e-mail: '+DM1.Tb_EmpE_MAIL.Value);
  rlobs2.Caption:=rlobs.Caption+' ';
  rlobs2.Caption:=rlobs.Caption+'WhatsApp: '+DM1.Tb_EmpFAX.Value;
  end;
if length(DM1.Tb_EmpHOMEPAGE.Value) > 1 then
  begin
  if (trim(rlobs.Caption) <> '') or (trim(rlobs2.Caption) <> '') then
    rlobs.Caption:=rlobs.Caption+' ';
  if cb_TrocaCab.Checked then
    rlobs.lines.Add(DM1.Tb_EmpHOMEPAGE.Value)
  else
    rlobs.lines.Add('Home Page: '+DM1.Tb_EmpHOMEPAGE.Value);
  rlobs2.Caption:=rlobs.Caption+' ';
  rlobs2.Caption:=rlobs.Caption+'Home Page: '+DM1.Tb_EmpHOMEPAGE.Value;
  end;
end;

procedure TFrm_Fatur_OrcGrupo.ExecutarImpVis(Sender: TObject);
begin
RLCabGrade.Visible:=cb_Lotes.Checked;
RLCabLote.Visible :=cb_Lotes.Checked;
xTotalP:=0;
xTotalA:=0;
xTotalAdd:=0;

fGerarEvento('x_vis' + inttostr(xImpVis)
               +' origem orcgrupo '+Inttostr(pOrigem_OrgGrupo)
               +' extensao '+inttostr(CB_EXTENSAO.itemindex));

if (CB_EXTENSAO.ItemIndex=4) and (pOrigem_OrgGrupo<>1) then
  FPedEmiteNf(0,2,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,DM4.Qr_Ped01P1ORDEM.AsInteger,DM4.Qr_Ped01P1CODEMP.AsInteger,1,DM4.Qr_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0) // orcamento
else if fFatur_orcAbrePedido(pOrigem_OrgGrupo) then
  begin
  if (Log_TipoLote=0) or (not cb_Lotes.Checked) then
    begin
    rl_obsgeral.Visible := CB_INF_GERAIS.Checked;
    if cb_TrocaCab.Checked then
      lblObs.Caption:='Descrição de Mercadorias'
    else
      begin
      if DM2.Qr_CabP1TIPO.AsInteger=0 Then
        begin
        lblObs.Caption:='Orçamento de Mercadorias';
        end
      else
        begin
        lblObs.Caption:='Venda Normal';
        end;
      end;

    lbl_cabchave.Caption:='CHAVE: '+FormatFloat('000000',DM2.Qr_CabP1CHAVE.AsFloat);

    if DM2.Qr_AddExt.IsEmpty Then
      RLSubDetail2.Visible:=False
    else
      RLSubDetail2.Visible:=false;
//      RLSubDetail2.Visible:=True;

    rl_rodOrcCiente.Visible:=cb_tagAssinatura.Checked;

    rl_cabtit.Visible :=true;
    lbl_cnpj_ie2.Caption := '';

   fSalvarImagem('LOGO_ORCAM','C:\SGE\LOGO_ORCAM.JPG');
{
   if FileExists('C:\SGE\LOGO_ORCAM.JPG')then
      begin
      RLImage_cab.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.JPG');
      RLImage_cab2.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.JPG');
      RLImage_mod03.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.JPG');
      deletefile('C:\SGE\LOGO_ORCAM.JPG');
      end;



    DM4.Tb_LogoSis.Close;
    DM4.Tb_LogoSis.SQL.Clear;
    DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                          +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
    if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');

    DM4.Tb_LogoSis.Open;
    if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      DeleteFile('C:\SGE\LOGO_ORCAM.jpg');

    if not DM4.Tb_LogoSis.Eof then
      begin
      if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
        begin
        DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');
        end;
      end;
}
    if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      begin
      RLImage_cab.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
      rl_cablogo.Visible := true;
      RLcabemp.Visible   := False;
      end
    else
      begin
      rl_cablogo.Visible := false;
      RLcabemp.Visible   := False;
      end;
{
    if cb_descom.Checked then
      begin
      RLCabMarca.Caption:='Desc. Complementar';
      RLMarca.DataField :='P2COMPLEMENTO';
      end
    else
      begin
      RLCabMarca.Caption:='Marca';
      RLMarca.DataField :='PDMARCA';
      end;
}
    if cb_desger.Checked then
      begin
      RLNome.DataField :='PDNOME2';
      end
    else
      begin
      RLNome.DataField :='PDNOME';
      end;

    if cb_impmarca.Checked then
      begin
      RLCabMarca.Visible:=True;
      RLMarca.Visible   :=True;
      RLCabNome.Width   :=247;
      end
    else
      begin
      RLCabMarca.Visible:=False;
      RLMarca.Visible   :=False;
      RLCabNome.Width   :=247+RLMarca.Width;
      end;


    if chk_bordas.Checked then
      begin
      RLReport1.Borders.DrawLeft   := False;
      RLReport1.Borders.DrawTop    := False;
      RLReport1.Borders.DrawRight  := False;
      RLReport1.Borders.DrawBottom := False;

      rl_cabtit.Borders.DrawBottom := False;
      rl_cabamb.Borders.DrawBottom := False;

      RLGroup1.Borders.DrawBottom  := False;
      RLBand5_totais_ant.Borders.DrawBottom      := False;
      RLBand4.Borders.DrawBottom   := False;
      RLBand2.Borders.DrawBottom   := False;

      end
    else
      begin
      RLReport1.Borders.DrawLeft   := True;
      RLReport1.Borders.DrawTop    := True;
      RLReport1.Borders.DrawRight  := True;
      RLReport1.Borders.DrawBottom := True;
      rl_cabtit.Borders.DrawBottom := True;
      rl_cabamb.Borders.DrawBottom := True;
      RLGroup1.Borders.DrawBottom  := True;
      RLBand5_totais_ant.Borders.DrawBottom   := True;
      RLBand4.Borders.DrawBottom   := True;
      RLBand2.Borders.DrawBottom   := True;
      end;

    if CB_EXTENSAO.ItemIndex=0 then
      mcinst4:=fProcNomeEmail(0,'HTML')
    else if CB_EXTENSAO.ItemIndex=1 then
      mcinst4:=fProcNomeEmail(0,'PDF')
    else if CB_EXTENSAO.ItemIndex=2 then
      mcinst4:=fProcNomeEmail(0,'RTF')
    else if CB_EXTENSAO.ItemIndex=3 then
      mcinst4:=fProcNomeEmail(0,'XLS');


    rlMemo_Obs.Lines.Clear;
    rlMemo_Obs.Lines.Add(Memo_obs.Text);
    lbl_cnpj_ie2.Caption := 'CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value;
    //if valint(TAMFONCAB.Text)<>0 then
      //RLcabemp.Font.Height:=StrToInt(TAMFONCAB.Text);
    if CB_DADOSCLI.Checked then
      begin
      db_fantasia.Font.Style:=[fsBold];
      db_ender.Font.Style   :=[fsBold];
      db_bairro.Font.Style  :=[fsBold];
      db_cidade.Font.Style  :=[fsBold];
      db_uf.Font.Style      :=[fsBold];
      db_cep.Font.Style     :=[fsBold];
      db_cnpj.Font.Style    :=[fsBold];
      db_ie.Font.Style      :=[fsBold];
      db_nomcon.Font.Style  :=[fsBold];
      db_fonecon.Font.Style :=[fsBold];
      db_fone01.Font.Style  :=[fsBold];
      db_nomven.Font.Style  :=[fsBold];
      db_datped.Font.Style  :=[fsBold];
      db_pag.Font.Style     :=[fsBold];
      db_qtdpag.Font.Style  :=[fsBold];
      end
    else
      begin
      db_fantasia.Font.Style:=[];
      db_ender.Font.Style   :=[];
      db_bairro.Font.Style  :=[];
      db_cidade.Font.Style  :=[];
      db_uf.Font.Style      :=[];
      db_cep.Font.Style     :=[];
      db_cnpj.Font.Style    :=[];
      db_ie.Font.Style      :=[];
      db_nomcon.Font.Style  :=[];
      db_fonecon.Font.Style :=[];
      db_fone01.Font.Style  :=[];
      db_nomven.Font.Style  :=[];
      db_datped.Font.Style  :=[];
      db_pag.Font.Style     :=[];
      db_qtdpag.Font.Style  :=[];
      end;

    if valint(TAMFONCABOBS.Text)<>0 then
      begin
      rl_cabtit.Font.Height:=StrToInt(TAMFONCABOBS.Text);
      rl_cabtit.Height     :=(StrToInt(TAMFONCABOBS.Text)*-1)+4;
      end;

    if xImpVis=0 then
      RLReport1.Print
    else if xImpVis=1 then
      begin
      fGerarEvento('vai entrrar no 1521 preview modal');
      RLReport1.PreviewModal;
      end
    else if xImpVis=2 then
      begin
      RLReport1.SaveToFile(mcinst4);
      fEnviarEmail(mcinst4,0,DM2.Qr_CabP1CODCLI.AsString);
      DeleteFile(mcinst4);
      end;
    end
  else
    begin
    if cb_TrocaCab.Checked then
      lblObs2.Caption:='Descrição de Mercadorias'
    else
      begin
      if DM2.Qr_CabP1TIPO.AsInteger=0 Then
        begin
        lblObs2.Caption:='Orçamento de Mercadorias';
        end
      else
        begin
        lblObs2.Caption:='Venda Normal';
        end;
      end;

    lbl_cabchave2.Caption:='CHAVE: '+FormatFloat('000000',DM2.Qr_CabP1CHAVE.AsFloat);

    rl_rodOrcCiente2.Visible:=cb_tagAssinatura.Checked;

    rl_cabtit2.Visible :=true;
    lbl_cnpj_ie2.Caption := '';
    DM4.Tb_LogoSis.Close;
    DM4.Tb_LogoSis.SQL.Clear;
    DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                          +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
    if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');

    DM4.Tb_LogoSis.Open;
    if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      DeleteFile('C:\SGE\LOGO_ORCAM.jpg');

    if not DM4.Tb_LogoSis.Eof then
      if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
        DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');

    if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      begin
      RLImage_cab2.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
      rl_cablogo2.Visible := true;
      RLcabemp2.Visible   := False;
      end
    else
      begin
      rl_cablogo2.Visible := false;
      RLcabemp2.Visible   := False;
      end;

    if cb_descom.Checked then
      begin
      RLCabMarca2.Caption:='Desc. Complementar';
      RLMarca2.DataField :='P2COMPLEMENTO';
      end
    else
      begin
      RLCabMarca2.Caption:='Marca';
      RLMarca2.DataField :='PDMARCA';
      end;

    if cb_desger.Checked then
      begin
      RLNome2.DataField :='PDNOME2';
      end
    else
      begin
      RLNome2.DataField :='PDNOME';
      end;

    if cb_impmarca.Checked then
      begin
      RLCabMarca2.Visible:=True;
      RLMarca2.Visible   :=True;
      RLCabNome2.Width   :=247;
      end
    else
      begin
      RLCabMarca2.Visible:=False;
      RLMarca2.Visible   :=False;
      RLCabNome2.Width   :=247+RLMarca.Width;
      end;


    if chk_bordas.Checked then
      begin
      RLReport2.Borders.DrawLeft   := False;
      RLReport2.Borders.DrawTop    := False;
      RLReport2.Borders.DrawRight  := False;
      RLReport2.Borders.DrawBottom := False;
      rl_cabtit2.Borders.DrawBottom := False;
      RLGroup2.Borders.DrawBottom   := False;
      RLBand23.Borders.DrawBottom   := False;
      RLBand14.Borders.DrawBottom   := False;
      RLBand12.Borders.DrawBottom   := False;

      end
    else
      begin
      RLReport2.Borders.DrawLeft    := True;
      RLReport2.Borders.DrawTop     := True;
      RLReport2.Borders.DrawRight   := True;
      RLReport2.Borders.DrawBottom  := True;
      rl_cabtit2.Borders.DrawBottom := True;
//      RLGroup2.Borders.DrawBottom   := True;
      RLBand23.Borders.DrawBottom   := True;
      RLBand14.Borders.DrawBottom   := True;
      RLBand12.Borders.DrawBottom   := True;
      end;

    if CB_EXTENSAO.ItemIndex=0 then
      mcinst4:=fProcNomeEmail(0,'HTML')
    else if CB_EXTENSAO.ItemIndex=1 then
      mcinst4:=fProcNomeEmail(0,'PDF')
    else if CB_EXTENSAO.ItemIndex=2 then
      mcinst4:=fProcNomeEmail(0,'RTF')
    else if CB_EXTENSAO.ItemIndex=3 then
      mcinst4:=fProcNomeEmail(0,'XLS');


    rlMemo_Obs.Lines.Clear;
    rlMemo_Obs.Lines.Add(Memo_obs.Text);
    lbl_cnpj_ie2.Caption := 'CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value;
    //if valint(TAMFONCAB.Text)<>0 then
      //RLcabemp.Font.Height:=StrToInt(TAMFONCAB.Text);
    if CB_DADOSCLI.Checked then
      begin
      db_fantasia2.Font.Style   :=[fsBold];
      db_ender2.Font.Style      :=[fsBold];
      db_bairro2.Font.Style     :=[fsBold];
      db_cidade2.Font.Style     :=[fsBold];
      db_uf2.Font.Style         :=[fsBold];
      db_cep2.Font.Style        :=[fsBold];
      db_cnpj2.Font.Style       :=[fsBold];
      db_ie2.Font.Style         :=[fsBold];
      db_nomcon2.Font.Style     :=[fsBold];
      db_fonecon2.Font.Style    :=[fsBold];
      db_fone012.Font.Style     :=[fsBold];
      db_nomven2.Font.Style     :=[fsBold];
      db_datped2.Font.Style     :=[fsBold];
      db_pag2.Font.Style        :=[fsBold];
      db_qtdpag2.Font.Style     :=[fsBold];
      db_prazoEnt.Font.Style    :=[fsBold];
      db_ValProposta.Font.Style :=[fsBold];
      db_TipoFrete.Font.Style   :=[fsBold];
      end
    else
      begin
      db_fantasia2.Font.Style   :=[];
      db_ender2.Font.Style      :=[];
      db_bairro2.Font.Style     :=[];
      db_cidade2.Font.Style     :=[];
      db_uf2.Font.Style         :=[];
      db_cep2.Font.Style        :=[];
      db_cnpj2.Font.Style       :=[];
      db_ie2.Font.Style         :=[];
      db_nomcon2.Font.Style     :=[];
      db_fonecon2.Font.Style    :=[];
      db_fone012.Font.Style     :=[];
      db_nomven2.Font.Style     :=[];
      db_datped2.Font.Style     :=[];
      db_pag2.Font.Style        :=[];
      db_qtdpag2.Font.Style     :=[];
      db_prazoEnt.Font.Style    :=[];
      db_ValProposta.Font.Style :=[];
      db_TipoFrete.Font.Style   :=[];
      end;

    if valint(TAMFONCABOBS.Text)<>0 then
      begin
      rl_cabtit2.Font.Height:=StrToInt(TAMFONCABOBS.Text);
      rl_cabtit2.Height     :=(StrToInt(TAMFONCABOBS.Text)*-1)+4;
      end;

    if xImpVis=0 then
      RLReport2.Print
    else if xImpVis=1 then
      RLReport2.PreviewModal
    else if xImpVis=2 then
      begin
      RLReport2.SaveToFile(mcinst4);
      fEnviarEmail(mcinst4,0,DM2.Qr_CabP1CODCLI.AsString);
      DeleteFile(mcinst4);
      end;
    end;
  end;
end;
procedure TFrm_Fatur_OrcGrupo.fCustomizarrelatorio(pNormal: boolean);
begin
if pnormal then
   begin
   RLReport1.PageSetup.papersize:= fpA4;
   RLReport1.PageSetup.PaperHeight:=297;
   RLReport1.PageSetup.PaperWidth:=210;
   end
else
   begin
   RLReport1.PageSetup.papersize:=fpCustom;
   RLReport1.PageSetup.PaperHeight:=148;
   RLReport1.PageSetup.PaperWidth:=210;
   end;


end;

procedure TFrm_Fatur_OrcGrupo.bbImprimirClick(Sender: TObject);
begin
xImpVis:=0;
ExecutarImpVis(self);
{if (CB_EXTENSAO.ItemIndex=4) and (pOrigem_OrgGrupo<>1) then
   FPedEmiteNf(0,2,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,DM4.Qr_Ped01P1ORDEM.AsInteger,DM4.Qr_Ped01P1CODEMP.AsInteger,1,DM4.Qr_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0) // orcamento
else if fFatur_orcAbrePedido(pOrigem_OrgGrupo) then
   begin

if CB_INF_GERAIS.Checked=true then
  begin
  rl_obsgeral.Visible := True;
  end
else
  begin
  rl_obsgeral.Visible := False;
  end;


   rl_cabtit.Visible :=true;
   lbl_cnpj_ie.Lines.Clear;
   lbl_cnpj_ie2.Caption := '';

   DM4.Tb_LogoSis.Close;
   DM4.Tb_LogoSis.SQL.Clear;
   DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                         +' where LSCHAVE='+chr(39)+'LOGO_ORCAM'+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');

   DM4.Tb_LogoSis.Open;
   if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      DeleteFile('C:\SGE\LOGO_ORCAM.jpg');

   if not DM4.Tb_LogoSis.Eof then
      begin
      if not (DM4.Tb_LogoSisLSLOGO.IsNull)  and  (DM4.Tb_LogoSisLSLOGO.Value<>'') then
         begin
         DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGO_ORCAM.JPG');
         end;
      end;
   if FileExists('C:\SGE\LOGO_ORCAM.jpg') then
      begin
      RLImage_cab.Picture.LoadFromFile('C:\SGE\LOGO_ORCAM.jpg');
      rl_cablogo.Visible := true;
      RLcabemp.Visible   := False;
      end
   else begin
      rl_cablogo.Visible := false;
      RLcabemp.Visible   := False;
   end;

   if cb_descom.Checked then
      begin
      RLCabMarca.Caption:='Desc. Complementar';
      RLMarca.DataField :='P2COMPLEMENTO';
      end
   else
      begin
      RLCabMarca.Caption:='Marca';
      RLMarca.DataField :='PDMARCA';
      end;

   if cb_desger.Checked then
      begin
      RLNome.DataField :='PDNOME2';
      end
   else
      begin
      RLNome.DataField :='PDNOME';
      end;
//cb_descom

   if chk_bordas.Checked then begin
      RLReport1.Borders.DrawLeft   := False;
      RLReport1.Borders.DrawTop    := False;
      RLReport1.Borders.DrawRight  := False;
      RLReport1.Borders.DrawBottom := False;
      rl_cabtit.Borders.DrawBottom := False;
      RLcabcli.Borders.DrawBottom  := False;
      rl_cabamb.Borders.DrawBottom := False;
      RLGroup1.Borders.DrawBottom  := False;
      RLBand5.Borders.DrawTop      := False;
      RLBand4.Borders.DrawBottom   := False;
      RLBand2.Borders.DrawBottom   := False;
      rl_obsgeral.Borders.DrawBottom := False;
      m_texto.Borders.DrawBottom   := False;
   end
  else
    begin
    RLReport1.Borders.DrawLeft   := True;
    RLReport1.Borders.DrawTop    := True;
    RLReport1.Borders.DrawRight  := True;
    RLReport1.Borders.DrawBottom := True;
    rl_cabtit.Borders.DrawBottom := True;
    RLcabcli.Borders.DrawBottom  := True;
    rl_cabamb.Borders.DrawBottom := True;
    RLGroup1.Borders.DrawBottom  := True;
    RLBand5.Borders.DrawTop      := True;
    RLBand4.Borders.DrawBottom   := True;
    RLBand2.Borders.DrawBottom   := True;
    rl_obsgeral.Borders.DrawBottom := True;
    m_texto.Borders.DrawBottom :=False;
    end;

   RLMemo1.Lines.Clear;
   RLMemo1.Lines.Add(Memo_obs.Text);
   lbl_cnpj_ie.Lines.Add('CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value);
   lbl_cnpj_ie2.Caption := 'CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value;
   if valint(TAMFONCAB.Text)<>0 then
      //RLcabemp.Font.Height:=StrToInt(TAMFONCAB.Text);
   if CB_DADOSCLI.Checked then
      begin
      db_fantasia.Font.Style:=[fsBold];
      db_ender.Font.Style   :=[fsBold];
      db_bairro.Font.Style  :=[fsBold];
      db_cidade.Font.Style  :=[fsBold];
      db_uf.Font.Style      :=[fsBold];
      db_cep.Font.Style     :=[fsBold];
      db_cnpj.Font.Style    :=[fsBold];
      db_ie.Font.Style      :=[fsBold];
      db_nomcon.Font.Style  :=[fsBold];
      db_fonecon.Font.Style :=[fsBold];
      db_fone01.Font.Style  :=[fsBold];
      db_nomven.Font.Style  :=[fsBold];
      db_chaveped.Font.Style:=[fsBold];
      db_datped.Font.Style  :=[fsBold];
      db_pag.Font.Style     :=[fsBold];
      db_qtdpag.Font.Style  :=[fsBold];
      end
   else
      begin
      db_fantasia.Font.Style:=[];
      db_ender.Font.Style   :=[];
      db_bairro.Font.Style  :=[];
      db_cidade.Font.Style  :=[];
      db_uf.Font.Style      :=[];
      db_cep.Font.Style     :=[];
      db_cnpj.Font.Style    :=[];
      db_ie.Font.Style      :=[];
      db_nomcon.Font.Style  :=[];
      db_fonecon.Font.Style :=[];
      db_fone01.Font.Style  :=[];
      db_nomven.Font.Style  :=[];
      db_chaveped.Font.Style:=[];
      db_datped.Font.Style  :=[];
      db_pag.Font.Style     :=[];
      db_qtdpag.Font.Style  :=[];
      end;

   if valint(TAMFONCABOBS.Text)<>0 then
      begin
      rl_cabtit.Font.Height:=StrToInt(TAMFONCABOBS.Text);
      rl_cabtit.Height     :=(StrToInt(TAMFONCABOBS.Text)*-1)+4;
      end;

   RLReport1.Print;

   end;       }
end;

procedure TFrm_Fatur_OrcGrupo.CB_EXTENSAOClick(Sender: TObject);
begin
if mValidarPadroes then
   begin
   fDeletaPadroes(-1,'_FATUR_ORCGRUPO','CB_EXTENSAO');
   fGravaPadroes(-1,'CB_EXTENSAO'   ,'itemindex'   ,'_FATUR_ORCGRUPO',IntToStr(CB_EXTENSAO.ItemIndex));
   end;
If CB_EXTENSAO.ItemIndex=4 then
   mboolean:=false
else
   mboolean:=true;
lbl_obs.Visible         :=mboolean;
Memo_obs.Visible        :=mboolean;
CB_CABPRIMPAG.Visible   :=mboolean;
CB_IMPCABLOG.Visible    :=mboolean;
chk_bordas.Visible      :=mboolean;
lbl_TAMFONCAB.Visible   :=mboolean;
TAMFONCAB.Visible       :=mboolean;
lbl_TAMFONCABOBS.Visible:=mboolean;
TAMFONCABOBS.Visible    :=mboolean;
CB_DADOSCLI.Visible     :=mboolean;

end;

procedure TFrm_Fatur_OrcGrupo.rl_obsgeralBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_cabecalho.Caption:=edt_cabecalho.Text;
m_texto.Lines.Clear;
m_texto.Lines.Add(edt_txt_linha01.Text);
m_texto.Lines.Add(edt_txt_linha02.Text);
m_texto.Lines.Add(edt_txt_linha03.Text);
m_texto.Lines.Add(edt_txt_linha04.Text);
m_texto.Lines.Add(edt_txt_linha05.Text);
m_texto.Lines.Add(edt_txt_linha06.Text);

end;

procedure TFrm_Fatur_OrcGrupo.CB_INF_GERAISClick(Sender: TObject);
begin
ts_Conf_gerais.TabVisible := CB_INF_GERAIS.Checked;
end;

procedure TFrm_Fatur_OrcGrupo.sbt_linhasClick(Sender: TObject);
begin
sbSalvarPadraoClick(self);
end;

procedure TFrm_Fatur_OrcGrupo.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Fatur_OrcGrupo.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xTotalP:=xTotalP+DM2.Qr_Cortotal.AsFloat;
xTotalA:=xTotalA+DM2.Qr_Cortotal.AsFloat;
end;

procedure TFrm_Fatur_OrcGrupo.bbVisualizaClick(Sender: TObject);
begin
xImpVis:=1;
ExecutarImpVis(self);
end;

procedure TFrm_Fatur_OrcGrupo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLVALORADD.Caption:=FormatFloat('#,##0.00',DM2.Qr_AddExtP1AE_VALOR.AsFloat);
xTotalAdd:=xTotalAdd+DM2.Qr_AddExtP1AE_VALOR.AsFloat;
xTotalAdd:=0;
end;

procedure TFrm_Fatur_OrcGrupo.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLTOTALADD.Caption:=FormatFloat('#,##0.00',xTotalAdd);
end;

procedure TFrm_Fatur_OrcGrupo.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel22.Caption:='Total: R$'+ FormatFloat('#,##0.00',xTotalA);
fBeforePrint()
end;

procedure TFrm_Fatur_OrcGrupo.rl_rodOrcCienteBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlRazao.Lines.clear;
rlRazao.Lines.Add(DM2.Qr_Cabecf_razao.AsString);
end;

procedure TFrm_Fatur_OrcGrupo.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_cabecalho.Caption:=edt_cabecalho.Text;
m_texto.Lines.Clear;
m_texto.Lines.Add(edt_txt_linha01.Text);
m_texto.Lines.Add(edt_txt_linha02.Text);
m_texto.Lines.Add(edt_txt_linha03.Text);
m_texto.Lines.Add(edt_txt_linha04.Text);
m_texto.Lines.Add(edt_txt_linha05.Text);
m_texto.Lines.Add(edt_txt_linha06.Text);
end;

procedure TFrm_Fatur_OrcGrupo.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLMensTotdes.Caption := 'Desconto: R$'+FormatFloat('#,##0.00',DM2.Qr_CabP1TOTDES.AsFloat);
RL_TOTALST.Caption  :='ICMS ST: R$' +FormatFloat('#,##0.00',DM2.Qr_CabP1ICMSR.AsFloat);
RLMensTotall.Caption:= 'Total Bruto: R$'+FormatFloat('#,##0.00',DM2.Qr_CabP1TOTALL.AsFloat);
fAjustarBandas;

//RLTotall.Caption:=FormatFloat('#,##0.00',DM2.Qr_CabP1TOTALL.AsFloat+DM2.Qr_CabP1ICMSR.AsFloat);
end;

procedure TFrm_Fatur_OrcGrupo.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
xTotalA:=0;
end;

procedure TFrm_Fatur_OrcGrupo.RLBand23BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLTotdes2.Caption:=FormatFloat('#,##0.00',DM2.Qr_CabP1TOTDES.AsFloat);
RLTotST2.Caption :=FormatFloat('#,##0.00',DM2.Qr_CabP1ICMSR.AsFloat);
RLTotall2.Caption:=FormatFloat('#,##0.00',DM2.Qr_CabP1TOTALL.AsFloat);
//RLTotall2.Caption:=FormatFloat('#,##0.00',DM2.Qr_CabP1TOTALL.AsFloat+DM2.Qr_CabP1ICMSR.AsFloat);

RLTotalb2.Caption:=FormatFloat(mcasaspu,xTotalP+xTotalAdd);
if DM2.Qr_CabP1ICMSR.AsFloat>0 Then
  begin
  RL_TOTALST2.Visible:=True;
  RLTotST2.Visible:=True;
  end
else
  begin
  RL_TOTALST2.Visible:=False;
  RLTotST2.Visible:=False;
  end;

if DM4.Tb_Par01PINCTB.AsInteger > 0 then
  RLTotout2.Caption       :=FormatFloat(mcasas, DM2.Qr_CabP1TARBAN.Value)
else
  RLTotout2.Caption       :=FormatFloat(mcasas, 0);

if DM2.Qr_CabP1TOTALB.Value<>DM2.Qr_CabP1TOTALL.Value then
//if DM2.Qr_CabP1TOTALB.Value<>DM2.Qr_CabP1TOTALL.Value+DM2.Qr_CabP1ICMSR.ASFLOAT then
   begin
   RLMensTotalb2.Caption:='Total Bruto: R$';
   RLMensTotdes2.Visible:=true;
   RLTotdes2.Visible    :=true;
   RLMensTotall2.Visible:=true;
   RLTotall2.Visible    :=true;
   RLTotout2.Visible  :=true;
   lbl_totout2.Visible  :=true;
   end
else
   begin
   RLMensTotalb2.Caption:='Total do pedido: R$ ';
   RLMensTotdes2.Visible:=false;
   RLTotdes2.Visible    :=false;
   RLMensTotall2.Visible:=false;
   RLTotall2.Visible    :=false;
   RLTotout2.Visible    :=False;
   lbl_totout2.Visible  :=False;
   end;

if Trim(DM2.Qr_Cabnometra.AsString)<>'' then
  begin
  lbl_transportadora2.Visible:=True;
  rltipo_frete2.Visible      :=True;
  rl_nomefrete2.Visible      :=True;
  rltipo_frete2.Caption:=DM2.Qr_Cabfrete_ciffob.AsString;
  rl_nomefrete2.Caption:=DM2.Qr_Cabnometra.AsString;
  end
else
  begin
  lbl_transportadora2.Visible:=False;
  rltipo_frete2.Visible      :=False;
  rl_nomefrete2.Visible      :=False;
  end;


rlForma2.Caption :='';
rlprazos2.Caption:='';
rlprazos2.Caption:= DM2.Qr_Cabprazos.AsString;
rlForma2.Caption := DM2.Qr_Cabformpag.AsString;
rllnObsPed.Lines.Text:=DM2.Qr_CabP1OBS2.AsString;
// +' '+DM2.Qr_CabP1OBS3.AsString;
end;

procedure TFrm_Fatur_OrcGrupo.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if DM2.Qr_CabP1TIPO.AsInteger=0 Then
   begin
   lbl_tipofrete.Visible:=cb_tipofrete.Checked;
   db_tipofrete.Visible :=cb_tipofrete.Checked;
   end
else
   begin
   lbl_tipofrete.Visible:=true;
   db_tipofrete.Visible :=true;
   end;
DM2.Qr_CorP2PRECO.DisplayFormat      :='#,##0.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
{if RLSubDetail2.Visible=false then
   begin
   RLSubDetail2.Height:=0;
   RLBand5.top        :=629;
   end
else
   begin
   RLSubDetail2.Height:=83;
   RLBand5.top        :=612;
   end;
 }

 
end;

procedure TFrm_Fatur_OrcGrupo.cb_normalClick(Sender: TObject);
begin
fCustomizarrelatorio(cb_normal.Checked);

end;


procedure TFrm_Fatur_OrcGrupo.fBeforePrint;
begin
fAjustarBandas;
RLMensTotalb.caption := 'Total Bruto: R$'+FormatFloat(mcasaspu,xTotalP+xTotalAdd);
if DM2.Qr_CabP1ICMSR.AsFloat>0 Then
  begin
  RL_TOTALST.Visible:=True;
  end
else
  begin
  RL_TOTALST.Visible:=False;
  end;

if Trim(DM2.Qr_Cabnometra.AsString)<>'' then
  begin
  lbl_transportadora.Visible:=True;
//  rltipo_frete.Visible      :=True;
  rl_nomefrete.Visible      :=True;
  end
else
  begin
  lbl_transportadora.Visible:=False;
//  rltipo_frete.Visible      :=False;
  rl_nomefrete.Visible      :=False;
  end;

if DM4.Tb_Par01PINCTB.AsInteger > 0 then
  lbl_totout.Caption       :='Outras Despesas: R$'+FormatFloat(mcasas, DM2.Qr_CabP1TARBAN.Value)
else
  lbl_totout.Caption       :='Outras Despesas: R$'+FormatFloat(mcasas, 0);
if DM2.Qr_CabP1TOTALB.Value<>DM2.Qr_CabP1TOTALL.Value then
//if DM2.Qr_CabP1TOTALB.Value<>DM2.Qr_CabP1TOTALL.Value+DM2.Qr_CabP1ICMSR.ASFLOAT then
   begin
//   RLMensTotalb.Caption:='Total Bruto: R$';
   RLMensTotdes.Visible:=true;
   RLMensTotall.Visible:=true;
   lbl_totout.Visible  :=true;
   end
else
   begin
//   RLMensTotalb.Caption:='Total Bruto: R$';
   RLMensTotdes.Visible:=false;
   lbl_totout.Visible  :=False;
   RLMensTotall.Visible:=false;

   if (DM2.Qr_CabP1SEPAMB.AsInteger=1) then
      begin
      RLMensTotall.Visible:=true;
      RLMensTotall.top    :=1;
      RLBand_totais.Height:= RLMensTotall.Height+3;
      end;

   end;

rlForma.Caption :='';
rlprazos.Caption:='';
//rltipo_frete.Caption:='';
rl_nomefrete.Caption:='';
rlprazos.Caption:= DM2.Qr_Cabprazos.AsString;
rlForma.Caption := DM2.Qr_Cabformpag.AsString;
//rltipo_frete.Caption:=DM2.Qr_Cabfrete_ciffob.AsString;
rl_nomefrete.Caption:=DM2.Qr_Cabnometra.AsString;
rllnObsPed.Lines.Text:=DM2.Qr_CabP1OBS2.AsString;

//+' '+DM2.Qr_CabP1OBS3.AsString;
{DM1.Query4.Close;
DM1.Query4.sql.Clear;
DM1.Query4.sql.Add(' Select P1ORC_PRAZOENT,P1ORC_VALPRO,P1ORC_FORMAPAG,P1ORC_OBSERV, '
                  +' P1ORC_LETRA, P1ORC_FUNDO, P1ORC_TAMANHO, P1ORC_MTROLO,          '
                  +' P1ORC_TABUTE, P1ORC_PAPEL, P1ORC_QTDROLO, P1ORC_CONTATO         '
                  +' from CADP01_ORC where '
                  +' P1ORC_CODEMP=0'+IntToStr(dm2.Qr_CabP1CODEMP.AsInteger-iif(dm2.Qr_CabP1CODEMP.AsInteger>100,100,0))
                  +' and P1ORC_LOTSEQ=:LOTSEQ '
                  +' and P1ORC_CHAVE=:CHAVE ');
DM1.Query4.ParambyName('LOTSEQ').AsFloat := dm2.Qr_CabP1LOTSEQ.AsFloat;
DM1.Query4.ParambyName('CHAVE').AsFloat  := dm2.Qr_CabP1CHAVE.AsFloat;
try
  DM1.Query4.Open;
  if not DM1.Query4.IsEmpty then
    begin
    rlForma.Caption := DM1.Query4.fieldbyName('P1ORC_FORMAPAG').AsString;
    end;
except
  end;}

end;

procedure TFrm_Fatur_OrcGrupo.fAjustarBandas;
var
mTopBandTotais: integer;

begin
mTopBandTotais := 1;
RLMensTotalb.Visible := true;
RL_TOTALST.Visible   := true;
lbl_totout.Visible   := true;

if (xTotalP+xTotalAdd)=DM2.Qr_CabP1TOTALL.AsFloat then
   begin
   RLMensTotalb.Visible := false;

   RLMensTotdes.Visible   := false;

   RL_TOTALST.Visible   := false;
   lbl_totout.Visible   := false;
   end
else
   begin
   if DM2.Qr_CabP1ICMSR.AsFloat=0 then
      begin
      RL_TOTALST.Visible   := false;
      end;

   if DM2.Qr_CabP1TOTDES.AsFloat=0 then
      begin
      RLMensTotdes.Visible   := false;
      end;


   if DM2.Qr_CabP1TARBAN.AsFloat=0 then
      begin
      lbl_totout.Visible   := false;
      end;
   end;

if RLMensTotalb.Visible = true then
   begin
   RLMensTotalb.top := mTopBandTotais;
   mTopBandTotais   := mTopBandTotais + RLMensTotalb.Height;
   end;



if RL_TOTALST.Visible = true then
   begin
   RL_TOTALST.top   := mTopBandTotais;
   mTopBandTotais   := mTopBandTotais + RL_TOTALST.Height;
   end;

if RLMensTotall.Visible = true then
   begin
   RLMensTotdes.top   := mTopBandTotais;
   mTopBandTotais     := mTopBandTotais + RLMensTotdes.Height;
   end;

if lbl_totout.Visible = true then
   begin
   lbl_totout.top     := mTopBandTotais;
   mTopBandTotais     := mTopBandTotais +lbl_totout.Height;
   end;

RLMensTotall.top     := mTopBandTotais;
mTopBandTotais       := mTopBandTotais + RLMensTotall.Height;

RLBand_totais.Height  := mTopBandTotais +1;
end;

end.
