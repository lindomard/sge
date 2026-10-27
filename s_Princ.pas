unit s_Princ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, Menus, ExtCtrls, AppEvnts,
  WPRTEDefs, WPCTRMemo, WPCTRRich, StdCtrls, Buttons, dbcgrids, Grids,
  DBGrids, DBCtrls, ScktComp, S_Per2,s_ccob,s_RelRecbCartao,db, dbtables,
  ActnList,  S_PesqProd_Menu,S_Ind_Fab, S_Pro_Nov_Menu,
  S_ProConf,S_ProSimples01, S_Pro,S_MedPro02,s_Caixa_Provisoes,S_ProCodBar,
  S_Pcus, S_LucroPro, RxDBComb, s_REVECF, Registry,WinSvc,S_LERARQ_GERAL,
  Spin, IdBaseComponent, IdComponent, IdTCPServer, S_RCRec, ADODB,s_Pro_Fracionar
  ,s_PlanoCtaEfd;

type
  TFrm_Princ = class(TForm)
    CoolBar1: TCoolBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    mpro_0103: TMenuItem;
    mpro_0181: TMenuItem;
    mpro_0172: TMenuItem;
    N2: TMenuItem;
    mpro_0166: TMenuItem;
    NMP: TMenuItem;
    mpro_0115: TMenuItem;
    mpro_0118: TMenuItem;
    mpro_0121: TMenuItem;
    mpro_0124: TMenuItem;
    mpro_0148: TMenuItem;
    mpro_0193: TMenuItem;
    N3: TMenuItem;
    PedidodeCompra1: TMenuItem;
    mpro_0203: TMenuItem;
    mpro_0206: TMenuItem;
    N35: TMenuItem;
    mpro_0209: TMenuItem;
    N4: TMenuItem;
    mpro_0112: TMenuItem;
    N5: TMenuItem;
    AjustedeEstoque: TMenuItem;
    mpro_0127: TMenuItem;
    mpro_0128: TMenuItem;
    mpro_0129: TMenuItem;
    mpro_0175: TMenuItem;
    mpro_0184: TMenuItem;
    Balano1: TMenuItem;
    mpro_0163: TMenuItem;
    N42: TMenuItem;
    minventario: TMenuItem;
    mpro_0157: TMenuItem;
    mpro_0169: TMenuItem;
    N6: TMenuItem;
    ExportarProd: TMenuItem;
    mpro_0106: TMenuItem;
    mpro_0190: TMenuItem;
    Importar1: TMenuItem;
    mpro_0130: TMenuItem;
    mpro_0178: TMenuItem;
    mpro_0109: TMenuItem;
    AlteraesdePreos1: TMenuItem;
    mpro_0145: TMenuItem;
    mpro_0187: TMenuItem;
    mpro_0301: TMenuItem;
    Custos1: TMenuItem;
    mpro_0133: TMenuItem;
    mpro_0142: TMenuItem;
    mpro_0154: TMenuItem;
    mpro_0155: TMenuItem;
    N24: TMenuItem;
    Especiais2: TMenuItem;
    mpro_0151: TMenuItem;
    N46: TMenuItem;
    mpro_0160: TMenuItem;
    UltimasVendas1: TMenuItem;
    Localidades1: TMenuItem;
    mloc_0103: TMenuItem;
    N44: TMenuItem;
    mloc_0106: TMenuItem;
    mloc_0108: TMenuItem;
    mloc_0112: TMenuItem;
    mloc_0115: TMenuItem;
    N45: TMenuItem;
    mloc_0107: TMenuItem;
    mloc_0109: TMenuItem;
    Fornecedores1: TMenuItem;
    mfor_0103: TMenuItem;
    mfor_0106: TMenuItem;
    N31: TMenuItem;
    mfor_0109: TMenuItem;
    mfor_0110: TMenuItem;
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
    mcli_0136: TMenuItem;
    mcli_0139: TMenuItem;
    Vendedor1: TMenuItem;
    mven_0103: TMenuItem;
    N64: TMenuItem;
    mven_0112: TMenuItem;
    mven_0118: TMenuItem;
    mven_0121: TMenuItem;
    N57: TMenuItem;
    mven_0106: TMenuItem;
    N58: TMenuItem;
    mven_0109: TMenuItem;
    N39: TMenuItem;
    mven_0115: TMenuItem;
    mven_118: TMenuItem;
    ransportadora1: TMenuItem;
    mtra_0103: TMenuItem;
    Caixa1: TMenuItem;
    mcai_0103: TMenuItem;
    mcai_0106: TMenuItem;
    mcai_0107: TMenuItem;
    mcai_0109: TMenuItem;
    mcai_0112: TMenuItem;
    mcai_0115: TMenuItem;
    mcai_0118: TMenuItem;
    mcai_0121: TMenuItem;
    mcai_0124: TMenuItem;
    mcai_0127: TMenuItem;
    N78: TMenuItem;
    mcai_0130: TMenuItem;
    N97: TMenuItem;
    mcai_0133: TMenuItem;
    Industria1: TMenuItem;
    mind_0103: TMenuItem;
    mind_0106: TMenuItem;
    mind_0115: TMenuItem;
    mind_0109: TMenuItem;
    mind_0112: TMenuItem;
    mind_0118: TMenuItem;
    mind_0139: TMenuItem;
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
    Industria_Envase: TMenuItem;
    mIndEnv_0103: TMenuItem;
    mIndEnv_0106: TMenuItem;
    mIndEnv_0109: TMenuItem;
    mIndEnv_0115: TMenuItem;
    mIndEnv_0116: TMenuItem;
    Usurios1: TMenuItem;
    musu_0103: TMenuItem;
    musu_0106: TMenuItem;
    musu_0109: TMenuItem;
    N43: TMenuItem;
    musu_0112: TMenuItem;
    Diversos1: TMenuItem;
    mdiv_0103: TMenuItem;
    mdiv_0118: TMenuItem;
    mdiv_0106: TMenuItem;
    mdiv_0109: TMenuItem;
    N67: TMenuItem;
    mdiv_0112: TMenuItem;
    N70: TMenuItem;
    mdiv_0115: TMenuItem;
    N94: TMenuItem;
    mdiv_0121: TMenuItem;
    mdiv_0124: TMenuItem;
    N95: TMenuItem;
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
    mfol_0125: TMenuItem;
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
    rcli_0128: TMenuItem;
    rcli_0109: TMenuItem;
    rcli_0112: TMenuItem;
    rcli_0115: TMenuItem;
    rcli_0118: TMenuItem;
    Rel_Convenio: TMenuItem;
    rcli_0303: TMenuItem;
    rcli_0306: TMenuItem;
    rcli_0121: TMenuItem;
    N71: TMenuItem;
    rcli_0127: TMenuItem;
    Fornecedores2: TMenuItem;
    rfor_0121: TMenuItem;
    N96: TMenuItem;
    rfor_0103: TMenuItem;
    N11: TMenuItem;
    rfor_0106: TMenuItem;
    rfor_0109: TMenuItem;
    N12: TMenuItem;
    rfor_0112: TMenuItem;
    rfor_0115: TMenuItem;
    N32: TMenuItem;
    rfor_0118: TMenuItem;
    rfor_0124: TMenuItem;
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
    N80: TMenuItem;
    rpro_0133: TMenuItem;
    rpro_0166: TMenuItem;
    rpro_0169: TMenuItem;
    N79: TMenuItem;
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
    rpro_0181: TMenuItem;
    rpro_0160: TMenuItem;
    rpro_0187: TMenuItem;
    rpro_0178: TMenuItem;
    Estados2: TMenuItem;
    rest_0103: TMenuItem;
    N13: TMenuItem;
    rest_0106: TMenuItem;
    rest_0109: TMenuItem;
    N14: TMenuItem;
    rest_0112: TMenuItem;
    rest_0115: TMenuItem;
    rel_localidades: TMenuItem;
    rest_0118: TMenuItem;
    Bairros1: TMenuItem;
    rest_0121: TMenuItem;
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
    rger_0224: TMenuItem;
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
    N81: TMenuItem;
    rger_0260: TMenuItem;
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
    N89: TMenuItem;
    rger_0263: TMenuItem;
    N93: TMenuItem;
    rger_0266: TMenuItem;
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
    rven_0136: TMenuItem;
    N87: TMenuItem;
    rven_0142: TMenuItem;
    rven_0148: TMenuItem;
    N75: TMenuItem;
    rven_0145: TMenuItem;
    N40: TMenuItem;
    rven_0151: TMenuItem;
    N41: TMenuItem;
    rven_0153: TMenuItem;
    RelatrioComparativodeComisses1: TMenuItem;
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
    rped_0109: TMenuItem;
    rped_0101: TMenuItem;
    rped_0112: TMenuItem;
    rped_0115: TMenuItem;
    rped_0118: TMenuItem;
    rped_0119: TMenuItem;
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
    rind_0106: TMenuItem;
    Funcionrios1: TMenuItem;
    rfun_0001: TMenuItem;
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
    sai_0202: TMenuItem;
    sai_0109: TMenuItem;
    sai_0112: TMenuItem;
    sai_0148: TMenuItem;
    sai_0127: TMenuItem;
    sai_0157: TMenuItem;
    sai_0142: TMenuItem;
    sai_0115: TMenuItem;
    Licitacoes: TMenuItem;
    sai_0118: TMenuItem;
    sai_0121: TMenuItem;
    sai_0193: TMenuItem;
    sai_0133: TMenuItem;
    sai_0136: TMenuItem;
    sai_0154: TMenuItem;
    sai_0139: TMenuItem;
    sai_0184: TMenuItem;
    sai_0145: TMenuItem;
    sai_0151: TMenuItem;
    consembprod: TMenuItem;
    sai_0187: TMenuItem;
    sai_0190: TMenuItem;
    DispositivosMveis1: TMenuItem;
    sis_0612: TMenuItem;
    sis_0615: TMenuItem;
    N49: TMenuItem;
    sis_0621: TMenuItem;
    N47: TMenuItem;
    sis_0618: TMenuItem;
    Minuta: TMenuItem;
    sai_0106: TMenuItem;
    sai_0160: TMenuItem;
    sai_0181: TMenuItem;
    sai_0196: TMenuItem;
    N83: TMenuItem;
    conhecimento: TMenuItem;
    sai_0163: TMenuItem;
    sai_0166: TMenuItem;
    sai_0172: TMenuItem;
    sai_0169: TMenuItem;
    sai_0175: TMenuItem;
    sai_0178: TMenuItem;
    N38: TMenuItem;
    sai_0199: TMenuItem;
    romaneio: TMenuItem;
    sai_0124: TMenuItem;
    os: TMenuItem;
    mos_0103: TMenuItem;
    mos_0106: TMenuItem;
    N48: TMenuItem;
    contratos: TMenuItem;
    mos_0109: TMenuItem;
    mos_0115: TMenuItem;
    N76: TMenuItem;
    mos_0118: TMenuItem;
    N61: TMenuItem;
    mos_0112: TMenuItem;
    ParametrosConfiguraes1: TMenuItem;
    saiconf_0103: TMenuItem;
    saiconf_0106: TMenuItem;
    saiconf_0109: TMenuItem;
    saiconf_0112: TMenuItem;
    saiconf_0115: TMenuItem;
    saiconf_0118: TMenuItem;
    sai_0152: TMenuItem;
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
    lf_0151: TMenuItem;
    LivrosFiscais2: TMenuItem;
    lf_0103: TMenuItem;
    lf_0106: TMenuItem;
    lf_0109: TMenuItem;
    lf_0148: TMenuItem;
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
    N90: TMenuItem;
    lf_0154: TMenuItem;
    Exportaes1: TMenuItem;
    lf_0133: TMenuItem;
    lf_0139: TMenuItem;
    Financeiro1: TMenuItem;
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
    cr_0212: TMenuItem;
    cr_0230: TMenuItem;
    N84: TMenuItem;
    cr_0233: TMenuItem;
    cr_0236: TMenuItem;
    cr_0239: TMenuItem;
    N50: TMenuItem;
    cr_0242: TMenuItem;
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
    N69: TMenuItem;
    CobranaIntercmbioEletroni1: TMenuItem;
    rcr_0124: TMenuItem;
    rcr_0127: TMenuItem;
    N86: TMenuItem;
    rcr_0130: TMenuItem;
    N91: TMenuItem;
    rcr_0139: TMenuItem;
    cr_0928: TMenuItem;
    ContasaPagar1: TMenuItem;
    cp_0103: TMenuItem;
    BaixadeDuplicatas1: TMenuItem;
    cp_0203: TMenuItem;
    cp_0206: TMenuItem;
    cp_0209: TMenuItem;
    cp_0212: TMenuItem;
    cp_0215: TMenuItem;
    Relatrio2: TMenuItem;
    cp_0303: TMenuItem;
    cp_0306: TMenuItem;
    cp_0309: TMenuItem;
    N85: TMenuItem;
    cp_0312: TMenuItem;
    cp_0109: TMenuItem;
    cp_0130: TMenuItem;
    N74: TMenuItem;
    cp_0112: TMenuItem;
    N77: TMenuItem;
    cp_0115: TMenuItem;
    cp_0118: TMenuItem;
    cp_0121: TMenuItem;
    cp_0124: TMenuItem;
    cp_0127: TMenuItem;
    CalculosDiversos1: TMenuItem;
    cr_0903: TMenuItem;
    cr_0906: TMenuItem;
    cr_0909: TMenuItem;
    cr_0912: TMenuItem;
    cr_0918: TMenuItem;
    cr_0919: TMenuItem;
    cr_0915: TMenuItem;
    cr_0921: TMenuItem;
    cr_0924: TMenuItem;
    cr_0927: TMenuItem;
    cr_0929: TMenuItem;
    cr_0930: TMenuItem;
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
    N72: TMenuItem;
    sis_0138: TMenuItem;
    N73: TMenuItem;
    sis_0141: TMenuItem;
    N92: TMenuItem;
    sis_0144: TMenuItem;
    sis_0147: TMenuItem;
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
    N82: TMenuItem;
    sis_0245: TMenuItem;
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
    ParametrosTiposdePedidos1: TMenuItem;
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
    Integraes1: TMenuItem;
    sis2103: TMenuItem;
    ToolBar1: TToolBar;
    HeaderControl1: THeaderControl;
    ToolBar2: TToolBar;
    ImageList_favoritos: TImageList;
    ApplicationEvents1: TApplicationEvents;
    Image1: TImage;
    Timer2: TTimer;
    Timer1: TTimer;
    ActionList1: TActionList;
    bbcadastroprod: TSpeedButton;
    bbcadastroforn: TSpeedButton;
    bbcadastroclie: TSpeedButton;
    bbpedidocompra: TSpeedButton;
    bbpedidovenda: TSpeedButton;
    ImageList2: TImageList;
    mpro_0185: TMenuItem;
    N59: TMenuItem;
    mos_0121: TMenuItem;
    SAC1: TMenuItem;
    N98: TMenuItem;
    mcai_0136: TMenuItem;
    mpro_0207: TMenuItem;
    N99: TMenuItem;
    ConsultasdeRe1: TMenuItem;
    rel_0103: TMenuItem;
    lf_0157_menu: TMenuItem;
    rtra_0104: TMenuItem;
    mIndEnv_0117: TMenuItem;
    mfor_0111: TMenuItem;
    mcli_0125: TMenuItem;
    rcli_0122: TMenuItem;
    RelaodeProdues1: TMenuItem;
    mind_0122: TMenuItem;
    saiconf_0119: TMenuItem;
    N88: TMenuItem;
    Mensagem1: TMenuItem;
    sis_0903: TMenuItem;
    sis_0906: TMenuItem;
    sis_0909: TMenuItem;
    rpro_0161: TMenuItem;
    ManipularItensdoPedido1: TMenuItem;
    N101: TMenuItem;
    sis_0248: TMenuItem;
    N102: TMenuItem;
    rven_0156: TMenuItem;
    N103: TMenuItem;
    sis_0251: TMenuItem;
    rven_0152: TMenuItem;
    N104: TMenuItem;
    rpro_0162: TMenuItem;
    rpro_0163: TMenuItem;
    ExportarEmailCSV1: TMenuItem;
    sai_0128: TMenuItem;
    bbrelanalitico: TSpeedButton;
    bbbaixa: TSpeedButton;
    bbprevxreal: TSpeedButton;
    rger_0261: TMenuItem;
    rger_0262: TMenuItem;
    mpro_0194: TMenuItem;
    m_ConexaoRemota: TMenuItem;
    sis_0254: TMenuItem;
    rven_0154: TMenuItem;
    Timer3: TTimer;
    lbl_mensagem: TLabel;
    Timer4: TTimer;
    mind_0123: TMenuItem;
    GerarArquivos1: TMenuItem;
    sis0645: TMenuItem;
    N105: TMenuItem;
    mcai_0137: TMenuItem;
    InformaesExtraMGV51: TMenuItem;
    rpro_0117: TMenuItem;
    CustodeHoraporOperao1: TMenuItem;
    Timer5: TTimer;
    rped_0120: TMenuItem;
    rped_0121: TMenuItem;
    ListarCompras1: TMenuItem;
    rger_0265: TMenuItem;
    mpro_0195: TMenuItem;
    sis_0643: TMenuItem;
    mpro_0186: TMenuItem;
    rsai_0112: TMenuItem;
    EstoqueDia1: TMenuItem;
    rsai_0115: TMenuItem;
    lf_0157: TMenuItem;
    lf_0160: TMenuItem;
    mcai_0140: TMenuItem;
    mcai_0143: TMenuItem;
    CompararCAT52xPedidos1: TMenuItem;
    ExportarPedidoEletrnico1: TMenuItem;
    sai_0122: TMenuItem;
    Cotao1: TMenuItem;
    lf_0163: TMenuItem;
    GeraremExcel1: TMenuItem;
    Extrato3MovimentaoGeral1: TMenuItem;
    lf_0147: TMenuItem;
    lf_0166: TMenuItem;
    BaixaOs1: TMenuItem;
    RelatoriodeNotasdeSaidasClientexNcm1: TMenuItem;
    mpro_0152: TMenuItem;
    sai_0123: TMenuItem;
    rpfor_0106: TMenuItem;
    cp_0313: TMenuItem;
    mind_0126: TMenuItem;
    rped_0124: TMenuItem;
    ImportadorExcel: TMenuItem;
    rped_0102: TMenuItem;
    Licitacoes1: TMenuItem;
    rel_1003: TMenuItem;
    mIndEnv_0107: TMenuItem;
    cr_0933: TMenuItem;
    mIndEnv_0120: TMenuItem;
    FaturardoXML1: TMenuItem;
    mpro_0189: TMenuItem;
    este1: TMenuItem;
    ComissoporProdutonoRecebimento1: TMenuItem;
    mpro_0212: TMenuItem;
    EnviarEmail1: TMenuItem;
    mdiv_0127: TMenuItem;
    mpro_0197: TMenuItem;
    ransferenciadeArquivosFTP1: TMenuItem;
    este2: TMenuItem;
    sai_0155: TMenuItem;
    cfo_0104: TMenuItem;
    sai_0126: TMenuItem;
    ManifestodeEntrega1: TMenuItem;
    sai_0158: TMenuItem;
    lf_0169: TMenuItem;
    rcr_0128: TMenuItem;
    sai_0143: TMenuItem;
    mtra_0106: TMenuItem;
    lf_0172: TMenuItem;
    lf_0175: TMenuItem;
    sai_0120: TMenuItem;
    FTP1: TMenuItem;
    mdiv_0130: TMenuItem;
    lf_0178: TMenuItem;
    mdiv_0133: TMenuItem;
    mpro_01100: TMenuItem;
    mpro_0153: TMenuItem;
    mpro_0156: TMenuItem;
    FinanceiroTemp: TMenuItem;
    PixTemp: TMenuItem;
    cr_0931: TMenuItem;
    cr_0934: TMenuItem;
    cr_0937: TMenuItem;
    mpro_0192: TMenuItem;
    CNAE1: TMenuItem;
    lf_0181: TMenuItem;
    lf_0184: TMenuItem;
    lf_0187: TMenuItem;
    IBSCBS1: TMenuItem;
    lf_0190: TMenuItem;
    lf_0193: TMenuItem;
    lf_0196: TMenuItem;
    lf_0199: TMenuItem;
    sai_0161: TMenuItem;
    Servicos1: TMenuItem;
    ributosNacionais1: TMenuItem;
    CSTCBS1: TMenuItem;
    CBS1: TMenuItem;
    IndOpCbs1: TMenuItem;
    CstPisCofins1: TMenuItem;
    ClasseTributaria1: TMenuItem;
    Nbs1: TMenuItem;
    CorrelatoNbsibscbs1: TMenuItem;
    procedure cr_0103Click(Sender: TObject);
    procedure mpro_0115Click(Sender: TObject);
    procedure sai_0103Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mcli_0103Click(Sender: TObject);
    procedure mpro_0172Click(Sender: TObject);
    procedure mpro_0166Click(Sender: TObject);
    procedure mpro_0118Click(Sender: TObject);
    procedure mpro_0121Click(Sender: TObject);
    procedure mpro_0124Click(Sender: TObject);
    procedure mpro_0148Click(Sender: TObject);
    procedure mpro_0193Click(Sender: TObject);
    procedure mpro_0203Click(Sender: TObject);
    procedure mpro_0206Click(Sender: TObject);
    procedure mpro_0209Click(Sender: TObject);
    procedure mpro_0112Click(Sender: TObject);
    procedure mpro_0127Click(Sender: TObject);
    procedure mpro_0128Click(Sender: TObject);
    procedure mpro_0129Click(Sender: TObject);
    procedure mpro_0175Click(Sender: TObject);
    procedure mpro_0163Click(Sender: TObject);
    procedure mpro_0157Click(Sender: TObject);
    procedure mpro_0169Click(Sender: TObject);
    procedure mpro_0106Click(Sender: TObject);
    procedure mpro_0190Click(Sender: TObject);
    procedure mpro_0145Click(Sender: TObject);
    procedure mpro_0187Click(Sender: TObject);
    procedure mpro_0301Click(Sender: TObject);
    procedure mpro_0130Click(Sender: TObject);
    procedure mpro_0178Click(Sender: TObject);
    procedure mpro_0109Click(Sender: TObject);
    procedure mpro_0133Click(Sender: TObject);
    procedure mpro_0142Click(Sender: TObject);
    procedure mpro_0154Click(Sender: TObject);
    procedure mpro_0155Click(Sender: TObject);
    procedure mpro_0151Click(Sender: TObject);
    procedure mpro_0160Click(Sender: TObject);
    procedure UltimasVendas1Click(Sender: TObject);
    procedure mloc_0103Click(Sender: TObject);
    procedure mloc_0106Click(Sender: TObject);
    procedure mloc_0108Click(Sender: TObject);
    procedure mloc_0112Click(Sender: TObject);
    procedure mloc_0115Click(Sender: TObject);
    procedure mloc_0107Click(Sender: TObject);
    procedure mloc_0109Click(Sender: TObject);
    procedure mfor_0103Click(Sender: TObject);
    procedure mfor_0109Click(Sender: TObject);
    procedure mfor_0110Click(Sender: TObject);
    procedure mcli_0109Click(Sender: TObject);
    procedure mcli_0112Click(Sender: TObject);
    procedure mcli_0115Click(Sender: TObject);
    procedure mcli_0118Click(Sender: TObject);
    procedure mcli_0121Click(Sender: TObject);
    procedure mcli_0124Click(Sender: TObject);
    procedure mcli_0106Click(Sender: TObject);
    procedure mcli_0133Click(Sender: TObject);
    procedure mcli_0136Click(Sender: TObject);
    procedure mcli_0139Click(Sender: TObject);
    procedure mven_0103Click(Sender: TObject);
    procedure mven_0112Click(Sender: TObject);
    procedure mven_0118Click(Sender: TObject);
    procedure mven_0121Click(Sender: TObject);
    procedure mven_0106Click(Sender: TObject);
    procedure mven_0109Click(Sender: TObject);
    procedure mven_0115Click(Sender: TObject);
    procedure mven_118Click(Sender: TObject);
    procedure mtra_0103Click(Sender: TObject);
    procedure mcai_0103Click(Sender: TObject);
    procedure mcai_0106Click(Sender: TObject);
    procedure mcai_0107Click(Sender: TObject);
    procedure mcai_0109Click(Sender: TObject);
    procedure mcai_0112Click(Sender: TObject);
    procedure mcai_0115Click(Sender: TObject);
    procedure mcai_0118Click(Sender: TObject);
    procedure mcai_0121Click(Sender: TObject);
    procedure mcai_0124Click(Sender: TObject);
    procedure mcai_0127Click(Sender: TObject);
    procedure mcai_0130Click(Sender: TObject);
    procedure mcai_0133Click(Sender: TObject);
    procedure mind_0103Click(Sender: TObject);
    procedure mind_0106Click(Sender: TObject);
    procedure mind_0115Click(Sender: TObject);
    procedure mind_0118Click(Sender: TObject);
    procedure mind_0139Click(Sender: TObject);
    procedure mind_0121Click(Sender: TObject);
    procedure mind_0124Click(Sender: TObject);
    procedure mind_0130Click(Sender: TObject);
    procedure mind_0136Click(Sender: TObject);
    procedure mind_0133Click(Sender: TObject);
    procedure mIndEnv_0103Click(Sender: TObject);
    procedure mIndEnv_0106Click(Sender: TObject);
    procedure mIndEnv_0109Click(Sender: TObject);
    procedure mIndEnv_0115Click(Sender: TObject);
    procedure mIndEnv_0116Click(Sender: TObject);
    procedure musu_0103Click(Sender: TObject);
    procedure musu_0106Click(Sender: TObject);
    procedure musu_0112Click(Sender: TObject);
    procedure musu_0109Click(Sender: TObject);
    procedure mdiv_0103Click(Sender: TObject);
    procedure mdiv_0118Click(Sender: TObject);
    procedure mdiv_0106Click(Sender: TObject);
    procedure mdiv_0109Click(Sender: TObject);
    procedure mdiv_0112Click(Sender: TObject);
    procedure mdiv_0115Click(Sender: TObject);
    procedure mdiv_0121Click(Sender: TObject);
    procedure mdiv_0124Click(Sender: TObject);
    procedure mfol_0106Click(Sender: TObject);
    procedure mfol_0103Click(Sender: TObject);
    procedure mfol_0109Click(Sender: TObject);
    procedure mfol_0124Click(Sender: TObject);
    procedure mfol_0121Click(Sender: TObject);
    procedure mfol_0118Click(Sender: TObject);
    procedure mfol_0133Click(Sender: TObject);
    procedure mfol_0127Click(Sender: TObject);
    procedure mfol_0130Click(Sender: TObject);
    procedure mfol_0115Click(Sender: TObject);
    procedure mimo_0103Click(Sender: TObject);
    procedure mimo_0106Click(Sender: TObject);
    procedure mImo_0109Click(Sender: TObject);
    procedure mvei_0103Click(Sender: TObject);
    procedure mvei_0106Click(Sender: TObject);
    procedure mvei_0109Click(Sender: TObject);
    procedure mmoe_0103Click(Sender: TObject);
    procedure mmoe_0106Click(Sender: TObject);
    procedure rcli_0106Click(Sender: TObject);
    procedure rcli_0109Click(Sender: TObject);
    procedure rcli_0112Click(Sender: TObject);
    procedure rcli_0115Click(Sender: TObject);
    procedure rcli_0118Click(Sender: TObject);
    procedure rcli_0303Click(Sender: TObject);
    procedure rcli_0306Click(Sender: TObject);
    procedure rcli_0121Click(Sender: TObject);
    procedure rcli_0127Click(Sender: TObject);
    procedure rfor_0121Click(Sender: TObject);
    procedure rfor_0103Click(Sender: TObject);
    procedure rfor_0106Click(Sender: TObject);
    procedure rfor_0109Click(Sender: TObject);
    procedure rfor_0112Click(Sender: TObject);
    procedure rfor_0115Click(Sender: TObject);
    procedure rfor_0118Click(Sender: TObject);
    procedure rfor_0124Click(Sender: TObject);
    procedure rpro_0103Click(Sender: TObject);
    procedure rpro_0106Click(Sender: TObject);
    procedure rpro_0109Click(Sender: TObject);
    procedure rpro_0121Click(Sender: TObject);
    procedure rpro_0112Click(Sender: TObject);
    procedure rpro_0115Click(Sender: TObject);
    procedure rpro_0118Click(Sender: TObject);
    procedure rpro_0133Click(Sender: TObject);
    procedure rpro_0127Click(Sender: TObject);
    procedure rpro_0166Click(Sender: TObject);
    procedure rpro_0169Click(Sender: TObject);
    procedure rpro_0136Click(Sender: TObject);
    procedure rpro_0184Click(Sender: TObject);
    procedure rpro_0157Click(Sender: TObject);
    procedure rpro_0139Click(Sender: TObject);
    procedure rpro_0145Click(Sender: TObject);
    procedure rpro_0142Click(Sender: TObject);
    procedure rpro_0148Click(Sender: TObject);
    procedure rpro_0151Click(Sender: TObject);
    procedure rpro_0154Click(Sender: TObject);
    procedure rpro_0181Click(Sender: TObject);
    procedure rpro_0160Click(Sender: TObject);
    procedure rpro_0187Click(Sender: TObject);
    procedure rest_0103Click(Sender: TObject);
    procedure rest_0106Click(Sender: TObject);
    procedure rest_0109Click(Sender: TObject);
    procedure rest_0112Click(Sender: TObject);
    procedure rest_0115Click(Sender: TObject);
    procedure rest_0118Click(Sender: TObject);
    procedure rest_0121Click(Sender: TObject);
    procedure rtpro_0103Click(Sender: TObject);
    procedure rtpro_0106Click(Sender: TObject);
    procedure rtpro_0109Click(Sender: TObject);
    procedure rtpro_0112Click(Sender: TObject);
    procedure rtpro_0115Click(Sender: TObject);
    procedure rgpro_0103Click(Sender: TObject);
    procedure rgpro_0106Click(Sender: TObject);
    procedure rgpro_0109Click(Sender: TObject);
    procedure rgpro_0112Click(Sender: TObject);
    procedure rgpro_0115Click(Sender: TObject);
    procedure rcpro_0103Click(Sender: TObject);
    procedure rcpro_0106Click(Sender: TObject);
    procedure rcpro_0109Click(Sender: TObject);
    procedure rcpro_0112Click(Sender: TObject);
    procedure rcpro_0115Click(Sender: TObject);
    procedure rger_0103Click(Sender: TObject);
    procedure rger_0115Click(Sender: TObject);
    procedure rger_0224Click(Sender: TObject);
    procedure rger_0200Click(Sender: TObject);
    procedure rger_0209Click(Sender: TObject);
    procedure rger_0212Click(Sender: TObject);
    procedure rger_0215Click(Sender: TObject);
    procedure rger_0218Click(Sender: TObject);
    procedure rger_0221Click(Sender: TObject);
    procedure rger_0230Click(Sender: TObject);
    procedure rger_0245Click(Sender: TObject);
    procedure rger_0248Click(Sender: TObject);
    procedure rger_0257Click(Sender: TObject);
    procedure rger_0260Click(Sender: TObject);
    procedure rger_0227Click(Sender: TObject);
    procedure rger_0233Click(Sender: TObject);
    procedure rger_0236Click(Sender: TObject);
    procedure rger_0239Click(Sender: TObject);
    procedure rger_0242Click(Sender: TObject);
    procedure rger_0251Click(Sender: TObject);
    procedure rger_0254Click(Sender: TObject);
    procedure rger_0263Click(Sender: TObject);
    procedure rger_0266Click(Sender: TObject);
    procedure rven_0103Click(Sender: TObject);
    procedure rven_0118Click(Sender: TObject);
    procedure rven_0121Click(Sender: TObject);
    procedure rven_0124Click(Sender: TObject);
    procedure rven_0133Click(Sender: TObject);
    procedure rven_0106Click(Sender: TObject);
    procedure rven_0109Click(Sender: TObject);
    procedure rven_0112Click(Sender: TObject);
    procedure rven_0130Click(Sender: TObject);
    procedure rven_0127Click(Sender: TObject);
    procedure rven_0115Click(Sender: TObject);
    procedure rven_0142Click(Sender: TObject);
    procedure rven_0148Click(Sender: TObject);
    procedure rven_0145Click(Sender: TObject);
    procedure rven_0151Click(Sender: TObject);
    procedure rven_0153Click(Sender: TObject);
    procedure RelatrioComparativodeComisses1Click(Sender: TObject);
    procedure rtra_0103Click(Sender: TObject);
    procedure rusu_0103Click(Sender: TObject);
    procedure rbco_0103Click(Sender: TObject);
    procedure rfun_0103Click(Sender: TObject);
    procedure rpv_0103Click(Sender: TObject);
    procedure rccu_0103Click(Sender: TObject);
    procedure rdep_0103Click(Sender: TObject);
    procedure rcai_0103Click(Sender: TObject);
    procedure rpfor_0101Click(Sender: TObject);
    procedure rpfor_0103Click(Sender: TObject);
    procedure rped_0301Click(Sender: TObject);
    procedure rped_0103Click(Sender: TObject);
    procedure rped_0109Click(Sender: TObject);
    procedure rped_0101Click(Sender: TObject);
    procedure rped_0112Click(Sender: TObject);
    procedure rped_0115Click(Sender: TObject);
    procedure rped_0118Click(Sender: TObject);
    procedure rped_0119Click(Sender: TObject);
    procedure rrpro_0103Click(Sender: TObject);
    procedure rrpro_0106Click(Sender: TObject);
    procedure rrpro_0109Click(Sender: TObject);
    procedure rrpro_0112Click(Sender: TObject);
    procedure rrpro_0115Click(Sender: TObject);
    procedure rimo_0103Click(Sender: TObject);
    procedure rimo_0106Click(Sender: TObject);
    procedure rvei_0103Click(Sender: TObject);
    procedure rvei_0106Click(Sender: TObject);
    procedure rmoe_0103Click(Sender: TObject);
    procedure ros_0103Click(Sender: TObject);
    procedure rdiv_0103Click(Sender: TObject);
    procedure rind_0103Click(Sender: TObject);
    procedure rind_0106Click(Sender: TObject);
    procedure rfun_0001Click(Sender: TObject);
    procedure est_0103Click(Sender: TObject);
    procedure est_0106Click(Sender: TObject);
    procedure est_0109Click(Sender: TObject);
    procedure est_0124Click(Sender: TObject);
    procedure est_0112Click(Sender: TObject);
    procedure est_0118Click(Sender: TObject);
    procedure est_0121Click(Sender: TObject);
    procedure est_0115Click(Sender: TObject);
    procedure est_0127Click(Sender: TObject);
    procedure est_0130Click(Sender: TObject);
    procedure est_0133Click(Sender: TObject);
    procedure est_0136Click(Sender: TObject);
    procedure est_0139Click(Sender: TObject);
    procedure est_0142Click(Sender: TObject);
    procedure est_0145Click(Sender: TObject);
    procedure est_0148Click(Sender: TObject);
    procedure est_0151Click(Sender: TObject);
    procedure est_0154Click(Sender: TObject);
    procedure est_0157Click(Sender: TObject);
    procedure est_0160Click(Sender: TObject);
    procedure est_0163Click(Sender: TObject);
    procedure est_0166Click(Sender: TObject);
    procedure sai_0202Click(Sender: TObject);
    procedure sai_0109Click(Sender: TObject);
    procedure sai_0142Click(Sender: TObject);
    procedure sai_0118Click(Sender: TObject);
    procedure sai_0121Click(Sender: TObject);
    procedure sai_0133Click(Sender: TObject);
    procedure sai_0136Click(Sender: TObject);
    procedure sai_0154Click(Sender: TObject);
    procedure sai_0139Click(Sender: TObject);
    procedure sai_0184Click(Sender: TObject);
    procedure sai_0145Click(Sender: TObject);
    procedure sai_0151Click(Sender: TObject);
    procedure sai_0106Click(Sender: TObject);
    procedure sai_0160Click(Sender: TObject);
    procedure sai_0181Click(Sender: TObject);
    procedure sai_0196Click(Sender: TObject);
    procedure sai_0163Click(Sender: TObject);
    procedure sai_0166Click(Sender: TObject);
    procedure sai_0172Click(Sender: TObject);
    procedure sai_0169Click(Sender: TObject);
    procedure sai_0175Click(Sender: TObject);
    procedure sai_0178Click(Sender: TObject);
    procedure sai_0124Click(Sender: TObject);
    procedure mos_0103Click(Sender: TObject);
    procedure mos_0106Click(Sender: TObject);
    procedure mos_0109Click(Sender: TObject);
    procedure mos_0115Click(Sender: TObject);
    procedure mos_0118Click(Sender: TObject);
    procedure mos_0112Click(Sender: TObject);
    procedure saiconf_0103Click(Sender: TObject);
    procedure saiconf_0106Click(Sender: TObject);
    procedure saiconf_0109Click(Sender: TObject);
    procedure saiconf_0112Click(Sender: TObject);
    procedure saiconf_0118Click(Sender: TObject);
    procedure rent_0103Click(Sender: TObject);
    procedure rsai_0103Click(Sender: TObject);
    procedure rsai_0106Click(Sender: TObject);
    procedure rsai_0109Click(Sender: TObject);
    procedure gnre0103Click(Sender: TObject);
    procedure cfo_0103Click(Sender: TObject);
    procedure lf_0151Click(Sender: TObject);
    procedure lf_0103Click(Sender: TObject);
    procedure lf_0106Click(Sender: TObject);
    procedure lf_0109Click(Sender: TObject);
    procedure lf_0148Click(Sender: TObject);
    procedure lf_0124Click(Sender: TObject);
    procedure lf_0112Click(Sender: TObject);
    procedure lf_0136Click(Sender: TObject);
    procedure lf_0121Click(Sender: TObject);
    procedure lf_0142Click(Sender: TObject);
    procedure lf_0145Click(Sender: TObject);
    procedure lf_0127Click(Sender: TObject);
    procedure lf_0130Click(Sender: TObject);
    procedure lf_0115Click(Sender: TObject);
    procedure lf_0118Click(Sender: TObject);
    procedure lf_0154Click(Sender: TObject);
    procedure lf_0133Click(Sender: TObject);
    procedure lf_0139Click(Sender: TObject);
    procedure cr_0303Click(Sender: TObject);
    procedure cr_0306Click(Sender: TObject);
    procedure cr_0309Click(Sender: TObject);
    procedure cr_0312Click(Sender: TObject);
    procedure cr_0315Click(Sender: TObject);
    procedure cr_0318Click(Sender: TObject);
    procedure cr_0203Click(Sender: TObject);
    procedure cr_0206Click(Sender: TObject);
    procedure cr_0209Click(Sender: TObject);
    procedure cr_0215Click(Sender: TObject);
    procedure cr_0218Click(Sender: TObject);
    procedure cr_0221Click(Sender: TObject);
    procedure cr_0224Click(Sender: TObject);
    procedure cr_0212Click(Sender: TObject);
    procedure cr_0230Click(Sender: TObject);
    procedure cr_0233Click(Sender: TObject);
    procedure cr_0236Click(Sender: TObject);
    procedure cr_0239Click(Sender: TObject);
    procedure cr_0242Click(Sender: TObject);
    procedure rcr_0106Click(Sender: TObject);
    procedure rcr_0109Click(Sender: TObject);
    procedure rcr_0112Click(Sender: TObject);
    procedure rcr_0115Click(Sender: TObject);
    procedure rcr_0118Click(Sender: TObject);
    procedure rcr_0121Click(Sender: TObject);
    procedure rcr_0124Click(Sender: TObject);
    procedure rcr_0127Click(Sender: TObject);
    procedure rcr_0130Click(Sender: TObject);
    procedure rcr_0139Click(Sender: TObject);
    procedure cr_0928Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure sis_0103Click(Sender: TObject);
    procedure sis_0106Click(Sender: TObject);
    procedure sis_0109Click(Sender: TObject);
    procedure sis_0112Click(Sender: TObject);
    procedure sis_0114Click(Sender: TObject);
    procedure sis_0117Click(Sender: TObject);
    procedure sis_0120Click(Sender: TObject);
    procedure sis_0123Click(Sender: TObject);
    procedure sis_0126Click(Sender: TObject);
    procedure sis_0129Click(Sender: TObject);
    procedure sis_0132Click(Sender: TObject);
    procedure sis_0135Click(Sender: TObject);
    procedure sis_0138Click(Sender: TObject);
    procedure sis_0141Click(Sender: TObject);
    procedure sis_0144Click(Sender: TObject);
    procedure sis_0147Click(Sender: TObject);
    procedure sis_0206Click(Sender: TObject);
    procedure sis_0209Click(Sender: TObject);
    procedure sis_0212Click(Sender: TObject);
    procedure sis_0215Click(Sender: TObject);
    procedure sis_0218Click(Sender: TObject);
    procedure sis_0221Click(Sender: TObject);
    procedure sis_0224Click(Sender: TObject);
    procedure sis_0227Click(Sender: TObject);
    procedure sis_0230Click(Sender: TObject);
    procedure sis_0233Click(Sender: TObject);
    procedure sis_0236Click(Sender: TObject);
    procedure sis_0242Click(Sender: TObject);
    procedure sis_0115Click(Sender: TObject);
    procedure sis_0118Click(Sender: TObject);
    procedure sis_0124Click(Sender: TObject);
    procedure sis_0127Click(Sender: TObject);
    procedure sis_0312Click(Sender: TObject);
    procedure Continua1Click(Sender: TObject);
    procedure sis_0303Click(Sender: TObject);
    procedure sis_0130Click(Sender: TObject);
    procedure sis_0133Click(Sender: TObject);
    procedure sis_0601Click(Sender: TObject);
    procedure sis_0606Click(Sender: TObject);
    procedure sis_0609Click(Sender: TObject);
    procedure ParametrosTiposdePedidos1Click(Sender: TObject);
    procedure sis_0630Click(Sender: TObject);
    procedure sis_0633Click(Sender: TObject);
    procedure sis_0636Click(Sender: TObject);
    procedure sis_0642Click(Sender: TObject);
    procedure sis_0645Click(Sender: TObject);
    procedure sis_0648Click(Sender: TObject);
    procedure sis_0651Click(Sender: TObject);
    procedure sis_0690Click(Sender: TObject);
    procedure sis_0657Click(Sender: TObject);
    procedure sis_0660Click(Sender: TObject);
    procedure sis_0663Click(Sender: TObject);
    procedure sis_0666Click(Sender: TObject);
    procedure sis_0669Click(Sender: TObject);
    procedure sis_0672Click(Sender: TObject);
    procedure sis_0678Click(Sender: TObject);
    procedure sis_0681Click(Sender: TObject);
    procedure sis_0684Click(Sender: TObject);
    procedure sis_0687Click(Sender: TObject);
    procedure sis_0693Click(Sender: TObject);
    procedure mpro_0103Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sis0636Click(Sender: TObject);
    procedure sis0633Click(Sender: TObject);
    procedure sis0630Click(Sender: TObject);
    procedure sis0624Click(Sender: TObject);
    procedure sis0615Click(Sender: TObject);
    procedure sis0618Click(Sender: TObject);
    procedure sis0621Click(Sender: TObject);
    procedure sis0642Click(Sender: TObject);
    procedure sis2103Click(Sender: TObject);
    procedure cp_0103Click(Sender: TObject);
    procedure cp_0203Click(Sender: TObject);
    procedure cp_0206Click(Sender: TObject);
    procedure cp_0209Click(Sender: TObject);
    procedure cp_0212Click(Sender: TObject);
    procedure cp_0215Click(Sender: TObject);
    procedure cp_0303Click(Sender: TObject);
    procedure cp_0306Click(Sender: TObject);
    procedure cp_0312Click(Sender: TObject);
    procedure cp_0130Click(Sender: TObject);
    procedure cp_0112Click(Sender: TObject);
    procedure cp_0115Click(Sender: TObject);
    procedure cp_0121Click(Sender: TObject);
    procedure cp_0124Click(Sender: TObject);
    procedure cp_0127Click(Sender: TObject);
    procedure cr_0903Click(Sender: TObject);
    procedure cr_0906Click(Sender: TObject);
    procedure cr_0909Click(Sender: TObject);
    procedure cr_0912Click(Sender: TObject);
    procedure cr_0918Click(Sender: TObject);
    procedure cr_0919Click(Sender: TObject);
    procedure cr_0915Click(Sender: TObject);
    procedure cr_0921Click(Sender: TObject);
    procedure cr_0924Click(Sender: TObject);
    procedure cr_0927Click(Sender: TObject);
    procedure cr_0929Click(Sender: TObject);
    procedure cr_0930Click(Sender: TObject);
    procedure mind_0109Click(Sender: TObject);
    procedure bbcadastrofornClick(Sender: TObject);
    procedure bbcadastroclieClick(Sender: TObject);
    procedure bbpedidocompraClick(Sender: TObject);
    procedure bbpedidovendaClick(Sender: TObject);
    procedure bbcadastroprodClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EstMinClick(Sender: TObject);
    procedure VAgendaClick(Sender: TObject);
    procedure rcli_0128Click(Sender: TObject);
    procedure mos_0121Click(Sender: TObject);
    procedure SAC1Click(Sender: TObject);
    procedure rpro_0178Click(Sender: TObject);
    procedure mcai_0136Click(Sender: TObject);
    procedure ConsultasdeRe1Click(Sender: TObject);
    procedure rel_0103Click(Sender: TObject);
    procedure rtra_0104Click(Sender: TObject);
    procedure mIndEnv_0117Click(Sender: TObject);
    procedure mfor_0111Click(Sender: TObject);
    procedure mcli_0125Click(Sender: TObject);
    procedure rcli_0122Click(Sender: TObject);
    procedure RelaodeProdues1Click(Sender: TObject);
    procedure mind_0122Click(Sender: TObject);
    procedure saiconf_0119Click(Sender: TObject);
    procedure rpro_0161Click(Sender: TObject);
    procedure ManipularItensdoPedido1Click(Sender: TObject);
    procedure sis_0248Click(Sender: TObject);
    procedure rven_0156Click(Sender: TObject);
    procedure sis_0251Click(Sender: TObject);
    procedure rven_0152Click(Sender: TObject);
    procedure rpro_0162Click(Sender: TObject);
    procedure rpro_0163Click(Sender: TObject);
    procedure ExportarEmailCSV1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbprevxrealClick(Sender: TObject);
    procedure bbbaixaClick(Sender: TObject);
    procedure bbrelanaliticoClick(Sender: TObject);
    procedure rger_0261Click(Sender: TObject);
    procedure rger_0262Click(Sender: TObject);
    procedure mpro_0194Click(Sender: TObject);
    procedure Server_RemotoCustomCommand(Sender: TObject; Command: String);
    procedure rven_0154Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure lbl_mensagemClick(Sender: TObject);
    procedure cp_0309Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure mind_0123Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GerarArquivos1Click(Sender: TObject);
    procedure sis0645Click(Sender: TObject);
    procedure mcai_0137Click(Sender: TObject);
    procedure InformaesExtraMGV51Click(Sender: TObject);
    procedure rpro_0117Click(Sender: TObject);
    procedure CustodeHoraporOperao1Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure rped_0120Click(Sender: TObject);
    procedure rped_0121Click(Sender: TObject);
    procedure ListarCompras1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rger_0265Click(Sender: TObject);
    procedure mpro_0195Click(Sender: TObject);
    procedure sis_0643Click(Sender: TObject);
    procedure mpro_0186Click(Sender: TObject);
    procedure rsai_0112Click(Sender: TObject);
    procedure EstoqueDia1Click(Sender: TObject);
    procedure rsai_0115Click(Sender: TObject);
    procedure lf_0157Click(Sender: TObject);
    procedure lf_0160Click(Sender: TObject);
    procedure mcai_0143Click(Sender: TObject);
    procedure mcai_0140Click(Sender: TObject);
    procedure CompararCAT52xPedidos1Click(Sender: TObject);
    procedure ExportarPedidoEletrnico1Click(Sender: TObject);
    procedure sai_0122Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure lf_0163Click(
      Sender: TObject);
    procedure GeraremExcel1Click(Sender: TObject);
    procedure Extrato3MovimentaoGeral1Click(Sender: TObject);
    procedure lf_0147Click(Sender: TObject);
    procedure lf_0166Click(Sender: TObject);
    procedure BaixaOs1Click(Sender: TObject);
    procedure RelatoriodeNotasdeSaidasClientexNcm1Click(Sender: TObject);
    procedure mpro_0152Click(Sender: TObject);
    procedure mcli_0130Click(Sender: TObject);
    procedure sai_0157Click(Sender: TObject);
    procedure sai_0123Click(Sender: TObject);
    procedure rpfor_0106Click(Sender: TObject);
    procedure cp_0313Click(Sender: TObject);
    procedure mind_0126Click(Sender: TObject);
    procedure rped_0124Click(Sender: TObject);
    procedure ImportadorExcelClick(Sender: TObject);
    procedure rped_0102Click(Sender: TObject);
    procedure rel_1003Click(Sender: TObject);
    procedure mIndEnv_0107Click(Sender: TObject);
    procedure cr_0933Click(Sender: TObject);
    procedure mIndEnv_0120Click(Sender: TObject);
    procedure FaturardoXML1Click(Sender: TObject);
    procedure mpro_0189Click(Sender: TObject);
    procedure este1Click(Sender: TObject);
    procedure ComissoporProdutonoRecebimento1Click(Sender: TObject);
    procedure mpro_0212Click(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure mdiv_0127Click(Sender: TObject);
    procedure mpro_0197Click(Sender: TObject);
    procedure ransferenciadeArquivosFTP1Click(Sender: TObject);
    procedure mpro_0181Click(Sender: TObject);
    procedure este2Click(Sender: TObject);
    procedure sai_0155Click(Sender: TObject);
    procedure cfo_0104Click(Sender: TObject);
    procedure sai_0126Click(Sender: TObject);
    procedure sai_0158Click(Sender: TObject);
    procedure lf_0169Click(Sender: TObject);
    procedure rcr_0128Click(Sender: TObject);
    procedure sai_0143Click(Sender: TObject);
    procedure mtra_0106Click(Sender: TObject);
    procedure lf_0172Click(Sender: TObject);
    procedure sai_0120Click(Sender: TObject);
    procedure FTP1Click(Sender: TObject);
    procedure mdiv_0130Click(Sender: TObject);
    procedure lf_0178Click(Sender: TObject);
    procedure mdiv_0133Click(Sender: TObject);
    procedure mpro_01100Click(Sender: TObject);
    procedure mpro_0153Click(Sender: TObject);
    procedure mpro_0156Click(Sender: TObject);
    procedure FinanceiroTempClick(Sender: TObject);
    procedure PixTempClick(Sender: TObject);
    procedure cr_0934Click(Sender: TObject);
    procedure cr_0937Click(Sender: TObject);
    procedure mpro_0192Click(Sender: TObject);
    procedure lf_0181Click(Sender: TObject);
    procedure lf_0184Click(Sender: TObject);
    procedure lf_0187Click(Sender: TObject);
    procedure lf_0190Click(Sender: TObject);
    procedure lf_0193Click(Sender: TObject);
    procedure lf_0196Click(Sender: TObject);
    procedure mfol_0125Click(Sender: TObject);
    procedure sai_0161Click(Sender: TObject);
    procedure ributosNacionais1Click(Sender: TObject);
    procedure CSTCBS1Click(Sender: TObject);
    procedure CBS1Click(Sender: TObject);
    procedure IndOpCbs1Click(Sender: TObject);
    procedure CstPisCofins1Click(Sender: TObject);
    procedure ClasseTributaria1Click(Sender: TObject);
    procedure Nbs1Click(Sender: TObject);
    procedure CorrelatoNbsibscbs1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

    FMouseUpFlag: DWord;
    form_procodbar_laser: tFrm_ProCodBar;
    form_procodbar_termica: tFrm_ProCodBar;

    form_rcrec: tfrm_rcrec;
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
    form_Ind_fab_prod: TFrm_Ind_Fab;
    form_Ind_fab_Envase: TFrm_Ind_Fab;



    Form_PesqProd_Menu: TFrm_PesqProd_Menu;
    Form_pro_nov_Menu: TFrm_pro_Nov_Menu;

    Form_proConf: TFrm_proConf;
    Form_ProSimples01: TFrm_ProSimples01;
    Form_pro: TFrm_pro;
    Form_LucroPro: TFrm_LucroPro;
    function VerificaBloqueio(ptipo: Integer):Boolean;
    function LocalIP: string;

  end;

function fppalDisplayFormat(ptipo: Integer): Boolean;

var
  Frm_Princ: TFrm_Princ;
  Form_PCus: TFrm_Pcus;
  mjaativado: Boolean=false;
  mTestarTimer   :Boolean=true;
  mTestarTimerPed :Boolean=true;

  mLibBloqueios  :boolean; //
  mQtdPedBlq     :Integer=0;
  mLibBlqpedidos  :boolean; //
  Arq: TextFile;



implementation



uses S_DM1, Func2, lerarq, Func,  S_Ram,
  S_Login_Usuario, S_DM4, S_ent, S_mensagem, S_Empresas,
  S_Ajuda, S_Cal, S_Caixa, S_CServer, S_mensagemSom,
  S_Mensagem_Barrar, S_ConDat,  S_DM2, S_AtuSis,
  S_Sobre, S_Cli, S_Seg, S_Bkp, S_Lib, 
   S_TCon, S_TipPro, S_Dep_Prod,
  S_PFor_CalcCus, S_MCodP, S_ManBal, S_AjuInvGra,
  S_AjuInvGra_GD, S_ExpPro, S_ExpPro_Balanca, S_PcoLot, S_Pro_AjPcoInd,
  S_Pro_Replica_Precos, S_Imp_Prod, S_RelImp_Prod, S_APco_For,
  S_APcusAcabado, S_AjDescPro, S_UltCPR, s_ultVen, S_DM6, S_DM5,
  S_GPro, S_DCB, S_CEC, S_Aju, S_CPF, S_ACus, S_MCodL, S_NFE_Pais,
  S_NFE_reg, S_GirLoc, S_MCodF, S_ImpAli, S_ExpCli, S_PedCli, S_BloqCli,
  S_MCodCli, S_BloqCliMed, S_Vend_CotaMes, S_CotaForVend_Mes,
  S_CotaProVend_Mes, S_Assessor, S_Regiao, S_Planilha, S_TPDRE, S_Dpto,
  S_AjuCCu, S_CX_ReSel, S_CX_Compens, S_LotMOv, S_LancAutoFC,
  S_Config_Caixa, S_Mfor01, S_Ind_ManFor, S_ind_ForEnv,
  S_IndProFab, S_IndMpUtil, S_ConProd1, S_UF, S_TroMol, S_Loc, S_Bai,
  S_For,  S_GFor, S_Con, S_Red, S_RCli, S_PCon,  S_Ven,
  S_Sup, S_Tra, S_Bco, S_CCU, S_LDR, S_TLDR, S_IndEnv_Fab, S_Proc, S_MPer,
  S_MPar, S_IndEnv_MFor, S_REL_ENV, S_Funcao, S_Sen01, S_AJCOMIS,
  S_BloqueioVenda, S_Depen, S_Sindicato, S_Imp_ResFol, S_Imp_Folha,
  S_GFolha, S_FolMan, S_ParFolha,  S_ManImo, S_ManVei, S_Usr,
  S_Fun, S_PV, S_ComD, S_PPR, S_Ani, S_Eve, s_turno,S_Imo, S_MImo, S_Vei,
  S_MVei, S_Moe, S_Ind, S_RCliC, S_CABC, S_MedCli, S_RotCli, S_RPed2,
  S_RCliNaoCompra, S_EtiqCli, S_Rel_For, S_MedFor, S_FABC, S_Vend_RelGFor,
  S_Vend_RelVendGFor, S_VdaGForCotas, S_LPreco2, S_LPreco1, S_ExtP,
  S_Extp2, S_RasPlote, S_AMVS, S_DestPro, S_ProdTit,
  S_SugCpr01, S_EstProFor2Cpr, S_Contagem, S_ProABC, S_MUsar, S_EtiqProd,
  S_RPed, S_VPro, S_UFABC, S_MedUF, S_TProABC, S_MedTPro,
  S_TConABC, S_LucEnt, S_LucSai, S_FluxoDPCHQ,  S_BalProCol,
  S_ComVV, S_MedVen, S_ABC_Assessor, S_Demonstativo, S_GruABC, S_MedGru,
  S_MedTCon, S_Evento, S_RCPReal, S_CX_RG, S_CX_RCC, S_CX_RAna, S_CX_RD,
  S_CX_RM, S_ExtBco, S_CxSaldo2dias, S_CX_RCCT, S_CX_Sintetico, S_PerGer,
  S_ComXVda, S_VdaXComp, S_ResFat, S_ComRV, S_RelVendaComis,
  S_RelComis_Rec, S_TPed, S_RMen, S_VABC, S_RProABC, S_MedRPro, S_RPfor,
  S_ResQtdPed, S_RPed_Encargos, S_Resumo_FPPed, S_RelPed_FPPed, s_nfsser,
  S_RelConProd, S_Ind_RegInv, S_RAni, S_SelGra,
   S_OriPed, S_Trocas, S_PedBloq, S_RelNFS,
  S_Lf_CompraLegalBA, S_ExpTron, S_ExpCont01, S_Fin_RelCob,
  S_Receber_Sint, S_CrPosCar, S_Chq, S_BChq, S_SitCre, S_DupAgru,
  S_MedVenPgt, S_CobEle_Remessa, S_CobEle_Retorno, S_Fin_TitAgru,
  S_RelBaixaRec, s_serasa, S_CImp, S_Ace, S_Sen_Int, S_Par, S_ParPreco,
  S_Config_Leitor, S_Fontes, S_AjustaPro, S_DocOnLine, S_ElimDados,
  S_Update, S_ParCod, S_EnviarEmail, S_Liberar, S_AjuDevCli, S_GerDup,
   S_ImpBD, S_ImpD, S_Emp, S_TPro, S_Stru, S_Codbar, S_Cac, S_CME,
  S_PedXDup, S_PedCabXMer, S_CICMSR, S_CPed2, S_CalcIcms, S_AjuExt_Est,
  S_ResPed, S_LotSeq,  S_ResNF, S_Excel, S_ResMapaRes,
  s_sobra_dev,  S_Agde, 
  S_EmitirNF, S_FatEmp,  S_ManPed, S_Etivol02, S_EtiVol,
    S_MinRel, S_Confirma_Entrega,
  S_Conh_Mercad, S_Conh_Merc_Total, S_Conh_MercConfirma, S_Conh_MercCons,
  S_ProdEntregar, S_RFechaConh, S_ManOs, S_ConsOS, S_Contrato, S_Cont_Serv,
  S_Texto, S_RelOS, S_Editor_Word, S_Pedido_Fortes, 
  S_Editor_PedOP,  S_NF_CompImp, S_ManCSF, S_CFTabIcm,
  S_Fiscal_RelPisCofins, S_CarCor, S_Sintegra, S_GPer, S_InvGra,
  S_CompInvGra, S_RelNFE, S_AcCRE, S_AcCRR, S_CEle, S_PedBai, func_ecf,
  S_EDUP, S_PVO, func_excecoes, S_Receber_Lev, S_Min2, S_min3, S_Rom,
  S_NE, S_NS, S_GNRE, S_CFO, S_LRE, S_LRS, S_Apur, S_Inv, S_AcCR,
  S_RFPR, S_BDev, S_EBol, S_Rcob, S_Mchq, S_LMF, S_Tot, S_MTipo_Ped,
  S_MerDup,  S_RestLDR, S_CanFdia, S_EstDifLot,
  S_Fec, S_FPag, S_Cus, S_Help, S_AcCP, S_Info,
  S_Rest,  S_Tab06,
  S_Desbl_Pedido, S_Integra_SimilarEMS, S_Zest, S_CFG,
  S_AcCPE, S_AcCPR, S_BDev_For, S_RCpag, S_Pagar_Lev, S_CPSimples,
  S_DapAgru, S_MchqCP, S_BChq_CP, S_ChqCP, S_JDoc, S_VlrPres, S_MVcto,
  S_DiasMeses, s_coeficiente, S_EmiChq, S_Lev_RecPag, S_Recibo,
  S_Fin_FluxoCaixa, S_Dap, S_RFPP, S_RDoc, s_DRE
  , s_ultvenc, s_estmin, s_Cont_Locacao,
  s_sac, S_ProEntxSai,  S_RE, S_CodBarSeq, s_PedEnt,
  S_PSFor, S_Agenda, S_clipen, S_SPED_EFD,  S_ProdProduz,
   s_manped02, S_LerSintegra, S_ComisVend_Item,
  S_LivMemFiscal, S_Cons_Pro_Nov, s_expcli_csv, S_Graf_Dep,
  S_EstMin_Vendas, IdSocketHandle, WinSock,
  ShellAPI, ClipBrd, S_ComVP, S_VERFINAN,
  S_VER_PEDELE, S_Pagar_Sint, S_eventosproducao, S_Venda_Pre, S_AtuSis02,
  S_CBurden, S_Ext_Prod, S_Compras_Orc, S_Extp3, s_cHoraOp, S_ThReplica,
  S_Ped02_Canc, s_pedpen, s_listarcompras, S_IndEnv_Fab_Etapas,
  S_CX_MovDia, S_DM1_ADO, S_Ind_Prod_Analise, S_Local_Estoque,
  S_Pro_Transf_Filial, S_NFE_XmlCliente, s_VoltaEstoque, S_Ocorrencias_ecf,
  S_SPED_EFD_PisCofins, S_Caixa_ConsAuto, S_Caixa_ConcManual,
  s_CAT52xPedido, S_DM_MYSQL, Zip, S_FatPedOnline, S_rel_finan,
  S_Cotacao_Cpr, S_SPED_EFD_NOVO,S_Dar, S_Extrato_Produtos,
  S_Fiscal_PisCofins_Mono, S_FISCAL_LivroEle_DF, S_BxOs,
  S_Prod_Classificar , S_RelNsCliXNcm, S_CCom, S_Comodato,
  S_RelPedFor_FPPed, S_Lic2, S_Extrato_Completo, s_NotaPromissoria, S_Dep,
  s_BalMens, s_VendaxCusto, S_ImportarExcel, s_RelPedMod02,S_IndEnv_OPSimples,
  s_Contas_por_Competencia, s_IndEnv_Fracionamento, s_termica_produtos,
  s_faturarxml, s_CADLGCigualCADEST, S_ComRP, S_NFE_Manifestacao,
  s_Pro_ForaPadraoNFE, s_FTP_Transferencias, s_Pro_AtuaGeral,
  s_Executar_Igestao, S_FatEmp_itens, s_Manifesto_Sefaz, s_ResumoDiario,
  s_CSOSN_Padrao, s_PedidoEletronico, S_MDFE_Consultas, S_CobEle_Relatorio,
  s_lsep, s_AgruTransp, s_cst_icms, s_Licitacoes_Relatorios, s_GerarQrCode,
  s_CBenef, s_GerarQrCodeNormal, s_combo, s_pro_gerar_planilha_tributacoes,
  s_Frm_Imp_trib_prod_planilha, s_financeiro, s_receber_pix,
  s_caucao_remessa, s_caucao_extorno, s_SinalizarLotes, s_cnae, s_cnae_lc,
  S_Cnae_x_Lc,s_cbsCst, S_ClassTrib, s_cbsCstXCadclassTrib,
  s_pos_integracao, s_trib_mun, s_cbs_cst, s_cbs, s_IndOpIbsCbs,
  s_CstPisCofins, s_nbs, s_CorrelatoNfse;



{$R *.dfm}

function Tfrm_Princ.LocalIP: string;
type
   TaPInAddr = array [0..10] of PInAddr;
   PaPInAddr = ^TaPInAddr;
   PHostEnt= ^hostent;
var
    phe: PHostEnt;
    pptr: PaPInAddr;
    Buffer: array [0..63] of char;
    i: Integer;
    GInitData: TWSADATA;
begin
    WSAStartup($101, GInitData);
    Result := '';
    GetHostName(Buffer, SizeOf(Buffer));
    phe:= Pointer(GetHostByName(buffer));
    if phe = nil then Exit;
    pptr := PaPInAddr(Phe^.h_addr_list);
    i := 0;
    while pptr^[i] <> nil do
    begin
      result:=StrPas(inet_ntoa(pptr^[i]^));
      Inc(i);
    end;
    WSACleanup;
end;


procedure TFrm_Princ.cr_0103Click(Sender: TObject);
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

testeform := TFrm_Princ(FindGlobalComponent('frm_dar'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Dar, Frm_Dar);
   Frm_Dar.FormStyle:=fsMDIChild;
   Frm_Dar.Visible  :=true;
   frm_dar.top:=0;
   end;

if Frm_Dar.WindowState=WsMinimized then
   Frm_Dar.WindowState:=WsNormal
else
   frm_Dar.Show;


end;

procedure TFrm_Princ.mpro_0115Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_ram'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ram,Frm_Ram);
   end;

Frm_Ram.FormStyle:=fsMDIChild;
Frm_Ram.Visible      :=true;
Frm_Ram.Top          :=0;

if Frm_Ram.WindowState=WsMinimized then
   Frm_Ram.WindowState:=WsNormal
else
   frm_Ram.Show;

end;

procedure TFrm_Princ.sai_0103Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;

if codcai<1 then
   begin
   codcai:=1;
   HeaderControl1.Sections.Items[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;


try
   testeform := TFrm_Princ(FindGlobalComponent('frm_venda_pre'));
   if (testeform=nil)  then
      begin
      Application.Createform(Tfrm_Venda_pre, frm_Venda_pre);
      frm_Venda_pre.top:=0;
      Frm_Venda_pre.FormStyle:=fsMDIChild;
      end;
   if frm_Venda_pre.WindowState=wsMinimized then
      frm_Venda_pre.WindowState:=wsNormal
   else
      frm_Venda_pre.Show;
except
   end;
end;
                                      
procedure TFrm_Princ.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
miteaju: string;
x: Integer;
i : smallint;
mNomeForm: String;
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
      end
   else if not (Screen.ActiveControl is TCustomMemo) and
      not (Screen.ActiveControl is TCustomTreeView) then
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
         and not (Screen.ActiveControl is TDBLookupComboBox)
         and not (Screen.ActiveControl is TDBComboBox)
         and not (Screen.ActiveControl is TRxDBComboBox)
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
   try
      mNomeForm:=Screen.ActiveForm.Name;
   except
     mNomeForm:='Frm_Princ';
     end;
   if (frm_mensagem=nil) and (frm_mensagemsom=nil) and (frm_mensagem_barrar=nil) then
      begin
//      if (Msg.wParam=113) and (ce_aceita) then

{
      if (Msg.wParam=113) then
         begin
         if frm_Empresas.FormState<>[fsModal] then
            begin
            Frm_Empresas.ShowModal;
            end;
         Msg.wParam:=0;
         end;
}
      if (Msg.wParam=112)  then
         begin
         if DM1.Tb_PargerPTIPOAJUDA.AsInteger=1 then
            begin
            Msg.wParam:=0;
            end
         else
            begin
            if Frm_Ajuda=nil then
               begin
               miteaju:=mNomeForm+'_'+Screen.ActiveControl.Name;
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
         end;
     if (Msg.wParam=122) and (Frm_Cal=nil) then
         begin
         if frm_Cal= nil then
            begin
            Application.createform(TFrm_CAl,Frm_Cal);
            frm_cal.top:=0;
            end;
         if Frm_Cal.WindowState=WsMinimized then
            Frm_Cal.WindowState:=WsNormal
         else
            frm_Cal.Show;
         Msg.wParam:=0;
         end;


      if (Msg.wParam=116)  and (Frm_Ent=nil) then
         begin
         mSoConsulta:=false;


         if DM1.Tb_PargerPPCOGRA.Value=1 then
            fChamaPro(2,'frm_ppal','')
         else
            fChamaPro(0,'frm_ppal','');
         Msg.wParam:=0;
         end;
// inicio


      if (pTcAtalho_me<>0)  and (copy(mNomeForm,1,9)='Frm_Princ')  then
         begin
// and (copy(Screen.ActiveForm.Name,1,8)='Frm_Princ')
         if (pTcAtalho_me=msg.wParam) and (EstaoPressionadas(pTeclaAtalho_me)) then
            begin
            if Screen.FormCount>10+FContaForm(0) then
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
               DM1.Tb_Emp.Close;
               DM1.Tb_Emp.SQL.Clear;
               DM1.Tb_Emp.SQL.Add(' select * from cademp where codemp='+FloatToStr(mcod));
               DM1.Tb_Emp.Open;
              if DM1.Tb_Emp.IsEmpty then
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
                 HeaderControl1.Sections[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
                 +' '+DM1.Tb_EmpFANTASIA.Value;
{                 setlength(ce_codempati,1);
                 ce_codempati[0]:=IntTostr(codemp);
                 ce_qtdemp      :=1;}
                 HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
                 EstMinClick(SELF);
                 VAgendaClick(SELF);
                 end;
               end;
            end;
         end;


// termino



      if (Msg.wParam=120) and (Frm_Caixa=nil) and (copy(mNomeForm,1,9)='Frm_Princ') then
         begin


         if frm_Caixa= nil then
            begin
            Application.createform(TFrm_Caixa,Frm_Caixa);
            Frm_Caixa.top:=0;
            end;

//            if Frm_Caixa.WindowState=WsMinimized then
//               Frm_Caixa.WindowState:=WsNormal
//            else
               frm_Caixa.ShowModal;
               FreeAndNil(frm_Caixa);
         HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//         sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
         end;
      if (Msg.wParam=19) and not (Frm_CServer.Active) then
         begin
         mavisoson:=False;
         Frm_CServer.Show;
         end;

//      if (Msg.wParam=119) and (frm_Ent=nil) and (Frm_Princ.Active) then
      if (Msg.wParam=119) and (frm_Ent=nil) then
         begin
         if Screen.FormCount>10+FContaForm(0) then
            begin
            fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
                     +' fechadas!',0,['0'],0);
            end
         else
            begin

            Application.CreateForm(Tfrm_Ent, Frm_Ent);
            frm_ent.top:=0;

            fEventosLogin(false,codusr,nomusr);

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
            try
              CloseFile(Arq);
            except
              end;
             if Frm_Cons_Pro_Nov<> nil then
               FreeAndNil(Frm_Cons_Pro_Nov);
             Application.CreateForm(TFrm_Cons_Pro_Nov, Frm_Cons_Pro_Nov);
{
             if FileExists('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE') and not PrgRodando('SGE_LIBSIS.EXE') then
               WinExec('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE',SW_ShowNormal);
}
            DeleteFile('c:\sge\SGE_LIBSIS\usrlogado.txt');

            if mLibBloqueios then
              begin
              if not FileExists('c:\sge\SGE_LIBSIS\usrlogado.txt') then
                begin
                AssignFile(Arq,'c:\sge\SGE_LIBSIS\usrlogado.txt');
                Rewrite(Arq);
                Writeln(Arq,FormatFloat('000000',codusr)+FormatFloat('000000',codemp));
                CloseFile(Arq);
                AssignFile(Arq,'c:\sge\SGE_LIBSIS\usrlogado.txt');
                Reset(Arq);
                end;
              end;
            HeaderControl1.Sections[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
            +' '+DM1.Tb_EmpFANTASIA.Value;
//            SpeedButton17.Caption:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
//            +' '+DM1.Tb_EmpFANTASIA.Value;
            HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//            sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//            timer3.Enabled := true;
            EstMinClick(SELF);
            VAgendaClick(SELF);
            end;
         end;
     end;

         HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//         sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);


   if Msg.wParam=123 then
      begin
      WinExec('Calc.Exe',SW_ShowNormal);


      Msg.wParam:=0;
      end;

   end;


end;

procedure TFrm_Princ.FormActivate(Sender: TObject);
var
  mbackup: Boolean;
  mmens: String;
  mposLogo,x: Integer;
  adoimagem: TADOQuery;
begin
if pthread='SIM' then
  Timer3.Enabled:=True
else
  Timer3.Enabled:=False;


mtamppal:=Width;

if mjaativado then
   begin
   HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   exit;
   end;
mposLogo:=(Frm_Princ.Width-lbl_mensagem.Width) div 2;
lbl_mensagem.Left:=mposLogo;


CORRIGE_HORADATA;
mTestarTimer   :=false;
mTestarTimerPed:=false;
mjaativado    :=true;


    //alterado

adoimagem:=TADOQuery.Create(nil);
adoimagem.Connection:=DM1_ADO.ADOConnection1;

adoimagem.Close;
adoimagem.SQL.Clear;
adoimagem.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'LOGO0'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   adoimagem.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');
adoimagem.Open;
if not adoimagem.IsEmpty then
   begin
  if not (adoimagem.FieldByName('LSLOGO').IsNull)  and  (adoimagem.FieldByName('LSLOGO').Value<>'') then
     (adoimagem.FieldByName('LSLOGO') as TBlobField).SaveToFile('\SGE\LOGO0.JPG');
   end;

freeandnil(adoimagem);

if FileExists('C:\SGE\LOGO0.JPG') then
   begin
   image1.Picture.LoadFromFile('C:\SGE\LOGO0.JPG');
   flparger(0,0,'1');

   if (DM1.Tb_PargerPTAMJPGTAM.Value=0) or (DM1.Tb_PargerPTAMJPGTAM.Value>780) then
      Image1.Align:=alClient
   else
      begin
      if (DM1.Tb_PargerPTAMJPGALT.AsInteger>Frm_Princ.Height) or
         (DM1.Tb_PargerPTAMJPGTAM.AsInteger>Frm_Princ.Width) then
         Image1.Align:=alClient
      else if DM1.Tb_PargerPTAMJPGALT.AsFloat>0 then
         Image1.Height:=DM1.Tb_PargerPTAMJPGALT.AsInteger;
      if DM1.Tb_PargerPTAMJPGTAM.AsFloat>0 then
         Image1.Width:=DM1.Tb_PargerPTAMJPGTAM.AsInteger;
      mposLogo:=(Frm_Princ.Width-Image1.Width) div 2;
      Image1.Left:=mposLogo;
      mposLogo:=(Frm_Princ.Height-Image1.Height) div 2;
      Image1.Top :=mposLogo;
      end;
   Image1.Visible:=True;
   end;


if DM1.Tb_PargerPINDUSTRIA.AsInteger=5 then
  begin
  sai_0202.Visible:=True;
  end
else
  begin
  sai_0202.Visible:=False;
  end;


testeform := TFrm_Princ(FindGlobalComponent('frm_ent'));
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
{
   if (DM1.Tb_PargerUDTTRA.Value>date) or
      (DM1.Tb_PargerUDTTRA.Value+10<date) then
      begin
      testeform := TFrm_Princ(FindGlobalComponent('frm_condat'));
      if (testeform=nil)  then
          begin
         Application.CreateForm(Tfrm_Condat, Frm_ConDat);
         frm_condat.top:=0;

         end;
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
 }
   Enabled:=False;
   if not VerificaBloqueio(0) then
      begin
      Application.Terminate;
      FFecharTudo(2);
      exit;
      end;
   Enabled:=True;

   if Screen.FormCount>9+FContaForm(0) then
      begin
      fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
              +' fechadas!',0,['0'],0);
      end
   else
      begin
      testeform := TFrm_Princ(FindGlobalComponent('frm_ent'));
      if (testeform=nil)  then
         begin
         Application.CreateForm(Tfrm_Ent, Frm_Ent);
         end
      else
         begin
         frm_Ent.free;
         frm_Ent:=nil;
         Application.CreateForm(Tfrm_Ent, Frm_Ent)
         end;
      if Frm_Ent.WindowState=wsMinimized then
         Frm_Ent.WindowState:=wsNormal;
      fEventosLogin(false,codusr,nomusr);

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
      end;
// inicio
   end;
   
if FileExists('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE') and not PrgRodando('SGE_LIBSIS.EXE') then
  WinExec('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE',SW_ShowNormal);
DeleteFile('c:\sge\SGE_LIBSIS\usrlogado.txt');
if Frm_Cons_Pro_Nov<> nil then
  FreeAndNil(Frm_Cons_Pro_Nov);
Application.CreateForm(TFrm_Cons_Pro_Nov, Frm_Cons_Pro_Nov);

if mLibBloqueios then
  begin
  if not FileExists('c:\sge\SGE_LIBSIS\usrlogado.txt') then
    begin
    AssignFile(Arq,'c:\sge\SGE_LIBSIS\usrlogado.txt');
    Rewrite(Arq);
    Writeln(Arq,FormatFloat('000000',codusr)+FormatFloat('000000',codemp));
    CloseFile(Arq);
    AssignFile(Arq,'c:\sge\SGE_LIBSIS\usrlogado.txt');
    Reset(Arq);
    end;
  end;

if codusr=1111 then
  Frm_Princ.sis0645.Visible:=true;

HeaderControl1.Sections[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
   +' '+DM1.Tb_EmpFANTASIA.Value;
HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

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
         testeform := TFrm_Princ(FindGlobalComponent('frm_seg'));
         if (testeform=nil)  then
            begin
            Application.CreateForm(TFrm_Seg, Frm_Seg);
            Frm_Seg.Formstyle:=fsnormal;
            Frm_Seg.visible  :=false;
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
            Log_TipoProdPad :=0;
            end
         else if ValInt(copy(mpseg,4,2))=1 then
            begin
            Log_TipoLote:=1;
            Log_TitLote:='Lote';
            Log_UsaDtVcto:=True;
            Log_TipoProdPad :=3;
            end
         else if ValInt(copy(mpseg,4,2))=3 then
            begin
            Log_TipoLote:=3;
            Log_TitLote:='Lote';
            Log_UsaDtVcto:=false;
            Log_TipoProdPad :=3;
            end
         else
            begin
            Log_TipoLote:=0;
            Log_UsaDtVcto:=false;
            Log_TipoProdPad :=0;
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
if valint(copy(mpseg,7,2))=1 then
   mPrestacao_servico:=true
else
   mPrestacao_servico:=false;

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
      testeform := TFrm_Princ(FindGlobalComponent('frm_bkp'));
       if (testeform=nil)  then
         begin
         Application.CreateForm(TFrm_Bkp, Frm_Bkp);
         Frm_Bkp.top:=0;
         end;

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

mjaativado     := true;
//timer3.Enabled := true;
mTestarTimer   := true;
mTestarTimerPed:= true;

EstMinClick(SELF);
VAgendaClick(SELF);

end;

function TFrm_Princ.VerificaBloqueio(ptipo: Integer):Boolean;
var
  dia, mes, ano: word;
  mdt: TDateTime;
  mdias: real;
//  mano , mmes , mdia : word;
//  msistema, mgrave: string;
  msistema: String;
  mflag: boolean;
  mqtdias : Integer;
  mNomeComputador: String;
  mDataHora: TDateTime;
  mValorData: Real;
  mDataPad: tDatetime;
begin

if flfilpad(-1,'_principal','LIBDIA') then
   begin
   mDataHora:=FloatToDateTime(valfloat(DM4.Tb_FilPad2FPVALOR.AsString));
//   SHOWMESSAGE('DATA '+FORMATDATETIME(FDT2, mdatahora));
   if mDataHora=date then
      begin
      result:=true;
      exit;
      end;
   end;


//flcademp(1,0,IntToStr(codemp)'1');

flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp)));
if DM1.Tb_EmpCGC.AsFloat=15871688000152 then //CNPJ DA HIDROFERRAGENS TEMPORARIAMENTE LIBERADO
   begin
   result:=true;
   exit;

   end;
mDataHora:=now;
mNomeComputador:=NomeComputador;
if flfilpad(0,'_PRINC_001',mNomeComputador) then
   mDataPad:=StrtoDateTime(DM4.Tb_FilPad2FPVALOR.AsString)
else
   mDataPad:=mDataHora;
fDeletaPadroes(0,'_PRINC_001',mNomeComputador);
fGravaPadroes(0,NomeComputador     ,'string' ,'_PRINC_001',FormatDatetime('dd/mm/yyyy hh:nn:ss', mDataHora));




if (mDataHora<mDataPad) or (DM2.Tb_EmpPA001.Value<>DM1.Tb_PargerPA001.Value) then
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
   mAtuSisProcessou:=FALSE;

   if fEstanaNet then
      begin
      mtentaautomatico:=true;
      if Frm_AtuSis=nil then
         begin
         Application.createform(TFrm_Atusis, Frm_Atusis);
         Frm_ATusis.top:=0;
         end;

      Frm_AtuSis.FormStyle:=fsNormal;
// inicio
     Frm_AtuSis.bbDataServClick(self);
     if mDataServ>Date then
        begin
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

        fmensagem('Sistema suspenso, Favor  entrar em contato com INTERSYS - Sistemas para verificar!',0,['0'],0);
        result:=false;
        exit;

        end;
// termino



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
         begin
         Application.createform(TFrm_Atusis, Frm_Atusis);
         Frm_Atusis.top:=0;
         end;

// inicio
     Frm_AtuSis.bbDataServClick(self);
     if mDataServ>Date then
        begin
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
        fmensagem('Sistema suspenso, Favor  entrar em contato com INTERSYS - Sistemas para verificar!',0,['0'],0);
        result:=false;
        exit;
         
        end;
// termino


      Frm_AtuSis.Show;
      Frm_AtuSis.FormStyle:=fsNormal;
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
         begin
         Application.CreateForm(TFrm_Lib, Frm_Lib);
         Frm_Lib.Top:=0;
         end;
      Frm_Lib.FormStyle:=fsNormal;

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
mDataHora:=Date;
mValorData:=mDataHora;

if mflag=true then
   begin
   fDeletaPadroes(-1,'_principal','LIBDIA');
   fGravaPadroes(-1,'LIBDIA'        ,'float' ,'_principal',FloattoStr(mvalordata));
   end;

result:=mflag;
end;

procedure TFrm_Princ.FormCreate(Sender: TObject);
var
Query_TipoPed:tquery;

begin

codmac:=MacAddress;
{try
  PrgIniciacao(Pchar('SGE - CONEXAO'),pChar('C:\SGE\NOVAVER\CONEXAO_SGE.EXE'));
except
  end;}
{
if (FileAge(Pchar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.exe'))<>FileAge(PChar(Banco_servidor+'\NOVAVER\SGE_LIBSIS.EXE'))) then
  killtask('SGE_LIBSIS.EXE');

if not PrgRodando('SGE_LIBSIS.EXE') then
  begin
  if (FileExists(PChar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.exe')) and FileExists(PChar(Banco_servidor+'\NOVAVER\SGE_LIBSIS.EXE'))) then
    begin
    if (FileAge(Pchar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.exe'))<>FileAge(PChar(Banco_servidor+'\NOVAVER\SGE_LIBSIS.EXE'))) then
      begin
      DeleteFile(PChar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.EXE'));
      CopyFile(PChar(Banco_servidor+'\Novaver\SGE_LIBSIS.EXE'),PChar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.EXE'),false);
      end;
    end
  else if FileExists(PChar(Banco_servidor+'\NOVAVER\SGE_LIBSIS.EXE')) then
    CopyFile(PChar(Banco_servidor+'\Novaver\SGE_LIBSIS.EXE'),PChar('C:\SGE\SGE_LIBSIS\SGE_LIBSIS.EXE'),false);
  WinExec('"C:\SGE\SGE_LIBSIS\SGE_LIBSIS.exe"', SW_SHOW);
  end;
}
if flfilpad(0,'_principal','') then
  begin
  if (DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADPRO',[])) then
    Timer5.Enabled:=iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false);
  if (Timer5.Enabled=False) and (DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADCLI',[])) then
    Timer5.Enabled:=iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false);
  end;
{
 if ((Screen.WIDTH=800) and
   (Screen.Height=600)) or ((screen.Width=1024) and (screen.Height=768))  then
   begin
}
   Frm_Princ.Width:=Screen.Width;
   Frm_Princ.Height:=Screen.Height;
   WindowState:=wsMaximized;
{
   end
//   WindowState:=wsMaximized
else
   begin
   Frm_Princ.Width:=900;
   Frm_Princ.Height:=712;
   end;
}
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


try
   setlength(tab_tped,31);
except
   end;   
tab_tped[00]:='Orcamento';
tab_tped_mov[00,00]:='Orcamento';
tab_tped_mov[00,01]:='NNNNNNNN';

tab_tped[01]       :='Venda Normal';
tab_tped_mov[01,00]:='Venda Normal';
tab_tped_mov[01,01]:='NNNNSNNN';
tab_tped[02]       :='Simples Remessa';
tab_tped_mov[02,00]:='Simples Remessa';
tab_tped_mov[02,01]:='NNNNSNNN';
tab_tped[03]       :='Devolucao a Fornecedor';
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

tab_tped[08]       :='Devolucao Cliente(Entrada) Normal';
tab_tped_mov[08,00]:='Devolucao Cliente(Entrada) Normal';
tab_tped_mov[08,01]:='SNNNNNNN';

tab_tped[09]       :='Emprestimo de Mercadorias';
tab_tped_mov[09,00]:='Emprestimo de Mercadorias';
tab_tped_mov[09,01]:='NNNNSNNN';

tab_tped[10]       :='Nota Complementar';
tab_tped_mov[10,00]:='Nota Complementar';
tab_tped_mov[10,01]:='NNNNNNNN';

tab_tped[11]       :='Remessa Para Consignacoes';
tab_tped_mov[11,00]:='Remessa Para Consignacoes';
tab_tped_mov[11,01]:='NSNNSNNN';

tab_tped[12]       :='Devolucao Mercadoria Consignacoes';
tab_tped_mov[12,00]:='Devolucao Mercadoria Consignacoes';
tab_tped_mov[12,01]:='SNNNNSNN';

tab_tped[13]       :='Devolucao Remessa p/Venda(Vda.Fora do Estab.)';
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

tab_tped[17]       :='Devolucao de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,00]:='Devolucao de Cliente(Troca de Mercadorias)';
tab_tped_mov[17,01]:='SNNNNNNN';

tab_tped[18]       :='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,00]:='Transferencias de Mercadorias Entrada';
tab_tped_mov[18,01]:='SNNNNNNN';


tab_tped[19]       :='Devolucao de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,00]:='Devolucao de Mercadorias de Terceiros(Consignadas)';
tab_tped_mov[19,01]:='NNNNSNNS';

tab_tped[20]       :='Remessa p/Industrializacao';
tab_tped_mov[20,00]:='Remessa p/Industrializacao';
tab_tped_mov[20,01]:='NNNNSNNN';

tab_tped[21]       :='Remessa p/Brinde';
tab_tped_mov[21,00]:='Remessa p/Brinde';
tab_tped_mov[21,01]:='NNNNSNNN';

tab_tped[22]       :='Remessa Amostra Gratis';
tab_tped_mov[22,00]:='Remessa Amostra Gratis';
tab_tped_mov[22,01]:='NNNNSNNN';

tab_tped[23]       :='Remessa p/Demonstracao';
tab_tped_mov[23,00]:='Remessa p/Demonstracao';
tab_tped_mov[23,01]:='NNNNSNNN';

tab_tped[24]       :='Remessa p/Conserto';
tab_tped_mov[24,00]:='Remessa p/Conserto';
tab_tped_mov[24,01]:='NNNNSNNN';

tab_tped[25]       :='Remessa Comodato';
tab_tped_mov[25,00]:='Remessa Comodato';
tab_tped_mov[25,01]:='NNNNSNNN';

tab_tped[26]       :='Venda a Ordem';
tab_tped_mov[26,00]:='Venda a Ordem';
tab_tped_mov[26,01]:='NNNNNNNN';

tab_tped[27]       :='Remessa da Venda a Ordem';
tab_tped_mov[27,00]:='Remessa da Venda a Ordem';
tab_tped_mov[27,01]:='NNNNSNNN';

tab_tped[28]       :='Remessa p/Insineracao';
tab_tped_mov[28,00]:='Remessa p/Insineracao';
tab_tped_mov[28,01]:='NNNNSNNN';


tab_tped[29]       :='Remessa p/Sinistro';
tab_tped_mov[29,00]:='Remessa p/Sinistro';
tab_tped_mov[29,01]:='NNNNSNNN';

tab_tped[30]       :='Todos';



Query_TipoPed:=tquery.create(nil);
Query_TipoPed.DatabaseName:='SG_ASSOC';
Query_TipoPed.Close;
Query_TipoPed.SQL.Clear;
Query_TipoPed.SQL.Add('Select * from CADTIPPED order by TPCODIGO');
Query_TipoPed.Open;
While not Query_TipoPed.Eof do
   begin
   try
      tab_tped[Query_TipoPed.FieldByName('TPCODIGO').AsInteger]       :=Query_TipoPed.FieldByName('TPNOME').AsString;
      tab_tped_mov[Query_TipoPed.FieldByName('TPCODIGO').AsInteger,00]:=Query_TipoPed.FieldByName('TPNOME').AsString;
   except
      end;
   Query_TipoPed.Next;
   end;



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

//Try
//   Frm_PRinc.ServerSocket1.Active:=True;
//except
//    end;
end;

procedure TFrm_Princ.mcli_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cli'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Cli, Frm_Cli);
Frm_Cli.FormStyle:=fsMDIChild;
Frm_Cli.Visible      :=true;
Frm_Cli.Top          :=0;


if Frm_Cli.WindowState=wsMinimized then
   Frm_Cli.WindowState:=wsNormal
else
   Frm_Cli.Show;

end;

procedure TFrm_Princ.mpro_0172Click(Sender: TObject);
begin

if valint(copy(mpseg,1,2))=7 then
  begin
  end
else
  begin
  testeform := TFrm_Princ(FindGlobalComponent('form_pesqprod_menu'));
  if (testeform=nil)  then
    Application.CreateForm(Tfrm_pesqprod_menu, form_pesqprod_menu);
  if form_pesqprod_menu.WindowState=wsMinimized then
    form_pesqprod_menu.WindowState:=wsNormal
  else
    form_pesqprod_menu.Show;
  end;
end;

procedure TFrm_Princ.mpro_0166Click(Sender: TObject);
begin
if DM1.Tb_EmpCGC.AsFloat=37006046000128 then
   begin
   testeform := TFrm_Princ(FindGlobalComponent('form_pro'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(TFrm_Pro, Form_Pro);
      Form_Pro.top:=0;
      end;
   Form_Pro.FormStyle    :=fsMDIChild;
   Form_Pro.Visible      :=true;
   Form_Pro.Top          :=0;
   Form_Pro.Show;
   end
else
   begin
   testeform := TFrm_Princ(FindGlobalComponent('form_prosimples01'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(TFrm_ProSimples01, Form_ProSimples01);
      Form_ProSimples01.top:=0;
      end;
   Form_ProSimples01.FormStyle    :=fsMDIChild;
   Form_ProSimples01.Visible      :=true;
   Form_ProSimples01.Top          :=0;
   Form_ProSimples01.Show;
   end;


end;

procedure TFrm_Princ.mpro_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_gpro'));
if (testeform=nil)  then
   Application.createform(TFrm_GPro,Frm_GPro);

Frm_GPro.FormStyle:=fsMDIChild;
Frm_GPro.Visible      :=true;
Frm_GPro.Top          :=0;

if Frm_GPro.WindowState=WsMinimized then
   Frm_GPro.WindowState:=WsNormal
else
   frm_GPro.Show;

end;

procedure TFrm_Princ.mpro_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tcon'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_TCon, Frm_TCon);
Frm_TCon.FormStyle:=fsMDIChild;
Frm_TCon.Visible      :=true;
Frm_TCon.Top          :=0;


if Frm_TCon.WindowState=WsMinimized then
   Frm_TCon.WindowState:=WsNormal
else
   frm_TCon.Show;

end;

procedure TFrm_Princ.mpro_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tippro'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_TipPro, Frm_TipPro);
Frm_TipPro.FormStyle:=fsMDIChild;
Frm_TipPro.Visible      :=true;
Frm_TipPro.Top          :=0;


if Frm_TipPro.WindowState=WsMinimized then
   Frm_TipPro.WindowState:=WsNormal
else
   frm_TipPro.Show;

end;

procedure TFrm_Princ.mpro_0148Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dcb'));
if (testeform=nil)  then
   Application.createform(TFrm_DCB,Frm_DCB);
Frm_Dcb.FormStyle:=fsMDIChild;
Frm_DCB.Visible      :=true;
Frm_DCB.Top          :=0;

if Frm_DCB.WindowState=WsMinimized then
   Frm_DCB.WindowState:=WsNormal
else
   frm_DCB.Show;

end;

procedure TFrm_Princ.mpro_0193Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dep_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_Dep_Prod,Frm_Dep_Prod);
Frm_Dep_Prod.FormStyle:=fsMDIChild;
Frm_Dep_Prod.Visible      :=true;
Frm_Dep_Prod.Top          :=0;

if Frm_Dep_Prod.WindowState=WsMinimized then
   Frm_Dep_Prod.WindowState:=WsNormal
else
   frm_Dep_Prod.Show;

end;

procedure TFrm_Princ.mpro_0203Click(Sender: TObject);
begin
   {---Novo Formulario---}
   if not ftestacaixa(0) then
      exit;

   testeform := TFrm_Princ(FindGlobalComponent('frm_compras_orc'));
   if (testeform=nil) then
      begin
      Application.CreateForm(Tfrm_compras_orc, frm_compras_orc);
      Frm_compras_orc.top:=0;
      end;

   if frm_compras_orc.WindowState=WsMinimized then
      frm_compras_orc.WindowState:=WsNormal
   else
      frm_compras_orc.Show;

end;

procedure TFrm_Princ.mpro_0206Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cec'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CEC,Frm_CEC);
   Frm_CEC.top:=0;
   end;

if Frm_CEC.WindowState=WsMinimized then
   Frm_CEC.WindowState:=WsNormal
else
   frm_CEC.Show;

end;

procedure TFrm_Princ.mpro_0209Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_calccus'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PFor_CalcCus,Frm_PFor_CalcCus);
   Frm_Pfor_CalcCus.top:=0;
   end;

if Frm_PFor_CalcCus.WindowState=WsMinimized then
   Frm_PFor_CalcCus.WindowState:=WsNormal
else
   Frm_PFor_CalcCus.Show;

end;

procedure TFrm_Princ.mpro_0112Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=28;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Mudar o Código do Produto';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_mcodp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_mcodp,Frm_mcodp);

   Frm_MCodP.top:=0;
   end;

if Frm_MCodP.WindowState=WsMinimized then
   Frm_MCodP.WindowState:=WsNormal
else
   frm_MCodP.Show;


end;

procedure TFrm_Princ.mpro_0127Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=6;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Fazer Ajuste de Estoque';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

mAjuOrigem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_Aju,Frm_Aju);
Frm_Aju.top:=0;
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;

end;

procedure TFrm_Princ.mpro_0128Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=6;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Fazer Ajuste de Estoque';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
mAjuOrigem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_Aju,Frm_Aju);
Frm_Aju.top:=0;
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;

end;

procedure TFrm_Princ.mpro_0129Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=6;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Fazer Ajuste de Estoque';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
mAjuOrigem:=2;
testeform := TFrm_Princ(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_aju,Frm_Aju);

Frm_Aju.top:=0;
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;


end;

procedure TFrm_Princ.mpro_0175Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=6;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Ajustar Estoque';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
mAjuOrigem:=3;
testeform := TFrm_Princ(FindGlobalComponent('frm_aju'));
if (testeform=nil)  then
   Application.createform(TFrm_aju,Frm_Aju);
Frm_Aju.top:=0;
if Frm_Aju.WindowState=WsMinimized then
   Frm_Aju.WindowState:=WsNormal
else
   frm_Aju.Show;

end;

procedure TFrm_Princ.mpro_0163Click(Sender: TObject);
begin

if not fexisteIndice('CADPRO0') then
   begin
   Messagedlg('Esta faltando o indice do CADPRO ligue no suporte da INTERSYS e informe',mtError,[mbOk],0);
   exit;

   end;


if not fexisteIndice('CADEST0') then
   begin
   Messagedlg('Esta faltando o indice do CADEST ligue no suporte da INTERSYS e informe',mtError,[mbOk],0);
   exit;

   end;
if Log_TipoLote>0 then
   begin
   if not fexisteIndice('CADLGC0') then
      begin
      Messagedlg('Esta faltando o indice do CADLGC ligue no suporte da INTERSYS e informe',mtError,[mbOk],0);
      exit;
      end;
   end;

testeform := TFrm_Princ(FindGlobalComponent('frm_manbal'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ManBal,Frm_ManBal);
   Frm_ManBal.top:=0;
   end;

if Frm_ManBal.WindowState=WsMinimized then
   Frm_ManBal.WindowState:=WsNormal
else
   frm_ManBal.Show;

end;

procedure TFrm_Princ.mpro_0157Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajuinvgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjuInvGra,Frm_AjuInvGra);
   Frm_AjuInvGra.top:=0;
   end;

if Frm_AjuInvGra.WindowState=WsMinimized then
   Frm_AjuInvGra.WindowState:=WsNormal
else
   frm_AjuInvGra.Show;

end;

procedure TFrm_Princ.mpro_0169Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajuinvgra_gd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjuInvGra_GD,Frm_AjuInvGra_GD);
   Frm_AjuInvGra_GD.top:=0;
   end;
if Frm_AjuInvGra_GD.WindowState=WsMinimized then
   Frm_AjuInvGra_GD.WindowState:=WsNormal
else
   Frm_AjuInvGra_GD.Show;

end;

procedure TFrm_Princ.mpro_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_exppro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExpPro,Frm_ExpPro);
   Frm_ExpPro.top:=0;

   end;

if Frm_ExpPro.WindowState=WsMinimized then
   Frm_ExpPro.WindowState:=WsNormal
else
   frm_ExpPro.Show;

end;

procedure TFrm_Princ.mpro_0190Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_exppro_balanca'));
if (testeform=nil)  then
   Application.createform(TFrm_ExpPro_Balanca,Frm_ExpPro_Balanca);
 Frm_ExpPro_Balanca.top:=0;


if Frm_ExpPro_Balanca.WindowState=WsMinimized then
   Frm_ExpPro_Balanca.WindowState:=WsNormal
else
   frm_ExpPro_Balanca.Show;

end;

procedure TFrm_Princ.mpro_0145Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pcolot'));
if (testeform=nil)  then
   Application.createform(TFrm_PcoLot,Frm_PcoLot);
frm_pcolot.top:=0;

if Frm_PcoLot.WindowState=WsMinimized then
   Frm_PcoLot.WindowState:=WsNormal
else
   frm_PcoLot.Show;

end;

procedure TFrm_Princ.mpro_0187Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_Pro_AjPcoInd'));
if (testeform=nil)  then
  Application.createform(TFrm_Pro_AjPcoInd,Frm_Pro_AjPcoInd);
Frm_Pro_AjPcoInd.top:=0;
if Frm_Pro_AjPcoInd.WindowState=WsMinimized then
   Frm_Pro_AjPcoInd.WindowState:=WsNormal
else
   frm_Pro_AjPcoInd.Show;
end;

procedure TFrm_Princ.mpro_0301Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_Pro_Replica_Precos'));
if (testeform=nil)  then
   Application.createform(Tfrm_Pro_Replica_Precos,frm_Pro_Replica_Precos);

if frm_Pro_Replica_Precos.WindowState=WsMinimized then
   frm_Pro_Replica_Precos.WindowState:=WsNormal
else
   frm_Pro_Replica_Precos.Show;

end;

procedure TFrm_Princ.mpro_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_imp_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_Imp_Prod,Frm_Imp_Prod);
Frm_Imp_Prod.top:=0;

if Frm_Imp_Prod.WindowState=WsMinimized then
   Frm_Imp_Prod.WindowState:=WsNormal
else
   frm_Imp_Prod.Show;

end;

procedure TFrm_Princ.mpro_0178Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relimp_prod'));
if (testeform=nil)  then
   Application.createform(TFrm_RelImp_Prod,Frm_RelImp_prod);
Frm_RelImp_Prod.top:=0;

if Frm_RelImp_Prod.WindowState=WsMinimized then
   Frm_RelImp_Prod.WindowState:=WsNormal
else
   frm_RelImp_Prod.Show;

end;

procedure TFrm_Princ.mpro_0109Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_cpf'));
if (testeform=nil)  then
   Application.Createform(Tfrm_CPF, Frm_CPF);
Frm_CPF.top:=0;
Frm_CPF.morigem:='Frm_Princ';
if Frm_CPF.WindowState=wsMinimized then
   Frm_CPF.WindowState:=wsnormal
else
   Frm_CPF.Show;

end;

procedure TFrm_Princ.mpro_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Pcus'));
if testeform=nil then
  begin
  testeform := TFrm_Princ(FindGlobalComponent('Frm_Pcus'));
  if (testeform=nil)  then
    begin
    Application.createform(TFrm_Pcus,Form_PCus);
    if (Screen.WIDTH=800) and
      (Screen.Height=600) then
     Frm_Pcus.Height:=467;
    end;
  end
else
  begin
  Application.createform(TFrm_Pcus,Form_PCus);
  end;


Form_Pcus.FormStyle:=fsMDIChild;
Form_PCus.Visible  :=true;
Form_PCus.Top      :=0;
if Form_Pcus.WindowState=WsMinimized then
   Form_Pcus.WindowState:=WsNormal
else
   form_Pcus.Show;
Form_Pcus.BringToFront;
Form_Pcus.Focused;


end;

procedure TFrm_Princ.mpro_0142Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_acus'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Acus,Frm_Acus);
   Frm_ACus.top:=0;
   end;
if Frm_Acus.WindowState=WsMinimized then
   Frm_Acus.WindowState:=WsNormal
else
   frm_Acus.Show;

end;

procedure TFrm_Princ.mpro_0154Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_apco_for'));
if (testeform=nil)  then
   Application.createform(TFrm_APco_For,Frm_APco_For);
Frm_APco_For.top:=0;

if Frm_Apco_For.WindowState=WsMinimized then
   Frm_Apco_For.WindowState:=WsNormal
else
   frm_Apco_For.Show;

end;

procedure TFrm_Princ.mpro_0155Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_APcusAcabado'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_APcusAcabado,Frm_APcusAcabado);
   Frm_APcusAcabado.top:=0;
   end;

if Frm_APcusAcabado.WindowState=WsMinimized then
   Frm_APcusAcabado.WindowState:=WsNormal
else
   Frm_APcusAcabado.Show;

end;

procedure TFrm_Princ.mpro_0151Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajdescpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjDescPro,Frm_AjDescPro);
   Frm_AjDescPro.top:=0;
   end;

if Frm_AjDescPro.WindowState=WsMinimized then
   Frm_AjdEscPro.WindowState:=WsNormal
else
   frm_AjDescPro.Show;

end;

procedure TFrm_Princ.mpro_0160Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_UltCPR'));

if (testeform=nil)  then
   begin
   Application.createform(TFrm_UltCPR,Frm_UltCPR);
   Frm_UltCPR.top:=0;
   end;

Frm_UltCPR.FormStyle        :=fsMDIChild;
Frm_UltCPR.Visible          :=true;
Frm_UltCPR.Top              :=0;
Frm_UltCPR.bb_imprel.Enabled:=True;

if Frm_UltCPR.WindowState=WsMinimized then
   Frm_UltCPR.WindowState:=WsNormal
else
   frm_UltCPR.Show;
end;

procedure TFrm_Princ.UltimasVendas1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ultven'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_UltVen,Frm_UltVen);
   Frm_UltVen.top:=0;
   end;

if Frm_UltVen.WindowState=WsMinimized then
   Frm_UltVen.WindowState:=WsNormal
else
   Frm_UltVen.Show;

end;


function fppalDisplayFormat(ptipo: Integer): Boolean;
begin
DM4.Qr_Ped01vP1VDATAV.DisplayFormat      :=fdt2;
DM4.Qr_Ped01vP1VVALOR.DisplayFormat      :=mcasas;
DM1.Tb_ProPDCMET_BITOLA.DisplayFormat    :='#,##0.000';

DM1.Tb_ProPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propcoven.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDVLRINC.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_Propdpreco1.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
DM1.Tb_ProPDPRECO_INDEX.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
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
DM1.Tb_ProPDVALREGMS.DisplayFormat :=fdathor;
DM1.Tb_ProPDVALREGMS.EditMask      :='!99/99/9999;1; ';

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

//if log_filial_Qtd>1 then
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
DM2.Qr_Cortotalitemcomipi.DisplayFormat      :=mcasas;
DM2.Qr_Cortotal_liquido.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTALL.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTALB.DisplayFormat      :=mcasas;
DM2.Qr_CabP1TOTDES.DisplayFormat      :=mcasas;
DM2.Qr_Sertotal.DisplayFormat         :=mcasas;
DM2.Qr_CorP2PRECO.DisplayFormat       :=mcasaspu;
DM2.Qr_Corprecounitario.DisplayFormat :=mcasaspu;

DM2.Qr_AddExtP1AE_VALOR.DisplayFormat :=mcasaspu;

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
DM1.Tb_CliCDISTANCIAKM.DisplayFormat:='#,##0.000';;
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
DM1.Tb_CliCFAX.EditMask             :=pEditMascFone;
DM1.Tb_CliCFONE01.EditMask          :=pEditMascFone;
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
DM1.Tb_PVPVDES2.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDES3.DisplayFormat       :=mcasas_pct;
DM1.Tb_PVPVDESCF.DisplayFormat      :=mcasas_pct;
DM1.Tb_PVPVVALORMIN.DisplayFormat   :=mcasas;
//DM1.Tb_ForFCGC.DisplayFormat        :=pDFCNPJ;
DM1.Tb_ForFCGC.EditMask             :=pEditMascCNPJ;
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

DM1.Tb_UFPREDUTRA_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRB_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRC_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRD_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRE_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRF_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRG_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRH_SN.DisplayFormat      :=mcasas_pct;
DM1.Tb_UFPREDUTRI_SN.DisplayFormat      :=mcasas_pct;

DM1.Tb_UFPREDUTNA.DisplayFormat      :=mcasas_pct;
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
DM1.Tb_CPCAVALOR_ACRES.DisplayFormat   :=mcasas;
DM1.Tb_CPCAVALDES.DisplayFormat  :=mcasas;
DM1.Tb_CPCADESC.DisplayFormat    :=mcasas;
DM1.Tb_CPCAJUROS.DisplayFormat   :=mcasas;
DM1.Tb_CPCAVALPAG.DisplayFormat  :=mcasas;
DM1.Tb_CPvaldev.DisplayFormat    :=mcasas;
//DM1.Tb_CPcnpj.DisplayFormat        :=pDFCNPJ;

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



procedure TFrm_Princ.mloc_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_uf'));
if testeform=nil then
   begin
   Application.CreateForm(TFrm_UF, Frm_UF);
   end;

Frm_UF.FormStyle:=fsMDIChild;
Frm_UF.Visible      :=true;
Frm_UF.Top          :=0;


if Frm_UF.WindowState=WsMinimized then
   Frm_UF.WindowState:=WsNormal
else
   frm_UF.Show;

end;

procedure TFrm_Princ.mloc_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_loc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Loc,Frm_Loc);
   Frm_Loc.top:=0;
   end;

Frm_Loc.FormStyle:=fsMDIChild;
Frm_Loc.Visible      :=true;
Frm_Loc.Top          :=0;

if Frm_Loc.WindowState=WsMinimized then
   Frm_Loc.WindowState:=WsNormal
else
   frm_Loc.Show;

end;

procedure TFrm_Princ.mloc_0108Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_MCodL'));
if testeform=nil then
   begin
   Application.CreateForm(TFrm_MCodL, Frm_MCodL);
   Frm_MCodL.top:=0;
   end;


if Frm_MCodL.WindowState=WsMinimized then
   Frm_MCodL.WindowState:=WsNormal
else
   frm_MCodL.Show;

end;

procedure TFrm_Princ.mloc_0112Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_nfe_pais'));
if (testeform=nil)  then
   Application.createform(TFrm_NFE_Pais,Frm_NFE_Pais);
Frm_NFE_Pais.FormStyle:=fsMDIChild;
Frm_NFE_Pais.Visible      :=true;
Frm_NFE_Pais.Top          :=0;

if Frm_NFE_Pais.WindowState=WsMinimized then
   Frm_NFE_Pais.WindowState:=WsNormal
else
   Frm_NFE_Pais.Show;

end;

procedure TFrm_Princ.mloc_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_nfe_reg'));
if (testeform=nil)  then
   Application.createform(TFrm_NFE_Reg,Frm_NFE_Reg);
Frm_NFE_Reg.FormStyle    :=fsMDIChild;
Frm_NFE_Reg.Visible      :=true;
Frm_NFE_Reg.Top          :=0;

if Frm_NFE_Reg.WindowState=WsMinimized then
   Frm_NFE_Reg.WindowState:=WsNormal
else
   Frm_NFE_Reg.Show;

end;

procedure TFrm_Princ.mloc_0107Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_girloc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GirLoc,Frm_GirLoc);
   Frm_GirLoc.top:=0;
   end;

if Frm_GirLOc.WindowState=WsMinimized then
   Frm_GirLoc.WindowState:=WsNormal
else
   frm_GirLoc.Show;

end;

procedure TFrm_Princ.mloc_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bai'));
if (testeform=nil)  then
   Application.createform(TFrm_Bai,Frm_Bai);
Frm_Bai.FormStyle    :=fsMDIChild;
Frm_Bai.Visible      :=true;
Frm_Bai.Top          :=0;

if Frm_Bai.WindowState=WsMinimized then
   Frm_Bai.WindowState:=WsNormal
else
   frm_Bai.Show;

end;

procedure TFrm_Princ.mfor_0103Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_for'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_For, Frm_For);
   Frm_For.FormStyle:=fsMDIChild;
   Frm_For.Top      :=0;
   Frm_For.Visible  :=True;
   end;
if Frm_For.WindowState=WsMinimized then
   Frm_For.WindowState:=WsNormal
else
   frm_For.Show;

end;

procedure TFrm_Princ.mfor_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_gfor'));
if (testeform=nil)  then
   Application.createform(TFrm_Gfor,Frm_Gfor);
Frm_Gfor.FormStyle:=fsMDIChild;
Frm_GFor.Visible      :=true;
Frm_GFor.Top          :=0;

if Frm_Gfor.WindowState=WsMinimized then
   Frm_Gfor.WindowState:=WsNormal
else
   frm_GFor.Show;

end;

procedure TFrm_Princ.mfor_0110Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=18;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Mudar o Código do Fornecedor';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_mcodf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_mcodf,Frm_MCodF);
   Frm_MCodF.top:=0;
   end;


if Frm_MCodF.WindowState=WsMinimized then
   Frm_MCodF.WindowState:=WsNormal
else
   frm_MCodF.Show;

end;

procedure TFrm_Princ.mcli_0109Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=42;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Importar Alíquotas de Débitos ST. Para continuar digite a senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_impali'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ImpAli,Frm_ImpAli);
   Frm_ImpAli.top:=0;
   end;

if Frm_ImpAli.WindowState=WsMinimized then
   Frm_ImpAli.WindowState:=WsNormal
else
   frm_ImpALi.Show;

end;

procedure TFrm_Princ.mcli_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_con'));
if (testeform=nil)  then
   Application.createform(TFrm_cON,Frm_con);
Frm_Con.FormStyle:=fsMDIChild;
Frm_Con.Visible      :=true;
Frm_Con.Top          :=0;
if Frm_Con.WindowState=WsMinimized then
   begin
   Frm_Con.WindowState:=WsNormal;
   end
else
   begin
   Frm_Con.Show;
   end;

end;

procedure TFrm_Princ.mcli_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_expcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExpCLi,Frm_ExpCLi);
   Frm_ExpCli.top:=0;
   end;


if Frm_ExpCli.WindowState=WsMinimized then
   Frm_ExpCli.WindowState:=WsNormal
else
   Frm_ExpCli.Show;

end;

procedure TFrm_Princ.mcli_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_red'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Red,Frm_Red);
   Frm_Red.top:=0;
   end;

if Frm_Red.WindowState=WsMinimized then
   Frm_Red.WindowState:=WsNormal
else
   frm_Red.Show;

end;

procedure TFrm_Princ.mcli_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RCli,Frm_RCli);
   Frm_RCli.top:=0;
   Frm_RCli.FormStyle:=fsMDIChild;
   end;

if Frm_RCli.WindowState=WsMinimized then
   Frm_RCli.WindowState:=WsNormal
else
   frm_RCli.Show;

end;

procedure TFrm_Princ.mcli_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pcon'));
if (testeform=nil)  then
  begin
  Application.createform(TFrm_Pcon,Frm_Pcon);
  Frm_PCon.FormStyle:=fsMDIChild;
  Frm_PCon.Visible  :=True;
  Frm_PCon.top:=0;
  end;
if Frm_Pcon.WindowState=WsMinimized then
  Frm_Pcon.WindowState:=WsNormal
else
  frm_Pcon.Show;
end;

procedure TFrm_Princ.mcli_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pedcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedCli,Frm_PedCli);
   Frm_PedCli.top:=0;
   end;

if Frm_PedCLi.WindowState=WsMinimized then
   Frm_PedCli.WindowState:=WsNormal
else
   frm_PedCli.Show;

end;

procedure TFrm_Princ.mcli_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bloqcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_BloqCli,Frm_BloqCLi);
   Frm_BloqCli.top:=0;
   end;

if Frm_BloqCli.WindowState=WsMinimized then
   Frm_BloqCLI.WindowState:=WsNormal
else
   frm_BloqCli.Show;

end;

procedure TFrm_Princ.mcli_0136Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=28;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Mudar o Código do Cliente';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_mcodcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_McodCli,Frm_McodCli);
   Frm_MCodCli.top:=0;
   end;

if Frm_McodCli.WindowState=WsMinimized then
   Frm_McodCli.WindowState:=WsNormal
else
   frm_McodCli.Show;

end;

procedure TFrm_Princ.mcli_0139Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bloqclimed'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_BloqCliMed, Frm_BloqCliMed);
   Frm_BloqCliMed.top:=0;
   end;

if Frm_BloqCliMed.WindowState=wsMinimized then
   Frm_BloqCliMed.WindowState:=wsNormal;
Frm_BloqCliMed.Show;

end;

procedure TFrm_Princ.mven_0103Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_ven'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Ven, Frm_Ven);
   end;

Frm_Ven.FormStyle:=fsMDIChild;
Frm_Ven.Visible      :=true;
Frm_Ven.Top          :=0;


if Frm_Ven.WindowState=WsMinimized then
   Frm_Ven.WindowState:=WsNormal
else
   frm_Ven.Show;

end;

procedure TFrm_Princ.mven_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vend_cotames'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Vend_CotaMes,Frm_Vend_CotaMes);
   Frm_Vend_CotaMes.top:=0;
   end;

if Frm_Vend_CotaMEs.WindowState=WsMinimized then
   Frm_Vend_cotaMes.WindowState:=WsNormal
else
  frm_Vend_CotaMes.Show;

end;

procedure TFrm_Princ.mven_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cotaforvend_mes'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CotaForVend_Mes,Frm_CotaForVend_Mes);
   Frm_CotaForVend_Mes.Top:=0;
   end;

if Frm_CotaForVend_Mes.WindowState=WsMinimized then
   Frm_CotaForVend_Mes.WindowState:=WsNormal
else
   frm_CotaForVend_Mes.Show;

end;

procedure TFrm_Princ.mven_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cotaprovend_mes'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CotaProVend_Mes,Frm_CotaProVend_Mes);
   Frm_CotaProVend_Mes.top:=0;
   end;

if Frm_CotaProVend_Mes.WindowState=WsMinimized then
   Frm_CotaProVend_Mes.WindowState:=WsNormal
else
   frm_CotaProVend_Mes.Show;

end;

procedure TFrm_Princ.mven_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sup'));
if (testeform=nil)  then
   Application.createform(TFrm_Sup,Frm_Sup);
Frm_Sup.FormStyle:=fsMDIChild;
Frm_Sup.Visible      :=true;
Frm_Sup.Top          :=0;

if Frm_Sup.WindowState=WsMinimized then
   Frm_Sup.WindowState:=WsNormal
else
   frm_Sup.Show;

end;

procedure TFrm_Princ.mven_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_assessor'));
if (testeform=nil)  then
   Application.createform(TFrm_Assessor,Frm_Assessor);

Frm_Assessor.FormStyle:=fsMDIChild;
Frm_Assessor.Visible      :=true;
Frm_Assessor.Top          :=0;

if Frm_Assessor.WindowState=WsMinimized then
   Frm_Assessor.WindowState:=WsNormal
else
   frm_Assessor.Show;

end;

procedure TFrm_Princ.mven_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_regiao'));
if (testeform=nil)  then
   Application.createform(TFrm_Regiao,Frm_Regiao);
Frm_Regiao.Visible      :=true;
Frm_Regiao.Top          :=0;
Frm_Regiao.FormStyle:=fsMDIChild;

if Frm_Regiao.WindowState=WsMinimized then
   Frm_Regiao.WindowState:=WsNormal
else
   Frm_Regiao.Show;

end;

procedure TFrm_Princ.mven_118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_planilha'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Planilha,Frm_Planilha);
   frm_Planilha.top:=0;
   end;

if Frm_Planilha.WindowState=WsMinimized then
   Frm_Planilha.WindowState:=WsNormal
else
   Frm_Planilha.Show;

end;

procedure TFrm_Princ.mtra_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tra'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Tra, Frm_Tra);
Frm_Tra.FormStyle:=fsMDIChild;
Frm_Tra.Visible      :=true;
Frm_Tra.Top          :=0;


if Frm_Tra.WindowState=WsMinimized then
   Frm_Tra.WindowState:=WsNormal
else
   frm_Tra.Show;

end;

procedure TFrm_Princ.mcai_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bco'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Bco, Frm_Bco);
Frm_Bco.FormStyle:=fsMDIChild;
Frm_Bco.Visible      :=true;
Frm_Bco.Top          :=0;


if Frm_Bco.WindowState=WsMinimized then
   Frm_Bco.WindowState:=WsNormal
else
   frm_Bco.Show;

end;

procedure TFrm_Princ.mcai_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ccu'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_CCU, Frm_CCU);
Frm_Ccu.FormStyle:=fsMDIChild;
Frm_Ccu.Visible      :=true;
Frm_Ccu.Top          :=0;


if Frm_CCU.WindowState=WsMinimized then
   Frm_CCU.WindowState:=WsNormal
else
   frm_CCU.Show;

end;

procedure TFrm_Princ.mcai_0107Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tpdre'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_tpdre, Frm_tpdre);
Frm_TPDre.FormStyle:=fsMDIChild;
Frm_TpDre.Visible      :=true;
Frm_TpDre.Top          :=0;


if frm_tpdre.WindowState=WsMinimized then
   Frm_tpdre.WindowState:=WsNormal
else
   frm_tpdre.Show;

end;

procedure TFrm_Princ.mcai_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dpto'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Dpto, Frm_Dpto);
Frm_Dpto.FormStyle:=fsMDIChild;
Frm_Dpto.Visible      :=true;
Frm_Dpto.Top          :=0;


if Frm_Dpto.WindowState=WsMinimized then
   Frm_Dpto.WindowState:=WsNormal
else
   frm_Dpto.Show;

end;

procedure TFrm_Princ.mcai_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ldr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LDR,Frm_LDR);
   Frm_LDR.top:=0;
   end;


if Frm_LDR.WindowState=WsMinimized then
   Frm_LDR.WindowState:=WsNormal
else
   frm_LDR.Show;


end;

procedure TFrm_Princ.mcai_0115Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   fmensagem('Valido Somente para Equipe de SUPORTE!',0,['0'],0);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=18;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para ajustar Centro de Custos';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_ajuccu'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjuCCu,Frm_AjuCCu);
   Frm_AjuCCu.top:=0;
   end;

if Frm_AjuCCu.WindowState=WsMinimized then
   Frm_AjuCCu.WindowState:=WsNormal
else
   frm_AjuCCu.Show;

end;

procedure TFrm_Princ.mcai_0118Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=25;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Realizar Contas por Seleção';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_cx_resel'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_CX_ReSel, Frm_CX_ReSel);
   Frm_CX_ReSel.top:=0;
   end;

if Frm_CX_resel.WindowState=WsMinimized then
   Frm_CX_Resel.WindowState:=WsNormal
else
   frm_CX_REsel.Show;

end;

procedure TFrm_Princ.mcai_0121Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=26;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Transferir lançamentos entre Contas';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_ldr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TLDR,Frm_TLDR);
   Frm_TLDR.top:=0;
   end;

if Frm_TLDR.WindowState=WsMinimized then
   Frm_TLDR.WindowState:=WsNormal
else
   frm_TLDR.Show;

end;

procedure TFrm_Princ.mcai_0124Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=27;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Acessar o Programa de Compensações direto:';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_cx_compens'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_Compens,Frm_CX_Compens);
   Frm_CX_Compens.top:=0;
   end;

if Frm_CX_Compens.WindowState=WsMinimized then
   Frm_CX_Compens.WindowState:=WsNormal
else
   frm_CX_Compens.Show;

end;

procedure TFrm_Princ.mcai_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lotmov'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LotMov,Frm_LotMov);
   Frm_LotMov.top:=0;
   end;

if Frm_LotMov.WindowState=WsMinimized then
   Frm_LotMov.WindowState:=WsNormal
else
   frm_LotMov.Show;

end;

procedure TFrm_Princ.mcai_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lancautofc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LancAutoFC,Frm_LancAutoFC);
   Frm_LancAutoFC.top:=0;
   end;

if Frm_LancAutoFC.WindowState=WsMinimized then
   Frm_LancAutoFC.WindowState:=WsNormal
else
   frm_LancAutoFC.Show;

end;

procedure TFrm_Princ.mcai_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_config_caixa'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Config_Caixa,Frm_Config_Caixa);
   Frm_Config_Caixa.top:=0;
   end;

if Frm_Config_Caixa.WindowState=WsMinimized then
   Frm_Config_Caixa.WindowState:=WsNormal
else
   Frm_Config_Caixa.Show;

end;

procedure TFrm_Princ.mind_0103Click(Sender: TObject);
begin

if (DM1.Tb_PargerPINDUSTRIA.Value=1) or (DM1.Tb_PargerPINDUSTRIA.Value>4) then
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_mfor01'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_Mfor01,Frm_Mfor01);
      Frm_MFor01.FormStyle:=fsMDIChild;
      Frm_MFor01.top:=0;

//      if (Screen.WIDTH=800) and
//         (Screen.Height=600) then
//         Frm_MFor01.Height:=467;
      end;

   if Frm_MFor01.WindowState=WsMinimized then
      Frm_MFor01.WindowState:=WsNormal
   else
      frm_MFor01.Show;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_ind_manfor'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_Ind_MAnfor,Frm_Ind_Manfor);
      Frm_Ind_ManFor.top:=0;
      end;

   if Frm_Ind_Manfor.WindowState=WsMinimized then
      Frm_Ind_Manfor.WindowState:=WsNormal
   else
      frm_Ind_Manfor.Show;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=3 then
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_ind_forenv'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_Ind_ForEnv,Frm_Ind_ForEnv);
      Frm_Ind_ForEnv.top:=0;
      end;

   if Frm_Ind_ForEnv.WindowState=WsMinimized then
      Frm_Ind_ForEnv.WindowState:=WsNormal
   else
      frm_Ind_ForEnv.Show;
   end;

end;

procedure TFrm_Princ.mind_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('form_ind_fab_envase'));
if (testeform<>nil)  then
   begin
   fmensagem('Favor Fechar o Programa de Ordem de Produção Primeiro!',0,['0'],0);
   exit;
   end;

testeform := TFrm_Princ(FindGlobalComponent('form_ind_fab_prod'));

mInd_Fab_Origem:=1;

if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ind_Fab,form_Ind_fab_prod);
   form_Ind_fab_prod.top:=0;
   end;


if form_Ind_fab_prod.WindowState=WsMinimized then
   form_Ind_fab_prod.WindowState:=WsNormal
else
   form_Ind_fab_prod.Show;

end;

procedure TFrm_Princ.mind_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('form_ind_fab_prod'));
if (testeform<>nil)  then
   begin
   fmensagem('Favor Fechar o Programa de Ordem de Produção Primeiro!',0,['0'],0);
   exit;
   end;


testeform := TFrm_Princ(FindGlobalComponent('form_ind_fab_envase'));
mInd_Fab_Origem:=2;
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ind_Fab,form_Ind_fab_Envase);
   form_Ind_fab_Envase.top:=0;
   if form_Ind_fab_Envase.WindowState=WsMinimized then
      form_Ind_fab_Envase.WindowState:=WsNormal
   else
      form_Ind_fab_Envase.Show;
   end


end;

procedure TFrm_Princ.mind_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
   Frm_IndProFab.top:=0;
   end;

mOrigemIndProFab:=0; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;

end;

procedure TFrm_Princ.mind_0139Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
   Frm_IndProFab.top:=0;
   end;

mOrigemIndProFab:=1; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;

end;

procedure TFrm_Princ.mind_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indmputil'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndMpUtil,Frm_IndMpUtil);
   Frm_IndMpUtil.top:=0;
   end;

if Frm_IndMpUtil.WindowState=WsMinimized then
   Frm_IndMpUtil.WindowState:=WsNormal
else
   frm_IndMpUtil.Show;

end;

procedure TFrm_Princ.mind_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_condprod1'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ConProd1,Frm_ConProd1);
   Frm_ConProd1.top:=0;
   end;

if Frm_ConProd1.WindowState=WsMinimized then
   Frm_ConProd1.WindowState:=WsNormal
else
   frm_ConProd1.Show;

end;

procedure TFrm_Princ.mind_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mper'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Mper,Frm_Mper);
   Frm_MPer.top:=0;
   end;

if Frm_Mper.WindowState=WsMinimized then
   Frm_Mper.WindowState:=WsNormal
else
   frm_Mper.Show;

end;

procedure TFrm_Princ.mind_0136Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tromol'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Tromol,Frm_Tromol);
   Frm_TroMol.top:=0;
   end;

if Frm_Tromol.WindowState=WsMinimized then
   Frm_tromol.WindowState:=WsNormal
else
   frm_tromol.Show;

end;

procedure TFrm_Princ.mind_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mpar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Mpar,Frm_Mpar);
   Frm_MPar.top:=0;
   end;

if Frm_Mpar.WindowState=WsMinimized then
   Frm_Mpar.WindowState:=WsNormal
else
   frm_Mpar.Show;

end;

procedure TFrm_Princ.mIndEnv_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indenv_mfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndEnv_MFor,Frm_IndEnv_MFor);
   Frm_IndEnv_MFor.top:=0;
   end;
if Frm_IndEnv_MFor.WindowState=WsMinimized then
   Frm_IndEnv_MFor.WindowState:=WsNormal
else
   Frm_IndEnv_MFor.Show;
end;

procedure TFrm_Princ.mIndEnv_0106Click(Sender: TObject);
begin
{
if codusr=1111 then
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_indenv_fab_Etapas'));
   if (testeform=nil)  then
      begin
      Application.createform(Tfrm_IndEnv_Fab_Etapas,frm_IndEnv_Fab_Etapas);
      Frm_IndEnv_Fab_Etapas.top:=0;
      end;

   if frm_IndEnv_Fab_Etapas.WindowState=WsMinimized then
      frm_IndEnv_Fab_Etapas.WindowState:=WsNormal
   else
     frm_IndEnv_Fab_Etapas.Show;
   end
else
   begin
}
   testeform := TFrm_Princ(FindGlobalComponent('frm_indenv_fab'));
   if (testeform=nil)  then
      begin
      Application.createform(Tfrm_IndEnv_Fab,frm_IndEnv_Fab);
      Frm_IndEnv_Fab.top:=0;
      end;

   if frm_IndEnv_Fab.WindowState=WsMinimized then
      frm_IndEnv_Fab.WindowState:=WsNormal
   else
     frm_IndEnv_Fab.Show;
 //  end;

end;

procedure TFrm_Princ.mIndEnv_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indprofab'));
if (testeform=nil)  then
    begin
   Application.createform(TFrm_IndProFab,Frm_IndProFab);
   Frm_IndProFab.top:=0;
   end;

mOrigemIndProFab:=0; //0-p/Producao 1-p/Envase
if Frm_IndProFab.WindowState=WsMinimized then
   Frm_IndProFab.WindowState:=WsNormal
else
   frm_IndProFab.Show;

end;

procedure TFrm_Princ.mIndEnv_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_indmputil'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndMpUtil,Frm_IndMpUtil);
   Frm_IndMpUtil.top:=0;
   end;

if Frm_IndMpUtil.WindowState=WsMinimized then
   Frm_IndMpUtil.WindowState:=WsNormal
else
   frm_IndMpUtil.Show;

end;

procedure TFrm_Princ.mIndEnv_0116Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rel_env'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_rel_env,frm_rel_env);
   frm_rel_env.top:=0;
   end;

if frm_rel_env.WindowState=WsMinimized then
   frm_rel_env.WindowState:=WsNormal
else
   frm_rel_env.Show;

end;

procedure TFrm_Princ.musu_0103Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_usr'));
if (testeform=nil)  then
   Application.createForm(TFrm_Usr, Frm_Usr);
Frm_Usr.FormStyle:=fsMDIChild;
Frm_Usr.Visible      :=true;
Frm_Usr.Top          :=0;


if Frm_Usr.WindowState=WsMinimized then
   frm_Usr.WindowState:=WsNormal
else
   frm_Usr.Show;

end;

procedure TFrm_Princ.musu_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_funcao'));
if (testeform=nil)  then
   Application.createForm(TFrm_Funcao, Frm_Funcao);
Frm_Funcao.FormStyle:=fsMDIChild;
Frm_Funcao.Visible      :=true;
Frm_Funcao.Top          :=0;


if Frm_Funcao.WindowState=WsMinimized then
   frm_funcao.WindowState:=WsNormal
else
   frm_funcao.Show;

end;

procedure TFrm_Princ.musu_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fun'));
if (testeform=nil)  then
   Application.createform(TFrm_Fun,Frm_Fun);
Frm_Fun.FormStyle:=fsMDIChild;
Frm_Fun.Visible      :=true;
Frm_Fun.Top          :=0;

if Frm_Fun.WindowState=WsMinimized then
   Frm_FUn.WindowState:=WsNormal
else
   frm_Fun.Show;

end;

procedure TFrm_Princ.musu_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sen01'));
if (testeform=nil)  then
   begin
   Application.createForm(TFrm_Sen01, Frm_Sen01);
   Frm_Sen01.top:=0;
   end;


if Frm_Sen01.WindowState=WsMinimized then
   Frm_Sen01.WindowState:=WsNormal
else
   frm_Sen01.Show;

end;

procedure TFrm_Princ.mdiv_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PV,Frm_PV);
   Frm_PV.top:=0;
   Frm_PV.FormStyle:=fsMDIChild;
   Frm_PV.Visible:=true;
   end;

if Frm_PV.WindowState=WsMinimized then
   Frm_PV.WindowState:=WsNormal
else
   frm_PV.Show;

end;

procedure TFrm_Princ.mdiv_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajcomis'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AJCOMIS,Frm_AJCOMIS);
   Frm_AJCOMIS.top:=0;
   end;

if Frm_AJCOMIS.WindowState=WsMinimized then
   Frm_AJCOMIS.WindowState:=WsNormal
else
   Frm_AJCOMIS.Show;

end;

procedure TFrm_Princ.mdiv_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_comd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComD,Frm_ComD);
   Frm_ComD.top:=0;
   end;

if Frm_ComD.WindowState=WsMinimized then
   Frm_ComD.WindowState:=WsNormal
else
   frm_ComD.Show;

end;

procedure TFrm_Princ.mdiv_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ppr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PPR,Frm_PPR);
   Frm_PPR.top:=0;
   end;

if Frm_PPR.WindowState=WsMinimized then
   Frm_PPR.WindowState:=WsNormal
else
   frm_PPR.Show;

end;

procedure TFrm_Princ.mdiv_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ani'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ani,Frm_Ani);
   Frm_Ani.top:=0;
   end;


if Frm_Ani.WindowState=WsMinimized then
   Frm_Ani.WindowState:=WsNormal
else
   frm_Ani.Show;

end;

procedure TFrm_Princ.mdiv_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bloqueiovenda'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_BloqueioVenda,Frm_BloqueioVenda);
   Frm_BloqueioVenda.top:=0;
   end;

if Frm_BloqueioVenda.WindowState=WsMinimized then
   Frm_BloqueioVenda.WindowState:=WsNormal
else
   Frm_BloqueioVenda.Show;

end;

procedure TFrm_Princ.mdiv_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tipodependente'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_tipodependente,frm_tipodependente);
   frm_tipodependente.top:=0;
   end;

if frm_tipodependente.WindowState=WsMinimized then
   frm_tipodependente.WindowState:=WsNormal
else
   frm_tipodependente.Show;

end;

procedure TFrm_Princ.mdiv_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sindicato'));
if (testeform=nil)  then
   Application.createform(Tfrm_sindicato,frm_sindicato);
Frm_Sindicato.FormStyle:=fsMDIChild;
Frm_Sindicato.Visible      :=true;
Frm_Sindicato.Top          :=0;

if frm_sindicato.WindowState=WsMinimized then
   frm_sindicato.WindowState:=WsNormal
else
   frm_sindicato.Show;

end;

procedure TFrm_Princ.mfol_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_funcao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Funcao,Frm_Funcao);
   Frm_Funcao.top:=0;
   end;

if Frm_Funcao.WindowState=WsMinimized then
   Frm_Funcao.WindowState:=WsNormal
else
   frm_Funcao.Show;

end;

procedure TFrm_Princ.mfol_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fun'));
if (testeform=nil)  then
  Application.createform(TFrm_Fun,Frm_Fun);
Frm_Fun.FormStyle:=fsMDIChild;
Frm_fun.Visible      :=true;
Frm_Fun.Top          :=0;
if Frm_Fun.WindowState=WsMinimized then
  Frm_fun.WindowState:=WsNormal
else
  frm_Fun.Show;
end;

procedure TFrm_Princ.mfol_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dep'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Dep,Frm_Dep);
   Frm_Dep.top:=0;
   end;

if Frm_Dep.WindowState=WsMinimized then
   Frm_Dep.WindowState:=WsNormal
else
   frm_Dep.Show;

end;

procedure TFrm_Princ.mfol_0124Click(Sender: TObject);
var
form_eve: TFrm_Eve;
begin
testeform := TFrm_Princ(FindGlobalComponent('form_eve'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Eve,form_eve);
   form_eve.top:=0;
   end;

if form_eve.WindowState=WsMinimized then
   form_eve.WindowState:=WsNormal
else
   form_eve.Show;

end;

procedure TFrm_Princ.mfol_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_imp_resfol'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Imp_ResFol,Frm_Imp_ResFol);
   Frm_Imp_ResFol.top:=0;
   end;

if Frm_Imp_ResFol.WindowState=WsMinimized then
   Frm_Imp_ResFol.WindowState:=WsNormal
else
   frm_Imp_ResFol.Show;

end;

procedure TFrm_Princ.mfol_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_imp_folha'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Imp_Folha,Frm_Imp_Folha);
   Frm_Imp_Folha.top:=0;
   end;

if Frm_Imp_Folha.WindowState=WsMinimized then
   Frm_Imp_folha.WindowState:=WsNormal
else
   frm_Imp_Folha.Show;

end;

procedure TFrm_Princ.mfol_0133Click(Sender: TObject);
begin
mreltab:='CADLFOL';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_LFol'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_LFol);
   Frm_Per2.top:=0;
   end;

if form_per2_LFol.WindowState=WsMinimized then
   form_per2_LFol.WindowState:=WsNormal
else
   form_per2_LFol.Show;

end;

procedure TFrm_Princ.mfol_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_gfolha'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GFolha,Frm_GFolha);
   Frm_GFolha.top:=0;
   end;

if Frm_GFolha.WindowState=WsMinimized then
   Frm_GFolha.WindowState:=WsNormal
else
   frm_GFolha.Show;

end;

procedure TFrm_Princ.mfol_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_folman'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FolMan,Frm_FolMan);
   Frm_FolMan.top:=0;
   end;

if Frm_FolMan.WindowState=WsMinimized then
   Frm_folMan.WindowState:=WsNormal
else
   frm_FolMan.Show;

end;

procedure TFrm_Princ.mfol_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_parfolha'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ParFolha,Frm_ParFolha);
   Frm_ParFolha.top:=0;
   end;

if Frm_ParFolha.WindowState=WsMinimized then
   Frm_ParFolha.WindowState:=WsNormal
else
   frm_PArFolha.Show;

end;

procedure TFrm_Princ.mimo_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_imo'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Imo,Frm_Imo);
   Frm_Imo.FormStyle:=fsMDIChild;
   Frm_Imo.Visible  :=True;
   Frm_Imo.top:=0;
   end;

if Frm_Imo.WindowState=WsMinimized then
   Frm_Imo.WindowState:=WsNormal
else
   frm_Imo.Show;

end;

procedure TFrm_Princ.mimo_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mimo'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Mimo,Frm_Mimo);
   Frm_MImo.top:=0;
   end;

if Frm_Mimo.WindowState=WsMinimized then
   Frm_Mimo.WindowState:=WsNormal
else
   frm_Mimo.Show;

end;

procedure TFrm_Princ.mImo_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_manimo'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ManImo,Frm_ManImo);
   Frm_ManImo.top:=0;
   end;

if Frm_ManImo.WindowState=WsMinimized then
   Frm_ManImo.WindowState:=WsNormal
else
   frm_ManImo.Show;

end;

procedure TFrm_Princ.mvei_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mvei'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Vei,Frm_Vei);
   Frm_Vei.FormStyle:=fsMDIChild;
   Frm_Vei.Visible  :=True;
   Frm_Vei.top:=0;
   end;

if Frm_Vei.WindowState=WsMinimized then
   Frm_Vei.WindowState:=WsNormal
else
   frm_Vei.Show;

end;

procedure TFrm_Princ.mvei_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mvei'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Mvei,Frm_Mvei);
   Frm_MVei.FormStyle:=fsMDIChild;
   Frm_MVei.Visible  :=True;
   Frm_MVei.top:=0;
   end;

if Frm_Mvei.WindowState=WsMinimized then
   Frm_Mvei.WindowState:=WsNormal
else
   frm_Mvei.Show;

end;

procedure TFrm_Princ.mvei_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_manvei'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ManVei,Frm_ManVei);
   Frm_ManVei.top:=0;
   end;

if Frm_ManVei.WindowState=WsMinimized then
   Frm_ManVei.WindowState:=WsNormal
else
   frm_ManVei.Show;

end;

procedure TFrm_Princ.mmoe_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_moe'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Moe,Frm_Moe);
   Frm_Moe.top:=0;
   end;

if Frm_Moe.WindowState=WsMinimized then
   Frm_Moe.WindowState:=WsNormal
else
   frm_Moe.Show;

end;

procedure TFrm_Princ.mmoe_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ind'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ind,Frm_Ind);
   Frm_Ind.top:=0;
   end;

if Frm_Ind.WindowState=WsMinimized then
   Frm_Ind.WindowState:=WsNormal
else
   frm_Ind.Show;

end;

procedure TFrm_Princ.rcli_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rclic'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RCliC,Frm_RCliC);
   Frm_RCliC.top:=0;
   end;

if Frm_RCliC.WindowState=WsMinimized then
   Frm_RCliC.WindowState:=WsNormal
else
   frm_RCliC.Show;

end;

procedure TFrm_Princ.rcli_0109Click(Sender: TObject);
begin
mreltab:='CADCLI';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_cli'));
if (testeform=nil)  then
   Application.createform(TFrm_Per2,form_per2_cli);

if form_per2_cli.WindowState=WsMinimized then
   form_per2_cli.WindowState:=WsNormal
else
   form_per2_cli.Show;

end;

procedure TFrm_Princ.rcli_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CABC,Frm_CABC);
   Frm_CABC.top:=0;
   end;

if Frm_CABC.WindowState=WsMinimized then
   Frm_CABC.WindowState:=WsNormal
else
   frm_CABC.Show;

end;

procedure TFrm_Princ.rcli_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_medcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedCli,Frm_MedCli);
   Frm_MedCli.top:=0;
   end;

if Frm_Medcli.WindowState=WsMinimized then
   Frm_Medcli.WindowState:=WsNormal
else
   frm_MedCli.Show;

end;

procedure TFrm_Princ.rcli_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rotcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RotCli,Frm_Rotcli);
   Frm_RotCli.top:=0;
   end;

if Frm_Rotcli.WindowState=WsMinimized then
   Frm_Rotcli.WindowState:=WsNormal
else
   frm_RotCli.Show;

end;

procedure TFrm_Princ.rcli_0303Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rped2'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RPed2,Frm_RPed2);
   Frm_RPed2.top:=0;
   end;

if Frm_RPed2.WindowState=WsMinimized then
   Frm_RPed2.WindowState:=WsNormal
else
   frm_Rped2.Show;

end;

procedure TFrm_Princ.rcli_0306Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rped2'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rped,Frm_Rped);
   Frm_RPed.top:=0;
   end;

if Frm_Rped.WindowState=WsMinimized then
   Frm_Rped.WindowState:=WsNormal
else
   frm_Rped.Show;

end;

procedure TFrm_Princ.rcli_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rclinaocompra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RcliNaoCompra,Frm_RcliNaoCompra);
   Frm_RCliNaoCompra.top:=0;
   end;

if Frm_RcliNaoCompra.WindowState=WsMinimized then
   Frm_RcliNaoCompra.WindowState:=WsNormal
else
   frm_RcliNaoCompra.Show;

end;

procedure TFrm_Princ.rcli_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_etiqcli'));
if (testeform=nil)  then
   Application.createform(TFrm_EtiQCli,Frm_EtiqCli);
frm_EtiqCli.Top:=0;

if Frm_EtiqCli.WindowState=WsMinimized then
   Frm_EtiqCli.WindowState:=WsNormal
else
   frm_EtiqCli.Show;

end;

procedure TFrm_Princ.rfor_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rel_for'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Rel_For, Frm_Rel_For);
   Frm_Rel_For.top:=0;
   end;

if Frm_Rel_For.WindowState=WsMinimized then
   Frm_Rel_For.WindowState:=WsNormal
else
   frm_Rel_For.Show;


end;

procedure TFrm_Princ.rfor_0103Click(Sender: TObject);
begin
mreltab:='CADFOR';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_for'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_for);

if form_per2_for.WindowState=WsMinimized then
   form_per2_for.WindowState:=WsNormal
else
   form_per2_for.Show;

end;

procedure TFrm_Princ.rfor_0106Click(Sender: TObject);
begin
fabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_fabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FABC,Frm_FABC);
   Frm_FABC.top:=0;
   end;

if Frm_FABC.WindowState=WsMinimized then
   Frm_FABC.WindowState:=WsNormal
else
   frm_FABC.Show;

end;

procedure TFrm_Princ.rfor_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_medfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedFor,Frm_MedFOr);
   Frm_MedFor.top:=0;
   end;

fMedFor_Origem:=0;

if Frm_MedFor.WindowState=WsMinimized then
   Frm_MedFor.WindowState:=WsNormal
else
   frm_MedFor.Show;

end;

procedure TFrm_Princ.rfor_0112Click(Sender: TObject);
begin
fabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_fabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FABC,Frm_FABC);
   Frm_FABC.top:=0;
   end;

if Frm_FABC.WindowState=WsMinimized then
   Frm_FABC.WindowState:=WsNormal
else
   frm_FABC.Show;

end;

procedure TFrm_Princ.rfor_0115Click(Sender: TObject);
begin
fMedFor_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_medfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedFor,Frm_MedFOr);
   Frm_MedFor.top:=0;
   end;

if Frm_MedFor.WindowState=WsMinimized then
   Frm_MedFor.WindowState:=WsNormal
else
   frm_MedFor.Show;

end;

procedure TFrm_Princ.rfor_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vend_relgfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Vend_RelGFor,Frm_Vend_RelGFor);
   Frm_Vend_RelGFor.Top:=0;
   end;

if Frm_Vend_RelGFor.WindowState=WsMinimized then
   Frm_Vend_RelGFor.WindowState:=WsNormal
else
   frm_Vend_RelGFor.Show;

end;

procedure TFrm_Princ.rfor_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vdagforcotas'));
if (testeform=nil)  then
  begin
  Application.createform(TFrm_VdaGForCotas,Frm_VdaGForCotas);
  Frm_VdaGForCotas.top:=0;
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

procedure TFrm_Princ.rpro_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lpreco2'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LPreco2,Frm_LPreco2);
   Frm_LPreco2.top:=0;
   end;


if Frm_LPreco2.WindowState=WsMinimized then
   Frm_LPreco2.WindowState:=WsNormal
else
   frm_LPreco2.Show;

end;

procedure TFrm_Princ.rpro_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lpreco1'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Lpreco1,Frm_Lpreco1);
   Frm_LPreco1.top:=0;
   end;
if Frm_LPreco1.WindowState=WsMinimized then
   Frm_LPreco1.WindowState:=WsNormal
else
   frm_LPreco1.Show;
end;

procedure TFrm_Princ.rpro_0109Click(Sender: TObject);
begin
mreltab:='CADPRO';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_pro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pro);
if form_per2_pro.WindowState=WsMinimized then
   form_per2_pro.WindowState:=WsNormal
else
   form_per2_pro.Show;

end;

procedure TFrm_Princ.rpro_0121Click(Sender: TObject);
begin
mreltab:='CADAJU';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_aju'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_aju);

if form_per2_aju.WindowState=WsMinimized then
   form_per2_aju.WindowState:=WsNormal
else
   form_per2_aju.Show;

end;

procedure TFrm_Princ.rpro_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_extp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExtP,Frm_ExtP);
   Frm_Extp.top:=0;
   end;

if Frm_ExtP.WindowState=WsMinimized then
   Frm_ExtP.WindowState:=WsNormal
else
   frm_ExtP.Show;

end;

procedure TFrm_Princ.rpro_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_extrato_completo'));
if (testeform=nil)  then
   begin                       
   Application.createform(TFrm_extrato_completo,Frm_extrato_completo);
   Frm_extrato_completo.top:=0;
   end;

if Frm_extrato_completo.WindowState=WsMinimized then
   Frm_extrato_completo.WindowState:=WsNormal
else
   frm_extrato_completo.Show;

end;

procedure TFrm_Princ.rpro_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_medpro02'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedPro02 ,Frm_MedPro02);
   Frm_MedPro02.top:=0;
   end;

if Frm_MedPro02.WindowState=WsMinimized then
   Frm_MedPro02.WindowState:=WsNormal
else
   frm_MedPro02.Show;

end;

procedure TFrm_Princ.rpro_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rasplote'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RasPLote,Frm_RasPLote);
   Frm_RasPLote.top:=0;
   end;

if Frm_RasPLote.WindowState=WsMinimized then
   Frm_RasPLote.WindowState:=WsNormal
else
   frm_RasPLote.Show;;

end;

procedure TFrm_Princ.rpro_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_amvs'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AMVS,Frm_AMVS);
   Frm_AMVS.top:=0;
   end;

if Frm_AMVS.WindowState=WsMinimized then
   Frm_AMVS.WindowState:=WsNormal
else
   frm_AMVS.Show;

end;

procedure TFrm_Princ.rpro_0166Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_destpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_DestPro,Frm_DestPro);
   Frm_DestPro.top:=0;
   end;

if Frm_DestPro.WindowState=WsMinimized then
   Frm_DestPro.WindowState:=WsNormal
else
   frm_DestPro.Show;

end;

procedure TFrm_Princ.rpro_0169Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_prodtit'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProdTit,Frm_ProdTit);
   Frm_ProdTit.top:=0;
   end;

if Frm_ProdTit.WindowState=WsMinimized then
   Frm_ProdTit.WindowState:=WsNormal
else
   frm_ProdTit.Show;

end;

procedure TFrm_Princ.rpro_0136Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sugcpr01'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_SugCpr01,Frm_SugCpr01);
   Frm_SugCpr01.top:=0;
   end;

if Frm_SugCpr01.WindowState=WsMinimized then
   Frm_SugCpr01.WindowState:=WsNormal
else
   frm_SugCpr01.Show;

end;

procedure TFrm_Princ.rpro_0184Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_estprofor2cpr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EstProFor2Cpr,Frm_EstProFor2Cpr);
   Frm_EstProFor2Cpr.top:=0;
   end;

if Frm_EstProFor2Cpr.WindowState=WsMinimized then
   Frm_EstProFor2Cpr.WindowState:=WsNormal
else
   frm_EstProFor2Cpr.Show;

end;

procedure TFrm_Princ.rpro_0157Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_contagem'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Contagem,Frm_Contagem);
   Frm_Contagem.top:=0;
   end;

if Frm_Contagem.WindowState=WsMinimized then
   Frm_Contagem.WindowState:=WsNormal
else
   frm_Contagem.Show;

end;

procedure TFrm_Princ.rpro_0139Click(Sender: TObject);
begin
fpromed_origem:=0;

testeform := TFrm_Princ(FindGlobalComponent('frm_medpro02'));

if (testeform=nil)  then
   begin
   Application.createform(TFrm_medPro02,Frm_MedPro02);
   Frm_MedPro02.top:=0;
   end;

if Frm_MedPro02.WindowState=WsMinimized then
   Frm_Medpro02.WindowState:=WsNormal
else
   Frm_MedPro02.Show;

//FreeAndNil(Frm_MedPro02);

end;

procedure TFrm_Princ.rpro_0145Click(Sender: TObject);
begin
FProMed_Origem:=1;

testeform := TFrm_Princ(FindGlobalComponent('frm_medpro02'));

if (testeform=nil)  then
   begin
   Application.createform(TFrm_medPro02,Frm_MedPro02);
   Frm_MedPro02.top:=0;
   end;

if Frm_MedPro02.WindowState=WsMinimized then
   Frm_Medpro02.WindowState:=WsNormal
else
   frm_MedPro02.ShowModal;

FreeAndNil(Frm_MedPro02);

end;

procedure TFrm_Princ.rpro_0142Click(Sender: TObject);
begin
fProabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_proabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProABC,Frm_ProABC);
   Frm_ProABC.top:=0;
   end;

if Frm_ProABC.WindowState=WsMinimized then
   Frm_ProABC.WindowState:=WsNormal
else
   frm_ProABC.Show;

end;

procedure TFrm_Princ.rpro_0148Click(Sender: TObject);
begin
fProabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_proabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProABC,Frm_ProABC);
   Frm_ProABC.top:=0;
   end;

if Frm_ProABC.WindowState=WsMinimized then
   Frm_ProABC.WindowState:=WsNormal
else
   frm_ProABC.Show;

end;

procedure TFrm_Princ.rpro_0151Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Vpro,Frm_Vpro);
   Frm_VPro.top:=0;
   end;

if Frm_Vpro.WindowState=WsMinimized then
   Frm_Vpro.WindowState:=WsNormal
else
   frm_Vpro.Show;

end;

procedure TFrm_Princ.rpro_0154Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_musar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Musar,Frm_Musar);
   Frm_Musar.top:=0;
   end;

if Frm_Musar.WindowState=WsMinimized then
   Frm_Musar.WindowState:=WsNormal
else
   frm_musar.Show;

end;

procedure TFrm_Princ.rpro_0181Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_etiqprod'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EtiqProd,Frm_EtiqProd);
   Frm_EtiqProd.top:=0;
   end;

if Frm_EtiqProd.WindowState=WsMinimized then
   Frm_EtiqProd.WindowState:=WsNormal
else
   frm_EtiqProd.Show;

end;

procedure TFrm_Princ.rpro_0160Click(Sender: TObject);
begin


testeform := TFrm_Princ(FindGlobalComponent('Form_ProCodBar_laser'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProCodBar,Form_ProCodBar_laser);

   Form_ProCodBar_laser.top:=0;
   if (Screen.WIDTH=800) and
      (Screen.Height=600) then
      Form_ProCodBar_laser.Height:=467;
   end;


Form_ProCodBar_laser.mProCodBar_Origem:=0;
Form_ProCodBar_laser.fAtivarConfiguracoes;
Form_ProCodBar_laser.Caption:=Form_ProCodBar_laser.Caption+' LASER ';

if Form_ProCodBar_laser.WindowState=WsMinimized then
   Form_ProCodBar_laser.WindowState:=WsNormal
else
   Form_ProCodBar_laser.Show;

end;

procedure TFrm_Princ.rpro_0187Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_termica_produtos'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_termica_produtos,frm_termica_produtos);
   frm_termica_produtos.top:=0;
   end;

if frm_termica_produtos.WindowState=WsMinimized then
   frm_termica_produtos.WindowState:=WsNormal
else
   frm_termica_produtos.Show;

end;

procedure TFrm_Princ.rest_0103Click(Sender: TObject);
begin
mreltab:='CADUF';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_uf'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_uf);
   end;
if form_per2_uf.WindowState=WsMinimized then
   form_per2_uf.WindowState:=WsNormal
else
   form_per2_uf.Show;

end;

procedure TFrm_Princ.rest_0106Click(Sender: TObject);
begin
fUFabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_ufabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_UFABC,Frm_UFABC);
   Frm_UFABC.top:=0;
   end;
if Frm_UFABC.WindowState=WsMinimized then
   Frm_UFABC.WindowState:=WsNormal
else
   frm_UFABC.Show;



end;

procedure TFrm_Princ.rest_0109Click(Sender: TObject);
begin
FMedUF_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_meduf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedUF,Frm_MedUF);
   Frm_MedUF.top:=0;
   end;

if Frm_MedUF.WindowState=WsMinimized then
   Frm_MedUF.WindowState:=WsNormal
else
   frm_MedUF.Show;

end;

procedure TFrm_Princ.rest_0112Click(Sender: TObject);
begin
fUFabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_ufabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_UFABC,Frm_UFABC);
   Frm_UFABC.top:=0;
   end;

if Frm_UFABC.WindowState=WsMinimized then
   Frm_UFABC.WindowState:=WsNormal
else
   frm_UFABC.Show;

end;

procedure TFrm_Princ.rest_0115Click(Sender: TObject);
begin

FMedUF_Origem:=1;

testeform := TFrm_Princ(FindGlobalComponent('frm_meduf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedUF,Frm_MedUF);
   Frm_Meduf.top:=0;
   end;

if Frm_MedUF.WindowState=WsMinimized then
   Frm_MedUF.WindowState:=WsNormal
else
   frm_MedUF.Show;

end;

procedure TFrm_Princ.rest_0118Click(Sender: TObject);
begin
mreltab:='CADLOC';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_Loc'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_Loc);
if form_per2_Loc.WindowState=WsMinimized then
   form_per2_Loc.WindowState:=WsNormal
else
   form_per2_Loc.Show;

end;

procedure TFrm_Princ.rest_0121Click(Sender: TObject);
begin
mreltab:='CADBAI';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_Bai'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_Bai);
if form_per2_Bai.WindowState=WsMinimized then
   form_per2_Bai.WindowState:=WsNormal
else
   form_per2_Bai.Show;

end;

procedure TFrm_Princ.rtpro_0103Click(Sender: TObject);
begin
mreltab:='CADTP';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_tpro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_tpro);

if form_per2_tpro.WindowState=WsMinimized then
   form_per2_tpro.WindowState:=WsNormal
else
   form_per2_tpro.Show;

end;

procedure TFrm_Princ.rtpro_0106Click(Sender: TObject);
begin
fTProabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_Tproabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TproABC,Frm_TproABC);
   Frm_TProABC.top:=0;
   end;

if Frm_TproABC.WindowState=WsMinimized then
   Frm_TproABC.WindowState:=WsNormal
else
   frm_TproABC.Show;

end;

procedure TFrm_Princ.rtpro_0109Click(Sender: TObject);
begin
FMedTPro_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_medtpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedtPRo,Frm_MedtPro);
   Frm_MedTPro.top:=0;
   end;

if Frm_MedTPro.WindowState=WsMinimized then
   Frm_MedTPRo.WindowState:=WsNormal
else
   frm_MedTPro.Show;

end;

procedure TFrm_Princ.rtpro_0112Click(Sender: TObject);
begin
fTProabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_tproabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TproABC,Frm_TproABC);
   Frm_TProABC.top:=0;
   end;

if Frm_TproABC.WindowState=WsMinimized then
   Frm_TproABC.WindowState:=WsNormal
else
   frm_TproABC.Show;

end;

procedure TFrm_Princ.rtpro_0115Click(Sender: TObject);
begin
FMedTPro_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_medtpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedtPRo,Frm_MedtPro);
   Frm_MedTPro.top:=0;
   end;

if Frm_MedTPro.WindowState=WsMinimized then
   Frm_MedTPRo.WindowState:=WsNormal
else
   frm_MedTPro.Show;

end;

procedure TFrm_Princ.rgpro_0103Click(Sender: TObject);
begin
mreltab:='CADGRU';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_gpro'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_gpro);

if form_per2_gpro.WindowState=WsMinimized then
   form_per2_gpro.WindowState:=WsNormal
else
   form_per2_gpro.Show;

end;

procedure TFrm_Princ.rgpro_0106Click(Sender: TObject);
begin
fGruabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_gruabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GruABC,Frm_GruABC);
   Frm_GruABC.top:=0;
   end;

if Frm_GruABC.WindowState=WsMinimized then
   Frm_GruABC.WindowState:=WsNormal
else
   frm_GruABC.Show;

end;

procedure TFrm_Princ.rgpro_0109Click(Sender: TObject);
begin
FMedGru_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_medgru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedGRU,Frm_MedGRU);
   Frm_MedGru.top:=0;
   end;

if Frm_MedGRU.WindowState=WsMinimized then
   Frm_MedGRU.WindowState:=WsNormal
else
   frm_MEDGRU.Show;

end;

procedure TFrm_Princ.rgpro_0112Click(Sender: TObject);
begin
fGruabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_gruabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GruABC,Frm_GruABC);
   Frm_GruABC.top:=0;
   end;

if Frm_GruABC.WindowState=WsMinimized then
   Frm_GruABC.WindowState:=WsNormal
else
   frm_GruABC.Show;

end;

procedure TFrm_Princ.rgpro_0115Click(Sender: TObject);
begin
FMedGru_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_medgru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedGRU,Frm_MedGRU);
   Frm_MedGru.top:=0;
   end;

if Frm_MedGRU.WindowState=WsMinimized then
   Frm_MedGRU.WindowState:=WsNormal
else
   frm_MEDGRU.Show;

end;

procedure TFrm_Princ.rcpro_0103Click(Sender: TObject);
begin
mreltab:='CADCON';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_cpro'));
if (testeform=nil)  then

   Application.createform(Tfrm_per2,form_per2_cpro);

if form_per2_cpro.WindowState=WsMinimized then
   form_per2_cpro.WindowState:=WsNormal
else
   form_per2_cpro.Show;

end;

procedure TFrm_Princ.rcpro_0106Click(Sender: TObject);
begin
fTConabc_Origem:=0;

testeform := TFrm_Princ(FindGlobalComponent('frm_tconabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TconABC,Frm_TconABC);
   Frm_TConABC.top:=0;
   end;

if Frm_TconABC.WindowState=WsMinimized then
   Frm_TconABC.WindowState:=WsNormal
else
   frm_TconABC.Show;

end;

procedure TFrm_Princ.rcpro_0109Click(Sender: TObject);
begin
FMedTCon_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_medtcon'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedTcon,Frm_MedTcon);
   Frm_MedTCon.top:=0;
   end;

if Frm_MedTcon.WindowState=WsMinimized then
   Frm_MedTcon.WindowState:=WsNormal
else
   frm_MedTcon.Show;

end;

procedure TFrm_Princ.rcpro_0112Click(Sender: TObject);
begin
fTConabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_tconabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TconABC,Frm_TconABC);
   Frm_TConABC.top:=0;
   end;

if Frm_TconABC.WindowState=WsMinimized then
   Frm_TconABC.WindowState:=WsNormal
else
   frm_TconABC.Show;

end;

procedure TFrm_Princ.rcpro_0115Click(Sender: TObject);
begin
FMedTCon_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_medtcon'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedTcon,Frm_MedTcon);
   Frm_MedTCon.top:=0;
   end;

if Frm_MedTcon.WindowState=WsMinimized then
   Frm_MedTcon.WindowState:=WsNormal
else
   frm_MedTcon.Show;

end;

procedure TFrm_Princ.rger_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_tped,Frm_tped);
   Frm_TPed.top:=0;
   end;


if Frm_TPed.WindowState=WsMinimized then
   Frm_TPed.WindowState:=WsNormal
else
   frm_TPed.Show;

end;

procedure TFrm_Princ.rger_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rmem'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RMen,Frm_RMen);
   Frm_RMen.top:=0;
   end;

if Frm_RMen.WindowState=WsMinimized then
   Frm_RMen.WindowState:=WsNormal
else
   Frm_RMen.Show;

end;

procedure TFrm_Princ.rger_0224Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_evento'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Evento,Frm_Evento);
   Frm_Evento.top:=0;
   end;

if Frm_Evento.WindowState=WsMinimized then
   Frm_Evento.WindowState:=WsNormal
else
   frm_Evento.Show;

end;

procedure TFrm_Princ.rger_0200Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ldr02'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_ldr02);
   end;

mreltab:='CADLDR';

if form_per2_ldr02.WindowState=WsMinimized then
   form_per2_ldr02.WindowState:=WsNormal
else
   form_per2_ldr02.Show;

end;

procedure TFrm_Princ.rger_0209Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcpreal'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_RCPReal, Frm_RCPReal);
   Frm_RCPReal.top:=0;
   end;


if Frm_RCPReal.WindowState=WsMinimized then
   Frm_RCPReal.WindowState:=WsNormal
else
   frm_RCPReal.Show;

end;

procedure TFrm_Princ.rger_0212Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_rg'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RG,Frm_CX_RG);
   Frm_CX_RG.top:=0;
   end;


if Frm_CX_Rg.WindowState=WsMinimized then
   Frm_CX_Rg.WindowState:=WsNormal
else
   frm_CX_Rg.Show;

end;

procedure TFrm_Princ.rger_0215Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_rcc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RCC,Frm_CX_RCC);
   Frm_CX_RCC.top:=0;
   end;

if Frm_CX_RCC.WindowState=WsMinimized then
   Frm_CX_RCC.WindowState:=WsNormal
else
   frm_CX_RCC.Show;

end;

procedure TFrm_Princ.rger_0218Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_rana'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RAna,Frm_CX_RAna);
   Frm_CX_RAna.top:=0;
   end;

if Frm_CX_RAna.WindowState=WsMinimized then
   Frm_CX_RAna.WindowState:=WsNormal
else
   frm_CX_RAna.Show;

end;

procedure TFrm_Princ.rger_0221Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_rd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RD,Frm_CX_RD);
   Frm_CX_RD.top:=0;
   end;

if Frm_CX_RD.WindowState=WsMinimized then
   Frm_CX_RD.WindowState:=WsNormal
else
   frm_CX_RD.Show;

end;

procedure TFrm_Princ.rger_0230Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_rm'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RM,Frm_CX_RM);
   Frm_CX_RM.top:=0;
   end;
if Frm_CX_RM.WindowState=WsMinimized then
   Frm_CX_RM.WindowState:=WsNormal
else
   frm_CX_RM.Show;

end;

procedure TFrm_Princ.rger_0245Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_extbco'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExtBco,Frm_ExtBco);
   Frm_ExtBco.top:=0;
   end;

if Frm_ExtBco.WindowState=WsMinimized then
   Frm_ExtBco.WindowState:=WsNormal
else
   frm_ExtBco.Show;

end;

procedure TFrm_Princ.rger_0248Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cxsaldo2dias'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CxSaldo2Dias,Frm_CxSalDo2dias);
   Frm_CxSaldo2dias.top:=0;
   end;
if Frm_CxSaldo2Dias.WindowState=WsMinimized then
   Frm_CxSaldo2Dias.WindowState:=WsNormal
else
   frm_CxSaldo2dias.Show;

end;

procedure TFrm_Princ.rger_0257Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcct'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_RCCT,Frm_CX_RCCT);
   Frm_CX_RCCT.top:=0;
   end;

if Frm_CX_RCCT.WindowState=WsMinimized then
   Frm_CX_RCCT.WindowState:=WsNormal
else
   frm_CX_RCCT.Show;

end;

procedure TFrm_Princ.rger_0260Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_sintetico'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_Sintetico,Frm_CX_Sintetico);
   Frm_CX_Sintetico.top:=0;
   end;

if Frm_CX_Sintetico.WindowState=WsMinimized then
   Frm_CX_Sintetico.WindowState:=WsNormal
else
   frm_CX_SIntetico.Show;

end;

procedure TFrm_Princ.rger_0227Click(Sender: TObject);
begin
mreltab:='Gerenciais';
testeform := TFrm_Princ(FindGlobalComponent('frm_perger'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Perger,Frm_PErger);
   Frm_PerGer.top:=0;
   end;

if Frm_Perger.WindowState=WsMinimized then
   Frm_PErger.WindowState:=WsNormal
else
   frm_Perger.Show;

end;

procedure TFrm_Princ.rger_0233Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_comxvda'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComXVda,Frm_ComXVda);
   Frm_ComXVda.top:=0;
   end;

if Frm_ComXVda.WindowState=WsMinimized then
   Frm_ComXVda.WindowState:=WsNormal
else
   frm_ComXVda.Show;

end;

procedure TFrm_Princ.rger_0236Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vdaxcomp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_VdaxComp,Frm_VdaXComp);
   Frm_VdaXComp.top:=0;
   end;

if Frm_VdaxComp.WindowState=WsMinimized then
   Frm_VdaXComp.WindowState:=WsNormal
else
   frm_VdaXComp.Show;

end;

procedure TFrm_Princ.rger_0239Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lucent'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LucEnt,Frm_LucEnt);
   Frm_LucEnt.top:=0;
   end;

if Frm_LucEnt.WindowState=WsMinimized then
   Frm_LucEnt.WindowState:=WsNormal
else
   frm_LucEnt.Show;

end;

procedure TFrm_Princ.rger_0242Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lucsai'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LUCSAI,Frm_LUCSAI);
   Frm_LucSai.top:=0;
   end;

if Frm_LUCSAI.WindowState=WsMinimized then
   Frm_LUCSAI.WindowState:=WsNormal
else
   frm_LUCSAI.Show;

end;

procedure TFrm_Princ.rger_0251Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resfat'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResFat,Frm_ResFat);
   Frm_ResFat.top:=0;
   end;

if Frm_ResFat.WindowState=WsMinimized then
   Frm_ResFat.WindowState:=WsNormal
else
   frm_ResFat.Show;

end;

procedure TFrm_Princ.rger_0254Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fluxodpchq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FluxoDPCHQ,Frm_FluxoDPCHQ);
   Frm_FluxoDPCHQ.top:=0;
   end;

if Frm_FluxoDPCHQ.WindowState=WsMinimized then
   Frm_FluxoDPCHQ.WindowState:=WsNormal
else
   frm_FluxoDPCHQ.Show;

end;

procedure TFrm_Princ.rger_0263Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_ResumoDiario'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResumoDiario,Frm_ResumoDiario);
   Frm_ResumoDiario.top:=0;
   end;

if Frm_ResumoDiario.WindowState=WsMinimized then
   Frm_ResumoDiario.WindowState:=WsNormal
else
   frm_ResumoDiario.Show;

end;

procedure TFrm_Princ.rger_0266Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_balprocol'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_BalProCol,Frm_BalProCol);
   Frm_BalProCol.top:=0;
   end;

if Frm_BalProCol.WindowState=WsMinimized then
   Frm_BalProCol.WindowState:=WsNormal
else
   frm_BalProCol.Show;

end;

procedure TFrm_Princ.rven_0103Click(Sender: TObject);
begin
mreltab:='CADVEN';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ven'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_ven);
   end;

if form_per2_ven.WindowState=WsMinimized then
   form_per2_ven.WindowState:=WsNormal
else
   form_per2_ven.Show;

end;

procedure TFrm_Princ.rven_0118Click(Sender: TObject);
begin
pComVOrigem:=5;
testeform := TFrm_Princ(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComVV,Frm_ComVV);
   Frm_ComVV.top:=0;
   end;

if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;

end;

procedure TFrm_Princ.rven_0121Click(Sender: TObject);
begin
pComVOrigem:=6;
testeform := TFrm_Princ(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComVV,Frm_ComVV);
   Frm_ComVV.top:=0;
   end;

if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;

end;

procedure TFrm_Princ.rven_0124Click(Sender: TObject);
begin
pComVOrigem:=7;
testeform := TFrm_Princ(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComVV,Frm_ComVV);
   Frm_ComVV.top:=0;
   end;

if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;

end;

procedure TFrm_Princ.rven_0133Click(Sender: TObject);
begin
//// virificar com lindomar
pComVOrigem:=8;
testeform := TFrm_Princ(FindGlobalComponent('frm_comvv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComVV,Frm_ComVV);
   Frm_ComVV.top:=0;
   end;

if Frm_ComVV.WindowState=WsMinimized then
   Frm_ComVV.WindowState:=WsNormal
else
   frm_ComVV.Show;

end;

procedure TFrm_Princ.rven_0106Click(Sender: TObject);
begin
pComROrigem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComRV,Frm_ComRV);
   Frm_ComRV.top:=0;
   end;

if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;

end;

procedure TFrm_Princ.rven_0109Click(Sender: TObject);
begin
pComROrigem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComRV,Frm_ComRV);
   Frm_ComRV.top:=0;
   end;

if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;

end;

procedure TFrm_Princ.rven_0112Click(Sender: TObject);
begin
pComROrigem:=2;
testeform := TFrm_Princ(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComRV,Frm_ComRV);
   Frm_ComRV.top:=0;
   end;

if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;

end;

procedure TFrm_Princ.rven_0130Click(Sender: TObject);
begin
//// virificar com lindomar
pComROrigem:=3;
testeform := TFrm_Princ(FindGlobalComponent('frm_comrv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComRV,Frm_ComRV);
   Frm_ComRV.top:=0;
   end;

if Frm_ComRV.WindowState=WsMinimized then
   Frm_ComRV.WindowState:=WsNormal
else
   frm_ComRV.Show;

end;

procedure TFrm_Princ.rven_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_VABC,Frm_VABC);
   Frm_VABC.top:=0;
   end;

if Frm_VABC.WindowState=WsMinimized then
   Frm_VABC.WindowState:=WsNormal
else
   frm_VABC.Show;

end;

procedure TFrm_Princ.rven_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_medven'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedVen,Frm_MedVEn);
   Frm_MedVen.top:=0;
   end;

if Frm_MedVen.WindowState=WsMinimized then
   Frm_MedVen.WindowState:=WsNormal
else
   frm_MEdVEn.Show;

end;

procedure TFrm_Princ.rven_0142Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relvendacomis'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelVendaComis,Frm_RelVendaComis);
   Frm_RelVendaComis.top:=0;
   end;

if Frm_RelVendaComis.WindowState=WsMinimized then
   Frm_RelVendaComis.WindowState:=WsNormal
else
   frm_RelVendaComis.Show;

end;

procedure TFrm_Princ.rven_0148Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relcomis_rec'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelComis_Rec,Frm_RelComis_Rec);
   Frm_RelComis_Rec.top:=0;
   end;

if Frm_RelComis_Rec.WindowState=WsMinimized then
   Frm_RelComis_Rec.WindowState:=WsNormal
else
   frm_RelComis_Rec.Show;

end;

procedure TFrm_Princ.rven_0145Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relvendgfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Vend_RelVendGFor,Frm_Vend_RelVendGFor);
   Frm_Vend_RelVendGFor.top:=0;
   end;

if Frm_Vend_RelVendGFor.WindowState=WsMinimized then
   Frm_Vend_RelVendGFor.WindowState:=WsNormal
else
   frm_Vend_RelVendGFor.Show;

end;

procedure TFrm_Princ.rven_0151Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_abc_assessor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ABC_Assessor,Frm_ABC_Assessor);
   Frm_ABC_Assessor.top:=0;
   end;

if Frm_ABC_Assessor.WindowState=WsMinimized then
   Frm_ABC_Assessor.WindowState:=WsNormal
else
   frm_ABC_Assessor.Show;

end;

procedure TFrm_Princ.rven_0153Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_demonstrativo'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_demonstrativo,frm_demonstrativo);
   frm_demonstrativo.top:=0;
   end;


if frm_demonstrativo.WindowState=WsMinimized then
   frm_demonstrativo.WindowState:=WsNormal
else
   frm_demonstrativo.Show;

end;

procedure TFrm_Princ.RelatrioComparativodeComisses1Click(Sender: TObject);
begin
fmensagem('Em Desenvolvimento!',0,['0'],0);

end;

procedure TFrm_Princ.rtra_0103Click(Sender: TObject);
begin
mreltab:='CADTRA';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_tra'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_tra);

if form_per2_tra.WindowState=WsMinimized then
   form_per2_tra.WindowState:=WsNormal
else
   form_per2_tra.Show;

end;

procedure TFrm_Princ.rusu_0103Click(Sender: TObject);
begin
mreltab:='CADUSR';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_usr'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_usr);

if form_per2_usr.WindowState=WsMinimized then
   form_per2_usr.WindowState:=WsNormal
else
   form_per2_usr.Show;

end;

procedure TFrm_Princ.rbco_0103Click(Sender: TObject);
begin
mreltab:='CADBCO';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_bco'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_bco);

if form_per2_bco.WindowState=WsMinimized then
   form_per2_bco.WindowState:=WsNormal
else
   form_per2_bco.Show;

end;

procedure TFrm_Princ.rfun_0103Click(Sender: TObject);
begin
mreltab:='CADCAR';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_car'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_car);

if form_per2_car.WindowState=WsMinimized then
   form_per2_car.WindowState:=WsNormal
else
   form_per2_car.Show;

end;

procedure TFrm_Princ.rpv_0103Click(Sender: TObject);
begin
mreltab:='CADPV';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_pv'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pv);

if form_per2_pv.WindowState=WsMinimized then
   form_per2_pv.WindowState:=WsNormal
else
   form_per2_pv.Show;

end;

procedure TFrm_Princ.rccu_0103Click(Sender: TObject);
begin
mreltab:='CADCCU';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_CCU'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_CCU);

if form_per2_CCU.WindowState=WsMinimized then
   form_per2_CCU.WindowState:=WsNormal
else
   form_per2_CCU.Show;

end;

procedure TFrm_Princ.rdep_0103Click(Sender: TObject);
begin
mreltab:='CADDEP';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_depcx'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_depcx);

if form_per2_depcx.WindowState=WsMinimized then
   form_per2_depcx.WindowState:=WsNormal
else
   form_per2_depcx.Show;

end;

procedure TFrm_Princ.rcai_0103Click(Sender: TObject);
begin
mreltab:='CADLDR';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ldr'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ldr);

if form_per2_ldr.WindowState=WsMinimized then
   form_per2_ldr.WindowState:=WsNormal
else
   form_per2_ldr.Show;

end;

procedure TFrm_Princ.rpfor_0101Click(Sender: TObject);
begin
mreltab:='CADPF1';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_pf1'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pf1);
if form_per2_pf1.WindowState=WsMinimized then
   form_per2_pf1.WindowState:=WsNormal
else
   form_per2_pf1.Show;

end;

procedure TFrm_Princ.rpfor_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rpfor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RPFor,Frm_RPFor);
   Frm_RPFor.top:=0;
   end;

if Frm_RPFor.WindowState=WsMinimized then
   Frm_RPFor.WindowState:=WsNormal
else
   frm_RPFor.Show;

end;

procedure TFrm_Princ.rped_0301Click(Sender: TObject);
begin
mreltab:='CADPEN';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_pen'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pen);

if form_per2_pen.WindowState=WsMinimized then
   form_per2_pen.WindowState:=WsNormal
else
   form_per2_pen.Show;

end;

procedure TFrm_Princ.rped_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RPEd,Frm_Rped);
   Frm_RPed.top:=0;
   end;
if Frm_Rped.WindowState=WsMinimized then
   Frm_Rped.WindowState:=WsNormal
else
   frm_Rped.Show;

end;

procedure TFrm_Princ.rped_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resqtdped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResQtdPed,Frm_ResQtdPed);
   Frm_ResQtdPed.top:=0;
   end;

if Frm_ResQtdPed.WindowState=WsMinimized then
   Frm_ResQtdped.WindowState:=WsNormal
else
   frm_ResQtdPed.Show;

end;

procedure TFrm_Princ.rped_0101Click(Sender: TObject);
begin
mreltab:='CADP01';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ped01'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_ped01);
   end;

if form_per2_ped01.WindowState=WsMinimized then
   form_per2_ped01.WindowState:=WsNormal
else
   form_per2_ped01.Show;

end;

procedure TFrm_Princ.rped_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rped_encargos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rped_Encargos,Frm_Rped_Encargos);
   Frm_RPed_Encargos.top:=0;
   end;

if Frm_Rped_Encargos.WindowState=WsMinimized then
   Frm_Rped_encargos.WindowState:=WsNormal
else
   frm_Rped_Encargos.Show;

end;

procedure TFrm_Princ.rped_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resumo_fpped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Resumo_FppEd,Frm_Resumo_Fpped);
   Frm_Resumo_FPPed.top:=0;
   end;

if Frm_Resumo_Fpped.WindowState=WsMinimized then
   Frm_Resumo_Fpped.WindowState:=WsNormal
else
   frm_Resumo_Fpped.Show;

end;

procedure TFrm_Princ.rped_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relped_fpped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Relped_Fpped,Frm_Relped_Fpped);
   Frm_RelPed_FPPed.top:=0;
   end;

if Frm_Relped_Fpped.WindowState=WsMinimized then
   Frm_Relped_fpped.WindowState:=WsNormal
else
   frm_Relped_fpped.Show;

end;

procedure TFrm_Princ.rped_0119Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_nfsser'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_nfsser,Frm_nfsser);
   frm_nfsser.top:=0;
   end;


if Frm_nfsser.WindowState=WsMinimized then
   Frm_nfsser.WindowState:=WsNormal
else
   Frm_nfsser.Show;

end;

procedure TFrm_Princ.rrpro_0103Click(Sender: TObject);
begin
   mreltab := 'CADRAM';
   testeform := TFrm_Princ(FindGlobalComponent('form_per2_RPro'));
   if (testeform=nil)  then
      begin
      Application.createform(Tfrm_per2,form_per2_RPro);
      end;
   if form_per2_RPro.WindowState=WsMinimized then
      form_per2_RPro.WindowState:=WsNormal
   else
      form_per2_RPro.Show;

end;

procedure TFrm_Princ.rrpro_0106Click(Sender: TObject);
begin
fRProabc_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_rproabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RProABC,Frm_RproABC);
   Frm_RProABC.top:=0;
   end;

if Frm_RproABC.WindowState=WsMinimized then
   Frm_RproABC.WindowState:=WsNormal
else
   frm_RproABC.Show;

end;

procedure TFrm_Princ.rrpro_0109Click(Sender: TObject);
begin
FMedRPro_Origem:=0;
testeform := TFrm_Princ(FindGlobalComponent('frm_medrpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedRpro,Frm_MedRPro);
   Frm_MedRPro.top:=0;
   end;

if Frm_MedRPro.WindowState=WsMinimized then
   Frm_MedRpro.WindowState:=WsNormal
else
   frm_medRpro.Show;

end;

procedure TFrm_Princ.rrpro_0112Click(Sender: TObject);
begin
fRProabc_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_rproabc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RProABC,Frm_RproABC);
   Frm_RProABC.top:=0;
   end;

if Frm_RproABC.WindowState=WsMinimized then
   Frm_RproABC.WindowState:=WsNormal
else
   frm_RproABC.Show;

end;

procedure TFrm_Princ.rrpro_0115Click(Sender: TObject);
begin
FMedRPro_Origem:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_medrpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedRpro,Frm_MedRPro);
   Frm_MedRPro.top:=0;
   end;

if Frm_MedRPro.WindowState=WsMinimized then
   Frm_MedRpro.WindowState:=WsNormal
else
   frm_medRpro.Show;

end;

procedure TFrm_Princ.rimo_0103Click(Sender: TObject);
begin
mreltab:='CADIMO';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_imo'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_imo);
   end;
if form_per2_imo.WindowState=WsMinimized then
   form_per2_imo.WindowState:=WsNormal
else
   form_per2_imo.Show;

end;

procedure TFrm_Princ.rimo_0106Click(Sender: TObject);
begin
mreltab:='CADMIMO';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_mImo'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_per2,form_per2_mimo);
   end;
if form_per2_mImo.WindowState=WsMinimized then
   form_per2_mImo.WindowState:=WsNormal
else
   form_per2_mImo.Show;

end;

procedure TFrm_Princ.rvei_0103Click(Sender: TObject);
begin
mreltab:='CADVEI01';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_vei01'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_vei01);
if form_per2_vei01.WindowState=WsMinimized then
   form_per2_vei01.WindowState:=WsNormal
else
   form_per2_vei01.Show;

end;

procedure TFrm_Princ.rvei_0106Click(Sender: TObject);
begin
mreltab:='CADMVEI';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_mvei'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_mvei);
if form_per2_mvei.WindowState=WsMinimized then
   form_per2_mvei.WindowState:=WsNormal
else
   form_per2_mvei.Show;

end;

procedure TFrm_Princ.rmoe_0103Click(Sender: TObject);
begin
mreltab:='CADMOE';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_moe'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_moe);
if form_per2_moe.WindowState=WsMinimized then
   form_per2_moe.WindowState:=WsNormal
else
   form_per2_moe.Show;

end;

procedure TFrm_Princ.ros_0103Click(Sender: TObject);
begin
mreltab:='CADOS';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_os'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_os);
if form_per2_os.WindowState=WsMinimized then
   form_per2_os.WindowState:=WsNormal
else
   form_per2_os.Show;

end;

procedure TFrm_Princ.rdiv_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rani'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rani,Frm_Rani);
   Frm_RAni.top:=0;
   end;

if Frm_Rani.WindowState=WsMinimized then
   Frm_Rani.WindowState:=WsNormal
else
   frm_Rani.Show;

end;

procedure TFrm_Princ.rind_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relconprod'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelConProd,Frm_RelConProd);
   Frm_RelConProd.top:=0;
   end;

if Frm_RelConProd.WindowState=WsMinimized then
   Frm_RelConProd.WindowState:=WsNormal
else
   frm_RelConProd.Show;

end;

procedure TFrm_Princ.rind_0106Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_ind_reginv'));

if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ind_RegInv,Frm_Ind_RegInv);
   Frm_Ind_RegInv.top:=0;
   end;


if Frm_Ind_RegInv.WindowState=WsMinimized then
   Frm_Ind_RegInv.WindowState:=WsNormal
else
   frm_Ind_RegInv.Show;

end;

procedure TFrm_Princ.rfun_0001Click(Sender: TObject);
begin
   mreltab := 'CADFUN';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_Fun'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_Fun);

if form_per2_Fun.WindowState=WsMinimized then
   form_per2_Fun.WindowState:=WsNormal
else
   form_per2_Fun.Show;

end;

procedure TFrm_Princ.est_0103Click(Sender: TObject);
begin
mSelGra_Origem:=1; // produtos Entradas
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0106Click(Sender: TObject);
begin
mSelGra_Origem:=0; // produtos Saidas
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0109Click(Sender: TObject);
begin
mSelGra_Origem:=3; // Compras por Fornecedores
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0124Click(Sender: TObject);
begin
mSelGra_Origem:=2; // Vendas por Fornecedores
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0112Click(Sender: TObject);
begin
mSelGra_Origem:=4; // Vendas Por Cliente
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0118Click(Sender: TObject);
begin
mSelGra_Origem:=5; // Vendas Por Rede de Cliente
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0121Click(Sender: TObject);
begin
mSelGra_Origem:=6; // Vendas Por Convenios
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_gper'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GPer,Frm_GPer);
   Frm_GPer.top:=0;
   end;

if Frm_GPer.WindowState=WsMinimized then
   Frm_GPEr.WindowState:=WsNormal
else
   frm_GPer.Show;

end;

procedure TFrm_Princ.est_0127Click(Sender: TObject);
begin
mSelGra_Origem:=17; //estado
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0130Click(Sender: TObject);
begin
mSelGra_Origem:=18; // Vendas Por Estado
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0133Click(Sender: TObject);
begin
mSelGra_Origem:=8; // Entradas por Tipo de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0136Click(Sender: TObject);
begin
mSelGra_Origem:=7; // Vendas Por Tipo de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0139Click(Sender: TObject);
begin
mSelGra_Origem:=10; // Entradas por Grupo de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;
   
if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0142Click(Sender: TObject);
begin
mSelGra_Origem:=9; // Saidas por Grupo de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0145Click(Sender: TObject);
begin
mSelGra_Origem:=15; // Saidas Por Vendedor
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0148Click(Sender: TObject);
begin
mSelGra_Origem:=16; // Saidas Por Supervisor
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0151Click(Sender: TObject);
begin
mSelGra_Origem:=19; // Entradas por Empresa
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0154Click(Sender: TObject);
begin
mSelGra_Origem:=20; // Saidas por Empresa
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0157Click(Sender: TObject);
begin
mSelGra_Origem:=12; // Entradas por Ramo de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0160Click(Sender: TObject);
begin
mSelGra_Origem:=11; // Saidas por Ramo Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0163Click(Sender: TObject);
begin
mSelGra_Origem:=14; // Entradas por Controle de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.est_0166Click(Sender: TObject);
begin
mSelGra_Origem:=13; // Saidas por Controle de Produtos
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.sai_0202Click(Sender: TObject);
begin
if codemp>100 then
  begin
  fmensagem('Favor Trocar de Empresa',0,['0'],0);
  Exit;
  end
else
  begin
  testeform := TFrm_Princ(FindGlobalComponent('frm_sobra_dev'));
  if (testeform=nil)  then
     begin
     Application.CreateForm(Tfrm_sobra_dev, Frm_Sobra_dev);
     frm_sobra_dev.top:=0;
     end;

  if frm_sobra_dev.WindowState=WsMinimized then
     Frm_sobra_dev.WindowState:=WsNormal
  else
     frm_sobra_dev.Show;
  end;
end;

procedure TFrm_Princ.sai_0109Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;



testeform := TFrm_Princ(FindGlobalComponent('frm_cele'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CEle,Frm_CEle);
   Frm_CEle.top:=0;
   end;


if Frm_CEle.WindowState=WsMinimized then
   Frm_CEle.WindowState:=WsNormal
else
   frm_CEle.Show;

end;

procedure TFrm_Princ.sai_0142Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;

testeform := TFrm_Princ(FindGlobalComponent('frm_emitirnf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EmitirNF,Frm_EmitirNF);
   Frm_EmitirNF.top:=0;
   end;
Frm_EmitirNF.FormStyle:=fsNormal;
Frm_EmitirNF.Visible:=False;

if Frm_EmitirNF.WindowState=WsMinimized then
   Frm_EmitirNF.WindowState:=WsNormal
else
   frm_EmitirNF.ShowModal;

end;

procedure TFrm_Princ.sai_0118Click(Sender: TObject);
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin

   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);

   exit;
   end;
{
if codusr=1111 then
   begin
   }
   testeform := TFrm_Princ(FindGlobalComponent('frm_lic2'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_lic2,Frm_lic2);
      frm_lic2.top:=0;
      end;

   if Frm_Lic2.WindowState=WsMinimized then
      Frm_Lic2.WindowState:=WsNormal
   else
      frm_Lic2.Show;
//   end;
 {
else
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_lic1'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_lic1,Frm_lic1);
      frm_lic1.top:=0;
      end;


   if Frm_Lic1.WindowState=WsMinimized then
      Frm_Lic1.WindowState:=WsNormal
   else
      frm_Lic1.Show;
   end;
 }
end;

procedure TFrm_Princ.sai_0121Click(Sender: TObject);
var
mtipo_emprestimo: string;
begin

if DM1.Tb_EmpBLOQ.Value=1 then
   begin
   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
   exit;
   end;
if flfilpad(0,'_principal','CB_EMPRESTIMO_PADRAO') then
   begin
   mtipo_emprestimo:=DM4.Tb_FilPad2FPVALOR.AsString;
   end
else
   mtipo_emprestimo:='POR ITEM';


if mtipo_emprestimo='POR ITEM' then
  begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_fatemp_itens'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_FatEmp_itens,Frm_FatEmp_itens);
      Frm_FatEmp_itens.top:=0;
      end;

   if Frm_FatEmp_itens.WindowState=WsMinimized then
      Frm_FatEmp_itens.WindowState:=WsNormal
   else
      frm_FatEmp_itens.Show;
   end
else
   begin
   testeform := TFrm_Princ(FindGlobalComponent('frm_fatemp'));
   if (testeform=nil)  then
      begin
      Application.createform(TFrm_FatEmp,Frm_FatEmp);
      Frm_FatEmp.top:=0;
      end;

   if Frm_FatEmp.WindowState=WsMinimized then
      Frm_FatEmp.WindowState:=WsNormal
   else
      frm_FatEmp.Show;
   end;   
end;

procedure TFrm_Princ.sai_0133Click(Sender: TObject);
var
form_pedcli_Princ: tForm;
begin
testeform := TFrm_Princ(FindGlobalComponent('form_pedcli_Princ'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedCli,form_pedcli_Princ);
   Form_pedcli_Princ.FormStyle:=fsMDIChild;
   form_pedcli_Princ.top:=0;
   end;

if form_pedcli_Princ.WindowState=WsMinimized then
   Form_pedcli_Princ.WindowState:=WsNormal
else
   Form_pedcli_Princ.Show;

end;

procedure TFrm_Princ.sai_0136Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_manped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ManPEd,Frm_ManPEd);
   Frm_ManPed.top:=0;
   end;

if Frm_ManPEd.WindowState=WsMinimized then
   Frm_ManPEd.WindowState:=WsNormal
else
   frm_ManPEd.Show;

end;

procedure TFrm_Princ.sai_0154Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_etivol02'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Etivol02,Frm_Etivol02);
   Frm_Etivol02.top:=0;
   end;

if Frm_Etivol02.WindowState=WsMinimized then
   Frm_Etivol02.WindowState:=WsNormal
else
   frm_Etivol02.Show;

end;

procedure TFrm_Princ.sai_0139Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_etivol'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EtiVol,Frm_EtiVol);
   Frm_EtiVol.top:=0;
   end;

if Frm_EtiVol.WindowState=WsMinimized then
   Frm_EtiVol.WindowState:=WsNormal
else
   frm_EtiVol.Show;

end;

procedure TFrm_Princ.sai_0184Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_oriped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_OriPed,Frm_OriPed);
   Frm_OriPed.top:=0;
   end;

if Frm_OriPed.WindowState=WsMinimized then
   Frm_OriPed.WindowState:=WsNormal
else
   frm_OriPed.Show;

end;

procedure TFrm_Princ.sai_0145Click(Sender: TObject);
begin
//// verificar com lindomar

if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_trocas'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Trocas,Frm_Trocas);
   Frm_Trocas.top:=0;
   end;

if Frm_Trocas.WindowState=WsMinimized then
   Frm_Trocas.WindowState:=WsNormal
else
   frm_Trocas.Show;

end;

procedure TFrm_Princ.sai_0151Click(Sender: TObject);
begin
if codcai<>1 then
   begin
   codcai:=1;
   HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//   sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
   end;
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedBloq,Frm_PedBloq);
   Frm_PedBloq.FormStyle:=fsMDIChild;
   Frm_PedBloq.Visible  :=True;
   Frm_PedBloq.top:=0;
   end;

if Frm_PedBloq.WindowState=WsMinimized then
   Frm_PedBloq.WindowState:=WsNormal
else
   frm_PedBloq.Show;

end;

procedure TFrm_Princ.sai_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_min2'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Min2,Frm_Min2);
   Frm_min2.FormStyle:=fsMDIChild;
   Frm_Min2.top:=0;
   end;

if Frm_Min2.WindowState=WsMinimized then
   Frm_Min2.WindowState:=WsNormal
else
   frm_Min2.Show;

end;

procedure TFrm_Princ.sai_0160Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_min3'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Min3,Frm_Min3);
   Frm_min3.top:=0;
   end;

if Frm_Min3.WindowState=WsMinimized then
   Frm_Min3.WindowState:=WsNormal
else
   frm_Min3.Show;

end;

procedure TFrm_Princ.sai_0181Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_minrel'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MinRel,Frm_MinRel);
   Frm_MinRel.top:=0;
   end;

if Frm_MinRel.WindowState=WsMinimized then
   Frm_MinRel.WindowState:=WsNormal
else
   frm_MinRel.Show;

end;

procedure TFrm_Princ.sai_0196Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_confirma_entrega'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Confirma_Entrega, Frm_Confirma_Entrega);
   Frm_Confirma_Entrega.top:=0;
   end;

if Frm_Confirma_Entrega.WindowState=wsMinimized then
   Frm_Confirma_Entrega.WindowState:=wsNormal;
Frm_Confirma_Entrega.Show;

end;

procedure TFrm_Princ.sai_0163Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_conh_mercad'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Conh_MErcad,Frm_Conh_Mercad);
   Frm_Conh_Mercad.Top:=0;
   end;

if Frm_Conh_Mercad.WindowState=WsMinimized then
   Frm_Conh_Mercad.WindowState:=WsNormal
else
   frm_Conh_Mercad.Show;

end;

procedure TFrm_Princ.sai_0166Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_conh_merc_total'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Conh_Merc_Total,Frm_Conh_Merc_Total);
   Frm_Conh_Merc_Total.top:=0;
   end;

if Frm_Conh_Merc_Total.WindowState=WsMinimized then
   Frm_Conh_MErc_Total.WindowState:=WsNormal
else
   frm_Conh_Merc_Total.Show;

end;

procedure TFrm_Princ.sai_0172Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_conh_mercconfirma'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Conh_MercConfirma,Frm_Conh_MercConfirma);
   Frm_Conh_MercConfirma.top:=0;
   end;

if Frm_Conh_MercConfirma.WindowState=WsMinimized then
   Frm_Conh_MErcConfirma.WindowState:=WsNormal
else
   frm_Conh_MercConfirma.Show;

end;

procedure TFrm_Princ.sai_0169Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_conh_merccons'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Conh_MercCons,Frm_Conh_MercCons);
   Frm_Conh_MercCons.top:=0;
   end;

if Frm_Conh_MercCons.WindowState=WsMinimized then
   Frm_Conh_MercCons.WindowState:=WsNormal
else
   frm_Conh_MercCons.Show;

end;

procedure TFrm_Princ.sai_0175Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_prodentregar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProdEntregar,Frm_ProdEntregar);
   Frm_ProdEntregar.top:=0;
   end;

if Frm_ProdEntregar.WindowState=WsMinimized then
   Frm_ProdEntregar.WindowState:=WsNormal
else
   frm_ProdEntregar.Show;

end;

procedure TFrm_Princ.sai_0178Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rfechaconh'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RFechaConh,Frm_RFechaConh);
   Frm_RFechaConh.top:=0;
   end;

if Frm_RFechaConh.WindowState=WsMinimized then
   Frm_RFEchaConh.WindowState:=WsNormal
else
   frm_RFechaConh.Show;

end;

procedure TFrm_Princ.sai_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rom'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rom,Frm_Rom);
   Frm_Rom.top:=0;
   end;

if Frm_Rom.WindowState=WsMinimized then
   Frm_ROm.WindowState:=WsNormal
else
   frm_Rom.Show;

end;

procedure TFrm_Princ.mos_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_manos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Manos,Frm_Manos);
   Frm_ManOs.FormStyle:=fsMDIChild;
   Frm_ManOs.Visible  :=True;
   Frm_ManOs.top:=0;
   end;
if Frm_Manos.WindowState=WsMinimized then
   Frm_Manos.WindowState:=WsNormal
else
   frm_Manos.Show;
end;

procedure TFrm_Princ.mos_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_consos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ConSos,Frm_Consos);
   Frm_ConsOS.top:=0;
   end;

if Frm_ConSos.WindowState=WsMinimized then
   Frm_ConsOs.WindowState:=WsNormal
else
   frm_ConsOs.Show;

end;

procedure TFrm_Princ.mos_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_contrato'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Contrato,Frm_Contrato);
   Frm_Contrato.top:=0;
   end;

if Frm_Contrato.WindowState=WsMinimized then
   Frm_Contrato.WindowState:=WsNormal
else
   frm_Contrato.Show;

end;

procedure TFrm_Princ.mos_0115Click(Sender: TObject);
begin
if codemp>99 then
   begin
   Messagedlg('Valido somente nas empresas abaixo de 100',mtWarning,[mbOk],0);
   exit;
   end;

testeform := TFrm_Princ(FindGlobalComponent('frm_cont_serv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Cont_serv,Frm_Cont_Serv);
   Frm_Cont_Serv.top:=0;
   end;

if Frm_Cont_Serv.WindowState=WsMinimized then
   Frm_Cont_Serv.WindowState:=WsNormal
else
   frm_Cont_Serv.Show;

end;

procedure TFrm_Princ.mos_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_texto'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Texto, Frm_Texto);
   Frm_Texto.top:=0;
   end;

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

procedure TFrm_Princ.mos_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Relos,Frm_Relos);
   Frm_RelOS.top:=0;
   end;

if Frm_Relos.WindowState=WsMinimized then
   Frm_Relos.WindowState:=WsNormal
else
   frm_Relos.Show;

end;

procedure TFrm_Princ.saiconf_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);
   Frm_Editor_Word.top:=0;
   end;


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

procedure TFrm_Princ.saiconf_0106Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);
   Frm_Editor_Word.top:=0;
   end;


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

procedure TFrm_Princ.saiconf_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_editor_word'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);
   Frm_Editor_Word.top:=0;
   end;


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

procedure TFrm_Princ.saiconf_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pedido_fortes'));
if (testeform=nil)  then
   begin
   Application.Createform(TFrm_Pedido_Fortes, Frm_Pedido_Fortes);
   Frm_Pedido_Fortes.top:=0;
   end;

Frm_pedido_Fortes.Ts_Relatorio.TabVisible:=false;

if Frm_Pedido_Fortes.WindowState=WsMinimized then
   Frm_Pedido_Fortes.WindowState:=WsNormal
else
   Frm_Pedido_Fortes.Show;

end;

procedure TFrm_Princ.saiconf_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_editor_pedop'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Editor_PedOP,Frm_Editor_PedOP);
   Frm_Editor_PedOP.top:=0;
   end;


Frm_Editor_PedOP.Panel_rodape.Visible:=true;
Frm_Editor_PedOP.TsLegendaOrcam.TabVisible:=true;
Frm_Editor_PedOP.wp_texto.ReadOnly:=false;
Frm_Editor_PedOP.wp_texto.Clear;
if Frm_Editor_PedOP.WindowState=WsMinimized then
   Frm_Editor_PedOP.WindowState:=WsNormal
else
   frm_Editor_PedOP.Show;

end;

procedure TFrm_Princ.rent_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ne'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ne,Frm_ne);
   Frm_NE.top:=0;
   end;
if Frm_NE.WindowState=WsMinimized then
   Frm_NE.WindowState:=WsNormal
else
   frm_NE.Show;

end;

procedure TFrm_Princ.rsai_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ns'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_NS, Frm_Ns);
   Frm_NS.top:=0;
   end;


if Frm_Ns.WindowState=WsMinimized then
   Frm_Ns.WindowState:=WsNormal
else
   frm_Ns.Show;

end;

procedure TFrm_Princ.rsai_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_nf_compimp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_NF_CompImp,Frm_NF_CompImp);
   Frm_NF_CompImp.top:=0;
   end;

if Frm_NF_CompImp.WindowState=WsMinimized then
   Frm_NF_CompImp.WindowState:=WsNormal
else
   frm_NF_CompImp.Show;

end;

procedure TFrm_Princ.rsai_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mancsf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ManCSF,Frm_ManCSF);
   Frm_ManCSF.top:=0;
   end;

if Frm_ManCSF.WindowState=WsMinimized then
   Frm_manCSF.WindowState:=WsNormal
else
   frm_ManCSF.Show;

end;

procedure TFrm_Princ.gnre0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_gnre'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GNRE,Frm_GNRE);
   Frm_GNRE.top:=0;
   end;

if Frm_GNRE.WindowState=WsMinimized then
   Frm_GNRE.WindowState:=WsNormal
else
   frm_GNRE.Show;

end;

procedure TFrm_Princ.cfo_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cfo'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_CFO, Frm_CFO);
   Frm_CFO.FormStyle:=fsMDIChild;
   Frm_CFO.top:=0;
   end;


if Frm_CFO.WindowState=WsMinimized then
   Frm_CFO.WindowState:=WsNormal
else
   frm_CFO.Show;

end;

procedure TFrm_Princ.lf_0151Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cftabicm'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CFTabIcm,Frm_CFTabIcm);
   Frm_CFTabIcm.top:=0;
   end;

if Frm_CFTabIcm.WindowState=WsMinimized then
   Frm_CFTabIcm.WindowState:=WsNormal
else
   frm_CFTabIcm.Show;

end;

procedure TFrm_Princ.lf_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lre'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LRE,Frm_LRE);
   Frm_LRE.top:=0;
   end;
if Frm_LRE.WindowState=WsMinimized then
   Frm_LRE.WindowState:=WsNormal
else
   frm_LRE.Show;
end;

procedure TFrm_Princ.lf_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lrs'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LRS,Frm_LRS);
   Frm_LRS.top:=0;
   end;
if Frm_LRS.WindowState=WsMinimized then
   Frm_LRS.WindowState:=WsNormal
else
   frm_LRS.Show;
end;

procedure TFrm_Princ.lf_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_apur'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Apur,Frm_Apur);
   Frm_Apur.top:=0;
   end;


if Frm_Apur.WindowState=WsMinimized then
   Frm_Apur.WindowState:=WsNormal
else
   frm_Apur.Show;

end;

procedure TFrm_Princ.lf_0148Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frmfiscal_relpiscofins'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fiscal_RelPisCofins,Frm_Fiscal_RelPisCofins);
   Frm_Fiscal_RelPisCofins.top:=0;
   end;

if Frm_Fiscal_RelPisCofins.WindowState=WsMinimized then
   Frm_Fiscal_RelPisCofins.WindowState:=WsNormal
else
   frm_Fiscal_RelPisCofins.Show;

end;

procedure TFrm_Princ.lf_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_carcor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CarCor,Frm_CarCor);
   Frm_CarCor.top:=0;
   end;

if Frm_CarCor.WindowState=WsMinimized then
   Frm_CarCor.WindowState:=WsNormal
else
   frm_CarCor.Show;

end;

procedure TFrm_Princ.lf_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sintegra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_SINTEGRA,Frm_SINTEGRA);
   Frm_Sintegra.top:=0;
   end;


if Frm_SINTEGRA.WindowState=WsMinimized then
   Frm_SINTEGRA.WindowState:=WsNormal
else
   frm_SINTEGRA.Show;

end;

procedure TFrm_Princ.lf_0136Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   FMensagem('Opção temporariamente bloqueada para Este Usuario!',0,['0'],0);
   exit;
   end;
end;

procedure TFrm_Princ.lf_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_inv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Inv,Frm_Inv);
   Frm_Inv.top:=0;
   end;

if Frm_Inv.WindowState=WsMinimized then
   Frm_Inv.WindowState:=WsNormal
else
   frm_Inv.Show;

end;

procedure TFrm_Princ.lf_0142Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_invgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_InvGra,Frm_Invgra);
   Frm_InvGra.top:=0;
   end;

if Frm_InvGra.WindowState=WsMinimized then
   Frm_Invgra.WindowState:=WsNormal
else
   frm_InvGra.Show;

end;

procedure TFrm_Princ.lf_0145Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_compinvgra'));
if (testeform=nil)  then

if Frm_CompInvGra= nil then
   begin
   Application.createform(TFrm_CompInvGra,Frm_CompInvGra);
   Frm_CompInvGra.top:=0;
   end;

if Frm_CompInvGra.WindowState=WsMinimized then
   Frm_CompInvGRa.WindowState:=WsNormal
else
   frm_CompInvGra.Show;

end;

procedure TFrm_Princ.lf_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relnfs'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelNFS,Frm_RelNfS);
   Frm_RelNFS.top:=0;
   end;

if Frm_RelNfS.WindowState=WsMinimized then
   Frm_RelNfS.WindowState:=WsNormal
else
   frm_RelNFS.Show;

end;

procedure TFrm_Princ.lf_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relnfe'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelNFE,Frm_RelNFE);
   Frm_RelNFE.top:=0;
   end;

if Frm_RelNFE.WindowState=WsMinimized then
   Frm_RelNFE.WindowState:=WsNormal
else
   frm_RelNFE.Show;

end;

procedure TFrm_Princ.lf_0115Click(Sender: TObject);
begin
mreltab:='CADNS';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ns'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ns);
if form_per2_ns.WindowState=WsMinimized then
   form_per2_ns.WindowState:=WsNormal
else
   form_per2_ns.Show;

end;

procedure TFrm_Princ.lf_0118Click(Sender: TObject);
begin
mreltab:='CADNE';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_ne'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_ne);

if form_per2_ne.WindowState=WsMinimized then
   form_per2_ne.WindowState:=WsNormal
else
   form_per2_ne.Show;

end;

procedure TFrm_Princ.lf_0154Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lf_compralegalba'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Lf_CompraLegalBA,Frm_Lf_CompraLegalBA);
   Frm_Lf_CompraLegalBA.top:=0;
   end;

if Frm_Lf_CompraLegalBA.WindowState=WsMinimized then
   Frm_Lf_CompraLegalBA.WindowState:=WsNormal
else
   frm_Lf_CompraLegalBA.Show;

end;

procedure TFrm_Princ.lf_0133Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_exptron'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExpTron,Frm_ExpTron);
   Frm_ExpTron.top:=0;
   end;

if Frm_ExpTron.WindowState=WsMinimized then
   Frm_ExpTron.WindowState:=WsNormal
else
   frm_ExpTron.Show;


end;

procedure TFrm_Princ.lf_0139Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_expcont01'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExpCont01,Frm_ExpCont01);
   Frm_ExpCont01.top:=0;
   end;

if Frm_ExpCont01.WindowState=WsMinimized then
   Frm_ExpCont01.WindowState:=WsNormal
else
   frm_ExpCont01.Show;

end;

procedure TFrm_Princ.cr_0303Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=44;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Baixar Títulos de Clientes';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_accr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ACCR,Frm_ACCR);
   Frm_ACCR.top:=0;
   end;


if Frm_AcCR.WindowState=WsMinimized then
   Frm_AcCR.WindowState:=WsNormal
else
   begin
   if (Screen.Width=800) and (Screen.Height=600) then
      begin
      Frm_AcCR.FormStyle:=fsNormal;
      Frm_AcCR.Visible  :=false;
      frm_AcCR.ShowModal;
      frm_AcCR.free;
      frm_AcCR:=nil;
      end
   else
      begin
      Frm_AcCR.FormStyle:=fsMDIChild;
      frm_AcCR.Show;
      end;
   end;
HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);

end;

procedure TFrm_Princ.cr_0306Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=44;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Baixar Títulos de Clientes';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_accre'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_AcCrE, Frm_AcCrE);
   Frm_ACCRE.top:=0;
   end;


if Frm_AcCRE.WindowState=WsMinimized then
   Frm_AcCRE.WindowState:=WsNormal
else
   frm_AcCRE.Show;

end;

procedure TFrm_Princ.cr_0309Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=44;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Baixar Títulos de Clientes';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_accrr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AccRR,Frm_AccRR);
   Frm_ACcrr.top:=0;
   end;


if Frm_AcCrR.WindowState=WsMinimized then
   Frm_AcCrR.WindowState:=WsNormal
else
   frm_AcCrR.Show;

end;

procedure TFrm_Princ.cr_0312Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rfpr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RFPR,Frm_RFPR);
   Frm_RFPR.top:=0;
   end;

if Frm_RFPR.WindowState=WsMinimized then
   Frm_RFPR.WindowState:=WsNormal
else
   frm_RFPR.Show;

end;

procedure TFrm_Princ.cr_0315Click(Sender: TObject);
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
testeform := TFrm_Princ(FindGlobalComponent('frm_bdev'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_BDEV,Frm_BDEV);
   Frm_BDEV.FormStyle:=fsMDIChild;
   Frm_BDev.Visible  :=True;
   Frm_BDev.top:=0;
   end;

if Frm_BDEV.WindowState=WsMinimized then
   Frm_BDEV.WindowState:=WsNormal
else
   frm_BDEV.Show;

end;

procedure TFrm_Princ.cr_0318Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_pedbai'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedBai,Frm_PedBai);
   Frm_PedBai.top:=0;
   end;

if Frm_PedBai.WindowState=WsMinimized then
   Frm_PedBai.WindowState:=WsNormal
else
   frm_PedBai.Show;

end;

procedure TFrm_Princ.cr_0203Click(Sender: TObject);
begin
mreltab:='CADDAR';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_dar'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_dar);

if form_per2_dar.WindowState=WsMinimized then
   form_per2_dar.WindowState:=WsNormal
else
   form_per2_dar.Show;

end;

procedure TFrm_Princ.cr_0206Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_edup'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Edup, Frm_Edup);
   Frm_EDUP.top:=0;
   end;

if Frm_Edup.WindowState=WsMinimized then
   Frm_Edup.WindowState:=WsNormal
else
   frm_Edup.Show;

end;

procedure TFrm_Princ.cr_0209Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ebol'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EBol,Frm_Ebol);
   Frm_EBol.FormStyle:=fsMDIChild;
   Frm_EBol.Visible  :=true;
   Frm_EBol.top      :=0;
   end;

if Frm_Ebol.WindowState=WsMinimized then
   Frm_Ebol.WindowState:=WsNormal
else
   frm_Ebol.Show;

end;

procedure TFrm_Princ.cr_0215Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcob'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rcob,Frm_Rcob);
   Frm_RCob.top:=0;
   end;

if Frm_Rcob.WindowState=WsMinimized then
   Frm_Rcob.WindowState:=WsNormal
else
   frm_Rcob.Show;

end;

procedure TFrm_Princ.cr_0218Click(Sender: TObject);
begin
mModCart:=1;
testeform := TFrm_Princ(FindGlobalComponent('frm_ccob'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CCob,Frm_CCob);
   Frm_CCob.top:=0;
   end;

if Frm_CCob.WindowState=WsMinimized then
   Frm_CCob.WindowState:=WsNormal
else
   frm_CCob.Show;

end;

procedure TFrm_Princ.cr_0221Click(Sender: TObject);
begin
mModCart:=2;
testeform := TFrm_Princ(FindGlobalComponent('frm_ccob'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CCob,Frm_CCob);
   Frm_CCob.top:=0;
   end;

if Frm_CCob.WindowState=WsMinimized then
   Frm_CCob.WindowState:=WsNormal
else
   frm_CCob.Show;

end;

procedure TFrm_Princ.cr_0224Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rin_relcob'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fin_RelCob,Frm_Fin_RelCob);
   Frm_Fin_RelCob.top:=0;
   end;

if Frm_Fin_RelCob.WindowState=WsMinimized then
   Frm_Fin_RelCob.WindowState:=WsNormal
else
   frm_Fin_RelCob.Show;

end;

procedure TFrm_Princ.cr_0212Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcrec'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rcrec,Frm_RcRec);
   Frm_RCRec.top:=0;
   if (Screen.WIDTH=800) and
      (Screen.Height=600) then
      frm_rcrec.Height:=467;
   end;
Frm_RcRec.Top:=0;
if Frm_RcRec.WindowState=WsMinimized then
   Frm_RcRec.WindowState:=WsNormal
else
   frm_RcRec.Show;
end;

procedure TFrm_Princ.cr_0230Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_receber_sint'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Receber_sint,Frm_Receber_sint);
   Frm_Receber_Sint.top:=0;
   end;

if Frm_Receber_sint.WindowState=WsMinimized then
   Frm_Receber_Sint.WindowState:=WsNormal
else
   frm_Receber_Sint.Show;

end;

procedure TFrm_Princ.cr_0233Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_receber_lev'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Receber_lev,Frm_Receber_lev);
   Frm_Receber_Lev.top:=0;
   end;

if Frm_Receber_lev.WindowState=WsMinimized then
   Frm_Receber_lev.WindowState:=WsNormal
else
   frm_Receber_lev.Show;

end;

procedure TFrm_Princ.cr_0236Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resumo_fpped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Resumo_Fpped,Frm_Resumo_Fpped);
   Frm_Resumo_FPPed.top:=0;
   end;

if Frm_Resumo_FPPed.WindowState=WsMinimized then
   Frm_Resumo_Fpped.WindowState:=WsNormal
else
   frm_Resumo_FPPED.Show;

end;

procedure TFrm_Princ.cr_0239Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_crposcar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CrPosCar,Frm_CrPosCar);
   Frm_CrPosCar.top:=0;
   end;

if Frm_CrPosCar.WindowState=WsMinimized then
   Frm_CrPosCar.WindowState:=WsNormal
else
   Frm_CrPosCar.Show;

end;

procedure TFrm_Princ.cr_0242Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relrecbcartao'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_RelRecbCartao,frm_RelRecbCartao);
   Frm_RelRecbCartao.top:=0;
   end;

if frm_RelRecbCartao.WindowState=WsMinimized then
   frm_RelRecbCartao.WindowState:=WsNormal
else
   frm_RelRecbCartao.Show;

end;

procedure TFrm_Princ.rcr_0106Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_mchq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MChq,Frm_MChq);
   Frm_MChq.top:=0;
   end;

if Frm_MChq.WindowState=WsMinimized then
   Frm_MChq.WindowState:=WsNormal
else
   frm_MChq.Show;

end;

procedure TFrm_Princ.rcr_0109Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_chq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Chq,Frm_Chq);
   Frm_Chq.top:=0;
   end;

if Frm_Chq.WindowState=WsMinimized then
   Frm_Chq.WindowState:=WsNormal
else
   frm_Chq.Show;

end;

procedure TFrm_Princ.rcr_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bchq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Bchq,Frm_Bchq);
   Frm_BChq.top:=0;
   end;

if Frm_Bchq.WindowState=WsMinimized then
   Frm_Bchq.WindowState:=WsNormal
else
   frm_Bchq.Show;

end;

procedure TFrm_Princ.rcr_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sitcre'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);
   Frm_SitCre.top:=0;
   end;


                               //mcodcli:=StrToint(Trim(CODCLI.Text));
if Frm_SitCre.WindowState=WsMinimized then
   Frm_SItCrE.WindowState:=WsNormal
else
   frm_SitCre.Show;

end;

procedure TFrm_Princ.rcr_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dupagru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_DupAgru,Frm_DupAgru);
   Frm_DupAgru.top:=0;
   end;

if Frm_DupAgru.WindowState=WsMinimized then
   Frm_DupAgru.WindowState:=WsNormal
else
   frm_DupAgru.Show;

end;

procedure TFrm_Princ.rcr_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_medvenpgt'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MedVenPgt,Frm_MedVenPgt);
   Frm_MedVenPgt.top:=0;
   end;

if Frm_MedVenPgt.WindowState=WsMinimized then
   Frm_MedVenPgt.WindowState:=WsNormal
else
   frm_MedVenPgt.Show;

end;

procedure TFrm_Princ.rcr_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cobele_remessa'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CobEle_Remessa,Frm_CobEle_Remessa);
   Frm_CobEle_Remessa.top:=0;
   end;

Frm_CobEle_Remessa.Top:=0;
if Frm_CobEle_Remessa.WindowState=WsMinimized then
   Frm_CobEle_Remessa.WindowState:=WsNormal
else
   Frm_CobEle_Remessa.Show;

end;

procedure TFrm_Princ.rcr_0127Click(Sender: TObject);
begin

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

if not ftestacaixa(0) then exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_cobele_retorno'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CobEle_Retorno,Frm_CobEle_Retorno);
   Frm_CobEle_Retorno.top:=0;
   end;


Frm_CobEle_Retorno.Top:=0;
if Frm_CobEle_Retorno.WindowState=WsMinimized then
   Frm_CobEle_Retorno.WindowState:=WsNormal
else
   Frm_CobEle_Retorno.Show;
HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
//sb_caixa.Caption:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);


end;

procedure TFrm_Princ.rcr_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fin_titagru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fin_TitAgru,Frm_fin_titAgru);
   Frm_Fin_TitAgru.top:=0;
   end;

if Frm_Fin_Titagru.WindowState=WsMinimized then
   Frm_Fin_TitAgru.WindowState:=WsNormal
else
   frm_Fin_TitAgru.Show;
end;


procedure TFrm_Princ.rcr_0139Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relbaixarec'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelBaixaRec,Frm_RelBaixaRec);
   Frm_RelBaixaRec.top:=0;
   end;

if Frm_RelBaixaRec.WindowState=WsMinimized then
   Frm_RelBaixaRec.WindowState:=WsNormal
else
   frm_RelBaixaRec.Show;

end;

procedure TFrm_Princ.cr_0928Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_serasa'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_serasa,frm_serasa);
   frm_serasa.top:=0;
   end;

if frm_serasa.WindowState=WsMinimized then
   frm_serasa.WindowState:=WsNormal
else
   frm_serasa.Show;

end;

procedure TFrm_Princ.Sobre1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sobre'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Sobre,Frm_Sobre);
   Frm_Sobre.top:=0;
   end;

if Frm_Sobre.WindowState=WsMinimized then
   Frm_Sobre.WindowState:=WsNormal
else
   frm_Sobre.Show;

end;

procedure TFrm_Princ.sis_0103Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=16;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Fazer Manutenção em Impressoras';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_cimp'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_CImp, Frm_Cimp);
   Frm_CImp.top:=0;
   end;


if Frm_CImp.WindowState=WsMinimized then
   Frm_CImp.WindowState:=WsNormal
else
   frm_CImp.Show;

end;

procedure TFrm_Princ.sis_0106Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=10;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Ajustar Acessos de Usuários';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
DM1.Tb_Funcao.close;
testeform := TFrm_Princ(FindGlobalComponent('frm_ace'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Ace, Frm_Ace);
   Frm_ACe.top:=0;
   end;

if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Ace.Industria1.Visible:=False;
   Frm_Ace.Industria2.Visible:=False;
   Frm_Ace.Industria_Envase.Visible:=false;
   Frm_Ace.mpro_0155.Visible       :=False;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Ace.Industria1.Visible      :=False;
   Frm_Ace.Industria2.Visible      :=true;
   Frm_Ace.mpro_0154.Visible       :=False;
   Frm_Ace.mpro_0155.Visible       :=True;
   Frm_Ace.Industria_Envase.Visible:=True;
   end
else
   begin
   Frm_Ace.Industria1.Visible:=true;
   Frm_Ace.Industria2.Visible:=true;
   Frm_Ace.Industria_Envase.Visible:=false;
   Frm_Ace.mpro_0155.Visible       :=True;
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
//   Frm_ace.lf_0145.Visible  :=false;
   Frm_ace.lf_0145.Visible  :=true;
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
   begin
   frm_ace.FormStyle:=fsnormal;
   frm_ace.top:=0;

   frm_Ace.Showmodal;
   frm_ace.free;
   frm_ace:=nil;


   end;

end;

procedure TFrm_Princ.sis_0109Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=50;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Ajustar as Senhas Internas';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_sen_int'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Sen_Int,Frm_Sen_Int);
   Frm_Sen_Int.top:=0;
   end;

if Frm_Sen_Int.WindowState=WsMinimized then
   Frm_Sen_Int.WindowState:=WsNormal
else
   frm_Sen_Int.Show;

end;

procedure TFrm_Princ.sis_0112Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=5;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para alterar Parametros';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_par'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Par,Frm_Par);
   Frm_Par.top:=0;
   end;

if Frm_Par.WindowState=WsMinimized then
   Frm_Par.WindowState:=WsNormal
else
   frm_PAr.Show;

end;

procedure TFrm_Princ.sis_0114Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=5;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para alterar Parametros';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_parpreco'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Parpreco,Frm_ParPreco);
   Frm_ParPreco.top:=0;
   end;


if Frm_ParPreco.WindowState=WsMinimized then
   Frm_ParPreco.WindowState:=WsNormal
else
   frm_ParPreco.Show;

end;

procedure TFrm_Princ.sis_0117Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_config_leitor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Config_leitor,Frm_Config_Leitor);
   Frm_Config_Leitor.top:=0;
   end;

if Frm_Config_Leitor.WindowState=WsMinimized then
   Frm_Config_Leitor.WindowState:=WsNormal
else
   frm_Config_Leitor.Show;

end;

procedure TFrm_Princ.sis_0120Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fontes'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fontes,Frm_Fontes);
   Frm_Fontes.top:=0;
   end;

if Frm_Fontes.WindowState=WsMinimized then
   Frm_Fontes.WindowState:=WsNormal
else
   frm_Fontes.Show;
  
end;

procedure TFrm_Princ.sis_0123Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajustapro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjustaPRO,Frm_AjustaPRO);
   Frm_AjustaPro.top:=0;
   end;

if Frm_AjustaPRO.WindowState=WsMinimized then
   Frm_AjustaPRO.WindowState:=WsNormal
else
   frm_AjustaPRO.Show;

end;

procedure TFrm_Princ.sis_0126Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_doconline'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_DocOnline,Frm_DocOnline);
   Frm_DocOnLine.top:=0;
   end;

if Frm_DocOnline.WindowState=WsMinimized then
   Frm_DocOnLine.WindowState:=WsNormal
else
   frm_DocOnline.Show;

end;

procedure TFrm_Princ.sis_0129Click(Sender: TObject);
begin
if codusr<>1111 then
   begin
   fmensagem('Opcao Invalida para Este Usuario!',0,['0'],0);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=41;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Fazer Excluir dados';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_elimdados'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_elimdados,Frm_ElimDados);
   Frm_ElimDados.top:=0;
   end;

if Frm_ElimDados.WindowState=WsMinimized then
   Frm_ElimDados.WindowState:=WsNormal
else
   frm_ElimDados.Show;

end;

procedure TFrm_Princ.sis_0132Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=43;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Atualizar Tabelas Diretas';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_update'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Update,Frm_Update);
   Frm_Update.top:=0;
   end;

if Frm_Update.WindowState=WsMinimized then
   Frm_Update.WindowState:=WsNormal
else
   frm_Update.Show;

end;

procedure TFrm_Princ.sis_0135Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_parcod'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ParCod,Frm_ParCod);
   Frm_ParCod.top:=0;
   end;

if Frm_PArCod.WindowState=WsMinimized then
   Frm_ParCod.WindowState:=WsNormal
else
   frm_ParCod.Show;

end;

procedure TFrm_Princ.sis_0138Click(Sender: TObject);
var
form_enviaremail: TFrm_EnviarEmail;
begin
testeform := TFrm_Princ(FindGlobalComponent('form_enviaremail'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_EnviarEmail, form_enviaremail);
   form_enviaremail.FormStyle:=fsMDIChild;
   form_enviaremail.top:=0;
   end;

if form_enviaremail.WindowState=WsMinimized then
   form_enviaremail.WindowState:=WsNormal
else
   form_enviaremail.Show;

end;

procedure TFrm_Princ.sis_0141Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_liberar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Liberar,Frm_Liberar);
   Frm_Liberar.top:=0;
   end;

if Frm_Liberar.WindowState=WsMinimized then
   Frm_Liberar.WindowState:=WsNormal
else
   Frm_Liberar.Show;

end;

procedure TFrm_Princ.sis_0144Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajudevcli'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjuDevCli,Frm_AjuDevCli);
   Frm_AjuDevCli.top:=0;
   end;

if Frm_AjuDevCli.WindowState=WsMinimized then
   Frm_AjuDevCli.WindowState:=WsNormal
else
   frm_AjuDevCli.Show;

end;

procedure TFrm_Princ.sis_0147Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=45;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Ajustar Titulos não Gerados';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_gerdup'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_GerDup,Frm_GerDup);
   Frm_GerDup.top:=0;
   end;
Frm_GerDup.FormStyle:=fsMDIChild;
Frm_GerDup.mOrigem:='Frm_Princ';


if Frm_GerDup.WindowState=WsMinimized then
   Frm_GerDup.WindowState:=WsNormal
else
   frm_GerDup.Show;

end;

procedure TFrm_Princ.sis_0206Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0209Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0212Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0215Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0218Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0221Click(Sender: TObject);
var
  mI1, mI2  : String;
  mop: Integer;

begin

if not ftestaecf(0) then
   exit;
serieecf:='';
//Leitura de Memória Física
mOp:=0; mI1:=''; mI2:='';
testeform := TFrm_Princ(FindGlobalComponent('frm_lmf'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_LMF, Frm_LMF);
   Frm_LMF.top:=0;
   end;

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

procedure TFrm_Princ.sis_0224Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
If MessageDlg('Esta opção é exclusiva para o fechamento do dia!'+#13
   +'Tem certeza que deseja prosseguir?',mtWarning,[mbOk,mbCancel],0)<>mrOk then
   exit;
iRetorno := Bematech_FI_ReducaoZ( pchar(FormatDateTime('dd/mm/yyyy', Date)), pchar( FormatDateTime('hh:nn:ss',time)) );


end;

procedure TFrm_Princ.sis_0227Click(Sender: TObject);
begin
if not ftestaecf(0) then
   exit;
serieecf:='';
iRetorno := Bematech_FI_LeituraX();
if iRetorno<>1 then
    fmensagem('Erro Número: '+IntToStr(iRetorno)+' ao tentar realizar a leitura X!',0,['0'],0);

end;

procedure TFrm_Princ.sis_0230Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0233Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0236Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0242Click(Sender: TObject);
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

procedure TFrm_Princ.sis_0115Click(Sender: TObject);
begin
if Screen.FormCount>9+FContaForm(0) then
   begin
   fmensagem('Para Trocar de Empresa é Necessario que Estejam todos as opções '
            +' fechadas!',0,['0'],0);
   exit;
   end;

testeform := TFrm_Princ(FindGlobalComponent('frm_ent'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Ent, Frm_Ent);
   Frm_Ent.top:=0;
   end;

fEventosLogin(false,codusr,nomusr);
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


end;

procedure TFrm_Princ.sis_0118Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_impbd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ImpBD,Frm_ImpBD);
   Frm_ImpBD.top:=0;
   end;

if Frm_ImpBD.WindowState=WsMinimized then
   Frm_ImpBD.WindowState:=WsNormal
else
   frm_ImpBD.Show;


end;

procedure TFrm_Princ.sis_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_impd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Impd,Frm_Impd);
   Frm_ImpD.top:=0;
   end;


if Frm_Impd.WindowState=WsMinimized then
   Frm_Impd.WindowState:=WsNormal
else
   frm_Impd.Show;


end;

procedure TFrm_Princ.sis_0127Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=36;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Fazer Manutenção no Cadastro de Empresa';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_emp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_emp,Frm_emp);
   Frm_Emp.top:=0;
   end;

Frm_Emp.FormStyle:=fsMDIChild;
Frm_Emp.Visible      :=true;
Frm_Emp.Top          :=0;



if Frm_EMP.WindowState=WsMinimized then
   Frm_Emp.WindowState:=WsNormal
else
   frm_EMP.Show;

end;

procedure TFrm_Princ.sis_0312Click(Sender: TObject);
begin
mreltab:='NF';
testeform := TFrm_Princ(FindGlobalComponent('frm_tpro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_TPro,Frm_TPro);
   Frm_TPro.top:=0;
   end;


if Frm_TPro.WindowState=WsMinimized then
   Frm_TPro.WindowState:=WsNormal
else
   frm_TPro.Show;

end;

procedure TFrm_Princ.Continua1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tot'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Tot,Frm_Tot);
   Frm_Tot.top:=0;
   end;

if Frm_Tot.WindowState=WsMinimized then
   Frm_TOt.WindowState:=WsNormal
else
   frm_Tot.Show;

end;

procedure TFrm_Princ.sis_0303Click(Sender: TObject);
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
   ex_erroSql(01,2137,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3623,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3681,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3740,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3336,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3336,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3336,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3336,'frm_Princ','CADARQ');
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
      ex_erroSql(03,3681,'frm_Princ','CADARQ');
      end;
   end;




{Frm_Agde.Free;}
FMensagem('Atualizacao Completa',0,['0'],0);

end;

procedure TFrm_Princ.sis_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_stru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Stru,Frm_Stru);
   Frm_Stru.top:=0;
   end;


if Frm_Stru.WindowState=WsMinimized then
   Frm_Stru.WindowState:=WsNormal
else
   Frm_Stru.Show;

end;

procedure TFrm_Princ.sis_0133Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_codbar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CODBAR,Frm_CODBAR);
   Frm_CodBar.top:=0;
   end;


if Frm_CODBAR.WindowState=WsMinimized then
   Frm_CODBAR.WindowState:=WsNormal
else
   frm_CODBAR.Show;

end;

procedure TFrm_Princ.sis_0601Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cac'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Cac, Frm_Cac);
   Frm_Cac.top:=0;
   end;

if Frm_Cac.WindowState=WsMinimized then
   Frm_Cac.WindowState:=WsNormal
else
   Frm_Cac.Show;

end;

procedure TFrm_Princ.sis_0606Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cme'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CME,Frm_CME);
   Frm_CME.top:=0;
   end;


if Frm_CME.WindowState=WsMinimized then
   Frm_CME.WindowState:=WsNormal
else
   frm_CME.Show;

end;

procedure TFrm_Princ.sis_0609Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_seg'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Seg,Frm_Seg);
   Frm_Seg.visible  :=true;
   Frm_Seg.Formstyle:=fsMDIChild;
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
   Frm_Princ.Industria1.Visible:=False;
   Frm_Princ.Industria2.Visible:=False;
   Frm_Princ.mpro_0154.Visible :=False;
   Frm_Princ.mpro_0155.Visible :=False;
   Frm_Princ.Industria_Envase.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Princ.Industria1.Visible:=False;
   Frm_Princ.Industria2.Visible:=true;
   Frm_Princ.mpro_0154.Visible :=False;
   Frm_Princ.mpro_0155.Visible :=True;
   Frm_Princ.Industria_Envase.Visible:=true;
   end
else
   begin
   Frm_Princ.Industria1.Visible:=true;
   Frm_Princ.Industria2.Visible:=true;
   Frm_Princ.mpro_0154.Visible :=True;
   Frm_Princ.mpro_0155.Visible :=True;
   Frm_Princ.Industria_Envase.Visible:=false;
   end;
if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_Princ.consembprod.Visible:=true
else
   Frm_Princ.consembprod.Visible:=False;

if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
   Frm_Princ.N60.Visible    :=true;
   Frm_Princ.cr_0318.Visible:=true;
   end
else
   begin
   Frm_Princ.N60.Visible    :=false;
   Frm_Princ.cr_0318.Visible:=false;
   end;

if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Frm_Princ.os.Visible:=False
else
   Frm_Princ.os.Visible:=True;


if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_Princ.sai_0112.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0112.Visible:=False;
   end;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_Princ.mloc_0106.Visible:=True;
   Frm_Princ.mloc_0107.Visible:=True;
   Frm_Princ.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0106.Visible:=False;
   Frm_Princ.mloc_0107.Visible:=False;
   Frm_Princ.mloc_0108.Visible:=False;
   end;

if DM1.Tb_PargerPCODDBC.Value=1  then
   begin
   Frm_Princ.mpro_0148.Visible:=True;
   Frm_Princ.rpro_0124.Visible:=True;
   Frm_Princ.rpro_0133.Visible:=True;
   end
else
   begin
   Frm_Princ.mpro_0148.Visible:=False;
   Frm_Princ.rpro_0124.Visible:=False;
   Frm_Princ.rpro_0133.Visible:=False;
   end;

if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   Frm_Princ.mloc_0109.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0109.Visible:=False;
   end;



if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_Princ.folha.Visible:=True;
   end
else
   begin
   Frm_Princ.folha.Visible:=false;
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Frm_Princ.mpro_0166.Visible :=True;
   Frm_Princ.NMP.Visible :=True;
   end
else
   begin
   Frm_Princ.mpro_0166.Visible :=False;
   Frm_Princ.NMP.Visible       :=False;
   end;

if DM1.Tb_PargerPUIMOBIL.Value=1 then
   begin
   Frm_Princ.Imobilizados.Visible    :=True;
   Frm_Princ.rel_imobilizados.Visible:=True;
   end
else
   begin
   Frm_Princ.Imobilizados.Visible    :=false;
   Frm_Princ.rel_imobilizados.Visible:=false;
   end;
if (valint(copy(mpseg,4,2))<>1) then
   begin
   Frm_Princ.sis2103.Visible  :=false;
   end;


if (valint(copy(mpseg,4,2))=2) then
   begin
   Frm_Princ.lf_0142.Visible  :=true;      // inventario por grade
   Frm_Princ.lf_0145.Visible  :=true;     // inventaorio por grade
   Frm_Princ.mpro_0166.Visible:=true;     // manutencao em materia primas
   Frm_Princ.mven_0109.Visible:=true;    // manutencao assessor
//   Frm_Princ.rven_0130.Visible       :=true; // comissão por venda
//   Frm_Princ.rven_0133.Visible       :=true; // comissao por recebimento

   end
else
   begin
   Frm_Princ.lf_0142.Visible:=false;
//   Frm_Princ.lf_0145.Visible:=false;
   Frm_Princ.lf_0145.Visible:=true;
   Frm_Princ.mpro_0166.Visible:=false;
   Frm_Princ.mven_0109.Visible:=false;
//   Frm_Princ.rven_0130.Visible       :=false;
//   Frm_Princ.rven_0133.Visible       :=false;

   end;


if DM1.Tb_PargerPUCONVEI.Value=1 then
   begin
   Frm_Princ.veiculos.Visible    :=True;
   Frm_Princ.rel_veiculos.Visible:=True;
   end
else
   begin
   Frm_Princ.veiculos.Visible    :=false;
   Frm_Princ.rel_veiculos.Visible:=false;
   end;


if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_Princ.sai_0127.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0127.Visible:=false;
   end;

end;

procedure TFrm_Princ.ParametrosTiposdePedidos1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mtipo_ped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MTipo_Ped,Frm_MTipo_Ped);
   Frm_MTipo_Ped.top:=0;
   end;


if Frm_MTipo_Ped.WindowState=WsMinimized then
   begin
   Frm_MTipo_Ped.WindowState:=WsNormal
   end
else
   begin
   frm_MTipo_Ped.Show;
   end;

end;

procedure TFrm_Princ.sis_0630Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fec'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fec,Frm_Fec);
   Frm_Fec.top:=0;
   end;

if Frm_Fec.WindowState=WsMinimized then
   Frm_Fec.WindowState:=WsNormal
else
   frm_fec.Show;

end;

procedure TFrm_Princ.sis_0633Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pedxdup'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedXDup,Frm_PedXDup);
   Frm_PedXDup.top:=0;
   end;

if Frm_PedXDup.WindowState=WsMinimized then
   Frm_PedXDup.WindowState:=WsNormal
else
   frm_PedXDup.Show;

end;

procedure TFrm_Princ.sis_0636Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pedcaxmer'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedCabXmer,Frm_PedCabXmer);
   Frm_PedCabXMer.top:=0;
   end;

if Frm_PedCabXmer.WindowState=WsMinimized then
   Frm_PedCabXmer.WindowState:=WsNormal
else
   frm_PedCabXmer.Show;

end;

procedure TFrm_Princ.sis_0642Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_merdup'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Merdup,Frm_Merdup);
   Frm_MerDup.top:=0;
   end;

if Frm_Merdup.WindowState=WsMinimized then
   Frm_Merdup.WindowState:=WsNormal
else
   frm_Merdup.Show;

end;

procedure TFrm_Princ.sis_0645Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cicmsr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CICMSR,Frm_CICMSR);
   Frm_CICMSR.top:=0;
   end;

if Frm_CICMSR.WindowState=WsMinimized then
   Frm_CICMSR.WindowState:=WsNormal
else
   frm_CICMSR.Show;

end;

procedure TFrm_Princ.sis_0648Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cped2'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CPed2,Frm_Cped2);
   Frm_CPed2.top:=0;
   end;

if Frm_CPed2.WindowState=WsMinimized then
   Frm_CPed2.WindowState:=WsNormal
else
   frm_CPed2.Show;

end;

procedure TFrm_Princ.sis_0651Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_calcicms'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CalcICMS,Frm_CalcICMS);
   Frm_CalcIcms.top:=0;
   end;

if Frm_CalcICMS.WindowState=WsMinimized then
   Frm_CalcICMS.WindowState:=WsNormal
else
   frm_CalcICMS.Show;

end;

procedure TFrm_Princ.sis_0690Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ajuext_est'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AjuExt_Est,Frm_AjuExt_Est);
   Frm_AjuExt_Est.top:=0;
   end;

if Frm_AjuExt_Est.WindowState=WsMinimized then
   Frm_AjuExt_Est.WindowState:=WsNormal
else
   Frm_AjuExt_Est.Show;

end;

procedure TFrm_Princ.sis_0657Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResPed,Frm_ResPed);
   Frm_ResPed.top:=0;
   end;

if Frm_ResPed.WindowState=WsMinimized then
   Frm_ResPed.WindowState:=WsNormal
else
   frm_ResPed.Show;

end;

procedure TFrm_Princ.sis_0660Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lotseq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LotSeq,Frm_LotSeq);
   Frm_LotSeq.top:=0;
   end;

if Frm_LotSeq.WindowState=WsMinimized then
   Frm_LotSeq.WindowState:=WsNormal
else
   frm_LotSEq.Show;

end;

procedure TFrm_Princ.sis_0663Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fpag'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fpag,Frm_FPag);
   Frm_FPag.top:=0;
   end;

if Frm_FPag.WindowState=WsMinimized then
   Frm_FPag.WindowState:=WsNormal
else
   frm_FPag.Show;

end;

procedure TFrm_Princ.sis_0666Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cus'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Cus,Frm_Cus);
   Frm_Cus.top:=0;
   end;

if Frm_Cus.WindowState=WsMinimized then
   Frm_Cus.WindowState:=WsNormal
else
   frm_Cus.Show;

end;

procedure TFrm_Princ.sis_0669Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
if not DM1.Qr_FP.Locate('FPCODIGO',0,[]) then
   DM1.Qr_FP.First;
if DM1.Qr_FPFPTIPO.Value=1 then
   DM1.Qr_FP.Locate('FPTIPO',0,[]);


testeform := TFrm_Princ(FindGlobalComponent('frm_restldr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RestLDR,Frm_RestLDR);
   Frm_RestLDR.top:=0;
   end;

if Frm_RestLDR.WindowState=WsMinimized then
   Frm_RestLDR.WindowState:=WsNormal
else
   frm_RestLDR.Show;

end;

procedure TFrm_Princ.sis_0672Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_help'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Help,Frm_Help);
   Frm_Help.top:=0;
   end;

if Frm_Help.WindowState=WsMinimized then
   Frm_Help.WindowState:=WsNormal
else
   frm_Help.Show;

end;

procedure TFrm_Princ.sis_0678Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resnf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResNF,Frm_ResNF);
   Frm_ResNF.top:=0;
   end;

if Frm_ResNF.WindowState=WsMinimized then
   Frm_ResNF.WindowState:=WsNormal
else
   frm_ResNF.Show;

end;

procedure TFrm_Princ.sis_0681Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_excel'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Excel,Frm_Excel);
   Frm_Excel.top:=0;
   end;

if Frm_Excel.WindowState=WsMinimized then
   Frm_Excel.WindowState:=WsNormal
else
   frm_Excel.Show;
end;

procedure TFrm_Princ.sis_0684Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_resmapares'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ResMapaRes,Frm_ResMapaRes);
   Frm_ResMapaRes.top:=0;
   end;

if Frm_ResMapaRes.WindowState=WsMinimized then
   Frm_ResMapaRes.WindowState:=WsNormal
else
   frm_ResMapaRes.Show;

end;

procedure TFrm_Princ.sis_0687Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_canfdia'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CanfDia,Frm_CanFDia);
   Frm_CanFDia.top:=0;
   end;

if Frm_CanFdia.WindowState=WsMinimized then
  Frm_CanFdia.WindowState:=WsNormal
else
  frm_CanFdia.Show;

end;

procedure TFrm_Princ.sis_0693Click(Sender: TObject);
begin
if (valint(copy(mpseg,4,2))=0) then
   begin
   Fmensagem('Opção Inválida para Este tipo de cliente!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Princ(FindGlobalComponent('frm_estdiflot'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EstDifLot,Frm_EstDifLot);
   Frm_EstDifLot.top:=0;
   end;

if Frm_EstDifLot.WindowState=WsMinimized then
   Frm_EstDifLot.WindowState:=WsNormal
else
   frm_EstDifLot.Show;

end;

procedure TFrm_Princ.mpro_0103Click(Sender: TObject);
begin
if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   testeform := TFrm_princ(FindGlobalComponent('form_proconf'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(TFrm_ProConf, Form_ProConf);
      Form_ProConf.top:=0;
      end;
                          

   Form_ProConf.FormStyle:=fsMDIChild;
   Form_ProConf.Visible      :=true;
   Form_ProConf.Top          :=0;

   if Form_ProConf.WindowState=wsMinimized then
      Form_ProConf.WindowState:=wsNormal
   else
      Form_proConf.Show;
   end
else if valint(copy(mpseg,1,2))=7 then
   begin
   end
else
   begin
   if DM1.Tb_pargerPFORPROPAD.Asinteger=1 then
      begin
      testeform := TFrm_princ(FindGlobalComponent('form_pro_nov_menu'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Pro_Nov_Menu, Frm_Pro_Nov_Menu );
//      Frm_Pro_Nov_Menu.FormStyle:=fsMDIChild;
//      Frm_Pro_Nov_Menu.Visible      :=true;
      Frm_Pro_Nov_Menu.Top          :=0;
      if Frm_Pro_Nov_Menu.WindowState=wsMinimized then
         Frm_Pro_Nov_Menu.WindowState:=wsNormal
      else
         begin
         Frm_Pro_Nov_Menu.Show;
         end;
      end
   else if DM1.Tb_EmpCGC.Value=37006046000128 then

      begin
      testeform := TFrm_princ(FindGlobalComponent('form_proSimples01'));
      if (testeform=nil)  then
         begin
         Application.CreateForm(TFrm_ProSimples01, Form_ProSimples01);
         end;
      Form_ProSimples01.FormStyle:=fsMDIChild;
      Form_ProSimples01.Visible      :=true;
      Form_ProSimples01.Top          :=0;

      if Form_ProSimples01.WindowState=wsMinimized then
         Form_ProSimples01.WindowState:=wsNormal
      else
         Form_ProSimples01.Show;
      end
   else
      begin
      testeform := TFrm_princ(FindGlobalComponent('frm_pro'));
      if (testeform=nil)  then
         begin
         Application.CreateForm(TFrm_Pro, Form_Pro);
         end;
      Form_Pro.FormStyle:=fsMDIChild;
      Form_Pro.Visible      :=true;
      Form_Pro.Top          :=0;

      if Form_Pro.WindowState=wsMinimized then
         Form_Pro.WindowState:=wsNormal
      else
         Form_Pro.Show;
      end;
   end;
end;

procedure TFrm_Princ.Timer2Timer(Sender: TObject);
begin
HeaderControl1.Sections[0].Text:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
//SpeedButton15.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
//label1.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);

end;

procedure TFrm_Princ.Timer1Timer(Sender: TObject);
var
  x: Integer;
  mButao_Encontrado: Boolean;
begin

if (DM4.Tb_parger02PG2SEGLOGOFF.asinteger>0) and (codusr<>1111) then
   begin
   try
      if fQtdSegundos(now,mhoraUltevento)>DM4.Tb_parger02PG2SEGLOGOFF.asinteger then
         begin
         if TFrm_princ(FindGlobalComponent('frm_ent'))=nil  then
            begin
            if TFrm_princ(FindGlobalComponent('frm_atusis'))<>nil then

//            if (Uppercase(Screen.ActiveForm.Name)='FRM_ATUSIS') then
               begin
               if Frm_AtuSis.bbAtuaSGE.Enabled then
                  Frm_AtuSis.Close
               else
                  begin
                  mButao_Encontrado:=true;
                  mhoraUltevento:=now;
                  end
               end
            else if TFrm_princ(FindGlobalComponent('frm_bkp'))<>nil then
               begin
               if Frm_bkp.bbIniciar.Enabled then
                  frm_bkp.Close
               else
                  begin
                  mButao_Encontrado:=true;
                  mhoraUltevento:=now;
                  end
               end
            else if TFrm_princ(FindGlobalComponent('frm_accr'))<>nil then
               begin
               if valFloat(Frm_AcCR.HC_DUPLIC.Sections.Items[2].Text)=0 then
                  Frm_AcCR.Close
               else
                  begin
                  mButao_Encontrado:=true;

                  mhoraUltevento:=now;
                  Timer1.Enabled:=False;
                  fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                   +'Formulario de Baixa de Contas a Receber',0);

                  Timer1.Enabled:=true;
                  end;
               end
            else if TFrm_princ(FindGlobalComponent('frm_accp'))<>nil then
               begin
               if valFloat(Frm_AcCP.HC_DUPLIC.Sections.Items[2].Text)=0 then
                  Frm_AcCP.Close
               else
                  begin
                  mButao_Encontrado:=true;
                  mhoraUltevento:=now;
                  Timer1.Enabled:=False;
                  fmensagem_Barrar('Para Sua Maior Segurança Conclua a Operação no '
                                   +'Formulario de Contas a Pagar',0);
                  Timer1.Enabled:=true;

                  end;
               end
            else if TFrm_princ(FindGlobalComponent('frm_ped_02'))<>nil then
               begin
               end
            else if TFrm_princ(FindGlobalComponent('frm_ped_autop'))<>nil then
               begin
               end
            else
               keybd_event(VK_F8, 0, 0, 0);
            end;

        //      Frm_PerForm.STG1.Cells[00,mlin]:=Frm_Pro.Components[x].Name;
         end;
   except
      end;
   end;




if (mTestarTimer) and (mLibBloqueios) and (mjaativado)
   and (not mAguardando_processamento ) then

   begin
{   if FileExists('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE') then
     begin
     if not PrgRodando('SGE_LIBSIS.EXE') then
       WinExec('c:\sge\SGE_LIBSIS\SGE_LIBSIS.EXE',SW_ShowNormal)
     end
   else
}
     begin
     if not Frm_Liberar.Active then
        begin
//      timer1.enabled:=false;
        DM4.Qr_ContBlq.close;
        DM4.Qr_ContBlq.Sql.Clear;
        DM4.Qr_ContBlq.sql.add(' Select count(*) ');
        DM4.Qr_ContBlq.sql.Add(' from CADLSEN,CADUSR ');
        DM4.Qr_ContBlq.sql.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLSEN',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and '));
  //      DM4.Qr_ContBlq.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_Tid.Locate('TINOME','CADLSEN',[]),'',' and CODEMP=LSCODEMP '));
        DM4.Qr_ContBlq.sql.Add(' LSSTATUS=0 '+iif(DM1.Qr_Tid.Locate('TINOME','CADUSR',[]),'',' and CODEMP=LSCODEMP '));
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
            Frm_Liberar.Show;
          end;
//      timer1.enabled:=true;
        end;
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

   testeform := TFrm_princ(FindGlobalComponent('frm_pedbloq'));
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
                           +' and  P1STATUS<'+mstatus_excluido+' ');

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
            testeform := TFrm_princ(FindGlobalComponent('frm_pedbloq'));
            if (testeform=nil)  then
               begin
               Application.Createform(TFrm_Pedbloq, Frm_Pedbloq);
               Frm_PedBloq.top:=0;
               end;
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




HeaderControl1.Sections[0].Text:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
HeaderControl1.Sections[1].Text:=insere2(HeaderControl1.Sections[1].Text,' ',40)+'[QF:'+FormatFloat('#00',(Screen.FormCount-FContaForm(0)))+']';

//SpeedButton15.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
//label1.Caption:=FormatDateTime('dd/mm/yyyy hh:nn:ss',Now);
//label1.caption := LongDayNames[DayOfWeek(now)]+' '+FormatDateTime('D "de" MMMM "de" YYYY', now);


end;

procedure TFrm_Princ.sis0636Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_atusis'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Atusis,Frm_Atusis);
   Frm_Atusis.FormStyle:=fsMDIChild;
   Frm_Atusis.Visible  :=true;
   Frm_Atusis.top:=0;
   end;
if Frm_Atusis.WindowState=WsMinimized then
   Frm_Atusis.WindowState:=WsNormal
else
   frm_Atusis.Show;

end;

procedure TFrm_Princ.sis0633Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_tab06'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Tab06,Frm_Tab06);
   Frm_SelGra.top:=0;
   end;

morigem:=0;
if Frm_Tab06.WindowState=WsMinimized then
   Frm_Tab06.WindowState:=WsNormal
else
   frm_Tab06.Show;

end;

procedure TFrm_Princ.sis0630Click(Sender: TObject);
begin
mavisoson:=False;
Frm_CServer.Show;

end;

procedure TFrm_Princ.sis0624Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=9;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Zerar Estoque de Produtos';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
//if codusr<>1111 then
//   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_zest'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Zest,Frm_Zest);
   Frm_ZEst.top:=0;
   end;

if Frm_Zest.WindowState=WsMinimized then
   Frm_Zest.WindowState:=WsNormal
else
   frm_Zest.Show;

end;

procedure TFrm_Princ.sis0615Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bkp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Bkp,Frm_BKp);
   Frm_Bkp.top:=0;
   end;

if Frm_Bkp.WindowState=WsMinimized then
   Frm_Bkp.WindowState:=WsNormal
else
   frm_Bkp.Show;

end;

procedure TFrm_Princ.sis0618Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=7;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Restaurar Backups';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_info'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Info, Frm_Info);
   Frm_Info.top:=0;
   end;

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
testeform := TFrm_Princ(FindGlobalComponent('frm_rest'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Rest, Frm_Rest);
   Frm_Rest.top:=0;
   end;

Frm_Rest.ShowModal;
Frm_Rest.Free;
Frm_Rest:=nil;


end;

procedure TFrm_Princ.sis0621Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cfg'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CFG,Frm_CFG);
   Frm_CFG.top:=0;
   end;

if Frm_CFG.WindowState=WsMinimized then
   Frm_CFG.WindowState:=WsNormal
else
   frm_CFG.Show;

end;

procedure TFrm_Princ.sis0642Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_desbl_pedido'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Desbl_Pedido,Frm_Desbl_Pedido);
   Frm_Desbl_Pedido.top:=0;
   end;


if Frm_Desbl_Pedido.WindowState=WsMinimized then
   Frm_Desbl_Pedido.WindowState:=WsNormal
else
   frm_Desbl_Pedido.Show;

end;

procedure TFrm_Princ.sis2103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_similarems'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Integra_SimilarEMS,Frm_Integra_SimilarEMS);
   Frm_Integra_SimilarEMS.top:=0;
   end;

if Frm_Integra_SimilarEMS.WindowState=WsMinimized then
   Frm_Integra_SimilarEMS.WindowState:=WsNormal
else
   Frm_Integra_SimilarEMS.Show;

end;

procedure TFrm_Princ.cp_0103Click(Sender: TObject);
begin
if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_dap'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_dap,Frm_dap);
   Frm_Dap.FormStyle:=fsMDIChild;
   Frm_Dap.Visible  :=true;
   Frm_Dap.top      :=0;
   end;


if Frm_Dap.WindowState=WsMinimized then
   Frm_Dap.WindowState:=WsNormal
else
   frm_Dap.Show;

end;

procedure TFrm_Princ.cp_0203Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=14;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Baixar Duplicatas a Pagar';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

if not ftestacaixa(0) then exit;

testeform := TFrm_Princ(FindGlobalComponent('frm_accp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_accp,Frm_Accp);
   Frm_ACCP.top:=0;
   end;


if Frm_AcCP.WindowState=WsMinimized then
   Frm_AcCP.WindowState:=WsNormal
else
   begin
   if (Screen.Width=800) and (Screen.Height=600) then
      begin
      Frm_AcCP.FormStyle:=fsNormal;
      Frm_AcCP.Visible  :=false;
      frm_AcCP.ShowModal;
      frm_AcCP.free;
      frm_AcCP:=nil;
      end
   else
      begin
      Frm_AcCP.FormStyle:=fsMDIChild;
      frm_AcCP.Show;
      end;
   end;

HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);


end;

procedure TFrm_Princ.cp_0206Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=14;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Excluir Baixa Duplicatas a Pagar';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
if not ftestacaixa(0) then exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_accpe'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Accpe,Frm_accpe);
   Frm_ACcpe.top:=0;
   end;

if Frm_AcCPE.WindowState=WsMinimized then
   Frm_AcCPE.WindowState:=WsNormal
else
   frm_AcCPE.Show;

end;

procedure TFrm_Princ.cp_0209Click(Sender: TObject);
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=14;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha Para Emitir Relatorio de Duplicatas Pagas';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;
testeform := TFrm_Princ(FindGlobalComponent('frm_accpr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_accpr,Frm_accpr);
   Frm_ACcpr.top:=0;
   end;


if Frm_AcCPR.WindowState=WsMinimized then
   Frm_AcCPR.WindowState:=WsNormal
else
   frm_AcCPR.Show;

end;

procedure TFrm_Princ.cp_0212Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rfpp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RFPP,Frm_RFPP);
   Frm_RFPP.top:=0;
   end;

if Frm_RFPP.WindowState=WsMinimized then
   Frm_RFPP.WindowState:=WsNormal
else
   frm_RFPP.Show;

end;

procedure TFrm_Princ.cp_0215Click(Sender: TObject);
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
testeform := TFrm_Princ(FindGlobalComponent('frm_bdev_for'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_BDEV_For,Frm_BDEV_For);
   Frm_BDev_For.top:=0;
   end;

if Frm_BDEV_For.WindowState=WsMinimized then
   Frm_BDEV_For.WindowState:=WsNormal
else
   frm_BDEV_For.Show;


end;

procedure TFrm_Princ.cp_0303Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rcpag'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rcpag,Frm_Rcpag);
   Frm_RCPag.top:=0;
  if (Screen.WIDTH=800) and
     (Screen.Height=600) then
     frm_rcpag.Height:=467;

   end;

Frm_RcPag.Top:=0;

if Frm_RCPag.WindowState=WsMinimized then
   Frm_RCPag.WindowState:=WsNormal
else
   frm_RCPag.Show;

end;

procedure TFrm_Princ.cp_0306Click(Sender: TObject);
begin
mreltab:='CADDAP';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_dap'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_dap);

if form_per2_dap.WindowState=WsMinimized then
   form_per2_dap.WindowState:=WsNormal
else
   form_per2_dap.Show;

end;

procedure TFrm_Princ.cp_0312Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pagar_lev'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pagar_lev,Frm_Pagar_Lev);
   Frm_Pagar_Lev.top:=0;
   end;

if Frm_Pagar_Lev.WindowState=WsMinimized then
   Frm_Pagar_LEv.WindowState:=WsNormal
else
   frm_Pagar_Lev.Show;

end;

procedure TFrm_Princ.cp_0130Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cpsimples'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CPSimples,Frm_CPSimples);
   Frm_CPSimples.top:=0;
   end;


if Frm_CPSimples.WindowState=WsMinimized then
   Frm_CPSimples.WindowState:=WsNormal
else
   frm_CPSimples.Show;

end;

procedure TFrm_Princ.cp_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_dapagru'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_DapAgru,Frm_DapAgru);
   end;

if Frm_DapAgru.WindowState=WsMinimized then
   Frm_DapAgru.WindowState:=WsNormal
else
   frm_DapAgru.Show;

end;

procedure TFrm_Princ.cp_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lancautofc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LancAutoFC,Frm_LancAutoFC);
   Frm_LancAutoFC.top:=0;
   end;

if Frm_LancAutoFC.WindowState=WsMinimized then
   Frm_LancAutoFC.WindowState:=WsNormal
else
   frm_LancAutoFC.Show;

end;

procedure TFrm_Princ.cp_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mchqcp'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_mChqCP, Frm_mChqCP);
   Frm_MChqCP.top:=0;
   end;

if Frm_mChqCP.WindowState=wsMinimized then
   Frm_mChqCP.WindowState:=wsNormal
else
   Frm_mChqCP.Show;

end;

procedure TFrm_Princ.cp_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_bchq_cp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Bchq_CP,Frm_Bchq_CP);
   Frm_BChq_CP.top:=0;
   end;

if Frm_Bchq_CP.WindowState=WsMinimized then
   Frm_Bchq_CP.WindowState:=WsNormal
else
   frm_Bchq_CP.Show;

end;

procedure TFrm_Princ.cp_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_chqcp'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_ChqCP, Frm_ChqCP);
   Frm_ChqCP.top:=0;
   end;

if Frm_ChqCP.WindowState=wsMinimized then
   Frm_ChqCP.WindowState:=wsNormal;
Frm_ChqCP.Show;


end;

procedure TFrm_Princ.cr_0903Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_jdoc'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_JDoc, Frm_JDoc);
   Frm_JDoc.top:=0;
   end;

if Frm_JDoc.WindowState=WsMinimized then
   Frm_JDoc.WindowState:=WsNormal
else
   frm_JDoc.Show;

end;

procedure TFrm_Princ.cr_0906Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_vlrpres'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_VlrPres,Frm_VlrPres);
   Frm_VlrPres.top:=0;
   end;


if Frm_VlrPres.WindowState=WsMinimized then
   Frm_VlrPres.WindowState:=WsNormal
else
   frm_VlrPres.Show;

end;

procedure TFrm_Princ.cr_0909Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_mvcto'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_Mvcto, Frm_Mvcto);
   Frm_MVcto.top:=0;
   end;

if Frm_Mvcto.WindowState=WsMinimized then
   Frm_Mvcto.WindowState:=WsNormal
else
   frm_Mvcto.Show;

end;

procedure TFrm_Princ.cr_0912Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_rdoc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RDoc,Frm_RDoc);
   Frm_RDoc.top:=0;
   end;

if Frm_RDoc.WindowState=WsMinimized then
   Frm_RDoc.WindowState:=WsNormal
else
   frm_RDoc.Show;

end;

procedure TFrm_Princ.cr_0918Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_diasmeses'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_DiasMEses,Frm_DiasMeses);
   Frm_DiasMeses.top:=0;
   end;

if Frm_DiasMEses.WindowState=WsMinimized then
   Frm_DiasMeses.WindowState:=WsNormal
else
   frm_DiasMeses.Show;

end;

procedure TFrm_Princ.cr_0919Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_coefic'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_coefic,frm_coefic);
   frm_coefic.top:=0;
   end;

if Frm_coefic.WindowState=WsMinimized then
   frm_coefic.WindowState:=WsNormal
else
   frm_coefic.Show;

end;

procedure TFrm_Princ.cr_0915Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_emichq'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EmiCHq,Frm_EmiChq);
   Frm_EmiChq.top:=0;
   end;

if Frm_EmiChq.WindowState=WsMinimized then
   Frm_EmiChq.WindowState:=WsNormal
else
   frm_EmiChq.Show;

end;

procedure TFrm_Princ.cr_0921Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lev_recpag'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Lev_RecPag, FRM_Lev_RecPag);
   Frm_Lev_RecPag.top:=0;
   end;

if Frm_Lev_RecPag.WindowState=WsMinimized then
   Frm_Lev_RecPag.WindowState:=WsNormal
else
   frm_Lev_RecPag.Show;

end;

procedure TFrm_Princ.cr_0924Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_recibo'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Recibo,Frm_Recibo);
   Frm_Recibo.top:=0;
   end;

if Frm_Recibo.WindowState=WsMinimized then
   Frm_Recibo.WindowState:=WsNormal
else
   frm_Recibo.Show;

end;

procedure TFrm_Princ.cr_0927Click(Sender: TObject);
begin
//testeform := TFrm_Princ(FindGlobalComponent('frm_fluxocaixa'));
testeform := TFrm_Princ(FindGlobalComponent('Frm_Fin_FluxoCaixa'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fin_FluxoCaixa,Frm_Fin_FluxoCaixa);
   Frm_Fin_FluxoCaixa.top:=0;
   end;

if Frm_Fin_FluxoCaixa.WindowState=WsMinimized then
   Frm_Fin_FluxoCaixa.WindowState:=WsNormal
else
   Frm_Fin_FluxoCaixa.Show;

end;

procedure TFrm_Princ.cr_0929Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Rel_Finan'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Rel_Finan, Frm_Rel_Finan);
   Frm_Rel_Finan.top:=0;
   end;

if Frm_Rel_Finan.WindowState=WsMinimized then
   Frm_Rel_Finan.WindowState:=WsNormal
else
   Frm_Rel_Finan.Show;

end;

procedure TFrm_Princ.cr_0930Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_DRE'));
if (testeform=nil)  then
  begin
  Application.createform(TFrm_DRE,Frm_DRE);
  frm_DRE.top:=0;
  end;
if Frm_DRE.WindowState=WsMinimized then
  Frm_DRE.WindowState:=WsNormal
else
  Frm_DRE.Show;
end;

procedure TFrm_Princ.mind_0109Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_procp'));
if (testeform=nil)  then
   Application.createform(TFrm_Proc,Frm_Proc);
Frm_Proc.FormStyle:=fsMDIChild;
Frm_Proc.Visible      :=true;
Frm_Proc.Top          :=0;

if Frm_Proc.WindowState=WsMinimized then
   Frm_Proc.WindowState:=WsNormal
else
   frm_Proc.Show;

end;

procedure TFrm_Princ.bbcadastrofornClick(Sender: TObject);
begin
mfor_0103Click(SELF);
{testeform := TFrm_Princ(FindGlobalComponent('frm_for'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_For, Frm_For);
   Frm_For.FormStyle:=fsMDIChild;
   Frm_For.Top      :=0;
   Frm_For.Visible  :=True;
   end;
if Frm_For.WindowState=WsMinimized then
   Frm_For.WindowState:=WsNormal
else
   frm_For.Show;}


end;

procedure TFrm_Princ.bbcadastroclieClick(Sender: TObject);
begin
mcli_0103Click(Self);
{
testeform := TFrm_Princ(FindGlobalComponent('frm_cli'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Cli, Frm_Cli);
Frm_Cli.FormStyle:=fsMDIChild;
Frm_Cli.Visible      :=true;
Frm_Cli.Top          :=0;


if Frm_Cli.WindowState=wsMinimized then
   Frm_Cli.WindowState:=wsNormal
else
   Frm_Cli.Show;}
end;

procedure TFrm_Princ.bbpedidocompraClick(Sender: TObject);
begin
mpro_0203Click(Self);
end;

procedure TFrm_Princ.bbpedidovendaClick(Sender: TObject);
begin
sai_0103Click(Self);
end;

procedure TFrm_Princ.bbcadastroprodClick(Sender: TObject);
begin
//chama botao do mainmenu
mpro_0103Click(SELF);

{if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   testeform := TFrm_princ(FindGlobalComponent('form_proconf'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(TFrm_ProConf, Form_ProConf);
      Form_ProConf.top:=0;
      end;


   Form_ProConf.FormStyle:=fsMDIChild;
   Form_ProConf.Visible      :=true;
   Form_ProConf.Top          :=0;

   if Form_ProConf.WindowState=wsMinimized then
      Form_ProConf.WindowState:=wsNormal
   else
      Form_proConf.Show;
   end
else if valint(copy(mpseg,1,2))=7 then
   begin
   end
else
   begin
   if DM1.Tb_pargerPFORPROPAD.Asinteger=1 then
      begin
      testeform := TFrm_princ(FindGlobalComponent('form_pro_nov_menu'));
      if (testeform=nil)  then
         Application.CreateForm(TFrm_Pro_Nov_Menu, Form_Pro_Nov_Menu);
      Form_Pro_Nov_Menu.FormStyle:=fsMDIChild;
      Form_Pro_Nov_Menu.Visible      :=true;
      Form_Pro_Nov_Menu.Top          :=0;

      if Form_Pro_Nov_Menu.WindowState=wsMinimized then
         Form_Pro_Nov_Menu.WindowState:=wsNormal
      else
         begin
         Form_Pro_Nov_Menu.Show;
         end;
      end
   else if DM1.Tb_EmpCGC.AsFloat=37006046000128 then
      begin
      testeform := TFrm_princ(FindGlobalComponent('form_prosimples01'));
      if (testeform=nil)  then
         begin
         Application.CreateForm(TFrm_ProSimples01, Form_ProSimples01);
         end;
      Form_ProSimples01.FormStyle:=fsMDIChild;
      Form_ProSimples01.Visible      :=true;
      Form_ProSimples01.Top          :=0;

      if Form_ProSimples01.WindowState=wsMinimized then
         Form_ProSimples01.WindowState:=wsNormal
      else
         Form_ProSimples01.Show;
      end
   else
      begin
      testeform := TFrm_princ(FindGlobalComponent('form_pro'));
      if (testeform=nil)  then
         begin
         Application.CreateForm(TFrm_Pro, Form_Pro);
         end;
      Form_Pro.FormStyle:=fsMDIChild;
      Form_Pro.Visible      :=true;
      Form_Pro.Top          :=0;

      if Form_Pro.WindowState=wsMinimized then
         Form_Pro.WindowState:=wsNormal
      else
         Form_Pro.Show;
      end;
   end;}

end;

procedure TFrm_Princ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=119) and (frm_Ent=nil) and (Frm_Princ.Active) then
   begin
   if (key=119) and (frm_Ent=nil) then
      begin
      try
         if Screen.FormCount>9+FContaForm(0) then
            exit
         else
            begin
            ToolBar1.Enabled:=False;
            Application.CreateForm(Tfrm_Ent, Frm_Ent);
            frm_ent.top:=0;

            fEventosLogin(false,codusr,nomusr);
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
            HeaderControl1.Sections[3].Text:=FormatFloat('00',DM1.Tb_EmpCODEMP.Value)
            +' '+DM1.Tb_EmpFANTASIA.Value;
            HeaderControl1.Sections[2].Text:='Caixa: '+FormatFloat('000',codcai)+' Lt.Mov:'+FormatFloat('00',lotmov);
            EstMinClick(Self);
            VAgendaClick(SELF);
            end;
      except
        end;
      end;
   end;
end;


procedure TFrm_Princ.EstMinClick(Sender: TObject);
begin
if (dm4.Tb_UsrUSR_ESTMIN.AsInteger=0) and (codusr<>1111) then
  begin
  if dm4.Tb_UsrUSR_DATHOR.AsDateTime<Date then
    begin
    Application.CreateForm(TFrm_EstMin,Frm_EstMin);
    Frm_EstMin.ShowModal;
    FreeAndNil(Frm_EstMin);
    end;
  end;
end;

procedure TFrm_Princ.VAgendaClick(Sender: TObject);
var
  agenda: Boolean;
  datap : Boolean;
begin
agenda:=False;
if (dm4.Tb_UsrUSR_AGENDA.AsInteger=0) and (codusr<>1111) then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('select * from contato where ctstatus=0 and ctdtpcon<='+chr(39)+DateToStr(Date)+chr(39)+' and CTCODVEN='+DM4.Tb_UsrCODVEN.AsString);
  DM1.Query1.Open;
  if not DM1.Query1.IsEmpty then
    agenda:=True;
  end;

if agenda then
  begin
  Application.CreateForm(TFrm_PCon,Frm_PCon);
  Frm_PCon.lbx_codven.Items.Add(dm4.Tb_UsrCODVEN.AsString+' - '+DM4.Tb_Usrnomven.AsString);
  Frm_PCon.MDT1.Text:='  /  /    ';
  Frm_PCon.MDT2.Text:=DateToStr(Date);
  Frm_PCon.CB_DTPCONT.Checked:=True;
  Frm_PCon.BBnAplicarClick(self);
  Frm_PCon.ShowModal;
  FreeAndNil(Frm_PCon);
  end;
end;


procedure TFrm_Princ.rcli_0128Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ultvenc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_UltVenC,Frm_UltVenC);
   Frm_UltVenC.top:=0;
   end;

if Frm_UltVenC.WindowState=WsMinimized then
   Frm_UltVenC.WindowState:=WsNormal
else
   Frm_UltVenC.Show;


end;

procedure TFrm_Princ.mos_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_Cont_Locacao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Cont_Locacao,Frm_Cont_Locacao);
   Frm_Cont_Locacao.top:=0;
   end;

if Frm_Cont_Locacao.WindowState=WsMinimized then
   Frm_Cont_Locacao.WindowState:=WsNormal
else
   frm_Cont_Locacao.Show;

end;

procedure TFrm_Princ.SAC1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_sac'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_sac,frm_sac);
   frm_sac.top:=0;
   end;
if frm_sac.WindowState=WsMinimized then
   frm_sac.WindowState:=WsNormal
else
   frm_sac.Show;
end;

procedure TFrm_Princ.rpro_0178Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_proentxsai'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_ProEntxSai,frm_ProEntxSai);
   frm_ProEntxSai.top:=0;
   end;
if frm_ProEntxSai.WindowState=WsMinimized then
   frm_ProEntxSai.WindowState:=WsNormal
else
   frm_ProEntxSai.Show;

end;

procedure TFrm_Princ.mcai_0136Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_caixa_provisoes'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_Caixa_Provisoes,frm_Caixa_Provisoes);
   frm_Caixa_Provisoes.top:=0;
   end;
if frm_Caixa_Provisoes.WindowState=WsMinimized then
   frm_Caixa_Provisoes.WindowState:=WsNormal
else
   frm_Caixa_Provisoes.Show;
end;

procedure TFrm_Princ.ConsultasdeRe1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_RE'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RE,Frm_RE);
   Frm_RE.top:=0;
   end;

if Frm_RE.WindowState=WsMinimized then
   Frm_RE.WindowState:=WsNormal
else
  Frm_RE.Show;
end;

procedure TFrm_Princ.rel_0103Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_codbarseq'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_codbarseq,frm_codbarseq);
   frm_codbarseq.top:=0;
   end;
if frm_codbarseq.WindowState=WsMinimized then
   frm_codbarseq.WindowState:=WsNormal
else
   frm_codbarseq.Show;

end;

procedure TFrm_Princ.rtra_0104Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_PedEnt'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedEnt,Frm_PedEnt);
   Frm_PedEnt.top:=0;
   end;
if Frm_PedEnt.WindowState=WsMinimized then
   Frm_PedEnt.WindowState:=WsNormal
else
   Frm_PedEnt.Show;
end;

procedure TFrm_Princ.mIndEnv_0117Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_PSFor'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PSFor,Frm_PSFor);
   Frm_PSFor.top:=0;
   end;
if Frm_PSFor.WindowState=WsMinimized then
   Frm_PSFor.WindowState:=WsNormal
else
   Frm_PSFor.Show;
end;

procedure TFrm_Princ.mfor_0111Click(Sender: TObject);
begin
Frm_Agenda_Tipo:=0;
testeform := TFrm_Princ(FindGlobalComponent('Frm_Agenda'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Agenda,Frm_Agenda);
   Frm_Agenda.top:=0;
   end;
if Frm_Agenda.WindowState=WsMinimized then
   Frm_Agenda.WindowState:=WsNormal
else
   Frm_Agenda.Show;
end;

procedure TFrm_Princ.mcli_0125Click(Sender: TObject);
begin
Frm_Agenda_Tipo:=1;
testeform := TFrm_Princ(FindGlobalComponent('Frm_Agenda'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Agenda,Frm_Agenda);
   Frm_Agenda.top:=0;
   end;
if Frm_Agenda.WindowState=WsMinimized then
   Frm_Agenda.WindowState:=WsNormal
else
   Frm_Agenda.Show;
end;

procedure TFrm_Princ.rcli_0122Click(
  Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_CliPen'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CliPen,Frm_CliPen);
   Frm_CliPen.top:=0;
   end;
if Frm_CliPen.WindowState=WsMinimized then
   Frm_CliPen.WindowState:=WsNormal
else
   Frm_CliPen.Show;
end;

procedure TFrm_Princ.RelaodeProdues1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_ProdProduz'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProdProduz,Frm_ProdProduz);
   Frm_ProdProduz.top:=0;
   end;
if Frm_ProdProduz.WindowState=WsMinimized then
   Frm_ProdProduz.WindowState:=WsNormal
else
   Frm_ProdProduz.Show;

end;

procedure TFrm_Princ.mind_0122Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_ProdProduz'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ProdProduz,Frm_ProdProduz);
   Frm_ProdProduz.top:=0;
   end;
if Frm_ProdProduz.WindowState=WsMinimized then
   Frm_ProdProduz.WindowState:=WsNormal
else
   Frm_ProdProduz.Show;

end;

procedure TFrm_Princ.saiconf_0119Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_editor_word'));
try
   begin
   Application.createform(TFrm_Editor_Word,Frm_Editor_Word);
   Frm_Editor_Word.top:=0;
   end;
Frm_Editor_Word.Panel_rodape.Visible:=true;
//Frm_Editor_Word.TsLegendaOrcam.TabVisible:=true;
//Frm_Editor_Word.wp_texto.ReadOnly:=false;
meditor_word_origem:='CONTRATO_VENDA.rtf';

if FileExists(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem) then
   begin
   Frm_Editor_Word.wp_texto.Clear;
   Frm_Editor_Word.wp_texto.LoadFromFile(Banco_servidor+'\PASTADOCS\'+Banco_Usuario+'\'+meditor_word_origem);
   end;
if Frm_Editor_Word.WindowState=WsMinimized then
   Frm_Editor_Word.WindowState:=WsNormal
else
   frm_Editor_Word.Show;
except on e : exception do
   messagedlg('Erro 13520 '+e.Message,mtError,[mbOk],0);
   end;

end;

procedure TFrm_Princ.rpro_0161Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_LucroPro'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LucroPro,Form_LucroPro);
   form_lucropro.top:=0;
   end;
if form_lucropro.WindowState=WsMinimized then
   form_lucropro.WindowState:=WsNormal
else
   form_lucropro.Show;

end;

procedure TFrm_Princ.ManipularItensdoPedido1Click(Sender: TObject);
begin
Application.CreateForm(Tfrm_manped02,frm_manped02);
frm_manped02.ShowModal;
FreeAndNil(frm_manped02);
end;

procedure TFrm_Princ.sis_0248Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_lersintegra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_LerSintegra,Frm_LerSintegra);
   Frm_LerSintegra.top:=0;
   end;
if Frm_LerSintegra.WindowState=WsMinimized then
   Frm_LerSintegra.WindowState:=WsNormal
else
   frm_LerSintegra.Show;


end;

procedure TFrm_Princ.rven_0156Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_comisvend_item'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComisVend_Item,Frm_ComisVend_Item);
   Frm_ComisVend_Item.top:=0;
   end;
if Frm_ComisVend_Item.WindowState=WsMinimized then
   Frm_ComisVend_Item.WindowState:=WsNormal
else
   frm_ComisVend_Item.Show;


end;

procedure TFrm_Princ.sis_0251Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_livmemfiscal'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_livmemfiscal,Frm_livmemfiscal);
   Frm_livmemfiscal.top:=0;
   end;
if Frm_livmemfiscal.WindowState=WsMinimized then
   Frm_livmemfiscal.WindowState:=WsNormal
else
   frm_livmemfiscal.Show;

end;

procedure TFrm_Princ.rven_0152Click(Sender: TObject);
begin
mSelGra_Origem:=15; // Saidas Por Vendedor
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.rpro_0162Click(Sender: TObject);
begin
mSelGra_Origem:=1; // produtos Entradas
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.rpro_0163Click(Sender: TObject);
begin
mSelGra_Origem:=0; // produtos Saidas
testeform := TFrm_Princ(FindGlobalComponent('frm_selgra'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Selgra,Frm_Selgra);
   Frm_SelGra.top:=0;
   end;

if Frm_Selgra.WindowState=WsMinimized then
   Frm_Selgra.WindowState:=WsNormal
else
   frm_Selgra.Show;

end;

procedure TFrm_Princ.ExportarEmailCSV1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_expcli_csv'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ExpCli_CSV,Frm_ExpCli_CSV);
   Frm_ExpCli_CSV.top:=0;
   end;

if Frm_ExpCli_CSV.WindowState=WsMinimized then
   Frm_ExpCli_CSV.WindowState:=WsNormal
else
   Frm_ExpCli_CSV.Show;
end;

procedure TFrm_Princ.FormShow(Sender: TObject);
var
Query_Filial: TQuery;

begin
fTestareCriarTriggers;


Query_Filial:=TQuery.Create(nil);
Query_Filial.DatabaseName:='SG_ASSOC';
Query_Filial.Close;
Query_Filial.SQL.clear;
Query_Filial.SQL.Add('Select CFFILIAL,CFNOME, '
                    +' (select count(*) from  CADPRO_FILIAL '
                    +'  where CFCODEMP='+IntToStr(codemp-iif(codemp>100,100,0))+' ) as qtdfilial '
                    +' from CADPRO_FILIAL '
                    +'  where CFCODEMP='+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and CFFILIAL='+IntToStr(log_filial_padrao));
Query_filial.Open;
if Query_Filial.IsEmpty then
   begin
   log_filial_Qtd        :=1;

   log_filial_padrao_nome:=' ';
   HeaderControl1.Sections[4].Text:=' ';
   end
else
   begin
   log_filial_Qtd        :=Query_Filial.fieldbyName('qtdfilial').AsInteger;
   HeaderControl1.Sections[4].Text:=Query_Filial.fieldbyName('CFFILIAL').AsString+' - '+ Query_Filial.fieldbyName('CFNOME').AsString+'['+IntToStr(log_filial_qtd)+']';
   log_filial_padrao_nome:=Query_Filial.fieldbyName('CFNOME').AsString ;
//   if log_filial_Qtd>1 then
      DM1.Tb_Prosaldo_filial.DisplayLabel:='Estoque '+log_filial_padrao_nome;
   end;
if flfilpad(0,'_PARNFE','CB_HORARIOVERAO') then
   pger_horario_verao:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-5,'_PAR','_APLICEMENDACONST87042015') then
   log_Aplicemendaconst87042015:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-5,'_PAR','_GERAR_TAG_CBENEF') then
   log_gerar_tag_cbenef:=DM4.Tb_FilPad2FPVALOR.AsString='true';

end;

procedure TFrm_Princ.bbprevxrealClick(Sender: TObject);
begin
rger_0209Click(Self);
end;

procedure TFrm_Princ.bbbaixaClick(Sender: TObject);
begin
cr_0303Click(Self);
end;

procedure TFrm_Princ.bbrelanaliticoClick(Sender: TObject);
begin
cr_0212Click(Self);
end;

procedure TFrm_Princ.rger_0261Click(Sender: TObject);
begin
Application.CreateForm(TFrm_Graf_Dep,Frm_Graf_Dep);
Frm_Graf_Dep.pTipo:=1;
Frm_Graf_Dep.ShowModal;
end;

procedure TFrm_Princ.rger_0262Click(Sender: TObject);
begin
Application.CreateForm(TFrm_Graf_Dep,Frm_Graf_Dep);
Frm_Graf_Dep.pTipo:=0;
Frm_Graf_Dep.ShowModal;
end;

procedure TFrm_Princ.mpro_0194Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_EstMin_Vendas'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_EstMin_Vendas,Frm_EstMin_Vendas);
   Frm_EstMin_Vendas.top:=0;
   end;

if Frm_EstMin_Vendas.WindowState=WsMinimized then
   Frm_EstMin_Vendas.WindowState:=WsNormal
else
  Frm_EstMin_Vendas.Show;
end;

procedure TFrm_Princ.Server_RemotoCustomCommand(Sender: TObject;
  Command: String);
var X, Y, LComLen, LKey: Integer;
    Shift: TShiftState;
    ACommand: String;
    LHandle: HWND;
    LClb: TClipBoard;
begin
end;

procedure TFrm_Princ.rven_0154Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_ComVP'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComVP,Frm_ComVP);
   Frm_ComVP.top:=0;
   end;
Frm_ComVP.pVOrigem:=9;
if Frm_ComVP.WindowState=WsMinimized then
   Frm_ComVP.WindowState:=WsNormal
else
   Frm_ComVP.Show;

end;

procedure TFrm_Princ.Timer3Timer(Sender: TObject);
var
  VERFINAN: T_VERFINAN;
begin
//Criação do objeto
VERFINAN := T_VERFINAN.Create(False);
VERFINAN.FreeOnTerminate := true;
end;


procedure TFrm_Princ.lbl_mensagemClick(Sender: TObject);
var
form_pedcli_Princ: TFrm_PedCli;
begin
testeform := TFrm_Princ(FindGlobalComponent('form_pedcli_Princ'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedCli,form_pedcli_Princ);
   Form_pedcli_Princ.FormStyle:=fsMDIChild;
   form_pedcli_Princ.top:=0;
   end;
form_pedcli_Princ.MDT1.Text:='/  /';
form_pedcli_Princ.MDT2.Text:='/  /';
form_pedcli_Princ.RG_FILTRO.ItemIndex:=0;
form_pedcli_Princ.MCODORI.Text:='2';
form_pedcli_Princ.MCODORIExit(SELF);
form_pedcli_Princ.bbAtualizarClick(SELF);


if form_pedcli_Princ.WindowState=WsMinimized then
   Form_pedcli_Princ.WindowState:=WsNormal
else
   Form_pedcli_Princ.Show;

end;

procedure TFrm_Princ.cp_0309Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pagar_sint'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pagar_sint,Frm_Pagar_sint);
   Frm_Pagar_sint.top:=0;
   end;

if Frm_Pagar_sint.WindowState=WsMinimized then
   Frm_Pagar_sint.WindowState:=WsNormal
else
   Frm_Pagar_sint.Show;
end;

procedure TFrm_Princ.mind_0123Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_eventosproducao'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_eventosproducao,frm_eventosproducao);
   frm_eventosproducao.top:=0;
   end;
if frm_eventosproducao.WindowState=WsMinimized then
   frm_eventosproducao.WindowState:=WsNormal
else
   frm_eventosproducao.Show;
end;

procedure TFrm_Princ.Timer4Timer(Sender: TObject);
//var
//  VER_PEDELE: T_VER_PEDELE;
begin
{Timer4.Enabled:=false;
mProcessando_Thred_pedele:=true;

if (DM1.SG_ASSOC.Connected) and (DM1.Tb_EmpCGC.AsFloat>0) and (DM1.Tb_EmpCGC.AsFloat<>10335084000178) then
  begin
  VER_PEDELE := T_VER_PEDELE.Create(False);
  VER_PEDELE.FreeOnTerminate := true;
  if mPedEle_Qtd<>mPedEle_Qtd_ant then
    begin
    mPedEle_Qtd_ant:=mPedEle_Qtd;
    if mPedEle_Qtd=0 then
      lbl_mensagem.Visible:=false
    else
      begin
      if mPedEle_Qtd=1 then
        lbl_mensagem.Caption:='Existe 1 pedido eletronico. '
      else
        lbl_mensagem.Caption:='Existem '+IntToStr(mPedEle_Qtd)+' pedidos eletronicos.';
      lbl_mensagem.Visible:=true;
      end;
    end;
  if lbl_mensagem.Visible then
    begin
    if lbl_mensagem.Font.Color=clWindowText then
      lbl_mensagem.Font.Color:=clRed
    else
      lbl_mensagem.Font.Color:=clWindowText;
    end;
  end;
mProcessando_Thred_pedele:=false;

Timer4.Enabled:=true;}
end;

procedure TFrm_Princ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
mPedele_comando: String;

begin
try
if (Frm_Venda_Pre<>nil) and (Frm_Venda_Pre.sbnGravar.enabled=true) then
   begin
   CanClose:=false;
   exit;
   end;
   Timer3.Enabled:=false;
   Timer4.Enabled:=false;
   if (mProcessando_Thred_pedele) or (mProcessando_Thred_financ) then
      begin
       While (mProcessando_Thred_pedele) or (mProcessando_Thred_financ) do
         begin
         end;
      end;


   mPedele_comando:='c:\sge\sge_pedele.exe';
   if FileExists(mPedele_comando) then
       begin
       PostMessage(FindWindow(nil, 'Pedido Eletronico'), WM_CLOSE, 0,0);
       end;

   fEventosLogin(false,codusr,nomusr);
except
   end;

end;

procedure TFrm_Princ.GerarArquivos1Click(Sender: TObject);
begin
Application.CreateForm(TFrm_REVECF,Frm_REVECF);
Frm_REVECF.ShowModal;
FreeAndNil(Frm_REVECF);
end;

procedure TFrm_Princ.sis0645Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_atusis02'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Atusis02,Frm_Atusis02);
   Frm_Atusis02.FormStyle:=fsMDIChild;
   Frm_Atusis02.Visible  :=true;
   Frm_Atusis02.top:=0;
   end;
if Frm_Atusis02.WindowState=WsMinimized then
   Frm_Atusis02.WindowState:=WsNormal
else
   frm_Atusis02.Show;

end;

procedure TFrm_Princ.mcai_0137Click(Sender: TObject);
begin
Application.CreateForm(TFrm_CBurden,Frm_CBurden);
Frm_CBurden.ShowModal;
FreeAndNil(Frm_CBurden);
end;

procedure TFrm_Princ.InformaesExtraMGV51Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Ext_Prod'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ext_Prod,Frm_Ext_Prod);
   Frm_Ext_Prod.top:=0;
   end;
if Frm_Ext_Prod.WindowState=WsMinimized then
   Frm_Ext_Prod.WindowState:=WsNormal
else
   Frm_Ext_Prod.Show;
end;

procedure TFrm_Princ.rpro_0117Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Ext3'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Extp3,Frm_Extp3);
   Frm_Extp3.top:=0;
   end;
if Frm_Extp3.WindowState=WsMinimized then
   Frm_Extp3.WindowState:=WsNormal
else
   Frm_Extp3.Show;

end;

procedure TFrm_Princ.CustodeHoraporOperao1Click(Sender: TObject);
begin
{testeform := TFrm_Princ(FindGlobalComponent('Frm_cHoraOp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_cHoraOp,Frm_cHoraOp);
   Frm_cHoraOp.top:=0;
   end;
if Frm_cHoraOp.WindowState=WsMinimized then
   Frm_cHoraOp.WindowState:=WsNormal
else
   Frm_cHoraOp.Show;}
Application.createform(TFrm_cHoraOp,Frm_cHoraOp);
Frm_cHoraOp.ShowModal;
FreeAndNil(Frm_cHoraOp);
end;

procedure TFrm_Princ.Timer5Timer(Sender: TObject);
var
  Replica1, Replica2: ThReplica;
begin

if flfilpad(0,'_principal','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADPRO',[]) then
    begin
    if iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false) then
      begin
      //Criação do objeto 1
      Replica1 := ThReplica.Create(False);
      Replica1.Nome_Tabela:='CADPRO';
      Replica1.FreeOnTerminate := true;
      end;
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','RG_CADCLI',[]) then
    begin
    if iif(DM4.Tb_FilPad2FPVALOR.AsString='true',true,false) then
      begin
      //Criação do objeto 1
      Replica1 := ThReplica.Create(False);
      Replica1.Nome_Tabela:='CADCLI';
      Replica1.FreeOnTerminate := true;
      end;
    end;
  end;
end;

procedure TFrm_Princ.rped_0120Click(
  Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_Ped02_canc'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ped02_Canc,Frm_Ped02_Canc);
   Frm_Ped02_Canc.top:=0;
   end;
if Frm_Ped02_Canc.WindowState=WsMinimized then
   Frm_Ped02_Canc.WindowState:=WsNormal
else
   Frm_Ped02_Canc.Show;
end;

procedure TFrm_Princ.rped_0121Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pedpen'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_pedpen,Frm_pedpen);
   Frm_pedpen.top:=0;
   end;
if Frm_pedpen.WindowState=WsMinimized then
   Frm_pedpen.WindowState:=WsNormal
else
   Frm_pedpen.Show;
end;

procedure TFrm_Princ.ListarCompras1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_listarcompras'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_listarcompras,Frm_listarcompras);
   Frm_listarcompras.top:=0;
   end;
if Frm_listarcompras.WindowState=WsMinimized then
   Frm_listarcompras.WindowState:=WsNormal
else
   Frm_listarcompras.Show;
end;

procedure TFrm_Princ.FormResize(Sender: TObject);
var
mPosLogo: Integer;
begin
if Image1.Visible then
   begin
   if (DM1.Tb_PargerPTAMJPGALT.AsInteger>Frm_Princ.Height) or
      (DM1.Tb_PargerPTAMJPGTAM.AsInteger>Frm_Princ.Width) then
      Image1.Align:=alClient
    else if DM1.Tb_PargerPTAMJPGALT.AsFloat>0 then
      Image1.Height:=DM1.Tb_PargerPTAMJPGALT.AsInteger;
    if DM1.Tb_PargerPTAMJPGTAM.AsFloat>0 then
      Image1.Width:=DM1.Tb_PargerPTAMJPGTAM.AsInteger;
   mposLogo:=(Frm_Princ.Width-Image1.Width) div 2;
   Image1.Left:=mposLogo;
   mposLogo:=(Frm_Princ.Height-Image1.Height) div 2;
   Image1.Top :=mposLogo;
   end;

end;

procedure TFrm_Princ.rger_0265Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cx_movdia'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CX_MovDia,Frm_CX_MovDia);
   Frm_CX_MovDia.top:=0;
   end;
if Frm_CX_MovDia.WindowState=WsMinimized then
   Frm_CX_MovDia.WindowState:=WsNormal
else
   Frm_CX_MovDia.Show;

end;

procedure TFrm_Princ.mpro_0195Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Ind_Prod_Analise'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ind_Prod_Analise,Frm_Ind_Prod_Analise);
   Frm_Ind_Prod_Analise.top:=0;
   end;
if Frm_Ind_Prod_Analise.WindowState=WsMinimized then
   Frm_Ind_Prod_Analise.WindowState:=WsNormal
else
   Frm_Ind_Prod_Analise.Show;


end;

procedure TFrm_Princ.sis_0643Click(Sender: TObject);
var
Query_filial: TQuery;
begin

Application.createform(TFrm_Local_Estoque,Frm_Local_Estoque);
frm_Local_Estoque.mLocalPadrao:=log_filial_padrao;
Frm_Local_Estoque.ShowModal;
if frm_Local_Estoque.mLocalEstoque<>0 then
   begin
   Query_Filial:=TQuery.Create(nil);
   Query_Filial.DatabaseName:='SG_ASSOC';
   Query_Filial.Close;


  Query_Filial.SQL.Add('Select CFFILIAL,CFNOME, '
                    +' (select count(*) from  CADPRO_FILIAL '
                    +'  where CFCODEMP='+IntToStr(codemp-iif(codemp>100,100,0))+' ) as qtdfilial '
                    +' from CADPRO_FILIAL    '
                    +'  where CFCODEMP='+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and CFFILIAL='+IntToStr(frm_Local_Estoque.mLocalEstoque));

   Query_filial.Open;
   if Query_Filial.IsEmpty then
      begin
      log_filial_Qtd        :=1;

      log_filial_padrao_nome:=' ';
      HeaderControl1.Sections[4].Text:=' ';
      end
   else
      begin
      log_filial_padrao:=frm_Local_Estoque.mLocalEstoque;
      log_filial_Qtd        :=Query_Filial.fieldbyName('qtdfilial').AsInteger;

      HeaderControl1.Sections[4].Text:=Query_Filial.fieldbyName('CFFILIAL').AsString+' - '+ Query_Filial.fieldbyName('CFNOME').AsString+'['+IntToStr(log_filial_qtd)+']';
      log_filial_padrao_nome:=Query_Filial.fieldbyName('CFNOME').AsString;
//      if log_filial_Qtd>1 then
         DM1.Tb_Prosaldo_filial.DisplayLabel:='Estoque '+log_filial_padrao_nome;
      end;
   FreeandNil(Query_filial);
   end;
FreeAndNil(frm_Local_Estoque);

end;

procedure TFrm_Princ.mpro_0186Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Pro_Transf_Filial'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pro_Transf_Filial,Frm_Pro_Transf_Filial);
   Frm_Pro_Transf_Filial.top:=0;
   end;
if Frm_Pro_Transf_Filial.WindowState=WsMinimized then
   Frm_Pro_Transf_Filial.WindowState:=WsNormal
else
   Frm_Pro_Transf_Filial.Show;

end;

procedure TFrm_Princ.rsai_0112Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_nfe_xmlcliente'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_NFE_XmlCliente,Frm_NFE_XmlCliente);
   Frm_NFE_XmlCliente.top:=0;
   end;

if Frm_NFE_XmlCliente.WindowState=WsMinimized then
   Frm_NFE_XmlCliente.WindowState:=WsNormal
else
   frm_NFE_XmlCliente.Show;


end;

procedure TFrm_Princ.EstoqueDia1Click(Sender: TObject);
begin
Application.CreateForm(TFrm_VoltaEstoque,Frm_VoltaEstoque);
Frm_VoltaEstoque.ShowModal;
FreeAndNil(Frm_VoltaEstoque);
end;

procedure TFrm_Princ.rsai_0115Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ocorrencias_ecf'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Ocorrencias_ecf,Frm_Ocorrencias_ecf);
   Frm_Ocorrencias_ecf.top:=0;
   end;
if Frm_Ocorrencias_ecf.WindowState=WsMinimized then
   Frm_Ocorrencias_ecf.WindowState:=WsNormal
else
   Frm_Ocorrencias_ecf.Show;
end;

procedure TFrm_Princ.lf_0157Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_SPED_EFD'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_SPED_EFD,Frm_SPED_EFD);
   Frm_SPED_EFD.top:=0;
   end;
if Frm_SPED_EFD.WindowState=WsMinimized then
   Frm_SPED_EFD.WindowState:=WsNormal
else
   Frm_SPED_EFD.Show;

end;

procedure TFrm_Princ.lf_0160Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_SPED_EFD_PisCofins'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_SPED_EFD_PisCofins,Frm_SPED_EFD_PisCofins);
   Frm_SPED_EFD_PisCofins.top:=0;
   end;
if Frm_SPED_EFD_PisCofins.WindowState=WsMinimized then
   Frm_SPED_EFD_PisCofins.WindowState:=WsNormal
else
   Frm_SPED_EFD_PisCofins.Show;

end;

procedure TFrm_Princ.mcai_0143Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_caixa_consauto'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Caixa_ConsAuto, Frm_Caixa_ConsAuto);
Frm_Caixa_ConsAuto.FormStyle:=fsMDIChild;
Frm_Caixa_ConsAuto.Visible      :=true;
Frm_Caixa_ConsAuto.Top          :=0;


if Frm_Caixa_ConsAuto.WindowState=WsMinimized then
   Frm_Caixa_ConsAuto.WindowState:=WsNormal
else
   frm_Caixa_ConsAuto.Show;

end;

procedure TFrm_Princ.mcai_0140Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_caixa_concmanual'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_Caixa_ConcManual, Frm_Caixa_ConcManual);
Frm_Caixa_ConcManual.FormStyle:=fsMDIChild;
Frm_Caixa_ConcManual.Visible      :=true;
Frm_Caixa_ConcManual.Top          :=0;


if Frm_Caixa_ConcManual.WindowState=WsMinimized then
   Frm_Caixa_ConcManual.WindowState:=WsNormal
else
   frm_Caixa_ConcManual.Show;

end;

procedure TFrm_Princ.CompararCAT52xPedidos1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cat52pedido'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_cat52xpedido,Frm_cat52xpedido);
   Frm_cat52xpedido.top:=0;
   end;

if Frm_cat52xpedido.WindowState=WsMinimized then
   Frm_cat52xpedido.WindowState:=WsNormal
else
   frm_cat52xpedido.Show;


end;

procedure TFrm_Princ.ExportarPedidoEletrnico1Click(Sender: TObject);
var
  cpf_cnpj: String;
  zip: TZip;
begin
try
  if flfilpad(0,'_principal','') then
    begin
    if DM4.Tb_FilPad2.Locate('FPCOMP','SERVPEDELE',[]) then
      DM_MYSQL.SQLConnection_PEDELE.Params.Values['HostName']:=DM4.Tb_FilPad2FPVALOR.AsString;
    if DM4.Tb_FilPad2.Locate('FPCOMP','DBPEDELE',[]) then
      DM_MYSQL.SQLConnection_PEDELE.Params.Values['Database']:=DM4.Tb_FilPad2FPVALOR.AsString;
    if DM4.Tb_FilPad2.Locate('FPCOMP','USRPEDELE',[]) then
      DM_MYSQL.SQLConnection_PEDELE.Params.Values['User_Name']:=DM4.Tb_FilPad2FPVALOR.AsString;
    if DM4.Tb_FilPad2.Locate('FPCOMP','PASSPEDELE',[]) then
      DM_MYSQL.SQLConnection_PEDELE.Params.Values['Password']:=DM4.Tb_FilPad2FPVALOR.AsString;
    end;
  DM_MYSQL.SQLConnection_PEDELE.Open;
  if DM_MYSQL.SQLConnection_PEDELE.Connected then
    begin
    DM_MYSQL.SQLQuery1.close;
    DM_MYSQL.SQLQuery1.SQL.Clear;
    DM_MYSQL.SQLQuery1.SQL.Add('delete from clientes');
    DM_MYSQL.SQLQuery1.ExecSQL(true);
    DM_MYSQL.Tb_Cli.Open;
    DM_MYSQL.CDS_Cli.Open;
    DM1.Tb_Cli.Close;
    DM1.Tb_Cli.SQL.Clear;
    DM1.Tb_Cli.SQL.Add('SELECT * FROM CADCLI WHERE CPEDELE_BLOQUEIO='+QuotedStr('N'));
    DM1.Tb_Cli.Open;
    while not DM1.Tb_Cli.Eof do
      begin
      DM_MYSQL.CDS_Cli.Append;
      DM_MYSQL.CDS_CliCODCLI.AsInteger:=DM1.Tb_CliCCODCLI.AsInteger;
      if DM1.Tb_CliCCNPJ.AsFloat>0 then
        begin
        cpf_cnpj:=Insere(DM1.Tb_CliCCNPJ.AsString,'0',14);
        cpf_cnpj:=Copy(cpf_cnpj,1,2)+'.'+Copy(cpf_cnpj,3,3)+'.'+Copy(cpf_cnpj,6,3)+'/'+Copy(cpf_cnpj,9,4)+'-' +Copy(cpf_cnpj,13,2);
        end
      else
        begin
        cpf_cnpj:=Insere(DM1.Tb_CliCCPF.AsString,'0',11);
        cpf_cnpj:=Copy(cpf_cnpj,1,3)+'.'+Copy(cpf_cnpj,4,3)+'.'+Copy(cpf_cnpj,7,3)+'-'+Copy(cpf_cnpj,10,2);
        end;
      DM_MYSQL.CDS_CliCNPJ_CPF.AsString  :=cpf_cnpj;
      DM_MYSQL.CDS_CliRAZAO.AsString     :=DM1.Tb_CliCRAZAO.AsString;
      DM_MYSQL.CDS_CliTIPOPRECO.AsInteger:=DM1.Tb_CliCPCOPRAT.AsInteger;
      DM_MYSQL.CDS_Cli.Post;
      DM1.Tb_Cli.Next;
      end;
    DM_MYSQL.CDS_Cli.ApplyUpdates(0);

    DM_MYSQL.SQLQuery1.close;
    DM_MYSQL.SQLQuery1.SQL.Clear;
    DM_MYSQL.SQLQuery1.SQL.Add('delete from upload where NOME='+QuotedStr('TABELAS.ZIP'));
    DM_MYSQL.SQLQuery1.ExecSQL(true);                    

    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' SELECT PDCODPRO, PDCODBAR, PDNOME, PDPRECO1, PDPRECO2, PDPRECO3, PDCODGRU, PDCODRAM, PDUND '
                      +' FROM CADPRO WHERE PDSTATUS<9 AND (PDNIVEL=4 or PDNIVEL=0)');
    DM1.Query1.Open;
    GerarArquivoGson(DM1.Query1,'CADPRO.JSON');

    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' SELECT GRCODGRU, GRNOME FROM CADGRU WHERE GRCODGRU IN (SELECT PDCODGRU FROM CADPRO WHERE PDSTATUS<9 AND (PDNIVEL=4 or PDNIVEL=0))');
    DM1.Query1.Open;
    GerarArquivoGson(DM1.Query1,'CADGRU.JSON');

    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' SELECT RNOME, RCODRAM FROM CADRAM  WHERE RCODRAM IN (SELECT PDCODRAM FROM CADPRO WHERE PDSTATUS<9 AND (PDNIVEL=4 or PDNIVEL=0))');
    DM1.Query1.Open;
    GerarArquivoGson(DM1.Query1,'CADRAM.JSON');

    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' Select cbcodpro, cbcodbar, cbqtdmult from CADPRO_CODBAR where CBCODPRO IN (SELECT PDCODPRO FROM CADPRO WHERE PDSTATUS<9 AND (PDNIVEL=4 or PDNIVEL=0))');
    DM1.Query1.Open;
    GerarArquivoGson(DM1.Query1,'CADPRO_CODBAR.JSON');

    if copy(banco_servidor,length(banco_servidor),1)<>'\' then
      banco_servidor:=banco_servidor+'\';
    zip := TZip.create(self);
    zip.filename := banco_servidor+'\TABELAS.ZIP';
    zip.FileSpecList.Add('CADPRO.JSON');
    zip.ZipComment := '';
    zip.AddOptions := [aoUpdate];
    zip.add;
    zip.FileSpecList.Add('CADGRU.JSON');
    zip.ZipComment := '';
    zip.AddOptions := [aoUpdate];
    zip.add;
    zip.FileSpecList.Add('CADRAM.JSON');
    zip.ZipComment := '';
    zip.AddOptions := [aoUpdate];
    zip.add;
    zip.FileSpecList.Add('CADPRO_CODBAR.JSON');
    zip.ZipComment := '';
    zip.AddOptions := [aoUpdate];
    zip.add;


    UploadFile(DM_MYSQL.SQLQuery1,'TABELAS.ZIP',Banco_Servidor+'\TABELAS.ZIP');

    ShowMessage('Servidor Atualizado');
    end
  else
    ShowMessage('Erro ao Atualizar Servidor.');
except
  on E : Exception do
     begin
     ShowMessage('Servidor não atualizado.'+#13+E.Message);
     end;
  end;
end;

procedure TFrm_Princ.sai_0122Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_FatPedOnline'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FatPedOnline,Frm_FatPedOnline);
   Frm_FatPedOnline.top:=0;
   end;

if Frm_FatPedOnline.WindowState=WsMinimized then
   Frm_FatPedOnline.WindowState:=WsNormal
else
   Frm_FatPedOnline.Show;

end;

procedure TFrm_Princ.Cotao1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Cotacao_Cpr'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Cotacao_Cpr,Frm_Cotacao_Cpr);
   Frm_Cotacao_Cpr.top:=0;
   end;
{
if Frm_Cotacao_Cpr.WindowState=WsMinimized then
   Frm_NCM_DES_ICMS.WindowState:=WsNormal
else
   Frm_Cotacao_Cpr.Show;}
{Application.createform(TFrm_Cotacao_Cpr,Frm_Cotacao_Cpr);
Frm_Cotacao_Cpr.ShowModal;
FreeAndNil(Frm_Cotacao_Cpr);
}
end;

procedure TFrm_Princ.lf_0163Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_SPED_EFD_NOVO'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_SPED_EFD_NOVO,Frm_SPED_EFD_NOVO);
   Frm_SPED_EFD_NOVO.top:=0;
   end;

if Frm_SPED_EFD_NOVO.WindowState=WsMinimized then
   Frm_SPED_EFD_NOVO.WindowState:=WsNormal
else
   Frm_SPED_EFD_NOVO.Show;


end;

procedure TFrm_Princ.GeraremExcel1Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_excel'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Excel,Frm_Excel);
   Frm_Excel.top:=0;
   end;

if Frm_Excel.WindowState=WsMinimized then
   Frm_Excel.WindowState:=WsNormal
else
   frm_Excel.Show;

end;

procedure TFrm_Princ.BaixaOs1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_BxOs'));
if (testeform=nil)  then
  begin
  Application.createform(TFrm_BxOs,Frm_BxOs);
  Frm_BxOs.top:=0;
  end;

if Frm_BxOs.WindowState=WsMinimized then
  Frm_BxOs.WindowState:=WsNormal
else
  Frm_BxOs.Show;
end;

procedure TFrm_Princ.Extrato3MovimentaoGeral1Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_Extrato_Produtos'));
if (testeform=nil)  then
   begin
   Application.createform(tFrm_Extrato_Produtos,Frm_Extrato_Produtos);
   Frm_Extrato_Produtos.top:=0;
   end;
if Frm_Extrato_Produtos.WindowState=WsMinimized then
   Frm_Extrato_Produtos.WindowState:=WsNormal
else
   Frm_Extrato_Produtos.Show;


end;

procedure TFrm_Princ.lf_0147Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Extrato_Produtos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fiscal_PisCofins_Mono,Frm_Fiscal_PisCofins_Mono);
   Frm_Fiscal_PisCofins_Mono.top:=0;
   end;
if Frm_Fiscal_PisCofins_Mono.WindowState=WsMinimized then
   Frm_Fiscal_PisCofins_Mono.WindowState:=WsNormal
else
   Frm_Fiscal_PisCofins_Mono.Show;

end;

procedure TFrm_Princ.lf_0166Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_FISCAL_LivroEle_DF'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FISCAL_LivroEle_DF,Frm_FISCAL_LivroEle_DF);
   Frm_FISCAL_LivroEle_DF.top:=0;
   end;
if Frm_FISCAL_LivroEle_DF.WindowState=WsMinimized then
   Frm_FISCAL_LivroEle_DF.WindowState:=WsNormal
else
   Frm_FISCAL_LivroEle_DF.Show;

end;

procedure TFrm_Princ.RelatoriodeNotasdeSaidasClientexNcm1Click(
  Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_RelNsCliXNcm'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_RelNsCliXNcm,Frm_RelNsCliXNcm);
   Frm_RelNsCliXNcm.top:=0;
   end;

if Frm_RelNsCliXNcm.WindowState=WsMinimized then
   Frm_RelNsCliXNcm.WindowState:=WsNormal
else
   frm_RelNsCliXNcm.Show;

end;

procedure TFrm_Princ.mpro_0152Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_Prod_Classificar'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Prod_Classificar,Frm_Prod_Classificar);
   Frm_Prod_Classificar.top:=0;
   end;

if Frm_Prod_Classificar.WindowState=WsMinimized then
   Frm_Prod_Classificar.WindowState:=WsNormal
else
   frm_Prod_Classificar.Show;

end;

procedure TFrm_Princ.mcli_0130Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_ccom'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ccom,Frm_ccom);
   Frm_ccom.top:=0;
   if (Screen.WIDTH=800) and
      (Screen.Height=600) then
      Frm_ccom.Height:=467;
   end;
Frm_ccom.Top:=0;
if Frm_ccom.WindowState=WsMinimized then
   Frm_ccom.WindowState:=WsNormal
else
   Frm_ccom.Show;

end;

procedure TFrm_Princ.sai_0157Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_comodato'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_comodato,Frm_comodato);
   Frm_comodato.top:=0;
   if (Screen.WIDTH=800) and
      (Screen.Height=600) then
      Frm_comodato.Height:=467;
   end;
Frm_comodato.Top:=0;
if Frm_comodato.WindowState=WsMinimized then
   Frm_comodato.WindowState:=WsNormal
else
   Frm_comodato.Show;
end;

procedure TFrm_Princ.sai_0123Click(
  Sender: TObject);
var
mPedele_comando: String;
hwnd: Thandle;

begin
{
try
application.createform(Tfrm_Agde, Frm_Agde);
Frm_Agde.Panel1.Visible     :=true;
Frm_Agde.ListBox1.Visible     :=true;
Frm_Agde.bbProgAberto.Visible :=true;
Frm_Agde.ShowModal;
freeandnil(frm_agde);
except
   end;
 }
mPedele_comando:='c:\sge\sge_pedele.exe';

if not FileExists(mPedele_comando) then
   begin
   MessageDlg('Não Foi Encontrado o arquivo '+mPedele_comando,mtWarning,[mbOk],0);
   exit;
   end;

mPedele_comando:=mPedele_comando+' SGE_INTERSYS '+IntTostr(codemp)+' "'+DM1.Tb_EmpRAZAO.AsString+'" '+IntTostr(codusr)+' "'+nomusr+'"';


hwnd := FindWindow(nil,'Pedido Eletronico');
//hwnd := FindWindow(PChar('SGE_PEDELE.EXE'),nil);
if hwnd <> 0 then
   begin
//   PostMessage(FindWindow(nil, 'Sistema Personalizado'), WM_CLOSE, 0,0);
//   showmessage('focando no pedido eletronico');
   SetForegroundWindow(hwnd);
   end
else
   WinExec(pchar(mPedele_comando), SW_SHOW);
//ShellExecute(handle, 'open', pchar(mPedele_comando), nil, nil, SW_SHOWNORMAL);


mPedele_comando:='passou';
//fexecprog(mPedele_comando,SW_SHOWNORMAL);
end;

procedure TFrm_Princ.rpfor_0106Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_relpedfor_fpped'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Relpedfor_Fpped,Frm_Relpedfor_Fpped);
   Frm_RelPedfor_FPPed.top:=0;
   end;

if Frm_Relpedfor_Fpped.WindowState=WsMinimized then
   Frm_Relpedfor_fpped.WindowState:=WsNormal
else
   frm_Relpedfor_fpped.Show;


end;

procedure TFrm_Princ.cp_0313Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_NotaPromissoria'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_NotaPromissoria,Frm_NotaPromissoria);
   Frm_NotaPromissoria.top:=0;
   end;

if Frm_NotaPromissoria.WindowState=WsMinimized then
   Frm_NotaPromissoria.WindowState:=WsNormal
else
   frm_NotaPromissoria.Show;

end;

procedure TFrm_Princ.mind_0126Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_BalMens'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_BalMens, Frm_BalMens);
   Frm_BalMens.FormStyle:=fsMDIChild;
   Frm_BalMens.Top      :=0;
   Frm_BalMens.Visible  :=True;
   end;
if Frm_BalMens.WindowState=WsMinimized then
   Frm_BalMens.WindowState:=WsNormal
else
   frm_BalMens.Show;

end;

procedure TFrm_Princ.rped_0124Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_VendaxCusto'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_VendaxCusto, Frm_VendaxCusto);
   Frm_VendaxCusto.FormStyle:=fsMDIChild;
   Frm_VendaxCusto.Top      :=0;
   Frm_VendaxCusto.Visible  :=True;
   end;
if Frm_VendaxCusto.WindowState=WsMinimized then
   Frm_VendaxCusto.WindowState:=WsNormal
else
   frm_VendaxCusto.Show;

end;

procedure TFrm_Princ.ImportadorExcelClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ImportarExcel,Frm_ImportarExcel);
Frm_ImportarExcel.ShowModal;
freeandnil(Frm_ImportarExcel);
end;

procedure TFrm_Princ.rped_0102Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_RelPedMod02'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_RelPedMod02, Frm_RelPedMod02);
   Frm_RelPedMod02.FormStyle:=fsMDIChild;
   Frm_RelPedMod02.Top      :=0;
   Frm_RelPedMod02.Visible  :=True;
   end;
if Frm_RelPedMod02.WindowState=WsMinimized then
   Frm_RelPedMod02.WindowState:=WsNormal
else
   frm_RelPedMod02.Show;

end;

procedure TFrm_Princ.rel_1003Click(Sender: TObject);
begin
mreltab:='CADLC1';
testeform := TFrm_Princ(FindGlobalComponent('form_per2_pen'));
if (testeform=nil)  then
   Application.createform(Tfrm_per2,form_per2_pen);

if form_per2_pen.WindowState=WsMinimized then
   form_per2_pen.WindowState:=WsNormal
else
   form_per2_pen.Show;


end;

procedure TFrm_Princ.mIndEnv_0107Click(Sender: TObject);
begin

if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndEnv_OPSimples,Frm_IndEnv_OPSimples);
   end;


if Frm_IndEnv_OPSimples.WindowState=WsMinimized then
   Frm_IndEnv_OPSimples.WindowState:=WsNormal
else
   Frm_IndEnv_OPSimples.Show;

end;

procedure TFrm_Princ.cr_0933Click(Sender: TObject);
begin


if (testeform=nil)  then
   begin
   Application.createform(TFrm_Contas_por_Competencia,Frm_Contas_por_Competencia);
   end;


if Frm_Contas_por_Competencia.WindowState=WsMinimized then
   Frm_Contas_por_Competencia.WindowState:=WsNormal
else
   Frm_Contas_por_Competencia.Show;

end;

procedure TFrm_Princ.mIndEnv_0120Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_IndEnv_Fracionamento'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_IndEnv_Fracionamento,Frm_IndEnv_Fracionamento);
   Frm_IndEnv_Fracionamento.top:=0;
   end;
if Frm_IndEnv_Fracionamento.WindowState=WsMinimized then
   Frm_IndEnv_Fracionamento.WindowState:=WsNormal
else
   Frm_IndEnv_Fracionamento.Show;


end;

procedure TFrm_Princ.FaturardoXML1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_faturarxml'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_faturarxml,Frm_faturarxml);
   Frm_faturarxml.top:=0;
   end;
if Frm_faturarxml.WindowState=WsMinimized then
   Frm_faturarxml.WindowState:=WsNormal
else
   Frm_faturarxml.Show;

end;

procedure TFrm_Princ.mpro_0189Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Pro_Fracionar'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_Pro_Fracionar,Frm_Pro_Fracionar);
   Frm_Pro_Fracionar.top:=0;
   end;
if Frm_Pro_Fracionar.WindowState=WsMinimized then
   Frm_Pro_Fracionar.WindowState:=WsNormal
else
   Frm_Pro_Fracionar.Show;



end;

procedure TFrm_Princ.este1Click(Sender: TObject);
begin
Application.createform(TFrm_CADLGCigualCADEST, Frm_CADLGCigualCADEST);
Frm_CADLGCigualCADEST.ShowModal;
freeandnil(Frm_CADLGCigualCADEST);
end;

procedure TFrm_Princ.ComissoporProdutonoRecebimento1Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_ComRP'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_ComRP,Frm_ComRP);
   Frm_ComRP.top:=0;
   end;
if Frm_ComRP.WindowState=WsMinimized then
   Frm_ComRP.WindowState:=WsNormal
else
   Frm_ComRP.Show;

end;

procedure TFrm_Princ.mpro_0212Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_nfe_manifestacao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_nfe_manifestacao,Frm_nfe_manifestacao);
   Frm_nfe_manifestacao.top:=0;
   end;
if Frm_nfe_manifestacao.WindowState=WsMinimized then
   Frm_nfe_manifestacao.WindowState:=WsNormal
else
   Frm_nfe_manifestacao.Show;

end;

procedure TFrm_Princ.EnviarEmail1Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_enviaremail'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_enviaremail,Frm_enviaremail);
   end;

if frm_enviaremail.WindowState=WsMinimized then
   frm_enviaremail.WindowState:=WsNormal
else
   frm_enviaremail.Show;

end;

procedure TFrm_Princ.mdiv_0127Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_fpag'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Fpag,Frm_FPag);
   Frm_FPag.top:=0;
   end;

if Frm_FPag.WindowState=WsMinimized then
   Frm_FPag.WindowState:=WsNormal
else
   frm_FPag.Show;

end;

procedure TFrm_Princ.mpro_0197Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_Pro_ForaPadraoNFE'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pro_ForaPadraoNFE,Frm_Pro_ForaPadraoNFE);
   Frm_Pro_ForaPadraoNFE.top:=0;
   end;

if Frm_Pro_ForaPadraoNFE.WindowState=WsMinimized then
   Frm_Pro_ForaPadraoNFE.WindowState:=WsNormal
else
   Frm_Pro_ForaPadraoNFE.Show;


end;

procedure TFrm_Princ.ransferenciadeArquivosFTP1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_FTP_Transferencias'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FTP_Transferencias,Frm_FTP_Transferencias);
   Frm_FTP_Transferencias.top:=0;
   end;

if Frm_FTP_Transferencias.WindowState=WsMinimized then
   Frm_FTP_Transferencias.WindowState:=WsNormal
else
   Frm_FTP_Transferencias.Show;

end;

procedure TFrm_Princ.mpro_0181Click(Sender: TObject);
begin


testeform := TFrm_Princ(FindGlobalComponent('Frm_Pro_AtuaGeral'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pro_AtuaGeral,Frm_Pro_AtuaGeral);
   Frm_Pro_AtuaGeral.top:=0;
   end;

if Frm_Pro_AtuaGeral.WindowState=WsMinimized then
   Frm_Pro_AtuaGeral.WindowState:=WsNormal
else
   Frm_Pro_AtuaGeral.Show;

end;

procedure TFrm_Princ.este2Click(Sender: TObject);
const
    mnomeaplicativo = 'IGESTAO_CLIENT.EXE';

begin


if QtdTask(mnomeaplicativo)>0 then
   begin
   MessageDlg('Ja Esta aberto em outra aplicação é invalido!',mtWarning,[mbOk],0);
   exit;
   end;



testeform := TFrm_Princ(FindGlobalComponent('Frm_Executar_Igestao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Executar_Igestao,Frm_Executar_Igestao);
   Frm_Executar_Igestao.top:=0;

   end;

if Frm_Executar_Igestao.WindowState=WsMinimized then
   Frm_Executar_Igestao.WindowState:=WsNormal
else
   begin
   Frm_Executar_Igestao.Show;
   Frm_Executar_Igestao.fExecutarJanelaExterna;

   end;


end;

procedure TFrm_Princ.sai_0155Click(Sender: TObject);
begin


testeform := TFrm_Princ(FindGlobalComponent('Frm_Manifesto_Sefaz'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Manifesto_Sefaz,Frm_Manifesto_Sefaz);
   Frm_Manifesto_Sefaz.top:=0;
   end;

if Frm_Manifesto_Sefaz.WindowState=WsMinimized then
   Frm_Manifesto_Sefaz.WindowState:=WsNormal
else
   Frm_Manifesto_Sefaz.Show;


end;

procedure TFrm_Princ.cfo_0104Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_CSOSN_Padrao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CSOSN_Padrao,Frm_CSOSN_Padrao);
   Frm_CSOSN_Padrao.top:=0;
   end;

if Frm_CSOSN_Padrao.WindowState=WsMinimized then
   Frm_CSOSN_Padrao.WindowState:=WsNormal
else
   Frm_CSOSN_Padrao.Show;


end;

procedure TFrm_Princ.sai_0126Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_PedidoEletronico'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PedidoEletronico,Frm_PedidoEletronico);
   Frm_PedidoEletronico.top:=0;
   end;

if Frm_PedidoEletronico.WindowState=WsMinimized then
   Frm_PedidoEletronico.WindowState:=WsNormal
else
   Frm_PedidoEletronico.Show;

end;

procedure TFrm_Princ.sai_0158Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_MDFE_Consultas'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_MDFE_Consultas,Frm_MDFE_Consultas);
   Frm_MDFE_Consultas.top:=0;
   end;

if Frm_MDFE_Consultas.WindowState=WsMinimized then
   Frm_MDFE_Consultas.WindowState:=WsNormal
else
   Frm_MDFE_Consultas.Show;


end;

procedure TFrm_Princ.lf_0169Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_PlanoCtaEfd'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_PlanoCtaEfd ,Frm_PlanoCtaEfd);
   Frm_PlanoCtaEfd.top:=0;
   end;

if Frm_PlanoCtaEfd.WindowState=WsMinimized then
   Frm_PlanoCtaEfd.WindowState:=WsNormal
else
   Frm_PlanoCtaEfd.Show;

end;

procedure TFrm_Princ.rcr_0128Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_cobEle_relatorio'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_CobEle_Relatorio,Frm_CobEle_Relatorio);
   end;


Frm_CobEle_Relatorio.Top:=0;
if Frm_CobEle_Relatorio.WindowState=WsMinimized then
   Frm_CobEle_Relatorio.WindowState:=WsNormal
else
   Frm_CobEle_Relatorio.Show;



end;

procedure TFrm_Princ.sai_0143Click(Sender: TObject);
begin



testeform := TFrm_Princ(FindGlobalComponent('Frm_lsep'));
if (testeform=nil)  then
   begin
   Application.Createform(TFrm_lsep, Frm_lsep);
   Frm_lsep.top:=0;
   Frm_lsep.FormStyle:=fsMDIChild;
   Frm_lsep.Visible  :=True;

   end;
if Frm_lsep.WindowState=wsMinimized then
   Frm_lsep.WindowState:=wsNormal
else
   Frm_lsep.Show;



end;

procedure TFrm_Princ.mtra_0106Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_agruTransp'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_AgruTransp,Frm_AgruTransp);
   end;


Frm_AgruTransp.Top:=0;
if Frm_AgruTransp.WindowState=WsMinimized then
   Frm_AgruTransp.WindowState:=WsNormal
else
   Frm_AgruTransp.Show;



end;

procedure TFrm_Princ.lf_0172Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_cst_icms'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_cst_icms,Frm_cst_icms);
   end;


Frm_cst_icms.Top:=0;
if Frm_cst_icms.WindowState=WsMinimized then
   Frm_cst_icms.WindowState:=WsNormal
else
   Frm_cst_icms.Show;


end;

procedure TFrm_Princ.sai_0120Click(Sender: TObject);
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin
   fmensagem('Esta Empresa esta com os movimentos de vendas suspensos!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Princ(FindGlobalComponent('frm_licitacoes_relatorios'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_licitacoes_relatorios,Frm_licitacoes_relatorios);
   frm_licitacoes_relatorios.top:=0;
   end;

if frm_licitacoes_relatorios.WindowState=WsMinimized then
   frm_licitacoes_relatorios.WindowState:=WsNormal
else
   frm_licitacoes_relatorios.Show;
end;

procedure TFrm_Princ.FTP1Click(Sender: TObject);
var
mComando: String;
mParametros: string;
begin

mComando := 'set';
mParametros := 'path > c:\SGE\listapathdelphi1.txt';

ShellExecute(Handle, 'open', pchar(mComando), pchar(mParametros), nil, SW_SHOWNORMAL) ;

//fexecprog(mComando,4);

testeform := TFrm_Princ(FindGlobalComponent('Frm_FTP_Transferencias'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_FTP_Transferencias,Frm_FTP_Transferencias);
   Frm_FTP_Transferencias.top:=0;
   end;

if Frm_FTP_Transferencias.WindowState=WsMinimized then
   Frm_FTP_Transferencias.WindowState:=WsNormal
else
   Frm_FTP_Transferencias.Show;

end;

procedure TFrm_Princ.mdiv_0130Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_GerarQrCode'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_GerarQrCode,frm_GerarQrCode);
   frm_GerarQrCode.top:=0;
   end;

if frm_GerarQrCode.WindowState=WsMinimized then
   frm_GerarQrCode.WindowState:=WsNormal
else
   frm_GerarQrCode.Show;
end;

procedure TFrm_Princ.lf_0178Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Cbenef'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_CBenef,frm_CBenef);
   frm_CBenef.top:=0;
   end;

if frm_CBenef.WindowState=WsMinimized then
   frm_CBenef.WindowState:=WsNormal
else
   frm_CBenef.Show;

end;

procedure TFrm_Princ.mdiv_0133Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('Frm_GerarQrCodeNormal'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_GerarQrCodeNormal,frm_GerarQrCodeNormal);
   frm_GerarQrCodeNormal.top:=0;
   end;

if frm_GerarQrCodeNormal.WindowState=WsMinimized then
   frm_GerarQrCodeNormal.WindowState:=WsNormal
else
   frm_GerarQrCodeNormal.Show;

end;

procedure TFrm_Princ.mpro_01100Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Combo'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Combo,Frm_Combo);
   Frm_Combo.top:=0;
   end;

if Frm_Combo.WindowState=WsMinimized then
   Frm_Combo.WindowState:=WsNormal
else
  Frm_Combo.Show;

end;

procedure TFrm_Princ.mpro_0153Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pro_gerar_planilha_tributacoes'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_pro_gerar_planilha_tributacoes,frm_pro_gerar_planilha_tributacoes);
   frm_pro_gerar_planilha_tributacoes.top:=0;
   end;

frm_pro_gerar_planilha_tributacoes.FormStyle:=fsMDIChild;
frm_pro_gerar_planilha_tributacoes.Visible      :=true;
frm_pro_gerar_planilha_tributacoes.Top          :=0;

if frm_pro_gerar_planilha_tributacoes.WindowState=WsMinimized then
   frm_pro_gerar_planilha_tributacoes.WindowState:=WsNormal
else
   frm_pro_gerar_planilha_tributacoes.Show;


end;

procedure TFrm_Princ.mpro_0156Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_Imp_trib_prod_planilha'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Imp_trib_prod_planilha,Frm_Imp_trib_prod_planilha);
   Frm_Imp_trib_prod_planilha.top:=0;
   end;

Frm_Imp_trib_prod_planilha.FormStyle:=fsMDIChild;
Frm_Imp_trib_prod_planilha.Visible      :=true;
Frm_Imp_trib_prod_planilha.Top          :=0;

if Frm_Imp_trib_prod_planilha.WindowState=WsMinimized then
   Frm_Imp_trib_prod_planilha.WindowState:=WsNormal
else
   Frm_Imp_trib_prod_planilha.Show;

end;

procedure TFrm_Princ.FinanceiroTempClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Financeiro, frm_financeiro);
frm_financeiro.showModal;
freeandNil(frm_financeiro);


end;

procedure TFrm_Princ.PixTempClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Receber_pix, frm_Receber_pix);
frm_Receber_pix.showModal;
freeandNil(frm_Receber_pix);

end;

procedure TFrm_Princ.cr_0934Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_caucao_remessa'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_caucao_remessa,frm_caucao_remessa);
   frm_caucao_remessa.top:=0;
   end;

if frm_caucao_remessa.WindowState=WsMinimized then
   frm_caucao_remessa.WindowState:=WsNormal
else
   frm_caucao_remessa.Show;

end;

procedure TFrm_Princ.cr_0937Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_caucao_extorno'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_caucao_extorno,frm_caucao_extorno);
   frm_caucao_extorno.top:=0;
   end;

if frm_caucao_extorno.WindowState=WsMinimized then
   frm_caucao_extorno.WindowState:=WsNormal
else
   frm_caucao_extorno.Show;


end;

procedure TFrm_Princ.mpro_0192Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_SinalizadorLotes'));
if (testeform=nil)  then
   begin
   Application.createform(Tfrm_SinalizarLotes,Frm_SinalizarLotes);
   Frm_SinalizarLotes.top:=0;
   end;
if Frm_SinalizarLotes.WindowState=WsMinimized then
   Frm_SinalizarLotes.WindowState:=WsNormal
else
   Frm_SinalizarLotes.Show;

end;

procedure TFrm_Princ.lf_0181Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cnae'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cnae, Frm_cnae);
   Frm_cnae.FormStyle:=fsMDIChild;
   Frm_cnae.top:=0;
   end;


if Frm_cnae.WindowState=WsMinimized then
   Frm_cnae.WindowState:=WsNormal
else
   frm_cnae.Show;

end;

procedure TFrm_Princ.lf_0184Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cnae_lc'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cnae_lc, Frm_cnae_lc);
   Frm_cnae_lc.FormStyle:=fsMDIChild;
   Frm_cnae_lc.top:=0;
   end;


if Frm_cnae_lc.WindowState=WsMinimized then
   Frm_cnae_lc.WindowState:=WsNormal
else
   frm_cnae_lc.Show;

end;

procedure TFrm_Princ.lf_0187Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cnae_x_lc'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cnae_x_lc, Frm_cnae_x_lc);
   Frm_cnae_x_lc.FormStyle:=fsMDIChild;
   Frm_cnae_x_lc.top:=0;
   end;


if Frm_cnae_x_lc.WindowState=WsMinimized then
   Frm_cnae_x_lc.WindowState:=WsNormal
else
   frm_cnae_x_lc.Show;

end;

procedure TFrm_Princ.lf_0190Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cbs_cst'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cbscst, Frm_cbscst);
   Frm_cbscst.FormStyle:=fsMDIChild;
   Frm_cbscst.top:=0;
   end;


if Frm_cbscst.WindowState=WsMinimized then
   Frm_cbscst.WindowState:=WsNormal
else
   frm_cbscst.Show;

end;

procedure TFrm_Princ.lf_0193Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ClassTrib'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_ClassTrib, Frm_ClassTrib);
   Frm_ClassTrib.FormStyle:=fsMDIChild;
   Frm_ClassTrib.top:=0;
   end;


if Frm_ClassTrib.WindowState=WsMinimized then
   Frm_ClassTrib.WindowState:=WsNormal
else
   frm_ClassTrib.Show;

end;

procedure TFrm_Princ.lf_0196Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('Frm_cbsCstXCadclassTrib'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cbsCstXCadclassTrib, Frm_cbsCstXCadclassTrib);
   Frm_cbsCstXCadclassTrib.FormStyle:=fsMDIChild;
   Frm_cbsCstXCadclassTrib.top:=0;
   end;


if Frm_cbsCstXCadclassTrib.WindowState=WsMinimized then
   Frm_cbsCstXCadclassTrib.WindowState:=WsNormal
else
   frm_cbsCstXCadclassTrib.Show;

end;

procedure TFrm_Princ.mfol_0125Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_turnos'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_turnos,Frm_turnos);
   Frm_turnos.top:=0;
   end;

if Frm_turnos.WindowState=WsMinimized then
   Frm_turnos.WindowState:=WsNormal
else
   frm_turnos.Show;

end;

procedure TFrm_Princ.sai_0161Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_pos_integracao'));
if (testeform=nil)  then
   begin
   Application.createform(TFrm_Pos_Integracao,Frm_Pos_Integracao);
   Frm_Pos_Integracao.top:=0;
   end;


if Frm_Pos_Integracao.WindowState=WsMinimized then
   Frm_Pos_Integracao.WindowState:=WsNormal
else
   frm_Pos_Integracao.Show;


end;

procedure TFrm_Princ.ributosNacionais1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_trib_mun'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_trib_mun, Frm_trib_mun);
   Frm_trib_mun.FormStyle:=fsMDIChild;
   Frm_trib_mun.top:=0;
   end;


if Frm_trib_mun.WindowState=WsMinimized then
   Frm_trib_mun.WindowState:=WsNormal
else
   frm_trib_mun.Show;

end;

procedure TFrm_Princ.CSTCBS1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cbscst'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cbscst, Frm_cbscst);
   Frm_cbscst.FormStyle:=fsMDIChild;
   Frm_cbscst.top:=0;
   end;


if Frm_cbscst.WindowState=WsMinimized then
   Frm_cbscst.WindowState:=WsNormal
else
   frm_cbscst.Show;

end;

procedure TFrm_Princ.CBS1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_cbs'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_cbs, Frm_cbs);
   Frm_cbs.FormStyle:=fsMDIChild;
   Frm_cbs.top:=0;
   end;


if Frm_cbs.WindowState=WsMinimized then
   Frm_cbs.WindowState:=WsNormal
else
   frm_cbs.Show;

end;

procedure TFrm_Princ.IndOpCbs1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_IndOpIbsCbs'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_IndOpIbsCbs, Frm_IndOpIbsCbs);
   Frm_IndOpIbsCbs.FormStyle:=fsMDIChild;
   Frm_IndOpIbsCbs.top:=0;
   end;


if Frm_IndOpIbsCbs.WindowState=WsMinimized then
   Frm_IndOpIbsCbs.WindowState:=WsNormal
else
   frm_IndOpIbsCbs.Show;

end;

procedure TFrm_Princ.CstPisCofins1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_CstPisCofins'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_CstPisCofins, Frm_CstPisCofins);
   Frm_CstPisCofins.FormStyle:=fsMDIChild;
   Frm_CstPisCofins.top:=0;
   end;


if Frm_CstPisCofins.WindowState=WsMinimized then
   Frm_CstPisCofins.WindowState:=WsNormal
else
   frm_CstPisCofins.Show;

end;

procedure TFrm_Princ.ClasseTributaria1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_ClassTrib'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_ClassTrib, Frm_ClassTrib);
   Frm_ClassTrib.FormStyle:=fsMDIChild;
   Frm_ClassTrib.top:=0;
   end;


if Frm_ClassTrib.WindowState=WsMinimized then
   Frm_ClassTrib.WindowState:=WsNormal
else
   frm_ClassTrib.Show;

end;

procedure TFrm_Princ.Nbs1Click(Sender: TObject);
begin

testeform := TFrm_Princ(FindGlobalComponent('frm_nbs'));
if (testeform=nil)  then
   begin
   Application.CreateForm(TFrm_nbs, Frm_nbs);
   Frm_nbs.FormStyle:=fsMDIChild;
   Frm_nbs.top:=0;
   end;


if Frm_nbs.WindowState=WsMinimized then
   Frm_nbs.WindowState:=WsNormal
else
   frm_nbs.Show;


end;

procedure TFrm_Princ.CorrelatoNbsibscbs1Click(Sender: TObject);
begin
testeform := TFrm_Princ(FindGlobalComponent('frm_CorrelatoNfse'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_CorrelatoNfse, Frm_CorrelatoNfse);
   Frm_CorrelatoNfse.FormStyle:=fsMDIChild;
   Frm_CorrelatoNfse.top:=0;
   end;


if Frm_CorrelatoNfse.WindowState=WsMinimized then
   Frm_CorrelatoNfse.WindowState:=WsNormal
else
   frm_CorrelatoNfse.Show;

end;

end.
