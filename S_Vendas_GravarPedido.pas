unit S_Vendas_GravarPedido;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB, StdCtrls, Buttons, DBTables, DBClient,lerarq;

type
  TFrm_Vendas_GravarPedido = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    // variaveis utilizadas no cabecalho



    mPed1_SitPed: Integer;
    mPed1_Emidoc: Integer;
    mPed1_Codemp: Integer;
    mPed1_ArrTrunc: Integer;
    mPed1_Codemp_ini: Integer;
    mPed1_Codemp_fin: Integer;
    mped1_Chave: Integer;
    mped1_Filial: Integer;
    mPed1_Chave_ano: Integer;
    mPed1_id_new_000: Integer;
    mPed1_id_new_100: Integer;
    mPed1_CodCli: real;
    mPed1_Acrescimo: real;
    mPed1_razsoc: string;
    mPed1_Codven: Integer;
    mPed1_Codtlv: Integer;
    mPed1_CodUsr_Dig: Integer;
    mPed1_CodUsr_Mod: Integer;
    mPed1_CodPV: Integer;
    mPed1_CodPrior: Integer;
    mPed1_Naut: String;
    mPed1_PvaCtd: Real;
    mPed1_TabPV: String;
    mPed1_CodFP: Integer;
    mPed1_Codcv: Integer;
    mPed1_CodAssessor: Integer;
    mPed1_CodFp_Vinculo: Integer;
    mPed1_TpComis : Integer;
    mPed1_CodBco1: Integer;
    mPed1_CodBco101: Integer;
    mPed1_CodTra: Real;
    mPed1_Frete_CIFFOB: Integer;
    mPed1_QtdVol: Integer;
    mPed1_Situacao: Integer;
    mPed1_CodUsr_UEVE: Integer;
    mPed1_QtdMan: Integer;
    mPed1_Bloqueio,mPed1_QtdDec: Integer;
    mPed1_Tipo_Ped: Integer;
    mPed1_status: Integer;
    mped1_submod: Integer;
    mped1_submod_grav: Integer;
    mped1_formace: Integer;
    mped1_tppco: Integer;
    mPed1_Tabela: string;

    mped1_icms_outdesp_aliq: Real;
    mped1_icms_valseg_aliq: real;
    mped1_icms_valfre_aliq: real;


    mPed1_TotMer,mPed1_TotSer,mPed1_ValSeg,mPed1_ValFre,mPed1_pDesc01,mPed1_TotPromo,mPed1_DespAces,mPed1_TotIPI,
    mPed1_Perc_Frete,
    mPed1_Pdesc02,mPed1_Pdesc03,mPed1_pDesc01_Valor,mPed1_TarBan_001,mPed1_TarBan_101
    ,mPed1_Desc_Desoneracao,mPed1_Desc_Rateado: Real;
    mped1_prevent: TDateTime;
    mPed1_Acres_VlrTot,pValAcre,
    mPed1_PesoB,mPed1_PesoL,mPed1_DescFin,mPed1_Desc_Cab: Real;
    mPed1_Obs_Ped,mPed1_Obs_NF,mPed1_Obs_NFS
    ,mPed1_Especie,mPed1_Tra_UFPV,
    mPed1_Tra_PLACAv,mPed1_Comp_UEVE: String;
    mped1_servico_obs_corpo, mped1_servico_obs_inf_afic: string;
    mPed1_Datap,mPed1_DatHor_Dig,mPed1_DatHor_UEVE,mped1_DataSep: TDateTime;
    mPed1_DatHor_mod: tDateTime;
    mPed1_DataEmb: TDateTime;
    mPed1_DatCon: TDateTime;
    mPed1_DatEnt: TDateTime;
    mped1_codsep: Integer;
    mped1_codcon: Integer;
    mped1_codent: Integer;
    mped1_codemb: Integer;
    mped1_npedori: Real;
    mped1_npedori1: string;
    mped1_npedori2: string;
    mped1_canhoto,mped1_etivol: Integer;
    mPed1_minuta: Integer;

    mPed1_codusr_lbloq   : Real;
    mPed1_codbloq        : string;
    mPed1_codbloq_lib    : string;
    mPed1_BloqPend       : Integer;


    mPed1_tipent: Integer;
    mPed1_entrega_obs: string;
    mPed1_entrega_cep: string;
    mPed1_entrega_ender: string;
    mPed1_entrega_bairro: string;
    mPed1_entrega_codloc: integer;
    mPed1_entrega_cidade: string;
    mPed1_entrega_uf: string;
    mPed1_dathot_pent: TDateTime;


   mPed1_pvdescf     : Real;
   mPed1_pvddescf    : Integer;
   mPed1_pvdiasdescf : Integer;
   mped1_ICMSR_PRIMPARC: Integer;
   mPed1_ICMSRSOBLIQ:  string;



    mcasaspu_ped: string;
//,mPed1_CF_Data,mPed1_NF_Data,mPed1_NFS_Data,
//,mPed1_Nf_Serie,mPed1_CF_SerieECf,mPed1_CF_Modelo
//    mPed1_CF_CodEcf: Integer;
//    mPed1_NF_Situacao: Integer;
//    mPed1_NF_Numero: Integer;
//    mPed1_NFS_Situacao: Integer;
//    mPed1_NFS_Numero: Integer;
//    mped1_CF_Situacao: Integer;
//    mPed1_CF_Numero: Integer;
//   ,mPed1_NF_Modelo,mPed1_NFS_Modelo


    mPed1_pDesc01_Ant,mPed1_Pdesc02_Ant,mPed1_Pdesc03_Ant: Real;
    mPed1_DescPed02_Perc: Real; // desconto total dos itens

   mPed1_CalcIPI: Integer;
         mPed1_QtdItem  :Integer;
         mPed1_QtdUnd   :Real;
         mPed1_Icms_Base:Real;
         mPed1_Icms_Valor:Real;
         mPed1_Icms_Red_Vlr:Real;
         mPed1_ST_base:Real;
         mPed1_ST_Icms:Real;
         mPed1_IPI_Valor:Real;
         mPed1_DescFin_Valor:Real;
         mPed1_PIS_Valor:Real;
         mPed1_Cofins_Valor:Real;
         mPed1_ICMSSN_Valor:Real;
         mPed1_Totall      :Real;
         mPed1_SepAmb      :Integer;

        mPed1_QtdParc: Integer;
        mPed1_QtdParc_ant: Integer;
        mPed1_Parcelas   : String;
        mPed1_NomFP      : String;
        mPed1_BaixaFP    : String;



        mped1_numcf    :Integer;
        mped1_datacf       :tDateTime;
        mped1_ECF_Serie    : String;
        mped1_Serie        : String;
        mPed1_Modelo       : String;
        mPed1_NumNF        : Integer;
        mPed1_DataNF       : TDatetime;


        mPd_EstNor        :String;
        mPd_EstCons       :String;
        mPd_EstTerc       :String;
        mPd_EstVenda      :String;

        mPed1_AjustaFP    : String;
        mPed1_cfop1       : integer;
        mPed1_cfop2       : integer;


        mPed1_nfe_chacesso       : String;
        mPed1_nfe_nprot          : String;
        mPed1_datanf_serv        : tDatetime;
        mPed1_serie_serv         : String;
        mPed1_numnf_serv         : integer;
        mPed1_situacao_serv      : integer;



        mPed1_nfce_numero         : integer;
        mPed1_nfce_data           : tDatetime;
        mPed1_nfce_serie          : String;
        mPed1_nfce_modelo         : String;
        mPed1_nfce_chv_acesso     : String;
        mPed1_nfce_num_prot       : String;



        mPed1_chacesso_serv      : String;
        mPed1_modelo_serv        : String;
        mPed1_nprot_serv         : String;

        mPed1_PrzNovos_001       : String;
        mPed1_PrzNovos_101       : String;

        mPed1_nf_imp             : String;
        mPed1_imp_cot_dollar     :real;

        mPed1_DEDUZIR_ICMS_BC_PIS_COFINS     :real;

        mPed1_imp_imp_vii       :real;
        mPed1_RECDA              :real;
        mPed1_RECHONORARIOS      :real;
        mPed1_RECARMAZENAGEM     :real;
        mPed1_P1TITSEP_PROD_SERV     :integer;
        mCSOSN_Trib              : String;
        mCSOSN_ST                : String;


    // termino das variaveis no cabecalho


    function fGravarPed01(pTipo,pnivel: Integer): Boolean;
    function fRatearDescontosAcrescimos(pValDes,pValAcre,pValseg,pValFre,pTarBan,pOutDesp: Real; pcalcpeso: Boolean): Boolean;



    function fGravarItem(pProdServ, pItem_ant,p2Estoque,pCodfpg,pTipoEve,pSituacao: Integer;
                        pCodPro_Ant,pNomFP,pBaixa: String;

                        pQtd_Cal,pPrecoUnit_Cal,pPrecoTab_Cal,pPrecoUCPR_Cal,pPrecoCus_Cal,pPrecoMax_Cal,
                        pQtd_Ant,pValorSeg,pValorFre,pTarBan,pDespaces,pDescRat: Real;
                        pDadosParametros: tDadosParametros;
                        pTabela: tQuery): Boolean;


    function fGravarItemCDS(pProdServ, pItem_ant,p2Estoque,pCodfpg,pTipoEve,pSituacao: Integer;
                        pCodPro_Ant,pNomFP,pBaixa: String;

                        pQtd_Cal,pPrecoUnit_Cal,pPrecoTab_Cal,pPrecoUCPR_Cal,pPrecoCus_Cal,pPrecoMax_Cal,
                        pQtd_Ant,pValorSeg,pValorFre,pTarBan,pDespaces,pDescRat: Real;
                        pDadosParametros: tDadosParametros;
                        pTabela: TClientDataSet): Boolean;






{    function fGravarItem(pItem,pItem_ant,pcfosubecf,pcons_proprio,pcfo,pmodbcst,pSituacao,p2Estoque,pCodFpg,pTipoEve,pContEsp: Integer;
                      pcodpro,pnome,pdund,pcodpro_ant: String;
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,pdescppr,ppreco,ppcodig,pcomis,prepas,
                      plista,
                      ppcotab,ppcofpg,ppcoucpr,ppcocus,ppcomax,
                      pipi_aliq,
                      picm_aliq,ppcomis,pPis_Aliq,pCofins_Aliq,
                      ppdescf,pPercAcre
                      ,pCodVen,picms_predut,pst_iva,pst_predut,
                      pst_icmsred,pst_icms_deb,pst_icms_cred,pIcmsSN_Aliq,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp: Real;
                      pcst, pambiente,pDescCompl,pcsosn,pcsosn_ori,pPromocao,pNomFP,pBaixa,pPis_CST,pCofins_CST,PIPI_Cst: String;
                      pTipo_Pco: Integer;picms_alipi: Real ): Boolean;

}



   function fLimparCampos(pTipo: Integer): Boolean;


   function fGravarServicos(pItem,pItem_ant,pcfo,pcfosubecf,pSituacao,pCodFpg,pTipoEve: Integer;
                      pcodSer,pcodser_ant: String;
                      pISSQN,
                      pDescFin_Perc,
                      pINSS_Aliq,
                      pINSS_pRed,
                      pIRRF_Aliq,
                      pIRRF_pRed,
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,ppreco,
                      ppcocus,
                      picm_aliq,ppcomis,
                      ppdescf,pPercAcre
                      ,pCodVen,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp: Real;
                      pcst, pDescCompl,pPromocao,pNomFP,pBaixa: String ): Boolean;

//   function fCalcularPeso(pChave,pOrdem,pCodemp,pLotSeq: Real;pEspecie: String): Boolean;


  end;

var
  Frm_Vendas_GravarPedido: TFrm_Vendas_GravarPedido;

implementation

uses S_DM1, func, func_excecoes, Func2;

{$R *.dfm}


function TFrm_Vendas_GravarPedido.fGravarPed01(pTipo,pnivel: Integer): Boolean;

// inicio

var
Query_Ped1: TQuery;
Query1_Chave: TQuery;
mChave_CSF: Integer;
mId_CSF: Integer;


mt_P1NUMCF: Integer;
mt_P1CODECF: Integer;
mt_DATACF:tdatetime;
mt_ECF_SERIE: string;
mt_datdoc: tdatetime;
mt_emidoc: Integer;


begin
Query_Ped1:= TQuery.Create(NIL);

Query_Ped1.DatabaseName:='SG_ASSOC';
Query_Ped1.Close;



if mped1_Chave<>0 then
   begin
// INCIIO
 {
   Query_Ped1.Close;
   Query_Ped1.SQL.Clear;
   Query_Ped1.SQL.Add('Select count(*) '
                     +',max(case when P1CODEMP<100 then P1ID_NEW else 0 end) as P1ID_NEW_000 '
                     +',max(case when P1CODEMP<100 then 0 else P1ID_NEW end) as P1ID_NEW_100 '

                     +' from CADP01 '
                     +' where  (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                     +' and P1LOTSEQ=:P1LOTSEQ'
                     +' and P1CHAVE=:P1CHAVE'
                     +' and P1ORDEM=:P1ORDEM');

   mped1_codemp   :=codemp+pnivel;
   Query_Ped1.ParambyName('CODEMP').AsFloat          :=mPed1_Codemp;
   Query_Ped1.ParambyName('CODEMP_FILIAL').AsFloat   :=mPed1_Codemp +(iif(mPed1_codemp>100,-100,100)) ;
   Query_Ped1.ParambyName('P1LOTSEQ').AsFloat       :=mPed1_Chave_ano;
   Query_Ped1.ParambyName('P1CHAVE').AsFloat        :=mped1_Chave;
   Query_Ped1.ParambyName('P1ORDEM').AsFloat        :=01;
   try
      Query_Ped1.Open;
   except
      result:=false;
      exit;
      end;
   if Query_Ped1.Fields[0].AsInteger>0 then
      begin
      mPed1_id_new_000:=Query_Ped1.fieldbyname('P1ID_NEW_000').AsInteger;
      mPed1_id_new_100:=Query_Ped1.fieldbyname('P1ID_NEW_100').AsInteger;
      end;

// TERMINO
}

   mPed1_id_new_100 :=0;
   mPed1_id_new_000 :=0;

   Query_Ped1.Close;
   Query_Ped1.SQL.Clear;
   Query_Ped1.SQL.Add('Select count(*) '
                     +',max(P1NUMCF) as P1NUMCF '
                     +',max(P1CODECF) as P1CODECF '
                     +',max(P1DATACF) as P1DATACF '
                     +',max(P1ECF_SERIE) as P1ECF_SERIE '
                     +',max(P1DATDOC) as P1DATDOC  '
                     +',max(P1EMIDOC) as P1EMIDOC '
                     +',max(P1ID_NEW) as P1ID_NEW '


                     +' from CADP01 '
                     +' where  (P1CODEMP=:CODEMP) '
                     +' and P1LOTSEQ=:P1LOTSEQ'
                     +' and P1CHAVE=:P1CHAVE'
                     +' and P1ORDEM=:P1ORDEM');

   mped1_codemp   :=codemp+pnivel;
   Query_Ped1.ParambyName('CODEMP').AsFloat          :=mPed1_Codemp;
   Query_Ped1.ParambyName('P1LOTSEQ').AsFloat       :=mPed1_Chave_ano;
   Query_Ped1.ParambyName('P1CHAVE').AsFloat        :=mped1_Chave;
   Query_Ped1.ParambyName('P1ORDEM').AsFloat        :=01;
   try
      Query_Ped1.Open;
   except
      result:=false;
      exit;
      end;
   if Query_Ped1.Fields[0].AsInteger>0 then
      begin
      mt_P1NUMCF  :=Query_Ped1.fieldbyname('P1NUMCF').AsInteger;
      mt_P1CODECF :=Query_Ped1.fieldbyname('P1CODECF').AsInteger;
      mt_DATACF   :=Query_Ped1.fieldbyname('P1DATACF').AsDateTime;
      mt_ECF_SERIE:=Query_Ped1.fieldbyname('P1ECF_SERIE').AsString;
      mt_datdoc   :=Query_Ped1.fieldbyname('P1DATDOC').AsDateTime;
      mt_emidoc       :=Query_Ped1.fieldbyname('P1EMIDOC').AsInteger;
      if (pnivel>99) then
          mPed1_id_new_100:=Query_Ped1.fieldbyname('P1ID_NEW').AsInteger
      else
          mPed1_id_new_000:=Query_Ped1.fieldbyname('P1ID_NEW').AsInteger;

      pTipo:=1;
      end
   else
      begin
      pTipo:=0;
      mt_P1NUMCF  :=0;
      mt_P1CODECF :=0;
      mt_DATACF   :=pdatanula;
      mt_ECF_SERIE:=' ';
      mt_datdoc   :=pdatanula;
      mt_emidoc   :=0;

      end;
   end;

result:=true;
Query_Ped1.Close;
Query_Ped1.SQL.Clear;

if ptipo=0 then
   begin

   Query_Ped1.SQL.Add('Insert into CADP01 ('
           +'P1CODEMP'
          +',P1LOTSEQ'
          +',P1CHAVE'
          +',P1ID_NEW'
          +',P1TRUNCARREND'
          +',P1ORDEM'
          +',P1CODCLI'
          +',P1FILIAL'
          +',P1CODVEN'
          +',P1CODTLV'
          +',P1CODV02'
          +',P1CODV03'
          +',P1CODASSE'
          +',P1BLQPRM'
          +',P1DATAP'
          +',P1DATANF'
          +',P1NUMNF'
          +',P1SERIE'
          +',P1SUBSER'
          +',P1MODELO'
          +',P1SUBMOD'
          +',P1FORMACE'
          +',P1PROCESSO'
          +',P1OBS1'
          +',P1OBS2'
          +',P1OBS3'
          +',P1STATUS'
          +',P1TIPO'
          +',P1PEDORI'
          +',P1SITPED'
//          +',P1TOTALB'
//          +',P1TOTALL'
          +',P1CODUSR'
          +',P1HORADIG'
          +',P1DTMOD'
          +',P1USRMOD'
          +',P1CONF'
          +',P1CODCON'
          +',P1DATCON'
          +',P1TIPENT'

          +',P1DATHOR_PENT'
          +',P1ENTREGA_CEP'
          +',P1ENTREGA_ENDER'
          +',P1ENTREGA_BAIRRO'
          +',P1ENTREGA_CIDADE'
          +',P1ENTREGA_UF'
          +',P1ENTREGA_OBS'
          +',P1ENTREGA_CODLOC'





          +',P1PREVENT'
          +',P1CODENT'
          +',P1PRAZO'
          +',P1DATENT'
          +',P1TABPV'
          +',P1CODPV'
          +',P1PVACTD'
          +',P1BANCO'
          +',P1CUPOM'
          +',P1TARBAN'
          +',P1DESPACES'
          +',P1VALSEG'
//          +',P1TOTDES'
          +',P1DESC01'
          +',P1DESC02'
//          +',P1VLRDES'
          +',P1CODTRA'
          +',P1QTDVOL'
          +',P1TPPCO'
          +',P1TPP'
          +',P1PESOL'
          +',P1PESOB'
          +',P1FRETEPC'
          +',P1VALFRE'
          +',P1UFPV'
          +',P1PLACAV'
          +',P1CODSER'
          +',P1CODLDR'
          +',P1PCOMIS'
          +',P1CODCV'
          +',P1LOTEDM'
          +',P1MINUTA'
          +',P1ORIGEM'
          +',P1NPEDORI'
          +',P1ETIVOL'
          +',P1CODSEP'
          +',P1DATASEP'
          +',P1CODEMB'
          +',P1DATAEMB'
          +',P1NUMCF'
          +',P1CODECF'
          +',P1DATACF'
          +',P1ECF_SERIE'
          +',P1DESCFIN'
          +',P1LOTCV'
          +',P1LOTCV02'
          +',P1LOTCV03'
          +',P1LOTCS'
          +',P1LOTCASSE'
          +',P1LOTCT'
          +',P1SITAC'
          +',P1DTACERTO'
          +',P1LTACERTO'
          +',P1SITCPR'
          +',P1VLRACRE'
          +',P1PEDORI1'
          +',P1PEDORI2'
          +',P1MOTIVO'
          +',P1NUMVIS'
          +',P1DATVIS'
          +',P1DATDOC'
          +',P1EMIDOC'
          +',P1SEMCOMP'
          +',P1NAUT'
          +',P1PDESCLIB'
          +',P1PDESCL_USR'
          +',P1QTDMAN'
          +',P1ESPECIE'
          +',P1CANHOTO'
          +',P1ICMS_BCFRE'

          +',P1ICMS_ALFRE'
          +',P1ICMS_ALSEG'

          +',P1ICMS_ALOUTD'
          +',P1ICMS_ALIPI'
          +',P1ALIQDEB'
          +',P1CODV04'
          +',P1LOTCV04'
          +',P1CODPRIOR'
          +',P1DTHRCHEG'
          +',P1CODBLOQ'
          +',P1CODUSR_LBLOQ'
          +',P1TOTSERLIQ'
          +',P1INCTB'
          +',P1CX_CODCAI'
          +',P1CX_LOTMOV'
          +',P1PZOLIB'
          +',P1PZOLIB_USR'
          +',P1BLOQPEND'
          +',P1CODBLOQ_LIB'
          +',P1SEPAMB'
          +',P1TIPO_ENTSAI'
          +',P1NOMEREC'
          +',P1DATHORREC'
          +',P1EMITENTE'
          +',P1NFE_ENVXML'
          +',P1QTDDECPU'
          +',P1DATHOR_REP'
          +',P1CHAVE_NIVEL'
          +',P1TPEMIS'
          +',P1DATHOR_ULTEVE'
          +',P1CODUSR_ULTEVE'
          +',P1COMP_ULTEVE'
          +',P1TOTEXTCOM'
          +',P1ACRESCIMO'
          +',P1CFO1'
          +',P1CFO2'

          +',P1NFE_CHACESSO'
          +',P1NFE_NPROT'
          +',P1DATANF_SERV'
          +',P1SERIE_SERV'
          +',P1NUMNF_SERV'
          +',P1NFS_SITUACAO'
          +',P1NFS_CHACESSO'
          +',P1MODELO_SERV'
          +',P1NFS_NPROT'

          +',P1PVDESCF'
          +',P1PVDIASDESCF'
          +',P1PVDDESCF'

          +',P1PRZNOVOS '

          +',P1IMP_COT_DOLLAR '
          +',P1NF_IMP '
          +',P1RECDA '
          +',P1RECHONORARIOS '
          +',P1RECARMAZENAGEM '
          +',P1TITSEP_PROD_SERV'
          +',P1SERVICO_OBS_CORPO '
          +',P1SERVICO_OBS_INF_ADIC'

          +') Values  ('
          +':P1CODEMP'
          +',:P1LOTSEQ'
          +',:P1CHAVE'
          +',:P1ID_NEW'
          +',:P1TRUNCARREND'
          +',:P1ORDEM'
          +',:P1CODCLI'
          +',:P1FILIAL'
          +',:P1CODVEN'
          +',:P1CODTLV'
          +',:P1CODV02'
          +',:P1CODV03'
          +',:P1CODASSE'
          +',:P1BLQPRM'
          +',:P1DATAP'
          +',:P1DATANF'
          +',:P1NUMNF'
          +',:P1SERIE'
          +',:P1SUBSER'
          +',:P1MODELO'
          +',:P1SUBMOD'
          +',:P1FORMACE'
          +',:P1PROCESSO'
          +',:P1OBS1'
          +',:P1OBS2'
          +',:P1OBS3'
          +',:P1STATUS'
          +',:P1TIPO'
          +',:P1PEDORI'
          +',:P1SITPED'
//          +',:P1TOTALB'
//          +',:P1TOTALL'
          +',:P1CODUSR'
          +',:P1HORADIG'
          +',:P1DTMOD'
          +',:P1USRMOD'
          +',:P1CONF'
          +',:P1CODCON'
          +',:P1DATCON'
          +',:P1TIPENT'
          +',:P1DATHOR_PENT'
          +',:P1ENTREGA_CEP'
          +',:P1ENTREGA_ENDER'
          +',:P1ENTREGA_BAIRRO'
          +',:P1ENTREGA_CIDADE'
          +',:P1ENTREGA_UF'
          +',:P1ENTREGA_OBS'
          +',:P1ENTREGA_CODLOC'
          +',:P1PREVENT'
          +',:P1CODENT'
          +',:P1PRAZO'
          +',:P1DATENT'
          +',:P1TABPV'
          +',:P1CODPV'
          +',:P1PVACTD'
          +',:P1BANCO'
          +',:P1CUPOM'
          +',:P1TARBAN'
          +',:P1DESPACES'
          +',:P1VALSEG'
//          +',:P1TOTDES'
          +',:P1DESC01'
          +',:P1DESC02'
//          +',:P1VLRDES'
          +',:P1CODTRA'
          +',:P1QTDVOL'
          +',:P1TPPCO'
          +',:P1TPP'
          +',:P1PESOL'
          +',:P1PESOB'
          +',:P1FRETEPC'
          +',:P1VALFRE'
          +',:P1UFPV'
          +',:P1PLACAV'
          +',:P1CODSER'
          +',:P1CODLDR'
          +',:P1PCOMIS'
          +',:P1CODCV'
          +',:P1LOTEDM'
          +',:P1MINUTA'
          +',:P1ORIGEM'
          +',:P1NPEDORI'
          +',:P1ETIVOL'
          +',:P1CODSEP'
          +',:P1DATASEP'
          +',:P1CODEMB'
          +',:P1DATAEMB'
          +',:P1NUMCF'
          +',:P1CODECF'
          +',:P1DATACF'
          +',:P1ECF_SERIE'
          +',:P1DESCFIN'
          +',:P1LOTCV'
          +',:P1LOTCV02'
          +',:P1LOTCV03'
          +',:P1LOTCS'
          +',:P1LOTCASSE'
          +',:P1LOTCT'
          +',:P1SITAC'
          +',:P1DTACERTO'
          +',:P1LTACERTO'
          +',:P1SITCPR'
          +',:P1VLRACRE'
          +',:P1PEDORI1'
          +',:P1PEDORI2'
          +',:P1MOTIVO'
          +',:P1NUMVIS'
          +',:P1DATVIS'
          +',:P1DATDOC'
          +',:P1EMIDOC'
          +',:P1SEMCOMP'
          +',:P1NAUT'
          +',:P1PDESCLIB'
          +',:P1PDESCL_USR'
          +',:P1QTDMAN'
          +',:P1ESPECIE'
          +',:P1CANHOTO'
          +',:P1ICMS_BCFRE'
          +',:P1ICMS_ALFRE'
          +',:P1ICMS_ALSEG'

          +',:P1ICMS_ALOUTD'
          +',:P1ICMS_ALIPI'
          +',:P1ALIQDEB'
          +',:P1CODV04'
          +',:P1LOTCV04'
          +',:P1CODPRIOR'
          +',:P1DTHRCHEG'
          +',:P1CODBLOQ'
          +',:P1CODUSR_LBLOQ'
          +',:P1TOTSERLIQ'
          +',:P1INCTB'
          +',:P1CX_CODCAI'
          +',:P1CX_LOTMOV'
          +',:P1PZOLIB'
          +',:P1PZOLIB_USR'
          +',:P1BLOQPEND'
          +',:P1CODBLOQ_LIB'
          +',:P1SEPAMB'
          +',:P1TIPO_ENTSAI'
          +',:P1NOMEREC'
          +',:P1DATHORREC'
          +',:P1EMITENTE'
          +',:P1NFE_ENVXML'
          +',:P1QTDDECPU'

          +',:P1DATHOR_REP'
          +',:P1CHAVE_NIVEL'
          +',:P1TPEMIS'
          +',:P1DATHOR_ULTEVE'
          +',:P1CODUSR_ULTEVE'
          +',:P1COMP_ULTEVE'
          +',:P1TOTEXTCOM'
          +',:P1ACRESCIMO'
          +',:P1CFO1'
          +',:P1CFO2'
          +',:P1NFE_CHACESSO'
          +',:P1NFE_NPROT'
          +',:P1DATANF_SERV'
          +',:P1SERIE_SERV'
          +',:P1NUMNF_SERV'
          +',:P1NFS_SITUACAO'
          +',:P1NFS_CHACESSO'
          +',:P1MODELO_SERV'
          +',:P1NFS_NPROT'
          +',:P1PVDESCF'
          +',:P1PVDIASDESCF'
          +',:P1PVDDESCF'
          +',:P1PRZNOVOS '
          +',:P1IMP_COT_DOLLAR '
          +',:P1NF_IMP '
          +',:P1RECDA '
          +',:P1RECHONORARIOS '
          +',:P1RECARMAZENAGEM '
          +',:P1TITSEP_PROD_SERV'

          +',:P1SERVICO_OBS_CORPO '
          +',:P1SERVICO_OBS_INF_ADIC'


          +')'
          );
   if mped1_Chave=0 then
      begin
//      mPed1_chave    :=fbuscarSequencia('PEDVEN_'+FormatDateTime('yyyy', pDataSis));
//      mPed1_chave_ano:=valint(FormatDateTime('yyyy', pDataSis));
      Query1_Chave:=tQuery.Create(nil);
      Query1_Chave.DataBaseName:='SG_ASSOC';

      While true do
         begin
         mPed1_chave    :=fbuscarSequencia('PEDVEN_'+'0');
         fbuscaNUMPED( iif(codemp>100,codemp-100,codemp));

         Query1_Chave.close;
         Query1_Chave.SQL.Clear;
         Query1_Chave.SQL.Add('select count(*) from CADP01 where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL)  and P1CHAVE=:CHAVE');
         Query1_Chave.ParamByName('CODEMP').AsInteger:=codemp;
         if codemp>100 then
            Query1_Chave.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
         else
            Query1_Chave.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;
         Query1_Chave.ParamByName('CHAVE').AsInteger:=mped1_Chave;
         Query1_Chave.open;
         if Query1_Chave.fields[0].AsInteger=0 then
            break;

          end;

    mPed1_id_new_100 :=0;
    mPed1_id_new_000 :=0;

    if (mped1_codemp>100) and (mPed1_id_new_100=0) then
        mPed1_id_new_100 := fBuscarProximoId('CADP01_SEQ')
    else if (mped1_codemp<100) and (mPed1_id_new_000=0) then
        mPed1_id_new_000 := fBuscarProximoId('CADP01_SEQ');
    query1_chave.close;
    freeandnil(query1_chave);


      mPed1_chave_ano:=0;

      end;
   end
else
   begin



   Query_Ped1.SQL.Add('Update CADP01 set '
          +' P1CODCLI=:P1CODCLI'
          +',P1ID_NEW=:P1ID_NEW '
          +',P1FILIAL=:P1FILIAL'
          +',P1CODVEN=:P1CODVEN'
          +',P1CODTLV=:P1CODTLV'
          +',P1CODV02=:P1CODV02'
          +',P1CODV03=:P1CODV03'
          +',P1CODASSE=:P1CODASSE'
          +',P1BLQPRM=:P1BLQPRM'
          +',P1DATAP=:P1DATAP'
          +',P1DATANF=:P1DATANF'
          +',P1NUMNF=:P1NUMNF'
          +',P1SERIE=:P1SERIE'
          +',P1SUBSER=:P1SUBSER'
          +',P1MODELO=:P1MODELO'
          +',P1SUBMOD=:P1SUBMOD'
          +',P1FORMACE=:P1FORMACE'
          +',P1PROCESSO=:P1PROCESSO'
          +',P1OBS1=:P1OBS1'
          +',P1OBS2=:P1OBS2'
          +',P1OBS3=:P1OBS3'
          +',P1STATUS=:P1STATUS'
          +',P1TIPO=:P1TIPO'
          +',P1PEDORI=:P1PEDORI'
          +',P1SITPED=:P1SITPED'
//          +',P1TOTALB=:P1TOTALB'
//          +',P1TOTALL=:P1TOTALL'
          +',P1CODUSR=:P1CODUSR'
          +',P1HORADIG=:P1HORADIG'
          +',P1DTMOD=:P1DTMOD'
          +',P1USRMOD=:P1USRMOD'
          +',P1CONF=:P1CONF'
          +',P1CODCON=:P1CODCON'
          +',P1DATCON=:P1DATCON'
          +',P1TIPENT=:P1TIPENT'

          +',P1DATHOR_PENT=:P1DATHOR_PENT'
          +',P1ENTREGA_CEP=:P1ENTREGA_CEP'
          +',P1ENTREGA_ENDER=:P1ENTREGA_ENDER'
          +',P1ENTREGA_BAIRRO=:P1ENTREGA_BAIRRO'
          +',P1ENTREGA_CIDADE=:P1ENTREGA_CIDADE'
          +',P1ENTREGA_UF=:P1ENTREGA_UF'
          +',P1ENTREGA_OBS=:P1ENTREGA_OBS'
          +',P1ENTREGA_CODLOC=:P1ENTREGA_CODLOC'




          +',P1PREVENT=:P1PREVENT'
          +',P1CODENT=:P1CODENT'
          +',P1PRAZO=:P1PRAZO'
          +',P1DATENT=:P1DATENT'
          +',P1TABPV=:P1TABPV'
          +',P1CODPV=:P1CODPV'
          +',P1PVACTD=:P1PVACTD'
          +',P1BANCO=:P1BANCO'
          +',P1CUPOM=:P1CUPOM'
          +',P1TARBAN=:P1TARBAN'
          +',P1DESPACES=:P1DESPACES'
          +',P1VALSEG=:P1VALSEG'
//          +',P1TOTDES=:P1TOTDES'
          +',P1DESC01=:P1DESC01'
          +',P1DESC02=:P1DESC02'
//          +',P1VLRDES=:P1VLRDES'
          +',P1CODTRA=:P1CODTRA'
          +',P1QTDVOL=:P1QTDVOL'
          +',P1TPPCO=:P1TPPCO'
          +',P1TPP=:P1TPP'
          +',P1PESOL=:P1PESOL'
          +',P1PESOB=:P1PESOB'
          +',P1FRETEPC=:P1FRETEPC'
          +',P1VALFRE=:P1VALFRE'
          +',P1UFPV=:P1UFPV'
          +',P1PLACAV=:P1PLACAV'
          +',P1CODSER=:P1CODSER'
          +',P1CODLDR=:P1CODLDR'
          +',P1PCOMIS=:P1PCOMIS'
          +',P1CODCV=:P1CODCV'
          +',P1LOTEDM=:P1LOTEDM'
          +',P1MINUTA=:P1MINUTA'
          +',P1ORIGEM=:P1ORIGEM'
          +',P1NPEDORI=:P1NPEDORI'
          +',P1ETIVOL=:P1ETIVOL'
          +',P1CODSEP=:P1CODSEP'
          +',P1DATASEP=:P1DATASEP'
          +',P1CODEMB=:P1CODEMB'
          +',P1DATAEMB=:P1DATAEMB'
          +',P1NUMCF=:P1NUMCF'
          +',P1CODECF=:P1CODECF'
          +',P1DATACF=:P1DATACF'
          +',P1ECF_SERIE=:P1ECF_SERIE'
          +',P1DESCFIN=:P1DESCFIN'
          +',P1LOTCV=:P1LOTCV'
          +',P1LOTCV02=:P1LOTCV02'
          +',P1LOTCV03=:P1LOTCV03'
          +',P1LOTCS=:P1LOTCS'
          +',P1LOTCASSE=:P1LOTCASSE'
          +',P1LOTCT=:P1LOTCT'
          +',P1SITAC=:P1SITAC'
          +',P1DTACERTO=:P1DTACERTO'
          +',P1LTACERTO=:P1LTACERTO'
          +',P1SITCPR=:P1SITCPR'
          +',P1VLRACRE=:P1VLRACRE'
          +',P1PEDORI1=:P1PEDORI1'
          +',P1PEDORI2=:P1PEDORI2'
          +',P1MOTIVO=:P1MOTIVO'
          +',P1NUMVIS=:P1NUMVIS'
          +',P1DATVIS=:P1DATVIS'
          +',P1DATDOC=:P1DATDOC'
          +',P1EMIDOC=:P1EMIDOC'
          +',P1SEMCOMP=:P1SEMCOMP'
          +',P1NAUT=:P1NAUT'
          +',P1PDESCLIB=:P1PDESCLIB'
          +',P1PDESCL_USR=:P1PDESCL_USR'
          +',P1QTDMAN=:P1QTDMAN'
          +',P1ESPECIE=:P1ESPECIE'
          +',P1CANHOTO=:P1CANHOTO'
          +',P1ICMS_BCFRE=:P1ICMS_BCFRE'
          +',P1ICMS_ALFRE=:P1ICMS_ALFRE'
          +',P1ICMS_ALSEG=:P1ICMS_ALSEG'
          +',P1ICMS_ALOUTD=:P1ICMS_ALOUTD'
          +',P1ICMS_ALIPI=:P1ICMS_ALIPI'
          +',P1ALIQDEB=:P1ALIQDEB'
          +',P1CODV04=:P1CODV04'
          +',P1LOTCV04=:P1LOTCV04'
          +',P1CODPRIOR=:P1CODPRIOR'
          +',P1DTHRCHEG=:P1DTHRCHEG'
          +',P1CODBLOQ=:P1CODBLOQ'
          +',P1CODUSR_LBLOQ=:P1CODUSR_LBLOQ'
          +',P1TOTSERLIQ=:P1TOTSERLIQ'
          +',P1INCTB=:P1INCTB'
          +',P1CX_CODCAI=:P1CX_CODCAI'
          +',P1CX_LOTMOV=:P1CX_LOTMOV'
          +',P1PZOLIB=:P1PZOLIB'
          +',P1PZOLIB_USR=:P1PZOLIB_USR'
          +',P1BLOQPEND=:P1BLOQPEND'
          +',P1CODBLOQ_LIB=:P1CODBLOQ_LIB'
          +',P1SEPAMB=:P1SEPAMB'
          +',P1TIPO_ENTSAI=:P1TIPO_ENTSAI'
          +',P1NOMEREC=:P1NOMEREC'
          +',P1DATHORREC=:P1DATHORREC'
          +',P1EMITENTE=:P1EMITENTE'
          +',P1NFE_ENVXML=:P1NFE_ENVXML'
          +',P1QTDDECPU=:P1QTDDECPU'
          +',P1DATHOR_REP=:P1DATHOR_REP'
          +',P1CHAVE_NIVEL=:P1CHAVE_NIVEL'
          +',P1TRUNCARREND=:P1TRUNCARREND'
          +',P1TPEMIS=:P1TPEMIS'
          +',P1DATHOR_ULTEVE=:P1DATHOR_ULTEVE'
          +',P1CODUSR_ULTEVE=:P1CODUSR_ULTEVE'
          +',P1COMP_ULTEVE=:P1COMP_ULTEVE'
          +',P1TOTEXTCOM=:P1TOTEXTCOM'
          +',P1ACRESCIMO=:P1ACRESCIMO'
          +',P1CFO1=:P1CFO1'
          +',P1CFO2=:P1CFO2'


          +',P1NFE_CHACESSO=:P1NFE_CHACESSO'
          +',P1NFE_NPROT=:P1NFE_NPROT'
          +',P1DATANF_SERV=:P1DATANF_SERV'
          +',P1SERIE_SERV=:P1SERIE_SERV'
          +',P1NUMNF_SERV=:P1NUMNF_SERV'
          +',P1NFS_SITUACAO=:P1NFS_SITUACAO'
          +',P1NFS_CHACESSO=:P1NFS_CHACESSO'
          +',P1MODELO_SERV=:P1MODELO_SERV'
          +',P1NFS_NPROT=:P1NFS_NPROT'

          +',P1PVDESCF=:P1PVDESCF'
          +',P1PVDIASDESCF=:P1PVDIASDESCF'
          +',P1PVDDESCF=:P1PVDDESCF'
          +',P1PRZNOVOS=:P1PRZNOVOS '

          +',P1IMP_COT_DOLLAR=:P1IMP_COT_DOLLAR '
          +',P1NF_IMP=:P1NF_IMP '
          +',P1RECDA=:P1RECDA '
          +',P1RECHONORARIOS=:P1RECHONORARIOS '
          +',P1RECARMAZENAGEM=:P1RECARMAZENAGEM '
          +',P1TITSEP_PROD_SERV =:P1TITSEP_PROD_SERV'
          +',P1SERVICO_OBS_CORPO = :P1SERVICO_OBS_CORPO '
          +',P1SERVICO_OBS_INF_ADIC = :P1SERVICO_OBS_INF_ADIC'
          +' where  P1CODEMP=:P1CODEMP'
          +' and P1LOTSEQ=:P1LOTSEQ'
          +' and P1CHAVE=:P1CHAVE'
          +' and P1ORDEM=:P1ORDEM'
          +' and P1ID_NEW=:P1ID_NEW');
   end;
mped1_codemp   :=codemp+pnivel;

if (mped1_codemp>100) and (mPed1_id_new_100=0) then
    mPed1_id_new_100 := fBuscarProximoId('CADP01_SEQ')
else if (mped1_codemp<100) and (mPed1_id_new_000=0) then
    mPed1_id_new_000 := fBuscarProximoId('CADP01_SEQ');

//fCalcularPeso(mped1_Chave,01,mPed1_Codemp,mPed1_Chave_ano,mPed1_Especie);


  Query_Ped1.ParambyName('P1CODEMP').AsFloat       :=mPed1_Codemp;
Query_Ped1.ParambyName('P1LOTSEQ').AsFloat       :=mPed1_Chave_ano;
Query_Ped1.ParambyName('P1CHAVE').AsFloat        :=mped1_Chave;
Query_Ped1.ParambyName('P1ID_NEW').AsFloat       :=iif(mped1_codemp>100,mped1_id_new_100,mPed1_id_new_000);
Query_Ped1.ParambyName('P1TRUNCARREND').AsFloat  :=mPed1_ArrTrunc;

Query_Ped1.ParambyName('P1ORDEM').AsFloat        :=01;
Query_Ped1.ParambyName('P1CODCLI').AsFloat       :=mPed1_CodCli;
if mped1_filial<1 then
   mped1_filial:=1;
Query_Ped1.ParambyName('P1FILIAL').AsFloat       :=mped1_Filial;

Query_Ped1.ParambyName('P1CODVEN').AsFloat       :=mPed1_Codven;
Query_Ped1.ParambyName('P1CODTLV').AsFloat       :=mPed1_Codtlv;
Query_Ped1.ParambyName('P1CODV02').AsFloat       :=0;
Query_Ped1.ParambyName('P1CODV03').AsFloat       :=0;
Query_Ped1.ParambyName('P1CODASSE').AsFloat      :=mPed1_CodAssessor;
Query_Ped1.ParambyName('P1BLQPRM').AsFloat       :=0;
if mPed1_Datap<=pdatanula then
   mPed1_Datap:=Date;
Query_Ped1.ParambyName('P1DATAP').AsDateTime     :=mPed1_Datap;
Query_Ped1.ParambyName('P1DATASEP').AsDateTime   :=mPed1_Datap;
Query_Ped1.ParambyName('P1CODSEP').AsInteger     :=mPed1_codsep;
Query_Ped1.ParambyName('P1ETIVOL').AsInteger     :=mPed1_Etivol;

Query_Ped1.ParambyName('P1DATANF').AsDateTime    :=pdatanula;
Query_Ped1.ParambyName('P1NUMNF').AsInteger      :=mPed1_NumNF;
Query_Ped1.ParambyName('P1SERIE').AsString       :=' ';
Query_Ped1.ParambyName('P1SUBSER').AsString      :=' ';
Query_Ped1.ParambyName('P1MODELO').AsString      :=' ';
Query_Ped1.ParambyName('P1SUBMOD').AsString      :=NumPal_Sis(formatfloat('000',mPed1_SubMod_grav));
Query_Ped1.ParambyName('P1FORMACE').AsFloat      :=mped1_formace;
Query_Ped1.ParambyName('P1PROCESSO').AsString    :=' ';
Query_Ped1.ParambyName('P1OBS1').AsString        :=copy(mPed1_Obs_NF,1,1000);
Query_Ped1.ParambyName('P1OBS2').AsString        :=copy(mPed1_Obs_ped,1,1000);
Query_Ped1.ParambyName('P1OBS3').AsString        :=copy(mPed1_Obs_ped,1,1000);
Query_Ped1.ParambyName('P1STATUS').AsFloat       :=mPed1_status;
Query_Ped1.ParambyName('P1TIPO').AsFloat         :=mPed1_Tipo_Ped;
Query_Ped1.ParambyName('P1PEDORI').AsFloat       :=0;
Query_Ped1.ParambyName('P1SITPED').AsFloat       :=mPed1_SitPed;
//Query_Ped1.ParambyName('P1TOTALB').AsFloat       :=mPed1_Totall+mPed1_Desc_Rateado+mPed1_pDesc01_Valor;
//Query_Ped1.ParambyName('P1TOTALL').AsFloat       :=mPed1_Totall;
Query_Ped1.ParambyName('P1CODUSR').AsFloat       :=mPed1_CodUsr_Dig;
Query_Ped1.ParambyName('P1HORADIG').AsString     :=formatdateTime('hh:nn:ss', mPed1_DatHor_Dig);
Query_Ped1.ParambyName('P1DTMOD').AsDateTime     :=mPed1_DatHor_Mod;
Query_Ped1.ParambyName('P1USRMOD').AsFloat       :=mPed1_CodUsr_Mod;
Query_Ped1.ParambyName('P1CONF').AsString        :='N';
Query_Ped1.ParambyName('P1CODCON').AsFloat       :=mPed1_codCon;
Query_Ped1.ParambyName('P1DATCON').AsDateTime    :=mPed1_DatCon;
Query_Ped1.ParambyName('P1TIPENT').AsFloat       :=mped1_tipent;


Query_Ped1.ParambyName('P1DATHOR_PENT').AsDateTime         :=mPed1_dathot_pent;
Query_Ped1.ParambyName('P1ENTREGA_CEP').AsString           :=mPed1_entrega_cep;
Query_Ped1.ParambyName('P1ENTREGA_ENDER').AsString         :=mPed1_entrega_ender;
Query_Ped1.ParambyName('P1ENTREGA_BAIRRO').AsString        :=mPed1_entrega_bairro;
Query_Ped1.ParambyName('P1ENTREGA_CIDADE').AsString        :=mPed1_entrega_cidade;
Query_Ped1.ParambyName('P1ENTREGA_CODLOC').AsInteger       :=mPed1_entrega_codloc;
Query_Ped1.ParambyName('P1ENTREGA_UF').AsString            :=mPed1_entrega_uf;
Query_Ped1.ParambyName('P1ENTREGA_OBS').AsString           :=mPed1_entrega_obs;




Query_Ped1.ParambyName('P1PREVENT').AsDateTime   :=mped1_prevent;
Query_Ped1.ParambyName('P1CODENT').AsFloat       :=mPed1_CodEnt;
Query_Ped1.ParambyName('P1PRAZO').AsFloat        :=0;
Query_Ped1.ParambyName('P1DATENT').AsDateTime    :=mPed1_DatEnt;
Query_Ped1.ParambyName('P1TABPV').AsString       :=mPed1_TabPV;
Query_Ped1.ParambyName('P1CODPV').AsFloat        :=mPed1_CodPV;
Query_Ped1.ParambyName('P1PVACTD').AsFloat       :=mPed1_PvaCtd;

if mped1_codemp<100 then
   begin
   Query_Ped1.ParambyName('P1BANCO').AsFloat        :=mPed1_CodBco1;
   Query_Ped1.ParambyName('P1TARBAN').AsFloat       :=mPed1_TarBan_001;
   end
else
   begin
   Query_Ped1.ParambyName('P1BANCO').AsFloat        :=mPed1_CodBco101;
   Query_Ped1.ParambyName('P1TARBAN').AsFloat       :=mPed1_TarBan_101;
   end;


Query_Ped1.ParambyName('P1CUPOM').AsFloat        :=0;
Query_Ped1.ParambyName('P1DESPACES').AsFloat       :=mPed1_DespAces;

Query_Ped1.ParambyName('P1VALSEG').AsFloat       :=mPed1_ValSeg;
//Query_Ped1.ParambyName('P1TOTDES').AsFloat       :=mPed1_Desc_Rateado+mPed1_pDesc01_Valor;
Query_Ped1.ParambyName('P1DESC01').AsFloat       :=mPed1_pDesc01;
Query_Ped1.ParambyName('P1DESC02').AsFloat       :=mPed1_pDesc02;
//Query_Ped1.ParambyName('P1VLRDES').AsFloat       :=mPed1_Desc_Rateado;
Query_Ped1.ParambyName('P1CODTRA').AsFloat       :=mPed1_CodTra;
Query_Ped1.ParambyName('P1QTDVOL').AsFloat       :=mPed1_QtdVol;
Query_Ped1.ParambyName('P1TPPCO').AsFloat        :=mPed1_tppco;
Query_Ped1.ParambyName('P1TPP').AsFloat          :=valint(mPed1_Tabela);
Query_Ped1.ParambyName('P1PESOL').AsFloat        :=mPed1_PesoL;
Query_Ped1.ParambyName('P1PESOB').AsFloat        :=mPed1_PesoB;
Query_Ped1.ParambyName('P1FRETEPC').AsFloat      :=mPed1_Frete_CIFFOB;

Query_Ped1.ParambyName('P1VALFRE').AsFloat       :=mPed1_ValFre;
Query_Ped1.ParambyName('P1UFPV').AsString        :=mPed1_Tra_UFPV;
Query_Ped1.ParambyName('P1PLACAV').AsString      :=mPed1_Tra_PLACAv;
Query_Ped1.ParambyName('P1CODSER').AsFloat       :=0;
Query_Ped1.ParambyName('P1CODLDR').AsFloat       :=0;
Query_Ped1.ParambyName('P1PCOMIS').AsFloat       :=0;
Query_Ped1.ParambyName('P1LOTEDM').AsFloat       :=0;
Query_Ped1.ParambyName('P1MINUTA').AsFloat       :=mPed1_minuta;
Query_Ped1.ParambyName('P1ORIGEM').AsFloat       :=0;
Query_Ped1.ParambyName('P1NPEDORI').AsFloat      :=mped1_npedori;
Query_Ped1.ParambyName('P1CODSEP').AsFloat       :=mPed1_CodSep;
Query_Ped1.ParambyName('P1DATASEP').AsDateTime   :=mPed1_DataSep;
Query_Ped1.ParambyName('P1CODEMB').AsFloat       :=mPed1_CodEmb;
Query_Ped1.ParambyName('P1DATAEMB').AsDateTime   :=mPed1_DataEmb;

Query_Ped1.ParambyName('P1NUMCF').AsFloat        :=0;
Query_Ped1.ParambyName('P1CODECF').AsFloat       :=0;
Query_Ped1.ParambyName('P1DATACF').AsDateTime    :=pdatanula;
Query_Ped1.ParambyName('P1ECF_SERIE').AsString   :=mped1_ECF_Serie;
Query_Ped1.ParambyName('P1DESCFIN').AsFloat      :=mPed1_DescFin_Valor;
Query_Ped1.ParambyName('P1LOTCV').AsFloat        :=0;
Query_Ped1.ParambyName('P1LOTCV02').AsFloat      :=0;
Query_Ped1.ParambyName('P1LOTCV03').AsFloat      :=0;
Query_Ped1.ParambyName('P1LOTCS').AsFloat        :=0;
Query_Ped1.ParambyName('P1LOTCASSE').AsFloat     :=0;
Query_Ped1.ParambyName('P1LOTCT').AsFloat        :=0;

Query_Ped1.ParambyName('P1SITAC').AsFloat        :=0;
Query_Ped1.ParambyName('P1DTACERTO').AsDateTime  :=pdatanula;
Query_Ped1.ParambyName('P1LTACERTO').AsFloat     :=0;
Query_Ped1.ParambyName('P1SITCPR').AsFloat       :=0;
Query_Ped1.ParambyName('P1VLRACRE').AsFloat      :=mPed1_Acres_VlrTot;
Query_Ped1.ParambyName('P1PEDORI1').AsString     :=mped1_npedori1;
Query_Ped1.ParambyName('P1PEDORI2').AsString     :=mped1_npedori2;
Query_Ped1.ParambyName('P1MOTIVO').AsString      :=' ';
Query_Ped1.ParambyName('P1NUMVIS').AsString      :=' ';
Query_Ped1.ParambyName('P1DATVIS').AsDateTime    :=pdatanula;
Query_Ped1.ParambyName('P1DATDOC').AsDateTime    :=pdatanula;
Query_Ped1.ParambyName('P1EMIDOC').AsFloat       :=0;
Query_Ped1.ParambyName('P1SEMCOMP').AsString     :='0';
Query_Ped1.ParambyName('P1NAUT').AsString        :=mPed1_Naut;

Query_Ped1.ParambyName('P1PDESCLIB').AsFloat     :=0;
Query_Ped1.ParambyName('P1PDESCL_USR').AsFloat   :=0;
Query_Ped1.ParambyName('P1QTDMAN').AsFloat       :=0;
Query_Ped1.ParambyName('P1ESPECIE').AsString     :=mPed1_Especie;
Query_Ped1.ParambyName('P1CANHOTO').AsFloat      :=mped1_canhoto;
Query_Ped1.ParambyName('P1ICMS_BCFRE').AsFloat   :=0;
Query_Ped1.ParambyName('P1ICMS_ALFRE').AsFloat   :=mped1_icms_valfre_aliq;
Query_Ped1.ParambyName('P1ICMS_ALSEG').AsFloat   :=mped1_icms_valseg_aliq;
Query_Ped1.ParambyName('P1ICMS_ALOUTD').AsFloat  :=mped1_icms_outdesp_aliq;
Query_Ped1.ParambyName('P1ICMS_ALIPI').AsFloat   :=0;
Query_Ped1.ParambyName('P1ALIQDEB').AsFloat      :=0;
Query_Ped1.ParambyName('P1CODV04').AsFloat       :=0;
Query_Ped1.ParambyName('P1LOTCV04').AsFloat      :=0;
Query_Ped1.ParambyName('P1CODPRIOR').AsFloat     :=mPed1_CodPrior;
Query_Ped1.ParambyName('P1DTHRCHEG').AsDateTime  :=mPed1_DatHor_Dig;
Query_Ped1.ParambyName('P1CODBLOQ').AsString     :=mPed1_codbloq;
Query_Ped1.ParambyName('P1CODUSR_LBLOQ').AsFloat :=mPed1_codusr_lbloq;
Query_Ped1.ParambyName('P1TOTSERLIQ').AsFloat    :=mPed1_TotSer;
Query_Ped1.ParambyName('P1INCTB').AsFloat        :=0;
Query_Ped1.ParambyName('P1CX_CODCAI').AsFloat    :=codcai;
Query_Ped1.ParambyName('P1CX_LOTMOV').AsFloat    :=0;
Query_Ped1.ParambyName('P1PZOLIB').AsFloat       :=0;
Query_Ped1.ParambyName('P1PZOLIB_USR').AsFloat   :=0;
Query_Ped1.ParambyName('P1BLOQPEND').AsFloat     :=mPed1_BloqPend;
Query_Ped1.ParambyName('P1CODBLOQ_LIB').AsString :=mPed1_codbloq_lib;
Query_Ped1.ParambyName('P1SEPAMB').AsFloat       :=mPed1_SepAmb;

//if (mPed1_Tipo_Ped=8) or (mPed1_Tipo_Ped=12) or (mPed1_Tipo_Ped=13) or (mPed1_Tipo_Ped=17) or (mPed1_Tipo_Ped=18) then

if (mped1_cfop1>0) and (mPed1_cfop1<5000) then
  Query_Ped1.ParambyName('P1TIPO_ENTSAI').AsFloat := 1
else
  Query_Ped1.ParambyName('P1TIPO_ENTSAI').AsFloat := 0;

Query_Ped1.ParambyName('P1NOMEREC').AsString     :=' ';
Query_Ped1.ParambyName('P1DATHORREC').AsDateTime :=pdatanula;
Query_Ped1.ParambyName('P1EMITENTE').AsString    :='P';
Query_Ped1.ParambyName('P1NFE_ENVXML').AsFloat   :=0;
Query_Ped1.ParambyName('P1QTDDECPU').AsFloat     :=mPed1_QtdDec;

Query_Ped1.ParambyName('P1DATHOR_REP').AsDateTime:=pdatanula;
Query_Ped1.ParambyName('P1CHAVE_NIVEL').AsFloat  :=0;
Query_Ped1.ParambyName('P1TPEMIS').AsFloat       :=0;
mPed1_DatHor_UEVE:=now;
Query_Ped1.ParambyName('P1DATHOR_ULTEVE').AsDateTime:=mPed1_DatHor_UEVE;
Query_Ped1.ParambyName('P1CODUSR_ULTEVE').AsFloat:=codusr;
Query_Ped1.ParambyName('P1COMP_ULTEVE').AsString :=NomeComputador;
Query_Ped1.ParambyName('P1TOTEXTCOM').AsFloat    :=0;
Query_Ped1.ParambyName('P1ACRESCIMO').AsFloat    :=mPed1_Acrescimo;
Query_Ped1.ParambyName('P1CFO1').AsInteger       :=mPed1_cfop1;
Query_Ped1.ParambyName('P1CFO2').AsInteger       :=mPed1_cfop2;

Query_Ped1.ParambyName('P1NFE_CHACESSO').AsString :=mPed1_nfe_chacesso;
Query_Ped1.ParambyName('P1NFE_NPROT').AsString    :=mPed1_nfe_nprot;
Query_Ped1.ParambyName('P1DATANF_SERV').AsDateTime:=mPed1_datanf_serv;
Query_Ped1.ParambyName('P1SERIE_SERV').AsString   :=mPed1_serie_serv;
Query_Ped1.ParambyName('P1NUMNF_SERV').AsInteger  :=mPed1_numnf_serv;
Query_Ped1.ParambyName('P1NFS_SITUACAO').AsInteger:=mPed1_situacao_serv;
Query_Ped1.ParambyName('P1NFS_CHACESSO').AsString :=mPed1_chacesso_serv;
Query_Ped1.ParambyName('P1MODELO_SERV').AsString  :=mPed1_modelo_serv;
Query_Ped1.ParambyName('P1NFS_NPROT').AsString    :=mPed1_nprot_serv;


Query_Ped1.ParambyName('P1PVDESCF').AsFloat          :=mPed1_pvdescf;
Query_Ped1.ParambyName('P1PVDIASDESCF').AsInteger    :=mPed1_pvdiasdescf;

Query_Ped1.ParambyName('P1PVDDESCF').AsFloat         :=mPed1_pvddescf;

if mPed1_Codemp>100 then
   Query_Ped1.ParambyName('P1PRZNOVOS').AsString        :=mPed1_PrzNovos_101
else
   Query_Ped1.ParambyName('P1PRZNOVOS').AsString        :=mPed1_PrzNovos_001;

Query_Ped1.ParambyName('P1CODCV').AsFloat         :=mPed1_Codcv;

Query_Ped1.ParambyName('P1IMP_COT_DOLLAR').AsFloat         :=mPed1_imp_cot_dollar;
Query_Ped1.ParambyName('P1NF_IMP').AsString                :=mPed1_nf_imp;


Query_Ped1.ParambyName('P1RECDA').AsFloat                :=mPed1_RECDA;
Query_Ped1.ParambyName('P1RECHONORARIOS').AsFloat        :=mPed1_RECHONORARIOS;
Query_Ped1.ParambyName('P1RECARMAZENAGEM').AsFloat       :=mPed1_RECARMAZENAGEM;
Query_Ped1.ParambyName('P1TITSEP_PROD_SERV').AsFloat       :=mPed1_P1TITSEP_PROD_SERV;

Query_Ped1.ParambyName('P1SERVICO_OBS_CORPO').AsString      :=mped1_servico_obs_corpo;
Query_Ped1.ParambyName('P1SERVICO_OBS_INF_ADIC').AsString   :=mped1_servico_obs_inf_afic;




try
   Query_Ped1.ExecSQL;
   fDM1StartCommit;
   result:=true;
except on e : exception do
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query_Ped1,1174,'_lerarq '+'1174'+e.Message ,'cadp01_pre');
      freeandnil(query_ped1);
      result:=false;
      end;
   end;


if (mPed1_CodCli>0) and (mPed1_CodCli<3) then
   begin
   Query_Ped1.Close;
   Query_Ped1.SQL.Clear;
   Query_Ped1.SQL.Add('Select count(*) as qtd, max(CFCODSEQ) as CHAVE, max(CFID_NEW) as CFID_NEW from CADCSF '
                     +' where  CFCODEMP=:CODEMP'
                     +' and CFLOTSEQ=:LOTSEQ'
                     +' and CFCHAVEP=:CHAVE'
                     +' and CFORDEMP=:ORDEM');
   mped1_codemp   :=codemp+pnivel;
   Query_Ped1.ParambyName('CODEMP').AsFloat       :=mPed1_Codemp;
   Query_Ped1.ParambyName('LOTSEQ').AsFloat       :=mPed1_Chave_ano;
   Query_Ped1.ParambyName('CHAVE').AsFloat        :=mped1_Chave;
   Query_Ped1.ParambyName('ORDEM').AsFloat        :=01;
   try
      Query_Ped1.Open;
   except
      result:=false;
      exit;
      end;
   if Query_Ped1.Fields[0].AsInteger>0 then
      begin
      pTipo:=1;
      mChave_CSF:=Query_Ped1.FieldbyName('CHAVE').AsInteger;
      mId_CSF   :=Query_Ped1.FieldbyName('CFID_NEW').AsInteger;
      end
   else
      begin
      pTipo:=0;
      mChave_CSF:=0;
      mId_CSF   :=fBuscarProximoId('CADCSF_SEQ');
      end;
   if ptipo=0 then
      begin
      Query_Ped1.Close;
      Query_Ped1.SQL.Clear;
      Query_Ped1.SQL.Add('Select max(CFCODSEQ) as CHAVE from CADCSF ');
      Query_Ped1.open;
      mChave_CSF:=Query_Ped1.FieldbyName('CHAVE').AsInteger;
      Query_Ped1.Close;
      Query_Ped1.SQL.Clear;
      Query_Ped1.SQL.Add('Insert into CADCSF ('
                        +'CFCODSEQ '
                        +',CFCODEMP '
                        +',CFLOTSEQ '
                        +',CFCHAVEP '
                        +',CFID_NEW '
                        +',CFID_PED01_NEW '
                        +',CFORDEMP '
                        +',CFRAZAO '
                        +') values ('
                        +' :CFCODSEQ '
                        +',:CFCODEMP '
                        +',:CFLOTSEQ '
                        +',:CFCHAVEP '
                        +',:CFID_NEW '
                        +',:CFID_PED01_NEW '
                        +',:CFORDEMP '
                        +',:CFRAZAO '
                        +')');
      end
   else
      begin
      Query_Ped1.Close;
      Query_Ped1.SQL.Clear;
      Query_Ped1.SQL.Add('Update CADCSF set CFRAZAO=:CFRAZAO '
                        +' , CFORDEMP=:CFORDEMP '
                        +' , CFCODSEQ=:CFCODSEQ '
                        +' ,CFID_NEW=:CFID_NEW '
                        +' ,CFID_PED01_NEW=:CFID_PED01_NEW '

                        +' where '
                        +' CFCODEMP=:CFCODEMP '
                        +' and CFLOTSEQ=:CFLOTSEQ '
                        +' and CFCHAVEP=:CFCHAVEP ');
      end;
   mped1_codemp   :=codemp+pnivel;
   Query_Ped1.ParamByName('CFCODSEQ').Value :=mChave_CSF;
   Query_Ped1.ParamByName('CFCODEMP').Value :=mPed1_Codemp;
   Query_Ped1.ParamByName('CFLOTSEQ').Value :=mPed1_Chave_ano;
   Query_Ped1.ParamByName('CFCHAVEP').Value :=mped1_Chave;
   Query_Ped1.ParamByName('CFORDEMP').Value :=01;
   Query_Ped1.ParamByName('CFRAZAO').Value :=copy(mPed1_razsoc,1,34);
   Query_Ped1.ParamByName('CFID_NEW').Value       :=mid_csf;
   Query_Ped1.ParamByName('CFID_PED01_NEW').Value :=iif(mped1_codemp>100,mped1_id_new_100,mped1_id_new_000);

   try
      Query_Ped1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

freeandnil(query_ped1);

end;


// inicio


function TFrm_Vendas_GravarPedido.fRatearDescontosAcrescimos(pValDes,pValAcre,pValseg,pValFre,pTarBan,pOutDesp: Real; pcalcpeso: Boolean): Boolean;
var
mComando_Complem: String;
mdiferenca,mPercDesc: Real;
mMaiorValor,mTotLiq, mTotal,mTotDes01,mTotDes02,mTotDes03: Real;
mPosMaior: TBookmark;

begin
{
result:=true;
exit;
}


mPed1_QtdItem  :=0;
mPed1_QtdUnd   :=0;
mPed1_Icms_Base:=0;
mPed1_Icms_Valor:=0;
mPed1_Icms_Red_Vlr:=0;
mPed1_ST_base:=0;
mPed1_ST_Icms:=0;
mPed1_Desc_Rateado    :=0;
mPed1_Desc_Desoneracao :=0;
mPed1_pDesc01_Valor  :=0;
mPed1_DescPed02_Perc  :=0;
mPed1_IPI_Valor:=0;
mPed1_DescFin_Valor:=0;
mPed1_PIS_Valor:=0;
mPed1_Cofins_Valor:=0;
mPed1_ICMSSN_Valor:=0;
mPed1_Totall      :=0;
mPed1_TotPromo    :=0;
mPed1_TotIPI      :=0;
mPed1_TotMer      :=0;
mPed1_TotSer      :=0;
mPed1_DespAces    :=0;
mPed1_imp_imp_vii :=0;



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';

if mger_estanarede then
   begin



   if (mPed1_Codemp_ini<>mPed1_Codemp_fin) and (mFormace=1) then
      mComando_Complem:=',sum(CASE WHEN P2CODEMP>100 THEN 0 ELSE P2QTD END) as QTDUND '
   else
      mComando_Complem:=',sum(P2QTD) as QTDUND ';


   DM1.Qr_Soma.Close;
   DM1.Qr_Soma.SQL.Clear;
   DM1.Qr_Soma.SQL.Add('Select count(*) as QTDITEM '
                     +mComando_Complem
                     +',sum(');
  if mPed1_ArrTrunc=1 then
     DM1.Qr_Soma.SQL.Add('  TRUNC((P2QTD*P2PRECO),2) ')
  else
     DM1.Qr_Soma.SQL.Add('  ROUND((P2QTD*P2PRECO),2) ');

   DM1.Qr_Soma.SQL.Add(') as P1TOTMER '
                     +',sum(P2TOTLIQ) as P1TOTALL '
                     +',sum(P2BASEN+decode(P2BCINR,NULL,0,P2BCINR)) as P2ICMS_BASE '
                     +',sum(P2ICMSN+decode(P2ICMSNR,NULL,0,P2ICMSNR)) as P2ICMS_VALOR '
                     +',sum(P2TOTOUT) as P2ICMS_RED_VLR '
                     +',sum(P2BASER) as P2ST_BASE '
                     +',sum(P2ICMSR) as P2ST_ICMS '
                     +',sum(P2TOTDES-P2VICMSDES) as P2DESC_VLRTOT '
                     +',sum(P2DESC_CAB) as P2DESC_CAB '
                     +',sum(P2VALIPI) as P2IPI_VALOR '
                     +',sum(P2VALPIS) as P2PIS_VALOR '
                     +',sum(P2VDESCF) as P2DESCFIN_VALOR '
                     +',sum(P2COFINS) as P2COFINS_VALOR '
                     +',sum(P2VDESPACESRAT) as P2VDESPACESRAT '
                     +',sum(P2IMP_IMP_VII) as P2IMP_IMP_VII '

                     +',sum(ROUND( ((P2TOTLIQ*P2PCREDSN)/100),2)) as P2ICMSSN_VALOR '
                     +',sum(P2VICMSDES) as P2VICMSDES '
                     +',sum(P2DESCRAT) as P2DESC_RAT '
                     +',sum(P2VALIPI) as P1TOTIPI '
                     +',sum(P2VDESCF) AS P1DESCFIN '
                     +',sum(P2TOTLIQ) AS P1PROMOCAO '
                     +',sum( CASE WHEN P2PROMOCAO is null THEN 0 '
                     +'   WHEN trim(P2PROMOCAO) is null THEN  0 '
                     +' ELSE P2TOTLIQ END) AS TOTPROMO ');
   if DM1.Tb_PargerPCALCPPRO.AsFloat>0 then
      begin
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      DM1.Qr_Soma.SQL.Add(',sum(case when P2CODEMP=:CODEMP_INI then P2QTD*decode(PDPESOL,0,PDPESOB,PDPESOL) else 0 end) AS PESOL  '
                         +',sum(case when P2CODEMP=:CODEMP_INI then P2QTD*decode(PDPESOB,0,PDPESOL,PDPESOB) else 0 end) AS PESOB  ');

      DM1.Qr_Soma.SQL.Add(' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+ iif(la_instrucao='','',la_instrucao+' and ')
                   +' (P2CODEMP=:CODEMP_INI or P2CODEMP=:CODEMP_FIN) '
                   +' and P2CHAVE=:CHAVE '
                   +' and P2LOTSEQ=:CHAVE_ANO '
                   +' and (P2SITUACAO<>1 OR P2SITUACAO IS NULL) ');

      end
   else
      begin
      DM1.Qr_Soma.SQL.Add(',0 AS PESOL  '
                         +',0 AS PESOB ');

      DM1.Qr_Soma.SQL.Add(' from CADP02 '
                     +' where (P2CODEMP=:CODEMP_INI or P2CODEMP=:CODEMP_FIN) '
                     +' and P2CHAVE=:CHAVE '
                     +' and P2LOTSEQ=:CHAVE_ANO '
                     +' and (P2SITUACAO<>1 OR P2SITUACAO IS NULL) ');
      end;
   DM1.Qr_Soma.ParamByName('CODEMP_INI').AsFloat:=mPed1_Codemp_ini;
//   DM1.Qr_Soma.ParamByName('CODEMP_FIN').AsFloat:=mPed1_Codemp_ini;
   DM1.Qr_Soma.ParamByName('CODEMP_FIN').AsFloat:=mPed1_Codemp_fin;
   DM1.Qr_Soma.ParamByName('CHAVE').AsFloat:=mPed1_chave;
   DM1.Qr_Soma.ParamByName('CHAVE_ANO').AsFloat:=mPed1_Chave_Ano;
   try
      DM1.Qr_Soma.Open;
   except
      if not fVerificaRedeAtiva(true) then
      else
         begin
         ex_erroSql_Novo(DM1.Qr_Soma,1279,'1279'+'_lerarq','cadp02_pre');
         result:=false;
         exit;
         end;
      end;

   if not DM1.Qr_Soma.IsEmpty  then
      begin

      if (DM1.Tb_PargerPCALCPPRO.AsFloat>0) and (pcalcpeso) then
         begin
         mped1_pesob:=Arredonda(DM1.Qr_Soma.fieldbyName('PESOB').AsFloat,DM1.Tb_PargerPQTDCASARRED.AsInteger)+fPesoCaixa(mPed1_QtdVol);
;
         mped1_pesol:=Arredonda(DM1.Qr_Soma.fieldbyName('PESOL').AsFloat,DM1.Tb_PargerPQTDCASARRED.AsInteger);

         if copy(LowerCase(mPed1_Especie),1,5)='fardo' then
            begin
            if DM1.Tb_PargerPPERCPLFARDO.AsFloat>0 then
               mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLFARDO.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
            end
         else if (copy(LowerCase(mPed1_Especie),1,6)='pacote') or (copy(LowerCase(mPed1_Especie),1,3)='pct') then
            begin
            if DM1.Tb_PargerPPERCPLPCT.AsFloat>0 then
               mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLPCT.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
            end
         else if (copy(LowerCase(mPed1_Especie),1,5)='caixa') or (copy(LowerCase(mPed1_Especie),1,2)='cx') then
            begin
            if DM1.Tb_PargerPPERCPLCX.AsFloat>0 then
               mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLCX.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
            end
         else
            begin
            if DM1.Tb_PargerPPERCPL.AsFloat>0 then
               mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPL.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
            end;
         end;

      mPed1_QtdItem  :=DM1.Qr_Soma.FieldByName('QTDITEM').AsInteger;
      mPed1_QtdUnd   :=DM1.Qr_Soma.FieldByName('QTDUND').AsFloat;
      mPed1_Icms_Base:=DM1.Qr_Soma.FieldByName('P2ICMS_BASE').AsFloat;
      mPed1_Icms_Valor:=DM1.Qr_Soma.FieldByName('P2ICMS_VALOR').AsFloat;
      mPed1_Icms_Red_Vlr:=DM1.Qr_Soma.FieldByName('P2ICMS_RED_VLR').AsFloat;
      mPed1_ST_base:=DM1.Qr_Soma.FieldByName('P2ST_BASE').AsFloat;
      mPed1_ST_Icms:=DM1.Qr_Soma.FieldByName('P2ST_ICMS').AsFloat;
      mPed1_Desc_Desoneracao   :=DM1.Qr_Soma.FieldByName('P2VICMSDES').AsFloat;
      mPed1_Desc_Rateado    :=DM1.Qr_Soma.FieldByName('P2DESC_RAT').AsFloat;
      mPed1_pDesc01_Valor  :=DM1.Qr_Soma.FieldByName('P2DESC_CAB').AsFloat;
      mPed1_DescPed02_Perc  :=DM1.Qr_Soma.FieldByName('P2DESC_VLRTOT').AsFloat
                             -(DM1.Qr_Soma.FieldByName('P2DESC_CAB').AsFloat
                              +DM1.Qr_Soma.FieldByName('P2DESC_RAT').AsFloat);
      mPed1_IPI_Valor:=DM1.Qr_Soma.FieldByName('P2IPI_VALOR').AsFloat;
      mPed1_imp_imp_vii:=DM1.Qr_Soma.FieldByName('P2IMP_IMP_VII').AsFloat;

      mPed1_DescFin_Valor:=DM1.Qr_Soma.FieldByName('P2DESCFIN_VALOR').AsFloat;

//      mPed1_DescFin_Valor:=mPed1_DescFin_Valor+DM1.Qr_Soma.FieldByName('P2SDESCFIN_VALOR').AsFloat;

      mPed1_PIS_Valor:=DM1.Qr_Soma.FieldByName('P2PIS_VALOR').AsFloat;
      mPed1_Cofins_Valor:=DM1.Qr_Soma.FieldByName('P2COFINS_VALOR').AsFloat;
      mPed1_ICMSSN_Valor:=DM1.Qr_Soma.FieldByName('P2ICMSSN_VALOR').AsFloat;
      mPed1_Totall      :=DM1.Qr_Soma.FieldByName('P1TOTALL').AsFloat;
      if mPed1_nf_imp='S' then
         mPed1_Totall      :=mPed1_Totall+DM1.Qr_Soma.FieldByName('P2PIS_VALOR').AsFloat
                            +DM1.Qr_Soma.FieldByName('P2COFINS_VALOR').AsFloat;


      mPed1_TotPromo    :=DM1.Qr_Soma.FieldByName('TOTPROMO').AsFloat;
      mPed1_TotIPI      :=DM1.Qr_Soma.FieldByName('P1TOTIPI').AsFloat;
      mPed1_TotMer      :=DM1.Qr_Soma.FieldByName('P1TOTMER').AsFloat;
//      IF  DM1.Qr_Soma.FieldByName('P2VDESPACESRAT').AsFloat<>(mPed1_TarBan_001+mPed1_TarBan_101)  THEN
//          sHOWMESSAGE('AGHOU');

      if  DM1.Qr_Soma.FieldByName('P2VDESPACESRAT').AsFloat<=(mPed1_TarBan_001+mPed1_TarBan_101) then
          mPed1_DespAces    :=0
      else
         mPed1_DespAces    :=DM1.Qr_Soma.FieldByName('P2VDESPACESRAT').AsFloat-(mPed1_TarBan_001+mPed1_TarBan_101) ;


      end;
   end;

// OUTROS IMPOSTOS
{
if mger_estanarede then
   begin
   if ( (mped1_icms_outdesp_aliq>0) and (mPed1_DespAces>0) ) or
      ( (mped1_icms_valseg_aliq>0) and (mPed1_ValSeg>0) ) or
      ( (mped1_icms_valfre_aliq>0) and (mPed1_ValFre>0) ) then
      begin
      DM1.Qr_Soma.Close;
      DM1.Qr_Soma.SQL.Clear;
      DM1.Qr_Soma.SQL.Add('Select sum(P1ICMS_VLFRE)   AS P1ICMS_VLFRE '
                        +'      ,sum(P1ICMS_VLSEG)  AS P1ICMS_VLSEG '
                        +'      ,sum(P1ICMS_VLOUTD) AS P1ICMS_VLOUTD '
                        +'      ,sum(P1VALSEG)      AS P1VALSEG '
                        +'      ,sum(P1DESPACES)    AS P1DESPACES '
                        +'      ,sum(P1VALFRE)      AS P1VALFRE '
                        +' from CADP01 '
                        +' where (P1CODEMP=:CODEMP_INI or P1CODEMP=:CODEMP_FIN) '
                        +' and P1CHAVE=:CHAVE '
                        +' and P1LOTSEQ=:CHAVE_ANO ');
      DM1.Qr_Soma.ParamByName('CODEMP_INI').AsFloat:=mPed1_Codemp_ini;
      DM1.Qr_Soma.ParamByName('CODEMP_FIN').AsFloat:=mPed1_Codemp_fin;
      DM1.Qr_Soma.ParamByName('CHAVE').AsFloat:=mPed1_chave;
      DM1.Qr_Soma.ParamByName('CHAVE_ANO').AsFloat:=mPed1_Chave_Ano;
      try
         DM1.Qr_Soma.Open;
         While not DM1.Qr_Soma.Eof do
            begin
            if (mped1_icms_outdesp_aliq>0) and (mPed1_DespAces>0)  then
               begin
               mPed1_Icms_Base:=mPed1_Icms_Base+DM1.Qr_Soma.FieldByName('P1DESPACES').AsFloat;
               mPed1_Icms_Valor:=mPed1_Icms_Valor+DM1.Qr_Soma.FieldByName('P1ICMS_VLOUTD').AsFloat;
               end;

            if (mped1_icms_valseg_aliq>0) and (mPed1_ValSeg>0)  then
               begin
               mPed1_Icms_Base:=mPed1_Icms_Base+DM1.Qr_Soma.FieldByName('P1VALSEG').AsFloat;
               mPed1_Icms_Valor:=mPed1_Icms_Valor+DM1.Qr_Soma.FieldByName('P1ICMS_VLSEG').AsFloat;
               end;
            if (mped1_icms_valfre_aliq>0) and (mPed1_ValFre>0)  then
               begin
               mPed1_Icms_Base:=mPed1_Icms_Base+DM1.Qr_Soma.FieldByName('P1VALFRE').AsFloat;
               mPed1_Icms_Valor:=mPed1_Icms_Valor+DM1.Qr_Soma.FieldByName('P1ICMS_VLFRE').AsFloat;
               end;
            DM1.Qr_Soma.Next;
            end;
      except
         end;
      end;   
   end;

}

// OUTROS IMPOSTOS


if mger_estanarede then
   begin
   DM1.Qr_Soma.Close;
   DM1.Qr_Soma.SQL.Clear;
   DM1.Qr_Soma.SQL.Add('Select count(*) as QTDSER'
                     +',sum(P2SQTD) as QTDUND'
                     +',sum(P2SBCISSQN) as P2SISSQN_BASE'
                     +',sum(P2SVISSQN) as P2SISSQN_VALOR'
                    +' ,sum(P2STOTDES) as P2STOTDES'
                    +' ,sum(P2SDESC_CAB) as P2SDESC_CAB'
                    +' ,sum(P2SVDESCF) as P2SDESCFIN_VALOR'
                    +' ,sum(ROUND((P2SQTD*P2SPRECO),2)) as P1TOTSER'
                    +' ,sum(P2SDESCRAT) as P2SDESCRAT'
                    +'  ,sum(P2STOTLIQ) as P1TOTALL'
                    +' ,sum( CASE WHEN P2SPROMOCAO is null THEN 0'
                    +'    WHEN trim(P2SPROMOCAO) is null THEN  0'
                    +'  ELSE P2STOTLIQ END) AS TOTPROMO'
                    +'  from CADP02S '
                     +' where (P2SCODEMP=:CODEMP_INI or  P2SCODEMP=:CODEMP_FIN)'
                     +' and P2SCHAVE=:CHAVE '
                     +' and P2SLOTSEQ=:CHAVE_ANO '
                     +' and P2SSTATUS<>1');

   DM1.Qr_Soma.ParamByName('CODEMP_INI').AsFloat:=mPed1_Codemp_ini;
   DM1.Qr_Soma.ParamByName('CODEMP_FIN').AsFloat:=mPed1_Codemp_fin;
   DM1.Qr_Soma.ParamByName('CHAVE').AsFloat:=mPed1_chave;
   DM1.Qr_Soma.ParamByName('CHAVE_ANO').AsFloat:=mPed1_Chave_Ano;
   try
      DM1.Qr_Soma.Open;
   except
      if not fVerificaRedeAtiva(true) then
      else
         begin
         ex_erroSql_Novo(DM1.Qr_Soma,548,'548'+'_lerarq','cadp02s_pre');
         result:=false;
         exit;
         end;
      end;
   if not DM1.Qr_Soma.IsEmpty then
      begin
      mPed1_Desc_Rateado   := mPed1_Desc_Rateado + DM1.Qr_Soma.FieldByName('P2SDESCRAT').AsFloat;
      mPed1_pDesc01_Valor  := mPed1_pDesc01_Valor + DM1.Qr_Soma.FieldByName('P2SDESC_CAB').AsFloat;
      mPed1_DescPed02_Perc := mPed1_DescPed02_Perc
                             + DM1.Qr_Soma.FieldByName('P2STOTDES').AsFloat
                             -(DM1.Qr_Soma.FieldByName('P2SDESC_CAB').AsFloat
                             +DM1.Qr_Soma.FieldByName('P2SDESCRAT').AsFloat);
      mPed1_DescFin_Valor:=mPed1_DescFin_Valor+DM1.Qr_Soma.FieldByName('P2SDESCFIN_VALOR').AsFloat;
      mPed1_Totall      :=mPed1_Totall+DM1.Qr_Soma.FieldByName('P1TOTALL').AsFloat;
      mPed1_TotPromo    :=mPed1_TotPromo+DM1.Qr_Soma.FieldByName('TOTPROMO').AsFloat;
      mPed1_TotSer      :=DM1.Qr_Soma.FieldByName('P1TOTSER').AsFloat;
      end;

   end;

result:=true;
end;

// termino


// PTIPOEVE=0 INCLUSAO
// PTIPOEVE-1 ALTERACAO
//         =2 EXCLUSAO


{


function TFrm_Vendas_GravarPedido.fGravarItem(pItem,pItem_ant,pcfosubecf,pcons_proprio,pcfo,pmodbcst,pSituacao,p2Estoque,pCodFpg,pTipoEve,pContEsp: Integer;
                      pcodpro,pnome,pdund,pcodpro_ant: String;
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,pdescppr,ppreco,ppcodig,pcomis,prepas,
                      plista,
                      ppcotab,ppcofpg,ppcoucpr,ppcocus,ppcomax,
                      pipi_aliq,
                      picm_aliq,ppcomis,pPis_Aliq,pCofins_Aliq,
                      ppdescf,pPercAcre
                      ,pCodVen,picms_predut,pst_iva,pst_predut,
                      pst_icmsred,pst_icms_deb,pst_icms_cred,pIcmsSN_Aliq,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp: Real;
                      pcst, pambiente,pDescCompl,pcsosn,pcsosn_ori,pPromocao,pNomFP,pBaixa,pPis_CST,pCofins_CST,PIPI_Cst: String;pTipo_Pco: Integer
                      ;picms_alipi: Real ): Boolean;


}


function TFrm_Vendas_GravarPedido.fGravarItem(pProdServ, pItem_ant,p2Estoque,pCodfpg,pTipoEve,pSituacao: Integer;
                        pCodPro_Ant,pNomFP,pBaixa: String;
                        pQtd_Cal,pPrecoUnit_Cal,pPrecoTab_Cal,pPrecoUCPR_Cal,pPrecoCus_Cal,pPrecoMax_Cal,
                        pQtd_Ant,pValorSeg,pValorFre,pTarBan,pDespaces,pDescRat: Real;
                        pDadosParametros: tDadosParametros;
                        pTabela: tQuery): Boolean;


var
x: Integer;
Query_Exe: tQuery;
begin
if mped1_Chave=0 THEN
   begin
   result:=true;
   exit;
   end;
{
if mPed1_QtdParc<>mPed1_QtdParc_ant then
   begin
   showmessage('chave '+floattostr(mped1_chave));
   end;
}
if (pProdServ=0) and (pTabela<>nil) then
   begin
   if mPed1_cfop1=0 then
      mPed1_cfop1:=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
   if (mPed1_cfop2=0) and (mped1_cfop1<>pTabela.FieldbyName('P2CFOP_NF').Asinteger) then
      mPed1_cfop2:=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
   end;


Query_Exe:=tQuery.create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';

result:=true;


if mger_estanarede then
   begin
   if pTabela=nil then
      begin
// inicio
      Query_Exe.Close;
      Query_Exe.Sql.Clear;
      Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                             +'('
                             +'P2T_CODEMP'
                             +',P2T_CODEMP_FILIAL'
                             +',P2T_FILIAL'
                             +',P2T_CHAVE'
                             +',P2T_CHAVE_ANO'
                             +',P2T_ID_PED01_NEW'
                             +',P2T_PED1_DESCRAT'
                             +',P2T_PED1_ACRERAT'
                             +',P2T_PED1_VALSEG'
                             +',P2T_PED1_VALFRE'
                             +',P2T_PED1_TARBAN'
                             +',P2T_PED1_DESPACES'
                             +',P2T_QTDDUP'
                             +',P2T_ARRED'
                             +',P2T_QTDDUP_ANT'
                             +',P2T_PRAZOS'
                             +',P2T_TIPO_EVENTO'
                             +',P2T_DESC_CAB'
                             +',P2T_CODFP'
                             +',P2T_NOMFP'
                             +',P2T_BAIXA'
                             +',P2T_PED1_DESC_PERC01'
                             +',P2T_PED1_DESC_PERC02'
                             +',P2T_PED1_DESC_PERC03'
                             +',P2T_PED1_DESC_PERC01_ANT'
                             +',P2T_PED1_DESC_PERC02_ANT'
                             +',P2T_PED1_DESC_PERC03_ANT'
                             +',P2T_ALTDUP'
                             +',PT2_PRZNOVOS'
                             +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',P2T_ICMSR_PRIMPARC '
                             +',P2T_ICMSR_SOBLIQ '
                             +',P2T_PROD_SERV'
                             +',P2T_DATAPED'
                             +',P2T_PCOMTEL '
                             +',P2T_TPPCO_CAB'

                             +',P2T_NF_IMP '
                             +',P2T_RECDA '
                             +',P2T_RECHONORARIOS '
                             +',P2T_RECARMAZENAGEM '
                             +',P2T_TITSEP_PROD_SERV '
                             +',P2T_PERCDESC_AUT '
                             +',P2T_PERCDESC_AUT_CODUSR '
                             +',P2T_PERCDESC_AUT_DATHOR '
                             +',P2T_DEDUZIR_ICMS_BC_PIS_COFINS '
                            +') values ('


                             +':P2T_CODEMP'
                             +',:P2T_CODEMP_FILIAL'
                             +',:P2T_FILIAL'
                             +',:P2T_CHAVE'
                             +',:P2T_CHAVE_ANO'
                             +',:P2T_ID_PED01_NEW'
                             +',:P2T_PED1_DESCRAT'
                             +',:P2T_PED1_ACRERAT'
                             +',:P2T_PED1_VALSEG'
                             +',:P2T_PED1_VALFRE'
                             +',:P2T_PED1_TARBAN'
                             +',:P2T_PED1_DESPACES'

                             +',:P2T_QTDDUP'
                             +',:P2T_ARRED'

                             +',:P2T_QTDDUP_ANT'
                             +',:P2T_PRAZOS'

                             +',:P2T_TIPO_EVENTO'

                             +',:P2T_DESC_CAB'
                             +',:P2T_CODFP'
                             +',:P2T_NOMFP'
                             +',:P2T_BAIXA'

                             +',:P2T_PED1_DESC_PERC01'
                             +',:P2T_PED1_DESC_PERC02'
                             +',:P2T_PED1_DESC_PERC03'
                             +',:P2T_PED1_DESC_PERC01_ANT'
                             +',:P2T_PED1_DESC_PERC02_ANT'
                             +',:P2T_PED1_DESC_PERC03_ANT'

                             +',:P2T_ALTDUP'

                             +',:PT2_PRZNOVOS'
                             +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',:P2T_ICMSR_PRIMPARC '
                             +',:P2T_ICMSR_SOBLIQ '

                             +',:P2T_PROD_SERV'
                             +',:P2T_DATAPED'
                             +',:P2T_PCOMTEL '
                             +',:P2T_TPPCO_CAB'

                             +',:P2T_NF_IMP '
                             +',:P2T_RECDA '
                             +',:P2T_RECHONORARIOS '
                             +',:P2T_RECARMAZENAGEM '
                             +',:P2T_TITSEP_PROD_SERV '
                             +',:P2T_PERCDESC_AUT '
                             +',:P2T_PERCDESC_AUT_CODUSR '
                             +',:P2T_PERCDESC_AUT_DATHOR '
                             +',:P2T_DEDUZIR_ICMS_BC_PIS_COFINS '




                             +')');


      Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
      Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
      if mped1_filial<1 then
         mped1_filial:=1;
      Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
      Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
      Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
      Query_Exe.ParamByName('P2T_ID_PED01_NEW').AsInteger  :=iif(mped1_codemp>100,mped1_id_new_100,mped1_id_new_000);

      Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;

      Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
      Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
      Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
      Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
      Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
      Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
      Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

      Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=-1;
      Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;

      Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
      Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
      Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;


      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

      if (pTipoEve=3) or (pTipoEve=2) then
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

      Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
      if mPed1_Codemp>100 then
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
      else
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_101);
      Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger:=mped1_ICMSR_PRIMPARC;
      Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;


      Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;
      Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger              :=pProdServ;
      Query_Exe.ParamByName('P2T_DATAPED').AsDateTime               := mPed1_Datap;
      if mPed1_Codtlv=0 then
         Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := 0
      else
         Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;
      Query_Exe.ParamByName('P2T_TPPCO_CAB').Asinteger              :=mped1_tppco;


      Query_Exe.ParamByName('P2T_NF_IMP').Asstring               :=mPed1_nf_imp;
      Query_Exe.ParamByName('P2T_RECDA').AsFloat                 :=mPed1_RECDA;
      Query_Exe.ParamByName('P2T_RECHONORARIOS').AsFloat         :=mPed1_RECHONORARIOS;
      Query_Exe.ParamByName('P2T_RECARMAZENAGEM').AsFloat         :=mPed1_RECARMAZENAGEM;

      Query_exe.ParambyName('P2T_TITSEP_PROD_SERV').AsFloat       :=mPed1_P1TITSEP_PROD_SERV;

      Query_Exe.ParamByName('P2T_PERCDESC_AUT').AsFloat                :=0;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_CODUSR').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_DATHOR').Asdatetime      :=pdatanula;
      Query_Exe.ParamByName('P2T_DEDUZIR_ICMS_BC_PIS_COFINS').AsFloat         :=mPed1_DEDUZIR_ICMS_BC_PIS_COFINS;




      end
// termino
   else if pProdServ=0 then
      begin
      Query_Exe.Close;
      Query_Exe.Sql.Clear;
      Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                             +'('
                             +'P2T_CODEMP'
                             +',P2T_CODEMP_FILIAL'
                             +',P2T_FILIAL'
                             +',P2T_CHAVE'

                             +',P2T_CHAVE_ANO'
                             +',P2T_ID_PED01_NEW '
                             +',P2T_ITEM'
                             +',P2T_ID_PED02_NEW'
                             +',P2T_CFOP'
                             +',P2T_CFOP_SUBECF'
                             +',P2T_MODBCST'
                             +',P2T_SITUACAO'
                             +',P2T_CODPRO'
                             +',P2T_NRECEITUARIO'
                             +',P2T_COMPRA_XPED '
                             +',P2T_COMPRA_NITEMPED '

                             +',P2T_NOMPRO_ORI'
                             +',P2T_QTD'
                             +',P2T_DESC_PERC01'
                             +',P2T_DESC_PERC02'
                             +',P2T_DESC_PERC03'
                             +',P2T_DESC_VALOR'
                             +',P2T_DESC_PPR'
                             +',P2T_PRECO'
                             +',P2T_DESC_REPAS'
                             +',P2T_LISTA'
                             +',P2T_PRECO_TAB'
                             +',P2T_PRECO_FPGTO'
                             +',P2T_PRECO_UCPR'
                             +',P2T_PRECO_CUS'
                             +',P2T_PRECO_MAXCONS'
                             +',P2T_IPI_PERC'
                             +',P2T_ICMS_PERC'
                             +',P2T_ICMS_DESPERC'
                             +',P2T_ICMS_DES'
                             +',P2T_ALIQAPROXTRIB'
                             +',P2T_COMISV01_PERC'
                             +',P2T_PIS_PERC'
                             +',P2T_PIS_CST'
                             +',P2T_IPI_CST'
                             +',P2T_COFINS_PERC'
                             +',P2T_COFINS_CST'
                             +',P2T_DESCFIN_PERC'
                             +',P2T_ACRES_PERC'
                             +',P2T_CODVEN'
                             +',P2T_MOTIVODESONERACAO'
                             +',P2T_ICMS_PRED'
                             +',P2T_ST_IVA'
                             +',P2T_ST_PREDUT'
                             +',P2T_ST_ICMSRED'
                             +',P2T_ST_ICMSDEB'
                             +',P2T_ST_ICMSCRED'
                             +',P2T_ICMSSN_PERC'
                             +',P2T_PED1_DESCRAT'
                             +',P2T_PED1_ACRERAT'
                             +',P2T_PED1_VALSEG'
                             +',P2T_PED1_VALFRE'
                             +',P2T_PED1_TARBAN'
                             +',P2T_PED1_DESPACES'
                             +',P2T_CST'
                             +',P2T_CBENEF'
                             +',P2T_AMBIENTE'
                             +',P2T_DESCCOMPL'
                             +',P2T_CSOSN'
                             +',P2T_CSOSN_ORI'
                             +',P2T_IRRF_PERC '
                             +',P2T_CSLL_PERC '


                             +',P2T_PROMOCAO'

                             +',P2T_QTDDUP'
                             +',P2T_ARRED'

                             +',P2T_QTDDUP_ANT'
                             +',P2T_PRAZOS'
                             +',P2T_ESTNOR'
                             +',P2T_EST_RESERVADO'
                             +',P2T_ESTCONS'
                             +',P2T_ESTTERC'
                             +',P2T_ESTREV'
                             +',P2T_TIPO_EVENTO'
                             +',P2T_HISTORICO'
                             +',P2T_HISTORICO_ANT'
                             +',P2T_ITEM_ANT'
                             +',P2T_CODPRO_ANT'

                             +',P2T_QTD_ANT'
                             +',P2T_DESC_CAB'
                             +',P2T_CODFP'
                             +',P2T_NOMFP'
                             +',P2T_BAIXA'
                             +',P2T_PED1_DESC_PERC01'
                             +',P2T_PED1_DESC_PERC02'
                             +',P2T_PED1_DESC_PERC03'
                             +',P2T_PED1_DESC_PERC01_ANT'
                             +',P2T_PED1_DESC_PERC02_ANT'
                             +',P2T_PED1_DESC_PERC03_ANT'
                             +',P2T_CODUSR'
                             +',P2T_DATAPED'
                             +',P2T_ALTDUP'
                             +',P2T_CONTESP'
                             +',P2T_TIPOPROD'
                             +',P2T_CONS_PROPRIO'
                             +',PT2_PRZNOVOS'
                             +',P2T_TPPCO_ITEM '
                             +',P2T_TPPCO_CAB '
                             +',P2T_ICMSR_PRIMPARC '
                             +',P2T_ICMSR_SOBLIQ'
                             +',P2T_ICMS_ALIPI '
                             +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',P2T_INSS_PRED '
                             +',P2T_INSS_ALIQ '
                             +',P2T_IRRF_PRED '
                             +',P2T_IRRF_ALIQ '
                             +',P2T_PROD_SERV'
                             +',P2T_PCOMTEL'
                             +',P2T_IMP_IMP_ALIQ '
                             +',P2T_IMP_IMP_VBC '
                             +',P2T_IMP_IMP_VALOR '
                             +',P2T_IMP_IMP_VDESDPADU '
                             +',P2T_IMP_IMP_VII '
                             +',P2T_IMP_IMP_VIOF '

                             +',P2T_IMP_TPVIATRANSP '
                             +',P2T_IMP_VAFRMM '
                             +',P2T_IMP_TPINTERMEDIARIO '
                             +',P2T_IMP_CNPJ '
                             +',P2T_IMP_UFTERCEIRO '
                             +',P2T_IMP_NDRAW '
                             +',P2T_EXP_NDRAW '
                             +',P2T_EXP_NRE '
                             +',P2T_EXP_CHNFE '
                             +',P2T_EXP_QEXPORT'
                             +',P2T_IMP_COT_DOLLAR '
                             +',P2T_NF_IMP '
                             +',P2T_IMP_PU_DOLLAR '
                             +',P2T_PISCOFINS_VBC_IMP '
                             +',P2T_RECDA '
                             +',P2T_RECHONORARIOS '
                             +',P2T_RECARMAZENAGEM '
                             +',P2T_TITSEP_PROD_SERV '
                             +',P2T_PERCDESC_AUT '
                             +',P2T_PERCDESC_AUT_CODUSR '
                             +',P2T_PERCDESC_AUT_DATHOR '

                             +',P2T_CEST '
                             +',P2T_CPUFDEST  '
                             +',P2T_ICMSUFDEST '
                             +',P2T_ICMSINTER  '
                             +',P2T_ICMSINTERPART '
                             +',P2T_DEDUZIR_ICMS_BC_PIS_COFINS'


                             +',P2T_CBS_CST '
                             +',P2T_CODCLASSTRIB '
                             +',P2T_CBS_ALIQ '
                             +',P2T_IBS_UF_ALIQ '
                             +',P2T_IBS_MUN_ALIQ '
                             +',P2T_INDOP_IBSCBS '
                             +',P2T_CODTRIB_MUN '
                             +',P2T_CODTRIB_NAC '
                             +',P2T_CODNBS '
                             +',P2T_CODCNAE '
                             +',P2T_PCOFINS '
                             +',P2T_PCSLL '
                             +',P2T_PISSQN '
                             +',P2T_PIR '


                            +') values ('
                             +':P2T_CODEMP'
                             +',:P2T_CODEMP_FILIAL'
                             +',:P2T_FILIAL'
                             +',:P2T_CHAVE'
                             +',:P2T_CHAVE_ANO'
                             +',:P2T_ID_PED01_NEW '
                             +',:P2T_ITEM'
                             +',:P2T_ID_PED02_NEW'
                             +',:P2T_CFOP'
                             +',:P2T_CFOP_SUBECF'
                             +',:P2T_MODBCST'
                             +',:P2T_SITUACAO'
                             +',:P2T_CODPRO'
                             +',:P2T_NRECEITUARIO'
                             +',:P2T_COMPRA_XPED '
                             +',:P2T_COMPRA_NITEMPED '
                             +',:P2T_NOMPRO_ORI'
                             +',:P2T_QTD'
                             +',:P2T_DESC_PERC01'
                             +',:P2T_DESC_PERC02'
                             +',:P2T_DESC_PERC03'
                             +',:P2T_DESC_VALOR'
                             +',:P2T_DESC_PPR'
                             +',:P2T_PRECO'
                             +',:P2T_DESC_REPAS'
                             +',:P2T_LISTA'
                             +',:P2T_PRECO_TAB'
                             +',:P2T_PRECO_FPGTO'
                             +',:P2T_PRECO_UCPR'
                             +',:P2T_PRECO_CUS'
                             +',:P2T_PRECO_MAXCONS'
                             +',:P2T_IPI_PERC'
                             +',:P2T_ICMS_PERC'
                             +',:P2T_ICMS_DESPERC'
                             +',:P2T_ICMS_DES'
                             +',:P2T_ALIQAPROXTRIB'
                             +',:P2T_COMISV01_PERC'
                             +',:P2T_PIS_PERC'
                             +',:P2T_PIS_CST'
                             +',:P2T_IPI_CST'
                             +',:P2T_COFINS_PERC'
                             +',:P2T_COFINS_CST'
                             +',:P2T_DESCFIN_PERC'
                             +',:P2T_ACRES_PERC'
                             +',:P2T_CODVEN'
                             +',:P2T_MOTIVODESONERACAO'
                             +',:P2T_ICMS_PRED'
                             +',:P2T_ST_IVA'
                             +',:P2T_ST_PREDUT'
                             +',:P2T_ST_ICMSRED'
                             +',:P2T_ST_ICMSDEB'
                             +',:P2T_ST_ICMSCRED'
                             +',:P2T_ICMSSN_PERC'
                             +',:P2T_PED1_DESCRAT'
                             +',:P2T_PED1_ACRERAT'
                             +',:P2T_PED1_VALSEG'
                             +',:P2T_PED1_VALFRE'
                             +',:P2T_PED1_TARBAN'
                             +',:P2T_PED1_DESPACES'
                             +',:P2T_CST'
                             +',:P2T_CBENEF'
                             +',:P2T_AMBIENTE'
                             +',:P2T_DESCCOMPL'
                             +',:P2T_CSOSN'
                             +',:P2T_CSOSN_ORI'
                             +',:P2T_IRRF_PERC '
                             +',:P2T_CSLL_PERC '
                             +',:P2T_PROMOCAO'
                             +',:P2T_QTDDUP'
                             +',:P2T_ARRED'
                             +',:P2T_QTDDUP_ANT'
                             +',:P2T_PRAZOS'
                             +',:P2T_ESTNOR'
                             +',:P2T_EST_RESERVADO'
                             +',:P2T_ESTCONS'
                             +',:P2T_ESTTERC'
                             +',:P2T_ESTREV'
                             +',:P2T_TIPO_EVENTO'
                             +',:P2T_HISTORICO'
                             +',:P2T_HISTORICO_ANT'
                             +',:P2T_ITEM_ANT'
                             +',:P2T_CODPRO_ANT'
                             +',:P2T_QTD_ANT'
                             +',:P2T_DESC_CAB'
                             +',:P2T_CODFP'
                             +',:P2T_NOMFP'
                             +',:P2T_BAIXA'
                             +',:P2T_PED1_DESC_PERC01'
                             +',:P2T_PED1_DESC_PERC02'
                             +',:P2T_PED1_DESC_PERC03'
                             +',:P2T_PED1_DESC_PERC01_ANT'
                             +',:P2T_PED1_DESC_PERC02_ANT'
                             +',:P2T_PED1_DESC_PERC03_ANT'
                             +',:P2T_CODUSR'
                             +',:P2T_DATAPED'
                             +',:P2T_ALTDUP'
                             +',:P2T_CONTESP'
                             +',:P2T_TIPOPROD'
                             +',:P2T_CONS_PROPRIO'
                             +',:PT2_PRZNOVOS'
                             +',:P2T_TPPCO_ITEM '
                             +',:P2T_TPPCO_CAB '
                             +',:P2T_ICMSR_PRIMPARC '
                             +',:P2T_ICMSR_SOBLIQ'

                             +',:P2T_ICMS_ALIPI '
                             +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',:P2T_INSS_PRED '
                             +',:P2T_INSS_ALIQ '
                             +',:P2T_IRRF_PRED '
                             +',:P2T_IRRF_ALIQ '
                             +',:P2T_PROD_SERV'
                             +',:P2T_PCOMTEL '
                             +',:P2T_IMP_IMP_ALIQ '
                             +',:P2T_IMP_IMP_VBC '
                             +',:P2T_IMP_IMP_VALOR '
                             +',:P2T_IMP_IMP_VDESDPADU '
                             +',:P2T_IMP_IMP_VII '
                             +',:P2T_IMP_IMP_VIOF '

                             +',:P2T_IMP_TPVIATRANSP '
                             +',:P2T_IMP_VAFRMM '
                             +',:P2T_IMP_TPINTERMEDIARIO '
                             +',:P2T_IMP_CNPJ '
                             +',:P2T_IMP_UFTERCEIRO '
                             +',:P2T_IMP_NDRAW '
                             +',:P2T_EXP_NDRAW '
                             +',:P2T_EXP_NRE '
                             +',:P2T_EXP_CHNFE '
                             +',:P2T_EXP_QEXPORT'
                             +',:P2T_IMP_COT_DOLLAR '
                             +',:P2T_NF_IMP '
                             +',:P2T_IMP_PU_DOLLAR '
                             +',:P2T_PISCOFINS_VBC_IMP '
                             +',:P2T_RECDA '
                             +',:P2T_RECHONORARIOS '
                             +',:P2T_RECARMAZENAGEM '
                             +',:P2T_TITSEP_PROD_SERV '
                             +',:P2T_PERCDESC_AUT '
                             +',:P2T_PERCDESC_AUT_CODUSR '
                             +',:P2T_PERCDESC_AUT_DATHOR '

                             +',:P2T_CEST '
                             +',:P2T_CPUFDEST  '
                             +',:P2T_ICMSUFDEST '
                             +',:P2T_ICMSINTER  '
                             +',:P2T_ICMSINTERPART '
                             +',:P2T_DEDUZIR_ICMS_BC_PIS_COFINS'

                             +',:P2T_CBS_CST '
                             +',:P2T_CODCLASSTRIB '
                             +',:P2T_CBS_ALIQ '
                             +',:P2T_IBS_UF_ALIQ '
                             +',:P2T_IBS_MUN_ALIQ '
                             +',:P2T_INDOP_IBSCBS '
                             +',:P2T_CODTRIB_MUN '
                             +',:P2T_CODTRIB_NAC '


                             +',:P2T_CODNBS '
                             +',:P2T_CODCNAE '
                             +',:P2T_PCOFINS '
                             +',:P2T_PCSLL '
                             +',:P2T_PISSQN '
                             +',:P2T_PIR '


                             +')');


      Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
      Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
      if mped1_filial<1 then
         mped1_filial:=1;
      Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
      Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
      Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
      Query_Exe.ParamByName('P2T_ID_PED01_NEW').AsInteger  :=iif(mped1_codemp>100,mped1_id_new_100,mped1_id_new_000);;

      Query_Exe.ParamByName('P2T_ITEM').AsInteger          :=pTabela.FieldbyName('P2ITEM').Asinteger;
      Query_Exe.ParamByName('P2T_ID_PED02_NEW').AsInteger  :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ID_NEW_101').AsFloat
                                                            ,pTabela.FieldbyName('P2ID_NEW').AsFloat);
      Query_Exe.ParamByName('P2T_CFOP').AsInteger          :=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
      Query_Exe.ParamByName('P2T_CONS_PROPRIO').AsInteger  :=pTabela.FieldbyName('P2CONS_PROPRIO').Asinteger;
      Query_Exe.ParamByName('P2T_CFOP_SUBECF').AsInteger   :=pTabela.FieldbyName('P2CFOP_ECF').Asinteger;
      Query_Exe.ParamByName('P2T_MODBCST').AsInteger       :=pTabela.FieldbyName('P2MODBCST').Asinteger;
      Query_Exe.ParamByName('P2T_SITUACAO').AsInteger      :=pSituacao;
      Query_Exe.ParamByName('P2T_CODPRO').AsString         :=pTabela.FieldbyName('P2CODPRO').AsString;
      Query_Exe.ParamByName('P2T_NRECEITUARIO').AsString         :=pTabela.FieldbyName('P2NRECEITUARIO').AsString;

      Query_Exe.ParamByName('P2T_COMPRA_XPED').AsString     :=pTabela.FieldbyName('P2COMPRA_XPED').AsString;
      Query_Exe.ParamByName('P2T_COMPRA_NITEMPED').AsInteger:=pTabela.FieldbyName('P2COMPRA_NITEMPED').AsInteger;

      Query_Exe.ParamByName('P2T_NOMPRO_ORI').AsString     :=pTabela.FieldbyName('PDNOME').AsString;
      Query_Exe.ParamByName('P2T_QTD').AsFloat             :=pQtd_Cal;
      Query_Exe.ParamByName('P2T_DESC_PPR').AsFloat        :=pTabela.FieldbyName('P2DESCPR').AsFloat;


      Query_Exe.ParamByName('P2T_PRECO').AsFloat           :=pPrecoUnit_Cal;
      Query_Exe.ParamByName('P2T_DESC_REPAS').AsFloat      :=0;
      Query_Exe.ParamByName('P2T_LISTA').AsFloat           :=0;
      Query_Exe.ParamByName('P2T_PRECO_TAB').AsFloat       :=pPrecoTab_Cal;
      Query_Exe.ParamByName('P2T_PRECO_FPGTO').AsFloat     :=pPrecoTab_Cal;
      Query_Exe.ParamByName('P2T_PRECO_UCPR').AsFloat      :=pPrecoUCPR_Cal;
      Query_Exe.ParamByName('P2T_PRECO_CUS').AsFloat       :=pPrecoCus_Cal;
      Query_Exe.ParamByName('P2T_PRECO_MAXCONS').AsFloat   :=pPrecoMax_Cal;
      Query_Exe.ParamByName('P2T_IPI_PERC').AsFloat        :=pTabela.FieldbyName('P2IPI_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_ICMS_PERC').AsFloat       :=pTabela.FieldbyName('P2ICMS_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_ICMS_DESPERC').AsFloat    :=pTabela.FieldbyName('P2ICMS_DESPERC').AsFloat;
      Query_Exe.ParamByName('P2T_ICMS_DES').AsFloat        :=pTabela.FieldbyName('P2ICMS_DESPERC').AsFloat;
      Query_Exe.ParamByName('P2T_ICMS_DES').AsFloat        :=pTabela.FieldbyName('P2ICMS_DESPERC').AsFloat;
      Query_Exe.ParamByName('P2T_ALIQAPROXTRIB').AsFloat   :=pTabela.FieldbyName('P2ALIQAPROXTRIB').AsFloat;

      Query_Exe.ParamByName('P2T_COMISV01_PERC').AsFloat   :=pTabela.FieldbyName('P2PCOMIS').AsFloat;
      Query_Exe.ParamByName('P2T_PIS_PERC').AsFloat        :=pTabela.FieldbyName('P2PIS_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_PIS_CST').AsString        :=pTabela.FieldbyName('P2CST_PIS').AsString;
      Query_Exe.ParamByName('P2T_IPI_CST').AsString        :=pTabela.FieldbyName('P2CST_IPI').AsString;
      Query_Exe.ParamByName('P2T_COFINS_PERC').AsFloat     :=pTabela.FieldbyName('P2COFINS_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_COFINS_CST').AsString     :=pTabela.FieldbyName('P2CST_COFINS').AsString;
      Query_Exe.ParamByName('P2T_DESCFIN_PERC').AsFloat    :=pTabela.FieldbyName('P2DESCFIN_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_ACRES_PERC').AsFloat      :=0;
      Query_Exe.ParamByName('P2T_CODVEN').AsFloat          :=pTabela.FieldbyName('P2CODVEN').AsFloat;
      Query_Exe.ParamByName('P2T_MOTIVODESONERACAO').AsFloat          :=pTabela.FieldbyName('P2MOTIVODESONERACAO').AsFloat;

      Query_Exe.ParamByName('P2T_ICMS_PRED').AsFloat       :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ICMS_PPRED_101').AsFloat
                                                            ,pTabela.FieldbyName('P2ICMS_PPRED').AsFloat);
      Query_Exe.ParamByName('P2T_ST_IVA').AsFloat          :=
                            iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_IVA_101').AsFloat,pTabela.FieldbyName('P2ST_IVA').AsFloat);

      Query_Exe.ParamByName('P2T_ST_PREDUT').AsFloat       :=
                      iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_REDUT_101').AsFloat,pTabela.FieldbyName('P2ST_REDUT').AsFloat);

      Query_Exe.ParamByName('P2T_ST_ICMSRED').AsFloat      :=
                      iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_REDUT_101').AsFloat,pTabela.FieldbyName('P2ST_REDUT').AsFloat);
      Query_Exe.ParamByName('P2T_ST_ICMSDEB').AsFloat      :=
                      iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_ICMSDEB_101').AsFloat,pTabela.FieldbyName('P2ST_ICMSDEB').AsFloat);

      Query_Exe.ParamByName('P2T_ST_ICMSCRED').AsFloat     :=
                      iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_ICMSCRED_101').AsFloat,pTabela.FieldbyName('P2ST_ICMSCRED').AsFloat);

      Query_Exe.ParamByName('P2T_ICMSSN_PERC').AsFloat     := pTabela.FieldbyName('P2ICMSSN_PERC').AsFloat;

      Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
      Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
      Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
      Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
      Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
      Query_Exe.ParamByName('P2T_CST').AsString            := pTabela.FieldbyName('P2CST').AsString;
      Query_Exe.ParamByName('P2T_CBENEF').AsString         := pTabela.FieldbyName('P2CBENEF').AsString;
      Query_Exe.ParamByName('P2T_AMBIENTE').AsString       := pTabela.FieldbyName('P2AMBIENTE').AsString;
      Query_Exe.ParamByName('P2T_DESCCOMPL').AsString      := pTabela.FieldbyName('P2DESC_COMP').AsString;
      Query_Exe.ParamByName('P2T_CSOSN').AsString          := pTabela.FieldbyName('P2CSOSN').AsString;
      Query_Exe.ParamByName('P2T_IRRF_PERC').Value         := pTabela.FieldbyName('P2IRRF_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_CSLL_PERC').Value         := pTabela.FieldbyName('P2CSLL_PERC').AsFloat;


      Query_Exe.ParamByName('P2T_CSOSN_ORI').AsString      := pTabela.FieldbyName('P2CSOSN_ORI').AsString;
      Query_Exe.ParamByName('P2T_PROMOCAO').AsString       := pTabela.FieldbyName('P2PROMOCAO').AsString;
      Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
      Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

      Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=mPed1_QtdParc_ant;
      Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;
      if p2Estoque=2 then
         begin
         Query_Exe.ParamByName('P2T_ESTNOR').AsString   :='N';
         Query_Exe.ParamByName('P2T_ESTCONS').AsString  :='N';
         Query_Exe.ParamByName('P2T_ESTTERC').AsString  :='N';
         Query_Exe.ParamByName('P2T_ESTREV').AsString   :='N';
         Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
         end
      else
         begin
         Query_Exe.ParamByName('P2T_ESTNOR').AsString        :=mPd_EstNor;
         Query_Exe.ParamByName('P2T_ESTCONS').AsString       :=mPd_EstCons;
         Query_Exe.ParamByName('P2T_ESTTERC').AsString       :=mPd_EstTerc;
         Query_Exe.ParamByName('P2T_ESTREV').AsString        :=mPd_EstVenda;
         Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';

         end;
      if (pTipoEve=3) then
         begin
         if mpd_estnor='E' then
            Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='S'
         else if mpd_estnor='S' then
            Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='E';
         end;

      Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger                :=0;

      Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString            :='';
      Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString       :=pCodPro_ant;
      Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat           :=pQtd_Ant;

      Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
      Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
      Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

      Query_Exe.ParamByName('P2T_DESC_PERC01').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC01').AsFloat;

      Query_Exe.ParamByName('P2T_DESC_PERC02').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC02').AsFloat;
      Query_Exe.ParamByName('P2T_DESC_PERC03').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC03').AsFloat;
      Query_Exe.ParamByName('P2T_DESC_VALOR').AsFloat        :=pTabela.FieldbyName('P2VALDES').AsFloat;
      Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;


      Query_Exe.ParamByName('P2T_CODUSR').AsInteger              := mPed1_CodUsr_Dig;
      Query_Exe.ParamByName('P2T_DATAPED').AsDateTime            := mPed1_Datap;

   //LINDOMAR
      if pItem_ant=0 then
         begin
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=0;
         Query_Exe.ParamByName('P2T_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
         end
      else
         begin
         if pTabela.FieldbyName('P2CODPRO').AsString<>pcodpro_ant then
            begin
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodpro_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
            Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pTabela.FieldbyName('P2CODPRO').AsString+'. Empresa: '+IntToStr(mPed1_Codemp);
            end
         else if pQtd_Cal<>pQtd_Ant then
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mCasQtd, pqtd_Cal)+'. Empresa: '+IntToStr(mPed1_Codemp)
         else
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=1;
         Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger:=pItem_ant;
         Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString:=pcodpro_ant;
         Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat:=pQtd_Ant;
         end;
      if (pTipoEve=3) or (pTipoEve=2) then
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

      Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
      Query_Exe.ParamByName('P2T_CONTESP').AsInteger    := pTabela.FieldbyName('P2CONTESP').AsInteger;
      if Log_TipoLote=1 then
         Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 3
      else
         Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 0;

//      SHOWMESSAGE(inttostr(LENGTH(mPed1_PrzNovos_101)));
      if mPed1_Codemp>100 then
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
      else
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_001);
      Query_Exe.ParamByName('P2T_TPPCO_ITEM').Asinteger         :=pTabela.FieldbyName('P2TIPO_PCO').AsInteger;
      Query_Exe.ParamByName('P2T_TPPCO_CAB').Asinteger         :=mped1_tppco;
      Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger:=mped1_ICMSR_PRIMPARC;
      Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;


      Query_Exe.ParamByName('P2T_ICMS_ALIPI').AsFloat    :=pTabela.FieldbyName('P2ICMS_ALIPI').AsFloat;
      Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;

      Query_Exe.ParamByName('P2T_PISSQN').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_INSS_PRED').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_INSS_ALIQ').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_IRRF_PRED').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_IRRF_ALIQ').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger   :=pProdServ;

      Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;


      Query_Exe.ParamByName('P2T_IMP_IMP_VBC').AsFloat      :=pTabela.FieldbyName('P2IMP_IMP_VBC').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_IMP_ALIQ').AsFloat     :=pTabela.FieldbyName('P2IMP_IMP_ALIQ').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_IMP_VALOR').AsFloat    :=pTabela.FieldbyName('P2IMP_IMP_VALOR').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_IMP_VDESDPADU').AsFloat:=pTabela.FieldbyName('P2IMP_IMP_VDESDPADU').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_IMP_VII').AsFloat      :=pTabela.FieldbyName('P2IMP_IMP_VII').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_IMP_VIOF').AsFloat     :=pTabela.FieldbyName('P2IMP_IMP_VIOF').AsFloat;



      Query_Exe.ParamByName('P2T_IMP_TPVIATRANSP').AsInteger     :=pTabela.FieldbyName('P2IMP_TPVIATRANSP').AsInteger;
      Query_Exe.ParamByName('P2T_IMP_VAFRMM').AsFloat            :=pTabela.FieldbyName('P2IMP_VAFRMM').AsFloat;
      Query_Exe.ParamByName('P2T_IMP_TPINTERMEDIARIO').AsInteger :=pTabela.FieldbyName('P2IMP_TPINTERMEDIARIO').AsInteger;
      Query_Exe.ParamByName('P2T_IMP_CNPJ').Asstring             :=pTabela.FieldbyName('P2IMP_CNPJ').Asstring;
      Query_Exe.ParamByName('P2T_IMP_UFTERCEIRO').AsString       :=pTabela.FieldbyName('P2IMP_UFTERCEIRO').Asstring;
      Query_Exe.ParamByName('P2T_IMP_NDRAW').AsInteger           :=pTabela.FieldbyName('P2IMP_NDRAW').AsInteger;
      Query_Exe.ParamByName('P2T_EXP_NDRAW').AsInteger           :=pTabela.FieldbyName('P2EXP_NDRAW').AsInteger;
      Query_Exe.ParamByName('P2T_EXP_NRE').AsInteger             :=pTabela.FieldbyName('P2EXP_NRE').AsInteger;
      Query_Exe.ParamByName('P2T_EXP_CHNFE').AsString            :=pTabela.FieldbyName('P2EXP_CHNFE').AsString;
      Query_Exe.ParamByName('P2T_EXP_NDRAW').AsInteger           :=pTabela.FieldbyName('P2EXP_NDRAW').AsInteger;
      Query_Exe.ParamByName('P2T_EXP_QEXPORT').AsInteger         :=pTabela.FieldbyName('P2EXP_QEXPORT').AsInteger;
      Query_Exe.ParamByName('P2T_IMP_COT_DOLLAR').AsFloat        :=mPed1_imp_cot_dollar;
      Query_Exe.ParamByName('P2T_NF_IMP').Asstring               :=mPed1_nf_imp;
      Query_Exe.ParamByName('P2T_IMP_PU_DOLLAR').AsFloat         :=pTabela.FieldbyName('P2IMP_PU_DOLLAR').AsFloat;
      Query_Exe.ParamByName('P2T_PISCOFINS_VBC_IMP').AsFloat         :=pTabela.FieldbyName('P2PISCOFINS_VBC_IMP').AsFloat;
      Query_Exe.ParamByName('P2T_RECDA').AsFloat                 :=mPed1_RECDA;
      Query_Exe.ParamByName('P2T_RECHONORARIOS').AsFloat         :=mPed1_RECHONORARIOS;
      Query_Exe.ParamByName('P2T_RECARMAZENAGEM').AsFloat         :=mPed1_RECARMAZENAGEM;

      Query_exe.ParambyName('P2T_TITSEP_PROD_SERV').AsFloat       :=mPed1_P1TITSEP_PROD_SERV;

      Query_Exe.ParamByName('P2T_PERCDESC_AUT').AsFloat                :=pTabela.FieldByName('P2PERCDESC_AUT').AsFloat;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_CODUSR').AsFloat         :=pTabela.FieldByName('P2PERCDESC_AUT_CODUSR').AsFloat;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_DATHOR').Asdatetime      :=pTabela.FieldByName('P2PERCDESC_AUT_DATHOR').AsDatetime;

      query_exe.ParamByName('P2T_CEST').AsString                       :=pTabela.FieldByName('P2CEST').AsString;
      query_exe.ParamByName('P2T_CPUFDEST').AsFloat                    :=pTabela.FieldByName('P2CPUFDEST').AsFloat;
      query_exe.ParamByName('P2T_ICMSUFDEST').AsFloat                  :=pTabela.FieldByName('P2ICMSUFDEST').AsFloat;
      query_exe.ParamByName('P2T_ICMSINTER').AsFloat                   :=pTabela.FieldByName('P2ICMSINTER').AsFloat;
      query_exe.ParamByName('P2T_ICMSINTERPART').AsFloat               :=pTabela.FieldByName('P2ICMSINTERPART').AsFloat;
      Query_Exe.ParamByName('P2T_DEDUZIR_ICMS_BC_PIS_COFINS').AsFloat  :=mPed1_DEDUZIR_ICMS_BC_PIS_COFINS;
      Query_Exe.ParamByName('P2T_CBS_CST').AsString                    :=pTabela.FieldByName('P2CBS_CST').AsString;
      Query_Exe.ParamByName('P2T_CODCLASSTRIB').AsString               :=pTabela.FieldByName('P2CODCLASSTRIB').AsString;
      query_exe.ParamByName('P2T_CBS_ALIQ').AsFloat                    :=pTabela.FieldByName('P2CBS_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_IBS_UF_ALIQ').AsFloat                 :=pTabela.FieldByName('P2IBS_UF_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_IBS_MUN_ALIQ').AsFloat                :=pTabela.FieldByName('P2IBS_MUN_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_INDOP_IBSCBS').AsString               :='';

      Query_Exe.ParamByName('P2T_CODTRIB_MUN').AsString                     :='';
      Query_Exe.ParamByName('P2T_CODTRIB_NAC').AsString                     :='';
      Query_Exe.ParamByName('P2T_CODNBS').AsString                     :='';
      Query_Exe.ParamByName('P2T_CODCNAE').AsString                     :='';
      query_exe.ParamByName('P2T_PCOFINS').AsFloat                     :=0;
      query_exe.ParamByName('P2T_PCSLL').AsFloat                       :=0;
      query_exe.ParamByName('P2T_PISSQN').AsFloat                      :=0;
      query_exe.ParamByName('P2T_PIR').AsFloat                         :=0;


      end
// inicio servico

   else if pProdServ=1 then
      begin
      Query_Exe.Close;
      Query_Exe.Sql.Clear;
      Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                             +'('
                             +'P2T_CODEMP'
                             +',P2T_CODEMP_FILIAL'
                             +',P2T_FILIAL'
                             +',P2T_CHAVE'
                             +',P2T_CHAVE_ANO'
                             +',P2T_ID_PED01_NEW'
                             +',P2T_ITEM'
                             +',P2T_ID_PED02_NEW'
                             +',P2T_CFOP'
                             +',P2T_CFOP_SUBECF'
                             +',P2T_MODBCST'
                             +',P2T_SITUACAO'
                             +',P2T_CODPRO'
                             +',P2T_NRECEITUARIO'

                             +',P2T_NOMPRO_ORI'
                             +',P2T_QTD'
                             +',P2T_DESC_PERC01'
                             +',P2T_DESC_PERC02'
                             +',P2T_DESC_PERC03'
                             +',P2T_DESC_VALOR'
                             +',P2T_DESC_PPR'
                             +',P2T_PRECO'
                             +',P2T_DESC_REPAS'
                             +',P2T_LISTA'
                             +',P2T_PRECO_TAB'
                             +',P2T_PRECO_FPGTO'
                             +',P2T_PRECO_UCPR'
                             +',P2T_PRECO_CUS'
                             +',P2T_PRECO_MAXCONS'
                             +',P2T_IPI_PERC'
                             +',P2T_ICMS_PERC'
                             +',P2T_ICMS_DESPERC'
                             +',P2T_ICMS_DES'
                             +',P2T_ALIQAPROXTRIB'
                             +',P2T_COMISV01_PERC'
                             +',P2T_PIS_PERC'
                             +',P2T_PIS_CST'
                             +',P2T_IPI_CST'
                             +',P2T_COFINS_PERC'
                             +',P2T_COFINS_CST'
                             +',P2T_DESCFIN_PERC'
                             +',P2T_ACRES_PERC'
                             +',P2T_CODVEN'
                             +',P2T_MOTIVODESONERACAO'
                             +',P2T_ICMS_PRED'
                             +',P2T_ST_IVA'
                             +',P2T_ST_PREDUT'
                             +',P2T_ST_ICMSRED'
                             +',P2T_ST_ICMSDEB'
                             +',P2T_ST_ICMSCRED'
                             +',P2T_ICMSSN_PERC'
                             +',P2T_PED1_DESCRAT'
                             +',P2T_PED1_ACRERAT'
                             +',P2T_PED1_VALSEG'
                             +',P2T_PED1_VALFRE'
                             +',P2T_PED1_TARBAN'
                             +',P2T_PED1_DESPACES'
                             +',P2T_CST'
                             +',P2T_CBENEF'
                             +',P2T_AMBIENTE'
                             +',P2T_DESCCOMPL'
                             +',P2T_CSOSN'
                             +',P2T_CSOSN_ORI'
                             +',P2T_IRRF_PERC '
                             +',P2T_CSLL_PERC '

                             +',P2T_PROMOCAO'
                             +',P2T_QTDDUP'
                             +',P2T_ARRED'
                             +',P2T_QTDDUP_ANT'
                             +',P2T_PRAZOS'
                             +',P2T_ESTNOR'
                             +',P2T_EST_RESERVADO'
                             +',P2T_ESTCONS'
                             +',P2T_ESTTERC'
                             +',P2T_ESTREV'
                             +',P2T_TIPO_EVENTO'
                             +',P2T_HISTORICO'
                             +',P2T_HISTORICO_ANT'
                             +',P2T_ITEM_ANT'
                             +',P2T_CODPRO_ANT'
                             +',P2T_QTD_ANT'
                             +',P2T_DESC_CAB'
                             +',P2T_CODFP'
                             +',P2T_NOMFP'
                             +',P2T_BAIXA'
                             +',P2T_PED1_DESC_PERC01'
                             +',P2T_PED1_DESC_PERC02'
                             +',P2T_PED1_DESC_PERC03'
                             +',P2T_PED1_DESC_PERC01_ANT'
                             +',P2T_PED1_DESC_PERC02_ANT'
                             +',P2T_PED1_DESC_PERC03_ANT'
                             +',P2T_CODUSR'
                             +',P2T_DATAPED'
                             +',P2T_ALTDUP'
                             +',P2T_CONTESP'
                             +',P2T_TIPOPROD'
                             +',P2T_CONS_PROPRIO'
                             +',PT2_PRZNOVOS'
                             +',P2T_TPPCO_ITEM '
                             +',P2T_TPPCO_CAB '
                             +',P2T_ICMSR_PRIMPARC '
                             +',P2T_ICMSR_SOBLIQ'


                             +',P2T_ICMS_ALIPI '
                             +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',P2T_INSS_PRED '
                             +',P2T_INSS_ALIQ '
                             +',P2T_IRRF_PRED '
                             +',P2T_IRRF_ALIQ '
                             +',P2T_PROD_SERV'
                             +',P2T_PCOMTEL '
                             +',P2T_IMP_COT_DOLLAR '
                             +',P2T_NF_IMP '
                             +',P2T_IMP_PU_DOLLAR '
                             +',P2T_PISCOFINS_VBC_IMP '
                             +',P2T_RECDA '
                             +',P2T_RECHONORARIOS '
                             +',P2T_RECARMAZENAGEM '
                             +',P2T_TITSEP_PROD_SERV '

                             +',P2T_PERCDESC_AUT '
                             +',P2T_PERCDESC_AUT_CODUSR '
                             +',P2T_PERCDESC_AUT_DATHOR '

                             +',P2T_CEST '
                             +',P2T_CPUFDEST  '
                             +',P2T_ICMSUFDEST '
                             +',P2T_ICMSINTER  '
                             +',P2T_ICMSINTERPART '
                             +',P2T_DEDUZIR_ICMS_BC_PIS_COFINS'

                             +',P2T_CBS_CST '
                             +',P2T_CODCLASSTRIB '
                             +',P2T_CBS_ALIQ '
                             +',P2T_IBS_UF_ALIQ '
                             +',P2T_IBS_MUN_ALIQ '
                             +',P2T_INDOP_IBSCBS '

                             +',P2T_CODTRIB_MUN '
                             +',P2T_CODTRIB_NAC '

                             +',P2T_CODNBS '
                             +',P2T_CODCNAE '
                             +',P2T_PCOFINS '
                             +',P2T_PCSLL '
                             +',P2T_PISSQN '
                             +',P2T_PIR '


                            +') values ('
                             +':P2T_CODEMP'
                             +',:P2T_CODEMP_FILIAL'
                             +',:P2T_FILIAL'
                             +',:P2T_CHAVE'
                             +',:P2T_CHAVE_ANO'
                             +',:P2T_ID_PED01_NEW'
                             +',:P2T_ITEM'
                             +',:P2T_ID_PED02_NEW'
                             +',:P2T_CFOP'
                             +',:P2T_CFOP_SUBECF'
                             +',:P2T_MODBCST'
                             +',:P2T_SITUACAO'
                             +',:P2T_CODPRO'
                             +',:P2T_NRECEITUARIO'

                             +',:P2T_NOMPRO_ORI'
                             +',:P2T_QTD'
                             +',:P2T_DESC_PERC01'
                             +',:P2T_DESC_PERC02'
                             +',:P2T_DESC_PERC03'
                             +',:P2T_DESC_VALOR'
                             +',:P2T_DESC_PPR'
                             +',:P2T_PRECO'
                             +',:P2T_DESC_REPAS'
                             +',:P2T_LISTA'
                             +',:P2T_PRECO_TAB'
                             +',:P2T_PRECO_FPGTO'
                             +',:P2T_PRECO_UCPR'
                             +',:P2T_PRECO_CUS'
                             +',:P2T_PRECO_MAXCONS'
                             +',:P2T_IPI_PERC'
                             +',:P2T_ICMS_PERC'
                             +',:P2T_ICMS_DESPERC'
                             +',:P2T_ICMS_DES'
                             +',:P2T_ALIQAPROXTRIB'
                             +',:P2T_COMISV01_PERC'
                             +',:P2T_PIS_PERC'
                             +',:P2T_PIS_CST'
                             +',:P2T_IPI_CST'
                             +',:P2T_COFINS_PERC'
                             +',:P2T_COFINS_CST'
                             +',:P2T_DESCFIN_PERC'
                             +',:P2T_ACRES_PERC'
                             +',:P2T_CODVEN'
                             +',:P2T_MOTIVODESONERACAO'
                             +',:P2T_ICMS_PRED'
                             +',:P2T_ST_IVA'
                             +',:P2T_ST_PREDUT'
                             +',:P2T_ST_ICMSRED'
                             +',:P2T_ST_ICMSDEB'
                             +',:P2T_ST_ICMSCRED'
                             +',:P2T_ICMSSN_PERC'
                             +',:P2T_PED1_DESCRAT'
                             +',:P2T_PED1_ACRERAT'
                             +',:P2T_PED1_VALSEG'
                             +',:P2T_PED1_VALFRE'
                             +',:P2T_PED1_TARBAN'
                             +',:P2T_PED1_DESPACES'
                             +',:P2T_CST'
                             +',:P2T_CBENEF'
                             +',:P2T_AMBIENTE'
                             +',:P2T_DESCCOMPL'
                             +',:P2T_CSOSN'
                             +',:P2T_CSOSN_ORI'
                             +',:P2T_IRRF_PERC '
                             +',:P2T_CSLL_PERC '
                             +',:P2T_PROMOCAO'
                             +',:P2T_QTDDUP'
                             +',:P2T_ARRED'

                             +',:P2T_QTDDUP_ANT'
                             +',:P2T_PRAZOS'
                             +',:P2T_ESTNOR'
                             +',:P2T_EST_RESERVADO '
                             +',:P2T_ESTCONS'
                             +',:P2T_ESTTERC'
                             +',:P2T_ESTREV'
                             +',:P2T_TIPO_EVENTO'
                             +',:P2T_HISTORICO'
                             +',:P2T_HISTORICO_ANT'
                             +',:P2T_ITEM_ANT'
                             +',:P2T_CODPRO_ANT'
                             +',:P2T_QTD_ANT'
                             +',:P2T_DESC_CAB'
                             +',:P2T_CODFP'
                             +',:P2T_NOMFP'
                             +',:P2T_BAIXA'
                             +',:P2T_PED1_DESC_PERC01'
                             +',:P2T_PED1_DESC_PERC02'
                             +',:P2T_PED1_DESC_PERC03'
                             +',:P2T_PED1_DESC_PERC01_ANT'
                             +',:P2T_PED1_DESC_PERC02_ANT'
                             +',:P2T_PED1_DESC_PERC03_ANT'
                             +',:P2T_CODUSR'
                             +',:P2T_DATAPED'
                             +',:P2T_ALTDUP'
                             +',:P2T_CONTESP'
                             +',:P2T_TIPOPROD'
                             +',:P2T_CONS_PROPRIO'
                             +',:PT2_PRZNOVOS'
                             +',:P2T_TPPCO_ITEM '
                             +',:P2T_TPPCO_CAB '
                             +',:P2T_ICMSR_PRIMPARC '
                             +',:P2T_ICMSR_SOBLIQ'
                             +',:P2T_ICMS_ALIPI '
                             +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                             +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                             +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                             +',:P2T_INSS_PRED '
                             +',:P2T_INSS_ALIQ '
                             +',:P2T_IRRF_PRED '
                             +',:P2T_IRRF_ALIQ '
                             +',:P2T_PROD_SERV'
                             +',:P2T_PCOMTEL '
                             +',:P2T_IMP_COT_DOLLAR '
                             +',:P2T_NF_IMP '
                             +',:P2T_IMP_PU_DOLLAR '
                             +',:P2T_PISCOFINS_VBC_IMP '
                             +',:P2T_RECDA '
                             +',:P2T_RECHONORARIOS '
                             +',:P2T_RECARMAZENAGEM '
                             +',:P2T_TITSEP_PROD_SERV '

                             +',:P2T_PERCDESC_AUT '
                             +',:P2T_PERCDESC_AUT_CODUSR '
                             +',:P2T_PERCDESC_AUT_DATHOR '

                             +',:P2T_CEST '
                             +',:P2T_CPUFDEST  '
                             +',:P2T_ICMSUFDEST '
                             +',:P2T_ICMSINTER  '
                             +',:P2T_ICMSINTERPART '
                             +',:P2T_DEDUZIR_ICMS_BC_PIS_COFINS'
                             +',:P2T_CBS_CST '
                             +',:P2T_CODCLASSTRIB '
                             +',:P2T_CBS_ALIQ '
                             +',:P2T_IBS_UF_ALIQ '
                             +',:P2T_IBS_MUN_ALIQ '
                             +',:P2T_INDOP_IBSCBS '
                             +',:P2T_CODTRIB_MUN '
                             +',:P2T_CODTRIB_NAC '

                             +',:P2T_CODNBS '
                             +',:P2T_CODCNAE '
                             +',:P2T_PCOFINS '
                             +',:P2T_PCSLL '
                             +',:P2T_PISSQN '
                             +',:P2T_PIR '



                             +')');


      Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
      Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
      if mped1_filial<1 then
         mped1_filial:=1;
      Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
      Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
      Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
      Query_Exe.ParamByName('P2T_ID_PED01_NEW').AsInteger  :=iif(mped1_codemp>100,mped1_id_new_100,mped1_id_new_000);;
      Query_Exe.ParamByName('P2T_ITEM').AsInteger          :=pTabela.FieldbyName('P2SITEM').Asinteger;
      Query_Exe.ParamByName('P2T_ID_PED02_NEW').AsInteger  :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2SID_NEW_101').AsFloat
                                                            ,pTabela.FieldbyName('P2SID_NEW').AsFloat);


      Query_Exe.ParamByName('P2T_CFOP').AsInteger          :=pTabela.FieldbyName('P2SCFOP_NF').Asinteger;
      Query_Exe.ParamByName('P2T_CONS_PROPRIO').AsInteger  :=0;
      Query_Exe.ParamByName('P2T_CFOP_SUBECF').AsInteger   :=pTabela.FieldbyName('P2SCFOP_ECF').Asinteger;
      Query_Exe.ParamByName('P2T_MODBCST').AsInteger       :=0;
      Query_Exe.ParamByName('P2T_SITUACAO').AsInteger      :=pSituacao;
      Query_Exe.ParamByName('P2T_CODPRO').AsString         :=pTabela.FieldbyName('P2SCODSER').AsString;
      Query_Exe.ParamByName('P2T_NRECEITUARIO').AsString   :='';


      Query_Exe.ParamByName('P2T_NOMPRO_ORI').AsString     :=pTabela.FieldbyName('PDNOME').AsString;
      Query_Exe.ParamByName('P2T_QTD').AsFloat             :=pQtd_Cal;
      Query_Exe.ParamByName('P2T_DESC_PPR').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_PRECO').AsFloat           :=pPrecoUnit_Cal;
      Query_Exe.ParamByName('P2T_DESC_REPAS').AsFloat      :=0;
      Query_Exe.ParamByName('P2T_LISTA').AsFloat           :=0;
      Query_Exe.ParamByName('P2T_PRECO_TAB').AsFloat       :=pPrecoTab_Cal;
      Query_Exe.ParamByName('P2T_PRECO_FPGTO').AsFloat     :=pPrecoTab_Cal;
      Query_Exe.ParamByName('P2T_PRECO_UCPR').AsFloat      :=pPrecoUCPR_Cal;
      Query_Exe.ParamByName('P2T_PRECO_CUS').AsFloat       :=pPrecoCus_Cal;
      Query_Exe.ParamByName('P2T_PRECO_MAXCONS').AsFloat   :=pPrecoMax_Cal;
      Query_Exe.ParamByName('P2T_IPI_PERC').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_ICMS_PERC').AsFloat       :=0;
      Query_Exe.ParamByName('P2T_ICMS_DESPERC').AsFloat    :=0;
      Query_Exe.ParamByName('P2T_ICMS_DES').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_ALIQAPROXTRIB').AsFloat   :=0;
      Query_Exe.ParamByName('P2T_COMISV01_PERC').AsFloat   :=pTabela.FieldbyName('P2SPCOMIS').AsFloat;;
      Query_Exe.ParamByName('P2T_PIS_PERC').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_PIS_CST').AsString        :=' ';
      Query_Exe.ParamByName('P2T_IPI_CST').AsString        :=' ';
      Query_Exe.ParamByName('P2T_COFINS_PERC').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_COFINS_CST').AsString     :=' ';
      Query_Exe.ParamByName('P2T_DESCFIN_PERC').AsFloat    :=pTabela.FieldbyName('P2SDESCFIN_PERC').AsFloat;
      Query_Exe.ParamByName('P2T_ACRES_PERC').AsFloat      :=0;
      Query_Exe.ParamByName('P2T_CODVEN').AsFloat          :=pTabela.FieldbyName('P2SCODVEN').AsFloat;
      Query_Exe.ParamByName('P2T_MOTIVODESONERACAO').AsFloat          :=0;

      Query_Exe.ParamByName('P2T_ICMS_PRED').AsFloat       :=0;
      Query_Exe.ParamByName('P2T_ST_IVA').AsFloat          :=0;

      Query_Exe.ParamByName('P2T_ST_PREDUT').AsFloat       :=0;

      Query_Exe.ParamByName('P2T_ST_ICMSRED').AsFloat      :=0;
      Query_Exe.ParamByName('P2T_ST_ICMSDEB').AsFloat      :=0;

      Query_Exe.ParamByName('P2T_ST_ICMSCRED').AsFloat     :=0;

      Query_Exe.ParamByName('P2T_ICMSSN_PERC').AsFloat     :=0;

      Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
      Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
      Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
      Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
      Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
      Query_Exe.ParamByName('P2T_CST').AsString            := pTabela.FieldbyName('P2SCST').AsString;
      Query_Exe.ParamByName('P2T_CBENEF').AsString         := '';

      Query_Exe.ParamByName('P2T_AMBIENTE').AsString       := ' ';
      Query_Exe.ParamByName('P2T_DESCCOMPL').AsString      := pTabela.FieldbyName('P2SDESC_COMP').AsString;
      Query_Exe.ParamByName('P2T_IRRF_PERC').Value         := 0;
      Query_Exe.ParamByName('P2T_CSLL_PERC').Value         := 0;

      Query_Exe.ParamByName('P2T_CSOSN').AsString          := pTabela.FieldbyName('P2SCSOSN').AsString;
      Query_Exe.ParamByName('P2T_CSOSN_ORI').AsString      := pTabela.FieldbyName('P2SCSOSN_ORI').AsString;
      Query_Exe.ParamByName('P2T_PROMOCAO').AsString       := ' ';
      Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
      Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

      Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=mPed1_QtdParc_ant;
      Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;
      if p2Estoque=2 then
         begin
         Query_Exe.ParamByName('P2T_ESTNOR').AsString   :='N';
         Query_Exe.ParamByName('P2T_ESTCONS').AsString  :='N';
         Query_Exe.ParamByName('P2T_ESTTERC').AsString  :='N';
         Query_Exe.ParamByName('P2T_ESTREV').AsString   :='N';
         Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
         end
      else
         begin
         Query_Exe.ParamByName('P2T_ESTNOR').AsString        :=mPd_EstNor;
         Query_Exe.ParamByName('P2T_ESTCONS').AsString       :=mPd_EstCons;
         Query_Exe.ParamByName('P2T_ESTTERC').AsString       :=mPd_EstTerc;
         Query_Exe.ParamByName('P2T_ESTREV').AsString        :=mPd_EstVenda;
         Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
         end;

      if (pTipoEve=3) then
         begin
         if mpd_estnor='E' then
            Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='S'
         else if mpd_estnor='S' then
            Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='E';
         end;


      Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger                :=0;
      Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString            :='';
      Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString               :=pCodPro_ant;
      Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat                   :=pQtd_Ant;

      Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
      Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
      Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
      Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

      Query_Exe.ParamByName('P2T_DESC_PERC01').AsFloat       :=pTabela.FieldbyName('P2SPDESC01').AsFloat;

      Query_Exe.ParamByName('P2T_DESC_PERC02').AsFloat       :=pTabela.FieldbyName('P2SPDESC02').AsFloat;
      Query_Exe.ParamByName('P2T_DESC_PERC03').AsFloat       :=pTabela.FieldbyName('P2SPDESC03').AsFloat;
      Query_Exe.ParamByName('P2T_DESC_VALOR').AsFloat        :=0;
      Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;


      Query_Exe.ParamByName('P2T_CODUSR').AsInteger              := mPed1_CodUsr_Dig;
      Query_Exe.ParamByName('P2T_DATAPED').AsDateTime            := mPed1_Datap;



      Query_Exe.ParamByName('P2T_CBS_CST').AsString                    :=pTabela.FieldByName('P2SCBS_CST').AsString;
      Query_Exe.ParamByName('P2T_PIS_CST').AsString                    :=pTabela.FieldByName('P2SCST_PIS').AsString;
      Query_Exe.ParamByName('P2T_CODCLASSTRIB').AsString               :=pTabela.FieldByName('P2SCODCLASSTRIB').AsString;
      query_exe.ParamByName('P2T_CBS_ALIQ').AsFloat                    :=pTabela.FieldByName('P2SCBS_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_IBS_UF_ALIQ').AsFloat                 :=pTabela.FieldByName('P2SIBS_UF_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_IBS_MUN_ALIQ').AsFloat                :=pTabela.FieldByName('P2SIBS_MUN_ALIQ').AsFloat;
      query_exe.ParamByName('P2T_INDOP_IBSCBS').AsString                :=pTabela.FieldByName('P2SINDOP_IBSCBS').AsString;


      Query_Exe.ParamByName('P2T_CODNBS').AsString                    :=pTabela.FieldByName('P2SCODNBS').AsString;
      Query_Exe.ParamByName('P2T_CODCNAE').AsString                    :=pTabela.FieldByName('P2SCODCNAE').AsString;
      Query_Exe.ParamByName('P2T_CODTRIB_MUN').AsString                    :=pTabela.FieldByName('P2SCODTRIB_MUN').AsString;
      Query_Exe.ParamByName('P2T_CODTRIB_NAC').AsString                    :=pTabela.FieldByName('P2SCODTRIB_NAC').AsString;
      query_exe.ParamByName('P2T_PCOFINS').AsFloat                :=pTabela.FieldByName('P2SPCOFINS').AsFloat;
      query_exe.ParamByName('P2T_PCSLL').AsFloat                :=pTabela.FieldByName('P2SPCSLL').AsFloat;
      query_exe.ParamByName('P2T_PISSQN').AsFloat                :=pTabela.FieldByName('P2SPISSQN').AsFloat;
      query_exe.ParamByName('P2T_PIR').AsFloat                :=pTabela.FieldByName('P2SPIR').AsFloat;




   //LINDOMAR
      if pItem_ant=0 then
         begin
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=0;
         Query_Exe.ParamByName('P2T_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
         end
      else
         begin
         if pTabela.FieldbyName('P2SCODSER').AsString<>pcodpro_ant then
            begin
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodpro_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
            Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pTabela.FieldbyName('P2SCODSER').AsString+'. Empresa: '+IntToStr(mPed1_Codemp);
            end
         else if pQtd_Cal<>pQtd_Ant then
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mCasQtd, pqtd_Cal)+'. Empresa: '+IntToStr(mPed1_Codemp)
         else
            Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=1;
         Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger:=pItem_ant;
         Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString:=iif(pcodpro_ant='','0',pcodpro_ant);
         Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat:=pQtd_Ant;
         end;
      if (pTipoEve=3) or (pTipoEve=2) then
         Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

      Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
      Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
      Query_Exe.ParamByName('P2T_CONTESP').AsInteger    :=0;
      if Log_TipoLote=1 then
         Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 3
      else
         Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 0;

      if mPed1_Codemp>100 then
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
      else
         Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_001);
      Query_Exe.ParamByName('P2T_TPPCO_ITEM').Asinteger         :=0;
      Query_Exe.ParamByName('P2T_TPPCO_CAB').Asinteger         :=mped1_tppco;
      Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger    :=mped1_ICMSR_PRIMPARC;
      Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;

      Query_Exe.ParamByName('P2T_ICMS_ALIPI').AsFloat               :=0;
      Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
      Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;

      Query_Exe.ParamByName('P2T_PISSQN').AsFloat        :=pTabela.FieldbyName('P2SALIQISSQN').AsFloat;
      Query_Exe.ParamByName('P2T_INSS_PRED').AsFloat     :=pTabela.FieldbyName('P2SPREDINSS').AsFloat;
      Query_Exe.ParamByName('P2T_INSS_ALIQ').AsFloat     :=PTabela.FieldbyName('P2SALIQINSS').AsFloat;
      Query_Exe.ParamByName('P2T_IRRF_PRED').AsFloat     :=PTabela.FieldbyName('P2SPREDIRRF').AsFloat;
      Query_Exe.ParamByName('P2T_IRRF_ALIQ').AsFloat     :=PTabela.FieldbyName('P2SALIQIRRF').AsFloat;
      Query_Exe.ParamByName('P2T_CODVEN').AsFloat          :=pTabela.FieldbyName('P2SCODVEN').AsFloat;
      Query_Exe.ParamByName('P2T_MOTIVODESONERACAO').AsFloat          :=0;




      Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger   :=pProdServ;
      Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;

      Query_Exe.ParamByName('P2T_IMP_COT_DOLLAR').AsFloat        :=mPed1_imp_cot_dollar;
      Query_Exe.ParamByName('P2T_NF_IMP').Asstring               :=mPed1_nf_imp;
      Query_Exe.ParamByName('P2T_IMP_PU_DOLLAR').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_PISCOFINS_VBC_IMP').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_RECDA').AsFloat                 :=0;
      Query_Exe.ParamByName('P2T_RECHONORARIOS').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_RECARMAZENAGEM').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_TITSEP_PROD_SERV').AsFloat         :=0;


      Query_Exe.ParamByName('P2T_PERCDESC_AUT').AsFloat                :=0;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_CODUSR').AsFloat         :=0;
      Query_Exe.ParamByName('P2T_PERCDESC_AUT_DATHOR').Asdatetime      :=pdatanula;


      query_exe.ParamByName('P2T_CEST').AsString                       :='';
      query_exe.ParamByName('P2T_CPUFDEST').AsFloat                    :=0;
      query_exe.ParamByName('P2T_ICMSUFDEST').AsFloat                  :=0;
      query_exe.ParamByName('P2T_ICMSINTER').AsFloat                   :=0;
      query_exe.ParamByName('P2T_ICMSINTERPART').AsFloat               :=0;
      Query_Exe.ParamByName('P2T_DEDUZIR_ICMS_BC_PIS_COFINS').AsFloat  :=mPed1_DEDUZIR_ICMS_BC_PIS_COFINS;


      end;


// termino servico

  mPed1_AjustaFP:='S';

//  ex_erroSql_Novo(Query_Exe,2797,'2797'+'_lerarq ','cadp01_pre');

  try
     Query_Exe.ExecSQL;

   except on e : exception do
//      showmessage('Ocorreu o seguinte erro: '+ e.message);
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,3023,'3023'+'_lerarq '+E.Message,'cadp01_pre');
         result:=false;
         end;
      end;
   end;
mPed1_QtdParc_Ant:=mPed1_QtdParc;
mPed1_pDesc01_Ant:=mPed1_pDesc01;
mPed1_pDesc02_Ant:=mPed1_pDesc02;
mPed1_pDesc03_Ant:=mPed1_pDesc03;


query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Select count(*)  from CADP01 where NVL(P1TOTALL,0)>0 and '
                  +' (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                  +' and P1LOTSEQ=:P1LOTSEQ'
                  +' and P1CHAVE=:P1CHAVE'
                  +' and P1ORDEM=:P1ORDEM');

query_exe.ParambyName('CODEMP').AsFloat       :=mPed1_Codemp;
if mPed1_Codemp>100 then
  query_exe.ParambyName('CODEMP_FILIAL').AsFloat       :=mPed1_Codemp-100
else
  query_exe.ParambyName('CODEMP_FILIAL').AsFloat       :=mPed1_Codemp+100;
query_exe.ParambyName('P1LOTSEQ').AsFloat       :=mPed1_Chave_ano;
query_exe.ParambyName('P1CHAVE').AsFloat        :=mped1_Chave;
query_exe.ParambyName('P1ORDEM').AsFloat        :=01;
try
   query_exe.Open;
   fdm1StartCommit;
except
   result:=false;
   exit;
   end;

if Query_exe.fields[0].asinteger>1 then
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Delete from CADP01 where NVL(P1TOTALL,0)=0 and '
                     +' (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                     +' and P1LOTSEQ=:P1LOTSEQ'
                     +' and P1CHAVE=:P1CHAVE'
                     +' and P1ORDEM=:P1ORDEM');

   query_exe.ParambyName('CODEMP').AsFloat       :=mPed1_Codemp;
   if mPed1_Codemp>100 then
     query_exe.ParambyName('CODEMP_FILIAL').AsFloat       :=mPed1_Codemp-100
   else
     query_exe.ParambyName('CODEMP_FILIAL').AsFloat       :=mPed1_Codemp+100;
   query_exe.ParambyName('P1LOTSEQ').AsFloat       :=mPed1_Chave_ano;
   query_exe.ParambyName('P1CHAVE').AsFloat        :=mped1_Chave;
   query_exe.ParambyName('P1ORDEM').AsFloat        :=01;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      result:=false;
      exit;
      end;
   end;   

freeandnil(query_exe);
fRatearDescontosAcrescimos(pDescRat,pValAcre,pValorSeg,pValorFre,pTarBan,pDespaces,true);

result:=true;

end;

// inicio






function TFrm_Vendas_GravarPedido.fGravarItemCDS(pProdServ, pItem_ant,p2Estoque,pCodfpg,pTipoEve,pSituacao: Integer;
                        pCodPro_Ant,pNomFP,pBaixa: String;

                        pQtd_Cal,pPrecoUnit_Cal,pPrecoTab_Cal,pPrecoUCPR_Cal,pPrecoCus_Cal,pPrecoMax_Cal,
                        pQtd_Ant,pValorSeg,pValorFre,pTarBan,pDespaces,pDescRat: Real;
                        pDadosParametros: tDadosParametros;
                        pTabela: TClientDataSet): Boolean;
var
x: Integer;
Query_Exe: tQuery;
begin
if mped1_Chave=0 THEN
   begin
   result:=true;
   exit;
   end;
try
    if (pProdServ=0) and (pTabela<>nil) then
       begin
       if mPed1_cfop1=0 then
          mPed1_cfop1:=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
       if (mPed1_cfop2=0) and (mped1_cfop1<>pTabela.FieldbyName('P2CFOP_NF').Asinteger) then
          mPed1_cfop2:=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
       end;


    Query_Exe:=tQuery.create(nil);
    Query_Exe.DatabaseName:='SG_ASSOC';
    fGerarEvento('2931');

    result:=true;
    if mger_estanarede then
       begin
       if pTabela=nil then
          begin
    // inicio
          Query_Exe.Close;
          Query_Exe.Sql.Clear;
          Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                                 +'('
                                 +'P2T_CODEMP'
                                 +',P2T_CODEMP_FILIAL'
                                 +',P2T_FILIAL'
                                 +',P2T_CHAVE'
                                 +',P2T_CHAVE_ANO'
                                 +',P2T_PED1_DESCRAT'
                                 +',P2T_PED1_ACRERAT'
                                 +',P2T_PED1_VALSEG'
                                 +',P2T_PED1_VALFRE'
                                 +',P2T_PED1_TARBAN'
                                 +',P2T_PED1_DESPACES'
                                 +',P2T_QTDDUP'
                                 +',P2T_ARRED'

                                 +',P2T_QTDDUP_ANT'
                                 +',P2T_PRAZOS'
                                 +',P2T_TIPO_EVENTO'
                                 +',P2T_DESC_CAB'
                                 +',P2T_CODFP'
                                 +',P2T_NOMFP'
                                 +',P2T_BAIXA'
                                 +',P2T_PED1_DESC_PERC01'
                                 +',P2T_PED1_DESC_PERC02'
                                 +',P2T_PED1_DESC_PERC03'
                                 +',P2T_PED1_DESC_PERC01_ANT'
                                 +',P2T_PED1_DESC_PERC02_ANT'
                                 +',P2T_PED1_DESC_PERC03_ANT'
                                 +',P2T_ALTDUP'
                                 +',PT2_PRZNOVOS'
                                 +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',P2T_ICMSR_PRIMPARC '
                                 +',P2T_ICMSR_SOBLIQ'

                                 +',P2T_PROD_SERV'
                                 +',P2T_DATAPED'
                                 +',P2T_PCOMTEL '

                                +') values ('


                                 +':P2T_CODEMP'
                                 +',:P2T_CODEMP_FILIAL'
                                 +',:P2T_FILIAL'
                                 +',:P2T_CHAVE'
                                 +',:P2T_CHAVE_ANO'
                                 +',:P2T_PED1_DESCRAT'
                                 +',:P2T_PED1_ACRERAT'
                                 +',:P2T_PED1_VALSEG'
                                 +',:P2T_PED1_VALFRE'
                                 +',:P2T_PED1_TARBAN'
                                 +',:P2T_PED1_DESPACES'

                                 +',:P2T_QTDDUP'
                                 +',:P2T_ARRED'

                                 +',:P2T_QTDDUP_ANT'
                                 +',:P2T_PRAZOS'

                                 +',:P2T_TIPO_EVENTO'

                                 +',:P2T_DESC_CAB'
                                 +',:P2T_CODFP'
                                 +',:P2T_NOMFP'
                                 +',:P2T_BAIXA'

                                 +',:P2T_PED1_DESC_PERC01'
                                 +',:P2T_PED1_DESC_PERC02'
                                 +',:P2T_PED1_DESC_PERC03'
                                 +',:P2T_PED1_DESC_PERC01_ANT'
                                 +',:P2T_PED1_DESC_PERC02_ANT'
                                 +',:P2T_PED1_DESC_PERC03_ANT'

                                 +',:P2T_ALTDUP'

                                 +',:PT2_PRZNOVOS'

                                 +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',:P2T_ICMSR_PRIMPARC '
                                 +',:P2T_ICMSR_SOBLIQ'

                                 +',:P2T_PROD_SERV'
                                 +',:P2T_DATAPED'
                                 +',:P2T_PCOMTEL '


                                 +')');


          Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
          Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
          if mped1_filial<1 then
             mped1_filial:=1;
          Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
          Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
          Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
          Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;

          Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
          Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
          Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
          Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
          Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
          Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
          Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

          Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=mPed1_QtdParc_ant;
          Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;

          Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
          Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
          Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
    //      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := 0;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

          if (pTipoEve=3) or (pTipoEve=2) then
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

          Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
          if mPed1_Codemp>100 then
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
          else
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_001);
          Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger:=mped1_ICMSR_PRIMPARC;
          Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;

          Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;
          Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger              :=pProdServ;
          Query_Exe.ParamByName('P2T_DATAPED').AsDateTime               := mPed1_Datap;
          Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;

          end
    // termino
       else if pProdServ=0 then
          begin
          Query_Exe.Close;
          Query_Exe.Sql.Clear;
          Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                                 +'('
                                 +'P2T_CODEMP'
                                 +',P2T_CODEMP_FILIAL'
                                 +',P2T_FILIAL'
                                 +',P2T_CHAVE'
                                 +',P2T_CHAVE_ANO'
                                 +',P2T_ITEM'
                                 +',P2T_ID_PED02_NEW'
                                 +',P2T_CFOP'
                                 +',P2T_CFOP_SUBECF'
                                 +',P2T_MODBCST'
                                 +',P2T_SITUACAO'
                                 +',P2T_CODPRO'
                                 +',P2T_NRECEITUARIO'
                                 +',P2T_COMPRA_XPED '
                                 +',P2T_COMPRA_NITEMPED '
                                 +',P2T_NOMPRO_ORI'
                                 +',P2T_QTD'
                                 +',P2T_DESC_PERC01'
                                 +',P2T_DESC_PERC02'
                                 +',P2T_DESC_PERC03'
                                 +',P2T_DESC_VALOR'
                                 +',P2T_DESC_PPR'
                                 +',P2T_PRECO'
                                 +',P2T_DESC_REPAS'
                                 +',P2T_LISTA'
                                 +',P2T_PRECO_TAB'
                                 +',P2T_PRECO_FPGTO'
                                 +',P2T_PRECO_UCPR'
                                 +',P2T_PRECO_CUS'
                                 +',P2T_PRECO_MAXCONS'
                                 +',P2T_IPI_PERC'
                                 +',P2T_ICMS_PERC'
                                 +',P2T_ICMS_DESPERC'
                                 +',P2T_ICMS_DES'
                                 +',P2T_ALIQAPROXTRIB'
                                 +',P2T_COMISV01_PERC'
                                 +',P2T_PIS_PERC'
                                 +',P2T_PIS_CST'
                                 +',P2T_IPI_CST'
                                 +',P2T_COFINS_PERC'
                                 +',P2T_COFINS_CST'
                                 +',P2T_DESCFIN_PERC'
                                 +',P2T_ACRES_PERC'
                                 +',P2T_CODVEN'
                                 +',P2T_MOTIVODESONERACAO'
                                 +',P2T_ICMS_PRED'
                                 +',P2T_ST_IVA'
                                 +',P2T_ST_PREDUT'
                                 +',P2T_ST_ICMSRED'
                                 +',P2T_ST_ICMSDEB'
                                 +',P2T_ST_ICMSCRED'
                                 +',P2T_ICMSSN_PERC'
                                 +',P2T_PED1_DESCRAT'
                                 +',P2T_PED1_ACRERAT'
                                 +',P2T_PED1_VALSEG'
                                 +',P2T_PED1_VALFRE'
                                 +',P2T_PED1_TARBAN'
                                 +',P2T_PED1_DESPACES'
                                 +',P2T_CST'
                                 +',P2T_CBENEF'
                                 +',P2T_AMBIENTE'
                                 +',P2T_DESCCOMPL'
                                 +',P2T_CSOSN'
                                 +',P2T_CSOSN_ORI'
                                 +',P2T_IRRF_PERC '
                                 +',P2T_CSLL_PERC '

                                 +',P2T_PROMOCAO'

                                 +',P2T_QTDDUP'
                                 +',P2T_ARRED'

                                 +',P2T_QTDDUP_ANT'
                                 +',P2T_PRAZOS'
                                 +',P2T_ESTNOR'
                                 +',P2T_EST_RESERVADO'
                                 +',P2T_ESTCONS'
                                 +',P2T_ESTTERC'
                                 +',P2T_ESTREV'
                                 +',P2T_TIPO_EVENTO'
                                 +',P2T_HISTORICO'
                                 +',P2T_HISTORICO_ANT'
                                 +',P2T_ITEM_ANT'
                                 +',P2T_CODPRO_ANT'
                                 +',P2T_QTD_ANT'
                                 +',P2T_DESC_CAB'
                                 +',P2T_CODFP'
                                 +',P2T_NOMFP'
                                 +',P2T_BAIXA'
                                 +',P2T_PED1_DESC_PERC01'
                                 +',P2T_PED1_DESC_PERC02'
                                 +',P2T_PED1_DESC_PERC03'
                                 +',P2T_PED1_DESC_PERC01_ANT'
                                 +',P2T_PED1_DESC_PERC02_ANT'
                                 +',P2T_PED1_DESC_PERC03_ANT'
                                 +',P2T_CODUSR'
                                 +',P2T_DATAPED'
                                 +',P2T_ALTDUP'
                                 +',P2T_CONTESP'
                                 +',P2T_TIPOPROD'
                                 +',P2T_CONS_PROPRIO'
                                 +',PT2_PRZNOVOS'
                                 +',P2T_TPPCO_ITEM '
                                 +',P2T_TPPCO_CAB '
                                 +',P2T_ICMSR_PRIMPARC '
                                 +',P2T_ICMSR_SOBLIQ'

                                 +',P2T_ICMS_ALIPI '
                                 +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',P2T_INSS_PRED '
                                 +',P2T_INSS_ALIQ '
                                 +',P2T_IRRF_PRED '
                                 +',P2T_IRRF_ALIQ '
                                 +',P2T_PROD_SERV'
                                 +',P2T_PCOMTEL'

                                 +',P2T_CEST '
                                 +',P2T_CPUFDEST  '
                                 +',P2T_ICMSUFDEST '
                                 +',P2T_ICMSINTER  '
                                 +',P2T_ICMSINTERPART '
                                 +',P2T_CBS_CST'
                                 +',P2T_CODCLASSTRIB'
                                 +',P2T_CBS_ALIQ'
                                 +',P2T_IBS_UF_ALIQ'
                                 +',P2T_IBS_MUN_ALIQ'
                                 +',P2T_INDOP_IBSCBS'
                             +',P2T_CODTRIB_MUN '
                             +',P2T_CODTRIB_NAC '

                             +',P2T_CODNBS '
                             +',P2T_CODCNAE '
                             +',P2T_PCOFINS '
                             +',P2T_PCSLL '
                             +',P2T_PISSQN '
                             +',P2T_PIR '




                                +') values ('
                                 +':P2T_CODEMP'
                                 +',:P2T_CODEMP_FILIAL'
                                 +',:P2T_FILIAL'
                                 +',:P2T_CHAVE'
                                 +',:P2T_CHAVE_ANO'
                                 +',:P2T_ITEM'
                                 +',:P2T_ID_PED02_NEW'
                                 +',:P2T_CFOP'
                                 +',:P2T_CFOP_SUBECF'
                                 +',:P2T_MODBCST'
                                 +',:P2T_SITUACAO'
                                 +',:P2T_CODPRO'
                                 +',:P2T_NRECEITUARIO'

                                 +',:P2T_COMPRA_XPED '
                                 +',:P2T_COMPRA_NITEMPED '
                                 +',:P2T_NOMPRO_ORI'
                                 +',:P2T_QTD'
                                 +',:P2T_DESC_PERC01'
                                 +',:P2T_DESC_PERC02'
                                 +',:P2T_DESC_PERC03'
                                 +',:P2T_DESC_VALOR'
                                 +',:P2T_DESC_PPR'
                                 +',:P2T_PRECO'
                                 +',:P2T_DESC_REPAS'
                                 +',:P2T_LISTA'
                                 +',:P2T_PRECO_TAB'
                                 +',:P2T_PRECO_FPGTO'
                                 +',:P2T_PRECO_UCPR'
                                 +',:P2T_PRECO_CUS'
                                 +',:P2T_PRECO_MAXCONS'
                                 +',:P2T_IPI_PERC'
                                 +',:P2T_ICMS_PERC'
                                 +',:P2T_ICMS_DESPERC'
                                 +',:P2T_ICMS_DES'
                                 +',:P2T_ALIQAPROXTRIB'
                                 +',:P2T_COMISV01_PERC'
                                 +',:P2T_PIS_PERC'
                                 +',:P2T_PIS_CST'
                                 +',:P2T_IPI_CST'
                                 +',:P2T_COFINS_PERC'
                                 +',:P2T_COFINS_CST'
                                 +',:P2T_DESCFIN_PERC'
                                 +',:P2T_ACRES_PERC'
                                 +',:P2T_CODVEN'
                                 +',:P2T_MOTIVODESONERACAO'
                                 +',:P2T_ICMS_PRED'
                                 +',:P2T_ST_IVA'
                                 +',:P2T_ST_PREDUT'
                                 +',:P2T_ST_ICMSRED'
                                 +',:P2T_ST_ICMSDEB'
                                 +',:P2T_ST_ICMSCRED'
                                 +',:P2T_ICMSSN_PERC'
                                 +',:P2T_PED1_DESCRAT'
                                 +',:P2T_PED1_ACRERAT'
                                 +',:P2T_PED1_VALSEG'
                                 +',:P2T_PED1_VALFRE'
                                 +',:P2T_PED1_TARBAN'
                                 +',:P2T_PED1_DESPACES'
                                 +',:P2T_CST'
                                 +',:P2T_CBENEF'
                                 +',:P2T_AMBIENTE'
                                 +',:P2T_DESCCOMPL'
                                 +',:P2T_CSOSN'
                                 +',:P2T_CSOSN_ORI'
                                 +',:P2T_IRRF_PERC '
                                 +',:P2T_CSLL_PERC '
                                 +',:P2T_PROMOCAO'
                                 +',:P2T_QTDDUP'
                                 +',:P2T_ARRED'
                                 +',:P2T_QTDDUP_ANT'
                                 +',:P2T_PRAZOS'
                                 +',:P2T_ESTNOR'
                                 +',:P2T_EST_RESERVADO '
                                 +',:P2T_ESTCONS'
                                 +',:P2T_ESTTERC'
                                 +',:P2T_ESTREV'
                                 +',:P2T_TIPO_EVENTO'
                                 +',:P2T_HISTORICO'
                                 +',:P2T_HISTORICO_ANT'
                                 +',:P2T_ITEM_ANT'
                                 +',:P2T_CODPRO_ANT'
                                 +',:P2T_QTD_ANT'
                                 +',:P2T_DESC_CAB'
                                 +',:P2T_CODFP'
                                 +',:P2T_NOMFP'
                                 +',:P2T_BAIXA'
                                 +',:P2T_PED1_DESC_PERC01'
                                 +',:P2T_PED1_DESC_PERC02'
                                 +',:P2T_PED1_DESC_PERC03'
                                 +',:P2T_PED1_DESC_PERC01_ANT'
                                 +',:P2T_PED1_DESC_PERC02_ANT'
                                 +',:P2T_PED1_DESC_PERC03_ANT'
                                 +',:P2T_CODUSR'
                                 +',:P2T_DATAPED'
                                 +',:P2T_ALTDUP'
                                 +',:P2T_CONTESP'
                                 +',:P2T_TIPOPROD'
                                 +',:P2T_CONS_PROPRIO'
                                 +',:PT2_PRZNOVOS'
                                 +',:P2T_TPPCO_ITEM '
                                 +',:P2T_TPPCO_CAB '
                                 +',:P2T_ICMSR_PRIMPARC '
                                 +',:P2T_ICMSR_SOBLIQ'

                                 +',:P2T_ICMS_ALIPI '
                                 +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',:P2T_INSS_PRED '
                                 +',:P2T_INSS_ALIQ '
                                 +',:P2T_IRRF_PRED '
                                 +',:P2T_IRRF_ALIQ '
                                 +',:P2T_PROD_SERV'
                                 +',:P2T_PCOMTEL '
                                 +',:P2T_CEST '
                                 +',:P2T_CPUFDEST  '
                                 +',:P2T_ICMSUFDEST '
                                 +',:P2T_ICMSINTER  '
                                 +',:P2T_ICMSINTERPART '

                                 +',:P2T_CBS_CST'
                                 +',:P2T_CODCLASSTRIB'
                                 +',:P2T_CBS_ALIQ'
                                 +',:P2T_IBS_UF_ALIQ'
                                 +',:P2T_IBS_MUN_ALIQ'
                                 +',:P2T_INDOP_IBSCBS '


                             +',:P2T_CODTRIB_MUN '
                             +',:P2T_CODTRIB_NAC '
                             +',:P2T_CODNBS '
                             +',:P2T_CODNAE '
                             +',:P2T_PCOFINS '
                             +',:P2T_PCSLL '
                             +',:P2T_PISSQN '
                             +',:P2T_PIR '

                                 +')');


          Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
          Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
          if mped1_filial<1 then
             mped1_filial:=1;
          Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
          Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
          Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
          Query_Exe.ParamByName('P2T_ITEM').AsInteger          :=pTabela.FieldbyName('P2ITEM').Asinteger;
                                                                  
         Query_Exe.ParamByName('P2T_ID_PED02_NEW').AsInteger  :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ID_NEW_101').AsFloat
                                                            ,pTabela.FieldbyName('P2ID_NEW').AsFloat);
       Query_Exe.ParamByName('P2T_CFOP').AsInteger          :=pTabela.FieldbyName('P2CFOP_NF').Asinteger;
          Query_Exe.ParamByName('P2T_CONS_PROPRIO').AsInteger  :=pTabela.FieldbyName('P2CONS_PROPRIO').Asinteger;
          Query_Exe.ParamByName('P2T_CFOP_SUBECF').AsInteger   :=pTabela.FieldbyName('P2CFOP_ECF').Asinteger;
          Query_Exe.ParamByName('P2T_MODBCST').AsInteger       :=pTabela.FieldbyName('P2MODBCST').Asinteger;
          Query_Exe.ParamByName('P2T_SITUACAO').AsInteger      :=pSituacao;
          Query_Exe.ParamByName('P2T_CODPRO').AsString         :=pTabela.FieldbyName('P2CODPRO').AsString;
          Query_Exe.ParamByName('P2T_NRECEITUARIO').AsString         :=pTabela.FieldbyName('P2NRECEITUARIO').AsString;

          Query_Exe.ParamByName('P2T_COMPRA_XPED').AsString     :=pTabela.FieldbyName('P2COMPRA_XPED').AsString;
          Query_Exe.ParamByName('P2T_COMPRA_NITEMPED').AsInteger:=pTabela.FieldbyName('P2COMPRA_NITEMPED').AsInteger;


          Query_Exe.ParamByName('P2T_NOMPRO_ORI').AsString     :=pTabela.FieldbyName('PDNOME').AsString;
          Query_Exe.ParamByName('P2T_QTD').AsFloat             :=pQtd_Cal;
          Query_Exe.ParamByName('P2T_DESC_PPR').AsFloat        :=pTabela.FieldbyName('P2DESCPR').AsFloat;


          Query_Exe.ParamByName('P2T_PRECO').AsFloat           :=pPrecoUnit_Cal;
          Query_Exe.ParamByName('P2T_DESC_REPAS').AsFloat      :=0;
          Query_Exe.ParamByName('P2T_LISTA').AsFloat           :=0;
          Query_Exe.ParamByName('P2T_PRECO_TAB').AsFloat       :=pPrecoTab_Cal;
          Query_Exe.ParamByName('P2T_PRECO_FPGTO').AsFloat     :=pPrecoTab_Cal;
          Query_Exe.ParamByName('P2T_PRECO_UCPR').AsFloat      :=pPrecoUCPR_Cal;
          Query_Exe.ParamByName('P2T_PRECO_CUS').AsFloat       :=pPrecoCus_Cal;
          Query_Exe.ParamByName('P2T_PRECO_MAXCONS').AsFloat   :=pPrecoMax_Cal;
          Query_Exe.ParamByName('P2T_IPI_PERC').AsFloat        :=pTabela.FieldbyName('P2IPI_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_ICMS_PERC').AsFloat       :=pTabela.FieldbyName('P2ICMS_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_ICMS_DESPERC').AsFloat    :=pTabela.FieldbyName('P2ALIQICMSDES').AsFloat;
          Query_Exe.ParamByName('P2T_ICMS_DES').AsFloat        :=pTabela.FieldbyName('P2ALIQICMSDES').AsFloat;
          Query_Exe.ParamByName('P2T_ALIQAPROXTRIB').AsFloat   :=pTabela.FieldbyName('P2ALIQAPROXTRIB').AsFloat;
          Query_Exe.ParamByName('P2T_COMISV01_PERC').AsFloat   :=pTabela.FieldbyName('P2PCOMIS').AsFloat;
          Query_Exe.ParamByName('P2T_PIS_PERC').AsFloat        :=pTabela.FieldbyName('P2PIS_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_PIS_CST').AsString        :=pTabela.FieldbyName('P2CST_PIS').AsString;
          Query_Exe.ParamByName('P2T_IPI_CST').AsString        :=pTabela.FieldbyName('P2CST_IPI').AsString;
          Query_Exe.ParamByName('P2T_COFINS_PERC').AsFloat     :=pTabela.FieldbyName('P2COFINS_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_COFINS_CST').AsString     :=pTabela.FieldbyName('P2CST_COFINS').AsString;
          Query_Exe.ParamByName('P2T_DESCFIN_PERC').AsFloat    :=pTabela.FieldbyName('P2DESCFIN_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_ACRES_PERC').AsFloat      :=0;
          Query_Exe.ParamByName('P2T_CODVEN').AsFloat          :=pTabela.FieldbyName('P2CODVEN').AsFloat;
          Query_Exe.ParamByName('P2T_MOTIVODESONERACAO').AsFloat          :=0;

          Query_Exe.ParamByName('P2T_ICMS_PRED').AsFloat       :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ICMS_PPRED_101').AsFloat
                                                                ,pTabela.FieldbyName('P2ICMS_PPRED').AsFloat);
          Query_Exe.ParamByName('P2T_ST_IVA').AsFloat          :=
                                iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_IVA_101').AsFloat,pTabela.FieldbyName('P2ST_IVA').AsFloat);

          Query_Exe.ParamByName('P2T_ST_PREDUT').AsFloat       :=
                          iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_REDUT_101').AsFloat,pTabela.FieldbyName('P2ST_REDUT').AsFloat);

          Query_Exe.ParamByName('P2T_ST_ICMSRED').AsFloat      :=
                          iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_REDUT_101').AsFloat,pTabela.FieldbyName('P2ST_REDUT').AsFloat);
          Query_Exe.ParamByName('P2T_ST_ICMSDEB').AsFloat      :=
                          iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_ICMSDEB_101').AsFloat,pTabela.FieldbyName('P2ST_ICMSDEB').AsFloat);

          Query_Exe.ParamByName('P2T_ST_ICMSCRED').AsFloat     :=
                          iif(mPed1_Codemp>100,pTabela.FieldbyName('P2ST_ICMSCRED_101').AsFloat,pTabela.FieldbyName('P2ST_ICMSCRED').AsFloat);

          Query_Exe.ParamByName('P2T_ICMSSN_PERC').AsFloat     := pTabela.FieldbyName('P2ICMSSN_PERC').AsFloat;

          Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
          Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
          Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
          Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
          Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
          Query_Exe.ParamByName('P2T_CST').AsString            := pTabela.FieldbyName('P2CST').AsString;
          Query_Exe.ParamByName('P2T_CBENEF').AsString            := pTabela.FieldbyName('P2CBENEF').AsString;
          Query_Exe.ParamByName('P2T_AMBIENTE').AsString       := pTabela.FieldbyName('P2AMBIENTE').AsString;
          Query_Exe.ParamByName('P2T_DESCCOMPL').AsString      := pTabela.FieldbyName('P2DESC_COMP').AsString;
          Query_Exe.ParamByName('P2T_CSOSN').AsString          := pTabela.FieldbyName('P2CSOSN').AsString;
          Query_Exe.ParamByName('P2T_IRRF_PERC').Value         := pTabela.FieldbyName('P2IRRF_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_CSLL_PERC').Value         := pTabela.FieldbyName('P2CSLL_PERC').AsFloat;

          Query_Exe.ParamByName('P2T_CSOSN_ORI').AsString      := pTabela.FieldbyName('P2CSOSN_ORI').AsString;
          Query_Exe.ParamByName('P2T_PROMOCAO').AsString       := pTabela.FieldbyName('P2PROMOCAO').AsString;
          Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
          Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

          Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=mPed1_QtdParc_ant;
          Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;
          if p2Estoque=2 then
             begin
             Query_Exe.ParamByName('P2T_ESTNOR').AsString   :='N';
             Query_Exe.ParamByName('P2T_ESTCONS').AsString  :='N';
             Query_Exe.ParamByName('P2T_ESTTERC').AsString  :='N';
             Query_Exe.ParamByName('P2T_ESTREV').AsString   :='N';
             Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
             end
          else
             begin
             Query_Exe.ParamByName('P2T_ESTNOR').AsString        :=mPd_EstNor;
             Query_Exe.ParamByName('P2T_ESTCONS').AsString       :=mPd_EstCons;
             Query_Exe.ParamByName('P2T_ESTTERC').AsString       :=mPd_EstTerc;
             Query_Exe.ParamByName('P2T_ESTREV').AsString        :=mPd_EstVenda;
             Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
             end;
          if (pTipoEve=3) then
             begin
             if mpd_estnor='E' then
                Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='S'
             else if mpd_estnor='S' then
                Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='E';
             end;


          Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger                :=0;
          Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString            :='';
          Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString               :=pCodPro_ant;
          Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat                   :=pQtd_Ant;

          Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
          Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
          Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
    //      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := 0;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

          Query_Exe.ParamByName('P2T_DESC_PERC01').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC01').AsFloat;

          Query_Exe.ParamByName('P2T_DESC_PERC02').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC02').AsFloat;
          Query_Exe.ParamByName('P2T_DESC_PERC03').AsFloat       :=pTabela.FieldbyName('P2DESC_PERC03').AsFloat;
          Query_Exe.ParamByName('P2T_DESC_VALOR').AsFloat        :=pTabela.FieldbyName('P2VALDES').AsFloat;
          Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;


          Query_Exe.ParamByName('P2T_CODUSR').AsInteger              := mPed1_CodUsr_Dig;
          Query_Exe.ParamByName('P2T_DATAPED').AsDateTime            := mPed1_Datap;


          query_exe.ParamByName('P2T_CEST').AsString                       :=pTabela.FieldByName('P2CEST').AsString;
          query_exe.ParamByName('P2T_CPUFDEST').AsFloat                    :=pTabela.FieldByName('P2CPUFDEST').AsFloat;
          query_exe.ParamByName('P2T_ICMSUFDEST').AsFloat                  :=pTabela.FieldByName('P2ICMSUFDEST').AsFloat;
          query_exe.ParamByName('P2T_ICMSINTER').AsFloat                   :=pTabela.FieldByName('P2ICMSINTER').AsFloat;
          query_exe.ParamByName('P2T_ICMSINTERPART').AsFloat               :=pTabela.FieldByName('P2ICMSINTERPART').AsFloat;



       //LINDOMAR
          if pItem_ant=0 then
             begin
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=0;
             Query_Exe.ParamByName('P2T_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
             end
          else
             begin
             if pTabela.FieldbyName('P2CODPRO').AsString<>pcodpro_ant then
                begin
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodpro_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
                Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pTabela.FieldbyName('P2CODPRO').AsString+'. Empresa: '+IntToStr(mPed1_Codemp);
                end
             else if pQtd_Cal<>pQtd_Ant then
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mCasQtd, pqtd_Cal)+'. Empresa: '+IntToStr(mPed1_Codemp)
             else
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=1;
             Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger:=pItem_ant;
             Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString:=pcodpro_ant;
             Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat:=pQtd_Ant;
             end;
          if (pTipoEve=3) or (pTipoEve=2) then
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

          Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
          Query_Exe.ParamByName('P2T_CONTESP').AsInteger    := pTabela.FieldbyName('P2CONTESP').AsInteger;

          if Log_TipoLote=1 then
             Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 3
          else
             Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 0;

          if mPed1_Codemp>100 then
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
          else
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_001);
          Query_Exe.ParamByName('P2T_TPPCO_ITEM').Asinteger         :=pTabela.FieldbyName('P2TIPO_PCO').AsInteger;
          Query_Exe.ParamByName('P2T_TPPCO_CAB').Asinteger         :=mped1_tppco;
          Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger:=mped1_ICMSR_PRIMPARC;
          Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;

          Query_Exe.ParamByName('P2T_ICMS_ALIPI').AsFloat    :=pTabela.FieldbyName('P2ICMS_ALIPI').AsFloat;
          Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;

          Query_Exe.ParamByName('P2T_PISSQN').AsFloat        :=0;
          Query_Exe.ParamByName('P2T_INSS_PRED').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_INSS_ALIQ').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_IRRF_PRED').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_IRRF_ALIQ').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger   :=pProdServ;

          Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;

//          Query_Exe.ParamByName('P2T_DEDUZIR_ICMS_BC_PIS_COFINS').AsFloat  :=mPed1_DEDUZIR_ICMS_BC_PIS_COFINS;
          Query_Exe.ParamByName('P2T_CBS_CST').AsString                    :=pTabela.FieldByName('P2CBS_CST').AsString;
          Query_Exe.ParamByName('P2T_CODCLASSTRIB').AsString               :=pTabela.FieldByName('P2CODCLASSTRIB').AsString;
          query_exe.ParamByName('P2T_CBS_ALIQ').AsFloat                    :=pTabela.FieldByName('P2CBS_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_IBS_UF_ALIQ').AsFloat                 :=pTabela.FieldByName('P2IBS_UF_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_IBS_MUN_ALIQ').AsFloat                :=pTabela.FieldByName('P2IBS_MUN_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_INDOP_IBSCBS').AsString               :='';
      Query_Exe.ParamByName('P2T_CODTRIB_MUN').AsString                     :='';
      Query_Exe.ParamByName('P2T_CODTRIB_NAC').AsString                     :='';

      Query_Exe.ParamByName('P2T_CODNBS').AsString                    :='';
      Query_Exe.ParamByName('P2T_CODCNAE').AsString                    :='';
      query_exe.ParamByName('P2T_PCOFINS').AsFloat                :=0;
      query_exe.ParamByName('P2T_PCSLL').AsFloat                :=0;
      query_exe.ParamByName('P2T_PISSQN').AsFloat                :=0;
      query_exe.ParamByName('P2T_PIR').AsFloat                :=0;

          end
    // inicio servico

       else if pProdServ=1 then
          begin
          Query_Exe.Close;
          Query_Exe.Sql.Clear;
          Query_Exe.Sql.Add('Insert into cadp02_pre_temp '
                                 +'('
                                 +'P2T_CODEMP'
                                 +',P2T_CODEMP_FILIAL'
                                 +',P2T_FILIAL'
                                 +',P2T_CHAVE'
                                 +',P2T_CHAVE_ANO'
                                 +',P2T_ITEM'
                                 +',P2T_ID_PED02_NEW'
                                 +',P2T_CFOP'
                                 +',P2T_CFOP_SUBECF'
                                 +',P2T_MODBCST'
                                 +',P2T_SITUACAO'
                                 +',P2T_CODPRO'
                                 +',P2T_NRECEITUARIO'

                                 +',P2T_NOMPRO_ORI'
                                 +',P2T_QTD'
                                 +',P2T_DESC_PERC01'
                                 +',P2T_DESC_PERC02'
                                 +',P2T_DESC_PERC03'
                                 +',P2T_DESC_VALOR'
                                 +',P2T_DESC_PPR'
                                 +',P2T_PRECO'
                                 +',P2T_DESC_REPAS'
                                 +',P2T_LISTA'
                                 +',P2T_PRECO_TAB'
                                 +',P2T_PRECO_FPGTO'
                                 +',P2T_PRECO_UCPR'
                                 +',P2T_PRECO_CUS'
                                 +',P2T_PRECO_MAXCONS'
                                 +',P2T_IPI_PERC'
                                 +',P2T_ICMS_PERC'
                                 +',P2T_ICMS_DESPERC'
                                 +',P2T_ICMS_DES'
                                 +',P2T_ALIQAPROXTRIB'
                                 +',P2T_COMISV01_PERC'
                                 +',P2T_PIS_PERC'
                                 +',P2T_PIS_CST'
                                 +',P2T_IPI_CST'
                                 +',P2T_COFINS_PERC'
                                 +',P2T_COFINS_CST'
                                 +',P2T_DESCFIN_PERC'
                                 +',P2T_ACRES_PERC'
                                 +',P2T_CODVEN'
                                 +',P2T_MOTIVODESONERACAO'

                                 +',P2T_ICMS_PRED'
                                 +',P2T_ST_IVA'
                                 +',P2T_ST_PREDUT'
                                 +',P2T_ST_ICMSRED'
                                 +',P2T_ST_ICMSDEB'
                                 +',P2T_ST_ICMSCRED'
                                 +',P2T_ICMSSN_PERC'
                                 +',P2T_PED1_DESCRAT'
                                 +',P2T_PED1_ACRERAT'
                                 +',P2T_PED1_VALSEG'
                                 +',P2T_PED1_VALFRE'
                                 +',P2T_PED1_TARBAN'
                                 +',P2T_PED1_DESPACES'
                                 +',P2T_CST'
                                 +',P2T_CBENEF'
                                 +',P2T_AMBIENTE'
                                 +',P2T_DESCCOMPL'
                                 +',P2T_CSOSN'
                                 +',P2T_CSOSN_ORI'
                                 +',P2T_IRRF_PERC '
                                 +',P2T_CSLL_PERC '

                                 +',P2T_PROMOCAO'

                                 +',P2T_QTDDUP'
                                 +',P2T_ARRED'

                                 +',P2T_QTDDUP_ANT'
                                 +',P2T_PRAZOS'
                                 +',P2T_ESTNOR'
                                 +',P2T_EST_RESERVADO'
                                 +',P2T_ESTCONS'
                                 +',P2T_ESTTERC'
                                 +',P2T_ESTREV'
                                 +',P2T_TIPO_EVENTO'
                                 +',P2T_HISTORICO'
                                 +',P2T_HISTORICO_ANT'
                                 +',P2T_ITEM_ANT'
                                 +',P2T_CODPRO_ANT'
                                 +',P2T_QTD_ANT'
                                 +',P2T_DESC_CAB'
                                 +',P2T_CODFP'
                                 +',P2T_NOMFP'
                                 +',P2T_BAIXA'
                                 +',P2T_PED1_DESC_PERC01'
                                 +',P2T_PED1_DESC_PERC02'
                                 +',P2T_PED1_DESC_PERC03'
                                 +',P2T_PED1_DESC_PERC01_ANT'
                                 +',P2T_PED1_DESC_PERC02_ANT'
                                 +',P2T_PED1_DESC_PERC03_ANT'
                                 +',P2T_CODUSR'
                                 +',P2T_DATAPED'
                                 +',P2T_ALTDUP'
                                 +',P2T_CONTESP'
                                 +',P2T_TIPOPROD'
                                 +',P2T_CONS_PROPRIO'
                                 +',PT2_PRZNOVOS'
                                 +',P2T_TPPCO_ITEM '
                                 +',P2T_TPPCO_CAB '
                                 +',P2T_ICMSR_PRIMPARC '
                                 +',P2T_ICMSR_SOBLIQ'

                                 +',P2T_ICMS_ALIPI '
                                 +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',P2T_INSS_PRED '
                                 +',P2T_INSS_ALIQ '
                                 +',P2T_IRRF_PRED '
                                 +',P2T_IRRF_ALIQ '
                                 +',P2T_PROD_SERV'
                                 +',P2T_PCOMTEL '
                                 +',P2T_CEST '
                                 +',P2T_CPUFDEST  '
                                 +',P2T_ICMSUFDEST '
                                 +',P2T_ICMSINTER  '
                                 +',P2T_ICMSINTERPART '

                                 +',P2T_CBS_CST'
                                 +',P2T_CODCLASSTRIB'
                                 +',P2T_CBS_ALIQ'
                                 +',P2T_IBS_UF_ALIQ'
                                 +',P2T_IBS_MUN_ALIQ'
                                 +',P2T_INDOP_IBSCBS '

                             +',P2T_CODTRIB_MUN '
                             +',P2T_CODTRIB_NAC '
                             +',P2T_CODNBS '
                             +',P2T_CODCNAE '
                             +',P2T_PCOFINS '
                             +',P2T_PCSLL '
                             +',P2T_PISSQN '
                             +',P2T_PIR '



                                +') values ('
                                 +':P2T_CODEMP'
                                 +',:P2T_CODEMP_FILIAL'
                                 +',:P2T_FILIAL'
                                 +',:P2T_CHAVE'
                                 +',:P2T_CHAVE_ANO'
                                 +',:P2T_ITEM'
                                 +',:P2T_ID_PED02_NEW'
                                 +',:P2T_CFOP'
                                 +',:P2T_CFOP_SUBECF'
                                 +',:P2T_MODBCST'
                                 +',:P2T_SITUACAO'
                                 +',:P2T_CODPRO'
                                 +',:P2T_NRECEITUARIO'

                                 +',:P2T_NOMPRO_ORI'
                                 +',:P2T_QTD'
                                 +',:P2T_DESC_PERC01'
                                 +',:P2T_DESC_PERC02'
                                 +',:P2T_DESC_PERC03'
                                 +',:P2T_DESC_VALOR'
                                 +',:P2T_DESC_PPR'
                                 +',:P2T_PRECO'
                                 +',:P2T_DESC_REPAS'
                                 +',:P2T_LISTA'
                                 +',:P2T_PRECO_TAB'
                                 +',:P2T_PRECO_FPGTO'
                                 +',:P2T_PRECO_UCPR'
                                 +',:P2T_PRECO_CUS'
                                 +',:P2T_PRECO_MAXCONS'
                                 +',:P2T_IPI_PERC'
                                 +',:P2T_ICMS_PERC'
                                 +',:P2T_ICMS_DESPERC'
                                 +',:P2T_ICMS_DES'
                                 +',:P2T_ALIQAPROXTRIB'
                                 +',:P2T_COMISV01_PERC'
                                 +',:P2T_PIS_PERC'
                                 +',:P2T_PIS_CST'
                                 +',:P2T_IPI_CST'
                                 +',:P2T_COFINS_PERC'
                                 +',:P2T_COFINS_CST'
                                 +',:P2T_DESCFIN_PERC'
                                 +',:P2T_ACRES_PERC'
                                 +',:P2T_CODVEN'
                                 +',:P2T_MOTIVODESONERACAO'

                                 +',:P2T_ICMS_PRED'
                                 +',:P2T_ST_IVA'
                                 +',:P2T_ST_PREDUT'
                                 +',:P2T_ST_ICMSRED'
                                 +',:P2T_ST_ICMSDEB'
                                 +',:P2T_ST_ICMSCRED'
                                 +',:P2T_ICMSSN_PERC'
                                 +',:P2T_PED1_DESCRAT'
                                 +',:P2T_PED1_ACRERAT'
                                 +',:P2T_PED1_VALSEG'
                                 +',:P2T_PED1_VALFRE'
                                 +',:P2T_PED1_TARBAN'
                                 +',:P2T_PED1_DESPACES'
                                 +',:P2T_CST'
                                 +',:P2T_CBENEF'
                                 +',:P2T_AMBIENTE'
                                 +',:P2T_DESCCOMPL'
                                 +',:P2T_CSOSN'
                                 +',:P2T_CSOSN_ORI'
                                 +',:P2T_IRRF_PERC '
                                 +',:P2T_CSLL_PERC '

                                 +',:P2T_PROMOCAO'
                                 +',:P2T_QTDDUP'
                                 +',:P2T_ARRED'

                                 +',:P2T_QTDDUP_ANT'
                                 +',:P2T_PRAZOS'
                                 +',:P2T_ESTNOR'
                                 +',:P2T_EST_RESERVADO'
                                 +',:P2T_ESTCONS'
                                 +',:P2T_ESTTERC'
                                 +',:P2T_ESTREV'
                                 +',:P2T_TIPO_EVENTO'
                                 +',:P2T_HISTORICO'
                                 +',:P2T_HISTORICO_ANT'
                                 +',:P2T_ITEM_ANT'
                                 +',:P2T_CODPRO_ANT'
                                 +',:P2T_QTD_ANT'
                                 +',:P2T_DESC_CAB'
                                 +',:P2T_CODFP'
                                 +',:P2T_NOMFP'
                                 +',:P2T_BAIXA'
                                 +',:P2T_PED1_DESC_PERC01'
                                 +',:P2T_PED1_DESC_PERC02'
                                 +',:P2T_PED1_DESC_PERC03'
                                 +',:P2T_PED1_DESC_PERC01_ANT'
                                 +',:P2T_PED1_DESC_PERC02_ANT'
                                 +',:P2T_PED1_DESC_PERC03_ANT'
                                 +',:P2T_CODUSR'
                                 +',:P2T_DATAPED'
                                 +',:P2T_ALTDUP'
                                 +',:P2T_CONTESP'
                                 +',:P2T_TIPOPROD'
                                 +',:P2T_CONS_PROPRIO'
                                 +',:PT2_PRZNOVOS'
                                 +',:P2T_TPPCO_ITEM '
                                 +',:P2T_TPPCO_CAB '
                                 +',:P2T_ICMSR_PRIMPARC '
                                 +',:P2T_ICMSR_SOBLIQ'

                                 +',:P2T_ICMS_ALIPI '
                                 +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                                 +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                                 +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                                 +',:P2T_INSS_PRED '
                                 +',:P2T_INSS_ALIQ '
                                 +',:P2T_IRRF_PRED '
                                 +',:P2T_IRRF_ALIQ '
                                 +',:P2T_PROD_SERV'
                                 +',:P2T_PCOMTEL '
                                 +',:P2T_CEST '
                                 +',:P2T_CPUFDEST  '
                                 +',:P2T_ICMSUFDEST '
                                 +',:P2T_ICMSINTER  '
                                 +',:P2T_ICMSINTERPART '
                                 +',:P2T_CBS_CST'
                                 +',:P2T_CODCLASSTRIB'
                                 +',:P2T_CBS_ALIQ'
                                 +',:P2T_IBS_UF_ALIQ'
                                 +',:P2T_IBS_MUN_ALIQ'
                                 +',:P2T_INDOP_IBSCBS '
                             +',:P2T_CODTRIB_MUN '
                             +',:P2T_CODTRIB_NAC '

                             +',:P2T_CODNBS '
                             +',:P2T_CODCNAE '
                             +',:P2T_PCOFINS '
                             +',:P2T_PCSLL '
                             +',:P2T_PISSQN '
                             +',:P2T_PIR '



                                 +')');


          Query_Exe.ParamByName('P2T_CODEMP').AsInteger       :=mPed1_Codemp;
          Query_Exe.ParamByName('P2T_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
          if mped1_filial<1 then
             mped1_filial:=1;
          Query_Exe.ParamByName('P2T_FILIAL').AsInteger        :=mped1_Filial;
          Query_Exe.ParamByName('P2T_CHAVE').AsInteger         :=mped1_Chave;
          Query_Exe.ParamByName('P2T_CHAVE_ANO').AsInteger     :=mPed1_Chave_ano;
          Query_Exe.ParamByName('P2T_ITEM').AsInteger          :=pTabela.FieldbyName('P2SITEM').Asinteger;

         Query_Exe.ParamByName('P2T_ID_PED02_NEW').AsInteger  :=iif(mPed1_Codemp>100,pTabela.FieldbyName('P2SID_NEW_101').AsFloat
                                                            ,pTabela.FieldbyName('P2SID_NEW').AsFloat);

          Query_Exe.ParamByName('P2T_CFOP').AsInteger          :=pTabela.FieldbyName('P2SCFOP_NF').Asinteger;
          Query_Exe.ParamByName('P2T_CONS_PROPRIO').AsInteger  :=0;
          Query_Exe.ParamByName('P2T_CFOP_SUBECF').AsInteger   :=pTabela.FieldbyName('P2SCFOP_ECF').Asinteger;
          Query_Exe.ParamByName('P2T_MODBCST').AsInteger       :=0;
          Query_Exe.ParamByName('P2T_SITUACAO').AsInteger      :=pSituacao;
          Query_Exe.ParamByName('P2T_CODPRO').AsString         :=pTabela.FieldbyName('P2SCODSER').AsString;
          Query_Exe.ParamByName('P2T_NRECEITUARIO').AsString         :='';

          Query_Exe.ParamByName('P2T_NOMPRO_ORI').AsString     :=pTabela.FieldbyName('PDNOME').AsString;
          Query_Exe.ParamByName('P2T_QTD').AsFloat             :=pQtd_Cal;
          Query_Exe.ParamByName('P2T_DESC_PPR').AsFloat        :=0;


          Query_Exe.ParamByName('P2T_PRECO').AsFloat           :=pPrecoUnit_Cal;
          Query_Exe.ParamByName('P2T_DESC_REPAS').AsFloat      :=0;
          Query_Exe.ParamByName('P2T_LISTA').AsFloat           :=0;
          Query_Exe.ParamByName('P2T_PRECO_TAB').AsFloat       :=pPrecoTab_Cal;
          Query_Exe.ParamByName('P2T_PRECO_FPGTO').AsFloat     :=pPrecoTab_Cal;
          Query_Exe.ParamByName('P2T_PRECO_UCPR').AsFloat      :=pPrecoUCPR_Cal;
          Query_Exe.ParamByName('P2T_PRECO_CUS').AsFloat       :=pPrecoCus_Cal;
          Query_Exe.ParamByName('P2T_PRECO_MAXCONS').AsFloat   :=pPrecoMax_Cal;
          Query_Exe.ParamByName('P2T_IPI_PERC').AsFloat        :=0;
          Query_Exe.ParamByName('P2T_ICMS_PERC').AsFloat       :=0;
          Query_Exe.ParamByName('P2T_ICMS_DESPERC').AsFloat    :=0;
          Query_Exe.ParamByName('P2T_ICMS_DES').AsFloat        :=0;
          Query_Exe.ParamByName('P2T_ALIQAPROXTRIB').AsFloat   :=0;

          Query_Exe.ParamByName('P2T_COMISV01_PERC').AsFloat   :=pTabela.FieldbyName('P2SPCOMIS').AsFloat;;
          Query_Exe.ParamByName('P2T_PIS_PERC').AsFloat        :=0;
          Query_Exe.ParamByName('P2T_PIS_CST').AsString        :=' ';
          Query_Exe.ParamByName('P2T_IPI_CST').AsString        :=' ';
          Query_Exe.ParamByName('P2T_COFINS_PERC').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_COFINS_CST').AsString     :=' ';

          Query_Exe.ParamByName('P2T_DESCFIN_PERC').AsFloat    :=pTabela.FieldbyName('P2SDESCFIN_PERC').AsFloat;
          Query_Exe.ParamByName('P2T_ACRES_PERC').AsFloat      :=0;
          Query_Exe.ParamByName('P2T_CODVEN').AsFloat          :=pTabela.FieldbyName('P2SCODVEN').AsFloat;
         Query_Exe.ParamByName('P2T_MOTIVODESONERACAO').AsFloat          :=0;

          Query_Exe.ParamByName('P2T_ICMS_PRED').AsFloat       :=0;
          Query_Exe.ParamByName('P2T_ST_IVA').AsFloat          :=0;

          Query_Exe.ParamByName('P2T_ST_PREDUT').AsFloat       :=0;

          Query_Exe.ParamByName('P2T_ST_ICMSRED').AsFloat      :=0;
          Query_Exe.ParamByName('P2T_ST_ICMSDEB').AsFloat      :=0;

          Query_Exe.ParamByName('P2T_ST_ICMSCRED').AsFloat     :=0;

          Query_Exe.ParamByName('P2T_ICMSSN_PERC').AsFloat     :=0;

          Query_Exe.ParamByName('P2T_PED1_ACRERAT').AsFloat    := 0;
          Query_Exe.ParamByName('P2T_PED1_VALSEG').AsFloat     := pValorSeg;
          Query_Exe.ParamByName('P2T_PED1_VALFRE').AsFloat     := pValorFre;
          Query_Exe.ParamByName('P2T_PED1_TARBAN').AsFloat     := pTarBan;
          Query_Exe.ParamByName('P2T_PED1_DESPACES').AsFloat   := pDespaces;
          Query_Exe.ParamByName('P2T_CST').AsString            := pTabela.FieldbyName('P2SCST').AsString;
          Query_Exe.ParamByName('P2T_CBENEF').AsString            := '';
          Query_Exe.ParamByName('P2T_AMBIENTE').AsString       := ' ';
          Query_Exe.ParamByName('P2T_DESCCOMPL').AsString      := pTabela.FieldbyName('P2SDESC_COMP').AsString;
          Query_Exe.ParamByName('P2T_IRRF_PERC').Value         := 0;
          Query_Exe.ParamByName('P2T_CSLL_PERC').Value         := 0;

          Query_Exe.ParamByName('P2T_CSOSN').AsString          := pTabela.FieldbyName('P2SCSOSN').AsString;
          Query_Exe.ParamByName('P2T_CSOSN_ORI').AsString      := pTabela.FieldbyName('P2SCSOSN_ORI').AsString;
          Query_Exe.ParamByName('P2T_PROMOCAO').AsString       := ' ';
          Query_Exe.ParamByName('P2T_QTDDUP').AsInteger        :=iif(mPed1_QtdParc<1,1,mped1_qtdparc);
          Query_Exe.ParamByName('P2T_ARRED').AsInteger         :=mPed1_ArrTrunc;

          Query_Exe.ParamByName('P2T_QTDDUP_ANT').AsInteger    :=mPed1_QtdParc_ant;
          Query_Exe.ParamByName('P2T_PRAZOS').AsString         :=mPed1_Parcelas;
          if p2Estoque=2 then
             begin
             Query_Exe.ParamByName('P2T_ESTNOR').AsString   :='N';
             Query_Exe.ParamByName('P2T_ESTCONS').AsString  :='N';
             Query_Exe.ParamByName('P2T_ESTTERC').AsString  :='N';
             Query_Exe.ParamByName('P2T_ESTREV').AsString   :='N';
             Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
             end
          else
             begin
             Query_Exe.ParamByName('P2T_ESTNOR').AsString        :=mPd_EstNor;
             Query_Exe.ParamByName('P2T_ESTCONS').AsString       :=mPd_EstCons;
             Query_Exe.ParamByName('P2T_ESTTERC').AsString       :=mPd_EstTerc;
             Query_Exe.ParamByName('P2T_ESTREV').AsString        :=mPd_EstVenda;
             Query_Exe.ParamByName('P2T_EST_RESERVADO').AsString   :='N';
             end;
          if (pTipoEve=3) then
             begin
             if mpd_estnor='E' then
                Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='S'
             else if mpd_estnor='S' then
                Query_Exe.ParamByName('P2T_ESTNOR').AsString        :='E';
             end;


          Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger            :=0;
          Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString        :='';
          Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString           :=pCodPro_ant;
          Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat               :=pQtd_Ant;

          Query_Exe.ParamByName('P2T_CODFP').AsInteger           := mPed1_codFP;
          Query_Exe.ParamByName('P2T_NOMFP').AsString            := mPed1_NomFP;
          Query_Exe.ParamByName('P2T_BAIXA').AsString            := pBaixa;
    //      Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01').AsFloat  := 0;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

          Query_Exe.ParamByName('P2T_PED1_DESC_PERC01_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC02_ANT').AsFloat  := -1;
          Query_Exe.ParamByName('P2T_PED1_DESC_PERC03_ANT').AsFloat  := -1;

          Query_Exe.ParamByName('P2T_DESC_PERC01').AsFloat       :=pTabela.FieldbyName('P2SPDESC01').AsFloat;

          Query_Exe.ParamByName('P2T_DESC_PERC02').AsFloat       :=pTabela.FieldbyName('P2SPDESC02').AsFloat;
          Query_Exe.ParamByName('P2T_DESC_PERC03').AsFloat       :=pTabela.FieldbyName('P2SPDESC03').AsFloat;
          Query_Exe.ParamByName('P2T_DESC_VALOR').AsFloat        :=0;
          Query_Exe.ParamByName('P2T_PED1_DESCRAT').AsFloat      :=pDescRat;


          Query_Exe.ParamByName('P2T_CODUSR').AsInteger              := mPed1_CodUsr_Dig;
          Query_Exe.ParamByName('P2T_DATAPED').AsDateTime            := mPed1_Datap;

       //LINDOMAR
          if pItem_ant=0 then
             begin
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=0;
             Query_Exe.ParamByName('P2T_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
             end
          else
             begin
             if pTabela.FieldbyName('P2CODPRO').AsString<>pcodpro_ant then
                begin
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodpro_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
                Query_Exe.ParamByName('P2T_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pTabela.FieldbyName('P2CODPRO').AsString+'. Empresa: '+IntToStr(mPed1_Codemp);
                end
             else if pQtd_Cal<>pQtd_Ant then
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mCasQtd, pqtd_Cal)+'. Empresa: '+IntToStr(mPed1_Codemp)
             else
                Query_Exe.ParamByName('P2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=1;
             Query_Exe.ParamByName('P2T_ITEM_ANT').AsInteger         :=pItem_ant;

             Query_Exe.ParamByName('P2T_CODPRO_ANT').AsString:=pcodpro_ant;
             Query_Exe.ParamByName('P2T_QTD_ANT').AsFloat:=pQtd_Ant;
             end;
          if (pTipoEve=3) or (pTipoEve=2) then
             Query_Exe.ParamByName('P2T_TIPO_EVENTO').AsInteger:=pTipoEve;

          Query_Exe.ParamByName('P2T_DESC_CAB').AsFloat     :=0;
          Query_Exe.ParamByName('P2T_ALTDUP').AsString      :=mPed1_AjustaFP;
          Query_Exe.ParamByName('P2T_CONTESP').AsInteger    :=0;
          if Log_TipoLote=1 then
             Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 3
          else
             Query_Exe.ParamByName('P2T_TIPOPROD').AsInteger   := 0;

          if mPed1_Codemp>100 then
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_101='||||||||||||','0||||||||||||',mPed1_PrzNovos_101)
          else
             Query_Exe.ParamByName('PT2_PRZNOVOS').AsString    :=iif(mPed1_PrzNovos_001='||||||||||||','0||||||||||||',mPed1_PrzNovos_001);
          Query_Exe.ParamByName('P2T_TPPCO_ITEM').Asinteger         :=0;
          Query_Exe.ParamByName('P2T_TPPCO_CAB').Asinteger         :=mped1_tppco;
          Query_Exe.ParamByName('P2T_ICMSR_PRIMPARC').Asinteger    :=mped1_ICMSR_PRIMPARC;
          Query_Exe.ParamByName('P2T_ICMSR_SOBLIQ').AsString:=mPed1_ICMSRSOBLIQ;

          Query_Exe.ParamByName('P2T_ICMS_ALIPI').AsFloat               :=0;
          Query_Exe.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
          Query_Exe.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;

          Query_Exe.ParamByName('P2T_PISSQN').AsFloat        :=pTabela.FieldbyName('P2SALIQISSQN').AsFloat;
          Query_Exe.ParamByName('P2T_INSS_PRED').AsFloat     :=pTabela.FieldbyName('P2SPREDINSS').AsFloat;
          Query_Exe.ParamByName('P2T_INSS_ALIQ').AsFloat     :=PTabela.FieldbyName('P2SALIQINSS').AsFloat;
          Query_Exe.ParamByName('P2T_IRRF_PRED').AsFloat     :=PTabela.FieldbyName('P2SPREDIRRF').AsFloat;
          Query_Exe.ParamByName('P2T_IRRF_ALIQ').AsFloat     :=PTabela.FieldbyName('P2SALIQIRRF').AsFloat;
          Query_Exe.ParamByName('P2T_PROD_SERV').AsInteger   :=pProdServ;
          Query_Exe.ParamByName('P2T_PCOMTEL').AsFloat                  := DM1.Tb_PargerPCOMTLV.Asfloat;
    {
          query_exe.ParamByName('P2T_CEST').AsString                       :=pTabela.FieldByName('P2CEST').AsString;
          query_exe.ParamByName('P2T_CPUFDEST').AsFloat                    :=pTabela.FieldByName('P2CPUFDEST').AsFloat;
          query_exe.ParamByName('P2T_ICMSUFDEST').AsFloat                  :=pTabela.FieldByName('P2ICMSUFDEST').AsFloat;
          query_exe.ParamByName('P2T_ICMSINTER').AsFloat                   :=pTabela.FieldByName('P2ICMSINTER').AsFloat;
          query_exe.ParamByName('P2T_ICMSINTERPART').AsFloat               :=pTabela.FieldByName('P2ICMSINTERPART').AsFloat;
    }


          Query_Exe.ParamByName('P2T_CBS_CST').AsString                    :=pTabela.FieldByName('P2CBS_CST').AsString;
          Query_Exe.ParamByName('P2T_CODCLASSTRIB').AsString               :=pTabela.FieldByName('P2CODCLASSTRIB').AsString;
          query_exe.ParamByName('P2T_CBS_ALIQ').AsFloat                    :=pTabela.FieldByName('P2CBS_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_IBS_UF_ALIQ').AsFloat                 :=pTabela.FieldByName('P2IBS_UF_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_IBS_MUN_ALIQ').AsFloat                :=pTabela.FieldByName('P2IBS_MUN_ALIQ').AsFloat;
          query_exe.ParamByName('P2T_INDOP_IBSCBS').AsString               :='';


          query_exe.ParamByName('P2T_CEST').AsString                       :=' ';
          query_exe.ParamByName('P2T_CPUFDEST').AsFloat                    :=0;
          query_exe.ParamByName('P2T_ICMSUFDEST').AsFloat                  :=0;
          query_exe.ParamByName('P2T_ICMSINTER').AsFloat                   :=0;
          query_exe.ParamByName('P2T_ICMSINTERPART').AsFloat               :=0;

      Query_Exe.ParamByName('P2T_CODTRIB_MUN').AsString                     :='';
      Query_Exe.ParamByName('P2T_CODTRIB_NAC').AsString                     :='';

      Query_Exe.ParamByName('P2T_CODNBS').AsString                    :='';
      Query_Exe.ParamByName('P2T_CODCNAE').AsString                    :='';
      query_exe.ParamByName('P2T_PCOFINS').AsFloat                :=0;
      query_exe.ParamByName('P2T_PCSLL').AsFloat                :=0;
      query_exe.ParamByName('P2T_PISSQN').AsFloat                :=0;
      query_exe.ParamByName('P2T_PIR').AsFloat                :=0;


          end;


    // termino servico

      mPed1_AjustaFP:='S';

//  ex_erroSql_Novo(Query_Exe,2797,'2797'+'_lerarq ','cadp01_pre');

      try
         Query_Exe.ExecSQL;

       except on e : exception do
    //      showmessage('Ocorreu o seguinte erro: '+ e.message);
          if not fVerificaRedeAtiva(true) then
             begin
             end
          else
             begin
             ex_erroSql_Novo(Query_Exe,4189,'4189'+'_lerarq'+E.Message,'cadp01_pre');
             result:=false;
             end;
          end;
       end;
except on e : exception do
   begin
   messagedlg('Erro venda gravarpedido'+e.message,mtError,[mbOk],0);
   end;
   end;

mPed1_QtdParc_Ant:=mPed1_QtdParc;
mPed1_pDesc01_Ant:=mPed1_pDesc01;
mPed1_pDesc02_Ant:=mPed1_pDesc02;
mPed1_pDesc03_Ant:=mPed1_pDesc03;
freeandnil(query_exe);
fRatearDescontosAcrescimos(pDescRat,pValAcre,pValorSeg,pValorFre,pTarBan,pDespaces,true);

result:=true;

end;






///

function TFrm_Vendas_GravarPedido.fLimparCampos(pTipo: Integer): Boolean;
begin
    mPed1_cfop1       :=0;
    mPed1_DatHor_mod  :=pdatanula;

    mPed1_SitPed      :=0;
    mPed1_cfop2       :=0;
    mped1_formace:= DM1.Tb_PargerPFORMACE.AsInteger;
    mPed1_DescPed02_Perc:=0;
    mPed1_Codemp:=0;
    mped1_Chave:=0;
    mPed1_Chave_ano:=0;
    mPed1_CodCli:=0;
    mped1_Filial:=log_filial_padrao;
    if mped1_filial<1 then
       mped1_filial:=1;
    mPed1_nf_imp:='N';   

    mped1_razsoc:='';
    mPed1_Codven:=0;
    mPed1_Codtlv:=0;
    mPed1_Tipo_Ped:=0;
    mPed1_status:=0;
    mPed1_numNf:=0;


   mPed1_pvdescf     :=0;
   mPed1_pvddescf    :=0;
   mPed1_pvdiasdescf :=0;
   mPed1_Acrescimo   :=0;
   mPed1_PrzNovos_001:='';
   mPed1_PrzNovos_101:='';
   mPed1_QtdParc:=0;
   mPed1_QtdParc_ant:=-1;




//    mPed1_CF_CodEcf:=0;
//    mPed1_NF_Situacao:=0;
//    mPed1_NF_Numero:=0;
//    mPed1_NFS_Situacao:=0;
//    mPed1_NFS_Numero:=0;
//    mped1_CF_Situacao:=0;
//    mPed1_CF_Numero:=0;
    mPed1_CodUsr_Dig:=0;
    mPed1_CodUsr_Mod:=0;

    mPed1_CodPV:=0;
    mPed1_CodFP:=0;
    mPed1_Codcv:=0;

    mPed1_CodFp_Vinculo:=0;
    mPed1_CodBco1:=0;
    mPed1_CodBco101:=0;

    mPed1_CodTra:=0;
    mPed1_Frete_CIFFOB:=9;
    mPed1_QtdVol:=0;
    mPed1_TpPco:=0;

    mPed1_Tabela:='';
    mPed1_Situacao:=0;
    mPed1_CodUsr_UEVE:=0;
    mped1_prevent:=pdatanula;
    mPed1_QtdMan:=0;
    mPed1_Bloqueio:=0;mPed1_QtdDec:=0;mPed1_TotPromo:=0;mPed1_TarBan_001:=0;mPed1_TarBan_101:=0;
    mPed1_ArrTrunc:=0;
    mPed1_TotMer:=0;mPed1_TotSer:=0;mPed1_Totall:=0;mPed1_ValSeg:=0;mPed1_ValFre:=0;mPed1_pDesc01:=0;mPed1_DespAces:=0;
    mPed1_codusr_lbloq   :=0;
    mPed1_BloqPend       :=0;

    mPed1_codbloq        :='';
    mPed1_codbloq_lib    :='';

    mPed1_Perc_Frete:=0;
    mPed1_TotIPI:=0;
    mPed1_Pdesc02:=0;mPed1_Pdesc03:=0;
    mPed1_SepAmb:=0;

    mPed1_Desc_Rateado:=0;
    mPed1_pDesc01:=0;
    mPed1_Pdesc02:=0;
    mPed1_Pdesc03:=0;

    mPed1_pDesc01_Ant:=0;
    mPed1_Pdesc02_Ant:=0;
    mPed1_Pdesc03_Ant:=0;

    mPed1_Acres_VlrTot:=0;pValAcre:=0;
    mPed1_Desc_Cab:=0;
    mPed1_PesoB:=0;mPed1_PesoL:=0;mPed1_DescFin:=0;
    mped1_minuta:=0;
    mPed1_Obs_Ped:='';mPed1_Obs_NF:='';mPed1_Obs_NFS:='';
//    ;mPed1_Nf_Serie:='';
//    mPed1_CF_SerieECf:='';mPed1_CF_Modelo:='';
//    mPed1_NF_Modelo:='';mPed1_NFS_Modelo:=''
// mPed1_CF_Data:=pDatanula;mPed1_NF_Data:=pDatanula;mPed1_NFS_Data:=pDatanula;
    ;mPed1_Especie:='';mPed1_Tra_UFPV:='';
    mPed1_Tra_PLACAv:='';mPed1_Comp_UEVE:='';

    mPed1_Datap:=pDatanula;
    mPed1_DataSep:=pDataNula;
    mPed1_DataEmb:=pDataNula;
    mPed1_DatHor_Dig:=pDatanula;mPed1_DatHor_UEVE:=pDatanula;
    mped1_canhoto:=0;
    mPed1_CodEmb:=0;
    mPed1_CodSep:=0;
    mPed1_CodCon:=0;
    mPed1_DatCon:=pDataNula;
    mPed1_DatEnt:=pDatanula;
    mped1_codent:=0;
    mped1_npedori1:='';
    mped1_npedori2:='';
    mped1_npedori:=0;

    mPed1_AjustaFP:='S';


        mped1_ECF_Serie    :='';
        mped1_Serie        :='';
        mPed1_Modelo       :='';


        mped1_numcf        :=0;
        mped1_datacf       :=pDataNula;
        mPed1_NumNF        :=0;
        mPed1_DataNF       :=pDataNula;


        mPed1_nfe_chacesso       :=''; 
        mPed1_nfe_nprot          :='';
        mPed1_datanf_serv        :=pdatanula;
        mPed1_serie_serv         :=''; 
        mPed1_numnf_serv         :=0;  
        mPed1_situacao_serv      :=0;  
        mPed1_chacesso_serv      :=''; 
        mPed1_modelo_serv        :=''; 
        mPed1_nprot_serv         :=''; 



         mPed1_QtdItem:=0;
         mPed1_QtdUnd:=0;
         mPed1_Icms_Base:=0;
         mPed1_Icms_Valor:=0;
         mPed1_Icms_Red_Vlr:=0;
         mPed1_ST_base:=0;
         mPed1_ST_Icms:=0;
         mPed1_IPI_Valor:=0;
         mPed1_DescFin_Valor:=0;
         mPed1_PIS_Valor:=0;
         mPed1_Cofins_Valor:=0;
         mPed1_ICMSSN_Valor:=0;
         mPed1_Totall      :=0;
         mPed1_pDesc01_Ant :=0;
         mPed1_Pdesc02_Ant :=0;
         mPed1_Pdesc03_Ant :=0;

         mPed1_QtdParc    :=0;
         mPed1_Parcelas   :='';
         mPed1_QtdParc_ant:=0;


        mPed1_NomFP      :='';
        mPed1_BaixaFP    :='';


        mped1_submod:=0;
        mPed1_Codemp_ini:=codemp;
        mPed1_Codemp_fin:=mPed1_Codemp_ini;


    // termino das variaveis no cabecalho
result:=true;
end;




function TFrm_Vendas_GravarPedido.fGravarServicos(pItem,pItem_ant,pcfo,pcfosubecf,pSituacao,pCodFpg,pTipoEve: Integer;
                      pcodSer,pcodser_ant: String;
                      pISSQN,
                      pDescFin_Perc,
                      pINSS_Aliq,
                      pINSS_pRed,
                      pIRRF_Aliq,
                      pIRRF_pRed,
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,ppreco,
                      ppcocus,
                      picm_aliq,ppcomis,
                      ppdescf,pPercAcre
                      ,pCodVen,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp: Real;
                      pcst, pDescCompl,pPromocao,pNomFP,pBaixa: String ): Boolean;
{
   DM1.Query1.ParamByName('P2T_CODFP').AsInteger:=0;
   DM1.Query1.ParamByName('P2T_NOMFP').AsString :=0;
   DM1.Query1.ParamByName('P2T_BAIXA').AsString :=0;
 }
var
x: Integer;
mDesc_Cab: Real;
begin
if mped1_Chave=0 THEN
   begin
   result:=true;
   exit;
   end;

result:=true;
mDesc_Cab:=0;

if (mPed1_pDesc01<>0) or (mPed1_pDesc02<>0) or (mPed1_pDesc03<>0) then
   begin
   if mPed1_pDesc01>0 then
      mDesc_Cab:=Arredonda ( ((pqtd*ppreco) *mPed1_pDesc01/100) ,2);

   if mPed1_pDesc02>0 then
      mDesc_Cab:=Arredonda( ( ((pqtd*ppreco)-mDesc_Cab)  *mPed1_pDesc02/100) ,2);

   if mPed1_pDesc03>0 then
      mDesc_Cab:=Arredonda( ( ((pqtd*ppreco)-mDesc_Cab)  *mPed1_pDesc03/100) ,2);

   end;

if mger_estanarede then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('Insert into cadp02s_pre_temp '
                          +'('
                          +'P2ST_CODEMP'
                          +',P2ST_CODEMP_FILIAL'
                          +',P2ST_CHAVE'
                          +',P2ST_CHAVE_ANO'
                          +',P2ST_ITEM'
                          +',P2ST_ITEM_ANT'
                          +',P2ST_CFOP'
                          +',P2ST_CFOP_SUBECF'
                          +',P2ST_PISSQN'
                          +',P2ST_SITUACAO'
                          +',P2ST_CODSER'
                          +',P2ST_CODSER_ANT'
                          +',P2ST_QTD'
                          +',P2ST_QTD_ANT'
                          +',P2ST_DESC_PERC01'
                          +',P2ST_DESC_PERC02'
                          +',P2ST_DESC_PERC03'
                          +',P2ST_DESC_VALOR'
                          +',P2ST_PRECO'
                          +',P2ST_PRECO_CUS'
                          +',P2ST_DESCFIN_PERC'
                          +',P2ST_INSS_ALIQ'
                          +',P2ST_INSS_PRED'
                          +',P2ST_IRRF_ALIQ'
                          +',P2ST_IRRF_PRED'
                          +',P2ST_CODVEN'
                          +',P2ST_PED1_DESCRAT'
                          +',P2ST_PED1_ACRERAT'
                          +',P2ST_CST'
                          +',P2ST_DESCCOMPL'
                          +',P2ST_PROMOCAO'
                          +',P2ST_QTDDUP'
                          +',P2ST_QTDDUP_ANT'
                          +',P2ST_PRAZOS'
                          +',P2ST_ESTNOR'
                          +',P2ST_ESTCONS'
                          +',P2ST_ESTTERC'
                          +',P2ST_ESTREV'
                          +',P2ST_TIPO_EVENTO'
                          +',P2ST_HISTORICO'
                          +',P2ST_HISTORICO_ANT'
                          +',P2ST_CODUSR'
                          +',P2ST_DESC_CAB'
                          +',P2ST_CODFP'
                          +',P2ST_NOMFP'
                          +',P2ST_BAIXA'
                          +',P2ST_PED1_DESC_PERC01'
                          +',P2ST_PED1_DESC_PERC02'
                          +',P2ST_PED1_DESC_PERC03'
                          +',P2ST_PED1_DESC_PERC01_ANT'
                          +',P2ST_PED1_DESC_PERC02_ANT'
                          +',P2ST_PED1_DESC_PERC03_ANT'
                          +',P2ST_DATAPED'
                          +',P2ST_ALTDUP'
                          +',P2ST_PED1_VALSEG'
                          +',P2ST_PED1_VALFRE'
                          +',P2ST_PED1_TARBAN'
                          +',P2ST_PED1_DESPACES'
                          +',PT2S_PRZNOVOS '
                          +',P2ST_TPPCO'
                          +',P2ST_ICMSR_PRIMPARC '

                          +',P2T_PED1_ICMS_OUTDESP_ALIQ '
                          +',P2T_PED1_ICMS_VALSEG_ALIQ '
                          +',P2T_PED1_ICMS_VALFRE_ALIQ '
                          +',P2T_PED1_VALSEG'
                          +',P2T_PED1_VALFRE'
                          +',P2T_PED1_TARBAN'
                          +',P2T_PED1_DESPACES'


                          +',P2ST_PCOMIS '


                          +') values ('
                          +' :P2ST_CODEMP'
                          +',:P2ST_CODEMP_FILIAL'
                          +',:P2ST_CHAVE'
                          +',:P2ST_CHAVE_ANO'
                          +',:P2ST_ITEM'
                          +',:P2ST_ITEM_ANT'
                          +',:P2ST_CFOP'
                          +',:P2ST_CFOP_SUBECF'
                          +',:P2ST_PISSQN'
                          +',:P2ST_SITUACAO'
                          +',:P2ST_CODSER'
                          +',:P2ST_CODSER_ANT'
                          +',:P2ST_QTD'
                          +',:P2ST_QTD_ANT'
                          +',:P2ST_DESC_PERC01'
                          +',:P2ST_DESC_PERC02'
                          +',:P2ST_DESC_PERC03'
                          +',:P2ST_DESC_VALOR'
                          +',:P2ST_PRECO'
                          +',:P2ST_PRECO_CUS'
                          +',:P2ST_DESCFIN_PERC'
                          +',:P2ST_INSS_ALIQ'
                          +',:P2ST_INSS_PRED'
                          +',:P2ST_IRRF_ALIQ'
                          +',:P2ST_IRRF_PRED'
                          +',:P2ST_CODVEN'
                          +',:P2ST_PED1_DESCRAT'
                          +',:P2ST_PED1_ACRERAT'
                          +',:P2ST_CST'
                          +',:P2ST_DESCCOMPL'
                          +',:P2ST_PROMOCAO'
                          +',:P2ST_QTDDUP'
                          +',:P2ST_QTDDUP_ANT'
                          +',:P2ST_PRAZOS'
                          +',:P2ST_ESTNOR'
                          +',:P2ST_ESTCONS'
                          +',:P2ST_ESTTERC'
                          +',:P2ST_ESTREV'
                          +',:P2ST_TIPO_EVENTO'
                          +',:P2ST_HISTORICO'
                          +',:P2ST_HISTORICO_ANT'
                          +',:P2ST_CODUSR'
                          +',:P2ST_DESC_CAB'
                          +',:P2ST_CODFP'
                          +',:P2ST_NOMFP'
                          +',:P2ST_BAIXA'
                          +',:P2ST_PED1_DESC_PERC01'
                          +',:P2ST_PED1_DESC_PERC02'
                          +',:P2ST_PED1_DESC_PERC03'
                          +',:P2ST_PED1_DESC_PERC01_ANT'
                          +',:P2ST_PED1_DESC_PERC02_ANT'
                          +',:P2ST_PED1_DESC_PERC03_ANT'
                          +',:P2ST_DATAPED'
                          +',:P2ST_ALTDUP'
                          +',:P2ST_PED1_VALSEG'
                          +',:P2ST_PED1_VALFRE'
                          +',:P2ST_PED1_TARBAN'
                          +',:P2ST_PED1_DESPACES'
                          +',:PT2S_PRZNOVOS '
                          +',:P2ST_TPPCO'
                          +',:P2ST_ICMSR_PRIMPARC '

                          +',:P2T_PED1_ICMS_OUTDESP_ALIQ '
                          +',:P2T_PED1_ICMS_VALSEG_ALIQ '
                          +',:P2T_PED1_ICMS_VALFRE_ALIQ '
                          +',:P2T_PED1_VALSEG'
                          +',:P2T_PED1_VALFRE'
                          +',:P2T_PED1_TARBAN'
                          +',:P2T_PED1_DESPACES'

                          +',:P2ST_PCOMIS '
                          +') ');

   DM1.Query1.ParamByName('P2ST_CODEMP').AsInteger      := mPed1_Codemp;
   DM1.Query1.ParamByName('P2ST_CODEMP_FILIAL').AsInteger:=iif(mPed1_Codemp>100,mped1_codemp-100,mped1_codemp+100);
   DM1.Query1.ParamByName('P2ST_CHAVE').AsInteger       := mped1_Chave;
   DM1.Query1.ParamByName('P2ST_CHAVE_ANO').AsInteger   :=mPed1_Chave_ano;
   DM1.Query1.ParamByName('P2ST_ITEM').AsInteger        :=pItem;
   DM1.Query1.ParamByName('P2ST_ITEM_ANT').AsInteger    :=pItem_ant;
   DM1.Query1.ParamByName('P2ST_CFOP').AsInteger        :=pcfo;
   DM1.Query1.ParamByName('P2ST_CFOP_SUBECF').AsInteger :=pcfosubecf;
   DM1.Query1.ParamByName('P2ST_PISSQN').AsFloat        :=pISSQN;
   DM1.Query1.ParamByName('P2ST_SITUACAO').AsInteger    :=pSituacao;
   DM1.Query1.ParamByName('P2ST_CODSER').AsString       :=pcodSer;
   DM1.Query1.ParamByName('P2ST_CODSER_ANT').AsString   :=pcodser_ant;
   DM1.Query1.ParamByName('P2ST_QTD').AsFloat           :=pqtd;
   DM1.Query1.ParamByName('P2ST_QTD_ANT').AsFloat       :=pQtd_Ant;
   DM1.Query1.ParamByName('P2ST_DESC_PERC01').AsFloat   :=pdesc1;
   DM1.Query1.ParamByName('P2ST_DESC_PERC02').AsFloat   :=pdesc2;
   DM1.Query1.ParamByName('P2ST_DESC_PERC03').AsFloat   :=pdesc3;
   DM1.Query1.ParamByName('P2ST_DESC_VALOR').AsFloat    :=0;
   DM1.Query1.ParamByName('P2ST_PRECO').AsFloat         :=ppreco;
   DM1.Query1.ParamByName('P2ST_PRECO_CUS').AsFloat     :=ppcocus;
   DM1.Query1.ParamByName('P2ST_DESCFIN_PERC').AsFloat  :=pDescFin_Perc;
   DM1.Query1.ParamByName('P2ST_INSS_ALIQ').AsFloat     :=pINSS_Aliq;
   DM1.Query1.ParamByName('P2ST_INSS_PRED').AsFloat     :=pINSS_pRed;
   DM1.Query1.ParamByName('P2ST_IRRF_ALIQ').AsFloat     :=pIRRF_Aliq;
   DM1.Query1.ParamByName('P2ST_IRRF_PRED').AsFloat     :=pIRRF_pRed;
   DM1.Query1.ParamByName('P2ST_CODVEN').AsFloat        :=pCodVen;
   DM1.Query1.ParamByName('P2ST_PED1_DESCRAT').AsFloat  :=ped1_descrat;
   DM1.Query1.ParamByName('P2ST_PED1_ACRERAT').AsFloat  :=ped1_acrerat;
   DM1.Query1.ParamByName('P2ST_CST').AsString          :=pcst;
   DM1.Query1.ParamByName('P2ST_DESCCOMPL').AsString    :=pDescCompl;
   DM1.Query1.ParamByName('P2ST_PROMOCAO').AsString     :=pPromocao;
   DM1.Query1.ParamByName('P2ST_QTDDUP').AsInteger      :=mPed1_QtdParc;
   DM1.Query1.ParamByName('P2ST_QTDDUP_ANT').AsInteger  :=mPed1_QtdParc_ant;
   DM1.Query1.ParamByName('P2ST_PRAZOS').AsString       :=mPed1_Parcelas;

   DM1.Query1.ParamByName('P2ST_ESTNOR').AsString   :='N';
   DM1.Query1.ParamByName('P2ST_ESTCONS').AsString  :='N';
   DM1.Query1.ParamByName('P2ST_ESTTERC').AsString  :='N';
   DM1.Query1.ParamByName('P2ST_ESTREV').AsString   :='N';

   DM1.Query1.ParamByName('P2ST_TIPO_EVENTO').AsInteger :=pTipoEve;
   DM1.Query1.ParamByName('P2ST_HISTORICO').AsString    :='';
   DM1.Query1.ParamByName('P2ST_HISTORICO_ANT').AsString:='';
   DM1.Query1.ParamByName('P2ST_CODUSR').AsInteger      :=mPed1_CodUsr_Dig;
   DM1.Query1.ParamByName('P2ST_DESC_CAB').AsFloat      :=mDesc_Cab;
   DM1.Query1.ParamByName('P2ST_CODFP').AsInteger       :=mPed1_CodFP;
   DM1.Query1.ParamByName('P2ST_NOMFP').AsString        :=mPed1_NomFP;
   DM1.Query1.ParamByName('P2ST_BAIXA').AsString        :=pBaixa;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC01').AsFloat:=mPed1_pDesc01;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC02').AsFloat:=mPed1_Pdesc02;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC03').AsFloat:=mPed1_Pdesc03;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC01_ANT').AsFloat:=mPed1_pDesc01_Ant;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC02_ANT').AsFloat:=mPed1_pDesc02_Ant;
   DM1.Query1.ParamByName('P2ST_PED1_DESC_PERC03_ANT').AsFloat:=mPed1_pDesc03_Ant;
   DM1.Query1.ParamByName('P2ST_DATAPED').AsDateTime          :=mPed1_Datap;
//LINDOMAR
   if pItem_ant=0 then
      begin
      DM1.Query1.ParamByName('P2ST_TIPO_EVENTO').AsInteger:=0;
      DM1.Query1.ParamByName('P2ST_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
      end
   else
      begin
      if pcodSer<>pcodser_ant then
         begin
         DM1.Query1.ParamByName('P2ST_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodser_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
         DM1.Query1.ParamByName('P2ST_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pcodSer+'. Empresa: '+IntToStr(mPed1_Codemp);
         end
      else if pqtd<>pQtd_Ant then
         DM1.Query1.ParamByName('P2ST_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mCasQtd, pqtd)+'. Empresa: '+IntToStr(mPed1_Codemp)
      else
         DM1.Query1.ParamByName('P2ST_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
      DM1.Query1.ParamByName('P2ST_TIPO_EVENTO').AsInteger:=1;
      DM1.Query1.ParamByName('P2ST_ITEM_ANT').AsInteger:=pItem_ant;
      DM1.Query1.ParamByName('P2ST_CODSER_ANT').AsString:=pcodser_ant;
      DM1.Query1.ParamByName('P2ST_QTD_ANT').AsFloat:=pQtd_Ant;
      end;
   if (pTipoEve=3) or (ptipoEve=2) then
      DM1.Query1.ParamByName('P2ST_TIPO_EVENTO').AsInteger:=pTipoEve;

   DM1.Query1.ParamByName('P2ST_DESC_CAB').AsFloat     :=mDesc_Cab;
   DM1.Query1.ParamByName('P2ST_ALTDUP').AsString      :=mPed1_AjustaFP;

   DM1.Query1.ParamByName('P2ST_PED1_VALSEG').AsFloat       :=mPed1_ValSeg;
   DM1.Query1.ParamByName('P2ST_PED1_VALFRE').AsFloat       :=mPed1_ValFre;
   if mped1_codemp<100 then
      DM1.Query1.ParamByName('P2ST_PED1_TARBAN').AsFloat       :=mPed1_TarBan_001
   else
      DM1.Query1.ParamByName('P2ST_PED1_TARBAN').AsFloat       :=mPed1_TarBan_101;

   DM1.Query1.ParamByName('P2ST_PED1_DESPACES').AsFloat       :=mPed1_DespAces;
   if mPed1_Codemp>100 then
      DM1.Query1.ParamByName('PT2S_PRZNOVOS').AsString    :=mPed1_PrzNovos_101
   else
      DM1.Query1.ParamByName('PT2S_PRZNOVOS').AsString    :=mPed1_PrzNovos_001;

   DM1.Query1.ParamByName('P2ST_TPPCO').Asinteger         :=mped1_tppco;
   DM1.Query1.ParamByName('P2ST_ICMSR_PRIMPARC').Asinteger         :=mped1_ICMSR_PRIMPARC;


   DM1.Query1.ParamByName('P2T_PED1_VALSEG').AsFloat :=mPed1_ValSeg;
   DM1.Query1.ParamByName('P2T_PED1_VALFRE').AsFloat :=mPed1_ValFre;
   if mPed1_Codemp>99 then
      DM1.Query1.ParamByName('P2T_PED1_TARBAN').AsFloat :=mPed1_TarBan_101
   else
      DM1.Query1.ParamByName('P2T_PED1_TARBAN').AsFloat :=mPed1_TarBan_001;

   DM1.Query1.ParamByName('P2T_PED1_DESPACES').AsFloat :=ped1_outdesp;
   DM1.Query1.ParamByName('P2T_PED1_ICMS_OUTDESP_ALIQ').AsFloat   :=mped1_icms_outdesp_aliq;
   DM1.Query1.ParamByName('P2T_PED1_ICMS_VALSEG_ALIQ').AsFloat    :=mped1_icms_valseg_aliq;
   DM1.Query1.ParamByName('P2T_PED1_ICMS_VALFRE_ALIQ').AsFloat    :=mped1_icms_valfre_aliq;

   DM1.Query1.ParamByName('P2ST_PCOMIS').AsFloat    :=ppcomis;



   mPed1_AjustaFP:='S';
   try
      DM1.Query1.ExecSQL;
   except on e : exception do
      begin
      showmessage('Ocorreu o seguinte erro: '+ e.message);

      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(DM1.Query1,4182,'4182'+'_lerarq '+E.Message,'cadp01');
         result:=false;
         end;
      end;
      end;
   mPed1_QtdParc_Ant:=mPed1_QtdParc;
   end;

mPed1_pDesc01_Ant:=mPed1_pDesc01;
mPed1_pDesc02_Ant:=mPed1_pDesc02;
mPed1_pDesc03_Ant:=mPed1_pDesc03;

fRatearDescontosAcrescimos(ped1_descrat,ped1_acrerat,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp,true);

result:=true;

end;



{
function TFrm_Vendas_GravarPedido.fCalcularPeso(pChave,pOrdem,pCodemp,pLotSeq: Real;pEspecie: String): Boolean;
var
query_temp: tQuery;
begin
if DM1.Tb_PargerPCALCPPRO.AsFloat<1 then
   begin
   result:=true;
   exit;
   end;

query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.add('select sum(P2QTD*decode(PDPESOL,0,PDPESOB,PDPESOL)) AS PESOL,  '
                  +' sum(P2QTD*decode(PDPESOB,0,PDPESOL,PDPESOB)) AS PESOB '
                  +' from cadp02,CADPRO '
                  +' WHERE '
                  +' P2CODEMP=:CODEMP '
                  +' and P2LOTSEQ=:LOTSEQ '
                  +' and P2CHAVE=:CHAVE '
                  +' and (PDCODEMP=P2CODEMP or PDCODEMP+100=P2CODEMP or PDCODEMP-100=P2CODEMP) '
                  +' and PDCODPRO=P2CODPRO ');
query_temp.ParamByName('CODEMP').Value:=pCodemp;
query_temp.ParamByName('LOTSEQ').Value:=pLotSeq;
query_temp.ParamByName('CHAVE').Value:=pChave;

query_temp.Open;
mPed1_PesoL:=query_temp.Fields[0].AsFloat;
mPed1_PesoL:=Arredonda(mPed1_PesoL,DM1.Tb_PargerPQTDCASARRED.AsInteger);
mPed1_PesoB:=query_temp.Fields[1].AsFloat;
mPed1_PesoB:=Arredonda(mPed1_PesoB,DM1.Tb_PargerPQTDCASARRED.AsInteger);

if copy(LowerCase(pEspecie),1,5)='fardo' then
   begin
   if DM1.Tb_PargerPPERCPLFARDO.AsFloat>0 then
      mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLFARDO.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
   end
else if (copy(LowerCase(pEspecie),1,6)='pacote') or (copy(LowerCase(pEspecie),1,3)='pct') then
   begin
   if DM1.Tb_PargerPPERCPLPCT.AsFloat>0 then
      mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLPCT.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
   end
else if (copy(LowerCase(pEspecie),1,5)='caixa') or (copy(LowerCase(pEspecie),1,2)='cx') then
   begin
   if DM1.Tb_PargerPPERCPLCX.AsFloat>0 then
      mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPLCX.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
   end
else
   begin
   if DM1.Tb_PargerPPERCPL.AsFloat>0 then
      mPed1_PesoB  :=Arredonda((mPed1_PesoL+(mPed1_PesoL*DM1.Tb_PargerPPERCPL.Value/100)),DM1.Tb_PargerPQTDCASARRED.AsInteger);
   end;
FreeAndNil(query_temp);

end;
}


end.
