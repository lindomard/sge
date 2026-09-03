unit S_Lic2;
{
var
 i : integer;
 MSWord : variant;
begin
 MSWord:= CreateOleObject ('Word.Basic');
 MSWord.Filenew;//inicia um novo documento
 MSWord.AppShow;//mostra o word
 MSWord.appmaximize;//Maximiza a janela do Word
 MSWord.insertpicture('.format.jpg');//Insere uma figura note  que o ponto serve
end;
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,  db, dbtables, func,
  S_DM1, Mask, DBCtrls, Grids, DBGrids, S_Pro, S_Cli, Sr_Lic,
  lerarq,S_Ven,func2, RLReport, RLFilters, RLDraftFilter,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLRichFilter, ToolEdit, RXDBCtrl,comObj,
  OleServer, WordXP, Menus,S_PVO, S_ImpExcel,ShellApi,S_Pendencia
  ,S_HLic, CurrEdit, CheckLst, s_lerarq_geral, dbcgrids, RxDBComb,adodb,jpeg, WPObj_Image,
  DBClient, S_Vendas_GravarPedido, RLRichText, RxMemDS, Spin, Word2000;
//  ,WPCTRRich, WPTbar, WPRTEDefs, WPCTRMemo, WPUtil, WPObj_Image,
//  WPRTEPaint;


type
  TFrm_Lic2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TEdit;
    BitBtn1: TBitBtn;
    PC1: TPageControl;
    tsCabecalho: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBE_CHAVE: TDBEdit;
    DBE_CODCLI: TDBEdit;
    DBE_NOMCLI: TDBEdit;
    DBE_ORGAO: TDBEdit;
    DBE_FONE: TDBEdit;
    DBE_VALPRO: TDBEdit;
    DBE_COND: TDBEdit;
    dbPrzEnt01: TDBEdit;
    dbPrzEnt02: TDBEdit;
    dbPrzEnt03: TDBEdit;
    DbObs01: TDBEdit;
    DbObs02: TDBEdit;
    DBCB_MODALIDADE: TDBComboBox;
    DBCB_RMS: TDBCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    EXCLUIR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    SAIR: TBitBtn;
    IMPRIMIR: TBitBtn;
    bbItens: TBitBtn;
    DBE_NOMVEN: TDBEdit;
    DBE_VEND: TDBEdit;
    Label36: TLabel;
    RG_CAB: TDBRadioGroup;
    bordagrade: TDBRadioGroup;
    ts_relatorio: TTabSheet;
    RLDraftFilter1: TRLDraftFilter;
    RLReport1: TRLReport;
    RLBand_cabger: TRLBand;
    RLGroup1: TRLGroup;
    RLBandTotPrazo: TRLBand;
    LTP: TRLLabel;
    RLBand_valpro: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLBand7: TRLBand;
    RLLabel13: TRLLabel;
    RLBand8: TRLBand;
    RLDBText34: TRLDBText;
    RLBand9: TRLBand;
    RLDBText35: TRLDBText;
    RLBand10: TRLBand;
    RLDBText36: TRLDBText;
    RLBand11: TRLBand;
    RLDBText37: TRLDBText;
    RLBand12: TRLBand;
    RLDBText38: TRLDBText;
    RLBand13: TRLBand;
    RLDBText39: TRLDBText;
    RLBand14: TRLBand;
    RLDBText40: TRLDBText;
    RLBand_cabItens: TRLBand;
    cab_item: TRLLabel;
    cab_und: TRLLabel;
    cab_qtd: TRLLabel;
    cab_desc: TRLLabel;
    cab_marca: TRLLabel;
    cab_LRMS: TRLLabel;
    cab_LPV: TRLLabel;
    cab_LPP: TRLLabel;
    L_TGP: TRLLabel;
    rlb_nomcli: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    lbl_nomrep: TRLLabel;
    txt_codven: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel3: TRLLabel;
    txt_nomven: TRLDBText;
    RLDBText24: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLLabel22: TRLLabel;
    extensotp: TRLLabel;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    cab_qtdenv: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand_detitens01: TRLBand;
    det_item: TRLDBText;
    det_und: TRLDBText;
    det_qtd: TRLDBText;
    det_marca: TRLDBText;
    det_LRMS: TRLDBText;
    det_LPV: TRLDBText;
    det_LPP: TRLDBText;
    RLBand_detExt01: TRLBand;
    RLBand_detExt02: TRLBand;
    extenso2: TRLLabel;
    rlband_lotepregao: TRLBand;
    RLLabel24: TRLLabel;
    RLDBText52: TRLDBText;
    RLBandtotaVista: TRLBand;
    LTV: TRLLabel;
    L_TGV: TRLLabel;
    extensotv: TRLLabel;
    rlbandtotgru_avista: TRLBand;
    RLLabel25: TRLLabel;
    LGru_TGV: TRLLabel;
    extensotGruv: TRLLabel;
    rlbandtotgru_aprazo: TRLBand;
    RLLabel26: TRLLabel;
    LGru_TGP: TRLLabel;
    extensotGruP: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    Label14: TLabel;
    Db_Prop01: TDBEdit;
    Db_Prop02: TDBEdit;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand15: TRLBand;
    LDT: TRLLabel;
    RLDBText41: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    rlband_cabprim: TRLBand;
    RLImage1: TRLImage;
    RLDBText10: TRLDBText;
    txt_ender: TRLDBMemo;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand_pagina: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    tsParamMaster: TTabSheet;
    bbSalvarPadrao: TBitBtn;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    extenso1: TRLMemo;
    tsItens: TTabSheet;
    Panel_rodapeitens: TPanel;
    Qr_Lic02: TQuery;
    Qr_Lic02LC2_CODEMP: TFloatField;
    Qr_Lic02LC2_CHAVE: TFloatField;
    Qr_Lic02LC2_ITEM: TFloatField;
    Qr_Lic02LC2_CODPRO: TFloatField;
    Qr_Lic02LC2_QTD: TFloatField;
    Qr_Lic02LC2_UND: TStringField;
    Qr_Lic02LC2_NOM01: TStringField;
    Qr_Lic02LC2_RMS: TStringField;
    Qr_Lic02LC2_PCOAV: TFloatField;
    Qr_Lic02LC2_PCOPZ: TFloatField;
    Qr_Lic02LC2_LOTSEQ: TFloatField;
    Qr_Lic02LC2_LOTEPREGAO: TStringField;
    Qr_Lic02LC2_QTDENV: TFloatField;
    Src_Lic02: TDataSource;
    DBGrid1_Itens: TDBGrid;
    Qr_Lic02total_bruto: TFloatField;
    U_Lic02: TUpdateSQL;
    lbl_qtditens: TLabel;
    lbl_totger: TLabel;
    st_tot_qtd: TStaticText;
    st_tot_vltotal: TStaticText;
    DBE_DTEMIS: TDBDateEdit;
    Panel4: TPanel;
    Label28: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    bbImpLic: TBitBtn;
    Label19: TLabel;
    st_qtd_itens: TStaticText;
    sbnDadosCli: TSpeedButton;
    pop_excluir: TPopupMenu;
    ExluirItem1: TMenuItem;
    panel_rodape: TPanel;
    PEDIDO: TBitBtn;
    btn_pendencia: TBitBtn;
    bbHtml: TBitBtn;
    bbWord: TBitBtn;
    bbDuplicar: TBitBtn;
    GroupBox1: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCB_LOTEPREGAO: TDBCheckBox;
    CBTPPCO: TComboBox;
    Label15: TLabel;
    Label30: TLabel;
    Acres_Desc: TCurrencyEdit;
    Label31: TLabel;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    qtde_env: TCheckBox;
    Shape1: TShape;
    Label32: TLabel;
    Shape2: TShape;
    Label33: TLabel;
    Shape3: TShape;
    Label34: TLabel;
    StaticText4: TStaticText;
    CLB_STATUS: TCheckListBox;
    cb_orcamento: TCheckBox;
    ts_orcamento: TTabSheet;
    RLReport2: TRLReport;
    rl_cabtit: TRLBand;
    lblObs: TRLLabel;
    RLBand6: TRLBand;
    RLrodape: TRLLabel;
    RLcabcli: TRLBand;
    lbl_cabcli: TRLLabel;
    RLDBText8: TRLDBText;
    lbl_cadcnpj: TRLLabel;
    db_cnpj: TRLDBText;
    lbl_cadend: TRLLabel;
    db_ender: TRLDBText;
    lbl_bairro: TRLLabel;
    db_bairro: TRLDBText;
    lbl_cadloc: TRLLabel;
    db_cidade: TRLDBText;
    lbl_uf: TRLLabel;
    db_uf: TRLDBText;
    lbl_cep: TRLLabel;
    db_cep: TRLDBText;
    db_ie: TRLDBText;
    lbl_ie: TRLLabel;
    db_nomcon: TRLDBText;
    lbl_cabcont: TRLLabel;
    db_fonecon: TRLDBText;
    lbl_cadvend: TRLLabel;
    db_nomven: TRLDBText;
    lbl_datped: TRLLabel;
    db_datped: TRLDBText;
    lbl_pag: TRLLabel;
    db_barpag: TRLLabel;
    db_pag: TRLSystemInfo;
    db_qtdpag: TRLSystemInfo;
    db_fone: TRLLabel;
    RLcabemp: TRLBand;
    rldb_fantasia: TRLDBText;
    RLDBText9: TRLDBText;
    lbl_cnpj_ie2: TRLLabel;
    RLDBText11: TRLDBText;
    rlobs2: TRLMemo;
    RLBand2: TRLBand;
    RLcabCodpro: TRLLabel;
    RLCabQtd: TRLLabel;
    RLCabUnd: TRLLabel;
    RLCabNome: TRLLabel;
    RLCabMarca: TRLLabel;
    RLCabPU: TRLLabel;
    RLCabTotal: TRLLabel;
    RLBand4: TRLBand;
    RLCodPro: TRLDBText;
    RLQtd: TRLDBText;
    RLUnd: TRLDBText;
    RLMarca: TRLDBText;
    RLPU: TRLDBText;
    RLTotal: TRLDBText;
    RLBand5: TRLBand;
    RLMensTotalb: TRLLabel;
    RL_TOTAL: TRLLabel;
    RLBand1: TRLBand;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RL_DEC_TOPO: TRLBand;
    RLLabel12: TRLLabel;
    RL_DEC_LN1: TRLBand;
    RLDBText15: TRLDBText;
    RL_DEC_LN9: TRLBand;
    RLDBText16: TRLDBText;
    RL_DEC_LN8: TRLBand;
    RLDBText18: TRLDBText;
    RL_DEC_LN7: TRLBand;
    RLDBText19: TRLDBText;
    RL_DEC_LN6: TRLBand;
    RLDBText25: TRLDBText;
    RL_DEC_LN5: TRLBand;
    RLDBText26: TRLDBText;
    RL_DEC_LN4: TRLBand;
    RLDBText32: TRLDBText;
    RL_DEC_LN3: TRLBand;
    RLDBText33: TRLDBText;
    RL_DEC_LN2: TRLBand;
    RLDBText42: TRLDBText;
    RL_DEC_LN10: TRLBand;
    RLDBText43: TRLDBText;
    RL_DEC_DATA: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLDBText44: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    Label35: TLabel;
    cb_casas: TComboBox;
    DBEdit1: TDBEdit;
    gb_dadoscli: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    DBE_dc_nome: TDBEdit;
    DBE_dc_cnp: TDBEdit;
    DBE_dc_ender: TDBEdit;
    DBE_dc_bairro: TDBEdit;
    DBE_dc_fone: TDBEdit;
    DBE_dc_cidade: TDBEdit;
    bb_dc_sair: TBitBtn;
    DBE_dc_cep: TDBEdit;
    DBE_dc_inscricao: TDBEdit;
    DBE_dc_uf: TDBEdit;
    Qr_Lic02LC2_GANHOU: TStringField;
    btn_marcadesmarca: TButton;
    bbCustos: TBitBtn;
    cbvalidardesconto: TCheckBox;
    CBUSERINC: TCheckBox;
    RL_CHAVE: TRLLabel;
    det_qtdenv: TRLDBText;
    cab_codpro: TRLLabel;
    det_codpro: TRLDBText;
    CB_USAAVAP: TCheckBox;
    Qr_Lic02total_bruto_prazo: TFloatField;
    bbPersonalizado: TBitBtn;
    WordDoc: TWordDocument;
    WordApp: TWordApplication;
    Opd1: TOpenDialog;
    Label40: TLabel;
    Qr_Lic02lc2_nompro: TStringField;
    Qr_Lic02lc2_nompro_ori: TStringField;
    CB_VISIBLE: TCheckBox;
    bbExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
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
    GroupBox4: TGroupBox;
    Tb_LC1: TQuery;
    Tb_LC1LC1_CODEMP: TFloatField;
    Tb_LC1LC1_CHAVE: TFloatField;
    Tb_LC1LC1_DTEMIS: TDateTimeField;
    Tb_LC1LC1_CODCLI: TFloatField;
    Tb_LC1LC1_AOSCUI: TStringField;
    Tb_LC1LC1_FONCUI: TStringField;
    Tb_LC1LC1_CARCON: TStringField;
    Tb_LC1LC1_DATCON: TDateTimeField;
    Tb_LC1LC1_CONDPAG: TStringField;
    Tb_LC1LC1_OBS1: TStringField;
    Tb_LC1LC1_OBS2: TStringField;
    Tb_LC1LC1_PRZENT1: TStringField;
    Tb_LC1LC1_PRZENT2: TStringField;
    Tb_LC1LC1_PRZENT3: TStringField;
    Tb_LC1LC1_DEC01: TStringField;
    Tb_LC1LC1_DEC02: TStringField;
    Tb_LC1LC1_DEC03: TStringField;
    Tb_LC1LC1_DEC04: TStringField;
    Tb_LC1LC1_DEC05: TStringField;
    Tb_LC1LC1_DEC06: TStringField;
    Tb_LC1LC1_DEC07: TStringField;
    Tb_LC1LC1_DEC08: TStringField;
    Tb_LC1LC1_DEC09: TStringField;
    Tb_LC1LC1_DEC10: TStringField;
    Tb_LC1LC1_VALPRO: TFloatField;
    Tb_LC1LC1_DIGRMS: TFloatField;
    Tb_LC1LC1_PCOAVI: TFloatField;
    Tb_LC1LC1_PCOPRZ: TFloatField;
    Tb_LC1LC1_EXTTAV: TFloatField;
    Tb_LC1LC1_EXTUAV: TFloatField;
    Tb_LC1LC1_EXTPAV: TFloatField;
    Tb_LC1LC1_EXTTAP: TFloatField;
    Tb_LC1LC1_EXTUAP: TFloatField;
    Tb_LC1LC1_IMPCAB: TFloatField;
    Tb_LC1LC1_EXTPAP: TFloatField;
    Tb_LC1LC1_CODVEN: TFloatField;
    Tb_LC1nomven: TStringField;
    Tb_LC1LC1_BORDAGRADE: TFloatField;
    Tb_LC1lc1_qtdenv: TFloatField;
    Tb_LC1LC1_SEPLOTEPREGAO: TFloatField;
    Tb_LC1LC1_PROPL01: TStringField;
    Tb_LC1LC1_PROPL02: TStringField;
    Tb_LC1LC1_NOMCLI: TStringField;
    Tb_LC1LC1_NOMLOC: TStringField;
    Tb_LC1LC1_UF: TStringField;
    Tb_LC1LC1_CEP: TStringField;
    Tb_LC1LC1_CNPJ: TFloatField;
    Tb_LC1LC1_IE: TStringField;
    Tb_LC1LC1_FONE: TStringField;
    Tb_LC1LC1_ENDER: TStringField;
    Tb_LC1LC1_BAIRRO: TStringField;
    Tb_LC1LC1_LOTSEQ: TFloatField;
    Tb_LC1LC1_DATHOR_INC: TDateTimeField;
    Tb_LC1LC1_CODUSR_INC: TFloatField;
    Tb_LC1LC1_CODUSR_ALT: TFloatField;
    Tb_LC1LC1_DATHOR_ALT: TDateTimeField;
    Tb_LC1LC1_TPPCO: TFloatField;
    Tb_LC1LC1_EMAIL: TStringField;
    Tb_LC1LC1_STATUS: TFloatField;
    Tb_LC1LC1_CASASDEC: TFloatField;
    U_LC1: TUpdateSQL;
    SRC_LC1: TDataSource;
    Tb_LC1LC1_MODELO_REL: TStringField;
    Tb_LC1LC1_DECLARACAO: TMemoField;
    Label54: TLabel;
    Label55: TLabel;
    Qr_Lic02LC2_MARCA: TStringField;
    Qr_Lic02LC2_DESCCOMP: TMemoField;
    tsRelatorios: TTabSheet;
    gbop_especifica: TGroupBox;
    bbop_esp_visedit: TBitBtn;
    bbop_esp_adq: TBitBtn;
    bbop_esp_excluir: TBitBtn;
    dbcb_modelo: TDBComboBox;
    Tb_LC2: TQuery;
    Tb_LC2LC2_CODEMP: TFloatField;
    Tb_LC2LC2_CODPRO: TFloatField;
    Tb_LC2LC2_QTD: TFloatField;
    Tb_LC2LC2_UND: TStringField;
    Tb_LC2LC2_NOM01: TStringField;
    Tb_LC2LC2_NOM02: TStringField;
    Tb_LC2LC2_NOM03: TStringField;
    Tb_LC2LC2_NOM04: TStringField;
    Tb_LC2LC2_NOM05: TStringField;
    Tb_LC2LC2_NOM06: TStringField;
    Tb_LC2LC2_NOM07: TStringField;
    Tb_LC2LC2_NOM08: TStringField;
    Tb_LC2LC2_NOM09: TStringField;
    Tb_LC2LC2_NOM10: TStringField;
    Tb_LC2LC2_MARCA: TStringField;
    Tb_LC2LC2_RMS: TStringField;
    Tb_LC2LC2_PCOAV: TFloatField;
    Tb_LC2LC2_PCOPZ: TFloatField;
    Tb_LC2LC2_CHAVE: TFloatField;
    Tb_LC2totav: TFloatField;
    Tb_LC2totpz: TFloatField;
    Tb_LC2LC2_ITEM: TFloatField;
    Tb_LC2LC2_LOTEPREGAO: TStringField;
    Tb_LC2LC2_LOTSEQ: TFloatField;
    Tb_LC2LC2_QTDENV: TFloatField;
    Tb_LC2LC2_GANHOU: TStringField;
    U_LC2: TUpdateSQL;
    Src_LC2: TDataSource;
    Tb_LC2LC2_DESCCOMP: TMemoField;
    det_desc01: TRLDBRichText;
    RLDBRichText1: TRLDBRichText;
    GroupBox2: TGroupBox;
    Memo_legenda: TMemo;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Tb_dw_cfg: TQuery;
    src_dw_cfg: TDataSource;
    DBGrid2: TDBGrid;
    Tb_dw_cfgDW_NOMREL: TStringField;
    mem_legenda: TRxMemoryData;
    mem_legendatag: TStringField;
    mem_legendanome_campo: TStringField;
    mem_legendadesc_campo: TStringField;
    mem_legendaformato: TStringField;
    CB_GANHOU: TCheckBox;
    edt_tamfonte: TSpinEdit;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    GroupBox6: TGroupBox;
    Memo2: TMemo;
    Tb_LC1LC1_OBJETO: TStringField;
    Tb_LC1LC1_VALPRO_TEXTO: TStringField;
    DBMemo2: TDBMemo;
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
    TabSheet1: TTabSheet;
    GroupBox7: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Src_LC_imagem: TDataSource;
    Tb_LC_imagem: TADOQuery;
    Tb_LC_imagemLI_ROWID: TStringField;
    Tb_LC_imagemLI_SEQ: TFloatField;
    Tb_LC_imagemLI_OBS: TStringField;
    Tb_LC_imagemLI_IMAGEM: TBlobField;
    Tb_LC_imagemLI_NOMEORI: TStringField;
    Tb_LC1IDLC1: TStringField;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    TabSheet2: TTabSheet;
    DBGrid4: TDBGrid;
    src_aliquotas: TDataSource;
    tb_ped02_preP2CEST: TStringField;
    Label10: TLabel;
    CB_RELATORIO: TComboBox;
    GroupBox8: TGroupBox;
    Memo3: TMemo;
    Tb_LC1carta_convite_n_pregao: TStringField;
    Tb_LC1LC1_PROPOSTA_NUMERO: TStringField;
    Label37: TLabel;
    DBE_LC1_PROPOSTA_NUMERO: TDBEdit;
    Panel2: TPanel;
    bbItem_ExcluirItem: TBitBtn;
    bbItem_renomear: TBitBtn;
    bbItem_Cadastrar: TBitBtn;
    tsMaisInformacoes: TTabSheet;
    DBMemo_LC1_AQUISICAO_EQUIP: TDBMemo;
    Label38: TLabel;
    Label39: TLabel;
    DBMemo3: TDBMemo;
    Tb_LC1LC1_DADOS_ASSINATURA_CONTRATO: TMemoField;
    Tb_LC1LC1_AQUISICAO_EQUIP: TMemoField;
    DBText3: TDBText;
    DBE_CARCONV: TDBEdit;
    Label8: TLabel;
    edt_datcon_data: TDateEdit;
    Label9: TLabel;
    edt_datcon_hora: TEdit;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    Qr_Lic02LC2_PCOCPR: TFloatField;
    Qr_Lic02LC2_ICMS_PERC: TFloatField;
    Qr_Lic02LC2_DESPESASFIXAS_PERC: TFloatField;
    Qr_Lic02LC2_FRETE_PERC: TFloatField;
    Qr_Lic02LC2_MARGEM_LUCRO_PERC: TFloatField;
    GB_COMPOSICAO: TGroupBox;
    StaticText1: TStaticText;
    DBE_LC2_PCOCPR: TDBEdit;
    StaticText2: TStaticText;
    DBE_LC2_ICMS_PERC: TDBEdit;
    DBE_LC2_DESPESASFIXAS_PERC: TDBEdit;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    DBE_LC2_FRETE_PERC: TDBEdit;
    StaticText6: TStaticText;
    DBE_LC2_MARGEM_LUCRO_PERC: TDBEdit;
    bbCotacao: TBitBtn;
    bbExcluirNaoMarcados: TBitBtn;
    Tb_LC1carcon_calc: TStringField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02_preP2CBENEF: TStringField;
    tb_ped02_preP2ID_NEW: TFloatField;
    tb_ped02_preP2ID_PED01_NEW: TFloatField;
    Tb_LC1LC1_ID_NEW: TFloatField;
    Qr_Lic02LC2_ID_NEW: TFloatField;
    Qr_Lic02LC2_ID_LC1_NEW: TFloatField;
    Tb_LC2LC2_ID_NEW: TFloatField;
    Tb_LC2LC2_ID_LC1_NEW: TFloatField;
    tb_ped02_preP2ID_NEW_101: TFloatField;
    tb_ped02_preP2IRRF_PERC: TFloatField;
    tb_ped02_preP2IRRF_VALOR: TFloatField;
    tb_ped02_preP2CSLL_PERC: TFloatField;
    tb_ped02_preP2CSLL_VALOR: TFloatField;
    cds_aliquotasrequer_pedori: TIntegerField;
    Tb_LC_imagemLI_ID_NEW: TFloatField;
    Tb_LC_imagemLI_ID_LC1_NEW: TFloatField;
    StaticText7: TStaticText;
    DBE_preco_calculado: TDBEdit;
    Qr_Lic02margem_pco_calculado: TFloatField;
    Qr_Lic02preco_calculado: TFloatField;
    Qr_Lic02valor_total_pco_calculado: TFloatField;
    StaticText8: TStaticText;
    DBE_valor_total_pco_calculado: TDBEdit;
    StaticText9: TStaticText;
    DBE_margem_pco_calculado: TDBEdit;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    tb_ped02_preP2MOTIVODESONERACAO: TFloatField;
    cds_aliquotasal_ibs_uf: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    cds_aliquotasal_ibs_mun: TFloatField;
    tb_ped02_preP2CBS_CST: TStringField;
    tb_ped02_preP2CODCLASSTRIB: TStringField;
    tb_ped02_preP2CBS_ALIQ: TFloatField;
    tb_ped02_preP2IBS_UF_ALIQ: TFloatField;
    tb_ped02_preP2IBS_MUN_ALIQ: TFloatField;
    tb_ped02_preP2NRECEITUARIO: TStringField;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure PCOUPRZExit(Sender: TObject);
    procedure DBE_CODCLIExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbItensClick(Sender: TObject);
    procedure ITEMKeyPress(Sender: TObject; var Key: Char);
    procedure PEDIDOClick(Sender: TObject);
    procedure DBE_CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_VENDKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_VENDExit(Sender: TObject);
    procedure RLBand_detitens01AfterPrint(Sender: TObject);
    procedure RLBandtotaVistaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBandTotPrazoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand13BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_detitens01BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbandtotgru_avistaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlbandtotgru_aprazoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rlband_cabprimAfterPrint(Sender: TObject);
    procedure btn_pendenciaClick(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure bbImpLicClick(Sender: TObject);
    procedure bbHtmlClick(Sender: TObject);
    procedure Qr_Lic02AfterInsert(DataSet: TDataSet);
    procedure DBGrid1_ItensKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1_ItensColExit(Sender: TObject);
    procedure Qr_Lic02CalcFields(DataSet: TDataSet);
    procedure Qr_Lic02BeforeEdit(DataSet: TDataSet);
    procedure Qr_Lic02BeforeCancel(DataSet: TDataSet);
    procedure Qr_Lic02AfterPost(DataSet: TDataSet);
    procedure Qr_Lic02BeforeDelete(DataSet: TDataSet);
    procedure DBE_FONEExit(Sender: TObject);
    procedure DBGrid1_ItensDblClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure DBGrid1_ItensColEnter(Sender: TObject);
    procedure Qr_Lic02BeforePost(DataSet: TDataSet);
    procedure DBE_NOM01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure c(DataSet: TDataSet);
    procedure DBE_dc_foneExit(Sender: TObject);
    procedure DBE_dc_cepExit(Sender: TObject);
    procedure bb_dc_sairKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bb_dc_sairClick(Sender: TObject);
    procedure gb_dadoscliExit(Sender: TObject);
    procedure DBE_CODCLIEnter(Sender: TObject);
    procedure sbnDadosCliClick(Sender: TObject);
    procedure bbWordClick(Sender: TObject);
    procedure ExluirItem1Click(Sender: TObject);
    procedure bbDuplicarClick(Sender: TObject);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CBTPPCOExit(Sender: TObject);
    procedure Acres_DescExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cb_casasChange(Sender: TObject);
    procedure btn_marcadesmarcaClick(Sender: TObject);
    procedure bbCustosClick(Sender: TObject);
    procedure CBTPPCOEnter(Sender: TObject);
    procedure rl_cabtitBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_USAAVAPClick(Sender: TObject);
    procedure bbop_esp_viseditClick(Sender: TObject);
    procedure bbop_esp_adqClick(Sender: TObject);
    procedure bbop_esp_excluirClick(Sender: TObject);
    procedure bbPersonalizadoClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure Tb_LC1AfterInsert(DataSet: TDataSet);
    procedure Tb_LC1CalcFields(DataSet: TDataSet);
    procedure SRC_LC1DataChange(Sender: TObject; Field: TField);
    procedure Tb_LC2BeforePost(DataSet: TDataSet);
    procedure Tb_LC2CalcFields(DataSet: TDataSet);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Tb_LC2AfterPost(DataSet: TDataSet);
    procedure edt_datcon_horaChange(Sender: TObject);
    procedure edt_datcon_horaExit(Sender: TObject);
    procedure Src_Lic02DataChange(Sender: TObject; Field: TField);
    procedure bbItem_ExcluirItemClick(Sender: TObject);
    procedure bbItem_renomearClick(Sender: TObject);
    procedure bbItem_CadastrarClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBE_LC2_PCOCPRExit(Sender: TObject);
    procedure bbCotacaoClick(Sender: TObject);
    procedure GB_COMPOSICAOExit(Sender: TObject);
    procedure DBGrid1_ItensExit(Sender: TObject);
    procedure bbExcluirNaoMarcadosClick(Sender: TObject);
    procedure Tb_LC2AfterInsert(DataSet: TDataSet);
  private

     mIDLC1_src: string;

    mNomRel_Tab01_Ant: string;
    tab_mp  :array[0..23,0..4] of string;
    tab_totais  :array[0..20,0..4] of string;
    FWordApp : WordApplication;
    procedure Faturar;
    function fLiberaTexto(pLibera: Boolean): Boolean;
    function FDocWord(pModelo: Integer):Boolean;
    function FSetarTamanhoColunas(pTipo: Integer): Boolean;
    Function fAtualizaEnviados(pTipo: Integer):Boolean;
    function FRetornaTipoCampo(pNomCampo: String): string; // 1)-POSICAO 2)-TIPO EM VALOR SENDO 0-String 1-Integer 2-Float 3-Data
    function fCarregarCamposGrade: Boolean;

    function fImprimirWord(pNomeRel: String): Boolean;

    function fBuscarValorLegenda(pItemLegenda: String): String;
    function FSubstituirRodape(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
    function FSubstituirCabecalho(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
    function FSubstituirCabecalho_PrimPag(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
    function fSubstituirCorpo(pAchar,pSubstituir: Olevariant):Boolean ;
    function fIncluirGrade(pBookMark,pTamColunas: String; pGrade:TStrings;pTamCol,pQtdCol,pItem,pLinhaFixa: Integer;pFundo,pAlinhamento,pMesClar: TStrings): Boolean;
    function fValidarTag(pTag,pNome: String):Boolean;
    function fIncluiDocWord(pNomeOri:String;pQtdReg:Integer): Boolean;
    function fIncluirImagem(pBookMark: String; pImagens: TStrings): Boolean;
    function fImagem02(pBookMark: String): Boolean;
    procedure SaveAsPdf(ADocument: tWordDocument; const AFileName: string);
    function LoadFile(const AFileName: string): WordDocument;
    procedure  InitializeApp;
// ptipo 0-do produto 1-do grupo de produtos
    function fAbrirTexto(ptipo: Integer;pCodEmp,pCodPro: Real): String;
    { Private declarations }

    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;

    function flcadlc1_form(ptipo: Integer; pvalor,pStatus: String): Boolean;

    Function flcadlc2_form(ptipo: Integer; pvalor: String): Boolean;



    function fLic01gant(ptipo: Integer): Boolean;


    procedure fLerCadDW_CFG;

    procedure fTestarTabulacoes(pNomeRel: string);


    procedure fAtualizarLegenda;



    function fAtualizarImagemDocumentos: boolean;

    procedure pCalcularPrecoVenda;


//    function fPreparaRelatorio(pNomeRel,pCategoria: String; pChave_ano,pChave,pCodEmp: Integer; out pArquivoSaida: String;pOriginal: Boolean): Boolean;


  public
    { Public declarations }
    form_pvo: TFrm_PVO;
    form_pendencia: TFrm_pendencia;
    form_ImpExcel: TFrm_ImpExcel;
    form_Hlic: TFrm_HLic;
    mchave_fat: real;

//    mPosRegistro:TBookmark;

   mTpco: Integer;
    Function fLerlic02(pTipo: Integer): Boolean;

//S_ImpExcel,
  end;

  const
    mcol_pcoav: integer=8;
    mcol_pcopz: integer=9;
    mcol_totav: integer=11;
    mcol_totap: integer=12;
Const wdFormatPDF = 17;
const mMaxIens_mp = 12;
const     versao_docxml = '001';
const     categoria_docxml = 'LICITACAO';

const mMaxItens_Totais = 4;
leg_licitacao: array[0..60,0..3] of string = (
                                              ('%Data_Licitacao%'              ,'DATA_LICITACAO'       ,' Data da Licitacao Formato dd/mm/aaaa'     , 'dd/mm/yyyy')
                                             ,('%Data_Licitacao_ext%'          ,'DATA_LICITACAO'       ,' Data da Licitacao por extenso'            , 'extenso_data')
                                             ,('%Data_Aberturtura_dd_mm_yyyy%' ,'DATACONVITE'          ,' Data da Abertura dd/mm/aaaa'              , 'dd/mm/yyyy')
                                             ,('%Data_Abertura_ext%'          ,'DATACONVITE'          ,' Data da Abertura por extenso'              , 'extenso_data')
                                             ,('%Hora_abertura_hh_mm%'         ,'DATACONVITE'          ,' Hora da abertura formato hh:mm'           , 'hh:nn')
                                             ,('%Hora_abertura_hh%'            ,'DATACONVITE'          ,' Hora da abertura formato hh'              , 'hh')
                                             ,('%Minuto_abertura_mm%'          ,'DATACONVITE'          ,' Minuto da abertura formato mm'            , 'nn')
                                             ,('%Numero_da_proposta%'          ,'NUMERO_PROPOSTA'      ,' Numero da Proposta'                       , '')
                                             ,('%CodCli%'                      ,'CODCLI'               ,' Codigo do Cliente'                        , '')
                                             ,('%Chavei%'                      ,'CHAVE_LIC'            ,' Chave da Licitacao'                       , '')
                                             ,('%CodCli%'                      ,'CODCLI'               ,' Codigo do Cliente'                        , '')
                                             ,('%AosCuidados%'                 ,'AOSCUIDADOS'          ,' Aos cuidados de'                          , '')
                                             ,('%FoneCuidados%'                ,'FONECUIDADOS'         ,' Telefone da pessoa dos cuidados'          , '')
                                             ,('%Numero_Pregao_Carta_Convite%' ,'CARTACONVITE'         ,' Numero da Carta Convite'                  , '')
                                             ,('%Carta_Convite%'               ,'CARTACONVITE'         ,' Numero da Carta Convite'                  , '')
                                             ,('%Data_Convite%'                ,'DATACONVITE'          ,' Data da Carta Convite'                    , 'dd/mm/yyyy')
                                             ,('%Hora_Convite%'                ,'DATACONVITE'          ,' Hora da Carta Convite'                    , 'hh:nn')
                                             ,('%Validade_Proposta%'           ,'VALIDADE_PROPOSTA'    ,' Validade da Proposta'                     , '')
                                             ,('%Condicoes_Pagamento%'         ,'CONDICOES_PAGTO'      ,' Condicoes de Pagamento'                                            , '')
                                             ,('%Modalidade%'                  ,'MODALIDADE'           ,' Modalidade da licitação (ex. pregao presencial)'                   , '')
                                             ,('%Objeto%'                      ,'OBJETO'               ,' Objeto da Proposta'                       , '')
                                             ,('%Observacao_Linha_L01%'        ,'OBSL01'               ,' Observaçao Linha 01   '                   , '')
                                             ,('%Observacao_Linha_L02%'        ,'OBSL02'               ,' Observaçao Linha 02   '                   , '')
                                             ,('%Observacao_Linha_L03%'        ,'OBSL03'               ,' Observaçao Linha 03   '                   , '')
                                             ,('%Prazo_Entrega_L01%'           ,'PRAZO_ENTL01'         ,' Prazo de Entrega Linha 01'                , '')
                                             ,('%Prazo_Entrega_L02%'           ,'PRAZO_ENTL02'         ,' Prazo de Entrega Linha 02'                , '')
                                             ,('%Prazo_Entrega_L03%'           ,'PRAZO_ENTL03'         ,' Prazo de Entrega Linha 03'                , '')
                                             ,('%Declaracao_Linha_01%'         ,'DEC_L01'              ,' Declaracoes Linha 01'                     , '')
                                             ,('%Declaracao_Linha_02%'         ,'DEC_L02'              ,' Declaracoes Linha 02'                     , '')
                                             ,('%Declaracao_Linha_03%'         ,'DEC_L03'              ,' Declaracoes Linha 03'                     , '')
                                             ,('%Declaracao_Linha_04%'         ,'DEC_L04'              ,' Declaracoes Linha 04'                     , '')
                                             ,('%Declaracao_Linha_05%'         ,'DEC_L05'              ,' Declaracoes Linha 05'                     , '')
                                             ,('%Declaracao_Linha_06%'         ,'DEC_L06'              ,' Declaracoes Linha 06'                     , '')
                                             ,('%Declaracao_Linha_07%'         ,'DEC_L07'              ,' Declaracoes Linha 07'                     , '')
                                             ,('%Declaracao_Linha_08%'         ,'DEC_L08'              ,' Declaracoes Linha 08'                     , '')
                                             ,('%Declaracao_Linha_09%'         ,'DEC_L09'              ,' Declaracoes Linha 09'                     , '')
                                             ,('%Declaracao_Linha_10%'         ,'DEC_L10'              ,' Declaracoes Linha 10'                     , '')
                                             ,('%Hora_Convite%'                ,'DATACONVITE'          ,' Hora do Convite'                          , 'hh:nn:ss')
                                             ,('%Codigo_Vendedor%'             ,'CODIGO_VEND'          ,' Código do Vendedor'                       , '')
                                             ,('%Proponente_Linha_01%'         ,'PROPONENTE_LINHA01'   ,' Proponente linha 01'                      , '')
                                             ,('%Proponente_Linha_02%'         ,'PROPONENTE_LINHA02'   ,' Proponente linha 02'                      , '')
                                             ,('%CNPJ_CLIENTE%'                ,'CNPJ_CLIENTE'         ,' CNPJ do Cliente'                          , '00"."000"."000"/"0000"-"00')
                                             ,('%IE_CLIENTE%'                  ,'IE_CLIENTE'           ,' Inscrição Estadual do Cliente'            , '')
                                             ,('%Nome_Cliente%'                ,'RAZAO_CLIENTE'        ,' Razão Social do Cliente'                  , '')
                                             ,('%Fantasia_Cliente%'            ,'FANTASIA_CLIENTE'     ,' Nome de Fantasia do Cliente'              , '')
                                             ,('%Cidade_Cliente%'              ,'CIDADE_CLIENTE'       ,' Cidade do Cliente'                        , '')
                                             ,('%UF_Cliente%'                  ,'UF_CLIENTE'           ,' UF do Cliente'                            , '')
                                             ,('%FONE_Cliente%'                ,'FONE_CLIENTE'         ,' Telefone do Cliente'                      , '')
                                             ,('%ENDER_Cliente%'               ,'ENDER_CLIENTE'        ,' Endereco do Cliente'                      , '')
                                             ,('%BAIRRO_Cliente%'              ,'BAIRRO_CLIENTE'       ,' Bairro do Cliente'                        , '')
                                             ,('%EMAIL_Cliente%'               ,'EMAIL_CLIENTE'        ,' E-Mail do Cliente'                        , '')
                                             ,('%Declaracoes%'                 ,'DECLARACAO'           ,' Declaracoes da Licitacao'                 , '')
                                             ,('%TOTAL_AVISTA%'                ,'TOTAL_LIC_AVISTA'     ,'Total das Licitacao a vista'               , '#,##0.00')
                                             ,('%TOTAL_AVISTA_EXT%'            ,'TOTAL_LIC_AVISTA'     ,'Total das Licitacao a vista por extenso'   , 'extenso_reais')
                                             ,('%TOTAL_APRAZO%'                ,'TOTAL_LIC_APRAZO'     ,'Total das Licitacao a prazo'               , '#,##0.00')
                                             ,('%TOTAL_APRAZO_EXT%'            ,'TOTAL_LIC_APRAZO'     ,'Total das Licitacao a prazo por extenso'   , 'extenso_reais')
                                             ,('%Nome_Vendedor%'               ,'NOMVEND'              ,'Nome do Vendedor'                          , '')
                                             ,('%CPF_Vendedor%'                ,'CPFVEND'              ,'CPF do Vendedor'                           , '000"."000"."000"-"00')
                                             ,('%RG_Vendedor%'                 ,'RGVEND'               ,'RG do Vendedor'                            , '')
                                             ,('%dados_assinatura_contrato%'   ,'DADOS_ASSINATURA_CONTRATO'  ,'Dados Sobre a Assinatura do Contrato'      , '')
                                             ,('%aquisicao_equipamento%'       ,'AQUISICAO_EQUIP'            ,'Dados Sobre Aquisição do Equipamento'      , '')


                                            );

var
  Frm_Lic2: TFrm_Lic2;

  mVenda_GP: TFrm_Vendas_GravarPedido;
  mqtdi, mitem: Integer;
  mAnt_Codcli: Real=0;
  moper: Integer=0;
  moper_lic: Integer=-1;
  mchave_lic: Real;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;
  bbAdd_true : Boolean=True;
  mTgp1, mTgv1 : Real;
  mTGrup1, mTGruv1 : Real;

  xChave         : Real   = 0;
  xChavePedido   : String = '';
  xQuantidade    : Real = 0;
  xEmpresaPedido : Real = 0;
  xMcasasLocal   : String = '';


  mItem_Edit     : Integer=0;
  mLotePregao    : String='';
  mAnt_Codpro    : Real=0;
  mAnt_qtd       : Real=0;
  mAnt_VlrTotal  : Real=0;
  mAnt_lotePregao: String='';
  mAnt_Item      : Integer=0;
  mProx_Item     : Integer=0;
  mAnt_Itens     : Integer=0;
  mTot_Itens     : Integer=0;
  mTot_qtd       : Real=0;
  mTot_VlrTotal  : Real=0;

  mItemTable     : Integer=1;
  s:olevariant; //facilitar trabalho
  m_AntFloat:  Integer;


const
    Legenda_itens : array[0..43] of string =
    (
      '%datalic%','%chavelic%','%razaosoc%', '%fantasia%', '%endereco%', '%bairro%',
      '%cidade%', '%uf%', '%observacao%','%codcli%','%codven%',
      '%nomven%','%telefone%','%orgao%','%valproposta%','%orgao%','%condpag%'
      ,'%modalidade%','%numcarconv%','%dtabert%','%horaabert%','%obslin01%'
      ,'%obslin02%','%propon01%','%propon02%','%przent01%'
      ,'%przent02%','%przent03%','%email%','%declin01%'
      ,'%declin02%','%declin03%','%declin04%','%declin05%'
      ,'%declin06%','%declin07%','%declin08%','%declin09%','%declin10%','%cnpj_cli%','%cepcli%','%contato%','%fone_contato%','%iecli%' ) ;

    Legenda_descricao : array[0..43] of string =
    (
      'Data da Licitação','Chave da Licitação','Razão Social', 'Fantasia/Denominação', 'Endereço do Cliente', 'Bairro',
      'Cidade', 'UF', 'Observação','Código do Cliente','Código do Vendedor',
      'Nome do Vendedor','Telefone do Cliente','Orgão da Licitação','Validade da Proposta','Orgão da Licitação','Condições de Pagamento'
      ,'Modalidade','´Número da Carta Convite','Data da Abertura da Licitação','Hora da Abertura da licitação','Observação Linha 01'
      ,'Observação Linha 02','Proponente Linha 01','Proponente Linha 02','Prazo de Entrega Linha 01'
      ,'Prazo de Entrega Linha 02','Prazo de Entrega Linha 03','E-Mail','Declarações Linha 01'
      ,'Declarações Linha 02','Declarações Linha 03','Declarações Linha 04','Declarações Linha 05'
      ,'Declarações Linha 06','Declarações Linha 07','Declarações Linha 08','Declarações Linha 09','Declarações Linha 10'
      ,'CNPJ do Cliente','CEP do Cliente','Pessoa de contato no cliente','telefone de contato no cliente','inscrição estadual' ) ;

implementation

uses S_DM4, QRPrntr, func_excecoes, S_LucroPed, Math, S_DM1_ADO, S_Agde,
  S_Ped_ObsCli, S_Aviso, s_imprimir_docxml, s_Imagem_WebCam,
  S_Fig_TelaCheia, s_Lic2_Renomear_item, s_Lic2_cadastrar_produto,
  s_Lic2_GerarCotacao, s_Lic2_Pedido;//, S_HLic;

{$R *.dfm}

procedure TFrm_Lic2.INCLUIRClick(Sender: TObject);
begin
if not Tb_Lc1.Active then
   begin
   flcadlc1_form(0,'9999999','');
   end;
PC1.ActivePageIndex:=0;

Tb_Lc1.Append;

Tb_Lc1LC1_CODCLI.AsFloat:=0;
Tb_Lc1LC1_CODUSR_INC.AsFloat   :=codusr;
Tb_Lc1LC1_DATHOR_INC.AsDateTime:=now;
Tb_Lc1LC1_EXTUAV.AsInteger:=1;
Tb_Lc1LC1_EXTPAV.AsInteger:=1;
Tb_Lc1LC1_EXTTAV.AsInteger:=1;
Tb_Lc1.Post;

{
TabSheet1.Enabled:=True;
Panel_digitens.Enabled:=True;
TabSheet3.Enabled:=True;
TabSheet4.Enabled:=false;

DBGrid1.Enabled:=False;
INCLUIR.Enabled:=False;
ALTERAR.Enabled:=False;
PEDIDO.Enabled :=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
IMPRIMIR.Enabled:=False;
DBE_DTEMIS.SetFocus;
mchave_lic:=0;
}
mqtdi:=0;
mitem:=0;

mTot_qtd       :=0;
mTot_VlrTotal  :=0;
mAnt_VlrTotal  :=0;
mAnt_qtd       :=0;
mAnt_lotePregao:='';
mAnt_Item      :=0;

mAnt_Itens     :=0;
mTot_Itens     :=0;

mLotePregao:='0';

//mPosRegistro:=0;
fLerlic02(0);
ALTERARClick(self);
mOper_Lic:=0;

CBTPPCO.ItemIndex:=1;
if flfilpad(0,'_LIC1','CBTPPCO') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    CBTPPCO.ItemIndex:=DM4.Tb_FilPad2FPVALOR.AsInteger;
  end;

cb_casas.ItemIndex:=0;
if flfilpad(0,'_LIC1_ESP','CB_CASAS') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    cb_casas.ItemIndex:=DM4.Tb_FilPad2FPVALOR.AsInteger;
  end;

if flfilpad(0,'_LIC1_ESP','CB_CASAS') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    cb_casas.ItemIndex:=DM4.Tb_FilPad2FPVALOR.AsInteger;
  end;


cb_casasChange(SELF);

DBCheckBox7.Checked:=True;
end;

procedure TFrm_Lic2.ALTERARClick(Sender: TObject);
var
  cDiasBloq: Integer;
begin
cDiasBloq:=0;
if DM4.Tb_ParGer02PG2SENINTUSR.AsInteger=1 then
  begin
  if flfilpad(codusr,'_SI_LIC','CDIASBLQLIC') then
    if not DM4.Tb_FilPad2FPVALOR.IsNull then
      cDiasBloq:=DM4.Tb_FilPad2FPVALOR.AsInteger;
  end
else
  begin
  if flfilpad(0,'_SI_LIC','CDIASBLQLIC') then
    if not DM4.Tb_FilPad2FPVALOR.IsNull then
       cDiasBloq:=DM4.Tb_FilPad2FPVALOR.AsInteger;
  end;

if (FormatDateTime('DD/MM/YYYY',Tb_Lc1LC1_DATHOR_INC.AsDateTime+cDiasBloq)<FormatDateTime('DD/MM/YYYY',Now))
   and (ValFloat(FloatToStr(cDiasBloq))>0) then
  begin
  flcadpar02(0,0,CodUsr,IntToStr(66));
  if DM4.Tb_Par02PA2PDSN.Value = 'S' then
    begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=66;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para alterar a licitação após o prazo de encerramento!';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      begin
      fMensagem('Alteração não Aceita!',0,['0'],0);
        exit;
      end;
    end;
  end;

if Tb_Lc1LC1_CHAVE.IsNull then
   begin
   Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   abort;
   end;
fLerlic02(0);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC2_ITEM) from CADLC2 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADLC2',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
try
   DM1.Query1.open;
except
   end;
mProx_Item:=DM1.Query1.fields[0].asinteger+1;

tsCabecalho.Enabled:=True;
tsMaisInformacoes.Enabled:=true;
DBGrid1_Itens.ReadOnly:=false;
fLiberaTexto(true);

TabSheet3.Enabled:=True;
TabSheet4.Enabled:=false;
PC1.ActivePageIndex:=0;
DBGrid1.Enabled:=False;
Tb_Lc1.Edit;
Tb_Lc1LC1_CODUSR_ALT.AsFloat   :=codusr;
Tb_Lc1LC1_DATHOR_ALT.AsDateTime:=now;

DBE_DTEMIS.SetFocus;
INCLUIR.Enabled      :=False;
ALTERAR.Enabled      :=False;
PEDIDO.Enabled       :=False;
btn_pendencia.Enabled:=false;
bbHtml.Enabled       :=false;
bbWord.Enabled       :=false;
bbDuplicar.Enabled   :=false;
bbCustos.Enabled     :=False;
GRAVAR.Enabled       :=True;
bbImpLic.Enabled     :=true;

DBE_LC2_PCOCPR.ReadOnly             :=false;
DBE_LC2_ICMS_PERC.ReadOnly          :=false;
DBE_LC2_DESPESASFIXAS_PERC.ReadOnly :=false;
DBE_LC2_FRETE_PERC.ReadOnly         :=false;
DBE_LC2_MARGEM_LUCRO_PERC.ReadOnly  :=false;


EXCLUIR.Enabled      :=False;
Panel1.Enabled       :=False;
CLB_STATUS.Enabled   :=False;
DBNavigator1.Enabled :=False;
DBGrid1.ReadOnly     :=False;
btn_marcadesmarca.Enabled:=True;
CANCELAR.Enabled:=True;
IMPRIMIR.Enabled:=False;

mchave_lic:=Tb_Lc1LC1_CHAVE.AsInteger;
fLerlic02(0);
mOper_Lic:=1;

end;

procedure TFrm_Lic2.GRAVARClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_LIC1_ESP','');
fGravaPadroes(0,'CB_CASAS'         ,'itemindex' ,'_LIC1_ESP',IntToStr(cb_casas.ItemIndex));
{
Tb_Lc1LC1_PCOAVI.Value:=0; // 0-IMPRIME 1-NAO

Tb_Lc1LC1_PCOPRZ.Value:=1; // 0-IMPRIME 1-NAO
Tb_Lc1LC1_EXTUAP.Value:=1; // 0-IMPRIME 1-NAO
Tb_Lc1LC1_EXTPAP.Value:=1; // 0-IMPRIME 1-NAO
 }
Tb_Lc1LC1_EXTUAV.AsInteger:=1;
Tb_Lc1LC1_EXTPAV.AsInteger:=1;
Tb_Lc1LC1_EXTTAV.AsInteger:=1;

if Tb_Lc1LC1_CODCLI.IsNull then
   Tb_Lc1LC1_CODCLI.Value:=0;
if (Tb_Lc1LC1_CODCLI.AsFloat=0) and (length(Tb_Lc1LC1_NOMCLI.AsString)<2) then
   begin
   MessageDlg('Favor Digitar um cliente Valido!',mtWarning,[mbOk],0);
   exit;
   end;

if Tb_Lc1LC1_DTEMIS.IsNull then
   begin
   Fmensagem('Data de Emissão Campo Obrigatório!',0,['0'],0);
   DBE_DTEMIS.SetFocus;
   exit;
   end;
if moper_lic=1 then
   fLic01gant(8);


Tb_Lc1LC1_CASASDEC.AsInteger:=cb_casas.ItemIndex;
Tb_Lc1LC1_TPPCO.AsInteger:=CBTPPCO.ItemIndex;

Tb_Lc1.Post;

FAtualizaBanco(1,'CADLC1','LC1_CODEMP',Tb_Lc1LC1_CODEMP.AsString
   ,['LC1_CHAVE'],[Tb_Lc1LC1_CHAVE.AsString]
   ,Tb_Lc1);

tsCabecalho.Enabled:=False;
tsMaisInformacoes.Enabled:=false;
DBGrid1_Itens.ReadOnly:=true;
fLiberaTexto(false);

TabSheet3.Enabled:=False;
TabSheet4.Enabled:=True;

DBE_NOMCLI.Enabled  := False;
DBE_NOMCLI.ReadOnly := True;
DBE_NOMCLI.Color    := clBtnFace;


DBGrid1.Enabled:=True;
INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
PEDIDO.Enabled :=bbAdd_true;
btn_pendencia.Enabled:=bbAdd_true;
bbDuplicar.Enabled   :=bbAdd_true;
bbCustos.Enabled     :=bbAdd_true;
bbHtml.Enabled       :=bbrel_true;
bbWord.Enabled       :=bbrel_true;

GRAVAR.Enabled :=False;
bbImpLic.Enabled:=false;
EXCLUIR.Enabled:=bbexc_true;
CANCELAR.Enabled:=True;
IMPRIMIR.Enabled:=true;
DBGrid1.Enabled:=True;
Panel1.Enabled       :=True;
CLB_STATUS.Enabled   :=True;
DBNavigator1.Enabled :=True;
DBGrid1.ReadOnly     :=True;
btn_marcadesmarca.Enabled:=False;
DBE_LC2_PCOCPR.ReadOnly             :=true;
DBE_LC2_ICMS_PERC.ReadOnly          :=true;
DBE_LC2_DESPESASFIXAS_PERC.ReadOnly :=true;
DBE_LC2_FRETE_PERC.ReadOnly         :=true;
DBE_LC2_MARGEM_LUCRO_PERC.ReadOnly  :=true;

mOper_Lic:=-1;

end;

procedure TFrm_Lic2.EXCLUIRClick(Sender: TObject);
begin
if Tb_Lc1LC1_CHAVE.IsNull then
   begin
   Fmensagem('Não há registro a ser excluido!',0,['0'],0);
   abort;
   end;
if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   fLic01gant(9);
   DM1.Query1.Close;
   DM1.Query1.Sql.clear;
   DM1.Query1.Sql.add('Delete from CADLC2 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
   DM1.Query1.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   FAtualizaBanco(2,'CADLC1','LC1_CODEMP',Tb_Lc1LC1_CODEMP.AsString
   ,['LC1_CHAVE'],[Tb_Lc1LC1_CHAVE.AsString]
   ,Tb_Lc1);
   Tb_Lc1.Delete;
   tsCabecalho.Enabled:=False;
   tsMaisInformacoes.Enabled:=false;
   DBGrid1.Enabled  :=True;
   INCLUIR.Enabled:=bbinc_true;
   ALTERAR.Enabled:=bbalt_true;
   PEDIDO.Enabled :=bbAdd_true;
   btn_pendencia.Enabled:=bbAdd_true;
   bbDuplicar.Enabled   :=bbAdd_true;
   bbCustos.Enabled     :=bbAdd_true;
   bbHtml.Enabled       :=bbrel_true;
   bbWord.Enabled       :=bbrel_true;


   DBE_LC2_PCOCPR.ReadOnly             :=true;
   DBE_LC2_ICMS_PERC.ReadOnly          :=true;
   DBE_LC2_DESPESASFIXAS_PERC.ReadOnly :=true;
   DBE_LC2_FRETE_PERC.ReadOnly         :=true;
   DBE_LC2_MARGEM_LUCRO_PERC.ReadOnly  :=true;

   GRAVAR.Enabled :=False;
   bbImpLic.Enabled:=false;
   EXCLUIR.Enabled:=bbexc_true;
   CANCELAR.Enabled:=True;
   btn_marcadesmarca.Enabled:=fALSE;
   end;


end;

procedure TFrm_Lic2.CANCELARClick(Sender: TObject);
begin
Panel3.SetFocus;
if mOper_Lic=0 then
   begin
   if Tb_Lc1LC1_CHAVE.AsFloat>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.clear;
      DM1.Query1.Sql.add('Delete from CADLC2 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      FAtualizaBanco(2,'CADLC1','LC1_CODEMP',Tb_Lc1LC1_CODEMP.AsString
      ,['LC1_CHAVE'],[Tb_Lc1LC1_CHAVE.AsString]
      ,Tb_Lc1);

      Tb_Lc1.Delete;

      if flcadpar01(0,iif(codemp>100,codemp-100,codemp),'1') then
         begin
         if DM4.Tb_Par01PNUMLIC.AsFloat=mchave_lic+1 then
            begin
            DM4.Tb_Par01.Edit;
            DM4.Tb_Par01PNUMLIC.Value   :=mchave_lic;
            DM4.Tb_Par01.Post;
            end;
         end;
      end;
   end
else
   Tb_Lc1.Cancel;
mOper_Lic:=-1;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
PEDIDO.Enabled :=bbAdd_true;
btn_pendencia.Enabled:=bbAdd_true;
bbDuplicar.Enabled   :=bbAdd_true;
bbCustos.Enabled     :=bbAdd_true;
bbHtml.Enabled       :=bbrel_true;
bbWord.Enabled       :=bbrel_true;


DBE_LC2_PCOCPR.ReadOnly             :=true;
DBE_LC2_ICMS_PERC.ReadOnly          :=true;
DBE_LC2_DESPESASFIXAS_PERC.ReadOnly :=true;
DBE_LC2_FRETE_PERC.ReadOnly         :=true;
DBE_LC2_MARGEM_LUCRO_PERC.ReadOnly  :=true;

GRAVAR.Enabled :=false;
bbImpLic.Enabled:=false;
IMPRIMIR.Enabled:=bbrel_true;
EXCLUIR.Enabled:=bbexc_true;
CANCELAR.Enabled:=True;
Panel1.Enabled       :=True;
CLB_STATUS.Enabled   :=True;
DBNavigator1.Enabled :=True;
DBGrid1.ReadOnly     :=True;
btn_marcadesmarca.Enabled:=False;
tsCabecalho.Enabled:=False;
tsMaisInformacoes.Enabled:=false;
DBGrid1_Itens.ReadOnly:=true;
fLiberaTexto(false);

TabSheet3.Enabled:=False;
TabSheet4.Enabled:=true;
DBGrid1.Enabled:=True;

end;

procedure TFrm_Lic2.SAIRClick(Sender: TObject);
begin
ModalResult:=mrOk;
close;
end;

procedure TFrm_Lic2.Faturar;
begin
{mVenda_GP.mPed1_Codemp:=codemp;
mvenda_gp.mped1_Chave:=0;
mVenda_GP.mPed1_CodCli:=Tb_Lc1LC1_CODCLI.AsFloat;
flcadcli(1,0,Tb_Lc1LC1_CODCLI.AsString);
mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_Tipo_Ped:=0;
mVenda_GP.mPed1_CodFP:=0;
mVenda_GP.mPed1_NomFP:='';
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mPed1_Codven:=19;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_cfop1:=5101;
mVenda_GP.mPed1_cfop2:=5101;
if (DM1.Tb_CliCSTATUS.Value=8) then
  begin
  if Frm_Ped_ObsCli=nil then
    Application.Createform(TFrm_Ped_ObsCli, Frm_Ped_ObsCli)
  else
    begin
    Frm_Ped_ObsCli.free;
    Frm_Ped_ObsCli:=nil;
    Application.Createform(TFrm_Ped_ObsCli, Frm_Ped_ObsCli)
    end;
  Frm_Ped_ObsCli.lbl_nomcli.Caption  :='Cliente: '+DM1.Tb_CliCCODCLI.AsString+'-'+DM1.Tb_CliCRAZAO.AsString+'/'+DM1.Tb_CliCDENOM.AsString;
  Frm_Ped_ObsCli.lbl_endereco.Caption:='Endereço: '+DM1.Tb_CliCLOG.AsString+' '+DM1.Tb_CliCBAIRRO.AsString;
  Frm_Ped_ObsCli.lbl_fone.Caption    :='Telefone: '+DM1.Tb_CliCFONE01.AsString+'/'+DM1.Tb_CliCFONE02.AsString;
  Frm_Ped_ObsCli.lbl_cidade.Caption  :='Cidade: '+DM1.Tb_CliCCIDADE.AsString+' '+DM1.Tb_CliCUF.AsString;
  if DM1.Tb_CliCCNPJ.AsFloat>0 then
    Frm_Ped_ObsCli.lbl_cnpj.Caption    :='CNPJ: '+FormatFloat('00"."000"."000/0000-00', DM1.Tb_CliCCNPJ.Value)
                                       +' Inscrição Estadual: '+DM1.Tb_CliCIE.Value
  else
    Frm_Ped_ObsCli.lbl_cnpj.Caption    :='CPF: '+FormatFloat('000"."000"."000"."000"-"00', DM1.Tb_CliCCPF.Value)
                                        +' Registro Geral: '+DM1.Tb_CliCRG.Value;
  Frm_Ped_ObsCli.lbl_vend.Caption  :='Vendedor: '+DM1.Tb_CliCCODVEN.AsString;
  if DM1.Tb_CliCCODV02.AsFloat>0 then
    Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV02.AsString;
  if DM1.Tb_CliCCODV03.AsFloat>0 then
    Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV03.AsString;
  if DM1.Tb_CliCCODV04.AsFloat>0 then
    Frm_Ped_ObsCli.lbl_vend.Caption  :=Frm_Ped_ObsCli.lbl_vend.Caption+'/'+DM1.Tb_CliCCODV04.AsString;
  Frm_Ped_ObsCli.lbl_obs01.Caption  :=DM1.Tb_CliCOBS01.AsString;
  Frm_Ped_ObsCli.lbl_obs02.Caption  :=DM1.Tb_CliCOBS02.AsString;
  Frm_Ped_ObsCli.lbl_obs03.Caption  :=DM1.Tb_CliCOBS03.AsString;
  Frm_Ped_ObsCli.lbl_obs04.Caption  :=DM1.Tb_CliCOBS04.AsString;
  Frm_Ped_ObsCli.lbl_obs05.Caption  :=DM1.Tb_CliCOBS05.AsString;
  Frm_Ped_ObsCli.FormStyle:=fsNormal;
  Frm_Ped_ObsCli.Visible:=false;
  Frm_Ped_ObsCli.ShowModal;
  if Frm_Ped_ObsCli.CB_LEITURA.Checked then
    Frm_Ped_ObsCli.Free;
  Frm_Ped_ObsCli:=nil;
  end;
if (DM1.Tb_CliCSITCLI.Value=8) then
  begin
  if Frm_Aviso=nil then
    Application.createform(TFrm_Aviso, Frm_Aviso)
  else
    begin
    Frm_Aviso.free;
    Frm_Aviso:=nil;
    Application.createform(TFrm_Aviso, Frm_Aviso)
    end;
  Frm_Aviso.RichEdit1.Lines.Clear;
  Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS01.Value);
  Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS02.Value);
  Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS03.Value);
  Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS04.Value);
  Frm_Aviso.RichEdit1.Lines.add(DM1.Tb_CliCOBS05.Value);
  Frm_Aviso.FormStyle:=fsNormal;
  Frm_Aviso.Visible:=false;
  Frm_Aviso.ShowModal;
  Frm_Aviso.Free;
  Frm_Aviso:=nil;
  end;
mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger - 1;
if DM1.Tb_CliCCODTRA.AsInteger>0 then
  if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
    mVenda_GP.mPed1_CodTra:=DM1.Tb_CliCCODTRA.AsInteger;

if DM1.Tb_CliCCODVEN.AsInteger>0 then
  if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
    mVenda_GP.mPed1_Codven := DM1.Tb_CliCCODVEN.AsInteger;

mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString) then
  flcadpv(1,0,'AV','01');
mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
if DM1.Tb_PVPVTPP.AsInteger=4 then // preco extra
  begin
  mVenda_GP.mPed1_Tabela:='1';
  end
else if DM1.Tb_PVPVTPP.AsInteger=0 then  // do cadastro do estado
  begin
  flcaduf(0,0,1,mPed_UF_Cli);
  if DM1.Tb_UFPTIPOPCO.AsInteger=3 then
     mVenda_GP.mPed1_Tabela:='3'
  else if DM1.Tb_UFPTIPOPCO.AsInteger=2 then
     mVenda_GP.mPed1_Tabela:='2'
  else
     mVenda_GP.mPed1_Tabela:='1';
  end
else if DM1.Tb_PVPVTPP.AsInteger=3 then // tipo de preco 3
  begin
  mVenda_GP.mPed1_Tabela:='3';
  end
else if DM1.Tb_PVPVTPP.AsInteger=2 then // tipo de preco 2
  begin
  mVenda_GP.mPed1_Tabela:='2';
  end
else // tipo de preco 1
  begin
  mVenda_GP.mPed1_Tabela:='1';
  end;
flcadpv2('1',DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString);
DM1.Tb_PV2.First;
mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
mVenda_GP.mPed1_PrzNovos_001:=DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
mVenda_GP.mPed1_PrzNovos_101:=DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
DM1.Tb_PV2.Next;
while not DM1.Tb_PV2.Eof do
  begin
  mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
  mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
  mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+DM1.Tb_PV2PV2PRAZO.AsString+';P;;;;;';
  DM1.Tb_PV2.Next;
  end;
mVenda_GP.mPed1_QtdParc_ant:=-1;
mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
mVenda_GP.mPed1_AjustaFP :='S';
mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
if DM1.Tb_PargerPVISA.Value=1 then
  begin
  if DM4.Tb_Par01PVISA.Value=1 then
    begin
    if (DM1.Tb_CliCDTVALV.Value<pdatasis) or (DM1.Tb_CliCDTVALV.IsNull) then
      begin
      if fmensagem('Número do alvará da vigilância Sanitária Vencido! Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTVALV.Value)+#13
                  +'Deseja Continuar e deixa-lo bloqueado?',0,['1','2'],2)=mrYes then
        begin
        Break;
        end;
      end;
    end;
  end;

if DM1.Tb_PargerPANVISA.Value=1 then
  begin
  if DM4.Tb_Par01PANVISA.Value=1 then
    begin
    if (DM1.Tb_CliCDTANVISA.Value<pdatasis) OR (DM1.Tb_CliCDTANVISA.IsNull) then
      begin
      if fmensagem('Número do alvará da vigilância Sanitária(ANVISA) Vencido! Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTANVISA.Value)+#13
                  +'Deseja Continuar e deixa-lo bloqueado?',0,['1','2'],2)=mrYes then
        Break;
      end;
    end;
  end;
mVenda_GP.fGravarPed01(0,0);
//itens
tb_ped02_pre.First;
while not tb_ped02_pre.Eof do
  begin
  flcadpro(1,0,0,tb_ped02_preP2CODPRO.AsString);
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
                      ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                      ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                      ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                      ,0 // pPrecoMax_Cal,
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,tb_ped02_preP2DESC_PERC01.AsFloat
                      ,tb_ped02_pre);
  tb_ped02_pre.Next;
  end;
ClientDataSet1.Next;
end;
ShowMessage('Concluido!!!');
tb_ped02_pre.Close;}
end;

procedure TFrm_Lic2.FormCreate(Sender: TObject);
begin
cds_aliquotas.CreateDataSet;

xChavePedido := '';
xChave       := 0;

pc1.ActivePage := tsCabecalho;

if codusr=1111 then
   tsParamMaster.TabVisible:=true
else
   tsParamMaster.TabVisible:=false;


if flfilpad(0,'_LIC1','CBVALIDARDESCONTO') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    cbvalidardesconto.Checked:=IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,true,false);
  end;

if flfilpad(0,'_LIC1','CBUSERINC') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    CBUSERINC.Checked:=IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,true,false);
  end;

if flfilpad(-1,'_LIC1','CB_USAAVAP') then
   CB_USAAVAP.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if CB_USAAVAP.Checked=false then
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=false;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=false;
   end
else
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=true;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=true;
   end;


Qr_Lic02preco_calculado.displayformat           :=mcasaspu;
Qr_Lic02valor_total_pco_calculado.displayformat :=mcasas;
Qr_Lic02margem_pco_calculado.displayformat      :=mcasas_pct;

Qr_Lic02LC2_QTD.displayformat    :=mcasqtd;
Qr_Lic02LC2_PCOAV.displayformat  :=mcasaspu;
Qr_Lic02total_bruto.displayformat:=mcasas;
Qr_Lic02LC2_PCOPZ.displayformat  :=mcasaspu;
Qr_Lic02total_bruto_prazo.displayformat:=mcasas;

Qr_Lic02LC2_PCOCPR.displayformat  :=mcasaspu;
Qr_Lic02LC2_ICMS_PERC.displayformat  :=mcasas_pct;
Qr_Lic02LC2_DESPESASFIXAS_PERC.displayformat  :=mcasas_pct;
Qr_Lic02LC2_FRETE_PERC.displayformat  :=mcasas_pct;
Qr_Lic02LC2_MARGEM_LUCRO_PERC.displayformat  :=mcasas_pct;

Tb_Lc1LC1_CNPJ.DisplayFormat :=pDFCNPJ;
Tb_Lc1LC1_CNPJ.EditMask      :=pEditMascCNPJ;



fLerCadDW_CFG;


end;

procedure TFrm_Lic2.CODPROKeyPress(Sender: TObject; var Key: Char);
begin


//IMPRIMIR.Enabled:=bbrel_true;
gb_dadoscli.Top   :=69;
gb_dadoscli.Height:=154;
gb_dadoscli.Left  :=190;

end;

procedure TFrm_Lic2.PCOUPRZExit(Sender: TObject);
begin
//PCOUPRZ.Text:=FormatFloat(mcasaspu, ValFloat(PCOUPRZ.Text));
//VTPAP.Text:=insere(FormatFloat(mcasaspu,ValFloat(QUANT.Text)*ValFloat(PCOUPRZ.Text)),' ',15);
end;

procedure TFrm_Lic2.DBE_CODCLIExit(Sender: TObject);
begin
if Tb_Lc1LC1_CODCLI.AsFloat = 0 then
   begin
   if mAnt_Codcli<>0 then
      begin
      Tb_Lc1LC1_CNPJ.AsFloat    :=0;
      Tb_Lc1LC1_IE.AsString     :='';
      Tb_Lc1LC1_ENDER.AsString  :='';
      Tb_Lc1LC1_BAIRRO.AsString :='';
      Tb_Lc1LC1_CEP.AsString    :='';
      Tb_Lc1LC1_NOMLOC.AsString :=DM1.Tb_EmpCIDADE.AsString;
      Tb_Lc1LC1_UF.AsString     :=DM1.Tb_EmpUF.AsString;
      Tb_Lc1LC1_FONE.AsString   :='';
      end;
   DBE_NOMCLI.Enabled  := True;
   DBE_NOMCLI.ReadOnly := False;
   DBE_NOMCLI.Color    := clWindow;
   sbnDadosCliClick(Self);
   Exit;
   end
else
   begin
   DBE_NOMCLI.Enabled  := False;
   DBE_NOMCLI.ReadOnly := True;
   DBE_NOMCLI.Color    := clBtnFace;
   DBE_VEND.SetFocus;


   end;
if Tb_Lc1LC1_CODCLI.AsFloat>0 then
   begin
   if not flqr2('CRAZAO,CCODVEN,CLOG,CBAIRRO,CCIDADE,CUF,CCEP,CCNPJ,CIE,CCPF,CRG','C','CADCLI','N','CCODCLI',Tb_Lc1LC1_CODCLI.AsString) then
      begin
      Fmensagem('Cliente não cadastrado!',0,['0'],0);
      DBE_CODCLI.SetFocus;
      end
   else
      begin
      if (Tb_Lc1LC1_CODVEN.AsFloat=0) then
         begin
         Tb_Lc1LC1_CODVEN.Value:=DM1.Query2.fieldbyName('CCODVEN').AsFloat;
         end;
      Tb_Lc1LC1_NOMCLI.Value:=DM1.Query2.fieldbyName('CRAZAO').AsString;
      Tb_Lc1LC1_ENDER.Value :=DM1.Query2.fieldbyName('CLOG').AsString;
      Tb_Lc1LC1_BAIRRO.Value:=DM1.Query2.fieldbyName('CBAIRRO').AsString;
      Tb_Lc1LC1_NOMLOC.Value:=DM1.Query2.fieldbyName('CCIDADE').AsString;
      Tb_Lc1LC1_UF.Value    :=DM1.Query2.fieldbyName('CUF').AsString;
      Tb_Lc1LC1_CEP.Value   :=DM1.Query2.fieldbyName('CCEP').AsString;
      Tb_Lc1LC1_CNPJ.AsFloat    :=DM1.Query2.fieldbyName('CCNPJ').AsFloat;
      Tb_Lc1LC1_IE.AsString     :=DM1.Query2.fieldbyName('CIE').AsString;
      end;
   end;
end;

procedure TFrm_Lic2.BitBtn1Click(Sender: TObject);
begin
if CB_TIPO.ItemIndex=0 then
  NOME.Text:=fdeixanum2(NOME.Text);
flcadlc1_form(CB_TIPO.ItemIndex,NOME.Text,fItenstCheckListBox(0,CLB_STATUS));
end;

procedure TFrm_Lic2.PC1Change(Sender: TObject);
begin
if (PC1.ActivePage=tsCabecalho) and (GRAVAR.Enabled) then
   begin
   FAtualizaBanco(1,'CADLC1','LC1_CODEMP',Tb_Lc1LC1_CODEMP.AsString
      ,['LC1_CHAVE'],[Tb_Lc1LC1_CHAVE.AsString]
      ,Tb_Lc1);
   end
else if PC1.ActivePage=tsRelatorios then
   fAtualizarLegenda;



if (PC1.ActivePage=tsItens) and (GRAVAR.Enabled) then
   begin
   Qr_Lic02.Last;
   DBGrid1_Itens.SelectedField:=Qr_Lic02LC2_LOTEPREGAO;
   DBGrid1_Itens.SetFocus;
   end;
end;

procedure TFrm_Lic2.IMPRIMIRClick(Sender: TObject);
var
query_cab: tquery;
query_detitens: tquery;
query_detitens_soma: tquery;
x_tag: integer;
mjpeg: TJPEGImage;

form_imprimir_docxml: Tfrm_imprimir_docxml;

form_agde: TFrm_Agde;

const
mtag_nomtag =0;
mtag_nomcampo =1;
mtag_desccampo =2;
mtag_formato =3;

function fAbrirLic02: boolean;
   var
   mPreco_unit: string;
   mCompSQL: string;
   begin

   query_cab:=TQuery.Create(nil);
   query_cab.DatabaseName:='SG_ASSOC';

   if (Tb_Lc1LC1_PCOAVI.Value=0)  then
       mPreco_unit:='LC2_PCOAV'
   else   //if (Tb_Lc1LC1_PCOAVI.Value=0)  then
       mPreco_unit:='LC2_PCOPRZ';

   if CB_GANHOU.Checked then
      mCompSQL:=' and nvl(LC2_GANHOU,'+QuotedStr('N')+')='+QuotedStr('X')
   else
      mCompSQL:=' ';

   query_cab.Close;
   query_cab.SQL.clear;
   query_cab.SQL.Add('SELECT LC1_CHAVE AS CHAVE_LIC '
                         +',LC1_DTEMIS AS DATA_LICITACAO '
                         +',LC1_CODCLI AS CODCLI '
                         +',LC1_AOSCUI AS AOSCUIDADOS '
                         +',LC1_FONCUI AS FONECUIDADOS '
                         +',LC1_CARCON AS CARTACONVITE '
                         +',LC1_DATCON AS DATACONVITE '
                         +',LC1_PROPOSTA_NUMERO AS NUMERO_PROPOSTA '
                         +',LC1_VALPRO_TEXTO AS VALIDADE_PROPOSTA '
                         +',LC1_CONDPAG AS CONDICOES_PAGTO '
                         +',LC1_OBJETO AS OBJETO '
                         +',LC1_OBS1 AS OBSL01 '
                         +',LC1_OBS2 AS OBSL02 '
                         +',LC1_OBS2 AS OBSL03 '
                         +',LC1_PRZENT1 AS PRAZO_ENTL01 '
                         +',LC1_PRZENT2 AS PRAZO_ENTL02 '
                         +',LC1_PRZENT3 AS PRAZO_ENTL03 '
                         +',LC1_DEC01 AS DEC_L01 '
                         +',LC1_DEC02 AS DEC_L02 '
                         +',LC1_DEC03 AS DEC_L03 '
                         +',LC1_DEC04 AS DEC_L04 '
                         +',LC1_DEC05 AS DEC_L05 '
                         +',LC1_DEC06 AS DEC_L06 '
                         +',LC1_DEC07 AS DEC_L07 '
                         +',LC1_DEC08 AS DEC_L08 '
                         +',LC1_DEC09 AS DEC_L09 '
                         +',LC1_DEC10 AS DEC_L10 '
                         +',LC1_OBJETO AS MODALIDADE '
                         +',LC1_CODVEN AS CODIGO_VEND '
                         +',LC1_PROPL01 AS PROPONENTE_LINHA01 '
                         +',LC1_PROPL02 AS PROPONENTE_LINHA02 '
                         +',LC1_CNPJ AS CNPJ_CLIENTE '
                         +',LC1_IE AS IE_CLIENTE '
                         +',LC1_NOMCLI AS RAZAO_CLIENTE '
                         +',CDENOM AS FANTASIA_CLIENTE '
                         +',LC1_NOMLOC AS CIDADE_CLIENTE '
                         +',LC1_UF AS UF_CLIENTE '
                         +',LC1_FONE AS FONE_CLIENTE '
                         +',LC1_ENDER AS ENDER_CLIENTE '
                         +',LC1_BAIRRO AS BAIRRO_CLIENTE '
                         +',LC1_EMAIL AS EMAIL_CLIENTE '
                         +',LC1_DECLARACAO AS DECLARACAO '
                         +',(select sum(LC2_QTD*LC2_PCOAV) from CADLC2 where LC2_CHAVE=LC1_CHAVE and LC2_LOTSEQ=LC1_LOTSEQ and LC2_CODEMP=LC1_CODEMP '+mCompSQL+'  ) as TOTAL_LIC_AVISTA '
                         +',(select sum(LC2_QTD*LC2_PCOPZ) from CADLC2 where LC2_CHAVE=LC1_CHAVE and LC2_LOTSEQ=LC1_LOTSEQ and LC2_CODEMP=LC1_CODEMP '+mCompSQL+') as TOTAL_LIC_APRAZO '
                         +',(select sum(LC2_QTD*'+mPreco_unit+') from CADLC2 where LC2_CHAVE=LC1_CHAVE and LC2_LOTSEQ=LC1_LOTSEQ and LC2_CODEMP=LC1_CODEMP '+mCompSQL+') as TOTAL_ITENS '

                         +',VNOME AS NOMVEND '
                         +',VCPF AS CPFVEND '
                         +',VRG AS RGVEND '
                         +',LC1_DADOS_ASSINATURA_CONTRATO as DADOS_ASSINATURA_CONTRATO'
                         +',LC1_AQUISICAO_EQUIP as AQUISICAO_EQUIP'
                         +',LC1_ID_NEW '
                         +' from CADLC1,CADLC2 ,CADCLI,CADVEN '
                         +' where LC2_CHAVE=LC1_CHAVE '
                         +' AND LC2_LOTSEQ=LC1_LOTSEQ '
                         +' AND LC2_CODEMP=LC1_CODEMP '
                         +' AND VCODVEN(+)=LC1_CODVEN '
                         +'and CCODCLI=LC1_CODCLI '
                         +' AND LC1_CODEMP=:CODEMP '
                         +' AND LC1_CHAVE=:CHAVE '
                         +' AND LC1_LOTSEQ=:LOTSEQ ');

   query_cab.parambyName('CODEMP').asinteger:=codemp;
   query_cab.parambyName('CHAVE').asinteger :=Tb_Lc1LC1_CHAVE.asinteger;
   query_cab.parambyName('LOTSEQ').asinteger:=Tb_Lc1LC1_LOTSEQ.asinteger;
   try
      query_cab.Open;
      result:=true;
   except on e : exception do
      begin
      Messagedlg('Erro ao ler cadlc1 '+e.message,mterror,[mbOk],0);
      query_cab.sql.savetofile(mpastatemp +'sql.txt');
      result:=false;
      end;
      end;

   query_detitens:=TQuery.Create(nil);
   query_detitens.DatabaseName:='SG_ASSOC';
   query_detitens.Close;
   query_detitens.SQL.clear;
   query_detitens.SQL.Add('Select LC2_CODEMP '
                         +'  ,LC2_CHAVE '
                         +'  ,LC2_ITEM '
                         +'  ,LC2_CODPRO '
                         +'  ,LC2_QTD '
                         +'  ,LC2_UND '
                         +'  ,LC2_NOM01'
                         +'  ,LC2_NOM02'
                         +'  ,LC2_NOM03'
                         +'  ,LC2_NOM04'
                         +'  ,LC2_NOM05'
                         +'  ,LC2_NOM06'
                         +'  ,LC2_NOM07'
                         +'  ,LC2_NOM08'
                         +'  ,LC2_NOM09'
                         +'  ,LC2_NOM10'
                         +'  ,LC2_MARCA'
                         +'  ,LC2_RMS  '
                         +'  ,LC2_PCOAV'
                         +'  ,LC2_PCOPZ'
                         +'  ,LC2_ID_NEW '
                         +'  ,LC2_ID_LC1_NEW '
                         +'  ,'+mPreco_unit+' as PCO_UNIT '
                         +'  ,round( ('+mPreco_unit+'*LC2_QTD),2) as VALOR_TOTAL '



                         +'  ,LC2_LOTSEQ'
                         +'  ,LC2_LOTEPREGAO'
                         +'  ,LC2_QTDENV    '
                         +'  ,LC2_GANHOU    '
                         +'  ,LC2_DESCCOMP  '
                         +' from CADLC2 '
                         +'where LC2_CODEMP=:CODEMP '
                         +' AND LC2_CHAVE=:CHAVE '
                         +mCompSQL
                         +' AND LC2_LOTSEQ=:LOTSEQ '

                         +' order by LC2_ITEM ' );
   query_detitens.parambyName('CODEMP').asinteger:=codemp;
   query_detitens.parambyName('CHAVE').asinteger :=Tb_Lc1LC1_CHAVE.asinteger;
   query_detitens.parambyName('LOTSEQ').asinteger:=Tb_Lc1LC1_LOTSEQ.asinteger;
   try
      query_detitens.Open;
      result:=true;
   except on e : exception do
      begin
      Messagedlg('Erro ao ler cadlc2 '+e.message,mterror,[mbOk],0);
      query_detitens.sql.savetofile(mpastatemp +'sql.txt');
      result:=false;
      end;
      end;


   query_detitens_soma:=TQuery.Create(nil);
   query_detitens_soma.DatabaseName:='SG_ASSOC';
   query_detitens_soma.Close;
   query_detitens_soma.SQL.clear;
   query_detitens_soma.SQL.Add('Select count(*) as QTDREG '
                         +'  ,sum(LC2_QTD) as QTD_UNIDADES '
                         +'  ,sum(round( (LC2_QTD*LC2_PCOAV),2)) as TOTAL_AVISTA '
                         +'  ,sum(round( (LC2_QTD*LC2_PCOPZ),2)) as TOTAL_APRAZO '
                         +'  ,sum(round( (LC2_QTD*'+mPreco_unit+'),2)) as TOTAL_GERAL '
                         +' from CADLC2 '
                         +'where LC2_CODEMP=:CODEMP '
                         +' AND LC2_CHAVE=:CHAVE '+mCompSQL
                         +' AND LC2_LOTSEQ=:LOTSEQ ');
   query_detitens_soma.parambyName('CODEMP').asinteger:=codemp;
   query_detitens_soma.parambyName('CHAVE').asinteger :=Tb_Lc1LC1_CHAVE.asinteger;
   query_detitens_soma.parambyName('LOTSEQ').asinteger:=Tb_Lc1LC1_LOTSEQ.asinteger;
   try
      query_detitens_soma.Open;
      result:=true;
   except on e : exception do
      begin
      Messagedlg('Erro ao ler cadlc2 '+e.message,mterror,[mbOk],0);
      query_detitens_soma.sql.savetofile(mpastatemp +'sql.txt');
      result:=false;
      end;
      end;

   end;


begin
imprimir.Enabled := false;
Application.createform(TFrm_Agde,form_agde);
form_agde.Label1.Caption:='Aguarde enquanto é preparado o relatorio!';
form_agde.Show;
verteclado(0);
if length(Tb_LC1LC1_MODELO_REL.AsString)>1 then
   begin
   if mem_legenda .Active=false then
      begin
      mem_legenda.Open;
      end;
   mem_legenda.EmptyTable;
   for x_tag:=0 to high(leg_licitacao) do
      begin
      Mem_legenda.append;
      mem_legendatag.Value:=leg_licitacao[x_tag,mtag_nomtag];
      mem_legendanome_campo.Value:=leg_licitacao[x_tag,mtag_nomcampo];
      mem_legendadesc_campo.Value:=leg_licitacao[x_tag,mtag_desccampo];
      mem_legendaformato.Value:=leg_licitacao[x_tag,mtag_formato];
      mem_legenda.Post;
      end;
   fAbrirLic02;
   fTestarTabulacoes(Tb_LC1LC1_MODELO_REL.AsString);

   application.createform(TFrm_Imprimir_DocXml, form_imprimir_docxml);

   form_imprimir_docxml.fPreparaRelatorio(
   Tb_LC1LC1_MODELO_REL.AsString
   ,'LICITACAO',query_cab,[query_detitens,query_detitens_soma],[1,2],false,Mem_legenda);


   freeandnil(form_imprimir_docxml);
   end
else
   begin
   mcancab:=False;
   mpag:=0;


   flcadlc2_form(Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger+1,Tb_Lc1LC1_chave.AsString);
   if Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger=1 then
      begin
      rlband_lotepregao.Visible  :=true;
      rlbandtotgru_avista.Visible:=true;
      rlbandtotgru_aprazo.Visible:=true;
      end
   else
      begin
      rlband_lotepregao.Visible  :=false;
      rlbandtotgru_avista.Visible:=false;
      rlbandtotgru_aprazo.Visible:=false;
     end;
   RLBand_detExt01.Visible :=false;
   RLBand_detExt02.visible:=false;
   RLImage1.visible     :=true;
   //RLDBText8.visible    :=true;
   RLDBText10.visible   :=true;
   txt_ender.visible    :=true;
   RLDBText12.visible   :=true;
   RLDBText13.visible   :=true;
   RLDBText14.visible   :=true;

   extenso1.Caption := '';
   extenso2.Caption := '';
   extensotv.caption:= '';
   extensotp.caption:= '';

   RLBandtotaVista.Height    := 24;
   RLBandTotPrazo.Height    := 24;
   fAtualizaEnviados(0);

   if not qtde_env.Checked then
      begin
      cab_codpro.Left    := cab_qtd.Left+cab_qtd.Width;
      cab_desc.Left      := cab_codpro.Left+cab_codpro.Width;
      cab_qtdenv.Visible := false;
      det_qtdenv.visible := false;
      end
   else
      begin
      cab_codpro.Left    := cab_qtdenv.Left+cab_qtdenv.Width;
      cab_desc.Left      := cab_codpro.Left+cab_codpro.Width;
      cab_qtdEnv.Visible := true;
      det_qtdenv.visible := true;
      end;



   if Tb_Lc1LC1_CODVEN.Value=0 then
      begin
      lbl_nomrep.visible      :=False;
      txt_codven.visible      :=False;
      txt_nomven.Visible      :=False;
      end
   else
      begin
      lbl_nomrep.visible      :=False;
      txt_codven.visible      :=False;
      txt_nomven.Visible      :=False;
      end;

   if Tb_Lc1LC1_IMPCAB.Value>1 Then
      begin
          RLImage1.visible     :=False;
   //       RLDBText8.visible    :=False;
          RLDBText10.visible   :=False;
          txt_ender.visible   :=False;
          RLDBText12.visible   :=False;
          RLDBText13.visible   :=False;
          RLDBText14.visible   :=False;
      end
   else
      begin
      if Tb_Lc1LC1_IMPCAB.Value=1 then
         mcancab:=true;
      end;
    mjpeg:=TJPEGImage.Create;
    if fLerImagemGravaStream('LOGO1',mjpeg)=true then
       begin
       RLImage1.Picture.Bitmap.Assign(mjpeg);
       RLImage1.visible := True;
       end
    else
       RLImage1.visible := False;
    freeandnil(mjpeg);




   if Tb_Lc1LC1_DIGRMS.Value=1 then
      begin
          cab_LRMS.visible       := False;
          det_LRMS.visible       := False;
   {
          Qr_Lic.QRShape6.Enabled   := False;
          Qr_Lic.QRShape13.Enabled  := False;
          Qr_Lic.QRShape22.Enabled  := False;
          Qr_lic.QRShape29.Enabled  := False;
          Qr_Lic.QRShape36.Enabled  := False;
          Qr_Lic.QRShape43.Enabled  := False;
          Qr_Lic.QRShape50.Enabled  := False;
          Qr_Lic.QRShape57.Enabled  := False;
          Qr_Lic.QRShape64.Enabled  := False;
          Qr_Lic.QRShape71.Enabled  := False;
          Qr_Lic.QRShape78.Enabled  := False;
   }
      end;
   if (Tb_Lc1LC1_PCOAVI.Value=0) and (Tb_Lc1LC1_PCOPRZ.Value<>0) then
      begin
      RLBandTotPrazo.visible      := false;
      LTP.visible                 := False;
      LTv.visible                 := true;
      L_TGP.visible               := False;
      if Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger=1 then
         begin
         rlbandtotgru_aprazo.Visible :=false;
         rlbandtotgru_avista.Visible :=true;
         end;
      L_TGV.visible          := true;
      det_LPP.DataField      := 'totav';
      cab_LPV.Caption            :='Pç.Unitario';
      cab_LPP.Caption            := 'Vlr.Total';
      det_LPV.DataField    :='LC2_PCOAV';
   //   RLDBText42.AutoSize    := false;
   //   RLDBText42.Alignment   := taRightJustify;
      end
   else if (Tb_Lc1LC1_PCOAVI.Value<>0) and (Tb_Lc1LC1_PCOPRZ.Value=0) then
      begin
      LTV.visible            := False;
      LTp.visible            := true;
      L_TGV.visible          := False;
      L_TGP.visible          := true;
      if Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger=1 then
         begin
         rlbandtotgru_aprazo.Visible :=true;
         rlbandtotgru_avista.Visible :=false;
         end;
      det_LPP.DataField   := 'totpz';
      cab_LPP.Caption            :='Vlr. Total';
      cab_LPV.Caption            :='Pç. a Prazo';
      det_LPV.DataField    :='LC2_PCOPZ';
   //   RLDBText42.AutoSize    := false;
   //   RLDBText42.Alignment   := taRightJustify;
      end;

   if (Tb_Lc1LC1_PCOAVI.Value=1) and (Tb_Lc1LC1_PCOPRZ.Value=1) then
      begin
      LTV.visible            := true;
      L_TGV.visible          := true;
      cab_LPV.Caption            :='Pç. a Avista';
      det_LPV.DataField    :='LC2_PCOAV';
   //   RLDBText42.AutoSize    := false;
   //   RLDBText42.Alignment   := taRightJustify;

      LTP.visible            := true;
      L_TGP.visible          := true;
      if Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger=1 then
         begin
         rlbandtotgru_aprazo.Visible :=true;
         rlbandtotgru_avista.Visible :=true;
         end;
      cab_LPp.Caption            :='Pç. a Prazo';
      det_LPP.DataField   :='LC2_PCOPZ';
   //   RLDBText42.AutoSize    := false;
   //   RLDBText42.Alignment   := taRightJustify;

      end;

   LDT.Caption:=DM1.Tb_EmpCIDADE.Value+','+Data(Tb_Lc1LC1_DTEMIS.Value,0);
   mtgp1  :=0; mtgv1  :=0;
   mTGrup1:=0; mTGruv1:=0;

   mboolean:=False;
   RLReport1.Borders.DrawLeft               := mboolean;
   RLReport1.Borders.DrawRight              := mboolean;
   RLReport1.Borders.DrawTop                := mboolean;
   RLReport1.Borders.DrawBottom             := mboolean;
   RLBand_cabger.Borders.DrawBottom         := mboolean;
   RLBand_cabItens.Borders.DrawBottom       := mboolean;
   cab_item.Borders.DrawRight               := mboolean;
   cab_und.Borders.DrawRight                := mboolean;
   cab_qtd.Borders.DrawRight                := mboolean;
   cab_qtdenv.Borders.DrawRight             := mboolean;
   cab_codpro.Borders.DrawRight             := mboolean;
   cab_desc.Borders.DrawRight               := mboolean;
   cab_marca.Borders.DrawRight              := mboolean;
   cab_LRMS.Borders.DrawRight               := mboolean;
   cab_LPV.Borders.DrawRight                := mboolean;
   RLGroup2.Borders.DrawRight               := mboolean;
   RLBand_detitens01.Borders.DrawRight      := mboolean;
   det_item.Borders.DrawRight               := mboolean;
   det_und.Borders.DrawRight                := mboolean;
   det_qtd.Borders.DrawRight                := mboolean;
   det_qtdenv.Borders.DrawRight             := mboolean;
   det_codpro.Borders.DrawRight             := mboolean;
   // det_desc01.Borders.DrawRight             := mboolean;

   det_marca.Borders.DrawRight              := mboolean;
   det_LRMS.Borders.DrawRight               := mboolean;
   det_LPV.Borders.DrawRight                := mboolean;
   //det_LPP.Borders.DrawRight                := mboolean;
   rlband_lotepregao.Borders.DrawBottom     := mboolean;
   RLBand_detExt01.Borders.DrawBottom       := mboolean;
   RLBand_detExt02.Borders.DrawBottom       := mboolean;
   rlbandtotgru_avista.Borders.Drawtop      := mboolean;
   RLBandTotPrazo.Borders.DrawBottom        := mboolean;
   RLBandtotaVista.Borders.DrawBottom       := mboolean;
   RLBand_cabger.Borders.DrawBottom         := mboolean;
   RLBand_cabItens.Borders.DrawBottom       := mboolean;
   rlband_lotepregao.Borders.DrawBottom     := mboolean;
   RLBand_detitens01.Borders.DrawBottom     := mboolean;

   RLBand_detExt01.Borders.DrawBottom       := mboolean;
   RLBand_detExt02.Borders.DrawBottom       := mboolean;
   rlbandtotgru_avista.Borders.DrawBottom   := mboolean;
   RLBandTotPrazo.Borders.DrawBottom        := mboolean;
   RLBandtotaVista.Borders.DrawBottom       := mboolean;
   RLBand_valpro.Borders.DrawBottom         := mboolean;
   RLBand7.Borders.DrawBottom               := mboolean;
   RLBand8.Borders.DrawBottom               := mboolean;
   RLBand9.Borders.DrawBottom               := mboolean;
   RLBand10.Borders.DrawBottom              := mboolean;
   RLBand11.Borders.DrawBottom              := mboolean;
   RLBand12.Borders.DrawBottom              := mboolean;
   RLBand13.Borders.DrawBottom              := mboolean;
   RLBand14.Borders.DrawBottom              := mboolean;


   // SE não tiver selecionado sem bordas
   if (BordaGrade.ItemIndex <> 3) then
      mboolean:=true
   else
      mboolean:=false;

   RLReport1.Borders.DrawLeft    := mboolean;
   RLReport1.Borders.DrawRight   := mboolean;
   RLReport1.Borders.DrawTop     := mboolean;
   RLReport1.Borders.DrawBottom  := mboolean;

   // SE GRADE NO ITENS OU COMPLETA
   if (BordaGrade.ItemIndex = 1) or (BordaGrade.ItemIndex = 4) then
      mboolean:=true
   else
      mboolean:=false;

   RLBand_cabger.Borders.DrawBottom    := mboolean;
   RLBand_cabItens.Borders.DrawBottom  := mboolean;
   cab_item.Borders.DrawRight          := mboolean;
   cab_und.Borders.DrawRight           := mboolean;
   cab_qtd.Borders.DrawRight           := mboolean;
   cab_qtdenv.Borders.DrawRight        := mboolean;
   cab_codpro.Borders.DrawRight        := mboolean;
   cab_desc.Borders.DrawRight          := mboolean;
   cab_marca.Borders.DrawRight         := mboolean;
   cab_LRMS.Borders.DrawRight          := mboolean;
   cab_LPV.Borders.DrawRight           := mboolean;

   RLGroup2.Borders.DrawRight          := mboolean;
   RLBand_detitens01.Borders.DrawRight := mboolean;
   det_item.Borders.DrawRight          := mboolean;
   det_und.Borders.DrawRight           := mboolean;
   det_qtd.Borders.DrawRight           := mboolean;
   det_qtdenv.Borders.DrawRight        := mboolean;
   det_codpro.Borders.DrawRight        := mboolean;
   // det_desc01.Borders.DrawRight        := mboolean;

   det_marca.Borders.DrawRight         := mboolean;
   det_LRMS.Borders.DrawRight          := mboolean;
   det_LPV.Borders.DrawRight           := mboolean;
   //det_LPP.Borders.DrawRight           := mboolean;

   rlband_lotepregao.Borders.DrawBottom :=mboolean;
   RLBand_detExt01.Borders.DrawBottom   :=mboolean;
   RLBand_detExt02.Borders.DrawBottom   := mboolean;

   rlbandtotgru_avista.Borders.Drawtop :=mboolean;

   RLBandTotPrazo.Borders.DrawBottom  :=mboolean;
   RLBandtotaVista.Borders.DrawBottom  :=mboolean;

   // Borda Grade ou Borda Completa
   if (BordaGrade.ItemIndex = 2) or (BordaGrade.ItemIndex = 4) then
      mboolean:=true
   else
      mboolean:=false;

   RLBand_cabger.Borders.DrawBottom            := mboolean;
   RLBand_cabItens.Borders.DrawBottom          := mboolean;
   rlband_lotepregao.Borders.DrawBottom        := mboolean;
   RLBand_detitens01.Borders.DrawBottom        := mboolean;

   RLBand_detExt01.Borders.DrawBottom          := mboolean;
   RLBand_detExt02.Borders.DrawBottom          := mboolean;
   rlbandtotgru_avista.Borders.DrawBottom      := mboolean;
   //rlbandtotgru_aprazo.Borders.DrawBottom          := mboolean;

   RLBandTotPrazo.Borders.DrawBottom           := mboolean;
   RLBandtotaVista.Borders.DrawBottom          := mboolean;
   RLBand_valpro.Borders.DrawBottom            := mboolean;
   RLBand7.Borders.DrawBottom                  := mboolean;
   RLBand8.Borders.DrawBottom                  := mboolean;
   RLBand9.Borders.DrawBottom                  := mboolean;
   RLBand10.Borders.DrawBottom                 := mboolean;
   RLBand11.Borders.DrawBottom                 := mboolean;
   RLBand12.Borders.DrawBottom                 := mboolean;
   RLBand13.Borders.DrawBottom                 := mboolean;
   RLBand14.Borders.DrawBottom                 := mboolean;
   //RLBand15.Borders.DrawBottom                 := mboolean;


   mboolean:=true;
   RLImage1.Visible  :=mboolean;
   RLDBText10.Visible:=mboolean;
   txt_ender.Visible :=mboolean;
   RLDBText12.Visible:=mboolean;
   RLDBText13.Visible:=mboolean;
   RLDBText14.Visible:=mboolean;
   if not rlband_cabprim.Visible then
     begin
     rlband_cabprim.Visible:=true;
     RLBand_cabger.BandType:=btTitle;
     RLBand_cabger.BandType:=btHeader;
     end;

   if Tb_Lc1LC1_IMPCAB.Value=3 then
     begin
     mboolean:=false;
     rlband_cabprim.Visible:=true;
     RLImage1.Visible  :=mboolean;
     RLDBText10.Visible:=mboolean;
     txt_ender.Visible :=mboolean;
     RLDBText12.Visible:=mboolean;
     RLDBText13.Visible:=mboolean;
     RLDBText14.Visible:=mboolean;
     rlband_cabprim.Borders.DrawLeft  :=false;
     rlband_cabprim.Borders.DrawRight :=false;
     rlband_cabprim.Borders.DrawTop   :=false;
     rlband_cabprim.Borders.DrawBottom:=false;
     end
   else if Tb_Lc1LC1_IMPCAB.Value>1 then
     rlband_cabprim.Visible:=false
   else
     rlband_cabprim.Visible:=true;


   RLReport1.PreviewModal;
   end;
verteclado(0);
imprimir.Enabled := true;
if form_agde<>nil then
   freeandnil(form_agde);

end;

procedure TFrm_Lic2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
If Tb_Lc1.State in [dsInsert, dsEdit] then
   begin
   Case Fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_Lic2.bbItensClick(Sender: TObject);
begin
PC1.ActivePage:=tsitens;
end;

procedure TFrm_Lic2.ITEMKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Lic2.PEDIDOClick(Sender: TObject);
var
mqtd: Integer;
mQtdPend: Real;
begin

// falta arrumar aqui
if ValInt(DBE_CODCLI.Text) = 0 then
   begin
   FMensagem('Favor informar Código do Cliente válido!',0,['0'],0);
   Exit;
   end;
fAtualizaEnviados(0);

if Tb_Lc1LC1_CHAVE.IsNull then
   begin
   Fmensagem('Não ha Licitação selecionada!',0,['0'],0);
   exit;
   end;



fLerlic02(0);

flcadlc2_form(Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger+1,Tb_Lc1LC1_chave.AsString);
Tb_Lc2.First;
mqtd    :=0;
mQtdPend:=0;

While not Tb_Lc2.eof do
   begin
   if (Tb_Lc2LC2_CODPRO.AsFloat=0) and (Tb_Lc2LC2_GANHOU.AsString='X') then
      mqtd:=mqtd+1;
   if ((Tb_Lc2LC2_QTD.AsFloat-Tb_Lc2LC2_QTDENV.AsFloat)>0)  and (Tb_Lc2LC2_GANHOU.AsString='X') then
      mQtdPend:=mQtdPend+1;
   Tb_Lc2.Next;
   end;
if mqtd>0 then
   begin
   if fmensagem('Existe(m) '+InttoStr(mqtd)+' Produto(s) sem codigo '
               +' nao sera possivel fatura-lo(s), quer continuar assim mesmo?',0,['1','2'],0)<>mrYes then
      exit;
   end;
if mQtdPend=0 then
   begin
   MessageDlg('Não Existem Produtos a serem faturados!',mtWarning,[mbOk],0);
   exit;
   end;
if (Tb_Lc1LC1_PCOAVI.Value=0) and (Tb_Lc1LC1_PCOPRZ.Value=0) then
   begin
   while true do
      begin
      mcinst:=InputBox('Tipo de Preço','Qual o Tipo de Preço a Ser Faturado 0-A Vista 1-Prazo:','0');
      if trim(mcinst)<>'' then
         begin
         mTpco:=valint(mcinst);
         break;
         end;
      end;

   end
else if Tb_Lc1LC1_PCOAVI.Value=0 then
   mTpco:=0
else
   mTpco:=1;


Application.CreateForm(TFrm_Lic2_Pedido, frm_lic2_pedido);
Frm_lic2_pedido.fLerPedido(Tb_Lc1LC1_CHAVE.AsInteger,true);
Frm_lic2_pedido.lbl_licitacao.Caption := DBE_CHAVE.Text;
Frm_lic2_pedido.lbl_cliente.Caption   := DBE_NOMCLI.Text;

Frm_lic2_pedido.showModal;
if Frm_Lic2_Pedido.mFaturar=false then
   begin
   freeandnil(frm_lic2_pedido);
   exit;
   end;
mchave_fat:=0;
fFaturarPedido_ultimo(0);


flcadpar01(0,codemp,'1');

fAtualizaEnviados(1);
if mchave_fat=0 then
   MessageDlg('Chave Não Faturada!',mtWarning,[mbOk],0)
else
   MessageDlg('Chave Faturada '+FloatToStr(mchave_fat) ,mtInformation,[mbOk],0);
freeandnil(frm_lic2_pedido);

end;

procedure TFrm_Lic2.DBE_CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_Lc1LC1_CODCLI.Value:=fSonumero(fChamaCli(0,'Frm_Lic2',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Lic2.DBE_VENDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_Lc1LC1_CODVEN.Value:=ValFloat(fchamaVen(0,'Frm_Lic2',Key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Lic2.DBE_VENDExit(Sender: TObject);
begin
if (Tb_Lc1LC1_CODVEN.IsNull) or (Tb_Lc1LC1_CODVEN.Value<=0) then
   Tb_Lc1LC1_CODVEN.Value:=0;
if Tb_Lc1LC1_CODVEN.Value>0 then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_Lc1LC1_CODVEN.AsString) then
      begin
      Fmensagem('Vendedor não cadastrado!',0,['0'],0);
      DBE_VEND.SetFocus;
      end;
   end
else
   Tb_Lc1nomven.Value:='';


end;

procedure TFrm_Lic2.RLBand_detitens01AfterPrint(Sender: TObject);
begin
mTgp1:=mTgp1+Tb_Lc2LC2_PCOPZ.Value*Tb_Lc2LC2_QTD.Value;
mTgv1:=mTgv1+Tb_Lc2LC2_PCOAV.Value*Tb_Lc2LC2_QTD.Value;
mTGrup1:=mTGrup1+Tb_Lc2LC2_PCOPZ.Value*Tb_Lc2LC2_QTD.Value;
mTGruv1:=mTGruv1+Tb_Lc2LC2_PCOAV.Value*Tb_Lc2LC2_QTD.Value;


end;

procedure TFrm_Lic2.RLBandtotaVistaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
L_TGV.Caption := FormatFloat(mcasas, mTgv1);
If (Tb_Lc1LC1_EXTTAV.Value<>1) then
   BEGIN
   extensotv.caption := Extenso(mTgv1);
   RLBandtotaVista.Height    := 44;
   END
ELSE
   begin
   RLBandtotaVista.Height    := 24;
   end;
end;

procedure TFrm_Lic2.RLBandTotPrazoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
L_TGP.Caption := FormatFloat(mcasas, mTgp1);
If (Tb_Lc1LC1_EXTTAP.Value<>1) then
   BEGIN
   extensotp.caption := Extenso(mTgp1);
   RLBandTotPrazo.Height    := 44;
   END
ELSE
   begin
   RLBandTotPrazo.Height   := 24;
   end;

end;

procedure TFrm_Lic2.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

//RLBand7.visible := true;
IF (trim(Tb_Lc1LC1_DEC01.Value)  = '') and
   (trim(Tb_Lc1LC1_DEC02.Value)  = '') and
   (trim(Tb_Lc1LC1_DEC03.Value)  = '') and
   (trim(Tb_Lc1LC1_DEC04.Value)  = '') and
   (trim(Tb_Lc1LC1_DEC05.Value)  = '') and
   (trim(Tb_Lc1LC1_DEC06.Value)  = '') then
    RLBand7.visible := false;
end;

procedure TFrm_Lic2.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand8.visible := true;
if (trim(Tb_Lc1LC1_DEC01.Value)  = '') then
  RLBand8.visible := false;
end;

procedure TFrm_Lic2.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand9.visible := true;
if (trim(Tb_Lc1LC1_DEC02.Value)  = '') then
  RLBand9.visible := false;

end;

procedure TFrm_Lic2.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand10.visible := true;
if (trim(Tb_Lc1LC1_DEC03.Value)  = '') then
  RLBand10.visible := false;

end;

procedure TFrm_Lic2.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand11.visible := true;
if (trim(Tb_Lc1LC1_DEC04.Value)  = '') then
  RLBand11.visible := false;

end;

procedure TFrm_Lic2.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand12.visible := true;
if (trim(Tb_Lc1LC1_DEC05.Value)  = '') then
  RLBand12.visible := false;

end;

procedure TFrm_Lic2.RLBand13BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//RLBand13.visible := true;
if (trim(Tb_Lc1LC1_DEC06.Value)  = '') then
  RLBand13.visible := false;
end;

procedure TFrm_Lic2.RLBand_detitens01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
If (Tb_Lc1LC1_EXTUAV.AsInteger<>0) and (Tb_Lc1LC1_EXTPAV.AsInteger<>0) and
   (Tb_Lc1LC1_EXTUAP.AsInteger<>0) and (Tb_Lc1LC1_EXTPAP.AsInteger<>0) then
   begin
//   ChildBand2.Height:=0;
     RLBand_detExt01.Visible:=False;
   end
else
   begin
   extenso1.Lines.Clear;
   If Tb_Lc1LC1_EXTUAV.AsInteger<>1 then
      extenso1.Lines.Add('Pç. Unitário: '+Extenso(Tb_Lc2LC2_PCOAV.Value));
   If Tb_Lc1LC1_EXTPAV.AsInteger<>1 then
      extenso2.caption := 'Valor Total: '+Extenso(Tb_Lc2LC2_PCOAV.Value*Tb_Lc2LC2_QTD.Value);
   If Tb_Lc1LC1_EXTUAP.AsInteger<>1 then
      extenso1.Lines.Add('Pç. Unitário: '+Extenso(Tb_Lc2LC2_PCOPZ.Value));
   If Tb_Lc1LC1_EXTPAP.AsInteger<>1 then
      extenso2.caption := 'Valor Total: '+Extenso(Tb_Lc2LC2_PCOPZ.Value*Tb_Lc2LC2_QTD.Value);
   end;

    if trim(extenso1.Lines.Text) <> '' then
       RLBand_detExt01.Visible := true
       else RLBand_detExt01.visible := false;

    if extenso2.Caption <> '' then
       RLBand_detExt02.Visible := true
       else RLBand_detExt02.visible := false;



end;

procedure TFrm_Lic2.rlbandtotgru_avistaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
LGru_TGV.Caption := FormatFloat('#,###,##0.00', mTGruv1);
If (Tb_Lc1LC1_EXTTAV.Value<>1) then
   BEGIN
   extensotGruv.caption := Extenso(mTGruv1);
   rlbandtotgru_avista.Height    := 44;
   END
ELSE
   begin
   rlbandtotgru_avista.Height    := 24;
   end;
mTGruv1:=0;
end;

procedure TFrm_Lic2.rlbandtotgru_aprazoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
LGru_TGP.Caption := FormatFloat(mcasas, mTGrup1);
If (Tb_Lc1LC1_EXTTAP.Value<>1) then
   BEGIN
   extensotGruP.caption := Extenso(mTGrup1);
   rlbandtotgru_aprazo.Height    := 44;
   END
ELSE
   begin
   rlbandtotgru_aprazo.Height    := 24;
   end;
mTGrup1:=0;
end;

procedure TFrm_Lic2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(mVenda_GP);
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Lic2.FormShow(Sender: TObject);
begin
fCarregarCamposGrade;
CB_RELATORIO.Text:='';
CB_RELATORIO.Items.Clear;
if  fLerGenerico_query('CADDW_CFG','DW_NOMREL','DW_CODEMP=0'+IntToStr(codemp)+'  and DW_CATEGORIA='+Quotedstr(categoria_docxml)+' group by DW_NOMREL',query_consulta) then
   begin
   while not query_consulta.Eof do
      begin
      CB_RELATORIO.Items.Add(query_consulta.fieldbyname('DW_NOMREL').AsString);
      query_consulta.Next;
      end;
   CB_RELATORIO.ItemIndex:=0;    
   end;


ts_relatorio.TabVisible := False;
ts_orcamento.TabVisible := False;
CB_TIPO.ItemIndex:=0;
BitBtn1.SetFocus;
BitBtn1.Click;

if flcadactab(0,0,IntToStr(codcar),'CADLIC') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   if DM4.Tb_AcTabAT_ADIC.Value=1 then
      bbAdd_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbAdd_true:=true;
   end;

INCLUIR.Enabled :=bbinc_true;
ALTERAR.Enabled :=bbalt_true;
EXCLUIR.Enabled :=bbexc_true;
PEDIDO.Enabled  :=bbAdd_true;
btn_pendencia.Enabled:=bbAdd_true;
bbDuplicar.Enabled   :=bbAdd_true;
bbCustos.Enabled     :=bbAdd_true;
bbHtml.Enabled       :=bbrel_true;
bbWord.Enabled       :=bbrel_true;
{
if CB_USAAVAP.Checked=false then
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=false;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=false;
   end
else
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=false;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=false;
   end;
}

end;

procedure TFrm_Lic2.rlband_cabprimAfterPrint(Sender: TObject);
begin
if (Tb_Lc1LC1_IMPCAB.Value>0) and
   (Tb_Lc1LC1_IMPCAB.Value<3) then
   rlband_cabprim.Visible:=false;

end;


procedure TFrm_Lic2.btn_pendenciaClick(Sender: TObject);
var
   xVirgula : String;
begin
btn_pendencia.Enabled:=false;

xVirgula     := '';
xChave       := ValInt(DBE_CHAVE.Text);
xChavePedido := '';

if testeform=nil then
   Application.CreateForm(Tfrm_pendencia, form_pendencia);
form_pendencia.lbl_total.Caption     := '';
form_pendencia.lbl_licitacao.Caption := DBE_CHAVE.Text;
form_pendencia.lbl_cliente.Caption   := DBE_NOMCLI.Text;



form_pendencia.Qry_Pendencia.Close;
form_pendencia.Qry_Pendencia.SQL.Clear;
form_pendencia.Qry_Pendencia.SQL.Add('SELECT CODPRO AS PRODUTO, PDNOME AS NOME,PDUND AS UNIDADE '
                                    +', SUM(LICITADA) AS LICITADA, SUM(ENVIADA) AS ENVIADA '
                                    +', SUM(LICITADA-ENVIADA) AS PENDENTE FROM (');
form_pendencia.Qry_Pendencia.SQL.Add(' select LC2_CODPRO AS CODPRO,'
                                    +' PDNOME,PDUND, SUM(LC2_QTD) AS LICITADA, 0 AS ENVIADA '
                                    +' from CADLC2,CADPRO WHERE LC2_CHAVE='+DBE_CHAVE.Text
                                    +' AND PDCODPRO=LC2_CODPRO '
                                    +fla_EmpBaixaAlta(0,'CADPRO',' and ',codemp,'PDCODEMP',' ')
                                    +' GROUP BY LC2_CODPRO,PDNOME,PDUND ');


form_pendencia.Qry_Pendencia.SQL.Add(' UNION ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');


form_pendencia.Qry_Pendencia.SQL.Add('select P2CODPRO AS CODPRO, PDNOME,PDUND, 0 AS LICITADAS, SUM(P2QTD) AS ENVIADA '
                                    +' from cadp02'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                    +' P1STATUS<'+mstatus_excluido+'  '
                                    +' and P1NPEDORI=0'+DBE_CHAVE.Text
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' ')
                                    +' GROUP BY P2CODPRO,PDNOME,PDUND ');
form_pendencia.Qry_Pendencia.SQL.Add(' ) GROUP BY CODPRO,PDNOME,PDUND '
                                    +' order by PDNOME,PDUND,CODPRO' );
try
   form_pendencia.Qry_Pendencia.Open;
except
   form_pendencia.Qry_Pendencia.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
// INICIO


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
form_pendencia.Qry_Chave.Close;
form_pendencia.Qry_Chave.SQL.Clear;
form_pendencia.Qry_Chave.SQL.Add('select P1CHAVE AS LP_CHAVEPED'
                                    +' from cadp01 where  P1STATUS<'+mstatus_excluido+'  '
                                    +' and P1NPEDORI=0'+DBE_CHAVE.Text
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' '));
form_pendencia.Qry_Chave.SQL.Add(' order by LP_CHAVEPED ' );
try
   form_pendencia.Qry_Chave.Open;
except
   form_pendencia.Qry_Chave.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;


// TERMINO


form_pendencia.lbl_total.Caption := FormatFloat('000000',form_pendencia.Qry_Pendencia.RecordCount);

form_pendencia.ShowModal;
FreeAndNil(form_pendencia);
btn_pendencia.Enabled:=true;


end;

procedure TFrm_Lic2.bbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_LIC1','');
fGravaPadroes(0,'CBTPPCO'          ,'itemindex' ,'_LIC1',IntToStr(CBTPPCO.ItemIndex));
fGravaPadroes(0,'CBVALIDARDESCONTO','CHECKBOX'  ,'_LIC1',iif(cbvalidardesconto.Checked,'1','0'));
fGravaPadroes(0,'CBUSERINC'        ,'CHECKBOX'  ,'_LIC1',iif(CBUSERINC.Checked,'1','0'));
end;

procedure TFrm_Lic2.bbImpLicClick(Sender: TObject);
begin
if Tb_LC1LC1_CHAVE.AsInteger>0 then
   begin
   testeform := TFrm_lic2(FindGlobalComponent('form_impexcel'));
   if testeform=nil then
     begin
     Application.CreateForm(Tfrm_ImpExcel, form_ImpExcel);
     form_ImpExcel.mchavelic_origem:=Tb_LC1LC1_CHAVE.AsInteger;
     form_ImpExcel.ShowModal;
     FreeAndNil(form_ImpExcel);
     end;
   end;
end;

procedure TFrm_Lic2.bbHtmlClick(Sender: TObject);
begin
bbHtml.Enabled := false;
flcadlc1(0,Tb_Lc1LC1_chave.AsString,'');

flcadlc2(Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger+1,Tb_Lc1LC1_chave.AsString);
testeform := TFrm_lic2(FindGlobalComponent('form_hlic'));
if testeform=nil then
   Application.CreateForm(Tfrm_Hlic, form_Hlic);
form_Hlic.ShowModal;
FreeAndNil(form_Hlic);
bbHtml.Enabled := true;
end;

procedure TFrm_Lic2.Qr_Lic02AfterInsert(DataSet: TDataSet);
begin
Qr_Lic02LC2_CODEMP.Value    :=codemp;
Qr_Lic02LC2_CHAVE.Value     :=Tb_Lc1LC1_CHAVE.AsFloat;
Qr_Lic02LC2_LOTSEQ.Value    :=ls_numlic;
Qr_Lic02LC2_ID_LC1_NEW.Value    :=Tb_LC1LC1_ID_NEW.AsFloat;

mAnt_qtd                    :=Qr_Lic02LC2_QTD.AsFloat;
mAnt_VlrTotal               :=Qr_Lic02total_bruto.AsFloat;
moper_item                  :=0;
//mPosRegistro                :=Qr_Lic02.GetBookmark;
end;

procedure TFrm_Lic2.DBGrid1_ItensKeyPress(Sender: TObject; var Key: Char);
begin
if not GRAVAR.Enabled then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key in ['0'..'9']) then
      key:=#0;
   end;

if Qr_Lic02.State in [dsEdit, DsInsert] then
   begin                                                       
   if DBGrid1_Itens.SelectedField=Qr_Lic02LC2_CODPRO then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
          begin
          Qr_Lic02LC2_CODPRO.Value:=valfloat(fChamaPro(0,'Frm_Lic2',key));
          DBGrid1_ItensColExit(Self);
          key:=#0;
          end;
      end;
   end;
//else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Lic2.DBGrid1_ItensColExit(Sender: TObject);
var
  pcomin: real;
begin
if (Qr_Lic02.State in [dsEdit, dsInsert]) then
  begin
  if (DBGrid1_Itens.SelectedField=Qr_Lic02LC2_CODPRO) then
    begin
    if (Qr_Lic02.State in [dsInsert, DsEdit]) and
      (Qr_Lic02LC2_CODPRO.AsFloat<>mAnt_Codpro) then
      begin
      if Qr_Lic02LC2_CODPRO.AsFloat<=0 then
        Qr_Lic02LC2_CODPRO.Value:=0
      else
        begin
        if flqr1('PDCODPRO,PDNOME,PDUND,PDPRECO1,PDUCPR,PDPRECOC,PDMARCA,PDPCOMC','PD',
             'CADPRO','N','PDCODPRO',Qr_Lic02LC2_CODPRO.AsString) then
          begin
          Qr_Lic02LC2_UND.Value  :=DM1.Query1.FieldbyName('PDUND').AsString;
          Qr_Lic02LC2_NOM01.Value:=DM1.Query1.FieldbyName('PDNOME').AsString;
          if (mant_codpro<>0) then
             begin
             if CBTPPCO.ItemIndex=0 then
                Qr_Lic02LC2_PCOAV.Value:=DM1.Query1.FieldbyName('PDPRECO1').AsFloat
             else if CBTPPCO.ItemIndex=1 then
                Qr_Lic02LC2_PCOAV.Value:=DM1.Query1.FieldbyName('PDPRECO1').AsFloat
             else if CBTPPCO.ItemIndex=2 then
                Qr_Lic02LC2_PCOAV.Value:=DM1.Query1.FieldbyName('PDUCPR').AsFloat
             else if CBTPPCO.ItemIndex=3 then
                Qr_Lic02LC2_PCOAV.Value:=DM1.Query1.FieldbyName('PDPRECOC').AsFloat
             else if CBTPPCO.ItemIndex=4 then
                Qr_Lic02LC2_PCOAV.Value:=DM1.Query1.FieldbyName('PDPCOMC').AsFloat;
             Qr_Lic02LC2_MARCA.Value:=DM1.Query1.FieldbyName('PDMARCA').AsString;

             end;

          end
        else
          begin
          verteclado(0);
          FMensagem('Produto Não Cadastrado.',0,['0'],0);
            Qr_Lic02LC2_CODPRO.Value:=0;
          abort;
          end;
        end;
      end;
    end
  else if (DBGrid1_Itens.SelectedField=Qr_Lic02LC2_PCOAV) then
    begin
    if (DM4.Tb_Par01PDESCMP0.Value > 0) and (cbvalidardesconto.Checked) then
      begin
        if flqr2('PDCODPRO,PDNOME,PDUND,PDPRECO1,PDUCPR,PDPRECOC,PDMARCA','PD',
               'CADPRO','N','PDCODPRO',Qr_Lic02LC2_CODPRO.AsString) then
        begin
        if DM1.Query2.FieldByName('PDPRECO1').AsFloat>0 then
          pcomin := DM1.Query2.FieldByName('PDPRECO1').AsFloat*(1-DM4.Tb_Par01PDESCMP0.AsFloat/100);
          end;
      if Qr_Lic02LC2_PCOAV.AsFloat<pcomin then
        begin
        flcadpar02(0,0,CodUsr,IntToStr(59));
        if DM4.Tb_Par02PA2PDSN.Value = 'S' then
          begin
           mValidarSenha.pTipo:=0;
           mValidarSenha.pCodusr:=codusr;
           mValidarSenha.pCodSen:=59;
           mValidarSenha.pCodEmp:=0;
           mValidarSenha.pCodCli:=0;
           mValidarSenha.pLotSeq:=0;
           mValidarSenha.pChave :=0;
           mValidarSenha.pOrdem :=0;
           mValidarSenha.pTexto :='Senha para preço menor que minimo!';
           mValidarSenha.pChave_St:='';
           mValidarSenha.pDesc_requisitado :=0;

           if fValidaSenha(mValidarSenha)<>0 then
            begin
            fMensagem('Alteração não Aceita!',0,['0'],0);
            Qr_Lic02LC2_PCOAV.AsFloat := DM1.Query2.FieldByName('PDPRECO1').AsFloat;
            end;
         end;
        end;
      end;
    end;
  end;
end;

procedure TFrm_Lic2.Qr_Lic02CalcFields(DataSet: TDataSet);
begin
Qr_Lic02total_bruto.AsFloat:=Arredonda(Qr_Lic02LC2_QTD.AsFloat*Qr_Lic02LC2_PCOAV.AsFloat,DM1.Tb_PargerPCASAS.AsInteger);
Qr_Lic02total_bruto_prazo.AsFloat:=Arredonda(Qr_Lic02LC2_QTD.AsFloat*Qr_Lic02LC2_PCOPZ.AsFloat,DM1.Tb_PargerPCASAS.AsInteger);

Qr_Lic02preco_calculado.AsFloat := 0;
Qr_Lic02valor_total_pco_calculado.value :=0;
Qr_Lic02margem_pco_calculado.value      :=0;


if Qr_Lic02LC2_PCOCPR.AsFloat>0 then
   begin
   Qr_Lic02preco_calculado.AsFloat := Qr_Lic02LC2_PCOCPR.AsFloat;
   Qr_Lic02preco_calculado.AsFloat :=  Qr_Lic02preco_calculado.AsFloat
   + Arredonda( (Qr_Lic02preco_calculado.AsFloat * Qr_Lic02LC2_ICMS_PERC.AsFloat /100), 2);

   Qr_Lic02preco_calculado.AsFloat :=  Qr_Lic02preco_calculado.AsFloat
   + Arredonda( (Qr_Lic02preco_calculado.AsFloat * Qr_Lic02LC2_DESPESASFIXAS_PERC.AsFloat /100), 2);

   Qr_Lic02preco_calculado.AsFloat :=  Qr_Lic02preco_calculado.AsFloat
   + Arredonda( (Qr_Lic02preco_calculado.AsFloat * Qr_Lic02LC2_FRETE_PERC.AsFloat /100), 2);

   Qr_Lic02preco_calculado.AsFloat :=  Qr_Lic02preco_calculado.AsFloat
   + Arredonda( (Qr_Lic02preco_calculado.AsFloat * Qr_Lic02LC2_MARGEM_LUCRO_PERC.AsFloat /100), 2);

   Qr_Lic02valor_total_pco_calculado.AsFloat := Arredonda( (Qr_Lic02preco_calculado.AsFloat * Qr_Lic02LC2_QTD.AsFloat) ,3);

   Qr_Lic02margem_pco_calculado.value :=  (((Qr_Lic02LC2_PCOAV.AsFloat - Qr_Lic02preco_calculado.AsFloat)*100) /
    Qr_Lic02preco_calculado.AsFloat);





   end;



end;

procedure TFrm_Lic2.Qr_Lic02BeforeEdit(DataSet: TDataSet);
begin
  mAnt_qtd       :=Qr_Lic02LC2_QTD.AsFloat;
  mAnt_VlrTotal  :=Qr_Lic02total_bruto.AsFloat;
  mAnt_lotePregao:=Qr_Lic02LC2_LOTEPREGAO.AsString;
  mAnt_Item      :=Qr_Lic02LC2_ITEM.AsInteger;
  moper_item:=1;
//  mPosRegistro:=Qr_Lic02.GetBookmark;

end;

procedure TFrm_Lic2.Qr_Lic02BeforeCancel(DataSet: TDataSet);
begin
  mAnt_qtd       :=0;
  mAnt_VlrTotal  :=0;
  mAnt_lotePregao:='';
  mAnt_Item      :=0;

//  mPosRegistro        :=Nil;
  if Qr_Lic02.State in [dsInsert] then
     mProx_Item:=mProx_Item-1;
end;

procedure TFrm_Lic2.Qr_Lic02AfterPost(DataSet: TDataSet);
begin
if Qr_Lic02.State in [dsinsert] then
  mTot_Itens            :=mTot_itens+1-mAnt_Itens;
  
  mTot_qtd              :=mTot_qtd+Qr_Lic02LC2_QTD.AsFloat-mAnt_qtd;
  mTot_VlrTotal         :=mTot_VlrTotal+Qr_Lic02total_bruto.AsFloat-mAnt_VlrTotal;
  st_qtd_itens.Caption    :=Formatfloat(mcasqtd, mTot_Itens);
  st_tot_qtd.Caption    :=Formatfloat(mcasqtd, mTot_qtd);
  st_tot_vltotal.Caption:=Formatfloat(mcasas, mTot_VlrTotal);
  mLotePregao           :=Qr_Lic02LC2_LOTEPREGAO.AsString;
  mAnt_VlrTotal         :=0;
  mAnt_qtd              :=0;
  mAnt_lotePregao       :='';
  mAnt_Item             :=0;
  mAnt_Itens            :=0;
//mPosRegistro:=nil;
moper_item:=-1;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;


end;

procedure TFrm_Lic2.Qr_Lic02BeforeDelete(DataSet: TDataSet);
begin

  mTot_Itens     :=mTot_Itens-1;
  mTot_qtd       :=mTot_qtd-Qr_Lic02LC2_QTD.AsFloat;
  mTot_VlrTotal  :=mTot_VlrTotal-Qr_Lic02total_bruto.AsFloat;
  mAnt_VlrTotal  :=0;
  mAnt_qtd       :=0;
  mAnt_lotePregao:='';
  mAnt_Item      :=0;
  mAnt_Itens     :=0;

  st_qtd_itens.Caption    :=Formatfloat(mcasqtd, mTot_Itens);
  st_tot_qtd.Caption    :=Formatfloat(mcasqtd, mTot_qtd);
  st_tot_vltotal.Caption:=Formatfloat(mcasas, mTot_VlrTotal);
  moper_item:=-1;
end;

Function TFrm_Lic2.flcadlc2_form(ptipo: Integer; pvalor: String): Boolean;
begin
Tb_Lc2.Close;
Tb_Lc2.Sql.clear;
Tb_Lc2.Sql.add('Select LC2_CODEMP, '
                  +'       LC2_CHAVE, '
                  +'       LC2_LOTEPREGAO, '
                  +'       LC2_ITEM, '
                  +'       LC2_CODPRO, '
                  +'       LC2_QTD, '
                  +'       LC2_QTDENV, '
                  +'       LC2_UND, '
                  +'       LC2_NOM01, '
                  +'       LC2_NOM02, '
                  +'       LC2_NOM03, '
                  +'       LC2_NOM04, '
                  +'  LC2_NOM05, '
                  +'  LC2_NOM06, '
                  +'  LC2_NOM07, '
                  +'  LC2_NOM08, '
                  +'  LC2_NOM09, '
                  +'  LC2_NOM10, '
                  +'  LC2_MARCA, '
                  +'  LC2_RMS, '
                  +'  LC2_PCOAV, '
                  +'  LC2_PCOPZ, '
                  +'  LC2_LOTSEQ, '
                  +'  LC2_GANHOU  '
                  +'  ,LC2_DESCCOMP '
                  +'  ,LC2_ID_NEW '
                  +'  ,LC2_ID_LC1_NEW '
                   );

Tb_Lc2.SQL.add('  from CADLC2 ');
if DM1.Qr_Tid.Locate('TINOME','CADLIC',[]) then
   begin
   if Trim(pvalor)<>'' then
      Tb_Lc2.SQl.Add(' where LC2_CHAVE='+pvalor);
   Tb_Lc2.SQL.Add(' order by LC2_CHAVE,LC2_ITEM');
   end
else
   begin
   Tb_Lc2.SQl.add(' where LC2_CODEMP=0'+IntTostr(codemp));
   if Trim(pvalor)<>'' then
      Tb_Lc2.SQl.Add(' and LC2_CHAVE='+pvalor);
   if ptipo=1 then
      Tb_Lc2.SQL.Add(' order by LC2_CODEMP,LC2_CHAVE,LC2_LOTEPREGAO,LC2_ITEM')
   else
      Tb_Lc2.SQL.Add(' order by LC2_CODEMP,LC2_CHAVE,LC2_LOTEPREGAO,LC2_ITEM');

   end;
//Tb_Lc2.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
try
  Tb_Lc2.open;
except
  Tb_Lc2.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
  end;

if Tb_Lc2.Eof then
   Result:=False
else
   Result:=True;
end;


function TFrm_Lic2.fLerlic02(pTipo: Integer): Boolean;
begin
Frm_Lic2.Qr_Lic02.Close;
Frm_Lic2.Qr_Lic02.Sql.clear;
Frm_Lic2.Qr_Lic02.Sql.add('Select LC2_CODEMP, '
                  +'       LC2_CHAVE, '
                  +'       LC2_LOTEPREGAO, '
                  +'       LC2_ITEM, '
                  +'       LC2_CODPRO, '
                  +'       LC2_QTD, '
                  +'       LC2_QTDENV, '
                  +'       LC2_UND, '
                  +'       LC2_NOM01, '
                  +'  LC2_MARCA, '
                  +'  LC2_RMS, '
                  +'  LC2_PCOAV, '
                  +'  LC2_PCOPZ, '
                  +'  LC2_LOTSEQ, '
                  +'  LC2_DESCCOMP,'
                  +'  LC2_GANHOU  '
                  +' ,LC2_PCOCPR,LC2_ICMS_PERC,LC2_DESPESASFIXAS_PERC '
                  +',LC2_FRETE_PERC,LC2_MARGEM_LUCRO_PERC '
                  +'  ,LC2_ID_NEW '
                  +'  ,LC2_ID_LC1_NEW '
                  );
frm_lic2.Qr_Lic02.SQL.add('  from CADLC2 where '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
frm_lic2.Qr_Lic02.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
frm_lic2.Qr_Lic02.SQL.Add(' order by LC2_CODEMP,LC2_CHAVE,LC2_LOTEPREGAO,LC2_ITEM');
frm_lic2.Qr_Lic02.open;
mAnt_VlrTotal  :=0;
mAnt_qtd       :=0;


DM1.Query2.Close;
DM1.Query2.Sql.clear;
DM1.Query2.Sql.add('Select sum(1) as QTD_ITENS, sum(LC2_QTD) as LC2_QTD, '
                  +'       sum(round((LC2_QTD*LC2_PCOAV),'+DM1.Tb_PargerPCASAS.AsString+')) AS VLTOTAL ');
DM1.Query2.SQL.add('  from CADLC2 where '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
DM1.Query2.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
try
   DM1.Query2.open;
except
   DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
mTot_Itens       :=DM1.Query2.fieldbyName('QTD_ITENS').AsInteger;
mTot_qtd       :=DM1.Query2.fieldbyName('LC2_QTD').asfloat;
mTot_VlrTotal  :=Arredonda(DM1.Query2.fieldbyName('VLTOTAL').asfloat,DM1.Tb_PargerPCASAS.asinteger);


frm_lic2.st_qtd_itens.Caption    :=Formatfloat(mcasqtd, mTot_Itens);
frm_lic2.st_tot_qtd.Caption    :=Formatfloat(mcasqtd, mTot_qtd);
frm_lic2.st_tot_vltotal.Caption:=Formatfloat(mcasas, mTot_VlrTotal);

result:=true;
end;

procedure TFrm_Lic2.DBE_FONEExit(Sender: TObject);
begin
Tb_Lc1LC1_FONCUI.Value:=FMontarMascFone(fdeixanum(Tb_Lc1LC1_FONCUI.AsString));

end;

procedure TFrm_Lic2.DBGrid1_ItensDblClick(Sender: TObject);
begin

if DBGrid1_Itens.SelectedField=Qr_Lic02LC2_GANHOU then
  begin
  if (not Qr_Lic02LC2_CODPRO.IsNull) and (DBGrid1.ReadOnly=False) then
    begin
    Qr_Lic02.Edit;
    if trim(Qr_Lic02LC2_GANHOU.AsString)='' then
      Qr_Lic02LC2_GANHOU.AsString:='X'
    else
      Qr_Lic02LC2_GANHOU.AsString:='';
    Qr_Lic02.Post;
    end;
  end;
end;

procedure TFrm_Lic2.bbFecharClick(Sender: TObject);
begin
DBGrid1_Itens.SetFocus;

end;

procedure TFrm_Lic2.DBGrid1_ItensColEnter(Sender: TObject);
begin

if DBGrid1_Itens.SelectedField=Qr_Lic02LC2_ITEM then
   begin
   if Qr_Lic02.State in [dsEdit,dsInsert] then
      begin
      if Qr_Lic02LC2_ITEM.AsFloat=0 then
         begin
         Qr_Lic02LC2_ITEM.AsFloat:=mProx_Item;
         mProx_Item:=mProx_item+1;
         end;
      end;
   end;
end;

procedure TFrm_Lic2.Qr_Lic02BeforePost(DataSet: TDataSet);
var
  pcomin: Real;


var
i:Integer;
begin
if Qr_Lic02LC2_LOTEPREGAO.IsNull then
  Qr_Lic02LC2_LOTEPREGAO.Value:=mLotePregao;

if Qr_Lic02LC2_ITEM.IsNull  then
  begin
  Qr_Lic02LC2_ITEM.Value      :=mProx_Item;
  mProx_item                  :=mProx_item+1;
  end;
if (Qr_Lic02LC2_NOM01.IsNull) and (Qr_Lic02LC2_QTD.IsNull) then
   begin
   Qr_Lic02.Cancel;
   abort;
   end;

if Qr_Lic02LC2_NOM01.IsNull then
   begin
   fMensagem('Favor Digitar uma Descrição Válida!',0,['0'],0);
   DBGrid1_itens.SelectedField:=Qr_Lic02LC2_NOM01;
   Abort;
   exit;
   end;
if Qr_Lic02LC2_Qtd.AsFloat<=0 then
   begin
   fmensagem('Quantidade Invalida!',0,['0'],0);
   DBGrid1_Itens.SelectedField:=Qr_Lic02LC2_QTD;
   if PC1.ActivePage<>tsItens then
      PC1.ActivePage:=tsItens;
   if not DBGrid1_Itens.Focused then
      DBGrid1_Itens.SetFocus;
   abort;
   end;

if Qr_Lic02LC2_DESCCOMP.IsNull then
   Qr_Lic02LC2_DESCCOMP.AsString:=Qr_Lic02LC2_NOM01.AsString;


if trim(Qr_Lic02LC2_LOTEPREGAO.AsString)='' then
   Qr_Lic02LC2_LOTEPREGAO.AsString    :='0';
if Qr_Lic02LC2_CODPRO.IsNull then
   Qr_Lic02LC2_CODPRO.Value    :=0;
if Qr_Lic02LC2_QTD.IsNull then
   Qr_Lic02LC2_QTD.Value    :=0;
if Qr_Lic02LC2_QTDENV.IsNull then
   Qr_Lic02LC2_QTDENV.Value    :=0;
if Qr_Lic02LC2_PCOAV.IsNull then
   Qr_Lic02LC2_PCOAV.Value    :=0;
if Qr_Lic02LC2_PCOPZ.IsNull then
   Qr_Lic02LC2_PCOPZ.Value    :=0;
if Qr_Lic02LC2_ITEM.AsFloat=0 then
   begin
   Qr_Lic02LC2_ITEM.AsFloat:=mProx_Item;
   mProx_Item:=mProx_item+1;
   end;

if (moper_item=0) or ( (moper_item=1) and
               ( (mAnt_lotePregao<>Qr_Lic02LC2_LOTEPREGAO.AsString) or
                 (mAnt_Item<>Qr_Lic02LC2_ITEM.AsInteger) ) ) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from CADLC2 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLC2',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString
                     +' and LC2_LOTEPREGAO=:LOTEPREGAO '
                     +' and LC2_ITEM=:ITEM ');
   DM1.Query1.ParamByName('LOTEPREGAO').AsString:=Qr_Lic02LC2_LOTEPREGAO.AsString;
   DM1.Query1.ParamByName('ITEM').AsInteger     :=Qr_Lic02LC2_ITEM.AsInteger;
   try
      DM1.Query1.open;
   except
      end;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Item ja Digitado, favor muda-lo!',0,['0'],0);
      DBGrid1_Itens.SelectedField:=Qr_Lic02LC2_ITEM;
      if PC1.ActivePage<>tsItens then
         PC1.ActivePage:=tsItens;
      if not DBGrid1_Itens.Focused then
         DBGrid1_Itens.SetFocus;



      abort;
      end;
   end;

For i:=0 to Qr_Lic02.FieldCount-1 do
   begin
   if not Qr_Lic02.Fields[i].IsNull then
      Continue;
   if Qr_Lic02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      Qr_Lic02.Fields[i].Value:=0
   else if Qr_Lic02.Fields[i].DataType in [ftString,ftMemo] then
      Qr_Lic02.Fields[i].Value:=' ';
   end;
if Qr_Lic02LC2_ID_NEW.asfloat<=0 then
   Qr_Lic02LC2_ID_NEW.Value        :=fBuscarProximoId('CADLC2_SEQ');

if (mOper_Item=0) and (Qr_Lic02.State in [dsInsert]) then
   mProx_Item:=Qr_Lic02LC2_ITEM.AsInteger+1;



end;

procedure TFrm_Lic2.DBE_NOM01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=114)  then
   bbFecharClick(Self);

end;

procedure TFrm_Lic2.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

function TFrm_Lic2.fLiberaTexto(pLibera: Boolean): Boolean;
begin
if pLibera=true then
   pLibera:=false
else
   pLibera:=true;


result:=true;

end;
procedure TFrm_Lic2.DBE_dc_foneExit(Sender: TObject);
begin
Tb_Lc1LC1_FONE.AsString:=MaskFone(fdeixanum(Tb_Lc1LC1_FONE.AsString));

end;

procedure TFrm_Lic2.DBE_dc_cepExit(Sender: TObject);
begin
Tb_Lc1LC1_CEP.AsString:=MaskCep(fdeixanum(Tb_Lc1LC1_CEP.AsString));

end;

procedure TFrm_Lic2.bb_dc_sairKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=114)  then
   bb_dc_sairClick(Self);

end;

procedure TFrm_Lic2.bb_dc_sairClick(Sender: TObject);
begin
gb_dadoscli.Visible:=false;
DBE_VEND.SetFocus;

end;

procedure TFrm_Lic2.gb_dadoscliExit(Sender: TObject);
begin
gb_dadoscli.Visible:=false;

end;

procedure TFrm_Lic2.DBE_CODCLIEnter(Sender: TObject);
begin
 mAnt_Codcli:=Tb_Lc1LC1_CODCLI.AsFloat;

end;

procedure TFrm_Lic2.sbnDadosCliClick(Sender: TObject);
begin
   gb_dadoscli.Visible := true;
   DBE_dc_nome.SetFocus;

end;

procedure TFrm_Lic2.bbWordClick(Sender: TObject);
begin
bbWord.Enabled:=false;
FDocWord(0);
bbWord.Enabled:=true;
end;

function TFrm_Lic2.FDocWord(pModelo: Integer):Boolean;
var
  ArquivoSalvar:olevariant; //local e nome para salvar arquivo
  back : olevariant;
  mlinhas,colunas,i,j,x: Integer;
  mposcol,mposlin: integer;
  msWord: variant;           {variavel do Word}
  mtotLic: Real;
  mQtdCasa: Integer;
  mCasasLocal: String;
begin
//i:=1;
//j:=1;

if Tb_Lc1LC1_CASASDEC.AsInteger=0 then
  begin
  mQtdcasa:=DM1.Tb_PargerPCASASPU.AsInteger;
  end
else
  begin
  mQtdCasa:=Tb_Lc1LC1_CASASDEC.AsInteger+1;
  end;

mCasasLocal:='#,##0.'+COMPLETA_COM('','0',mQtdCasa,1);

msword := CreateOleObject('word.application'); //abre aplicativo
//      WordApp:= CreateOleObject('Word.Application');     {acessa o Word}
msword.documents.add; //adiciona novo documento
if MSWord.ActiveWindow.View.SplitSpecial <> 0 then
   MSWord.ActiveWindow.Panes[2].Close;
if (MSWord.ActiveWindow.ActivePane.View.type = 1) or
   (MSWord.ActiveWindow.ActivePane.View.type = 2) or
   (MSWord.ActiveWindow.ActivePane.View.type = 5) then
   MSWord.ActiveWindow.ActivePane.View.type := 3;
s := msword.selection; //variavel para facilitar trabalho
if Tb_Lc1LC1_IMPCAB.AsInteger<3 then
   begin

   MSWord.ActiveWindow.ActivePane.View.SeekView := 9; //habilita o cabeçalho
   s.Font.Name := 'Georgia'; //tipo de letra
   s.Font.Size := 36;    //tamanho de letra
   s.Font.Bold := True;    //negrito
   s.Font.italic := false;    //italico
   s.font.Subscript := false;      //subescrito
   s.font.Superscript := false;   //sobrescrito
   s.font.Underline := true;     //sublinhado
   s.typetext(DM1.Tb_EmpFANTASIA_CAB.AsString);

   s.Font.Name := 'Times New Roman'; //tipo de letra
   s.Font.Size := 14;    //tamanho de letra
   s.font.Underline := false;     //sublinhado
   s.Font.Bold := True;    //negrito
   s.typetext(chr(13)+DM1.Tb_EmpRAZAO_CAB.AsString);

//   s.typetext('Cabeçalho habilitado');
   msword.activewindow.activepane.view.seekview := 10; //habilita o rodapé

   s.Font.Name := 'Times New Roman'; //tipo de letra
   s.Font.Size := 9;    //tamanho de letra
   s.Font.Bold := True;    //negrito

   s.typetext(DM1.Tb_EmpRAZAO_CAB.AsString);
   s.typetext(chr(13)+DM1.Tb_EmpENDERECO.AsString+' ');
   s.typetext(DM1.Tb_EmpBAIRRO.AsString+' ');
   if fsonumero(DM1.Tb_EmpCEP.AsString)>0 then
      s.typetext('Cep: '+DM1.Tb_EmpCEP.AsString+' ');
   s.typetext(DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString);
   s.typetext(chr(13)+'CNPJ: '+DM1.Tb_Empcnpj_masc.AsString+' Inscrição Estadual: '+DM1.Tb_EmpINSCRICAO.AsString);
   s.typetext(chr(13)+'Telefone: '+DM1.Tb_EmpFONE.AsString+' ');
   if fsonumero(DM1.Tb_EmpFAX.AsString)>0 then
      s.typetext(DM1.Tb_EmpFAX.AsString);
   s.typetext(chr(13)+' E-Mail: '+DM1.Tb_EmpE_MAIL.AsString);
   s.typetext(' Home Page: '+DM1.Tb_EmpHOMEPAGE.AsString);
//   s.typetext('rodapé habilitado');
   msword.activewindow.activepane.view.seekview := 0; //habilita o texto
   end;
msword.activedocument.PageSetup.Orientation := wdOrientLandscape;  //página em landscape
s.Font.Name := 'Arial'; //tipo de letra
s.Font.Size := 12;    //tamanho de letra
s.Font.Bold := True;    //negrito
s.Font.italic := false;    //italico
s.font.Subscript := false;      //subescrito
s.font.Superscript := false;   //sobrescrito
s.font.Underline := true;     //sublinhado


s.typetext(Tb_Lc1LC1_NOMCLI.AsString);
s.Font.Bold := false;    //negrito
s.font.Underline := false;     //sublinhado
s.Font.Name := 'Arial'; //tipo de letra
s.Font.Size := 09;    //tamanho de letra

s.typetext(#13+Tb_Lc1LC1_AOSCUI.AsString);
s.typetext(#13+'Modalidade: '+Tb_Lc1LC1_OBJETO.AsString);
s.typetext(#13+'Carta Convite: '+Tb_Lc1LC1_CARCON.AsString);
s.typetext(#13+'Chave da Licitação: '+Tb_Lc1LC1_CHAVE.AsString);
if Tb_Lc1LC1_DATCON.AsDateTime>pdatanula then
   begin
   s.typetext(#13+'DATA DA ABERTURA: '+FormatDateTime(fdt2, Tb_Lc1LC1_DATCON.AsDateTime)
             +' HORA: '+Formatdatetime(fhr,  Tb_LC1LC1_DATCON.AsDateTime));
   end;
if length(Tb_Lc1LC1_OBS1.AsString)>1 then
   s.typetext(#13+Tb_Lc1LC1_OBS1.AsString);
if length(Tb_Lc1LC1_OBS2.AsString)>1 then
   s.typetext(#13+Tb_Lc1LC1_OBS2.AsString);
s.typetext(#13);

//        s.font.color := clGreen;    //cor da letra
s.paragraphFormat.alignment := wdAlignParagraphJustify; //alinha o texto a esquerda
        //esquerda=0, centro=1, direita=2, wdAlignParagraphJustify
s.typetext(#9); //tab
s.typeparagraph;

mItemTable     :=1;
mlinhas :=Qr_Lic02.RecordCount+1;
colunas:=09;
if (Tb_Lc1LC1_EXTUAV.AsInteger=0) or (Tb_Lc1LC1_EXTPAV.AsInteger=0) then
   mlinhas:=2;
s.tables.add(s.range,mlinhas,colunas); //cria tabela i linhas, j colunas

FSetarTamanhoColunas(0);



mposlin:=1;
s.tables.item(mItemTable).cell(mposlin,01).range.insertAfter('Item');
s.Tables.Item(mItemTable).Cell(mposlin,01).Range.Paragraphs.Alignment := wdAlignParagraphRight;
s.tables.item(mItemTable).cell(mposlin,02).range.insertAfter('Código');
s.Tables.Item(mItemTable).Cell(mposlin,02).Range.Paragraphs.Alignment := wdAlignParagraphRight;
s.tables.item(mItemTable).cell(mposlin,03).range.insertAfter('Quant');
s.Tables.Item(mItemTable).Cell(mposlin,03).Range.Paragraphs.Alignment := wdAlignParagraphRight;
s.tables.item(mItemTable).cell(mposlin,04).range.insertAfter('Und');
s.tables.item(mItemTable).cell(mposlin,05).range.insertAfter('Descrição do Produto');
s.tables.item(mItemTable).cell(mposlin,06).range.insertAfter('Marca');
s.tables.item(mItemTable).cell(mposlin,07).range.insertAfter('Reg.M.S');
s.tables.item(mItemTable).cell(mposlin,08).range.insertAfter('Pço.Unit.');
s.Tables.Item(mItemTable).Cell(mposlin,08).Range.Paragraphs.Alignment := wdAlignParagraphRight;
s.tables.item(mItemTable).cell(mposlin,09).range.insertAfter('Valor Total');
s.Tables.Item(mItemTable).Cell(mposlin,09).Range.Paragraphs.Alignment := wdAlignParagraphRight;





//s.tables.item(1).columns.item(2).setwidth(100,wdAdjustNone);
                //comprimento da segunda coluna sem modificar a posição do texto
Qr_Lic02.First;
mtotLic:=0;
While not Qr_Lic02.Eof do
   begin
   mtotLic:=mtotlic+Qr_Lic02total_bruto.AsFloat;

   mposlin:=mposlin+1;
   s.tables.item(mItemTable).cell(mposlin,01).range.insertAfter(Qr_Lic02LC2_ITEM.AsString);
   s.Tables.Item(mItemTable).Cell(mposlin,01).Range.Paragraphs.Alignment := wdAlignParagraphRight;
   s.tables.item(mItemTable).cell(mposlin,02).range.insertAfter(Qr_Lic02LC2_CODPRO.AsString);
   s.Tables.Item(mItemTable).Cell(mposlin,02).Range.Paragraphs.Alignment := wdAlignParagraphRight;
   s.tables.item(mItemTable).cell(mposlin,03).range.insertAfter(Formatfloat(mcasqtd, Qr_Lic02LC2_QTD.AsFloat));
   s.Tables.Item(mItemTable).Cell(mposlin,03).Range.Paragraphs.Alignment := wdAlignParagraphRight;
   s.tables.item(mItemTable).cell(mposlin,04).range.insertAfter(Qr_Lic02LC2_UND.AsString);



   mcinst4:=Qr_Lic02LC2_NOM01.AsString;
   s.tables.item(mItemTable).cell(mposlin,05).range.insertAfter(mcinst4);
   s.tables.item(mItemTable).cell(mposlin,06).range.insertAfter(Qr_Lic02LC2_MARCA.AsString);
   s.tables.item(mItemTable).cell(mposlin,07).range.insertAfter(Qr_Lic02LC2_RMS.AsString);
   s.tables.item(mItemTable).cell(mposlin,08).range.insertAfter(Formatfloat(mCasasLocal, Qr_Lic02LC2_PCOAV.AsFloat));
   s.Tables.Item(mItemTable).Cell(mposlin,08).Range.Paragraphs.Alignment := wdAlignParagraphRight;

   s.tables.item(mItemTable).cell(mposlin,09).range.insertAfter(Formatfloat(mcasas, Qr_Lic02total_bruto.AsFloat));
   s.Tables.Item(mItemTable).Cell(mposlin,09).Range.Paragraphs.Alignment := wdAlignParagraphRight;

   if (Tb_Lc1LC1_EXTUAV.AsInteger=0) or (Tb_Lc1LC1_EXTPAV.AsInteger=0) then
      begin
      s.tables.item(mItemTable).cell(mposlin,colunas).select; //seleciona celula i,j
      s.moveright;  //move para direita
      s.moveright;  //move para direita
//      s.typetext(' ');

      mLinhas:=0;
      if (Tb_Lc1LC1_EXTUAV.AsInteger=0) then
         mlinhas:=mlinhas+1;
      if (Tb_Lc1LC1_EXTPAV.AsInteger=0)  then
         mlinhas:=mlinhas+1;
//      mItemTable:=mItemTable+1;
//      s.tables.add(s.range,mlinhas,01); //cria tabela i linhas, j colunas
      mposlin:=0;
      if (Tb_Lc1LC1_EXTUAV.AsInteger=0) then
         begin
         mposlin:=mposlin+1;
         s.typetext('Preço Unitario: '+Extenso(Qr_Lic02LC2_PCOAV.Value));
         if (Tb_Lc1LC1_EXTPAV.AsInteger=0)  then
            s.typetext(chr(13));


//         s.tables.item(mItemTable).cell(mposlin,01).range.insertAfter(Extenso(Qr_Lic02LC2_PCOAV.Value));
//         s.tables.item(mItemTable).cell(mposlin,01).range.insertAfter(Extenso(Tb_Lc2LC2_PCOAV.Value));
         end;

      if (Tb_Lc1LC1_EXTPAV.AsInteger=0)  then
         begin
         mposlin:=mposlin+1;
         s.typetext('Valor Total: '+Extenso(Qr_Lic02total_bruto.Value));

//         s.tables.item(mItemTable).cell(mposlin,01).range.insertAfter(Extenso(Qr_Lic02total_bruto.Value));
         end;
//      s.tables.item(mItemTable).cell(mposlin,01).select; //seleciona celula i,j
//      s.moveright;  //move para direita
//      s.moveright;  //move para direita
//      s.typetext(' ');

      mposlin:=0;
      mlinhas:=1;
      s.tables.add(s.range,mlinhas,colunas); //cria tabela i linhas, j colunas
      FSetarTamanhoColunas(0);
      end;
   Qr_Lic02.Next;
   end;

//ldc        s.tables.item(1).cell(2,3).range.insertAfter('escrito na posição 2,3');
                //escreva na posição 2,3
//   s.cells.autofit; //alinha conforme

s.tables.item(1).cell(mLinhas,colunas).select; //seleciona celula i,j
s.moveright;  //move para direita
s.moveright;
s.typetext(' ');

mlinhas:=1;
s.tables.add(s.range,mlinhas,colunas); //cria tabela i linhas, j colunas
FSetarTamanhoColunas(0);

mposlin:=1;
s.tables.item(mItemTable).cell(mposlin,05).range.insertAfter('Total.....');
s.tables.item(mItemTable).cell(mposlin,09).range.insertAfter(Formatfloat(mcasas, mtotLic));
s.Tables.Item(mItemTable).Cell(mposlin,09).Range.Paragraphs.Alignment := wdAlignParagraphRight;
s.tables.item(mItemTable).cell(mLinhas,colunas).select; //seleciona celula i,j
s.moveright;  //move para direita
s.moveright;
if Tb_Lc1LC1_EXTTAV.AsFloat=0 then
   s.typetext(Extenso(mtotLic));

//s.typetext('escrito fora da tabela');
        //notas de rodapé
//        s.footnotes.add(msword.selection.range,emptyparam,'texto');
        //notas de cabeçalho
//        s.endnotes.add(msword.selection.range,emptyparam,'texto');
        //comentário
//        s.comments.add(msword.selection.range,'texto');
        s.PageSetup.TopMargin := 10;  //margem superior
        s.PageSetup.leftMargin := 10; //margem esquerda
        s.PageSetup.rightMargin := 80; //margem direita
        s.PageSetup.BottomMargin := 60; //magem abaixo
msword.application.visible :=true; //mantem visivel o documento word
for x:=0 to 100 do
   begin
   ArquivoSalvar := 'c:\teste'+IntToStr(x)+'.doc';
   if not FileExists(arquivosalvar) then
      exit;
   end;

MSWORD.ActiveDocument.SaveAs(arquivosalvar); //salva sem perguntar
//      msword.documents.save; //abre janela para salvar
//      msword.ActiveDocument.PrintOut(false); //imprime direto, sem perguntar
//      msword.ActiveDocument.PrintPreview; //vizualizar impressão
//        msword.Quit  // finaliza aplicação


end;

function tFrm_Lic2.FSetarTamanhoColunas(pTipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   s.tables.item(mItemTable).columns.item(1).setwidth(25,wdAdjustNone); // ITEM
   s.tables.item(mItemTable).columns.item(2).setwidth(38,wdAdjustNone); // codigo
   s.tables.item(mItemTable).columns.item(3).setwidth(40,wdAdjustNone); // quant
   s.tables.item(mItemTable).columns.item(4).setwidth(30,wdAdjustNone); // und
   s.tables.item(mItemTable).columns.item(5).setwidth(160,wdAdjustNone); // descricao
   s.tables.item(mItemTable).columns.item(6).setwidth(80,wdAdjustNone); // marca
   s.tables.item(mItemTable).columns.item(7).setwidth(43,wdAdjustNone); // regms
   s.tables.item(mItemTable).columns.item(8).setwidth(60,wdAdjustNone); // preco unitario
   s.tables.item(mItemTable).columns.item(9).setwidth(60,wdAdjustNone); // valor total
   end
else
   s.tables.item(mItemTable).columns.item(1).setwidth(533,wdAdjustNone); // ITEM


end;

procedure TFrm_Lic2.ExluirItem1Click(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir?',0,['1','2'],2)=mrYes then
   begin
   try
      Qr_Lic02.Delete;
   except
      fmensagem('exessao',0,['0'],0);
      end;
   end;
end;





function TFrm_Lic2.fLic01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC1_CODNOV) from OLD_CADLC1');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADLC1 (';
v:='';
for x:=0 to Tb_Lc1.FieldCount-1 do
   begin
   if (Tb_Lc1.Fields[x].FieldKind=fkCalculated) or (Tb_Lc1.Fields[x].DataType=ftBlob) then
      Continue;
   minstru:=minstru+v+Tb_Lc1.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+',LC1_CODUSR_EVE';
minstru:=minstru+',LC1_DATHOR_EVE';
minstru:=minstru+',LC1_TIPEVE';

minstru:=minstru+',LC1_CODNOV) Select ';

v:='';
for x:=0 to Tb_Lc1.FieldCount-1 do
   begin
   if (Tb_Lc1.Fields[x].FieldKind=fkCalculated) or (Tb_Lc1.Fields[x].DataType=ftBlob) then
      Continue;
   minstru:=minstru+v+Tb_Lc1.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+V+':LC1_CODUSR_EVE';
minstru:=minstru+V+':LC1_DATHOR_EVE';
minstru:=minstru+V+':LC1_TIPEVE';

minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as LC1_CODNOV ';
minstru:=minstru+' from CADLC1 where LC1_CODEMP=0'+Tb_Lc1LC1_CODEMP.AsString
                +' and LC1_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
DM1.Query1.parambyName('LC1_CODUSR_EVE').asfloat   :=codusr;
DM1.Query1.parambyName('LC1_DATHOR_EVE').asdatetime:=now;
DM1.Query1.parambyName('LC1_TIPEVE').asFloat       :=ptipo;



Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
//   ex_erroSql_Novo(DM1.Query1,3544,'frm_lic2','OLD_CADLC1');
   end;
DM1.Query1.Close;
minstru:='Insert into OLD_CADLC2 (';
v:='';
for x:=0 to Tb_Lc2.FieldCount-1 do
   begin
   if (Tb_Lc2.Fields[x].FieldKind=fkCalculated) or (Tb_Lc2.Fields[x].DataType=ftBlob) then
      Continue;
   minstru:=minstru+v+Tb_Lc2.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',LC2_CODNOV) Select ';
v:='';
for x:=0 to Tb_Lc2.FieldCount-1 do
   begin
   if (Tb_Lc2.Fields[x].FieldKind=fkCalculated) or (Tb_Lc2.Fields[x].DataType=ftBlob) then
      Continue;
   minstru:=minstru+v+Tb_Lc2.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as LC2_CODNOV ';
minstru:=minstru+' from CADLC2 where LC2_CODEMP=0'+Tb_Lc1LC1_CODEMP.AsString
                +' and LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
//   ex_erroSql_Novo(DM1.Query1,3576,'frm_lic2','OLD_CADLC2');
   end;
DM1.Query1.Close;
result:=True;
end;


procedure TFrm_Lic2.bbDuplicarClick(Sender: TObject);
var
mIdPf01New: Integer;
mValues: String;
mValues_com_seq: String;


    procedure pDuplicarDescricaoComplementar(pOri_Chave,pOri_CodEmp,pNov_chave,pNov_Codemp: Integer);
    var
    query_ori: tquery;
    query_dest: tquery;
        procedure pfechartudo;
        begin
        query_ori.close;
        freeandnil(query_ori);

        query_dest.close;
        freeandnil(query_dest);

        end;
    begin
    query_ori:=TQuery.create(nil);
    query_dest:=TQuery.create(nil);
    query_ori.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_dest.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_ori.SQL.clear;
    query_ori.SQL.Add('select LC2_CHAVE, LC2_LOTEPREGAO, LC2_ITEM, LC2_CODEMP, lc2_desccomp from cadlc2 '
                     +' where LC2_CHAVE=:CHAVE and LC2_CODEMP=:CODEMP ');
    query_ori.parambyname('CHAVE').asinteger:=pOri_Chave;
    query_ori.parambyname('CODEMP').asinteger:=pOri_CodEmp;
    try
       query_ori.open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_ori,3888,'func Erro:'+e.Message ,'CADLC2');
       pfechartudo;
       exit;
       end;
       end;
    query_dest.close;
    query_dest.sql.clear;
    query_dest.sql.add('Update CADLC2 set '
                       +' LC2_DESCCOMP=:DESCCOMP '
                       +' where LC2_CHAVE=:CHAVE '
                       +' AND LC2_LOTEPREGAO=:LOTEPREGAO '
                       +' AND LC2_ITEM=:ITEM '
                       +' AND LC2_CODEMP=:CODEMP ');


    While not query_ori.Eof do
       begin
       query_dest.close;
       query_dest.ParamByName('DESCCOMP').AsString  :=query_ori.fieldbyname('LC2_DESCCOMP').AsString;
       query_dest.ParamByName('CHAVE').AsInteger    :=pNov_chave;
       query_dest.ParamByName('LOTEPREGAO').AsString :=query_ori.fieldbyname('LC2_LOTEPREGAO').AsString;
       query_dest.ParamByName('ITEM').AsInteger     :=query_ori.fieldbyname('LC2_ITEM').AsInteger;
       query_dest.ParamByName('CODEMP').AsInteger   :=query_ori.fieldbyname('LC2_CODEMP').AsInteger;
       try
          query_dest.ExecSQL;
          fdm1StartCommit;
       except on e : exception do
          begin
          ex_erroSql_Novo(query_dest,3918,'func Erro:'+e.Message ,'CADLC2');
          pfechartudo;
          exit;
          end;
          end;
       query_ori.next;
       end;
    pfechartudo;
    end;
begin
if Tb_Lc1LC1_CHAVE.IsNull then
   begin
   Fmensagem('Não há registro a ser Duplicado!',0,['0'],0);
   abort;
   end;
if fMensagem('Quer Realmente Duplicar a Chave: '+Tb_Lc1LC1_CHAVE.AsString+'?',0,['1','2'],2)<>mrYes then
   begin
   bbDuplicar.Enabled:=true;
   exit;
   end;
mIdpf01New    := fBuscarProximoId('CADLC1_SEQ');

DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('select COLUMN_NAME from user_tab_columns '
                  +' where table_name=:NOMETAB and DATA_TYPE<>'+Quotedstr('LONG'));
DM1.Query2.ParamByName('NOMETAB').AsString:='CADLC1';
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Insert into CADLC1 (LC1_LOTSEQ,LC1_ID_NEW,LC1_CHAVE,LC1_CODEMP,LC1_DATHOR_INC,LC1_CODUSR_INC ');
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_LOTSEQ') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CODEMP') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_ID_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CHAVE') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_DATHOR_INC') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CODUSR_INC') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.SQL.Add(','+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   DM1.Query2.Next;
   end;
DM1.Query3.SQL.Add(') Select :LC1_LOTSEQ as lotseq,'+inttostr(mIdPf01New)+' as idnew , :LC1_CHAVE,:LC1_CODEMP,:LC1_DATHOR_INC,:LC1_CODUSR_INC ');


DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_LOTSEQ') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CODEMP') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_ID_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CHAVE') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_DATHOR_INC') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC1_CODUSR_INC') then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.SQL.Add(','+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   DM1.Query2.Next;
   end;
DM1.Query3.SQL.Add(' from CADLC1 where (LC1_LOTSEQ=:LOTSEQ or LC1_LOTSEQ is null)  '
                  +' and LC1_CHAVE=:CHAVE '
                  +' and LC1_CODEMP=:CODEMP ');
mchave_lic:=fbuscaNUMLIC(0);

DM1.Query3.ParamByName('LC1_LOTSEQ').AsFloat:=ls_numlic;
DM1.Query3.ParamByName('LC1_CHAVE').AsFloat :=mchave_lic;
DM1.Query3.ParamByName('LC1_CODEMP').AsFloat:=codemp;

DM1.Query3.ParamByName('LOTSEQ').AsFloat    :=Tb_Lc1LC1_LOTSEQ.AsFloat;
DM1.Query3.ParamByName('CHAVE').AsFloat     :=Tb_Lc1LC1_CHAVE.AsFloat;
DM1.Query3.ParamByName('CODEMP').AsFloat    :=Tb_Lc1LC1_CODEMP.AsFloat;

DM1.Query3.ParamByName('LC1_CODUSR_INC').AsFloat   :=codusr;
DM1.Query3.ParamByName('LC1_DATHOR_INC').AsDateTime:=Now;
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query3,3662,'frm_lc1','CADLC1');
   exit;
   end;
// inicio da cadlc2

DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('select COLUMN_NAME from user_tab_columns '
                  +' where table_name=:NOMETAB  and DATA_TYPE<>'+Quotedstr('LONG'));
DM1.Query2.ParamByName('NOMETAB').AsString:='CADLC2';
DM1.Query2.Open;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Insert into CADLC2 (LC2_LOTSEQ,LC2_ID_NEW,LC2_ID_LC1_NEW,LC2_CHAVE,LC2_CODEMP ');
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_LOTSEQ') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_ID_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_ID_LC1_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_CODEMP') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_CHAVE')  then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DM1.Query3.SQL.Add(','+DM1.Query2.FieldByName('COLUMN_NAME').AsString);
   DM1.Query2.Next;
   end;
DM1.Query3.SQL.Add(') ');

mValues_com_seq :='Select :LC2_LOTSEQ, CADLC2_SEQ.NEXTVAL, '+inttostr(mIdPf01New)+' as id_pf01_new, :LC2_CHAVE,:LC2_CODEMP ';
mValues :='Select LC2_CODEMP AS CODEMP ';


DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_LOTSEQ') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_CODEMP') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_ID_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_ID_LC1_NEW') or
      (DM1.Query2.FieldByName('COLUMN_NAME').AsString='LC2_CHAVE')  then

      begin
      DM1.Query2.Next;
      Continue;
      end;
   mValues := mValues +','+DM1.Query2.FieldByName('COLUMN_NAME').AsString;
   mValues_com_seq := mValues_com_seq +','+DM1.Query2.FieldByName('COLUMN_NAME').AsString;
   DM1.Query2.Next;
   end;
mValues:=mValues +' from CADLC2 where (LC2_LOTSEQ=:LOTSEQ or LC2_LOTSEQ is null) '
                  +' and LC2_CHAVE=:CHAVE '
                  +' and LC2_CODEMP=:CODEMP ';

mValues_com_seq:=mValues_com_seq+' from (';


DM1.Query3.sql.add(mValues_com_seq+mquebralinha+mValues+') L1');

DM1.Query3.ParamByName('LC2_LOTSEQ').AsFloat:=ls_numlic;
DM1.Query3.ParamByName('LC2_CHAVE').AsFloat :=mchave_lic;
DM1.Query3.ParamByName('LC2_CODEMP').AsFloat:=codemp;

DM1.Query3.ParamByName('LOTSEQ').AsFloat    :=Tb_Lc1LC1_LOTSEQ.AsFloat;
DM1.Query3.ParamByName('CHAVE').AsFloat     :=Tb_Lc1LC1_CHAVE.AsFloat;



DM1.Query3.ParamByName('CODEMP').AsFloat    :=Tb_Lc1LC1_CODEMP.AsFloat;
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query3,3758,'frm_lc1','CADLC2');
   exit;
   end;


// termino do cadlc2

pDuplicarDescricaoComplementar(Tb_LC1LC1_CHAVE.AsInteger,Tb_LC1LC1_CODEMP.AsInteger,trunc(mchave_lic),codemp);

fmensagem('Nova Chave Criada: '+FloatToStr(mchave_lic),0,['0'],0);
bbDuplicar.Enabled:=true;


end;

procedure TFrm_Lic2.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (trim(Tb_Lc1LC1_DEC07.Value)  = '') then
  RLBand14.visible := false;
end;

procedure TFrm_Lic2.CBTPPCOExit(Sender: TObject);
begin
if CBTPPCO.ItemIndex<>m_AntFloat then
  begin
  flcadpar02(0,0,CodUsr,IntToStr(58));
  if DM4.Tb_Par02PA2PDSN.Value = 'S' then
    begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=58;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha para alterar o tipo de preço padrão!';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      begin
      fMensagem('Alteração não Aceita!',0,['0'],0);
      CBTPPCO.ItemIndex :=     m_AntFloat;
      CBTPPCO.SetFocus;;
      exit;
      end;
    end;
  end;

if CBTPPCO.ItemIndex=0 then
  begin
  DBGrid1_Itens.Columns[mcol_pcoav].ReadOnly:=False;
  end
else
  begin
  DBGrid1_Itens.Columns[mcol_pcoav].ReadOnly:=True;
  end;

fLerlic02(0);
if Tb_Lc1LC1_TPPCO.AsInteger=CBTPPCO.ItemIndex then
  begin
  Exit;
  end
else
  begin
  if fmensagem('Esta Alteração irá recalcular os produtos. Deseja Continuar',0,['1','2'],1)<>mrYes then
    begin
    CBTPPCO.ItemIndex:=Tb_Lc1LC1_TPPCO.AsInteger;
    CBTPPCO.SetFocus;
    Exit;
    end;
  end;

Qr_Lic02.First;
while not Qr_Lic02.Eof do
  begin
  Qr_Lic02.Edit;
  if flcadpro(1,0,0,Qr_Lic02LC2_CODPRO.AsString) then
    begin
    if CBTPPCO.ItemIndex=1 then
      begin
      Qr_Lic02LC2_PCOAV.AsFloat:=DM1.Tb_ProPDPRECO1.AsFloat;
      Qr_Lic02LC2_PCOPZ.AsFloat:=DM1.Tb_ProPDPRECO1.AsFloat;
      end
    else if CBTPPCO.ItemIndex=2 then
      begin
      Qr_Lic02LC2_PCOAV.AsFloat:=DM1.Tb_ProPDUCPR.AsFloat;
      Qr_Lic02LC2_PCOPZ.AsFloat:=DM1.Tb_ProPDUCPR.AsFloat;
      end
    else if CBTPPCO.ItemIndex=3 then
      begin
      Qr_Lic02LC2_PCOAV.AsFloat:=DM1.Tb_ProPDPRECOC.AsFloat;
      Qr_Lic02LC2_PCOPZ.AsFloat:=DM1.Tb_ProPDPRECOC.AsFloat;
      end
    else if CBTPPCO.ItemIndex=4 then
      begin
      Qr_Lic02LC2_PCOAV.AsFloat:=DM1.Tb_ProPDPCOMC.AsFloat;
      Qr_Lic02LC2_PCOPZ.AsFloat:=DM1.Tb_ProPDPCOMC.AsFloat;
      end;
    end;
  Qr_Lic02.Post;
  Qr_Lic02.Next;
  end;
end;

procedure TFrm_Lic2.Acres_DescExit(Sender: TObject);
begin
if ValFloat(Acres_Desc.Text)= 0 then
  Exit;

if fmensagem('Está operação irá alterar os seus preços, deseja continuar?',0,['1','2'],1)=mrNo then
  begin
  Acres_Desc.Text:='0';
  Exit;
  end;

Acres_Desc.Text:=FloatToStr(1+ValFloat(Acres_Desc.Text)/100);

fLerlic02(0);

Qr_Lic02.First;
while not Qr_Lic02.Eof do
  begin
  Qr_Lic02.Edit;
  Qr_Lic02LC2_PCOAV.AsFloat:=Qr_Lic02LC2_PCOAV.AsFloat*ValFloat(Acres_Desc.Text);
  Qr_Lic02LC2_PCOPZ.AsFloat:=DM1.Tb_ProPDPRECO1.AsFloat*ValFloat(Acres_Desc.Text);;
  Qr_Lic02.Post;
  Qr_Lic02.Next;
  end;
Acres_Desc.Text:='0';
end;
Function TFrm_Lic2.fAtualizaEnviados(pTipo: Integer):Boolean;
var
mStatusEnv: Integer;
begin
if (not Tb_Lc1.Active) or (Tb_Lc1LC1_CHAVE.IsNull) then
   result:=false;
DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.Add('update cadlc2 set lc2_qtdENV=0 '
                  +' where '
                  +' LC2_CHAVE=0'+DBE_CHAVE.Text );
try
   DM1.query1.execsql;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.query1,3957,'frm lrs'+e.Message ,'CADLC2');
   result:=false;
   end;
   end;


la_Empresas :='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP01','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');

DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.Add('update cadlc2 set lc2_qtdENV=(select sum(P2QTD) from CADP02'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                    +' P1STATUS<'+mstatus_excluido+'  '
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' ')
                                    +' and P1NPEDORI=0'+DBE_CHAVE.Text
                                    +' and P2CODPRO=LC2_CODPRO )'
                  +' where LC2_CHAVE=0'+DBE_CHAVE.Text
                  +fla_EmpBaixaAlta(0,'CADLC2',' and ',codemp,'LC2_CODEMP',' ')
                  +' and exists (select P2CODPRO from CADP02'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                    +' P1STATUS<'+mstatus_excluido+'  '
                                    +fla_EmpBaixaAlta(0,'CADP01',' and ',codemp,'P1CODEMP',' ')
                                    +' and P1NPEDORI=0'+DBE_CHAVE.Text
                                    +' and P2CODPRO=LC2_CODPRO )');
try
   DM1.Query1.execsql;
   fdm1startcommit;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.Query1,5958,'frm lrs'+e.Message ,'CADEST');
   result:=false;
   end;
   end;
// DM1.Query1.sql.SaveToFile(mpastatemp +'sqlPEND.TXT');

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select  LC2_QTDENV,LC2_QTD from CADLC2 '
                  +' where LC2_CHAVE=0'+DBE_CHAVE.Text
                  +fla_EmpBaixaAlta(0,'CADLC2',' and ',codemp,'LC2_CODEMP',' ')
                  +' and LC2_QTDENV<>LC2_QTD ');
DM1.Query2.Open;

mStatusEnv:=2;
While not DM1.Query2.Eof do
   begin
   if (DM1.Query2.Fields.FieldByName('LC2_QTDENV').AsFloat>0) and
      (DM1.Query2.Fields.FieldByName('LC2_QTDENV').AsFloat<DM1.Query2.Fields.FieldByName('LC2_QTD').AsFloat) then
      begin
      mStatusEnv:=1;
      break;
      end;
   DM1.Query2.Next;
   end;

if mStatusEnv<>1 then
   begin
   if not DM1.Query2.IsEmpty then
      begin
      DM1.Query2.First;
      if DM1.Query2.Fields.FieldByName('LC2_QTDENV').AsFloat>0 then
         mStatusEnv:=2
      else
         mStatusEnv:=1;
      end;   
   end;

if Tb_Lc1.State in [dsEdit,dsInsert] then
   Tb_Lc1LC1_STATUS.Value:=mStatusEnv
else
   begin
   Tb_Lc1.edit;
   Tb_Lc1LC1_STATUS.Value:=mStatusEnv;
   Tb_Lc1.Post;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.add('Update CADLC1 set LC1_STATUS=0'+InttoStr(mStatusEnv)
                  +' where LC1_CHAVE=0'+DBE_CHAVE.Text
                  +fla_EmpBaixaAlta(0,'CADLC1',' and ',codemp,'LC1_CODEMP',' '));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

result:=true;
end;

procedure TFrm_Lic2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Tb_Lc1LC1_STATUS.AsInteger=2 then
      DBGrid1.Canvas.Font.Color:=clWindowText
   else if Tb_Lc1LC1_STATUS.AsInteger=1 then
      DBGrid1.Canvas.Font.Color:= clGreen
   else
      DBGrid1.Canvas.Font.Color:= clRed;
   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);

end;

procedure TFrm_Lic2.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_Lic2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTot_VlrTotal:=0;
end;

procedure TFrm_Lic2.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
DM1.Query2.Close;
DM1.Query2.Sql.clear;
DM1.Query2.Sql.add('Select sum(1) as QTD_ITENS, sum(LC2_QTD) as LC2_QTD, '
                  +'       sum(round((LC2_QTD*LC2_PCOAV),'+DM1.Tb_PargerPCASAS.AsString+')) AS VLTOTAL ');
DM1.Query2.SQL.add('  from CADLC2 where '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
DM1.Query2.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
try
   DM1.Query2.open;
except
   DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
mTot_VlrTotal  :=Arredonda(DM1.Query2.fieldbyName('VLTOTAL').asfloat,DM1.Tb_PargerPCASAS.asinteger);
RL_TOTAL.Caption:=FormatFloat('#,##0.00',mTot_VlrTotal);
end;

procedure TFrm_Lic2.cb_casasChange(Sender: TObject);
var
  mQtdCasa: Integer;
begin
if cb_casas.ItemIndex=0 then
  begin
  mQtdcasa:=DM1.Tb_PargerPCASASPU.AsInteger;
  end
else
  begin
  mQtdCasa:=cb_casas.ItemIndex+1;
  end;

xMcasasLocal:='#,##0.'+COMPLETA_COM('','0',mQtdCasa,1);
Qr_Lic02LC2_PCOAV.displayformat    :=xMcasasLocal;
Qr_Lic02total_bruto.displayformat  :='#,##0.'+COMPLETA_COM('','0',DM1.Tb_PargerPCASAS.AsInteger,1);
Tb_Lc2LC2_PCOAV.displayformat  :=xMcasasLocal;
Tb_Lc2totav.displayformat      :=mcasas;
end;

procedure TFrm_Lic2.btn_marcadesmarcaClick(Sender: TObject);
var
  Marca: String;
begin
if not Qr_Lic02.IsEmpty then
  begin
  Qr_Lic02.First;
  Marca:=Qr_Lic02LC2_GANHOU.AsString;
  while not Qr_Lic02.Eof do
    begin
    Qr_Lic02.Edit;
    if Marca='X' then
      Qr_Lic02LC2_GANHOU.AsString:=''
    else
      Qr_Lic02LC2_GANHOU.AsString:='X';
    Qr_Lic02.Post;
    Qr_Lic02.Next;
    end;
  end;
end;

procedure TFrm_Lic2.bbCustosClick(Sender: TObject);
begin
Application.Createform(TFrm_LucroPed, Frm_LucroPed);
Frm_LucroPed.FormStyle:=fsMDIForm;
Frm_LucroPed.Visible  :=false;
Frm_LucroPed.MCODEMP.Text:=Tb_Lc1LC1_CODEMP.AsString;
Frm_LucroPed.InstEmp.Text:=' lc1_codemp= '+Tb_Lc1LC1_CODEMP.AsString;
Frm_LucroPed.chave.Text:=Tb_Lc1LC1_CHAVE.AsString;;
Frm_LucroPed.cb_Licitacao.Checked:=True;
Frm_LucroPed.atualiza.Click;
Frm_LucroPed.ShowModal;
FreeAndNil(Frm_LucroPed);
end;

procedure TFrm_Lic2.CBTPPCOEnter(Sender: TObject);
begin
m_AntFloat:=CBTPPCO.ItemIndex;
end;

procedure TFrm_Lic2.rl_cabtitBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RL_CHAVE.Caption:='CHAVE:   '+FormatFloat('0000',Tb_Lc1LC1_CHAVE.AsFloat);
end;

procedure TFrm_Lic2.CB_USAAVAPClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_LIC1','CB_USAAVAP');
fGravaPadroes(-1,'CB_USAAVAP'           ,'checked'      ,'_LIC1',iif(CB_USAAVAP.Checked=true,'true','false'));
if CB_USAAVAP.Checked=false then
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=false;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=false;
   end
else
   begin
   DBGrid1_Itens.Columns[mcol_pcopz].Visible:=true;
   DBGrid1_Itens.Columns[mcol_totap].Visible:=true;
   end;

end;



function TFrm_Lic2.FRetornaTipoCampo(pNomCampo: String): string; // 1)-POSICAO 2)-TIPO EM VALOR SENDO 0-String 1-Integer 2-Float 3-Data
                                                                       // 3)-FORMATO 4)-TAMANHO
begin
end;


function TFrm_Lic2.fCarregarCamposGrade: Boolean;
begin
end;

function TFrm_Lic2.fImprimirWord(pNomeRel: String): Boolean;
var
pLinhaItem: Integer;
query_totais: TQuery;
DocOrigem : OleVariant;
mNomeDoc: String;
mDel: String;
ALL,Procurar  , Substituir , SubsTodos : OleVariant;
mGrade: TStrings;
mErrosOCorrencia: tStrings;
SaveChanges: OleVariant;
// INICIO
HdrRange: Range;
FindText, ReplaceWith, Wrap, Replace: OleVariant;
mPosIni: Integer;
mNome: String;
y,x: Integer;
Query_Grade_01: TQuery;
Query_Grade_02: TQuery;
Query_Grade_02_res: TQuery;
mLinha_Dados: String;
mGridFundo: TStrings;
mGridMesclar: TStrings;
mGridAlinha: TStrings;
mGrid_Linha: Integer;
mGrid_Coluna: Integer;
mTamColunas: String;
mPegouTamCol: Boolean;

mItembook: OleVariant;
mItens_filtro: String;
mVirg: String;
Form_Agde:TFrm_Agde;
Ado_CadOP: TADOQuery;
mVariant: OleVariant;

 FileFormat : OleVariant;

 mNomeArq: String;
begin
Application.CreateForm(TFrm_Agde,Form_Agde);
Form_Agde.Label1.Caption:='Aguarde enquanto é gerado a licitação';
Form_Agde.Label2.Visible:=true;
Form_Agde.Label2.Caption:='Incluindo as Grades';
verteclado(0);

Form_Agde.Show;

mErrosOCorrencia:=tStringList.create();


Ado_CadOP:=TADOQuery.Create(nil);
Ado_CadOP.Connection:=DM1_ADO.ADOConnection1;

Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA'
                 +' order by DW_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value:=pnomerel;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;


Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado a tabulação do relatorio de licitação!',mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;

While not Ado_Cadop.Eof do
   begin
   mNomeDoc:=mcamtmp+'\PDLICITPARTE'+
   Ado_Cadop.FieldByName('DW_ORDEM').AsString+'.DAT';
   if FileExists(mNomeDoc) then
      DeleteFile(mNomeDoc);
   (Ado_Cadop.FieldByName('DW_DADOS') as TBlobField).SaveToFile(mNomeDoc);
   Ado_Cadop.Next;
   end;
Ado_Cadop.First;

mNomeDoc:= mcamtmp+'\PDLICIT.ZIP';
fJuntarArquivos(mNomeDoc);

fUnZiparArquivos(mNomeDoc,Fnomearq_Pasta(1,mNomeDoc)+'\','');

WordApp:=TWordApplication.Create(Application.Owner);
    { Faz com que o Word seja aberto e visivel ao usuário }
WordApp.Visible:=CB_VISIBLE.Checked;
    { Adiciona um novo documento ao Word }
WordDoc:=TWordDocument.Create(Application.Owner);
    { Local do documento de Origem }
{ Abre o documento de Origem no Word }
DocOrigem:= fretiraextensao(mNomedoc)+'.XML';




WordDoc.ConnectTo(WordApp.Documents.Add(DocOrigem,EmptyParam,EmptyParam,EmptyParam));

//WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;

// INICIO


for x:=0 to high(Legenda_itens)-1 do
   begin
   Procurar:=Legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirRodape(1,Procurar,Substituir) then
      break;
   end;



for x:=0 to high(Legenda_itens)-1 do
   begin
   Procurar:=Legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirCabecalho(1,Procurar,Substituir) then
      break;
   end;

for x:=0 to high(Legenda_itens)-1 do
   begin
   Procurar:=Legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirCabecalho_PrimPag(1,Procurar,Substituir) then
      break;
   end;


for x:=0 to high(Legenda_itens)-1 do
   begin
   Procurar:=Legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirRodape(2,Procurar,Substituir) then
      break;
   end;


for x:=0 to high(legenda_itens)-1 do
   begin
   Procurar:=legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirRodape(2,Procurar,Substituir) then
      break;
   end;

for x:=0 to high(legenda_itens)-1 do
   begin
   Procurar:=legenda_itens[x];
   Substituir:= fBuscarValorLegenda(legenda_itens[x]);
   if not FSubstituirCorpo(Procurar,Substituir) then
      break;
   end;





mDel:='|';
//mDel:=' ';


mItens_filtro:='';
mVirg:='';
x:=wordDoc.Bookmarks.Count;
for y:=1 to x do
   begin
   mItembook:=y;
   mItens_filtro:=mItens_filtro+mVirg+QuotedStr(string(WordDoc.Bookmarks.Item(mItembook).Name));
   mVirg:=',';
   end;
if trim(mItens_filtro)='' then
   begin
   FreeAndNil(Form_Agde);
   result:=true;
   exit;
   end;





query_totais:=TQuery.Create(nil);
query_totais.DatabaseName:='SG_ASSOC';

query_totais.Close;
query_totais.SQL.Clear;
query_totais.SQL.Add('select COUNT(*) AS LC_QTDITENS,SUM(LC2_QTD) AS LC_QTD_UND, '
                    +' sum(LC2_QTD*LC2_PCOAV) AS LC_TOTVLR_AV, '
                    +' sum(LC2_QTD*LC2_PCOPZ) AS LC_TOTVLR_AP '
                    +' from CADLC2 '
                    +' where LC2_CODEMP=:CODEMP and LC2_CHAVE=:CHAVE ');
query_totais.Params.ParamByName('CODEMP').AsInteger:=Tb_Lc1LC1_CODEMP.AsInteger;
query_totais.Params.ParamByName('CHAVE').AsFloat:=Tb_Lc1LC1_CHAVE.AsFloat;


try
   query_totais.Open;
except
   query_totais.SQL.SaveToFile(mpastatemp +'sql_TOTAIS.txt');
   end;


Query_Grade_02:=TQuery.Create(nil);
Query_Grade_02.DatabaseName:='SG_ASSOC';
Query_Grade_02_Res:=TQuery.Create(nil);
Query_Grade_02_Res.DatabaseName:='SG_ASSOC';

Query_Grade_01:=TQuery.Create(nil);
Query_Grade_01.DatabaseName:='SG_ASSOC';

Query_Grade_01.SQL.Clear;
Query_Grade_01.SQL.Add('Select * FROM CADDWORD_TAB01 where DW01_CODEMP='+IntTostr(codemp));
Query_Grade_01.open;
mGrade:=TStringList.Create;
mGridMesclar:=TStringList.Create;
mGridMesclar.Clear;
pLinhaItem  :=1;

mGrade.Clear;
mGridFundo:=TStringList.Create;
mGridAlinha:=TStringlist.Create;


//mGridFundo: TStrings;

While not Query_Grade_01.Eof do
   begin
   mGridMesclar.Clear;

   pLinhaItem :=1;

   mGrade.Clear;
   mGridFundo.Clear;
   mGridAlinha.Clear;
   mGrid_Linha:=0;
   mGrid_Coluna:=0;
   mTamColunas:='';
   mPegouTamCol:=false;

   Query_Grade_02_res.Close;
   Query_Grade_02_res.SQL.clear;
   Query_Grade_02_res.SQL.add('Select DW02_POSICAO FROM CADDWORD_TAB02 where '
                     +' DW02_CODEMP=:CODEMP '
                     +' and DW02_NOMREL = :NOMREL '
                     +' and DW02_NOMGRADE = :NOMGRADE '
                     +' group by DW02_POSICAO ORDER BY DW02_POSICAO ' );
   Query_Grade_02_res.ParamByName('CODEMP').AsInteger   :=Query_Grade_01.fieldbyName('DW01_CODEMP').AsInteger;
   Query_Grade_02_res.ParamByName('NOMREL').AsString    :=Query_Grade_01.fieldbyName('DW01_NOMREL').AsString;
   Query_Grade_02_res.ParamByName('NOMGRADE').AsString :=Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString;
   Query_Grade_02_res.Open;
   While not Query_Grade_02_res.Eof do
      begin
      Query_Grade_02.SQL.Clear;
      Query_Grade_02.SQL.Add('Select * FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL = :NOMREL '
                            +' and DW02_NOMGRADE = :NOMGRADE '
                            +' and DW02_POSICAO = :POSICAO '
                            +' ORDER BY DW02_NOMREL,DW02_POSICAO,DW02_COLUNA ' );
      Query_Grade_02.ParamByName('CODEMP').AsInteger:=Query_Grade_01.fieldbyName('DW01_CODEMP').AsInteger;
      Query_Grade_02.ParamByName('NOMREL').AsString :=Query_Grade_01.fieldbyName('DW01_NOMREL').AsString;
      Query_Grade_02.ParamByName('NOMGRADE').AsString :=Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString;
      Query_Grade_02.ParamByName('POSICAO').AsString :=Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString;
      Query_Grade_02.open;

      if copy(Query_Grade_02_res.fieldbyName('DW02_POSICAO').AsString,1,3)<>'DET' then
         begin
         mLinha_Dados:='';
         Query_Grade_02.First;
         mGrid_Linha:=mGrid_Linha+1;


         mGrid_Coluna:=0;
//         mTamColunas:='';

         While not Query_Grade_02.Eof do
            begin
            mGrid_Coluna:=mGrid_Coluna+1;
            if not mPegouTamCol then
               mTamColunas:=mTamColunas+Query_Grade_02.FieldByName('DW02_TAMANHO').AsString+'|';
            if Query_Grade_02.FieldByName('DW02_FUNDO').AsInteger=1 then
               mGridFundo.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna) );
            mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna)+'|'+
            Query_Grade_02.FieldByName('DW02_ALINHAMENTO').AsString);
            if Query_Grade_02.FieldByName('DW02_TIPOCAMPO').AsInteger=1 then
               begin
// inicio
               if trim(Query_Grade_02.FieldByName('DW02_FORMATO').AsString)<>'' then
                  begin
                  if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=1 then
                     begin
                     try
                        mLinha_Dados:=mLinha_Dados+
                        FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                        query_totais.FieldbyName(
                        Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsInteger)+mDel;
                     except on e : exception do
                        mErrosOCorrencia.add('Nome Grade '+Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString
                                            +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                            +' Erro '+e.message);
                        end;

                     end
                  else if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=2 then
                     begin
                     try
                        mLinha_Dados:=mLinha_Dados+
                        FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                        query_totais.FieldbyName(
                        Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsFloat)+mDel;
                     except on e : exception do
                        mErrosOCorrencia.add('Nome Grade '+Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString
                                            +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                            +' Erro '+e.message);
                        end;

                     end
                  else if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=3 then
                     begin
                     try
                        mLinha_Dados:=mLinha_Dados+
                        FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                        query_totais.FieldbyName(
                        Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsDateTime)+mDel;
                     except on e : exception do
                        mErrosOCorrencia.add('Nome Grade '+Query_Grade_01.fieldbyName('DW01_NOMREL').AsString
                                            +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                            +' Erro '+e.message);
                        end;

                     end
                  else
                     begin
                     try
                        mLinha_Dados:=mLinha_Dados+
                        trim( query_totais.FieldbyName(
                        Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsString)+mDel;
                     except on e : exception do
                        mErrosOCorrencia.add('Nome Grade '+Query_Grade_01.fieldbyName('DW01_NOMREL').AsString
                                            +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                            +' Erro '+e.message);
                        end;

                     end;
                  end
               else
                  begin
                  try
                     mLinha_Dados:=mLinha_Dados+
                     trim(query_totais.FieldbyName(
                     Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsString) +mDel;
                   except on e : exception do
                      mErrosOCorrencia.add('Nome Grade '+Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString
                                            +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                            +' Erro '+e.message);
                     end;

                  end;
               end
            else
               begin
               mLinha_Dados:=mLinha_Dados+trim(Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString)+mDel;;
               end;
            Query_Grade_02.Next;
            end;
         mPegouTamCol:=true;
         Query_Grade_02.First;
         if Query_Grade_02.fieldbyName('DW02_MESCLAR_INI').AsInteger>0 then
            begin
            mGridMesclar.Add(IntTosTr(pLinhaItem)+'|'+Query_Grade_02.fieldbyName('DW02_MESCLAR_INI').AsString
                           +'|'+Query_Grade_02.fieldbyName('DW02_MESCLAR_FIN').AsString
                           +'|'+Query_Grade_02.fieldbyName('DW02_POSICAO').AsString)
                           ;
            end;
         pLinhaItem :=pLinhaItem+1;



         mGrade.Add(mLinha_Dados);
         Query_Grade_02_res.Next;
         Continue;
         end;

      if copy(Query_Grade_02_res.fieldbyName('DW02_POSICAO').AsString,1,6)<>'DET_VC' then
         begin
         Qr_Lic02.First;
         While not Qr_Lic02.eof do
            begin
            mLinha_Dados:='';
            mGrid_Linha:=mGrid_Linha+1;
            mGrid_Coluna:=0;
            Query_Grade_02.First;
            While not Query_Grade_02.Eof do
               begin
               mGrid_Coluna:=mGrid_Coluna+1;
               if not mPegouTamCol then
                  mTamColunas:=mTamColunas+Query_Grade_02.FieldByName('DW02_TAMANHO').AsString+'|';

               if Query_Grade_02.FieldByName('DW02_FUNDO').AsInteger=1 then
                  mGridFundo.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna) );
               mGridAlinha.Add(IntTosTr(mGrid_Linha)+'|'+IntToStr(mGrid_Coluna)+'|'+
               Query_Grade_02.FieldByName('DW02_ALINHAMENTO').AsString);

               try
                  if (Query_Grade_02.FieldByName('DW02_TIPOCAMPO').AsInteger=1)
                     and (trim(Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').asstring)<>'')    then
                     begin
                     if Query_Grade_02.FieldByName('DW02_TIPOCAMPO').AsInteger=1 then
                        begin
                        if trim(Query_Grade_02.FieldByName('DW02_FORMATO').AsString)<>'' then
                           begin
                           if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=1 then
                              begin
                              mLinha_Dados:=mLinha_Dados+
                              FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                              Qr_Lic02.FieldbyName(
                              Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsInteger)+mDel;
                              end
                           else if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=2 then
                              begin
                              mLinha_Dados:=mLinha_Dados+
                              FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                              Qr_Lic02.FieldbyName(
                              Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsFloat)+mDel;
                              end
                           else if Query_Grade_02.FieldByName('DW02_DATATYPE').AsInteger=3 then
                              begin
                              mLinha_Dados:=mLinha_Dados+
                              FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                              Qr_Lic02.FieldbyName(
                              Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsDateTime)+mDel;
                              end
                           else
                              begin
                              mLinha_Dados:=mLinha_Dados+
                              FormatFloat(Query_Grade_02.FieldByName('DW02_FORMATO').AsString,
                              Qr_Lic02.FieldbyName(
                              Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString).AsFloat)+mDel;
                              end;

                           end
                        else
                           begin
                           mLinha_Dados:=mLinha_Dados
                             +trim(
                             Qr_Lic02.FieldbyName(
                              Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString
                                                 ).AsString
                               )                  +'|';
                           end;
                        end
                     else
                        begin
                        mLinha_Dados:=mLinha_Dados+trim(Query_Grade_02.FieldByName('DW02_CAMPOOUTEXTO').AsString)+'|';
                        end;
                     end;
               except on e : exception do
                  mErrosOCorrencia.add('Nome Rel '+Query_Grade_01.fieldbyName('DW01_NOMREL').AsString
                                        +' Posicao: '+Query_Grade_02_RES.fieldbyName('DW02_POSICAO').AsString
                                           +' Erro '+e.message);
                  end;
               Query_Grade_02.Next;
               end;
            mPegouTamCol:=true;
            Query_Grade_02.First;
            if Query_Grade_02.fieldbyName('DW02_MESCLAR_INI').AsInteger>0 then
               begin
               mGridMesclar.Add(IntTosTr(pLinhaItem)+'|'+Query_Grade_02.fieldbyName('DW02_MESCLAR_INI').AsString
                              +'|'+Query_Grade_02.fieldbyName('DW02_MESCLAR_FIN').AsString
                              +'|'+Query_Grade_02.fieldbyName('DW02_POSICAO').AsString)
                              ;

               end;
            pLinhaItem :=pLinhaItem+1;

            mGrade.Add(mLinha_Dados);
            Qr_Lic02.Next;
            end;
         end;

      Query_Grade_02_res.Next;
      end;

   if Query_Grade_01.fieldbyName('DW01_TAMCOLAUT0').AsInteger=0 then
      mTamColunas:='';
   Query_Grade_02_res.First;

   mGrade[mgrade.Count-1]:=copy(mgrade[mgrade.count-1],1,length(mgrade[mgrade.count-1])-1);
   if fIncluirGrade(Query_Grade_01.fieldbyName('DW01_NOMGRADE').AsString,mTamColunas, mGrade,
   Query_Grade_01.fieldbyName('DW01_TAMANHO').AsInteger,
   Query_Grade_01.fieldbyName('DW01_QTDCOL').AsInteger,1,
   Query_Grade_01.fieldbyName('DW01_QTDLINCAB').AsInteger
   ,mGridFundo,mGridAlinha,mGridMesclar) then
   mGridMesclar.Clear;



   Query_Grade_01.Next;
   end;

fImagem02('imagem');

//fIncluirImagem('LDC',mGrade);


if mErrosOCorrencia.Count>0 then
   MessageDlg('Erros: '+mErrosOCorrencia.Text,mtError,[mbOk],0);
FreeAndNil(mErrosOCorrencia);

    FileFormat := wdFormatPDF;
//DocOrigem:='c:\dovnovo.pdf';
//WordApp.Documents.Save(DocOrigem,emptyparam);
// .SaveAs2000(DocOrigem,  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

//WordDoc.SaveAs2000(DocOrigem,  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//WordDoc.SaveAs2000(DocOrigem,  FileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);

//WordDoc.SaveAs2000('c:\docnovo',  FileFormat, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
//WordDoc.SaveAs2000('c:\docnovo', EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);




//mVariant: OleVariant;

FreeAndNil(mGridFundo);
FreeAndNil(mGridAlinha);
FreeAndNil(Ado_Cadop);
FreeAndNil(Query_Grade_02);
FreeAndNil(Query_Grade_02_res);
FreeAndNil(Query_Grade_01);

mNomeArq:='c:\sge\temp\ORCAMENTO'+Qr_Lic02LC2_CHAVE.AsString+'.pdf';
SaveAsPdf(WordDoc ,mNomeArq);

SaveChanges := False;
WordApp.Quit(SaveChanges, EmptyParam, EmptyParam);
WordApp := nil;
FreeAndNil(Form_Agde);


ShellExecute(handle, 'open', pchar(mNomeArq), nil, nil, SW_SHOWNORMAL);

result:=true;
end;

{
procedure Tfrm_lic2.SaveAsPdf(ADocument: WordDocument; const AFileName: string);
var
  FileName,
  FileFormat : OleVariant;
begin
  if Assigned(ADocument) then
  begin
    FileName := AFileName;
    FileFormat := wdFormatPDF;
    ADocument.SaveAs(FileName, FileFormat, EmptyParam, EmptyParam, EmptyParam,
                     EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                     EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                     EmptyParam);
  end;
end;
}


function TFrm_Lic2.LoadFile(const AFileName: string): WordDocument;
var
  FileName: OleVariant;
  Doc : WordDocument;
begin
  if not Assigned(FWordApp) then
    InitializeApp;

  FileName := AFileName;
//    Doc := FWordApp.Documents.Open( (FileName, EmptyParam, EmptyParam, EmptyParam,

  Doc := FWordApp.Documents.Open(FileName, EmptyParam, EmptyParam, EmptyParam,
                                 EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                 EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                ); //, EmptyParam);
  Result := Doc;
end;



procedure  TFrm_Lic2.InitializeApp;
begin
  FWordApp := createOleObject('Word.Application') as WordApplication;
  if Assigned(FWordApp) then
  begin
    FWordApp.Visible := False;
  end
  else
    raise Exception.Create('Cannot initialize Word application');
end;
function TFrm_Lic2.fBuscarValorLegenda(pItemLegenda: String): String;
begin
if Tb_Lc1LC1_CODCLI.AsFloat>0 then
   begin
   if  (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.AsFloat<>Tb_Lc1LC1_CODCLI.AsFloat) then
      flcadcli(1,0,Tb_Lc1LC1_CODCLI.AsString);
   end;


if pItemLegenda='%datalic%' then
   result:=FormatDatetime(fdt2, Tb_Lc1LC1_DTEMIS.Value)
else if pItemLegenda='%chavelic%' then
   result:=FormatFloat('000000', Tb_Lc1LC1_CHAVE.AsFloat)
else if pItemLegenda='%razaosoc%' then
   result:=Tb_Lc1LC1_NOMCLI.AsString
else if pItemLegenda='%fantasia%' then
   begin
   if Tb_Lc1LC1_CODCLI.AsFloat=0 then
      result:=''
   else
      begin
      result:=DM1.Tb_CliCDENOM.AsString;
      end;
   end
else if pItemLegenda='%endereco%' then
   result:=Tb_Lc1LC1_ENDER.AsString
else if pItemLegenda='%bairro%' then
   result:=Tb_Lc1LC1_BAIRRO.AsString
else if pItemLegenda='%cidade%' then
   result:=Tb_Lc1LC1_NOMLOC.AsString
else if pItemLegenda='%uf%' then
   result:=Tb_Lc1LC1_UF.AsString
else if pItemLegenda='%observacao%' then
   result:=Tb_Lc1LC1_OBS1.AsString+' '+Tb_Lc1LC1_OBS2.AsString
else if pItemLegenda='%codcli%' then
   result:=Tb_Lc1LC1_CODCLI.AsString
else if pItemLegenda='%codven%' then
   result:=Tb_Lc1LC1_CODVEN.AsString
else if pItemLegenda='%nomven%' then
   result:=Tb_Lc1nomven.AsString
else if pItemLegenda='%telefone%' then
   result:=Tb_Lc1LC1_FONE.AsString
else if pItemLegenda='%orgao%' then
   result:=Tb_Lc1LC1_AOSCUI.AsString
else if pItemLegenda='%valproposta%' then
   result:=Tb_Lc1LC1_VALPRO.AsString
else if pItemLegenda='%condpag%' then
   result:=Tb_Lc1LC1_CONDPAG.AsString
else if pItemLegenda='%modalidade%' then
   result:=Tb_Lc1LC1_OBJETO.AsString
else if pItemLegenda='%numcarconv%' then
   result:=Tb_Lc1LC1_CARCON.AsString
else if pItemLegenda='%dtabert%' then
   begin
   if Tb_Lc1LC1_DATCON.AsDateTime>pdatanula then
      result:=FormatDateTime(fdt2, Tb_Lc1LC1_DATCON.AsDateTime)
   else
      result:='  /  /    ';
   end
else if pItemLegenda='%horaabert%' then
   begin
   if valint(FormatDateTime(fhr, Tb_LC1LC1_DATCON.AsDateTime))=0 then
      result:='  :  :  '
   else
      result:=FormatDateTime(fhr,  Tb_LC1LC1_DATCON.AsDateTime);
   end
else if pItemLegenda='%obslin01%' then
   result:=Tb_Lc1LC1_OBS1.AsString
else if pItemLegenda='%obslin02%' then
   result:=Tb_Lc1LC1_OBS2.AsString
else if pItemLegenda='%propon01%' then
   result:=Tb_Lc1LC1_PROPL01.AsString
else if pItemLegenda='%propon02%' then
   result:=Tb_Lc1LC1_PROPL02.AsString
else if pItemLegenda='%przent01%' then
   result:=Tb_Lc1LC1_PRZENT1.AsString
else if pItemLegenda='%przent02%' then
   result:=Tb_Lc1LC1_PRZENT2.AsString
else if pItemLegenda='%przent03%' then
   result:=Tb_Lc1LC1_PRZENT3.AsString
else if pItemLegenda='%email%' then
   result:=Tb_Lc1LC1_EMAIL.AsString
else if pItemLegenda='%declin01%' then
   result:=Tb_Lc1LC1_DEC01.AsString
else if pItemLegenda='%declin02%' then
   result:=Tb_Lc1LC1_DEC02.AsString
else if pItemLegenda='%declin03%' then
   result:=Tb_Lc1LC1_DEC03.AsString
else if pItemLegenda='%declin04%' then
   result:=Tb_Lc1LC1_DEC04.AsString
else if pItemLegenda='%declin05%' then
   result:=Tb_Lc1LC1_DEC05.AsString
else if pItemLegenda='%declin06%' then
   result:=Tb_Lc1LC1_DEC06.AsString
else if pItemLegenda='%declin07%' then
   result:=Tb_Lc1LC1_DEC07.AsString
else if pItemLegenda='%declin08%' then
   result:=Tb_Lc1LC1_DEC08.AsString
else if pItemLegenda='%declin09%' then
   result:=Tb_Lc1LC1_DEC09.AsString
else if pItemLegenda='%declin10%' then
   result:=Tb_Lc1LC1_DEC10.AsString
else if pItemLegenda='%cnpj_cli%' then
   result:=FormatFloat(pDFCNPJ, DM1.Tb_CliCCNPJ.AsFloat)
else if pItemLegenda='%cepcli%' then
   result:=DM1.Tb_CliCCPF.AsString
else if pItemLegenda='%contato%' then
   result:=DM1.Tb_CliCNOMCON.AsString
else if pItemLegenda='%fone_contato%' then
   result:=DM1.Tb_CliCFONCON.AsString
else if pItemLegenda='%iecli%' then
   result:=DM1.Tb_CliCIE.AsString
else
   result:='';
end;


function TFrm_Lic2.FSubstituirRodape(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;


begin
result:=true;
try

   HdrRange :=
   WordDoc.Sections.Item(psecao).Footers.Item(wdHeaderFooterPrimary).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;

   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;
end;


function TFrm_Lic2.FSubstituirCabecalho(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;

begin
result:=true;
try
   HdrRange :=
   WordDoc.Sections.Item(psecao).Headers.Item(wdHeaderFooterPrimary).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;
   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;
end;

function TFrm_Lic2.FSubstituirCabecalho_PrimPag(pSecao: Integer; pAchar,pSubstituir: Olevariant):Boolean;
var
All,Replace,Wrap: OleVariant;
HdrRange: Range;

begin
result:=true;
try
   HdrRange :=
   WordDoc.Sections.Item(psecao).Headers.Item(wdHeaderFooterFirstPage).Range;
   Wrap := wdFindContinue;
   Replace := wdReplaceAll;
   All:=wdReplaceAll;
   HdrRange.Find.Execute(pAchar,                        //01
                       EmptyParam,                      //02
                       EmptyParam,                      //03
                       EmptyParam,                      //04
                       EmptyParam,                      //05
                       EmptyParam,                      //06
                       EmptyParam,                      //06
                       Wrap,                      //08
                       EmptyParam,                      //09
                       pSubstituir,      //  EmptyParam,                      //10

                       replace,                      //10
                       EmptyParam,                      //13
 //                      Substituir,                      //11
                       EmptyParam,                      //13
 //                       all,                             //12
                      EmptyParam,                      //13
//                       EmptyParam,                      //13
                       EmptyParam                               );                     //16
except
   result:=false;
   end;


{
01-FindText	Optional	Variant	The text to be searched for. Use an empty string ("") to search for formatting only. You can search for special characters by specifying appropriate character codes. For example, "^p" corresponds to a paragraph mark and "^t" corresponds to a tab character.
02-MatchCase	Optional	Variant	True to specify that the find text be case sensitive. Corresponds to the Match case check box in the Find and Replace dialog box (Edit menu).
03-MatchWholeWord	Optional	Variant	True to have the find operation locate only entire words, not text that is part of a larger word. Corresponds to the Find whole words only check box in the Find and Replace dialog box.
04-MatchWildcards	Optional	Variant	True to have the find text be a special search operator. Corresponds to the Use wildcards check box in the Find and Replace dialog box.
05-MatchSoundsLike	Optional	Variant	True to have the find operation locate words that sound similar to the find text. Corresponds to the Sounds like check box in the Find and Replace dialog box.
06-MatchAllWordForms	Optional	Variant	True to have the find operation locate all forms of the find text (for example, "sit" locates "sitting" and "sat"). Corresponds to the Find all word forms check box in the Find and Replace dialog box.
07-Forward	Optional	Variant	True to search forward (toward the end of the document).
08-Wrap	Optional	Variant	Controls what happens if the search begins at a point other than the beginning of the document and the end of the document is reached (or vice versa if Forward is set to False). This argument also controls what happens if there is a selection or range and the search text is not found in the selection or range. Can be one of the WdFindWrap constants.
09-Format	Optional	Variant	True to have the find operation locate formatting in addition to, or instead of, the find text.
10-ReplaceWith	Optional	Variant	The replacement text. To delete the text specified by the Find argument, use an empty string (""). You specify special characters and advanced search criteria just as you do for the Find argument. To specify a graphic object or other nontext item as the replacement, move the item to the Clipboard and specify "^c" for ReplaceWith.
11-Replace	Optional	Variant	Specifies how many replacements are to be made: one, all, or none. Can be any WdReplace constant.
12-MatchKashida	Optional	Variant	True if find operations match text with matching kashidas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
13-MatchDiacritics	Optional	Variant	True if find operations match text with matching diacritics in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
14-MatchAlefHamza	Optional	Variant	True if find operations match text with matching alef hamzas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
15-MatchControl	Optional	Variant	True if find operations match text with matching bidirectional control characters in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
16-MatchPrefix	Optional	Variant	True to match words beginning with the search string. Corresponds to the Match prefix check box in the Find and Replace dialog box.
17-MatchSuffix	Optional	Variant	True to match words ending with the search string. Corresponds to the Match suffix check box in the Find and Replace dialog box.
18-MatchPhrase	Optional	Variant	True ignores all white space and control characters between words.
19-IgnoreSpace	Optional	Variant	True ignores all white space between words. Corresponds to the Ignore white-space characters check box in the Find and Replace dialog box.
20-IgnorePunct	Optional	Variant	True ignores all punctuation characters between words. Corresponds to the Ignore punctuation check box in the Find and Replace dialog box.
}

{
meters
Name	Required/Optional	Data Type	Description
FindText	Optional	Variant	The text to be searched for. Use an empty string ("") to search for formatting only. You can search for special characters by specifying appropriate character codes. For example, "^p" corresponds to a paragraph mark and "^t" corresponds to a tab character.
MatchCase	Optional	Variant	True to specify that the find text be case sensitive. Corresponds to the Match case check box in the Find and Replace dialog box (Edit menu).
MatchWholeWord	Optional	Variant	True to have the find operation locate only entire words, not text that is part of a larger word. Corresponds to the Find whole words only check box in the Find and Replace dialog box.
MatchWildcards	Optional	Variant	True to have the find text be a special search operator. Corresponds to the Use wildcards check box in the Find and Replace dialog box.
MatchSoundsLike	Optional	Variant	True to have the find operation locate words that sound similar to the find text. Corresponds to the Sounds like check box in the Find and Replace dialog box.
MatchAllWordForms	Optional	Variant	True to have the find operation locate all forms of the find text (for example, "sit" locates "sitting" and "sat"). Corresponds to the Find all word forms check box in the Find and Replace dialog box.
Forward	Optional	Variant	True to search forward (toward the end of the document).
Wrap	Optional	Variant	Controls what happens if the search begins at a point other than the beginning of the document and the end of the document is reached (or vice versa if Forward is set to False). This argument also controls what happens if there is a selection or range and the search text is not found in the selection or range. Can be one of the WdFindWrap constants.
Format	Optional	Variant	True to have the find operation locate formatting in addition to, or instead of, the find text.
ReplaceWith	Optional	Variant	The replacement text. To delete the text specified by the Find argument, use an empty string (""). You specify special characters and advanced search criteria just as you do for the Find argument. To specify a graphic object or other nontext item as the replacement, move the item to the Clipboard and specify "^c" for ReplaceWith.
Replace	Optional	Variant	Specifies how many replacements are to be made: one, all, or none. Can be any WdReplace constant.
MatchKashida	Optional	Variant	True if find operations match text with matching kashidas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchDiacritics	Optional	Variant	True if find operations match text with matching diacritics in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchAlefHamza	Optional	Variant	True if find operations match text with matching alef hamzas in an Arabic-language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchControl	Optional	Variant	True if find operations match text with matching bidirectional control characters in a right-to-left language document. This argument may not be available to you, depending on the language support (U.S. English, for example) that you have selected or installed.
MatchPrefix	Optional	Variant	True to match words beginning with the search string. Corresponds to the Match prefix check box in the Find and Replace dialog box.
MatchSuffix	Optional	Variant	True to match words ending with the search string. Corresponds to the Match suffix check box in the Find and Replace dialog box.
MatchPhrase	Optional	Variant	True ignores all white space and control characters between words.
IgnoreSpace	Optional	Variant	True ignores all white space between words. Corresponds to the Ignore white-space characters check box in the Find and Replace dialog box.
IgnorePunct	Optional	Variant	True ignores all punctuation characters between words. Corresponds to the Ignore punctuation check box in the Find and Replace dialog box.
}
end;

function TFrm_Lic2.fSubstituirCorpo(pAchar,pSubstituir: Olevariant):Boolean ;
var
All, SubsTodos : OleVariant;
begin
result:=true;
try
SubsTodos:=true;


    WordDoc.Content.Find.ClearFormatting;


    WordDoc.Content.Find.Text:=pAchar;

    WordDoc.Content.Find.Replacement.Text := pSubstituir;
//    WordDoc.Content.Find.Forward := True;
    WordDoc.Content.Find.MatchAllWordForms := False;
    WordDoc.Content.Find.MatchCase := True;
    WordDoc.Content.Find.MatchWildcards := False;
    WordDoc.Content.Find.MatchSoundsLike := False;
    WordDoc.Content.Find.MatchWholeWord := False;
    WordDoc.Content.Find.MatchFuzzy := False;
    WordDoc.Content.Find.Wrap := wdFindContinue;
    WordDoc.Content.Find.Format := False;
    WordDoc.Content.Find.Format := true;
    { Perform the search}
    All:=wdReplaceAll;


        WordDoc.Content.Find.Execute(pAchar
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,SubsTodos
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,pSubstituir
                                      ,All
                                      ,EmptyParam
//                                      ,SubsTodos é essa
                                      ,EmptyParam
                                      ,EmptyParam
                                      ,EmptyParam
                                      );

except
   result:=false;
   end;
end;


function TFrm_Lic2.fIncluirGrade(pBookMark,pTamColunas: String; pGrade:TStrings;pTamCol,pQtdCol,pItem,pLinhaFixa: Integer;pFundo,pAlinhamento,pMesClar: TStrings): Boolean;

var
NumCols, Autofit: OleVariant;

Separator,tBNm,Formato,Direction: OleVariant;
y,x: Integer;
R: Range;
y_grade,x_grade: Integer;

mItem: Integer;
mTamcolIni: OleVariant;
mBookExist: TStrings;
mNomeTag: String;
begin
mBookExist:=TStringList.Create;
mBookExist.Clear;
Direction := wdCollapseEnd;

x_grade:=wordDoc.Bookmarks.Count;

for y:=1 to x_grade do
   begin
   mTamcolIni:=y;

//   WordDoc.Bookmarks.Item(y).Name;
   mBookExist.Add(string(WordDoc.Bookmarks.Item(mTamcolIni).Name));
//   mcinst2:=nome;
//   mcinst:=mcinst+IntTostr(y)+'('+mcinst2+') ';
   end;

{
//ShowMessage(inttoStr(wordDoc.Bookmarks.Count)+' Nomes : '+mcinst);
}

for y_grade:=0 to x_grade-1 do
   begin
   mNomeTag:=mBookExist[y_grade];
   if not fValidarTag(pBookMark,mNomeTag) then
      continue;

   TBNm:=mNomeTag;
   try
      R := WordDoc.Bookmarks.Item(TBNm).Range;
   except
      result:=false;
      exit;
      end;
   if R=nil then
      begin
      result:=false;
      exit;
      end;
   R.Collapse(Direction);
   for x:=0 to pGrade.Count-1 do
      begin
      R.InsertAfter(pGrade[x]);

      end;



   Separator := '|';


   NumCols := pQtdcol;
   Autofit := true;
   if ptamcol<40 then
      mTamcolIni:=40
   else
      mTamcolIni:=pTamCol;
   Formato := wdTableFormatGrid1;

   R.ConvertToTableOld(Separator, EmptyParam, NumCols,
   mTamColIni, Formato, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, Autofit);
//   mNumero_Tabela:=mNumero_Tabela+1;




//      r.Columns.Item(2).SetWidth(50, wdAdjustNone);
      { Change borders }

//      r.Rows.First.Borders.Item(wdBorderBottom).LineStyle :=
//      wdLineStyleDouble;

   mItem:=pFundo.Count;
   for x:=1 to mItem do
      begin
      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
                            valint(fBuscarValor(1,pfundo[x-1]))
                            ).Shading.Texture := wdTexture20Percent;

{      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
                            valint(fBuscarValor(1,pfundo[x-1]))
                            ).Shading.Texture := wdTexture5Percent;
}
      end;


   mItem:=pAlinhamento.Count;
   for x:=1 to mItem do
      begin
      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pAlinhamento[x-1])),
                            valint(fBuscarValor(1,pAlinhamento[x-1]))
                            ).Range.ParagraphFormat.Alignment:= valint(fBuscarValor(2,pAlinhamento[x-1]));

      end;
//   R.Tables.Item(1).MergeCells;

//  R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,pQtdCol));
{
 Tbl := Doc.Tables.Add(R, 3, 6, EmptyParam, EmptyParam);
  Tbl.Cell(1, 1).Merge(Tbl.Cell(1, 5));
  Tbl.Cell(2, 1).Merge(Tbl.Cell(3, 2));
}

      if fsonumero(pTamColunas)>0 then
         begin
         for x:=1 to pQtdCol do
            begin
            if valint(fBuscarValor(x-1,pTamColunas))>0 then
               r.Tables.Item(1).Columns.Item(x).Width:=valint(fBuscarValor(x-1,pTamColunas));
            end;
         end;
   end;
{
ShowMessage(pMesClar.Text+#13
           +'valor 0 '+fBuscarValor(0,pMesClar[0])+#13
           +'valor 1 '+fBuscarValor(1,pMesClar[0])+#13
           +'valor 2 '+fBuscarValor(2,pMesClar[0])+#13
           +'valor 3 '+fBuscarValor(3,pMesClar[0])
             );
}
if R=nil then
   result:=false
else
   begin
   result:=true;
   for x:=0 to pMesClar.Count-1 do
      begin
      if ValInt(pMesClar[x])>0 then
         begin
           R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(2,pMesClar[x]))));
         end;
      end;
    end;

{
if pMesclar_Ini>0 then
//      R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,5))
      R.Tables.Item(1).Cell(2,pMesclar_Ini).Merge(R.Tables.Item(1).Cell(2,pMesclar_Fin));
//   else
//      begin
}
end;

// IMAGENS




function TFrm_Lic2.fImagem02(pBookMark: String): Boolean;

var


tBNm,Formato,Direction: OleVariant;
y,x: Integer;
R: Range;
y_grade,x_grade: Integer;

mItem: Integer;
mTamcolIni: OleVariant;
mBookExist: TStrings;
mNomeTag: String;
Shape:InlineShape;

msoTrue,FileName:OleVariant;
LinkToFile:OleVariant;
SaveWithDocument:OleVariant;

Query_Pro: tQuery;
Query_foto: tAdoquery;
mCodGru_Ant: Real;
mRelRTF: String;

begin
mBookExist:=TStringList.Create;
mBookExist.Clear;
Direction := wdCollapseEnd;

LinkToFile:= False;
LinkToFile:= True;


x_grade:=wordDoc.Bookmarks.Count;

for y:=1 to x_grade do
   begin
   mTamcolIni:=y;
   mBookExist.Add(string(WordDoc.Bookmarks.Item(mTamcolIni).Name));
   end;
mCodGru_Ant:=-1;

Query_Pro := tQuery.Create(nil);
Query_Pro.DatabaseName:='SG_ASSOC';
Query_foto:= tAdoquery.Create(nil);
Query_foto.Connection:=DM1_ADO.ADOConnection1;

for y_grade:=0 to x_grade-1 do
   begin
   mNomeTag:=mBookExist[y_grade];
   if not fValidarTag(pBookMark,mNomeTag) then
      continue;
   TBNm:=mNomeTag;
   try
      R := WordDoc.Bookmarks.Item(TBNm).Range;
   except
      result:=false;
      exit;
      end;
   if R=nil then
      begin
      result:=false;
      exit;
      end;
   R.Collapse(Direction);
// inicio

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'LC2_CODEMP','PDCODPRO' ,'LC2_CODPRO');



   Query_Pro.Close;
   Query_Pro.Sql.clear;
   Query_Pro.Sql.add('SELECT LC2_CODPRO,PDCODGRU,LC2_NOM01 from CADLC2 '+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                    +' LC2_CODEMP=:CODEMP '
                                    +' and LC2_CHAVE=:CHAVE '
                                    +' ORDER BY PDCODGRU DESC, LC2_NOM01 DESC ');

    Query_Pro.ParamByName('CODEMP').Value:=codemp;
    Query_Pro.ParamByName('CHAVE').Value :=Qr_Lic02LC2_CHAVE.AsFloat;
    try
       Query_Pro.Open;
    except
       Query_Pro.sql.savetofile(mpastatemp +'sqlfoto.txt');
       end;
    While not Query_Pro.Eof do
       begin
// foto do produto
       Query_foto.close;
       Query_foto.SQL.clear;
       Query_foto.SQL.Add('SELECT CF_CODPRO,CF_FOTO,CF_ORDEM FROM CADFPRO '
                         +' where CF_CODEMP=:CODEMP '
                         +' and CF_CODPRO=:CODPRO and not CF_FOTO is null'
                         +' order by CF_ORDEM desc ');
       Query_foto.Parameters.ParamByName('CODEMP').Value:=Qr_Lic02LC2_CODEMP.AsFloat;
       Query_foto.Parameters.ParamByName('CODPRO').Value:=Query_Pro.fieldbyName('LC2_CODPRO').AsFloat;
       try
          Query_foto.Open;
       except
          Query_foto.sql.savetofile(mpastatemp +'sqlfoto.txt');
          end;
       While not Query_foto.Eof do
          begin
          (Query_foto.FieldByName('CF_FOTO') as TBlobField).SaveToFile('c:\img01.jpg');
          FileName:='c:\img01.jpg';
          Shape := R.InlineShapes.AddPicture(
              FileName, LinkToFile, SaveWithDocument,
               EmptyParam);
          With Shape Do
             Begin
             msoTrue:=true;
             LockAspectRatio := msoTrue;
             Height := Height * 0.5;
             Width := Width * 0.5;
             End;
          Query_foto.Next;
          end;
// texto do produto
      mRelRTF:=fAbrirTexto(0,Qr_Lic02LC2_CODEMP.AsFloat,Query_Pro.fieldbyName('LC2_CODPRO').AsFloat);
      if trim(mRelRTF)<>'' then
         begin
         FileName:=mRelRTF;
         R.InsertFile(
         FileName, EmptyParam, EmptyParam,
          EmptyParam,EmptyParam);
         deletefile(mRelRTF);
         end;
// texto do grupo
      if Query_Pro.fieldbyName('PDCODGRU').AsFloat<>0 then
         begin
         if Query_Pro.fieldbyName('PDCODGRU').AsInteger<>mCodGru_Ant then
            begin
            mRelRTF:=fAbrirTexto(1,Qr_Lic02LC2_CODEMP.AsFloat,Query_Pro.fieldbyName('PDCODGRU').AsFloat);
            mCodGru_Ant:=Query_Pro.fieldbyName('PDCODGRU').AsInteger;
            if trim(mRelRTF)<>'' then
               begin
               FileName:=mRelRTF;
               R.InsertFile(
               FileName, EmptyParam, EmptyParam,
               EmptyParam,EmptyParam);
               deletefile(mRelRTF);
               end;
            end;
         end;
      Query_Pro.Next;
      end;
   end;
if R=nil then
   result:=true
else
   result:=false;
end;




function TFrm_Lic2.fIncluirImagem(pBookMark: String; pImagens: TStrings): Boolean;

var
mBookExist: TStrings;
y_grade,x_grade: Integer;
y,x: Integer;
mTamcolIni,Direction: OleVariant;
tBNm: OleVariant;

R: Range;
mNomeTag: String;

Shape:InlineShape;
msoTrue,FileName:OleVariant;
LinkToFile:OleVariant;
SaveWithDocument:OleVariant;

begin
{

for y_grade:=0 to x_grade-1 do
   begin
   mNomeTag:=mBookExist[y_grade];
   if not fValidarTag(pBookMark,mNomeTag) then
      continue;

   TBNm:=mNomeTag;
   try
      R := WordDoc.Bookmarks.Item(TBNm).Range;
   except
      result:=false;
      exit;
      end;
   if R=nil then
      begin
      result:=false;
      exit;
      end;
   R.Collapse(Direction);
      R.InsertAfter(pGrade[x]);

      end;
 }


WordApp.Selection.EndKey(EmptyParam,EmptyParam);
FileName:='C:\SGE\LOGO0.JPG';
LinkToFile:= False;
LinkToFile:= True;
Shape := WordApp.Selection.InlineShapes.AddPicture(
FileName, LinkToFile, SaveWithDocument,
EmptyParam);
With Shape Do
   Begin
   msoTrue:=true;
//   LockAspectRatio :=  True;
   LockAspectRatio := msoTrue;
   Height := Height * 0.5;
   Width := Width * 0.5;
   End;
end;




//Word.Selection.EndKey;
{
// TERMINO
mBookExist:=TStringList.Create;
mBookExist.Clear;
Direction := wdCollapseEnd;

x_grade:=wordDoc.Bookmarks.Count;

for y:=1 to x_grade do
   begin
   mTamcolIni:=y;
   mBookExist.Add(string(WordDoc.Bookmarks.Item(mTamcolIni).Name));
   end;

for y_grade:=0 to x_grade-1 do
   begin
   mNomeTag:=mBookExist[y_grade];

   if not fValidarTag(pBookMark,mNomeTag) then
      continue;
   TBNm:=mNomeTag;
   try
      R := WordDoc.Bookmarks.Item(TBNm).Range;
   except
      result:=false;
      exit;
      end;
   if R=nil then
      begin
      result:=false;
      exit;
      end;
   R.Collapse(Direction);


   for x:=0 to pImagens.Count-1 do
      begin

      WordDoc.INS
//      R.insertpicture('.format.jpg');
      end;
   end;


{
var
 i : integer;
 MSWord : variant;
begin
 MSWord:= CreateOleObject ('Word.Basic');
 MSWord.Filenew;//inicia um novo documento
 MSWord.AppShow;//mostra o word
 MSWord.appmaximize;//Maximiza a janela do Word
 MSWord.insertpicture('.format.jpg');//Insere uma figura note  que o ponto serve
end;
}
{
      R.InsertAfter(pGrade[x]);

      end;

   Separator := '|';


   NumCols := pQtdcol;
   Autofit := true;
   if ptamcol<40 then
      mTamcolIni:=40
   else
      mTamcolIni:=pTamCol;
   Formato := wdTableFormatGrid1;

   R.ConvertToTableOld(Separator, EmptyParam, NumCols,
   mTamColIni, Formato, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, EmptyParam, EmptyParam,
   EmptyParam, Autofit);
//   mNumero_Tabela:=mNumero_Tabela+1;




//      r.Columns.Item(2).SetWidth(50, wdAdjustNone);
      { Change borders }

//      r.Rows.First.Borders.Item(wdBorderBottom).LineStyle :=
//      wdLineStyleDouble;

//   mItem:=pFundo.Count;
//   for x:=1 to mItem do
//      begin
//      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
//                            valint(fBuscarValor(1,pfundo[x-1]))
//                            ).Shading.Texture := wdTexture20Percent;
//
{      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pfundo[x-1])),
                            valint(fBuscarValor(1,pfundo[x-1]))
                            ).Shading.Texture := wdTexture5Percent;
}
{      end;


   mItem:=pAlinhamento.Count;
   for x:=1 to mItem do
      begin
      R.Tables.Item(1).Cell(valint(fBuscarValor(0,pAlinhamento[x-1])),
                            valint(fBuscarValor(1,pAlinhamento[x-1]))
                            ).Range.ParagraphFormat.Alignment:= valint(fBuscarValor(2,pAlinhamento[x-1]));

      end;
//   R.Tables.Item(1).MergeCells;

//  R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,pQtdCol));
{
 Tbl := Doc.Tables.Add(R, 3, 6, EmptyParam, EmptyParam);
  Tbl.Cell(1, 1).Merge(Tbl.Cell(1, 5));
  Tbl.Cell(2, 1).Merge(Tbl.Cell(3, 2));
}

{      if fsonumero(pTamColunas)>0 then
         begin
         for x:=1 to pQtdCol do
            begin
            if valint(fBuscarValor(x-1,pTamColunas))>0 then
               r.Tables.Item(1).Columns.Item(x).Width:=valint(fBuscarValor(x-1,pTamColunas));
            end;
         end;
   end;
{
ShowMessage(pMesClar.Text+#13
           +'valor 0 '+fBuscarValor(0,pMesClar[0])+#13
           +'valor 1 '+fBuscarValor(1,pMesClar[0])+#13
           +'valor 2 '+fBuscarValor(2,pMesClar[0])+#13
           +'valor 3 '+fBuscarValor(3,pMesClar[0])
             );
}
{
if R=nil then
   result:=false
else
   begin
   result:=true;
   for x:=0 to pMesClar.Count-1 do
      begin
      if ValInt(pMesClar[x])>0 then
         begin
{
            ShowMessage(pMesClar.Text+#13
              +'valor 0 '+fBuscarValor(0,pMesClar[X])+#13
              +'valor 1 '+fBuscarValor(1,pMesClar[X])+#13
              +'valor 2 '+fBuscarValor(2,pMesClar[X])+#13
              +'valor 3 '+fBuscarValor(3,pMesClar[X])+#13
              +' TABLES '+IntToStr(R.Tables.Count));
}
   //      R.Tables.Item(valint(fBuscarValor(0,pMesClar[x])), 1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,5))
   //      R.Tables.Item(valint(fBuscarValor(0,pMesClar[x]))).Cell(1,valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(valint(fBuscarValor(0,pMesClar[x]))).Cell(1,valint(fBuscarValor(2,pMesClar[x]))));
//           R.Tables.Item(mNumero_Tabela).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(mNumero_Tabela).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(2,pMesClar[x]))));
 //          R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(1,pMesClar[x]))).Merge(R.Tables.Item(1).Cell(valint(fBuscarValor(0,pMesClar[x])),valint(fBuscarValor(2,pMesClar[x]))));

   //      R.Tables.Item(1).Cell(1,valint(fBuscarValor(valint(fBuscarValor(0,pMesClar[x])),pMesClar[x]))).Merge(R.Tables.Item(1).Cell(1,valint(fBuscarValor(valint(fBuscarValor(0,pMesClar[x])),pMesClar[x]))));

   //fBuscarValor(pCampo: Integer;pTexto:String)
//         end;
//      end;
//    end;

{
if pMesclar_Ini>0 then
//      R.Tables.Item(1).Cell(1,1).Merge(R.Tables.Item(1).Cell(1,5))
      R.Tables.Item(1).Cell(2,pMesclar_Ini).Merge(R.Tables.Item(1).Cell(2,pMesclar_Fin));
//   else
//      begin
}
{
end;
}

// TERMINO IMAGENS


function tFrm_Lic2.fValidarTag(pTag,pNome: String):Boolean;
var
mTam: Integer;
begin
if length(pTag)>length(pnome) then
   result:=false
else if uppercase(pTag)=uppercase(pnome) then
   result:=true
else
   begin
   pTag:=UpperCase(pTag);
   pNome:=UpperCase(pNome);
   mTam:=length(pTag);
   if pTag<>copy(pNome,1,mTam) then
      result:=false
   else if copy(pNome,mtam+1,1)='_' then
      result:=true
   else
      result:=false;
   end;


end;

procedure TFrm_Lic2.bbop_esp_viseditClick(Sender: TObject);
var
Ado_Cadop: TADOQuery;
x: Integer;
mNomeDoc: String;
DocOrigem : OleVariant;

begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA'
                 +' order by DW_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=Tb_dw_cfgDW_NOMREL.AsString;

Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado a Matriz da LICITACAO relatorio '+Tb_dw_cfgDW_NOMREL.AsString+'!',mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;
While not Ado_Cadop.Eof do
   begin
   mNomeDoc:=mpastadefault+fretiraextensao(Ado_Cadop.FieldByName('DW_NOMEORI').AsString)+'PARTE'+
   Ado_Cadop.FieldByName('DW_ORDEM').AsString+'.DAT';
   if FileExists(mNomeDoc) then
      DeleteFile(mNomeDoc);
   (Ado_Cadop.FieldByName('DW_DADOS') as TBlobField).SaveToFile(mNomeDoc);
   Ado_Cadop.Next;
   end;
Ado_Cadop.First;
mNomeDoc:=mpastadefault+fretiraextensao(Ado_Cadop.FieldByName('DW_NOMEORI').AsString)+'.ZIP';
fJuntarArquivos(mNomeDoc);

fUnZiparArquivos(mNomeDoc,Fnomearq_Pasta(1,mNomeDoc)+'\','');

WordApp:=TWordApplication.Create(Application.Owner);
    { Faz com que o Word seja aberto e visivel ao usuário }
WordApp.Visible:=True;
    { Adiciona um novo documento ao Word }
WordDoc:=TWordDocument.Create(Application.Owner);
    { Local do documento de Origem }
{ Abre o documento de Origem no Word }
DocOrigem:= fretiraextensao(mNomedoc)+'.XML';
WordDoc.ConnectTo(WordApp.Documents.Add(DocOrigem,EmptyParam,EmptyParam,EmptyParam));


FreeAndNil(Ado_Cadop);

end;

procedure TFrm_Lic2.bbop_esp_adqClick(Sender: TObject);

var
mNomeDoc_doc: OleVariant;
mNomeDoc_xml: OleVariant;
mNomeDigitado: String;
mTeste: OleVariant;
mAlterar_Rel: Boolean;
form_imprimir_docxml: Tfrm_imprimir_docxml;
begin
bbop_esp_adq.Enabled:=false;
bbop_esp_visedit.Enabled:=false;
If Opd1.Execute then
   begin
   if (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOC') and
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.DOCX') AND
      (UPPERCASE(ExtractFileExt(Opd1.FileName)) <> '.XML') then
      begin
      verteclado(0);
      MessageDlg('O Arquivo '+Opd1.FileName+' não é um arquivo do tipo DOC',mtWarning,[mbOk],0);
      bbop_esp_adq.Enabled:=true;
      bbop_esp_visedit.Enabled:=true;
      exit;
      end;
   mNomeDoc_doc:=opd1.filename;

   mNomeDigitado:=fretiraextensao(Fnomearq_Pasta(0, mNomeDoc_doc));

   mNomeDigitado:=InputBox('Digite um Nome para o Relatorio ', 'Nome do Relatorio:',mNomeDigitado);
   if trim(mNomeDigitado)='' then
      exit;
   mNomeDoc_xml:=mpastadefault+mNomeDigitado+'.xml';

   if not fLerGenerico_query('CADDW_CFG','count(*) as qtd ','DW_CODEMP=0'+IntToStr(codemp)+' and DW_NOMREL='+QuotedStr(mNomeDigitado)+' and DW_CATEGORIA='+Quotedstr(categoria_docxml),query_consulta) then
      begin
      exit;
      end;
   mAlterar_Rel:=false;
   if query_consulta.fields[0].asinteger>0 then
      begin
      if Application.MessageBox(pchar('Ja Existe um relatorio com este nome '+mNomeDigitado+' quer sobrepor?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         exit
      else
         mAlterar_Rel:=true;
      end;
//   mNomeDoc_xml:=mNomeDigitado+'.xml';
   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
//   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }





   WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   mTeste:=11;
   deletefile(mNomeDoc_xml);
//   mTeste:=wdFormatXML;
 //WordDoc.SaveAs();
   WordDoc.SaveAs(mNomeDoc_xml,mteste,EmptyParam,EmptyParam,EmptyParam);




   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
{
   Application.CreateForm(Tfrm_imprimir_docxml, form_imprimir_docxml);
   form_imprimir_docxml.fSubstituirFonteXml(mNomeDoc_xml);
   freeandnil(form_imprimir_docxml);
 }
//,wdFormatXML

{
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>

<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
 }
   if fGravarArquivoParticionadoBlob(mNomeDoc_xml,mNomeDigitado, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI'
      ,['DW_CATEGORIA'],[categoria_docxml]) then
      MessageDlg('Arquivo '+mNomeDoc_doc+' gravado!',mtInformation,[mbOk],0)
   else
      begin
      MessageDlg('Erro ao Gravar o Arquivo '+opd1.FileName,mtWarning,[mbOk],0);
      bbop_esp_adq.Enabled:=true;
      bbop_esp_visedit.Enabled:=true;
      exit;
      end;
   deletefile(mNomeDoc_xml);
   end;
bbop_esp_adq.Enabled:=true;
bbop_esp_visedit.Enabled:=true;
fLerCadDW_CFG;



end;

procedure TFrm_Lic2.bbop_esp_excluirClick(Sender: TObject);
var
Ado_Cadop: TADOQuery;

begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP '
                 +' and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA'
                 +' order by DW_ORDEM ' );
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=Tb_dw_cfgDW_NOMREL.AsString;
Ado_Cadop.Open;
if Ado_Cadop.IsEmpty then
   begin
   MessageDlg('Não foi encontrado '+Tb_dw_cfgDW_NOMREL.AsString,mtWarning,[mbOk],0);
   FreeAndNil(Ado_Cadop);
   exit;
   end;
if Application.MessageBox(pchar('Quer Realmente Excluir o relatorio '+Tb_dw_cfgDW_NOMREL.AsString),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Delete from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL'
                 +' and DW_CATEGORIA=:CATEGORIA' );
Ado_Cadop.Parameters.ParamByName('NOMREL').Value   :=Tb_dw_cfgDW_NOMREL.AsString;
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('CATEGORIA').Value:=categoria_docxml;
try
   Ado_Cadop.ExecSQL;
   fdm1StartCommit;
except
   FreeAndNil(Ado_Cadop);
   exit;
   end;
verteclado(0);
fLerCadDW_CFG;
MessageDlg('Matriz da Licitação Excluida!',mtWarning,[mbOk],0);
end;


function TFrm_Lic2.fIncluiDocWord(pNomeOri:String;pQtdReg:Integer): Boolean;
var
Ado_Cadop: TADOQuery;
x: Integer;
begin
Ado_Cadop:=TADOQuery.Create(NIL);
Ado_Cadop.Connection:=DM1_ADO.ADOConnection1;
Ado_Cadop.Close;
Ado_Cadop.SQL.Clear;
Ado_Cadop.SQL.Add('Select * from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL');
Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
Ado_Cadop.Parameters.ParamByName('NOMREL').Value:='LICITACAO01';
Ado_Cadop.Open;
//if Ado_Cadop.fields[0].AsInteger>0 then
if not Ado_Cadop.IsEmpty then
   begin
   Ado_Cadop.Close;
   Ado_Cadop.SQL.Clear;
   Ado_Cadop.SQL.Add('Delete from CADDW_CFG where DW_CODEMP=:CODEMP and DW_NOMREL=:NOMREL');
   Ado_Cadop.Parameters.ParamByName('CODEMP').Value:=codemp;
   Ado_Cadop.Parameters.ParamByName('NOMREL').Value:='LICITACAO01';
   Ado_Cadop.ExecSQL;
   fdm1StartCommit;
   end;
for x:=1 to pQtdReg do
   begin
   if not FileExists(pNomeOri+'PARTE'+IntToStr(x)+'.DAT') then
      continue;
   Ado_Cadop.Close;
   Ado_Cadop.SQL.Clear;
   Ado_Cadop.SQL.Add('Insert into CADDW_CFG ('
                    +' DW_CODEMP'
                    +',DW_NOMREL'
                    +',DW_ORDEM'
                    +',DW_DADOS'
                    +') values ('
                    +' :DW_CODEMP'
                    +',:DW_NOMREL'
                    +',:DW_ORDEM'
                    +',:DW_DADOS'
                    +')');
   Ado_Cadop.Parameters.ParamByName('DW_CODEMP').Value:=codemp;
   Ado_Cadop.Parameters.ParamByName('DW_NOMREL').Value:='LICITACAO01';
   Ado_Cadop.Parameters.ParamByName('DW_ORDEM').Value:=X;
   Ado_Cadop.Parameters.ParamByName('DW_DADOS').LoadFromFile(pNomeOri+'PARTE'+IntToStr(x)+'.DAT',ftBlob);
   try
      Ado_Cadop.ExecSQL;
      fdm1StartCommit;
   except
      verteclado(0);
      MessageDlg('Erro ao Gravar no Banco de Dados!',mtWarning,[mbOk],0);
      FreeAndNil(Ado_Cadop);
      result:=false;
      exit;
      end;
   end;
FreeAndNil(Ado_Cadop);

result:=true;

end;
procedure TFrm_Lic2.bbPersonalizadoClick(Sender: TObject);
var
mDatai: TDatetime;
begin
mDatai:=now;
fImprimirWord(CB_RELATORIO.Text);
Label40.Caption:='Inicio: '+DateTimeToStr(mDatai)+' termino '+DateTimeToStr(now);

end;


// ptipo 0-do produto 1-do grupo de produtos
function TFrm_Lic2.fAbrirTexto(ptipo: Integer;pCodEmp,pCodPro: Real): String;
var
query_sobre: tQuery;
mTextoSai: TStrings;
mTabTemp: String;
begin
query_sobre:=tQuery.Create(nil);
query_sobre.DatabaseName:='SG_ASSOC';
query_sobre.Close;
query_sobre.sql.clear;
if ptipo=0 then
   begin
   query_sobre.SQL.Add('Select PDS_PAG,PDS_TEXTO2 AS PDS_TEXTO FROM CADPRO_SOBRE where '
                   +' PDS_CODEMP=:CODEMP and '
                     +' PDS_CODPRO=:CODPRO '
                     +' ORDER BY PDS_PAG ');
   end
else
   begin
   query_sobre.SQL.Add('Select 1 AS PDS_PAG,GRTEXTO AS PDS_TEXTO FROM CADGRU where '
                   +' GRCODEMP=:CODEMP and '
                     +' GRCODGRU=:CODPRO '
                     +' ORDER BY PDS_PAG ');
   end;

query_sobre.ParamByName('CODEMP').Value:=pCodEmp;
query_sobre.ParamByName('CODPRO').Value:=pCodPro;

try
   Query_sobre.Open;
except
   Query_sobre.sql.savetofile(mpastatemp +'sqlfoto.txt');
   end;

mTextoSai:=TStringList.Create;

if not query_sobre.Eof then
   begin

   While not query_sobre.Eof do
      begin
      While not query_sobre.Eof do
         begin
         mTextoSai.Add(query_sobre.fieldbyName('PDS_TEXTO').AsString);
         query_sobre.Next;
         end;
      end;
   end;
mTabTemp:='';
if mTextoSai.Count>0 then
   begin
   mTabTemp:=fproctemp(41)+'.rtf';
   mTextoSai.SaveToFile(mTabTemp);
   end;
FreeAndNil(query_sobre);
FreeAndNil(mTextoSai);

result:=mtabtemp;


end;


procedure TFrm_Lic2.SaveAsPdf(ADocument: tWordDocument; const AFileName: string);
var
  FileName,
  FileFormat : OleVariant;
begin
  if Assigned(ADocument) then
  begin
    FileName := AFileName;
    FileFormat := wdFormatPDF;
    ADocument.SaveAs(FileName, FileFormat, EmptyParam, EmptyParam, EmptyParam,
                     EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                     EmptyParam);
  end;
end;
procedure TFrm_Lic2.bbExcelClick(Sender: TObject);
var
mExcel: tStrings;
mLinha_impres: string;
mNomePro: String;
mtotgv,mtotgp: Real;
mNome_Arquivo: pChar;
begin
if (Tb_Lc1.IsEmpty) or (Tb_Lc1LC1_CHAVE.IsNull) then
   exit;
flcadlc2_form(Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger+1,Tb_Lc1LC1_chave.AsString);
mExcel:=TStringList.Create;
mExcel.Add(DM1.Tb_EmpRAZAO.AsString);
mExcel.Add(DM1.Tb_EmpFANTASIA.AsString);
mExcel.Add(DM1.Tb_EmpENDER.Value+'     '+DM1.Tb_EmpBAIRRO.Value);
mExcel.Add('Fone: '+DM1.Tb_EmpFONE.Value);
mExcel.Add('Fone: '+DM1.Tb_EmpFONE.Value+IIF(DM1.Tb_EmpTELEVENDAS.IsNull,'','     Televendas: '+DM1.Tb_EmpTELEVENDAS.Value));
mExcel.Add(Tb_Lc1LC1_EMAIL.Value+' CHAVE: '+Tb_Lc1LC1_CHAVE.AsString);
mExcel.Add(' ');
mExcel.Add(' ');

mExcel.Add(Tb_Lc1LC1_NOMCLI.Value);
mExcel.Add(Tb_Lc1LC1_nomloc.Value);
mExcel.Add('CGC..: '+MaskCPFCNPJ2(Tb_Lc1LC1_cnpj.AsString));
mExcel.Add('Orgao: '+Tb_Lc1LC1_AOSCUI.Value);
mExcel.Add('Modalidade: '+Tb_Lc1LC1_OBJETO.Value);
mExcel.Add('Carta Convite: '+Tb_Lc1LC1_CARCON.Value);
mExcel.Add('Data: '+Insere2(Tb_Lc1LC1_DATCON.AsString,' ',20)
         +'Hora: '+FormatDateTime(fhr, Tb_LC1LC1_DATCON.AsDateTime));

mLinha_impres:='Item;Quant.;Und.;Descrição;Marca';


If Tb_Lc1LC1_DIGRMS.Value=0 then
   mLinha_impres:=mLinha_impres+';Reg.M.S.';

If Tb_Lc1LC1_PCOAVI.Value=0 then
   mLinha_impres:=mLinha_impres+';Preço Unitário';

If Tb_Lc1LC1_PCOPRZ.Value=0 then
   mLinha_impres:=mLinha_impres+';Preço à Prazo';
mLinha_impres:=mLinha_impres+';Valor Total';
mExcel.Add(mLinha_impres);
Tb_Lc2.First;
mtotgv:=0;
mtotgp:=0;
while not Tb_Lc2.Eof do
   begin
   mtotgv:=mtotgv+Tb_Lc2LC2_PCOAV.Value*Tb_Lc2LC2_QTD.Value;
   mtotgp:=mtotgp+Tb_Lc2LC2_PCOPZ.Value*Tb_Lc2LC2_QTD.Value;
   mLinha_impres:=Tb_Lc2LC2_ITEM.AsString;
   mLinha_impres:=mLinha_impres+';'+Tb_Lc2LC2_QTD.AsString;
   mLinha_impres:=mLinha_impres+';'+Tb_Lc2LC2_QTD.AsString;
   mLinha_impres:=mLinha_impres+';'+Tb_Lc2LC2_UND.Value;
   mNomePro :=Tb_Lc2LC2_NOM01.Value;
   If length(trim(Tb_Lc2LC2_NOM02.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM02.Value;
   If length(trim(Tb_Lc2LC2_NOM03.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM03.Value;
   If length(trim(Tb_Lc2LC2_NOM04.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM04.Value;
   If length(trim(Tb_Lc2LC2_NOM05.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM05.Value;
   If length(trim(Tb_Lc2LC2_NOM06.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM06.Value;
   If length(trim(Tb_Lc2LC2_NOM07.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM07.Value;
   If length(trim(Tb_Lc2LC2_NOM08.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM08.Value;
   If length(trim(Tb_Lc2LC2_NOM09.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM09.Value;
   If length(trim(Tb_Lc2LC2_NOM10.AsString))>2 then mNomePro:=mNomePro+#13+Tb_Lc2LC2_NOM10.Value;
   mLinha_impres:=mLinha_impres+';'+mNomePro;
   mLinha_impres:=mLinha_impres+';'+Tb_Lc2LC2_MARCA.Value;

   If Tb_Lc1LC1_DIGRMS.Value=0 then
      begin
      if trim(Tb_Lc2LC2_RMS.AsString)='' then
         mLinha_impres:=mLinha_impres+';'
      else
        mLinha_impres:=mLinha_impres+';'+Tb_Lc2LC2_RMS.Value;
      end;
   If Tb_Lc1LC1_PCOAVI.Value=0 then
      begin
      mLinha_impres:=mLinha_impres+';'+FormatFloat('#,##0.'+COMPLETA_COM('','0',mQtdCasa,1),Tb_Lc2LC2_PCOAV.Value);
      If Tb_Lc1LC1_EXTUAV.Value=0 then
         mLinha_impres:=mLinha_impres+chr(13)+'Extenso Preço Unitário: '+Extenso(Tb_Lc2LC2_PCOAV.Value);
      end;
   If Tb_Lc1LC1_PCOPRZ.Value=0 then
      begin
      mLinha_impres:=mLinha_impres+';'+FormatFloat('#,##0.'+COMPLETA_COM('','0',mQtdCasa,1),Tb_Lc2LC2_PCOPZ.Value);
      If Tb_Lc1LC1_EXTUAP.Value=0 then
         mLinha_impres:=mLinha_impres+chr(13)+'Extenso Unitario a Prazo: '+Extenso(Tb_Lc2LC2_PCOPZ.Value);
      end;
   if Tb_Lc1LC1_PCOAVI.Value=0 then
      begin
      mLinha_impres:=mLinha_impres+';'+FormatFloat('#,##0.00',Tb_Lc2totav.Value);
      If Tb_Lc1LC1_EXTTAV.Value=0 then
         mLinha_impres:=mLinha_impres+chr(13)+'Extenso Total a Vista: '+Extenso(Tb_Lc2totav.Value);
      end;
   if Tb_Lc1LC1_PCOPRZ.Value=0 then
      begin
      mLinha_impres:=mLinha_impres+';'+FormatFloat('#,##0.00',Tb_Lc2totpz.Value);
      If Tb_Lc1LC1_EXTTAP.Value=0 then
         mLinha_impres:=mLinha_impres+chr(13)+'Extenso Total a Prazo: '+Extenso(Tb_Lc2totpz.Value);
      end;

   //Extensos Unitários           &nbsp;





   //Extensos Totais
   mExcel.Add(mLinha_Impres);
   Tb_Lc2.Next;
   end;

If Tb_Lc1LC1_EXTTAV.Value=0 then
   begin
   mLinha_Impres:='Total Geral: '
            +Insere(FormatFloat('#,##0.00',mtotgv),' ',15)+Extenso(mtotgv);
   mExcel.add(mLinha_Impres);
   end;

mExcel.add('Validade da Proposta: '+Tb_Lc1LC1_VALPRO.AsString+' dias');

mExcel.add('Condições de Pagamento: '+Tb_Lc1LC1_CONDPAG.Value);

mExcel.add('Prazo de Entrega: '+Tb_Lc1LC1_PRZENT1.Value);
mExcel.add(Tb_Lc1LC1_PRZENT2.Value);
mExcel.add(Tb_Lc1LC1_PRZENT3.Value);

mExcel.add('Observações: '+Tb_Lc1LC1_OBS1.Value);
mExcel.add(Tb_Lc1LC1_OBS2.Value);
mExcel.add('D E C L A R A Ç Õ E S');
mExcel.add(Tb_Lc1LC1_DEC01.Value);
mExcel.add(Tb_Lc1LC1_DEC02.Value);
mExcel.add(Tb_Lc1LC1_DEC03.Value);
mExcel.add(Tb_Lc1LC1_DEC04.Value);
mExcel.add(Tb_Lc1LC1_DEC05.Value);
mExcel.add(Tb_Lc1LC1_DEC06.Value);
mExcel.add(Tb_Lc1LC1_DEC07.Value);
mExcel.add(Tb_Lc1LC1_DEC08.Value);
mExcel.add(Tb_Lc1LC1_DEC09.Value);

mExcel.add(DM1.Tb_EmpCIDADE.Value+'-'+DM1.Tb_EmpUF.AsString+', '+FormatDateTime('dd "de" mmmm "de" yyyy.',
   Tb_Lc1LC1_DTEMIS.Value));
mExcel.add(DM1.Tb_EmpRAZAO.Value);
mNome_Arquivo:='C:\SGE\LICITACAO.CSV';
SaveDialog1.FileName:=mNome_Arquivo;
if SaveDialog1.Execute then
   begin
   mExcel.SaveToFile(fRetiraExtensao(SaveDialog1.FileName)+'.CSV');
   ShellExecute(handle, 'open', mnome_arquivo, nil, nil, SW_SHOWNORMAL);
   end;

end;





function tFrm_Lic2.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
mVenda_GP: TFrm_Vendas_GravarPedido;
mQtdPed: Real;
mDesconto: Real;

Query_Cons:TQuery;

query_exe: TQuery;

mItemPed: Integer;
mPed_UF_Cli            : String;
mPed_Cli_RazSoc        : String;
mPed_Cli_ConsFin       : Boolean;
mPed_Cli_Revenda_Cp    : Boolean;
mPed_Cli_ST            : Boolean;
mPed_Cli_icmsnr        : Boolean;
mPed_Cli_MotDes        : Integer;
mPed_Cli_REDICMSNOR    : Boolean;
mPed_CliCalcIPI        : Boolean;
mSeq_Item: Integer;
mDadosParametros: tDadosParametros;

begin

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
cds_aliquotas.EmptyDataSet;
fParametrosAliquotas(Tb_Lc1LC1_CODCLI.AsFloat
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
mvenda_gp.mPed1_id_new_000:=fBuscarProximoId('CADP01_SEQ');
mvenda_gp.mPed1_id_new_100:=0;
mVenda_GP.mPed1_CodCli:=Tb_Lc1LC1_CODCLI.AsFloat;
mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_Tipo_Ped:=0;
mVenda_GP.mPed1_CodFP:=0;
mVenda_GP.mPed1_NomFP:='';
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mPed1_Codven:=Tb_Lc1LC1_CODVEN.AsInteger;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_cfop1:=5101;
mVenda_GP.mPed1_cfop2:=5101;
flcadcli(1,0,Tb_Lc1LC1_CODCLI.AsString);
mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger;
IF mVenda_GP.mPed1_Frete_CIFFOB<0 then
   mVenda_GP.mPed1_Frete_CIFFOB:=3;



mVenda_GP.mPed1_CodTra:=0;
mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,'AV','01') then
  flcadpv(1,0,'AP','01');
if DM1.Tb_PV.IsEmpty then
  flcadpv(0,1,'','');
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
  mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
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

mVenda_GP.mped1_npedori :=Tb_Lc1LC1_CHAVE.AsFloat;

mVenda_GP.fGravarPed01(0,0);

query_exe:=TQuery.Create(self);
query_exe.DatabaseName:='SG_ASSOC';
Qr_Lic02.First;
mItemPed:=0;
tb_ped02_pre.CreateDataSet;
Tb_Ped02_pre.EmptyDataSet;

Frm_Lic2_Pedido.Qry_Pendencia.First;
While not Frm_Lic2_Pedido.Qry_Pendencia.eof do
   begin
   if Frm_Lic2_Pedido.Qry_PendenciaQTD_FATURAR.AsFloat<=0 then
      begin
      Frm_Lic2_Pedido.Qry_Pendencia.Next;
      continue;
      end;
{
While not Qr_Lic02.Eof do
   begin
   If (Qr_Lic02LC2_GANHOU.AsString<>'X') or ((Qr_Lic02LC2_QTD.asfloat-Qr_Lic02LC2_QTDENV.asfloat)<=0) then
      begin
      Qr_Lic02.Next;
      Continue;
      end;
 }

   mItemPed:=mItemPed+1;
   tb_ped02_pre.Append;
   tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
   tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
   tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;

    if (mVenda_GP.mPed1_Codemp>100) then
       tb_ped02_preP2ID_PED01_NEW.AsInteger  :=mVenda_GP.mPed1_id_new_100
    else
       tb_ped02_preP2ID_PED01_NEW.AsInteger  :=mVenda_GP.mPed1_id_new_000;

   tb_ped02_preP2ID_NEW.AsInteger  :=fBuscarProximoId('CADP02_SEQ');

   tb_ped02_preP2ORDEM.AsInteger  :=01;
   tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
   tb_ped02_preP2CODPRO.AsFloat   :=Frm_Lic2_Pedido.Qry_PendenciaPRODUTO.AsFloat;
   tb_ped02_preP2QTD.AsFloat      :=Frm_Lic2_Pedido.Qry_PendenciaQTD_FATURAR.asfloat;

   if mTpco=0 then
      tb_ped02_preP2PRECO.AsFloat    :=Frm_Lic2_Pedido.Qry_PendenciaLC2_PCOAV.AsFloat
   else
      tb_ped02_preP2PRECO.AsFloat    :=Frm_Lic2_Pedido.Qry_PendenciaLC2_PCOPZ.AsFloat;
   tb_ped02_preP2VALDES.AsFloat   :=0;
   tb_ped02_preP2CODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
   fDadosFiscais(tb_ped02_preP2CODPRO.AsFloat
                ,mPed_UF_Cli
                ,mPed_Cli_ConsFin
                ,mPed_Cli_Revenda_Cp
                ,mPed_Cli_icmsnr
                ,mPed_CliCalcIPI
                ,mPed_Cli_REDICMSNOR
                ,mPed_Cli_MotDes
                ,tb_ped02_pre
                ,cds_aliquotas
                ,DM1.Tb_CliCSUPERMICRO.AsInteger
                 );


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
                       ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                       ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                       ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                       ,0 // pPrecoMax_Cal,
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,mDadosParametros
                       ,tb_ped02_pre);
   Frm_Lic2_Pedido.Qry_Pendencia.Next;
   end;
tb_ped02_pre.Close;


Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


mDesconto:=0;
if mDesconto>0 then
   begin
   mvenda_gp.mPed1_Desc_Rateado:=mDesconto;

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





if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);
mchave_fat:=mVenda_GP.mped1_Chave;
   
FreeAndNil(mVenda_GP);

// termino
end;



function TFrm_Lic2.flcadlc1_form(ptipo: Integer; pvalor,pStatus: String): Boolean;
var
 CBUSERINC: Boolean;
begin
CBUSERINC:=False;
if flfilpad(0,'_LIC1','CBUSERINC') then
  begin
  if not DM4.Tb_FilPad2FPVALOR.IsNull then
    CBUSERINC:=IIF(DM4.Tb_FilPad2FPVALOR.AsInteger=1,true,false);
  end;
Tb_Lc1.Close;
Tb_Lc1.Sql.clear;
Tb_Lc1.Sql.add(' Select CADLC1.*,ROWID AS IDLC1 '
              +' from CADLC1 ');
Tb_Lc1.Sql.add(' where (LC1_CHAVE is not null) ');
if pStatus<>'' then
  Tb_Lc1.SQL.add(' and LC1_STATUS '+pStatus);
if log_codven > 0 then
  begin
  if CBUSERINC then
    Tb_Lc1.Sql.add(' and (LC1_CODUSR_INC='+FloatToStr(codusr)+' or LC1_CODVEN='+FloatToStr(log_codven)+')')
  else
    Tb_Lc1.Sql.add(' and LC1_CODVEN='+FloatToStr(log_codven));
  end;
if DM1.Qr_Tid.Locate('TINOME','CADLIC',[]) then
   begin
   if PTIPO<1 then
      begin
      if trim(pvalor)='' then
         Tb_Lc1.SQl.Add(' order by LC1_CHAVE')
      else
         Tb_Lc1.SQl.Add(' and LC1_CHAVE=0'+pvalor+' order by LC1_CHAVE');
      end
   else if ptipo=1 then
      begin
      if Trim(pvalor)='' then
         Tb_Lc1.SQl.add(' order by LC1_DTEMIS')
      else
         begin
         try
            Tb_Lc1.SQL.add(' and LC1_DTEMIS='+chr(39)+FormatDateTime(fdt,StrtoDate(pvalor))+chr(39)
                             +' order by LC1_DTEMIS ');
         except
            ShowMessage('Data Invalida. Favor digitar no formato dd/mm/yyyy com as barras');
            end;
         end
      end
   else if ptipo=2 then
      begin
      if Trim(pvalor)='' then
         Tb_Lc1.SQl.Add('  order by LC1_CODCLI')
      else
         Tb_Lc1.SQl.Add(' and LC1_CODCLI='+pvalor+' order by LC1_CODCLI');
      end
  else if ptipo=3 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_NOMCLI LIKE :NOMCLI');
      Tb_Lc1.ParamByName('NOMCLI').AsString:=pvalor+'%';
      end
  else if ptipo=4 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_NOMLOC LIKE :NOMLOC');
      Tb_Lc1.ParamByName('NOMLOC').AsString:=pvalor+'%';
      end
  else if ptipo=5 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_OBS2 = :NUMLIC');
      Tb_Lc1.ParamByName('NUMLIC').AsString:=pvalor;
      end;

   end
else
   begin
   Tb_Lc1.Sql.add(' and LC1_CODEMP=0'+IntTostr(codemp));
   if PTIPO<1 then
      begin
      if trim(pvalor)='' then
         Tb_Lc1.SQl.Add(' order by LC1_CHAVE')
      else
         Tb_Lc1.SQl.Add(' and LC1_CHAVE=0'+pvalor+' order by LC1_CHAVE');
      end
   else if ptipo=1 then
      begin
      if Trim(pvalor)='' then
         Tb_Lc1.SQl.add(' order by LC1_DTEMIS')
      else
         begin
         try
            Tb_Lc1.SQL.add(' and LC1_DTEMIS='+chr(39)+FormatDateTime(fdt,StrtoDate(pvalor))+chr(39)
                             +' order by LC1_DTEMIS ');
         except
            fMensagem('Data Invalida. Favor digitar no formato dd/mm/yyyy com as barras',0,['0'],0);
            end;
         end
      end
   else if ptipo=2 then
      begin
      if Trim(pvalor)='' then
         Tb_Lc1.SQl.Add('  order by LC1_CODCLI')
      else
         Tb_Lc1.SQl.Add(' and LC1_CODCLI='+pvalor+' order by LC1_CODCLI');
      end
  else if ptipo=3 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_NOMCLI LIKE :NOMCLI');
      Tb_Lc1.ParamByName('NOMCLI').AsString:=pvalor+'%';
      end
  else if ptipo=4 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_NOMLOC LIKE :NOMLOC');
      Tb_Lc1.ParamByName('NOMLOC').AsString:=pvalor+'%';
      end
  else if ptipo=5 then
      begin
      Tb_Lc1.SQl.Add(' and LC1_OBS2 = :NUMLIC');
      Tb_Lc1.ParamByName('NUMLIC').AsString:=pvalor;
      
      end;
   end;

Tb_Lc1.open;
if Tb_Lc1.Eof then
   Result:=False
else
   Result:=True;
end;

procedure TFrm_Lic2.Tb_LC1AfterInsert(DataSet: TDataSet);
begin

Tb_Lc1LC1_CODEMP.Value:=codemp;
Tb_Lc1LC1_DTEMIS.AsString:=FormatDatetime(fdt2, pdatasis);
Tb_Lc1LC1_DATCON.AsDateTime:=now();
edt_datcon_data.Date:=Tb_LC1LC1_DATCON.AsDateTime;
edt_datcon_hora.Text:=FormatDateTime( fhr_hhmm, Tb_LC1LC1_DATCON.AsDateTime);
Tb_LC1LC1_ID_NEW.Value := fBuscarProximoId('CADLC1_SEQ');

Tb_Lc1LC1_DIGRMS.Value:=1;
Tb_Lc1LC1_PCOAVI.Value:=0;
Tb_Lc1LC1_PCOPRZ.Value:=1;
Tb_Lc1LC1_EXTTAV.Value:=1;
Tb_Lc1LC1_EXTUAV.Value:=1;
Tb_Lc1LC1_EXTPAV.Value:=1;
Tb_Lc1LC1_EXTUAP.Value:=1;
Tb_Lc1LC1_EXTTAP.Value:=1;
Tb_Lc1LC1_EXTPAP.Value:=1;
Tb_Lc1LC1_IMPCAB.Value:=0;
Tb_Lc1LC1_STATUS.Value:=0;
Tb_Lc1LC1_CHAVE.Value:=fbuscaNUMLIC(0);

FAtualizaBanco(0,'CADLC1','LC1_CODEMP',Tb_Lc1LC1_CODEMP.AsString
,['LC1_CHAVE'],[Tb_Lc1LC1_CHAVE.AsString]
 ,Tb_Lc1);


end;

procedure TFrm_Lic2.Tb_LC1CalcFields(DataSet: TDataSet);
begin
if not Tb_Lc1LC1_CODVEN.IsNull then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_Lc1LC1_CODVEN.AsString) then
      Tb_Lc1nomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_LC1LC1_OBJETO.Value='TOMADA DE PRECOS' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Tomada: ';
   Tb_LC1carcon_calc.Value:='No.Tomada: ' + Tb_LC1LC1_CARCON.AsString;
   end
else if Tb_LC1LC1_OBJETO.Value='CARTA CONVITE' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Carta Convite: ';
   Tb_LC1carcon_calc.Value:='No.Carta Convite: ' + Tb_LC1LC1_CARCON.AsString;
   end
 else if Tb_LC1LC1_OBJETO.Value='CONCORRENCIA PUBLICA' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Concorrencia: ';
   Tb_LC1carcon_calc.Value:='No.Concorrencia: ' + Tb_LC1LC1_CARCON.AsString;
   end
else if Tb_LC1LC1_OBJETO.Value='PREGÃO' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Pregão: ';
   Tb_LC1carcon_calc.Value:='No.Pregão: ' + Tb_LC1LC1_CARCON.AsString;
   end
else if Tb_LC1LC1_OBJETO.Value='PREGÃO ELETRONICO' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Pregão eletronico: ';
   Tb_LC1carcon_calc.Value:='No.Pregão eletronico: ' + Tb_LC1LC1_CARCON.AsString;
   end

else if Tb_LC1LC1_OBJETO.Value='PREGÃO PRESENCIAL' then
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Preção Presencial: ';
   Tb_LC1carcon_calc.Value:='No.Pregão Presencial: ' + Tb_LC1LC1_CARCON.AsString;
   end

else
   begin
   Tb_LC1carta_convite_n_pregao.Value:='No.Cotação: ';
   Tb_LC1carcon_calc.Value:='No.Cotação: ' + Tb_LC1LC1_CARCON.AsString;
   end;





end;

procedure TFrm_Lic2.SRC_LC1DataChange(Sender: TObject; Field: TField);
begin
if not GRAVAR.Enabled then
  begin

  if (not Qr_Lic02.Active) or (Qr_Lic02LC2_CHAVE.AsFloat<>Tb_Lc1LC1_CHAVE.AsFloat) then

    begin
    fLerlic02(0);
    end;
  fAtualizarImagemDocumentos;
  edt_datcon_data.Text:=FormatDateTime(FDT2, Tb_LC1LC1_DATCON.AsDateTime);
  edt_datcon_hora.Text:=FormatDateTime(fhr_hhmm, Tb_LC1LC1_DATCON.AsDateTime);



  CBTPPCO.ItemIndex:=IIF(Tb_Lc1LC1_TPPCO.IsNull,0,Tb_Lc1LC1_TPPCO.AsInteger);
  cb_casas.ItemIndex:=IIF(Tb_Lc1LC1_CASASDEC.IsNull,0,Tb_Lc1LC1_CASASDEC.AsInteger);
  if cb_casas.ItemIndex=0 then
     xMcasasLocal:='#,##0.'+COMPLETA_COM('','0',DM1.Tb_PargerPCASASPU.AsInteger,1)
  else
     xMcasasLocal:='#,##0.'+COMPLETA_COM('','0',cb_casas.ItemIndex+1,1);


  Qr_Lic02LC2_PCOAV.displayformat    :=xMcasasLocal;
  Tb_Lc2LC2_PCOAV.displayformat  :=xMcasasLocal;
  Qr_Lic02LC2_PCOPZ.displayformat    :=xMcasasLocal;
  Tb_Lc2LC2_PCOPZ.displayformat  :=xMcasasLocal;

  Qr_Lic02total_bruto.displayformat  :='#,##0.'+COMPLETA_COM('','0',DM1.Tb_PargerPCASAS.AsInteger,1);
  Qr_Lic02total_bruto_prazo.displayformat  :='#,##0.'+COMPLETA_COM('','0',DM1.Tb_PargerPCASAS.AsInteger,1);

  Tb_Lc2totav.displayformat      :=mcasas;
  Tb_Lc2totpz.displayformat      :=mcasas;
  end;

end;

procedure TFrm_Lic2.Tb_LC2BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to Tb_Lc2.FieldCount-1 do
   begin
   if not Tb_Lc2.Fields[i].IsNull then
      Continue;
   if Tb_Lc2.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,FtDate,FtDateTime] then
      Tb_Lc2.Fields[i].Value:=0
//   else if Tb_Lc2.fields[i].DataType in [ftDate,ftDateTime] then
//      Tb_Lc2.Fields[i].Value:=0
   else if Tb_Lc2.Fields[i].DataType in [ftString,ftMemo] then
      Tb_Lc2.Fields[i].Value:=' ';
   end;

end;

procedure TFrm_Lic2.Tb_LC2CalcFields(DataSet: TDataSet);
begin
Tb_Lc2totav.Value:=Tb_Lc2LC2_QTD.Value*Tb_Lc2LC2_PCOAV.Value;
Tb_Lc2totpz.Value:=Tb_Lc2LC2_QTD.Value*Tb_Lc2LC2_PCOPZ.Value;

end;
procedure TFrm_Lic2.fLerCadDW_CFG;
begin
Tb_dw_cfg.close;
Tb_dw_cfg.sql.clear;
Tb_dw_cfg.sql.Add('select DW_NOMREL from caddw_cfg where DW_CATEGORIA='+QuotedStr(categoria_docxml)+' GROUP BY DW_NOMREL order by DW_NOMREL  ');
Tb_dw_cfg.Open;
dbcb_modelo.Items.clear;
While not Tb_dw_cfg.Eof do
   begin
   dbcb_modelo.Items.add(Tb_dw_cfgDW_NOMREL.AsString);
   Tb_dw_cfg.Next;
   end;
end;
procedure tFrm_Lic2.fTestarTabulacoes(pNomeRel: string);
var
query_dword_01: TQuery;
//mvetor_dword01: array of array;
query_dword_02: TQuery;
mstring_dw01: TStringList;
mstring_dw02: TStringList;
mNomGrade: string;
x_itens: integer;
mQtdTag: integer;
mQtdLinhas: integer;
mTam_Cpo: Integer;
mMesclar_Ini: string;
mMesclar_Fin: string;
mTamanhoFonte: string;
mLocal_DetCab: String;
mqtdcol: Integer;
const
   mAlinha_Esquerda='0';
   mAlinha_Centro  ='1';
   mAlinha_Direito ='2';

//   mAlinhamento: array [0..2] of string = ('Esquerda','Centro','Direita');
    mDataType_string = '0';
    mDataType_integer = '1';
    mDataType_float = '1';
    mDataType_data = '2';
    mDataType_hora = '3';
    mDataType_DataHora = '4';
    mDataType_imagem = '5';

    mFormato_Extenso_reais = 'extenso_reais';
    mFormato_nenhum = '';

    mNegrito_nao = 'N';
    mNegrito_sim = 'S';

    mSublinhado_nao = 'N';
    mSublinhado_sim = 'S';


    mItalico_nao = 'N';
    mItalico_sim = 'S';

//   mTipoCampo : Array[0..5] of string = ('String','Valor Decimais','Data','Hora','Data Hora','Imagem');

//   Frm_Stru.STG1.Cells[5,mlinha]:='Tipo do Campo 0-String 1-Integer 2-Float 3-Data';


mcor_fundo_nao = '0';
mcor_fundo_sim = '1';

mtipocampo_texto = '0';
mtipocampo_dados = '1';

mcorfundo_com  =' ';
mcorfundo_sem  =' ';

mcorfonte_sem =' ';
mcorfonte_com =' ';

begin
mMesclar_Ini:='0';
mMesclar_Fin:='0';
mTamanhoFonte :=edt_tamfonte.text;

query_dword_01:=TQuery.Create(nil);
query_dword_01.DatabaseName:='SG_ASSOC';
query_dword_01.close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('delete from CADDWORD_TAB01 '
                  +' where DW01_CODEMP=:CODEMP '
                  +' and DW01_NOMREL=:NOMREL '
                  +' and DW01_CATEGORIA=:CATEGORIA ');
//                  +' and NVL(DW01_VERSAO,'+QuotedStr('0')+')<>:VERSAO ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
//query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_dword_01,6524,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;


query_dword_01.close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('delete from CADDWORD_TAB02 '
                  +' where DW02_CODEMP=:CODEMP '
                  +' and DW02_NOMREL=:NOMREL '
                  +' and DW02_CATEGORIA=:CATEGORIA ');
//                  +' and NVL(DW01_VERSAO,'+QuotedStr('0')+')<>:VERSAO ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
//query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_dword_02,6717,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;


query_dword_01.Close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('select count(*) from CADDWORD_TAB01 '
                  +' where DW01_CODEMP=:CODEMP '
                  +' and DW01_NOMREL=:NOMREL '
                  +' and DW01_CATEGORIA=:CATEGORIA '
                  +' and NVL(DW01_VERSAO,'+QuotedStr('0')+')=:VERSAO ');
query_dword_01.ParamByName('CODEMP').AsInteger  :=codemp;
query_dword_01.ParamByName('NOMREL').AsString   :=pNomeRel;
query_dword_01.ParamByName('CATEGORIA').AsString:=categoria_docxml;
query_dword_01.ParamByName('VERSAO').AsString   :=versao_docxml;
try
   query_dword_01.Open;
except on e : exception do
   ex_erroSql_Novo(query_dword_01,6541,'func Erro:'+e.Message ,'CADDWORD_TAB01');
   end;
if query_dword_01.Fields[0].AsInteger>0 then
   begin
   freeandnil(query_dword_01);
   exit;
   end;

// inicio grade 01
mstring_dw01:=TStringList.Create;
mstring_dw02:=TStringList.Create;

mNomGrade:='ITENS01';
mLocal_DetCab:='CAB01';

mstring_dw01.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|GERADO INTERNAMENTE|06|0|01|01|01|0|1|0|950|0|'+categoria_docxml+'|'+versao_docxml);

// CAB DET
mtam_cpo:=100;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|ITEM este|'       +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
//mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|ITEM|'       +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );


mtam_cpo:=300;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_texto+'|DESCRICAO|'  +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=0;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'|QTD|'        +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'|MARCA|'      +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'|PCO.UNIT|'   +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'|TOTAL|'      +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
{

 DETALHES
                    >01                >02           >03        >04 DW02_POSICAO
                     ||                 ||           ||         ||   05>DW02_COLUNA
                     ||                 ||           ||         ||   || 06>DW02_TIPOCAMPO
                     ||                 ||           ||         ||   || ||   07 >DW02_CAMPOOUTEXTO
                     ||                 ||           ||         ||   || ||   ||      08>DW02_TAMANHO
                     ||                 ||           ||         ||   || ||   ||      ||      09>DW02_ALINHAMENTO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             10>DW02_FORMATO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      11>DW02_DATATYPE
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                 12>DW02_FUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              13>DW02_FUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || 14>DW02_MESCLAR_INI
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  15>DW02_MESCLAR_FIN
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  16>DW02_fonte tamanho
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     17>DW02_CORFOUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                18>DW02_CORFONTE
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                ||                 19>DW02_CATEGORIA
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                ||                 ||
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|CAB01|01| 1 |LC2_ITEM|50|'+mAlinha_Esquerda+'| |'+mDataType_string+'|'+mcor_fundo_nao+'| 0 | 0 | 0 |50|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml);
}
mLocal_DetCab:='DET01';

mtam_cpo:=80;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_dados+'|LC2_ITEM|'              +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=300;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|LC2_DESCCOMP|'          +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=150;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_dados+'|LC2_QTD|'               +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_dados+'|LC2_MARCA|'             +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_dados+'|PCO_UNIT|'              +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasasPU       +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_dados+'|VALOR_TOTAL|'           +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasas         +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );


// inicio grade 02 com extenso preco unitario e valor total


mNomGrade:='ITENS02';
mTam_Cpo:=100;

mstring_dw01.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|GERADO INTERNAMENTE|06|0|01|01|01|0|1|0|950|0|'+categoria_docxml+'|'+versao_docxml);
mLocal_DetCab:='CAB01';
// CAB DET
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|ITEM|'                   +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=300;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_texto+'|DESCRICAO|'              +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=150;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'|QTD|'                    +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'|MARCA|'                  +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'|PCO.UNIT|'               +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'|TOTAL|'                  +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mLocal_DetCab:='DET01';
mTam_Cpo:=80;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_dados+'|LC2_ITEM|'               +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=300;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|LC2_DESCCOMP|'           +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=150;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_dados+'|LC2_QTD|'                +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_dados+'|LC2_MARCA|'              +inttostr(mtam_cpo)+'|'+mAlinha_Esquerda+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_dados+'|PCO_UNIT|'               +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasasPU       +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_dados+'|VALOR_TOTAL|'            +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasas         +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mTam_Cpo:=80;
mMesclar_Ini:='1';
mMesclar_Fin:='6';

mLocal_DetCab:='DET02';
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|Pço.Unitario p/Extenso:|'+inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_nenhum        +'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfundo_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=300;
mMesclar_Ini:='0';
mMesclar_Fin:='0';
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|PCO_UNIT|'               +inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_Extenso_reais+'|'+mDataType_string +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mMesclar_Ini:='0';
mMesclar_Fin:='0';
mTam_Cpo:=150;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'||'                       +inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_nenhum       +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'||'                       +inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_nenhum       +'|'+mDataType_string +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'||'                       +inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_nenhum       +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'||'                       +inttostr(mtam_cpo)+'|'+mAlinha_Centro   +'|'+mFormato_nenhum       +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mLocal_DetCab:='DET03';

mTam_Cpo:=80;
mMesclar_Ini:='1';
mMesclar_Fin:='6';
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|Valor Total p/Extenso:|'+inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum           +'|'+mDataType_string +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mTam_Cpo:=300;
mMesclar_Ini:='0';
mMesclar_Fin:='0';
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|VALOR_TOTAL|'           +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_Extenso_reais    +'|'+mDataType_string +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mMesclar_Ini:='0';
mMesclar_Fin:='0';
mTam_Cpo:=150;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'||'                      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum           +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'||'                      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum           +'|'+mDataType_string +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'||'                      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum           +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'||'                      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum           +'|'+mDataType_float  +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

{

  DW02_CODEMP        NUMBER,
  DW02_NOMREL        VARCHAR2(50),
  DW02_NOMGRADE      VARCHAR2(50),
  DW02_POSICAO       VARCHAR2(10),
  DW02_COLUNA        NUMBER(5),
  DW02_TIPOCAMPO     NUMBER(1),
  DW02_CAMPOOUTEXTO  VARCHAR2(200),
  DW02_TAMANHO       NUMBER(10),
  DW02_ALINHAMENTO   NUMBER(1),
  DW02_FORMATO       VARCHAR2(50),
  DW02_DATATYPE      NUMBER(1),
  DW02_FUNDO         NUMBER(1),
  DW02_MESCLAR_INI   NUMBER(5),
  DW02_MESCLAR_FIN   NUMBER(5),
  DW02_FONTE_TAMANHO NUMBER(10),
  DW02_TAMANHO_DIG   NUMBER(10),
  DW02_CORFUNDO      VARCHAR2(10),
  DW02_CORFONTE      VARCHAR2(10),
  DW02_CATEGORIA     VARCHAR2(50)
{

                 +' DW01_CODEMP '
                 +',DW01_NOMREL '
                 +',DW01_NOMGRADE '
                 +',DW01_OBS '
                 +',DW01_QTDCOL '
                 +',DW01_ETAPA  '
                 +',DW01_QTDLINCAB '
                 +',DW01_QTDLINROD '
                 +',DW01_QTDLINDET '
                 +',DW01_TAMCOLAUT0  '
                 +',DW01_TABELA '
                 +',DW01_FORMAGRADE '
                 +',DW01_TAMANHO '
                 +',DW01_ALINHAMENTO  '
                 +',DW01_CATEGORIA  '
                 +',DW01_VERSAO '

}


// ***************************** inicio grade 03


mNomGrade:='ITENS03';
mLocal_DetCab:='CAB01';
mqtdcol:=8;
mstring_dw01.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|GERADO INTERNAMENTE|'+Inttostr(mqtdcol)+'|0|01|01|01|0|1|0|950|0|'+categoria_docxml+'|'+versao_docxml);

// CAB DET
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|Item|'       +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_texto+'|Unidade|'  +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'|Qtd.|'        +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mtam_cpo:=70;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'|Descricao do Produto|'  +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=90;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'|Especificacao do Produto|'  +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=60;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'|Marca Proposta|'      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=0;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|07|'+mtipocampo_texto+'|Valor Unitario R$|'   +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|08|'+mtipocampo_texto+'|Total em R$|'      +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
{

 DETALHES
                    >01                >02           >03        >04 DW02_POSICAO
                     ||                 ||           ||         ||   05>DW02_COLUNA
                     ||                 ||           ||         ||   || 06>DW02_TIPOCAMPO
                     ||                 ||           ||         ||   || ||   07 >DW02_CAMPOOUTEXTO
                     ||                 ||           ||         ||   || ||   ||      08>DW02_TAMANHO
                     ||                 ||           ||         ||   || ||   ||      ||      09>DW02_ALINHAMENTO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             10>DW02_FORMATO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      11>DW02_DATATYPE
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                 12>DW02_FUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              13>DW02_FUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || 14>DW02_MESCLAR_INI
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  15>DW02_MESCLAR_FIN
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  16>DW02_fonte tamanho
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     17>DW02_CORFOUNDO
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                18>DW02_CORFONTE
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                ||                 19>DW02_CATEGORIA
                     ||                 ||           ||         ||   || ||   ||      ||      ||             ||      ||                  ||              || ||  ||  ||     ||                ||                 ||
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|CAB01|01| 1 |LC2_ITEM|50|'+mAlinha_Esquerda+'| |'+mDataType_string+'|'+mcor_fundo_nao+'| 0 | 0 | 0 |50|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml);
}
mLocal_DetCab:='DET01';

mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_dados+'|LC2_ITEM|'              +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|LC2_UND|'          +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_dados+'|LC2_QTD|'               +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=70;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_dados+'|LC2_NOM01|'               +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mtam_cpo:=90;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_dados+'|LC2_DESCCOMP|'          +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mtam_cpo:=60;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_dados+'|LC2_MARCA|'             +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_sim+'|'+mItalico_nao );
mtam_cpo:=0;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|07|'+mtipocampo_dados+'|PCO_UNIT|'              +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasasPU       +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_sim+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|08|'+mtipocampo_dados+'|VALOR_TOTAL|'           +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasas         +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_sim );



// ****************************** termino grade 03
//INICIO RODAPE

mLocal_DetCab:='ROD01';

mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|01|'+mtipocampo_texto+'|TOTAL:|'              +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao             +'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|02|'+mtipocampo_dados+'|TOTAL_AVISTA|'          +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_Extenso_reais+'|'+mDataType_string+'|'+mcor_fundo_nao+'|2'+             '|7'            +'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=50;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|03|'+mtipocampo_texto+'| |'               +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );
mtam_cpo:=70;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|04|'+mtipocampo_texto+'| |'               +inttostr(mtam_cpo)+'|'+mAlinha_Centro +'|'+mFormato_nenhum+'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mtam_cpo:=90;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|05|'+mtipocampo_texto+'| |'          +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_nao );

mtam_cpo:=60;

mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|06|'+mtipocampo_texto+'| |'             +inttostr(mtam_cpo)+'|'+mAlinha_Centro+'|'+mFormato_nenhum+'|'+mDataType_string+'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_sim+'|'+mItalico_nao );
mtam_cpo:=0;
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|07|'+mtipocampo_texto+'| |'              +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mFormato_nenhum       +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_sim+'|'+mSublinhado_nao+'|'+mItalico_nao );
mstring_dw02.add(Inttostr(codemp)+'|'+pnomerel+'|'+mNomGrade+'|'+mLocal_DetCab+'|08|'+mtipocampo_dados+'|TOTAL_AVISTA|'           +inttostr(mtam_cpo)+'|'+mAlinha_Direito +'|'+mcasas         +'|'+mDataType_float +'|'+mcor_fundo_nao+'|'+mMesclar_Ini+'|'+mMesclar_Fin+'|'+mTamanhoFonte+'|'+inttostr(mtam_cpo)+'|'+mcorfonte_sem+'|'+mcorfundo_sem+'|'+categoria_docxml+'|'+mNegrito_nao+'|'+mSublinhado_nao+'|'+mItalico_sim );


// ERMINO RODAPE



query_dword_01.Close;
query_dword_01.SQL.Clear;
query_dword_01.SQL.Add('Insert into CADDWORD_TAB01 ('
                 +' DW01_CODEMP '
                 +',DW01_NOMREL '
                 +',DW01_NOMGRADE '
                 +',DW01_OBS '
                 +',DW01_QTDCOL '
                 +',DW01_ETAPA  '
                 +',DW01_QTDLINCAB '
                 +',DW01_QTDLINROD '
                 +',DW01_QTDLINDET '
                 +',DW01_TAMCOLAUT0  '
                 +',DW01_TABELA '
                 +',DW01_FORMAGRADE '
                 +',DW01_TAMANHO '
                 +',DW01_ALINHAMENTO  '
                 +',DW01_CATEGORIA  '
                 +',DW01_VERSAO '
                 +') values ('

                 +' :DW01_CODEMP '
                 +',:DW01_NOMREL '
                 +',:DW01_NOMGRADE '
                 +',:DW01_OBS '
                 +',:DW01_QTDCOL '
                 +',:DW01_ETAPA  '
                 +',:DW01_QTDLINCAB '
                 +',:DW01_QTDLINROD '
                 +',:DW01_QTDLINDET '
                 +',:DW01_TAMCOLAUT0  '
                 +',:DW01_TABELA '
                 +',:DW01_FORMAGRADE '
                 +',:DW01_TAMANHO '
                 +',:DW01_ALINHAMENTO  '
                 +',:DW01_CATEGORIA  '
                 +',:DW01_VERSAO '
                 +') ');

query_dword_02:=TQuery.Create(nil);
query_dword_02.DatabaseName:='SG_ASSOC';
query_dword_02.SQL.Clear;

query_dword_02.Close;
query_dword_02.SQL.Clear;
query_dword_02.SQL.Add('Insert into CADDWORD_TAB02 ('
                 +' DW02_CODEMP '
                 +',DW02_NOMREL '
                 +',DW02_NOMGRADE '
                 +',DW02_POSICAO '
                 +',DW02_COLUNA  '
                 +',DW02_TIPOCAMPO '
                 +',DW02_CAMPOOUTEXTO '
                 +',DW02_TAMANHO '
                 +',DW02_ALINHAMENTO '
                 +',DW02_FORMATO '
                 +', DW02_DATATYPE      '
                 +', DW02_FUNDO         '
                 +', DW02_MESCLAR_INI  '
                 +', DW02_MESCLAR_FIN  '
                 +', DW02_FONTE_TAMANHO '
                 +', DW02_TAMANHO_DIG   '
                 +', DW02_CORFUNDO      '
                 +', DW02_CORFONTE      '
                 +', DW02_CATEGORIA     '
                 +', DW02_FONTE_NEGRITO     '
                 +', DW02_FONTE_SUBLINHADO     '
                 +', DW02_FONTE_ITALICO     '

                 +') values ('
                 +' :DW02_CODEMP '
                 +',:DW02_NOMREL '
                 +',:DW02_NOMGRADE '
                 +',:DW02_POSICAO '
                 +',:DW02_COLUNA  '
                 +',:DW02_TIPOCAMPO '
                 +',:DW02_CAMPOOUTEXTO '
                 +',:DW02_TAMANHO '
                 +',:DW02_ALINHAMENTO '
                 +',:DW02_FORMATO '
                 +',:DW02_DATATYPE      '
                 +',:DW02_FUNDO         '
                 +',:DW02_MESCLAR_INI  '
                 +',:DW02_MESCLAR_FIN  '
                 +',:DW02_FONTE_TAMANHO '
                 +',:DW02_TAMANHO_DIG   '
                 +',:DW02_CORFUNDO      '
                 +',:DW02_CORFONTE      '
                 +',:DW02_CATEGORIA     '
                 +',:DW02_FONTE_NEGRITO     '
                 +',:DW02_FONTE_SUBLINHADO     '
                 +',:DW02_FONTE_ITALICO     '

                 +')');

if mstring_dw01.Count>0 then
   begin
   mQtdTag:=fQtd_Del_Par('|',mstring_dw01[0]);
   mQtdLinhas:=mstring_dw01.count-1;
   for x_itens:=0 to  mQtdLinhas do
      begin
      query_dword_01.Close;

      query_dword_01.ParamByName('DW01_CODEMP').AsInteger      := valint(fBuscarValor_Del_Par('|',01,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_NOMREL').AsString       :=        fBuscarValor_Del_Par('|',02,mstring_dw01[x_itens]);
      query_dword_01.ParamByName('DW01_NOMGRADE').AsString     :=        fBuscarValor_Del_Par('|',03,mstring_dw01[x_itens]);
      query_dword_01.ParamByName('DW01_OBS').AsString          :=        fBuscarValor_Del_Par('|',04,mstring_dw01[x_itens]);
      query_dword_01.ParamByName('DW01_QTDCOL').AsInteger      := valint(fBuscarValor_Del_Par('|',05,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_ETAPA').AsInteger       := valint(fBuscarValor_Del_Par('|',06,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_QTDLINCAB').AsInteger   := valint(fBuscarValor_Del_Par('|',07,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_QTDLINROD').AsInteger   := valint(fBuscarValor_Del_Par('|',08,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_QTDLINDET').AsInteger   := valint(fBuscarValor_Del_Par('|',09,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_TAMCOLAUT0').AsInteger  := valint(fBuscarValor_Del_Par('|',10,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_TABELA').AsInteger      := valint(fBuscarValor_Del_Par('|',11,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_FORMAGRADE').AsInteger  := valint(fBuscarValor_Del_Par('|',12,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_TAMANHO').AsInteger     := valint(fBuscarValor_Del_Par('|',13,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_ALINHAMENTO').AsInteger := valint(fBuscarValor_Del_Par('|',14,mstring_dw01[x_itens]));
      query_dword_01.ParamByName('DW01_CATEGORIA').AsString    :=        fBuscarValor_Del_Par('|',15,mstring_dw01[x_itens]);
      query_dword_01.ParamByName('DW01_VERSAO').AsString       :=        fBuscarValor_Del_Par('|',16,mstring_dw01[x_itens]);


      try
         query_dword_01.execsql;
      except on e : exception do
         ex_erroSql_Novo(query_dword_01,6738,'func Erro:'+e.Message ,'CADDWORD_TAB01');
         end;
      end;
   mQtdTag:=fQtd_Del_Par('|',mstring_dw02[0]);
   mQtdLinhas:=mstring_dw02.count-1;
   for x_itens:=0 to  mQtdLinhas do
      begin
      query_dword_02.Close;
      query_dword_02.ParamByName('DW02_CODEMP').AsInteger       := valint(fBuscarValor_Del_Par('|',01,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_NOMREL').AsString        :=        fBuscarValor_Del_Par('|',02,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_NOMGRADE').AsString      :=        fBuscarValor_Del_Par('|',03,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_POSICAO').Asstring       :=        fBuscarValor_Del_Par('|',04,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_COLUNA').AsInteger       := valint(fBuscarValor_Del_Par('|',05,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_TIPOCAMPO').AsInteger    := valint(fBuscarValor_Del_Par('|',06,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_CAMPOOUTEXTO').AsString  :=        fBuscarValor_Del_Par('|',07,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_TAMANHO').AsInteger      := valint(fBuscarValor_Del_Par('|',08,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_ALINHAMENTO').AsInteger  := valint(fBuscarValor_Del_Par('|',09,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_FORMATO').AsString       :=        fBuscarValor_Del_Par('|',10,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_DATATYPE').AsInteger     := valint(fBuscarValor_Del_Par('|',11,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_FUNDO').AsInteger        := valint(fBuscarValor_Del_Par('|',12,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_MESCLAR_INI').AsInteger  := valint(fBuscarValor_Del_Par('|',13,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_MESCLAR_FIN').AsInteger  := valint(fBuscarValor_Del_Par('|',14,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_FONTE_TAMANHO').AsInteger:= valint(fBuscarValor_Del_Par('|',15,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_TAMANHO_DIG').AsInteger  := valint(fBuscarValor_Del_Par('|',16,mstring_dw02[x_itens]));
      query_dword_02.ParamByName('DW02_CORFONTE').AsString      :=        fBuscarValor_Del_Par('|',17,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_CORFUNDO').AsString      :=        fBuscarValor_Del_Par('|',18,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_CATEGORIA').AsString     :=        fBuscarValor_Del_Par('|',19,mstring_dw02[x_itens]);

      query_dword_02.ParamByName('DW02_FONTE_NEGRITO').AsString     :=     fBuscarValor_Del_Par('|',20,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_FONTE_SUBLINHADO').AsString  :=     fBuscarValor_Del_Par('|',21,mstring_dw02[x_itens]);
      query_dword_02.ParamByName('DW02_FONTE_ITALICO').AsString     :=     fBuscarValor_Del_Par('|',22,mstring_dw02[x_itens]);
      try
         query_dword_02.execsql;
      except on e : exception do
         ex_erroSql_Novo(query_dword_02,6768,'func Erro:'+e.Message ,'CADDWORD_TAB02');
         end;
      end;
   end;
freeandnil(query_dword_01);
freeandnil(query_dword_02);
freeandnil(mstring_dw01);
freeandnil(mstring_dw02);


end;


procedure TFrm_Lic2.fAtualizarLegenda;
var
x_leg: Integer;
begin
Memo_legenda.Lines.Clear;
for x_leg:=0 to high(leg_licitacao) do
   begin
   Memo_legenda.Lines.Add(insere2(leg_licitacao[x_leg,00],' ',030)
                         +' '+insere2(leg_licitacao[x_leg,02],' ',100)
                         );
   end;
end;
procedure TFrm_Lic2.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIDLC1: String;
begin
  inherited;


if trim(Tb_LC1IDLC1.AsString)='' then
   begin
   if not fLerGenerico_query('CADLC1','ROWID',' LC1_CHAVE='+Tb_LC1LC1_CHAVE.AsString+' and LC1_CODEMP='+Tb_LC1LC1_CODEMP.AsString,query_consulta) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end
   else
      mIDLC1:=query_consulta.fieldbyname('ROWID').asstring;
   end
else
   mIDLC1:=Tb_LC1IDLC1.AsString;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;
   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(LI_SEQ) as cod from CADLIC_IMAGEM '
                    +' where LI_ROWID=:IDCLI ');
   qr_cont_imagem.ParamByName('IDCLI').AsString     :=mIDLC1;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADLIC_IMAGEM ( '
                    +' LI_ROWID  '
                    +',LI_SEQ    '
                    +',LI_OBS    '
                    +',LI_IMAGEM '
                    +',LI_NOMEORI '
                    +',LI_ID_NEW '
                    +',LI_ID_LC1_NEW '
                    +') values ('
                    +' :LI_ROWID  '
                    +',:LI_SEQ    '
                    +',:LI_OBS    '
                    +',:LI_IMAGEM '
                    +',:LI_NOMEORI '
                    +',CADLIC_IMAGEM_seq.nextval '
                    +',:LI_ID_LC1_NEW '

                    +')');

   qr_cont_imagem.ParamByName('LI_ID_LC1_NEW').AsFloat      :=Tb_LC1LC1_ID_NEW.AsFloat;
   qr_cont_imagem.ParamByName('LI_ROWID').AsString      :=mIDLC1;
   qr_cont_imagem.ParamByName('LI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('LI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('LI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('LI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('LI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2754,'frm_dar','CADLIC_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);
   end;
freeandnil(frm_imagem_WebCam);
mIDLC1_src:='-1';

SRC_LC1DataChange(Tb_LC1,Tb_LC1LC1_CODEMP);






end;

procedure TFrm_Lic2.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;

begin
  inherited;
if trim(Tb_LC1LC1_ID_NEW.AsString)='' then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;


   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADLIC_IMAGEM set '
                    +' LI_OBS=:LI_OBS '
                    +',LI_IMAGEM=:LI_IMAGEM '
                    +',LI_NOMEORI=:LI_NOMEORI '
                    +' where '
                    +' LI_ID_NEW=:LI_ID_NEW '
                    +' and LI_SEQ=:LI_SEQ'
                    );

   query_ldr.ParamByName('LI_ID_NEW').AsfLOAT      :=Tb_LC_imagemLI_ID_NEW.asFloat;
   query_ldr.ParamByName('LI_SEQ').AsInteger      :=Tb_LC_imagemLI_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('LI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_LC_imagemLI_OBS.AsString)='') then
      query_ldr.ParamByName('LI_OBS').AsString    :='IMAGEM: '+Tb_LC_imagemLI_OBS.AsString
   else
      query_ldr.ParamByName('LI_OBS').AsString    :=Tb_LC_imagemLI_OBS.AsString;



   query_ldr.ParamByName('LI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('LI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2926,'frm_contrato','CADLIC_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mIDLC1_src:='-1';

SRC_LC1DataChange(Tb_LC1,Tb_LC1LC1_CODEMP);




end;

procedure TFrm_Lic2.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mNovoNome: String;
begin
  inherited;


if trim(Tb_LC1LC1_ID_NEW.AsString)='' then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;


mNovoNome:=InputBox('Nome Anterior '+Tb_LC_imagemLI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_LC_imagemLI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADLIC_IMAGEM set '
                    +' LI_OBS=:LI_OBS '
                    +' where '
                    +' LI_ID_NEW=:LI_ID_NEW '
                    +' and LI_SEQ=:LI_SEQ'
                    );

   query_ldr.ParamByName('LI_ID_NEW').AsFloat     :=Tb_LC_imagemLI_ID_NEW.Asfloat;
   query_ldr.ParamByName('LI_SEQ').AsInteger      :=Tb_LC_imagemLI_SEQ.AsInteger;

   query_ldr.ParamByName('LI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2991,'frm_contrato','CADLIC_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
mIDLC1_src:='-1';

SRC_LC1DataChange(Tb_LC1,Tb_LC1LC1_CODEMP);





end;

procedure TFrm_Lic2.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
mIDLC1: String;
begin
  inherited;

if trim(Tb_LC1LC1_ID_NEW.AsString)='' then
   begin
   MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
   exit;
   end;


if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_LC_imagemLI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADLIC_IMAGEM '
                 +' where LI_ID_NEW=:LI_ID_NEW '
                 +' and LI_SEQ=:SEQ ');
 query_ldr.ParamByName('LI_ID_NEW').AsFloat     :=Tb_LC_imagemLI_ID_NEW.Asfloat;

query_ldr.ParamByName('SEQ').AsInteger     :=Tb_LC_imagemLI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2757,'frm_contrato','CADLIC_IMAGEM');
   end;
FreeAndNil(query_ldr);
mIDLC1_src:='-1';


SRC_LC1DataChange(Tb_LC1,Tb_LC1LC1_CODEMP);





end;

procedure TFrm_Lic2.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin



if not Tb_LC_imagemLI_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_LC_imagemLI_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;

//   if (trim(Tb_LC_imagemLI_NOMEORI.asstring)='')  or fEImagem(Tb_LC_imagemLI_NOMEORI.asstring) then
   if (trim(Tb_LC_imagemLI_NOMEORI.asstring)='')  then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_LC_imagemLI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_LC_imagemLI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_LC_imagemLI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_LC_imagemLI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_LC_imagemLI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);


   end;






end;




function TFrm_Lic2.fAtualizarImagemDocumentos: boolean;
var
mIdCli: String;


begin
if Tb_LC1LC1_CHAVE.IsNull=false then
   begin
   if trim(Tb_LC1IDLC1.AsString)='' then
      begin
      if not fLerGenerico_query('CADLC1','ROWID',' LC1_CHAVE='+Tb_LC1LC1_CHAVE.AsString+' and LC1_CODEMP='+Tb_LC1LC1_CODEMP.AsString,query_consulta) then
         begin
         exit;
         end
      else
         mIdCli:=query_consulta.fieldbyname('ROWID').asstring;
      end
   else
      mIdCli:=Tb_LC1IDLC1.AsString;


   if (mIDLC1_src<>mIdCli)  then
      begin
      if DM1_ADO.ADOConnection1.connected=false then
         begin
         DM1_ADO.ADOConnection1.Close;
         DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
         DM1_ADO.ADOConnection1.Open;
         end;

      Tb_LC_imagem.close;
      Tb_LC_imagem.Connection:=DM1_ADO.ADOConnection1;
      Tb_LC_imagem.Parameters.ParamByName('ROWID').Value    :=mIdCli;
      Tb_LC_imagem.open;
      mIDLC1_src :=mIdcli;
      end;
   end;

end;

procedure TFrm_Lic2.Tb_LC2AfterPost(DataSet: TDataSet);
var
query_temp: TQuery;
begin
c(Tb_LC2);

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.SQL.Add('Update CADLC1 set LC1_TOTPCOAV=(select sum(round(LC2_QTD*LC2_PCOAV,3)) from CADLC2 where LC2_CODEMP=LC1_CODEMP '
                  +' AND LC2_LOTSEQ=LC1_LOTSEQ and LC2_CHAVE=LC1_CHAVE) '
                  +',LC1_TOTPCOPZ=(select sum(round(LC2_QTD*LC2_PCOPZ,3)) from CADLC2 where LC2_CODEMP=LC1_CODEMP '
                  +' AND LC2_LOTSEQ=LC1_LOTSEQ and LC2_CHAVE=LC1_CHAVE) '
                  +' where LC1_CODEMP=:CODEMP and LC1_LOTSEQ=:LOTSEQ and LC1_CHAVE=:CHAVE ');
query_temp.parambyname('CODEMP').AsInteger:=codemp;
query_temp.parambyname('CHAVE').AsInteger :=Tb_LC1LC1_CHAVE.AsInteger;
query_temp.parambyname('LOTSEQ').AsInteger :=Tb_LC1LC1_LOTSEQ.AsInteger;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,7583,'_lic2 '+e.Message,'CADLC1');
   end;
query_temp.close;
freeandnil(query_temp);









end;











procedure TFrm_Lic2.edt_datcon_horaChange(Sender: TObject);
var
mposition: integer;
begin
  inherited;
mposition:=TEDIT(Sender).SelStart;
if mposition>=Length(TEDIT(Sender).Text) then
   begin
   TEdit(Sender).Text := Mascara_edit(TEDIT(Sender).Text, pMaskHora_hh_mm);
   TEDIT(Sender).SelStart := Length(TEDIT(Sender).Text);
   end
else
   begin
   TEDIT(Sender).SelStart := mposition;
   end;
end;

procedure TFrm_Lic2.edt_datcon_horaExit(Sender: TObject);
begin
if Tb_LC1.State in [dsedit,dsinsert] then
   begin
   try
      Tb_LC1LC1_DATCON.Value:=StrToDatetime(edt_datcon_data.text+' '+edt_datcon_hora.Text);
   except
      begin
      try
         Tb_LC1LC1_DATCON.Value:=edt_datcon_data.Date;
      except
         end;

      end;
      end;
   end;

end;

procedure TFrm_Lic2.Src_Lic02DataChange(Sender: TObject; Field: TField);
begin
if GRAVAR.Enabled then
   begin
   bbItem_ExcluirItem.Enabled:=True;
   bbItem_renomear.Enabled   :=true;
   bbItem_Cadastrar.Enabled  := Qr_Lic02LC2_CODPRO.AsFloat=0;
   end
else
   begin
   bbItem_ExcluirItem.Enabled:=false;
   bbItem_renomear.Enabled   :=False;
   bbItem_Cadastrar.Enabled  :=False;;
   end;

end;

procedure TFrm_Lic2.bbItem_ExcluirItemClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Quer Realmente Excluir o Item '+Qr_Lic02LC2_ITEM.asstring+' - '+Qr_Lic02LC2_NOM01.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Qr_Lic02.Delete;
MessageDlg('Item Excluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_Lic2.bbItem_renomearClick(Sender: TObject);
begin

Application.createform(TFrm_Lic2_Renomear_item, Frm_Lic2_Renomear_item);

Frm_Lic2_Renomear_item.morigem_chave:=Tb_LC1LC1_CHAVE.AsInteger;
Frm_Lic2_Renomear_item.morigem_chave_ano:=Tb_LC1LC1_LOTSEQ.AsInteger;
Frm_Lic2_Renomear_item.morigem_codemp:=Tb_LC1LC1_CODEMP.AsInteger;


Qr_Lic02.First;

if Qr_Lic02LC2_ITEM.AsInteger>1 then
   begin
   Frm_Lic2_Renomear_item.edt_valor_inc.Value:=1-Qr_Lic02LC2_ITEM.AsInteger;
   end
else
   begin
   Frm_Lic2_Renomear_item.edt_valor_inc.Value:=1;
   end;
Frm_Lic2_Renomear_item.edt_numitem01_atual.Text:=Qr_Lic02LC2_ITEM.AsString;
Frm_Lic2_Renomear_item.edt_numitem01_novo.Text :=inttostr(Qr_Lic02LC2_ITEM.AsInteger+Frm_Lic2_Renomear_item.edt_valor_inc.Value);
Frm_Lic2_Renomear_item.edt_dados_item01.Text   :=Qr_Lic02LC2_CODPRO.AsString+ '-' + Qr_Lic02LC2_NOM01.AsString;
Qr_Lic02.Last;

Frm_Lic2_Renomear_item.edt_numitem_ultimo_atual.Text:=Qr_Lic02LC2_ITEM.AsString;
Frm_Lic2_Renomear_item.edt_numitem_ultimo_novo.Text :=inttostr(Qr_Lic02LC2_ITEM.AsInteger+Frm_Lic2_Renomear_item.edt_valor_inc.Value);
Frm_Lic2_Renomear_item.edt_dados_item_ultimo.Text   :=Qr_Lic02LC2_CODPRO.AsString+ '-' + Qr_Lic02LC2_NOM01.AsString;
Frm_Lic2_Renomear_item.ShowModal;
if Frm_Lic2_Renomear_item.majustou=true then
   begin
   fLerlic02(0);
   end;
freeandnil(Frm_Lic2_Renomear_item)


end;

procedure TFrm_Lic2.bbItem_CadastrarClick(Sender: TObject);
var
query_pro: tquery;
    procedure facharumprodutovalido;
    var
    x_tent: integer;
    begin
    x_tent:=0;
    for x_tent:=0 to 3 do
       begin
       query_pro.Close;
       query_pro.SQL.clear;
       query_pro.SQL.Add('Select PDCLAS,PDCEST,PDLISTA '
                        +',PDFIS_CST_ICMS_EST_REV,PDFIS_CST_ICMS_EST_CF,PDFIS_CST_ICMS_INT_REV '
                        +',PDFIS_CST_ICMS_INT_CF,PDFIS_PRED_ICMS_EST,PDFIS_PRED_ICMS_INT,PDFIS_CSOSN_EST_REV '
                        +',PDFIS_CSOSN_EST_CF,PDFIS_CSOSN_INT_REV,PDFIS_CSOSN_INT_CF,PDFIS_CST_PISCOF_ENTRADA '
                        +',PDFIS_CST_PISCOF_SAIDA,PDFIS_PIS_ALIQ_ENTRADA,PDFIS_COFINS_ALIQ_ENTRADA,PDFIS_PIS_ALIQ_SAIDA '
                        +',PDFIS_COFINS_ALIQ_SAIDA,PDFIS_ORIGEM from CADPRO where 1=1 ');
       if x_tent=0 then
          begin
          query_pro.SQL.add(' and length(pdclas)=8 and PDCEST<>'+QuotedStr(''));
          end
       else if x_tent=1 then
          begin
          query_pro.SQL.add(' and length(pdclas)=8 ');
          end;
       query_pro.sql.add(' and rownum<2 ');
       try
          query_pro.open;
       except ON E: Exception do
          begin
          ex_erroSql_Novo(query_pro,7967,'_stru'+e.message,'user');
          break;
          end;
          end;
       if query_pro.IsEmpty=false then
          break;

       end;
    end;
begin



Application.createform(Tfrm_Lic2_cadastrar_produto, frm_Lic2_cadastrar_produto);

frm_Lic2_cadastrar_produto.Label1.Caption:=frm_Lic2_cadastrar_produto.Label1.Caption+' Item No. '+Qr_Lic02LC2_ITEM.AsString;

frm_Lic2_cadastrar_produto.edt_nompro.Text:=Qr_Lic02LC2_NOM01.AsString;
frm_Lic2_cadastrar_produto.edt_marca.Text :=Qr_Lic02LC2_MARCA.AsString;
frm_Lic2_cadastrar_produto.edt_undpro.Text:=Qr_Lic02LC2_UND.AsString;
frm_Lic2_cadastrar_produto.edt_codfor.clear;
frm_Lic2_cadastrar_produto.edt_nomfor.clear;
frm_Lic2_cadastrar_produto.edt_codgru.clear;
frm_Lic2_cadastrar_produto.edt_nomgru.clear;
frm_Lic2_cadastrar_produto.edt_codram.clear;
frm_Lic2_cadastrar_produto.edt_nomram.clear;
frm_Lic2_cadastrar_produto.edt_codtip.clear;
frm_Lic2_cadastrar_produto.edt_nomtip.clear;

frm_Lic2_cadastrar_produto.edt_codcon.clear;
frm_Lic2_cadastrar_produto.edt_nomcon.Clear;


frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO.ItemIndex:=0;

query_pro:=tquery.Create(nil);
query_pro.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
facharumprodutovalido;


if query_pro.IsEmpty then
   begin

   frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO.ItemIndex             :=0;
   frm_Lic2_cadastrar_produto.edt_codncm.Clear;
   frm_Lic2_cadastrar_produto.CB_CEST.Clear;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.ItemIndex:=0;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.ItemIndex:=0;
   frm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text    :='0';
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDA.ItemIndex  :=0;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.ItemIndex:=0;

   frm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_FORA_ESTADO.text      :='0';

   frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDA.ItemIndex    :=0;
   frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.ItemIndex  :=0;


   frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDA.ItemIndex:=0;
   frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDOR.ItemIndex:=0;

   frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADA.ItemIndex:=0;
   frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDA.ItemIndex:=0;

   frm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_ENTRADA.Clear;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_ENTRADA.Clear;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_SAIDA.Clear;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_SAIDA.Clear;
   end
else
   begin
   frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO.ItemIndex             :=query_pro.fieldbyname('PDFIS_ORIGEM').AsInteger;
   frm_Lic2_cadastrar_produto.edt_codncm.Text                         :=query_pro.fieldbyname('PDCLAS').AsString;
   frm_Lic2_cadastrar_produto.CB_CEST.Text                            :=query_pro.fieldbyname('PDCEST').AsString;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.Text  :=query_pro.fieldbyname('PDFIS_CST_ICMS_EST_REV').AsString;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.Text:=query_pro.fieldbyname('PDFIS_CST_ICMS_EST_CF').AsString;
   frm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_DENTRO_ESTADO.Text :=query_pro.fieldbyname('PDFIS_PRED_ICMS_EST').AsString;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDA.text    :=query_pro.fieldbyname('PDFIS_CST_ICMS_INT_REV').AsString;
   frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.text :=query_pro.fieldbyname('PDFIS_CST_ICMS_INT_CF').AsString;

   frm_Lic2_cadastrar_produto.edt_PRED_ICMS_NORMAL_FORA_ESTADO.text   :=query_pro.fieldbyname('PDFIS_PRED_ICMS_INT').AsString;

   frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDA.text   :=query_pro.fieldbyname('PDFIS_CSOSN_EST_REV').AsString;
   frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.text   :=query_pro.fieldbyname('PDFIS_CSOSN_EST_CF').AsString;


   frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDA.text      :=query_pro.fieldbyname('PDFIS_CSOSN_INT_REV').AsString;
   frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDOR.text   :=query_pro.fieldbyname('PDFIS_CSOSN_INT_CF').AsString;

   frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADA.text     :=query_pro.fieldbyname('PDFIS_CST_PISCOF_ENTRADA').AsString;
   frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDA.text       :=query_pro.fieldbyname('PDFIS_CST_PISCOF_SAIDA').AsString;


   frm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_ENTRADA.text              :=query_pro.fieldbyname('PDFIS_PIS_ALIQ_ENTRADA').AsString;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_ENTRADA.text           :=query_pro.fieldbyname('PDFIS_COFINS_ALIQ_ENTRADA').AsString;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_PIS_SAIDA.text                :=query_pro.fieldbyname('PDFIS_PIS_ALIQ_SAIDA').AsString;
   frm_Lic2_cadastrar_produto.EDT_ALIQ_COFINS_SAIDA.text             :=query_pro.fieldbyname('PDFIS_COFINS_ALIQ_SAIDA').AsString;

   end;





frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO,frm_Lic2_cadastrar_produto.CB_ORIGEM_PRODUTO.text);

frm_Lic2_cadastrar_produto.CB_CEST.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CEST,frm_Lic2_cadastrar_produto.CB_CEST.text);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA,frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.text);




frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA,frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDA.text);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR,frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR.text);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDA,frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDA.text);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR,frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR.text);
frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDA,frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDA.text);
frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDOR,frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDOR.text);
frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDA,frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDA.text);
frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDOR.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDOR,frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDOR.text);
frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADA,frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADA.text);
frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDA.ItemIndex:=frm_Lic2_cadastrar_produto.pAcharCombo(frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDA,frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDA.text);

frm_Lic2_cadastrar_produto.edt_preco_venda.Text:=FormatFloat(mcasas, Qr_Lic02LC2_PCOAV.AsFloat);
if Qr_Lic02LC2_PCOCPR.AsFloat<>0 then
   frm_Lic2_cadastrar_produto.edt_preco_custo.Text:=FormatFloat(mcasas, Qr_Lic02LC2_PCOCPR.AsFloat)
else
   frm_Lic2_cadastrar_produto.edt_preco_custo.Text:=frm_Lic2_cadastrar_produto.edt_preco_venda.Text;

{
frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_REVENDAExit(self);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_DENTRO_ESTADO_CONSMIDORExit(self);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_REVENDAExit(self);
frm_Lic2_cadastrar_produto.CB_CST_ICMS_FORA_ESTADO_CONSUMIDORExit(self);
frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_REVENDAExit(self);
frm_Lic2_cadastrar_produto.CB_CSOSN_DENTRO_ESTADO_CONSMIDORExit(self);
frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_REVENDAExit(self);
frm_Lic2_cadastrar_produto.CB_CSOSN_FORA_ESTADO_CONSUMIDORExit(self);
frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_ENTRADAExit(self);
frm_Lic2_cadastrar_produto.CB_CST_PISCOFINS_PARA_SAIDAExit(self);

}

frm_Lic2_cadastrar_produto.ShowModal;
if frm_Lic2_cadastrar_produto.mcodpro_nov<>0 then
   begin
   if not (Qr_Lic02.State in [dsedit,dsinsert]) then
      Qr_Lic02.Edit;
   Qr_Lic02LC2_CODPRO.AsFloat:=frm_Lic2_cadastrar_produto.mcodpro_nov;
   Qr_Lic02.post;
{
   query_pro.close;
   query_pro.sql.clear;
   query_pro.sql.Add('Update CADLC2 set LC2_CODPRO='+floattostr(frm_Lic2_cadastrar_produto.mcodpro_nov)
                    +' where LC2_CHAVE='+Tb_LC2LC2_CHAVE.AsString
                    +' and LC2_LOTSEQ='+Tb_LC2LC2_LOTSEQ.AsString
                    +' and LC2_CODEMP='+Tb_LC2LC2_CODEMP.AsString
                    +' and LC2_ITEM='+Tb_LC2LC2_ITEM.AsString);

   try
      query_pro.ExecSQL;
      fdm1StartCommit;
      fLerlic02(0);
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_pro,8084,'_stru'+e.message,'user');
      end;
      end;
}
   end;

query_pro.close;
freeandnil(query_pro);
freeandnil(frm_Lic2_cadastrar_produto);
end;

procedure TFrm_Lic2.DBMemo1Exit(Sender: TObject);
begin
if Qr_Lic02.State in [dsedit,dsinsert] then
   Qr_Lic02.Post;
end;

procedure TFrm_Lic2.pCalcularPrecoVenda;
var
mAcum: Real;
begin
{
if (Qr_Lic02.State in [dsedit,dsinsert]) then
   begin
   if Qr_Lic02LC2_PCOCPR.AsFloat>0 then
      begin
      mAcum:=0;
      mAcum:=mAcum+Arredonda( ((Qr_Lic02LC2_PCOCPR.AsFloat+mAcum)*Qr_Lic02LC2_ICMS_PERC.AsFloat/100) ,3);
      mAcum:=mAcum+Arredonda( ((Qr_Lic02LC2_PCOCPR.AsFloat+mAcum)*Qr_Lic02LC2_DESPESASFIXAS_PERC.AsFloat/100) ,3);
      mAcum:=mAcum+Arredonda( ((Qr_Lic02LC2_PCOCPR.AsFloat+mAcum)*Qr_Lic02LC2_FRETE_PERC.AsFloat/100) ,3);
      mAcum:=mAcum+Arredonda( ((Qr_Lic02LC2_PCOCPR.AsFloat+mAcum)*Qr_Lic02LC2_MARGEM_LUCRO_PERC.AsFloat/100) ,3);
      Qr_Lic02LC2_PCOAV.AsFloat:=Qr_Lic02LC2_PCOCPR.AsFloat+mAcum;
      end;

   end;
}
end;

procedure TFrm_Lic2.DBE_LC2_PCOCPRExit(Sender: TObject);
begin
pCalcularPrecoVenda;

end;

procedure TFrm_Lic2.bbCotacaoClick(Sender: TObject);
begin
if (Tb_LC1.Active=false) or (Tb_LC1.IsEmpty) then
   exit;
Application.CreateForm(TFrm_Lic2_GerarCotacao, Frm_Lic2_GerarCotacao);

Frm_Lic2_GerarCotacao.mIdNew    :=Tb_LC1LC1_ID_NEW.AsInteger;
Frm_Lic2_GerarCotacao.mchave    :=Tb_LC1LC1_CHAVE.AsInteger;
Frm_Lic2_GerarCotacao.mchave_ano:=Tb_LC1LC1_LOTSEQ.AsInteger;
Frm_Lic2_GerarCotacao.mcodemp   :=Tb_LC1LC1_CODEMP.AsInteger;
Frm_Lic2_GerarCotacao.LerdadosCabecalho;
Frm_Lic2_GerarCotacao.fLerCadLic(true);

Frm_Lic2_GerarCotacao.ShowModal;
freeandnil(Frm_Lic2_GerarCotacao);

end;

procedure TFrm_Lic2.GB_COMPOSICAOExit(Sender: TObject);
begin
if Qr_Lic02.State in [dsedit,dsinsert] then
   Qr_Lic02.Post;

end;

procedure TFrm_Lic2.DBGrid1_ItensExit(Sender: TObject);
begin
if Qr_Lic02.State in [dsedit,dsinsert] then
   Qr_Lic02.Post;

end;

procedure TFrm_Lic2.bbExcluirNaoMarcadosClick(Sender: TObject);

var
mQtdMarcados: integer;
mQtdTotal: integer;
Query_exe: tQuery;
mItensExcluir: String;
mVirg: string;
begin
Qr_Lic02.DisableControls;
Qr_Lic02.First;
mQtdMarcados:=0;
mQtdTotal   :=0;

mItensExcluir:='';
mVirg        :='';

While not Qr_Lic02.Eof do
   begin
   mQtdTotal := mQtdTotal +1;
   if Qr_Lic02LC2_GANHOU.AsString='X'then
      mQtdMarcados:=mQtdMarcados+1
   else
      begin
      mItensExcluir:=mItensExcluir+mVirg+Qr_Lic02LC2_ITEM.AsString;
      mVirg:=',';
      end;
   Qr_Lic02.Next;
   end;
if mQtdMarcados=0 then
   begin
   MessageDlg('Não poderá excluir todos os Itens', mtWarning,[mbOk],0);
   exit;
   end;

if mQtdMarcados=mQtdTotal then
   begin
   MessageDlg('Nenhum item marcado para excluir!', mtWarning,[mbOk],0);
   exit;
   end;
fLic01gant(9);

Query_exe:=tQuery.create(nil);
Query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_exe.Close;
Query_exe.Sql.clear;
Query_exe.Sql.add('Delete from CADLC2 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADLIC',[]),'',' LC2_CODEMP=0'+IntTostr(codemp)+' and '));
Query_exe.SQL.add(' LC2_CHAVE=0'+Tb_Lc1LC1_CHAVE.AsString);
Query_exe.sql.add(' and LC2_ITEM in ('+mItensExcluir+')');


try
   Query_exe.ExecSQL;
   fdm1StartCommit;
except
   end;
Query_exe.close;
freeandnil(Query_exe);
Qr_Lic02.EnableControls;

fLerlic02(0);
flcadlc2_form(Tb_Lc1LC1_SEPLOTEPREGAO.AsInteger+1,Tb_Lc1LC1_chave.AsString);



end;

procedure TFrm_Lic2.Tb_LC2AfterInsert(DataSet: TDataSet);
begin
Tb_LC2LC2_ID_NEW.Value        :=fBuscarProximoId('CADLC2_SEQ');
Tb_LC2LC2_ID_LC1_NEW.Value    :=Tb_LC1LC1_ID_NEW.AsFloat;

end;

end.



