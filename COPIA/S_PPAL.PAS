unit S_Ppal;
{
LINHA01
LINHA02
LINHA03

LINHA04
}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  S_Ent,
  S_DM1, ComCtrls, ExtCtrls, jpeg, ToolWin, Menus, ImgList, s_Pro,Shellapi,
  S_Funcao, S_Usr, S_Sen01,  AppEvnts, StdCtrls, Buttons,S_MedPro02,
//  commom,
  S_Cli, S_For,  DbGrids, DBCtrls,
  Grids,S_CPF,
  S_Par,
  S_Ace, S_Sen_Int, S_SI, S_Pv,S_Dap, S_NE, S_Dar, S_CEle,S_NS,
  S_RCpag, S_AcCP, S_AcCPR, S_AcCPE, S_TPed,
  S_PECF,S_LMF, S_Ram, S_Gpro, S_Tcon, S_Tippro,
  S_Ven, S_Uf, S_CFO, S_Tra,
  S_Bco, S_CCU, S_Dpto, S_LDR, S_RCPReal, S_LRS,
  S_LRE, S_Tpro, S_Impd, S_Sintegra, S_Apur, S_Aju, S_RCliC, S_DM2,
  S_ExpPro, S_Emp, S_Con, S_Stru, S_ExpCli, S_RDev, S_Cac, S_Seg,
   S_CME, S_Ped, S_Pfor01, S_AcCR, S_CCom, S_CFor, S_JDoc, S_Mvcto,
  S_VlrPres, S_Codbar, S_EBol, S_CX_RG, S_CX_RCC, S_CX_RAna,S_RCRec,
  S_Imp_Prod, S_ComD,S_Sup, S_ComV,S_PCus,S_Acus,S_Chq,S_ComRV,
  S_ComVV, S_ExtP,S_ExtP2, ScktComp,S_Sobre,S_Lib,
  S_VABC,S_ConDat,S_RFPP,S_RFPR,S_CABC,S_Tot,S_RDoc,S_Bai,S_Loc,S_Per2,S_GPer,
  S_Red, S_RCli, S_ExpDM,S_CFG,S_Bkp,S_Rest,S_ZEst,S_PCon,S_PcoLot,
  S_PerGer,S_Fec,S_PPR,S_CCob,S_Dep,S_Eve,S_GFolha,S_FolMan,S_Imp_Folha,
  S_Imp_ResFol,lerarq,S_CanCup,S_PonVen,S_FatEmp,S_Producao,S_EmiChq,S_AjuCCu,
  S_Rom,S_RPfor,S_DCB,S_AMVS,S_ANVISA,S_RasPlote,S_ConDiv,S_Inv,S_Receb,
  S_PedXDup,S_PedCabXMer,S_MerDup,S_MedVen,S_FABC,S_MedFor,S_CX_RM,
  S_MedUF, S_UFABC,S_MedCli,S_TProABC, S_MedTPro, S_GruABC, S_MedGru,
  S_TConABC, S_MedTCon,S_RProABC,S_MedRPro,S_SelGra,
  S_RotCli,S_RMen,S_SugCpr01,S_ComXVda,  S_CX_ReSel,S_CarCor,
  S_TLDR,S_VdaXComp,S_CPed2,S_CICMSR,S_LucSai,S_LucEnt,S_ExtBco,S_Cx_Compens,
  S_ImpDM,S_CalcIcms,S_NF_CompImp,S_PedCli,S_VPro,S_MUsar,
  S_Min2,S_CEC,S_ParPreco,S_AjuEst_Ext,S_RPed,S_EtiVol,S_ManPed,S_ResPed,S_RPed2,
  S_BDev,S_Config_Leitor,S_Ind_ManFor, S_Ind_Fab,S_RelNfs,S_LotSeq,S_PVO,
  S_RelNFE,S_Contagem,S_Cus,S_FPag,S_Fontes,S_AjustaPro,S_APco_For,S_LotMOv,S_GNRE,
  S_ExpTron,S_ManOs,S_ConsOS,S_AjuInvGra,S_Moe,S_Ind,S_Imo,S_MImo,S_Vei,S_ManImo,S_ManVei,
  S_MVei,S_GirLoc,S_AtuSis,S_Help,S_UltCPR,S_Est_Dif_Ext,S_DocOnLine,S_DM_Config,
  S_Contrato,S_RAni,S_BloqCli,S_CxSaldo2dias,S_IndProFab,S_IndMpUtil,S_ResNF,S_Excel,
  S_DM_Rec,S_ResMapaRes,S_ProConf,S_ExpCont01,S_ManCSF,S_ManBal,S_ProCodBar,S_ExpMov,
  S_ImpMov,S_ImpCad,S_ExpCad,S_Server_Transf,S_InvGra,S_AjuInvGra_GD,S_Desbl_Pedido,S_ResFat,
  S_CanFdia,S_FluxoDPCHQ,S_DupAgru,S_Trocas,S_PedBai,S_AjuExt_Est,
  S_CompInvGra,S_RelOs,S_ConsPro_AutoP,S_PedPart,S_MPer,S_MPar,S_ConProd,S_ElimDados,S_TroMol,
  S_RCliNaoCompra,S_ImpAli,S_MedVenPgt,S_ParCod,S_Update,S_Empresas,S_EstDifLot,
  ShellCtrls, ExtDlgs, DB, DBTables,S_Liberar,S_Cont_Serv,S_Ped_AutoP,S_EtiqCli,
  ActnList,S_LancAutoFC,S_DestPro,S_ProdTit,S_CX_Sintetico,S_ind_ForEnv,S_Receber_Sint,
  S_Conh_Merc_Total,S_Conh_MercCons,S_Receber_Lev,S_Pagar_Lev,S_Resumo_FPPed,S_Conh_MercConfirma,
  S_RFechaConh,S_ProdEntregar,
  S_Login_Usuario,S_MCodCli,
  S_RelPed_FPPed,S_Fin_TitAgru, dbcgrids,S_Vend_CotaMes,S_EtiqProd,S_EmitirNF,S_PedBloq,
  S_Fiscal_RelPisCofins,S_Vend_RelVendGFor,S_AjuDevCli,S_Fin_RelCob,S_BalProCol,S_Etivol02,
  S_RelComis_Rec,S_GerDup,S_OriPed,S_ManProSim,S_Regiao,S_AJCOMIS,S_Confirma_Entrega,
  S_BloqCliMed, S_IndEnv_MFor, S_Ind_RegInv, S_Rel_For, S_ExpPro_Balanca, S_Dep_Prod,
  WPRTEDefs, WPCTRMemo, WPCTRRich, S_Demonstativo;

type
  TFrm_PPal = class(TForm)
    ppal: TPanel;
    Image1: TImage;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    MonthCalendar1: TMonthCalendar;
    ShellListView1: TShellListView;
    Timer1: TTimer;
    ImageList1: TImageList;
    ApplicationEvents1: TApplicationEvents;
    //ServerSocket1: TServerSocket;
   // ClientSocket1: TClientSocket;
    PopupMenu1: TPopupMenu;
    Calendario1: TMenuItem;
    Windows1: TMenuItem;
    elaCheiaNormal1: TMenuItem;
    Imagem1: TMenuItem;
    FecharMenu1: TMenuItem;
    ppalt: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Image2: TImage;
    CADASTRO: TSpeedButton;
    SISTEMA: TSpeedButton;
    RELATORIOS: TSpeedButton;
    ESTATISTICAS: TSpeedButton;
    FINANCEIRO: TSpeedButton;
    FATURAMENTO: TSpeedButton;
    FISCAIS: TSpeedButton;
    Panel1: TPanel;
    btree: TTreeView;
    Panel3: TPanel;
    Image3: TImage;
    MonthCalendar2: TMonthCalendar;
    ShellListView2: TShellListView;
    Panel4: TPanel;
    Image4: TImage;
    SpeedButton11: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Panel5: TPanel;
    Image6: TImage;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    ImageList2: TImageList;
    TEMP: TQuery;
    PopupMenu2: TPopupMenu;
    ALTERAFONTE1: TMenuItem;
    CorFundoMenu1: TMenuItem;
    FontDialog1: TFontDialog;
    PopupMenu3: TPopupMenu;
    BUSCAIMAGEM1: TMenuItem;
    MenuItem1: TMenuItem;
    DEGRADE: TQuery;
    abre_degrade: TOpenPictureDialog;
    ColorDialog1: TColorDialog;
    btree_prog: TTreeView;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    mpro_0103: TMenuItem;
    mpro_0172: TMenuItem;
    N2: TMenuItem;
    mpro_0166: TMenuItem;
    NMP: TMenuItem;
    mpro_0115: TMenuItem;
    mpro_0118: TMenuItem;
    mpro_0121: TMenuItem;
    mpro_0124: TMenuItem;
    mpro_0148: TMenuItem;
    N3: TMenuItem;
    PedidodeCompra1: TMenuItem;
    mpro_0203: TMenuItem;
    mpro_0206: TMenuItem;
    N4: TMenuItem;
    mpro_0112: TMenuItem;
    N5: TMenuItem;
    AjustedeEstoque: TMenuItem;
    mpro_0127: TMenuItem;
    mpro_0128: TMenuItem;
    mpro_0129: TMenuItem;
    mpro_0175: TMenuItem;
    Balano1: TMenuItem;
    mpro_0163: TMenuItem;
    N42: TMenuItem;
    minventario: TMenuItem;
    mpro_0157: TMenuItem;
    mpro_0169: TMenuItem;
    N6: TMenuItem;
    ExportarProd: TMenuItem;
    Importar1: TMenuItem;
    mpro_0130: TMenuItem;
    mpro_0178: TMenuItem;
    mpro_0109: TMenuItem;
    Custos1: TMenuItem;
    mpro_0133: TMenuItem;
    mpro_0142: TMenuItem;
    mpro_0154: TMenuItem;
    mpro_0155: TMenuItem;
    AlteraesdePreos1: TMenuItem;
    mpro_0145: TMenuItem;
    N24: TMenuItem;
    Especiais2: TMenuItem;
    mpro_0151: TMenuItem;
    N46: TMenuItem;
    mpro_0160: TMenuItem;
    Localidades1: TMenuItem;
    mloc_0103: TMenuItem;
    N44: TMenuItem;
    mloc_0106: TMenuItem;
    mloc_0107: TMenuItem;
    N45: TMenuItem;
    mloc_0109: TMenuItem;
    Fornecedores1: TMenuItem;
    mfor_0103: TMenuItem;
    mfor_0106: TMenuItem;
    Associados1: TMenuItem;
    mcli_0103: TMenuItem;
    mcli_0109: TMenuItem;
    mcli_0112: TMenuItem;
    mcli_0115: TMenuItem;
    mcli_0118: TMenuItem;
    mcli_0121: TMenuItem;
    N1: TMenuItem;
    mcli_0124: TMenuItem;
    N29: TMenuItem;
    mcli_0106: TMenuItem;
    mcli_0130: TMenuItem;
    N28: TMenuItem;
    Especiais3: TMenuItem;
    mcli_0133: TMenuItem;
    Vendedor1: TMenuItem;
    mven_0103: TMenuItem;
    N57: TMenuItem;
    mven_0106: TMenuItem;
    N58: TMenuItem;
    mven_0109: TMenuItem;
    ransportadora1: TMenuItem;
    mtra_0103: TMenuItem;
    Caixa1: TMenuItem;
    mcai_0103: TMenuItem;
    mcai_0106: TMenuItem;
    mcai_0109: TMenuItem;
    mcai_0112: TMenuItem;
    mcai_0115: TMenuItem;
    mcai_0118: TMenuItem;
    mcai_0121: TMenuItem;
    mcai_0124: TMenuItem;
    mcai_0127: TMenuItem;
    Industria1: TMenuItem;
    mind_0103: TMenuItem;
    mind_0106: TMenuItem;
    mind_0115: TMenuItem;
    mind_0109: TMenuItem;
    mind_0112: TMenuItem;
    mind_0118: TMenuItem;
    mind_0121: TMenuItem;
    Cont_Prod: TMenuItem;
    mind_0124: TMenuItem;
    N65: TMenuItem;
    mind_0127: TMenuItem;
    N66: TMenuItem;
    mind_0130: TMenuItem;
    mind_0133: TMenuItem;
    N68: TMenuItem;
    mind_0136: TMenuItem;
    Usurios1: TMenuItem;
    musu_0103: TMenuItem;
    musu_0106: TMenuItem;
    musu_0109: TMenuItem;
    N43: TMenuItem;
    musu_0112: TMenuItem;
    Diversos1: TMenuItem;
    mdiv_0103: TMenuItem;
    mdiv_0106: TMenuItem;
    mdiv_0109: TMenuItem;
    N67: TMenuItem;
    mdiv_0112: TMenuItem;
    folha: TMenuItem;
    mfol_0103: TMenuItem;
    mfol_0106: TMenuItem;
    mfol_0109: TMenuItem;
    mfol_0124: TMenuItem;
    Relatrios3: TMenuItem;
    mfol_0121: TMenuItem;
    mfol_0118: TMenuItem;
    mfol_0133: TMenuItem;
    Manut_folha: TMenuItem;
    mfol_0127: TMenuItem;
    mfol_0130: TMenuItem;
    mfol_0115: TMenuItem;
    Imobilizados: TMenuItem;
    mimo_0103: TMenuItem;
    mimo_0106: TMenuItem;
    mImo_0109: TMenuItem;
    Veiculos: TMenuItem;
    mvei_0103: TMenuItem;
    mvei_0106: TMenuItem;
    mvei_0109: TMenuItem;
    MoedasIndexadores1: TMenuItem;
    mmoe_0103: TMenuItem;
    mmoe_0106: TMenuItem;
    Relatrios_gerenciais: TMenuItem;
    Associados2: TMenuItem;
    rcli_0103: TMenuItem;
    rcli_0106: TMenuItem;
    rcli_0109: TMenuItem;
    rcli_0112: TMenuItem;
    rcli_0115: TMenuItem;
    rcli_0118: TMenuItem;
    Rel_Convenio: TMenuItem;
    rcli_0303: TMenuItem;
    rcli_0306: TMenuItem;
    rcli_0121: TMenuItem;
    Fornecedores2: TMenuItem;
    rfor_0103: TMenuItem;
    N11: TMenuItem;
    rfor_0106: TMenuItem;
    rfor_0109: TMenuItem;
    N12: TMenuItem;
    rfor_0112: TMenuItem;
    rfor_0115: TMenuItem;
    Produtos2: TMenuItem;
    rpro_0103: TMenuItem;
    rpro_0106: TMenuItem;
    rpro_0109: TMenuItem;
    rpro_0121: TMenuItem;
    rpro_0112: TMenuItem;
    rpro_0115: TMenuItem;
    rpro_0118: TMenuItem;
    rpro_0124: TMenuItem;
    rpro_0127: TMenuItem;
    rpro_0130: TMenuItem;
    rpro_0133: TMenuItem;
    rpro_0136: TMenuItem;
    rpro_0184: TMenuItem;
    rpro_0157: TMenuItem;
    N26: TMenuItem;
    rpro_0139: TMenuItem;
    rpro_0145: TMenuItem;
    N27: TMenuItem;
    rpro_0142: TMenuItem;
    rpro_0148: TMenuItem;
    N30: TMenuItem;
    rpro_0151: TMenuItem;
    N34: TMenuItem;
    rpro_0154: TMenuItem;
    N51: TMenuItem;
    rpro_0160: TMenuItem;
    Estados2: TMenuItem;
    rest_0103: TMenuItem;
    N13: TMenuItem;
    rest_0106: TMenuItem;
    rest_0109: TMenuItem;
    N14: TMenuItem;
    rest_0112: TMenuItem;
    rest_0115: TMenuItem;
    iposdeProdutos2: TMenuItem;
    rtpro_0103: TMenuItem;
    N15: TMenuItem;
    rtpro_0106: TMenuItem;
    rtpro_0109: TMenuItem;
    N16: TMenuItem;
    rtpro_0112: TMenuItem;
    rtpro_0115: TMenuItem;
    Grupos2: TMenuItem;
    rgpro_0103: TMenuItem;
    N17: TMenuItem;
    rgpro_0106: TMenuItem;
    rgpro_0109: TMenuItem;
    N18: TMenuItem;
    rgpro_0112: TMenuItem;
    rgpro_0115: TMenuItem;
    ControledeProdutos2: TMenuItem;
    rcpro_0103: TMenuItem;
    N19: TMenuItem;
    rcpro_0106: TMenuItem;
    rcpro_0109: TMenuItem;
    N21: TMenuItem;
    rcpro_0112: TMenuItem;
    rcpro_0115: TMenuItem;
    Gerenciais1: TMenuItem;
    rger_0103: TMenuItem;
    rger_0106: TMenuItem;
    rger_0109: TMenuItem;
    rger_0112: TMenuItem;
    rger_0115: TMenuItem;
    Caixa2: TMenuItem;
    rger_0200: TMenuItem;
    rger_0209: TMenuItem;
    rger_0212: TMenuItem;
    rger_0215: TMenuItem;
    rger_0218: TMenuItem;
    rger_0221: TMenuItem;
    rger_0230: TMenuItem;
    rger_0245: TMenuItem;
    rger_0248: TMenuItem;
    N62: TMenuItem;
    rger_0257: TMenuItem;
    rger_0224: TMenuItem;
    rger_0227: TMenuItem;
    rger_0233: TMenuItem;
    rger_0236: TMenuItem;
    N25: TMenuItem;
    rger_0239: TMenuItem;
    rger_0242: TMenuItem;
    N54: TMenuItem;
    rger_0251: TMenuItem;
    N55: TMenuItem;
    rger_0254: TMenuItem;
    Vendedores2: TMenuItem;
    rven_0103: TMenuItem;
    Comissesporvenda1: TMenuItem;
    rven_0118: TMenuItem;
    rven_0121: TMenuItem;
    rven_0124: TMenuItem;
    rven_0133: TMenuItem;
    Comissesporrecebimento1: TMenuItem;
    rven_0106: TMenuItem;
    rven_0109: TMenuItem;
    rven_0112: TMenuItem;
    rven_0130: TMenuItem;
    rven_0127: TMenuItem;
    rven_0115: TMenuItem;
    ransportadoras1: TMenuItem;
    rtra_0103: TMenuItem;
    Usurios2: TMenuItem;
    rusu_0103: TMenuItem;
    Bancos2: TMenuItem;
    rbco_0103: TMenuItem;
    CargosFuncoes1: TMenuItem;
    rfun_0103: TMenuItem;
    PlanodeVendas2: TMenuItem;
    rpv_0103: TMenuItem;
    CentrodeCustos1: TMenuItem;
    rccu_0103: TMenuItem;
    Departamentos2: TMenuItem;
    rdep_0103: TMenuItem;
    MovimentodoCaixa1: TMenuItem;
    rcai_0103: TMenuItem;
    PedidosdeFornecedores1: TMenuItem;
    rpfor_0101: TMenuItem;
    rpfor_0103: TMenuItem;
    PedidosdeVendas1: TMenuItem;
    PendenciasdePedidos1: TMenuItem;
    rped_0301: TMenuItem;
    rped_0103: TMenuItem;
    rped_0101: TMenuItem;
    RamodeProduto1: TMenuItem;
    rrpro_0103: TMenuItem;
    N20: TMenuItem;
    rrpro_0106: TMenuItem;
    rrpro_0109: TMenuItem;
    N22: TMenuItem;
    rrpro_0112: TMenuItem;
    rrpro_0115: TMenuItem;
    rel_imobilizados: TMenuItem;
    rimo_0103: TMenuItem;
    rimo_0106: TMenuItem;
    rel_veiculos: TMenuItem;
    rvei_0103: TMenuItem;
    rvei_0106: TMenuItem;
    Moeda1: TMenuItem;
    rmoe_0103: TMenuItem;
    rel_OrdemServico: TMenuItem;
    ros_0103: TMenuItem;
    Diversos2: TMenuItem;
    rdiv_0103: TMenuItem;
    Industria2: TMenuItem;
    rind_0103: TMenuItem;
    Estatsticas1: TMenuItem;
    Produtos: TMenuItem;
    est_0103: TMenuItem;
    est_0106: TMenuItem;
    Fornecedores: TMenuItem;
    est_0109: TMenuItem;
    est_0124: TMenuItem;
    clientes: TMenuItem;
    est_0112: TMenuItem;
    est_0118: TMenuItem;
    est_0121: TMenuItem;
    est_0115: TMenuItem;
    Estado1: TMenuItem;
    est_0127: TMenuItem;
    est_0130: TMenuItem;
    iposdeProdutos1: TMenuItem;
    est_0133: TMenuItem;
    est_0136: TMenuItem;
    GruposdeProdutos1: TMenuItem;
    est_0139: TMenuItem;
    est_0142: TMenuItem;
    est_0145: TMenuItem;
    est_0148: TMenuItem;
    Empresa1: TMenuItem;
    est_0151: TMenuItem;
    est_0154: TMenuItem;
    RamodeProdutos1: TMenuItem;
    est_0157: TMenuItem;
    est_0160: TMenuItem;
    ControlesdeProdutos1: TMenuItem;
    est_0163: TMenuItem;
    est_0166: TMenuItem;
    Saidas1: TMenuItem;
    sai_0103: TMenuItem;
    Minuta: TMenuItem;
    sai_0106: TMenuItem;
    sai_0160: TMenuItem;
    sai_0109: TMenuItem;
    sai_0112: TMenuItem;
    sai_0148: TMenuItem;
    sai_0127: TMenuItem;
    sai_0157: TMenuItem;
    sai_0142: TMenuItem;
    sai_0115: TMenuItem;
    Licitacoes: TMenuItem;
    sai_0121: TMenuItem;
    sai_0193: TMenuItem;
    sai_0136: TMenuItem;
    romaneio: TMenuItem;
    sai_0124: TMenuItem;
    sai_0133: TMenuItem;
    sai_0139: TMenuItem;
    os: TMenuItem;
    mos_0103: TMenuItem;
    mos_0106: TMenuItem;
    N48: TMenuItem;
    contratos: TMenuItem;
    N61: TMenuItem;
    mos_0112: TMenuItem;
    sai_0145: TMenuItem;
    LivrosFiscais1: TMenuItem;
    RegistroEntrada1: TMenuItem;
    rent_0103: TMenuItem;
    RegistroSaidas1: TMenuItem;
    rsai_0103: TMenuItem;
    rsai_0106: TMenuItem;
    rsai_0109: TMenuItem;
    GNRE1: TMenuItem;
    gnre0103: TMenuItem;
    cfo_0103: TMenuItem;
    LivrosFiscais2: TMenuItem;
    lf_0103: TMenuItem;
    lf_0106: TMenuItem;
    lf_0109: TMenuItem;
    N23: TMenuItem;
    lf_0124: TMenuItem;
    N8: TMenuItem;
    lf_0112: TMenuItem;
    lf_0136: TMenuItem;
    N9: TMenuItem;
    inventario: TMenuItem;
    lf_0121: TMenuItem;
    lf_0142: TMenuItem;
    lf_0145: TMenuItem;
    N10: TMenuItem;
    lf_0127: TMenuItem;
    lf_0130: TMenuItem;
    N37: TMenuItem;
    lf_0115: TMenuItem;
    lf_0118: TMenuItem;
    Exportaes1: TMenuItem;
    lf_0133: TMenuItem;
    lf_0139: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaPagar1: TMenuItem;
    cp_0103: TMenuItem;
    BaixadeDuplicatas1: TMenuItem;
    cp_0203: TMenuItem;
    cp_0206: TMenuItem;
    cp_0209: TMenuItem;
    cp_0212: TMenuItem;
    Relatrio2: TMenuItem;
    cp_0303: TMenuItem;
    cp_0306: TMenuItem;
    cp_0109: TMenuItem;
    ContasaReceber1: TMenuItem;
    cr_0103: TMenuItem;
    BaixaDuplicatas1: TMenuItem;
    cr_0303: TMenuItem;
    cr_0306: TMenuItem;
    cr_0309: TMenuItem;
    cr_0312: TMenuItem;
    cr_0315: TMenuItem;
    N60: TMenuItem;
    cr_0318: TMenuItem;
    Relatorios1: TMenuItem;
    cr_0203: TMenuItem;
    cr_0206: TMenuItem;
    cr_0209: TMenuItem;
    cr_0215: TMenuItem;
    cartadecobranca: TMenuItem;
    cr_0218: TMenuItem;
    cr_0221: TMenuItem;
    cr_0224: TMenuItem;
    ChequesdeClientes1: TMenuItem;
    rcr_0106: TMenuItem;
    Relatrios2: TMenuItem;
    rcr_0109: TMenuItem;
    Baixas1: TMenuItem;
    rcr_0112: TMenuItem;
    N7: TMenuItem;
    rcr_0115: TMenuItem;
    N56: TMenuItem;
    rcr_0118: TMenuItem;
    N33: TMenuItem;
    rcr_0121: TMenuItem;
    CalculosDiversos1: TMenuItem;
    cr_0903: TMenuItem;
    cr_0906: TMenuItem;
    cr_0909: TMenuItem;
    cr_0912: TMenuItem;
    cr_0918: TMenuItem;
    cr_0915: TMenuItem;
    Sistema1: TMenuItem;
    Sobre1: TMenuItem;
    sis_0103: TMenuItem;
    sis_0106: TMenuItem;
    sis_0109: TMenuItem;
    Parametros: TMenuItem;
    sis_0112: TMenuItem;
    sis_0114: TMenuItem;
    sis_0117: TMenuItem;
    sis_0120: TMenuItem;
    sis_0123: TMenuItem;
    sis_0126: TMenuItem;
    sis_0129: TMenuItem;
    N36: TMenuItem;
    sis_0132: TMenuItem;
    N63: TMenuItem;
    sis_0135: TMenuItem;
    ImpressoraFiscal1: TMenuItem;
    sis_0203: TMenuItem;
    sis_0206: TMenuItem;
    sis_0209: TMenuItem;
    sis_0212: TMenuItem;
    sis_0215: TMenuItem;
    sis_0218: TMenuItem;
    sis_0221: TMenuItem;
    sis_0224: TMenuItem;
    sis_0227: TMenuItem;
    sis_0230: TMenuItem;
    sis_0233: TMenuItem;
    sis_0236: TMenuItem;
    sis_0239: TMenuItem;
    sis_0242: TMenuItem;
    sis_0115: TMenuItem;
    sis_0118: TMenuItem;
    sis_0121: TMenuItem;
    sis_0124: TMenuItem;
    sis_0127: TMenuItem;
    Tabulacoes: TMenuItem;
    sis_0312: TMenuItem;
    Continua1: TMenuItem;
    sis_0303: TMenuItem;
    sis_0130: TMenuItem;
    sis_0133: TMenuItem;
    Especiais1: TMenuItem;
    sis_0601: TMenuItem;
    sis_0606: TMenuItem;
    sis_0609: TMenuItem;
    sis_0630: TMenuItem;
    sis_0633: TMenuItem;
    sis_0636: TMenuItem;
    sis_0639: TMenuItem;
    sis_0642: TMenuItem;
    sis_0645: TMenuItem;
    sis_0648: TMenuItem;
    sis_0651: TMenuItem;
    sis_0690: TMenuItem;
    sis_0654: TMenuItem;
    sis_0657: TMenuItem;
    sis_0660: TMenuItem;
    sis_0663: TMenuItem;
    sis_0666: TMenuItem;
    sis_0669: TMenuItem;
    sis_0672: TMenuItem;
    sis_0675: TMenuItem;
    sis_0678: TMenuItem;
    sis_0681: TMenuItem;
    sis_0684: TMenuItem;
    sis_0687: TMenuItem;
    sis_0693: TMenuItem;
    Outros1: TMenuItem;
    sis_0696: TMenuItem;
    DispositivosMveis1: TMenuItem;
    sis_0612: TMenuItem;
    sis_0615: TMenuItem;
    N49: TMenuItem;
    sis_0621: TMenuItem;
    N47: TMenuItem;
    sis_0618: TMenuItem;
    Backups1: TMenuItem;
    sis0615: TMenuItem;
    sis0618: TMenuItem;
    sis0621: TMenuItem;
    sis0639: TMenuItem;
    sis0624: TMenuItem;
    sis0627: TMenuItem;
    sis0630: TMenuItem;
    sis0633: TMenuItem;
    sis0636: TMenuItem;
    ransfernciasdeArquivos1: TMenuItem;
    msis_0703: TMenuItem;
    msis_0706: TMenuItem;
    msis_0718: TMenuItem;
    N52: TMenuItem;
    msis_0709: TMenuItem;
    msis_0712: TMenuItem;
    msis_0721: TMenuItem;
    N53: TMenuItem;
    msis_0715: TMenuItem;
    sis0642: TMenuItem;
    MudaEtilodoMenu1: TMenuItem;
    MudaEtilodoMenu2: TMenuItem;
    ppal_intersys: TPanel;
    Abre_Imagem: TOpenPictureDialog;
    elaCheiaNormal2: TMenuItem;
    Label1: TLabel;
    N69: TMenuItem;
    CobranaIntercmbioEletroni1: TMenuItem;
    rcr_0124: TMenuItem;
    rcr_0127: TMenuItem;
    Timer3: TTimer;
    N70: TMenuItem;
    mdiv_0115: TMenuItem;
    btcorrige_tela: TButton;
    N71: TMenuItem;
    N72: TMenuItem;
    sis_0138: TMenuItem;
    N73: TMenuItem;
    sis_0141: TMenuItem;
    mos_0109: TMenuItem;
    mos_0115: TMenuItem;
    N74: TMenuItem;
    cp_0112: TMenuItem;
    rcli_0127: TMenuItem;
    rped_0109: TMenuItem;
    N76: TMenuItem;
    mos_0118: TMenuItem;
    N77: TMenuItem;
    cp_0115: TMenuItem;
    N78: TMenuItem;
    mcai_0130: TMenuItem;
    rpro_0166: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    rpro_0169: TMenuItem;
    N81: TMenuItem;
    rger_0260: TMenuItem;
    cr_0212: TMenuItem;
    cr_0230: TMenuItem;
    cp_0309: TMenuItem;
    N82: TMenuItem;
    sis_0245: TMenuItem;
    N83: TMenuItem;
    conhecimento: TMenuItem;
    sai_0163: TMenuItem;
    sai_0166: TMenuItem;
    sai_0169: TMenuItem;
    N84: TMenuItem;
    cr_0233: TMenuItem;
    N85: TMenuItem;
    cp_0312: TMenuItem;
    cr_0236: TMenuItem;
    sai_0172: TMenuItem;
    sai_0175: TMenuItem;
    sai_0178: TMenuItem;
    rpro_0178: TMenuItem;
    rped_0112: TMenuItem;
    rped_0115: TMenuItem;
    rven_0136: TMenuItem;
    mcli_0136: TMenuItem;
    rped_0118: TMenuItem;
    N86: TMenuItem;
    rcr_0130: TMenuItem;
    N87: TMenuItem;
    rven_0142: TMenuItem;
    mven_0112: TMenuItem;
    rpro_0181: TMenuItem;
    sai_0151: TMenuItem;
    N89: TMenuItem;
    rger_0263: TMenuItem;
    lf_0148: TMenuItem;
    N31: TMenuItem;
    mfor_0109: TMenuItem;
    N32: TMenuItem;
    rfor_0118: TMenuItem;
    sb_caixa: TSpeedButton;
    cr_0921: TMenuItem;
    N75: TMenuItem;
    rven_0145: TMenuItem;
    lf_0151: TMenuItem;
    sai_0181: TMenuItem;
    N91: TMenuItem;
    rcr_0139: TMenuItem;
    N92: TMenuItem;
    sis_0144: TMenuItem;
    sis_0147: TMenuItem;
    Timer2: TTimer;
    N93: TMenuItem;
    rger_0266: TMenuItem;
    sai_0154: TMenuItem;
    rven_0148: TMenuItem;
    sai_0184: TMenuItem;
    mpro_0181: TMenuItem;
    consembprod: TMenuItem;
    sai_0187: TMenuItem;
    sai_0190: TMenuItem;
    N39: TMenuItem;
    mven_0115: TMenuItem;
    mdiv_0118: TMenuItem;
    mpro_0184: TMenuItem;
    mind_0139: TMenuItem;
    mpro_0187: TMenuItem;
    rel_localidades: TMenuItem;
    rest_0118: TMenuItem;
    N64: TMenuItem;
    mven_0118: TMenuItem;
    mven_0121: TMenuItem;
    cr_0924: TMenuItem;
    N90: TMenuItem;
    lf_0154: TMenuItem;
    sai_0196: TMenuItem;
    cp_0118: TMenuItem;
    cp_0121: TMenuItem;
    cp_0127: TMenuItem;
    cp_0124: TMenuItem;
    mcli_0139: TMenuItem;
    rpro_0187: TMenuItem;
    N35: TMenuItem;
    mpro_0209: TMenuItem;
    N38: TMenuItem;
    sai_0199: TMenuItem;
    cr_0239: TMenuItem;
    mloc_0112: TMenuItem;
    mloc_0115: TMenuItem;
    cr_0927: TMenuItem;
    Integraes1: TMenuItem;
    sis2103: TMenuItem;
    Industria_Envase: TMenuItem;
    mIndEnv_0103: TMenuItem;
    mIndEnv_0106: TMenuItem;
    N40: TMenuItem;
    rven_0151: TMenuItem;
    mIndEnv_0109: TMenuItem;
    mIndEnv_0115: TMenuItem;
    ParametrosTiposdePedidos1: TMenuItem;
    rind_0106: TMenuItem;
    N94: TMenuItem;
    mdiv_0121: TMenuItem;
    N95: TMenuItem;
    mdiv_0124: TMenuItem;
    rfor_0121: TMenuItem;
    N96: TMenuItem;
    cr_0928: TMenuItem;
    cr_0929: TMenuItem;
    cr_0930: TMenuItem;
    cp_0130: TMenuItem;
    mfol_0125: TMenuItem;
    N97: TMenuItem;
    mcai_0133: TMenuItem;
    Bairros1: TMenuItem;
    rest_0121: TMenuItem;
    Funcionrios1: TMenuItem;
    rfun_0001: TMenuItem;
    ClientSocket1: TClientSocket;
    ServerSocket1: TServerSocket;
    mpro_0106: TMenuItem;
    mpro_0190: TMenuItem;
    mpro_0193: TMenuItem;
    ParametrosConfiguraes1: TMenuItem;
    saiconf_0103: TMenuItem;
    saiconf_0106: TMenuItem;
    saiconf_0109: TMenuItem;
    saiconf_0112: TMenuItem;
    mven_118: TMenuItem;
    FabricaoporEncomenda1: TMenuItem;
    saiconf_0115: TMenuItem;
    N41: TMenuItem;
    rven_0153: TMenuItem;
    saiconf_0118: TMenuItem;
    sai_0118: TMenuItem;
    sai_0119: TMenuItem;
    CalcularCoeficiente1: TMenuItem;
    ActionList1: TActionList;
    N88: TMenuItem;
    RelatrioComparativodeComisses1: TMenuItem;
    UltimasVendas1: TMenuItem;
    cp_0215: TMenuItem;
    rfor_0124: TMenuItem;
    MateriaisdeEnvase1: TMenuItem;
    mpro_0301: TMenuItem;
    sai_0202: TMenuItem;
    N50: TMenuItem;
    cr_0242: TMenuItem;
    mcai_0107: TMenuItem;
    rped_0119: TMenuItem;
    mfor_0110: TMenuItem;
    mloc_0108: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Fim1Click(Sender: TObject);
    procedure mpro_0103Click(Sender: TObject);
    procedure musu_0106Click(Sender: TObject);
    procedure musu_0103Click(Sender: TObject);
    procedure musu_0109Click(Sender: TObject);
    procedure mcli_0103Click(Sender: TObject);
    procedure mfor_0103Click(Sender: TObject);
    procedure sai_0103Click(Sender: TObject);
    procedure mpro_0203Click(Sender: TObject);
    procedure mpro_0109Click(Sender: TObject);
    procedure sis_0103Click(Sender: TObject);
    procedure sis_0106Click(Sender: TObject);
    procedure sis_0109Click(Sender: TObject);
    procedure cp_0103Click(Sender: TObject);
    procedure rent_0103Click(Sender: TObject);
    procedure sai_0109Click(Sender: TObject);
    procedure rpro_0103Click(Sender: TObject);
    procedure mpro_0112Click(Sender: TObject);
    procedure cp_0203Click(Sender: TObject);
    procedure cp_0206Click(Sender: TObject);
    procedure cp_0209Click(Sender: TObject);
    procedure sis_0203Click(Sender: TObject);
    procedure sis_0206Click(Sender: TObject);
    procedure sis_0209Click(Sender: TObject);
    procedure sis_0212Click(Sender: TObject);
    procedure sis_0221Click(Sender: TObject);
    procedure sis_0224Click(Sender: TObject);
    procedure sis_0227Click(Sender: TObject);
    procedure sis_0230Click(Sender: TObject);
    procedure sis_0233Click(Sender: TObject);
    procedure sis_0236Click(Sender: TObject);
    procedure sis_0239Click(Sender: TObject);
    procedure rger_0103Click(Sender: TObject);
    procedure sis_0115Click(Sender: TObject);
    procedure rpro_0106Click(Sender: TObject);
    procedure sis_0118Click(Sender: TObject);
    procedure mpro_0115Click(Sender: TObject);
    procedure mpro_0118Click(Sender: TObject);
    procedure mpro_0121Click(Sender: TObject);
    procedure mpro_0124Click(Sender: TObject);
    procedure mven_0103Click(Sender: TObject);
    procedure mloc_0103Click(Sender: TObject);
    procedure cfo_0103Click(Sender: TObject);
    procedure cr_0103Click(Sender: TObject);
    procedure rsai_0103Click(Sender: TObject);
    procedure mtra_0103Click(Sender: TObject);
    procedure mcai_0103Click(Sender: TObject);
    procedure mcai_0106Click(Sender: TObject);
    procedure mcai_0107Click(Sender: TObject);
    procedure mcai_0109Click(Sender: TObject);
    procedure mcai_0112Click(Sender: TObject);
    procedure lf_0106Click(Sender: TObject);
    procedure lf_0103Click(Sender: TObject);
    procedure sis_0312Click(Sender: TObject);
    procedure sis_0124Click(Sender: TObject);
    procedure lf_0112Click(Sender: TObject);
    procedure lf_0109Click(Sender: TObject);
    procedure rcli_0106Click(Sender: TObject);
    procedure rpro_0109Click(Sender: TObject);
    procedure rfor_0103Click(Sender: TObject);
    procedure sis_0315Click(Sender: TObject);
    procedure rcli_0109Click(Sender: TObject);
    procedure rest_0103Click(Sender: TObject);
    procedure rgpro_0103Click(Sender: TObject);
    procedure rtpro_0103Click(Sender: TObject);
    procedure rcpro_0103Click(Sender: TObject);
    procedure rven_0103Click(Sender: TObject);
    procedure rtra_0103Click(Sender: TObject);
    procedure rusu_0103Click(Sender: TObject);
    procedure rfun_0103Click(Sender: TObject);
    procedure rpv_0103Click(Sender: TObject);
    procedure rbco_0103Click(Sender: TObject);
    procedure rccu_0103Click(Sender: TObject);
    procedure rdep_0103Click(Sender: TObject);
    procedure rcai_0103Click(Sender: TObject);
    procedure sis_0303Click(Sender: TObject);
    procedure cp_0306Click(Sender: TObject);
    procedure cp_0303Click(Sender: TObject);
    procedure cr_0203Click(Sender: TObject);
    procedure lf_0115Click(
      Sender: TObject);
    procedure lf_0118Click(
      Sender: TObject);
    procedure sis_0127Click(Sender: TObject);
    procedure mcli_0112Click(Sender: TObject);
    procedure sis_0130Click(Sender: TObject);
    procedure mcli_0115Click(Sender: TObject);
    procedure sai_0115Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sis_0601Click(Sender: TObject);
    procedure rpro_0121Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure mind_0103Click(Sender: TObject);
    procedure sis_0606Click(Sender: TObject);
    procedure cr_0303Click(Sender: TObject);
    procedure cr_0306Click(Sender: TObject);
    procedure cr_0309Click(Sender: TObject);
    procedure mcli_0130Click(Sender: TObject);
    procedure mfor_0106Click(Sender: TObject);
    procedure cr_0206Click(Sender: TObject);
    procedure cr_0903Click(Sender: TObject);
    procedure cr_0909Click(Sender: TObject);
    procedure cr_0906Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sis_0133Click(Sender: TObject);
    procedure cr_0209Click(Sender: TObject);
    procedure sis_0609Click(Sender: TObject);
    procedure rger_0221Click(Sender: TObject);
    procedure rger_0212Click(Sender: TObject);
    procedure rger_0215Click(Sender: TObject);
    procedure rger_0218Click(Sender: TObject);
    procedure mpro_0130Click(Sender: TObject);
    procedure mdiv_0103Click(Sender: TObject);
    procedure mdiv_0106Click(Sender: TObject);
    procedure mven_0106Click(Sender: TObject);
    procedure mpro_0133Click(Sender: TObject);
    procedure mpro_0142Click(Sender: TObject);
    procedure rcr_0109Click(Sender: TObject);
    procedure rcr_0106Click(Sender: TObject);
    procedure rcr_0112Click(Sender: TObject);
    procedure rven_0106Click(Sender: TObject);
    procedure rven_0109Click(Sender: TObject);
    procedure rven_0112Click(Sender: TObject);
    procedure rven_0118Click(Sender: TObject);
    procedure rven_0121Click(Sender: TObject);
    procedure rpro_0112Click(Sender: TObject);
    procedure rpro_0115Click(Sender: TObject);
    procedure rven_0124Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure rven_0127Click(Sender: TObject);
    procedure cr_0312Click(Sender: TObject);
    procedure cp_0212Click(Sender: TObject);
    procedure rcli_0112Click(Sender: TObject);
    procedure cp_0109Click(Sender: TObject);
    procedure rped_0301Click(Sender: TObject);
    procedure cr_0215Click(Sender: TObject);
    procedure cr_0912Click(Sender: TObject);
    procedure mloc_0106Click(Sender: TObject);
    procedure mloc_0109Click(Sender: TObject);
    procedure est_0115Click(Sender: TObject);
    procedure rpforClick(Sender: TObject);
    procedure rped_0101Click(Sender: TObject);
    procedure Continua1Click(Sender: TObject);
    procedure rger_0224Click(Sender: TObject);
    procedure mcli_0118Click(Sender: TObject);
    procedure mcli_0121Click(Sender: TObject);
    procedure sis_0612Click(Sender: TObject);
    procedure sis0621Click(Sender: TObject);
    procedure sis0615Click(Sender: TObject);
    procedure sis0618Click(Sender: TObject);
    procedure sis0624Click(Sender: TObject);
    procedure sis0627Click(Sender: TObject);
    procedure mcli_0124Click(Sender: TObject);
    procedure mpro_0145Click(Sender: TObject);
    procedure rger_0227Click(Sender: TObject);
    procedure rcr_0115Click(Sender: TObject);
    procedure sis_0630Click(Sender: TObject);
    procedure rpro_0118Click(Sender: TObject);
    procedure mdiv_0109Click(Sender: TObject);
    procedure cr_0218Click(Sender: TObject);
    procedure cr_0221Click(Sender: TObject);
    procedure mfol_0106Click(Sender: TObject);
    procedure mfol_0109Click(Sender: TObject);
    procedure mfol_0124Click(Sender: TObject);
    procedure mfol_0115Click(Sender: TObject);
    procedure mfol_0103Click(Sender: TObject);
    procedure mfol_0127Click(Sender: TObject);
    procedure mfol_0130Click(Sender: TObject);
    procedure mfol_0118Click(Sender: TObject);
    procedure mfol_0121Click(Sender: TObject);
    procedure sis0630Click(Sender: TObject);
    procedure ServerSocket1Accept(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure sis0633Click(Sender: TObject);
    procedure sis_0215Click(Sender: TObject);
    procedure sis_0218Click(Sender: TObject);
    procedure sai_0112Click(Sender: TObject);
    procedure sai_0121Click(Sender: TObject);
    procedure mind_0109Click(Sender: TObject);
    procedure cr_0915Click(Sender: TObject);
    procedure mcai_0115Click(Sender: TObject);
    procedure rpfor_0103Click(Sender: TObject);
    procedure mpro_0148Click(Sender: TObject);
    procedure rpro_0127Click(Sender: TObject);
    procedure rpro_0133Click(Sender: TObject);
    procedure sis0636Click(Sender: TObject);
    procedure sai_0127Click(Sender: TObject);
    procedure sis_0633Click(Sender: TObject);
    procedure sis_0636Click(Sender: TObject);
    procedure sis_0642Click(Sender: TObject);
    procedure rven_0115Click(Sender: TObject);
    procedure rfor_0106Click(Sender: TObject);
    procedure rfor_0109Click(Sender: TObject);
    procedure rfor_0115Click(Sender: TObject);
    procedure rfor_0112Click(Sender: TObject);
    procedure rger_0230Click(Sender: TObject);
    procedure rest_0106Click(Sender: TObject);
    procedure rest_0112Click(Sender: TObject);
    procedure rest_0109Click(Sender: TObject);
    procedure rest_0115Click(Sender: TObject);
    procedure rcli_0115Click(Sender: TObject);
    procedure rtpro_0106Click(Sender: TObject);
    procedure rtpro_0112Click(Sender: TObject);
    procedure rtpro_0109Click(Sender: TObject);
    procedure rtpro_0115Click(Sender: TObject);
    procedure rgpro_0106Click(Sender: TObject);
    procedure rgpro_0112Click(Sender: TObject);
    procedure rgpro_0109Click(Sender: TObject);
    procedure rgpro_0115Click(Sender: TObject);
    procedure rcpro_0106Click(Sender: TObject);
    procedure rcpro_0112Click(Sender: TObject);
    procedure rcpro_0109Click(Sender: TObject);
    procedure rcpro_0115Click(Sender: TObject);
    procedure rrpro_0106Click(Sender: TObject);
    procedure rrpro_0112Click(Sender: TObject);
    procedure rrpro_0109Click(Sender: TObject);
    procedure rrpro_0115Click(Sender: TObject);
    procedure est_0103Click(Sender: TObject);
    procedure est_0106Click(Sender: TObject);
    procedure est_0109Click(Sender: TObject);
    procedure est_0124Click(Sender: TObject);
    procedure est_0112Click(Sender: TObject);
    procedure est_0118Click(Sender: TObject);
    procedure est_0121Click(Sender: TObject);
    procedure est_0127Click(Sender: TObject);
    procedure est_0130Click(Sender: TObject);
    procedure est_0136Click(Sender: TObject);
    procedure est_0133Click(Sender: TObject);
    procedure est_0139Click(Sender: TObject);
    procedure est_0142Click(Sender: TObject);
    procedure est_0157Click(Sender: TObject);
    procedure est_0160Click(Sender: TObject);
    procedure est_0163Click(Sender: TObject);
    procedure est_0166Click(Sender: TObject);
    procedure est_0151Click(Sender: TObject);
    procedure est_0154Click(Sender: TObject);
    procedure est_0145Click(Sender: TObject);
    procedure est_0148Click(Sender: TObject);
    procedure rcli_0118Click(Sender: TObject);
    procedure rger_0115Click(Sender: TObject);
    procedure rpro_0136Click(Sender: TObject);
    procedure rger_0233Click(Sender: TObject);
    procedure mcai_0118Click(Sender: TObject);
    procedure lf_0124Click(Sender: TObject);
    procedure mpro_0151Click(Sender: TObject);
    procedure mcai_0121Click(Sender: TObject);
    procedure rger_0236Click(Sender: TObject);
    procedure sis_0645Click(Sender: TObject);
    procedure sis_0648Click(Sender: TObject);
    procedure rger_0242Click(Sender: TObject);
    procedure rger_0239Click(Sender: TObject);
    procedure cr_0918Click(Sender: TObject);
    procedure rger_0245Click(Sender: TObject);
    procedure mcai_0124Click(Sender: TObject);
    procedure sis_0615Click(Sender: TObject);
    procedure sis_0651Click(Sender: TObject);
    procedure rsai_0106Click(Sender: TObject);
    procedure rpro_0139Click(Sender: TObject);
    procedure rpro_0145Click(Sender: TObject);
    procedure rpro_0142Click(Sender: TObject);
    procedure rpro_0148Click(Sender: TObject);
    procedure mcli_0106Click(Sender: TObject);
    procedure rpro_0151Click(Sender: TObject);
    procedure sai_0133Click(Sender: TObject);
    procedure rpro_0154Click(Sender: TObject);
    procedure mpro_0206Click(Sender: TObject);
    procedure sis_0112Click(Sender: TObject);
    procedure sis_0114Click(Sender: TObject);
    procedure sis_0654Click(Sender: TObject);
    procedure rcli_0306Click(Sender: TObject);
    procedure sai_0136Click(Sender: TObject);
    procedure sai_0139Click(Sender: TObject);
    procedure sis_0657Click(Sender: TObject);
    procedure rcli_0303Click(Sender: TObject);
    procedure cr_0315Click(Sender: TObject);
    procedure sis_0117Click(Sender: TObject);
    procedure lf_0127Click(Sender: TObject);
    procedure sis_0660Click(Sender: TObject);
    procedure sai_0142Click(Sender: TObject);
    procedure lf_0130Click(Sender: TObject);
    procedure rpro_0157Click(Sender: TObject);
    procedure sis_0666Click(Sender: TObject);
    procedure sis_0663Click(Sender: TObject);
    procedure sis_0669Click(Sender: TObject);
    procedure sis_0120Click(Sender: TObject);
    procedure sis_0123Click(Sender: TObject);
    procedure mpro_0154Click(Sender: TObject);
    procedure mpro_0155Click(Sender: TObject);
    procedure mpro_0127Click(Sender: TObject);
    procedure mpro_0128Click(Sender: TObject);
    procedure mpro_0129Click(Sender: TObject);
    procedure rger_0200Click(Sender: TObject);
    procedure mcai_0127Click(Sender: TObject);
    procedure gnre0103Click(Sender: TObject);
    procedure lf_0133Click(Sender: TObject);
    procedure mos_0103Click(Sender: TObject);
    procedure mos_0106Click(Sender: TObject);
    procedure sai_0124Click(Sender: TObject);
    procedure musu_0112Click(Sender: TObject);
    procedure mmoe_0103Click(Sender: TObject);
    procedure mmoe_0106Click(Sender: TObject);
    procedure mimo_0103Click(Sender: TObject);
    procedure mimo_0106Click(Sender: TObject);
    procedure mvei_0106Click(Sender: TObject);
    procedure mvei_0103Click(Sender: TObject);
    procedure mImo_0109Click(Sender: TObject);
    procedure mvei_0109Click(Sender: TObject);
    procedure rimo_0103Click(Sender: TObject);
    procedure rvei_0103Click(Sender: TObject);
    procedure rmoe_0103Click(Sender: TObject);
    procedure ros_0103Click(Sender: TObject);
    procedure rvei_0106Click(Sender: TObject);
    procedure rimo_0106Click(Sender: TObject);
    procedure mloc_0107Click(Sender: TObject);
    procedure sis_0672Click(Sender: TObject);
    procedure sis_0242Click(Sender: TObject);
    procedure mpro_0160Click(Sender: TObject);
    procedure sis_0675Click(Sender: TObject);
    procedure sis_0126Click(Sender: TObject);
    procedure lf_0136Click(Sender: TObject);
    procedure sis_0618Click(Sender: TObject);
    procedure sis0639Click(Sender: TObject);
    procedure rdiv_0103Click(Sender: TObject);
    procedure mcli_0133Click(Sender: TObject);
    procedure rger_0248Click(Sender: TObject);
    procedure mind_0118Click(Sender: TObject);
    procedure mind_0121Click(Sender: TObject);
    procedure sis_0678Click(Sender: TObject);
    procedure sis_0681Click(Sender: TObject);
    procedure sis_0621Click(Sender: TObject);
    procedure sis_0684Click(Sender: TObject);
    procedure lf_0139Click(Sender: TObject);
    procedure rsai_0109Click(Sender: TObject);
    procedure mpro_0163Click(Sender: TObject);
    procedure rpro_0160Click(Sender: TObject);
    procedure msis_0703Click(Sender: TObject);
    procedure msis_0709Click(Sender: TObject);
    procedure msis_0706Click(Sender: TObject);
    procedure msis_0712Click(Sender: TObject);
    procedure msis_0715Click(Sender: TObject);
    procedure lf_0121Click(Sender: TObject);
    procedure lf_0142Click(Sender: TObject);
    procedure mpro_0157Click(Sender: TObject);
    procedure mpro_0169Click(Sender: TObject);
    procedure msis_0718Click(Sender: TObject);
    procedure msis_0721Click(Sender: TObject);
    procedure sis0642Click(Sender: TObject);
    procedure rger_0251Click(Sender: TObject);
    procedure sis_0687Click(Sender: TObject);
    procedure rger_0254Click(Sender: TObject);
    procedure rcr_0118Click(Sender: TObject);
    procedure mven_0109Click(Sender: TObject);
    procedure rven_0130Click(Sender: TObject);
    procedure rven_0133Click(Sender: TObject);
    procedure sai_0145Click(Sender: TObject);
    procedure cr_0318Click(Sender: TObject);
    procedure sis_0690Click(Sender: TObject);
    procedure lf_0145Click(Sender: TObject);
    procedure mos_0112Click(Sender: TObject);
    procedure rger_0257Click(Sender: TObject);
    procedure mpro_0172Click(Sender: TObject);
    procedure sai_0148Click(Sender: TObject);
    procedure mind_0130Click(Sender: TObject);
    procedure mind_0133Click(Sender: TObject);
    procedure mind_0124Click(Sender: TObject);
    procedure rind_0103Click(Sender: TObject);
    procedure sis_0129Click(Sender: TObject);
    procedure mpro_0175Click(Sender: TObject);
    procedure sai_0106Click(Sender: TObject);
    procedure sai_0160Click(Sender: TObject);
    procedure mdiv_0112Click(Sender: TObject);
    procedure mind_0136Click(Sender: TObject);
    procedure rcli_0121Click(Sender: TObject);
    procedure mcli_0109Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rcr_0121Click(Sender: TObject);
    procedure rped_0103Click(Sender: TObject);
    procedure sis_0135Click(Sender: TObject);
    procedure sis_0132Click(Sender: TObject);
    procedure sis_0693Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure Windows1Click(Sender: TObject);
    procedure elaCheiaNormal1Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure FecharMenu1Click(Sender: TObject);
    procedure mpro_0178Click(Sender: TObject);
    procedure CADASTROClick(Sender: TObject);
    procedure RELATORIOSClick(Sender: TObject);
    procedure ESTATISTICASClick(Sender: TObject);
    procedure FISCAISClick(Sender: TObject);
    procedure FATURAMENTOClick(Sender: TObject);
    procedure FINANCEIROClick(Sender: TObject);
    procedure SISTEMAClick(Sender: TObject);
    procedure BUSCA_FONTES;
    procedure mouse_move_normal;
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure ALTERAFONTE1Click(Sender: TObject);
    procedure CorFundoMenu1Click(Sender: TObject);
    procedure BUSCAIMAGEM1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btreeClick(Sender: TObject);
    procedure busca_texto(textom : string);
    procedure busca_prog;
    procedure MudaEtilodoMenu1Click(Sender: TObject);
    procedure btreeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure elaCheiaNormal2Click(Sender: TObject);
    procedure btreeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure btreeExpanded(Sender: TObject; Node: TTreeNode);
    procedure btreeChange(Sender: TObject; Node: TTreeNode);
    procedure SpeedButton15MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure mdiv_0115Click(Sender: TObject);
    procedure rcr_0124Click(Sender: TObject);
    procedure rcr_0127Click(Sender: TObject);
    procedure btcorrige_telaClick(Sender: TObject);
    procedure SpeedButton10MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton11MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton12MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton13MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton14MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton18MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CORRIGE_HORADATA;
    procedure sis_0138Click(Sender: TObject);
    procedure sis_0141Click(Sender: TObject);
    procedure mos_0109Click(Sender: TObject);
    procedure mos_0115Click(Sender: TObject);
    procedure cp_0112Click(Sender: TObject);
    procedure rcli_0127Click(Sender: TObject);
    procedure rped_0109Click(Sender: TObject);
    procedure mos_0118Click(Sender: TObject);
    procedure cp_0115Click(Sender: TObject);
    procedure mcai_0130Click(Sender: TObject);
    procedure rpro_0166Click(Sender: TObject);
    procedure rpro_0169Click(Sender: TObject);
    procedure rger_0260Click(Sender: TObject);
    procedure cr_0212Click(Sender: TObject);
    procedure cr_0230Click(Sender: TObject);
    procedure sis_0245Click(Sender: TObject);
    procedure sai_0163Click(Sender: TObject);
    procedure sai_0169Click(Sender: TObject);
    procedure sai_0166Click(Sender: TObject);
    procedure cr_0233Click(Sender: TObject);
    procedure cp_0312Click(Sender: TObject);
    procedure cr_0236Click(Sender: TObject);
    procedure sai_0172Click(Sender: TObject);
    procedure sai_0175Click(Sender: TObject);
    procedure sai_0178Click(Sender: TObject);
    procedure rped_0115Click(Sender: TObject);
    procedure rped_0112Click(Sender: TObject);
    procedure mcli_0136Click(Sender: TObject);
    procedure rped_0118Click(Sender: TObject);
    procedure rcr_0130Click(Sender: TObject);
    procedure rven_0142Click(Sender: TObject);
    procedure mven_0112Click(Sender: TObject);
    procedure rpro_0181Click(Sender: TObject);
    procedure sai_0151Click(Sender: TObject);
    procedure rger_0263Click(Sender: TObject);
    procedure lf_0148Click(Sender: TObject);
    procedure mfor_0109Click(Sender: TObject);
    procedure mfor_0110Click(Sender: TObject);
    procedure rfor_0118Click(Sender: TObject);
    procedure cr_0921Click(Sender: TObject);
    procedure rven_0145Click(Sender: TObject);
    procedure lf_0151Click(Sender: TObject);
    procedure sai_0181Click(Sender: TObject);
    procedure rcr_0139Click(Sender: TObject);
    procedure sis_0144Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure cr_0224Click(Sender: TObject);
    procedure rger_0266Click(Sender: TObject);
    procedure sai_0154Click(Sender: TObject);
    procedure rven_0148Click(Sender: TObject);
    procedure sis_0147Click(Sender: TObject);
    procedure sai_0184Click(Sender: TObject);
    procedure mpro_0181Click(Sender: TObject);
    procedure sai_0187Click(Sender: TObject);
    procedure mven_0115Click(Sender: TObject);
    procedure mdiv_0118Click(Sender: TObject);
    procedure mpro_0184Click(Sender: TObject);
    procedure mind_0139Click(Sender: TObject);
    procedure mpro_0187Click(Sender: TObject);
    procedure rest_0118Click(Sender: TObject);
    procedure mven_0118Click(Sender: TObject);
    procedure mven_0121Click(Sender: TObject);
    procedure cr_0924Click(Sender: TObject);
    procedure sai_0157Click(Sender: TObject);
    procedure sai_0193Click(Sender: TObject);
    procedure rpro_0184Click(Sender: TObject);
    procedure lf_0154Click(Sender: TObject);
    procedure sai_0196Click(Sender: TObject);
    procedure mfol_0133Click(Sender: TObject);
    procedure cp_0121Click(Sender: TObject);
    procedure cp_0127Click(Sender: TObject);
    procedure mcli_0139Click(Sender: TObject);
    procedure rpro_0187Click(Sender: TObject);
    procedure mpro_0209Click(Sender: TObject);
    procedure sai_0199Click(Sender: TObject);
    procedure cr_0239Click(Sender: TObject);
    procedure mloc_0112Click(Sender: TObject);
    procedure mloc_0115Click(Sender: TObject);
    procedure cr_0927Click(Sender: TObject);
    procedure sis2103Click(Sender: TObject);
    procedure mIndEnv_0103Click(Sender: TObject);
    procedure cp_0124Click(Sender: TObject);
    procedure mIndEnv_0106Click(Sender: TObject);
    procedure rven_0151Click(Sender: TObject);
    procedure mIndEnv_0109Click(Sender: TObject);
    procedure mIndEnv_0115Click(Sender: TObject);
    procedure ParametrosTiposdePedidos1Click(Sender: TObject);
    procedure rind_0106Click(Sender: TObject);
    procedure mdiv_0121Click(Sender: TObject);
    procedure mdiv_0124Click(Sender: TObject);
    procedure rfor_0121Click(Sender: TObject);
    procedure cr_0928Click(Sender: TObject);
    procedure cr_0929Click(Sender: TObject);
    procedure cp_0130Click(Sender: TObject);
    procedure mfol_0125Click(Sender: TObject);
    procedure mcai_0133Click(Sender: TObject);
    procedure rest_0121Click(Sender: TObject);
    procedure rfun_0001Click(Sender: TObject);
    procedure rrpro_0103Click(Sender: TObject);
    procedure mpro_0106Click(Sender: TObject);
    procedure mpro_0190Click(Sender: TObject);
    procedure mpro_0193Click(Sender: TObject);
    procedure saiconf_0103Click(Sender: TObject);
    procedure saiconf_0106Click(Sender: TObject);
    procedure saiconf_0109Click(Sender: TObject);
    procedure saiconf_0112Click(Sender: TObject);
    procedure mven_118Click(Sender: TObject);
    procedure FabricaoporEncomenda1Click(Sender: TObject);
    procedure saiconf_0115Click(Sender: TObject);
    procedure rven_0153Click(Sender: TObject);
    procedure saiconf_0118Click(Sender: TObject);
    procedure sai_0118Click(Sender: TObject);
    procedure CalcularCoeficiente1Click(Sender: TObject);
    procedure RelatrioComparativodeComisses1Click(Sender: TObject);
    procedure UltimasVendas1Click(Sender: TObject);
    procedure cp_0215Click(Sender: TObject);
    procedure rfor_0124Click(Sender: TObject);
    procedure MateriaisdeEnvase1Click(Sender: TObject);
    procedure mpro_0301Click(Sender: TObject);
    procedure sai_0202Click(Sender: TObject);
    procedure cr_0242Click(Sender: TObject);
    procedure cr_0930Click(Sender: TObject);
    procedure rped_0119Click(Sender: TObject);
    procedure mloc_0108Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rger_0209Click(Sender: TObject);
  private
    function VerificaBloqueio(ptipo: Integer):Boolean;


    { Private declarations }

  public
    { Public declarations }
    form_per2_cli: TFrm_Per2;
    form_per2_pro: TFrm_Per2;
    form_per2_tpro: TFrm_Per2;
    form_per2_cpro: TFrm_Per2;
    form_per2_ven: TFrm_Per2;
    form_per2_tra: TFrm_Per2;
    form_per2_usr: TFrm_Per2;
    form_per2_car: TFrm_Per2;
    form_per2_pv: TFrm_Per2;
    form_per2_bco: TFrm_Per2;
    form_per2_depcx: TFrm_Per2;
    form_per2_ldr: TFrm_Per2;
    form_per2_dap: TFrm_Per2;
    form_per2_dar: TFrm_Per2;
    form_per2_ns: TFrm_Per2;
    form_per2_ne: TFrm_Per2;
    form_per2_aju: TFrm_Per2;
    form_per2_pen: TFrm_Per2;
    form_per2_pf1: TFrm_Per2;
    form_per2_ped01: TFrm_Per2;
    form_per2_ldr02: TFrm_Per2;
    form_per2_imo: TFrm_Per2;
    form_per2_vei01: TFrm_Per2;
    form_per2_moe: TFrm_Per2;
    form_per2_os: TFrm_Per2;
    form_per2_mvei: TFrm_Per2;
    form_per2_mImo: TFrm_Per2;
    form_per2_Loc: TFrm_Per2;
    form_per2_lFol: TFrm_Per2;
    form_per2_Fun: TFrm_Per2;
    form_per2_RPro: TFrm_Per2;
    form_per2_For: TFrm_Per2;
    form_per2_uf : TFrm_Per2;
    form_per2_gpro: TFrm_Per2;
    form_per2_ccu: TFrm_Per2;
    form_per2_bai: TFrm_Per2;

  end;
function fppalDisplayFormat(ptipo: Integer): Boolean;
function fppalFecharMov(ptipo: Integer): Boolean;
function fIdentificaTopico(NomForm,NomCam: String): Integer;
function fExecutaProcedure(pNomeProc: String): boolean;


var
  mLibBloqueios  :boolean; //
  mTestarTimer   :Boolean=true;
  mQtdPedBlq     :Integer=0;

  mLibBlqpedidos  :boolean; //
  mTestarTimerPed :Boolean=true;

  expande_treeview : boolean;
  indice  :integer;
  a,b,c,d,e,f,g,h: Integer;
  T         : integer;
  Frm_PPal  : TFrm_PPal;
  mtent,mOp : Integer;
  mI1, mI2  : String;
  mjaativado: Boolean=false;
  texto     : string;
  prog      : string;
  prog_ant  : string;
  aNode     : TTreeNode;
  aNode1    : TTreeNode;
  aNode2    : TTreeNode;
  aNode3    : TTreeNode;
  aNode4    : TTreeNode;
  aNode5    : TTreeNode;
  aNode6    : TTreeNode;
  aNode7    : TTreeNode;
  aNode8    : TTreeNode;
  aNode9    : TTreeNode;
  aNode10   : TTreeNode;

  aNode00   : TTreeNode;
  aNode11   : TTreeNode;
  aNode22   : TTreeNode;
  aNode33   : TTreeNode;
  aNode44   : TTreeNode;
  aNode55   : TTreeNode;
  aNode66   : TTreeNode;
  aNode77   : TTreeNode;
  aNode88   : TTreeNode;
  aNode99   : TTreeNode;
  aNode100  : TTreeNode;

//  aNode11   : TTreeNode;
  aNode12   : TTreeNode;
  aNode13   : TTreeNode;
  aNode14   : TTreeNode;
  aNode15   : TTreeNode;
  aNode16   : TTreeNode;
  aNode17   : TTreeNode;
  aNode18   : TTreeNode;
  aNode19   : TTreeNode;
  aNode20   : TTreeNode;

  SPASTA1   : STRING;
  SPASTA2   : STRING;
  SPASTA3   : STRING;
  SPASTA4   : STRING;
  SPASTA5   : STRING;
  SPASTA6   : STRING;
  SPASTA7   : STRING;
  SPASTA8   : STRING;
  SPASTA9   : STRING;
  SPASTA10  : STRING;
  CMODULO   : STRING;
type

    TProc = procedure (Obj : Tobject; s: String);

implementation

uses Func, S_Cal,  S_MCodP, S_Caixa,
     S_ImpBD,  S_Mped,  S_Agde, S_AcCRE, S_AcCRR,
     S_EDUP, S_CX_RD, S_Mchq, S_BChq, S_Rcob, S_Evento, S_Info, S_CorEst,
     S_SitCre, S_ParFolha, S_CServer, S_Tab06, func_ecf, S_DM4, S_DM5,S_Proc, Func2,
     S_PvAb, S_AjDescPro, S_DiasMeses, S_ProABC, S_CImp, func_excecoes,
     S_RestLDR, S_RestDados, S_Assessor, S_CX_RCCT, S_Pro_AutoP, S_RelConProd,
     S_min3, S_Ani, S_Ajuda, S_ConProd1, S_Tent, S_RelImp_Prod,
     S_Lic1, S_BloqueioVenda, S_CobEle_Remessa, S_CobEle_Retorno, S_LPreco1,
     S_Mfor01, S_EnviarEmail, S_DapAgru, S_ResQtdPed, S_Texto, S_Pro_Nov,
     S_MRECF, S_Conh_Mercad, func_ppal, S_DM6,
     S_RelVendaComis, S_SuperGer, S_GFor, S_Vend_RelGFor, S_Lev_RecPag,
     S_CFTabIcm, S_MinRel, S_RelBaixaRec, S_mensagem, S_mensagemSom,
     S_Ped_DevCons,  S_Pro_AjPcoInd, S_Mensagem_Barrar,
     S_CotaForVend_Mes, S_CotaProVend_Mes, S_Recibo, S_Comodato, S_PontoCorte,
     S_EstProFor2Cpr, S_Lf_CompraLegalBA, Math, S_MchqCP, S_ChqCP,
     S_PFor_CalcCus, S_Ped_Expedicao, S_RPed_Encargos, S_NFE_Pais, S_NFE_Reg,
     S_Fin_FluxoCaixa, S_Integra_SimilarEMS, S_BChq_CP, S_IndEnv_Fab,
     S_LPreco2, UCalculadora, S_ABC_Assessor, S_Ped_02, S_MTipo_Ped,
     S_Depen, S_Sindicato, s_serasa, s_rel_finan, S_CPSimples, S_Turnos,
     S_Config_Caixa, S_NossoPrograma, S_Pfor01_02,
     S_CrPosCar, S_Editor_Word, S_Pedido_Fortes, S_Planilha,
     S_Pro_Transf_DepPrat, S_PesqProd,  S_Ped_CalcComis,
  S_Editor_PedOP, s_coeficiente, S_Fun, s_ultVen, s_comp_comiss,
  S_BDev_For, S_VdaGForCotas, S_REL_ENV, S_Pro_Replica_Precos, s_sobra_dev,
  S_PedxIndustria, S_RelRecbCartao, S_APcusAcabado, S_TPDRE, s_DRE,
  s_nfsser, S_Sintegra_Advert, S_MCodF, S_MCodL;

//var
//form_ped_02: TFrm_Ped_02;
{$R *.DFM}

procedure TFrm_PPal.FormActivate(Sender: TObject);
var
mbackup: Boolean;
mmens: String;
x: Integer;
begin

if mjaativado then
   begin
   SpeedButton17.Caption:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
    +' '+DM1.Tb_EmpFANTASIA.Value;
   StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

{
      for x:=0 to Screen.FormCount-1 do
         begin
         if LowerCase(Screen.Forms[x].Name)='frm_ppal' then
            continue;
         SetWindowPos (Screen.Forms[x].Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
         end;
}
   exit;
   end;
//Timer1.Enabled:=false;

mTestarTimer   :=false;
mTestarTimerPed:=false;
mjaativado    :=true;
ppal.Visible  := false;
ppalt.visible := false;


frm_ppal.ppal_intersys.Visible := true;
frm_ppal.ppal_intersys.Align   := alClient;
    //alterado
WinVersion;

fSalvarImagem('LOGO0','C:\SGE\LOGO0.JPG');

if FileExists('C:\SGE\LOGO0.JPG') then
   begin
   image1.Picture.LoadFromFile('C:\SGE\LOGO0.JPG');
   flparger(0,0,'1');

   if DM1.Tb_PargerPTAMJPGTAM.Value=0 then
      Image1.Align:=alClient
   else
      begin
      if (DM1.Tb_PargerPTAMJPGALT.AsInteger>Frm_PPal.Height) or
         (DM1.Tb_PargerPTAMJPGTAM.AsInteger>Frm_PPal.Width) then
         Image1.Align:=alClient
      else if DM1.Tb_PargerPTAMJPGALT.AsFloat>0 then
         Image1.Height:=DM1.Tb_PargerPTAMJPGALT.AsInteger;
      if DM1.Tb_PargerPTAMJPGTAM.AsFloat>0 then
         Image1.Width:=DM1.Tb_PargerPTAMJPGTAM.AsInteger;
      mqtd:=(Frm_PPal.Width-Image1.Width) div 2;
      Image1.Left:=mqtd;
      mqtd:=(Frm_PPal.Height-Image1.Height) div 2;
      Image1.Top :=mqtd;
      end;
   Image1.Visible:=True;
   end;
{

//if FileExists(mlogomarcas+'LOGO0.JPG') then
   flparger(0,0,'1');
   if DM1.Tb_PargerPUSA_DEGRADE.Value = 1 then
   if DM1.Tb_PargerPIMAGEM_DEGRADE.Value <> '' then
   begin
//   image1.Picture.LoadFromFile(mlogomarcas+'LOGO0.JPG');
   Image1.Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
//   flparger(0,0,'1');
   if DM1.Tb_PargerPTAMJPG.Value=0 then
      Image1.Align:=alClient
   else
      begin
      if (DM1.Tb_PargerPTAMJPGALT.AsInteger>Frm_PPal.Height) or
         (DM1.Tb_PargerPTAMJPGTAM.AsInteger>Frm_PPal.Width) then
         Image1.Align:=alClient
      else if DM1.Tb_PargerPTAMJPGALT.AsFloat>0 then
         Image1.Height:=DM1.Tb_PargerPTAMJPGALT.AsInteger;
      if DM1.Tb_PargerPTAMJPGTAM.AsFloat>0 then
         Image1.Width:=DM1.Tb_PargerPTAMJPGTAM.AsInteger;
      mqtd:=(Frm_PPal.Width-Image1.Width) div 2;
      Image1.Left:=mqtd;
      mqtd:=(Frm_PPal.Height-Image1.Height) div 2;
      Image1.Top :=mqtd;
      end;
   Image1.Visible:=True;
   end;

}

if DM1.Tb_PargerPINDUSTRIA.AsInteger=5 then
  begin
  sai_0202.Visible:=True;
  end
else
  begin
  sai_0202.Visible:=False;
  end;

testeform := TFrm_PPal(FindGlobalComponent('frm_ent'));
if (testeform=nil)  then
   begin
   if not flparger(0,0,'1') then
      begin
      DM1.Tb_Parger.Append;
      DM1.Tb_PargerCODIGO.Value:=1;
      DM1.Tb_PargerEMPPRE.Value:=codemp;
      DM1.Tb_Parger.Post;
      end;
   if DM1.Tb_PargerUDTTRA.IsNull then
      begin
      DM1.Tb_Parger.Edit;
      DM1.Tb_PargerUDTTRA.Value:=Date;
      DM1.Tb_Parger.Post;
      end;
   if (DM1.Tb_PargerUDTTRA.Value>date) or
      (DM1.Tb_PargerUDTTRA.Value+10<date) then
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_condat'));
      if (testeform=nil)  then
         Application.CreateForm(Tfrm_Condat, Frm_ConDat);
      Frm_Condat.MDTSIS.Text:=FormatDateTime(fdt2, date);
      Frm_Condat.MDTUACE.Text:=FormatDateTime(fdt2, DM1.Tb_PargerUDTTRA.Value);
      Frm_ConDat.QTDD.Text   :=FloatToStr(date-DM1.Tb_PargerUDTTRA.Value);
      if Frm_ConDat.WindowState=wsMinimized then
         Frm_ConDat.WindowState:=wsNormal;
      Frm_ConDat.ShowModal;
      if Frm_ConDat.ModalResult=MrOk then
         begin
         DM1.Tb_Parger.Edit;
         if DM1.Tb_PargerPAQTDATA.IsNull then
            DM1.Tb_Pargerpaqtdata.Value:=1
         else
            DM1.Tb_PargerPAQTDATA.Value:=DM1.Tb_PargerPAQTDATA.Value+1;
         DM1.Tb_PargerPAUSRTD.Value:=ValFloat(Frm_ConDat.edt_CODUSR.Text);
         DM1.Tb_PargerUDTTRA.Value :=date;
         DM1.Tb_parger.Post;
         end
      else
         begin
         fmensagem('O sistema será finalizado.',0,['0'],0);

         Application.Terminate;
         FFecharTudo(2);
         exit;
         end;
      Frm_ConDat.Free;
      Frm_ConDat:=nil;
      end;

   if not VerificaBloqueio(0) then
      begin
      Application.Terminate;
      FFecharTudo(2);
      exit;
      end;
   if Screen.FormCount>10 then
      begin
      fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
              +' fechadas!',0,['0'],0);
      end
   else
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_ent'));
      if (testeform=nil)  then
         Application.CreateForm(Tfrm_Ent, Frm_Ent)
      else
         begin
         frm_Ent.free;
         frm_Ent:=nil;
         Application.CreateForm(Tfrm_Ent, Frm_Ent)
         end;
      if Frm_Ent.WindowState=wsMinimized then
         Frm_Ent.WindowState:=wsNormal;
      if Frm_Ent.ShowModal=mrCancel then
         begin
         Application.Terminate;
         FFecharTudo(2);
         exit;
         end;
      codemp:=DM1.Tb_EmpCODEMP.AsInteger;
// inicio


// termino



      Frm_Ent.Free;
      Frm_Ent:=nil;



// inicio

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.add('Select * from CADCPN where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADCPN',[]),'',' CP_CODEMP=0'+InttoStr(codemp)+' and ')
                        +' CP_NOMEFORM='+chr(39)+'FRM_CLI'+chr(39)
                        +' ORDER BY CP_PARENT_NOME,CP_CAMPO_ORDER ');
      DM1.Query5.Open;
      if DM1.Query5.Eof then
         begin
         DM1.Query5.Close;
         DM1.Query5.SQL.Clear;
         DM1.Query5.SQL.add('Select * from CADCPN_GRID where '
                           +iif(DM1.Qr_Tid.locate('TINOME','CADCPN',[]),'',' CP_CODEMP=0'+InttoStr(codemp)+' and ')
                           +' CP_NOMEFORM='+chr(39)+'FRM_CLI'+chr(39)
                           +' ORDER BY CP_SEQUENCIA ');
         DM1.Query5.Open;
         if DM1.Query5.Eof then
            mredirecionaFormCli:=false
         else
            begin
            mredirecionaFormCli:=true;
            if codusr<>1111 then
               Application.CreateForm(TFrm_Cli, Frm_Cli);
            end;
         end
      else
         begin
         mredirecionaFormCli:=true;
         if codusr<>1111 then
            Application.CreateForm(TFrm_Cli, Frm_Cli);
         end;

// termino


      end;
//   LINDOMAR
   end;
StatusBar1.Panels[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
    +' '+DM1.Tb_EmpFANTASIA.Value;
StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

SpeedButton17.Caption:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
    +' '+DM1.Tb_EmpFANTASIA.Value;
StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

if mpseg='' then
   begin
   While true do
      begin
      flparger(0,0,'1');
      mpseg:=DM1.Tb_pargerPSEGMENTO.Value;
      if (ValInt('0'+copy(mpseg,1,2))<0) or (ValInt('0'+copy(mpseg,1,2))>20) then
          mpseg:=''
      else if (ValInt('0'+copy(mpseg,4,2))<0) or (ValInt('0'+copy(mpseg,4,2))>3) then
          mpseg:=''
      else if (ValInt('0'+copy(mpseg,7,2))<0) or (ValInt('0'+copy(mpseg,7,2))>1) then
          mpseg:='';
      if mpseg='' then
         begin
         testeform := TFrm_PPal(FindGlobalComponent('frm_seg'));
         if (testeform=nil)  then
            begin
            Application.CreateForm(TFrm_Seg, Frm_Seg);
            Frm_Seg.Formstyle:=fsnormal;
            Frm_seg.Visible :=False;
            Frm_Seg.Top:=0;
            end;

        if Frm_seg.WindowState=wsMinimized then
           Frm_seg.WindowState:=wsNormal;
         Frm_Seg.ShowModal;
         Frm_Seg.Free;
         Frm_Seg:=nil;
         mpseg:=DM1.Tb_ParGerPSEGMENTO.Value;
         if mpseg='' then
            begin
            FMensagem('Programa Inoperante!',0,['0'],0);
            Application.Terminate;
            FFecharTudo(2);
            exit;
            end;
         mpseg:=DM1.Tb_ParGerPSEGMENTO.Value;
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            Log_TipoLote :=2;
            Log_TitLote:='Grade';
            Log_UsaDtVcto:=false;
            end
         else if ValInt(copy(mpseg,4,2))=1 then
            begin
            Log_TipoLote:=1;
            Log_TitLote:='Lote';
            Log_UsaDtVcto:=True;
            end
         else if ValInt(copy(mpseg,4,2))=3 then
            begin
            Log_TipoLote:=3;
            Log_TitLote:='Lote';
            Log_UsaDtVcto:=false;
            end
         else
            begin
            Log_TipoLote:=0;
            Log_UsaDtVcto:=false;
            end;

         mcasaspu   :=fRetornaFormatFloat(DM1.Tb_PargerPCASASPU.AsInteger);
         mcasas     :=fRetornaFormatFloat(DM1.Tb_PargerPCASAS.AsInteger);
         mcasqtd    :=fRetornaFormatFloat(DM1.Tb_PargerPCASQTD.AsInteger);
         mcasind    :=fRetornaFormatFloat(DM1.Tb_PargerPCASIND.AsInteger);
         mcaspuind  :=fRetornaFormatFloat(DM1.Tb_PargerPCASPUIND.AsInteger);
         if DM1.Tb_PargerPCASAS.AsInteger<0 then
            mcasger  :=5
         else
            mcasger    :=DM1.Tb_PargerPCASAS.AsInteger;

         fppaldisplayformat(0);
         break;
         end
      else
         break;
      end;
   end;
DM1.Qr_TID.Close;
DM1.Qr_TID.SQL.Clear;
DM1.Qr_TID.SQL.Add('Select * from CADTID');
DM1.Qr_TID.open;
mbackup:=True;
if DM1.Tb_PargerPDTUBKP.IsNull then
   begin
   mmens:='Nunca Foi Feito Backups do Banco de Dados quer Fazer Agora?';
   mbackup:=False;
   end
else
   begin
   if (date-DM1.Tb_PargerPDTUBKP.Value)>3 then
      begin
      mmens:='Seu sistema esta à '+FloatToStr(date-DM1.Tb_PargerPDTUBKP.Value)+' dias sem fazer Backups do Banco de Dados quer Fazer Agora?';
      mbackup:=False;
      end;
   end;

if not mbackup then
   begin
   if Fmensagem(mmens,0,['1','2'],0)=mrYes then
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_bkp'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Bkp, Frm_Bkp);
      if Frm_Bkp.WindowState=wsMinimized then
         Frm_Bkp.WindowState:=wsNormal;
      Frm_Bkp.ShowModal;
      Frm_Bkp.Free;
      Frm_Bkp:=nil;
      end;
   end;
if not  fppalFecharMov(0) then
   begin
   Application.Terminate;
   FFecharTudo(2);
   exit;
   end;
pdatasis:=date;
pdatanula:=StrtoDate('01/01/1900');
if valint(copy(mpseg,1,2))=7 then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_conspro_autop'));
   if (testeform=nil)  then
      Application.CreateForm(TFrm_ConsPro_AutoP, Frm_ConsPro_AutoP);
   end;

mjaativado     := true;
timer3.Enabled := true;
mTestarTimer   := true;
mTestarTimerPed:= true;

//Timer1.Enabled := true;

end;

procedure TFrm_PPal.CORRIGE_HORADATA;
Var
    DataBanco : TDateTime;
    DataHora: TSystemTime;
    Ano, Mes, Dia,
    H, M, S, Mil: word;
begin

     DM1.Query1.CLOSE;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.Add('Select sysdate from dual ');
     DM1.Query1.open;
     DataBanco := DM1.Query1.Fields[0].AsDateTime;
     DecodeDate(DataBanco, Ano, Mes, Dia);
     DecodeTime(DataBanco, H, M, S, Mil);
    with DataHora do
    begin
        wYear   := Ano;
        wMonth  := Mes;
        wDay    := Dia;
        wHour   := H;        wMinute := M;        wSecond := S;        wMilliseconds := Mil;        DM1.Query1.Close;
        SetLocalTime(DataHora);
    end;

end;

procedure TFrm_PPal.Timer1Timer(Sender: TObject);
var
mqtdcomp,x: Integer;
mButao_Encontrado: Boolean;
begin

if (DM4.Tb_parger02PG2SEGLOGOFF.asinteger>0) and (codusr<>1111) then
   begin
   if fQtdSegundos(now,mhoraUltevento)>DM4.Tb_parger02PG2SEGLOGOFF.asinteger then
      begin
      if not (Uppercase(Screen.ActiveForm.Name)='FRM_ENT') then
         begin
         if (Uppercase(Screen.ActiveForm.Name)='FRM_ATUSIS') then
            begin
            if Frm_AtuSis.bbAtuaSGE.Enabled then
               Screen.ActiveForm.Close
            else
               begin
               mButao_Encontrado:=true;
               mhoraUltevento:=now;
               end
            end
         else if (Uppercase(Screen.ActiveForm.Name)='FRM_BKP') then
            begin
            if Frm_bkp.bbIniciar.Enabled then
               Screen.ActiveForm.Close
            else
               begin
               mButao_Encontrado:=true;
               mhoraUltevento:=now;
               end
            end
         else if Uppercase(Screen.ActiveForm.Name)='FRM_ACCR' then
            begin
            if valFloat(Frm_AcCR.HC_DUPLIC.Sections.Items[2].Text)=0 then
               Screen.ActiveForm.Close
            else
               begin
               mButao_Encontrado:=true;

               mhoraUltevento:=now;
               fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                +'Formulario '+Screen.ActiveForm.Caption,0);

               end;
            end
         else if Uppercase(Screen.ActiveForm.Name)='FRM_ACCP' then
            begin
            if valFloat(Frm_AcCP.HC_DUPLIC.Sections.Items[2].Text)=0 then
               Screen.ActiveForm.Close
            else
               begin
               mButao_Encontrado:=true;
               mhoraUltevento:=now;
               fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                +'Formulario '+Screen.ActiveForm.Caption,0);

               end;
            end
         else if Uppercase(Screen.ActiveForm.Name)='FRM_PPAL' then
            keybd_event(VK_F8, 0, 0, 0)
         else
            begin
            mButao_Encontrado:=false;
            mQtdComp:=Screen.ActiveForm.ComponentCount;
            for x:=0 to mqtdcomp-1 do
               begin
               if uppercase(Screen.ActiveForm.Components[x].Name)='TOOL_GRAVAR' then
                  begin
                  mButao_Encontrado:=true;
                  if not (Screen.ActiveForm.Components[x] as tToolButton).Enabled then
                     begin
                     Screen.ActiveForm.Close;
                     break;
                     end
                  else
                     begin
                     mhoraUltevento:=now;
                     fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                 +'Formulario '+Screen.ActiveForm.Caption,0);

                     end;
                  end
               else if (uppercase(Screen.ActiveForm.Components[x].Name)='GRAVAR')
                    or (uppercase(Screen.ActiveForm.Components[x].Name)='BBGRAVAR')
                    or (uppercase(Screen.ActiveForm.Components[x].Name)='BTN_GRAVAR')   then
                  begin
                  mButao_Encontrado:=true;
                  if not (Screen.ActiveForm.Components[x] as tBitBtn).Enabled then
                     begin
                     Screen.ActiveForm.Close;
                     break;
                     end
                  else
                     begin
                     mhoraUltevento:=now;
                     fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                 +'Formulario '+Screen.ActiveForm.Caption
                                 ,0);

                     end;
                  end;
               end;
            if not mButao_Encontrado then
               begin
               Screen.ActiveForm.Close;
               end;

     //      Frm_PerForm.STG1.Cells[00,mlin]:=Frm_Pro.Components[x].Name;
            end;
         end;

      end;
   end;


if (mTestarTimer) and (mLibBloqueios) and (mjaativado)
   and (not mAguardando_processamento ) then

   begin
   if not Frm_Liberar.Active then
      begin
//      timer1.enabled:=false;
      DM4.Qr_ContBlq.close;
      DM4.Qr_ContBlq.Sql.Clear;
      DM4.Qr_ContBlq.sql.add(' Select count(*) ');
      DM4.Qr_ContBlq.sql.Add(' from CADLSEN,CADUSR ');
      DM4.Qr_ContBlq.sql.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
      DM4.Qr_ContBlq.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_TID.Locate('TINOME','CADUSR',[]),'',' and CODEMP=LSCODEMP '));
      DM4.Qr_ContBlq.sql.Add(' and CODUSR=LSCODUSRSOL ');
      DM4.Qr_ContBlq.Open;
      if DM4.Qr_ContBlq.Fields[0].Asinteger>mContaBlq then
         begin
         mContaBlq:=DM4.Qr_ContBlq.Fields[0].Asinteger;
         if Frm_Liberar.WindowState=wsminimized then
            begin
            for x:=1 to 5 do
               begin
//               Frm_Liberar.hide;
//               Frm_Liberar.show;
//               Frm_liberar.Close;
               Beep();
               Sleep(100);
               Frm_Liberar.WindowState:=wsNormal;
//               Frm_Liberar.show;
               end;
//            Frm_Liberar.Show;
//            Frm_Liberar.WindowState:=wsMinimized;

            end
         else
            Frm_Liberar.ShowModal;
         end;
//      timer1.enabled:=true;
      end;
   end;


if (mTestarTimerPed) and (mLibBlqpedidos) and (mjaativado)
   and (not mAguardando_processamento ) then

   begin
   if DM1.Tb_PargerPBLOQPED_MINAVISO.Asinteger>0 then
      begin
//      if round( (DM1.Tb_PargerPBLOQPED_MINAVISO.Asinteger/1000))<>Timer1.Interval then
//         Timer1.Interval:=round( DM1.Tb_PargerPBLOQPED_MINAVISO.Asinteger/1000 );
      if DM1.Tb_PargerPBLOQPED_MINAVISO.Asinteger<>Timer1.Interval then
         Timer1.Interval:=DM1.Tb_PargerPBLOQPED_MINAVISO.Asinteger;

      end;

//   if (Frm_PedBloq=nil) and ( not Frm_PedBloq.Active then

   testeform := TFrm_PPal(FindGlobalComponent('frm_pedbloq'));
   if (testeform=nil)  then
      begin
//      timer1.enabled:=false;
      mTestarTimerPed:=false;

      DM1.Qr_PedBlq.Close;
      DM1.Qr_PedBlq.SQL.Clear;
      DM1.Qr_PedBlq.SQL.Add('Select count(*) from CADP01 '
                           +' where ((P1CODEMP=0'+IntToStr(codemp)+') or (P1CODEMP='
                           +iif(codemp>100,
                                IntToStr(codemp-100)
                                ,intToStr(codemp+100)
                                )+')) '
                           +' and  P1BLOQPEND>1 and P1STATUS<2'
                           +' and  P1STATUS<8 ');

      DM1.Qr_PedBlq.Open;

//      if (DM1.Qr_PedBlq.fields[0].Asinteger>0) and (mQtdPedBlq<>DM1.Qr_PedBlq.fields[0].AsInteger) then
//      if (DM1.Qr_PedBlq.fields[0].Asinteger>0) then
      if (DM1.Qr_PedBlq.fields[0].Asinteger>0) and (Frm_mensagem=nil) and (Frm_MensagemSom=nil) then
         begin
         mTestarTimerPed:=false;
         mQtdPedBlq:=DM1.Qr_PedBlq.fields[0].AsInteger;
         AvisoSonoro(1);
         if fMensagemsom('Existem pedidos Pedidos Bloqueados, deseja habilitar a tela'
                     +' para checa-los?',0,['1','2'],2)=mryes then
//         if fmensagemSom('Existem pedidos Pedidos Bloqueados, deseja habilitar a tela'
//                     +' para checa-los?',0,['1','2'],1)=mrYes then
//         if fmensagemSom('Existem pedidos Pedidos Bloqueados, deseja habilitar a tela'
//                     +' para checa-los?',0,['1','2'],1)=mrYes then

            begin
//            SpeedButton17.Caption:='Existem pedidos Pedidos Bloqueados,'+DM1.Qr_PedBlq.fields[0].AsString;
            testeform := TFrm_PPal(FindGlobalComponent('frm_pedbloq'));
            if (testeform=nil)  then
               Application.Createform(TFrm_Pedbloq, Frm_Pedbloq);
            if Frm_Pedbloq.WindowState=wsMinimized then
               Frm_PedBloq.WindowState:=wsNormal
            else
               begin
               Frm_PedBloq.ShowModal;
               Frm_PedBloq.Free;
               Frm_PedBloq:=nil;
               mTestarTimerPed:=true;
               end
//            timer1.enabled:=true;
            end
         else
            mTestarTimerPed:=true;
         end
      else
         begin
         mTestarTimerPed:=true;
//         timer1.enabled :=true;
         end;
      end;
   end;




StatusBar1.Panels[0].Text:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
StatusBar1.Panels[1].Text:=insere2(StatusBar1.Panels[1].Text,' ',40)+'[QF:'+FormatFloat('#00',Screen.FormCount)+']';

SpeedButton15.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
label1.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
//label1.caption := LongDayNames[DayOfWeek(now)]+' '+FormatDateTime('D "de" MMMM "de" YYYY', now);

end;

procedure TFrm_PPal.Fim1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PPal.mpro_0103Click(Sender: TObject);
begin
if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_proconf'));
   if (testeform=nil)  then
      Application.CreateForm(TFrm_ProConf, Frm_ProConf);
   if Frm_ProConf.WindowState=wsMinimized then
      Frm_ProConf.WindowState:=wsNormal
   else
      Frm_proConf.Show;
   end
else if valint(copy(mpseg,1,2))=7 then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_pro_autop'));
   if (testeform=nil)  then
       Application.CreateForm(TFrm_Pro_AutoP, Frm_Pro_AutoP);
   if Frm_Pro_AutoP.WindowState=wsMinimized then
      Frm_Pro_AutoP.WindowState:=wsNormal
   else
      Frm_Pro_AutoP.Show;
   end
else
   begin
   if DM1.Tb_pargerPFORPROPAD.Asinteger=1 then
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_pro_nov'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Pro_Nov, Frm_Pro_Nov);

      if Frm_Pro_Nov.WindowState=wsMinimized then
         Frm_Pro_Nov.WindowState:=wsNormal
      else
         Frm_Pro_Nov.Show;
      end
   else
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_pro'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Pro, Frm_Pro);
      if Frm_Pro.WindowState=wsMinimized then
         Frm_Pro.WindowState:=wsNormal
      else
         Frm_Pro.Show;
      end;
   end;

end;

procedure TFrm_PPal.musu_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_funcao'));
if (testeform=nil)  then
   Application.createForm(TFrm_Funcao, Frm_Funcao);

if Frm_Funcao.WindowState=WsMinimized then
   frm_funcao.WindowState:=WsNormal
else
   frm_funcao.Show;

end;

procedure TFrm_PPal.musu_0103Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_usr'));
if (testeform=nil)  then
   Application.createForm(TFrm_Usr, Frm_Usr);

if Frm_Usr.WindowState=WsMinimized then
   frm_Usr.WindowState:=WsNormal
else
   frm_Usr.Show;




end;

procedure TFrm_PPal.musu_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sen01'));
if (testeform=nil)  then
   Application.createForm(TFrm_Sen01, Frm_Sen01);

if Frm_Sen01.WindowState=WsMinimized then
   Frm_Sen01.WindowState:=WsNormal
else
   frm_Sen01.Show;
end;

procedure TFrm_PPal.mcli_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cli'));
if (testeform=nil)  then
   begin
   if not (mredirecionaFormCli) or (codusr=1111) then
      begin
      testeform := TFrm_PPal(FindGlobalComponent('frm_cli'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Cli, Frm_Cli);

      end;

   end;

if Frm_Cli.WindowState=wsMinimized then
   Frm_Cli.WindowState:=wsNormal
else
   Frm_Cli.Show;

end;

procedure TFrm_PPal.mfor_0103Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_for'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_For, Frm_For);
if Frm_For.WindowState=WsMinimized then
   Frm_For.WindowState:=WsNormal
else
   frm_For.Show;


end;

procedure TFrm_PPal.sai_0103Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;
if DM1.Tb_PargerPFORPEDPAD.asinteger=1 then
   begin
   if (codemp>100) and (log_codven>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
      begin
      fmensagem('Favor selecionar uma empresa válida!',0,['0'],0);
      exit;
      end;
   testeform := TFrm_PPal(FindGlobalComponent('frm_ped_autop'));
   if (testeform=nil)  then
      begin
      Application.Createform(Tfrm_Ped_AutoP, Frm_Ped_AutoP);
      end;
   While true do
      begin
      if DM1.Tb_PargerPLOGUSRPED.AsInteger=1 then
         begin
         if Frm_Login_Usuario.WindowState=wsMinimized then
            Frm_Login_Usuario.WindowState:=wsNormal;
         Frm_login_Usuario.Show; //tem que arrumar aqui
            begin
            DM1.Tb_Funcao.Close;
            DM1.Tb_Funcao.SQl.Clear;
            DM1.Tb_Funcao.SQL.Add('Select * from CADCAR where ');
            if DM1.Qr_TID.Locate('TINOME','CADCAR',[]) then
               DM1.Tb_Funcao.SQL.add(' CODCAR=0'+DM4.Tb_UsrCODCAR.AsString
                         +' order by CODCAR')
            else
                DM1.Tb_funcao.SQL.Add(' CODEMP=0'+DM4.Tb_UsrCODEMP.AsString
                        +' and CODCAR=0'+DM4.Tb_UsrCODCAR.AsString);
            DM1.Tb_Funcao.Open;
            mLibBloqueios  :=false;
            fEntConclui(0);
            break;
            end
         end;
      if Frm_Ped_AutoP.WindowState=wsMinimized then
         begin
         Frm_Ped_AutoP.WindowState:=wsNormal;
         end
      else
         begin

         Frm_Ped_AutoP.Show;
         end;
      if DM1.Tb_PargerPLOGUSRPED.AsInteger<>1 then
         break;
      end;
   end
else if DM1.Tb_PargerPFORPEDPAD.asinteger=2 then
   begin

   testeform := TFrm_PPal(FindGlobalComponent('form_ped_02'));
   if (testeform=nil)  then
      begin
      Application.Createform(Tfrm_ped_02, frm_ped_02);
       end;
   if frm_ped_02.WindowState=wsMinimized then
      frm_ped_02.WindowState:=wsNormal
   else
      frm_ped_02.Show;
   end
else
   begin

   testeform := TFrm_PPal(FindGlobalComponent('frm_ped'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Ped, Frm_Ped);
      end;
   Frm_Ped.Show
   end;
end;

procedure TFrm_PPal.mpro_0203Click(Sender: TObject);
begin
if (DM1.Tb_PargerPCOMPRAPADRAO.AsInteger = 1) then
   begin
   {---Novo Formulario---}
   if not ftestacaixa(0) then
      exit;

   testeform := TFrm_PPal(FindGlobalComponent('frm_pfor01_02'));
   if (testeform=nil) then
      begin
      Application.CreateForm(Tfrm_Pfor01_02, frm_Pfor01_02);
      Frm_PFor01.FormStyle:=fsNormal;
      Frm_PFor01.Visible  :=false;
      end;

   if frm_Pfor01_02.WindowState=WsMinimized then
      frm_Pfor01_02.WindowState:=WsNormal
   else
      frm_Pfor01_02.Show;
   end
else
   begin
   if not ftestacaixa(0) then
      exit;
   testeform := TFrm_PPal(FindGlobalComponent('frm_pfor01'));
   if (testeform=nil) then
       begin
       Application.CreateForm(Tfrm_Pfor01, frm_Pfor01);
       Frm_PFor01.FormStyle:=fsNormal;
       Frm_PFor01.Visible  :=false;
       Frm_PFor01.top:=0;
       end;
   if frm_Pfor01.WindowState=WsMinimized then
      frm_Pfor01.WindowState:=WsNormal
   else
      frm_Pfor01.Show;
   end;
end;

procedure TFrm_PPal.mpro_0109Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_cpf'));
if (testeform=nil)  then
   Application.Createform(Tfrm_CPF, Frm_CPF);
if Frm_CPF.WindowState=wsMinimized then
   Frm_CPF.WindowState:=wsnormal
else
   Frm_CPF.Show;


end;

procedure TFrm_PPal.sis_0103Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,16,0,0,0,0,0, 'Senha Para Fazer Manutenção em Impressoras','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_cimp'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_CImp, Frm_Cimp);

if Frm_CImp.WindowState=WsMinimized then
   Frm_CImp.WindowState:=WsNormal
else
   frm_CImp.Show;

end;

procedure TFrm_PPal.sis_0106Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,10,0,0,0,0,0, 'Senha Para Ajustar Acessos de Usuários','')<>0 then
   exit;
DM1.Tb_Funcao.close;
testeform := TFrm_PPal(FindGlobalComponent('frm_ace'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Ace, Frm_Ace);

if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Ace.Industria1.Visible:=False;
   Frm_Ace.Industria2.Visible:=False;
   Frm_Ace.mpro_0154.Visible       :=False;
   Frm_Ace.mpro_0155.Visible       :=False;
   Frm_Ace.Industria_Envase.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Ace.Industria1.Visible      :=False;
   Frm_Ace.Industria2.Visible      :=true;
   Frm_Ace.mpro_0154.Visible       :=False;
   Frm_Ace.mpro_0155.Visible       :=True;
   Frm_Ace.Industria_Envase.Visible:=true;
   end
else
   begin
   Frm_Ace.Industria1.Visible:=true;
   Frm_Ace.Industria2.Visible:=true;
   Frm_Ace.mpro_0154.Visible       :=True;
   Frm_Ace.mpro_0155.Visible       :=True;
   Frm_Ace.Industria_Envase.Visible:=false;
   end;


if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_Ace.consembprod.Visible:=true
else
   Frm_Ace.consembprod.Visible:=False;


if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_ace.sai_0112.Visible :=True;
   end
else
   begin
   Frm_Ace.sai_0112.Visible :=False;
   end;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_Ace.mloc_0106.Visible:=True;
   Frm_Ace.mloc_0107.Visible:=True;
   Frm_Ace.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_Ace.mloc_0106.Visible :=False;
   Frm_Ace.mloc_0107.Visible :=False;
   Frm_Ace.mloc_0108.Visible :=False;
   end;

if DM1.Tb_PargerPCODDBC.Value=1  then
   begin
   Frm_Ace.mpro_0148.Visible:=True;
   Frm_Ace.rpro_0124.Visible:=True;
   Frm_Ace.rpro_0133.Visible:=True;
   end
else
   begin
   Frm_Ace.mpro_0148.Visible:=False;
   Frm_Ace.rpro_0124.Visible:=False;
   Frm_Ace.rpro_0133.Visible:=False;
   end;

if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   Frm_Ace.mloc_0109.Visible:=True;
   end
else
   begin
   Frm_Ace.mloc_0109.Visible :=False;
   end;

if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_Ace.folha.Visible :=True;
   end
else
   begin
   Frm_ace.folha.Visible:=false;
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Frm_Ace.mpro_0166.Visible :=True;
   Frm_Ace.NMP.Visible :=True;
   end
else
   begin
   Frm_Ace.mpro_0166.Visible :=False;
   Frm_Ace.NMP.Visible       :=False;
   end;

if DM1.Tb_PargerPUIMOBIL.Value=1 then
   begin
   Frm_Ace.Imobilizados.Visible     :=True;
   Frm_Ace.rel_imobilizados.Visible :=True;
   end
else
   begin
   Frm_ace.Imobilizados.Visible    :=false;
   Frm_ace.rel_imobilizados.Visible:=false;
   end;
if (valint(copy(mpseg,4,2))<>1) then
   begin
   Frm_Ace.sis2103.Visible  :=false;
   end;

if (valint(copy(mpseg,4,2))=2) then
   begin
   Frm_Ace.lf_0142.Visible  :=true;   // inventario por grade
   Frm_Ace.lf_0145.Visible  :=true;   // comparar inventario por grade
   Frm_Ace.mpro_0166.Visible:=true;   // manutenção em materia primas
   Frm_Ace.mven_0109.Visible:=true;   // manutenção em assessores
   Frm_Ace.rven_0130.Visible       :=true; // comissão por venda do assessor
   Frm_Ace.rven_0133.Visible       :=true; // comissão por recebimento do assessor
   end
else
   begin
   Frm_ace.lf_0142.Visible  :=false;
   Frm_ace.lf_0145.Visible  :=false;
   Frm_Ace.mpro_0166.Visible:=false;
   Frm_Ace.mven_0109.Visible:=false;
//   Frm_Ace.rven_0130.Visible       :=true;
//   Frm_Ace.rven_0133.Visible       :=true;
   end;

if DM1.Tb_PargerPUCONVEI.Value=1 then
   begin
   Frm_Ace.veiculos.Visible     :=True; // manutenção em veiculos
   Frm_Ace.rel_veiculos.Visible :=True; // relatorio de veiculos
   end
else
   begin
   Frm_ace.veiculos.Visible    :=false;
   Frm_ace.rel_veiculos.Visible:=false;
   end;


if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_Ace.sai_0127.Visible:=True;
   end
else
   begin
   Frm_Ace.sai_0127.Visible:=false;
   end;

if Frm_Ace.WindowState=WsMinimized then
   Frm_Ace.WindowState:=WsNormal
else
   frm_Ace.Show;
end;

procedure TFrm_PPal.sis_0109Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,0,0,0,0,0,0, 'Senha Para Ajustar as Senhas Internas','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_sen_int'));
if (testeform=nil)  then
   Application.createform(TFrm_Sen_Int,Frm_Sen_Int);
if Frm_Sen_Int.WindowState=WsMinimized then
   Frm_Sen_Int.WindowState:=WsNormal
else
   frm_Sen_Int.Show;

end;

procedure TFrm_PPal.cp_0103Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_dap'));
if (testeform=nil)  then
   Application.createform(TFrm_dap,Frm_dap);

if Frm_Dap.WindowState=WsMinimized then
   Frm_Dap.WindowState:=WsNormal
else
   frm_Dap.Show;

end;

procedure TFrm_PPal.rent_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ne'));
if (testeform=nil)  then
   Application.createform(TFrm_ne,Frm_ne);

if Frm_NE.WindowState=WsMinimized then
   Frm_NE.WindowState:=WsNormal
else
   frm_NE.Show;
end;

procedure TFrm_PPal.sai_0109Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;



testeform := TFrm_PPal(FindGlobalComponent('frm_cele'));
if (testeform=nil)  then
   Application.createform(TFrm_CEle,Frm_CEle);

if Frm_CEle.WindowState=WsMinimized then
   Frm_CEle.WindowState:=WsNormal
else
   frm_CEle.Show;
end;

procedure TFrm_PPal.rpro_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lpreco2'));
if (testeform=nil)  then
   Application.createform(TFrm_LPreco2,Frm_LPreco2);

if Frm_LPreco2.WindowState=WsMinimized then
   Frm_LPreco2.WindowState:=WsNormal
else
   frm_LPreco2.Show;
end;

procedure TFrm_PPal.mpro_0112Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,28,0,0,0,0,0, 'Senha Para Mudar o Código do Produto','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_mcodp'));
if (testeform=nil)  then
   Application.createform(TFrm_mcodp,Frm_mcodp);

if Frm_MCodP.WindowState=WsMinimized then
   Frm_MCodP.WindowState:=WsNormal
else
   frm_MCodP.Show;

end;

procedure TFrm_PPal.cp_0203Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,14,0,0,0,0,0, 'Senha Para Baixar Duplicatas a Pagar','')<>0 then
   exit;

if not ftestacaixa(0) then exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_accp'));
if (testeform=nil)  then
   Application.createform(TFrm_accp,Frm_Accp);

if Frm_AcCP.WindowState=WsMinimized then
   Frm_AcCP.WindowState:=WsNormal
else
   frm_AcCP.Show;

StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);


end;

procedure TFrm_PPal.cp_0206Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,14,0,0,0,0,0, 'Senha Excluir Baixa Duplicatas a Pagar','')<>0 then
   exit;
if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_accpe'));
if (testeform=nil)  then
   Application.createform(TFrm_Accpe,Frm_accpe);

if Frm_AcCPE.WindowState=WsMinimized then
   Frm_AcCPE.WindowState:=WsNormal
else
   frm_AcCPE.Show;

end;

procedure TFrm_PPal.cp_0209Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,14,0,0,0,0,0, 'Senha Para Emitir Relatorio de Duplicatas Pagas','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_accpr'));
if (testeform=nil)  then
   Application.createform(TFrm_accpr,Frm_accpr);


if Frm_AcCPR.WindowState=WsMinimized then
   Frm_AcCPR.WindowState:=WsNormal
else
   frm_AcCPR.Show;

end;

procedure TFrm_PPal.sis_0203Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pecf'));
if (testeform=nil)  then
   Application.createform(TFrm_pecf,Frm_pecf);

if Frm_PECF.WindowState=WsMinimized then
   Frm_PECF.WindowState:=WsNormal
else
   frm_PECF.Show;

end;

procedure TFrm_PPal.sis_0206Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
mcinst:='- A programação do horário de verão será realizada somente  após  uma'+#13
       +'  Redução Z. Para desprogramar, somente 1 (uma) hora após a Redução Z'+#13
       +'  e não pode ter havido movimento na impressora nesse  período.  Quer'+#13
       +'  Continuar?';
serieecf:='';
if fMensagem(pchar(mcinst),0,['1','2'],2)<>mryes then
   exit;
iRetorno := Bematech_FI_ProgramaHorarioVerao();
if iRetorno<>1 then
   fmensagem('Erro Número: ',0,['0'],0);
end;

procedure TFrm_PPal.sis_0209Click(Sender: TObject);
var
sm: String;
begin
if not ftestaecf(0) then
   exit;
// alterado

sm:='';
if InputQuery('Símbolo da Moeda','Entre com o símbolo da moeda corrente:',sm) then
   begin
   If Trim(sm)<>'' then
      begin
      iRetorno := Bematech_FI_AlteraSimboloMoeda( pchar(sm) );
      if iRetorno<>1 then
      fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao alterar o simbolo da moeda!',0,['0'],0);

      end;
   end;
serieecf:='';
end;
procedure TFrm_PPal.sis_0212Click(Sender: TObject);
var
  mAls: String;
  mAl: real;
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
if DM1.Tb_ECFCFMODELO.Value<>0 then
   begin

   fmensagem('Esta opção não é valida para esta impressora!',0,['0'],0);

   exit;
   end;
iRetorno:=fverestimp(2);
if iRetorno=9 then
   exit;

//Cadastra Alíquotas de ICMS

mAl:=StrToFloat(InputBox('Alíquota de ICMS','Entre com a alíquota de ICMS','0,00'));
mAls:=FormatFloat('0000',mAl*100);

If mAL<>0 then
   begin
   iRetorno := Bematech_FI_ProgramaAliquota( pchar(mAls), 1 );
   if iRetorno<>1 then

      fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao Cadastrar aliquota de icms!',0,['0'],0);

   end;


end;

procedure TFrm_PPal.sis_0221Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
//Leitura de Memória Física
mOp:=0; mI1:=''; mI2:='';
testeform := TFrm_PPal(FindGlobalComponent('frm_lmf'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_LMF, Frm_LMF);
Frm_LMF.FormStyle:=fsstayontop;
if Frm_LMF.WindowState=wsminimized then
   Frm_LMF.WindowState:=wsnormal
else
   Frm_LMF.show;


mop:=Frm_LMF.op1.ItemIndex;

If (mI1<>'') and (mI2<>'') then
   begin
   Case mOp of
      0: begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalData( pchar( mi1 ), pchar( mi2 ) );
         end;
      1: begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialData( pchar( mi1 ), pchar( mi2 ) );
         end;
      2: begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalReducao( pchar( mi1 ), pchar( mi2 ) );
         end;
      3: begin
         iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducao( pchar( mi1 ), pchar( mi2 ) );
         end;
      end;
   if iRetorno<>1 then
      fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao Fazer a leitura da memoria!',0,['0'],0);

   end;
end;

procedure TFrm_PPal.sis_0224Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
If MessageDlg('Esta opção é exclusiva para o fechamento do dia!'+#13
   +'Tem certeza que deseja prosseguir?',mtWarning,[mbOk,mbCancel],0)<>mrOk then
   exit;
iRetorno := Bematech_FI_ReducaoZ( pchar(FormatDateTime('dd/mm/yyyy', Date)), pchar( FormatDateTime('hh:nn:ss',time)) );

end;

procedure TFrm_PPal.sis_0227Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
iRetorno := Bematech_FI_LeituraX();
if iRetorno<>1 then
    fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao tentar realizar a leitura X!',0,['0'],0);

end;


procedure TFrm_PPal.sis_0230Click(Sender: TObject);
var
iAck,iSt1,iSt2: Integer;
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
if iRetorno<>1 then

   fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao testar a impressora fiscal!',0,['0'],0);


end;

procedure TFrm_PPal.sis_0233Click(Sender: TObject);
var
  NumeroCupom: String;
  iConta: Integer;
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
for iConta := 1 to 6 do
    begin
      NumeroCupom := NumeroCupom + ' ';
    end;
iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
if iRetorno<>1 then
    fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao buscar o numero do cupom!',0,['0'],0)
else
   fmensagem('Número do Cupom Fiscal: ',0,['0'],0);

end;

procedure TFrm_PPal.sis_0236Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
iRetorno := Bematech_FI_ProgramaTruncamento();
if iRetorno<>1 then
   fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao fazer o truncamento!',0,['0'],0)
else
   fmensagem('Concluido! ',0,['0'],0);

end;

procedure TFrm_PPal.sis_0239Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
testeform := TFrm_PPal(FindGlobalComponent('frm_cancup'));
if (testeform=nil)  then
   Application.createform(TFrm_cancup,Frm_cancup);

if Frm_CanCup.WindowState=WsMinimized then
   Frm_CanCup.WindowState:=WsNormal
else
   frm_CanCup.Show;

end;

procedure TFrm_PPal.rger_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tped'));
if (testeform=nil)  then
   Application.createform(TFrm_tped,Frm_tped);

if Frm_TPed.WindowState=WsMinimized then
   Frm_TPed.WindowState:=WsNormal
else
   frm_TPed.Show;

end;

procedure TFrm_PPal.sis_0115Click(Sender: TObject);
begin
if Screen.FormCount>10 then
   begin
   fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
            +' fechadas!',0,['0'],0);
   exit;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_ent'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Ent, Frm_Ent);

Frm_Ent.ShowModal;
if Frm_Ent.ModalResult=mrCancel then
   begin
   Application.Terminate;
   FFecharTudo(2);
   exit;
   end;
codemp:=DM1.Tb_EmpCODEMP.AsInteger;
Frm_Ent.Free;
Frm_Ent:=nil;
timer3.Enabled := true;

end;
procedure TFrm_PPal.rpro_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lpreco1'));
if (testeform=nil)  then
   Application.createform(TFrm_Lpreco1,Frm_Lpreco1);

if Frm_LPreco1.WindowState=WsMinimized then
   Frm_LPreco1.WindowState:=WsNormal
else
   frm_LPreco1.Show;


end;

procedure TFrm_PPal.sis_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_impbd'));
if (testeform=nil)  then
   Application.createform(TFrm_ImpBD,Frm_ImpBD);
if Frm_ImpBD.WindowState=WsMinimized then
   Frm_ImpBD.WindowState:=WsNormal
else
   frm_ImpBD.Show;

end;

procedure TFrm_PPal.mpro_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ram'));
if (testeform=nil)  then
   Application.createform(TFrm_Ram,Frm_Ram);

if Frm_Ram.WindowState=WsMinimized then
   Frm_Ram.WindowState:=WsNormal
else
   frm_Ram.Show;

end;

procedure TFrm_PPal.mpro_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_gpro'));
if (testeform=nil)  then
   Application.createform(TFrm_GPro,Frm_GPro);

if Frm_GPro.WindowState=WsMinimized then
   Frm_GPro.WindowState:=WsNormal
else
   frm_GPro.Show;

end;

procedure TFrm_PPal.mpro_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tcon'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_TCon, Frm_TCon);

if Frm_TCon.WindowState=WsMinimized then
   Frm_TCon.WindowState:=WsNormal
else
   frm_TCon.Show;

end;

procedure TFrm_PPal.mpro_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tippro'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_TipPro, Frm_TipPro);

if Frm_TipPro.WindowState=WsMinimized then
   Frm_TipPro.WindowState:=WsNormal
else
   frm_TipPro.Show;

end;

procedure TFrm_PPal.mven_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ven'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Ven, Frm_Ven);

if Frm_Ven.WindowState=WsMinimized then
   Frm_Ven.WindowState:=WsNormal
else
   frm_Ven.Show;

end;

procedure TFrm_PPal.mloc_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_uf'));
if testeform=nil then
   Application.CreateForm(TFrm_UF, Frm_UF);

if Frm_UF.WindowState=WsMinimized then
   Frm_UF.WindowState:=WsNormal
else
   frm_UF.Show;

end;

procedure TFrm_PPal.cfo_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cfo'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_CFO, Frm_CFO);
   end;

if Frm_CFO.WindowState=WsMinimized then
   Frm_CFO.WindowState:=WsNormal
else
   frm_CFO.Show;

end;

procedure TFrm_PPal.cr_0103Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;

flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
      fmensagem('Esta Faltando o Parametro de devolução (CADDARD), '+#13
      +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_dar'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Dar, Frm_Dar);
if Frm_Dar.WindowState=WsMinimized then
   Frm_Dar.WindowState:=WsNormal
else
   frm_Dar.Show;

end;
procedure TFrm_PPal.rsai_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ns'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_NS, Frm_Ns);

if Frm_Ns.WindowState=WsMinimized then
   Frm_Ns.WindowState:=WsNormal
else
   frm_Ns.Show;

end;

procedure TFrm_PPal.mtra_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tra'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Tra, Frm_Tra);

if Frm_Tra.WindowState=WsMinimized then
   Frm_Tra.WindowState:=WsNormal
else
   frm_Tra.Show;

end;

procedure TFrm_PPal.mcai_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bco'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Bco, Frm_Bco);

if Frm_Bco.WindowState=WsMinimized then
   Frm_Bco.WindowState:=WsNormal
else
   frm_Bco.Show;

end;

procedure TFrm_PPal.mcai_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ccu'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_CCU, Frm_CCU);

if Frm_CCU.WindowState=WsMinimized then
   Frm_CCU.WindowState:=WsNormal
else
   frm_CCU.Show;
end;

procedure TFrm_PPal.mcai_0107Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tpdre'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_tpdre, Frm_tpdre);

if frm_tpdre.WindowState=WsMinimized then
   Frm_tpdre.WindowState:=WsNormal
else
   frm_tpdre.Show;

end;




procedure TFrm_PPal.mcai_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dpto'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Dpto, Frm_Dpto);

if Frm_Dpto.WindowState=WsMinimized then
   Frm_Dpto.WindowState:=WsNormal
else
   frm_Dpto.Show;

end;

procedure TFrm_PPal.mcai_0112Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_ldr'));
if (testeform=nil)  then
   Application.createform(TFrm_LDR,Frm_LDR);

if Frm_LDR.WindowState=WsMinimized then
   Frm_LDR.WindowState:=WsNormal
else
   frm_LDR.Show;

end;

procedure TFrm_PPal.lf_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lrs'));
if (testeform=nil)  then
   Application.createform(TFrm_LRS,Frm_LRS);

if Frm_LRS.WindowState=WsMinimized then
   Frm_LRS.WindowState:=WsNormal
else
   frm_LRS.Show;
end;

procedure TFrm_PPal.lf_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lre'));
if (testeform=nil)  then
   Application.createform(TFrm_LRE,Frm_LRE);

if Frm_LRE.WindowState=WsMinimized then
   Frm_LRE.WindowState:=WsNormal
else
   frm_LRE.Show;

end;

procedure TFrm_PPal.sis_0312Click(Sender: TObject);
begin
mreltab:='NF';
testeform := TFrm_PPal(FindGlobalComponent('frm_tpro'));
if (testeform=nil)  then
   Application.createform(TFrm_TPro,Frm_TPro);

if Frm_TPro.WindowState=WsMinimized then
   Frm_TPro.WindowState:=WsNormal
else
   frm_TPro.Show;
end;

procedure TFrm_PPal.sis_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_impd'));
if (testeform=nil)  then
   Application.createform(TFrm_Impd,Frm_Impd);

if Frm_Impd.WindowState=WsMinimized then
   Frm_Impd.WindowState:=WsNormal
else
   frm_Impd.Show;

end;

procedure TFrm_PPal.lf_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sintegra'));
if (testeform=nil)  then
   Application.createform(TFrm_SINTEGRA,Frm_SINTEGRA);

if Frm_SINTEGRA.WindowState=WsMinimized then
   Frm_SINTEGRA.WindowState:=WsNormal
else
   frm_SINTEGRA.Show;

end;

procedure TFrm_PPal.lf_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_apur'));
if (testeform=nil)  then
   Application.createform(TFrm_Apur,Frm_Apur);

if Frm_Apur.WindowState=WsMinimized then
   Frm_Apur.WindowState:=WsNormal
else
   frm_Apur.Show;

end;

procedure TFrm_PPal.rcli_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rclic'));
if (testeform=nil)  then
   Application.createform(TFrm_RCliC,Frm_RCliC);

if Frm_RCliC.WindowState=WsMinimized then
   Frm_RCliC.WindowState:=WsNormal
else
   frm_RCliC.Show;

end;

procedure TFrm_PPal.rpro_0109Click(Sender: TObject);
begin
mreltab:='CADPRO';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_pro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pro);
if form_per2_pro.WindowState=WsMinimized then
   form_per2_pro.WindowState:=WsNormal
else
   form_per2_pro.Show;

end;

procedure TFrm_PPal.rfor_0103Click(Sender: TObject);
begin
mreltab:='CADFOR';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_for'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_for);

if form_per2_for.WindowState=WsMinimized then
   form_per2_for.WindowState:=WsNormal
else
   form_per2_for.Show;

end;

procedure TFrm_PPal.sis_0315Click(Sender: TObject);
begin
mreltab:='CADFOR';
if frm_TPro= nil then
   Application.createform(TFrm_TPro,Frm_TPro);

Frm_Tpro.FormStyle:=fsstayontop;
if Frm_TPro.WindowState=WsMinimized then
   Frm_TPro.WindowState:=WsNormal
else
   frm_TPro.Show;

end;

procedure TFrm_PPal.rcli_0109Click(Sender: TObject);
begin
mreltab:='CADCLI';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_cli'));
if (testeform=nil)  then
   Application.createform(TFrm_Per2,form_per2_cli);
if form_per2_cli.WindowState=WsMinimized then
   form_per2_cli.WindowState:=WsNormal
else
   form_per2_cli.Show;

end;

procedure TFrm_PPal.rest_0103Click(Sender: TObject);
begin
mreltab:='CADUF';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_uf'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_uf);
if form_per2_uf.WindowState=WsMinimized then
   form_per2_uf.WindowState:=WsNormal
else
   form_per2_uf.Show;

end;

procedure TFrm_PPal.rgpro_0103Click(Sender: TObject);
begin
mreltab:='CADGRU';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_gpro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_gpro);

if form_per2_gpro.WindowState=WsMinimized then
   form_per2_gpro.WindowState:=WsNormal
else
   form_per2_gpro.Show;

end;

procedure TFrm_PPal.rtpro_0103Click(Sender: TObject);
begin
mreltab:='CADTP';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_tpro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_tpro);

if form_per2_tpro.WindowState=WsMinimized then
   form_per2_tpro.WindowState:=WsNormal
else
   form_per2_tpro.Show;

end;

procedure TFrm_PPal.rcpro_0103Click(Sender: TObject);
begin
mreltab:='CADCON';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_cpro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_cpro);

if form_per2_cpro.WindowState=WsMinimized then
   form_per2_cpro.WindowState:=WsNormal
else
   form_per2_cpro.Show;

end;

procedure TFrm_PPal.rven_0103Click(Sender: TObject);
begin
mreltab:='CADVEN';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ven'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ven);

if form_per2_ven.WindowState=WsMinimized then
   form_per2_ven.WindowState:=WsNormal
else
   form_per2_ven.Show;

end;

procedure TFrm_PPal.rtra_0103Click(Sender: TObject);
begin
mreltab:='CADTRA';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_tra'));
if (testeform=nil)  then

   Application.createform(Tfrm_per2,form_per2_tra);

if form_per2_tra.WindowState=WsMinimized then
   form_per2_tra.WindowState:=WsNormal
else
   form_per2_tra.Show;

end;

procedure TFrm_PPal.rusu_0103Click(Sender: TObject);
begin
mreltab:='CADUSR';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_usr'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_usr);

if form_per2_usr.WindowState=WsMinimized then
   form_per2_usr.WindowState:=WsNormal
else
   form_per2_usr.Show;

end;

procedure TFrm_PPal.rfun_0103Click(Sender: TObject);
begin
mreltab:='CADCAR';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_car'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_car);

if form_per2_car.WindowState=WsMinimized then
   form_per2_car.WindowState:=WsNormal
else
   form_per2_car.Show;

end;

procedure TFrm_PPal.rpv_0103Click(Sender: TObject);
begin
mreltab:='CADPV';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_pv'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pv);

if form_per2_pv.WindowState=WsMinimized then
   form_per2_pv.WindowState:=WsNormal
else
   form_per2_pv.Show;

end;

procedure TFrm_PPal.rbco_0103Click(Sender: TObject);
begin
mreltab:='CADBCO';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_bco'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_bco);

if form_per2_bco.WindowState=WsMinimized then
   form_per2_bco.WindowState:=WsNormal
else
   form_per2_bco.Show;

end;

procedure TFrm_PPal.rccu_0103Click(Sender: TObject);
begin
mreltab:='CADCCU';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_CCU'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_CCU);

if form_per2_CCU.WindowState=WsMinimized then
   form_per2_CCU.WindowState:=WsNormal
else
   form_per2_CCU.Show;

end;

procedure TFrm_PPal.rdep_0103Click(Sender: TObject);
begin
mreltab:='CADDEP';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_depcx'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_depcx);

if form_per2_depcx.WindowState=WsMinimized then
   form_per2_depcx.WindowState:=WsNormal
else
   form_per2_depcx.Show;

end;

procedure TFrm_PPal.rcai_0103Click(Sender: TObject);
begin
mreltab:='CADLDR';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ldr'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ldr);

if form_per2_ldr.WindowState=WsMinimized then
   form_per2_ldr.WindowState:=WsNormal
else
   form_per2_ldr.Show;

end;

procedure TFrm_PPal.sis_0303Click(Sender: TObject);
var
mqtd, mlidos: Integer;
mnomarq, mnomcam, mnomreg,mtipo,mtitulo: String;
mtamanho: Integer;
begin
{Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;


Frm_Agde.Update;}
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.Add('Delete from CADARQ');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2137,'frm_Ppal','CADARQ');
   end;

// Tabela de Cabecalho de notas
mqtd:=DM2.Qr_Cab.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CAB';
   mtitulo:='Cabecalho/rodape de documentos';
   mnomcam:=DM2.Qr_Cab.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_Cab.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_Cab.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_Cab.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3623,'frm_Ppal','CADARQ');
      end;
   end;

// Tabela de Cabecalho de notas
mqtd:=DM2.Qr_Cor.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='COR';
   mtitulo:='Corpo/Detalhes de documentos';
   mnomcam:=DM2.Qr_Cor.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_Cor.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_Cor.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_Cor.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3681,'frm_Ppal','CADARQ');
      end;
   end;


// Tabela de detalhes servicos
mqtd:=DM2.Qr_Ser.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='SER';
   mtitulo:='Corpo/Detalhes de servicos';
   mnomcam:=DM2.Qr_Ser.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_Ser.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_Ser.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_Ser.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3740,'frm_Ppal','CADARQ');
      end;
   end;


// Tabela de formas de Pagamento
mqtd:=DM2.Qr_PedFP.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CADPFP';
   mtitulo:='Formas de Pagamento';
   mnomcam:=DM2.Qr_PedFP.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_PedFP.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_PedFP.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_PedFP.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3336,'frm_Ppal','CADARQ');
      end;
   end;

// Tabela de Pendencias
mqtd:=DM1.Tb_Pen.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CADPEN';
   mtitulo:='Tabela de Pendencias';
   mnomcam:=DM1.Tb_Pen.Fields[mlidos-1].FieldName;
   mnomreg:=DM1.Tb_Pen.Fields[mlidos-1].DisplayLabel;
   if (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftfloat) or
      (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftWord) or
      (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftCurrency) or
      (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftDateTime) or
      (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM1.Tb_Pen.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM1.Tb_Pen.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3336,'frm_Ppal','CADARQ');
      end;
   end;

// Qr_Ped02_Trocas


mqtd:=DM2.Qr_Ped02_Trocas.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CADP02_TROCAS';
   mtitulo:='Tabela de Trocas de Mercadorias';
   mnomcam:=DM2.Qr_Ped02_Trocas.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_Ped02_Trocas.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3336,'frm_Ppal','CADARQ');
      end;
   end;

// Qr_Ped02_Trocas


mqtd:=DM2.Qr_Ped02_MP.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CADP02_MP';
   mtitulo:='Tabela de Trocas de Mercadorias';
   mnomcam:=DM2.Qr_Ped02_MP.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Qr_Ped02_MP.Fields[mlidos-1].DisplayLabel;
   if (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Qr_Ped02_MP.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Qr_Ped02_MP.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3336,'frm_Ppal','CADARQ');
      end;
   end;

// Tabela de Cabecalho de notas
mqtd:=DM2.Tb_Dar.FieldCount;
for mlidos:=1 to mqtd do
   begin
   mnomarq:='CADDAR';
   mtitulo:='Duplicatas a Receber';
   mnomcam:=DM2.Tb_Dar.Fields[mlidos-1].FieldName;
   mnomreg:=DM2.Tb_Dar.Fields[mlidos-1].DisplayLabel;
   if (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftfloat) or
      (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftWord) or
      (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftCurrency) or
      (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftInteger) Then
      Begin
      mtipo:='N';
      mtamanho:=15;
      end
   else if (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftDateTime) or
      (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftDate) then
      Begin
      mtipo:='D';
      mtamanho:=10;
      end
   else if (DM2.Tb_Dar.Fields[mlidos-1].DataType=ftTime) then
      begin
      mtipo:='H';
      mtamanho:=8;
      end
   else
      begin
      mtipo:='S';
      mtamanho:=DM2.Tb_Dar.Fields[mlidos-1].DisplayWidth;
      end;
   DM2.Qr_Arq.Close;
   DM2.Qr_Arq.SQl.Clear;
   DM2.Qr_Arq.SQL.Add('Insert into CADARQ ('
                     +'CANOMARQ,'
                     +'CANOMCAM,'
                     +'CATIPO,'
                     +'CATAMANHO,'
                     +'CANOMREG,'
                     +'CATITULO) values ('
                     +chr(39)+mnomarq+chr(39)+','
                     +chr(39)+mnomcam+chr(39)+','
                     +chr(39)+mtipo+chr(39)+','
                     +intToStr(mtamanho)+', '
                     +':NOMREG, '
                     +':TITULO)');
   DM2.Qr_Arq.Params[0].AsString:=mnomreg;
   DM2.Qr_Arq.Params[1].AsString:=mtitulo;
   Try
      DM2.Qr_Arq.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(03,3681,'frm_Ppal','CADARQ');
      end;
   end;




{Frm_Agde.Free;}
FMensagem('Atualizacao Completa',0,['0'],0);
end;

procedure TFrm_PPal.cp_0306Click(Sender: TObject);
begin
mreltab:='CADDAP';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_dap'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_dap);

form_per2_dap.FormStyle:=fsstayontop;
if form_per2_dap.WindowState=WsMinimized then
   form_per2_dap.WindowState:=WsNormal
else
   form_per2_dap.Show;

end;

procedure TFrm_PPal.cp_0303Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcpag'));
if (testeform=nil)  then
   Application.createform(TFrm_Rcpag,Frm_Rcpag);

if Frm_RCPag.WindowState=WsMinimized then
   Frm_RCPag.WindowState:=WsNormal
else
   frm_RCPag.Show;

end;

procedure TFrm_PPal.cr_0203Click(Sender: TObject);
begin
mreltab:='CADDAR';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_dar'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_dar);

if form_per2_dar.WindowState=WsMinimized then
   form_per2_dar.WindowState:=WsNormal
else
   form_per2_dar.Show;

end;

procedure TFrm_PPal.lf_0115Click(
  Sender: TObject);
begin
mreltab:='CADNS';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ns'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ns);
if form_per2_ns.WindowState=WsMinimized then
   form_per2_ns.WindowState:=WsNormal
else
   form_per2_ns.Show;
end;

procedure TFrm_PPal.lf_0118Click(
  Sender: TObject);
begin
mreltab:='CADNE';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ne'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ne);

if form_per2_ne.WindowState=WsMinimized then
   form_per2_ne.WindowState:=WsNormal
else
   form_per2_ne.Show;

end;

procedure TFrm_PPal.sis_0127Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,36,0,0,0,0,0, 'Senha para Fazer Manutenção no Cadastro de Empresa','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_emp'));
if (testeform=nil)  then
   Application.createform(TFrm_emp,Frm_emp);


if Frm_EMP.WindowState=WsMinimized then
   Frm_Emp.WindowState:=WsNormal
else
   frm_EMP.Show;

end;

procedure TFrm_PPal.mcli_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_con'));
if (testeform=nil)  then
   Application.createform(TFrm_cON,Frm_con);

if Frm_Con.WindowState=WsMinimized then
   begin
   Frm_Con.WindowState:=WsNormal;
   end
else
   begin
   Frm_Con.Show;
   end;
end;

procedure TFrm_PPal.sis_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_stru'));
if (testeform=nil)  then
   Application.createform(TFrm_Stru,Frm_Stru);

if Frm_Stru.WindowState=WsMinimized then
   Frm_Stru.WindowState:=WsNormal
else
   Frm_Stru.Show;

end;

procedure TFrm_PPal.mcli_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_expcli'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpCLi,Frm_ExpCLi);

if Frm_ExpCli.WindowState=WsMinimized then
   Frm_ExpCli.WindowState:=WsNormal
else
   Frm_ExpCli.Show;

end;

procedure TFrm_PPal.sai_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rdev'));
if (testeform=nil)  then
   Application.createform(TFrm_RDev,Frm_RDev);

if Frm_RDev.WindowState=WsMinimized then
   Frm_RDev.WindowState:=WsNormal
else
   Frm_RDev.Show;

end;

procedure TFrm_PPal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ffechartudo(0);
end;

procedure TFrm_PPal.sis_0601Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Cac, Frm_Cac);
if Frm_Cac.WindowState=WsMinimized then
   Frm_Cac.WindowState:=WsNormal
else
   Frm_Cac.Show;

end;

procedure TFrm_PPal.rpro_0121Click(Sender: TObject);
begin
mreltab:='CADAJU';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_aju'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_aju);

if form_per2_aju.WindowState=WsMinimized then
   form_per2_aju.WindowState:=WsNormal
else
   form_per2_aju.Show;
end;

procedure TFrm_PPal.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);

var
miteaju: string;
x: Integer;
i : smallint;
begin
if Msg.message = WM_MOUSEWHEEL then
  begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam) ;
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;
    Handled := False;
  end;

if (Msg.message=WM_KeyDown) or (Msg.message=WM_MouseMOVE) then
   mhoraUltevento:=now;

if (Msg.message=WM_KeyDown) and not (Screen.ActiveControl is TWPRichText) then
   begin
   if (Screen.ActiveControl is TButton)  or   (Screen.ActiveControl is TBitBtn)
      or (Screen.ActiveControl is TDBCtrlGrid) then

//   if (Screen.ActiveControl is TBitBtn)  then
      begin

//      if not pVerWindows_xp then
//         begin
         if Msg.wParam=VK_Up then
            begin
            Application.ProcessMessages;
            Msg.wParam:=VK_Clear;
            Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
//            end;
            Application.ProcessMessages;
            end;
      if Msg.wParam=VK_Down then
         Msg.wParam:=VK_Tab;
      end
//   if not (Screen.ActiveControl is TButton) and
   else
   if not (Screen.ActiveControl is TCustomMemo) and
      not (Screen.ActiveControl is TCustomTreeView) then
      //      not (Screen.ActiveControl is TCustomGrid) then  // lindomar
      begin

      if Msg.wParam=VK_Return then
         Msg.wParam:=VK_Tab;
      if not (Screen.ActiveControl is TDBGrid)
         and not (Screen.ActiveControl is TRadioGroup)
         and not (Screen.ActiveControl is TDBLookupListBox)
         and not (Screen.ActiveControl is TBitBtn)
         and not (Screen.ActiveControl is TButton)
         and not (Screen.ActiveControl is TComboBox)
         and not (Screen.ActiveControl is TStringGrid)
         and not (Screen.ActiveControl is TCustomTreeView)
         and not (Screen.ActiveControl is TDBComboBox)
         and not (Screen.ActiveControl is TDBCtrlGrid) then
         begin
         if Msg.wParam=VK_Up then
            begin
            Application.ProcessMessages;
            Msg.wParam:=VK_Clear;
            Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
            Application.ProcessMessages;
            end;
         if Msg.wParam=VK_Down then
            Msg.wParam:=VK_Tab;
         end;
      end;

   if (frm_mensagem=nil) and (frm_mensagemsom=nil) and (frm_mensagem_barrar=nil) then
      begin

//      if (Msg.wParam=113) and (ce_aceita) then
      if (Msg.wParam=113) then
         begin
         if frm_Empresas.FormState<>[fsModal] then
            begin
            Frm_Empresas.ShowModal;
            end;
         Msg.wParam:=0;
         end;

      if (Msg.wParam=112)  then
         begin

         if DM1.Tb_PargerPTIPOAJUDA.AsInteger=1 then
            begin
{
            if not FileExists(mlogomarcas+'SGE.HLP') then
               fmensagem('Arquivo de Ajuda não encontrado!',0,['0'],0)
            else
               begin
               WinHelp(0,pchar(mlogomarcas+'SGE.HLP'),HELP_CONTEXT,fIdentificaTopico(sCreen.ActiveForm.Name,Screen.ActiveControl.Name));
               end;
}
            Msg.wParam:=0;

            end
         else
            begin
            if Frm_Ajuda=nil then
               begin
               miteaju:=Screen.ActiveForm.Name+'_'+Screen.ActiveControl.Name;
               DM4.Tb_Hlp.Close;
               DM4.Tb_Hlp.ParamByName('CHAVE').AsString:=miteaju;
               DM4.Tb_Hlp.ParamByName('DESCR').AsString:='%';
               DM4.Tb_Hlp.Open;
               if DM4.Tb_HlpAJCHAVE.IsNull then
                  begin
                  DM4.Tb_Hlp.Append;
                  DM4.Tb_HlpAJCHAVE.Value:=miteaju;
                  DM4.Tb_HlpAJDESCR.Value:=miteaju;
                  DM4.Tb_HlpAJMEMO.Value :='Edite a ajuda e digite neste campo...';
                  DM4.Tb_Hlp.Post;
                  end;

               end;
            end;
            //HELP_CONTEXT
      //        FMensagem('Local: '+Screen.ActiveForm.Name+'_'+Screen.ActiveControl.Name);
      //         miteaju:=Screen.ActiveForm.Name+'_'+Screen.ActiveControl.Name;
         end;


     if (Msg.wParam=122) and (Frm_Cal=nil) then
         begin
         if frm_Cal= nil then
            Application.createform(TFrm_CAl,Frm_Cal);

         if Frm_Cal.WindowState=WsMinimized then
            Frm_Cal.WindowState:=WsNormal
         else
            frm_Cal.Show;
         Msg.wParam:=0;
         end;
      if (Msg.wParam=116)  and (Frm_Ent=nil) then
//      if (Msg.wParam=116) and (Frm_Pro=nil) and (Frm_Ent=nil) then
         begin
         mSoConsulta:=false;


         if DM1.Tb_PargerPPCOGRA.Value=1 then
            fChamaPro(2,'','')
         else
            fChamaPro(0,'','');
{
            fChamaPro(2,'Frm_PPal','')
         else
            fChamaPro(0,'Frm_PPal','');
 }
   {

         if DM1.Tb_PargerPPCOGRA.Value=1 then
            begin
            Application.CreateForm(TFrm_ProConf, Frm_ProConf);
            Frm_ProConf.PC1.ActivePageIndex:=2;
            Frm_ProConf.ShowModal;
            Frm_ProConf.Free;
            Frm_ProConf:=nil;
            end
         else if valint(copy(mpseg,1,2))=7 then
            begin
            Application.CreateForm(TFrm_Pro_AutoP, Frm_Pro_AutoP);
            Frm_Pro_AutoP.PC1.ActivePageIndex:=1;
            Frm_Pro_AutoP.ShowModal;
            Frm_Pro_AutoP.Free;
            Frm_Pro_AutoP:=nil;
            end
         else
            begin
            if not (mredirecionaFormPro) or (codusr=1111) then
               Application.CreateForm(TFrm_Pro, Frm_Pro);
            Frm_Pro.PC1.ActivePageIndex:=3;
            Frm_Pro.ShowModal;
            if not (mredirecionaFormPro) or (codusr=1111) then
               begin
               Frm_Pro.Free;
               Frm_Pro:=nil;
               end;
            end;
   }     Msg.wParam:=0;
         end;
      if (Msg.wParam=120) and (Frm_Caixa=nil) and (copy(Screen.ActiveForm.Name,1,8)='Frm_PPal') then
         begin


         if frm_Caixa= nil then
            Application.createform(TFrm_Caixa,Frm_Caixa);

            if Frm_Caixa.WindowState=WsMinimized then
               Frm_Caixa.WindowState:=WsNormal
            else
               frm_Caixa.Show;

         StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
         sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
         end;
      if (Msg.wParam=19) and not (Frm_CServer.Active) then
         begin
         mavisoson:=False;
         Frm_CServer.Show;
         end;

      if (Msg.wParam=119) and (frm_Ent=nil) and (Frm_PPal.Active) then
         begin
         if Screen.FormCount>10 then
            begin
            fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
                     +' fechadas!',0,['0'],0);
            end
         else
            begin

            Application.CreateForm(Tfrm_Ent, Frm_Ent);
            Frm_Ent.ShowModal;
            if Frm_Ent.ModalResult=mrCancel then
               begin
               Application.Terminate;
               FFecharTudo(2);
               exit;
               end;
            codemp:=DM1.Tb_EmpCODEMP.AsInteger;
            Frm_Ent.Free;
            Frm_Ent:=nil;
            StatusBar1.Panels[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
            +' '+DM1.Tb_EmpFANTASIA.Value;
            SpeedButton17.Caption:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
            +' '+DM1.Tb_EmpFANTASIA.Value;
            StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
            sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
            timer3.Enabled := true;
            end;
         end;
     end;

         StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
         sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);


   if Msg.wParam=123 then
      begin
      WinExec('Calc.Exe',SW_ShowNormal);


      Msg.wParam:=0;
      end;

   end;

end;

procedure TFrm_PPal.mind_0103Click(Sender: TObject);
begin

if (DM1.Tb_PargerPINDUSTRIA.Value=1) or (DM1.Tb_PargerPINDUSTRIA.Value>4) then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_mfor01'));
   if (testeform=nil)  then
      Application.createform(TFrm_Mfor01,Frm_Mfor01);
   if Frm_MFor01.WindowState=WsMinimized then
      Frm_MFor01.WindowState:=WsNormal
   else
      frm_MFor01.Show;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_ind_manfor'));
   if (testeform=nil)  then
      Application.createform(TFrm_Ind_MAnfor,Frm_Ind_Manfor);
   if Frm_Ind_Manfor.WindowState=WsMinimized then
      Frm_Ind_Manfor.WindowState:=WsNormal
   else
      frm_Ind_Manfor.Show;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=3 then
   begin
   testeform := TFrm_PPal(FindGlobalComponent('frm_ind_forenv'));
   if (testeform=nil)  then
      Application.createform(TFrm_Ind_ForEnv,Frm_Ind_ForEnv);
   if Frm_Ind_ForEnv.WindowState=WsMinimized then
      Frm_Ind_ForEnv.WindowState:=WsNormal
   else
      frm_Ind_ForEnv.Show;
   end;

end;

procedure TFrm_PPal.sis_0606Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cme'));
if (testeform=nil)  then
   Application.createform(TFrm_CME,Frm_CME);

if Frm_CME.WindowState=WsMinimized then
   Frm_CME.WindowState:=WsNormal
else
   frm_CME.Show;

end;

procedure TFrm_PPal.cr_0303Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,44,0,0,0,0,0, 'Senha Para Baixar Títulos de Clientes','')<>0 then
   exit;

if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_accr'));
if (testeform=nil)  then
   Application.createform(TFrm_ACCR,Frm_ACCR);

if Frm_AcCR.WindowState=WsMinimized then
   Frm_AcCR.WindowState:=WsNormal
else
   frm_AcCR.Show;
StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

end;

procedure TFrm_PPal.cr_0306Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,44,0,0,0,0,0, 'Senha Para Baixar Títulos de Clientes','')<>0 then
   exit;

if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_accre'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_AcCrE, Frm_AcCrE);

if Frm_AcCRE.WindowState=WsMinimized then
   Frm_AcCRE.WindowState:=WsNormal
else
   frm_AcCRE.Show;
end;

procedure TFrm_PPal.cr_0309Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,44,0,0,0,0,0, 'Senha Para Baixar Títulos de Clientes','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_accrr'));
if (testeform=nil)  then
   Application.createform(TFrm_AccRR,Frm_AccRR);

if Frm_AcCrR.WindowState=WsMinimized then
   Frm_AcCrR.WindowState:=WsNormal
else
   frm_AcCrR.Show;

end;

procedure TFrm_PPal.mcli_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ccom'));
if (testeform=nil)  then
  Application.createform(TFrm_CCom,Frm_CCom);
if Frm_CCom.WindowState=WsMinimized then
   Frm_CCom.WindowState:=WsNormal
else
   Frm_CCom.Show;
end;

procedure TFrm_PPal.mfor_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Cfor,Frm_Cfor);
if Frm_Cfor.WindowState=WsMinimized then
   Frm_Cfor.WindowState:=WsNormal
else
   frm_Cfor.Show;

end;

procedure TFrm_PPal.cr_0206Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_edup'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Edup, Frm_Edup);
if Frm_Edup.WindowState=WsMinimized then
   Frm_Edup.WindowState:=WsNormal
else
   frm_Edup.Show;

end;

procedure TFrm_PPal.cr_0903Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_jdoc'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_JDoc, Frm_JDoc);
if Frm_JDoc.WindowState=WsMinimized then
   Frm_JDoc.WindowState:=WsNormal
else
   frm_JDoc.Show;

end;

procedure TFrm_PPal.cr_0909Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mvcto'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Mvcto, Frm_Mvcto);
if Frm_Mvcto.WindowState=WsMinimized then
   Frm_Mvcto.WindowState:=WsNormal
else
   frm_Mvcto.Show;

end;

procedure TFrm_PPal.cr_0906Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vlrpres'));
if (testeform=nil)  then
   Application.createform(TFrm_VlrPres,Frm_VlrPres);

if Frm_VlrPres.WindowState=WsMinimized then
   Frm_VlrPres.WindowState:=WsNormal
else
   frm_VlrPres.Show;

end;

procedure TFrm_PPal.FormCreate(Sender: TObject);
begin
  // --> Formação do Hints
//RxHints.SetHintStyle(hsEllipse, 5, true, taLeftJustify ); // Forma de Balão
//Application.HintColor     := $005BFFAD ; // muda a cor de fundo
//Application.HintHidePause := 100000 ; // Sustenta o Hint em quase 2min
//Frm_ppal.ShowHint         := True ;

ptpdoc[00]:='DUP-Normal';
ptpdoc[01]:='CHD-Chq dev';
ptpdoc[02]:='CSF-Chq s/fun';
ptpdoc[03]:='JUR-Juros';
ptpdoc[04]:='NP -Nt promis';
ptpdoc[05]:='NC -Nt credito';
ptpdoc[06]:='CHP-Chq Pre-Dat';
ptpdoc[07]:='REQ-Requis';
ptpdoc[08]:='FI1-Fin.1';
ptpdoc[09]:='FI2-Fin.2';
ptpdoc[10]:='FI3-Fin.3';
ptpdoc[11]:='FI4-Fin.4';
ptpdoc[12]:='FI5-Fin.5';
ptpdoc[13]:='FI6-Fin.6';
ptpdoc[14]:='TV -Tit.V';
ptpdoc[15]:='OUT-Outros';
ptpdoc[16]:='CHB-Chq Balcão';
ptpdoc[17]:='Todos';



tab_tped[00]:='Orçamento';
tab_tped_mov[00,00]:='Orçamento';
tab_tped_mov[00,01]:='NNNNNNNN';

tab_tped[01]       :='Venda Normal';
tab_tped_mov[01,00]:='Venda Normal';
tab_tped_mov[01,01]:='NNNNSNNN';
tab_tped[02]       :='Simples Remessa';
tab_tped_mov[02,00]:='Simples Remessa';
tab_tped_mov[02,01]:='NNNNSNNN';
tab_tped[03]       :='Devolução a Fornecedor';
tab_tped_mov[03,00]:='Devolucao a Fornecedor';
tab_tped_mov[03,01]:='NNNNSNNN';
tab_tped[04]       :='Remessa p/Troca';
tab_tped_mov[04,00]:='Remessa p/Troca';
tab_tped_mov[04,01]:='NNNNSNNN';
tab_tped[05]       :='Transferencia de Mercadorias';
tab_tped_mov[05,00]:='Transferencia de Mercadorias';
tab_tped_mov[05,01]:='NNNNSNNN';

tab_tped[06]       :='Remessa p/Beneficiamento';
tab_tped_mov[06,00]:='Remessa p/Beneficiamento';
tab_tped_mov[06,01]:='NNNNSNNN';

tab_tped[07]       :='Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[07,00]:='Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[07,01]:='NNSNSNNN';

tab_tped[08]       :='Devolução Cliente(Entrada) Normal';
tab_tped_mov[08,00]:='Devolucao Cliente(Entrada) Normal';
tab_tped_mov[08,01]:='SNNNNNNN';

tab_tped[09]       :='Emprestimo de Mercadorias';
tab_tped_mov[09,00]:='Emprestimo de Mercadorias';
tab_tped_mov[09,01]:='NNNNSNNN';

tab_tped[10]       :='Nota Complementar';
tab_tped_mov[10,00]:='Nota Complementar';
tab_tped_mov[10,01]:='NNNNNNNN';

tab_tped[11]       :='Remessa Para Consignações';
tab_tped_mov[11,00]:='Remessa Para Consignacoes';
tab_tped_mov[11,01]:='NSNNSNNN';

tab_tped[12]       :='Devolucao Mercadoria Consignações';
tab_tped_mov[12,00]:='Devolucao Mercadoria Consignacoes';
tab_tped_mov[12,01]:='SNNNNSNN';

tab_tped[13]       :='Devolução Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[13,00]:='Devolucao Remessa p/Venda(Vda.Fora do Estab.)';
tab_tped_mov[13,01]:='SNNNNNSN';

tab_tped[14]       :='Venda Mercadoria Consignada';
tab_tped_mov[14,00]:='Venda Mercadoria Consignada';
tab_tped_mov[14,01]:='NNNNNSNN';

tab_tped[15]       :='Venda Remessa p/Venda(Vda.Fora do Estabel.)';
tab_tped_mov[15,00]:='Venda Remessa p/Venda(Vda.Fora do Estabel.)';
tab_tped_mov[15,01]:='NNNNNNSN';

tab_tped[16]       :='Venda Normal(Troca de Mercadorias)';
tab_tped_mov[16,00]:='Venda Normal(Troca de Mercadorias)';
tab_tped_mov[16,01]:='NNNNSNNN';

tab_tped[17]       :='Devolução de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,00]:='Devolucao de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,01]:='SNNNNNNN';

tab_tped[18]       :='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,00]:='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,01]:='SNNNNNNN';


tab_tped[19]       :='Devolução de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,00]:='Devolucao de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,01]:='NNNNSNNS';

tab_tped[20]       :='Remessa p/Industrialização';
tab_tped_mov[20,00]:='Remessa p/Industrializacao';
tab_tped_mov[20,01]:='NNNNSNNN';

tab_tped[21]       :='Remessa p/Brinde';
tab_tped_mov[21,00]:='Remessa p/Brinde';
tab_tped_mov[21,01]:='NNNNSNNN';

tab_tped[22]       :='Remessa Amostra Gratis';
tab_tped_mov[22,00]:='Remessa Amostra Gratis';
tab_tped_mov[22,01]:='NNNNSNNN';

tab_tped[23]       :='Remessa p/Demonstração';
tab_tped_mov[23,00]:='Remessa p/Demonstracao';
tab_tped_mov[23,01]:='NNNNSNNN';

tab_tped[24]       :='Remessa p/Conserto';
tab_tped_mov[24,00]:='Remessa p/Conserto';
tab_tped_mov[24,01]:='NNNNSNNN';

tab_tped[25]       :='Remessa Comodato';
tab_tped_mov[25,00]:='Remessa Comodato';
tab_tped_mov[25,01]:='NNNNSNNN';

tab_tped[26]       :='Todos';


tabmes[01]:='JANEIRO';
tabmes[02]:='FEVEREIRO';
tabmes[03]:='MARCO';
tabmes[04]:='ABRIL';
tabmes[05]:='MAIO';
tabmes[06]:='JUNHO';
tabmes[07]:='JULHO';
tabmes[08]:='AGOSTO';
tabmes[09]:='SETEMBRO';
tabmes[10]:='OUTUBRO';
tabmes[11]:='NOVEMBRO';
tabmes[12]:='DEZEMBRO';

tipo_pro[01]:='00 - Mercadoria para Revenda';
tipo_pro[02]:='01 - Matéria-Prima';
tipo_pro[03]:='02 - Embalagem';
tipo_pro[04]:='03 - Produto em Processo';
tipo_pro[05]:='04 - Produto Acabado';
tipo_pro[06]:='05 - Subproduto';
tipo_pro[07]:='06 - Produto Intermediário';
tipo_pro[08]:='07 - Material de Uso e Consumo';
tipo_pro[09]:='08 - Ativo Imobilizado';
tipo_pro[10]:='09 - Serviços';
tipo_pro[11]:='10 - Outros Insumos';
tipo_pro[12]:='99 - Outras';
tipo_pro[13]:='Todos';

/////Corrige a Data e Hora no Windows de Acordo com Oservido - no banco de dados.....
CORRIGE_HORADATA;

Try
   Frm_PPal.ServerSocket1.Active:=True;
except
   end;

end;

procedure TFrm_PPal.sis_0133Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_codbar'));
if (testeform=nil)  then
   Application.createform(TFrm_CODBAR,Frm_CODBAR);

if Frm_CODBAR.WindowState=WsMinimized then
   Frm_CODBAR.WindowState:=WsNormal
else
   frm_CODBAR.Show;

end;

procedure TFrm_PPal.cr_0209Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ebol'));
if (testeform=nil)  then
   Application.createform(TFrm_EBol,Frm_Ebol);
if Frm_Ebol.WindowState=WsMinimized then
   Frm_Ebol.WindowState:=WsNormal
else
   frm_Ebol.Show;

end;

procedure TFrm_PPal.sis_0609Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_seg'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Seg,Frm_Seg);
   Frm_Seg.Formstyle:=fsnormal;
   Frm_Seg.Top:=0;
   end;
if Frm_Seg.WindowState=WsMinimized then
   Frm_Seg.WindowState:=WsNormal
else
   frm_Seg.Show;

mpseg:=DM1.Tb_ParGerPSEGMENTO.Value;


mcasaspu   :=fRetornaFormatFloat(DM1.Tb_PargerPCASASPU.AsInteger);
mcasas     :=fRetornaFormatFloat(DM1.Tb_PargerPCASAS.AsInteger);
mcasqtd    :=fRetornaFormatFloat(DM1.Tb_PargerPCASQTD.AsInteger);
mcasind    :=fRetornaFormatFloat(DM1.Tb_PargerPCASIND.AsInteger);
mcaspuind  :=fRetornaFormatFloat(DM1.Tb_PargerPCASPUIND.AsInteger);
if DM1.Tb_PargerPCASAS.Asinteger<0 then
   mcasger:=5
else
   mcasger    :=DM1.Tb_PargerPCASAS.AsInteger;
fppalDisplayFormat(0);
if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Ppal.Industria1.Visible:=False;
   Frm_Ppal.Industria2.Visible:=False;
   Frm_Ppal.mpro_0154.Visible :=False;
   Frm_Ppal.mpro_0155.Visible :=False;
   Frm_PPal.Industria_Envase.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Ppal.Industria1.Visible:=False;
   Frm_Ppal.Industria2.Visible:=true;
   Frm_Ppal.mpro_0154.Visible :=False;
   Frm_Ppal.mpro_0155.Visible :=True;
   Frm_PPal.Industria_Envase.Visible:=true;
   end
else
   begin
   Frm_Ppal.Industria1.Visible:=true;
   Frm_Ppal.Industria2.Visible:=true;
   Frm_Ppal.mpro_0154.Visible :=True;
   Frm_Ppal.mpro_0155.Visible :=True;
   Frm_PPal.Industria_Envase.Visible:=false;
   end;
if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_PPal.consembprod.Visible:=true
else
   Frm_PPal.consembprod.Visible:=False;

if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
   Frm_PPal.N60.Visible    :=true;
   Frm_PPal.cr_0318.Visible:=true;
   end
else
   begin
   Frm_PPal.N60.Visible    :=false;
   Frm_PPal.cr_0318.Visible:=false;
   end;

if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Frm_PPal.os.Visible:=False
else
   Frm_PPal.os.Visible:=True;


if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_Ppal.sai_0112.Visible:=True;
   end
else
   begin
   Frm_Ppal.sai_0112.Visible:=False;
   end;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_PPal.mloc_0106.Visible:=True;
   Frm_PPal.mloc_0107.Visible:=True;
   Frm_PPal.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_PPal.mloc_0106.Visible:=False;
   Frm_PPal.mloc_0107.Visible:=False;
   Frm_PPal.mloc_0108.Visible:=False;
   end;

if DM1.Tb_PargerPCODDBC.Value=1  then
   begin
   Frm_PPal.mpro_0148.Visible:=True;
   Frm_PPal.rpro_0124.Visible:=True;
   Frm_PPal.rpro_0133.Visible:=True;
   end
else
   begin
   Frm_PPal.mpro_0148.Visible:=False;
   Frm_PPal.rpro_0124.Visible:=False;
   Frm_PPal.rpro_0133.Visible:=False;
   end;

if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   Frm_PPal.mloc_0109.Visible:=True;
   end
else
   begin
   Frm_PPal.mloc_0109.Visible:=False;
   end;



if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_PPal.folha.Visible:=True;
   end
else
   begin
   Frm_PPal.folha.Visible:=false;
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Frm_PPal.mpro_0166.Visible :=True;
   Frm_PPal.NMP.Visible :=True;
   end
else
   begin
   Frm_PPal.mpro_0166.Visible :=False;
   Frm_PPal.NMP.Visible       :=False;
   end;

if DM1.Tb_PargerPUIMOBIL.Value=1 then
   begin
   Frm_PPal.Imobilizados.Visible    :=True;
   Frm_PPal.rel_imobilizados.Visible:=True;
   end
else
   begin
   Frm_PPal.Imobilizados.Visible    :=false;
   Frm_PPal.rel_imobilizados.Visible:=false;
   end;
if (valint(copy(mpseg,4,2))<>1) then
   begin
   Frm_PPal.sis2103.Visible  :=false;
   end;


if (valint(copy(mpseg,4,2))=2) then
   begin
   Frm_PPal.lf_0142.Visible  :=true;      // inventario por grade
   Frm_PPal.lf_0145.Visible  :=true;     // inventaorio por grade
   Frm_PPal.mpro_0166.Visible:=true;     // manutencao em materia primas
   Frm_PPal.mven_0109.Visible:=true;    // manutencao assessor
//   Frm_PPal.rven_0130.Visible       :=true; // comissão por venda
//   Frm_PPal.rven_0133.Visible       :=true; // comissao por recebimento

   end
else
   begin
   Frm_PPal.lf_0142.Visible:=false;
   Frm_PPal.lf_0145.Visible:=false;
   Frm_PPal.mpro_0166.Visible:=false;
   Frm_PPal.mven_0109.Visible:=false;
//   Frm_PPal.rven_0130.Visible       :=false;
//   Frm_PPal.rven_0133.Visible       :=false;

   end;


if DM1.Tb_PargerPUCONVEI.Value=1 then
   begin
   Frm_PPal.veiculos.Visible    :=True;
   Frm_PPal.rel_veiculos.Visible:=True;
   end
else
   begin
   Frm_PPal.veiculos.Visible    :=false;
   Frm_PPal.rel_veiculos.Visible:=false;
   end;


if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_PPal.sai_0127.Visible:=True;
   end
else
   begin
   Frm_PPal.sai_0127.Visible:=false;
   end;
end;

procedure TFrm_PPal.rger_0221Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_rd'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RD,Frm_CX_RD);
if Frm_CX_RD.WindowState=WsMinimized then
   Frm_CX_RD.WindowState:=WsNormal
else
   frm_CX_RD.Show;

end;

procedure TFrm_PPal.rger_0212Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_rg'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RG,Frm_CX_RG);

if Frm_CX_Rg.WindowState=WsMinimized then
   Frm_CX_Rg.WindowState:=WsNormal
else
   frm_CX_Rg.Show;

end;

procedure TFrm_PPal.rger_0215Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_rcc'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RCC,Frm_CX_RCC);
if Frm_CX_RCC.WindowState=WsMinimized then
   Frm_CX_RCC.WindowState:=WsNormal
else
   frm_CX_RCC.Show;
end;

procedure TFrm_PPal.rger_0218Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_rana'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RAna,Frm_CX_RAna);
if Frm_CX_RAna.WindowState=WsMinimized then
   Frm_CX_RAna.WindowState:=WsNormal
else
   frm_CX_RAna.Show;
end;

procedure TFrm_PPal.mpro_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_imp_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_Imp_Prod,Frm_Imp_Prod);
if Frm_Imp_Prod.WindowState=WsMinimized then
   Frm_Imp_Prod.WindowState:=WsNormal
else
   frm_Imp_Prod.Show;
end;

procedure TFrm_PPal.mdiv_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pv'));
if (testeform=nil)  then
   Application.createform(TFrm_PV,Frm_PV);
if Frm_PV.WindowState=WsMinimized then
   Frm_PV.WindowState:=WsNormal
else
   frm_PV.Show;
end;

procedure TFrm_PPal.mdiv_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_comd'));
if (testeform=nil)  then
   Application.createform(TFrm_ComD,Frm_ComD);
if Frm_ComD.WindowState=WsMinimized then
   Frm_ComD.WindowState:=WsNormal
else
   frm_ComD.Show;
end;

procedure TFrm_PPal.mven_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sup'));
if (testeform=nil)  then
   Application.createform(TFrm_Sup,Frm_Sup);
if Frm_Sup.WindowState=WsMinimized then
   Frm_Sup.WindowState:=WsNormal
else
   frm_Sup.Show;
end;

procedure TFrm_PPal.mpro_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pcus'));
if (testeform=nil)  then
   Application.createform(TFrm_Pcus,Frm_Pcus);
if Frm_Pcus.WindowState=WsMinimized then
   Frm_Pcus.WindowState:=WsNormal
else
   frm_Pcus.Show;
end;

procedure TFrm_PPal.mpro_0142Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_acus'));
if (testeform=nil)  then
   Application.createform(TFrm_Acus,Frm_Acus);
if Frm_Acus.WindowState=WsMinimized then
   Frm_Acus.WindowState:=WsNormal
else
   frm_Acus.Show;
end;

procedure TFrm_PPal.rcr_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_chq'));
if (testeform=nil)  then
   Application.createform(TFrm_Chq,Frm_Chq);
if Frm_Chq.WindowState=WsMinimized then
   Frm_Chq.WindowState:=WsNormal
else
   frm_Chq.Show;
end;

procedure TFrm_PPal.rcr_0106Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_mchq'));
if (testeform=nil)  then
   Application.createform(TFrm_MChq,Frm_MChq);
if Frm_MChq.WindowState=WsMinimized then
   Frm_MChq.WindowState:=WsNormal
else
   frm_MChq.Show;
end;

procedure TFrm_PPal.rcr_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bchq'));
if (testeform=nil)  then
   Application.createform(TFrm_Bchq,Frm_Bchq);
if Frm_Bchq.WindowState=WsMinimized then
   Frm_Bchq.WindowState:=WsNormal
else
   frm_Bchq.Show;
end;

procedure TFrm_PPal.rven_0106Click(Sender: TObject);
begin
pComROrigem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then

if frm_ComRV= nil then
   Application.createform(TFrm_ComRV,Frm_ComRV);
if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;
end;

procedure TFrm_PPal.rven_0109Click(Sender: TObject);
begin
pComROrigem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComRV,Frm_ComRV);
if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;
end;

procedure TFrm_PPal.rven_0112Click(Sender: TObject);
begin
pComROrigem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComRV,Frm_ComRV);
if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;
end;

procedure TFrm_PPal.rven_0118Click(Sender: TObject);
begin
pComVOrigem:=5;
testeform := TFrm_PPal(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComVV,Frm_ComVV);
if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;
end;

procedure TFrm_PPal.rven_0121Click(Sender: TObject);
begin
pComVOrigem:=6;
testeform := TFrm_PPal(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComVV,Frm_ComVV);
if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;
end;

procedure TFrm_PPal.rpro_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_extp'));
if (testeform=nil)  then
   Application.createform(TFrm_ExtP,Frm_ExtP);
if Frm_ExtP.WindowState=WsMinimized then
   Frm_ExtP.WindowState:=WsNormal
else
   frm_ExtP.Show;
end;

procedure TFrm_PPal.rpro_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_extp2'));
if (testeform=nil)  then
   Application.createform(TFrm_ExtP2,Frm_ExtP2);
if Frm_ExtP2.WindowState=WsMinimized then
   Frm_ExtP2.WindowState:=WsNormal
else
   frm_ExtP2.Show;
end;

procedure TFrm_PPal.rven_0124Click(Sender: TObject);
begin
pComVOrigem:=7;
testeform := TFrm_PPal(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComVV,Frm_ComVV);
if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;
end;

procedure TFrm_PPal.Sobre1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sobre'));
if (testeform=nil)  then
   Application.createform(TFrm_Sobre,Frm_Sobre);
if Frm_Sobre.WindowState=WsMinimized then
   Frm_Sobre.WindowState:=WsNormal
else
   frm_Sobre.Show;
end;
function TFrm_Ppal.VerificaBloqueio(ptipo: Integer):Boolean;
var
  dia, mes, ano: word;
  mdt: TDateTime;
  mdias: real;
//  mano , mmes , mdia : word;
//  msistema, mgrave: string;
  msistema: String;
  mflag: boolean;
  mqtdias : Integer;
begin
//flcademp(1,0,IntToStr(codemp)'1');

flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp)));

if DM2.Tb_EmpPA001.Value<>DM1.Tb_PargerPA001.Value then
   begin
   DM1.Tb_Parger.Edit;
   DM1.Tb_PargerPA001.Value:='';
   DM1.Tb_Parger.Post;
   DM2.Tb_Emp.Edit;
   DM2.Tb_EmpPA001.Value:='';
   DM2.Tb_Emp.Post;
   FMensagem('Sistema de controle de acesso Corrompido.',0,['0'],0);
   end;
//Passo 1
msistema:=PalNum_Sis(DM1.Tb_PargerPA001.Value);
dia:=StrToInt('0'+Copy(msistema,1,2));
mes:=StrToInt('0'+Copy(msistema,3,2));
ano:=StrToInt('0'+Copy(msistema,5,4));
If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
   mdt:=EncodeDate(ano,mes,dia)
else mdt:=Date-60;
mdias:=mdt-Date;
mflag:=True;
if (mdias<=10) and (mdias>0) then
   begin
   matusisliberou:=false;
   if fEstanaNet then
      begin
      mtentaautomatico:=true;
      if Frm_AtuSis=nil then
         Application.createform(TFrm_Atusis, Frm_Atusis);
      Frm_AtuSis.bbSenhaLib.Click;
      While not mAtuSisProcessou do
         begin
         end;
      mtentaautomatico:=false;
      Frm_AtuSis.free;
      frm_atusis:=nil;
      end;
   if not matusisliberou then
      begin
      fmensagem('Em '+FloatToStr(mdias)+' dias o sistema  será  bloqueado!'+#13
             +'Favor  entrar em contato com INTERSYS - Sistemas ou entre'+#13
             +'em sistema=>Consulta Diversas=>Senha  de  Liberação  para'+#13
             +'renovar sua licença de uso do sistema!',0,['0'],0);
      end;
   end
else if mdias<=0 then
   begin
   matusisliberou:=false;
   if fEstanaNet then
      begin
      matusisliberou:=false;
      mtentaautomatico:=true;
      if Frm_AtuSis=nil then
         Application.createform(TFrm_Atusis, Frm_Atusis);
      Frm_AtuSis.bbSenhaLib.Click;
      While not mAtuSisProcessou do
         begin
         end;
      mtentaautomatico:=false;
      frm_atusis.free;
      frm_atusis:=nil;
      end;
   if not matusisliberou then
      begin
      DM1.Tb_Parger.Edit;
      DM1.Tb_PargerPA001.Value:='';
      DM1.Tb_Parger.Post;
      DM2.Tb_Emp.Edit;
      DM2.Tb_EmpPA001.Value:='';
      DM2.Tb_Emp.Post;
      if Frm_Sobre= nil then
         Application.CreateForm(TFrm_Lib, Frm_Lib);
      Frm_Lib.CODLIB.Text:=CalculaCodLib('0'+DM2.Tb_EmpCGC.AsString);
      while true do
         begin
         If Frm_Lib.ShowModal=mrOk then
            begin
            if lib_origem<>1 then
               begin
               If Copy(Frm_Lib.SENHA.Text,1,6)=CalculaSenhaLib(Frm_Lib.CODLIB.Text) then
                  begin
                  DM1.Tb_Parger.Edit;
                  mqtdias:=StrToInt(PalNum_Sis(Copy(Trim(Frm_Lib.SENHA.Text),7,4)));
                  msistema:=NumPal_Sis(FormatDateTime('ddmmyyyy',Date+mqtdias));
                  DM1.Tb_PargerPA001.Value:=msistema;
                  DM1.Tb_Parger.Post;
                  DM2.Tb_Emp.Edit;
                  DM2.Tb_EmpPA001.Value:=msistema;
                  DM2.Tb_Emp.Post;
                  mflag:=True;
                  Break;
                  end
               else
                  begin
                  fmensagem('Senha Incorreta!',0,['0'],0);
                  Continue;
                  end;
               end
            else
               begin
               flparger(0,0,'1');
               flcademp(1,0,IntToStr(codemp));
//            flparger(0,0,IntToStr(codemp)'1');
//            flcademp(1,0,'1');

               if DM2.Tb_EmpPA001.Value<>DM1.Tb_PargerPA001.Value then
                  begin
                  DM1.Tb_Parger.Edit;
                  DM1.Tb_PargerPA001.Value:='';
                  DM1.Tb_Parger.Post;
                  DM2.Tb_Emp.Edit;
                  DM2.Tb_EmpPA001.Value:='';
                  DM2.Tb_Emp.Post;
                  FMensagem('Sistema de controle de acesso Corrompido.',0,['0'],0);
                  mflag:=false;
                  break;
                  end;
            //Passo 1
               msistema:=PalNum_Sis(DM1.Tb_PargerPA001.Value);
               dia:=StrToInt('0'+Copy(msistema,1,2));
               mes:=StrToInt('0'+Copy(msistema,3,2));
               ano:=StrToInt('0'+Copy(msistema,5,4));
               If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
                  mdt:=EncodeDate(ano,mes,dia)
               else mdt:=Date-60;
                  mdias:=mdt-Date;
               if mdias<=0 then
                  mflag:=false
               else
                  mflag:=true;
               break;
              end
            end
         else
            begin
            mflag:=False;
            end;
         break;
         end;
      Frm_Lib.Free;
      Frm_Lib:=nil;
      end;
   end;
result:=mflag;
end;
procedure TFrm_PPal.rven_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vabc'));
if (testeform=nil)  then
   Application.createform(TFrm_VABC,Frm_VABC);
if Frm_VABC.WindowState=WsMinimized then
   Frm_VABC.WindowState:=WsNormal
else
   frm_VABC.Show;

end;

procedure TFrm_PPal.cr_0312Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rfpr'));
if (testeform=nil)  then
   Application.createform(TFrm_RFPR,Frm_RFPR);
if Frm_RFPR.WindowState=WsMinimized then
   Frm_RFPR.WindowState:=WsNormal
else
   frm_RFPR.Show;

end;

procedure TFrm_PPal.cp_0212Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rfpp'));
if (testeform=nil)  then
   Application.createform(TFrm_RFPP,Frm_RFPP);
if Frm_RFPP.WindowState=WsMinimized then
   Frm_RFPP.WindowState:=WsNormal
else
   frm_RFPP.Show;
end;

procedure TFrm_PPal.rcli_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cabc'));
if (testeform=nil)  then
   Application.createform(TFrm_CABC,Frm_CABC);
if Frm_CABC.WindowState=WsMinimized then
   Frm_CABC.WindowState:=WsNormal
else
   frm_CABC.Show;
end;

procedure TFrm_PPal.cp_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Cfor,Frm_Cfor);
if Frm_Cfor.WindowState=WsMinimized then
   Frm_Cfor.WindowState:=WsNormal
else
   frm_Cfor.Show;
end;

procedure TFrm_PPal.rped_0301Click(Sender: TObject);
begin
mreltab:='CADPEN';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_pen'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pen);
if form_per2_pen.WindowState=WsMinimized then
   form_per2_pen.WindowState:=WsNormal
else
   form_per2_pen.Show;
end;

procedure TFrm_PPal.cr_0215Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcob'));
if (testeform=nil)  then
   Application.createform(TFrm_Rcob,Frm_Rcob);
if Frm_Rcob.WindowState=WsMinimized then
   Frm_Rcob.WindowState:=WsNormal
else
   frm_Rcob.Show;
end;

procedure TFrm_PPal.cr_0912Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rdoc'));
if (testeform=nil)  then
   Application.createform(TFrm_RDoc,Frm_RDoc);
if Frm_RDoc.WindowState=WsMinimized then
   Frm_RDoc.WindowState:=WsNormal
else
   frm_RDoc.Show;
end;

procedure TFrm_PPal.mloc_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_loc'));
if (testeform=nil)  then
   Application.createform(TFrm_Loc,Frm_Loc);
if Frm_Loc.WindowState=WsMinimized then
   Frm_Loc.WindowState:=WsNormal
else
   frm_Loc.Show;
end;

procedure TFrm_PPal.mloc_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bai'));
if (testeform=nil)  then
   Application.createform(TFrm_Bai,Frm_Bai);

if Frm_Bai.WindowState=WsMinimized then
   Frm_Bai.WindowState:=WsNormal
else
   frm_Bai.Show;
end;

procedure TFrm_PPal.est_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_gper'));
if (testeform=nil)  then
   Application.createform(TFrm_GPer,Frm_GPer);
if Frm_GPer.WindowState=WsMinimized then
   Frm_GPEr.WindowState:=WsNormal
else
   frm_GPer.Show;
end;

procedure TFrm_PPal.rpforClick(Sender: TObject);
begin
mreltab:='CADPF1';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_pf1'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pf1);
if form_per2_pf1.WindowState=WsMinimized then
   form_per2_pf1.WindowState:=WsNormal
else
   form_per2_pf1.Show;
end;

procedure TFrm_PPal.rped_0101Click(Sender: TObject);
begin
mreltab:='CADP01';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ped01'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ped01);
if form_per2_ped01.WindowState=WsMinimized then
   form_per2_ped01.WindowState:=WsNormal
else
   form_per2_ped01.Show;
end;

procedure TFrm_PPal.Continua1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tot'));
if (testeform=nil)  then
   Application.createform(TFrm_Tot,Frm_Tot);
if Frm_Tot.WindowState=WsMinimized then
   Frm_TOt.WindowState:=WsNormal
else
   frm_Tot.Show;
end;

procedure TFrm_PPal.rger_0224Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_evento'));
if (testeform=nil)  then
   Application.createform(TFrm_Evento,Frm_Evento);
if Frm_Evento.WindowState=WsMinimized then
   Frm_Evento.WindowState:=WsNormal
else
   frm_Evento.Show;
end;

procedure TFrm_PPal.mcli_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_red'));
if (testeform=nil)  then
   Application.createform(TFrm_Red,Frm_Red);
if Frm_Red.WindowState=WsMinimized then
   Frm_Red.WindowState:=WsNormal
else
   frm_Red.Show;
end;

procedure TFrm_PPal.mcli_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcli'));
if (testeform=nil)  then
   Application.createform(TFrm_RCli,Frm_RCli);
if Frm_RCli.WindowState=WsMinimized then
   Frm_RCli.WindowState:=WsNormal
else
   frm_RCli.Show;
end;

procedure TFrm_PPal.sis_0612Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_expdm'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpDM,Frm_ExpDM);
if Frm_ExpDM.WindowState=WsMinimized then
   Frm_ExpDM.WindowState:=WsNormal
else
   frm_ExpDM.Show;
end;

procedure TFrm_PPal.sis0621Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cfg'));
if (testeform=nil)  then
   Application.createform(TFrm_CFG,Frm_CFG);
if Frm_CFG.WindowState=WsMinimized then
   Frm_CFG.WindowState:=WsNormal
else
   frm_CFG.Show;
end;

procedure TFrm_PPal.sis0615Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bkp'));
if (testeform=nil)  then
   Application.createform(TFrm_Bkp,Frm_BKp);
if Frm_Bkp.WindowState=WsMinimized then
   Frm_Bkp.WindowState:=WsNormal
else
   frm_Bkp.Show;
end;

procedure TFrm_PPal.sis0618Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,7,0,0,0,0,0, 'Senha Para Restaurar Backups','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_info'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Info, Frm_Info);
Frm_Info.RichEdit1.Lines.Clear;
Frm_Info.RichEdit1.Lines.Add('Informações Importantes: Para restaurar o ');
Frm_Info.RichEdit1.Lines.Add('backups é necessario que o computador que voce esteja ');
Frm_Info.RichEdit1.Lines.Add('usando seja o SERVIDOR e que todos os usuários estejam fora ');
Frm_Info.RichEdit1.Lines.Add('do SGE-Sistema de Gestão Empresarial, após a restauração ');
Frm_Info.RichEdit1.Lines.Add('o sistema será fechado. EM CASO DE DUVIDA NAO UTILIZE ESTA ');
Frm_Info.RichEdit1.Lines.Add('OPÇAO, POIS ELA PODE CAUSAR DANOS EM SEU BANCO DE DADOS');

Frm_Info.ShowModal;
Frm_Info.Free;
Frm_Info:=nil;
testeform := TFrm_PPal(FindGlobalComponent('frm_rest'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Rest, Frm_Rest);
Frm_Rest.ShowModal;
Frm_Rest.Free;
Frm_Rest:=nil;

end;

procedure TFrm_PPal.sis0624Click(Sender: TObject);
begin
if FValidaSenha(0,codusr,9,0,0,0,0,0, 'Senha Para Zerar Estoque de Produtos','')<>0 then
   exit;
if codusr<>1111 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_zest'));
if (testeform=nil)  then
   Application.createform(TFrm_Zest,Frm_Zest);
if Frm_Zest.WindowState=WsMinimized then
   Frm_Zest.WindowState:=WsNormal
else
   frm_Zest.Show;
end;

procedure TFrm_PPal.sis0627Click(Sender: TObject);
begin
if codusr<>1111 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_corest'));
if (testeform=nil)  then
   Application.createform(TFrm_CorEst,Frm_CorESt);
if Frm_CorEst.WindowState=WsMinimized then
   Frm_CorEst.WindowState:=WsNormal
else
   frm_CorEst.Show;
end;

procedure TFrm_PPal.mcli_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pcon'));
if (testeform=nil)  then
   Application.createform(TFrm_Pcon,Frm_Pcon);
if Frm_Pcon.WindowState=WsMinimized then
   Frm_Pcon.WindowState:=WsNormal
else
   frm_Pcon.Show;

end;

procedure TFrm_PPal.mpro_0145Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pcolot'));
if (testeform=nil)  then
   Application.createform(TFrm_PcoLot,Frm_PcoLot);
if Frm_PcoLot.WindowState=WsMinimized then
   Frm_PcoLot.WindowState:=WsNormal
else
   frm_PcoLot.Show;

end;

procedure TFrm_PPal.rger_0227Click(Sender: TObject);
begin
mreltab:='Gerenciais';
testeform := TFrm_PPal(FindGlobalComponent('frm_perger'));
if (testeform=nil)  then
   Application.createform(TFrm_Perger,Frm_PErger);
if Frm_Perger.WindowState=WsMinimized then
   Frm_PErger.WindowState:=WsNormal
else
   frm_Perger.Show;

end;

procedure TFrm_PPal.rcr_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sitcre'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);

                               //mcodcli:=StrToint(Trim(CODCLI.Text));
if Frm_SitCre.WindowState=WsMinimized then
   Frm_SItCrE.WindowState:=WsNormal
else
   frm_SitCre.Show;


end;

procedure TFrm_PPal.sis_0630Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fec'));
if (testeform=nil)  then
   Application.createform(TFrm_Fec,Frm_Fec);
if Frm_Fec.WindowState=WsMinimized then
   Frm_Fec.WindowState:=WsNormal
else
   frm_fec.Show;

end;

procedure TFrm_PPal.rpro_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medpro02'));
if (testeform=nil)  then
   Application.createform(TFrm_MedPro02 ,Frm_MedPro02);
if Frm_MedPro02.WindowState=WsMinimized then
   Frm_MedPro02.WindowState:=WsNormal
else
   frm_MedPro02.Show;

end;

procedure TFrm_PPal.mdiv_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ppr'));
if (testeform=nil)  then
   Application.createform(TFrm_PPR,Frm_PPR);
if Frm_PPR.WindowState=WsMinimized then
   Frm_PPR.WindowState:=WsNormal
else
   frm_PPR.Show;

end;

procedure TFrm_PPal.cr_0218Click(Sender: TObject);
begin
mModCart:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_ccob'));
if (testeform=nil)  then
   Application.createform(TFrm_CCob,Frm_CCob);
if Frm_CCob.WindowState=WsMinimized then
   Frm_CCob.WindowState:=WsNormal
else
   frm_CCob.Show;

end;

procedure TFrm_PPal.cr_0221Click(Sender: TObject);
begin
mModCart:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_ccob'));
if (testeform=nil)  then
   Application.createform(TFrm_CCob,Frm_CCob);
if Frm_CCob.WindowState=WsMinimized then
   Frm_CCob.WindowState:=WsNormal
else
   frm_CCob.Show;
end;

procedure TFrm_PPal.mfol_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_funcao'));
if (testeform=nil)  then
   Application.createform(TFrm_Funcao,Frm_Funcao);
if Frm_Funcao.WindowState=WsMinimized then
   Frm_Funcao.WindowState:=WsNormal
else
   frm_Funcao.Show;
end;

procedure TFrm_PPal.mfol_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dep'));
if (testeform=nil)  then
   Application.createform(TFrm_Dep,Frm_Dep);
if Frm_Dep.WindowState=WsMinimized then
   Frm_Dep.WindowState:=WsNormal
else
   frm_Dep.Show;
end;

procedure TFrm_PPal.mfol_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_eve'));
if (testeform=nil)  then
   Application.createform(TFrm_Eve,Frm_Eve);
if Frm_Eve.WindowState=WsMinimized then
   Frm_Eve.WindowState:=WsNormal
else
   frm_Eve.Show;
end;

procedure TFrm_PPal.mfol_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_parfolha'));
if (testeform=nil)  then
   Application.createform(TFrm_ParFolha,Frm_ParFolha);
if Frm_ParFolha.WindowState=WsMinimized then
   Frm_ParFolha.WindowState:=WsNormal
else
   frm_PArFolha.Show;
end;

procedure TFrm_PPal.mfol_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fun'));
if (testeform=nil)  then
   Application.createform(TFrm_Fun,Frm_Fun);
if Frm_Fun.WindowState=WsMinimized then
   Frm_fun.WindowState:=WsNormal
else
   frm_Fun.Show;
end;

procedure TFrm_PPal.mfol_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_gfolha'));
if (testeform=nil)  then
   Application.createform(TFrm_GFolha,Frm_GFolha);
if Frm_GFolha.WindowState=WsMinimized then
   Frm_GFolha.WindowState:=WsNormal
else
   frm_GFolha.Show;
end;

procedure TFrm_PPal.mfol_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_folman'));
if (testeform=nil)  then
   Application.createform(TFrm_FolMan,Frm_FolMan);
if Frm_FolMan.WindowState=WsMinimized then
   Frm_folMan.WindowState:=WsNormal
else
   frm_FolMan.Show;
end;

procedure TFrm_PPal.mfol_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_imp_folha'));
if (testeform=nil)  then
   Application.createform(TFrm_Imp_Folha,Frm_Imp_Folha);
if Frm_Imp_Folha.WindowState=WsMinimized then
   Frm_Imp_folha.WindowState:=WsNormal
else
   frm_Imp_Folha.Show;
end;

procedure TFrm_PPal.mfol_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_imp_resfol'));
if (testeform=nil)  then
   Application.createform(TFrm_Imp_ResFol,Frm_Imp_ResFol);
if Frm_Imp_ResFol.WindowState=WsMinimized then
   Frm_Imp_ResFol.WindowState:=WsNormal
else
   frm_Imp_ResFol.Show;
end;

procedure TFrm_PPal.sis0630Click(Sender: TObject);
begin
mavisoson:=False;
Frm_CServer.Show;
end;

procedure TFrm_PPal.ServerSocket1Accept(Sender: TObject;
  Socket: TCustomWinSocket);
begin

IsServer := True;
Frm_CServer.eventos.Caption:= 'Conectando em: ' + Socket.RemoteAddress;

end;

procedure TFrm_PPal.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
if Not Frm_CServer.Active then
   begin
   AvisoSonoro(1);
   AvisoSonoro(2);
   AvisoSonoro(3);
   Frm_CServer.Show;
   end;
end;

procedure TFrm_PPal.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
Frm_CServer.Memo2.Lines.Add(Socket.RemoteHost+': '+Socket.ReceiveText);

end;

procedure TFrm_PPal.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
Frm_CServer.eventos.Caption:='Conectado em: ' + Socket.RemoteHost;
IsServer:=False;

end;

procedure TFrm_PPal.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
Frm_CServer.eventos.Caption:='Desconectado';

end;

procedure TFrm_PPal.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
Frm_CServer.eventos.Caption:= 'Erro ao conectar em : ' + Server;

end;

procedure TFrm_PPal.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// O QUE TAVA

Frm_CServer.Memo2.Lines.Add(Server+': '+Socket.ReceiveText);

end;

procedure TFrm_PPal.sis0633Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tab06'));
if (testeform=nil)  then
   Application.createform(TFrm_Tab06,Frm_Tab06);
morigem:=0;
if Frm_Tab06.WindowState=WsMinimized then
   Frm_Tab06.WindowState:=WsNormal
else
   frm_Tab06.Show;
end;

procedure TFrm_PPal.sis_0215Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';

iRetorno := Bematech_FI_AberturaDoDia( pchar('0,00' ), pchar( 'Dinheiro' ) );
if iRetorno=1 then
   begin
   fmensagem('Abertura realizada com sucesso!',0,['0'],0);
   end
else
   begin
   fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao tentar Abrir o dia!',0,['0'],0);
   end;

end;

procedure TFrm_PPal.sis_0218Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
iRetorno := Bematech_FI_ResetaImpressora();
if iRetorno<>1 then
   fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao resetar a impressora!',0,['0'],0)
else
   fmensagem('Concluido! ',0,['0'],0);

end;

procedure TFrm_PPal.sai_0112Click(Sender: TObject);
begin

if DM1.Tb_EmpBLOQ.Value=1 then
   begin

   exit;
   end;
// lindomar

if not ppconsemp then
   begin
   iRetorno:=fverestimp(0);
   if iRetorno>7 then
      exit;
   if not ftestauf(DM1.Tb_EmpUF.Value) then
      exit;
   if not ftestacaixa(1) then exit;
   if not ftestaecf(0) then
      begin
      exit;
      end;
   serieecf:='';
   DM1.Tb_ECF_FP.Close;
   DM1.Tb_ECF_FP.Sql.Clear;
   DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP  where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                        +' order by FPECODIGO ');
   DM1.Tb_ECF_FP.Open;
   if DM1.Tb_ECF_FP.Eof then
      begin
      fmensagem('Não foi Encontrado o arquivo de Formas de Pagamento. '+#13
                +'Entre em Sistema=>Impressoras Fiscal=>Parametros=>'+#13
                +'informaçoes da impressora=>Capturar',0,['0'],0);

      exit;
      end;
   end
else
   begin
   if codecf=0 then
      codecf:=1;
   if flcadecf(1,0,IntTostr(codecf)) then
      begin
      DM1.Tb_ECF_FP.Close;
      DM1.Tb_ECF_FP.Sql.Clear;
      DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP  where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                           +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                           +' order by FPECODIGO ');
      DM1.Tb_ECF_FP.Open;
      if DM1.Tb_ECF_FP.Eof then
         begin

         fmensagem('Não foi Encontrado o arquivo de Formas de Pagamento. '+#13
                   +'Entre em Sistema=>Impressoras Fiscal=>Parametros=>'+#13
                   +'informaçoes da impressora=>Capturar',0,['0'],0);
         exit;
         end;
      end
   else
      begin

      fmensagem('Cadastre Pelo Menos uma Impressora Fiscal!',0,['0'],0);

      exit;
      end;

   end;

if DM1.Tb_ECFCFMODELO.Value=0 then
   begin
   mtam_mens:=384;
   mtaml:=48;
   end
else
   begin
   mtam_mens:=320;
   mtaml:=42;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_agde'));
if (testeform=nil)  then
   Application.createform(TFrm_Agde,Frm_Agde);

if frm_agde.fAgdeProgramaAberto( 'Ponto de Venda') then
   begin
   fmensagem('Este Programa ja Aberto em outra Copia, Inválido!',0,['0'],0);
   exit;
   end;
if frm_agde.fAgdeProgramaAberto( 'Caixa') then
   begin
   fmensagem('Existe um Programa de Emissão de Cupom fiscal ja Aberto. Inválido!!',0,['0'],0);
   exit;
   end;

if Frm_Agde.WindowState=WsMinimized then
   Frm_Agde.WindowState:=WsNormal
else
   frm_Agde.Show;
Frm_Agde.Update;
if not flcadpv(1,0,'AV','01') then
   begin

   fmensagem('Favor Cadastrar um plano de vendas do tipo AV 01',0,['0'],0);

   exit;
   end;

if not (ppconsemp) and (DM1.Tb_ECFCFMAPARES.Value=0) then
   begin
   if fverificaRedZ(0)<date then
      begin
      mcinst:='Não Foi Realizado a Redução Z do dia: '+FormatDateTime(fdt2, fverificaRedZ(0))
             +'Deseja Fazer Agora?';
      if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
         exit;
      if (DM1.Tb_ECFCFDTULTMOV.IsNull) or (DM1.Tb_ECFCFDTULTMOV.Value<=pdatanula) then
         fReducaoZ(0,Date-1)
      else
         fReducaoZ(0,DM1.Tb_ECFCFDTULTMOV.Value);
      if (DM1.Tb_ECFCFMODELO.Value=1) and (DM1.Tb_ECFCFDTULTMOV.Value<date) and (DM1.Tb_ECFCFABERTSIS.Value=0) then
         iRetorno := Bematech_FI_AberturaDoDia( pchar( '0,00' ), pchar( 'Dinheiro' ) );

      end
   else if DM1.Tb_ECFCFDTULTMOV.Value<date then
      begin
      if (DM1.Tb_ECFCFDTULTMOV.IsNull) or (DM1.Tb_ECFCFDTULTMOV.Value<=pdatanula) then
         fReducaoZ(2,date-1)
      else
         fReducaoZ(2,DM1.Tb_ECFCFDTULTMOV.Value);
      end;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_pvo'));
if (testeform=nil)  then
   Application.createform(TFrm_PVO,Frm_PVO);

mpacreconv:=0;
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
mpvcom02     := DM1.Tb_PVPVCOM02.Value;
mpvcom03     := DM1.Tb_PVPVCOM03.Value;

{

                       +' PV2PRAZO as POPRAZO from CADPV2 '
                       +' where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                       +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                       +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                       +' order by PV2PRAZO');
Frm_PVO.Tb_Po99.Open;
}
testeform := TFrm_PPal(FindGlobalComponent('frm_pvab'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_PvAb, Frm_pvAb);
testeform := TFrm_PPal(FindGlobalComponent('frm_ponven'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_PonVen, Frm_PonVen);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select EA_NOMECOMP,EA_DATA,EA_CODUSR,EA_CODECF,EA_PEDIDO,EA_ESTAGIO '
                  +' from ECFABERTO where EA_NOMECOMP='+chr(39)+pNomTer+chr(39));
DM1.Query1.Open;
if not DM1.Query1.Eof then
   begin

   fmensagem('Foi encontrado uma emissão não concluida '+#13
             +'o sistema ira cancelar a mesma!',0,['0'],0);
   mncupom:=DM1.Query1.Fields[2].AsInteger;
   mchaveped:=DM1.Query1.Fields[3].AsFloat;
   if flcadp01(0,0,ls_numped,FloatToStr(mchaveped),'') then
      begin
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01P1CODCLI.AsString);
      Application.CreateForm(TFrm_Cancup, Frm_CanCup);
      Frm_CanCup.CHAVEP.Text:=DM1.Tb_Ped01P1CHAVE.AsString;
      Frm_CanCup.NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
      mcancelou:=False;
      Frm_CanCup.ShowModal;
      Frm_CanCup.Free;
      Frm_CanCup:=nil;
      if not mcancelou then
         exit;
      mchaveped:=0;
      end
   else
      begin
       if flcadp02(0,0,ls_numped,FloatToStr(mchaveped),'') then
          begin
          While not DM1.Tb_Ped02.Eof do
             begin
             flbaiest(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,
                                    'PV;'+
                       DM1.Tb_ped02P2CODEMP.Asstring+';'
                       +DM1.Tb_ped02P2LOTSEQ.Asstring+';'
                       +DM1.Tb_ped02P2CHAVE.Asstring+';'
                       +'Cancela Item;RET;'+'frm_ppal_5487_',DM1.Tb_ped02p2QTD.Value);
//             CMovPro(0,DM1.Tb_Ped02P2CODPRO.AsString,DM1.Tb_Ped02P2CODPRO.AsString,'_Aju',ValFloat(IntToStr(RG_TIPOM.ItemIndex)),DM1.Tb_ProPDSALDO.AsFloat,ValFloat(QTD.Text),'Ajuste de Estoque Numero - '+DM1.Tb_AjuAJSEQ.AsString);
             DM1.Tb_Ped02.Next;
             end;
          DM1.Query1.Close;
          DM1.Query1.sql.Clear;
          DM1.Query1.SQL.add('Delete from CADP02 where '
                            +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+IntTostr(codemp)+' and ')
                            +' P2LOTSEQ=0'+DM1.Tb_Ped02P2LOTSEQ.AsString
                            +' and P2CHAVE=0'+DM1.Tb_Ped02P2CHAVE.AsString);
          Try
             DM1.Query1.ExecSQL;
             fdm1StartCommit;
          except
             ex_erroSql(01,5133,'Frm_PPal','CADP01');
             end;
          end;
      end;
   end
else
   fAjustaEcfAberto(0,0);

DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
Frm_PonVen.ShowModal;
Frm_PonVen.Free;
Frm_PonVen:=nil;
Frm_PVO.free;
Frm_PVO:=nil;
Frm_PvAb.Free;
Frm_PvAb:=nil;
serieecf:='';
end;

procedure TFrm_PPal.sai_0121Click(Sender: TObject);
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin
   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
   exit;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_fatemp'));
if (testeform=nil)  then
   Application.createform(TFrm_FatEmp,Frm_FatEmp);
if Frm_FatEmp.WindowState=WsMinimized then
   Frm_FatEmp.WindowState:=WsNormal
else
   frm_FatEmp.Show;
end;

procedure TFrm_PPal.mind_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_procp'));
if (testeform=nil)  then
   Application.createform(TFrm_Proc,Frm_Proc);
if Frm_Proc.WindowState=WsMinimized then
   Frm_Proc.WindowState:=WsNormal
else
   frm_Proc.Show;
end;

procedure TFrm_PPal.cr_0915Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_emichq'));
if (testeform=nil)  then
   Application.createform(TFrm_EmiCHq,Frm_EmiChq);
if Frm_EmiChq.WindowState=WsMinimized then
   Frm_EmiChq.WindowState:=WsNormal
else
   frm_EmiChq.Show;
end;

procedure TFrm_PPal.mcai_0115Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   fmensagem('Valido Somente para Equipe de SUPORTE!',0,['0'],0);
   exit;
   end;
if fValidaSenha(0,codusr,18,0,0,0,0,0, 'Senha Para ajustar Centro de Custos','')<>0 then
   exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_ajuccu'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuCCu,Frm_AjuCCu);
if Frm_AjuCCu.WindowState=WsMinimized then
   Frm_AjuCCu.WindowState:=WsNormal
else
   frm_AjuCCu.Show;

end;

procedure TFrm_PPal.rpfor_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rpfor'));
if (testeform=nil)  then
   Application.createform(TFrm_RPFor,Frm_RPFor);
if Frm_RPFor.WindowState=WsMinimized then
   Frm_RPFor.WindowState:=WsNormal
else
   frm_RPFor.Show;
end;

procedure TFrm_PPal.mpro_0148Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dcb'));
if (testeform=nil)  then
   Application.createform(TFrm_DCB,Frm_DCB);
if Frm_DCB.WindowState=WsMinimized then
   Frm_DCB.WindowState:=WsNormal
else
   frm_DCB.Show;
end;

procedure TFrm_PPal.rpro_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_amvs'));
if (testeform=nil)  then
   Application.createform(TFrm_AMVS,Frm_AMVS);
if Frm_AMVS.WindowState=WsMinimized then
   Frm_AMVS.WindowState:=WsNormal
else
   frm_AMVS.Show;
end;

procedure TFrm_PPal.rpro_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rasplote'));
if (testeform=nil)  then
   Application.createform(TFrm_RasPLote,Frm_RasPLote);
if Frm_RasPLote.WindowState=WsMinimized then
   Frm_RasPLote.WindowState:=WsNormal
else
   frm_RasPLote.Show;;
//   if Frm_RasPlote=nil then
//      Application.CreateForm(TFrm_RasPlote, Frm_RasPlote);
//   if Frm_RasPlote.WindowState=wsMinimized then
//      Frm_RasPlote.WindowState:=wsNormal;
//   Frm_RasPlote.Show;

end;

procedure TFrm_PPal.sis0636Click(Sender: TObject);
begin
//Application.CreateForm(TFrm_ConDiv, Frm_ConDiv);
//Frm_ConDiv.ShowModal;
//Frm_ConDiv.Free;
testeform := TFrm_PPal(FindGlobalComponent('frm_atusis'));
if (testeform=nil)  then
   Application.createform(TFrm_Atusis,Frm_Atusis);
if Frm_Atusis.WindowState=WsMinimized then
   Frm_Atusis.WindowState:=WsNormal
else
   frm_Atusis.Show;
end;

procedure TFrm_PPal.sai_0127Click(Sender: TObject);
var
consempant: Boolean;
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin
   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
   exit;
   end;
// lindomar
consempant:=ppconsemp;
if flcadpar01(0,codemp,'1') then
   begin
   if DM4.Tb_Par01PCAIXASECF.Value=1 then
      ppconsemp:=True;
   end;

if not ftestauf(DM1.Tb_EmpUF.Value) then
   exit;
if not ftestacaixa(1) then
   begin
   ppconsemp:=consempant;
    exit;
   end;

if not ppconsemp then
   begin
   iRetorno:=fverestimp(0);
   if iRetorno>7 then
      begin
      ppconsemp:=consempant;
      exit;
      end;
   if not ftestaecf(0) then
      begin
      ppconsemp:=consempant;
      exit;
      end;
   serieecf:='';
   DM1.Tb_ECF_FP.Close;
   DM1.Tb_ECF_FP.Sql.Clear;
   DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP  where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                        +' order by FPECODIGO ');
   DM1.Tb_ECF_FP.Open;
   if DM1.Tb_ECF_FP.Eof then
      begin

      fmensagem('Não foi Encontrado o arquivo de Formas de Pagamento. '+#13
                +'Entre em Sistema=>Impressoras Fiscal=>Parametros=>'+#13
                +'informaçoes da impressora=>Capturar',0,['0'],0);

      ppconsemp:=consempant;
      exit;
      end;
   end
else
   begin
   if codecf=0 then
      codecf:=1;

   if flcadecf(1,0,IntTostr(codecf)) then
      begin
      DM1.Tb_ECF_FP.Close;
      DM1.Tb_ECF_FP.Sql.Clear;
      DM1.Tb_ECF_FP.SQL.Add('Select * from CADECF_FP  where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' FPECODEMP=0'+IntTostr(codemp)+' and ')
                           +' FPECODECF=0'+DM1.Tb_ECFCFCAIXA.AsString
                           +' order by FPECODIGO ');
      DM1.Tb_ECF_FP.Open;
      if DM1.Tb_ECF_FP.Eof then
         begin

         fmensagem('Não foi Encontrado o arquivo de Formas de Pagamento. '+#13
                   +'Entre em Sistema=>Impressoras Fiscal=>Parametros=>'+#13
                   +'informaçoes da impressora=>Capturar',0,['0'],0);

         exit;
         end;
      end
   else
      begin

      fmensagem('Cadastre Pelo Menos uma Impressora Fiscal!',0,['0'],0);

      exit;
      end;
   end;

DM1.Tb_ECF_FP.First;
While not DM1.Tb_ECF_FP.Eof do
   begin
   if trim(DM1.Tb_ECF_FPFPEVINCULO.AsString)='' then
      begin

      fmensagem('ha formas de Pagamentos sem vinculo, para corrigir entre em '+#13
                +'parametros impressoras fiscais.',0,['0'],0);

      break;
      end;
   DM1.Tb_ECF_FP.Next;
   end;


testeform := TFrm_PPal(FindGlobalComponent('frm_agde'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Agde, Frm_Agde);
if frm_agde.fAgdeProgramaAberto( 'Ponto de Venda') then
   begin
   fmensagem('Existe um Programa de Emissão de Cupom fiscal ja Aberto. Inválido!!',0,['0'],0);
   ppconsemp:=consempant;
   exit;
   end;
if frm_agde.fAgdeProgramaAberto( 'Caixa') then
   begin

   fmensagem('Existe um Programa de Emissão de Cupom fiscal ja Aberto. Inválido!!',0,['0'],0);
   ppconsemp:=consempant;
   exit;
   end;
Frm_Agde.Free;
Frm_Agde:=nil;
if DM1.Tb_ECFCFMODELO.Value=0 then
   begin
   mtam_mens:=384;
   mtaml:=48;
   end
else
   begin
   mtam_mens:=320;
   mtaml:=42;

   end;


if not (ppconsemp) and (DM1.Tb_ECFCFMAPARES.Value=0) then
   begin
   if fverificaRedZ(0)<date then
      begin
      mcinst:='Não Foi Realizado a Redução Z do dia: '+FormatDateTime(fdt2, fverificaRedZ(0))
             +'Deseja Fazer Agora?';
      if fMensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
         exit;
      if (DM1.Tb_ECFCFDTULTMOV.IsNull) or (DM1.Tb_ECFCFDTULTMOV.Value<=pdatanula) then
         fReducaoZ(0,Date-1)
      else
         fReducaoZ(0,DM1.Tb_ECFCFDTULTMOV.Value);
      if (DM1.Tb_ECFCFMODELO.Value=1) and (DM1.Tb_ECFCFDTULTMOV.Value<date) and (DM1.Tb_ECFCFABERTSIS.Value=0) then
         iRetorno := Bematech_FI_AberturaDoDia( pchar( '0,00' ), pchar( 'Dinheiro' ) );
      end
   else if DM1.Tb_ECFCFDTULTMOV.Value<date then
      begin
      if (DM1.Tb_ECFCFDTULTMOV.IsNull) or (DM1.Tb_ECFCFDTULTMOV.Value<=pdatanula) then
         fReducaoZ(2,date-1)
      else
         fReducaoZ(2,DM1.Tb_ECFCFDTULTMOV.Value);
      end;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_receb'));
if (testeform=nil)  then
   Application.createform(TFrm_Receb,Frm_Receb);
if Frm_Receb.WindowState=WsMinimized then
   Frm_Receb.WindowState:=WsNormal
else
   frm_Receb.Show;
serieecf:='';
end;

function fppalDisplayFormat(ptipo: Integer): Boolean;
begin
DM4.Qr_Ped01vP1VDATAV.DisplayFormat      :=fdt2;
DM4.Qr_Ped01vP1VVALOR.DisplayFormat      :=mcasas;
DM1.Tb_ProPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propcoven.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDVLRINC.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdpreco1.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdpreco2.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdpreco3.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdprecoa1.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdprecoa2.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdprecoa3.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDPMC.DisplayFormat      :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDPMC02.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDPMC03.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdprecoc.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdpcomc.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDUNDVDA.DisplayFormat   :=mcasqtd;
DM1.Tb_ProPDDTALT.DisplayFormat    :=fdathor;
DM1.Tb_ProPDDATCAD.DisplayFormat   :=fdathor;


DM1.Tb_ProPDDESFIN.DisplayFormat   :=mcasas;
DM1.Tb_ProPDDESC1.DisplayFormat    :=mcasas;
DM1.Tb_ProPDDESCMAX.DisplayFormat    :=mcasas;
DM1.Tb_ProPDDESC1A.DisplayFormat   :=mcasas;
DM1.Tb_ProPDIPI.DisplayFormat      :=mcasas;
DM1.Tb_ProPDICMSCRED.DisplayFormat      :=mcasas;
DM1.Tb_ProPDICMSDEB.DisplayFormat      :=mcasas;
DM1.Tb_ProPDQTDGRML.DisplayFormat     :='#,##0.000';
DM1.Tb_ProPDQTDP.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDDESC2.DisplayFormat    :=mcasas;
DM1.Tb_ProPDDESC3.DisplayFormat    :=mcasas;
DM1.Tb_Proentpen.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDSALDO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDSALDO_DEP.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDSALDO_PRAT.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDBAIXO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDALTO.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_Proestoque.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
if log_filial_Qtd>1 then
   DM1.Tb_Prosaldo_filial.DisplayLabel:='Estoque '+log_filial_padrao_nome;

DM1.Tb_Proestoquer.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_Proestoquec.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_Proestoquet.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDVDAMAXM.DisplayFormat  :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDEMBMUL.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDESTMAX.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_ProPDESTMIN.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

DM1.Tb_LGCCLQTD.DisplayFormat      :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_LGCCLQTD_PRAT.DisplayFormat :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
DM1.Tb_LGCCLQTD_DEP.DisplayFormat  :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

DM1.Tb_ProPDCOMIS.DisplayFormat    :=mcasas;
DM1.Tb_ProPDCOMIS_extra.DisplayFormat :=mcasas;
DM1.Tb_Prodiferenca.DisplayFormat  :=mcasas;
DM1.Tb_ProPDPCOFAB.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Ped02P2PRECO.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Ped02SP2SPRECO.DisplayFormat:=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_PF2PF2PU.DisplayFormat      :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Ped02P2QTD.DisplayFormat    :=mcasqtd;
DM1.Tb_Ped02sP2SQTD.DisplayFormat  :=mcasqtd;
DM2.Qr_CorP2QTD.DisplayFormat      :=mcasqtd;
DM2.Qr_Cortotal.DisplayFormat      :=mcasas;
DM2.Qr_Cortotaldig.DisplayFormat      :=mcasas;
DM2.Qr_sertotal.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTALL.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTALB.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTDES.DisplayFormat      :=mcasas;
DM2.Qr_Sertotal.DisplayFormat      :=mcasas;
DM2.Qr_CorP2PRECO.DisplayFormat    :=mcasaspu;
DM2.Qr_CorP2PCODIG.DisplayFormat    :=mcasaspu;
DM2.Qr_AddExtP1AE_VALOR.DisplayFormat:=mcasaspu;

DM2.Qr_Propdpreco1.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdpreco2.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdpreco3.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdprecoa1.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdprecoa2.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdprecoa3.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdprecoc.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_Propdpcomc.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM2.Qr_ProPDPCOFAB.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);

DM1.Tb_MovCMDTABERTURA.EditMask     :=pEditMascData;
DM1.Tb_MovCMDTREABER.EditMask       :=pEditMascData;
DM1.Tb_MovCMDTENC.EditMask          :=pEditMascData;

DM1.Tb_MovCMDTABERTURA.DisplayFormat:=fdt2;
DM1.Tb_MovCMDTREABER.DisplayFormat  :=fdt2;
DM1.Tb_MovCMDTENC.DisplayFormat     :=fdt2;
DM1.Tb_MovCMSALDOANT.DisplayFormat  :=mcasas;
DM1.Tb_MovCMCREDITO.DisplayFormat   :=mcasas;
DM1.Tb_MovCMDEBITOS.DisplayFormat   :=mcasas;
DM1.Tb_MovCMSALDO.DisplayFormat     :=mcasas;


DM5.Tb_GNRE01GN1DATA.EditMask       :=pEditMascData;
DM5.Tb_GNRE01GN1DATVEN.EditMask     :=pEditMascData;
DM5.Tb_GNRE01GN1DATINC.EditMask     :=pEditMascData;
DM5.Tb_GNRE01GN1VALOR.DisplayFormat :=mcasas;

DM5.Tb_GNRE01GN1DATA.DisplayFormat  :=fdt2;
DM5.Tb_GNRE01GN1DATVEN.DisplayFormat:=fdt2;
DM5.Tb_GNRE01GN1DATINC.DisplayFormat:=fdt2;

DM5.Tb_GNRE02GN2DATDOC.DisplayFormat:=fdt2;
DM5.Tb_GNRE02GN2DATDOC.EditMask     :=pEditMascData;
DM5.Tb_GNRE02GN2VALDOC.DisplayFormat:=mcasas;
DM5.Tb_GNRE02GN2VALIMP.DisplayFormat:=mcasas;

DM1.Tb_MovCMDTREABER.EditMask       :=pEditMascData;
DM1.Tb_MovCMDTENC.EditMask          :=pEditMascData;

DM1.Tb_MovCMDTABERTURA.DisplayFormat:=fdt2;
DM1.Tb_MovCMDTREABER.DisplayFormat  :=fdt2;
DM1.Tb_MovCMDTENC.DisplayFormat     :=fdt2;
DM1.Tb_MovCMSALDOANT.DisplayFormat  :=mcasas;
DM1.Tb_MovCMCREDITO.DisplayFormat   :=mcasas;
DM1.Tb_MovCMDEBITOS.DisplayFormat   :=mcasas;
DM1.Tb_MovCMSALDO.DisplayFormat     :=mcasas;
DM1.Tb_LC2LC2_QTD.DisplayFormat     :=mcasqtd;
DM1.Tb_LC2LC2_PCOAV.DisplayFormat   :=mcasaspu;
DM1.Tb_LC2LC2_PCOPZ.DisplayFormat   :=mcasaspu;
DM1.Tb_LC2totav.DisplayFormat       :=mcasas;
DM1.Tb_LC2totpz.DisplayFormat       :=mcasas;
DM4.Tb_AcRe01AR1DATA.DisplayFormat  :=fdt2;
DM4.Tb_AcRe01AR1DATA.EditMask       :=pEditMascData;
DM4.Tb_AcRe01AR1QTDENV.DisplayFormat:=mcasqtd;
DM4.Tb_AcRe01AR1QTDDEV.DisplayFormat:=mcasqtd;
DM4.Tb_AcRe01AR1QTDFAT.DisplayFormat:=mcasqtd;
DM4.Tb_AcRe01AR1VLRENV.DisplayFormat:=mcasas;
DM4.Tb_AcRe01AR1VLRDEV.DisplayFormat:=mcasas;
DM4.Tb_AcRe01AR1VLRFAT.DisplayFormat:=mcasas;
DM4.Tb_AcRe02AR2DATA.DisplayFormat  :=fdt2;
DM4.Tb_AcRe02AR2DATA.EditMask       :=pEditMascData;
DM4.Tb_AcRe02AR2QTD.DisplayFormat   :=mcasqtd;
DM4.Tb_AcRe02AR2VLR.DisplayFormat   :=mcasas;
DM2.Tb_AssessorCACEP.EditMask       :=pEditMascCEP;
DM2.Tb_AssessorCADTCAD.EditMask     :=pEditMascData;
DM2.Tb_AssessorCADTCAD.DisplayFormat:=fdt2;
DM2.Tb_AssessorCACNPJ.EditMask      :=pEditMascCNPJ;
DM2.Tb_AssessorCACNPJ.DisplayFormat :=pDFCNPJ;
DM2.Tb_AssessorCACPF.EditMask       :=pEditMascCNPF;
DM2.Tb_AssessorCACPF.DisplayFormat  :=pDFCNPF;
DM1.Tb_CliCCOMIS.DisplayFormat      :=mcasas;
DM1.Tb_CliCCOMIS02.DisplayFormat    :=mcasas;
DM1.Tb_CliCCOMIS03.DisplayFormat    :=mcasas;
DM1.Tb_CliCCOMIS03.DisplayFormat    :=mcasas;
DM1.Tb_CliCLCRED.DisplayFormat      :=mcasas;
DM1.Tb_CliCTARBAN.DisplayFormat     :=mcasas;
DM1.Tb_CliCNIVEL.DisplayFormat      :=mcasas;
DM1.Tb_CliCVDAMEN.DisplayFormat     :=mcasas;
DM1.Tb_CliCCOTAMES.DisplayFormat    :=mcasas;

DM1.Tb_CliCALIQA.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQB.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQC.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQD.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQE.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQF.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQG.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQH.DisplayFormat      :=mcasas_pct;
DM1.Tb_CliCALIQI.DisplayFormat      :=mcasas_pct;

DM1.Tb_CliCIRRF_ALIQ.DisplayFormat :=mcasas_pct;
DM1.Tb_CliCIRRF_RED.DisplayFormat  :=mcasas_pct;
DM1.Tb_CliCINSS_ALIQ.DisplayFormat :=mcasas_pct;
DM1.Tb_CliCINSS_RED.DisplayFormat  :=mcasas_pct;
DM1.Tb_CliCISSQN_ALIQ.DisplayFormat:=mcasas_pct;


DM1.Tb_CliCALIQDEB.DisplayFormat    :=mcasas;
DM1.Tb_CliCFONE01.EditMask          :=pEditMascFone;
DM1.Tb_CliCFAX.EditMask             :=pEditMascFone;
DM1.Tb_CliCFONE02.EditMask          :=pEditMascFone;
DM1.Tb_CliCFONE03.EditMask          :=pEditMascFone;
DM4.Tb_Cli_ICIC_CONJUGE_CNPF.EditMask       :=pEditMascCNPF;
DM4.Tb_Cli_ICIC_CONJUGE_CNPF.DisplayFormat  :=pDFCNPF;



DM1.Tb_CliCDTVALV.DisplayFormat    := fdt2;
DM1.Tb_CliCDTANVISA.DisplayFormat  :=fdt2;
DM1.Tb_CliCDTALT.DisplayFormat     :=fdathor;
DM1.Tb_CliCDTUCPR.DisplayFormat    :=fdt2;
DM1.Tb_CliCDTPCPR.DisplayFormat    :=fdt2;
DM1.Tb_CliCDTUREN.DisplayFormat    :=fdt2;
DM1.Tb_CliCDTINC.DisplayFormat     :=fdathor;
DM1.Tb_CliCDTCCRED.DisplayFormat   :=fdt2;
DM1.Tb_CliCDTFUNDACAO.DisplayFormat:=fdt2;
DM1.Tb_CliC_DT_EXPRG.DisplayFormat :=fdt2;


DM1.Tb_CliCDTVALV.EditMask    := pEditMascData;
DM1.Tb_CliCDTANVISA.EditMask  :=pEditMascData;
DM1.Tb_CliCDTALT.EditMask     :=pEditMascData;
DM1.Tb_CliCDTUCPR.EditMask    :=pEditMascData;
DM1.Tb_CliCDTPCPR.EditMask    :=pEditMascData;
DM1.Tb_CliCDTUREN.EditMask    :=pEditMascData;
DM1.Tb_CliCDTINC.EditMask     :=pEditMascData;
DM1.Tb_CliCDTCCRED.EditMask   :=pEditMascData;
DM1.Tb_CliCDTFUNDACAO.EditMask:=pEditMascData;
DM1.Tb_CliC_DT_EXPRG.EditMask :=pEditMascData;


DM4.Tb_Cli_ICIC_CONJUGE_DT_EXP.DisplayFormat    :=fdt2;
DM4.Tb_Cli_ICIC_CONJUGE_DT_EXP.EditMask         :=pEditMascData;
DM4.Tb_Cli_ICIC_CONJUGE_DT_NAS.DisplayFormat    :=fdt2;
DM4.Tb_Cli_ICIC_CONJUGE_DT_NAS.EditMask         :=pEditMascData;

DM4.Tb_Cli_ICIC_FONETRAB.EditMask                :=pEditMascFone;
DM4.Tb_Cli_ICIC_CONJUGE_FONETRAB.EditMask        :=pEditMascFone;

DM4.Tb_Cli_ICIC_DTNAS.DisplayFormat    :=fdt2;
DM4.Tb_Cli_ICIC_DTNAS.EditMask         :=pEditMascData;

DM4.Tb_Cli_ICIC_SALARIO.DisplayFormat           :=mcasas;
DM4.Tb_Cli_ICIC_SAL_OUTROS.DisplayFormat        :=mcasas;
DM4.Tb_Cli_ICIC_VALOR_ALUG.DisplayFormat        :=mcasas;
DM4.Tb_Cli_ICIC_CONJUGE_SALARIO.DisplayFormat   :=mcasas;
DM4.Tb_Cli_ICIC_CONJUGE_SAL_OUTROS.DisplayFormat:=mcasas;

DM4.Tb_Cli_ICIC_OTREC_ESFOD.DisplayFormat:='###.##';
DM4.Tb_Cli_ICIC_OTREC_ESFOE.DisplayFormat:='###.##';
DM4.Tb_Cli_ICIC_OTREC_CILOD.DisplayFormat:='###.##';
DM4.Tb_Cli_ICIC_OTREC_CILOE.DisplayFormat:='###.##';

DM4.Tb_Cli_ICIC_OTREC_PRISMAOD.DisplayFormat:='###.##';
DM4.Tb_Cli_ICIC_OTREC_PRISMAOE.DisplayFormat:='###.##';
DM4.Tb_Cli_ICIC_OTREC_DTPCONS.DisplayFormat :=fdt2;


DM1.Tb_CliCDTCAD.DisplayFormat      :=fdt2;
DM1.Tb_CliCDTCAD.EditMask           :=pEditMascData;

DM1.Tb_DarCRVALOR.DisplayFormat     :=mcasas;
DM1.Tb_DarCRDTEMIS.DisplayFormat    :=fdt2;
DM1.Tb_DarCRDTEMIS.EditMask         :=pEditMascData;
DM1.Tb_DarCRDTVCTO.DisplayFormat    :=fdt2;
DM1.Tb_DarCRDTVCTO.EditMask         :=pEditMascData;
DM1.Tb_DarCRDTPAG.DisplayFormat     :=fdt2;
DM1.Tb_DarCRDTPAG.EditMask          :=pEditMascData;
DM1.Tb_DarCRDTBX.DisplayFormat      :=fdt2;
DM1.Tb_DarCRDTBX.EditMask           :=pEditMascData;
DM1.Tb_DarCRDTDESCF.DisplayFormat   :=fdt2;
DM1.Tb_DarCRDTDESCF.EditMask        :=pEditMascData;
DM1.Tb_DarCRDTALT.DisplayFormat     :=fdt2;
DM1.Tb_DarCRDTALT.EditMask          :=pEditMascData;
DM1.Tb_DarCRDTCAU.DisplayFormat     :=fdt2;
DM1.Tb_DarCRDTCAU.EditMask          :=pEditMascData;
DM1.Tb_DarCRSPC_DTPEN.DisplayFormat :=fdt2;
DM1.Tb_DarCRSPC_DTPEN.EditMask      :=pEditMascData;
DM1.Tb_DarCRSPC_DTNEG.DisplayFormat :=fdt2;
DM1.Tb_DarCRSPC_DTNEG.EditMask      :=pEditMascData;
DM1.Tb_Darcnpj.DisplayFormat        :=pDFCNPJ;

DM1.Tb_DarDTEMIS.DisplayFormat    :=fdt2;
DM1.Tb_DarDTVCTO.DisplayFormat    :=fdt2;
DM1.Tb_DarDTPAG.DisplayFormat     :=fdt2;
DM1.Tb_DarDTBX.DisplayFormat      :=fdt2;
DM1.Tb_DarDTDESCF.DisplayFormat   :=fdt2;
DM1.Tb_DarDTCAU.DisplayFormat     :=fdt2;
DM1.Tb_DarSPC_DTPEN.DisplayFormat :=fdt2;
DM1.Tb_DarSPC_DTNEG.DisplayFormat :=fdt2;
DM1.Tb_Dardtcau.DisplayFormat     :=fdt2;

DM1.Tb_DarCRDESC.DisplayFormat      :=mcasas;
DM1.Tb_DarCRDEVOL.DisplayFormat     :=mcasas;
DM1.Tb_DarCRJUROS.DisplayFormat     :=mcasas;
DM1.Tb_DarCRICMSR.DisplayFormat     :=mcasas;
DM1.Tb_DarCRDESCF.DisplayFormat     :=mcasas;
DM1.Tb_DarCRJURD.DisplayFormat      :=mcasas;
DM1.Tb_DarCRVALFRE.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCOMVEN.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCOMTEL.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCOMSUP.DisplayFormat    :=mcasas;
DM1.Tb_DarCRMULTA.DisplayFormat     :=mcasas;
DM1.Tb_DarCRDESCD.DisplayFormat     :=mcasas;
DM1.Tb_DarCRTOTNF.DisplayFormat     :=mcasas;
DM1.Tb_DarCRTOTDI01.DisplayFormat   :=mcasas;
DM1.Tb_DarCRTOTDI02.DisplayFormat   :=mcasas;
DM1.Tb_DarCRTOTDI03.DisplayFormat   :=mcasas;
DM1.Tb_DarCRCOMV02.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCOMV03.DisplayFormat    :=mcasas;
DM1.Tb_DarCRTOTDIVL.DisplayFormat   :=mcasas;
DM1.Tb_DarCRVALDES01.DisplayFormat  :=mcasas;
DM1.Tb_DarCRVALDES02.DisplayFormat  :=mcasas;
DM1.Tb_DarCRVLRDES.DisplayFormat    :=mcasas;
DM1.Tb_DarCRTARBAN.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCOMASSE.DisplayFormat   :=mcasas;
DM1.Tb_DarCRVALSEG.DisplayFormat    :=mcasas;
DM1.Tb_DarCRTOTCGRU.DisplayFormat   :=mcasas;
DM1.Tb_DarCRTOTSGRU.DisplayFormat   :=mcasas;
DM1.Tb_DarCRCOMV04.DisplayFormat    :=mcasas;
DM1.Tb_DarCRTOTIPI.DisplayFormat    :=mcasas;
DM1.Tb_DarCRCUSBCO.DisplayFormat    :=mcasas;

DM2.Tb_DarCRVALOR.DisplayFormat:=mcasas;
DM2.Tb_DarCRVALPAG.DisplayFormat:=mcasas;
DM2.Tb_DarCRVALFRE.DisplayFormat:=mcasas;
DM2.Tb_DarCRTOTNF.DisplayFormat:=mcasas;

DM2.Tb_PPRPPDATINI.DisplayFormat    :=fdt2;
DM2.Tb_PPRPPDATINI.EditMask         :=pEditMascData;
DM2.Tb_PPRPPDATFIN.DisplayFormat    :=fdt2;
DM2.Tb_PPRPPDATFIN.EditMask         :=pEditMascData;
DM2.Tb_PPRPPPCOVDA.DisplayFormat    :=mcasas;
DM2.Tb_PPRPPDESC_1.DisplayFormat    :=mcasas;
DM2.Tb_PPRPPDESC_2.DisplayFormat    :=mcasas;
DM2.Tb_PPRPPDESC_3.DisplayFormat    :=mcasas;
DM2.Tb_PPRPPCOMIS.DisplayFormat     :=mcasas;
DM2.Tb_PPRPPVALMIN.DisplayFormat    :=mcasas;
DM2.Tb_PPRPPQTDMIN.DisplayFormat    :=mcasqtd;
DM2.Tb_PPRPPDESC_F.DisplayFormat    :=mcasas;
DM1.Tb_GproGRPERCFRE.DisplayFormat  :=mcasas_pct;
DM1.Tb_GproGRPERCCOMIS.DisplayFormat:=mcasas_pct;
DM1.Tb_PVPVD2S0.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S1.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S4.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S5.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S6.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD2S7.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S0.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S1.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S4.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S5.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S6.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD1S7.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S0.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S1.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S4.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S5.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S6.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVD3S7.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS0.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS1.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS4.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS5.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS6.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDFS7.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS0.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS1.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS4.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS5.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS6.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVCMS7.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDF01A.DisplayFormat      :=mcasas_pct;

DM1.Tb_PVPVCMVD02S0.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S1.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S2.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S3.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S4.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S5.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S6.DisplayFormat   :=mcasas_pct;
DM1.Tb_PVPVCMVD02S7.DisplayFormat   :=mcasas_pct;

DM1.Tb_PVPVDF02A.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF03A.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF04A.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF01.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDF02.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDF03.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDF04.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDF01B.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF02B.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF03B.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDF04B.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVCOM.DisplayFormat        :=mcasas_pct;
DM1.Tb_PVPVCOM02.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVCOM03.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVDES.DisplayFormat        :=mcasas_pct;
DM1.Tb_PVPVDES1.DisplayFormat       :=mcasas_pct;
dm1.Tb_PVPVDES2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDES3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDESCF.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVVALORMIN.DisplayFormat   :=mcasas;
//DM1.Tb_ForFCGC.DisplayFormat        :=pDFCNPJ;
//DM1.Tb_ForFCGC.EditMask             :=pEditMascCNPJ;
DM1.Tb_ForFDTCAD.DisplayFormat      :=fdt2;
DM1.Tb_ForFDTCAD.EditMask           :=pEditMascData;
DM1.Tb_ForFFONEC01.EditMask         :=pEditMascFone;
DM1.Tb_ForFFONEC02.EditMask         :=pEditMascFone;
DM1.Tb_ForFFONEC03.EditMask         :=pEditMascFone;
DM1.Tb_ForFFONE.EditMask            :=pEditMascFone;
DM1.Tb_ForFFAX.EditMask             :=pEditMascFone;
DM1.Tb_ForFALIQ.DisplayFormat       :=mcasas_pct;
DM1.Tb_ForFIVAPOS.DisplayFormat     :=mcasas_pct;
DM1.Tb_ForFIVANEG.DisplayFormat     :=mcasas_pct;
DM1.Tb_ForFIVAINA.DisplayFormat     :=mcasas_pct;
DM1.Tb_ForFICMSC.DisplayFormat      :=mcasas_pct;
DM1.Tb_ForFICMSD.DisplayFormat      :=mcasas_pct;
DM1.Tb_ForFDESCFINV.DisplayFormat   :=mcasas_pct;
DM1.Tb_ForFRBICN.DisplayFormat      :=mcasas_pct;
DM1.Tb_ForFRBCIR.DisplayFormat      :=mcasas_pct;
DM1.Tb_ForFDESCMV.DisplayFormat   :=mcasas_pct;
DM1.Tb_ForFDESC01V.DisplayFormat  :=mcasas_pct;
DM1.Tb_ForFCOMIS.DisplayFormat    :=mcasas_pct;

DM1.Tb_NENEDTEMIS.EditMask          :=pEditMascData;
DM1.Tb_NENEDTEMIS.DisplayFormat     :=fdt2;
DM1.Tb_NENEDTENT.EditMask           :=pEditMascData;
DM1.Tb_NENEDTENT.DisplayFormat      :=fdt2;

DM1.Tb_NENEBASEN.DisplayFormat      :=mcasas;
DM1.Tb_NENEICMSN.DisplayFormat      :=mcasas;
DM1.Tb_NENEBASER.DisplayFormat      :=mcasas;
DM1.Tb_NENEICMSR.DisplayFormat      :=mcasas;
DM1.Tb_NENEFRETE.DisplayFormat      :=mcasas;
DM1.Tb_NENESEG.DisplayFormat        :=mcasas;
DM1.Tb_NENEOUTRAS.DisplayFormat     :=mcasas;
DM1.Tb_NENEOUTDESP.DisplayFormat    :=mcasas;
DM1.Tb_NENEIPI.DisplayFormat        :=mcasas;
DM1.Tb_NENETOTMER.DisplayFormat     :=mcasas;
DM1.Tb_NENETOTNOT.DisplayFormat     :=mcasas;
DM1.Tb_NENETOTDES.DisplayFormat     :=mcasas;
DM1.Tb_NENETOTPOS.DisplayFormat     :=mcasas;
DM1.Tb_NENETOTNEG.DisplayFormat     :=mcasas;
DM1.Tb_NENETOTINA.DisplayFormat     :=mcasas;
DM1.Tb_NENEALIQ.DisplayFormat       :=mcasas_pct;
DM1.Tb_NENEIPIFRETE.DisplayFormat   :=mcasas;
DM1.Tb_NENEISENTAS.DisplayFormat    :=mcasas;
DM1.Tb_NENEOUTNINC.DisplayFormat    :=mcasas;
DM1.Tb_chqCHFONE01.EditMask         :=pEditMascFone;
DM1.Tb_chqCHFONE02.EditMask         :=pEditMascFone;
DM1.Tb_chqCHVALOR.DisplayFormat     :=mCasas;
DM1.Tb_ChqCHDTDEP.EditMask          :=pEditMascData;
DM1.Tb_ChqCHDTDEP.DisplayFormat     :=fdt2;
DM1.Tb_ChqCHDTEMIS.EditMask         :=pEditMascData;
DM1.Tb_ChqCHDTEMIS.DisplayFormat      :=fdt2;
DM1.Tb_ChqCHDTBX.EditMask             :=pEditMascData;
DM1.Tb_ChqCHDTBX.DisplayFormat        :=fdt2;
DM1.Tb_ChqCHDTNAS.EditMask            :=pEditMascData;
DM1.Tb_ChqCHDTNAS.DisplayFormat       :=fdt2;

DM6.Tb_chqCPCHVALOR.DisplayFormat     :=mCasas;
DM6.Tb_ChqCPCHDTDEP.EditMask          :=pEditMascData;
DM6.Tb_ChqCPCHDTDEP.DisplayFormat     :=fdt2;
DM6.Tb_ChqCPCHDTEMIS.EditMask         :=pEditMascData;
DM6.Tb_ChqCPCHDTEMIS.DisplayFormat    :=fdt2;
DM6.Tb_ChqCPCHDTBX.EditMask           :=pEditMascData;
DM6.Tb_ChqCPCHDTBX.DisplayFormat      :=fdt2;
DM6.Tb_ChqCPCHDTNAS.EditMask          :=pEditMascData;
DM6.Tb_ChqCPCHDTNAS.DisplayFormat     :=fdt2;

DM1.Tb_LDRDATADP.DisplayFormat      :=fdt2;
DM1.Tb_LDRDATADP.EditMask           :=pEditMascData;
DM1.Tb_LDRDATAREAL.DisplayFormat    :=fdt2;
DM1.Tb_LDRDATAREAL.EditMask         :=pEditMascData;
DM1.Tb_LDRDATAREF.DisplayFormat     :=fdt2;
DM1.Tb_LDRDATAREF.EditMask          :=pEditMascData;
DM1.Tb_LDRVALORP.DisplayFormat      :=mCasas;
DM1.Tb_LDRVALORR.DisplayFormat      :=mCasas;
DM1.Tb_BcoBCFONE.EditMask       :=pEditMascFone;
DM1.Tb_BcoBCSALDO.DisplayFormat :=mcasas;
DM1.Tb_BcoBCSALDOI.DisplayFormat:=mcasas;
DM1.Tb_BcoBCTARIFA.DisplayFormat:=mcasas;
DM1.Tb_BcoBCLIMITE.DisplayFormat:=mcasas;

DM1.Tb_UFPICMSA.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSB.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNC.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSND.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNE.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNF.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNG.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNH.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPICMSNI.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRA.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRB.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRC.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRD.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRE.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRF.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRG.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRH.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRI.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNA.DisplayFormat      :=mcasas_pct;


DM1.Tb_UFPREDUTRA_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRB_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRC_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRD_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRE_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRF_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRG_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRH_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRI_SN.DisplayFormat      :=mcasas_pct;

DM1.Tb_UFPREDUTNB.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNC.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTND.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNE.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNF.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNG.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNH.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTNI.DisplayFormat      :=mcasas_pct;


DM6.Tb_Con01C01DATCON.DisplayFormat    :=fdt2;
DM6.Tb_Con01C01DATCON.EditMask         :=pEditMascData;
DM6.Tb_Con01C01DATFEC.DisplayFormat    :=fdt2;
DM6.Tb_Con01C01DATFEC.EditMask         :=pEditMascData;
DM6.Tb_Con01C01PESOB.DisplayFormat     :='#0.000';
DM6.Tb_Con01C01QTDM3.DisplayFormat     :='#0.000';
DM6.Tb_Con01C01VLRTOT.DisplayFormat    :=mcasas;
DM6.Tb_Con01C01VALFRE.DisplayFormat    :=mcasas;
DM6.Tb_Con01C01VALFRE_DIG.DisplayFormat:=mcasas;

DM6.Tb_Con02C02PESOB.DisplayFormat     :='#0.000';
DM6.Tb_Con02C02QTDM3.DisplayFormat     :='#0.000';
DM6.Tb_Con02C02VLRTOT.DisplayFormat    :=mcasas;
DM6.Tb_Con02C02VALFRE.DisplayFormat    :=mcasas;
DM6.Tb_Con02C02VALFRE_DIG.DisplayFormat:=mcasas;

DM6.Tb_Con03C03QTDVEND.DisplayFormat   :=mcasqtd;
DM6.Tb_Con03C03QTDENT.DisplayFormat    :=mcasqtd;
DM6.Tb_Con03C03QTDPEND.DisplayFormat   :=mcasqtd;
DM6.Tb_Con03C03QTDM3.DisplayFormat     :='#0.000';
DM6.Tb_Con03C03VLRTOT.DisplayFormat    :=mcasas;
DM6.Tb_Con03C03VALFRE.DisplayFormat    :=mcasas;
DM6.Tb_Con03C03VALFRE_DIG.DisplayFormat:=mcasas;
DM4.Tb_GForGFPERCFRE.displayFormat     :=mcasas_pct;
DM4.Tb_GForGFCOMIS.displayFormat       :=mcasas_pct;
DM4.Tb_GForGFPERCPRFAT.displayFormat   :=mcasas_pct;
DM6.Tb_Con01C01DATCON.EditMask         :=pEditMascData;

DM1.Tb_CPCAVALORNF.DisplayFormat   :=mcasas;
DM1.Tb_CPCAALIQ.DisplayFormat      :=mcasas;
DM1.Tb_CPCABASEN.DisplayFormat     :=mcasas;
DM1.Tb_CPCAICMSN.DisplayFormat     :=mcasas;
DM1.Tb_CPCADTENT.DisplayFormat     :=fdt2;

DM1.Tb_CPCAVALOR.DisplayFormat   :=mcasas;
DM1.Tb_CPCAVALDES.DisplayFormat  :=mcasas;
DM1.Tb_CPCADESC.DisplayFormat    :=mcasas;
DM1.Tb_CPCAJUROS.DisplayFormat   :=mcasas;
DM1.Tb_CPCAVALPAG.DisplayFormat  :=mcasas;
DM1.Tb_CPvaldev.DisplayFormat    :=mcasas;
DM1.Tb_CPcnpj.DisplayFormat        :=pDFCNPJ;

DM1.Tb_Darvaldev.DisplayFormat:=mcasas;
DM6.Tb_RegiaoCR_ACREREG.DisplayFormat:=mcasas_pct;
DM6.Tb_RegiaoCR_DESREG.DisplayFormat :=mcasas_pct;
DM6.Tb_RegiaoCR_DATINC.DisplayFormat :=fdathor;
DM6.Tb_RegiaoCR_DATALT.DisplayFormat :=fdathor;

DM6.Tb_AJCOMISAJC_FATOR_INI.DisplayFormat :=mcasas;
DM6.Tb_AJCOMISAJC_FATOR_TER.DisplayFormat :=mcasas;
DM6.Tb_AJCOMISAJC_COMIS.DisplayFormat     :=mcasas;
DM6.Tb_AJCOMISAJC_DATHOR_INC.DisplayFormat:=fdathor;
DM6.Tb_AJCOMISAJC_DATHOR_ALT.DisplayFormat:=fdathor;


result:=true;
end;
procedure TFrm_PPal.sis_0633Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedxdup'));
if (testeform=nil)  then
   Application.createform(TFrm_PedXDup,Frm_PedXDup);
if Frm_PedXDup.WindowState=WsMinimized then
   Frm_PedXDup.WindowState:=WsNormal
else
   frm_PedXDup.Show;
end;

procedure TFrm_PPal.sis_0636Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedcaxmer'));
if (testeform=nil)  then
   Application.createform(TFrm_PedCabXmer,Frm_PedCabXmer);
if Frm_PedCabXmer.WindowState=WsMinimized then
   Frm_PedCabXmer.WindowState:=WsNormal
else
   frm_PedCabXmer.Show;


end;

procedure TFrm_PPal.sis_0642Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_merdup'));
if (testeform=nil)  then
   Application.createform(TFrm_Merdup,Frm_Merdup);
Frm_Merdup.FormStyle:=fsstayontop;
if Frm_Merdup.WindowState=WsMinimized then
   Frm_Merdup.WindowState:=WsNormal
else
   frm_Merdup.Show;
end;

procedure TFrm_PPal.rven_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medven'));
if (testeform=nil)  then
   Application.createform(TFrm_MedVen,Frm_MedVEn);
if Frm_MedVen.WindowState=WsMinimized then
   Frm_MedVen.WindowState:=WsNormal
else
   frm_MEdVEn.Show;
end;

procedure TFrm_PPal.rfor_0106Click(Sender: TObject);
begin
fabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_fabc'));
if (testeform=nil)  then
   Application.createform(TFrm_FABC,Frm_FABC);
if Frm_FABC.WindowState=WsMinimized then
   Frm_FABC.WindowState:=WsNormal
else
   frm_FABC.Show;
end;

procedure TFrm_PPal.rfor_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medfor'));
if (testeform=nil)  then
   Application.createform(TFrm_MedFor,Frm_MedFOr);
fMedFor_Origem:=0;

if Frm_MedFor.WindowState=WsMinimized then
   Frm_MedFor.WindowState:=WsNormal
else
   frm_MedFor.Show;
end;

procedure TFrm_PPal.rfor_0115Click(Sender: TObject);
begin
fMedFor_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medfor'));
if (testeform=nil)  then
   Application.createform(TFrm_MedFor,Frm_MedFOr);
if Frm_MedFor.WindowState=WsMinimized then
   Frm_MedFor.WindowState:=WsNormal
else
   frm_MedFor.Show;
end;

procedure TFrm_PPal.rfor_0112Click(Sender: TObject);
begin
fabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_fabc'));
if (testeform=nil)  then
   Application.createform(TFrm_FABC,Frm_FABC);
if Frm_FABC.WindowState=WsMinimized then
   Frm_FABC.WindowState:=WsNormal
else
   frm_FABC.Show;
end;

procedure TFrm_PPal.rger_0230Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_rm'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RM,Frm_CX_RM);
if Frm_CX_RM.WindowState=WsMinimized then
   Frm_CX_RM.WindowState:=WsNormal
else
   frm_CX_RM.Show;
end;

procedure TFrm_PPal.rest_0106Click(Sender: TObject);
begin
fUFabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_ufabc'));
if (testeform=nil)  then
   Application.createform(TFrm_UFABC,Frm_UFABC);
if Frm_UFABC.WindowState=WsMinimized then
   Frm_UFABC.WindowState:=WsNormal
else
   frm_UFABC.Show;
end;

procedure TFrm_PPal.rest_0112Click(Sender: TObject);
begin
fUFabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_ufabc'));
if (testeform=nil)  then
   Application.createform(TFrm_UFABC,Frm_UFABC);
if Frm_UFABC.WindowState=WsMinimized then
   Frm_UFABC.WindowState:=WsNormal
else
   frm_UFABC.Show;

end;

procedure TFrm_PPal.rest_0109Click(Sender: TObject);
begin
FMedUF_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_meduf'));
if (testeform=nil)  then
   Application.createform(TFrm_MedUF,Frm_MedUF);
if Frm_MedUF.WindowState=WsMinimized then
   Frm_MedUF.WindowState:=WsNormal
else
   frm_MedUF.Show;

end;

procedure TFrm_PPal.rest_0115Click(Sender: TObject);
begin

FMedUF_Origem:=1;

testeform := TFrm_PPal(FindGlobalComponent('frm_meduf'));
if (testeform=nil)  then
   Application.createform(TFrm_MedUF,Frm_MedUF);
if Frm_MedUF.WindowState=WsMinimized then
   Frm_MedUF.WindowState:=WsNormal
else
   frm_MedUF.Show;

end;

procedure TFrm_PPal.rcli_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medcli'));
if (testeform=nil)  then
   Application.createform(TFrm_MedCli,Frm_MedCli);
if Frm_Medcli.WindowState=WsMinimized then
   Frm_Medcli.WindowState:=WsNormal
else
   frm_MedCli.Show;

end;

procedure TFrm_PPal.rtpro_0106Click(Sender: TObject);
begin
fTProabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_proabc'));
if (testeform=nil)  then
   Application.createform(TFrm_TproABC,Frm_TproABC);
if Frm_TproABC.WindowState=WsMinimized then
   Frm_TproABC.WindowState:=WsNormal
else
   frm_TproABC.Show;
end;

procedure TFrm_PPal.rtpro_0112Click(Sender: TObject);
begin
fTProabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_tproabc'));
if (testeform=nil)  then
   Application.createform(TFrm_TproABC,Frm_TproABC);
if Frm_TproABC.WindowState=WsMinimized then
   Frm_TproABC.WindowState:=WsNormal
else
   frm_TproABC.Show;

end;

procedure TFrm_PPal.rtpro_0109Click(Sender: TObject);
begin
FMedTPro_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_medtpro'));
if (testeform=nil)  then
   Application.createform(TFrm_MedtPRo,Frm_MedtPro);
if Frm_MedTPro.WindowState=WsMinimized then
   Frm_MedTPRo.WindowState:=WsNormal
else
   frm_MedTPro.Show;
end;

procedure TFrm_PPal.rtpro_0115Click(Sender: TObject);
begin
FMedTPro_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medtpro'));
if (testeform=nil)  then
   Application.createform(TFrm_MedtPRo,Frm_MedtPro);
if Frm_MedTPro.WindowState=WsMinimized then
   Frm_MedTPRo.WindowState:=WsNormal
else
   frm_MedTPro.Show;

end;

procedure TFrm_PPal.rgpro_0106Click(Sender: TObject);
begin
fGruabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_gruabc'));
if (testeform=nil)  then
   Application.createform(TFrm_GruABC,Frm_GruABC);
if Frm_GruABC.WindowState=WsMinimized then
   Frm_GruABC.WindowState:=WsNormal
else
   frm_GruABC.Show;

end;

procedure TFrm_PPal.rgpro_0112Click(Sender: TObject);
begin
fGruabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_gruabc'));
if (testeform=nil)  then
   Application.createform(TFrm_GruABC,Frm_GruABC);
if Frm_GruABC.WindowState=WsMinimized then
   Frm_GruABC.WindowState:=WsNormal
else
   frm_GruABC.Show;

end;
procedure TFrm_PPal.rgpro_0109Click(Sender: TObject);
begin
FMedGru_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_medgru'));
if (testeform=nil)  then
   Application.createform(TFrm_MedGRU,Frm_MedGRU);
if Frm_MedGRU.WindowState=WsMinimized then
   Frm_MedGRU.WindowState:=WsNormal
else
   frm_MEDGRU.Show;
end;
procedure TFrm_PPal.rgpro_0115Click(Sender: TObject);
begin
FMedGru_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medgru'));
if (testeform=nil)  then
   Application.createform(TFrm_MedGRU,Frm_MedGRU);
if Frm_MedGRU.WindowState=WsMinimized then
   Frm_MedGRU.WindowState:=WsNormal
else
   frm_MEDGRU.Show;

end;
procedure TFrm_PPal.rcpro_0106Click(Sender: TObject);
begin
fTConabc_Origem:=0;

testeform := TFrm_PPal(FindGlobalComponent('frm_tconabc'));
if (testeform=nil)  then
   Application.createform(TFrm_TconABC,Frm_TconABC);
if Frm_TconABC.WindowState=WsMinimized then
   Frm_TconABC.WindowState:=WsNormal
else
   frm_TconABC.Show;
end;
procedure TFrm_PPal.rcpro_0112Click(Sender: TObject);
begin
fTConabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_tconabc'));
if (testeform=nil)  then
   Application.createform(TFrm_TconABC,Frm_TconABC);
if Frm_TconABC.WindowState=WsMinimized then
   Frm_TconABC.WindowState:=WsNormal
else
   frm_TconABC.Show;
end;
procedure TFrm_PPal.rcpro_0109Click(Sender: TObject);
begin
FMedTCon_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_medtcon'));
if (testeform=nil)  then
   Application.createform(TFrm_MedTcon,Frm_MedTcon);
if Frm_MedTcon.WindowState=WsMinimized then
   Frm_MedTcon.WindowState:=WsNormal
else
   frm_MedTcon.Show;
end;
procedure TFrm_PPal.rcpro_0115Click(Sender: TObject);
begin
FMedTCon_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medtcon'));
if (testeform=nil)  then
   Application.createform(TFrm_MedTcon,Frm_MedTcon);
if Frm_MedTcon.WindowState=WsMinimized then
   Frm_MedTcon.WindowState:=WsNormal
else
   frm_MedTcon.Show;
end;
procedure TFrm_PPal.rrpro_0106Click(Sender: TObject);
begin
fRProabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_rproabc'));
if (testeform=nil)  then
   Application.createform(TFrm_RProABC,Frm_RproABC);
if Frm_RproABC.WindowState=WsMinimized then
   Frm_RproABC.WindowState:=WsNormal
else
   frm_RproABC.Show;
end;
procedure TFrm_PPal.rrpro_0112Click(Sender: TObject);
begin
fRProabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_rproabc'));
if (testeform=nil)  then
   Application.createform(TFrm_RProABC,Frm_RproABC);
if Frm_RproABC.WindowState=WsMinimized then
   Frm_RproABC.WindowState:=WsNormal
else
   frm_RproABC.Show;
end;
procedure TFrm_PPal.rrpro_0109Click(Sender: TObject);
begin
FMedRPro_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_medrpro'));
if (testeform=nil)  then
   Application.createform(TFrm_MedRpro,Frm_MedRPro);
if Frm_MedRPro.WindowState=WsMinimized then
   Frm_MedRpro.WindowState:=WsNormal
else
   frm_medRpro.Show;
end;
procedure TFrm_PPal.rrpro_0115Click(Sender: TObject);
begin
FMedRPro_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medrpro'));
if (testeform=nil)  then
   Application.createform(TFrm_MedRpro,Frm_MedRPro);
if Frm_MedRPro.WindowState=WsMinimized then
   Frm_MedRpro.WindowState:=WsNormal
else
   frm_medRpro.Show;
end;
procedure TFrm_PPal.est_0103Click(Sender: TObject);
begin
mSelGra_Origem:=1; // produtos Entradas
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;
procedure TFrm_PPal.est_0106Click(Sender: TObject);
begin
mSelGra_Origem:=0; // produtos Saidas
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0109Click(Sender: TObject);
begin
mSelGra_Origem:=3; // Compras por Fornecedores
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0124Click(Sender: TObject);
begin
mSelGra_Origem:=2; // Vendas por Fornecedores
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0112Click(Sender: TObject);
begin
mSelGra_Origem:=4; // Vendas Por Cliente
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;

procedure TFrm_PPal.est_0118Click(Sender: TObject);
begin
mSelGra_Origem:=5; // Vendas Por Rede de Cliente
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;

procedure TFrm_PPal.est_0121Click(Sender: TObject);
begin
mSelGra_Origem:=6; // Vendas Por Convenios
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0127Click(Sender: TObject);
begin
mSelGra_Origem:=17; //estado
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0130Click(Sender: TObject);
begin
mSelGra_Origem:=18; // Vendas Por Estado
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;

procedure TFrm_PPal.est_0136Click(Sender: TObject);
begin
mSelGra_Origem:=7; // Vendas Por Tipo de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
Frm_Selgra.FormStyle:=fsstayontop;
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;

procedure TFrm_PPal.est_0133Click(Sender: TObject);
begin
mSelGra_Origem:=8; // Entradas por Tipo de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0139Click(Sender: TObject);
begin
mSelGra_Origem:=10; // Entradas por Grupo de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0142Click(Sender: TObject);
begin
mSelGra_Origem:=9; // Saidas por Grupo de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0157Click(Sender: TObject);
begin
mSelGra_Origem:=12; // Entradas por Ramo de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;


end;

procedure TFrm_PPal.est_0160Click(Sender: TObject);
begin
mSelGra_Origem:=11; // Saidas por Ramo Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;


end;

procedure TFrm_PPal.est_0163Click(Sender: TObject);
begin
mSelGra_Origem:=14; // Entradas por Controle de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0166Click(Sender: TObject);
begin
mSelGra_Origem:=13; // Saidas por Controle de Produtos
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
Frm_Selgra.FormStyle:=fsstayontop;
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0151Click(Sender: TObject);
begin
mSelGra_Origem:=19; // Entradas por Empresa
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
Frm_Selgra.FormStyle:=fsstayontop;
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0154Click(Sender: TObject);
begin
mSelGra_Origem:=20; // Saidas por Empresa
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;
end;

procedure TFrm_PPal.est_0145Click(Sender: TObject);
begin
mSelGra_Origem:=15; // Saidas Por Vendedor
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.est_0148Click(Sender: TObject);
begin
mSelGra_Origem:=16; // Saidas Por Supervisor
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_Selgra,Frm_Selgra);
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_PPal.rcli_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rotcli'));
if (testeform=nil)  then
   Application.createform(TFrm_RotCli,Frm_Rotcli);
if Frm_Rotcli.WindowState=WsMinimized then
   Frm_Rotcli.WindowState:=WsNormal
else
   frm_RotCli.Show;

end;

procedure TFrm_PPal.rger_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rmem'));
if (testeform=nil)  then
   Application.createform(TFrm_RMen,Frm_RMen);
if Frm_RMen.WindowState=WsMinimized then
   Frm_RMen.WindowState:=WsNormal
else
   Frm_RMen.Show;

end;

procedure TFrm_PPal.rpro_0136Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sugcpr01'));
if (testeform=nil)  then
   Application.createform(TFrm_SugCpr01,Frm_SugCpr01);
if Frm_SugCpr01.WindowState=WsMinimized then
   Frm_SugCpr01.WindowState:=WsNormal
else
   frm_SugCpr01.Show;

end;

procedure TFrm_PPal.rger_0233Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_comxvda'));
if (testeform=nil)  then
   Application.createform(TFrm_ComXVda,Frm_ComXVda);
if Frm_ComXVda.WindowState=WsMinimized then
   Frm_ComXVda.WindowState:=WsNormal
else
   frm_ComXVda.Show;

end;

procedure TFrm_PPal.mcai_0118Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,25,0,0,0,0,0, 'Senha Para Realizar Contas por Seleção','')<>0 then
   exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_cx_resel'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_CX_ReSel, Frm_CX_ReSel);
if Frm_CX_resel.WindowState=WsMinimized then
   Frm_CX_Resel.WindowState:=WsNormal
else
   frm_CX_REsel.Show;

end;

procedure TFrm_PPal.lf_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_carcor'));
if (testeform=nil)  then
   Application.createform(TFrm_CarCor,Frm_CarCor);
if Frm_CarCor.WindowState=WsMinimized then
   Frm_CarCor.WindowState:=WsNormal
else
   frm_CarCor.Show;
end;

procedure TFrm_PPal.mpro_0151Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajdescpro'));
if (testeform=nil)  then
   Application.createform(TFrm_AjDescPro,Frm_AjDescPro);
if Frm_AjDescPro.WindowState=WsMinimized then
   Frm_AjdEscPro.WindowState:=WsNormal
else
   frm_AjDescPro.Show;

end;

procedure TFrm_PPal.mcai_0121Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,26,0,0,0,0,0, 'Senha para Transferir lançamentos entre Contas','')<>0 then
   exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_ldr'));
if (testeform=nil)  then
   Application.createform(TFrm_TLDR,Frm_TLDR);
if Frm_TLDR.WindowState=WsMinimized then
   Frm_TLDR.WindowState:=WsNormal
else
   frm_TLDR.Show;
end;

procedure TFrm_PPal.rger_0236Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vdaxcomp'));
if (testeform=nil)  then
   Application.createform(TFrm_VdaxComp,Frm_VdaXComp);
if Frm_VdaxComp.WindowState=WsMinimized then
   Frm_VdaXComp.WindowState:=WsNormal
else
   frm_VdaXComp.Show;
end;

procedure TFrm_PPal.sis_0645Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cicmsr'));
if (testeform=nil)  then
   Application.createform(TFrm_CICMSR,Frm_CICMSR);
if Frm_CICMSR.WindowState=WsMinimized then
   Frm_CICMSR.WindowState:=WsNormal
else
   frm_CICMSR.Show;
end;

procedure TFrm_PPal.sis_0648Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cped2'));
if (testeform=nil)  then
   Application.createform(TFrm_CPed2,Frm_Cped2);
if Frm_CPed2.WindowState=WsMinimized then
   Frm_CPed2.WindowState:=WsNormal
else
   frm_CPed2.Show;
end;

procedure TFrm_PPal.rger_0242Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lucsai'));
if (testeform=nil)  then
   Application.createform(TFrm_LUCSAI,Frm_LUCSAI);
if Frm_LUCSAI.WindowState=WsMinimized then
   Frm_LUCSAI.WindowState:=WsNormal
else
   frm_LUCSAI.Show;
end;

procedure TFrm_PPal.rger_0239Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lucent'));
if (testeform=nil)  then
   Application.createform(TFrm_LucEnt,Frm_LucEnt);
if Frm_LucEnt.WindowState=WsMinimized then
   Frm_LucEnt.WindowState:=WsNormal
else
   frm_LucEnt.Show;
end;

procedure TFrm_PPal.cr_0918Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_diasmeses'));
if (testeform=nil)  then
   Application.createform(TFrm_DiasMEses,Frm_DiasMeses);
if Frm_DiasMEses.WindowState=WsMinimized then
   Frm_DiasMeses.WindowState:=WsNormal
else
   frm_DiasMeses.Show;
end;

procedure TFrm_PPal.rger_0245Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_extbco'));
if (testeform=nil)  then
   Application.createform(TFrm_ExtBco,Frm_ExtBco);
if Frm_ExtBco.WindowState=WsMinimized then
   Frm_ExtBco.WindowState:=WsNormal
else
   frm_ExtBco.Show;
end;

procedure TFrm_PPal.mcai_0124Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,27,0,0,0,0,0, 'Senha para Acessar o Programa de Compensações direto:','')<>0 then
   exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_cx_compens'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_Compens,Frm_CX_Compens);
if Frm_CX_Compens.WindowState=WsMinimized then
   Frm_CX_Compens.WindowState:=WsNormal
else
   frm_CX_Compens.Show;
end;

procedure TFrm_PPal.sis_0615Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_impdm'));
if (testeform=nil)  then
   Application.createform(TFrm_ImpDM,Frm_ImpDM);
if Frm_ImpDM.WindowState=WsMinimized then
   Frm_ImpDM.WindowState:=WsNormal
else
   frm_ImpDM.Show;
end;

procedure TFrm_PPal.sis_0651Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_calcicms'));
if (testeform=nil)  then
   Application.createform(TFrm_CalcICMS,Frm_CalcICMS);
Frm_CalcICMS.FormStyle:=fsstayontop;
if Frm_CalcICMS.WindowState=WsMinimized then
   Frm_CalcICMS.WindowState:=WsNormal
else
   frm_CalcICMS.Show;
end;

procedure TFrm_PPal.rsai_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_nf_compimp'));
if (testeform=nil)  then
   Application.createform(TFrm_NF_CompImp,Frm_NF_CompImp);
if Frm_NF_CompImp.WindowState=WsMinimized then
   Frm_NF_CompImp.WindowState:=WsNormal
else
   frm_NF_CompImp.Show;
end;

procedure TFrm_PPal.rpro_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medpro02'));
if (testeform=nil)  then
   Application.createform(TFrm_medPro02,Frm_MedPRo02);
fpromed_origem:=0;
if Frm_MedPro02.WindowState=WsMinimized then
   Frm_Medpro02.WindowState:=WsNormal
else
   frm_MedPro02.Show;
end;

procedure TFrm_PPal.rpro_0145Click(Sender: TObject);
begin
FProMed_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_medpro02'));
if (testeform=nil)  then
   Application.createform(TFrm_MedPro02,Frm_MedPro02);
if Frm_MedPro02.WindowState=WsMinimized then
   Frm_MedPro02.WindowState:=WsNormal
else
   frm_MedPro02.Show;
end;

procedure TFrm_PPal.rpro_0142Click(Sender: TObject);
begin
fProabc_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_proabc'));
if (testeform=nil)  then
   Application.createform(TFrm_ProABC,Frm_ProABC);
if Frm_ProABC.WindowState=WsMinimized then
   Frm_ProABC.WindowState:=WsNormal
else
   frm_ProABC.Show;

end;

procedure TFrm_PPal.rpro_0148Click(Sender: TObject);
begin
fProabc_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_proabc'));
if (testeform=nil)  then
   Application.createform(TFrm_ProABC,Frm_ProABC);
if Frm_ProABC.WindowState=WsMinimized then
   Frm_ProABC.WindowState:=WsNormal
else
   frm_ProABC.Show;
end;

procedure TFrm_PPal.mcli_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedcli'));
if (testeform=nil)  then
   Application.createform(TFrm_PedCli,Frm_PedCli);
Frm_PedCli.FormStyle:=fsstayontop;
if Frm_PedCLi.WindowState=WsMinimized then
   Frm_PedCli.WindowState:=WsNormal
else
   frm_PedCli.Show;
end;

procedure TFrm_PPal.rpro_0151Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vpro'));
if (testeform=nil)  then
   Application.createform(TFrm_Vpro,Frm_Vpro);
if Frm_Vpro.WindowState=WsMinimized then
   Frm_Vpro.WindowState:=WsNormal
else
   frm_Vpro.Show;
end;

procedure TFrm_PPal.sai_0133Click(Sender: TObject);
var
form_pedcli_ppal: tForm;
begin
testeform := TFrm_PPal(FindGlobalComponent('form_pedcli_ppal'));
if (testeform=nil)  then
   Application.createform(TFrm_PedCli,form_pedcli_ppal);
if form_pedcli_ppal.WindowState=WsMinimized then
   Form_pedcli_ppal.WindowState:=WsNormal
else
   Form_pedcli_ppal.Show;
end;

procedure TFrm_PPal.rpro_0154Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_musar'));
if (testeform=nil)  then
   Application.createform(TFrm_Musar,Frm_Musar);
if Frm_Musar.WindowState=WsMinimized then
   Frm_Musar.WindowState:=WsNormal
else
   frm_musar.Show;
end;

procedure TFrm_PPal.mpro_0206Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cec'));
if (testeform=nil)  then
   Application.createform(TFrm_CEC,Frm_CEC);
if Frm_CEC.WindowState=WsMinimized then
   Frm_CEC.WindowState:=WsNormal
else
   frm_CEC.Show;
end;

procedure TFrm_PPal.sis_0112Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,5,0,0,0,0,0, 'Senha para alterar Parametros','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_par'));
if (testeform=nil)  then
   Application.createform(TFrm_Par,Frm_Par);
if Frm_Par.WindowState=WsMinimized then
   Frm_Par.WindowState:=WsNormal
else
   frm_PAr.Show;
end;

procedure TFrm_PPal.sis_0114Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,5,0,0,0,0,0, 'Senha para alterar Parametros','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_parpreco'));
if (testeform=nil)  then
   Application.createform(TFrm_Parpreco,Frm_ParPreco);
if Frm_ParPreco.WindowState=WsMinimized then
   Frm_ParPreco.WindowState:=WsNormal
else
   frm_ParPreco.Show;
end;

procedure TFrm_PPal.sis_0654Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajuest_ext'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuEst_Ext,Frm_AjUest_Ext);
if Frm_AjuEst_Ext.WindowState=WsMinimized then
   Frm_AjuEst_Ext.WindowState:=WsNormal
else
   frm_AjuEst_Ext.Show;

end;

procedure TFrm_PPal.rcli_0306Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rped2'));
if (testeform=nil)  then
   Application.createform(TFrm_Rped,Frm_Rped);
if Frm_Rped.WindowState=WsMinimized then
   Frm_Rped.WindowState:=WsNormal
else
   frm_Rped.Show;
end;


procedure TFrm_PPal.sai_0136Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manped'));
if (testeform=nil)  then
   Application.createform(TFrm_ManPEd,Frm_ManPEd);
if Frm_ManPEd.WindowState=WsMinimized then
   Frm_ManPEd.WindowState:=WsNormal
else
   frm_ManPEd.Show;
end;

procedure TFrm_PPal.sai_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_etivol'));
if (testeform=nil)  then
   Application.createform(TFrm_EtiVol,Frm_EtiVol);
if Frm_EtiVol.WindowState=WsMinimized then
   Frm_EtiVol.WindowState:=WsNormal
else
   frm_EtiVol.Show;
end;

procedure TFrm_PPal.sis_0657Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resped'));
if (testeform=nil)  then
   Application.createform(TFrm_ResPed,Frm_ResPed);
if Frm_ResPed.WindowState=WsMinimized then
   Frm_ResPed.WindowState:=WsNormal
else
   frm_ResPed.Show;
end;

procedure TFrm_PPal.rcli_0303Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rped2'));
if (testeform=nil)  then
   Application.createform(TFrm_RPed2,Frm_RPed2);
if Frm_RPed2.WindowState=WsMinimized then
   Frm_RPed2.WindowState:=WsNormal
else
   frm_Rped2.Show;
end;

procedure TFrm_PPal.cr_0315Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin

   fmensagem('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_bdev'));
if (testeform=nil)  then
   Application.createform(TFrm_BDEV,Frm_BDEV);
if Frm_BDEV.WindowState=WsMinimized then
   Frm_BDEV.WindowState:=WsNormal
else
   frm_BDEV.Show;
end;

procedure TFrm_PPal.sis_0117Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_config_leitor'));
if (testeform=nil)  then
   Application.createform(TFrm_Config_leitor,Frm_Config_Leitor);
if Frm_Config_Leitor.WindowState=WsMinimized then
   Frm_Config_Leitor.WindowState:=WsNormal
else
   frm_Config_Leitor.Show;
end;

function fppalFecharMov(ptipo: Integer): Boolean;
var
sano, smes, sdia: Word;
sano2,smes2,sdia2: Word;
mdataf: tdatetime;
begin

DM2.Tb_FDia.Close;
DM2.Tb_FDia.ParamByName('DATA').AsString:='%';
DM2.Tb_FDia.Open;
if DM2.Tb_FDia.Eof then
   begin
   DM2.Tb_FDia.Append;
   DM2.Tb_FDiaFD_DATA.Value:=Date-32;
   DM2.Tb_FDia.Post;
   end
else
   DM2.Tb_FDia.Last;
mdataf:=DM2.Tb_FDiaFD_DATA.Value;


DecodeDate(mdataf,sano,smes,sdia);
DecodeDate(Date,sano2,smes2,sdia2);
result:=true;
If mdataf>Date then
   begin
   fmensagem('A data do sistema está incorreta!'+#13
            +'Corrija a data e tente novamente.',0,['0'],0);

   result:=false;
   exit;
   end
else If mdataf<>Date then
   begin
   If ((smes2>smes) or (sano2>sano)) then
      begin
      flcadpar02(0,0,codusr,'20');
      if DM4.Tb_Par02PA2PDSN.Value<>'S' then
         begin
         if fValidaSenha(0,codusr,20,0,0,0,0,0, 'Senha Para autorizar o Fechamento do mês','')<>0 then
            begin
            result:=False;
            exit;
            end
         end
      else
         begin
         If (MessageDlg('Deseja Realizar o Fechamento do Mês?',mtConfirmation,[mbYes,mbNo],0)<>mrYes) then
            begin
               fmensagem('Para trabalhar no sistema e necessário ,'+#13
                      +'realizar o fechamento do mês!',0,['0'],0);

            result:=False;
            exit;
            end;
         end;
      DM2.Tb_FDia.Close;
      DM2.Tb_FDia.ParamByName('DATA').AsString:=FormatDateTime(fdt,Date);
      DM2.Tb_FDia.Open;
      if not DM2.Tb_FDia.Eof then
         begin

         fmensagem('Este Processo Ja foi executado em outro computador!',0,['0'],0);
         result:=True;
         exit;
         end;
      DM2.Tb_FDia.Append;
      DM2.Tb_FDiaFD_DATA.Value    :=date;
      DM2.Tb_FDiaFD_ENCMES.Value  :=2;
      DM2.Tb_FDiaFD_CODUSR.Value  :=codusr;
      DM2.Tb_FDiaFD_DATAFEC.Value :=Date;
      DM2.Tb_FDiaFD_HORASFEC.Value:=FormatDatetime(fhr, time);
      DM2.Tb_FDia.Post;
      fmensagem('Para que esta operação seja bem sucedida'+#13
                +'todos os usuários devem estar fora do sistema!',0,['0'],0);

      ffechardia(1,mdataf);
      ffecharmes(mdataf);
      DM2.Tb_FDia.Close;
      DM2.Tb_FDia.ParamByName('DATA').AsString:=FormatDateTime(fdt, Date);
      DM2.Tb_FDia.Open;
      if not DM2.Tb_FDia.Eof then
         begin
         DM2.Tb_Fdia.Edit;
         DM2.Tb_FDiaFD_ENCMES.Value:=0;
         DM2.Tb_FDia.Post;
         end;
      DM2.Tb_FDia.Close;
      DM2.Tb_FDia.ParamByName('DATA').AsString:=FormatDateTime(fdt, mdataf);
      DM2.Tb_FDia.Open;
      if not DM2.Tb_FDia.Eof then
         begin
         DM2.Tb_Fdia.Edit;
         DM2.Tb_FDiaFD_ENCMES.Value  :=1;
         DM2.Tb_FDiaFD_CODUSR.Value  :=codusr;
         DM2.Tb_FDiaFD_HORASFEC.Value:=FormatDateTime(fhr, time);
         DM2.Tb_FDia.Post;
         end;
      result:=true;
      end
   else
      begin
      flcadpar02(0,0,codusr,'29');
      if DM4.Tb_Par02PA2PDSN.Value='S' then
         begin
         if fValidaSenha(0,codusr,29,0,0,0,0,0, 'Senha Para autorizar o Fechamento do dia','')<>0 then
            begin
            result:=false;
            exit;
            end;
         end
      else
         begin
         if fmensagem('Deseja Realizar o Fechamento do dia?',0,['1','2'],2)<>mrYes then
         //If (MessageDlg('Deseja Realizar o Fechamento do dia?',mtConfirmation,[mbYes,mbNo],0)<>mrYes) then
            begin
            fmensagem('Para trabalhar no sistema e necessário ,'+#13
                      +'realizar o fechamento do dia!',0,['0'],0);

            result:=False;
            exit;
            end;
         end;
      DM2.Tb_FDia.Close;
      DM2.Tb_FDia.ParamByName('DATA').AsString:=FormatDateTime(fdt, Date);
      DM2.Tb_FDia.Open;
      if not DM2.Tb_FDia.Eof then
         begin

         fmensagem('Este Processo Ja foi executado em outro computador!',0,['0'],0);

         result:=True;
         exit;
         end;
      DM2.Tb_FDia.Append;
      DM2.Tb_FDiaFD_DATA.Value    :=date;
      DM2.Tb_FDiaFD_ENCMES.Value  :=0;
      DM2.Tb_FDiaFD_CODUSR.Value  :=codusr;
      DM2.Tb_FDiaFD_DATAFEC.Value :=Date;
      DM2.Tb_FDiaFD_HORASFEC.Value:=FormatDatetime(fhr, time);
      DM2.Tb_FDia.Post;

//      fmensagem('Para que esta operação seja bem sucedida'+#13
//                +'todos os usuários devem estar fora do sistema!',0,['0'],0);

      DM2.Tb_FDia.Close;
      DM2.Tb_FDia.ParamByName('DATA').AsString:=FormatDatetime(fdt, mdataf);
      DM2.Tb_FDia.Open;
      if not DM2.Tb_FDia.Eof then
         begin
         DM2.Tb_Fdia.Edit;
         DM2.Tb_FDiaFD_ENCMES.Value  :=1;
         DM2.Tb_FDiaFD_CODUSR.Value  :=codusr;
         DM2.Tb_FDiaFD_HORASFEC.Value:=FormatDateTime(fhr, time);
         DM2.Tb_FDia.Post;
         end;
      ffechardia(0,mdataf);
      result:=true;
      end;
   end;

end;

procedure TFrm_PPal.lf_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relnfs'));
if (testeform=nil)  then
   Application.createform(TFrm_RelNFS,Frm_RelNfS);
if Frm_RelNfS.WindowState=WsMinimized then
   Frm_RelNfS.WindowState:=WsNormal
else
   frm_RelNFS.Show;
end;

procedure TFrm_PPal.sis_0660Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lotseq'));
if (testeform=nil)  then
   Application.createform(TFrm_LotSeq,Frm_LotSeq);
if Frm_LotSeq.WindowState=WsMinimized then
   Frm_LotSeq.WindowState:=WsNormal
else
   frm_LotSEq.Show;
end;

procedure TFrm_PPal.sai_0142Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_emitirnf'));
if (testeform=nil)  then
   Application.createform(TFrm_EmitirNF,Frm_EmitirNF);
if Frm_EmitirNF.WindowState=WsMinimized then
   Frm_EmitirNF.WindowState:=WsNormal
else
   frm_EmitirNF.Show;
end;

procedure TFrm_PPal.lf_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relnfe'));
if (testeform=nil)  then
   Application.createform(TFrm_RelNFE,Frm_RelNFE);
if Frm_RelNFE.WindowState=WsMinimized then
   Frm_RelNFE.WindowState:=WsNormal
else
   frm_RelNFE.Show;
end;

procedure TFrm_PPal.rpro_0157Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_contagem'));
if (testeform=nil)  then
   Application.createform(TFrm_Contagem,Frm_Contagem);
if Frm_Contagem.WindowState=WsMinimized then
   Frm_Contagem.WindowState:=WsNormal
else
   frm_Contagem.Show;
end;

procedure TFrm_PPal.sis_0666Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cus'));
if (testeform=nil)  then
   Application.createform(TFrm_Cus,Frm_Cus);
if Frm_Cus.WindowState=WsMinimized then
   Frm_Cus.WindowState:=WsNormal
else
   frm_Cus.Show;


end;

procedure TFrm_PPal.sis_0663Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fpag'));
if (testeform=nil)  then
   Application.createform(TFrm_Fpag,Frm_FPag);
if Frm_FPag.WindowState=WsMinimized then
   Frm_FPag.WindowState:=WsNormal
else
   frm_FPag.Show;
end;

procedure TFrm_PPal.sis_0669Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
if not DM1.Qr_FP.Locate('FPCODIGO',0,[]) then
   DM1.Qr_FP.First;
if DM1.Qr_FPFPTIPO.Value=1 then
   DM1.Qr_FP.Locate('FPTIPO',0,[]);


testeform := TFrm_PPal(FindGlobalComponent('frm_restldr'));
if (testeform=nil)  then
   Application.createform(TFrm_RestLDR,Frm_RestLDR);
if Frm_RestLDR.WindowState=WsMinimized then
   Frm_RestLDR.WindowState:=WsNormal
else
   frm_RestLDR.Show;
end;

procedure TFrm_PPal.sis_0120Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fontes'));
if (testeform=nil)  then
   Application.createform(TFrm_Fontes,Frm_Fontes);
if Frm_Fontes.WindowState=WsMinimized then
   Frm_Fontes.WindowState:=WsNormal
else
   frm_Fontes.Show;
end;

procedure TFrm_PPal.sis_0123Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajustapro'));
if (testeform=nil)  then
   Application.createform(TFrm_AjustaPRO,Frm_AjustaPRO);
if Frm_AjustaPRO.WindowState=WsMinimized then
   Frm_AjustaPRO.WindowState:=WsNormal
else
   frm_AjustaPRO.Show;
end;

procedure TFrm_PPal.mpro_0154Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_apco_for'));
if (testeform=nil)  then
   Application.createform(TFrm_APco_For,Frm_APco_For);
if Frm_Apco_For.WindowState=WsMinimized then
   Frm_Apco_For.WindowState:=WsNormal
else
   frm_Apco_For.Show;
end;

procedure TFrm_PPal.mpro_0127Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,6,0,0,0,0,0, 'Senha Para Fazer Ajuste de Estoque','')<>0 then
   exit;

mAjuOrigem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_Aju,Frm_Aju);
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;
end;

procedure TFrm_PPal.mpro_0128Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,6,0,0,0,0,0, 'Senha Para Fazer Ajuste de Estoque','')<>0 then
   exit;
mAjuOrigem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_Aju,Frm_Aju);
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;

end;

procedure TFrm_PPal.mpro_0129Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,6,0,0,0,0,0, 'Senha Para Fazer Ajuste de Estoque','')<>0 then
   exit;
mAjuOrigem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_aju'));
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;

end;

procedure TFrm_PPal.rger_0200Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('form_per2_ldr02'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ldr02);
mreltab:='CADLDR';

if form_per2_ldr02.WindowState=WsMinimized then
   form_per2_ldr02.WindowState:=WsNormal
else
   form_per2_ldr02.Show;

end;

procedure TFrm_PPal.mcai_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lotmov'));
if (testeform=nil)  then
   Application.createform(TFrm_LotMov,Frm_LotMov);
if Frm_LotMov.WindowState=WsMinimized then
   Frm_LotMov.WindowState:=WsNormal
else
   frm_LotMov.Show;

end;

procedure TFrm_PPal.gnre0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_gnre'));
if (testeform=nil)  then
   Application.createform(TFrm_GNRE,Frm_GNRE);
if Frm_GNRE.WindowState=WsMinimized then
   Frm_GNRE.WindowState:=WsNormal
else
   frm_GNRE.Show;

end;

procedure TFrm_PPal.lf_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_exptron'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpTron,Frm_ExpTron);
if Frm_ExpTron.WindowState=WsMinimized then
   Frm_ExpTron.WindowState:=WsNormal
else
   frm_ExpTron.Show;

end;

procedure TFrm_PPal.mos_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manos'));
if (testeform=nil)  then
   Application.createform(TFrm_Manos,Frm_Manos);
Frm_Manos.FormStyle:=fsstayontop;
if Frm_Manos.WindowState=WsMinimized then
   Frm_Manos.WindowState:=WsNormal
else
   frm_Manos.Show;

end;

procedure TFrm_PPal.mos_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_consos'));
if (testeform=nil)  then
   Application.createform(TFrm_ConSos,Frm_Consos);
if Frm_ConSos.WindowState=WsMinimized then
   Frm_ConsOs.WindowState:=WsNormal
else
   frm_ConsOs.Show;

end;

procedure TFrm_PPal.sai_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rom'));
if (testeform=nil)  then
   Application.createform(TFrm_Rom,Frm_Rom);
if Frm_Rom.WindowState=WsMinimized then
   Frm_ROm.WindowState:=WsNormal
else
   frm_Rom.Show;

end;

procedure TFrm_PPal.musu_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fun'));
if (testeform=nil)  then
   Application.createform(TFrm_Fun,Frm_Fun);
if Frm_Fun.WindowState=WsMinimized then
   Frm_FUn.WindowState:=WsNormal
else
   frm_Fun.Show;

end;

procedure TFrm_PPal.mmoe_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_moe'));
if (testeform=nil)  then
   Application.createform(TFrm_Moe,Frm_Moe);
if Frm_Moe.WindowState=WsMinimized then
   Frm_Moe.WindowState:=WsNormal
else
   frm_Moe.Show;

end;

procedure TFrm_PPal.mmoe_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ind'));
if (testeform=nil)  then
   Application.createform(TFrm_Ind,Frm_Ind);
if Frm_Ind.WindowState=WsMinimized then
   Frm_Ind.WindowState:=WsNormal
else
   frm_Ind.Show;

end;

procedure TFrm_PPal.mimo_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_imo'));
if (testeform=nil)  then
   Application.createform(TFrm_Imo,Frm_Imo);
if Frm_Imo.WindowState=WsMinimized then
   Frm_Imo.WindowState:=WsNormal
else
   frm_Imo.Show;

end;

procedure TFrm_PPal.mimo_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mimo'));
if (testeform=nil)  then
   Application.createform(TFrm_Mimo,Frm_Mimo);
Frm_Mimo.FormStyle:=fsstayontop;
if Frm_Mimo.WindowState=WsMinimized then
   Frm_Mimo.WindowState:=WsNormal
else
   frm_Mimo.Show;

end;

procedure TFrm_PPal.mvei_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mvei'));
if (testeform=nil)  then
   Application.createform(TFrm_Mvei,Frm_Mvei);
if Frm_Mvei.WindowState=WsMinimized then
   Frm_Mvei.WindowState:=WsNormal
else
   frm_Mvei.Show;

end;

procedure TFrm_PPal.mvei_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mvei'));
if (testeform=nil)  then
   Application.createform(TFrm_Vei,Frm_Vei);
if Frm_Vei.WindowState=WsMinimized then
   Frm_Vei.WindowState:=WsNormal
else
   frm_Vei.Show;

end;

procedure TFrm_PPal.mImo_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manimo'));
if (testeform=nil)  then
   Application.createform(TFrm_ManImo,Frm_ManImo);
if Frm_ManImo.WindowState=WsMinimized then
   Frm_ManImo.WindowState:=WsNormal
else
   frm_ManImo.Show;
end;

procedure TFrm_PPal.mvei_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manvei'));
if (testeform=nil)  then
   Application.createform(TFrm_ManVei,Frm_ManVei);
if Frm_ManVei.WindowState=WsMinimized then
   Frm_ManVei.WindowState:=WsNormal
else
   frm_ManVei.Show;
end;

procedure TFrm_PPal.rimo_0103Click(Sender: TObject);
begin
mreltab:='CADIMO';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_imo'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_imo);
if form_per2_imo.WindowState=WsMinimized then
   form_per2_imo.WindowState:=WsNormal
else
   form_per2_imo.Show;
end;

procedure TFrm_PPal.rvei_0103Click(Sender: TObject);
begin
mreltab:='CADVEI01';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_vei01'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_vei01);
if form_per2_vei01.WindowState=WsMinimized then
   form_per2_vei01.WindowState:=WsNormal
else
   form_per2_vei01.Show;

end;

procedure TFrm_PPal.rmoe_0103Click(Sender: TObject);
begin
mreltab:='CADMOE';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_moe'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_moe);
if form_per2_moe.WindowState=WsMinimized then
   form_per2_moe.WindowState:=WsNormal
else
   form_per2_moe.Show;

end;

procedure TFrm_PPal.ros_0103Click(Sender: TObject);
begin
mreltab:='CADOS';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_os'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_os);
if form_per2_os.WindowState=WsMinimized then
   form_per2_os.WindowState:=WsNormal
else
   form_per2_os.Show;

end;

procedure TFrm_PPal.rvei_0106Click(Sender: TObject);
begin
mreltab:='CADMVEI';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_mvei'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_mvei);
if form_per2_mvei.WindowState=WsMinimized then
   form_per2_mvei.WindowState:=WsNormal
else
   form_per2_mvei.Show;

end;

procedure TFrm_PPal.rimo_0106Click(Sender: TObject);
begin
mreltab:='CADMIMO';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_Mimo'));
if (testeform=nil)  then
if form_per2_Mimo.WindowState=WsMinimized then
   form_per2_Mimo.WindowState:=WsNormal
else
   form_per2_Mimo.Show;

end;

procedure TFrm_PPal.mloc_0107Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_girloc'));
if (testeform=nil)  then
   Application.createform(TFrm_GirLoc,Frm_GirLoc);
if Frm_GirLOc.WindowState=WsMinimized then
   Frm_GirLoc.WindowState:=WsNormal
else
   frm_GirLoc.Show;

end;
function fIdentificaTopico(NomForm,NomCam: String): Integer;
begin
if flcadhelp(2,0,0,UpperCase(NomForm),uppercase(NomCam)) then
   result:=DM2.Tb_HelpHP_CODLINK.Asinteger
else
   result:=0;
{
mTopico:='';
mAchou:=False;
For y:=1 to length(NomTopico) do
   begin
   if mAchou then
      begin
      if NomTopico[y] in ['0'..'9'] then
         mTopico:=mTopico+NomTopico[y];
      end
   else if NomTopico[y]='_' then
      mAchou:=True;
   end;
if Trim(mTopico)='' then
   Result:=0
else
   Result:=StrToInt(mTopico);
}
end;
procedure TFrm_PPal.sis_0672Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_help'));
if (testeform=nil)  then
   Application.createform(TFrm_Help,Frm_Help);
if Frm_Help.WindowState=WsMinimized then
   Frm_Help.WindowState:=WsNormal
else
   frm_Help.Show;

end;

procedure TFrm_PPal.sis_0242Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
If MessageDlg('Esta opção é exclusiva para o fechamento do dia!'+#13
   +'Tem certeza que deseja prosseguir?',mtWarning,[mbOk,mbCancel],0)<>mrOk then
   exit;
if (DM1.Tb_ECFCFDTULTMOV.IsNull) or (DM1.Tb_ECFCFDTULTMOV.Value<=pdatanula) then
   fReducaoZ(0,date-1)
else
   fReducaoZ(0,DM1.Tb_ECFCFDTULTMOV.Value);

end;

procedure TFrm_PPal.mpro_0160Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ultcpr'));
if (testeform=nil)  then
   Application.createform(TFrm_UltCPR,Frm_UltCPR);
Frm_UltCPR.bb_imprel.Enabled:=True;
if Frm_UltCPR.WindowState=WsMinimized then
   Frm_UltCPR.WindowState:=WsNormal
else
   frm_UltCPR.Show;
end;

procedure TFrm_PPal.sis_0675Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_est_dif_ext'));
if (testeform=nil)  then
   Application.createform(TFrm_Est_Dif_Ext,Frm_Est_Dif_ext);
if Frm_Est_Dif_ext.WindowState=WsMinimized then
   Frm_Est_DIf_ext.WindowState:=WsNormal
else
   frm_Est_Dif_Ext.Show;

end;

procedure TFrm_PPal.sis_0126Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_doconline'));
if (testeform=nil)  then
   Application.createform(TFrm_DocOnline,Frm_DocOnline);
if Frm_DocOnline.WindowState=WsMinimized then
   Frm_DocOnLine.WindowState:=WsNormal
else
   frm_DocOnline.Show;

end;

procedure TFrm_PPal.lf_0136Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   FMensagem('Opção temporariamente bloqueada para Este Usuario!',0,['0'],0);
   exit;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_pfor01'));
if (testeform=nil)  then
   Application.createform(TFrm_PFor01,Frm_PFor01);
Frm_PFor01.FormStyle:=fsNormal;
Frm_PFor01.Visible  :=false;

MOrigem_PF:=4;
if Frm_PFor01.WindowState=WsMinimized then
   Frm_PFor01.WindowState:=WsNormal
else
   frm_PFor01.Show;


end;

procedure TFrm_PPal.sis_0618Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dm_config'));
if (testeform=nil)  then
   Application.createform(TFrm_Dm_Config,Frm_DM_CONFIG);
if Frm_DM_CONFIG.WindowState=WsMinimized then
   Frm_DM_CONFIG.WindowState:=WsNormal
else
   frm_DM_CONFIG.Show;

end;

procedure TFrm_PPal.sis0639Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,7,0,0,0,0,0, 'Senha Para Restaurar Backups','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_info'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Info, Frm_Info);
Frm_Info.RichEdit1.Lines.Clear;
Frm_Info.RichEdit1.Lines.Add('Informações Importantes: Para restaurar o ');
Frm_Info.RichEdit1.Lines.Add('backups é necessario que o computador que voce esteja ');
Frm_Info.RichEdit1.Lines.Add('usando seja o SERVIDOR e que todos os usuários estejam fora ');
Frm_Info.RichEdit1.Lines.Add('do SGE-Sistema de Gestão Empresarial, após a restauração ');
Frm_Info.RichEdit1.Lines.Add('o sistema será fechado. EM CASO DE DUVIDA NAO UTILIZE ESTA ');
Frm_Info.RichEdit1.Lines.Add('OPÇAO, POIS ELA PODE CAUSAR DANOS EM SEU BANCO DE DADOS');
Frm_Info.ShowModal;
Frm_Info.Free;
Frm_Info:=nil;
testeform := TFrm_PPal(FindGlobalComponent('frm_restdados'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_RestDados, Frm_RestDados);
Frm_RestDados.ShowModal;
Frm_RestDados.Free;
Frm_RestDados:=nil;

end;

procedure TFrm_PPal.rdiv_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rani'));
if (testeform=nil)  then
   Application.createform(TFrm_Rani,Frm_Rani);
if Frm_Rani.WindowState=WsMinimized then
   Frm_Rani.WindowState:=WsNormal
else
   frm_Rani.Show;

end;

procedure TFrm_PPal.mcli_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bloqcli'));
if (testeform=nil)  then
   Application.createform(TFrm_BloqCli,Frm_BloqCLi);
if Frm_BloqCli.WindowState=WsMinimized then
   Frm_BloqCLI.WindowState:=WsNormal
else
   frm_BloqCli.Show;

end;

procedure TFrm_PPal.rger_0248Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cxsaldo2dias'));
if (testeform=nil)  then
   Application.createform(TFrm_CxSaldo2Dias,Frm_CxSalDo2dias);
if Frm_CxSaldo2Dias.WindowState=WsMinimized then
   Frm_CxSaldo2Dias.WindowState:=WsNormal
else
   frm_CxSaldo2dias.Show;

end;

procedure TFrm_PPal.mind_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
mOrigemIndProFab:=0; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;
end;

procedure TFrm_PPal.mind_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indmputil'));
if (testeform=nil)  then
   Application.createform(TFrm_IndMpUtil,Frm_IndMpUtil);
if Frm_IndMpUtil.WindowState=WsMinimized then
   Frm_IndMpUtil.WindowState:=WsNormal
else
   frm_IndMpUtil.Show;
end;

procedure TFrm_PPal.sis_0678Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resnf'));
if (testeform=nil)  then
   Application.createform(TFrm_ResNF,Frm_ResNF);
if Frm_ResNF.WindowState=WsMinimized then
   Frm_ResNF.WindowState:=WsNormal
else
   frm_ResNF.Show;
end;

procedure TFrm_PPal.sis_0681Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_excel'));
if (testeform=nil)  then
   Application.createform(TFrm_Excel,Frm_Excel);
if Frm_Excel.WindowState=WsMinimized then
   Frm_Excel.WindowState:=WsNormal
else
   frm_Excel.Show;
end;

procedure TFrm_PPal.sis_0621Click(Sender: TObject);
begin
if codemp>100 then
   begin

   fmensagem('Não é uma empresa válida para esta opção!',0,['0'],0);

   exit;
   end;
if not ftestacaixa(0) then exit;

testeform := TFrm_PPal(FindGlobalComponent('frm_dm_rec'));
if (testeform=nil)  then
   Application.createform(TFrm_DM_REC,Frm_DM_REC);
if Frm_DM_REC.WindowState=WsMinimized then
   Frm_DM_REC.WindowState:=WsNormal
else
   frm_DM_REC.Show;
end;

procedure TFrm_PPal.sis_0684Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resmapares'));
if (testeform=nil)  then
   Application.createform(TFrm_ResMapaRes,Frm_ResMapaRes);
if Frm_ResMapaRes.WindowState=WsMinimized then
   Frm_ResMapaRes.WindowState:=WsNormal
else
   frm_ResMapaRes.Show;
end;

procedure TFrm_PPal.lf_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_expcont01'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpCont01,Frm_ExpCont01);
if Frm_ExpCont01.WindowState=WsMinimized then
   Frm_ExpCont01.WindowState:=WsNormal
else
   frm_ExpCont01.Show;

end;

procedure TFrm_PPal.rsai_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mancsf'));
if (testeform=nil)  then
   Application.createform(TFrm_ManCSF,Frm_ManCSF);
if Frm_ManCSF.WindowState=WsMinimized then
   Frm_manCSF.WindowState:=WsNormal
else
   frm_ManCSF.Show;
end;

procedure TFrm_PPal.mpro_0163Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manbal'));
if (testeform=nil)  then
   Application.createform(TFrm_ManBal,Frm_ManBal);
if Frm_ManBal.WindowState=WsMinimized then
   Frm_ManBal.WindowState:=WsNormal
else
   frm_ManBal.Show;
end;

procedure TFrm_PPal.rpro_0160Click(Sender: TObject);
begin
mProCodBar_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_procodbar'));
if (testeform=nil)  then
   Application.createform(TFrm_ProCodBar,Frm_ProCodBar);
if Frm_ProCodBar.WindowState=WsMinimized then
   Frm_ProCodBar.WindowState:=WsNormal
else
   frm_ProCodBar.Show;
end;

procedure TFrm_PPal.msis_0703Click(Sender: TObject);
begin
mExpMov_Origem:=0;
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpMov,Frm_ExpMov);
if Frm_ExpMov.WindowState=WsMinimized then
   Frm_ExpMov.WindowState:=WsNormal
else
   frm_ExpMov.Show;
end;

procedure TFrm_PPal.msis_0709Click(Sender: TObject);
begin

mImpMov_Origem:=0;
mExpMov_Origem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_impmov'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_ImpMov, Frm_ImpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.Createform(TFrm_ExpMov, Frm_ExpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_server_transf'));
if (testeform=nil)  then
   Application.Createform(TFrm_Server_Transf, Frm_Server_Transf);
mImpMov_Origem:=0;
mExpMov_Origem:=2;
mOrigem_Chamada:=0; // é para mostrar o grafico do server_transf

Frm_ImpMov.ShowModal;
Frm_ImpMov.Free;
Frm_ImpMov:=nil;

end;

procedure TFrm_PPal.msis_0706Click(Sender: TObject);
begin
mExpMov_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpMov,Frm_ExpMov);
if Frm_ExpMov.WindowState=WsMinimized then
   Frm_ExpMov.WindowState:=WsNormal
else
   frm_ExpMov.Show;
end;

procedure TFrm_PPal.msis_0712Click(Sender: TObject);
begin
{
Application.CreateForm(TFrm_ImpCad, Frm_ImpCad);
Frm_ImpCad.ShowModal;
Frm_ImpCad.Free;
}
mImpMov_Origem:=1;
mExpMov_Origem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_impmov'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_ImpMov, Frm_ImpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.Createform(TFrm_ExpMov, Frm_ExpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_server_transf'));
if (testeform=nil)  then
   Application.Createform(TFrm_Server_Transf, Frm_Server_Transf);
mImpMov_Origem:=1;
mExpMov_Origem:=2;
mOrigem_Chamada:=0; // é para mostrar o grafico do server_transf


Frm_ImpMov.ShowModal;
Frm_ImpMov.Free;
Frm_ImpMov:=nil;

end;

procedure TFrm_PPal.msis_0715Click(Sender: TObject);
begin
mImpMov_Origem:=2;
mExpMov_Origem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_impmov'));
if (testeform=nil)  then
   Application.Createform(TFrm_ImpMov, Frm_ImpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.Createform(TFrm_ExpMov, Frm_ExpMov);
testeform := TFrm_PPal(FindGlobalComponent('frm_server_transf'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Server_transf, Frm_Server_Transf);
mOrigem_Chamada:=2; // é para mostrar o grafico do server_transf
Frm_Server_Transf.ShowModal;
Frm_Server_Transf.Free;
Frm_Server_Transf:=nil;
Frm_ImpMov.Free;
Frm_ImpMOv:=nil;
Frm_ExpMov.Free;
Frm_ExpMov:=nil;
end;

procedure TFrm_PPal.lf_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_inv'));
if (testeform=nil)  then
   Application.createform(TFrm_Inv,Frm_Inv);
if Frm_Inv.WindowState=WsMinimized then
   Frm_Inv.WindowState:=WsNormal
else
   frm_Inv.Show;
end;

procedure TFrm_PPal.lf_0142Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_invgra'));
if (testeform=nil)  then
   Application.createform(TFrm_InvGra,Frm_Invgra);
if Frm_InvGra.WindowState=WsMinimized then
   Frm_Invgra.WindowState:=WsNormal
else
   frm_InvGra.Show;
end;

procedure TFrm_PPal.mpro_0157Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajuinvgra'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuInvGra,Frm_AjuInvGra);
if Frm_AjuInvGra.WindowState=WsMinimized then
   Frm_AjuInvGra.WindowState:=WsNormal
else
   frm_AjuInvGra.Show;
end;

procedure TFrm_PPal.mpro_0169Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajuinvgra_gd'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuInvGra_GD,Frm_AjuInvGra_GD);
if Frm_AjuInvGra_GD.WindowState=WsMinimized then
   Frm_AjuInvGra_GD.WindowState:=WsNormal
else
   Frm_AjuInvGra_GD.Show;
end;

procedure TFrm_PPal.msis_0718Click(Sender: TObject);
begin
mExpMov_Origem:=2;
testeform := TFrm_PPal(FindGlobalComponent('frm_expmov'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpMov,Frm_ExpMov);
if Frm_ExpMov.WindowState=WsMinimized then
   Frm_ExpMov.WindowState:=WsNormal
else
   frm_ExpMov.Show;

end;

procedure TFrm_PPal.msis_0721Click(Sender: TObject);
begin
mImpMov_Origem:=2;
mOrigem_Chamada:=0; // é para mostrar o grafico do server_transf
testeform := TFrm_PPal(FindGlobalComponent('frm_impmov'));
if (testeform=nil)  then
   Application.createform(TFrm_ImpMov,Frm_ImpMov);
if Frm_ImpMov.WindowState=WsMinimized then
   Frm_ImpMov.WindowState:=WsNormal
else
   frm_ImpMov.Show;
end;

procedure TFrm_PPal.sis0642Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_desbl_pedido'));
if (testeform=nil)  then
   Application.createform(TFrm_Desbl_Pedido,Frm_Desbl_Pedido);

if Frm_Desbl_Pedido.WindowState=WsMinimized then
   Frm_Desbl_Pedido.WindowState:=WsNormal
else
   frm_Desbl_Pedido.Show;
end;

procedure TFrm_PPal.rger_0251Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resfat'));
if (testeform=nil)  then
   Application.createform(TFrm_ResFat,Frm_ResFat);
if Frm_ResFat.WindowState=WsMinimized then
   Frm_ResFat.WindowState:=WsNormal
else
   frm_ResFat.Show;
end;

procedure TFrm_PPal.sis_0687Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_canfdia'));
if (testeform=nil)  then
   Application.createform(TFrm_CanfDia,Frm_CanFDia);
if Frm_CanFdia.WindowState=WsMinimized then
  Frm_CanFdia.WindowState:=WsNormal
else
  frm_CanFdia.Show;
end;

procedure TFrm_PPal.rger_0254Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fluxodpchq'));
if (testeform=nil)  then
   Application.createform(TFrm_FluxoDPCHQ,Frm_FluxoDPCHQ);
if Frm_FluxoDPCHQ.WindowState=WsMinimized then
   Frm_FluxoDPCHQ.WindowState:=WsNormal
else
   frm_FluxoDPCHQ.Show;
end;

procedure TFrm_PPal.rcr_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dupagru'));
if (testeform=nil)  then
   Application.createform(TFrm_DupAgru,Frm_DupAgru);
if Frm_DupAgru.WindowState=WsMinimized then
   Frm_DupAgru.WindowState:=WsNormal
else
   frm_DupAgru.Show;
end;

procedure TFrm_PPal.mven_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_assessor'));
if (testeform=nil)  then
   Application.createform(TFrm_Assessor,Frm_Assessor);

if Frm_Assessor.WindowState=WsMinimized then
   Frm_Assessor.WindowState:=WsNormal
else
   frm_Assessor.Show;
end;

procedure TFrm_PPal.rven_0130Click(Sender: TObject);
begin
//// virificar com lindomar
pComROrigem:=3;
testeform := TFrm_PPal(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComRV,Frm_ComRV);
if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;

end;

procedure TFrm_PPal.rven_0133Click(Sender: TObject);
begin
//// virificar com lindomar
pComVOrigem:=8;
testeform := TFrm_PPal(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   Application.createform(TFrm_ComVV,Frm_ComVV);
if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;
end;

procedure TFrm_PPal.sai_0145Click(Sender: TObject);
begin
//// virificar com lindomar
testeform := TFrm_PPal(FindGlobalComponent('frm_trocas'));
if (testeform=nil)  then
   Application.createform(TFrm_Trocas,Frm_Trocas);
if Frm_Trocas.WindowState=WsMinimized then
   Frm_Trocas.WindowState:=WsNormal
else
   frm_Trocas.Show;
end;

procedure TFrm_PPal.cr_0318Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_pedbai'));
if (testeform=nil)  then
   Application.createform(TFrm_PedBai,Frm_PedBai);
if Frm_PedBai.WindowState=WsMinimized then
   Frm_PedBai.WindowState:=WsNormal
else
   frm_PedBai.Show;
end;

procedure TFrm_PPal.sis_0690Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajuext_est'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuExt_Est,Frm_AjuExt_Est);
if Frm_AjuExt_Est.WindowState=WsMinimized then
   Frm_AjuExt_Est.WindowState:=WsNormal
else
   Frm_AjuExt_Est.Show;

end;

procedure TFrm_PPal.lf_0145Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_compinvgra'));
if (testeform=nil)  then

if Frm_CompInvGra= nil then
   Application.createform(TFrm_CompInvGra,Frm_CompInvGra);
if Frm_CompInvGra.WindowState=WsMinimized then
   Frm_CompInvGRa.WindowState:=WsNormal
else
   frm_CompInvGra.Show;
end;

procedure TFrm_PPal.mos_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relos'));
if (testeform=nil)  then
   Application.createform(TFrm_Relos,Frm_Relos);
if Frm_Relos.WindowState=WsMinimized then
   Frm_Relos.WindowState:=WsNormal
else
   frm_Relos.Show;
end;

procedure TFrm_PPal.rger_0257Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcct'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_RCCT,Frm_CX_RCCT);
if Frm_CX_RCCT.WindowState=WsMinimized then
   Frm_CX_RCCT.WindowState:=WsNormal
else
   frm_CX_RCCT.Show;
end;

procedure TFrm_PPal.mpro_0172Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_pesqprod'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_pesqprod, frm_pesqprod);
if frm_pesqprod.WindowState=wsMinimized then
   frm_pesqprod.WindowState:=wsNormal
else
   frm_pesqprod.Show;
end;

procedure TFrm_PPal.sai_0148Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedpart'));
if (testeform=nil)  then
   Application.createform(TFrm_PedPart,Frm_PedPart);
if Frm_PedPart.WindowState=WsMinimized then
   Frm_Pedpart.WindowState:=WsNormal
else
   frm_Pedpart.Show;
end;

procedure TFrm_PPal.mind_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mper'));
if (testeform=nil)  then
   Application.createform(TFrm_Mper,Frm_Mper);
if Frm_Mper.WindowState=WsMinimized then
   Frm_Mper.WindowState:=WsNormal
else
   frm_Mper.Show;
end;

procedure TFrm_PPal.mind_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mpar'));
if (testeform=nil)  then
   Application.createform(TFrm_Mpar,Frm_Mpar);
if Frm_Mpar.WindowState=WsMinimized then
   Frm_Mpar.WindowState:=WsNormal
else
   frm_Mpar.Show;
end;

procedure TFrm_PPal.mind_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_condprod1'));
if (testeform=nil)  then
   Application.createform(TFrm_ConProd1,Frm_ConProd1);
if Frm_ConProd1.WindowState=WsMinimized then
   Frm_ConProd1.WindowState:=WsNormal
else
   frm_ConProd1.Show;
end;

procedure TFrm_PPal.rind_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relconprod'));
if (testeform=nil)  then
   Application.createform(TFrm_RelConProd,Frm_RelConProd);
if Frm_RelConProd.WindowState=WsMinimized then
   Frm_RelConProd.WindowState:=WsNormal
else
   frm_RelConProd.Show;
end;

procedure TFrm_PPal.sis_0129Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   fmensagem('Opcao Invalida para Este Usuario!',0,['0'],0);
   exit;
   end;
if fValidaSenha(0,codusr,41,0,0,0,0,0, 'Senha para Fazer Excluir dados','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_elimdados'));
if (testeform=nil)  then
   Application.createform(TFrm_elimdados,Frm_ElimDados);
if Frm_ElimDados.WindowState=WsMinimized then
   Frm_ElimDados.WindowState:=WsNormal
else
   frm_ElimDados.Show;
end;

procedure TFrm_PPal.mpro_0175Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,6,0,0,0,0,0, 'Senha para Ajustar Estoque','')<>0 then
   exit;
mAjuOrigem:=3;
testeform := TFrm_PPal(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_aju,Frm_Aju);
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;
end;

procedure TFrm_PPal.sai_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_min2'));
if (testeform=nil)  then
   Application.createform(TFrm_Min2,Frm_Min2);
if Frm_Min2.WindowState=WsMinimized then
   Frm_Min2.WindowState:=WsNormal
else
   frm_Min2.Show;
end;

procedure TFrm_PPal.sai_0160Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_min3'));
if (testeform=nil)  then
   Application.createform(TFrm_Min3,Frm_Min3);
if Frm_Min3.WindowState=WsMinimized then
   Frm_Min3.WindowState:=WsNormal
else
   frm_Min3.Show;
end;

procedure TFrm_PPal.mdiv_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ani'));
if (testeform=nil)  then
   Application.createform(TFrm_Ani,Frm_Ani);

if Frm_Ani.WindowState=WsMinimized then
   Frm_Ani.WindowState:=WsNormal
else
   frm_Ani.Show;
end;

procedure TFrm_PPal.mind_0136Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tromol'));
if (testeform=nil)  then
   Application.createform(TFrm_Tromol,Frm_Tromol);
if Frm_Tromol.WindowState=WsMinimized then
   Frm_tromol.WindowState:=WsNormal
else
   frm_tromol.Show;
end;

procedure TFrm_PPal.rcli_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rclinaocompra'));
if (testeform=nil)  then
   Application.createform(TFrm_RcliNaoCompra,Frm_RcliNaoCompra);
if Frm_RcliNaoCompra.WindowState=WsMinimized then
   Frm_RcliNaoCompra.WindowState:=WsNormal
else
   frm_RcliNaoCompra.Show;
end;

procedure TFrm_PPal.mcli_0109Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,42,0,0,0,0,0, 'Importar Alíquotas de Débitos ST. Para continuar digite a senha','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_impali'));
if (testeform=nil)  then
   Application.createform(TFrm_ImpAli,Frm_ImpAli);
if Frm_ImpAli.WindowState=WsMinimized then
   Frm_ImpAli.WindowState:=WsNormal
else
   frm_ImpALi.Show;
end;

procedure TFrm_PPal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if pTcAtalho_me<>0 then
   begin
   if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
      begin
      if Screen.FormCount>10 then
         begin
         fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
                     +' fechadas!',0,['0'],0);

         end
      else
         begin
         if codemp>100 then
            mcod:=codemp-100
         else
            mcod:=codemp+100;
        if not DM1.Tb_Emp.Locate('CODEMP',mcod,[]) then
           begin

           fmensagem('Não foi Encontrado a Empresa de Destino!',0,['0'],0);

           exit;
           end
        else
           begin
           codemp:=DM1.Tb_EmpCODEMP.AsInteger;
           flcadusr(1,0,inttoStr(codusr));
           flcadcar(1,0,IntToStr(codcar));

           fEntConclui(0);
           StatusBar1.Panels[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
           +' '+DM1.Tb_EmpFANTASIA.Value;
           SpeedButton17.Caption:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
           +' '+DM1.Tb_EmpFANTASIA.Value;
{           setlength(ce_codempati,1);
           ce_codempati[0]:=IntTostr(codemp);
           ce_qtdemp      :=1;}
           StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
           sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
           end;
         end;
      end;
   end;
end;

procedure TFrm_PPal.rcr_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_medvenpgt'));
if (testeform=nil)  then
   Application.createform(TFrm_MedVenPgt,Frm_MedVenPgt);
if Frm_MedVenPgt.WindowState=WsMinimized then
   Frm_MedVenPgt.WindowState:=WsNormal
else
   frm_MedVenPgt.Show;
end;

procedure TFrm_PPal.rped_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fped'));
if (testeform=nil)  then
   Application.createform(TFrm_RPEd,Frm_Rped);
if Frm_Rped.WindowState=WsMinimized then
   Frm_Rped.WindowState:=WsNormal
else
   frm_Rped.Show;
end;

procedure TFrm_PPal.sis_0135Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_parcod'));
if (testeform=nil)  then
   Application.createform(TFrm_ParCod,Frm_ParCod);
if Frm_PArCod.WindowState=WsMinimized then
   Frm_ParCod.WindowState:=WsNormal
else
   frm_ParCod.Show;
end;

procedure TFrm_PPal.sis_0132Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,43,0,0,0,0,0, 'Senha Para Atualizar Tabelas Diretas','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_update'));
if (testeform=nil)  then
   Application.createform(TFrm_Update,Frm_Update);
if Frm_Update.WindowState=WsMinimized then
   Frm_Update.WindowState:=WsNormal
else
   frm_Update.Show;
end;

procedure TFrm_PPal.sis_0693Click(Sender: TObject);
begin
if (valint(copy(mpseg,4,2))=0) then
   begin
   Fmensagem('Opção Inválida para Este tipo de cliente!',0,['0'],0);
   exit;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_estdiflot'));
if (testeform=nil)  then
   Application.createform(TFrm_EstDifLot,Frm_EstDifLot);
if Frm_EstDifLot.WindowState=WsMinimized then
   Frm_EstDifLot.WindowState:=WsNormal
else
   frm_EstDifLot.Show;
end;

procedure TFrm_PPal.Imagem1Click(Sender: TObject);
begin

fSalvarImagem('LOGO0','C:\SGE\LOGO0.JPG');

if FileExists('C:\SGE\LOGO0.JPG') then
   begin
   image1.Picture.LoadFromFile('C:\SGE\LOGO0.JPG');
   flparger(0,0,'1');
   if DM1.Tb_PargerPTAMJPG.Value=0 then
      Image1.Align:=alClient
   else
      begin
      mqtd:=(Frm_PPal.Width-Image1.Width) div 2;
      Image1.Left:=mqtd;
      mqtd:=(Frm_PPal.Height-Image1.Height) div 2;
      Image1.Top :=mqtd;
      end;
   Image1.Visible:=True;
   end;

end;

procedure TFrm_PPal.FecharMenu1Click(Sender: TObject);
begin
    close;
end;

procedure TFrm_PPal.mpro_0178Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relimp_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_RelImp_Prod,Frm_RelImp_prod);
if Frm_RelImp_Prod.WindowState=WsMinimized then
   Frm_RelImp_Prod.WindowState:=WsNormal
else
   frm_RelImp_Prod.Show;
end;

procedure TFrm_PPal.Calendario1Click(Sender: TObject);
begin
    if MonthCalendar1.Visible then
    begin
       MonthCalendar1.Visible := false;
       MonthCalendar1.Align   := alClient;
    end else
    begin
       MonthCalendar1.Visible := true;
       ShellListView1.Visible := FALSE;
       MonthCalendar1.Align   := alClient;
    end;

end;

procedure TFrm_PPal.Windows1Click(Sender: TObject);
begin
     IF ShellListView1.Visible THEN
     begin
        ShellListView1.Visible := FALSE;
        ShellListView1.Align   := alClient;
     end ELSE
     begin
        ShellListView1.Visible := TRUE;
        MonthCalendar1.Visible := false;
        ShellListView1.Align   := alClient;
     end;

end;

procedure TFrm_PPal.elaCheiaNormal1Click(Sender: TObject);
begin
    if BorderStyle = bssizeable then
       BorderStyle := bsNone
       else BorderStyle := bssizeable;

end;


procedure TFrm_PPal.CADASTROClick(Sender: TObject);
begin
    ATUALIZAMENU('Cadastros');
    BUSCA_FONTES;
    mouse_move_normal;
    cadastro.Font.Color       := clBlue;
    cadastro.Font.Size        := 14;
end;

procedure TFrm_PPal.RELATORIOSClick(Sender: TObject);
begin
    ATUALIZAMENU('Relatórios');
    BUSCA_FONTES;
    mouse_move_normal;
    relatorios.Font.Color     := clBlue;
    relatorios.Font.Size      := 14;

end;

procedure TFrm_PPal.ESTATISTICASClick(Sender: TObject);
begin
    ATUALIZAMENU('Estatísticas');
    BUSCA_FONTES;
    mouse_move_normal;
    estatisticas.Font.Color     := clBlue;
    estatisticas.Font.Size      := 14;

end;

procedure TFrm_PPal.FISCAISClick(Sender: TObject);
begin
    ATUALIZAMENU('Fiscais');
    BUSCA_FONTES;
    mouse_move_normal;
    fiscais.Font.Color     := clBlue;
    fiscais.Font.Size      := 14;

end;

procedure TFrm_PPal.FATURAMENTOClick(Sender: TObject);
begin
    ATUALIZAMENU('Faturamento');
    BUSCA_FONTES;
    mouse_move_normal;
    faturamento.Font.Color     := clBlue;
    faturamento.Font.Size      := 13;

end;

procedure TFrm_PPal.FINANCEIROClick(Sender: TObject);
begin
    ATUALIZAMENU('Financeiro');
    BUSCA_FONTES;
    mouse_move_normal;
    financeiro.Font.Color     := clBlue;
    financeiro.Font.Size      := 14;

end;

procedure TFrm_PPal.SISTEMAClick(Sender: TObject);
begin
    ATUALIZAMENU('Sistema');
    BUSCA_FONTES;
    mouse_move_normal;
    sistema.Font.Color     := clBlue;
    sistema.Font.Size      := 14;

end;

procedure TFrm_PPal.BUSCA_FONTES;
begin

    TEMP.CLOSE;
    TEMP.sql.clear;
    TEMP.sql.add('select * from cadusr where ');
    TEMP.sql.add(' codusr = '+inttostr(codusr));
    TEMP.open;
    IF NOT TEMP.IsEmpty THEN
    BEGIN
        IF trim(TEMP.FIELDBYNAME('NAME').AsString) <> '' THEN
           BTree.Font.Name := TEMP.FIELDBYNAME('NAME').AsString;
        IF trim(TEMP.FIELDBYNAME('TFONTE').AsString) <> '' THEN
           BTree.Font.Size := StrToInt(TEMP.FIELDBYNAME('TFONTE').AsString);
        IF trim(TEMP.FIELDBYNAME('COLOR').AsString) <> '' THEN
           BTree.Font.Color:= valint(TEMP.FIELDBYNAME('COLOR').AsString);
        IF trim(TEMP.FIELDBYNAME('FUNDO_BTREE').AsString) <> '' THEN
           BTree.Color:= StrToInt(TEMP.FIELDBYNAME('FUNDO_BTREE').AsString);
        try
           begin
           fSalvarImagem('LOGO0','C:\SGE\LOGO0.JPG');
           if FileExists('C:\SGE\LOGO0.JPG') then
              image3.Picture.LoadFromFile('C:\SGE\LOGO0.JPG');
           end;
        except
//           FMensagem('Imagem Nao Existe Ou Foi Removida - Atencao!!!');
        end;


    END;
end;

procedure TFrm_PPal.mouse_move_normal;
begin

    cadastro.Font.Color     := clWindowText;
    cadastro.Font.Size      := 10;

    relatorios.Font.Color   := clWindowText;
    relatorios.Font.Size    := 10;

    estatisticas.Font.Color := clWindowText;
    estatisticas.Font.Size  := 10;

    fiscais.Font.Color      := clWindowText;
    fiscais.Font.Size       := 10;

    faturamento.Font.Color  := clWindowText;
    faturamento.Font.Size   := 10;

    financeiro.Font.Color   := clWindowText;
    financeiro.Font.Size    := 10;

    sistema.Font.Color      := clWindowText;
    sistema.Font.Size       := 10;

end;

procedure TFrm_PPal.SpeedButton18Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PPal.SpeedButton13Click(Sender: TObject);
begin
    if MonthCalendar2.Visible then
       MonthCalendar2.Visible := false
    else MonthCalendar2.Visible := true;

end;

procedure TFrm_PPal.SpeedButton15Click(Sender: TObject);
begin
    if BorderStyle = bssizeable then
       BorderStyle := bsNone
       else BorderStyle := bssizeable;
end;

procedure TFrm_PPal.SpeedButton14Click(Sender: TObject);
begin
    WINEXEC (PCHAR('calc.exe'),0);
end;

procedure TFrm_PPal.ALTERAFONTE1Click(Sender: TObject);
begin

    If FontDialog1.Execute Then
    Begin
        BTree.Font.Name := FontDialog1.Font.Name;
        BTree.Font.Size := FontDialog1.Font.Size;
        BTree.Font.Color:= FontDialog1.Font.Color;
        TEMP.Close;
        TEMP.SQL.CLEAR;
        TEMP.SQL.ADD('UPDATE CADUSR SET ');
        TEMP.SQL.ADD('  NAME   = '+''''+FontDialog1.Font.Name+'''');
        TEMP.SQL.ADD(', TFONTE = '+''''+IntToStr(FontDialog1.Font.Size)+'''');
        TEMP.SQL.ADD(', COLOR  = '+''''+IntToStr(FontDialog1.Font.COLOR)+'''');
        TEMP.SQL.ADD(', FUNDO_BTREE = '+''''+IntToStr(btree.Color)+'''');
        TEMP.SQL.ADD(' WHERE ');
        TEMP.SQL.ADD(' CODUSR = '+INTTOSTR(CODUSR));
        TEMP.ExecSQL;
        fdm1StartCommit;
    END;
    BUSCA_FONTES;
end;

procedure TFrm_PPal.CorFundoMenu1Click(Sender: TObject);
begin

     IF ColorDialog1.Execute THEN
     BEGIN
        btree.Color := ColorDialog1.Color;
        TEMP.Close;
        TEMP.SQL.CLEAR;
        TEMP.SQL.ADD('UPDATE CADUSR SET ');
        TEMP.SQL.ADD(' FUNDO_BTREE = '+''''+IntToStr(btree.Color)+'''');
        TEMP.SQL.ADD(' WHERE ');
        TEMP.SQL.ADD(' CODUSR = '+INTTOSTR(CODUSR));
        TEMP.ExecSQL;
        fdm1StartCommit;
     END;

end;

procedure TFrm_PPal.BUSCAIMAGEM1Click(Sender: TObject);
begin

If abre_imagem.Execute then
   begin
   Try
      Image3.Picture.LoadFromFile(abre_imagem.FileName);
   except

      fmensagem('Figura Invalida. Valida Somente JPG!',0,['0'],0);
      end;
   end;

   DEGRADE.Close;
   DEGRADE.sql.Clear;
   DEGRADE.sql.add('update cadusr set imagem = :pimagem');
   DEGRADE.sql.add(' where ');
   DEGRADE.sql.add(' codusr = '+inttostr(codusr));
   DEGRADE.parambyname('pimagem').AsBlob := abre_imagem.FileName;
   try
   DEGRADE.ExecSQL;
   fdm1StartCommit;
   except
        FMensagem('Ocorreu Um Erro De Gravação - Consulte Suporte Intersys...',0,['0'],0);
   end;

end;

procedure TFrm_PPal.MenuItem1Click(Sender: TObject);
begin
     IF ShellListView2.Visible THEN
        ShellListView2.Visible := FALSE
        ELSE ShellListView2.Visible := TRUE;

end;

procedure TFrm_PPal.btreeClick(Sender: TObject);
begin
    if expande_treeview then
    begin
        try
        if btree.Selected.AbsoluteIndex>=1 then
        begin
           busca_texto(btree_prog.Items.Item[btree.Selected.AbsoluteIndex].text);
           if btree.Selected.Count = 0 then
           begin
              busca_prog;
              if trim(prog) <> '' then
                 fExecutaProcedure(prog+'Click');
              prog := '';
           end;
        end;

        except

        end;
    end;
end;

function fExecutaProcedure(pNomeProc: String): boolean;
var
Theproc : TProc;
begin
TheProc := Screen.Forms [0].MethodAddress (pNomeProc);
if assigned (theproc) then
   theproc (Screen.Forms[0], Screen.Forms[0].Name);
result:=true;
pNomeProc:='';
end;

procedure TFrm_PPal.busca_prog;
VAR
   M     : INTEGER;
   S     : INTEGER;
begin
    PROG := '';
    M := LENGTH(TEXTO)+2;
    for S := 1 to 50 do
       PROG := PROG+COPY(btree_prog.Items.Item[btree.Selected.AbsoluteIndex].text,M+S,1);

end;

procedure TFrm_PPal.busca_texto(textom : string);
VAR
   I     : INTEGER;
begin
    TEXTO := '';
    for I := 1 to 100 do
    begin
        IF COPY(TEXTOm,I,1) =  '@' THEN EXIT;
        IF COPY(TEXTOm,I,1) <> '@' THEN
        BEGIN
           TEXTO := TEXTO+COPY(TEXTOm,I,1) ;
        END;
    END;

end;

procedure TFrm_PPal.MudaEtilodoMenu1Click(Sender: TObject);
begin
//    if (dm4.Tb_UsrTMENU.AsInteger in[0])OR(CODUSR = 1111) then
    if (dm1.Tb_PargerPTIPOMENU.AsInteger in[0])OR(CODUSR = 1111) then
    begin
       if ppal.visible then
          begin
          ppal.Visible  := false;
          ppal.Enabled  := false;
          ppalt.Visible := true;
          Windows.SetParent(ppalt.Handle,ClientHandle);

          ppalt.Align   := alClient;
          ATUALIZAMENU('Cadastros');
          CADASTROClick(self);
          timer3.Enabled := true;
          btcorrige_telaClick(self);
          end
       else
          begin

          ppal.Visible  := true;
          ppal.Enabled  := true;
          ppal.Align    := alClient;
          ppalt.Visible := false;
          Windows.SetParent(ppal.Handle,ClientHandle);
          end;
    end;

end;

procedure TFrm_PPal.btreeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key =13  then BTree.OnClick(Self);  //ALT + X
end;



procedure TFrm_PPal.elaCheiaNormal2Click(Sender: TObject);
begin
    if BorderStyle  = bssizeable then
       BorderStyle := bsNone
       else BorderStyle := bssizeable;

end;

procedure TFrm_PPal.btreeExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
    expande_treeview := false;
end;

procedure TFrm_PPal.btreeExpanded(Sender: TObject; Node: TTreeNode);
begin
    expande_treeview := false;
end;

procedure TFrm_PPal.btreeChange(Sender: TObject; Node: TTreeNode);
begin
    expande_treeview := true;
end;

procedure TFrm_PPal.SpeedButton15MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     SpeedButton15.Hint := LongDayNames[DayOfWeek(now)]+' '+FormatDateTime('D "de" MMMM "de" YYYY', now);
end;

procedure TFrm_PPal.mdiv_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bloqueiovenda'));
if (testeform=nil)  then
   Application.createform(TFrm_BloqueioVenda,Frm_BloqueioVenda);
if Frm_BloqueioVenda.WindowState=WsMinimized then
   Frm_BloqueioVenda.WindowState:=WsNormal
else
   Frm_BloqueioVenda.Show;

end;

procedure TFrm_PPal.rcr_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cobele_remessa'));
if (testeform=nil)  then
   Application.createform(TFrm_CobEle_Remessa,Frm_CobEle_Remessa);
Frm_CobEle_Remessa.Top:=0;

if Frm_CobEle_Remessa.WindowState=WsMinimized then
   Frm_CobEle_Remessa.WindowState:=WsNormal
else
   Frm_CobEle_Remessa.Show;

end;

procedure TFrm_PPal.rcr_0127Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin

   fmensagem('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);
   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;

testeform := TFrm_PPal(FindGlobalComponent('frm_cobele_retorno'));
if (testeform=nil)  then
   Application.createform(TFrm_CobEle_Retorno,Frm_CobEle_Retorno);
Frm_CobEle_Retorno.Top:=0;

if Frm_CobEle_Retorno.WindowState=WsMinimized then
   Frm_CobEle_Retorno.WindowState:=WsNormal
else
   Frm_CobEle_Retorno.Show;
StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

end;

procedure TFrm_PPal.btcorrige_telaClick(Sender: TObject);
begin
        BorderStyle    := bsNone;
        BorderStyle    := bssizeable;
        timer3.Enabled := false;

{
    IF PPAL.VISIBLE THEN
        BEGIN
        PPAL.VISIBLE   := FALSE;
        BorderStyle    := bsNone;
        BorderStyle    := bssizeable;
        timer3.Enabled := false;
        PPAL.VISIBLE   := TRUE;
        Windows.SetParent(ppal.Handle,ClientHandle);
        END;

    IF PPALT.VISIBLE THEN
       BEGIN
       PPALT.VISIBLE  := FALSE;
        BorderStyle    := bsNone;
        BorderStyle    := bssizeable;
        timer3.Enabled := false;
        PPALT.VISIBLE  := TRUE;
        Windows.SetParent(ppalt.Handle,ClientHandle);

       END;
}
end;

procedure TFrm_PPal.SpeedButton10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton10.ShowHint := true;
   SpeedButton10.Hint := 'Use a Tecla F5 p/ '+#13+'Manutencao No Cadastro de Produto';
end;

procedure TFrm_PPal.SpeedButton11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton11.ShowHint := true;
   SpeedButton11.Hint := 'Use a Tecla F8 p/ '+#13+'Troca de Usuario';
end;

procedure TFrm_PPal.SpeedButton12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton12.ShowHint := true;
   SpeedButton12.Hint := 'Use a Tecla F9 p/ '+#13+'Abertura do Caixa';
end;

procedure TFrm_PPal.SpeedButton13MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton13.ShowHint := true;
   SpeedButton13.Hint := 'Use a Tecla F11 p/ '+#13+'Abrir Calendario ou '+#13+'Click p/Abrir Todo Calendario';
end;

procedure TFrm_PPal.SpeedButton14MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton14.ShowHint := true;
   SpeedButton14.Hint := 'Use a Tecla F12 p/ '+#13+'Usar Calculadora';
end;

procedure TFrm_PPal.SpeedButton18MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   SpeedButton18.ShowHint := true;
   SpeedButton18.Hint := 'Click - P/ Fechar o Sistema';
end;

procedure TFrm_PPal.sis_0138Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_enviaremail'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_EnviarEmail, Frm_EnviarEmail);
if Frm_EnviarEmail.WindowState=WsMinimized then
   Frm_EnviarEmail.WindowState:=WsNormal
else
   Frm_EnviarEmail.Show;
end;

procedure TFrm_PPal.sis_0141Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_liberar'));
if (testeform=nil)  then
   Application.createform(TFrm_Liberar,Frm_Liberar);
if Frm_Liberar.WindowState=WsMinimized then
   Frm_Liberar.WindowState:=WsNormal
else
   Frm_Liberar.Show;

end;

procedure TFrm_PPal.mos_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_contrato'));
if (testeform=nil)  then
   Application.createform(TFrm_Contrato,Frm_Contrato);
if Frm_Contrato.WindowState=WsMinimized then
   Frm_Contrato.WindowState:=WsNormal
else
   frm_Contrato.Show;

end;

procedure TFrm_PPal.mos_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cont_serv'));
if (testeform=nil)  then
   Application.createform(TFrm_Cont_serv,Frm_Cont_Serv);
if Frm_Cont_Serv.WindowState=WsMinimized then
   Frm_Cont_Serv.WindowState:=WsNormal
else
   frm_Cont_Serv.Show;
end;


procedure TFrm_PPal.cp_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dapagru'));
if (testeform=nil)  then
   Application.createform(TFrm_DapAgru,Frm_DapAgru);
if Frm_DapAgru.WindowState=WsMinimized then
   Frm_DapAgru.WindowState:=WsNormal
else
   frm_DapAgru.Show;
end;

procedure TFrm_PPal.rcli_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_etiqcli'));
if (testeform=nil)  then
   Application.createform(TFrm_EtiQCli,Frm_EtiqCli);
if Frm_EtiqCli.WindowState=WsMinimized then
   Frm_EtiqCli.WindowState:=WsNormal
else
   frm_EtiqCli.Show;
end;

procedure TFrm_PPal.rped_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resqtdped'));
if (testeform=nil)  then
   Application.createform(TFrm_ResQtdPed,Frm_ResQtdPed);
if Frm_ResQtdPed.WindowState=WsMinimized then
   Frm_ResQtdped.WindowState:=WsNormal
else
   frm_ResQtdPed.Show;
end;

procedure TFrm_PPal.mos_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_texto'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Texto, Frm_Texto);
mTexto_Origem:='CONTRATO';

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select TTTEXTO from CADTEXTO where ');
DM1.Query1.SQL.add(' TTCHAVE='+chr(39)+'CONTRATO'+chr(39));
DM1.Query1.Open;
if not DM1.Query1.eof then
   begin
//   frm_Texto.Texto.Lines.Text:=DM1.Query1.Fields[0].AsString;
   frm_Texto.Texto.Text:=DM1.Query1.Fields[0].AsString;
   end;

if Frm_Texto.WindowState=WsMinimized then
   Frm_Texto.WindowState:=WsNormal
else
   Frm_Texto.Show;
end;

procedure TFrm_PPal.cp_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lancautofc'));
if (testeform=nil)  then
   Application.createform(TFrm_LancAutoFC,Frm_LancAutoFC);
if Frm_LancAutoFC.WindowState=WsMinimized then
   Frm_LancAutoFC.WindowState:=WsNormal
else
   frm_LancAutoFC.Show;

end;

procedure TFrm_PPal.mcai_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lancautofc'));
if (testeform=nil)  then
   Application.createform(TFrm_LancAutoFC,Frm_LancAutoFC);
if Frm_LancAutoFC.WindowState=WsMinimized then
   Frm_LancAutoFC.WindowState:=WsNormal
else
   frm_LancAutoFC.Show;
end;

procedure TFrm_PPal.rpro_0166Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_destpro'));
if (testeform=nil)  then
   Application.createform(TFrm_DestPro,Frm_DestPro);
if Frm_DestPro.WindowState=WsMinimized then
   Frm_DestPro.WindowState:=WsNormal
else
   frm_DestPro.Show;
end;

procedure TFrm_PPal.rpro_0169Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_prodtit'));
if (testeform=nil)  then
   Application.createform(TFrm_ProdTit,Frm_ProdTit);
if Frm_ProdTit.WindowState=WsMinimized then
   Frm_ProdTit.WindowState:=WsNormal
else
   frm_ProdTit.Show;
end;

procedure TFrm_PPal.rger_0260Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cx_sintetico'));
if (testeform=nil)  then
   Application.createform(TFrm_CX_Sintetico,Frm_CX_Sintetico);
if Frm_CX_Sintetico.WindowState=WsMinimized then
   Frm_CX_Sintetico.WindowState:=WsNormal
else
   frm_CX_SIntetico.Show;
end;

procedure TFrm_PPal.cr_0212Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcrec'));
if (testeform=nil)  then
   Application.createform(TFrm_Rcrec,Frm_RcRec);
if Frm_RcRec.WindowState=WsMinimized then
   Frm_RcRec.WindowState:=WsNormal
else
   frm_RcRec.Show;
end;

procedure TFrm_PPal.cr_0230Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_receber_sint'));
if (testeform=nil)  then
   Application.createform(TFrm_Receber_sint,Frm_Receber_sint);
if Frm_Receber_sint.WindowState=WsMinimized then
   Frm_Receber_Sint.WindowState:=WsNormal
else
   frm_Receber_Sint.Show;
end;

procedure TFrm_PPal.sis_0245Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mrecf'));
if (testeform=nil)  then
   Application.createform(TFrm_MRECF,Frm_MRECF);
if Frm_MRECF.WindowState=WsMinimized then
   Frm_MRECF.WindowState:=WsNormal
else
   frm_MRECF.Show;
end;

procedure TFrm_PPal.sai_0163Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_conh_mercad'));
if (testeform=nil)  then
   Application.createform(TFrm_Conh_MErcad,Frm_Conh_Mercad);
if Frm_Conh_Mercad.WindowState=WsMinimized then
   Frm_Conh_Mercad.WindowState:=WsNormal
else
   frm_Conh_Mercad.Show;
end;


procedure TFrm_PPal.sai_0169Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_conh_merccons'));
if (testeform=nil)  then
   Application.createform(TFrm_Conh_MercCons,Frm_Conh_MercCons);
if Frm_Conh_MercCons.WindowState=WsMinimized then
   Frm_Conh_MercCons.WindowState:=WsNormal
else
   frm_Conh_MercCons.Show;
end;

procedure TFrm_PPal.sai_0166Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_conh_merc_total'));
if (testeform=nil)  then
   Application.createform(TFrm_Conh_Merc_Total,Frm_Conh_Merc_Total);
if Frm_Conh_Merc_Total.WindowState=WsMinimized then
   Frm_Conh_MErc_Total.WindowState:=WsNormal
else
   frm_Conh_Merc_Total.Show;
end;

procedure TFrm_PPal.cr_0233Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_receber_lev'));
if (testeform=nil)  then
   Application.createform(TFrm_Receber_lev,Frm_Receber_lev);
if Frm_Receber_lev.WindowState=WsMinimized then
   Frm_Receber_lev.WindowState:=WsNormal
else
   frm_Receber_lev.Show;
end;

procedure TFrm_PPal.cp_0312Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pagar_lev'));
if (testeform=nil)  then
   Application.createform(TFrm_Pagar_lev,Frm_Pagar_Lev);
if Frm_Pagar_Lev.WindowState=WsMinimized then
   Frm_Pagar_LEv.WindowState:=WsNormal
else
   frm_Pagar_Lev.Show;
end;

procedure TFrm_PPal.cr_0236Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resumo_fpped'));
if (testeform=nil)  then
   Application.createform(TFrm_Resumo_Fpped,Frm_Resumo_Fpped);
if Frm_Resumo_FPPed.WindowState=WsMinimized then
   Frm_Resumo_Fpped.WindowState:=WsNormal
else
   frm_Resumo_FPPED.Show;
end;

procedure TFrm_PPal.sai_0172Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_conh_mercconfirma'));
if (testeform=nil)  then
   Application.createform(TFrm_Conh_MercConfirma,Frm_Conh_MercConfirma);
if Frm_Conh_MercConfirma.WindowState=WsMinimized then
   Frm_Conh_MErcConfirma.WindowState:=WsNormal
else
   frm_Conh_MercConfirma.Show;
end;

procedure TFrm_PPal.sai_0175Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_prodentregar'));
if (testeform=nil)  then
   Application.createform(TFrm_ProdEntregar,Frm_ProdEntregar);
if Frm_ProdEntregar.WindowState=WsMinimized then
   Frm_ProdEntregar.WindowState:=WsNormal
else
   frm_ProdEntregar.Show;
end;

procedure TFrm_PPal.sai_0178Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rfechaconh'));
if (testeform=nil)  then
   Application.createform(TFrm_RFechaConh,Frm_RFechaConh);
if Frm_RFechaConh.WindowState=WsMinimized then
   Frm_RFEchaConh.WindowState:=WsNormal
else
   frm_RFechaConh.Show;
end;

procedure TFrm_PPal.rped_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_resumo_fpped'));
if (testeform=nil)  then
   Application.createform(TFrm_Resumo_FppEd,Frm_Resumo_Fpped);
if Frm_Resumo_Fpped.WindowState=WsMinimized then
   Frm_Resumo_Fpped.WindowState:=WsNormal
else
   frm_Resumo_Fpped.Show;
end;

procedure TFrm_PPal.rped_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rped_encargos'));
if (testeform=nil)  then
   Application.createform(TFrm_Rped_Encargos,Frm_Rped_Encargos);
if Frm_Rped_Encargos.WindowState=WsMinimized then
   Frm_Rped_encargos.WindowState:=WsNormal
else
   frm_Rped_Encargos.Show;

end;

procedure TFrm_PPal.mcli_0136Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,28,0,0,0,0,0, 'Senha Para Mudar o Código do Cliente','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_mcodcli'));
if (testeform=nil)  then
   Application.createform(TFrm_McodCli,Frm_McodCli);
if Frm_McodCli.WindowState=WsMinimized then
   Frm_McodCli.WindowState:=WsNormal
else
   frm_McodCli.Show;
end;

procedure TFrm_PPal.rped_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relped_fpped'));
if (testeform=nil)  then
   Application.createform(TFrm_Relped_Fpped,Frm_Relped_Fpped);
if Frm_Relped_Fpped.WindowState=WsMinimized then
   Frm_Relped_fpped.WindowState:=WsNormal
else
   frm_Relped_fpped.Show;
end;

procedure TFrm_PPal.rcr_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fin_titagru'));
if (testeform=nil)  then
   Application.createform(TFrm_Fin_TitAgru,Frm_fin_titAgru);
if Frm_Fin_Titagru.WindowState=WsMinimized then
   Frm_Fin_TitAgru.WindowState:=WsNormal
else
   frm_Fin_TitAgru.Show;
end;

procedure TFrm_PPal.rven_0142Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relvendacomis'));
if (testeform=nil)  then
   Application.createform(TFrm_RelVendaComis,Frm_RelVendaComis);
if Frm_RelVendaComis.WindowState=WsMinimized then
   Frm_RelVendaComis.WindowState:=WsNormal
else
   frm_RelVendaComis.Show;
end;

procedure TFrm_PPal.mven_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vend_cotames'));
if (testeform=nil)  then
   Application.createform(TFrm_Vend_CotaMes,Frm_Vend_CotaMes);
if Frm_Vend_CotaMEs.WindowState=WsMinimized then
   Frm_Vend_cotaMes.WindowState:=WsNormal
else
  frm_Vend_CotaMes.Show;
end;

procedure TFrm_PPal.rpro_0181Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_etiqprod'));
if (testeform=nil)  then
   Application.createform(TFrm_EtiqProd,Frm_EtiqProd);
if Frm_EtiqProd.WindowState=WsMinimized then
   Frm_EtiqProd.WindowState:=WsNormal
else
   frm_EtiqProd.Show;
end;

procedure TFrm_PPal.sai_0151Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   StatusBar1.Panels[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   Application.createform(TFrm_PedBloq,Frm_PedBloq);
if Frm_PedBloq.WindowState=WsMinimized then
   Frm_PedBloq.WindowState:=WsNormal
else
   frm_PedBloq.Show;
end;

procedure TFrm_PPal.rger_0263Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   fmensagem('Em Desenvolvimento!',0,['0'],0);
   exit;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_superger'));
if (testeform=nil)  then
   Application.createform(TFrm_SuperGer,Frm_SuperGEr);
if Frm_SuperGer.WindowState=WsMinimized then
   Frm_SuperGEr.WindowState:=WsNormal
else
   frm_SuperGEr.Show;
end;

procedure TFrm_PPal.lf_0148Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frmfiscal_relpiscofins'));
if (testeform=nil)  then
   Application.createform(TFrm_Fiscal_RelPisCofins,Frm_Fiscal_RelPisCofins);
if Frm_Fiscal_RelPisCofins.WindowState=WsMinimized then
   Frm_Fiscal_RelPisCofins.WindowState:=WsNormal
else
   frm_Fiscal_RelPisCofins.Show;
end;

procedure TFrm_PPal.mfor_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_gfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Gfor,Frm_Gfor);
if Frm_Gfor.WindowState=WsMinimized then
   Frm_Gfor.WindowState:=WsNormal
else
   frm_GFor.Show;
end;

procedure TFrm_PPal.mfor_0110Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,28,0,0,0,0,0, 'Senha Para Mudar o Código do Fornecedor','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_mcodf'));
if (testeform=nil)  then
   Application.createform(TFrm_mcodf,Frm_MCodF);

if Frm_MCodF.WindowState=WsMinimized then
   Frm_MCodF.WindowState:=WsNormal
else
   frm_MCodF.Show;

end;



procedure TFrm_PPal.rfor_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vend_relgfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Vend_RelGFor,Frm_Vend_RelGFor);
if Frm_Vend_RelGFor.WindowState=WsMinimized then
   Frm_Vend_RelGFor.WindowState:=WsNormal
else
   frm_Vend_RelGFor.Show;
end;

procedure TFrm_PPal.cr_0921Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lev_recpag'));
if (testeform=nil)  then
   Application.createform(TFrm_Lev_RecPag, FRM_Lev_RecPag);
if Frm_Lev_RecPag.WindowState=WsMinimized then
   Frm_Lev_RecPag.WindowState:=WsNormal
else
   frm_Lev_RecPag.Show;
end;

procedure TFrm_PPal.rven_0145Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relvendgfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Vend_RelVendGFor,Frm_Vend_RelVendGFor);
if Frm_Vend_RelVendGFor.WindowState=WsMinimized then
   Frm_Vend_RelVendGFor.WindowState:=WsNormal
else
   frm_Vend_RelVendGFor.Show;
end;

procedure TFrm_PPal.lf_0151Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cftabicm'));
if (testeform=nil)  then
   Application.createform(TFrm_CFTabIcm,Frm_CFTabIcm);
if Frm_CFTabIcm.WindowState=WsMinimized then
   Frm_CFTabIcm.WindowState:=WsNormal
else
   frm_CFTabIcm.Show;


end;

procedure TFrm_PPal.sai_0181Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_minrel'));
if (testeform=nil)  then
   Application.createform(TFrm_MinRel,Frm_MinRel);
if Frm_MinRel.WindowState=WsMinimized then
   Frm_MinRel.WindowState:=WsNormal
else
   frm_MinRel.Show;
end;

procedure TFrm_PPal.rcr_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relbaixarec'));
if (testeform=nil)  then
   Application.createform(TFrm_RelBaixaRec,Frm_RelBaixaRec);
if Frm_RelBaixaRec.WindowState=WsMinimized then
   Frm_RelBaixaRec.WindowState:=WsNormal
else
   frm_RelBaixaRec.Show;
end;

procedure TFrm_PPal.sis_0144Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajudevcli'));
if (testeform=nil)  then
   Application.createform(TFrm_AjuDevCli,Frm_AjuDevCli);
if Frm_AjuDevCli.WindowState=WsMinimized then
   Frm_AjuDevCli.WindowState:=WsNormal
else
   frm_AjuDevCli.Show;
end;

procedure TFrm_PPal.Timer2Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
SpeedButton15.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
label1.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);

end;

procedure TFrm_PPal.cr_0224Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rin_relcob'));
if (testeform=nil)  then
   Application.createform(TFrm_Fin_RelCob,Frm_Fin_RelCob);
if Frm_Fin_RelCob.WindowState=WsMinimized then
   Frm_Fin_RelCob.WindowState:=WsNormal
else
   frm_Fin_RelCob.Show;
end;

procedure TFrm_PPal.rger_0266Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_balprocol'));
if (testeform=nil)  then
   Application.createform(TFrm_BalProCol,Frm_BalProCol);
if Frm_BalProCol.WindowState=WsMinimized then
   Frm_BalProCol.WindowState:=WsNormal
else
   frm_BalProCol.Show;
end;
procedure TFrm_PPal.sai_0154Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_etivol02'));
if (testeform=nil)  then
   Application.createform(TFrm_Etivol02,Frm_Etivol02);
if Frm_Etivol02.WindowState=WsMinimized then
   Frm_Etivol02.WindowState:=WsNormal
else
   frm_Etivol02.Show;
end;

procedure TFrm_PPal.rven_0148Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relcomis_rec'));
if (testeform=nil)  then
   Application.createform(TFrm_RelComis_Rec,Frm_RelComis_Rec);
if Frm_RelComis_Rec.WindowState=WsMinimized then
   Frm_RelComis_Rec.WindowState:=WsNormal
else
   frm_RelComis_Rec.Show;
end;

procedure TFrm_PPal.sis_0147Click(Sender: TObject);
begin
if fValidaSenha(0,codusr,45,0,0,0,0,0, 'Senha para Ajustar Titulos não Gerados','')<>0 then
   exit;
testeform := TFrm_PPal(FindGlobalComponent('frm_gerdup'));
if (testeform=nil)  then
   Application.createform(TFrm_GerDup,Frm_GerDup);
if Frm_GerDup.WindowState=WsMinimized then
   Frm_GerDup.WindowState:=WsNormal
else
   frm_GerDup.Show;
end;

procedure TFrm_PPal.sai_0184Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_oriped'));
if (testeform=nil)  then
   Application.createform(TFrm_OriPed,Frm_OriPed);
if Frm_OriPed.WindowState=WsMinimized then
   Frm_OriPed.WindowState:=WsNormal
else
   frm_OriPed.Show;
end;

procedure TFrm_PPal.mpro_0181Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_manprosim'));
if (testeform=nil)  then
   Application.createform(TFrm_ManProSim,Frm_ManProSim);
if Frm_ManProSim.WindowState=WsMinimized then
   Frm_ManProSim.WindowState:=WsNormal
else
   frm_ManProSim.Show;
end;

procedure TFrm_PPal.sai_0187Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ped_devcons'));
if (testeform=nil)  then
   Application.createform(TFrm_Ped_DevCons,Frm_Ped_DevCons);
if Frm_Ped_DevCons.WindowState=WsMinimized then
   Frm_Ped_DevCons.WindowState:=WsNormal
else
   frm_Ped_DevCons.Show;

end;

procedure TFrm_PPal.mven_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_regiao'));
if (testeform=nil)  then
   Application.createform(TFrm_Regiao,Frm_Regiao);
if Frm_Regiao.WindowState=WsMinimized then
   Frm_Regiao.WindowState:=WsNormal
else
   Frm_Regiao.Show;


end;

procedure TFrm_PPal.mdiv_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ajcomis'));
if (testeform=nil)  then
   Application.createform(TFrm_AJCOMIS,Frm_AJCOMIS);
if Frm_AJCOMIS.WindowState=WsMinimized then
   Frm_AJCOMIS.WindowState:=WsNormal
else
   Frm_AJCOMIS.Show;


end;

procedure TFrm_PPal.mpro_0184Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_transf_depprat'));
if (testeform=nil)  then
   Application.createform(TFrm_Pro_Transf_DepPrat,Frm_Pro_Transf_DepPrat);
if Frm_Pro_Transf_DepPrat.WindowState=WsMinimized then
   Frm_Pro_Transf_DepPrat.WindowState:=WsNormal
else
   frm_Pro_Transf_DepPrat.Show;
end;

procedure TFrm_PPal.mind_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
mOrigemIndProFab:=1; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;

end;

procedure TFrm_PPal.mpro_0187Click(Sender: TObject);
begin

if frm_Pro_AjPcoInd= nil then
   Application.createform(TFrm_Pro_AjPcoInd,Frm_Pro_AjPcoInd);
if Frm_Pro_AjPcoInd.WindowState=WsMinimized then
   Frm_Pro_AjPcoInd.WindowState:=WsNormal
else
   frm_Pro_AjPcoInd.Show;
end;

procedure TFrm_PPal.rest_0118Click(Sender: TObject);
begin
mreltab:='CADLOC';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_Loc'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_Loc);
if form_per2_Loc.WindowState=WsMinimized then
   form_per2_Loc.WindowState:=WsNormal
else
   form_per2_Loc.Show;
end;

procedure TFrm_PPal.mven_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cotaforvend_mes'));
if (testeform=nil)  then
   Application.createform(TFrm_CotaForVend_Mes,Frm_CotaForVend_Mes);
if Frm_CotaForVend_Mes.WindowState=WsMinimized then
   Frm_CotaForVend_Mes.WindowState:=WsNormal
else
   frm_CotaForVend_Mes.Show;
end;   

procedure TFrm_PPal.mven_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cotaprovend_mes'));
if (testeform=nil)  then
   Application.createform(TFrm_CotaProVend_Mes,Frm_CotaProVend_Mes);
if Frm_CotaProVend_Mes.WindowState=WsMinimized then
   Frm_CotaProVend_Mes.WindowState:=WsNormal
else
   frm_CotaProVend_Mes.Show;
end;

procedure TFrm_PPal.cr_0924Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_recibo'));
if (testeform=nil)  then
   Application.createform(TFrm_Recibo,Frm_Recibo);
if Frm_Recibo.WindowState=WsMinimized then
   Frm_Recibo.WindowState:=WsNormal
else
   frm_Recibo.Show;
end;

procedure TFrm_PPal.sai_0157Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_comodato'));
if (testeform=nil)  then
   Application.createform(TFrm_Comodato,Frm_Comodato);
if Frm_Comodato.WindowState=WsMinimized then
   Frm_Comodato.WindowState:=WsNormal
else
   frm_Comodato.Show;

end;

procedure TFrm_PPal.sai_0193Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pontocorte'));
if (testeform=nil)  then
   Application.createform(TFrm_PontoCorte,Frm_PontoCorte);
if Frm_PontoCorte.WindowState=WsMinimized then
   Frm_PontoCorte.WindowState:=WsNormal
else
   frm_PontoCorte.Show;
end;

procedure TFrm_PPal.rpro_0184Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_estprofor2cpr'));
if (testeform=nil)  then
   Application.createform(TFrm_EstProFor2Cpr,Frm_EstProFor2Cpr);
if Frm_EstProFor2Cpr.WindowState=WsMinimized then
   Frm_EstProFor2Cpr.WindowState:=WsNormal
else
   frm_EstProFor2Cpr.Show;
end;

procedure TFrm_PPal.lf_0154Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_lf_compralegalba'));
if (testeform=nil)  then
   Application.createform(TFrm_Lf_CompraLegalBA,Frm_Lf_CompraLegalBA);
if Frm_Lf_CompraLegalBA.WindowState=WsMinimized then
   Frm_Lf_CompraLegalBA.WindowState:=WsNormal
else
   frm_Lf_CompraLegalBA.Show;
end;

procedure TFrm_PPal.sai_0196Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_confirma_entrega'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Confirma_Entrega, Frm_Confirma_Entrega);
Frm_confirma_Entrega.formStyle:=fsstayontop;
if Frm_Confirma_Entrega.WindowState=wsMinimized then
   Frm_Confirma_Entrega.WindowState:=wsNormal;
Frm_Confirma_Entrega.Show;

end;

procedure TFrm_PPal.mfol_0133Click(Sender: TObject);
begin
mreltab:='CADLFOL';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_LFol'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_LFol);
if form_per2_LFol.WindowState=WsMinimized then
   form_per2_LFol.WindowState:=WsNormal
else
   form_per2_LFol.Show;

end;

procedure TFrm_PPal.cp_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mchqcp'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_mChqCP, Frm_mChqCP);
Frm_mChqCP.formStyle:=fsstayontop;
if Frm_mChqCP.WindowState=wsMinimized then
   Frm_mChqCP.WindowState:=wsNormal
else
   Frm_mChqCP.Show;

end;

procedure TFrm_PPal.cp_0127Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_chqcp'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_ChqCP, Frm_ChqCP);
if Frm_ChqCP.WindowState=wsMinimized then
   Frm_ChqCP.WindowState:=wsNormal;
Frm_ChqCP.Show;

end;

procedure TFrm_PPal.mcli_0139Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bloqclimed'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_BloqCliMed, Frm_BloqCliMed);
if Frm_BloqCliMed.WindowState=wsMinimized then
   Frm_BloqCliMed.WindowState:=wsNormal;
Frm_BloqCliMed.Show;
end;

procedure TFrm_PPal.rpro_0187Click(Sender: TObject);
begin
mProCodBar_Origem:=1;
testeform := TFrm_PPal(FindGlobalComponent('frm_procodbar'));
if (testeform=nil)  then
   Application.createform(TFrm_ProCodBar,Frm_ProCodBar);
Frm_ProCodBar.FormStyle:=fsstayontop;
if Frm_ProCodBar.WindowState=WsMinimized then
   Frm_ProCodBar.WindowState:=WsNormal
else
   frm_ProCodBar.Show;

end;

procedure TFrm_PPal.mpro_0209Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_calccus'));
if (testeform=nil)  then
   Application.createform(TFrm_PFor_CalcCus,Frm_PFor_CalcCus);
if Frm_PFor_CalcCus.WindowState=WsMinimized then
   Frm_PFor_CalcCus.WindowState:=WsNormal
else
   Frm_PFor_CalcCus.Show;
end;

procedure TFrm_PPal.sai_0199Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ped_expedicao'));
if (testeform=nil)  then
   Application.createform(TFrm_Ped_Expedicao,Frm_Ped_Expedicao);
if Frm_Ped_Expedicao.WindowState=WsMinimized then
   Frm_Ped_Expedicao.WindowState:=WsNormal
else
   Frm_Ped_Expedicao.Show;

end;

procedure TFrm_PPal.cr_0239Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_crposcar'));
if (testeform=nil)  then
   Application.createform(TFrm_CrPosCar,Frm_CrPosCar);
if Frm_CrPosCar.WindowState=WsMinimized then
   Frm_CrPosCar.WindowState:=WsNormal
else
   Frm_CrPosCar.Show;

end;

procedure TFrm_PPal.mloc_0112Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_nfe_pais'));
if (testeform=nil)  then
   Application.createform(TFrm_NFE_Pais,Frm_NFE_Pais);
if Frm_NFE_Pais.WindowState=WsMinimized then
   Frm_NFE_Pais.WindowState:=WsNormal
else
   Frm_NFE_Pais.Show;

end;

procedure TFrm_PPal.mloc_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_nfe_reg'));
if (testeform=nil)  then
   Application.createform(TFrm_NFE_Reg,Frm_NFE_Reg);
if Frm_NFE_Reg.WindowState=WsMinimized then
   Frm_NFE_Reg.WindowState:=WsNormal
else
   Frm_NFE_Reg.Show;


end;

procedure TFrm_PPal.cr_0927Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_fluxocaixa'));
if (testeform=nil)  then
   Application.createform(TFrm_Fin_FluxoCaixa,Frm_Fin_FluxoCaixa);
if Frm_Fin_FluxoCaixa.WindowState=WsMinimized then
   Frm_Fin_FluxoCaixa.WindowState:=WsNormal
else
   Frm_Fin_FluxoCaixa.Show;


end;

procedure TFrm_PPal.sis2103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_similarems'));
if (testeform=nil)  then
   Application.createform(TFrm_Integra_SimilarEMS,Frm_Integra_SimilarEMS);
if Frm_Integra_SimilarEMS.WindowState=WsMinimized then
   Frm_Integra_SimilarEMS.WindowState:=WsNormal
else
   Frm_Integra_SimilarEMS.Show;

end;

procedure TFrm_PPal.mIndEnv_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indenv_mfor'));
if (testeform=nil)  then
   Application.createform(TFrm_IndEnv_MFor,Frm_IndEnv_MFor);
if Frm_IndEnv_MFor.WindowState=WsMinimized then
   Frm_IndEnv_MFor.WindowState:=WsNormal
else
   Frm_IndEnv_MFor.Show;


end;

procedure TFrm_PPal.cp_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_bchq_cp'));
if (testeform=nil)  then
   Application.createform(TFrm_Bchq_CP,Frm_Bchq_CP);
if Frm_Bchq_CP.WindowState=WsMinimized then
   Frm_Bchq_CP.WindowState:=WsNormal
else
   frm_Bchq_CP.Show;

end;

procedure TFrm_PPal.mIndEnv_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indenv_fab'));
if (testeform=nil)  then
   Application.createform(Tfrm_IndEnv_Fab,frm_IndEnv_Fab);
if frm_IndEnv_Fab.WindowState=WsMinimized then
   frm_IndEnv_Fab.WindowState:=WsNormal
else
   frm_IndEnv_Fab.Show;


end;

procedure TFrm_PPal.rven_0151Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_abc_assessor'));
if (testeform=nil)  then
   Application.createform(TFrm_ABC_Assessor,Frm_ABC_Assessor);
if Frm_ABC_Assessor.WindowState=WsMinimized then
   Frm_ABC_Assessor.WindowState:=WsNormal
else
   frm_ABC_Assessor.Show;

end;

procedure TFrm_PPal.mIndEnv_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
mOrigemIndProFab:=0; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;

end;

procedure TFrm_PPal.mIndEnv_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_indmputil'));
if (testeform=nil)  then
   Application.createform(TFrm_IndMpUtil,Frm_IndMpUtil);
if Frm_IndMpUtil.WindowState=WsMinimized then
   Frm_IndMpUtil.WindowState:=WsNormal
else
   frm_IndMpUtil.Show;

end;

procedure TFrm_PPal.rind_0106Click(Sender: TObject);
begin

testeform := TFrm_PPal(FindGlobalComponent('frm_ind_reginv'));
if (testeform=nil)  then
      Application.createform(TFrm_Ind_RegInv,Frm_Ind_RegInv);


      if Frm_Ind_RegInv.WindowState=WsMinimized then
         Frm_Ind_RegInv.WindowState:=WsNormal
      else
        frm_Ind_RegInv.Show;
end;


procedure TFrm_PPal.ParametrosTiposdePedidos1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_mtipo_ped'));
if (testeform=nil)  then
   Application.createform(TFrm_MTipo_Ped,Frm_MTipo_Ped);

if Frm_MTipo_Ped.WindowState=WsMinimized then
   begin
   Frm_MTipo_Ped.WindowState:=WsNormal
   end
else
   begin
   frm_MTipo_Ped.Show;
   end;
end;

procedure TFrm_PPal.mdiv_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_tipodependente'));
if (testeform=nil)  then
   Application.createform(Tfrm_tipodependente,frm_tipodependente);
if frm_tipodependente.WindowState=WsMinimized then
   frm_tipodependente.WindowState:=WsNormal
else
   frm_tipodependente.Show;
end;

procedure TFrm_PPal.mdiv_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sindicato'));
if (testeform=nil)  then
   Application.createform(Tfrm_sindicato,frm_sindicato);
if frm_sindicato.WindowState=WsMinimized then
   frm_sindicato.WindowState:=WsNormal
else
   frm_sindicato.Show;
end;

procedure TFrm_PPal.rfor_0121Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rel_for'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Rel_For, Frm_Rel_For);
if Frm_Rel_For.WindowState=WsMinimized then
   Frm_Rel_For.WindowState:=WsNormal
else
   frm_Rel_For.Show;


end;

procedure TFrm_PPal.cr_0928Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_serasa'));
if (testeform=nil)  then
   Application.createform(Tfrm_serasa,frm_serasa);
if frm_serasa.WindowState=WsMinimized then
   frm_serasa.WindowState:=WsNormal
else
   frm_serasa.Show;
end;

procedure TFrm_PPal.cr_0929Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vendas'));
if (testeform=nil)  then
   Application.createform(Tfrm_vendas, frm_vendas);
if frm_vendas.WindowState=WsMinimized then
   frm_vendas.WindowState:=WsNormal
else
   frm_vendas.Show;
end;

procedure TFrm_PPal.cp_0130Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_cpsimples'));
if (testeform=nil)  then
   Application.createform(TFrm_CPSimples,Frm_CPSimples);

if Frm_CPSimples.WindowState=WsMinimized then
   Frm_CPSimples.WindowState:=WsNormal
else
   frm_CPSimples.Show;

end;

procedure TFrm_PPal.mfol_0125Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_turnos'));
if (testeform=nil)  then
   Application.createform(TFrm_turnos,Frm_turnos);
if Frm_turnos.WindowState=WsMinimized then
   Frm_turnos.WindowState:=WsNormal
else
   Frm_turnos.Show;
end;

procedure TFrm_PPal.mcai_0133Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_config_caixa'));
if (testeform=nil)  then
   Application.createform(TFrm_Config_Caixa,Frm_Config_Caixa);
if Frm_Config_Caixa.WindowState=WsMinimized then
   Frm_Config_Caixa.WindowState:=WsNormal
else
   Frm_Config_Caixa.Show;
end;

procedure TFrm_PPal.rest_0121Click(Sender: TObject);
begin
mreltab:='CADBAI';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_Bai'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_Bai);
if form_per2_Bai.WindowState=WsMinimized then
   form_per2_Bai.WindowState:=WsNormal
else
   form_per2_Bai.Show;


end;

procedure TFrm_PPal.rfun_0001Click(Sender: TObject);
begin
   mreltab := 'CADFUN';
testeform := TFrm_PPal(FindGlobalComponent('form_per2_Fun'));
if (testeform=nil)  then
      Application.createform(Tfrm_per2,form_per2_Fun);

if form_per2_Fun.WindowState=WsMinimized then
   form_per2_Fun.WindowState:=WsNormal
else
   form_per2_Fun.Show;
end;

procedure TFrm_PPal.rrpro_0103Click(Sender: TObject);
begin
   mreltab := 'CADRAM';
   testeform := TFrm_PPal(FindGlobalComponent('form_per2_RPro'));
   if (testeform=nil)  then
      Application.createform(Tfrm_per2,form_per2_RPro);
   if form_per2_RPro.WindowState=WsMinimized then
      form_per2_RPro.WindowState:=WsNormal
   else
      form_per2_RPro.Show;
end;

procedure TFrm_PPal.mpro_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_exppro'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpPro,Frm_ExpPro);

if Frm_ExpPro.WindowState=WsMinimized then
   Frm_ExpPro.WindowState:=WsNormal
else
   frm_ExpPro.Show;

end;

procedure TFrm_PPal.mpro_0190Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_exppro_balanca'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpPro_Balanca,Frm_ExpPro_Balanca);

if Frm_ExpPro_Balanca.WindowState=WsMinimized then
   Frm_ExpPro_Balanca.WindowState:=WsNormal
else
   frm_ExpPro_Balanca.Show;
end;

procedure TFrm_PPal.mpro_0193Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_dep_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_Dep_Prod,Frm_Dep_Prod);
if Frm_Dep_Prod.WindowState=WsMinimized then
   Frm_Dep_Prod.WindowState:=WsNormal
else
   frm_Dep_Prod.Show;

end;

procedure TFrm_PPal.saiconf_0103Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);

Frm_Editor_Word.Panel_rodape.Visible:=true;
Frm_Editor_Word.TsLegendaOrcam.TabVisible:=true;
Frm_Editor_Word.wp_texto.ReadOnly:=false;
meditor_word_origem:='ORCAMENTO_AMBIENTE.rtf';


if FileExists(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem) then
   begin
   Frm_Editor_Word.wp_texto.Clear;
   Frm_Editor_Word.wp_texto.LoadFromFile(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem);
   end;
if Frm_Editor_Word.WindowState=WsMinimized then
   Frm_Editor_Word.WindowState:=WsNormal
else
   frm_Editor_Word.Show;


end;

procedure TFrm_PPal.saiconf_0106Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);

Frm_Editor_Word.Panel_rodape.Visible:=true;
Frm_Editor_Word.TsLegendaOrcam.TabVisible:=true;
Frm_Editor_Word.wp_texto.ReadOnly:=false;
meditor_word_origem:='ORCAMENTO_NORMAL.rtf';


if FileExists(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem) then
   begin
   Frm_Editor_Word.wp_texto.Clear;
   Frm_Editor_Word.wp_texto.LoadFromFile(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem);
   end;
if Frm_Editor_Word.WindowState=WsMinimized then
   Frm_Editor_Word.WindowState:=WsNormal
else
   frm_Editor_Word.Show;


end;

procedure TFrm_PPal.saiconf_0109Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);

Frm_Editor_Word.Panel_rodape.Visible:=true;
Frm_Editor_Word.TsLegendaOrcam.TabVisible:=true;
Frm_Editor_Word.wp_texto.ReadOnly:=false;
meditor_word_origem:='LISTA_SEPARACAO.rtf';


if FileExists(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem) then
   begin
   Frm_Editor_Word.wp_texto.Clear;
   Frm_Editor_Word.wp_texto.LoadFromFile(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem);
   end;
if Frm_Editor_Word.WindowState=WsMinimized then
   Frm_Editor_Word.WindowState:=WsNormal
else
   frm_Editor_Word.Show;


end;

procedure TFrm_PPal.saiconf_0112Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedido_fortes'));
if (testeform=nil)  then
   Application.Createform(TFrm_Pedido_Fortes, Frm_Pedido_Fortes);
Frm_pedido_Fortes.Ts_Relatorio.TabVisible:=false;

if Frm_Pedido_Fortes.WindowState=WsMinimized then
   Frm_Pedido_Fortes.WindowState:=WsNormal
else
   Frm_Pedido_Fortes.Show;

end;

procedure TFrm_PPal.mven_118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_planilha'));
if (testeform=nil)  then
   Application.createform(TFrm_Planilha,Frm_Planilha);
if Frm_Planilha.WindowState=WsMinimized then
   Frm_Planilha.WindowState:=WsNormal
else
   Frm_Planilha.Show;

end;

procedure TFrm_PPal.FabricaoporEncomenda1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_pedxindustria'));
if (testeform=nil)  then
   Application.createform(Tfrm_PedxIndustria,frm_PedxIndustria);

if frm_PedxIndustria.WindowState=WsMinimized then
   frm_PedxIndustria.WindowState:=WsNormal
else
   frm_PedxIndustria.Show;

end;

procedure TFrm_PPal.saiconf_0115Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ped_calccomis'));
if (testeform=nil)  then
   Application.createform(Tfrm_Ped_CalcComis,frm_Ped_CalcComis);

if frm_Ped_CalcComis.WindowState=WsMinimized then
   frm_Ped_CalcComis.WindowState:=WsNormal
else
   frm_Ped_CalcComis.Show;
end;

procedure TFrm_PPal.rven_0153Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_demonstrativo'));
if (testeform=nil)  then
    Application.createform(Tfrm_demonstrativo,frm_demonstrativo);

if frm_demonstrativo.WindowState=WsMinimized then
   frm_demonstrativo.WindowState:=WsNormal
else
   frm_demonstrativo.Show;
end;

procedure TFrm_PPal.saiconf_0118Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_editor_pedop'));
if (testeform=nil)  then
   Application.createform(TFrm_Editor_PedOP,Frm_Editor_PedOP);

Frm_Editor_PedOP.Panel_rodape.Visible:=true;
Frm_Editor_PedOP.TsLegendaOrcam.TabVisible:=true;
Frm_Editor_PedOP.wp_texto.ReadOnly:=false;
Frm_Editor_PedOP.wp_texto.Clear;
if Frm_Editor_PedOP.WindowState=WsMinimized then
   Frm_Editor_PedOP.WindowState:=WsNormal
else
   frm_Editor_PedOP.Show;


end;

procedure TFrm_PPal.sai_0118Click(Sender: TObject);
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin

   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);

   exit;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_lic1'));
if (testeform=nil)  then
   Application.createform(TFrm_lic1,Frm_lic1);

if Frm_Lic1.WindowState=WsMinimized then
   Frm_Lic1.WindowState:=WsNormal
else
   frm_Lic1.Show;
end;

procedure TFrm_PPal.CalcularCoeficiente1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_coefic'));
if (testeform=nil)  then
   Application.createform(TFrm_coefic,frm_coefic);
if Frm_coefic.WindowState=WsMinimized then
   frm_coefic.WindowState:=WsNormal
else
   frm_coefic.Show;
end;

procedure TFrm_PPal.RelatrioComparativodeComisses1Click(Sender: TObject);
begin
fmensagem('Em Desenvolvimento!',0,['0'],0);
end;


procedure TFrm_PPal.UltimasVendas1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_ultven'));
if (testeform=nil)  then
   Application.createform(TFrm_UltVen,Frm_UltVen);
if Frm_UltVen.WindowState=WsMinimized then
   Frm_UltVen.WindowState:=WsNormal
else
   Frm_UltVen.Show;

end;

procedure TFrm_PPal.cp_0215Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
flparldr(0,'CADDAPD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin

   fmensagem('Esta Faltando o Parametro de devolução (CADDAPD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',0,['0'],0);

   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;
testeform := TFrm_PPal(FindGlobalComponent('frm_bdev_for'));
if (testeform=nil)  then
   Application.createform(TFrm_BDEV_For,Frm_BDEV_For);
if Frm_BDEV_For.WindowState=WsMinimized then
   Frm_BDEV_For.WindowState:=WsNormal
else
   frm_BDEV_For.Show;

end;

procedure TFrm_PPal.rfor_0124Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_vdagforcotas'));
if (testeform=nil)  then
  begin
  Application.createform(TFrm_VdaGForCotas,Frm_VdaGForCotas);
  end;
if Frm_VdaGForCotas.WindowState=WsMinimized then
  begin
  Frm_VdaGForCotas.WindowState:=WsNormal;
  end
else
  begin
  Frm_VdaGForCotas.Show;
  end;



end;

procedure TFrm_PPal.MateriaisdeEnvase1Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rel_env'));
if (testeform=nil)  then
   Application.createform(Tfrm_rel_env,frm_rel_env);
if frm_rel_env.WindowState=WsMinimized then
   frm_rel_env.WindowState:=WsNormal
else
   frm_rel_env.Show;

end;

procedure TFrm_PPal.mpro_0301Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_Pro_Replica_Precos'));
frm_Pro_Replica_Precos.FormStyle:=fsstayontop;
if frm_Pro_Replica_Precos.WindowState=WsMinimized then
   frm_Pro_Replica_Precos.WindowState:=WsNormal
else
   frm_Pro_Replica_Precos.Show;
end;

procedure TFrm_PPal.sai_0202Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_sobra_dev'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_sobra_dev, Frm_Sobra_dev);
if frm_sobra_dev.WindowState=WsMinimized then
   Frm_sobra_dev.WindowState:=WsNormal
else
   frm_sobra_dev.Show;
end;

procedure TFrm_PPal.cr_0242Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_relrecbcartao'));
if (testeform=nil)  then
   Application.createform(Tfrm_RelRecbCartao,frm_RelRecbCartao);
if frm_RelRecbCartao.WindowState=WsMinimized then
   frm_RelRecbCartao.WindowState:=WsNormal
else
   frm_RelRecbCartao.Show;

end;

procedure TFrm_PPal.mpro_0155Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_APcusAcabado'));
if (testeform=nil)  then
   Application.createform(TFrm_APcusAcabado,Frm_APcusAcabado);
if Frm_APcusAcabado.WindowState=WsMinimized then
   Frm_APcusAcabado.WindowState:=WsNormal
else
   Frm_APcusAcabado.Show;
end;

procedure TFrm_PPal.cr_0930Click(Sender: TObject);
begin
if codusr<>1111 then
  begin
  fmensagem('Em Desenvolvimento!!!',0,['0'],0);
  end
else
  begin

  testeform := TFrm_PPal(FindGlobalComponent('frm_DRE'));
  if (testeform=nil)  then
     Application.createform(TFrm_DRE,Frm_DRE);
  if Frm_DRE.WindowState=WsMinimized then
     Frm_DRE.WindowState:=WsNormal
  else
    Frm_DRE.Show;
  end;
end;

procedure TFrm_PPal.rped_0119Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_nfsser'));
if (testeform=nil)  then
   Application.createform(TFrm_nfsser,Frm_nfsser);
if Frm_nfsser.WindowState=WsMinimized then
   Frm_nfsser.WindowState:=WsNormal
else
   Frm_nfsser.Show;

end;

procedure TFrm_PPal.mloc_0108Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('Frm_MCodL'));
if testeform=nil then
   Application.CreateForm(TFrm_MCodL, Frm_MCodL);

if Frm_MCodL.WindowState=WsMinimized then
   Frm_MCodL.WindowState:=WsNormal
else
   frm_MCodL.Show;

end;

procedure TFrm_PPal.FormShow(Sender: TObject);
begin
//   Windows.SetParent(frm_ppal.Handle,ClientHandle);
Windows.SetParent(ppal.Handle,ClientHandle);

end;

procedure TFrm_PPal.rger_0209Click(Sender: TObject);
begin
testeform := TFrm_PPal(FindGlobalComponent('frm_rcpreal'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_RCPReal, Frm_RCPReal);

if Frm_RCPReal.WindowState=WsMinimized then
   Frm_RCPReal.WindowState:=WsNormal
else
   frm_RCPReal.Show;

end;

end.


