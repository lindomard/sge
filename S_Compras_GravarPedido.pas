unit S_Compras_GravarPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DB, DBTables, func2;

type
  TFrm_Compras_GravarPedido = class(TForm)
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    // variaveis utilizadas no cabecalho

    mPed1_CodEmp: Integer;
    mped1_Chave: Integer;
    mped1_id_new: Integer;
    mped1_Filial: Integer;
    mPed1_Chave_ano: Integer;
    mPed1_Codfor: real;
    mPed1_BASER_IPI: Integer;

    mPed1_siv_frete: real;
    mPed1_siv_dare: real;
    mPed1_siv_outros: real;
    mPed1_Siv_Outros_Tipo: String;

    mped1_numdup: real;
    mped1_desd: string;
    mPed1_OutVDup: Real;

    mped1_gravdp: integer;
//    mped1_gravnf: integer;


    mPed1_DataEnt: TDatetime;
    mPed1_DataNF: TDatetime;
    mPed1_DataPrevFat: TDatetime;
    mPed1_DataPrevEnt: TDatetime;


    mPed1_Serie: String;
    mPed1_Modelo: String;
    mPed1_Nfe_Chave: String;
    mPed1_NumNF: real;
    Ped1_Datap:TDateTime;
    mPed1_Obs_Ped:String;
    mPed1_QtdDec: Integer;
    mPed1_pDesc01:Real;
    mPed1_pDesc02:Real;
    mPed1_pDesc03:Real;
    mPed1_Desc_Rateado:Real;
    mPed1_totalDesoneracao:Real;
    mPed1_Totall:Real;
    mPed1_SitPed: Integer;
    mPed1_Tipo: Integer;
    mPed1_Situacao: Integer;
    mPed1_CodUsr_Dig: Integer;
    mPed1_DatHor_Dig: TDatetime;
    mPed1_QtdMan: Integer;
    mPed1_CodUsr_UEVE: Integer;
    mPed1_DatHor_UEVE:TDateTime;
    mPed1_TotMer:Real;
    mPed1_ValSeg:Real;
    mPed1_ValSeg_icms_aliq:Real;
    mPed1_ValSeg_icms_valor:Real;




    mPed1_ValFre:Real;
    mPed1_ValFre_Icms_Aliq:Real;
    mPed1_ValFre_Icms_Valor:Real;

    mPed1_ValFre_pipi:Real;
    mPed1_ValFre_ipi:Real;


    mPed1_Imp_Imp_Valor:Real;
    mPed1_Imp_Imp_Aliq:Real;
    mPed1_Frete_CIFFOB: Integer;
    mPed1_CodTra: Real;
    mPed1_OutDesp:Real;
    mPed1_OutDesp_icms_aliq:Real;
    mPed1_OutDesp_icms_valor:Real;


    mPed1_TotIPI,
    mPed1_Perc_Frete: Real;
    mPed1_Comp_UEVE: String;
    mPed1_Datap: TDateTime;

    mPed1_IcmsSobreIPI: boolean;


    mPed1_pDesc01_Ant,mPed1_Pdesc02_Ant,mPed1_Pdesc03_Ant: Real;
    mPed1_DescPed02_Perc: Real; // desconto total dos itens

    mPed1_QtdItem  :Integer;
    mPed1_QtdUnd   :Real;
    mPed1_Icms_Base:Real;
    mPed1_Icms_Valor:Real;
    mPed1_Icms_Red_Vlr:Real;
    mPed1_ST_base:Real;
    mPed1_ST_Icms:Real;
    mPed1_IPI_Valor:Real;
    mPed1_PIS_Valor:Real;
    mPed1_Cofins_Valor:Real;

    mPed1_PIS_Base:Real;
    mPed1_Cofins_Base:Real;

    mPed1_ICMSSN_Valor:Real;
    mPed1_Desc_Cab:Real;

    mPed1_QtdParc: Integer;
    mPed1_QtdParc_ant: Integer;
    mPed1_Parcelas   : String;
    mPed1_NomFP      : String;
    mPed1_BaixaFP    : String;

    mPed1_pDesc01_Valor: Real;

    mPed1_CodPV : Integer;
    mPed1_TabPV : string;
    mPed1_CodFP: Integer;



    mItem_IPI_VALOR: Real;
    mItem_ST_BASE: Real;
    mItem_ST_ICMS: Real;
    mItem_ICMS_BASE: Real;
    mItem_ICMS_VALOR: Real;
    mItem_ICMS_RED_VLR: Real;
    mItem_DESC_CABEC: Real;
    mItem_DESC_TOTDES: Real;
    mItem_PIS_VALOR: Real;
    mItem_Cofins_VALOR: Real;
    mItem_TOTLIQ: Real;
    mItem_ICMSSN_VALOR: Real;

    mPed1_AltDup: String;


// VALORES DIGITADOS


    mPed1_VD_IPI_Valor: Real;
    mPed1_VD_ICMSST_BASE: Real;
    mPed1_VD_ICMSST_VALOR: Real;
    mPed1_VD_ICMS_BASE: Real;
    mPed1_VD_ICMS_VALOR: Real;
    mPed1_VD_PIS_BASE: Real;
    mPed1_VD_PIS_VALOR: Real;
    mPed1_VD_COFINS_BASE: Real;
    mPed1_VD_COFINS_VALOR: Real;



// TERMINO DOS VALORES DIGITADOS




    // termino das variaveis no cabecalho


    function fGravarPed01(pTipo: Integer): Boolean;
    function fRatearDescontosAcrescimos(pItem: Integer;pValDes,pValAcre,pValseg,pValFre,pTarBan,pOutDesp: Real): Boolean;


    function fGravarItem(pItem,pItem_ant,pcfo,pcfosubecf,pmodbcst,pSituacao,p2Estoque,pCodFpg,pTipoEve: Integer;
                      pcodpro,pcodpro_ant: String;
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,ppreco,prepas,
                      plista,
                      ppcotab,ppcofpg,ppcoucpr,ppcocus,ppcomax,
                      pipi_aliq,
                      pipi_pred,
                      picm_aliq,ppcomis,pPis_Aliq,pCofins_Aliq,
                      ppdescf,pPercAcre
                      ,picms_predut,pst_iva,pst_predut,
                      pst_icmsred,pst_icms_deb,pIcmsSN_Aliq,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp,pbaser,picmsr: Real;
                       pcst,pCst_Pis,pCst_Cofins,pCst_IPI, pambiente,pDescCompl,pcsosn,pcsosn_ori,pPromocao,pNomFP,pBaixa: String;
                       pIPIQTDUNID,pIPIVUNID,pPISQTDUNID,pPISVUNID: Real; pCBENEF: String;pCOFINSQTDUNID,pCOFINSVUNID,pPF2VICMSDESON: Real;pcodNcm,pcodcest: String
                       ;pChavePFp : tChavePF;

                     pPF2CBS_CST
                     ,pPF2CODCLASSTRIB : string;
                      pPF2CBS_BC
                     ,pF2CBS_ALIQ
                     ,pPF2CBS_VALOR
                     ,pPf2IBS_MUN_VALOR
                     ,pPf2CBS_DEV_TRIB
                     ,pPf2IBS_UF_ALIQ
                     ,pPF2IBS_UF_VALOR
                     ,pPF2IBS_MUN_ALIQ : Real;
                     pPF2DESONERACAO_DEDUZ: integer;
                     pPF2DESONERACAO_MOTIVO: integer




                       ): Boolean;






   function fLimparCampos(pTipo: Integer): Boolean;



  end;

var
  Frm_Compras_GravarPedido: TFrm_Compras_GravarPedido;

implementation

uses S_DM1, LerArq,  func, func_excecoes;

{$R *.dfm}


function TFrm_Compras_GravarPedido.fGravarPed01(pTipo: Integer): Boolean;

// inicio

var
Query1_Exe: TQuery;
Query1_Chave: TQuery;
begin
result:=true;
Query1_Exe := TQuery.Create(nil);
Query1_Exe.DatabaseName:='SG_ASSOC';
Query1_Exe.Close;
Query1_Exe.SQL.Clear;

if ptipo=0 then
   begin
   Query1_Exe.SQL.Add('Insert into CADPF1 ('
                             +'PF1CODEMP'
                             +',PF1FILIAL'
                             +',PF1CHAVE'
                             +',PF1LOTSEQ'
                             +',PF1CODFOR'
                             +',PF1NUMDUP '
                             +',PF1GRAVDP '
//                             +',PF1GRAVNF '

                             +',PF1NUMNF'
                             +',PF1DESD '
                             +',PF1OUTVDUP '

                             +',PF1SERIE '
                             +',PF1MODELO '
                             +',PF1_NFE_CHAVE '
                             +',PF1DATAENT '
                             +',PF1DATANF '
                             +',PF1DTPENT '
                             +',PF1DTPFAT '

                             +',PF1DATA'
                             +',PF1OBS_PED'
                             +',PF1CASASD'
                             +',PF1DESC01'
                             +',PF1DESC02'
                             +',PF1DESC03'
                             +',PF1TOTDES'
                             +',PF1TOTLIQ'
                             +',PF1SITPED'
                             +',PF1STATUS '
                             +',PF1CODUSR '
                             +',PF1DATHOR_DIG'
                             +',PF1QTDMAN'
                             +',PF1CODUSR_UEVE'
                             +',PF1DATHOR_UEVE'
                             +',PF1TOTMER'
                             +',PF1TOTSEG'
                             +',PF1TOTSEG_ICMS_ALIQ'
                             +',PF1TOTSEG_ICMS_VALOR '
                             +',PF1TOTFRE'
                             +',PF1ALIQ_FRETE'
                             +',PF1ICMS_FRETE'
                             +',PF1PIPIFRETE'
                             +',PF1IPIFRETE'

                             +',PF1FRETEPC'
                             +',PF1CODTRA'
                             +',PF1OUTDESP'
                             +',PF1OUTDESP_ICMS_ALIQ'
                             +',PF1OUTDESP_ICMS_VALOR'

                             +',PF1IMP_IMP_VALOR '
                             +',PF1IMP_IMP_ALIQ '
                             +',PF1TIPO '
                             +',PF1SIV_FRETE '
                             +',PF1SIV_DARE '
                             +',PF1SIV_OUTROS '
                             +',PF1SIV_OUTROS_TIPO '
                             +',PF1CODPV '
                             +',PF1TABPV '
                             +',PF1CODFP '
                             +',PF1ID_NEW '



                             +') values ('
                             +':PF1CODEMP'
                             +',:PF1FILIAL'
                             +',:PF1CHAVE'
                             +',:PF1LOTSEQ'
                             +',:PF1CODFOR'
                             +',:PF1NUMDUP '
                             +',:PF1GRAVDP '
//                             +',:PF1GRAVNF '

                             +',:PF1NUMNF'
                             +',:PF1DESD '
                             +',:PF1OUTVDUP '

                             +',:PF1SERIE '
                             +',:PF1MODELO '
                             +',:PF1_NFE_CHAVE '

                             +',:PF1DATAENT '
                             +',:PF1DATANF '

                             +',:PF1DTPENT '
                             +',:PF1DTPFAT '

                             +',:PF1DATA'
                             +',:PF1OBS_PED'
                             +',:PF1CASASD'
                             +',:PF1DESC01'
                             +',:PF1DESC02'
                             +',:PF1DESC03'
                             +',:PF1TOTDES'
                             +',:PF1TOTLIQ'
                             +',:PF1SITPED'
                             +',:PF1STATUS '
                             +',:PF1CODUSR '
                             +',:PF1DATHOR_DIG'
                             +',:PF1QTDMAN'
                             +',:PF1CODUSR_UEVE'
                             +',:PF1DATHOR_UEVE'
                             +',:PF1TOTMER'
                             +',:PF1TOTSEG'
                             +',:PF1TOTSEG_ICMS_ALIQ'
                             +',:PF1TOTSEG_ICMS_VALOR '
                             +',:PF1TOTFRE'
                             +',:PF1ALIQ_FRETE'
                             +',:PF1ICMS_FRETE'
                             +',:PF1PIPIFRETE'
                             +',:PF1IPIFRETE'

                             +',:PF1FRETEPC'
                             +',:PF1CODTRA'
                             +',:PF1OUTDESP'
                             +',:PF1OUTDESP_ICMS_ALIQ'
                             +',:PF1OUTDESP_ICMS_VALOR'
                             +',:PF1IMP_IMP_VALOR '
                             +',:PF1IMP_IMP_ALIQ '
                             +',:PF1TIPO '
                             +',:PF1SIV_FRETE '
                             +',:PF1SIV_DARE '
                             +',:PF1SIV_OUTROS '
                             +',:PF1SIV_OUTROS_TIPO '
                             +',:PF1CODPV '
                             +',:PF1TABPV '
                             +',:PF1CODFP '
                             +',:PF1ID_NEW '
                             +')');

   mped1_codemp   :=codemp;
   Query1_Chave:=tQuery.Create(nil);
   Query1_Chave.DataBaseName:='SG_ASSOC';

   While true do
      begin
      mPed1_chave    :=fbuscarSequencia('PEDFOR_'+'0');
      mped1_id_new   :=fBuscarProximoId('CADPF1_SEQ');
      Query1_Exe.ParamByName('PF1ID_NEW').Asfloat:= mped1_id_new;
      Query1_Chave.close;
      Query1_Chave.SQL.Clear;
      Query1_Chave.SQL.Add('select count(*) from CADPF1 where (PF1CODEMP=:CODEMP or PF1CODEMP=:CODEMP_FILIAL)  and PF1CHAVE=:CHAVE');
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
   freeandnil(query1_chave);

   mPed1_chave_ano:=0;
   end
else
   begin
   Query1_Exe.SQL.Add('Update CADPF1 set '
                             +'PF1CODEMP=:PF1CODEMP'
                             +',PF1FILIAL=:PF1FILIAL'

                             +',PF1CHAVE=:PF1CHAVE'
                             +',PF1LOTSEQ=:PF1LOTSEQ'
                             +',PF1CODFOR=:PF1CODFOR'


                             +',PF1NUMDUP=:PF1NUMDUP '
                             +',PF1DESD=:PF1DESD '
                             +',PF1OUTVDUP =:PF1OUTVDUP '
                             +',PF1GRAVDP=:PF1GRAVDP '
//                             +',PF1GRAVNF=:PF1GRAVNF '

                             +',PF1NUMNF=:PF1NUMNF'
                             +',PF1SERIE=:PF1SERIE '
                             +',PF1MODELO=:PF1MODELO '
                             +',PF1_NFE_CHAVE=:PF1_NFE_CHAVE '

                             +',PF1DATAENT=:PF1DATAENT '
                             +',PF1DATANF =:PF1DATANF '
                             +',PF1DTPENT =:PF1DTPENT '
                             +',PF1DTPFAT =:PF1DTPFAT '

                             +',PF1DATA=:PF1DATA'
                             +',PF1OBS_PED=:PF1OBS_PED'
                             +',PF1CASASD=:PF1CASASD'
                             +',PF1DESC01=:PF1DESC01'
                             +',PF1DESC02=:PF1DESC02'
                             +',PF1DESC03=:PF1DESC03'
                             +',PF1TOTDES=:PF1TOTDES'
                             +',PF1TOTLIQ=:PF1TOTLIQ'
                             +',PF1SITPED=:PF1SITPED'
                             +',PF1STATUS=:PF1STATUS '
                             +',PF1CODUSR=:PF1CODUSR '
                             +',PF1DATHOR_DIG=:PF1DATHOR_DIG'
                             +',PF1QTDMAN=:PF1QTDMAN'
                             +',PF1CODUSR_UEVE=:PF1CODUSR_UEVE'
                             +',PF1DATHOR_UEVE=:PF1DATHOR_UEVE'
                             +',PF1TOTMER=:PF1TOTMER'
                             +',PF1TOTSEG=:PF1TOTSEG'
                             +',PF1TOTSEG_ICMS_ALIQ=:PF1TOTSEG_ICMS_ALIQ'
                             +',PF1TOTSEG_ICMS_VALOR=:PF1TOTSEG_ICMS_VALOR '
                             +',PF1TOTFRE=:PF1TOTFRE'
                             +',PF1ALIQ_FRETE=:PF1ALIQ_FRETE'
                             +',PF1ICMS_FRETE=:PF1ICMS_FRETE'
                             +',PF1PIPIFRETE=:PF1PIPIFRETE'
                             +',PF1IPIFRETE=:PF1IPIFRETE'
                             +',PF1FRETEPC=:PF1FRETEPC'
                             +',PF1CODTRA=:PF1CODTRA'
                             +',PF1OUTDESP=:PF1OUTDESP'
                             +',PF1OUTDESP_ICMS_ALIQ=:PF1OUTDESP_ICMS_ALIQ'
                             +',PF1OUTDESP_ICMS_VALOR=:PF1OUTDESP_ICMS_VALOR'
                             +',PF1IMP_IMP_VALOR=:PF1IMP_IMP_VALOR '
                             +',PF1IMP_IMP_ALIQ=:PF1IMP_IMP_ALIQ '
                             +',PF1TIPO=:PF1TIPO '
                             +',PF1SIV_FRETE=:PF1SIV_FRETE '
                             +',PF1SIV_DARE=:PF1SIV_DARE '
                             +',PF1SIV_OUTROS=:PF1SIV_OUTROS '
                             +',PF1SIV_OUTROS_TIPO=:PF1SIV_OUTROS_TIPO '
                             +',PF1CODPV=:PF1CODPV '
                             +',PF1TABPV=:PF1TABPV '
                             +',PF1CODFP=:PF1CODFP '
                             +' where PF1CODEMP=:PF1CODEMP'
                             +' and PF1CHAVE=:PF1CHAVE'
                             +' and PF1LOTSEQ=:PF1LOTSEQ');
   end;


Query1_Exe.ParamByName('PF1CODEMP').AsInteger   :=mPed1_CodEmp;
Query1_Exe.ParamByName('PF1FILIAL').AsInteger    :=mped1_Filial;

Query1_Exe.ParamByName('PF1CHAVE').AsInteger    :=mped1_Chave;
Query1_Exe.ParamByName('PF1LOTSEQ').AsInteger   :=mPed1_Chave_ano;
Query1_Exe.ParamByName('PF1CODFOR').AsFloat     :=mPed1_Codfor;

Query1_Exe.ParamByName('PF1NUMDUP').AsFloat     :=mped1_numdup;
if trim(mped1_desd) = '' then
  begin
  mped1_desd:='A';
  end;
Query1_Exe.ParamByName('PF1DESD').Asstring      :=mped1_desd;
Query1_Exe.ParamByName('PF1OUTVDUP').AsFloat    :=mPed1_OutVDup;




Query1_Exe.ParamByName('PF1GRAVDP').AsFloat     :=mped1_gravdp;
//Query1_Exe.ParamByName('PF1GRAVNF').AsFloat     :=mped1_gravnf;


Query1_Exe.ParamByName('PF1NUMNF').AsFloat      :=mPed1_NumNF;
Query1_Exe.ParamByName('PF1SERIE').AsString     :=mPed1_Serie;
if trim(mped1_modelo)='' then
   Query1_Exe.ParamByName('PF1MODELO').AsString    :='55'
else
   Query1_Exe.ParamByName('PF1MODELO').AsString    :=mPed1_Modelo;
Query1_Exe.ParamByName('PF1_NFE_CHAVE').AsString:=fdeixanum(mPed1_Nfe_Chave);

Query1_Exe.ParamByName('PF1DATAENT').AsDateTime :=mPed1_DataEnt;
Query1_Exe.ParamByName('PF1DATANF').AsDateTime  :=mPed1_DataNF;
Query1_Exe.ParamByName('PF1DTPFAT').AsDateTime  := mPed1_DataPrevFat;
Query1_Exe.ParamByName('PF1DTPENT').AsDateTime  := mPed1_DataPrevEnt;

Query1_Exe.ParamByName('PF1DATA').AsDateTime   :=mPed1_Datap;
Query1_Exe.ParamByName('PF1OBS_PED').AsString   :=COPY(mPed1_Obs_Ped,1,499);
Query1_Exe.ParamByName('PF1CASASD').AsInteger   :=mPed1_QtdDec;
Query1_Exe.ParamByName('PF1DESC01').AsFloat   :=mPed1_pDesc01;
Query1_Exe.ParamByName('PF1DESC02').AsFloat   :=mPed1_pDesc02;
Query1_Exe.ParamByName('PF1DESC03').AsFloat   :=mPed1_pDesc03;
Query1_Exe.ParamByName('PF1TOTDES').AsFloat   :=0;
Query1_Exe.ParamByName('PF1TOTLIQ').AsFloat   :=mPed1_Totall;
Query1_Exe.ParamByName('PF1SITPED').AsInteger   :=mPed1_SitPed;
Query1_Exe.ParamByName('PF1STATUS').AsInteger   :=mPed1_Situacao;
Query1_Exe.ParamByName('PF1CODUSR').AsInteger   :=mPed1_CodUsr_Dig;
Query1_Exe.ParamByName('PF1DATHOR_DIG').AsDateTime   :=mPed1_DatHor_Dig;
Query1_Exe.ParamByName('PF1QTDMAN').AsInteger   :=mPed1_QtdMan;
Query1_Exe.ParamByName('PF1CODUSR_UEVE').AsInteger   :=mPed1_CodUsr_UEVE;
Query1_Exe.ParamByName('PF1DATHOR_UEVE').AsDateTime   :=mPed1_DatHor_UEVE;
Query1_Exe.ParamByName('PF1TOTMER').AsFloat   :=mPed1_TotMer;
Query1_Exe.ParamByName('PF1TOTSEG').AsFloat   :=mPed1_ValSeg;
Query1_Exe.ParamByName('PF1TOTSEG_ICMS_ALIQ').AsFloat   :=mPed1_ValSeg_ICMS_ALIQ;
Query1_Exe.ParamByName('PF1TOTSEG_ICMS_VALOR').AsFloat   :=mPed1_ValSeg_ICMS_VALOR;
Query1_Exe.ParamByName('PF1TOTFRE').AsFloat   :=mPed1_ValFre;

Query1_Exe.ParamByName('PF1ALIQ_FRETE').AsFloat   :=mPed1_ValFre_Icms_Aliq;
Query1_Exe.ParamByName('PF1ICMS_FRETE').AsFloat   :=mPed1_ValFre_Icms_Valor;



Query1_Exe.ParamByName('PF1PIPIFRETE').AsFloat   :=mPed1_ValFre_pipi;
Query1_Exe.ParamByName('PF1IPIFRETE').AsFloat   :=mPed1_ValFre_ipi;


Query1_Exe.ParamByName('PF1FRETEPC').AsInteger   :=mPed1_Frete_CIFFOB;
Query1_Exe.ParamByName('PF1CODTRA').AsFloat     :=mPed1_CodTra;
Query1_Exe.ParamByName('PF1OUTDESP').AsFloat   :=mPed1_OutDesp;
Query1_Exe.ParamByName('PF1OUTDESP_ICMS_ALIQ').AsFloat   :=mPed1_OutDesp_icms_aliq;
Query1_Exe.ParamByName('PF1OUTDESP_ICMS_VALOR').AsFloat  :=mPed1_OutDesp_icms_valor;

Query1_Exe.ParamByName('PF1IMP_IMP_VALOR').AsFloat   :=mPed1_Imp_Imp_Valor;
Query1_Exe.ParamByName('PF1IMP_IMP_ALIQ').AsFloat   :=mPed1_Imp_Imp_Aliq;
Query1_Exe.ParamByName('PF1TIPO').AsInteger         :=mPed1_Tipo;


Query1_Exe.ParamByName('PF1SIV_FRETE').AsFloat   :=mPed1_siv_frete;
Query1_Exe.ParamByName('PF1SIV_DARE').AsFloat    :=mPed1_siv_dare;
Query1_Exe.ParamByName('PF1SIV_OUTROS').AsFloat  :=mPed1_siv_outros;
Query1_Exe.ParamByName('PF1SIV_OUTROS_TIPO').AsString :=mPed1_siv_outros_tipo;


Query1_Exe.ParamByName('PF1CODPV').AsFloat      :=mPed1_CodPV;
Query1_Exe.ParamByName('PF1TABPV').AsString     :=mPed1_TabPV;
Query1_Exe.ParamByName('PF1CODFP').AsFloat      :=mPed1_CodFP;


try
   Query1_Exe.ExecSQL;
   fDM1StartCommit;
   result:=true;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Query1_Exe,550,'_lerarq','CADPF1');
      result:=false;
      end;
   end;
   
end;


// inicio


function TFrm_Compras_GravarPedido.fRatearDescontosAcrescimos(pItem: Integer;pValDes,pValAcre,pValseg,pValFre,pTarBan,pOutDesp: Real): Boolean;
var
mComando: String;
mdiferenca,mPercDesc: Real;
mMaiorValor,mTotLiq, mTotal,mTotDes01,mTotDes02,mTotDes03: Real;
mPosMaior: TBookmark;
Query_somaPed1: tQuery;
begin


mPed1_QtdItem  :=0;
mPed1_QtdUnd   :=0;
mPed1_Icms_Base:=0;
mPed1_Icms_Valor:=0;
mPed1_Icms_Red_Vlr:=0;
mPed1_ST_base:=0;
mPed1_ST_Icms:=0;
mPed1_Desc_Rateado    :=0;
mPed1_totalDesoneracao :=0;
mPed1_pDesc01_Valor  :=0;
mPed1_DescPed02_Perc  :=0;
mPed1_IPI_Valor:=0;
mPed1_PIS_Valor:=0;
mPed1_Cofins_Valor:=0;
mPed1_ICMSSN_Valor:=0;
mPed1_Totall      :=0;
mPed1_TotIPI      :=0;
mPed1_TotMer      :=0;
mPed1_PIS_Base:=0;
mPed1_Cofins_Base:=0;

if mger_estanarede then
   begin
   DM1.Qr_Soma.Close;
   DM1.Qr_Soma.SQL.Clear;
   DM1.Qr_Soma.SQL.Add('Select count(*) as QTDITEM '
                     +',sum(PF2QTDP) as QTDUND    '
                     +',sum(PF2BASEN) as P2ICMS_BASE '
                     +',sum(PF2ICMSN) as P2ICMS_VALOR '
                     +',sum(PF2ICMS_RED_VLR) as P2ICMS_RED_VLR '
                     +',sum(DECODE((SELECT FCRT FROM CADFOR WHERE FCODFOR=(SELECT PF1CODFOR FROM '
                     +' CADPF1 WHERE PF1CHAVE=PF2CHAVE AND PF1CODEMP=PF2CODEMP AND PF1LOTSEQ=PF2LOTSEQ )) '
                     +' ,3,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2ICMSR),0,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2ICMSR), '
                     +' DECODE(PF2CSOSN,500,0,PF2ICMSR))) as P2ST_ICMS '
                     +',sum(DECODE((SELECT FCRT FROM CADFOR WHERE FCODFOR=(SELECT PF1CODFOR FROM '
                     +' CADPF1 WHERE PF1CHAVE=PF2CHAVE AND PF1CODEMP=PF2CODEMP AND PF1LOTSEQ=PF2LOTSEQ )) '
                     +' ,3,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2BASER),0,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2BASER), '
                     +' DECODE(PF2CSOSN,500,0,PF2BASER))) as P2ST_BASE '
//                     +',sum(PF2BASER) as P2ST_BASE '
//                     +',sum(PF2ICMSR) as P2ST_ICMS '
                     +',sum(PF2TOTDES) as P2DESC_VLRTOT '
                     +',sum(PF2DESC_CABEC) as P2DESC_CAB '
                     +',sum(PF2IPI) as P2IPI_VALOR '
                     +',sum(PF2PIS_VALOR) as P2PIS_VALOR '
                     +',sum(PF2COFINS_VALOR) as P2COFINS_VALOR '
                     +',sum(PF2ICMSSN_VALOR) as P2ICMSSN_VALOR '

                     +',sum(PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) as P2COFINS_BASE '
                     +',sum(PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) as P2PIS_BASE '

                     +',sum(case when PF2DESONERACAO_DEDUZ=1 THEN PF2VICMSDESON ELSE 0 END) as PF2VICMSDESON '

                     +',sum(ROUND((PF2QTDP*PF2PU),2)) as P1TOTMER '
                     +',sum(PF2DESC_RATEADO) as P2DESC_RAT '
                     +',sum(PF2TOTLIQ) as P1TOTALL '
                     +',sum(PF2IPI) as P1TOTIPI '
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2BASER else 0 end) as  ITEM_ST_BASE'
//                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2ST_ICMS else 0 end) as  ITEM_ST_ICMS'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2ICMSR else 0 end) as  ITEM_ST_ICMS'

                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2BASEN else 0 end) as  ITEM_ICMS_BASE'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2ICMSN else 0 end) as  ITEM_ICMS_VALOR'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2ICMS_RED_VLR else 0 end) as  ITEM_ICMS_RED_VLR'

                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2DESC_CABEC else 0 end) as  ITEM_DESC_CABEC'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2TOTDES else 0 end) as  ITEM_DESC_TOTDES'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2PIS_VALOR else 0 end) as  ITEM_PIS_VALOR'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2COFINS_VALOR else 0 end) as  ITEM_COFINS_VALOR'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2IPI else 0 end) as  ITEM_IPI_VALOR'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2TOTLIQ else 0 end) as  ITEM_TOTLIQ'
                     +',sum(case when PF2ITEM='+IntToStr(pItem)+' then PF2ICMSSN_VALOR else 0 end) as  ITEM_ICMSSN_VALOR'

                     +' from CADPF2 '
                     +' where PF2CODEMP=:CODEMP '
                     +' and PF2CHAVE=:CHAVE '
                     +' and PF2LOTSEQ=:CHAVE_ANO ');
   DM1.Qr_Soma.ParamByName('CODEMP').AsFloat:=mPed1_codemp;
   DM1.Qr_Soma.ParamByName('CHAVE').AsFloat:=mPed1_chave;
   DM1.Qr_Soma.ParamByName('CHAVE_ANO').AsFloat:=mPed1_Chave_Ano;
   try
      DM1.Qr_Soma.Open;
   except
      if not fVerificaRedeAtiva(true) then
      else
         begin
         ex_erroSql_Novo(DM1.Qr_Soma,1279,'_lerarq','CADPF2');
         result:=false;
         exit;
         end;
      end;
   if not DM1.Qr_Soma.IsEmpty then
      begin
      mPed1_QtdItem  :=DM1.Qr_Soma.FieldByName('QTDITEM').AsInteger;
      mPed1_QtdUnd   :=DM1.Qr_Soma.FieldByName('QTDUND').AsFloat;
      mPed1_Icms_Base:=DM1.Qr_Soma.FieldByName('P2ICMS_BASE').AsFloat;
      mPed1_Icms_Valor:=DM1.Qr_Soma.FieldByName('P2ICMS_VALOR').AsFloat;
      mPed1_Icms_Red_Vlr:=DM1.Qr_Soma.FieldByName('P2ICMS_RED_VLR').AsFloat;
      mPed1_ST_base:=DM1.Qr_Soma.FieldByName('P2ST_BASE').AsFloat;
      mPed1_ST_Icms:=DM1.Qr_Soma.FieldByName('P2ST_ICMS').AsFloat;

      mPed1_Desc_Rateado      :=DM1.Qr_Soma.FieldByName('P2DESC_RAT').AsFloat;
      mPed1_totalDesoneracao  :=DM1.Qr_Soma.FieldByName('PF2VICMSDESON').AsFloat;




      mPed1_Desc_Rateado    :=DM1.Qr_Soma.FieldByName('P2DESC_RAT').AsFloat;
      mPed1_pDesc01_Valor  :=DM1.Qr_Soma.FieldByName('P2DESC_CAB').AsFloat;
      mPed1_DescPed02_Perc  :=DM1.Qr_Soma.FieldByName('P2DESC_VLRTOT').AsFloat
                             -(DM1.Qr_Soma.FieldByName('P2DESC_CAB').AsFloat
                              +DM1.Qr_Soma.FieldByName('P2DESC_RAT').AsFloat);
      mPed1_IPI_Valor:=DM1.Qr_Soma.FieldByName('P2IPI_VALOR').AsFloat;

      mPed1_PIS_Valor:=DM1.Qr_Soma.FieldByName('P2PIS_VALOR').AsFloat;
      mPed1_Cofins_Valor:=DM1.Qr_Soma.FieldByName('P2COFINS_VALOR').AsFloat;

      mPed1_Cofins_Base:=DM1.Qr_Soma.FieldByName('P2COFINS_BASE').AsFloat;
      mPed1_PIS_Base:=DM1.Qr_Soma.FieldByName('P2PIS_BASE').AsFloat;

      mPed1_ICMSSN_Valor:=DM1.Qr_Soma.FieldByName('P2ICMSSN_VALOR').AsFloat;
      mPed1_Totall      :=DM1.Qr_Soma.FieldByName('P1TOTALL').AsFloat;
//      mPed1_TotPromo    :=DM1.Qr_Soma.FieldByName('TOTPROMO').AsFloat;
      mPed1_TotIPI      :=DM1.Qr_Soma.FieldByName('P1TOTIPI').AsFloat;
      mPed1_TotMer      :=DM1.Qr_Soma.FieldByName('P1TOTMER').AsFloat;

      mItem_IPI_VALOR:=DM1.Qr_Soma.FieldByName('ITEM_IPI_VALOR').AsFloat;
      mItem_ST_BASE:=DM1.Qr_Soma.FieldByName('ITEM_ST_BASE').AsFloat;
      mItem_ST_ICMS:=DM1.Qr_Soma.FieldByName('ITEM_ST_ICMS').AsFloat;
      mItem_ICMS_BASE:=DM1.Qr_Soma.FieldByName('ITEM_ICMS_BASE').AsFloat;
      mItem_ICMS_VALOR:=DM1.Qr_Soma.FieldByName('ITEM_ICMS_VALOR').AsFloat;
      mItem_ICMS_RED_VLR:=DM1.Qr_Soma.FieldByName('ITEM_ICMS_RED_VLR').AsFloat;
      mItem_DESC_CABEC:=DM1.Qr_Soma.FieldByName('ITEM_DESC_CABEC').AsFloat;
      mItem_DESC_TOTDES:=DM1.Qr_Soma.FieldByName('ITEM_DESC_TOTDES').AsFloat;
      mItem_PIS_VALOR:=DM1.Qr_Soma.FieldByName('ITEM_PIS_VALOR').AsFloat;
      mItem_Cofins_VALOR:=DM1.Qr_Soma.FieldByName('ITEM_COFINS_VALOR').AsFloat;
      mItem_TOTLIQ:=DM1.Qr_Soma.FieldByName('ITEM_TOTLIQ').AsFloat;
      mItem_ICMSSN_VALOR:=DM1.Qr_Soma.FieldByName('ITEM_ICMSSN_VALOR').AsFloat;
      end
   else
      begin
      mItem_IPI_VALOR:=0;
      mItem_ST_BASE:=0;
      mItem_ST_ICMS:=0;
      mItem_ICMS_BASE:=0;
      mItem_ICMS_VALOR:=0;
      mItem_ICMS_RED_VLR:=0;
      mItem_DESC_CABEC:=0;
      mItem_DESC_TOTDES:=0;
      mItem_PIS_VALOR:=0;
      mItem_Cofins_VALOR:=0;
      mItem_TOTLIQ:=0;
      mItem_ICMSSN_VALOR:=0;

      end;
   end;
if (mPed1_Imp_Imp_Aliq>0) then
   begin
   Query_somaPed1:=tQuery.Create(nil);
   Query_somaPed1.DatabaseName:='SG_ASSOC';
   Query_somaPed1.SQL.Clear;
   Query_somaPed1.SQL.Add('Select PF1IMP_IMP_VALOR  '
                     +' from CADPF1 '
                     +' where PF1CODEMP=:CODEMP '
                     +' and PF1CHAVE=:CHAVE '
                     +' and PF1LOTSEQ=:CHAVE_ANO ');
   Query_somaPed1.ParamByName('CODEMP').AsFloat:=mPed1_codemp;
   Query_somaPed1.ParamByName('CHAVE').AsFloat:=mPed1_chave;
   Query_somaPed1.ParamByName('CHAVE_ANO').AsFloat:=mPed1_Chave_Ano;
   try
      Query_somaPed1.Open;
   except
      if not fVerificaRedeAtiva(true) then
      else
         begin
         ex_erroSql_Novo(Query_somaPed1,640,'_lerarq','CADPF1');
         result:=false;
         exit;
         end;
      end;
   if not Query_somaPed1.IsEmpty then
      begin
      mPed1_Imp_Imp_Valor:=Query_somaPed1.fieldbyName('PF1IMP_IMP_VALOR').AsFloat;
      end;
   FreeAndNil(Query_somaPed1);
   end;

result:=true;
end;
// termino



function TFrm_Compras_GravarPedido.fGravarItem(pItem,pItem_ant,pcfo,pcfosubecf,pmodbcst,pSituacao,p2Estoque,pCodFpg,pTipoEve: Integer;
                      pcodpro,pcodpro_ant: String;
                      pqtd,pQtd_Ant,pdesc1,pdesc2,
                      pdesc3,pvaldes,ppreco,prepas,
                      plista,
                      ppcotab,ppcofpg,ppcoucpr,ppcocus,ppcomax,
                      pipi_aliq,
                      pipi_pred,
                      picm_aliq,ppcomis,pPis_Aliq,pCofins_Aliq,
                      ppdescf,pPercAcre
                      ,picms_predut,pst_iva,pst_predut,
                      pst_icmsred,pst_icms_deb,pIcmsSN_Aliq,ped1_descrat,ped1_acrerat
                      ,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp,pbaser,picmsr: Real;
                      pcst,pCst_Pis,pCst_Cofins,pCst_IPI, pambiente,pDescCompl,pcsosn,pcsosn_ori,pPromocao,pNomFP,pBaixa: String;
                      pIPIQTDUNID,pIPIVUNID,pPISQTDUNID,pPISVUNID: Real; pCBENEF: String;pCOFINSQTDUNID,pCOFINSVUNID,pPF2VICMSDESON: Real;pcodNcm,pcodcest: String
                      ;pChavePFp : tChavePF;
                      pPF2CBS_CST
                     ,pPF2CODCLASSTRIB : string;
                      pPF2CBS_BC
                     ,pF2CBS_ALIQ
                     ,pPF2CBS_VALOR
                     ,pPf2IBS_MUN_VALOR
                     ,pPf2CBS_DEV_TRIB
                     ,pPf2IBS_UF_ALIQ
                     ,pPF2IBS_UF_VALOR
                     ,pPF2IBS_MUN_ALIQ : Real;
                     pPF2DESONERACAO_DEDUZ: integer;
                     pPF2DESONERACAO_MOTIVO: integer

                      ): Boolean;


{
   DM1.SQLQuery1.ParamByName('P2T_CODFP').AsInteger:=0;
   DM1.SQLQuery1.ParamByName('P2T_NOMFP').AsString :=0;
   DM1.SQLQuery1.ParamByName('P2T_BAIXA').AsString :=0;
 }
var
x: Integer;
mDesc_Cab: Real;
Query_Exe: TQuery;
begin
Query_Exe:=TQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
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
   Query_Exe.Close;
   Query_Exe.Sql.Clear;
   Query_Exe.Sql.Add('Insert into CADPF2_ORC_temp '
                          +'('
                          +' PF2T_CODEMP'

                          +',PF2T_FILIAL'
                          +',PF2T_CHAVE'
                          +',PF2T_CHAVE_ANO'
                          +',PF2T_ITEM'
                          +',PF2T_CFOP'
                          +',PF2T_MODBCST'
                          +',PF2T_ST_BASE'
                          +',PF2T_ST_VALOR'
                          +',PF2T_SITUACAO'
                          +',PF2T_CODPRO'
                          +',PF2T_QTDPED'
                          +',PF2T_DESC_PERC01'
                          +',PF2T_DESC_PERC02'
                          +',PF2T_DESC_PERC03'
                          +',PF2T_DESC_VALOR'
                          +',PF2T_PRECO'
                          +',PF2T_DESC_REPAS'
                          +',PF2T_LISTA'
                          +',PF2T_PRECO_TAB'
                          +',PF2T_PRECO_FPGTO'
                          +',PF2T_PRECO_UCPR'
                          +',PF2T_PRECO_CUS'
                          +',PF2T_PRECO_MAXCONS'
                          +',PF2T_IPI_PERC'
                          +',PF2T_IPI_PRED'
                          +',PF2T_ICMS_PERC'
                          +',PF2T_COMISV01_PERC'
                          +',PF2T_PIS_PERC'
                          +',PF2T_COFINS_PERC'
                          +',PF2T_DESCFIN_PERC'
                          +',PF2T_ACRES_PERC'
                          +',PF2T_ICMS_PRED'
                          +',PF2T_ST_IVA'
                          +',PF2T_ST_PREDUT'
                          +',PF2T_ST_ICMSRED'
                          +',PF2T_ST_ICMSDEB'
                          +',PF2T_ICMSSN_PERC'
                          +',PF2T_PED1_DESCRAT'
                          +',PF2T_PED1_ACRERAT'
                          +',PF2T_PED1_VALSEG'
                          +',PF2T_VALFRE'
                          +',PF2T_VALFRE_PERC'
                          +',PF2T_VALFRE_ICMS_ALIQ'
                          +',PF2T_VALFRE_ICMS_VALOR'
                          +',PF2T_VALFRE_IPIICMS_ALIQ'
                          +',PF2T_VALFRE_IPIICMS_VALOR'
                          +',PF2T_PED1_TARBAN'
                          +',PF2T_PED1_OUTDESP'
                          +',PF2T_CST'
                          +',PF2T_CST_PIS '
                          +',PF2T_CST_COFINS '
                          +',PF2T_CST_IPI '
                          +',PF2T_DESCCOMPL'
                          +',PF2T_CSOSN'
                          +',PF2T_CSOSN_ORI'
                          +',PF2T_PROMOCAO'
                          +',PF2T_QTDDUP'
                          +',PF2T_QTDDUP_ANT'
                          +',PF2T_PRAZOS'
                          +',PF2T_TIPOMOV'
                          +',PF2T_TIPO_EVENTO'
                          +',PF2T_HISTORICO'
                          +',PF2T_HISTORICO_ANT'
                          +',PF2T_ITEM_ANT'
                          +',PF2T_CODPRO_ANT'
                          +',PF2T_QTDPED_ANT'
                          +',PF2T_DESC_CAB'
                          +',PF2T_CODFP'
                          +',PF2T_NOMFP'
                          +',PF2T_BAIXA'
                          +',PF2T_PED1_DESC_PERC01'
                          +',PF2T_PED1_DESC_PERC02'
                          +',PF2T_PED1_DESC_PERC03'
                          +',PF2T_PED1_DESC_PERC01_ANT'
                          +',PF2T_PED1_DESC_PERC02_ANT'
                          +',PF2T_PED1_DESC_PERC03_ANT'
                          +',PF2T_CODUSR'
                          +',PF2T_DATAPED'

                          +',PF2T_VD_IPI_Valor'
                          +',PF2T_VD_ICMSST_BASE'
                          +',PF2T_VD_ICMSST_VALOR'
                          +',PF2T_VD_ICMS_BASE'
                          +',PF2T_VD_ICMS_VALOR'
                          +',PF2T_VD_PIS_BASE'
                          +',PF2T_VD_PIS_VALOR'
                          +',PF2T_VD_COFINS_BASE'
                          +',PF2T_VD_COFINS_VALOR '

                          +',PF2T_ALTDUP '
                          +',PF2T_DESONERACAO_DEDUZ'
                          +',PF2T_DESONERACAO_MOTIVO'
                          +',PF2T_IMP_IMP_ALIQ'
                          +',PF2T_IMP_IMP_VALOR'
                          +',PF2T_OUTDESP'
                          +',PF2T_OUTDESP_ICMS_ALIQ'
                          +',PF2T_OUTDESP_ICMS_VALOR'
                          +',PF2T_TOTSEG'
                          +',PF2T_TOTSEG_ICMS_ALIQ'
                          +',PF2T_PED1_OUTVDUP'
                          +',PF2T_BASER_IPI'
                          +',PF2T_IPIQTDUNID'
                          +',PF2T_IPIVUNID '
                          +',PF2T_PISQTDUNID '
                          +',PF2T_PISVUNID'
                          +',PF2T_CBENEF'
                          +',PF2T_COFINSQTDUNID'
                          +',PF2T_COFINSVUNID'
                          +',PF2T_VICMSDESON'

                          +',PF2T_PED1_SIV_OUTROS '
                          +',PF2T_PED1_SIV_OUTROS_TIPO '
                          +',PF2T_CODNCM '
                          +',PF2T_CEST'
                          +',PF2T_ICMS_SOB_IPI '
                          +',PF2T_ID_PF01_NEW '
                          +',PF2T_ID_PF02_NEW '


                     +',PF2T_CBS_CST '
                     +',PF2T_CODCLASSTRIB'
                     +',PF2T_CBS_ALIQ'
                     +',Pf2T_IBS_UF_ALIQ'
                     +',PF2T_IBS_MUN_ALIQ'


                         +') values ('
                          +':PF2T_CODEMP'
                          +',:PF2T_FILIAL'

                          +',:PF2T_CHAVE'
                          +',:PF2T_CHAVE_ANO'
                          +',:PF2T_ITEM'
                          +',:PF2T_CFOP'
                          +',:PF2T_MODBCST'
                          +',:PF2T_ST_BASE'
                          +',:PF2T_ST_VALOR'
                          +',:PF2T_SITUACAO'
                          +',:PF2T_CODPRO'
                          +',:PF2T_QTDPED'
                          +',:PF2T_DESC_PERC01'
                          +',:PF2T_DESC_PERC02'
                          +',:PF2T_DESC_PERC03'
                          +',:PF2T_DESC_VALOR'
                          +',:PF2T_PRECO'
                          +',:PF2T_DESC_REPAS'
                          +',:PF2T_LISTA'
                          +',:PF2T_PRECO_TAB'
                          +',:PF2T_PRECO_FPGTO'
                          +',:PF2T_PRECO_UCPR'
                          +',:PF2T_PRECO_CUS'
                          +',:PF2T_PRECO_MAXCONS'
                          +',:PF2T_IPI_PERC'
                          +',:PF2T_IPI_PRED'
                          +',:PF2T_ICMS_PERC'
                          +',:PF2T_COMISV01_PERC'
                          +',:PF2T_PIS_PERC'
                          +',:PF2T_COFINS_PERC'
                          +',:PF2T_DESCFIN_PERC'
                          +',:PF2T_ACRES_PERC'
                          +',:PF2T_ICMS_PRED'
                          +',:PF2T_ST_IVA'
                          +',:PF2T_ST_PREDUT'
                          +',:PF2T_ST_ICMSRED'
                          +',:PF2T_ST_ICMSDEB'
                          +',:PF2T_ICMSSN_PERC'
                          +',:PF2T_PED1_DESCRAT'
                          +',:PF2T_PED1_ACRERAT'
                          +',:PF2T_PED1_VALSEG'
                          +',:PF2T_VALFRE'
                          +',:PF2T_VALFRE_PERC'
                          +',:PF2T_VALFRE_ICMS_ALIQ'
                          +',:PF2T_VALFRE_ICMS_VALOR'
                          +',:PF2T_VALFRE_IPIICMS_ALIQ'
                          +',:PF2T_VALFRE_IPIICMS_VALOR'
                          +',:PF2T_PED1_TARBAN'
                          +',:PF2T_PED1_OUTDESP'
                          +',:PF2T_CST'
                          +',:PF2T_CST_PIS '
                          +',:PF2T_CST_COFINS '
                          +',:PF2T_CST_IPI '


                          +',:PF2T_DESCCOMPL'
                          +',:PF2T_CSOSN'
                          +',:PF2T_CSOSN_ORI'
                          +',:PF2T_PROMOCAO'
                          +',:PF2T_QTDDUP'
                          +',:PF2T_QTDDUP_ANT'
                          +',:PF2T_PRAZOS'
                          +',:PF2T_TIPOMOV'
                          +',:PF2T_TIPO_EVENTO'
                          +',:PF2T_HISTORICO'
                          +',:PF2T_HISTORICO_ANT'
                          +',:PF2T_ITEM_ANT'
                          +',:PF2T_CODPRO_ANT'
                          +',:PF2T_QTDPED_ANT'
                          +',:PF2T_DESC_CAB'
                          +',:PF2T_CODFP'
                          +',:PF2T_NOMFP'
                          +',:PF2T_BAIXA'
                          +',:PF2T_PED1_DESC_PERC01'
                          +',:PF2T_PED1_DESC_PERC02'
                          +',:PF2T_PED1_DESC_PERC03'
                          +',:PF2T_PED1_DESC_PERC01_ANT'
                          +',:PF2T_PED1_DESC_PERC02_ANT'
                          +',:PF2T_PED1_DESC_PERC03_ANT'
                          +',:PF2T_CODUSR'
                          +',:PF2T_DATAPED'
                          +',:PF2T_VD_IPI_Valor'
                          +',:PF2T_VD_ICMSST_BASE'
                          +',:PF2T_VD_ICMSST_VALOR'
                          +',:PF2T_VD_ICMS_BASE'
                          +',:PF2T_VD_ICMS_VALOR'
                          +',:PF2T_VD_PIS_BASE'
                          +',:PF2T_VD_PIS_VALOR'
                          +',:PF2T_VD_COFINS_BASE'
                          +',:PF2T_VD_COFINS_VALOR '
                          +',:PF2T_ALTDUP '
                          +',:PF2T_DESONERACAO_DEDUZ'
                          +',:PF2T_DESONERACAO_MOTIVO'
                          +',:PF2T_IMP_IMP_ALIQ'
                          +',:PF2T_IMP_IMP_VALOR'
                          +',:PF2T_OUTDESP'
                          +',:PF2T_OUTDESP_ICMS_ALIQ'
                          +',:PF2T_OUTDESP_ICMS_VALOR'
                          +',:PF2T_TOTSEG'
                          +',:PF2T_TOTSEG_ICMS_ALIQ'
                          +',:PF2T_PED1_OUTVDUP'
                          +',:PF2T_BASER_IPI'

                          +',:PF2T_IPIQTDUNID'
                          +',:PF2T_IPIVUNID '
                          +',:PF2T_PISQTDUNID '
                          +',:PF2T_PISVUNID'
                          +',:PF2T_CBENEF'
                          +',:PF2T_COFINSQTDUNID'
                          +',:PF2T_COFINSVUNID'
                          +',:PF2T_VICMSDESON'

                          +',:PF2T_PED1_SIV_OUTROS '
                          +',:PF2T_PED1_SIV_OUTROS_TIPO '
                          +',:PF2T_CODNCM '
                          +',:PF2T_CEST'
                          +',:PF2T_ICMS_SOB_IPI '

                          +',:PF2T_ID_PF01_NEW '
                          +',:PF2T_ID_PF02_NEW '

                     +',:PF2T_CBS_CST '
                     +',:PF2T_CODCLASSTRIB'
                     +',:PF2T_CBS_ALIQ'
                     +',:Pf2T_IBS_UF_ALIQ'
                     +',:PF2T_IBS_MUN_ALIQ'



                          +')');


   Query_Exe.ParamByName('PF2T_CODEMP').AsInteger   := mPed1_Codemp;
   Query_Exe.ParamByName('PF2T_FILIAL').AsInteger   := mPed1_Filial;

   Query_Exe.ParamByName('PF2T_CHAVE').AsInteger   :=mped1_Chave;
   Query_Exe.ParamByName('PF2T_CHAVE_ANO').AsInteger   :=mPed1_Chave_ano;
   Query_Exe.ParamByName('PF2T_ITEM').AsInteger   :=pItem;
   Query_Exe.ParamByName('PF2T_CFOP').AsInteger   :=pcfo;
   Query_Exe.ParamByName('PF2T_MODBCST').AsInteger   :=pmodbcst;
   Query_Exe.ParamByName('PF2T_ST_BASE').AsFloat   :=pbaser;
   Query_Exe.ParamByName('PF2T_ST_VALOR').AsFloat   :=picmsr;
   Query_Exe.ParamByName('PF2T_SITUACAO').AsInteger   :=pSituacao;
   Query_Exe.ParamByName('PF2T_CODPRO').AsString   :=pcodpro;
   Query_Exe.ParamByName('PF2T_QTDPED').AsFloat :=pqtd;
   Query_Exe.ParamByName('PF2T_DESC_PERC01').AsFloat :=pdesc1;
   Query_Exe.ParamByName('PF2T_DESC_PERC02').AsFloat :=pdesc2;
   Query_Exe.ParamByName('PF2T_DESC_PERC03').AsFloat :=pdesc3;
   Query_Exe.ParamByName('PF2T_DESC_VALOR').AsFloat :=pvaldes;
   Query_Exe.ParamByName('PF2T_PRECO').AsFloat :=ppreco;
   Query_Exe.ParamByName('PF2T_DESC_REPAS').AsFloat :=prepas;
   Query_Exe.ParamByName('PF2T_LISTA').AsFloat :=plista;
   Query_Exe.ParamByName('PF2T_PRECO_TAB').AsFloat :=ppcotab;
   Query_Exe.ParamByName('PF2T_PRECO_FPGTO').AsFloat :=ppcofpg;
   Query_Exe.ParamByName('PF2T_PRECO_UCPR').AsFloat :=ppcoucpr;
   Query_Exe.ParamByName('PF2T_PRECO_CUS').AsFloat :=ppcocus;
   Query_Exe.ParamByName('PF2T_PRECO_MAXCONS').AsFloat :=ppcomax;
   Query_Exe.ParamByName('PF2T_IPI_PERC').AsFloat :=pipi_aliq;
   Query_Exe.ParamByName('PF2T_IPI_PRED').AsFloat :=pipi_pred;
   Query_Exe.ParamByName('PF2T_ICMS_PERC').AsFloat :=picm_aliq;
   Query_Exe.ParamByName('PF2T_COMISV01_PERC').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_PIS_PERC').AsFloat :=  pPis_Aliq;
   Query_Exe.ParamByName('PF2T_COFINS_PERC').AsFloat :=pCofins_Aliq;
   Query_Exe.ParamByName('PF2T_DESCFIN_PERC').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_ACRES_PERC').AsFloat :=pPercAcre;
   Query_Exe.ParamByName('PF2T_ICMS_PRED').AsFloat :=picms_predut;
   Query_Exe.ParamByName('PF2T_ST_IVA').AsFloat:=pst_iva;
   Query_Exe.ParamByName('PF2T_ST_PREDUT').AsFloat :=pst_predut;
   Query_Exe.ParamByName('PF2T_ST_ICMSRED').AsFloat :=pst_icmsred;
   Query_Exe.ParamByName('PF2T_ST_ICMSDEB').AsFloat :=pst_icms_deb;
   Query_Exe.ParamByName('PF2T_ICMSSN_PERC').AsFloat :=pIcmsSN_Aliq;
   Query_Exe.ParamByName('PF2T_PED1_DESCRAT').AsFloat :=ped1_descrat;
   Query_Exe.ParamByName('PF2T_PED1_ACRERAT').AsFloat :=ped1_acrerat;
   Query_Exe.ParamByName('PF2T_PED1_VALSEG').AsFloat :=ped1_valseg;
   Query_Exe.ParamByName('PF2T_VALFRE').AsFloat :=mPed1_ValFre;
   Query_Exe.ParamByName('PF2T_VALFRE_PERC').AsFloat :=mPed1_Perc_Frete;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_ALIQ').AsFloat :=mPed1_ValFre_Icms_Aliq;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_VALOR').AsFloat :=mPed1_ValFre_Icms_Valor;

   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_ALIQ').AsFloat :=mPed1_ValFre_pipi;
   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_VALOR').AsFloat :=mPed1_ValFre_ipi;

   Query_Exe.ParamByName('PF2T_PED1_TARBAN').AsFloat :=ped1_tarban;
   Query_Exe.ParamByName('PF2T_PED1_OUTDESP').AsFloat :=ped1_outdesp;
   Query_Exe.ParamByName('PF2T_CST').AsString :=pcst;
   Query_Exe.ParamByName('PF2T_CST_PIS').AsString :=pCst_Pis ;
   Query_Exe.ParamByName('PF2T_CST_COFINS').AsString :=pCst_Cofins;
   Query_Exe.ParamByName('PF2T_CST_IPI').AsString :=pCst_IPI;

   Query_Exe.ParamByName('PF2T_DESCCOMPL').AsString:=pDescCompl;
   Query_Exe.ParamByName('PF2T_CSOSN').AsString:=pcsosn;
   Query_Exe.ParamByName('PF2T_CSOSN_ORI').AsString:=pcsosn_ori;
   Query_Exe.ParamByName('PF2T_PROMOCAO').AsString:=pPromocao;
   Query_Exe.ParamByName('PF2T_QTDDUP').AsInteger :=mPed1_QtdParc;
   Query_Exe.ParamByName('PF2T_QTDDUP_ANT').AsInteger :=mPed1_QtdParc_ant;
   Query_Exe.ParamByName('PF2T_PRAZOS').AsString  :=mPed1_Parcelas;
   Query_Exe.ParamByName('PF2T_TIPOMOV').AsInteger:=0;
   Query_Exe.ParamByName('PF2T_ITEM_ANT').AsInteger:=0;
   Query_Exe.ParamByName('PF2T_HISTORICO_ANT').AsString   :='';
   Query_Exe.ParamByName('PF2T_CODPRO_ANT').AsString:='';
   Query_Exe.ParamByName('PF2T_QTDPED_ANT').AsFloat:=0;

   Query_Exe.ParamByName('PF2T_CODFP').AsInteger:= pCodFpg;
   Query_Exe.ParamByName('PF2T_NOMFP').AsString := pNomFP;
   Query_Exe.ParamByName('PF2T_BAIXA').AsString := pBaixa;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01').AsFloat  := mPed1_pDesc01;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02').AsFloat  := mPed1_pDesc02;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03').AsFloat  := mPed1_pDesc03;

   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01_ANT').AsFloat  := mPed1_pDesc01_Ant;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02_ANT').AsFloat  := mPed1_pDesc02_Ant;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03_ANT').AsFloat  := mPed1_pDesc03_Ant;
   Query_Exe.ParamByName('PF2T_CODUSR').AsInteger              := mPed1_CodUsr_Dig;
   Query_Exe.ParamByName('PF2T_DATAPED').AsDateTime            := mPed1_Datap;
   Query_Exe.ParamByName('PF2T_CODNCM').AsString               := pcodNcm;
   Query_Exe.ParamByName('PF2T_CEST').AsString               := pcodCEST;


//LINDOMAR
   if pItem_ant=0 then
      begin
      Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger:=0;
      Query_Exe.ParamByName('PF2T_HISTORICO').AsString   :='Pedido '+IntToStr(mped1_Chave)+' Empresa: '+IntToStr(mPed1_Codemp);
      end
   else
      begin
      if pcodpro<>pcodpro_ant then
         begin
         Query_Exe.ParamByName('PF2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Anterior: '+pcodpro_ant+'. Empresa: '+IntToStr(mPed1_Codemp);
         Query_Exe.ParamByName('PF2T_HISTORICO_ANT').AsString   :=' Pedido '+IntToStr(mped1_Chave)+'Item Alterado. Item Novo: '+pcodpro+'. Empresa: '+IntToStr(mPed1_Codemp);
         end
      else if pqtd<>pQtd_Ant then
         Query_Exe.ParamByName('PF2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Quantidade do Item Alterada. Qtd. Anterior: '+FormatFloat(mCasQtd, pQtd_Ant)+' Qtd. Nova: '+FormatFloat(mcasqtd, pqtd)+'. Empresa: '+IntToStr(mPed1_Codemp)
      else
         Query_Exe.ParamByName('PF2T_HISTORICO').AsString   :=' Pedido '+IntToStr(mped1_Chave)+' Alteração no Item. Empresa: '+IntToStr(mPed1_Codemp);
      Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger:=1;
      Query_Exe.ParamByName('PF2T_ITEM_ANT').AsInteger:=pItem_ant;
      Query_Exe.ParamByName('PF2T_CODPRO_ANT').AsString:=pcodpro_ant;
      Query_Exe.ParamByName('PF2T_QTDPED_ANT').AsFloat:=pQtd_Ant;
      end;
   if (pTipoEve=3) or (ptipoEve=2)  then
      Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger:=pTipoEve;

   Query_Exe.ParamByName('PF2T_DESC_CAB').AsFloat     :=mDesc_Cab;

   Query_Exe.ParamByName('PF2T_VD_IPI_Valor').AsFloat :=mPed1_VD_IPI_Valor;
   Query_Exe.ParamByName('PF2T_VD_ICMSST_BASE').AsFloat :=mPed1_VD_ICMSST_BASE;
   Query_Exe.ParamByName('PF2T_VD_ICMSST_VALOR').AsFloat :=mPed1_VD_ICMSST_VALOR;
   Query_Exe.ParamByName('PF2T_VD_ICMS_BASE').AsFloat :=mPed1_VD_ICMS_BASE;
   Query_Exe.ParamByName('PF2T_VD_ICMS_VALOR').AsFloat :=mPed1_VD_ICMS_VALOR;

   Query_Exe.ParamByName('PF2T_VD_PIS_BASE').AsFloat :=mPed1_VD_PIS_BASE;
   Query_Exe.ParamByName('PF2T_VD_PIS_VALOR').AsFloat :=mPed1_VD_PIS_VALOR;

   Query_Exe.ParamByName('PF2T_VD_COFINS_BASE').AsFloat :=mPed1_VD_COFINS_BASE;
   Query_Exe.ParamByName('PF2T_VD_COFINS_VALOR').AsFloat :=mPed1_VD_COFINS_VALOR;


   Query_Exe.ParamByName('PF2T_ALTDUP').AsString            :=mPed1_AltDup;
   Query_Exe.ParamByName('PF2T_DESONERACAO_DEDUZ').AsInteger :=pPF2DESONERACAO_DEDUZ;
   Query_Exe.ParamByName('PF2T_DESONERACAO_MOTIVO').Asinteger :=pPF2DESONERACAO_MOTIVO;

   Query_Exe.ParamByName('PF2T_IMP_IMP_ALIQ').AsFloat :=mPed1_Imp_Imp_Aliq;
   Query_Exe.ParamByName('PF2T_IMP_IMP_VALOR').AsFloat :=mPed1_Imp_Imp_Aliq;

   Query_Exe.ParamByName('PF2T_PED1_OUTVDUP').AsFloat :=mPed1_OutVDup;

   Query_Exe.ParamByName('PF2T_OUTDESP').AsFloat :=mPed1_OutDesp;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_ALIQ').AsFloat :=mPed1_OutDesp_icms_aliq;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_VALOR').AsFloat :=mPed1_OutDesp_icms_valor;

   Query_Exe.ParamByName('PF2T_TOTSEG').AsFloat :=mPed1_ValSeg;
   Query_Exe.ParamByName('PF2T_TOTSEG_ICMS_ALIQ').AsFloat :=mPed1_ValSeg_icms_aliq;
   Query_Exe.ParamByName('PF2T_BASER_IPI').AsFloat        :=mPed1_BASER_IPI;



    Query_Exe.ParamByName('PF2T_IPIQTDUNID').AsFloat        :=pIPIQTDUNID;
   Query_Exe.ParamByName('PF2T_IPIVUNID').AsFloat        :=pIPIVUNID;
   Query_Exe.ParamByName('PF2T_PISQTDUNID').AsFloat        :=pPISQTDUNID;
   Query_Exe.ParamByName('PF2T_PISVUNID').AsFloat        :=pPISVUNID;
   Query_Exe.ParamByName('PF2T_CBENEF').AsString              :=pCBENEF;
   Query_Exe.ParamByName('PF2T_COFINSQTDUNID').AsFloat        :=pCOFINSQTDUNID;
   Query_Exe.ParamByName('PF2T_COFINSVUNID').AsFloat        :=pCOFINSVUNID;
   Query_Exe.ParamByName('PF2T_VICMSDESON').AsFloat        :=pPF2VICMSDESON;


   Query_Exe.ParamByName('PF2T_PED1_SIV_OUTROS').AsFloat        :=mPed1_SIV_OUTROS;
   Query_Exe.ParamByName('PF2T_PED1_SIV_OUTROS_TIPO').AsString   :=mPed1_SIV_OUTROS_TIPO;
   Query_Exe.ParamByName('PF2T_ICMS_SOB_IPI').AsInteger   :=iif(mPed1_IcmsSobreIPI=true,1,0);

   Query_Exe.ParamByName('PF2T_ID_PF01_NEW').AsFloat         :=pChavePFp.pf01IdNew;
   Query_Exe.ParamByName('PF2T_ID_PF02_NEW').AsFloat         :=pChavePFp.pf02IdNew;

   Query_Exe.ParamByName('PF2T_CBS_CST').AsString            :=pPF2CBS_CST;
   Query_Exe.ParamByName('PF2T_CODCLASSTRIB').AsString            :=pPF2CODCLASSTRIB;



   Query_Exe.ParamByName('PF2T_CBS_ALIQ').AsFloat         :=pF2CBS_ALIQ;
   Query_Exe.ParamByName('PF2T_IBS_MUN_ALIQ').AsFloat         :=pPf2IBS_mun_ALIQ;
   Query_Exe.ParamByName('PF2T_IBS_UF_ALIQ').AsFloat         :=pPf2IBS_UF_ALIQ;


   mPed1_AltDup:='S';
   try
      Query_Exe.ExecSQL;
  except on e : exception do

      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,1194,'_lerarq '+e.message,'CADPF1');
         result:=false;
         end;
      end;
   mPed1_QtdParc_Ant:=mPed1_QtdParc;
   end;

mPed1_pDesc01_Ant:=mPed1_pDesc01;
mPed1_pDesc02_Ant:=mPed1_pDesc02;
mPed1_pDesc03_Ant:=mPed1_pDesc03;

fRatearDescontosAcrescimos(pItem,ped1_descrat,ped1_acrerat,ped1_valseg,ped1_valfre,ped1_tarban,ped1_outdesp);

result:=true;

end;

// inicio



// termino



function TFrm_Compras_GravarPedido.fLimparCampos(pTipo: Integer): Boolean;
begin
mPed1_Codemp:=0;
mped1_Chave:=0;
mped1_Filial:=log_filial_padrao;

mPed1_Chave_ano:=0;
mPed1_Codfor:=0;
mPed1_BASER_IPI:=0;


mPed1_siv_frete :=0;
mPed1_siv_dare  :=0;
mPed1_siv_outros:=0;
mPed1_siv_outros_tipo:='Q';

mped1_numdup:=0;
mPed1_OutVDup:=0;

mped1_desd:='';
mped1_gravdp:=0;
//mped1_gravnf:=0;


mPed1_DataEnt:=pdatanula;
mPed1_DataNF:=pdatanula;

mPed1_Nfe_Chave:='';
mPed1_Serie:='';
mPed1_Modelo:='';

mPed1_NumNF:=0;
mPed1_Tipo:=0;

mPed1_CodUsr_Dig:=0;
mPed1_CodPV:=0;
mPed1_CodFP:=0;
mPed1_AltDup:='S';



mPed1_CodTra:=0;
mPed1_Frete_CIFFOB:=0;
mPed1_Situacao:=0;
mPed1_CodUsr_UEVE:=0;
mPed1_QtdMan:=0;
;mPed1_QtdDec:=0;
mPed1_TotMer:=0;mPed1_Totall:=0;
mPed1_ValSeg:=0;mPed1_ValSeg_ICMS_ALIQ:=0;mPed1_ValSeg_ICMS_VALOR:=0;
mPed1_ValFre:=0; mPed1_ValFre_Icms_Aliq:=0; mPed1_ValFre_Icms_valor:=0;
mPed1_pDesc01:=0;
mPed1_OutDesp:=0;mPed1_OutDesp_ICMS_ALIQ:=0;mPed1_OutDesp_ICMS_VALOR:=0;

mPed1_Perc_Frete:=0;
mPed1_TotIPI:=0;
mPed1_Pdesc02:=0;mPed1_Pdesc03:=0;

mPed1_Desc_Rateado:=0;
mPed1_totalDesoneracao:=0;
mPed1_pDesc01:=0;
mPed1_Pdesc02:=0;
mPed1_Pdesc03:=0;

mPed1_pDesc01_Ant:=0;
mPed1_Pdesc02_Ant:=0;
mPed1_Pdesc03_Ant:=0;

mPed1_Desc_Cab:=0;
mPed1_Obs_Ped:='';
mPed1_Comp_UEVE:='';;
mPed1_Datap:=pDatanula;
mPed1_DatHor_Dig:=pDatanula;
mPed1_DatHor_UEVE:=pDatanula;



mPed1_QtdItem:=0;
mPed1_QtdUnd:=0;
mPed1_Icms_Base:=0;
mPed1_Icms_Valor:=0;
mPed1_totalDesoneracao:=0;
mPed1_Icms_Red_Vlr:=0;
mPed1_ST_base:=0;
mPed1_ST_Icms:=0;
mPed1_IPI_Valor:=0;
mPed1_PIS_Valor:=0;
mPed1_Cofins_Valor:=0;
mPed1_ICMSSN_Valor:=0;

mPed1_PIS_Base:=0;
mPed1_Cofins_Base:=0;

mPed1_Totall      :=0;
mPed1_pDesc01_Ant :=0;
mPed1_Pdesc02_Ant :=0;
mPed1_Pdesc03_Ant :=0;

mPed1_QtdParc    :=0;
mPed1_Parcelas   :='';
mPed1_QtdParc_ant:=0;


mPed1_NomFP      :='';
mPed1_BaixaFP    :='';

mPed1_VD_IPI_Valor:=0;
mPed1_VD_ICMSST_BASE:=0;
mPed1_VD_ICMSST_VALOR:=0;
mPed1_VD_ICMS_BASE:=0;
mPed1_VD_ICMS_VALOR:=0;
mPed1_VD_PIS_BASE:=0;
mPed1_VD_PIS_VALOR:=0;
mPed1_VD_COFINS_BASE:=0;
mPed1_VD_COFINS_VALOR:=0;



    // termino das variaveis no cabecalho
result:=true;
end;






end.
