unit Unit2_oracle;

interface

implementation
{

insert into CADRC170 (
  RC170_CHAVE_ID,
  RC170_REG,
  RC170_NUM_ITEM,
  RC170_COD_ITEM,
  RC170_DESCR_COMPL,
  RC170_QTD,
  RC170_UNID,
  RC170_VL_ITEM,
  RC170_VL_DESC,
  RC170_IND_MOV,
  RC170_CST_ICMS,
  RC170_CFOP,
  RC170_COD_NAT,
  RC170_VL_BC_ICMS,
  RC170_ALIQ_ICMS,
  RC170_VL_ICMS,
  RC170_VL_BC_ICMS_ST,
  RC170_ALIQ_ST,
  RC170_VL_ICMS_ST,
  RC170_IND_APUR,
  RC170_CST_IPI,
  RC170_COD_ENQ,
  RC170_VL_BC_IPI,
  RC170_ALIQ_IPI,
  RC170_VL_IPI,
  RC170_CST_PIS,
  RC170_VL_BC_PIS,
  RC170_ALIQ_PIS,
  RC170_QUANT_BC_PIS,
  RC170_ALIQ_PIS_REAIS,
  RC170_VL_PIS,
  RC170_CST_COFINS,
  RC170_VL_BC_COFINS,
  RC170_ALIQ_COFINS,
  RC170_QUANT_BC_COFINS,
  RC170_ALIQ_COFINS_REAIS,
  RC170_VL_COFINS,
  RC170_COD_CTA,
  RC170_LINHA,
  RC170_NUM_DOC_C100_PAI,
  RC170_CHV_NFE_C100_PAI,
  RC170_SER_C100_PAI,
  RC170_COD_MOD_C100_PAI,
  RC170_COD_SIT_C100_PAI,
  RC170_EVALIDO,
  RC170_QTD_REAL,
  RC170_ORIGEM,
  RC170_VL_SEG,
  RC170_VL_FRT
  )


select
  RC170_CHAVE_ID,
  RC170_REG,
  RC170_NUM_ITEM,
  RC170_COD_ITEM,
  RC170_DESCR_COMPL,
  RC170_QTD,
  RC170_UNID,
  RC170_VL_ITEM,
  RC170_VL_DESC,
  RC170_IND_MOV,
  RC170_CST_ICMS,
  RC170_CFOP,
  RC170_COD_NAT,
  RC170_VL_BC_ICMS,
  RC170_ALIQ_ICMS,
  RC170_VL_ICMS,
  RC170_VL_BC_ICMS_ST,
  RC170_ALIQ_ST,
  RC170_VL_ICMS_ST,
  RC170_IND_APUR,
  RC170_CST_IPI,
  RC170_COD_ENQ,
  RC170_VL_BC_IPI,
  RC170_ALIQ_IPI,
  RC170_VL_IPI,
  RC170_CST_PIS,
  RC170_VL_BC_PIS,
  RC170_ALIQ_PIS,
  RC170_QUANT_BC_PIS,
  RC170_ALIQ_PIS_REAIS,
  RC170_VL_PIS,
  RC170_CST_COFINS,
  RC170_VL_BC_COFINS,
  RC170_ALIQ_COFINS,
  RC170_QUANT_BC_COFINS,
  RC170_ALIQ_COFINS_REAIS,
  RC170_VL_COFINS,
  RC170_COD_CTA,
  RC170_LINHA,
  RC170_NUM_DOC_C100_PAI,
  RC170_CHV_NFE_C100_PAI,
  RC170_SER_C100_PAI,
  RC170_COD_MOD_C100_PAI,
  RC170_COD_SIT_C100_PAI,
  RC170_EVALIDO,
  RC170_QTD_REAL,
  RC170_ORIGEM,
  RC170_VL_SEG,
  RC170_VL_FRT
from  CADRC1702_CSV

















select
concat(
  rc170_chave_id
  ,'|',if(rc170_reg is not null,rc170_reg,'')
  ,'|',if(rc170_num_item is not null,rc170_num_item,'')
  ,'|',if(rc170_cod_item is not null,rc170_cod_item,'')
  ,'|',if(rc170_descr_compl is not null,rc170_descr_compl,'')
  ,'|',if(rc170_qtd is not null,rc170_qtd,'0')
  ,'|',if(rc170_unid is not null,rc170_unid,'')
  ,'|',if(rc170_vl_item is not null,rc170_vl_item,'0')
  ,'|',if(rc170_vl_desc is not null,rc170_vl_desc,'0')
  ,'|',if(rc170_ind_mov is not null,rc170_ind_mov,'')
  ,'|',if(rc170_cst_icms is not null,rc170_cst_icms,'')
  ,'|',if(rc170_cfop is not null,rc170_cfop,'0')
  ,'|',if(rc170_cod_nat is not null,rc170_cod_nat,'')
  ,'|',if(rc170_vl_bc_icms is not null,rc170_vl_bc_icms,'0')
  ,'|',if(rc170_aliq_icms is not null,rc170_aliq_icms,'0')
  ,'|',if(rc170_vl_icms is not null,rc170_vl_icms,'0')
  ,'|',if(rc170_vl_bc_icms_st is not null,rc170_vl_bc_icms_st,'0')
  ,'|',if(rc170_aliq_st is not null,rc170_aliq_st,'0')
  ,'|',if(rc170_vl_icms_st is not null,rc170_vl_icms_st,'0')
,'|',if(rc170_ind_apur is not null,rc170_ind_apur,'')
,'|',if(rc170_cst_ipi is not null,rc170_cst_ipi,'')
,'|',if(rc170_cod_enq is not null,rc170_cod_enq,'')
  ,'|',if(rc170_vl_bc_ipi is not null,rc170_vl_bc_ipi,'0')
  ,'|',if(rc170_aliq_ipi is not null,rc170_aliq_ipi,'0')
  ,'|',if(rc170_vl_ipi is not null,rc170_vl_ipi,'0')
,'|',if(rc170_cst_pis is not null,rc170_cst_pis,'')
  ,'|',if(rc170_vl_bc_pis is not null,rc170_vl_bc_pis,'0')
  ,'|',if(rc170_aliq_pis is not null,rc170_aliq_pis,'0')
  ,'|',if(rc170_quant_bc_pis is not null,rc170_quant_bc_pis,'0')
  ,'|',if(rc170_aliq_pis_reais is not null,rc170_aliq_pis_reais,'0')
  ,'|',if(rc170_vl_pis is not null,rc170_vl_pis,'0')
,'|',if(rc170_cst_cofins is not null,rc170_cst_cofins,'')
  ,'|',if(rc170_vl_bc_cofins is not null,rc170_vl_bc_cofins,'0')
  ,'|',if(rc170_aliq_cofins is not null,rc170_aliq_cofins,'0')
  ,'|',if(rc170_quant_bc_cofins is not null,rc170_quant_bc_cofins,'0')
  ,'|',if(rc170_aliq_cofins_reais is not null,rc170_aliq_cofins_reais,'0')
  ,'|',if(rc170_vl_cofins is not null,rc170_vl_cofins,'0')
,'|',if(rc170_cod_cta is not null,rc170_cod_cta,'')
,'|',if(rc170_linha is not null,rc170_linha,'')
  ,'|',if(rc170_dt_ref_ini is not null
  ,DATE_FORMAT(rc170_dt_ref_ini, "%d/%m/%Y %H:%i:%S")
  , '')
  ,'|',if(rc170_dt_ref_fin is not null,DATE_FORMAT(rc170_dt_ref_fin, "%d/%m/%Y %H:%i:%S"), '')
  ,'|',if(rc170_num_doc_c100_pai is not null,rc170_num_doc_c100_pai,'0')
  ,'|',if(rc170_dt_mov_c100_pai is not null,DATE_FORMAT(rc170_dt_mov_c100_pai, "%d/%m/%Y %H:%i:%S"), '')
  ,'|',if(rc170_chv_nfe_c100_pai is not null,rc170_chv_nfe_c100_pai, '')
  ,'|',if(rc170_ser_c100_pai is not null,rc170_ser_c100_pai, '')
  ,'|',if(rc170_cod_mod_c100_pai is not null,rc170_cod_mod_c100_pai, '')
  ,'|',if(rc170_cod_sit_c100_pai is not null,rc170_cod_sit_c100_pai, '00')
  ,'|',if(rc170_evalido is not null,rc170_evalido, 'S')
  ,'|',if(rc170_qtd_real is not null,rc170_qtd_real,'0')
  ,'|',if(rc170_origem is not null,rc170_origem, '')
  ,'|',if(rc170_vl_seg is not null,rc170_vl_seg,'0')
  ,'|',if(rc170_vl_frt is not null,rc170_vl_frt,'0')
,char(13)
) as linha
INTO OUTFILE 'C:/oracle_audsped2/CADRC170.CSV'

from cadrc170

limit 10

}

end.
 