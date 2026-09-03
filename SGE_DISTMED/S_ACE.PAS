unit S_Ace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, Buttons, ComCtrls, S_Funcao, S_Agde, S_DM1,
  func, Db, DBTables,S_AcTab;

type
  TFrm_Ace = class(TForm)
    Panel1: TPanel;
    BBCargo: TBitBtn;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn4: TBitBtn;
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
    mpro_0207: TMenuItem;
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
    mpro_0185: TMenuItem;
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
    N99: TMenuItem;
    ConsultasdeRe1: TMenuItem;
    mpro_0194: TMenuItem;
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
    mfor_0111: TMenuItem;
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
    mcli_0125: TMenuItem;
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
    N98: TMenuItem;
    mcai_0136: TMenuItem;
    N105: TMenuItem;
    mcai_0137: TMenuItem;
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
    mind_0122: TMenuItem;
    mind_0123: TMenuItem;
    Industria_Envase: TMenuItem;
    mIndEnv_0103: TMenuItem;
    mIndEnv_0106: TMenuItem;
    mIndEnv_0109: TMenuItem;
    mIndEnv_0115: TMenuItem;
    mIndEnv_0116: TMenuItem;
    mIndEnv_0117: TMenuItem;
    RelaodeProdues1: TMenuItem;
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
    rcli_0122: TMenuItem;
    N71: TMenuItem;
    rcli_0127: TMenuItem;
    N100: TMenuItem;
    rcli_0130: TMenuItem;
    ExportarEmailCSV1: TMenuItem;
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
    rpro_0116: TMenuItem;
    rpro_0118: TMenuItem;
    rpro_0124: TMenuItem;
    rpro_0127: TMenuItem;
    SNGPC: TMenuItem;
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
    rpro_0187: TMenuItem;
    rpro_0178: TMenuItem;
    rpro_0160: TMenuItem;
    rpro_0161: TMenuItem;
    N104: TMenuItem;
    rpro_0162: TMenuItem;
    rpro_0163: TMenuItem;
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
    rger_0261: TMenuItem;
    rger_0262: TMenuItem;
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
    N102: TMenuItem;
    rven_0156: TMenuItem;
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
    rven_0152: TMenuItem;
    rven_0154: TMenuItem;
    ransportadoras1: TMenuItem;
    rtra_0103: TMenuItem;
    rtra_0104: TMenuItem;
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
    rel_0103: TMenuItem;
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
    sai_0128: TMenuItem;
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
    N88: TMenuItem;
    Mensagem1: TMenuItem;
    sis_0903: TMenuItem;
    sis_0906: TMenuItem;
    sis_0909: TMenuItem;
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
    SAC1: TMenuItem;
    mos_0106: TMenuItem;
    N48: TMenuItem;
    contratos: TMenuItem;
    mos_0109: TMenuItem;
    mos_0115: TMenuItem;
    N76: TMenuItem;
    mos_0118: TMenuItem;
    N61: TMenuItem;
    mos_0112: TMenuItem;
    N59: TMenuItem;
    mos_0121: TMenuItem;
    ParametrosConfiguraes1: TMenuItem;
    saiconf_0103: TMenuItem;
    saiconf_0106: TMenuItem;
    saiconf_0109: TMenuItem;
    saiconf_0112: TMenuItem;
    saiconf_0115: TMenuItem;
    saiconf_0118: TMenuItem;
    saiconf_0119: TMenuItem;
    sai_0152: TMenuItem;
    ManipularItensdoPedido1: TMenuItem;
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
    lf_0157_menu: TMenuItem;
    GerarArquivos1: TMenuItem;
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
    N101: TMenuItem;
    sis_0248: TMenuItem;
    N103: TMenuItem;
    sis_0251: TMenuItem;
    sis_0254: TMenuItem;
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
    m_ConexaoRemota: TMenuItem;
    Backups1: TMenuItem;
    sis0615: TMenuItem;
    sis0618: TMenuItem;
    sis0621: TMenuItem;
    sis0639: TMenuItem;
    sis0624: TMenuItem;
    sis0627: TMenuItem;
    sis0630: TMenuItem;
    sis0633: TMenuItem;
    sis0645: TMenuItem;
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
    rpro_0117: TMenuItem;
    rped_0120: TMenuItem;
    rger_0265: TMenuItem;
    mpro_0195: TMenuItem;
    sis_0643: TMenuItem;
    mpro_0186: TMenuItem;
    rsai_0112: TMenuItem;
    rped_0121: TMenuItem;
    rsai_0115: TMenuItem;
    lf_0157: TMenuItem;
    lf_0160: TMenuItem;
    rpro_0130: TMenuItem;
    rpro_0131: TMenuItem;
    rpro_0132: TMenuItem;
    rpro_0129: TMenuItem;
    mcai_0140: TMenuItem;
    mcai_0143: TMenuItem;
    sai_0122: TMenuItem;
    sai_0203: TMenuItem;
    sai_0204: TMenuItem;
    lf_0163: TMenuItem;
    lf_0166: TMenuItem;
    sis0648: TMenuItem;
    procedure BBCargoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mpro_0103Click(Sender: TObject);
    procedure ExportarProdClick(Sender: TObject);
    procedure mpro_0109Click(Sender: TObject);
    procedure mpro_0203Click(Sender: TObject);
    procedure mpro_0112Click(Sender: TObject);
    procedure mpro_0115Click(Sender: TObject);
    procedure mpro_0118Click(Sender: TObject);
    procedure mpro_0121Click(Sender: TObject);
    procedure mpro_0124Click(Sender: TObject);
    procedure mloc_0103Click(Sender: TObject);
    procedure musu_0103Click(Sender: TObject);
    procedure musu_0106Click(Sender: TObject);
    procedure musu_0109Click(Sender: TObject);
    procedure musu_0112Click(Sender: TObject);
    procedure mfor_0103Click(Sender: TObject);
    procedure mcli_0103Click(Sender: TObject);
    procedure mcli_0106Click(Sender: TObject);
    procedure mcli_0109Click(Sender: TObject);
    procedure mcli_0112Click(Sender: TObject);
    procedure mcli_0115Click(Sender: TObject);
    procedure mven_0103Click(Sender: TObject);
    procedure mtra_0103Click(Sender: TObject);
    procedure mcai_0103Click(Sender: TObject);
    procedure mcai_0106Click(Sender: TObject);
    procedure mcai_0107Click(Sender: TObject);
    procedure mcai_0109Click(Sender: TObject);
    procedure mcai_0112Click(Sender: TObject);
    procedure rpro_0103Click(Sender: TObject);
    procedure rpro_0106Click(Sender: TObject);
    procedure rpro_0109Click(Sender: TObject);
    procedure rfor_0103Click(Sender: TObject);
    procedure rest_0103Click(Sender: TObject);
    procedure rcli_0103Click(Sender: TObject);
    procedure rcli_0106Click(Sender: TObject);
    procedure rcli_0109Click(Sender: TObject);
    procedure rtpro_0103Click(Sender: TObject);
    procedure rgpro_0103Click(Sender: TObject);
    procedure rger_0103Click(Sender: TObject);
    procedure rger_0106Click(Sender: TObject);
    procedure rger_0109Click(Sender: TObject);
    procedure rger_0112Click(Sender: TObject);
    procedure rger_0115Click(Sender: TObject);
    procedure rger_0209Click(Sender: TObject);
    procedure rent_0103Click(Sender: TObject);
    procedure rsai_0103Click(Sender: TObject);
    procedure cfo_0103Click(Sender: TObject);
    procedure lf_0103Click(Sender: TObject);
    procedure lf_0106Click(Sender: TObject);
    procedure lf_0109Click(Sender: TObject);
    procedure lf_0112Click(Sender: TObject);
    procedure lf_0115Click(Sender: TObject);
    procedure lf_0118Click(Sender: TObject);
    procedure sai_0103Click(Sender: TObject);
    procedure sai_0109Click(Sender: TObject);
    procedure sai_0112Click(Sender: TObject);
    procedure sai_0115Click(Sender: TObject);
    procedure cp_0103Click(Sender: TObject);
    procedure cp_0203Click(Sender: TObject);
    procedure cp_0206Click(Sender: TObject);
    procedure cp_0209Click(Sender: TObject);
    procedure cp_0303Click(Sender: TObject);
    procedure cp_0306Click(Sender: TObject);
    procedure cr_0103Click(Sender: TObject);
    procedure cr_0203Click(Sender: TObject);
    procedure sis_0103Click(Sender: TObject);
    procedure sis_0106Click(Sender: TObject);
    procedure sis_0109Click(Sender: TObject);
    procedure sis_0203Click(Sender: TObject);
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
    procedure sis_0239Click(Sender: TObject);
    procedure sis_0115Click(Sender: TObject);
    procedure sis_0118Click(Sender: TObject);
    procedure sis_0121Click(Sender: TObject);
    procedure sis_0303Click(Sender: TObject);
    procedure sis_0124Click(Sender: TObject);
    procedure sis_0127Click(Sender: TObject);
    procedure sis_0130Click(Sender: TObject);
    procedure sis_0601Click(Sender: TObject);
    procedure mind_0103Click(Sender: TObject);
    procedure sis_0606Click(Sender: TObject);
    procedure cr_0303Click(Sender: TObject);
    procedure cr_0306Click(Sender: TObject);
    procedure cr_0309Click(Sender: TObject);
    procedure cp_0109Click(Sender: TObject);
    procedure mfor_0106Click(Sender: TObject);
    procedure cr_0206Click(Sender: TObject);
    procedure cr_0903Click(Sender: TObject);
    procedure cr_0906Click(Sender: TObject);
    procedure cr_0909Click(Sender: TObject);
    procedure sis_0133Click(Sender: TObject);
    procedure cr_0209Click(Sender: TObject);
    procedure sis_0609Click(Sender: TObject);
    procedure rger_0200Click(Sender: TObject);
    procedure rger_0212Click(Sender: TObject);
    procedure rger_0215Click(Sender: TObject);
    procedure rger_0218Click(Sender: TObject);
    procedure rger_0221Click(Sender: TObject);
    procedure mdiv_0103Click(Sender: TObject);
    procedure mdiv_0106Click(Sender: TObject);
    procedure mpro_0130Click(Sender: TObject);
    procedure mven_0106Click(Sender: TObject);
    procedure mpro_0133Click(Sender: TObject);
    procedure mpro_0142Click(Sender: TObject);
    procedure rcr_0106Click(Sender: TObject);
    procedure rcr_0109Click(Sender: TObject);
    procedure rcr_0112Click(Sender: TObject);
    procedure rven_0103Click(Sender: TObject);
    procedure rven_0115Click(Sender: TObject);
    procedure rven_0118Click(Sender: TObject);
    procedure rven_0121Click(Sender: TObject);
    procedure rven_0124Click(Sender: TObject);
    procedure rven_0106Click(Sender: TObject);
    procedure rven_0109Click(Sender: TObject);
    procedure rven_0112Click(Sender: TObject);
    procedure rpro_0112Click(Sender: TObject);
    procedure rpro_0115Click(Sender: TObject);
    procedure rven_0127Click(Sender: TObject);
    procedure rcli_0112Click(Sender: TObject);
    procedure cp_0212Click(Sender: TObject);
    procedure cr_0312Click(Sender: TObject);
    procedure cr_0215Click(Sender: TObject);
    procedure cr_0912Click(Sender: TObject);
    procedure mloc_0106Click(Sender: TObject);
    procedure mloc_0109Click(Sender: TObject);
    procedure est_0115Click(Sender: TObject);
    procedure rger_0224Click(Sender: TObject);
    procedure mcli_0118Click(Sender: TObject);
    procedure mcli_0121Click(Sender: TObject);
    procedure sis_0612Click(Sender: TObject);
    procedure sis0615Click(Sender: TObject);
    procedure sis0618Click(Sender: TObject);
    procedure sis0621Click(Sender: TObject);
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
    procedure mfol_0103Click(Sender: TObject);
    procedure mfol_0106Click(Sender: TObject);
    procedure mfol_0109Click(Sender: TObject);
    procedure mfol_0115Click(Sender: TObject);
    procedure mfol_0118Click(Sender: TObject);
    procedure mfol_0121Click(Sender: TObject);
    procedure mfol_0124Click(Sender: TObject);
    procedure mfol_0127Click(Sender: TObject);
    procedure sis0630Click(Sender: TObject);
    procedure sis0633Click(Sender: TObject);
    procedure rpro_0121Click(Sender: TObject);
    procedure sai_0121Click(Sender: TObject);
    procedure mind_0106Click(Sender: TObject);
    procedure mind_0109Click(Sender: TObject);
    procedure mind_0112Click(Sender: TObject);
    procedure cr_0915Click(Sender: TObject);
    procedure sis0636Click(Sender: TObject);
    procedure mcai_0115Click(Sender: TObject);
    procedure mpro_0148Click(Sender: TObject);
    procedure rpro_0127Click(Sender: TObject);
    procedure rpro_0130Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rpro_0133Click(Sender: TObject);
    procedure sai_0127Click(Sender: TObject);
    procedure sis_0633Click(Sender: TObject);
    procedure sis_0636Click(Sender: TObject);
    procedure sis_0639Click(Sender: TObject);
    procedure sis_0642Click(Sender: TObject);
    procedure rfor_0106Click(Sender: TObject);
    procedure rfor_0109Click(Sender: TObject);
    procedure rfor_0112Click(Sender: TObject);
    procedure rfor_0115Click(Sender: TObject);
    procedure rger_0230Click(Sender: TObject);
    procedure rest_0106Click(Sender: TObject);
    procedure rest_0109Click(Sender: TObject);
    procedure rest_0112Click(Sender: TObject);
    procedure rest_0115Click(Sender: TObject);
    procedure rcli_0115Click(Sender: TObject);
    procedure rtpro_0106Click(Sender: TObject);
    procedure rtpro_0109Click(Sender: TObject);
    procedure rtpro_0112Click(Sender: TObject);
    procedure rtpro_0115Click(Sender: TObject);
    procedure rgpro_0106Click(Sender: TObject);
    procedure rgpro_0109Click(Sender: TObject);
    procedure rgpro_0112Click(Sender: TObject);
    procedure rgpro_0115Click(Sender: TObject);
    procedure rrpro_0103Click(Sender: TObject);
    procedure est_0103Click(Sender: TObject);
    procedure est_0106Click(Sender: TObject);
    procedure est_0112Click(Sender: TObject);
    procedure est_0118Click(Sender: TObject);
    procedure est_0121Click(Sender: TObject);
    procedure est_0109Click(Sender: TObject);
    procedure est_0124Click(Sender: TObject);
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
    procedure rcli_0118Click(Sender: TObject);
    procedure mcai_0118Click(Sender: TObject);
    procedure lf_0124Click(Sender: TObject);
    procedure mpro_0151Click(Sender: TObject);
    procedure mcai_0121Click(Sender: TObject);
    procedure rger_0233Click(Sender: TObject);
    procedure rger_0236Click(Sender: TObject);
    procedure sis_0645Click(Sender: TObject);
    procedure sis_0648Click(Sender: TObject);
    procedure rger_0239Click(Sender: TObject);
    procedure rger_0242Click(Sender: TObject);
    procedure cr_0918Click(Sender: TObject);
    procedure rger_0245Click(Sender: TObject);
    procedure mcai_0124Click(Sender: TObject);
    procedure sis_0615Click(Sender: TObject);
    procedure sis_0651Click(Sender: TObject);
    procedure rsai_0106Click(Sender: TObject);
    procedure rpro_0136Click(Sender: TObject);
    procedure rpro_0139Click(Sender: TObject);
    procedure rpro_0142Click(Sender: TObject);
    procedure rpro_0145Click(Sender: TObject);
    procedure rpro_0148Click(Sender: TObject);
    procedure mcli_0130Click(Sender: TObject);
    procedure rpro_0151Click(Sender: TObject);
    procedure sai_0133Click(Sender: TObject);
    procedure rpro_0154Click(Sender: TObject);
    procedure mpro_0206Click(Sender: TObject);
    procedure sis_0112Click(Sender: TObject);
    procedure sis_0114Click(Sender: TObject);
    procedure sis_0654Click(Sender: TObject);
    procedure rcli_0303Click(Sender: TObject);
    procedure rcli_0306Click(Sender: TObject);
    procedure sai_0136Click(Sender: TObject);
    procedure sai_0139Click(Sender: TObject);
    procedure sis_0657Click(Sender: TObject);
    procedure cr_0315Click(Sender: TObject);
    procedure sis_0117Click(Sender: TObject);
    procedure mind_0115Click(Sender: TObject);
    procedure sis_0660Click(Sender: TObject);
    procedure lf_0127Click(Sender: TObject);
    procedure lf_0130Click(Sender: TObject);
    procedure sai_0142Click(Sender: TObject);
    procedure rpro_0157Click(Sender: TObject);
    procedure sis_0663Click(Sender: TObject);
    procedure sis_0666Click(Sender: TObject);
    procedure mfol_0133Click(Sender: TObject);
    procedure sis_0669Click(Sender: TObject);
    procedure sis_0120Click(Sender: TObject);
    procedure sis_0123Click(Sender: TObject);
    procedure mpro_0154Click(Sender: TObject);
    procedure mpro_0155Click(Sender: TObject);
    procedure mpro_0127Click(Sender: TObject);
    procedure mpro_0128Click(Sender: TObject);
    procedure mpro_0129Click(Sender: TObject);
    procedure mcai_0127Click(Sender: TObject);
    procedure gnre0103Click(Sender: TObject);
    procedure lf_0133Click(Sender: TObject);
    procedure rcpro_0103Click(Sender: TObject);
    procedure rcpro_0106Click(Sender: TObject);
    procedure rcpro_0109Click(Sender: TObject);
    procedure rcpro_0112Click(Sender: TObject);
    procedure rcpro_0115Click(Sender: TObject);
    procedure mos_0103Click(Sender: TObject);
    procedure mos_0106Click(Sender: TObject);
    procedure sai_0124Click(Sender: TObject);
    procedure mimo_0103Click(Sender: TObject);
    procedure mmoe_0103Click(Sender: TObject);
    procedure mmoe_0106Click(Sender: TObject);
    procedure mvei_0103Click(Sender: TObject);
    procedure mimo_0106Click(Sender: TObject);
    procedure mvei_0106Click(Sender: TObject);
    procedure mImo_0109Click(Sender: TObject);
    procedure mvei_0109Click(Sender: TObject);
    procedure rimo_0103Click(Sender: TObject);
    procedure rvei_0103Click(Sender: TObject);
    procedure rmoe_0103Click(Sender: TObject);
    procedure ros_0103Click(Sender: TObject);
    procedure rimo_0106Click(Sender: TObject);
    procedure rvei_0106Click(Sender: TObject);
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
    procedure mpro_0166Click(Sender: TObject);
    procedure msis_0703Click(Sender: TObject);
    procedure msis_0706Click(Sender: TObject);
    procedure msis_0709Click(Sender: TObject);
    procedure msis_0712Click(Sender: TObject);
    procedure msis_0715Click(Sender: TObject);
    procedure lf_0142Click(Sender: TObject);
    procedure lf_0121Click(Sender: TObject);
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
    procedure rven_0133Click(Sender: TObject);
    procedure rven_0130Click(Sender: TObject);
    procedure sai_0145Click(Sender: TObject);
    procedure cr_0318Click(Sender: TObject);
    procedure sis_0690Click(Sender: TObject);
    procedure lf_0145Click(Sender: TObject);
    procedure mos_0112Click(Sender: TObject);
    procedure rger_0257Click(Sender: TObject);
    procedure mpro_0172Click(Sender: TObject);
    procedure sai_0148Click(Sender: TObject);
    procedure mind_0127Click(Sender: TObject);
    procedure mind_0130Click(Sender: TObject);
    procedure mind_0133Click(Sender: TObject);
    procedure rind_0103Click(Sender: TObject);
    procedure sis_0129Click(Sender: TObject);
    procedure mpro_0175Click(Sender: TObject);
    procedure sai_0160Click(Sender: TObject);
    procedure mdiv_0112Click(Sender: TObject);
    procedure mind_0136Click(Sender: TObject);
    procedure cr_0224Click(Sender: TObject);
    procedure rcli_0121Click(Sender: TObject);
    procedure rcr_0121Click(Sender: TObject);
    procedure sis_0132Click(Sender: TObject);
    procedure rped_0103Click(Sender: TObject);
    procedure sis_0135Click(Sender: TObject);
    procedure sis_0693Click(Sender: TObject);
    procedure mpro_0178Click(Sender: TObject);
    procedure sis_0696Click(Sender: TObject);
    procedure rcr_0124Click(Sender: TObject);
    procedure rcr_0127Click(Sender: TObject);
    procedure sis_0138Click(Sender: TObject);
    procedure sis_0141Click(Sender: TObject);
    procedure mos_0109Click(Sender: TObject);
    procedure mos_0115Click(Sender: TObject);
    procedure mfol_0130Click(Sender: TObject);
    procedure cp_0112Click(Sender: TObject);
    procedure rcli_0127Click(Sender: TObject);
    procedure rped_0109Click(Sender: TObject);
    procedure mos_0118Click(Sender: TObject);
    procedure mcai_0130Click(Sender: TObject);
    procedure cp_0115Click(Sender: TObject);
    procedure rpro_0166Click(Sender: TObject);
    procedure rpro_0169Click(Sender: TObject);
    procedure rger_0260Click(Sender: TObject);
    procedure cr_0230Click(Sender: TObject);
    procedure cr_0212Click(Sender: TObject);
    procedure cp_0309Click(Sender: TObject);
    procedure sis_0245Click(Sender: TObject);
    procedure sai_0163Click(Sender: TObject);
    procedure sai_0166Click(Sender: TObject);
    procedure mdiv_0115Click(Sender: TObject);
    procedure sai_0169Click(Sender: TObject);
    procedure cr_0233Click(Sender: TObject);
    procedure cp_0312Click(Sender: TObject);
    procedure sai_0172Click(Sender: TObject);
    procedure sai_0175Click(Sender: TObject);
    procedure sai_0178Click(Sender: TObject);
    procedure rpro_0178Click(Sender: TObject);
    procedure rped_0112Click(Sender: TObject);
    procedure rped_0115Click(Sender: TObject);
    procedure rven_0136Click(Sender: TObject);
    procedure mcli_0136Click(Sender: TObject);
    procedure rped_0118Click(Sender: TObject);
    procedure rped_0119Click(Sender: TObject);    
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
    procedure sis_0147Click(Sender: TObject);
    procedure rger_0266Click(Sender: TObject);
    procedure sai_0154Click(Sender: TObject);
    procedure rven_0148Click(Sender: TObject);
    procedure sai_0184Click(Sender: TObject);
    procedure mpro_0181Click(Sender: TObject);
    procedure sai_0187Click(Sender: TObject);
    procedure sai_0190Click(Sender: TObject);
    procedure mven_0115Click(Sender: TObject);
    procedure mdiv_0118Click(Sender: TObject);
    procedure mpro_0184Click(Sender: TObject);
    procedure mind_0139Click(Sender: TObject);
    procedure mpro_0187Click(Sender: TObject);
    procedure rest_0118Click(Sender: TObject);
    procedure mven_0118Click(Sender: TObject);
    procedure mven_0121Click(Sender: TObject);
    procedure cr_0924Click(Sender: TObject);
    procedure lf_0154Click(Sender: TObject);
    procedure sai_0157Click(Sender: TObject);
    procedure sai_0193Click(Sender: TObject);
    procedure rpro_0184Click(Sender: TObject);
    procedure sai_0196Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cp_0121Click(Sender: TObject);
    procedure cp_0124Click(Sender: TObject);
    procedure cp_0127Click(Sender: TObject);
    procedure mcli_0139Click(Sender: TObject);
    procedure rpro_0187Click(Sender: TObject);
    procedure mpro_0209Click(Sender: TObject);
    procedure mind_0124Click(Sender: TObject);
    procedure rtra_0103Click(Sender: TObject);
    procedure rusu_0103Click(Sender: TObject);
    procedure rfun_0103Click(Sender: TObject);
    procedure rpv_0103Click(Sender: TObject);
    procedure rbco_0103Click(Sender: TObject);
    procedure rccu_0103Click(Sender: TObject);
    procedure rdep_0103Click(Sender: TObject);
    procedure rcai_0103Click(Sender: TObject);
    procedure rpfor_0101Click(Sender: TObject);
    procedure rpfor_0103Click(Sender: TObject);
    procedure rrpro_0106Click(Sender: TObject);
    procedure rrpro_0109Click(Sender: TObject);
    procedure rrpro_0112Click(Sender: TObject);
    procedure rrpro_0115Click(Sender: TObject);
    procedure sai_0106Click(Sender: TObject);
    procedure rped_0301Click(Sender: TObject);
    procedure sai_0199Click(Sender: TObject);
    procedure cr_0239Click(Sender: TObject);
    procedure mloc_0112Click(Sender: TObject);
    procedure mloc_0115Click(Sender: TObject);
    procedure cr_0927Click(Sender: TObject);
    procedure sis2103Click(Sender: TObject);
    procedure mIndEnv_0103Click(Sender: TObject);
    procedure mIndEnv_0106Click(Sender: TObject);
    procedure rven_0151Click(Sender: TObject);
    procedure mIndEnv_0109Click(Sender: TObject);
    procedure mIndEnv_0115Click(Sender: TObject);
    procedure rind_0106Click(Sender: TObject);
    procedure mdiv_0121Click(Sender: TObject);
    procedure mdiv_0124Click(Sender: TObject);
    procedure rfor_0121Click(Sender: TObject);
    procedure cr_0928Click(Sender: TObject);
    procedure cr_0929Click(Sender: TObject);
    procedure cr_0930Click(Sender: TObject);
    procedure cp_0130Click(Sender: TObject);
    procedure mfol_0125Click(Sender: TObject);
    procedure mcai_0133Click(Sender: TObject);
    procedure rest_0121Click(Sender: TObject);
    procedure rfun_0001Click(Sender: TObject);
    procedure mpro_0190Click(Sender: TObject);
    procedure mpro_0193Click(Sender: TObject);
    procedure saiconf_0103Click(Sender: TObject);
    procedure saiconf_0106Click(Sender: TObject);
    procedure saiconf_0109Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure mven_118Click(Sender: TObject);
    procedure saiconf_0115Click(Sender: TObject);
    procedure saiconf_0112Click(Sender: TObject);
    procedure rven_0153Click(Sender: TObject);
    procedure saiconf_0118Click(Sender: TObject);
    procedure sai_0118Click(Sender: TObject);
    procedure cp_0215Click(Sender: TObject);
    procedure rfor_0124Click(Sender: TObject);
    procedure mpro_0301Click(Sender: TObject);
    procedure cr_0242Click(Sender: TObject);
    procedure sai_0202Click(Sender: TObject);
    procedure mloc_0108Click(Sender: TObject);
    procedure mpro_0185Click(Sender: TObject);
    procedure rcli_0128Click(Sender: TObject);
    procedure mpro_0207Click(Sender: TObject);
    procedure rel_0103Click(Sender: TObject);
    procedure mos_0121Click(Sender: TObject);
    procedure rtra_0104Click(Sender: TObject);
    procedure mIndEnv_0116Click(Sender: TObject);
    procedure mIndEnv_0117Click(Sender: TObject);
    procedure mfor_0111Click(Sender: TObject);
    procedure mcli_0125Click(Sender: TObject);
    procedure sis_0903Click(Sender: TObject);
    procedure sis_0906Click(Sender: TObject);
    procedure sis_0909Click(Sender: TObject);
    procedure rcli_0130Click(Sender: TObject);
    procedure sis_0248Click(Sender: TObject);
    procedure rven_0156Click(Sender: TObject);
    procedure rped_0101Click(Sender: TObject);
    procedure ExportarEmailCSV1Click(Sender: TObject);
    procedure UltimasVendas1Click(Sender: TObject);
    procedure mpro_0194Click(Sender: TObject);
    procedure ConsultasdeRE1Click(Sender: TObject);
    procedure mcai_0136Click(Sender: TObject);
    procedure mcai_0137Click(Sender: TObject);
    procedure mind_0122Click(Sender: TObject);
    procedure mind_0123Click(Sender: TObject);
    procedure rcli_0122Click(Sender: TObject);
    procedure rpro_0116Click(Sender: TObject);
    procedure rpro_0161Click(Sender: TObject);
    procedure rpro_0162Click(Sender: TObject);
    procedure rpro_0163Click(Sender: TObject);
    procedure rger_0261Click(Sender: TObject);
    procedure rger_0262Click(Sender: TObject);
    procedure rven_0152Click(Sender: TObject);
    procedure rven_0154Click(Sender: TObject);
    procedure sai_0128Click(Sender: TObject);
    procedure saiconf_0119Click(Sender: TObject);
    procedure sai_0152Click(Sender: TObject);
    procedure cr_0919Click(Sender: TObject);
    procedure sis_0251Click(Sender: TObject);
    procedure sis_0254Click(Sender: TObject);
    procedure rpro_0117Click(Sender: TObject);
    procedure rped_0120Click(Sender: TObject);
    procedure rger_0265Click(Sender: TObject);
    procedure mpro_0195Click(Sender: TObject);
    procedure mpro_0186Click(Sender: TObject);
    procedure rsai_0112Click(Sender: TObject);
    procedure sis_0643Click(Sender: TObject);
    procedure rped_0121Click(Sender: TObject);
    procedure rsai_0115Click(Sender: TObject);
    procedure lf_0157Click(Sender: TObject);
    procedure lf_0160Click(Sender: TObject);
    procedure rpro_0131Click(Sender: TObject);
    procedure rpro_0129Click(Sender: TObject);
    procedure mcai_0140Click(Sender: TObject);
    procedure mcai_0143Click(Sender: TObject);
    procedure sai_0122Click(Sender: TObject);
    procedure sai_0203Click(Sender: TObject);
    procedure sai_0204Click(Sender: TObject);
    procedure lf_0163Click(Sender: TObject);
    procedure lf_0166Click(Sender: TObject);
    procedure sis0648Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
function face01la(pnome: String) : Boolean;
function face01ba(pnome: String) : Boolean;

var
  Frm_Ace: TFrm_Ace;
  cargo: Integer=0;
  AceitaPegunta : Boolean = True;
implementation

uses S_DM4, func_excecoes;

{$R *.DFM}

procedure TFrm_Ace.BBCargoClick(Sender: TObject);
var
a: Integer;
begin
if Frm_Funcao=nil then
   Application.CreateForm(TFrm_Funcao, Frm_Funcao)
else
   begin
   Frm_Funcao.free;
   Frm_Funcao:=nil;
   Application.CreateForm(TFrm_Funcao, Frm_Funcao)
   end;

funcao_ori:='Frm_Ace';
//Frm_Funcao.PC1.ActivePage:=Frm_Funcao.tsTab;

Frm_Funcao.ShowModal;
Frm_Funcao.Free;
Frm_Funcao:=nil;
If not DM1.Tb_Funcao.Active then
   Exit;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;
Screen.Cursor:=crHourGlass;
Cargo:=DM1.Tb_FuncaoCODCAR.AsInteger;
StatusBar1.Panels[0].Text:=FormatFloat('0000-0',Cargo);
StatusBar1.Panels[1].Text:=DM1.Tb_FuncaoNOMCAR.Value;
DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('select * from CADACE where ');
if DM1.Qr_TID.locate('TINOME','CADACE',[]) then
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntToStr(cargo)+' order by CODCAR')
else
   DM4.Tb_Ace.SQL.add(' CODEMP='+IntToStr(codemp)
                  +' and CODCAR=0'+IntToStr(Cargo)+' order by CODEMP,CODCAR');

DM4.Tb_Ace.Open;
mmoe_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0103.Name,[]);
mmoe_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0106.Name,[]);
mvei_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0103.Name,[]);
mvei_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0106.Name,[]);
mvei_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0109.Name,[]);
mimo_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0103.Name,[]);
mimo_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0106.Name,[]);
mimo_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0109.Name,[]);


mpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0103.Name,[]);
mpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0106.Name,[]);
mpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0109.Name,[]);
mpro_0203.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0203.Name,[]);
mpro_0207.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0207.Name,[]);
mpro_0206.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0206.Name,[]);
mpro_0209.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0209.Name,[]);
mpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0112.Name,[]);
mpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0115.Name,[]);
mpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0118.Name,[]);
mpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0121.Name,[]);
mpro_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0124.Name,[]);
mpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0127.Name,[]);
mpro_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0128.Name,[]);
mpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0129.Name,[]);
mpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0130.Name,[]);
mpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0133.Name,[]);
mpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0142.Name,[]);
mpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0145.Name,[]);
mpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0148.Name,[]);
mpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0151.Name,[]);
mpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0154.Name,[]);
mpro_0155.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0155.Name,[]);
mpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0157.Name,[]);
mpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0160.Name,[]);

UltimasVendas1.Checked  :=DM4.Tb_Ace.Locate('MENU',UltimasVendas1.Name,[]);
mpro_0194.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0194.Name,[]);
mpro_0195.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0195.Name,[]);
ConsultasdeRE1.Checked  :=DM4.Tb_Ace.Locate('MENU',ConsultasdeRE1.Name,[]);

mpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0163.Name,[]);
mpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0166.Name,[]);
mpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0169.Name,[]);
mpro_0172.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0172.Name,[]);
mpro_0175.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0175.Name,[]);
mpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0178.Name,[]);
mpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0181.Name,[]);
mpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0184.Name,[]);
mpro_0185.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0185.Name,[]);
mpro_0186.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0186.Name,[]);
mpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0187.Name,[]);
mpro_0301.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0301.Name,[]);
mpro_0190.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0190.Name,[]);
mpro_0193.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0193.Name,[]);
rpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0160.Name,[]);
rpro_0161.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0161.Name,[]);
rpro_0162.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0162.Name,[]);
rpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0163.Name,[]);
mloc_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0103.Name,[]);
rpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0166.Name,[]);
rpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0169.Name,[]);
rpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0178.Name,[]);
rpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0181.Name,[]);
rpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0184.Name,[]);
rpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0187.Name,[]);
mloc_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0106.Name,[]);
mloc_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0107.Name,[]);
mloc_0108.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0108.Name,[]);
mloc_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0109.Name,[]);
mloc_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0112.Name,[]);
mloc_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0115.Name,[]);
mIndEnv_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0103.Name,[]);
mIndEnv_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0106.Name,[]);
mIndEnv_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0109.Name,[]);
mIndEnv_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0115.Name,[]);
mIndEnv_0116.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0116.Name,[]);
mIndEnv_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',mIndEnv_0117.Name,[]);
musu_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0103.Name,[]);
musu_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0106.Name,[]);
musu_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0109.Name,[]);
musu_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0112.Name,[]);
mfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0103.Name,[]);
mfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0106.Name,[]);
mfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0109.Name,[]);
mfor_0110.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0110.Name,[]);
mfor_0111.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0111.Name,[]);
mcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0103.Name,[]);
mcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0106.Name,[]);
mcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0109.Name,[]);
mcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0112.Name,[]);
mcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0115.Name,[]);
mcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0118.Name,[]);
mcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0121.Name,[]);
mcli_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0124.Name,[]);
rcli_0122.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0122.Name,[]);
mcli_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0125.Name,[]);
mcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0130.Name,[]);
mcli_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0133.Name,[]);
mcli_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0136.Name,[]);
mcli_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0139.Name,[]);
mven_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0103.Name,[]);
mven_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0106.Name,[]);
mven_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0109.Name,[]);
mven_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0112.Name,[]);
mven_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0115.Name,[]);
mven_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0118.Name,[]);
mven_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0121.Name,[]);
mtra_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mtra_0103.Name,[]);
mcai_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0103.Name,[]);
mcai_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0106.Name,[]);
mcai_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0107.Name,[]);
mcai_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0109.Name,[]);
mcai_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0112.Name,[]);
mcai_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0115.Name,[]);
mcai_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0118.Name,[]);
mcai_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0121.Name,[]);
mcai_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0124.Name,[]);
mcai_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0127.Name,[]);
mcai_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0130.Name,[]);
mcai_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0133.Name,[]);
mcai_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0136.Name,[]);
mcai_0137.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0137.Name,[]);
mcai_0140.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0140.Name,[]);
mcai_0143.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0143.Name,[]);
mind_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0103.Name,[]);
mind_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0106.Name,[]);
mind_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0109.Name,[]);
mind_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0112.Name,[]);
mind_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0115.Name,[]);
mind_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0118.Name,[]);
mind_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0121.Name,[]);
mind_0122.Checked :=DM4.Tb_Ace.Locate('MENU',mind_0122.Name,[]);
mind_0123.Checked :=DM4.Tb_Ace.Locate('MENU',mind_0123.Name,[]);
mind_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0124.Name,[]);
mind_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0127.Name,[]);
mind_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0130.Name,[]);
mind_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0133.Name,[]);
mind_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0136.Name,[]);
mind_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0139.Name,[]);
mdiv_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0103.Name,[]);
mdiv_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0106.Name,[]);
mdiv_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0109.Name,[]);
mdiv_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0112.Name,[]);
mdiv_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0115.Name,[]);
mdiv_0118.checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0118.Name,[]);
mdiv_0121.checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0121.Name,[]);
mdiv_0124.checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0124.Name,[]);
mfol_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0103.Name,[]);
mfol_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0106.Name,[]);
mfol_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0109.Name,[]);
mfol_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0115.Name,[]);
mfol_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0118.Name,[]);
mfol_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0121.Name,[]);
mfol_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0124.Name,[]);
mfol_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0125.Name,[]);
mfol_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0127.Name,[]);
mfol_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0130.Name,[]);
mfol_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0133.Name,[]);

rpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0103.Name,[]);
rpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0106.Name,[]);
rpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0109.Name,[]);
rpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0112.Name,[]);
rpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0115.Name,[]);
rpro_0116.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0116.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0118.Name,[]);
rpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0121.Name,[]);
rpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0127.Name,[]);
rpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0129.Name,[]);
rpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0130.Name,[]);
rpro_0131.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0131.Name,[]);
rpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0133.Name,[]);
rpro_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0136.Name,[]);
rpro_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0139.Name,[]);
rpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0142.Name,[]);
rpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0145.Name,[]);
rpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0148.Name,[]);
rpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0151.Name,[]);
rpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0154.Name,[]);
rpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0157.Name,[]);
rfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0103.Name,[]);
rfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0106.Name,[]);
rfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0109.Name,[]);
rfor_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0112.Name,[]);
rfor_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0115.Name,[]);
rfor_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0118.Name,[]);
rfor_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0121.Name,[]);
rfor_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0124.Name,[]);
rest_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0103.Name,[]);
rest_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0106.Name,[]);
rest_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0109.Name,[]);
rest_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0112.Name,[]);
rest_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0115.Name,[]);
rest_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0118.Name,[]);
rest_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0121.Name,[]);

rcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0103.Name,[]);
rcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0106.Name,[]);
rel_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rel_0103.Name,[]);
rcli_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0128.Name,[]);
rcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0109.Name,[]);
rcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0112.Name,[]);
rcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0115.Name,[]);
rcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0118.Name,[]);
rcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0121.Name,[]);
rcli_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0127.Name,[]);
rcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0130.Name,[]);
rcli_0303.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0303.Name,[]);
rcli_0306.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0306.Name,[]);
ExportarEmailCSV1.Checked  :=DM4.Tb_Ace.Locate('MENU',ExportarEmailCSV1.Name,[]);
rtpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0103.Name,[]);
rtpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0106.Name,[]);
rtpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0109.Name,[]);
rtpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0112.Name,[]);
rtpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0115.Name,[]);


rgpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0103.Name,[]);
rgpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0106.Name,[]);
rgpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0109.Name,[]);
rgpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0112.Name,[]);
rgpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0115.Name,[]);

rger_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0103.Name,[]);
rger_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0106.Name,[]);
rger_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0109.Name,[]);
rger_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0112.Name,[]);
rger_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0115.Name,[]);
rger_0200.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0200.Name,[]);
rger_0212.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0212.Name,[]);
rger_0215.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0215.Name,[]);
rger_0218.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0218.Name,[]);
rger_0221.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0221.Name,[]);
rger_0230.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0230.Name,[]);
rger_0224.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0224.Name,[]);
rger_0227.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0227.Name,[]);
rger_0233.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0233.Name,[]);
rger_0236.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0236.Name,[]);
rger_0239.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0239.Name,[]);
rger_0242.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0242.Name,[]);
rger_0245.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0245.Name,[]);
rger_0248.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0248.Name,[]);
rger_0251.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0251.Name,[]);
rger_0254.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0254.Name,[]);
rger_0257.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0257.Name,[]);
rger_0260.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0260.Name,[]);
rger_0261.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0261.Name,[]);
rger_0262.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0262.Name,[]);
rger_0265.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0265.Name,[]);
rger_0263.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0263.Name,[]);
rger_0266.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0266.Name,[]);
rger_0209.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0209.Name,[]);
rcpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0103.Name,[]);
rcpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0106.Name,[]);
rcpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0109.Name,[]);
rcpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0112.Name,[]);
rcpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0115.Name,[]);



rrpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0103.Name,[]);
rrpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0106.Name,[]);
rrpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0109.Name,[]);
rrpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0112.Name,[]);
rrpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0115.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rimo_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0103.Name,[]);
rimo_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0106.Name,[]);
rvei_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0103.Name,[]);
rvei_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0106.Name,[]);
rmoe_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rmoe_0103.Name,[]);
ros_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',ros_0103.Name,[]);
rdiv_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdiv_0103.Name,[]);
rind_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rind_0103.Name,[]);
rfun_0001.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0001.Name,[]);
rind_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rind_0106.Name,[]);
rven_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0103.Name,[]);
rven_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0106.Name,[]);
rven_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0109.Name,[]);
rven_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0112.Name,[]);
rven_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0115.Name,[]);
rven_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0118.Name,[]);
rven_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0121.Name,[]);
rven_0124.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0124.Name,[]);
rven_0127.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0127.Name,[]);
rven_0130.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0130.Name,[]);
rven_0133.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0133.Name,[]);
rven_0136.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0136.Name,[]);
rven_0142.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0142.Name,[]);
rven_0145.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0145.Name,[]);
rven_0148.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0148.Name,[]);
rven_0151.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0151.Name,[]);
rven_0152.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0152.Name,[]);
rven_0153.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0153.Name,[]);
rven_0154.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0154.Name,[]);
rven_0156.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0156.Name,[]);
rped_0101.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0101.Name,[]);

rtra_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0103.Name,[]);
rtra_0104.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0104.Name,[]);
rusu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rusu_0103.Name,[]);
rfun_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0103.Name,[]);
rpv_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',rpv_0103.Name,[]);
rbco_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rbco_0103.Name,[]);
rccu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rccu_0103.Name,[]);
rdep_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdep_0103.Name,[]);
rcai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rcai_0103.Name,[]);
rpfor_0101.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0101.Name,[]);
rpfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0103.Name,[]);
rped_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0103.Name,[]);
rped_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0109.Name,[]);
rped_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0112.Name,[]);
rped_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0115.Name,[]);
rped_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0118.Name,[]);
rped_0119.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0119.Name,[]);
rped_0120.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0120.Name,[]);
rped_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0121.Name,[]);
rped_0301.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0301.Name,[]);
est_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0103.Name,[]);
est_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0106.Name,[]);
est_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0109.Name,[]);
est_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0112.Name,[]);
est_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0115.Name,[]);
est_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0118.Name,[]);
est_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0121.Name,[]);
est_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0124.Name,[]);
est_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0127.Name,[]);
est_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0130.Name,[]);
est_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0133.Name,[]);
est_0136.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0136.Name,[]);
est_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0139.Name,[]);
est_0142.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0142.Name,[]);
est_0145.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0145.Name,[]);
est_0148.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0148.Name,[]);
est_0151.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0151.Name,[]);
est_0154.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0154.Name,[]);
est_0157.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0157.Name,[]);
est_0160.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0160.Name,[]);
est_0163.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0163.Name,[]);
est_0166.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0166.Name,[]);

rent_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rent_0103.Name,[]);
rsai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0103.Name,[]);
rsai_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0106.Name,[]);
rsai_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0109.Name,[]);
rsai_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0112.Name,[]);
rsai_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0115.Name,[]);
cfo_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',cfo_0103.Name,[]);
gnre0103.Checked    :=DM4.Tb_Ace.Locate('MENU',gnre0103.Name,[]);
lf_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0103.Name,[]);
lf_0106.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0106.Name,[]);
lf_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0109.Name,[]);
lf_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0112.Name,[]);
lf_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0115.Name,[]);
lf_0118.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0118.Name,[]);
lf_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0121.Name,[]);
lf_0142.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0142.Name,[]);
lf_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0124.Name,[]);
lf_0127.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0127.Name,[]);
lf_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0130.Name,[]);
lf_0133.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0133.Name,[]);
lf_0136.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0136.Name,[]);
lf_0139.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0139.Name,[]);
lf_0145.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0145.Name,[]);
lf_0148.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0148.Name,[]);
lf_0151.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0151.Name,[]);
lf_0154.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0154.Name,[]);
lf_0157.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0157.Name,[]);
lf_0160.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0160.Name,[]);
lf_0163.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0163.Name,[]);
lf_0166.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0166.Name,[]);
sai_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0103.Name,[]);
sai_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0106.Name,[]);
sai_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0109.Name,[]);
sai_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0112.Name,[]);
sai_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0115.Name,[]);
sai_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0118.Name,[]);
sai_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0121.Name,[]);
sai_0122.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0122.Name,[]);
sai_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0124.Name,[]);
sai_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0127.Name,[]);
sai_0128.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0128.Name,[]);
sai_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0133.Name,[]);
sai_0136.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0136.Name,[]);
sai_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0139.Name,[]);
sai_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0103.Name,[]);
sai_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0106.Name,[]);
sai_0142.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0142.Name,[]);
sai_0145.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0145.Name,[]);
sai_0148.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0148.Name,[]);
sai_0151.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0151.Name,[]);
sai_0152.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0152.Name,[]);
sai_0154.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0154.Name,[]);
sai_0157.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0157.Name,[]);
sai_0160.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0160.Name,[]);
sai_0163.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0163.Name,[]);
sai_0166.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0166.Name,[]);
sai_0169.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0169.Name,[]);
sai_0172.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0172.Name,[]);
sai_0175.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0175.Name,[]);
sai_0178.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0178.Name,[]);
sai_0181.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0181.Name,[]);
sai_0184.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0184.Name,[]);
sai_0187.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0187.Name,[]);
sai_0190.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0190.Name,[]);
sai_0193.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0193.Name,[]);
sai_0196.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0196.Name,[]);
sai_0199.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0199.Name,[]);
sai_0202.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0202.Name,[]);
sai_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0203.Name,[]);
sai_0204.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0204.Name,[]);
saiconf_0103.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0103.Name,[]);
saiconf_0106.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0106.Name,[]);
saiconf_0109.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0109.Name,[]);
saiconf_0112.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0112.Name,[]);
saiconf_0115.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0115.Name,[]);
saiconf_0118.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0118.Name,[]);
saiconf_0119.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0119.Name,[]);

cp_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0103.Name,[]);
cp_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0109.Name,[]);
cp_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0112.Name,[]);
cp_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0115.Name,[]);
cp_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0121.Name,[]);
cp_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0124.Name,[]);
cp_0127.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0127.Name,[]);
cp_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0130.Name,[]);
cp_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0203.Name,[]);
cp_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0206.Name,[]);
cp_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0209.Name,[]);
cp_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0303.Name,[]);
cp_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0306.Name,[]);
cp_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0309.Name,[]);
cp_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0312.Name,[]);
cr_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0103.Name,[]);
rcr_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0106.Name,[]);
rcr_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0109.Name,[]);
rcr_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0112.Name,[]);
rcr_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0115.Name,[]);
rcr_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0118.Name,[]);
rcr_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0121.Name,[]);
rcr_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0124.Name,[]);
rcr_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0127.Name,[]);
rcr_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0130.Name,[]);
rcr_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0139.Name,[]);

cr_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0203.Name,[]);
cr_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0206.Name,[]);
cr_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0209.Name,[]);
cr_0212.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0212.Name,[]);
cr_0215.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0215.Name,[]);
cr_0218.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0218.Name,[]);
cr_0221.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0221.Name,[]);
cr_0224.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0224.Name,[]);
cr_0230.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0230.Name,[]);
cr_0233.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0233.Name,[]);
cr_0236.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0236.Name,[]);
cr_0239.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0239.Name,[]);
cr_0242.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0242.Name,[]);

rven_0148.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0148.Name,[]);
rven_0151.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0151.Name,[]);
rven_0152.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0152.Name,[]);
rven_0153.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0153.Name,[]);
rven_0154.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0154.Name,[]);
rven_0156.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0156.Name,[]);
rped_0101.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0101.Name,[]);

cr_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0303.Name,[]);
cr_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0306.Name,[]);
cr_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0309.Name,[]);
cr_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0312.Name,[]);
cr_0315.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0315.Name,[]);
cr_0318.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0318.Name,[]);
cp_0212.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0212.Name,[]);
cp_0215.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0215.Name,[]);
cr_0903.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0903.Name,[]);
cr_0906.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0906.Name,[]);
cr_0909.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0909.Name,[]);
cr_0912.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0912.Name,[]);
cr_0915.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0915.Name,[]);
cr_0918.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0918.Name,[]);
cr_0919.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0919.Name,[]);
cr_0921.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0921.Name,[]);
cr_0924.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0924.Name,[]);
cr_0927.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0927.Name,[]);
cr_0928.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0928.Name,[]);
cr_0929.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0929.Name,[]);
cr_0930.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0930.Name,[]);
sis_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0103.Name,[]);
sis_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0106.Name,[]);
sis_0643.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0643.Name,[]);
msis_0703.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0703.Name,[]);
msis_0706.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0706.Name,[]);
msis_0709.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0709.Name,[]);
msis_0712.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0712.Name,[]);
msis_0715.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0715.Name,[]);
msis_0718.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0718.Name,[]);
msis_0721.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0721.Name,[]);

sis_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0109.Name,[]);
sis_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0112.Name,[]);
sis_0114.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0114.Name,[]);
sis_0117.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0117.Name,[]);
sis_0120.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0120.Name,[]);
sis_0123.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0123.Name,[]);
sis_0126.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0126.Name,[]);
sis_0129.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0129.Name,[]);
sis_0132.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0132.Name,[]);
sis_0135.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0135.Name,[]);
sis_0138.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0138.Name,[]);
sis_0141.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0141.Name,[]);
sis_0144.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0144.Name,[]);
sis_0147.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0147.Name,[]);
sis_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0203.Name,[]);
sis_0206.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0206.Name,[]);
sis_0209.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0209.Name,[]);
sis_0212.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0212.Name,[]);
sis_0215.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0215.Name,[]);
sis_0218.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0218.Name,[]);
sis_0221.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0221.Name,[]);
sis_0224.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0224.Name,[]);
sis_0227.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0227.Name,[]);
sis_0230.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0230.Name,[]);
sis_0233.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0233.Name,[]);
sis_0236.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0236.Name,[]);
sis_0239.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0239.Name,[]);
sis_0242.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0242.Name,[]);
sis_0245.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0245.Name,[]);
sis_0248.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0248.Name,[]);
sis_0251.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0251.Name,[]);
sis_0254.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0254.Name,[]);
sis_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0115.Name,[]);
sis_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0118.Name,[]);
sis_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0121.Name,[]);
sis_0303.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0303.Name,[]);
sis_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0124.Name,[]);
sis_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0127.Name,[]);
sis_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0130.Name,[]);
sis_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0133.Name,[]);
sis_0601.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0601.Name,[]);
sis_0606.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0606.Name,[]);
sis_0609.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0609.Name,[]);
sis_0630.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0630.Name,[]);
sis_0633.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0633.Name,[]);
sis_0636.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0636.Name,[]);
sis_0639.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0639.Name,[]);
sis_0642.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0642.Name,[]);
sis_0645.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0645.Name,[]);
sis_0648.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0648.Name,[]);
sis_0651.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0651.Name,[]);
sis_0654.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0654.Name,[]);
sis_0657.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0657.Name,[]);
sis_0660.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0660.Name,[]);
sis_0663.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0663.Name,[]);
sis_0666.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0666.Name,[]);
sis_0669.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0669.Name,[]);
sis_0672.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0672.Name,[]);
sis_0675.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0675.Name,[]);
sis_0678.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0678.Name,[]);
sis_0681.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0681.Name,[]);
sis_0684.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0684.Name,[]);
sis_0687.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0687.Name,[]);
sis_0690.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0690.Name,[]);
sis_0693.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0693.Name,[]);
sis_0696.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0696.Name,[]);
sis_0612.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0612.Name,[]);
sis_0903.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0903.Name,[]);
sis_0906.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0906.Name,[]);
sis_0909.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0909.Name,[]);


sis_0615.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0615.Name,[]);
sis_0618.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0618.Name,[]);
sis_0621.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0621.Name,[]);
sis0615.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0615.Name,[]);
sis0618.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0618.Name,[]);
sis0621.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0621.Name,[]);
sis0624.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0624.Name,[]);
sis0627.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0627.Name,[]);
sis0630.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0630.Name,[]);
sis0633.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0633.Name,[]);
sis0636.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0636.Name,[]);
sis0639.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0639.Name,[]);
sis0642.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0642.Name,[]);
sis2103.Checked     :=DM4.Tb_Ace.Locate('MENU',sis2103.Name,[]);
sis0648.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0648.Name,[]);

Frm_Agde.Free;
Frm_Agde:=nil;
Screen.Cursor:=crDefault;

end;


procedure TFrm_Ace.FormActivate(Sender: TObject);
begin
if codusr=1111 then
   Frm_Ace.Especiais1.Visible:=True
else
   Frm_Ace.Especiais1.Visible:=False;


if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Frm_Ace.os.Visible:=False
else
   Frm_Ace.os.Visible:=True;


if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Ace.Industria1.Visible:=False;
   Frm_Ace.Industria2.Visible:=False;
   Frm_Ace.mpro_0154.Visible :=False;
   Frm_Ace.mpro_0155.Visible :=False;
   Frm_Ace.Industria_Envase.Visible :=False;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Ace.Industria1.Visible:=False;
   Frm_Ace.Industria2.Visible:=true;
   Frm_Ace.mpro_0154.Visible :=False;
   Frm_Ace.mpro_0155.Visible :=True;
   Frm_Ace.Industria_Envase.Visible :=true;
   end

else
   begin
   Frm_Ace.Industria1.Visible :=true;
   Frm_Ace.Industria2.Visible :=true;
   Frm_Ace.mpro_0154.Visible :=true;
   Frm_Ace.mpro_0155.Visible :=true;
   Frm_Ace.Industria_Envase.Visible :=false;
   end;
if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_Ace.sai_0112.Visible:=True;
   end
else
   begin
   Frm_Ace.sai_0112.Visible :=False;
   end;

if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_Ace.consembprod.Visible:=true
else
   Frm_Ace.consembprod.Visible:=False;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_Ace.mloc_0106.Visible:=True;
   Frm_Ace.mloc_0107.Visible:=True;
   Frm_Ace.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_Ace.mloc_0106.Visible:=False;
   Frm_Ace.mloc_0107.Visible:=False;
   Frm_Ace.mloc_0108.Visible:=False;
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
   Frm_Ace.mloc_0109.Visible:=False;
   end;


if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_Ace.folha.Visible:=True;
   end
else
   begin
   Frm_Ace.folha.Visible:=false;
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
   Frm_Ace.imobilizados.Visible    :=True;
   Frm_Ace.rel_imobilizados.Visible:=True;
   end
else
   begin
   Frm_Ace.imobilizados.Visible    :=false;
   Frm_Ace.rel_imobilizados.Visible:=false;
   end;
if (valint(copy(mpseg,4,2))<>1) then
   begin
   Frm_Ace.sis2103.Visible  :=false;
   end;


if (valint(copy(mpseg,4,2))=2) then
   begin
   Frm_Ace.lf_0142.Visible:=true; // inventario por grade
   Frm_Ace.lf_0145.Visible:=true; // comparar inventario por grade
   Frm_Ace.mpro_0166.Visible:=true; // manutenção em materias primas
   Frm_Ace.rven_0130.Visible       :=true; // comissão do assessor por venda
//   Frm_Ace.rven_0133.Visible       :=true; // comissão do assessor por recebimento
//   Frm_Ace.mven_0109.Visible:=true; // manutenção no assessor

   end
else
   begin
   Frm_Ace.lf_0142.Visible:=false;
   Frm_Ace.lf_0145.Visible:=false;
   Frm_Ace.mpro_0166.Visible:=true;
   Frm_Ace.mven_0109.Visible:=false;
//   Frm_Ace.rven_0130.Visible       :=false;
//   Frm_Ace.rven_0133.Visible       :=false;
   end;



if DM1.Tb_PargerPUCONVEI.Value=1 then
   begin
   Frm_Ace.veiculos.Visible    :=True;
   Frm_Ace.rel_veiculos.Visible:=True;
   end
else
   begin
   Frm_Ace.veiculos.Visible    :=false;
   Frm_Ace.rel_veiculos.Visible:=False;
   end;


if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_Ace.sai_0127.Visible:=True;
   end
else
   begin
   Frm_Ace.sai_0127.Visible:=false;
   end;

If not DM1.Tb_Funcao.Active then
   BBCargo.Click;

end;



procedure TFrm_Ace.BitBtn1Click(Sender: TObject);
var
Nome: array[1..600] of string;
mnome: String;
mqtd: Integer;
begin
if fMensagem('Quer Realmente Liberar Todos os Acessos deste Cargo?',0,['1','2'],2)=mrNO then
   begin
   abort;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Processando Aguarde...';
Frm_Agde.Show;
Frm_Agde.Update;

Nome[001]:='mpro_0103';
Nome[002]:='mpro_0106';
Nome[003]:='mpro_0109';
Nome[004]:='mpro_0203';
Nome[005]:='mpro_0112';
Nome[006]:='mpro_0115';
Nome[007]:='mpro_0118';
Nome[008]:='mpro_0121';
Nome[009]:='mpro_0124';
Nome[010]:='mpro_0127';
Nome[011]:='mloc_0103';
Nome[012]:='musu_0103';
Nome[013]:='musu_0106';
Nome[014]:='musu_0109';
Nome[015]:='musu_0112';
Nome[016]:='mfor_0103';
Nome[017]:='mcli_0103';
Nome[018]:='mcli_0106';
Nome[019]:='mcli_0109';
Nome[020]:='mcli_0112';
Nome[021]:='mcli_0115';
Nome[022]:='mven_0103';
Nome[023]:='mtra_0103';
Nome[024]:='mcai_0103';
Nome[025]:='mcai_0106';
Nome[026]:='mcai_0109';
Nome[027]:='mcai_0112';
Nome[028]:='rpro_0103';
Nome[029]:='rpro_0106';
Nome[030]:='rpro_0109';
Nome[031]:='rfor_0103';
Nome[032]:='rest_0103';
Nome[033]:='rcli_0103';
Nome[034]:='rcli_0106';
Nome[035]:='rcli_0109';
Nome[036]:='rtpro_0103';
Nome[037]:='rgpro_0103';
Nome[038]:='rger_0103';
Nome[039]:='rger_0106';
Nome[040]:='rger_0109';
Nome[041]:='rger_0112';
Nome[042]:='rger_0115';
Nome[043]:='rven_0139';
Nome[044]:='rven_0142';
Nome[045]:='rger_0209';
Nome[046]:='rcpro_0103';
Nome[047]:='rven_0103';
Nome[048]:='rtra_0103';
Nome[049]:='rusu_0103';
Nome[050]:='rfun_0103';
Nome[051]:='rpv_0103';
Nome[052]:='rbco_0103';
Nome[053]:='rccu_0103';
Nome[054]:='rdep_0103';
Nome[055]:='rcai_0103';
Nome[056]:='rpfor_0101';
Nome[057]:='rcli_0124';
Nome[058]:='est_0103';
Nome[059]:='est_0106';
Nome[060]:='est_0109';
Nome[061]:='rent_0103';
Nome[062]:='rsai_0103';
Nome[063]:='cfo_0103';
Nome[064]:='lf_0103';
Nome[065]:='lf_0106';
Nome[066]:='lf_0109';
Nome[067]:='lf_0112';
Nome[068]:='lf_0115';
Nome[069]:='lf_0118';
Nome[070]:='sai_0103';
Nome[071]:='sai_0106';
Nome[072]:='sai_0109';
Nome[073]:='sai_0112';
Nome[074]:='sai_0115';
Nome[075]:='cp_0103';
Nome[076]:='cp_0203';
Nome[077]:='cp_0206';
Nome[078]:='cp_0209';
Nome[079]:='cp_0303';
Nome[080]:='cp_0306';
Nome[081]:='cr_0103';
Nome[082]:='cr_0203';
Nome[083]:='sis_0103';
Nome[084]:='sis_0106';
Nome[085]:='sis_0109';
Nome[086]:='sis_0112';
NOme[087]:='sis_0203';
Nome[088]:='sis_0206';
Nome[089]:='sis_0209';
Nome[090]:='sis_0212';
Nome[091]:='sis_0215';
Nome[092]:='sis_0218';
Nome[093]:='sis_0221';
Nome[094]:='sis_0224';
Nome[095]:='sis_0227';
Nome[096]:='sis_0230';
Nome[097]:='sis_0233';
Nome[098]:='sis_0236';
Nome[099]:='sis_0239';
Nome[100]:='sis_0115';
Nome[101]:='sis_0118';
Nome[102]:='sis_0121';
Nome[103]:='sis_0303';
Nome[104]:='rpro_0163';
Nome[105]:='sis_0309';
Nome[106]:='sis_0315';
Nome[107]:='sis_0318';
Nome[108]:='sis_0321';
Nome[109]:='sis_0324';
Nome[110]:='sis_0327';
Nome[111]:='sis_0330';
Nome[112]:='sis_0333';
Nome[113]:='sis_0336';
Nome[114]:='sis_0339';
Nome[115]:='sis_0342';
Nome[116]:='sis_0345';
Nome[117]:='sis_0348';
Nome[118]:='sis_0351';
Nome[119]:='sis_0354';
Nome[120]:='sis_0357';
Nome[121]:='sis_0360';
Nome[122]:='sis_0363';
Nome[123]:='sis_0366';
Nome[124]:='sis_0369';
Nome[125]:='sis_0372';
Nome[126]:='sis_0375';
Nome[127]:='sis_0124';
Nome[128]:='sis_0127';
Nome[129]:='sis_0130';
Nome[130]:='est_0112';
Nome[131]:='sis_0312';
Nome[132]:='sis_0378';
Nome[133]:='sis_0381';
Nome[134]:='rpfor_0201';
Nome[135]:='rped_0201';
Nome[136]:='sis_0601';
Nome[137]:='sai_0118';
Nome[138]:='ind_0103';
Nome[139]:='sis_0606';
Nome[140]:='cr_0303';
Nome[141]:='cr_0306';
Nome[142]:='cr_0309';
Nome[143]:='cp_0109';
Nome[144]:='mfor_0106';
Nome[145]:='cr_0206';
Nome[146]:='cr_0903';
Nome[147]:='cr_0906';
Nome[148]:='cr_0912';
Nome[149]:='sis_0133';
Nome[150]:='cr_0209';
Nome[151]:='sis_0609';
Nome[152]:='rger_0200';
Nome[153]:='rger_0212';
Nome[154]:='rger_0215';
Nome[155]:='rger_0218';
Nome[156]:='rger_0221';
Nome[157]:='mdiv_0103';
Nome[158]:='mdiv_0106';
Nome[159]:='cr_0212';
Nome[160]:='mpro_0130';
Nome[161]:='mven_0106';
Nome[162]:='mpro_0133';
Nome[163]:='mpro_0136';
Nome[164]:='mpro_0139';
Nome[165]:='mpro_0142';
Nome[166]:='rcr_0106';
Nome[167]:='rcr_0109';
Nome[168]:='rcr_0112';
Nome[169]:='rven_0106';
Nome[170]:='rven_0109';
Nome[171]:='rven_0112';
Nome[172]:='rven_0115';
Nome[173]:='rven_0118';
Nome[174]:='rven_0121';
Nome[175]:='rven_0124';
Nome[176]:='rpro_0112';
Nome[177]:='rpro_0115';
Nome[178]:='rven_0127';
Nome[179]:='rcli_0112';
Nome[180]:='cr_0312';
Nome[181]:='cp_0212';
Nome[182]:='rped_0301';
Nome[183]:='cr_0215';
Nome[184]:='mloc_0106';
Nome[185]:='mloc_0109';
Nome[186]:='est_0115';
Nome[187]:='rger_0224';
Nome[188]:='mcli_0118';
Nome[189]:='mcli_0121';
Nome[190]:='cr_0909';
Nome[191]:='mcli_0124';
Nome[192]:='mcli_0127';
Nome[193]:='mpro_0145';
Nome[194]:='rger_0227';
Nome[195]:='rcr_0115';
Nome[196]:='sis_0630';
Nome[197]:='rpro_0118';
Nome[198]:='cr_0218';
Nome[199]:='cr_0221';
Nome[200]:='mdiv_0109';
Nome[201]:='mfol_0103';
Nome[202]:='mfol_0106';
Nome[203]:='mfol_0109';
Nome[204]:='mfol_0112';
Nome[205]:='mfol_0115';
Nome[206]:='mfol_0118';
Nome[207]:='mfol_0121';
Nome[208]:='mfol_0124';
Nome[209]:='mfol_0127';
Nome[210]:='mfol_0130';
Nome[211]:='rpro_0121';
Nome[212]:='sai_0121';
Nome[213]:='mind_0103';
Nome[214]:='mind_0106';
Nome[215]:='mind_0109';
Nome[216]:='mind_0112';
Nome[217]:='cr_0915';
Nome[218]:='mcai_0115';
Nome[219]:='sai_0124';
Nome[220]:='rpfor_0103';
Nome[221]:='mpro_0148';
Nome[222]:='rpro_0127';
Nome[223]:='rpro_0130';
Nome[224]:='rpro_0133';
Nome[225]:='lf_0121';
Nome[226]:='sai_0127';
Nome[227]:='sis_0633';
Nome[228]:='sis_0636';
Nome[229]:='sis_0639';
Nome[230]:='sis_0642';
Nome[231]:='rfor_0106';
Nome[232]:='rfor_0109';
Nome[233]:='rfor_0112';
Nome[234]:='rfor_0115';
Nome[235]:='rger_0230';
Nome[236]:='rest_0106';
Nome[237]:='rest_0109';
Nome[238]:='rest_0112';
Nome[239]:='rest_0115';
Nome[240]:='rcli_0115';
Nome[241]:='rtpro_0106';
Nome[242]:='rtpro_0109';
Nome[243]:='rtpro_0112';
Nome[244]:='rtpro_0115';
Nome[245]:='rgpro_0106';
Nome[246]:='rgpro_0109';
Nome[247]:='rgpro_0112';
Nome[248]:='rgpro_0115';
Nome[249]:='rrpro_0103';
Nome[250]:='rrpro_0106';
Nome[251]:='rrpro_0109';
Nome[252]:='rrpro_0112';
Nome[253]:='rrpro_0115';
Nome[254]:='est_0118';
Nome[255]:='est_0121';
Nome[256]:='est_0124';
Nome[257]:='est_0127';
Nome[258]:='est_0130';
Nome[259]:='est_0133';
Nome[260]:='est_0136';
Nome[261]:='est_0139';
Nome[262]:='est_0142';
Nome[263]:='est_0145';
Nome[264]:='est_0148';
Nome[265]:='est_0151';
Nome[266]:='est_0154';
Nome[267]:='est_0157';
Nome[268]:='est_0160';
Nome[269]:='est_0163';
Nome[270]:='est_0166';
Nome[271]:='rcli_0118';
Nome[272]:='rger_0233';
Nome[273]:='mcai_0118';
Nome[274]:='lf_0124';
Nome[275]:='mpro_0151';
Nome[276]:='mcai_0121';
Nome[277]:='rger_0236';
Nome[278]:='sis_0645';
Nome[279]:='sis_0648';
Nome[280]:='rger_0239';
Nome[281]:='rger_0242';
Nome[282]:='cr_0918';
Nome[283]:='rger_0245';
Nome[284]:='mcai_0124';
Nome[285]:='sis_0612';
Nome[286]:='sis_0615';
Nome[287]:='sis_0651';
Nome[288]:='rsai_0106';
Nome[289]:='rpro_0136';
Nome[290]:='rpro_0139';
Nome[291]:='rpro_0142';
Nome[292]:='rpro_0145';
Nome[293]:='rpro_0148';
Nome[294]:='mcli_0130';
Nome[295]:='rpro_0151';
Nome[296]:='sai_0130';
Nome[297]:='sai_0133';
Nome[298]:='rpro_0154';
Nome[299]:='mpro_0206';
Nome[300]:='sis_0114';
Nome[301]:='sis_0654';
Nome[302]:='rcli_0303';
Nome[303]:='rcli_0306';
Nome[304]:='sai_0136';
Nome[305]:='sai_0139';
Nome[306]:='sis_0657';
Nome[307]:='cr_0315';
Nome[308]:='sis_0117';
Nome[309]:='mind_0115';
Nome[310]:='sis_0660';
Nome[311]:='lf_0127';
Nome[312]:='lf_0130';
Nome[313]:='sai_0142';
Nome[314]:='rpro_0157';
Nome[315]:='sis_0663';
Nome[316]:='sis_0666';
Nome[317]:='mfol_0133';
Nome[318]:='sis_0669';
Nome[319]:='sis_0120';
Nome[320]:='sis_0123';
Nome[321]:='mpro_0154';
Nome[322]:='mpro_0128';
Nome[323]:='mpro_0129';
Nome[324]:='mcai_0127';
Nome[325]:='gnre0103';
Nome[326]:='lf_0133';
Nome[327]:='rcpro_0106';
Nome[328]:='rcpro_0109';
Nome[329]:='rcpro_0112';
Nome[330]:='rcpro_0115';
Nome[331]:='mos_0103';
Nome[332]:='mos_0106';
Nome[333]:='pro_0154';
Nome[334]:='pro_0157';
Nome[335]:='mvei_0103';
Nome[336]:='mvei_0106';
Nome[337]:='mimo_0103';
Nome[338]:='mimo_0106';
Nome[339]:='mmoe_0103';
Nome[340]:='mmoe_0106';
Nome[341]:='mvei_0109';
Nome[342]:='mimo_0109';
Nome[343]:='rmoe_0103';
Nome[344]:='rvei_0103';
Nome[345]:='rimo_0103';
Nome[346]:='ros_0103';
Nome[347]:='rman_0103';
Nome[348]:='rvei_0106';
Nome[349]:='rimo_0106';
Nome[350]:='mloc_0107';
Nome[351]:='mloc_0110';
Nome[352]:='sis_0672';
Nome[353]:='sis_0242';
Nome[354]:='mpro_0157';
Nome[355]:='mpro_0160';
Nome[356]:='sis_0675';
Nome[357]:='sis_0126';
Nome[358]:='lf_0136';
Nome[359]:='sis_0618';
Nome[360]:='mos_0109';
Nome[361]:='rdiv_0103';
Nome[362]:='mcli_0133';
Nome[363]:='rger_0248';
Nome[364]:='mind_0118';
Nome[365]:='mind_0121';
Nome[366]:='sis_0678';
Nome[367]:='sis_0679';
Nome[368]:='sis_0621';
Nome[369]:='lf_0139';
Nome[370]:='rsai_0109';
Nome[371]:='mpro_0163';
Nome[372]:='rpro_0160';
Nome[373]:='mpro_0166';
Nome[374]:='msis_0703';
Nome[375]:='msis_0706';
Nome[376]:='msis_0709';
Nome[377]:='msis_0712';
Nome[378]:='msis_0715';
Nome[379]:='lf_0142';
Nome[380]:='mpro_0169';
Nome[381]:='msis_0718';
Nome[382]:='msis_0721';
Nome[383]:='sis6024';
Nome[384]:='sis6027';
Nome[385]:='sis6030';
Nome[386]:='sis6033';
Nome[387]:='sis6036';
Nome[388]:='sis6039';
Nome[389]:='sis6042';
Nome[390]:='rger_0251';
Nome[391]:='rger_0254';
Nome[392]:='rcr_0118';
Nome[393]:='mven_0109';
Nome[394]:='rven_0130';
Nome[395]:='rven_0133';
Nome[396]:='sai_0145';
Nome[397]:='cr_0318';
Nome[398]:='rpro_0163';
Nome[399]:='lf_0145';
Nome[400]:='mos_0112';
Nome[401]:='rger_0257';
Nome[402]:='mpro_0172';
Nome[403]:='mind_0124';
Nome[404]:='sai_0148';
Nome[405]:='mind_0127';
Nome[406]:='mind_0130';
Nome[407]:='mind_0133';
Nome[408]:='rind_0103';
Nome[409]:='sis_0129';
Nome[410]:='mpro_0161';
Nome[411]:='sai_0160';
Nome[412]:='mdiv_0112';
Nome[413]:='mind_0136';
Nome[414]:='cr_0224';
Nome[415]:='rcli_0121';
Nome[416]:='rcr_0121';
Nome[417]:='sis_0132';
Nome[418]:='rped_0103';
Nome[419]:='sis_0135';
Nome[420]:='mpro_0178';
Nome[421]:='rcr_0124';
Nome[422]:='rcr_0127';
Nome[423]:='sis_0138';
Nome[424]:='sis_0141';
Nome[425]:='mos_0115';
Nome[426]:='cp_0112';
Nome[427]:='mdiv_0118';
Nome[428]:='rcli_0127';
Nome[429]:='rped_0109';
Nome[430]:='mos_0118';
Nome[431]:='mcai_0130';
Nome[432]:='cp_0115';
Nome[433]:='rpro_0166';
Nome[434]:='rpro_0169';
Nome[435]:='rger_0260';
Nome[436]:='cr_0230';
Nome[437]:='cp_0309';
Nome[438]:='sis_0245';
Nome[439]:='sai_0163';
Nome[440]:='sai_0166';
Nome[441]:='mdiv_0115';
Nome[442]:='sai_0169';
Nome[443]:='cr_0233';
Nome[444]:='cp_0312';
Nome[445]:='cr_0236';
Nome[446]:='sai_0172';
Nome[447]:='sai_0175';
Nome[448]:='sai_0178';
Nome[449]:='rpro_0161';
Nome[450]:='rpro_0175';
Nome[451]:='rpro_0178';
Nome[452]:='rped_0112';
Nome[453]:='rped_0115';
Nome[454]:='rven_0136';
Nome[455]:='rven_0139';
Nome[456]:='mcli_0136';
Nome[457]:='rped_0118';
Nome[458]:='rcr_0130';
Nome[459]:='mven_0112';
Nome[460]:='rpro_0181';
Nome[461]:='sai_0151';
Nome[462]:='rger_0263';
Nome[463]:='lf_0148';
Nome[464]:='mfor_0109';
Nome[465]:='rfor_0118';
Nome[466]:='cr_0921';
Nome[467]:='lf_0151';
Nome[468]:='sai_0181';
Nome[469]:='rcr_0139';
Nome[470]:='sis_0144';
Nome[471]:='sis_0147';
Nome[472]:='rger_0266';
Nome[473]:='sai_0154';
Nome[474]:='sai_0184';
Nome[475]:='mpro_0181';
Nome[476]:='sai_0187';
Nome[477]:='sai_0190';
Nome[478]:='mven_0115';
Nome[479]:='mpro_0184';
Nome[480]:='mind_0139';
Nome[481]:='mpro_0187';
Nome[482]:='rest_0118';
Nome[483]:='mven_0118';
Nome[484]:='mven_0121';
Nome[485]:='cr_0924';
Nome[486]:='lf_0154';
Nome[487]:='sai_0157';
Nome[488]:='sai_0193';
Nome[489]:='rpro_0184';
Nome[490]:='sai_0196';
Nome[491]:='cp_0121';
Nome[492]:='cp_0124';
Nome[493]:='cp_0127';
Nome[494]:='mcli_0139';
Nome[495]:='rpro_0187';
Nome[496]:='mpro_0209';
Nome[497]:='sai_0199';
Nome[498]:='cr_0239';
Nome[499]:='mloc_0112';
Nome[500]:='mloc_0115';
Nome[501]:='cr_0927';
Nome[502]:='sis2103';
Nome[503]:='mindenv_0103';
Nome[504]:='mindenv_0106';
Nome[505]:='mindenv_0109';
Nome[506]:='vago';
Nome[507]:='mindenv_0115';
Nome[508]:='rind_0106';
Nome[509]:='mdiv_0121';
Nome[510]:='mdiv_0124';
Nome[511]:='rfor_0121';
Nome[512]:='cr_0928';
Nome[513]:='cr_0929';
Nome[514]:='cp_0130';
Nome[515]:='mfol_0125';
Nome[516]:='mcai_0133';
Nome[517]:='rest_0121';
Nome[518]:='mpro_0190';
Nome[519]:='mpro_0193';
Nome[520]:='saiconf_0103';
Nome[521]:='saiconf_0106';
Nome[522]:='saiconf_0109';
Nome[523]:='rfun_0001';
Nome[524]:='mven_118';
Nome[525]:='rpro_0162';
Nome[526]:='saiconf_0112';
Nome[527]:='saiconf_0115';
Nome[528]:='rven_0153';
Nome[529]:='saiconf_0118';
Nome[530]:='cp_0215';
Nome[531]:='rfor_0124';
Nome[532]:='mpro_0301';
Nome[533]:='cr_0242';
Nome[534]:='sai_0202';
Nome[535]:='mpro_0155';
Nome[536]:='cr_0930';
Nome[537]:='mcai_0107';
Nome[538]:='rped_0119';
Nome[539]:='mfor_0110';
Nome[540]:='mloc_0108';
Nome[541]:='mpro_0185';
Nome[542]:='rcli_0128';
Nome[543]:='mpro_0207';
Nome[544]:='rel_0103';
Nome[545]:='mos_0121';
Nome[546]:='rven_0148';
Nome[547]:='rven_0145';
Nome[548]:='rven_0151';
Nome[549]:='rtra_0104';
Nome[550]:='mIndEnv_0116';
Nome[551]:='mIndEnv_0117';
Nome[552]:='mcli_0125';
Nome[553]:='mfor_0111';
Nome[554]:='lf_0157';
Nome[555]:='sis_0903';
Nome[556]:='sis_0906';
Nome[557]:='sis_0909';
Nome[558]:='rcli_0130';
Nome[559]:='sis_0248';
Nome[560]:='rven_0156';
Nome[561]:='rped_0101';
Nome[562]:='ExportarEmailCSV1';
Nome[563]:='UltimasVendas1';
Nome[564]:='mpro_0194';
Nome[565]:='ConsultasdeRE1';
Nome[566]:='mcai_0136';
Nome[567]:='mcai_0137';
Nome[568]:='mind_0122';
Nome[569]:='mind_0123';
Nome[570]:='rcli_0122';
Nome[571]:='rpro_0116';
Nome[572]:='rger_0261';
Nome[573]:='rger_0262';
Nome[574]:='rven_0152';
Nome[575]:='rven_0153';
Nome[576]:='sai_0128';
Nome[577]:='saiconf_0119';
Nome[578]:='sai_0152';
Nome[579]:='cr_0919';
Nome[580]:='sis_0251';
Nome[581]:='sis_0254';
Nome[582]:='rpro_0117';
Nome[583]:='rped_0120';
Nome[584]:='rger_0265';
Nome[585]:='mpro_0195';
Nome[586]:='mpro_0186';
Nome[587]:='rsai_0112';
Nome[588]:='sis_0643';
Nome[589]:='rped_0121';
Nome[590]:='rsai_0115';
Nome[591]:='lf_0160';
Nome[592]:='rpro_0131';
Nome[593]:='rpro_0129';
Nome[594]:='mcai_0140';
Nome[595]:='mcai_0143';
Nome[596]:='sai_0122';
Nome[597]:='sai_0203';
Nome[598]:='sai_0204';
Nome[599]:='lf_0163';
Nome[600]:='lf_0166';

mqtd:=1;
DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('Select * From CadAce Where ');
if DM1.Qr_TID.Locate('TINOME','CADACE',[]) Then
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntToStr(cargo)+' order by CODCAR ')
else
   DM4.Tb_Ace.SQL.Add(' CODEMP=0'+IntTostr(codemp)+' and CODCAR=0'+IntToStr(Cargo)
                     +' order by CODEMP,CODCAR');
DM4.Tb_Ace.Open;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODCAR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'MENU',ptInput);
DM1.Query2.SQL.add('Insert into CADACE ('
                  +' CODEMP, CODCAR, MENU) values ('
                  +' :CODEMP, '
                  +' :CODCAR, '
                  +' :MENU )');


For mqtd:=1 to high(nome) do
   begin
   if Trim(nome[mqtd])='' then
      Continue;
   If not DM4.Tb_Ace.Locate('MENU',Nome[mqtd],[]) then
      begin
      DM1.Query2.Close;
      DM1.Query2.ParamByName('CODEMP').AsFloat:=codemp;
      DM1.Query2.ParamByName('CODCAR').AsFloat:=cargo;
      DM1.Query2.ParamByName('MENU').AsString :=Nome[mqtd];
      Try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//          sHOWmESSAGE('rEPETIDO: '+Nome[mqtd]);
//         ex_erroSql(01,4027,'Frm_Ace','CADACE');
         end;
      end;
   end;
DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('select * from CADACE where ');
if DM1.Qr_TID.Locate('TINOME','CADACE',[]) then
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+intToStr(Cargo)+' order by CODCAR')
else
   DM4.Tb_Ace.SQL.Add(' CODEMP='+IntToStr(codemp)
                  +' and CODCAR=0'+IntToStr(Cargo)+' order by CODEMP,CODCAR');
DM4.Tb_Ace.Open;
mmoe_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0103.Name,[]);
mmoe_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0106.Name,[]);
mvei_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0103.Name,[]);
mvei_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0106.Name,[]);
mvei_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0109.Name,[]);
mimo_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0103.Name,[]);
mimo_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0106.Name,[]);
mimo_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0109.Name,[]);


mpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0103.Name,[]);
mpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0106.Name,[]);
mpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0109.Name,[]);
mpro_0203.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0203.Name,[]);
mpro_0207.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0207.Name,[]);
mpro_0206.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0206.Name,[]);
mpro_0209.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0209.Name,[]);
mpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0112.Name,[]);
mpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0115.Name,[]);
mpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0118.Name,[]);
mpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0121.Name,[]);
mpro_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0124.Name,[]);
mpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0127.Name,[]);
mpro_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0128.Name,[]);
mpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0129.Name,[]);
mpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0130.Name,[]);
mpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0133.Name,[]);
mpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0142.Name,[]);
mpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0145.Name,[]);
mpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0148.Name,[]);
mpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0151.Name,[]);
mpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0154.Name,[]);
mpro_0155.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0155.Name,[]);
mpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0157.Name,[]);
mpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0160.Name,[]);

UltimasVendas1.Checked  :=DM4.Tb_Ace.Locate('MENU',UltimasVendas1.Name,[]);
mpro_0194.Checked       :=DM4.Tb_Ace.Locate('MENU',mpro_0194.Name,[]);
mpro_0195.Checked       :=DM4.Tb_Ace.Locate('MENU',mpro_0195.Name,[]);
ConsultasdeRE1.Checked  :=DM4.Tb_Ace.Locate('MENU',ConsultasdeRE1.Name,[]);

mpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0163.Name,[]);
mpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0166.Name,[]);
mpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0169.Name,[]);
mpro_0172.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0172.Name,[]);
mpro_0175.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0175.Name,[]);
mpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0178.Name,[]);
mpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0181.Name,[]);
mpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0184.Name,[]);
mpro_0185.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0185.Name,[]);
mpro_0186.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0186.Name,[]);
mpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0187.Name,[]);
mpro_0301.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0301.Name,[]);
mpro_0190.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0190.Name,[]);
mpro_0193.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0193.Name,[]);
rpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0160.Name,[]);
rpro_0161.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0161.Name,[]);
rpro_0162.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0162.Name,[]);
rpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0163.Name,[]);
rpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0166.Name,[]);
rpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0169.Name,[]);
rpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0178.Name,[]);
rpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0181.Name,[]);
rpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0184.Name,[]);
rpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0187.Name,[]);
mloc_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0103.Name,[]);
mloc_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0106.Name,[]);
mloc_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0107.Name,[]);
mloc_0108.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0108.Name,[]);
mloc_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0109.Name,[]);
musu_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0103.Name,[]);
musu_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0106.Name,[]);
musu_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0109.Name,[]);
musu_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0112.Name,[]);
mfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0103.Name,[]);
mcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0103.Name,[]);
mcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0106.Name,[]);
mcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0109.Name,[]);
mcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0112.Name,[]);
mcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0115.Name,[]);
mcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0118.Name,[]);
mcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0121.Name,[]);
mcli_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0124.Name,[]);
mcli_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0125.Name,[]);
rcli_0122.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0122.Name,[]);
mcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0130.Name,[]);
mcli_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0133.Name,[]);
mcli_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0136.Name,[]);
mcli_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0139.Name,[]);
mven_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0103.Name,[]);
mven_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0106.Name,[]);
mven_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0109.Name,[]);
mven_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0112.Name,[]);
mven_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0115.Name,[]);
mven_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0118.Name,[]);
mven_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0121.Name,[]);
mtra_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mtra_0103.Name,[]);
mcai_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0103.Name,[]);
mcai_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0106.Name,[]);
mcai_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0107.Name,[]);
mcai_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0109.Name,[]);
mcai_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0112.Name,[]);
mcai_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0115.Name,[]);
mcai_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0118.Name,[]);
mcai_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0121.Name,[]);
mcai_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0124.Name,[]);
mcai_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0127.Name,[]);
mcai_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0130.Name,[]);
mcai_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0133.Name,[]);
mcai_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0136.Name,[]);
mcai_0137.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0137.Name,[]);
mcai_0140.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0140.Name,[]);
mcai_0143.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0143.Name,[]);
mind_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0103.Name,[]);
mind_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0106.Name,[]);
mind_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0109.Name,[]);
mind_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0112.Name,[]);
mind_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0115.Name,[]);
mind_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0118.Name,[]);
mind_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0121.Name,[]);
mind_0122.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0122.Name,[]);
mind_0123.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0123.Name,[]);
mind_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0124.Name,[]);
mind_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0127.Name,[]);
mind_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0130.Name,[]);
mind_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0133.Name,[]);
mind_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0136.Name,[]);
mind_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0139.Name,[]);
mdiv_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0103.Name,[]);
mdiv_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0106.Name,[]);
mdiv_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0109.Name,[]);
mdiv_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0112.Name,[]);
mdiv_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0115.Name,[]);
mdiv_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0118.Name,[]);
mdiv_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0121.Name,[]);
mdiv_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0124.Name,[]);
mfol_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0103.Name,[]);
mfol_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0106.Name,[]);
mfol_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0109.Name,[]);
mfol_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0115.Name,[]);
mfol_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0118.Name,[]);
mfol_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0121.Name,[]);
mfol_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0124.Name,[]);
mfol_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0125.Name,[]);
mfol_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0127.Name,[]);
mfol_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0130.Name,[]);
mfol_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0133.Name,[]);

rpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0103.Name,[]);
rpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0106.Name,[]);
rpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0109.Name,[]);
rpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0112.Name,[]);
rpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0115.Name,[]);
rpro_0116.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0116.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0118.Name,[]);
rpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0121.Name,[]);
rpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0127.Name,[]);
rpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0129.Name,[]);
rpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0130.Name,[]);
rpro_0131.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0131.Name,[]);
rpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0133.Name,[]);
rpro_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0136.Name,[]);
rpro_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0139.Name,[]);
rpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0142.Name,[]);
rpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0145.Name,[]);
rpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0148.Name,[]);
rpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0151.Name,[]);
rpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0154.Name,[]);
rpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0157.Name,[]);
rfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0103.Name,[]);
rfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0106.Name,[]);
rfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0109.Name,[]);
rfor_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0112.Name,[]);
rfor_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0115.Name,[]);
rfor_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0118.Name,[]);
rfor_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0121.Name,[]);

rfor_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0124.Name,[]);
mfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0106.Name,[]);
mfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0109.Name,[]);
mfor_0110.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0110.Name,[]);
mfor_0111.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0111.Name,[]);
rest_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0103.Name,[]);
rest_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0106.Name,[]);
rest_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0109.Name,[]);
rest_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0112.Name,[]);
rest_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0115.Name,[]);
rest_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0118.Name,[]);
rest_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0121.Name,[]);

rcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0103.Name,[]);
rcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0106.Name,[]);
rel_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rel_0103.Name,[]);

rcli_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0128.Name,[]);
rel_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rel_0103.Name,[]);

rcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0109.Name,[]);
rcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0112.Name,[]);
rcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0115.Name,[]);
rcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0118.Name,[]);
rcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0121.Name,[]);
rcli_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0127.Name,[]);
rcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0130.Name,[]);
rcli_0303.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0303.Name,[]);
rcli_0306.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0306.Name,[]);
ExportarEmailCSV1.Checked  :=DM4.Tb_Ace.Locate('MENU',ExportarEmailCSV1.Name,[]);
rtpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0103.Name,[]);
rtpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0106.Name,[]);
rtpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0109.Name,[]);
rtpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0112.Name,[]);
rtpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0115.Name,[]);
rgpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0103.Name,[]);
rgpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0106.Name,[]);
rgpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0109.Name,[]);
rgpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0112.Name,[]);
rgpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0115.Name,[]);
rger_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0103.Name,[]);
rger_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0106.Name,[]);
rger_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0109.Name,[]);
rger_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0112.Name,[]);
rger_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0115.Name,[]);
rger_0200.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0200.Name,[]);
rger_0212.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0212.Name,[]);
rger_0215.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0215.Name,[]);
rger_0218.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0218.Name,[]);
rger_0221.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0221.Name,[]);
rger_0230.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0230.Name,[]);
rger_0224.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0224.Name,[]);
rger_0227.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0227.Name,[]);
rger_0233.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0233.Name,[]);
rger_0236.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0236.Name,[]);
rger_0239.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0239.Name,[]);
rger_0242.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0242.Name,[]);
rger_0245.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0245.Name,[]);
rger_0248.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0248.Name,[]);
rger_0251.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0251.Name,[]);
rger_0254.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0254.Name,[]);
rger_0257.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0257.Name,[]);
rger_0260.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0260.Name,[]);
rger_0261.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0261.Name,[]);
rger_0262.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0262.Name,[]);
rger_0265.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0265.Name,[]);
rger_0263.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0263.Name,[]);
rger_0266.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0266.Name,[]);

rger_0209.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0209.Name,[]);
rcpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0103.Name,[]);
rcpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0106.Name,[]);
rcpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0109.Name,[]);
rcpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0112.Name,[]);
rcpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0115.Name,[]);
rrpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0103.Name,[]);
rrpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0106.Name,[]);
rrpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0109.Name,[]);
rrpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0112.Name,[]);
rrpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0115.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rimo_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0103.Name,[]);
rimo_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0106.Name,[]);
rvei_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0103.Name,[]);
rvei_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0106.Name,[]);
rmoe_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rmoe_0103.Name,[]);
ros_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',ros_0103.Name,[]);
rdiv_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdiv_0103.Name,[]);
rind_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rind_0103.Name,[]);
rind_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rind_0106.Name,[]);
rfun_0001.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0001.Name,[]);

rven_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0103.Name,[]);
rven_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0106.Name,[]);
rven_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0109.Name,[]);
rven_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0112.Name,[]);
rven_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0115.Name,[]);
rven_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0118.Name,[]);
rven_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0121.Name,[]);
rven_0124.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0124.Name,[]);
rven_0127.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0127.Name,[]);
rven_0130.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0130.Name,[]);
rven_0133.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0133.Name,[]);
rven_0136.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0136.Name,[]);
rven_0142.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0142.Name,[]);
rven_0145.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0145.Name,[]);
rven_0148.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0148.Name,[]);
rven_0151.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0151.Name,[]);
rven_0152.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0152.Name,[]);
rven_0153.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0153.Name,[]);
rven_0154.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0154.Name,[]);
rven_0156.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0156.Name,[]);
rped_0101.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0101.Name,[]);

rtra_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0103.Name,[]);
rtra_0104.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0104.Name,[]);
rusu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rusu_0103.Name,[]);
rfun_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0103.Name,[]);
rpv_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',rpv_0103.Name,[]);
rbco_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rbco_0103.Name,[]);
rccu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rccu_0103.Name,[]);
rdep_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdep_0103.Name,[]);
rcai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rcai_0103.Name,[]);
rpfor_0101.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0101.Name,[]);
rpfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0103.Name,[]);
rped_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0103.Name,[]);
rped_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0109.Name,[]);
rped_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0112.Name,[]);
rped_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0115.Name,[]);
rped_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0118.Name,[]);
rped_0119.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0119.Name,[]);
rped_0120.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0120.Name,[]);
rped_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0121.Name,[]);
rped_0301.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0301.Name,[]);
est_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0112.Name,[]);
est_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0115.Name,[]);
est_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0118.Name,[]);
est_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0121.Name,[]);
rent_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rent_0103.Name,[]);
rsai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0103.Name,[]);
rsai_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0106.Name,[]);
rsai_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0109.Name,[]);
rsai_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0112.Name,[]);
cfo_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',cfo_0103.Name,[]);
rsai_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0115.Name,[]);
gnre0103.Checked    :=DM4.Tb_Ace.Locate('MENU',gnre0103.Name,[]);
lf_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0103.Name,[]);
lf_0106.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0106.Name,[]);
lf_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0109.Name,[]);
lf_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0112.Name,[]);
lf_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0115.Name,[]);
lf_0118.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0118.Name,[]);
lf_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0121.Name,[]);
lf_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0124.Name,[]);
lf_0127.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0127.Name,[]);
lf_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0130.Name,[]);
lf_0133.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0133.Name,[]);
lf_0136.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0136.Name,[]);
lf_0139.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0139.Name,[]);
lf_0142.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0142.Name,[]);
lf_0145.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0145.Name,[]);
lf_0148.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0148.Name,[]);
lf_0151.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0151.Name,[]);
lf_0154.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0154.Name,[]);
lf_0157.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0157.Name,[]);
lf_0160.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0160.Name,[]);
lf_0163.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0163.Name,[]);
lf_0166.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0166.Name,[]);
sai_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0103.Name,[]);
sai_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0106.Name,[]);
sai_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0109.Name,[]);
sai_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0112.Name,[]);
sai_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0115.Name,[]);
sai_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0118.Name,[]);
sai_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0121.Name,[]);
sai_0122.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0122.Name,[]);
sai_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0124.Name,[]);
sai_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0127.Name,[]);
sai_0128.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0128.Name,[]);
sai_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0133.Name,[]);
sai_0136.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0136.Name,[]);
sai_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0139.Name,[]);
sai_0160.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0160.Name,[]);
sai_0163.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0163.Name,[]);
sai_0166.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0166.Name,[]);
sai_0169.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0169.Name,[]);
sai_0172.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0172.Name,[]);
sai_0175.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0175.Name,[]);
sai_0178.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0178.Name,[]);
sai_0181.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0181.Name,[]);
sai_0184.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0184.Name,[]);
sai_0187.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0187.Name,[]);
sai_0190.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0190.Name,[]);
sai_0193.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0193.Name,[]);
sai_0196.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0196.Name,[]);
sai_0199.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0199.Name,[]);
sai_0202.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0202.Name,[]);
sai_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0203.Name,[]);
sai_0204.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0204.Name,[]);
saiconf_0103.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0103.Name,[]);
saiconf_0106.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0106.Name,[]);
saiconf_0109.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0109.Name,[]);
saiconf_0112.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0112.Name,[]);
saiconf_0115.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0115.Name,[]);
saiconf_0118.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0118.Name,[]);
saiconf_0119.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0119.Name,[]);
mos_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0103.Name,[]);
mos_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0106.Name,[]);
mos_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0109.Name,[]);
mos_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0112.Name,[]);
mos_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0115.Name,[]);
mos_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0118.Name,[]);
mos_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0121.Name,[]);
sai_0142.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0142.Name,[]);
sai_0145.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0145.Name,[]);
sai_0148.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0148.Name,[]);
sai_0151.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0151.Name,[]);
sai_0152.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0152.Name,[]);
sai_0154.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0154.Name,[]);
sai_0157.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0157.Name,[]);
cp_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0103.Name,[]);
cp_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0109.Name,[]);
cp_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0112.Name,[]);
cp_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0115.Name,[]);
cp_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0121.Name,[]);
cp_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0124.Name,[]);
cp_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0130.Name,[]);

cp_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0203.Name,[]);
cp_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0206.Name,[]);
cp_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0209.Name,[]);
cp_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0303.Name,[]);
cp_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0306.Name,[]);
cp_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0309.Name,[]);
cp_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0312.Name,[]);
cr_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0103.Name,[]);
rcr_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0106.Name,[]);
rcr_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0109.Name,[]);
rcr_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0112.Name,[]);
rcr_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0115.Name,[]);
rcr_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0118.Name,[]);
rcr_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0121.Name,[]);
rcr_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0124.Name,[]);
rcr_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0127.Name,[]);
rcr_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0130.Name,[]);
rcr_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0139.Name,[]);
cr_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0203.Name,[]);
cr_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0206.Name,[]);
cr_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0209.Name,[]);
cr_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0303.Name,[]);
cr_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0306.Name,[]);
cr_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0309.Name,[]);
cr_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0312.Name,[]);
cr_0315.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0315.Name,[]);
cr_0318.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0318.Name,[]);
cp_0212.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0212.Name,[]);
cp_0215.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0215.Name,[]);
sis_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0103.Name,[]);
sis_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0106.Name,[]);
sis_0643.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0643.Name,[]);
msis_0703.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0703.Name,[]);
msis_0706.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0706.Name,[]);
msis_0709.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0709.Name,[]);
msis_0712.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0712.Name,[]);
msis_0715.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0715.Name,[]);
msis_0718.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0718.Name,[]);
msis_0721.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0721.Name,[]);
sis_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0109.Name,[]);
sis_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0112.Name,[]);
sis_0114.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0114.Name,[]);
sis_0117.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0117.Name,[]);
sis_0120.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0120.Name,[]);
sis_0123.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0123.Name,[]);
sis_0126.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0126.Name,[]);
sis_0129.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0129.Name,[]);
sis_0132.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0132.Name,[]);
sis_0135.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0135.Name,[]);
sis_0138.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0138.Name,[]);
sis_0141.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0141.Name,[]);
sis_0144.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0144.Name,[]);
sis_0147.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0147.Name,[]);
sis_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0203.Name,[]);
sis_0206.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0206.Name,[]);
sis_0209.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0209.Name,[]);
sis_0212.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0212.Name,[]);
sis_0215.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0215.Name,[]);
sis_0218.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0218.Name,[]);
sis_0221.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0221.Name,[]);
sis_0224.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0224.Name,[]);
sis_0227.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0227.Name,[]);
sis_0230.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0230.Name,[]);
sis_0233.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0233.Name,[]);
sis_0236.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0236.Name,[]);
sis_0239.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0239.Name,[]);
sis_0242.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0242.Name,[]);
sis_0245.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0245.Name,[]);
sis_0248.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0248.Name,[]);
sis_0251.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0251.Name,[]);
sis_0254.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0254.Name,[]);
sis_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0115.Name,[]);
sis_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0118.Name,[]);
sis_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0121.Name,[]);
sis_0303.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0303.Name,[]);
sis_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0124.Name,[]);
sis_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0127.Name,[]);
sis_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0130.Name,[]);
sis_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0133.Name,[]);
sis_0601.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0601.Name,[]);
sis_0606.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0606.Name,[]);
sis_0609.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0609.Name,[]);
sis_0630.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0630.Name,[]);
sis_0633.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0633.Name,[]);
sis_0636.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0636.Name,[]);
sis_0639.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0639.Name,[]);
sis_0642.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0642.Name,[]);
sis_0645.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0645.Name,[]);
sis_0648.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0648.Name,[]);
sis_0651.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0651.Name,[]);
sis_0654.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0654.Name,[]);
sis_0657.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0657.Name,[]);
sis_0660.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0660.Name,[]);
sis_0663.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0663.Name,[]);
sis_0666.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0666.Name,[]);
sis_0669.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0669.Name,[]);
sis_0672.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0672.Name,[]);
sis_0675.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0675.Name,[]);
sis_0678.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0678.Name,[]);
sis_0681.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0681.Name,[]);
sis_0684.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0684.Name,[]);
sis_0687.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0687.Name,[]);
sis_0690.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0690.Name,[]);
sis_0693.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0693.Name,[]);
sis_0696.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0696.Name,[]);
sis_0612.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0612.Name,[]);
sis_0903.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0903.Name,[]);
sis_0906.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0906.Name,[]);
sis_0909.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0909.Name,[]);


sis_0615.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0615.Name,[]);
sis_0618.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0618.Name,[]);
sis_0621.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0621.Name,[]);
sis0615.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0615.Name,[]);
sis0618.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0618.Name,[]);
sis0621.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0621.Name,[]);
sis0624.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0624.Name,[]);
sis0627.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0627.Name,[]);
sis0630.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0630.Name,[]);
sis0633.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0633.Name,[]);
sis0636.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0636.Name,[]);
sis0639.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0639.Name,[]);
sis0642.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0642.Name,[]);
sis0648.Checked     :=DM4.Tb_Ace.Locate('MENU',sis0648.Name,[]);
sis2103.Checked     :=DM4.Tb_Ace.Locate('MENU',sis2103.Name,[]);
mven_118.Checked    :=DM4.Tb_Ace.Locate('MENU',mven_118.Name,[]);

Frm_Agde.Free;
Frm_Agde:=nil;
end;
procedure TFrm_Ace.BitBtn2Click(Sender: TObject);
begin
if AceitaPegunta then begin
if fMensagem('Quer Realmente bloquear Todos os Acessos deste Cargo?',0,['1','2'],2)=mrNO then
   begin
   abort;
   end;
end;   

DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADACE where ');
if DM1.Qr_TID.Locate('TINOME','CADACE',[]) then
   DM1.Query1.SQl.Add(' CODCAR=0'+IntToStr(Cargo))
else
   DM1.Query1.SQl.aDD(' CODEMP=0'+IntToStr(codemp)
                     +' and CODCAR=0'+IntToStr(Cargo));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1677,'Frm_Ace','CADACE');
   end;


DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('select * from CADACE where ');
if DM1.Qr_Tid.Locate('TINOME','CADCAR',[]) then
   begin
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntToStr(Cargo)+' order by CODCAR');
   end
else
   begin
   DM4.Tb_Ace.SQL.Add(' CODEMP=0'+IntTostr(codemp)+' and CODCAR=0'+IntToStr(Cargo)
                     +' order by CODEMP,CODCAR');
   end;
DM4.Tb_Ace.Open;
mmoe_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0103.Name,[]);
mmoe_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mmoe_0106.Name,[]);
mvei_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0103.Name,[]);
mvei_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0106.Name,[]);
mvei_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mvei_0109.Name,[]);
mimo_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0103.Name,[]);
mimo_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0106.Name,[]);
mimo_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mimo_0109.Name,[]);
mpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0103.Name,[]);
mpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0106.Name,[]);
mpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0109.Name,[]);
mpro_0203.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0203.Name,[]);
mpro_0207.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0207.Name,[]);
mpro_0206.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0206.Name,[]);
mpro_0209.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0209.Name,[]);
mpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0112.Name,[]);
mpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0115.Name,[]);
mpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0118.Name,[]);
mpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0121.Name,[]);
mpro_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0124.Name,[]);
mpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0127.Name,[]);
mpro_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0128.Name,[]);
mpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0129.Name,[]);
mpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0130.Name,[]);
mpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0133.Name,[]);
mpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0142.Name,[]);
mpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0145.Name,[]);
mpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0148.Name,[]);
mpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0151.Name,[]);
mpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0154.Name,[]);
mpro_0155.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0155.Name,[]);
mpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0157.Name,[]);
mpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0160.Name,[]);

UltimasVendas1.Checked  :=DM4.Tb_Ace.Locate('MENU',UltimasVendas1.Name,[]);
mpro_0194.Checked       :=DM4.Tb_Ace.Locate('MENU',mpro_0194.Name,[]);
mpro_0195.Checked       :=DM4.Tb_Ace.Locate('MENU',mpro_0195.Name,[]);
ConsultasdeRE1.Checked  :=DM4.Tb_Ace.Locate('MENU',ConsultasdeRE1.Name,[]);


mpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0163.Name,[]);
mpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0166.Name,[]);
mpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0169.Name,[]);
mpro_0172.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0172.Name,[]);
mpro_0175.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0175.Name,[]);
mpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0178.Name,[]);
mpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0181.Name,[]);
mpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0184.Name,[]);
mpro_0185.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0185.Name,[]);
mpro_0186.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0186.Name,[]);
mpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0187.Name,[]);
mpro_0301.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0301.Name,[]);
mpro_0190.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0190.Name,[]);
mpro_0193.Checked  :=DM4.Tb_Ace.Locate('MENU',mpro_0193.Name,[]);
rpro_0160.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0160.Name,[]);
rpro_0161.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0161.Name,[]);
rpro_0162.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0162.Name,[]);
rpro_0163.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0163.Name,[]);
rpro_0166.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0166.Name,[]);
rpro_0169.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0169.Name,[]);
rpro_0178.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0178.Name,[]);
rpro_0181.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0181.Name,[]);
rpro_0184.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0184.Name,[]);
rpro_0187.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0187.Name,[]);
mloc_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0103.Name,[]);
mloc_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0106.Name,[]);
mloc_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0107.Name,[]);
mloc_0108.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0108.Name,[]);
mloc_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0109.Name,[]);
mloc_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0112.Name,[]);
mloc_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mloc_0115.Name,[]);
mIndEnv_0103.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0103.Name,[]);
mIndEnv_0106.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0106.Name,[]);
mIndEnv_0109.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0109.Name,[]);
mIndEnv_0115.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0115.Name,[]);
mIndEnv_0116.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0116.Name,[]);
mIndEnv_0117.Checked:=DM4.Tb_Ace.Locate('MENU',mIndEnv_0117.Name,[]);
musu_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0103.Name,[]);
musu_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0106.Name,[]);
musu_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0109.Name,[]);
musu_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',musu_0112.Name,[]);
mfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0103.Name,[]);
mcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0103.Name,[]);
mcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0106.Name,[]);
mcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0109.Name,[]);
mcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0112.Name,[]);
mcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0115.Name,[]);
mcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0118.Name,[]);
mcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0121.Name,[]);
mcli_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0124.Name,[]);
mcli_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0125.Name,[]);
rcli_0122.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0122.Name,[]);
mcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0130.Name,[]);
mcli_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0133.Name,[]);
mcli_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0136.Name,[]);
mcli_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mcli_0139.Name,[]);
mven_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0103.Name,[]);
mven_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0106.Name,[]);
mven_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0109.Name,[]);
mven_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0112.Name,[]);
mven_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0115.Name,[]);
mven_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0118.Name,[]);
mven_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mven_0121.Name,[]);
mtra_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mtra_0103.Name,[]);
mcai_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0103.Name,[]);
mcai_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0106.Name,[]);
mcai_0107.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0107.Name,[]);
mcai_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0109.Name,[]);
mcai_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0112.Name,[]);
mcai_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0115.Name,[]);
mcai_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0118.Name,[]);
mcai_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0121.Name,[]);
mcai_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0124.Name,[]);
mcai_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0127.Name,[]);
mcai_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0130.Name,[]);
mcai_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0133.Name,[]);
mcai_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0136.Name,[]);
mcai_0137.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0137.Name,[]);
mcai_0140.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0140.Name,[]);
mcai_0143.Checked  :=DM4.Tb_Ace.Locate('MENU',mcai_0143.Name,[]);
mind_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0103.Name,[]);
mind_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0106.Name,[]);
mind_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0109.Name,[]);
mind_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0112.Name,[]);
mind_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0115.Name,[]);
mind_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0118.Name,[]);
mind_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0121.Name,[]);
mind_0122.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0122.Name,[]);
mind_0123.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0123.Name,[]);
mind_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0124.Name,[]);
mind_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0127.Name,[]);
mind_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0130.Name,[]);
mind_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0133.Name,[]);
mind_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0136.Name,[]);
mind_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',mind_0139.Name,[]);
mdiv_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0103.Name,[]);
mdiv_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0106.Name,[]);
mdiv_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0109.Name,[]);
mdiv_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0112.Name,[]);
mdiv_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0115.Name,[]);
mdiv_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0118.Name,[]);
mdiv_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0121.Name,[]);
mdiv_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mdiv_0124.Name,[]);
mfol_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0103.Name,[]);
mfol_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0106.Name,[]);
mfol_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0109.Name,[]);
mfol_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0115.Name,[]);
mfol_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0118.Name,[]);
mfol_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0121.Name,[]);
mfol_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0124.Name,[]);
mfol_0125.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0125.Name,[]);
mfol_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0127.Name,[]);
mfol_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0130.Name,[]);
mfol_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',mfol_0133.Name,[]);

rpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0103.Name,[]);
rpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0106.Name,[]);
rpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0109.Name,[]);
rpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0112.Name,[]);
rpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0115.Name,[]);
rpro_0116.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0116.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rpro_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0118.Name,[]);
rpro_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0121.Name,[]);
rpro_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0127.Name,[]);
rpro_0129.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0129.Name,[]);
rpro_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0130.Name,[]);
rpro_0131.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0131.Name,[]);
rpro_0133.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0133.Name,[]);
rpro_0136.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0136.Name,[]);
rpro_0139.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0139.Name,[]);
rpro_0142.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0142.Name,[]);
rpro_0145.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0145.Name,[]);
rpro_0148.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0148.Name,[]);
rpro_0151.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0151.Name,[]);
rpro_0154.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0154.Name,[]);
rpro_0157.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0157.Name,[]);
rfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0103.Name,[]);
rfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0106.Name,[]);
rfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0109.Name,[]);
rfor_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0112.Name,[]);
rfor_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0115.Name,[]);
rfor_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0118.Name,[]);
rfor_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0121.Name,[]);
rfor_0124.Checked  :=DM4.Tb_Ace.Locate('MENU',rfor_0124.Name,[]);
mfor_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0106.Name,[]);
mfor_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0109.Name,[]);
mfor_0110.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0110.Name,[]);
mfor_0111.Checked  :=DM4.Tb_Ace.Locate('MENU',mfor_0111.Name,[]);
rest_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0103.Name,[]);
rest_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0106.Name,[]);
rest_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0109.Name,[]);
rest_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0112.Name,[]);
rest_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0115.Name,[]);
rest_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0118.Name,[]);
rest_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rest_0121.Name,[]);

rcli_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0103.Name,[]);
rcli_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0106.Name,[]);
rel_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rel_0103.Name,[]);
rcli_0128.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0128.Name,[]);
rcli_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0109.Name,[]);
rcli_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0112.Name,[]);
rcli_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0115.Name,[]);
rcli_0118.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0118.Name,[]);
rcli_0121.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0121.Name,[]);
rcli_0127.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0127.Name,[]);
rcli_0130.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0130.Name,[]);
rcli_0303.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0303.Name,[]);
rcli_0306.Checked  :=DM4.Tb_Ace.Locate('MENU',rcli_0306.Name,[]);
ExportarEmailCSV1.Checked  :=DM4.Tb_Ace.Locate('MENU',ExportarEmailCSV1.Name,[]);
rtpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0103.Name,[]);
rtpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0106.Name,[]);
rtpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0109.Name,[]);
rtpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0112.Name,[]);
rtpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rtpro_0115.Name,[]);
rgpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0103.Name,[]);
rgpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0106.Name,[]);
rgpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0109.Name,[]);
rgpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0112.Name,[]);
rgpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rgpro_0115.Name,[]);
rger_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0103.Name,[]);
rger_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0106.Name,[]);
rger_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0109.Name,[]);
rger_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0112.Name,[]);
rger_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0115.Name,[]);
rger_0200.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0200.Name,[]);
rger_0212.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0212.Name,[]);
rger_0215.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0215.Name,[]);
rger_0218.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0218.Name,[]);
rger_0221.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0221.Name,[]);
rger_0230.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0230.Name,[]);
rger_0224.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0224.Name,[]);
rger_0227.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0227.Name,[]);
rger_0233.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0233.Name,[]);
rger_0236.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0236.Name,[]);
rger_0239.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0239.Name,[]);
rger_0242.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0242.Name,[]);
rger_0245.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0245.Name,[]);
rger_0248.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0248.Name,[]);
rger_0251.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0251.Name,[]);
rger_0254.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0254.Name,[]);
rger_0257.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0257.Name,[]);
rger_0260.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0260.Name,[]);
rger_0261.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0261.Name,[]);
rger_0262.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0262.Name,[]);
rger_0265.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0265.Name,[]);
rger_0263.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0263.Name,[]);
rger_0266.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0266.Name,[]);
mven_118.Checked    :=DM4.Tb_Ace.Locate('MENU',mven_118.Name,[]);

rger_0209.Checked   :=DM4.Tb_Ace.Locate('MENU',rger_0209.Name,[]);
rcpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0103.Name,[]);
rcpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0106.Name,[]);
rcpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0109.Name,[]);
rcpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0112.Name,[]);
rcpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rcpro_0115.Name,[]);


rrpro_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0103.Name,[]);
rrpro_0106.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0106.Name,[]);
rrpro_0109.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0109.Name,[]);
rrpro_0112.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0112.Name,[]);
rrpro_0115.Checked  :=DM4.Tb_Ace.Locate('MENU',rrpro_0115.Name,[]);
rpro_0117.Checked  :=DM4.Tb_Ace.Locate('MENU',rpro_0117.Name,[]);
rimo_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0103.Name,[]);
rimo_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rimo_0106.Name,[]);
rvei_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0103.Name,[]);
rvei_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rvei_0106.Name,[]);
rmoe_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rmoe_0103.Name,[]);
ros_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',ros_0103.Name,[]);
rdiv_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdiv_0103.Name,[]);
rind_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rind_0103.Name,[]);
rfun_0001.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0001.Name,[]);

rven_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0103.Name,[]);
rven_0106.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0106.Name,[]);
rven_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0109.Name,[]);
rven_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0112.Name,[]);
rven_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0115.Name,[]);
rven_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0118.Name,[]);
rven_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0121.Name,[]);
rven_0124.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0124.Name,[]);
rven_0127.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0127.Name,[]);
rven_0130.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0130.Name,[]);
rven_0133.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0133.Name,[]);
rven_0136.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0136.Name,[]);
rven_0142.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0142.Name,[]);
rven_0145.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0145.Name,[]);
rven_0148.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0148.Name,[]);
rven_0151.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0151.Name,[]);
rven_0152.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0152.Name,[]);
rven_0153.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0153.Name,[]);
rven_0154.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0154.Name,[]);
rven_0156.Checked   :=DM4.Tb_Ace.Locate('MENU',rven_0156.Name,[]);
rped_0101.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0101.Name,[]);

rtra_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0103.Name,[]);
rtra_0104.Checked   :=DM4.Tb_Ace.Locate('MENU',rtra_0104.Name,[]);
rusu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rusu_0103.Name,[]);
rfun_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rfun_0103.Name,[]);
rpv_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',rpv_0103.Name,[]);
rbco_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rbco_0103.Name,[]);
rccu_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rccu_0103.Name,[]);
rdep_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rdep_0103.Name,[]);
rcai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rcai_0103.Name,[]);
rpfor_0101.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0101.Name,[]);
rpfor_0103.Checked  :=DM4.Tb_Ace.Locate('MENU',rpfor_0103.Name,[]);
rped_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0103.Name,[]);
rped_0109.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0109.Name,[]);
rped_0112.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0112.Name,[]);
rped_0115.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0115.Name,[]);
rped_0118.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0118.Name,[]);
rped_0119.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0119.Name,[]);
rped_0120.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0120.Name,[]);
rped_0121.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0121.Name,[]);
rped_0301.Checked   :=DM4.Tb_Ace.Locate('MENU',rped_0301.Name,[]);
est_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0103.Name,[]);
est_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0106.Name,[]);
est_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0109.Name,[]);
est_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0112.Name,[]);
est_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0115.Name,[]);
est_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0118.Name,[]);
est_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0121.Name,[]);
est_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0124.Name,[]);
est_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0127.Name,[]);
est_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0130.Name,[]);
est_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0133.Name,[]);
est_0136.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0136.Name,[]);
est_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0139.Name,[]);
est_0142.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0142.Name,[]);
est_0145.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0145.Name,[]);
est_0148.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0148.Name,[]);
est_0151.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0151.Name,[]);
est_0154.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0154.Name,[]);
est_0157.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0157.Name,[]);
est_0160.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0160.Name,[]);
est_0163.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0163.Name,[]);
est_0166.Checked    :=DM4.Tb_Ace.Locate('MENU',est_0166.Name,[]);
rent_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rent_0103.Name,[]);
rsai_0103.Checked   :=DM4.Tb_Ace.Locate('MENU',rsai_0103.Name,[]);
cfo_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',cfo_0103.Name,[]);
gnre0103.Checked    :=DM4.Tb_Ace.Locate('MENU',gnre0103.Name,[]);
lf_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0103.Name,[]);
lf_0106.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0106.Name,[]);
lf_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0109.Name,[]);
lf_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0112.Name,[]);
lf_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0115.Name,[]);
lf_0118.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0118.Name,[]);
lf_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0121.Name,[]);
lf_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0124.Name,[]);
lf_0127.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0127.Name,[]);
lf_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0130.Name,[]);
lf_0133.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0133.Name,[]);
lf_0136.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0136.Name,[]);
lf_0139.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0139.Name,[]);
lf_0142.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0142.Name,[]);
lf_0145.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0145.Name,[]);
lf_0148.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0148.Name,[]);
lf_0151.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0151.Name,[]);
lf_0154.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0154.Name,[]);
lf_0157.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0157.Name,[]);
lf_0160.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0160.Name,[]);
lf_0163.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0163.Name,[]);
lf_0166.Checked     :=DM4.Tb_Ace.Locate('MENU',lf_0166.Name,[]);
sai_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0103.Name,[]);
sai_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0106.Name,[]);
sai_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0109.Name,[]);
sai_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0112.Name,[]);
sai_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0115.Name,[]);
sai_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0118.Name,[]);
sai_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0121.Name,[]);
sai_0122.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0122.Name,[]);
sai_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0124.Name,[]);
sai_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0127.Name,[]);
sai_0128.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0128.Name,[]);
sai_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0133.Name,[]);
sai_0136.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0136.Name,[]);
sai_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0139.Name,[]);
sai_0142.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0142.Name,[]);
sai_0145.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0145.Name,[]);
sai_0148.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0148.Name,[]);
sai_0151.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0151.Name,[]);
sai_0152.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0152.Name,[]);
sai_0154.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0154.Name,[]);
sai_0157.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0157.Name,[]);
sai_0160.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0160.Name,[]);

sai_0163.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0163.Name,[]);
sai_0166.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0166.Name,[]);
sai_0169.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0169.Name,[]);
sai_0172.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0172.Name,[]);
sai_0175.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0175.Name,[]);
sai_0178.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0178.Name,[]);
sai_0181.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0181.Name,[]);
sai_0184.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0184.Name,[]);
sai_0187.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0187.Name,[]);
sai_0190.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0190.Name,[]);
sai_0193.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0193.Name,[]);
sai_0196.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0196.Name,[]);
sai_0199.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0199.Name,[]);
sai_0202.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0202.Name,[]);
sai_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0203.Name,[]);
sai_0204.Checked    :=DM4.Tb_Ace.Locate('MENU',sai_0204.Name,[]);
saiconf_0103.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0103.Name,[]);
saiconf_0106.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0106.Name,[]);
saiconf_0109.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0109.Name,[]);
saiconf_0112.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0112.Name,[]);
saiconf_0115.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0115.Name,[]);
saiconf_0118.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0118.Name,[]);
saiconf_0119.Checked:=DM4.Tb_Ace.Locate('MENU',saiconf_0119.Name,[]);
mos_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0103.Name,[]);
mos_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0106.Name,[]);
mos_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0109.Name,[]);
mos_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0112.Name,[]);
mos_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0115.Name,[]);
mos_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0118.Name,[]);
mos_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',mos_0121.Name,[]);

cp_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0103.Name,[]);
cp_0109.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0109.Name,[]);
cp_0112.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0112.Name,[]);
cp_0115.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0115.Name,[]);
cp_0121.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0121.Name,[]);
cp_0124.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0124.Name,[]);
cp_0127.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0127.Name,[]);
cp_0130.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0130.Name,[]);
cp_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0203.Name,[]);
cp_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0206.Name,[]);
cp_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0209.Name,[]);
cp_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0303.Name,[]);
cp_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0306.Name,[]);
cp_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0309.Name,[]);
cp_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0312.Name,[]);
cr_0103.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0103.Name,[]);
rcr_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0106.Name,[]);
rcr_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0109.Name,[]);
rcr_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0112.Name,[]);
rcr_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0115.Name,[]);
rcr_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0118.Name,[]);
rcr_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0121.Name,[]);
rcr_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0124.Name,[]);
rcr_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0127.Name,[]);
rcr_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0130.Name,[]);
rcr_0139.Checked    :=DM4.Tb_Ace.Locate('MENU',rcr_0139.Name,[]);
cr_0203.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0203.Name,[]);
cr_0206.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0206.Name,[]);
cr_0209.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0209.Name,[]);
cr_0212.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0212.Name,[]);
cr_0215.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0215.Name,[]);
cr_0218.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0218.Name,[]);
cr_0221.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0221.Name,[]);
cr_0224.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0224.Name,[]);
cr_0230.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0230.Name,[]);
cr_0233.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0233.Name,[]);
cr_0236.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0236.Name,[]);
cr_0239.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0239.Name,[]);
cr_0242.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0242.Name,[]);
rven_0148.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0148.Name,[]);
rven_0151.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0151.Name,[]);
rven_0152.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0152.Name,[]);
rven_0153.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0153.Name,[]);
rven_0154.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0154.Name,[]);
rven_0156.Checked     :=DM4.Tb_Ace.Locate('MENU',rven_0156.Name,[]);
rped_0101.Checked     :=DM4.Tb_Ace.Locate('MENU',rped_0101.Name,[]);

cr_0303.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0303.Name,[]);
cr_0306.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0306.Name,[]);
cr_0309.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0309.Name,[]);
cr_0312.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0312.Name,[]);
cr_0315.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0315.Name,[]);
cr_0318.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0318.Name,[]);
cp_0212.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0212.Name,[]);
cp_0215.Checked     :=DM4.Tb_Ace.Locate('MENU',cp_0215.Name,[]);
cr_0903.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0903.Name,[]);
cr_0906.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0906.Name,[]);
cr_0909.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0909.Name,[]);
cr_0912.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0912.Name,[]);
cr_0915.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0915.Name,[]);
cr_0918.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0918.Name,[]);
cr_0919.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0919.Name,[]);
cr_0921.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0921.Name,[]);
cr_0924.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0924.Name,[]);
cr_0927.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0927.Name,[]);
cr_0928.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0928.Name,[]);
cr_0929.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0929.Name,[]);
cr_0930.Checked     :=DM4.Tb_Ace.Locate('MENU',cr_0930.Name,[]);
sis_0103.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0103.Name,[]);
sis_0643.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0643.Name,[]);
msis_0703.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0703.Name,[]);
msis_0706.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0706.Name,[]);
msis_0709.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0709.Name,[]);
msis_0712.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0712.Name,[]);
msis_0715.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0715.Name,[]);
msis_0718.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0718.Name,[]);
msis_0721.Checked   :=DM4.Tb_Ace.Locate('MENU',msis_0721.Name,[]);

sis_0106.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0106.Name,[]);
sis_0109.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0109.Name,[]);
sis_0112.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0112.Name,[]);
sis_0114.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0114.Name,[]);
sis_0117.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0117.Name,[]);
sis_0120.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0120.Name,[]);
sis_0123.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0123.Name,[]);
sis_0126.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0126.Name,[]);
sis_0129.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0129.Name,[]);
sis_0132.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0132.Name,[]);
sis_0135.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0135.Name,[]);
sis_0138.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0138.Name,[]);
sis_0141.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0141.Name,[]);
sis_0144.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0144.Name,[]);
sis_0147.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0147.Name,[]);
sis_0203.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0203.Name,[]);
sis_0206.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0206.Name,[]);
sis_0209.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0209.Name,[]);
sis_0212.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0212.Name,[]);
sis_0215.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0215.Name,[]);
sis_0218.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0218.Name,[]);
sis_0221.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0221.Name,[]);
sis_0224.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0224.Name,[]);
sis_0227.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0227.Name,[]);
sis_0230.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0230.Name,[]);
sis_0233.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0233.Name,[]);
sis_0236.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0236.Name,[]);
sis_0239.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0239.Name,[]);
sis_0242.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0242.Name,[]);
sis_0245.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0245.Name,[]);
sis_0248.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0248.Name,[]);
sis_0251.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0251.Name,[]);
sis_0254.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0254.Name,[]);
sis_0115.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0115.Name,[]);
sis_0118.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0118.Name,[]);
sis_0121.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0121.Name,[]);
sis_0303.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0303.Name,[]);
sis_0124.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0124.Name,[]);
sis_0127.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0127.Name,[]);
sis_0130.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0130.Name,[]);
sis_0133.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0133.Name,[]);
sis_0601.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0601.Name,[]);
sis_0606.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0606.Name,[]);
sis_0609.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0609.Name,[]);
sis_0630.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0630.Name,[]);
sis_0633.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0633.Name,[]);
sis_0636.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0636.Name,[]);
sis_0639.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0639.Name,[]);
sis_0642.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0642.Name,[]);
sis_0645.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0645.Name,[]);
sis_0648.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0648.Name,[]);
sis_0651.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0651.Name,[]);
sis_0654.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0654.Name,[]);
sis_0657.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0657.Name,[]);
sis_0660.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0660.Name,[]);
sis_0663.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0663.Name,[]);
sis_0666.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0666.Name,[]);
sis_0669.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0669.Name,[]);
sis_0672.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0672.Name,[]);
sis_0675.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0675.Name,[]);
sis_0678.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0678.Name,[]);
sis_0681.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0681.Name,[]);
sis_0684.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0684.Name,[]);
sis_0687.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0687.Name,[]);
sis_0690.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0690.Name,[]);
sis_0693.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0693.Name,[]);
sis_0696.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0696.Name,[]);
sis_0903.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0903.Name,[]);
sis_0906.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0906.Name,[]);
sis_0909.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0909.Name,[]);


sis_0612.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0612.Name,[]);
sis_0615.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0615.Name,[]);
sis_0618.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0618.Name,[]);
sis_0621.Checked    :=DM4.Tb_Ace.Locate('MENU',sis_0621.Name,[]);
end;


procedure TFrm_Ace.mpro_0103Click(Sender: TObject);
begin
If mpro_0103.Checked then
   begin
   mpro_0103.Checked:=False;
   face01ba(mpro_0103.name);
   end
else
   begin
   mpro_0103.Checked:=True;
   face01la(mpro_0103.Name);
   end;

end;
function face01la(pnome: String) : Boolean;
begin
DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('Select * From CADACE Where ');
if DM1.Qr_Tid.Locate('TINOME','CADACE',[]) then
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntToStr(Cargo)+' and MENU='+chr(39)+pnome+chr(39)
                     +' ORDER BY CODCAR,MENU')
else
   DM4.Tb_Ace.SQL.add(' CODEMP=0'+IntTostr(Codemp)+' and CODCAR=0'+intToStr(Cargo)
                     +' and MENU='+chr(39)+pnome+chr(39)
                     +' order by CODEMP,CODCAR,MENU');
DM4.Tb_Ace.Open;
if DM4.Tb_Ace.IsEmpty then
   begin
   DM4.Tb_Ace.Insert;
   DM4.Tb_AceCODEMP.Value:=codemp;
   DM4.Tb_AceCODCAR.Value:=Cargo;
   DM4.Tb_AceMENU.Value:=pnome;
   DM4.Tb_Ace.Post;
   result:=True;
   end
else
   result:=False;
end;
function face01ba(pnome: String) : Boolean;
begin
DM4.Tb_Ace.Close;
DM4.Tb_Ace.Sql.Clear;
DM4.Tb_Ace.Sql.Add('Select * From CADACE Where ');
if DM1.Qr_Tid.Locate('TINOME','CADACE',[]) then
   DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntToStr(Cargo)+' and MENU='+chr(39)+pnome+chr(39)
                     +' ORDER BY CODCAR,MENU')
else
   DM4.Tb_Ace.SQL.add(' CODEMP=0'+IntTostr(Codemp)+' and CODCAR=0'+intToStr(Cargo)
                     +' and MENU='+chr(39)+pnome+chr(39)
                     +' order by CODEMP,CODCAR,MENU');
DM4.Tb_Ace.Open;
If (DM4.Tb_AceCODCAR.Value=Cargo) then
   DM4.Tb_Ace.Delete;
result:=True;
end;

procedure TFrm_Ace.ExportarProdClick(Sender: TObject);
begin
If mpro_0106.Checked then
   begin
   mpro_0106.Checked:=False;
   face01ba(mpro_0106.name);
   end
else
   begin
   mpro_0106.Checked:=True;
   face01la(mpro_0106.Name);
   end;

end;

procedure TFrm_Ace.mpro_0109Click(Sender: TObject);
begin
If mpro_0109.Checked then
   begin
   mpro_0109.Checked:=False;
   face01ba(mpro_0109.name);
   end
else
   begin
   mpro_0109.Checked:=True;
   face01la(mpro_0109.Name);
   end;

end;

procedure TFrm_Ace.mpro_0203Click(Sender: TObject);
begin
If mpro_0203.Checked then
   begin
   mpro_0203.Checked:=False;
   face01ba(mpro_0203.name);
   end
else
   begin
   mpro_0203.Checked:=True;
   face01la(mpro_0203.Name);
   end;

end;

procedure TFrm_Ace.mpro_0112Click(Sender: TObject);
begin
If mpro_0112.Checked then
   begin
   mpro_0112.Checked:=False;
   face01ba(mpro_0112.name);
   end
else
   begin
   mpro_0112.Checked:=True;
   face01la(mpro_0112.Name);
   end;

end;

procedure TFrm_Ace.mpro_0115Click(Sender: TObject);
begin
If mpro_0115.Checked then
   begin
   mpro_0115.Checked:=False;
   face01ba(mpro_0115.name);
   end
else
   begin
   mpro_0115.Checked:=True;
   face01la(mpro_0115.Name);
   end;

end;

procedure TFrm_Ace.mpro_0118Click(Sender: TObject);
begin
If mpro_0118.Checked then
   begin
   mpro_0118.Checked:=False;
   face01ba(mpro_0118.name);
   end
else
   begin
   mpro_0118.Checked:=True;
   face01la(mpro_0118.Name);
   end;

end;

procedure TFrm_Ace.mpro_0121Click(Sender: TObject);
begin
If mpro_0121.Checked then
   begin
   mpro_0121.Checked:=False;
   face01ba(mpro_0121.name);
   end
else
   begin
   mpro_0121.Checked:=True;
   face01la(mpro_0121.Name);
   end;

end;

procedure TFrm_Ace.mpro_0124Click(Sender: TObject);
begin
If mpro_0124.Checked then
   begin
   mpro_0124.Checked:=False;
   face01ba(mpro_0124.name);
   end
else
   begin
   mpro_0124.Checked:=True;
   face01la(mpro_0124.Name);
   end;

end;

procedure TFrm_Ace.mloc_0103Click(Sender: TObject);
begin
If mloc_0103.Checked then
   begin
   mloc_0103.Checked:=False;
   face01ba(mloc_0103.name);
   end
else
   begin
   mloc_0103.Checked:=True;
   face01la(mloc_0103.Name);
   end;

end;

procedure TFrm_Ace.musu_0103Click(Sender: TObject);
begin
If musu_0103.Checked then
   begin
   musu_0103.Checked:=False;
   face01ba(musu_0103.name);
   end
else
   begin
   musu_0103.Checked:=True;
   face01la(musu_0103.Name);
   end;

end;

procedure TFrm_Ace.musu_0106Click(Sender: TObject);
begin
If musu_0106.Checked then
   begin
   musu_0106.Checked:=False;
   face01ba(musu_0106.name);
   end
else
   begin
   musu_0106.Checked:=True;
   face01la(musu_0106.Name);
   end;
end;

procedure TFrm_Ace.musu_0109Click(Sender: TObject);
begin
If musu_0109.Checked then
   begin
   musu_0109.Checked:=False;
   face01ba(musu_0109.name);
   end
else
   begin
   musu_0109.Checked:=True;
   face01la(musu_0109.Name);
   end;

end;

procedure TFrm_Ace.musu_0112Click(Sender: TObject);
begin
If musu_0112.Checked then
   begin
   musu_0112.Checked:=False;
   face01ba(musu_0112.name);
   end
else
   begin
   musu_0112.Checked:=True;
   face01la(musu_0112.Name);
   end;

end;

procedure TFrm_Ace.mfor_0103Click(Sender: TObject);
begin
If mfor_0103.Checked then
   begin
   mfor_0103.Checked:=False;
   face01ba(mfor_0103.name);
   end
else
   begin
   mfor_0103.Checked:=True;
   face01la(mfor_0103.Name);
   end;

end;

procedure TFrm_Ace.mcli_0103Click(Sender: TObject);
begin
If mcli_0103.Checked then
   begin
   mcli_0103.Checked:=False;
   face01ba(mcli_0103.name);
   end
else
   begin
   mcli_0103.Checked:=True;
   face01la(mcli_0103.Name);
   end;
Frm_Ace.mcli_0103.MenuIndex;
end;

procedure TFrm_Ace.mcli_0106Click(Sender: TObject);
begin
If mcli_0106.Checked then
   begin
   mcli_0106.Checked:=False;
   face01ba(mcli_0106.name);
   end
else
   begin
   mcli_0106.Checked:=True;
   face01la(mcli_0106.Name);
   end;

end;

procedure TFrm_Ace.mcli_0109Click(Sender: TObject);
begin
If mcli_0109.Checked then
   begin
   mcli_0109.Checked:=False;
   face01ba(mcli_0109.name);
   end
else
   begin
   mcli_0109.Checked:=True;
   face01la(mcli_0109.Name);
   end;

end;

procedure TFrm_Ace.mcli_0112Click(Sender: TObject);
begin
If mcli_0112.Checked then
   begin
   mcli_0112.Checked:=False;
   face01ba(mcli_0112.name);
   end
else
   begin
   mcli_0112.Checked:=True;
   face01la(mcli_0112.Name);
   end;

end;

procedure TFrm_Ace.mcli_0115Click(Sender: TObject);
begin
If mcli_0115.Checked then
   begin
   mcli_0115.Checked:=False;
   face01ba(mcli_0115.name);
   end
else
   begin
   mcli_0115.Checked:=True;
   face01la(mcli_0115.Name);
   end;

end;

procedure TFrm_Ace.mven_0103Click(Sender: TObject);
begin
If mven_0103.Checked then
   begin
   mven_0103.Checked:=False;
   face01ba(mven_0103.name);
   end
else
   begin
   mven_0103.Checked:=True;
   face01la(mven_0103.Name);
   end;

end;

procedure TFrm_Ace.mtra_0103Click(Sender: TObject);
begin
If mtra_0103.Checked then
   begin
   mtra_0103.Checked:=False;
   face01ba(mtra_0103.name);
   end
else
   begin
   mtra_0103.Checked:=True;
   face01la(mtra_0103.Name);
   end;

end;

procedure TFrm_Ace.mcai_0103Click(Sender: TObject);
begin
If mcai_0103.Checked then
   begin
   mcai_0103.Checked:=False;
   face01ba(mcai_0103.name);
   end
else
   begin
   mcai_0103.Checked:=True;
   face01la(mcai_0103.Name);
   end;

end;

procedure TFrm_Ace.mcai_0106Click(Sender: TObject);
begin
If mcai_0106.Checked then
   begin
   mcai_0106.Checked:=False;
   face01ba(mcai_0106.name);
   end
else
   begin
   mcai_0106.Checked:=True;
   face01la(mcai_0106.Name);
   end;
end;

procedure TFrm_Ace.mcai_0107Click(Sender: TObject);
begin
If mcai_0107.Checked then
   begin
   mcai_0107.Checked:=False;
   face01ba(mcai_0107.name);
   end
else
   begin
   mcai_0107.Checked:=True;
   face01la(mcai_0107.Name);
   end;
end;




procedure TFrm_Ace.mcai_0109Click(Sender: TObject);
begin
If mcai_0109.Checked then
   begin
   mcai_0109.Checked:=False;
   face01ba(mcai_0109.name);
   end
else
   begin
   mcai_0109.Checked:=True;
   face01la(mcai_0109.Name);
   end;

end;

procedure TFrm_Ace.mcai_0112Click(Sender: TObject);
begin
If mcai_0112.Checked then
   begin
   mcai_0112.Checked:=False;
   face01ba(mcai_0112.name);
   end
else
   begin
   mcai_0112.Checked:=True;
   face01la(mcai_0112.Name);
   end;

end;

procedure TFrm_Ace.rpro_0103Click(Sender: TObject);
begin
If rpro_0103.Checked then
   begin
   rpro_0103.Checked:=False;
   face01ba(rpro_0103.name);
   end
else
   begin
   rpro_0103.Checked:=True;
   face01la(rpro_0103.Name);
   end;

end;

procedure TFrm_Ace.rpro_0106Click(Sender: TObject);
begin
If rpro_0106.Checked then
   begin
   rpro_0106.Checked:=False;
   face01ba(rpro_0106.name);
   end
else
   begin
   rpro_0106.Checked:=True;
   face01la(rpro_0106.Name);
   end;

end;

procedure TFrm_Ace.rpro_0109Click(Sender: TObject);
begin
If rpro_0109.Checked then
   begin
   rpro_0109.Checked:=False;
   face01ba(rpro_0109.name);
   end
else
   begin
   rpro_0109.Checked:=True;
   face01la(rpro_0109.Name);
   end;

end;

procedure TFrm_Ace.rfor_0103Click(Sender: TObject);
begin
If rfor_0103.Checked then
   begin
   rfor_0103.Checked:=False;
   face01ba(rfor_0103.name);
   end
else
   begin
   rfor_0103.Checked:=True;
   face01la(rfor_0103.Name);
   end;

end;

procedure TFrm_Ace.rest_0103Click(Sender: TObject);
begin
If rest_0103.Checked then
   begin
   rest_0103.Checked:=False;
   face01ba(rest_0103.name);
   end
else
   begin
   rest_0103.Checked:=True;
   face01la(rest_0103.Name);
   end;

end;

procedure TFrm_Ace.rcli_0103Click(Sender: TObject);
begin
If rcli_0103.Checked then
   begin
   rcli_0103.Checked:=False;
   face01ba(rcli_0103.name);
   end
else
   begin
   rcli_0103.Checked:=True;
   face01la(rcli_0103.Name);
   end;

end;

procedure TFrm_Ace.rcli_0106Click(Sender: TObject);
begin
If rcli_0106.Checked then
   begin
   rcli_0106.Checked:=False;
   face01ba(rcli_0106.name);
   end
else
   begin
   rcli_0106.Checked:=True;
   face01la(rcli_0106.Name);
   end;

end;

procedure TFrm_Ace.rcli_0109Click(Sender: TObject);
begin
If rcli_0109.Checked then
   begin
   rcli_0109.Checked:=False;
   face01ba(rcli_0109.name);
   end
else
   begin
   rcli_0109.Checked:=True;
   face01la(rcli_0109.Name);
   end;

end;

procedure TFrm_Ace.rtpro_0103Click(Sender: TObject);
begin
If rtpro_0103.Checked then
   begin
   rtpro_0103.Checked:=False;
   face01ba(rtpro_0103.name);
   end
else
   begin
   rtpro_0103.Checked:=True;
   face01la(rtpro_0103.Name);
   end;

end;

procedure TFrm_Ace.rgpro_0103Click(Sender: TObject);
begin
If rgpro_0103.Checked then
   begin
   rgpro_0103.Checked:=False;
   face01ba(rgpro_0103.name);
   end
else
   begin
   rgpro_0103.Checked:=True;
   face01la(rgpro_0103.Name);
   end;

end;

procedure TFrm_Ace.rger_0103Click(Sender: TObject);
begin
If rger_0103.Checked then
   begin
   rger_0103.Checked:=False;
   face01ba(rger_0103.name);
   end
else
   begin
   rger_0103.Checked:=True;
   face01la(rger_0103.Name);
   end;

end;

procedure TFrm_Ace.rger_0106Click(Sender: TObject);
begin
If rger_0106.Checked then
   begin
   rger_0106.Checked:=False;
   face01ba(rger_0106.name);
   end
else
   begin
   rger_0106.Checked:=True;
   face01la(rger_0106.Name);
   end;

end;

procedure TFrm_Ace.rger_0109Click(Sender: TObject);
begin
If rger_0109.Checked then
   begin
   rger_0109.Checked:=False;
   face01ba(rger_0109.name);
   end
else
   begin
   rger_0109.Checked:=True;
   face01la(rger_0109.Name);
   end;

end;

procedure TFrm_Ace.rger_0112Click(Sender: TObject);
begin
If rger_0112.Checked then
   begin
   rger_0112.Checked:=False;
   face01ba(rger_0112.name);
   end
else
   begin
   rger_0112.Checked:=True;
   face01la(rger_0112.Name);
   end;

end;

procedure TFrm_Ace.rger_0115Click(Sender: TObject);
begin
If rger_0115.Checked then
   begin
   rger_0115.Checked:=False;
   face01ba(rger_0115.name);
   end
else
   begin
   rger_0115.Checked:=True;
   face01la(rger_0115.Name);
   end;

end;

procedure TFrm_Ace.rger_0209Click(Sender: TObject);
begin
If rger_0209.Checked then
   begin
   rger_0209.Checked:=False;
   face01ba(rger_0209.name);
   end
else
   begin
   rger_0209.Checked:=True;
   face01la(rger_0209.Name);
   end;

end;

procedure TFrm_Ace.rent_0103Click(Sender: TObject);
begin
If rent_0103.Checked then
   begin
   rent_0103.Checked:=False;
   face01ba(rent_0103.name);
   end
else
   begin
   rent_0103.Checked:=True;
   face01la(rent_0103.Name);
   end;

end;

procedure TFrm_Ace.rsai_0103Click(Sender: TObject);
begin
If rsai_0103.Checked then
   begin
   rsai_0103.Checked:=False;
   face01ba(rsai_0103.name);
   end
else
   begin
   rsai_0103.Checked:=True;
   face01la(rsai_0103.Name);
   end;

end;

procedure TFrm_Ace.cfo_0103Click(Sender: TObject);
begin
If cfo_0103.Checked then
   begin
   cfo_0103.Checked:=False;
   face01ba(cfo_0103.name);
   end
else
   begin
   cfo_0103.Checked:=True;
   face01la(cfo_0103.Name);
   end;

end;

procedure TFrm_Ace.lf_0103Click(Sender: TObject);
begin
If lf_0103.Checked then
   begin
   lf_0103.Checked:=False;
   face01ba(lf_0103.name);
   end
else
   begin
   lf_0103.Checked:=True;
   face01la(lf_0103.Name);
   end;

end;

procedure TFrm_Ace.lf_0106Click(Sender: TObject);
begin
If lf_0106.Checked then
   begin
   lf_0106.Checked:=False;
   face01ba(lf_0106.name);
   end
else
   begin
   lf_0106.Checked:=True;
   face01la(lf_0106.Name);
   end;

end;

procedure TFrm_Ace.lf_0109Click(Sender: TObject);
begin
If lf_0109.Checked then
   begin
   lf_0109.Checked:=False;
   face01ba(lf_0109.name);
   end
else
   begin
   lf_0109.Checked:=True;
   face01la(lf_0109.Name);
   end;

end;

procedure TFrm_Ace.lf_0112Click(Sender: TObject);
begin
If lf_0112.Checked then
   begin
   lf_0112.Checked:=False;
   face01ba(lf_0112.name);
   end
else
   begin
   lf_0112.Checked:=True;
   face01la(lf_0112.Name);
   end;

end;

procedure TFrm_Ace.lf_0115Click(Sender: TObject);
begin
If lf_0115.Checked then
   begin
   lf_0115.Checked:=False;
   face01ba(lf_0115.name);
   end
else
   begin
   lf_0115.Checked:=True;
   face01la(lf_0115.Name);
   end;

end;

procedure TFrm_Ace.lf_0118Click(Sender: TObject);
begin
If lf_0118.Checked then
   begin
   lf_0118.Checked:=False;
   face01ba(lf_0118.name);
   end
else
   begin
   lf_0118.Checked:=True;
   face01la(lf_0118.Name);
   end;

end;

procedure TFrm_Ace.sai_0103Click(Sender: TObject);
begin
If sai_0103.Checked then
   begin
   sai_0103.Checked:=False;
   face01ba(sai_0103.name);
   end
else
   begin
   sai_0103.Checked:=True;
   face01la(sai_0103.Name);
   end;

end;

procedure TFrm_Ace.sai_0109Click(Sender: TObject);
begin
If sai_0109.Checked then
   begin
   sai_0109.Checked:=False;
   face01ba(sai_0109.name);
   end
else
   begin
   sai_0109.Checked:=True;
   face01la(sai_0109.Name);
   end;

end;

procedure TFrm_Ace.sai_0112Click(Sender: TObject);
begin
If sai_0112.Checked then
   begin
   sai_0112.Checked:=False;
   face01ba(sai_0112.name);
   end
else
   begin
   sai_0112.Checked:=True;
   face01la(sai_0112.Name);
   end;

end;

procedure TFrm_Ace.sai_0115Click(Sender: TObject);
begin
If sai_0115.Checked then
   begin
   sai_0115.Checked:=False;
   face01ba(sai_0115.name);
   end
else
   begin
   sai_0115.Checked:=True;
   face01la(sai_0115.Name);
   end;

end;

procedure TFrm_Ace.cp_0103Click(Sender: TObject);
begin
If cp_0103.Checked then
   begin
   cp_0103.Checked:=False;
   face01ba(cp_0103.name);
   end
else
   begin
   cp_0103.Checked:=True;
   face01la(cp_0103.Name);
   end;

end;

procedure TFrm_Ace.cp_0203Click(Sender: TObject);
begin
If cp_0203.Checked then
   begin
   cp_0203.Checked:=False;
   face01ba(cp_0203.name);
   end
else
   begin
   cp_0203.Checked:=True;
   face01la(cp_0203.Name);
   end;

end;

procedure TFrm_Ace.cp_0206Click(Sender: TObject);
begin
If cp_0206.Checked then
   begin
   cp_0206.Checked:=False;
   face01ba(cp_0206.name);
   end
else
   begin
   cp_0206.Checked:=True;
   face01la(cp_0206.Name);
   end;

end;

procedure TFrm_Ace.cp_0209Click(Sender: TObject);
begin
If cp_0209.Checked then
   begin
   cp_0209.Checked:=False;
   face01ba(cp_0209.name);
   end
else
   begin
   cp_0209.Checked:=True;
   face01la(cp_0209.Name);
   end;

end;

procedure TFrm_Ace.cp_0303Click(Sender: TObject);
begin
If cp_0303.Checked then
   begin
   cp_0303.Checked:=False;
   face01ba(cp_0303.name);
   end
else
   begin
   cp_0303.Checked:=True;
   face01la(cp_0303.Name);
   end;

end;

procedure TFrm_Ace.cp_0306Click(Sender: TObject);
begin
If cp_0306.Checked then
   begin
   cp_0306.Checked:=False;
   face01ba(cp_0306.name);
   end
else
   begin
   cp_0306.Checked:=True;
   face01la(cp_0306.Name);
   end;

end;

procedure TFrm_Ace.cr_0103Click(Sender: TObject);
begin
If cr_0103.Checked then
   begin
   cr_0103.Checked:=False;
   face01ba(cr_0103.name);
   end
else
   begin
   cr_0103.Checked:=True;
   face01la(cr_0103.Name);
   end;

end;

procedure TFrm_Ace.cr_0203Click(Sender: TObject);
begin
If cr_0203.Checked then
   begin
   cr_0203.Checked:=False;
   face01ba(cr_0203.name);
   end
else
   begin
   cr_0203.Checked:=True;
   face01la(cr_0203.Name);
   end;

end;

procedure TFrm_Ace.sis_0103Click(Sender: TObject);
begin
If sis_0103.Checked then
   begin
   sis_0103.Checked:=False;
   face01ba(sis_0103.name);
   end
else
   begin
   sis_0103.Checked:=True;
   face01la(sis_0103.Name);
   end;

end;

procedure TFrm_Ace.sis_0106Click(Sender: TObject);
begin
If sis_0106.Checked then
   begin
   sis_0106.Checked:=False;
   face01ba(sis_0106.name);
   end
else
   begin
   sis_0106.Checked:=True;
   face01la(sis_0106.Name);
   end;

end;

procedure TFrm_Ace.sis_0109Click(Sender: TObject);
begin
If sis_0109.Checked then
   begin
   sis_0109.Checked:=False;
   face01ba(sis_0109.name);
   end
else
   begin
   sis_0109.Checked:=True;
   face01la(sis_0109.Name);
   end;

end;

procedure TFrm_Ace.sis_0203Click(Sender: TObject);
begin
If sis_0203.Checked then
   begin
   sis_0203.Checked:=False;
   face01ba(sis_0203.name);
   end
else
   begin
   sis_0203.Checked:=True;
   face01la(sis_0203.Name);
   end;

end;

procedure TFrm_Ace.sis_0206Click(Sender: TObject);
begin
If sis_0206.Checked then
   begin
   sis_0206.Checked:=False;
   face01ba(sis_0206.name);
   end
else
   begin
   sis_0206.Checked:=True;
   face01la(sis_0206.Name);
   end;

end;

procedure TFrm_Ace.sis_0209Click(Sender: TObject);
begin
If sis_0209.Checked then
   begin
   sis_0209.Checked:=False;
   face01ba(sis_0209.name);
   end
else
   begin
   sis_0209.Checked:=True;
   face01la(sis_0209.Name);
   end;

end;

procedure TFrm_Ace.sis_0212Click(Sender: TObject);
begin
If sis_0212.Checked then
   begin
   sis_0212.Checked:=False;
   face01ba(sis_0212.name);
   end
else
   begin
   sis_0212.Checked:=True;
   face01la(sis_0212.Name);
   end;

end;

procedure TFrm_Ace.sis_0215Click(Sender: TObject);
begin
If sis_0215.Checked then
   begin
   sis_0215.Checked:=False;
   face01ba(sis_0215.name);
   end
else
   begin
   sis_0215.Checked:=True;
   face01la(sis_0215.Name);
   end;

end;

procedure TFrm_Ace.sis_0218Click(Sender: TObject);
begin
If sis_0218.Checked then
   begin
   sis_0218.Checked:=False;
   face01ba(sis_0218.name);
   end
else
   begin
   sis_0218.Checked:=True;
   face01la(sis_0218.Name);
   end;

end;

procedure TFrm_Ace.sis_0221Click(Sender: TObject);
begin
If sis_0221.Checked then
   begin
   sis_0221.Checked:=False;
   face01ba(sis_0221.name);
   end
else
   begin
   sis_0221.Checked:=True;
   face01la(sis_0221.Name);
   end;

end;

procedure TFrm_Ace.sis_0224Click(Sender: TObject);
begin
If sis_0224.Checked then
   begin
   sis_0224.Checked:=False;
   face01ba(sis_0224.name);
   end
else
   begin
   sis_0224.Checked:=True;
   face01la(sis_0224.Name);
   end;

end;

procedure TFrm_Ace.sis_0227Click(Sender: TObject);
begin
If sis_0227.Checked then
   begin
   sis_0227.Checked:=False;
   face01ba(sis_0227.name);
   end
else
   begin
   sis_0227.Checked:=True;
   face01la(sis_0227.Name);
   end;

end;

procedure TFrm_Ace.sis_0230Click(Sender: TObject);
begin
If sis_0230.Checked then
   begin
   sis_0230.Checked:=False;
   face01ba(sis_0230.name);
   end
else
   begin
   sis_0230.Checked:=True;
   face01la(sis_0230.Name);
   end;

end;

procedure TFrm_Ace.sis_0233Click(Sender: TObject);
begin
If sis_0233.Checked then
   begin
   sis_0233.Checked:=False;
   face01ba(sis_0233.name);
   end
else
   begin
   sis_0233.Checked:=True;
   face01la(sis_0233.Name);
   end;

end;

procedure TFrm_Ace.sis_0236Click(Sender: TObject);
begin
If sis_0236.Checked then
   begin
   sis_0236.Checked:=False;
   face01ba(sis_0236.name);
   end
else
   begin
   sis_0236.Checked:=True;
   face01la(sis_0236.Name);
   end;

end;

procedure TFrm_Ace.sis_0239Click(Sender: TObject);
begin
If sis_0239.Checked then
   begin
   sis_0239.Checked:=False;
   face01ba(sis_0239.name);
   end
else
   begin
   sis_0239.Checked:=True;
   face01la(sis_0239.Name);
   end;

end;

procedure TFrm_Ace.sis_0115Click(Sender: TObject);
begin
If sis_0115.Checked then
   begin
   sis_0115.Checked:=False;
   face01ba(sis_0115.name);
   end
else
   begin
   sis_0115.Checked:=True;
   face01la(sis_0115.Name);
   end;

end;

procedure TFrm_Ace.sis_0118Click(Sender: TObject);
begin
If sis_0118.Checked then
   begin
   sis_0118.Checked:=False;
   face01ba(sis_0118.name);
   end
else
   begin
   sis_0118.Checked:=True;
   face01la(sis_0118.Name);
   end;

end;

procedure TFrm_Ace.sis_0121Click(Sender: TObject);
begin
If sis_0121.Checked then
   begin
   sis_0121.Checked:=False;
   face01ba(sis_0121.name);
   end
else
   begin
   sis_0121.Checked:=True;
   face01la(sis_0121.Name);
   end;

end;

procedure TFrm_Ace.sis_0303Click(Sender: TObject);
begin
If sis_0303.Checked then
   begin
   sis_0303.Checked:=False;
   face01ba(sis_0303.name);
   end
else
   begin
   sis_0303.Checked:=True;
   face01la(sis_0303.Name);
   end;

end;

procedure TFrm_Ace.sis_0124Click(Sender: TObject);
begin
If sis_0124.Checked then
   begin
   sis_0124.Checked:=False;
   face01ba(sis_0124.name);
   end
else
   begin
   sis_0124.Checked:=True;
   face01la(sis_0124.Name);
   end;

end;

procedure TFrm_Ace.sis_0127Click(Sender: TObject);
begin
If sis_0127.Checked then
   begin
   sis_0127.Checked:=False;
   face01ba(sis_0127.name);
   end
else
   begin
   sis_0127.Checked:=True;
   face01la(sis_0127.Name);
   end;

end;

procedure TFrm_Ace.sis_0130Click(Sender: TObject);
begin
If sis_0130.Checked then
   begin
   sis_0130.Checked:=False;
   face01ba(sis_0130.name);
   end
else
   begin
   sis_0130.Checked:=True;
   face01la(sis_0130.Name);
   end;

end;

procedure TFrm_Ace.sis_0601Click(Sender: TObject);
begin
If sis_0601.Checked then
   begin
   sis_0601.Checked:=False;
   face01ba(sis_0601.name);
   end
else
   begin
   sis_0601.Checked:=True;
   face01la(sis_0601.Name);
   end;

end;

procedure TFrm_Ace.mind_0103Click(Sender: TObject);
begin
 If mind_0103.Checked then
   begin
   mind_0103.Checked:=False;
   face01ba(mind_0103.name);
   end
else
   begin
   mind_0103.Checked:=True;
   face01la(mind_0103.Name);
   end;

end;

procedure TFrm_Ace.sis_0606Click(Sender: TObject);
begin
If sis_0606.Checked then
   begin
   sis_0606.Checked:=False;
   face01ba(sis_0606.name);
   end
else
   begin
   sis_0606.Checked:=True;
   face01la(sis_0606.Name);
   end;

end;

procedure TFrm_Ace.cr_0303Click(Sender: TObject);
begin
If cr_0303.Checked then
   begin
   cr_0303.Checked:=False;
   face01ba(cr_0303.name);
   end
else
   begin
   cr_0303.Checked:=True;
   face01la(cr_0303.Name);
   end;


end;

procedure TFrm_Ace.cr_0306Click(Sender: TObject);
begin
If cr_0306.Checked then
   begin
   cr_0306.Checked:=False;
   face01ba(cr_0306.name);
   end
else
   begin
   cr_0306.Checked:=True;
   face01la(cr_0306.Name);
   end;


end;

procedure TFrm_Ace.cr_0309Click(Sender: TObject);
begin
If cr_0309.Checked then
   begin
   cr_0309.Checked:=False;
   face01ba(cr_0309.name);
   end
else
   begin
   cr_0309.Checked:=True;
   face01la(cr_0309.Name);
   end;


end;

procedure TFrm_Ace.cp_0109Click(Sender: TObject);
begin
If cp_0109.Checked then
   begin
   cp_0109.Checked:=False;
   face01ba(cp_0109.name);
   end
else
   begin
   cp_0109.Checked:=True;
   face01la(cp_0109.Name);
   end;


end;

procedure TFrm_Ace.mfor_0106Click(Sender: TObject);
begin
If mfor_0106.Checked then
   begin
   mfor_0106.Checked:=False;
   face01ba(mfor_0106.name);
   end
else
   begin
   mfor_0106.Checked:=True;
   face01la(mfor_0106.Name);
   end;


end;

procedure TFrm_Ace.cr_0206Click(Sender: TObject);
begin
If cr_0206.Checked then
   begin
   cr_0206.Checked:=False;
   face01ba(cr_0206.name);
   end
else
   begin
   cr_0206.Checked:=True;
   face01la(cr_0206.Name);
   end;


end;

procedure TFrm_Ace.cr_0903Click(Sender: TObject);
begin
If cr_0903.Checked then
   begin
   cr_0903.Checked:=False;
   face01ba(cr_0903.name);
   end
else
   begin
   cr_0903.Checked:=True;
   face01la(cr_0903.Name);
   end;


end;

procedure TFrm_Ace.cr_0906Click(Sender: TObject);
begin
If cr_0906.Checked then
   begin
   cr_0906.Checked:=False;
   face01ba(cr_0906.name);
   end
else
   begin
   cr_0906.Checked:=True;
   face01la(cr_0906.Name);
   end;


end;

procedure TFrm_Ace.cr_0909Click(Sender: TObject);
begin
If cr_0909.Checked then
   begin
   cr_0909.Checked:=False;
   face01ba(cr_0909.name);
   end
else
   begin
   cr_0909.Checked:=True;
   face01la(cr_0909.Name);
   end;


end;

procedure TFrm_Ace.sis_0133Click(Sender: TObject);
begin
If sis_0133.Checked then
   begin
   sis_0133.Checked:=False;
   face01ba(sis_0133.name);
   end
else
   begin
   sis_0133.Checked:=True;
   face01la(sis_0133.Name);
   end;


end;

procedure TFrm_Ace.cr_0209Click(Sender: TObject);
begin
If cr_0209.Checked then
   begin
   cr_0209.Checked:=False;
   face01ba(cr_0209.name);
   end
else
   begin
   cr_0209.Checked:=True;
   face01la(cr_0209.Name);
   end;



end;

procedure TFrm_Ace.sis_0609Click(Sender: TObject);
begin
If sis_0609.Checked then
   begin
   sis_0609.Checked:=False;
   face01ba(sis_0609.name);
   end
else
   begin
   sis_0609.Checked:=True;
   face01la(sis_0609.Name);
   end;

end;

procedure TFrm_Ace.rger_0200Click(Sender: TObject);
begin
If rger_0200.Checked then
   begin
   rger_0200.Checked:=False;
   face01ba(rger_0200.name);
   end
else
   begin
   rger_0200.Checked:=True;
   face01la(rger_0200.Name);
   end;

end;

procedure TFrm_Ace.rger_0212Click(Sender: TObject);
begin
If rger_0212.Checked then
   begin
   rger_0212.Checked:=False;
   face01ba(rger_0212.name);
   end
else
   begin
   rger_0212.Checked:=True;
   face01la(rger_0212.Name);
   end;

end;

procedure TFrm_Ace.rger_0215Click(Sender: TObject);
begin
If rger_0215.Checked then
   begin
   rger_0215.Checked:=False;
   face01ba(rger_0215.name);
   end
else
   begin
   rger_0215.Checked:=True;
   face01la(rger_0215.Name);
   end;

end;

procedure TFrm_Ace.rger_0218Click(Sender: TObject);
begin
If rger_0218.Checked then
   begin
   rger_0218.Checked:=False;
   face01ba(rger_0218.name);
   end
else
   begin
   rger_0218.Checked:=True;
   face01la(rger_0218.Name);
   end;

end;

procedure TFrm_Ace.rger_0221Click(Sender: TObject);
begin
If rger_0221.Checked then
   begin
   rger_0221.Checked:=False;
   face01ba(rger_0221.name);
   end
else
   begin
   rger_0221.Checked:=True;
   face01la(rger_0221.Name);
   end;

end;

procedure TFrm_Ace.mdiv_0103Click(Sender: TObject);
begin
If mdiv_0103.Checked then
   begin
   mdiv_0103.Checked:=False;
   face01ba(mdiv_0103.name);
   end
else
   begin
   mdiv_0103.Checked:=True;
   face01la(mdiv_0103.Name);
   end;

end;

procedure TFrm_Ace.mdiv_0106Click(Sender: TObject);
begin
If mdiv_0106.Checked then
   begin
   mdiv_0106.Checked:=False;
   face01ba(mdiv_0106.name);
   end
else
   begin
   mdiv_0106.Checked:=True;
   face01la(mdiv_0106.Name);
   end;

end;

procedure TFrm_Ace.mpro_0130Click(Sender: TObject);
begin
If mpro_0130.Checked then
   begin
   mpro_0130.Checked:=False;
   face01ba(mpro_0130.name);
   end
else
   begin
   mpro_0130.Checked:=True;
   face01la(mpro_0130.Name);
   end;

end;

procedure TFrm_Ace.mven_0106Click(Sender: TObject);
begin
If mven_0106.Checked then
   begin
   mven_0106.Checked:=False;
   face01ba(mven_0106.name);
   end
else
   begin
   mven_0106.Checked:=True;
   face01la(mven_0106.Name);
   end;


end;

procedure TFrm_Ace.mpro_0133Click(Sender: TObject);
begin
If mpro_0133.Checked then
   begin
   mpro_0133.Checked:=False;
   face01ba(mpro_0133.name);
   end
else
   begin
   mpro_0133.Checked:=True;
   face01la(mpro_0133.Name);
   end;
end;

procedure TFrm_Ace.mpro_0142Click(Sender: TObject);
begin
If mpro_0142.Checked then
   begin
   mpro_0142.Checked:=False;
   face01ba(mpro_0142.name);
   end
else
   begin
   mpro_0142.Checked:=True;
   face01la(mpro_0142.Name);
   end;
end;


procedure TFrm_Ace.rcr_0106Click(Sender: TObject);
begin
If rcr_0106.Checked then
   begin
   rcr_0106.Checked:=False;
   face01ba(rcr_0106.name);
   end
else
   begin
   rcr_0106.Checked:=True;
   face01la(rcr_0106.Name);
   end;


end;

procedure TFrm_Ace.rcr_0109Click(Sender: TObject);
begin
If rcr_0109.Checked then
   begin
   rcr_0109.Checked:=False;
   face01ba(rcr_0109.name);
   end
else
   begin
   rcr_0109.Checked:=True;
   face01la(rcr_0109.Name);
   end;

end;

procedure TFrm_Ace.rcr_0112Click(Sender: TObject);
begin
If rcr_0112.Checked then
   begin
   rcr_0112.Checked:=False;
   face01ba(rcr_0112.name);
   end
else
   begin
   rcr_0112.Checked:=True;
   face01la(rcr_0112.Name);
   end;

end;

procedure TFrm_Ace.rven_0103Click(Sender: TObject);
begin
If rven_0103.Checked then
   begin
   rven_0103.Checked:=False;
   face01ba(rven_0103.name);
   end
else
   begin
   rven_0103.Checked:=True;
   face01la(rven_0103.Name);
   end;

end;

procedure TFrm_Ace.rven_0115Click(Sender: TObject);
begin
If rven_0115.Checked then
   begin
   rven_0115.Checked:=False;
   face01ba(rven_0115.name);
   end
else
   begin
   rven_0115.Checked:=True;
   face01la(rven_0115.Name);
   end;

end;

procedure TFrm_Ace.rven_0118Click(Sender: TObject);
begin
If rven_0118.Checked then
   begin
   rven_0118.Checked:=False;
   face01ba(rven_0118.name);
   end
else
   begin
   rven_0118.Checked:=True;
   face01la(rven_0118.Name);
   end;

end;

procedure TFrm_Ace.rven_0121Click(Sender: TObject);
begin
If rven_0121.Checked then
   begin
   rven_0121.Checked:=False;
   face01ba(rven_0121.name);
   end
else
   begin
   rven_0121.Checked:=True;
   face01la(rven_0121.Name);
   end;

end;

procedure TFrm_Ace.rven_0124Click(Sender: TObject);
begin
If rven_0124.Checked then
   begin
   rven_0124.Checked:=False;
   face01ba(rven_0124.name);
   end
else
   begin
   rven_0124.Checked:=True;
   face01la(rven_0124.Name);
   end;

end;

procedure TFrm_Ace.rven_0106Click(Sender: TObject);
begin
If rven_0106.Checked then
   begin
   rven_0106.Checked:=False;
   face01ba(rven_0106.name);
   end
else
   begin
   rven_0106.Checked:=True;
   face01la(rven_0106.Name);
   end;

end;

procedure TFrm_Ace.rven_0109Click(Sender: TObject);
begin
If rven_0109.Checked then
   begin
   rven_0109.Checked:=False;
   face01ba(rven_0109.name);
   end
else
   begin
   rven_0109.Checked:=True;
   face01la(rven_0109.Name);
   end;

end;

procedure TFrm_Ace.rven_0112Click(Sender: TObject);
begin
If rven_0112.Checked then
   begin
   rven_0112.Checked:=False;
   face01ba(rven_0112.name);
   end
else
   begin
   rven_0112.Checked:=True;
   face01la(rven_0112.Name);
   end;

end;

procedure TFrm_Ace.rpro_0112Click(Sender: TObject);
begin
If rpro_0112.Checked then
   begin
   rpro_0112.Checked:=False;
   face01ba(rpro_0112.name);
   end
else
   begin
   rpro_0112.Checked:=True;
   face01la(rpro_0112.Name);
   end;


end;

procedure TFrm_Ace.rpro_0115Click(Sender: TObject);
begin
If rpro_0115.Checked then
   begin
   rpro_0115.Checked:=False;
   face01ba(rpro_0115.name);
   end
else
   begin
   rpro_0115.Checked:=True;
   face01la(rpro_0115.Name);
   end;


end;

procedure TFrm_Ace.rven_0127Click(Sender: TObject);
begin
If rven_0127.Checked then
   begin
   rven_0127.Checked:=False;
   face01ba(rven_0127.name);
   end
else
   begin
   rven_0127.Checked:=True;
   face01la(rven_0127.Name);
   end;

end;

procedure TFrm_Ace.rcli_0112Click(Sender: TObject);
begin
If rcli_0112.Checked then
   begin
   rcli_0112.Checked:=False;
   face01ba(rcli_0112.name);
   end
else
   begin
   rcli_0112.Checked:=True;
   face01la(rcli_0112.Name);
   end;

end;

procedure TFrm_Ace.cp_0212Click(Sender: TObject);
begin
If cp_0212.Checked then
   begin
   cp_0212.Checked:=False;
   face01ba(cp_0212.name);
   end
else
   begin
   cp_0212.Checked:=True;
   face01la(cp_0212.Name);
   end;


end;

procedure TFrm_Ace.cr_0312Click(Sender: TObject);
begin
If cr_0312.Checked then
   begin
   cr_0312.Checked:=False;
   face01ba(cr_0312.name);
   end
else
   begin
   cr_0312.Checked:=True;
   face01la(cr_0312.Name);
   end;
end;

procedure TFrm_Ace.cr_0215Click(Sender: TObject);
begin
If cr_0215.Checked then
   begin
   cr_0215.Checked:=False;
   face01ba(cr_0215.name);
   end
else
   begin
   cr_0215.Checked:=True;
   face01la(cr_0215.Name);
   end;



end;

procedure TFrm_Ace.cr_0912Click(Sender: TObject);
begin
If cr_0912.Checked then
   begin
   cr_0912.Checked:=False;
   face01ba(cr_0912.name);
   end
else
   begin
   cr_0912.Checked:=True;
   face01la(cr_0912.Name);
   end;



end;

procedure TFrm_Ace.mloc_0106Click(Sender: TObject);
begin
If mloc_0106.Checked then
   begin
   mloc_0106.Checked:=False;
   face01ba(mloc_0106.name);
   end
else
   begin
   mloc_0106.Checked:=True;
   face01la(mloc_0106.Name);
   end;


end;

procedure TFrm_Ace.mloc_0109Click(Sender: TObject);
begin
If mloc_0109.Checked then
   begin
   mloc_0109.Checked:=False;
   face01ba(mloc_0109.name);
   end
else
   begin
   mloc_0109.Checked:=True;
   face01la(mloc_0109.Name);
   end;


end;

procedure TFrm_Ace.est_0115Click(Sender: TObject);
begin
If est_0115.Checked then
   begin
   est_0115.Checked:=False;
   face01ba(est_0115.name);
   end
else
   begin
   est_0115.Checked:=True;
   face01la(est_0115.Name);
   end;


end;

procedure TFrm_Ace.rger_0224Click(Sender: TObject);
begin
If rger_0224.Checked then
   begin
   rger_0224.Checked:=False;
   face01ba(rger_0224.name);
   end
else
   begin
   rger_0224.Checked:=True;
   face01la(rger_0224.Name);
   end;


end;

procedure TFrm_Ace.mcli_0118Click(Sender: TObject);
begin
If mcli_0118.Checked then
   begin
   mcli_0118.Checked:=False;
   face01ba(mcli_0118.name);
   end
else
   begin
   mcli_0118.Checked:=True;
   face01la(mcli_0118.Name);
   end;


end;

procedure TFrm_Ace.mcli_0121Click(Sender: TObject);
begin
If mcli_0121.Checked then
   begin
   mcli_0121.Checked:=False;
   face01ba(mcli_0121.name);
   end
else
   begin
   mcli_0121.Checked:=True;
   face01la(mcli_0121.Name);
   end;

end;

procedure TFrm_Ace.sis_0612Click(Sender: TObject);
begin
If sis_0612.Checked then
   begin
   sis_0612.Checked:=False;
   face01ba(sis_0612.name);
   end
else
   begin
   sis_0612.Checked:=True;
   face01la(sis_0612.Name);
   end;
end;

procedure TFrm_Ace.sis0615Click(Sender: TObject);
begin
If sis0615.Checked then
   begin
   sis0615.Checked:=False;
   face01ba(sis0615.name);
   end
else
   begin
   sis0615.Checked:=True;
   face01la(sis0615.Name);
   end;

end;

procedure TFrm_Ace.sis0618Click(Sender: TObject);
begin
If sis0618.Checked then
   begin
   sis0618.Checked:=False;
   face01ba(sis0618.name);
   end
else
   begin
   sis0618.Checked:=True;
   face01la(sis0618.Name);
   end;

end;

procedure TFrm_Ace.sis0621Click(Sender: TObject);
begin
If sis0621.Checked then
   begin
   sis0621.Checked:=False;
   face01ba(sis0621.name);
   end
else
   begin
   sis0621.Checked:=True;
   face01la(sis0621.Name);
   end;

end;

procedure TFrm_Ace.sis0624Click(Sender: TObject);
begin
If sis0624.Checked then
   begin
   sis0624.Checked:=False;
   face01ba(sis0624.name);
   end
else
   begin
   sis0624.Checked:=True;
   face01la(sis0624.Name);
   end;

end;

procedure TFrm_Ace.sis0627Click(Sender: TObject);
begin
If sis0627.Checked then
   begin
   sis0627.Checked:=False;
   face01ba(sis0627.name);
   end
else
   begin
   sis0627.Checked:=True;
   face01la(sis0627.Name);
   end;

end;

procedure TFrm_Ace.mcli_0124Click(Sender: TObject);
begin
If mcli_0124.Checked then
   begin
   mcli_0124.Checked:=False;
   face01ba(mcli_0124.name);
   end
else
   begin
   mcli_0124.Checked:=True;
   face01la(mcli_0124.Name);
   end;


end;

procedure TFrm_Ace.mpro_0145Click(Sender: TObject);
begin
If mpro_0145.Checked then
   begin
   mpro_0145.Checked:=False;
   face01ba(mpro_0145.name);
   end
else
   begin
   mpro_0145.Checked:=True;
   face01la(mpro_0145.Name);
   end;

end;

procedure TFrm_Ace.rger_0227Click(Sender: TObject);
begin
If rger_0227.Checked then
   begin
   rger_0227.Checked:=False;
   face01ba(rger_0227.name);
   end
else
   begin
   rger_0227.Checked:=True;
   face01la(rger_0227.Name);
   end;


end;

procedure TFrm_Ace.rcr_0115Click(Sender: TObject);
begin
If rcr_0115.Checked then
   begin
   rcr_0115.Checked:=False;
   face01ba(rcr_0115.name);
   end
else
   begin
   rcr_0115.Checked:=True;
   face01la(rcr_0115.Name);
   end;

end;

procedure TFrm_Ace.sis_0630Click(Sender: TObject);
begin
If sis_0630.Checked then
   begin
   sis_0630.Checked:=False;
   face01ba(sis_0630.name);
   end
else
   begin
   sis_0630.Checked:=True;
   face01la(sis_0630.Name);
   end;

end;

procedure TFrm_Ace.rpro_0118Click(Sender: TObject);
begin
If rpro_0118.Checked then
   begin
   rpro_0118.Checked:=False;
   face01ba(rpro_0118.name);
   end
else
   begin
   rpro_0118.Checked:=True;
   face01la(rpro_0118.Name);
   end;

end;

procedure TFrm_Ace.mdiv_0109Click(Sender: TObject);
begin
If mdiv_0109.Checked then
   begin
   mdiv_0109.Checked:=False;
   face01ba(mdiv_0109.name);
   end
else
   begin
   mdiv_0109.Checked:=True;
   face01la(mdiv_0109.Name);
   end;


end;

procedure TFrm_Ace.cr_0218Click(Sender: TObject);
begin
If cr_0218.Checked then
   begin
   cr_0218.Checked:=False;
   face01ba(cr_0218.name);
   end
else
   begin
   cr_0218.Checked:=True;
   face01la(cr_0218.Name);
   end;


end;

procedure TFrm_Ace.cr_0221Click(Sender: TObject);
begin
If cr_0221.Checked then
   begin
   cr_0221.Checked:=False;
   face01ba(cr_0221.name);
   end
else
   begin
   cr_0221.Checked:=True;
   face01la(cr_0221.Name);
   end;


end;

procedure TFrm_Ace.mfol_0103Click(Sender: TObject);
begin
If mfol_0103.Checked then
   begin
   mfol_0103.Checked:=False;
   face01ba(mfol_0103.name);
   end
else
   begin
   mfol_0103.Checked:=True;
   face01la(mfol_0103.Name);
   end;


end;

procedure TFrm_Ace.mfol_0106Click(Sender: TObject);
begin
If mfol_0106.Checked then
   begin
   mfol_0106.Checked:=False;
   face01ba(mfol_0106.name);
   end
else
   begin
   mfol_0106.Checked:=True;
   face01la(mfol_0106.Name);
   end;


end;

procedure TFrm_Ace.mfol_0109Click(Sender: TObject);
begin
If mfol_0109.Checked then
   begin
   mfol_0109.Checked:=False;
   face01ba(mfol_0109.name);
   end
else
   begin
   mfol_0109.Checked:=True;
   face01la(mfol_0109.Name);
   end;


end;

procedure TFrm_Ace.mfol_0115Click(Sender: TObject);
begin
If mfol_0115.Checked then
   begin
   mfol_0115.Checked:=False;
   face01ba(mfol_0115.name);
   end
else
   begin
   mfol_0115.Checked:=True;
   face01la(mfol_0115.Name);
   end;


end;

procedure TFrm_Ace.mfol_0118Click(Sender: TObject);
begin
If mfol_0118.Checked then
   begin
   mfol_0118.Checked:=False;
   face01ba(mfol_0118.name);
   end
else
   begin
   mfol_0118.Checked:=True;
   face01la(mfol_0118.Name);
   end;


end;

procedure TFrm_Ace.mfol_0121Click(Sender: TObject);
begin
If mfol_0121.Checked then
   begin
   mfol_0121.Checked:=False;
   face01ba(mfol_0121.name);
   end
else
   begin
   mfol_0121.Checked:=True;
   face01la(mfol_0121.Name);
   end;


end;

procedure TFrm_Ace.mfol_0124Click(Sender: TObject);
begin
If mfol_0124.Checked then
   begin
   mfol_0124.Checked:=False;
   face01ba(mfol_0124.name);
   end
else
   begin
   mfol_0124.Checked:=True;
   face01la(mfol_0124.Name);
   end;


end;

procedure TFrm_Ace.mfol_0127Click(Sender: TObject);
begin
If mfol_0127.Checked then
   begin
   mfol_0127.Checked:=False;
   face01ba(mfol_0127.name);
   end
else
   begin
   mfol_0127.Checked:=True;
   face01la(mfol_0127.Name);
   end;

end;

procedure TFrm_Ace.sis0630Click(Sender: TObject);
begin
If sis0630.Checked then
   begin
   sis0630.Checked:=False;
   face01ba(sis0630.name);
   end
else
   begin
   sis0630.Checked:=True;
   face01la(sis0630.Name);
   end;

end;

procedure TFrm_Ace.sis0633Click(Sender: TObject);
begin
If sis0633.Checked then
   begin
   sis0633.Checked:=False;
   face01ba(sis0633.name);
   end
else
   begin
   sis0633.Checked:=True;
   face01la(sis0633.Name);
   end;


end;

procedure TFrm_Ace.rpro_0121Click(Sender: TObject);
begin
If rpro_0121.Checked then
   begin
   rpro_0121.Checked:=False;
   face01ba(rpro_0121.name);
   end
else
   begin
   rpro_0121.Checked:=True;
   face01la(rpro_0121.Name);
   end;


end;

procedure TFrm_Ace.sai_0121Click(Sender: TObject);
begin
If sai_0121.Checked then
   begin
   sai_0121.Checked:=False;
   face01ba(sai_0121.name);
   end
else
   begin
   sai_0121.Checked:=True;
   face01la(sai_0121.Name);
   end;
end;

procedure TFrm_Ace.mind_0106Click(Sender: TObject);
begin
If mind_0106.Checked then
   begin
   mind_0106.Checked:=False;
   face01ba(mind_0106.name);
   end
else
   begin
   mind_0106.Checked:=True;
   face01la(mind_0106.Name);
   end;


end;

procedure TFrm_Ace.mind_0109Click(Sender: TObject);
begin
If mind_0109.Checked then
   begin
   mind_0109.Checked:=False;
   face01ba(mind_0109.name);
   end
else
   begin
   mind_0109.Checked:=True;
   face01la(mind_0109.Name);
   end;


end;

procedure TFrm_Ace.mind_0112Click(Sender: TObject);
begin
If mind_0112.Checked then
   begin
   mind_0112.Checked:=False;
   face01ba(mind_0112.name);
   end
else
   begin
   mind_0112.Checked:=True;
   face01la(mind_0112.Name);
   end;



end;

procedure TFrm_Ace.cr_0915Click(Sender: TObject);
begin
If cr_0915.Checked then
   begin
   cr_0915.Checked:=False;
   face01ba(cr_0915.name);
   end
else
   begin
   cr_0915.Checked:=True;
   face01la(cr_0915.Name);
   end;


end;

procedure TFrm_Ace.sis0636Click(Sender: TObject);
begin
If sis0636.Checked then
   begin
   sis0636.Checked:=False;
   face01ba(sis0636.name);
   end
else
   begin
   sis0636.Checked:=True;
   face01la(sis0636.Name);
   end;


end;

procedure TFrm_Ace.mcai_0115Click(Sender: TObject);
begin
If mcai_0115.Checked then
   begin
   mcai_0115.Checked:=False;
   face01ba(mcai_0115.name);
   end
else
   begin
   mcai_0115.Checked:=True;
   face01la(mcai_0115.Name);
   end;


end;

procedure TFrm_Ace.mpro_0148Click(Sender: TObject);
begin
If mpro_0148.Checked then
   begin
   mpro_0148.Checked:=False;
   face01ba(mpro_0148.name);
   end
else
   begin
   mpro_0148.Checked:=True;
   face01la(mpro_0148.Name);
   end;


end;

procedure TFrm_Ace.rpro_0127Click(Sender: TObject);
begin
If rpro_0127.Checked then
   begin
   rpro_0127.Checked:=False;
   face01ba(rpro_0127.name);
   end
else
   begin
   rpro_0127.Checked:=True;
   face01la(rpro_0127.Name);
   end;


end;

procedure TFrm_Ace.rpro_0130Click(Sender: TObject);
begin
If rpro_0130.Checked then
   begin
   rpro_0130.Checked:=False;
   face01ba(rpro_0130.name);
   end
else
   begin
   rpro_0130.Checked:=True;
   face01la(rpro_0130.Name);
   end;


end;

procedure TFrm_Ace.BitBtn3Click(Sender: TObject);
begin
testeform := TFrm_Ace(FindGlobalComponent('frm_actab'));
if (testeform=nil)  then
   Application.Createform(TFrm_AcTab, Frm_AcTab);
Frm_AcTab.Panel1.Caption:='Cargo: '+FormatFloat('00000',Cargo)+' '+Trim(DM1.Tb_FuncaoNOMCAR.Value);
if Frm_AcTab.WindowState=wsMinimized then
   Frm_AcTab.WindowState:=wsNormal
else
   Frm_AcTab.Show;
end;


procedure TFrm_Ace.rpro_0133Click(Sender: TObject);
begin
If rpro_0133.Checked then
   begin
   rpro_0133.Checked:=False;
   face01ba(rpro_0133.name);
   end
else
   begin
   rpro_0133.Checked:=True;
   face01la(rpro_0133.Name);
   end;


end;

procedure TFrm_Ace.sai_0127Click(Sender: TObject);
begin
If sai_0127.Checked then
   begin
   sai_0127.Checked:=False;
   face01ba(sai_0127.name);
   end
else
   begin
   sai_0127.Checked:=True;
   face01la(sai_0127.Name);
   end;
end;

procedure TFrm_Ace.sis_0633Click(Sender: TObject);
begin
If sis_0633.Checked then
   begin
   sis_0633.Checked:=False;
   face01ba(sis_0633.name);
   end
else
   begin
   sis_0633.Checked:=True;
   face01la(sis_0633.Name);
   end;


end;

procedure TFrm_Ace.sis_0636Click(Sender: TObject);
begin
If sis_0636.Checked then
   begin
   sis_0636.Checked:=False;
   face01ba(sis_0636.name);
   end
else
   begin
   sis_0636.Checked:=True;
   face01la(sis_0636.Name);
   end;


end;

procedure TFrm_Ace.sis_0639Click(Sender: TObject);
begin
If sis_0639.Checked then
   begin
   sis_0639.Checked:=False;
   face01ba(sis_0639.name);
   end
else
   begin
   sis_0639.Checked:=True;
   face01la(sis_0639.Name);
   end;


end;

procedure TFrm_Ace.sis_0642Click(Sender: TObject);
begin
If sis_0642.Checked then
   begin
   sis_0642.Checked:=False;
   face01ba(sis_0642.name);
   end
else
   begin
   sis_0642.Checked:=True;
   face01la(sis_0642.Name);
   end;


end;

procedure TFrm_Ace.rfor_0106Click(Sender: TObject);
begin
If rfor_0106.Checked then
   begin
   rfor_0106.Checked:=False;
   face01ba(rfor_0106.name);
   end
else
   begin
   rfor_0106.Checked:=True;
   face01la(rfor_0106.Name);
   end;


end;

procedure TFrm_Ace.rfor_0109Click(Sender: TObject);
begin
If rfor_0109.Checked then
   begin
   rfor_0109.Checked:=False;
   face01ba(rfor_0109.name);
   end
else
   begin
   rfor_0109.Checked:=True;
   face01la(rfor_0109.Name);
   end;


end;

procedure TFrm_Ace.rfor_0112Click(Sender: TObject);
begin
If rfor_0112.Checked then
   begin
   rfor_0112.Checked:=False;
   face01ba(rfor_0112.name);
   end
else
   begin
   rfor_0112.Checked:=True;
   face01la(rfor_0112.Name);
   end;


end;

procedure TFrm_Ace.rfor_0115Click(Sender: TObject);
begin
If rfor_0115.Checked then
   begin
   rfor_0115.Checked:=False;
   face01ba(rfor_0115.name);
   end
else
   begin
   rfor_0115.Checked:=True;
   face01la(rfor_0115.Name);
   end;


end;

procedure TFrm_Ace.rger_0230Click(Sender: TObject);
begin
If rger_0230.Checked then
   begin
   rger_0230.Checked:=False;
   face01ba(rger_0230.name);
   end
else
   begin
   rger_0230.Checked:=True;
   face01la(rger_0230.Name);
   end;

end;

procedure TFrm_Ace.rest_0106Click(Sender: TObject);
begin
If rest_0106.Checked then
   begin
   rest_0106.Checked:=False;
   face01ba(rest_0106.name);
   end
else
   begin
   rest_0106.Checked:=True;
   face01la(rest_0106.Name);
   end;


end;

procedure TFrm_Ace.rest_0109Click(Sender: TObject);
begin
If rest_0109.Checked then
   begin
   rest_0109.Checked:=False;
   face01ba(rest_0109.name);
   end
else
   begin
   rest_0109.Checked:=True;
   face01la(rest_0109.Name);
   end;


end;

procedure TFrm_Ace.rest_0112Click(Sender: TObject);
begin
If rest_0112.Checked then
   begin
   rest_0112.Checked:=False;
   face01ba(rest_0112.name);
   end
else
   begin
   rest_0112.Checked:=True;
   face01la(rest_0112.Name);
   end;


end;

procedure TFrm_Ace.rest_0115Click(Sender: TObject);
begin
If rest_0115.Checked then
   begin
   rest_0115.Checked:=False;
   face01ba(rest_0115.name);
   end
else
   begin
   rest_0115.Checked:=True;
   face01la(rest_0115.Name);
   end;


end;

procedure TFrm_Ace.rcli_0115Click(Sender: TObject);
begin
If rcli_0115.Checked then
   begin
   rcli_0115.Checked:=False;
   face01ba(rcli_0115.name);
   end
else
   begin
   rcli_0115.Checked:=True;
   face01la(rcli_0115.Name);
   end;


end;

procedure TFrm_Ace.rtpro_0106Click(Sender: TObject);
begin
If rtpro_0106.Checked then
   begin
   rtpro_0106.Checked:=False;
   face01ba(rtpro_0106.name);
   end
else
   begin
   rtpro_0106.Checked:=True;
   face01la(rtpro_0106.Name);
   end;


end;

procedure TFrm_Ace.rtpro_0109Click(Sender: TObject);
begin
If rtpro_0109.Checked then
   begin
   rtpro_0109.Checked:=False;
   face01ba(rtpro_0109.name);
   end
else
   begin
   rtpro_0109.Checked:=True;
   face01la(rtpro_0109.Name);
   end;


end;

procedure TFrm_Ace.rtpro_0112Click(Sender: TObject);
begin
If rtpro_0112.Checked then
   begin
   rtpro_0112.Checked:=False;
   face01ba(rtpro_0112.name);
   end
else
   begin
   rtpro_0112.Checked:=True;
   face01la(rtpro_0112.Name);
   end;


end;

procedure TFrm_Ace.rtpro_0115Click(Sender: TObject);
begin
If rtpro_0115.Checked then
   begin
   rtpro_0115.Checked:=False;
   face01ba(rtpro_0115.name);
   end
else
   begin
   rtpro_0115.Checked:=True;
   face01la(rtpro_0115.Name);
   end;


end;

procedure TFrm_Ace.rgpro_0106Click(Sender: TObject);
begin
If rgpro_0106.Checked then
   begin
   rgpro_0106.Checked:=False;
   face01ba(rgpro_0106.name);
   end
else
   begin
   rgpro_0106.Checked:=True;
   face01la(rgpro_0106.Name);
   end;

end;

procedure TFrm_Ace.rgpro_0109Click(Sender: TObject);
begin
If rgpro_0109.Checked then
   begin
   rgpro_0109.Checked:=False;
   face01ba(rgpro_0109.name);
   end
else
   begin
   rgpro_0109.Checked:=True;
   face01la(rgpro_0109.Name);
   end;

end;

procedure TFrm_Ace.rgpro_0112Click(Sender: TObject);
begin
If rgpro_0112.Checked then
   begin
   rgpro_0112.Checked:=False;
   face01ba(rgpro_0112.name);
   end
else
   begin
   rgpro_0112.Checked:=True;
   face01la(rgpro_0112.Name);
   end;

end;

procedure TFrm_Ace.rgpro_0115Click(Sender: TObject);
begin
If rgpro_0115.Checked then
   begin
   rgpro_0115.Checked:=False;
   face01ba(rgpro_0115.name);
   end
else
   begin
   rgpro_0115.Checked:=True;
   face01la(rgpro_0115.Name);
   end;

end;

procedure TFrm_Ace.rrpro_0103Click(Sender: TObject);
begin
If rrpro_0103.Checked then
   begin
   rrpro_0103.Checked:=False;
   face01ba(rrpro_0103.name);
   end
else
   begin
   rrpro_0103.Checked:=True;
   face01la(rrpro_0103.Name);
   end;

end;

procedure TFrm_Ace.est_0103Click(Sender: TObject);
begin
If est_0103.Checked then
   begin
   est_0103.Checked:=False;
   face01ba(est_0103.name);
   end
else
   begin
   est_0103.Checked:=True;
   face01la(est_0103.Name);
   end;

end;

procedure TFrm_Ace.est_0106Click(Sender: TObject);
begin
If est_0106.Checked then
   begin
   est_0106.Checked:=False;
   face01ba(est_0106.name);
   end
else
   begin
   est_0106.Checked:=True;
   face01la(est_0106.Name);
   end;

end;

procedure TFrm_Ace.est_0112Click(Sender: TObject);
begin
If est_0112.Checked then
   begin
   est_0112.Checked:=False;
   face01ba(est_0112.name);
   end
else
   begin
   est_0112.Checked:=True;
   face01la(est_0112.Name);
   end;

end;

procedure TFrm_Ace.est_0118Click(Sender: TObject);
begin
If est_0118.Checked then
   begin
   est_0118.Checked:=False;
   face01ba(est_0118.name);
   end
else
   begin
   est_0118.Checked:=True;
   face01la(est_0118.Name);
   end;

end;

procedure TFrm_Ace.est_0121Click(Sender: TObject);
begin
If est_0121.Checked then
   begin
   est_0121.Checked:=False;
   face01ba(est_0112.name);
   end
else
   begin
   est_0121.Checked:=True;
   face01la(est_0121.Name);
   end;

end;

procedure TFrm_Ace.est_0109Click(Sender: TObject);
begin
If est_0109.Checked then
   begin
   est_0109.Checked:=False;
   face01ba(est_0109.name);
   end
else
   begin
   est_0109.Checked:=True;
   face01la(est_0109.Name);
   end;

end;

procedure TFrm_Ace.est_0124Click(Sender: TObject);
begin
If est_0124.Checked then
   begin
   est_0124.Checked:=False;
   face01ba(est_0124.name);
   end
else
   begin
   est_0124.Checked:=True;
   face01la(est_0124.Name);
   end;

end;

procedure TFrm_Ace.est_0127Click(Sender: TObject);
begin
If est_0127.Checked then
   begin
   est_0127.Checked:=False;
   face01ba(est_0127.name);
   end
else
   begin
   est_0127.Checked:=True;
   face01la(est_0127.Name);
   end;


end;

procedure TFrm_Ace.est_0130Click(Sender: TObject);
begin
If est_0130.Checked then
   begin
   est_0130.Checked:=False;
   face01ba(est_0130.name);
   end
else
   begin
   est_0130.Checked:=True;
   face01la(est_0130.Name);
   end;


end;

procedure TFrm_Ace.est_0133Click(Sender: TObject);
begin
If est_0133.Checked then
   begin
   est_0133.Checked:=False;
   face01ba(est_0133.name);
   end
else
   begin
   est_0133.Checked:=True;
   face01la(est_0133.Name);
   end;


end;

procedure TFrm_Ace.est_0136Click(Sender: TObject);
begin
If est_0136.Checked then
   begin
   est_0136.Checked:=False;
   face01ba(est_0136.name);
   end
else
   begin
   est_0136.Checked:=True;
   face01la(est_0136.Name);
   end;


end;

procedure TFrm_Ace.est_0139Click(Sender: TObject);
begin
If est_0139.Checked then
   begin
   est_0139.Checked:=False;
   face01ba(est_0139.name);
   end
else
   begin
   est_0139.Checked:=True;
   face01la(est_0139.Name);
   end;



end;

procedure TFrm_Ace.est_0142Click(Sender: TObject);
begin
If est_0142.Checked then
   begin
   est_0142.Checked:=False;
   face01ba(est_0142.name);
   end
else
   begin
   est_0142.Checked:=True;
   face01la(est_0142.Name);
   end;


end;

procedure TFrm_Ace.est_0145Click(Sender: TObject);
begin
If est_0145.Checked then
   begin
   est_0145.Checked:=False;
   face01ba(est_0145.name);
   end
else
   begin
   est_0145.Checked:=True;
   face01la(est_0145.Name);
   end;


end;

procedure TFrm_Ace.est_0148Click(Sender: TObject);
begin
If est_0148.Checked then
   begin
   est_0148.Checked:=False;
   face01ba(est_0148.name);
   end
else
   begin
   est_0148.Checked:=True;
   face01la(est_0148.Name);
   end;


end;

procedure TFrm_Ace.est_0151Click(Sender: TObject);
begin
If est_0151.Checked then
   begin
   est_0151.Checked:=False;
   face01ba(est_0151.name);
   end
else
   begin
   est_0151.Checked:=True;
   face01la(est_0151.Name);
   end;


end;

procedure TFrm_Ace.est_0154Click(Sender: TObject);
begin
If est_0154.Checked then
   begin
   est_0154.Checked:=False;
   face01ba(est_0154.name);
   end
else
   begin
   est_0154.Checked:=True;
   face01la(est_0154.Name);
   end;


end;

procedure TFrm_Ace.est_0157Click(Sender: TObject);
begin
If est_0157.Checked then
   begin
   est_0157.Checked:=False;
   face01ba(est_0157.name);
   end
else
   begin
   est_0157.Checked:=True;
   face01la(est_0157.Name);
   end;

end;

procedure TFrm_Ace.est_0160Click(Sender: TObject);
begin
If est_0160.Checked then
   begin
   est_0160.Checked:=False;
   face01ba(est_0160.name);
   end
else
   begin
   est_0160.Checked:=True;
   face01la(est_0160.Name);
   end;

end;

procedure TFrm_Ace.est_0163Click(Sender: TObject);
begin
If est_0163.Checked then
   begin
   est_0163.Checked:=False;
   face01ba(est_0163.name);
   end
else
   begin
   est_0163.Checked:=True;
   face01la(est_0163.Name);
   end;

end;

procedure TFrm_Ace.est_0166Click(Sender: TObject);
begin
If est_0166.Checked then
   begin
   est_0166.Checked:=False;
   face01ba(est_0166.name);
   end
else
   begin
   est_0166.Checked:=True;
   face01la(est_0166.Name);
   end;

end;

procedure TFrm_Ace.rcli_0118Click(Sender: TObject);
begin
If rcli_0118.Checked then
   begin
   rcli_0118.Checked:=False;
   face01ba(rcli_0118.name);
   end
else
   begin
   rcli_0118.Checked:=True;
   face01la(rcli_0118.Name);
   end;


end;

procedure TFrm_Ace.mcai_0118Click(Sender: TObject);
begin
If mcai_0118.Checked then
   begin
   mcai_0118.Checked:=False;
   face01ba(mcai_0118.name);
   end
else
   begin
   mcai_0118.Checked:=True;
   face01la(mcai_0118.Name);
   end;

end;

procedure TFrm_Ace.lf_0124Click(Sender: TObject);
begin
If lf_0124.Checked then
   begin
   lf_0124.Checked:=False;
   face01ba(lf_0124.name);
   end
else
   begin
   lf_0124.Checked:=True;
   face01la(lf_0124.Name);
   end;


end;

procedure TFrm_Ace.mpro_0151Click(Sender: TObject);
begin
If mpro_0151.Checked then
   begin
   mpro_0151.Checked:=False;
   face01ba(mpro_0151.name);
   end
else
   begin
   mpro_0151.Checked:=True;
   face01la(mpro_0151.Name);
   end;


end;

procedure TFrm_Ace.mcai_0121Click(Sender: TObject);
begin
If mcai_0121.Checked then
   begin
   mcai_0121.Checked:=False;
   face01ba(mcai_0121.name);
   end
else
   begin
   mcai_0121.Checked:=True;
   face01la(mcai_0121.Name);
   end;


end;

procedure TFrm_Ace.rger_0233Click(Sender: TObject);
begin
If rger_0233.Checked then
   begin
   rger_0233.Checked:=False;
   face01ba(rger_0233.name);
   end
else
   begin
   rger_0233.Checked:=True;
   face01la(rger_0233.Name);
   end;

end;

procedure TFrm_Ace.rger_0236Click(Sender: TObject);
begin
If rger_0236.Checked then
   begin
   rger_0236.Checked:=False;
   face01ba(rger_0236.name);
   end
else
   begin
   rger_0236.Checked:=True;
   face01la(rger_0236.Name);
   end;

end;

procedure TFrm_Ace.sis_0645Click(Sender: TObject);
begin
If sis_0645.Checked then
   begin
   sis_0645.Checked:=False;
   face01ba(sis_0645.name);
   end
else
   begin
   sis_0645.Checked:=True;
   face01la(sis_0645.Name);
   end;


end;

procedure TFrm_Ace.sis_0648Click(Sender: TObject);
begin
If sis_0648.Checked then
   begin
   sis_0648.Checked:=False;
   face01ba(sis_0648.name);
   end
else
   begin
   sis_0648.Checked:=True;
   face01la(sis_0648.Name);
   end;


end;

procedure TFrm_Ace.rger_0239Click(Sender: TObject);
begin
If rger_0239.Checked then
   begin
   rger_0239.Checked:=False;
   face01ba(rger_0239.name);
   end
else
   begin
   rger_0239.Checked:=True;
   face01la(rger_0239.Name);
   end;


end;

procedure TFrm_Ace.rger_0242Click(Sender: TObject);
begin
If rger_0242.Checked then
   begin
   rger_0242.Checked:=False;
   face01ba(rger_0242.name);
   end
else
   begin
   rger_0242.Checked:=True;
   face01la(rger_0242.Name);
   end;


end;

procedure TFrm_Ace.cr_0918Click(Sender: TObject);
begin
If cr_0918.Checked then
   begin
   cr_0918.Checked:=False;
   face01ba(cr_0918.name);
   end
else
   begin
   cr_0918.Checked:=True;
   face01la(cr_0918.Name);
   end;
end;

procedure TFrm_Ace.rger_0245Click(Sender: TObject);
begin
If rger_0245.Checked then
   begin
   rger_0245.Checked:=False;
   face01ba(rger_0245.name);
   end
else
   begin
   rger_0245.Checked:=True;
   face01la(rger_0245.Name);
   end;


end;

procedure TFrm_Ace.mcai_0124Click(Sender: TObject);
begin
If mcai_0124.Checked then
   begin
   mcai_0124.Checked:=False;
   face01ba(mcai_0124.name);
   end
else
   begin
   mcai_0124.Checked:=True;
   face01la(mcai_0124.Name);
   end;


end;

procedure TFrm_Ace.sis_0615Click(Sender: TObject);
begin
If sis_0615.Checked then
   begin
   sis_0615.Checked:=False;
   face01ba(sis_0615.name);
   end
else
   begin
   sis_0615.Checked:=True;
   face01la(sis_0615.Name);
   end;
end;

procedure TFrm_Ace.sis_0651Click(Sender: TObject);
begin
If sis_0651.Checked then
   begin
   sis_0651.Checked:=False;
   face01ba(sis_0651.name);
   end
else
   begin
   sis_0651.Checked:=True;
   face01la(sis_0651.Name);
   end;


end;

procedure TFrm_Ace.rsai_0106Click(Sender: TObject);
begin
If rsai_0106.Checked then
   begin
   rsai_0106.Checked:=False;
   face01ba(rsai_0106.name);
   end
else
   begin
   rsai_0106.Checked:=True;
   face01la(rsai_0106.Name);
   end;
end;

procedure TFrm_Ace.rpro_0136Click(Sender: TObject);
begin
If rpro_0136.Checked then
   begin
   rpro_0136.Checked:=False;
   face01ba(rpro_0136.name);
   end
else
   begin
   rpro_0136.Checked:=True;
   face01la(rpro_0136.Name);
   end;


end;

procedure TFrm_Ace.rpro_0139Click(Sender: TObject);
begin
If rpro_0139.Checked then
   begin
   rpro_0139.Checked:=False;
   face01ba(rpro_0139.name);
   end
else
   begin
   rpro_0139.Checked:=True;
   face01la(rpro_0139.Name);
   end;


end;

procedure TFrm_Ace.rpro_0142Click(Sender: TObject);
begin
If rpro_0142.Checked then
   begin
   rpro_0142.Checked:=False;
   face01ba(rpro_0142.name);
   end
else
   begin
   rpro_0142.Checked:=True;
   face01la(rpro_0142.Name);
   end;


end;

procedure TFrm_Ace.rpro_0145Click(Sender: TObject);
begin
If rpro_0145.Checked then
   begin
   rpro_0145.Checked:=False;
   face01ba(rpro_0145.name);
   end
else
   begin
   rpro_0145.Checked:=True;
   face01la(rpro_0145.Name);
   end;


end;

procedure TFrm_Ace.rpro_0148Click(Sender: TObject);
begin
If rpro_0148.Checked then
   begin
   rpro_0148.Checked:=False;
   face01ba(rpro_0148.name);
   end
else
   begin
   rpro_0148.Checked:=True;
   face01la(rpro_0148.Name);
   end;


end;

procedure TFrm_Ace.mcli_0130Click(Sender: TObject);
begin
If mcli_0130.Checked then
   begin
   mcli_0130.Checked:=False;
   face01ba(mcli_0130.name);
   end
else
   begin
   mcli_0130.Checked:=True;
   face01la(mcli_0130.Name);
   end;


end;

procedure TFrm_Ace.rpro_0151Click(Sender: TObject);
begin
If rpro_0151.Checked then
   begin
   rpro_0151.Checked:=False;
   face01ba(rpro_0151.name);
   end
else
   begin
   rpro_0151.Checked:=True;
   face01la(rpro_0151.Name);
   end;


end;

procedure TFrm_Ace.sai_0133Click(Sender: TObject);
begin
If sai_0133.Checked then
   begin
   sai_0133.Checked:=False;
   face01ba(sai_0133.name);
   end
else
   begin
   sai_0133.Checked:=True;
   face01la(sai_0133.Name);
   end;


end;

procedure TFrm_Ace.rpro_0154Click(Sender: TObject);
begin
If rpro_0154.Checked then
   begin
   rpro_0154.Checked:=False;
   face01ba(rpro_0154.name);
   end
else
   begin
   rpro_0154.Checked:=True;
   face01la(rpro_0154.Name);
   end;


end;

procedure TFrm_Ace.mpro_0206Click(Sender: TObject);
begin
If mpro_0206.Checked then
   begin
   mpro_0206.Checked:=False;
   face01ba(mpro_0206.name);
   end
else
   begin
   mpro_0206.Checked:=True;
   face01la(mpro_0206.Name);
   end;


end;

procedure TFrm_Ace.sis_0112Click(Sender: TObject);
begin
If sis_0112.Checked then
   begin
   sis_0112.Checked:=False;
   face01ba(sis_0112.name);
   end
else
   begin
   sis_0112.Checked:=True;
   face01la(sis_0112.Name);
   end;

end;

procedure TFrm_Ace.sis_0114Click(Sender: TObject);
begin
If sis_0114.Checked then
   begin
   sis_0114.Checked:=False;
   face01ba(sis_0114.name);
   end
else
   begin
   sis_0114.Checked:=True;
   face01la(sis_0114.Name);
   end;


end;

procedure TFrm_Ace.sis_0654Click(Sender: TObject);
begin
If sis_0654.Checked then
   begin
   sis_0654.Checked:=False;
   face01ba(sis_0654.name);
   end
else
   begin
   sis_0654.Checked:=True;
   face01la(sis_0654.Name);
   end;


end;

procedure TFrm_Ace.rcli_0303Click(Sender: TObject);
begin
If rcli_0303.Checked then
   begin
   rcli_0303.Checked:=False;
   face01ba(rcli_0303.name);
   end
else
   begin
   rcli_0303.Checked:=True;
   face01la(rcli_0303.Name);
   end;


end;

procedure TFrm_Ace.rcli_0306Click(Sender: TObject);
begin
If rcli_0306.Checked then
   begin
   rcli_0306.Checked:=False;
   face01ba(rcli_0306.name);
   end
else
   begin
   rcli_0306.Checked:=True;
   face01la(rcli_0306.Name);
   end;


end;

procedure TFrm_Ace.sai_0136Click(Sender: TObject);
begin
If sai_0136.Checked then
   begin
   sai_0136.Checked:=False;
   face01ba(sai_0136.name);
   end
else
   begin
   sai_0136.Checked:=True;
   face01la(sai_0136.Name);
   end;


end;

procedure TFrm_Ace.sai_0139Click(Sender: TObject);
begin
If sai_0139.Checked then
   begin
   sai_0139.Checked:=False;
   face01ba(sai_0139.name);
   end
else
   begin
   sai_0139.Checked:=True;
   face01la(sai_0139.Name);
   end;


end;

procedure TFrm_Ace.sis_0657Click(Sender: TObject);
begin
If sis_0657.Checked then
   begin
   sis_0657.Checked:=False;
   face01ba(sis_0657.name);
   end
else
   begin
   sis_0657.Checked:=True;
   face01la(sis_0657.Name);
   end;



end;

procedure TFrm_Ace.cr_0315Click(Sender: TObject);
begin
If cr_0315.Checked then
   begin
   cr_0315.Checked:=False;
   face01ba(cr_0315.name);
   end
else
   begin
   cr_0315.Checked:=True;
   face01la(cr_0315.Name);
   end;

end;

procedure TFrm_Ace.sis_0117Click(Sender: TObject);
begin
If sis_0117.Checked then
   begin
   sis_0117.Checked:=False;
   face01ba(sis_0117.name);
   end
else
   begin
   sis_0117.Checked:=True;
   face01la(sis_0117.Name);
   end;

end;

procedure TFrm_Ace.mind_0115Click(Sender: TObject);
begin
If mind_0115.Checked then
   begin
   mind_0115.Checked:=False;
   face01ba(mind_0115.name);
   end
else
   begin
   mind_0115.Checked:=True;
   face01la(mind_0115.Name);
   end;


end;

procedure TFrm_Ace.sis_0660Click(Sender: TObject);
begin
If sis_0660.Checked then
   begin
   sis_0660.Checked:=False;
   face01ba(sis_0660.name);
   end
else
   begin
   sis_0660.Checked:=True;
   face01la(sis_0660.Name);
   end;


end;

procedure TFrm_Ace.lf_0127Click(Sender: TObject);
begin
If lf_0127.Checked then
   begin
   lf_0127.Checked:=False;
   face01ba(lf_0127.name);
   end
else
   begin
   lf_0127.Checked:=True;
   face01la(lf_0127.Name);
   end;

end;

procedure TFrm_Ace.lf_0130Click(Sender: TObject);
begin
If lf_0130.Checked then
   begin
   lf_0130.Checked:=False;
   face01ba(lf_0130.name);
   end
else
   begin
   lf_0130.Checked:=True;
   face01la(lf_0130.Name);
   end;

end;

procedure TFrm_Ace.sai_0142Click(Sender: TObject);
begin
If sai_0142.Checked then
   begin
   sai_0142.Checked:=False;
   face01ba(sai_0142.name);
   end
else
   begin
   sai_0142.Checked:=True;
   face01la(sai_0142.Name);
   end;

end;

procedure TFrm_Ace.rpro_0157Click(Sender: TObject);
begin
If rpro_0157.Checked then
   begin
   rpro_0157.Checked:=False;
   face01ba(rpro_0157.name);
   end
else                             
   begin
   rpro_0157.Checked:=True;
   face01la(rpro_0157.Name);
   end;


end;

procedure TFrm_Ace.sis_0663Click(Sender: TObject);
begin
If sis_0663.Checked then
   begin
   sis_0663.Checked:=False;
   face01ba(sis_0663.name);
   end
else
   begin
   sis_0663.Checked:=True;
   face01la(sis_0663.Name);
   end;


end;

procedure TFrm_Ace.sis_0666Click(Sender: TObject);
begin
If sis_0666.Checked then
   begin
   sis_0666.Checked:=False;
   face01ba(sis_0666.name);
   end
else
   begin
   sis_0666.Checked:=True;
   face01la(sis_0666.Name);
   end;


end;

procedure TFrm_Ace.mfol_0133Click(Sender: TObject);
begin
If mfol_0133.Checked then
   begin
   mfol_0133.Checked:=False;
   face01ba(mfol_0133.name);
   end
else
   begin
   mfol_0133.Checked:=True;
   face01la(mfol_0133.Name);
   end;


end;

procedure TFrm_Ace.sis_0669Click(Sender: TObject);
begin
If sis_0669.Checked then
   begin
   sis_0669.Checked:=False;
   face01ba(sis_0669.name);
   end
else
   begin
   sis_0669.Checked:=True;
   face01la(sis_0669.Name);
   end;


end;

procedure TFrm_Ace.sis_0120Click(Sender: TObject);
begin
If sis_0120.Checked then
   begin
   sis_0120.Checked:=False;
   face01ba(sis_0120.name);
   end
else
   begin
   sis_0120.Checked:=True;
   face01la(sis_0120.Name);
   end;


end;

procedure TFrm_Ace.sis_0123Click(Sender: TObject);
begin
If sis_0123.Checked then
   begin
   sis_0123.Checked:=False;
   face01ba(sis_0123.name);
   end
else
   begin
   sis_0123.Checked:=True;
   face01la(sis_0123.Name);
   end;


end;

procedure TFrm_Ace.mpro_0154Click(Sender: TObject);
begin
If mpro_0154.Checked then
   begin
   mpro_0154.Checked:=False;
   face01ba(mpro_0154.name);
   end
else
   begin
   mpro_0154.Checked:=True;
   face01la(mpro_0154.Name);
   end;

end;

procedure TFrm_Ace.mpro_0127Click(Sender: TObject);
begin
If mpro_0127.Checked then
   begin
   mpro_0127.Checked:=False;
   face01ba(mpro_0127.name);
   end
else
   begin
   mpro_0127.Checked:=True;
   face01la(mpro_0127.Name);
   end;

end;

procedure TFrm_Ace.mpro_0128Click(Sender: TObject);
begin
If mpro_0128.Checked then
   begin
   mpro_0128.Checked:=False;
   face01ba(mpro_0128.name);
   end
else
   begin
   mpro_0128.Checked:=True;
   face01la(mpro_0128.Name);
   end;

end;

procedure TFrm_Ace.mpro_0129Click(Sender: TObject);
begin
If mpro_0129.Checked then
   begin
   mpro_0129.Checked:=False;
   face01ba(mpro_0129.name);
   end
else
   begin
   mpro_0129.Checked:=True;
   face01la(mpro_0129.Name);
   end;

end;

procedure TFrm_Ace.mcai_0127Click(Sender: TObject);
begin
If mcai_0127.Checked then
   begin
   mcai_0127.Checked:=False;
   face01ba(mcai_0127.name);
   end
else
   begin
   mcai_0127.Checked:=True;
   face01la(mcai_0127.Name);
   end;

end;

procedure TFrm_Ace.gnre0103Click(Sender: TObject);
begin
If GNRE0103.Checked then
   begin
   GNRE0103.Checked:=False;
   face01ba(GNRE0103.name);
   end
else
   begin
   GNRE0103.Checked:=True;
   face01la(GNRE0103.Name);
   end;


end;

procedure TFrm_Ace.lf_0133Click(Sender: TObject);
begin
If lf_0133.Checked then
   begin
   lf_0133.Checked:=False;
   face01ba(lf_0133.name);
   end
else
   begin
   lf_0133.Checked:=True;
   face01la(lf_0133.Name);
   end;

end;

procedure TFrm_Ace.rcpro_0103Click(Sender: TObject);
begin
If rcpro_0103.Checked then
   begin
   rcpro_0103.Checked:=False;
   face01ba(rcpro_0103.name);
   end
else
   begin
   rcpro_0103.Checked:=True;
   face01la(rcpro_0103.Name);
   end;

end;

procedure TFrm_Ace.rcpro_0106Click(Sender: TObject);
begin
If rcpro_0106.Checked then
   begin
   rcpro_0106.Checked:=False;
   face01ba(rcpro_0106.name);
   end
else
   begin
   rcpro_0106.Checked:=True;
   face01la(rcpro_0106.Name);
   end;

end;

procedure TFrm_Ace.rcpro_0109Click(Sender: TObject);
begin
If rcpro_0109.Checked then
   begin
   rcpro_0109.Checked:=False;
   face01ba(rcpro_0109.name);
   end
else
   begin
   rcpro_0109.Checked:=True;
   face01la(rcpro_0109.Name);
   end;

end;

procedure TFrm_Ace.rcpro_0112Click(Sender: TObject);
begin
If rcpro_0112.Checked then
   begin
   rcpro_0112.Checked:=False;
   face01ba(rcpro_0112.name);
   end
else
   begin
   rcpro_0112.Checked:=True;
   face01la(rcpro_0112.Name);
   end;

end;

procedure TFrm_Ace.rcpro_0115Click(Sender: TObject);
begin
If rcpro_0115.Checked then
   begin
   rcpro_0115.Checked:=False;
   face01ba(rcpro_0115.name);
   end
else
   begin
   rcpro_0115.Checked:=True;
   face01la(rcpro_0115.Name);
   end;

end;

procedure TFrm_Ace.mos_0103Click(Sender: TObject);
begin
If mos_0103.Checked then
   begin
   mos_0103.Checked:=False;
   face01ba(mos_0103.name);
   end
else
   begin
   mos_0103.Checked:=True;
   face01la(mos_0103.Name);
   end;


end;

procedure TFrm_Ace.mos_0106Click(Sender: TObject);
begin
If mos_0106.Checked then
   begin
   mos_0106.Checked:=False;
   face01ba(mos_0106.name);
   end
else
   begin
   mos_0106.Checked:=True;
   face01la(mos_0106.Name);
   end;

end;

procedure TFrm_Ace.sai_0124Click(Sender: TObject);
begin
If sai_0124.Checked then
   begin
   sai_0124.Checked:=False;
   face01ba(sai_0124.name);
   end
else
   begin
   sai_0124.Checked:=True;
   face01la(sai_0124.Name);
   end;

end;

procedure TFrm_Ace.mimo_0103Click(Sender: TObject);
begin
If mimo_0103.Checked then
   begin
   mimo_0103.Checked:=False;
   face01ba(mimo_0103.name);
   end
else
   begin
   mimo_0103.Checked:=True;
   face01la(mimo_0103.Name);
   end;


end;

procedure TFrm_Ace.mmoe_0103Click(Sender: TObject);
begin
If mmoe_0103.Checked then
   begin
   mmoe_0103.Checked:=False;
   face01ba(mmoe_0103.name);
   end
else
   begin
   mmoe_0103.Checked:=True;
   face01la(mmoe_0103.Name);
   end;

end;

procedure TFrm_Ace.mmoe_0106Click(Sender: TObject);
begin
If mmoe_0106.Checked then
   begin
   mmoe_0106.Checked:=False;
   face01ba(mmoe_0106.name);
   end
else
   begin
   mmoe_0106.Checked:=True;
   face01la(mmoe_0106.Name);
   end;

end;

procedure TFrm_Ace.mvei_0103Click(Sender: TObject);
begin
If mvei_0106.Checked then
   begin
   mvei_0106.Checked:=False;
   face01ba(mvei_0106.name);
   end
else
   begin
   mvei_0106.Checked:=True;
   face01la(mvei_0106.Name);
   end;

end;

procedure TFrm_Ace.mimo_0106Click(Sender: TObject);
begin
If mimo_0106.Checked then
   begin
   mimo_0106.Checked:=False;
   face01ba(mimo_0106.name);
   end
else
   begin
   mimo_0106.Checked:=True;
   face01la(mimo_0106.Name);
   end;

end;

procedure TFrm_Ace.mvei_0106Click(Sender: TObject);
begin
If mvei_0106.Checked then
   begin
   mvei_0106.Checked:=False;
   face01ba(mvei_0106.name);
   end
else
   begin
   mvei_0106.Checked:=True;
   face01la(mvei_0106.Name);
   end;

end;

procedure TFrm_Ace.mImo_0109Click(Sender: TObject);
begin
If mimo_0109.Checked then
   begin
   mimo_0109.Checked:=False;
   face01ba(mimo_0109.name);
   end
else
   begin
   mimo_0109.Checked:=True;
   face01la(mimo_0109.Name);
   end;


end;

procedure TFrm_Ace.mvei_0109Click(Sender: TObject);
begin
If mvei_0109.Checked then
   begin
   mvei_0109.Checked:=False;
   face01ba(mvei_0109.name);
   end
else
   begin
   mvei_0109.Checked:=True;
   face01la(mvei_0109.Name);
   end;


end;

procedure TFrm_Ace.rimo_0103Click(Sender: TObject);
begin
If rimo_0103.Checked then
   begin
   rimo_0103.Checked:=False;
   face01ba(rimo_0103.name);
   end
else
   begin
   rimo_0103.Checked:=True;
   face01la(rimo_0103.Name);
   end;

end;

procedure TFrm_Ace.rvei_0103Click(Sender: TObject);
begin
If rvei_0103.Checked then
   begin
   rvei_0103.Checked:=False;
   face01ba(rvei_0103.name);
   end
else
   begin
   rvei_0103.Checked:=True;
   face01la(rvei_0103.Name);
   end;

end;

procedure TFrm_Ace.rmoe_0103Click(Sender: TObject);
begin
If rmoe_0103.Checked then
   begin
   rmoe_0103.Checked:=False;
   face01ba(rmoe_0103.name);
   end
else
   begin
   rmoe_0103.Checked:=True;
   face01la(rmoe_0103.Name);
   end;

end;

procedure TFrm_Ace.ros_0103Click(Sender: TObject);
begin
If ros_0103.Checked then
   begin
   ros_0103.Checked:=False;
   face01ba(ros_0103.name);
   end
else
   begin
   ros_0103.Checked:=True;
   face01la(ros_0103.Name);
   end;


end;

procedure TFrm_Ace.rimo_0106Click(Sender: TObject);
begin
If rimo_0106.Checked then
   begin
   rimo_0106.Checked:=False;
   face01ba(rimo_0106.name);
   end
else
   begin
   rimo_0106.Checked:=True;
   face01la(rimo_0106.Name);
   end;

end;

procedure TFrm_Ace.rvei_0106Click(Sender: TObject);
begin
If rvei_0106.Checked then
   begin
   rvei_0106.Checked:=False;
   face01ba(rvei_0106.name);
   end
else
   begin
   rvei_0106.Checked:=True;
   face01la(rvei_0106.Name);
   end;

end;

procedure TFrm_Ace.mloc_0107Click(Sender: TObject);
begin
If mloc_0107.Checked then
   begin
   mloc_0107.Checked:=False;
   face01ba(mloc_0107.name);
   end
else
   begin
   mloc_0107.Checked:=True;
   face01la(mloc_0107.Name);
   end;

end;

procedure TFrm_Ace.sis_0672Click(Sender: TObject);
begin
If sis_0672.Checked then
   begin
   sis_0672.Checked:=False;
   face01ba(sis_0672.name);
   end
else
   begin
   sis_0672.Checked:=True;
   face01la(sis_0672.Name);
   end;


end;

procedure TFrm_Ace.sis_0242Click(Sender: TObject);
begin
If sis_0242.Checked then
   begin
   sis_0242.Checked:=False;
   face01ba(sis_0242.name);
   end
else
   begin
   sis_0242.Checked:=True;
   face01la(sis_0242.Name);
   end;

end;

procedure TFrm_Ace.mpro_0160Click(Sender: TObject);
begin
If mpro_0160.Checked then
   begin
   mpro_0160.Checked:=False;
   face01ba(mpro_0160.name);
   end
else
   begin
   mpro_0160.Checked:=True;
   face01la(mpro_0160.Name);
   end;

end;

procedure TFrm_Ace.sis_0675Click(Sender: TObject);
begin
If sis_0675.Checked then
   begin
   sis_0675.Checked:=False;
   face01ba(sis_0675.name);
   end
else
   begin
   sis_0675.Checked:=True;
   face01la(sis_0675.Name);
   end;


end;

procedure TFrm_Ace.sis_0126Click(Sender: TObject);
begin
If sis_0126.Checked then
   begin
   sis_0126.Checked:=False;
   face01ba(sis_0126.name);
   end
else
   begin
   sis_0126.Checked:=True;
   face01la(sis_0126.Name);
   end;


end;

procedure TFrm_Ace.lf_0136Click(Sender: TObject);
begin
If lf_0136.Checked then
   begin
   lf_0136.Checked:=False;
   face01ba(lf_0136.name);
   end
else
   begin
   lf_0136.Checked:=True;
   face01la(lf_0136.Name);
   end;

end;

procedure TFrm_Ace.sis_0618Click(Sender: TObject);
begin
If sis_0618.Checked then
   begin
   sis_0618.Checked:=False;
   face01ba(sis_0618.name);
   end
else
   begin
   sis_0618.Checked:=True;
   face01la(sis_0618.Name);
   end;

end;

procedure TFrm_Ace.sis0639Click(Sender: TObject);
begin
If sis0639.Checked then
   begin
   sis0639.Checked:=False;
   face01ba(sis0639.name);
   end
else
   begin
   sis0639.Checked:=True;
   face01la(sis0639.Name);
   end;


end;

procedure TFrm_Ace.rdiv_0103Click(Sender: TObject);
begin
If rdiv_0103.Checked then
   begin
   rdiv_0103.Checked:=False;
   face01ba(rdiv_0103.name);
   end
else
   begin
   rdiv_0103.Checked:=True;
   face01la(rdiv_0103.Name);
   end;



end;

procedure TFrm_Ace.mcli_0133Click(Sender: TObject);
begin
If mcli_0133.Checked then
   begin
   mcli_0133.Checked:=False;
   face01ba(mcli_0133.name);
   end
else
   begin
   mcli_0133.Checked:=True;
   face01la(mcli_0133.Name);
   end;


end;

procedure TFrm_Ace.rger_0248Click(Sender: TObject);
begin
If rger_0248.Checked then
   begin
   rger_0248.Checked:=False;
   face01ba(rger_0248.name);
   end
else
   begin
   rger_0248.Checked:=True;
   face01la(rger_0248.Name);
   end;


end;

procedure TFrm_Ace.mind_0118Click(Sender: TObject);
begin
If mind_0118.Checked then
   begin
   mind_0118.Checked:=False;
   face01ba(mind_0118.name);
   end
else
   begin
   mind_0118.Checked:=True;
   face01la(mind_0118.Name);
   end;


end;

procedure TFrm_Ace.mind_0121Click(Sender: TObject);
begin
If mind_0121.Checked then
   begin
   mind_0121.Checked:=False;
   face01ba(mind_0121.name);
   end
else
   begin
   mind_0121.Checked:=True;
   face01la(mind_0121.Name);
   end;
end;

procedure TFrm_Ace.sis_0678Click(Sender: TObject);
begin
If sis_0678.Checked then
   begin
   sis_0678.Checked:=False;
   face01ba(sis_0678.name);
   end
else
   begin
   sis_0678.Checked:=True;
   face01la(sis_0678.Name);
   end;

end;

procedure TFrm_Ace.sis_0681Click(Sender: TObject);
begin
If sis_0681.Checked then
   begin
   sis_0681.Checked:=False;
   face01ba(sis_0681.name);
   end
else
   begin
   sis_0681.Checked:=True;
   face01la(sis_0681.Name);
   end;

end;

procedure TFrm_Ace.sis_0621Click(Sender: TObject);
begin
If sis_0621.Checked then
   begin
   sis_0621.Checked:=False;
   face01ba(sis_0621.name);
   end
else
   begin
   sis_0621.Checked:=True;
   face01la(sis_0621.Name);
   end;


end;

procedure TFrm_Ace.sis_0684Click(Sender: TObject);
begin
If sis_0684.Checked then
   begin
   sis_0684.Checked:=False;
   face01ba(sis_0684.name);
   end
else
   begin
   sis_0684.Checked:=True;
   face01la(sis_0684.Name);
   end;

end;

procedure TFrm_Ace.lf_0139Click(Sender: TObject);
begin
If lf_0139.Checked then
   begin
   lf_0139.Checked:=False;
   face01ba(lf_0139.name);
   end
else
   begin
   lf_0139.Checked:=True;
   face01la(lf_0139.Name);
   end;


end;

procedure TFrm_Ace.rsai_0109Click(Sender: TObject);
begin
If rsai_0109.Checked then
   begin
   rsai_0109.Checked:=False;
   face01ba(rsai_0109.name);
   end
else
   begin
   rsai_0109.Checked:=True;
   face01la(rsai_0109.Name);
   end;

end;

procedure TFrm_Ace.mpro_0163Click(Sender: TObject);
begin
If mpro_0163.Checked then
   begin
   mpro_0163.Checked:=False;
   face01ba(mpro_0163.name);
   end
else
   begin
   mpro_0163.Checked:=True;
   face01la(mpro_0163.Name);
   end;

end;

procedure TFrm_Ace.rpro_0160Click(Sender: TObject);
begin
If rpro_0160.Checked then
   begin
   rpro_0160.Checked:=False;
   face01ba(rpro_0160.name);
   end
else
   begin
   rpro_0160.Checked:=True;
   face01la(rpro_0160.Name);
   end;

end;

procedure TFrm_Ace.mpro_0166Click(Sender: TObject);
begin
If mpro_0166.Checked then
   begin
   mpro_0166.Checked:=False;
   face01ba(mpro_0166.name);
   end
else
   begin
   mpro_0166.Checked:=True;
   face01la(mpro_0166.Name);
   end;

end;

procedure TFrm_Ace.msis_0703Click(Sender: TObject);
begin
If msis_0703.Checked then
   begin
   msis_0703.Checked:=False;
   face01ba(msis_0703.name);
   end
else
   begin
   msis_0703.Checked:=True;
   face01la(msis_0703.Name);
   end;


end;

procedure TFrm_Ace.msis_0706Click(Sender: TObject);
begin
If msis_0706.Checked then
   begin
   msis_0706.Checked:=False;
   face01ba(msis_0706.name);
   end
else
   begin
   msis_0706.Checked:=True;
   face01la(msis_0706.Name);
   end;

end;

procedure TFrm_Ace.msis_0709Click(Sender: TObject);
begin
If msis_0709.Checked then
   begin
   msis_0709.Checked:=False;
   face01ba(msis_0709.name);
   end
else
   begin
   msis_0709.Checked:=True;
   face01la(msis_0709.Name);
   end;

end;

procedure TFrm_Ace.msis_0712Click(Sender: TObject);
begin
If msis_0712.Checked then
   begin
   msis_0712.Checked:=False;
   face01ba(msis_0712.name);
   end
else
   begin
   msis_0712.Checked:=True;
   face01la(msis_0712.Name);
   end;

end;

procedure TFrm_Ace.msis_0715Click(Sender: TObject);
begin
If msis_0715.Checked then
   begin
   msis_0715.Checked:=False;
   face01ba(msis_0715.name);
   end
else
   begin
   msis_0715.Checked:=True;
   face01la(msis_0715.Name);
   end;


end;

procedure TFrm_Ace.lf_0142Click(Sender: TObject);
begin
If lf_0142.Checked then
   begin
   lf_0142.Checked:=False;
   face01ba(lf_0142.name);
   end
else
   begin
   lf_0142.Checked:=True;
   face01la(lf_0142.Name);
   end;


end;

procedure TFrm_Ace.lf_0121Click(Sender: TObject);
begin
If lf_0121.Checked then
   begin
   lf_0121.Checked:=False;
   face01ba(lf_0121.name);
   end
else
   begin
   lf_0121.Checked:=True;
   face01la(lf_0121.Name);
   end;

end;

procedure TFrm_Ace.mpro_0157Click(Sender: TObject);
begin
If mpro_0157.Checked then
   begin
   mpro_0157.Checked:=False;
   face01ba(mpro_0157.name);
   end
else
   begin
   mpro_0157.Checked:=True;
   face01la(mpro_0157.Name);
   end;

end;

procedure TFrm_Ace.mpro_0169Click(Sender: TObject);
begin
If mpro_0169.Checked then
   begin
   mpro_0169.Checked:=False;
   face01ba(mpro_0169.name);
   end
else
   begin
   mpro_0169.Checked:=True;
   face01la(mpro_0169.Name);
   end;

end;

procedure TFrm_Ace.msis_0718Click(Sender: TObject);
begin
If msis_0718.Checked then
   begin
   msis_0718.Checked:=False;
   face01ba(msis_0718.name);
   end
else
   begin
   msis_0718.Checked:=True;
   face01la(msis_0718.Name);
   end;


end;

procedure TFrm_Ace.msis_0721Click(Sender: TObject);
begin
If msis_0721.Checked then
   begin
   msis_0721.Checked:=False;
   face01ba(msis_0721.name);
   end
else
   begin
   msis_0721.Checked:=True;
   face01la(msis_0721.Name);
   end;


end;

procedure TFrm_Ace.sis0642Click(Sender: TObject);
begin
If sis0642.Checked then
   begin
   sis0642.Checked:=False;
   face01ba(sis0642.name);
   end
else
   begin
   sis0642.Checked:=True;
   face01la(sis0642.Name);
   end;



end;

procedure TFrm_Ace.rger_0251Click(Sender: TObject);
begin
If rger_0251.Checked then
   begin
   rger_0251.Checked:=False;
   face01ba(rger_0251.name);
   end
else
   begin
   rger_0251.Checked:=True;
   face01la(rger_0251.Name);
   end;


end;

procedure TFrm_Ace.sis_0687Click(Sender: TObject);
begin
If sis_0687.Checked then
   begin
   sis_0687.Checked:=False;
   face01ba(sis_0687.name);
   end
else
   begin
   sis_0687.Checked:=True;
   face01la(sis_0687.Name);
   end;


end;

procedure TFrm_Ace.rger_0254Click(Sender: TObject);
begin
If rger_0254.Checked then
   begin
   rger_0254.Checked:=False;
   face01ba(rger_0254.name);
   end
else
   begin
   rger_0254.Checked:=True;
   face01la(rger_0254.Name);
   end;


end;

procedure TFrm_Ace.rcr_0118Click(Sender: TObject);
begin
If rcr_0118.Checked then
   begin
   rcr_0118.Checked:=False;
   face01ba(rcr_0118.name);
   end
else
   begin
   rcr_0118.Checked:=True;
   face01la(rcr_0118.Name);
   end;


end;

procedure TFrm_Ace.mven_0109Click(Sender: TObject);
begin
If mven_0109.Checked then
   begin
   mven_0109.Checked:=False;
   face01ba(mven_0109.name);
   end
else
   begin
   mven_0109.Checked:=True;
   face01la(mven_0109.Name);
   end;


end;

procedure TFrm_Ace.rven_0133Click(Sender: TObject);
begin
If rven_0133.Checked then
   begin
   rven_0133.Checked:=False;
   face01ba(rven_0133.name);
   end
else
   begin
   rven_0133.Checked:=True;
   face01la(rven_0133.Name);
   end;


end;

procedure TFrm_Ace.rven_0130Click(Sender: TObject);
begin
If rven_0130.Checked then
   begin
   rven_0130.Checked:=False;
   face01ba(rven_0130.name);
   end
else
   begin
   rven_0130.Checked:=True;
   face01la(rven_0130.Name);
   end;


end;

procedure TFrm_Ace.sai_0145Click(Sender: TObject);
begin
If sai_0145.Checked then
   begin
   sai_0145.Checked:=False;
   face01ba(sai_0145.name);
   end
else
   begin
   sai_0145.Checked:=True;
   face01la(sai_0145.Name);
   end;


end;

procedure TFrm_Ace.cr_0318Click(Sender: TObject);
begin
If cr_0318.Checked then
   begin
   cr_0318.Checked:=False;
   face01ba(cr_0318.name);
   end
else
   begin
   cr_0318.Checked:=True;
   face01la(cr_0318.Name);
   end;

end;

procedure TFrm_Ace.sis_0690Click(Sender: TObject);
begin
If sis_0690.Checked then
   begin
   sis_0690.Checked:=False;
   face01ba(sis_0690.name);
   end
else
   begin
   sis_0690.Checked:=True;
   face01la(sis_0690.Name);
   end;

end;

procedure TFrm_Ace.lf_0145Click(Sender: TObject);
begin
If lf_0145.Checked then
   begin
   lf_0145.Checked:=False;
   face01ba(lf_0145.name);
   end
else
   begin
   lf_0145.Checked:=True;
   face01la(lf_0145.Name);
   end;

end;

procedure TFrm_Ace.mos_0112Click(Sender: TObject);
begin
If mos_0112.Checked then
   begin
   mos_0112.Checked:=False;
   face01ba(mos_0112.name);
   end
else
   begin
   mos_0112.Checked:=True;
   face01la(mos_0112.Name);
   end;


end;

procedure TFrm_Ace.rger_0257Click(Sender: TObject);
begin
If rger_0257.Checked then
   begin
   rger_0257.Checked:=False;
   face01ba(rger_0257.name);
   end
else
   begin
   rger_0257.Checked:=True;
   face01la(rger_0257.Name);
   end;

end;

procedure TFrm_Ace.mpro_0172Click(Sender: TObject);
begin
If mpro_0172.Checked then
   begin
   mpro_0172.Checked:=False;
   face01ba(mpro_0172.name);
   end
else
   begin
   mpro_0172.Checked:=True;
   face01la(mpro_0172.Name);
   end;


end;

procedure TFrm_Ace.sai_0148Click(Sender: TObject);
begin

If sai_0148.Checked then
   begin
   sai_0148.Checked:=False;
   face01ba(sai_0148.name);
   end
else
   begin
   sai_0148.Checked:=True;
   face01la(sai_0148.Name);
   end;


end;

procedure TFrm_Ace.mind_0127Click(Sender: TObject);
begin
If mind_0127.Checked then
   begin
   mind_0127.Checked:=False;
   face01ba(mind_0127.name);
   end
else
   begin
   mind_0127.Checked:=True;
   face01la(mind_0127.Name);
   end;


end;

procedure TFrm_Ace.mind_0130Click(Sender: TObject);
begin
If mind_0130.Checked then
   begin
   mind_0130.Checked:=False;
   face01ba(mind_0130.name);
   end
else
   begin
   mind_0130.Checked:=True;
   face01la(mind_0130.Name);
   end;


end;

procedure TFrm_Ace.mind_0133Click(Sender: TObject);
begin
If mind_0133.Checked then
   begin
   mind_0133.Checked:=False;
   face01ba(mind_0133.name);
   end
else
   begin
   mind_0133.Checked:=True;
   face01la(mind_0133.Name);
   end;


end;

procedure TFrm_Ace.rind_0103Click(Sender: TObject);
begin
If rind_0103.Checked then
   begin
   rind_0103.Checked:=False;
   face01ba(rind_0103.name);
   end
else
   begin
   rind_0103.Checked:=True;
   face01la(rind_0103.Name);
   end;

end;

procedure TFrm_Ace.sis_0129Click(Sender: TObject);
begin
If sis_0129.Checked then
   begin
   sis_0129.Checked:=False;
   face01ba(sis_0129.name);
   end
else
   begin
   sis_0129.Checked:=True;
   face01la(sis_0129.Name);
   end;
end;

procedure TFrm_Ace.mpro_0175Click(Sender: TObject);
begin
If mpro_0175.Checked then
   begin
   mpro_0175.Checked:=False;
   face01ba(mpro_0175.name);
   end
else
   begin
   mpro_0175.Checked:=True;
   face01la(mpro_0175.Name);
   end;

end;

procedure TFrm_Ace.sai_0160Click(Sender: TObject);
begin
If sai_0160.Checked then
   begin
   sai_0160.Checked:=False;
   face01ba(sai_0160.name);
   end
else
   begin
   sai_0160.Checked:=True;
   face01la(sai_0160.Name);
   end;


end;

procedure TFrm_Ace.mdiv_0112Click(Sender: TObject);
begin
If mdiv_0112.Checked then
   begin
   mdiv_0112.Checked:=False;
   face01ba(mdiv_0112.name);
   end
else
   begin
   mdiv_0112.Checked:=True;
   face01la(mdiv_0112.Name);
   end;

end;

procedure TFrm_Ace.mind_0136Click(Sender: TObject);
begin
If mind_0136.Checked then
   begin
   mind_0136.Checked:=False;
   face01ba(mind_0136.name);
   end
else
   begin
   mind_0136.Checked:=True;
   face01la(mind_0136.Name);
   end;

end;

procedure TFrm_Ace.cr_0224Click(Sender: TObject);
begin
If cr_0224.Checked then
   begin
   cr_0224.Checked:=False;
   face01ba(cr_0224.name);
   end
else
   begin
   cr_0224.Checked:=True;
   face01la(cr_0224.Name);
   end;


end;

procedure TFrm_Ace.rcli_0121Click(Sender: TObject);
begin
If rcli_0121.Checked then
   begin
   rcli_0121.Checked:=False;
   face01ba(rcli_0121.name);
   end
else
   begin
   rcli_0121.Checked:=True;
   face01la(rcli_0121.Name);
   end;


end;

procedure TFrm_Ace.rcr_0121Click(Sender: TObject);
begin
If rcr_0121.Checked then
   begin
   rcr_0121.Checked:=False;
   face01ba(rcr_0121.name);
   end
else
   begin
   rcr_0121.Checked:=True;
   face01la(rcr_0121.Name);
   end;


end;

procedure TFrm_Ace.sis_0132Click(Sender: TObject);
begin
If sis_0132.Checked then
   begin
   sis_0132.Checked:=False;
   face01ba(sis_0132.name);
   end
else
   begin
   sis_0132.Checked:=True;
   face01la(sis_0132.Name);
   end;

end;

procedure TFrm_Ace.rped_0103Click(Sender: TObject);
begin
If rped_0103.Checked then
   begin
   rped_0103.Checked:=False;
   face01ba(rped_0103.name);
   end
else
   begin
   rped_0103.Checked:=True;
   face01la(rped_0103.Name);
   end;


end;

procedure TFrm_Ace.sis_0135Click(Sender: TObject);
begin
If sis_0135.Checked then
   begin
   sis_0135.Checked:=False;
   face01ba(sis_0135.name);
   end
else
   begin
   sis_0135.Checked:=True;
   face01la(sis_0135.Name);
   end;


end;

procedure TFrm_Ace.sis_0693Click(Sender: TObject);
begin
If sis_0693.Checked then
   begin
   sis_0693.Checked:=False;
   face01ba(sis_0693.name);
   end
else
   begin
   sis_0693.Checked:=True;
   face01la(sis_0693.Name);
   end;

end;

procedure TFrm_Ace.mpro_0178Click(Sender: TObject);
begin
If mpro_0178.Checked then
   begin
   mpro_0178.Checked:=False;
   face01ba(mpro_0178.name);
   end
else
   begin
   mpro_0178.Checked:=True;
   face01la(mpro_0178.Name);
   end;


end;

procedure TFrm_Ace.sis_0696Click(Sender: TObject);
begin
If sis_0696.Checked then
   begin
   sis_0696.Checked:=False;
   face01ba(sis_0696.name);
   end
else
   begin
   sis_0696.Checked:=True;
   face01la(sis_0696.Name);
   end;

end;

procedure TFrm_Ace.rcr_0124Click(Sender: TObject);
begin
If rcr_0124.Checked then
   begin
   rcr_0124.Checked:=False;
   face01ba(rcr_0124.name);
   end
else
   begin
   rcr_0124.Checked:=True;
   face01la(rcr_0124.Name);
   end;

end;

procedure TFrm_Ace.rcr_0127Click(Sender: TObject);
begin
If rcr_0127.Checked then
   begin
   rcr_0127.Checked:=False;
   face01ba(rcr_0127.name);
   end
else
   begin
   rcr_0127.Checked:=True;
   face01la(rcr_0127.Name);
   end;

end;

procedure TFrm_Ace.sis_0138Click(Sender: TObject);
begin
If sis_0138.Checked then
   begin
   sis_0138.Checked:=False;
   face01ba(sis_0138.name);
   end
else
   begin
   sis_0138.Checked:=True;
   face01la(sis_0138.Name);
   end;

end;

procedure TFrm_Ace.sis_0141Click(Sender: TObject);
begin
If sis_0141.Checked then
   begin
   sis_0141.Checked:=False;
   face01ba(sis_0141.name);
   end
else
   begin
   sis_0141.Checked:=True;
   face01la(sis_0141.Name);
   end;


end;

procedure TFrm_Ace.mos_0109Click(Sender: TObject);
begin
If mos_0109.Checked then
   begin
   mos_0109.Checked:=False;
   face01ba(mos_0109.name);
   end
else
   begin
   mos_0109.Checked:=True;
   face01la(mos_0109.Name);
   end;

end;

procedure TFrm_Ace.mos_0115Click(Sender: TObject);
begin
If mos_0115.Checked then
   begin
   mos_0115.Checked:=False;
   face01ba(mos_0115.name);
   end
else
   begin
   mos_0115.Checked:=True;
   face01la(mos_0115.Name);
   end;


end;

procedure TFrm_Ace.mfol_0130Click(Sender: TObject);
begin
If mfol_0130.Checked then
   begin
   mfol_0130.Checked:=False;
   face01ba(mfol_0130.name);
   end
else
   begin
   mfol_0130.Checked:=True;
   face01la(mfol_0130.Name);
   end;


end;

procedure TFrm_Ace.cp_0112Click(Sender: TObject);
begin
If cp_0112.Checked then
   begin
   cp_0112.Checked:=False;
   face01ba(cp_0112.name);
   end
else
   begin
   cp_0112.Checked:=True;
   face01la(cp_0112.Name);
   end;


end;

procedure TFrm_Ace.rcli_0127Click(Sender: TObject);
begin
If rcli_0127.Checked then
   begin
   rcli_0127.Checked:=False;
   face01ba(rcli_0127.name);
   end
else
   begin
   rcli_0127.Checked:=True;
   face01la(rcli_0127.Name);
   end;


end;

procedure TFrm_Ace.rped_0109Click(Sender: TObject);
begin
If rped_0109.Checked then
   begin
   rped_0109.Checked:=False;
   face01ba(rped_0109.name);
   end
else
   begin
   rped_0109.Checked:=True;
   face01la(rped_0109.Name);
   end;


end;

procedure TFrm_Ace.mos_0118Click(Sender: TObject);
begin
If mos_0118.Checked then
   begin
   mos_0118.Checked:=False;
   face01ba(mos_0118.name);
   end
else
   begin
   mos_0118.Checked:=True;
   face01la(mos_0118.Name);
   end;

end;

procedure TFrm_Ace.mcai_0130Click(Sender: TObject);
begin
If mcai_0130.Checked then
   begin
   mcai_0130.Checked:=False;
   face01ba(mcai_0130.name);
   end
else
   begin
   mcai_0130.Checked:=True;
   face01la(mcai_0130.Name);
   end;

end;

procedure TFrm_Ace.cp_0115Click(Sender: TObject);
begin
If cp_0115.Checked then
   begin
   cp_0115.Checked:=False;
   face01ba(cp_0115.name);
   end
else
   begin
   cp_0115.Checked:=True;
   face01la(cp_0115.Name);
   end;

end;

procedure TFrm_Ace.rpro_0166Click(Sender: TObject);
begin
If rpro_0166.Checked then
   begin
   rpro_0166.Checked:=False;
   face01ba(rpro_0166.name);
   end
else
   begin
   rpro_0166.Checked:=True;
   face01la(rpro_0166.Name);
   end;

end;

procedure TFrm_Ace.rpro_0169Click(Sender: TObject);
begin
If rpro_0169.Checked then
   begin
   rpro_0169.Checked:=False;
   face01ba(rpro_0169.name);
   end
else
   begin
   rpro_0169.Checked:=True;
   face01la(rpro_0169.Name);
   end;

end;

procedure TFrm_Ace.rger_0260Click(Sender: TObject);
begin
If rger_0260.Checked then
   begin
   rger_0260.Checked:=False;
   face01ba(rger_0260.name);
   end
else
   begin
   rger_0260.Checked:=True;
   face01la(rger_0260.Name);
   end;

end;

procedure TFrm_Ace.cr_0230Click(Sender: TObject);
begin
If cr_0230.Checked then
   begin
   cr_0230.Checked:=False;
   face01ba(cr_0230.name);
   end
else
   begin
   cr_0230.Checked:=True;
   face01la(cr_0230.Name);
   end;


end;

procedure TFrm_Ace.cr_0212Click(Sender: TObject);
begin
If cr_0212.Checked then
   begin
   cr_0212.Checked:=False;
   face01ba(cr_0212.name);
   end
else
   begin
   cr_0212.Checked:=True;
   face01la(cr_0212.Name);
   end;


end;

procedure TFrm_Ace.cp_0309Click(Sender: TObject);
begin
If cp_0309.Checked then
   begin
   cp_0309.Checked:=False;
   face01ba(cp_0309.name);
   end
else
   begin
   cp_0309.Checked:=True;
   face01la(cp_0309.Name);
   end;

end;

procedure TFrm_Ace.sis_0245Click(Sender: TObject);
begin
If sis_0245.Checked then
   begin
   sis_0245.Checked:=False;
   face01ba(sis_0245.name);
   end
else
   begin
   sis_0245.Checked:=True;
   face01la(sis_0245.Name);
   end;

end;

procedure TFrm_Ace.sai_0163Click(Sender: TObject);
begin
If sai_0163.Checked then
   begin
   sai_0163.Checked:=False;
   face01ba(sai_0163.name);
   end
else
   begin
   sai_0163.Checked:=True;
   face01la(sai_0163.Name);
   end;


end;

procedure TFrm_Ace.sai_0166Click(Sender: TObject);
begin
If sai_0166.Checked then
   begin
   sai_0166.Checked:=False;
   face01ba(sai_0166.name);
   end
else
   begin
   sai_0166.Checked:=True;
   face01la(sai_0166.Name);
   end;


end;

procedure TFrm_Ace.mdiv_0115Click(Sender: TObject);
begin
If mdiv_0115.Checked then
   begin
   mdiv_0115.Checked:=False;
   face01ba(mdiv_0115.name);
   end
else
   begin
   mdiv_0115.Checked:=True;
   face01la(mdiv_0115.Name);
   end;


end;

procedure TFrm_Ace.sai_0169Click(Sender: TObject);
begin
If sai_0169.Checked then
   begin
   sai_0169.Checked:=False;
   face01ba(sai_0169.name);
   end
else
   begin
   sai_0169.Checked:=True;
   face01la(sai_0169.Name);
   end;


end;

procedure TFrm_Ace.cr_0233Click(Sender: TObject);
begin
If cr_0233.Checked then
   begin
   cr_0233.Checked:=False;
   face01ba(cr_0233.name);
   end
else
   begin
   cr_0233.Checked:=True;
   face01la(cr_0233.Name);
   end;


end;

procedure TFrm_Ace.cp_0312Click(Sender: TObject);
begin
If cp_0312.Checked then
   begin
   cp_0312.Checked:=False;
   face01ba(cp_0312.name);
   end
else
   begin
   cp_0312.Checked:=True;
   face01la(cp_0312.Name);
   end;


end;

procedure TFrm_Ace.sai_0172Click(Sender: TObject);
begin
If sai_0172.Checked then
   begin
   sai_0172.Checked:=False;
   face01ba(sai_0172.name);
   end
else
   begin
   sai_0172.Checked:=True;
   face01la(sai_0172.Name);
   end;


end;

procedure TFrm_Ace.sai_0175Click(Sender: TObject);
begin
If sai_0175.Checked then
   begin
   sai_0175.Checked:=False;
   face01ba(sai_0175.name);
   end
else
   begin
   sai_0175.Checked:=True;
   face01la(sai_0175.Name);
   end;


end;

procedure TFrm_Ace.sai_0178Click(Sender: TObject);
begin
If sai_0178.Checked then
   begin
   sai_0178.Checked:=False;
   face01ba(sai_0178.name);
   end
else
   begin
   sai_0178.Checked:=True;
   face01la(sai_0178.Name);
   end;


end;

procedure TFrm_Ace.rpro_0178Click(Sender: TObject);
begin
If rpro_0178.Checked then
   begin
   rpro_0178.Checked:=False;
   face01ba(rpro_0178.name);
   end
else
   begin
   rpro_0178.Checked:=True;
   face01la(rpro_0178.Name);
   end;


end;

procedure TFrm_Ace.rped_0112Click(Sender: TObject);
begin
If rped_0112.Checked then
   begin
   rped_0112.Checked:=False;
   face01ba(rped_0112.name);
   end
else
   begin
   rped_0112.Checked:=True;
   face01la(rped_0112.Name);
   end;


end;

procedure TFrm_Ace.rped_0115Click(Sender: TObject);
begin
If rped_0115.Checked then
   begin
   rped_0115.Checked:=False;
   face01ba(rped_0115.name);
   end
else
   begin
   rped_0115.Checked:=True;
   face01la(rped_0115.Name);
   end;


end;

procedure TFrm_Ace.rven_0136Click(Sender: TObject);
begin
If rven_0136.Checked then
   begin
   rven_0136.Checked:=False;
   face01ba(rven_0136.name);
   end
else
   begin
   rven_0136.Checked:=True;
   face01la(rven_0136.Name);
   end;


end;

procedure TFrm_Ace.mcli_0136Click(Sender: TObject);
begin
If mcli_0136.Checked then
   begin
   mcli_0136.Checked:=False;
   face01ba(mcli_0136.name);
   end
else
   begin
   mcli_0136.Checked:=True;
   face01la(mcli_0136.Name);
   end;

end;

procedure TFrm_Ace.rped_0118Click(Sender: TObject);
begin
If rped_0118.Checked then
   begin
   rped_0118.Checked:=False;
   face01ba(rped_0118.name);
   end
else
   begin
   rped_0118.Checked:=True;
   face01la(rped_0118.Name);
   end;


end;

procedure TFrm_Ace.rped_0119Click(Sender: TObject);
begin
If rped_0119.Checked then
   begin
   rped_0119.Checked:=False;
   face01ba(rped_0119.name);
   end
else
   begin
   rped_0119.Checked:=True;
   face01la(rped_0119.Name);
   end;


end;
procedure TFrm_Ace.rcr_0130Click(Sender: TObject);
begin
If rcr_0130.Checked then
   begin
   rcr_0130.Checked:=False;
   face01ba(rcr_0130.name);
   end
else
   begin
   rcr_0130.Checked:=True;
   face01la(rcr_0130.Name);
   end;

end;

procedure TFrm_Ace.rven_0142Click(Sender: TObject);
begin
If rven_0142.Checked then
   begin
   rven_0142.Checked:=False;
   face01ba(rven_0142.name);
   end
else
   begin
   rven_0142.Checked:=True;
   face01la(rven_0142.Name);
   end;


end;

procedure TFrm_Ace.mven_0112Click(Sender: TObject);
begin
If mven_0112.Checked then
   begin
   mven_0112.Checked:=False;
   face01ba(mven_0112.name);
   end
else
   begin
   mven_0112.Checked:=True;
   face01la(mven_0112.Name);
   end;

end;

procedure TFrm_Ace.rpro_0181Click(Sender: TObject);
begin
If rpro_0181.Checked then
   begin
   rpro_0181.Checked:=False;
   face01ba(rpro_0181.name);
   end
else
   begin
   rpro_0181.Checked:=True;
   face01la(rpro_0181.Name);
   end;


end;

procedure TFrm_Ace.sai_0151Click(Sender: TObject);
begin
if sai_0151.Checked then
   begin
   sai_0151.Checked:=False;
   face01ba(sai_0151.name);
   end
else
   begin
   sai_0151.Checked:=True;
   face01la(sai_0151.Name);
   end;
end;

procedure TFrm_Ace.rger_0263Click(Sender: TObject);
begin
If rger_0263.Checked then
   begin
   rger_0263.Checked:=False;
   face01ba(rger_0263.name);
   end
else
   begin
   rger_0263.Checked:=True;
   face01la(rger_0263.Name);
   end;


end;

procedure TFrm_Ace.lf_0148Click(Sender: TObject);
begin
If lf_0148.Checked then
   begin
   lf_0148.Checked:=False;
   face01ba(lf_0148.name);
   end
else
   begin
   lf_0148.Checked:=True;
   face01la(lf_0148.Name);
   end;


end;

procedure TFrm_Ace.mfor_0109Click(Sender: TObject);
begin
If mfor_0109.Checked then
   begin
   mfor_0109.Checked:=False;
   face01ba(mfor_0109.name);
   end
else
   begin
   mfor_0109.Checked:=True;
   face01la(mfor_0109.Name);
   end;
end;

procedure TFrm_Ace.mfor_0110Click(Sender: TObject);
begin
If mfor_0110.Checked then
   begin
   mfor_0110.Checked:=False;
   face01ba(mfor_0110.name);
   end
else
   begin
   mfor_0110.Checked:=True;
   face01la(mfor_0110.Name);
   end;
end;

procedure TFrm_Ace.rfor_0118Click(Sender: TObject);
begin
If rfor_0118.Checked then
   begin
   rfor_0118.Checked:=False;
   face01ba(rfor_0118.name);
   end
else
   begin
   rfor_0118.Checked:=True;
   face01la(rfor_0118.Name);
   end;


end;

procedure TFrm_Ace.cr_0921Click(Sender: TObject);
begin
If cr_0921.Checked then
   begin
   cr_0921.Checked:=False;
   face01ba(cr_0921.name);
   end
else
   begin
   cr_0921.Checked:=True;
   face01la(cr_0921.Name);
   end;


end;

procedure TFrm_Ace.rven_0145Click(Sender: TObject);
begin
If rven_0145.Checked then
   begin
   rven_0145.Checked:=False;
   face01ba(rven_0145.name);
   end
else
   begin
   rven_0145.Checked:=True;
   face01la(rven_0145.Name);
   end;

end;

procedure TFrm_Ace.lf_0151Click(Sender: TObject);
begin
If lf_0151.Checked then
   begin
   lf_0151.Checked:=False;
   face01ba(lf_0151.name);
   end
else
   begin
   lf_0151.Checked:=True;
   face01la(lf_0151.Name);
   end;

end;

procedure TFrm_Ace.sai_0181Click(Sender: TObject);
begin
If sai_0181.Checked then
   begin
   sai_0181.Checked:=False;
   face01ba(sai_0181.name);
   end
else
   begin
   sai_0181.Checked:=True;
   face01la(sai_0181.Name);
   end;


end;

procedure TFrm_Ace.rcr_0139Click(Sender: TObject);
begin
If rcr_0139.Checked then
   begin
   rcr_0139.Checked:=False;
   face01ba(rcr_0139.name);
   end
else
   begin
   rcr_0139.Checked:=True;
   face01la(rcr_0139.Name);
   end;

end;

procedure TFrm_Ace.sis_0144Click(Sender: TObject);
begin
If sis_0144.Checked then
   begin
   sis_0144.Checked:=False;
   face01ba(sis_0144.name);
   end
else
   begin
   sis_0144.Checked:=True;
   face01la(sis_0144.Name);
   end;


end;

procedure TFrm_Ace.sis_0147Click(Sender: TObject);
begin
If sis_0147.Checked then
   begin
   sis_0147.Checked:=False;
   face01ba(sis_0147.name);
   end
else
   begin
   sis_0147.Checked:=True;
   face01la(sis_0147.Name);
   end;


end;

procedure TFrm_Ace.rger_0266Click(Sender: TObject);
begin
If rger_0266.Checked then
   begin
   rger_0266.Checked:=False;
   face01ba(rger_0266.name);
   end
else
   begin
   rger_0266.Checked:=True;
   face01la(rger_0266.Name);
   end;

end;

procedure TFrm_Ace.sai_0154Click(Sender: TObject);
begin
If sai_0154.Checked then
   begin
   sai_0154.Checked:=False;
   face01ba(sai_0154.name);
   end
else
   begin
   sai_0154.Checked:=True;
   face01la(sai_0154.Name);
   end;


end;

procedure TFrm_Ace.rven_0148Click(Sender: TObject);
begin
If rven_0148.Checked then
   begin
   rven_0148.Checked:=False;
   face01ba(rven_0148.name);
   end
else
   begin
   rven_0148.Checked:=True;
   face01la(rven_0148.Name);
   end;

end;

procedure TFrm_Ace.sai_0184Click(Sender: TObject);
begin
If sai_0184.Checked then
   begin
   sai_0184.Checked:=False;
   face01ba(sai_0184.name);
   end
else
   begin
   sai_0184.Checked:=True;
   face01la(sai_0184.Name);
   end;



end;

procedure TFrm_Ace.mpro_0181Click(Sender: TObject);
begin
If mpro_0181.Checked then
   begin
   mpro_0181.Checked:=False;
   face01ba(mpro_0181.name);
   end
else
   begin
   mpro_0181.Checked:=True;
   face01la(mpro_0181.Name);
   end;


end;

procedure TFrm_Ace.sai_0187Click(Sender: TObject);
begin
If sai_0187.Checked then
   begin
   sai_0187.Checked:=False;
   face01ba(sai_0187.name);
   end
else
   begin
   sai_0187.Checked:=True;
   face01la(sai_0187.Name);
   end;


end;

procedure TFrm_Ace.sai_0190Click(Sender: TObject);
begin
If sai_0190.Checked then
   begin
   sai_0190.Checked:=False;
   face01ba(sai_0190.name);
   end
else
   begin
   sai_0190.Checked:=True;
   face01la(sai_0190.Name);
   end;


end;

procedure TFrm_Ace.mven_0115Click(Sender: TObject);
begin
If mven_0115.Checked then
   begin
   mven_0115.Checked:=False;
   face01ba(mven_0115.name);
   end
else
   begin
   mven_0115.Checked:=True;
   face01la(mven_0115.Name);
   end;

end;

procedure TFrm_Ace.mdiv_0118Click(Sender: TObject);
begin
If mdiv_0118.Checked then
   begin
   mdiv_0118.Checked:=False;
   face01ba(mdiv_0118.name);
   end
else
   begin
   mdiv_0118.Checked:=True;
   face01la(mdiv_0118.Name);
   end;
end;

procedure TFrm_Ace.mpro_0184Click(Sender: TObject);
begin
If mpro_0184.Checked then
   begin
   mpro_0184.Checked:=False;
   face01ba(mpro_0184.name);
   end
else
   begin
   mpro_0184.Checked:=True;
   face01la(mpro_0184.Name);
   end;



end;

procedure TFrm_Ace.mind_0139Click(Sender: TObject);
begin
If mind_0139.Checked then
   begin
   mind_0139.Checked:=False;
   face01ba(mind_0139.name);
   end
else
   begin
   mind_0139.Checked:=True;
   face01la(mind_0139.Name);
   end;


end;

procedure TFrm_Ace.mpro_0187Click(Sender: TObject);
begin
If mpro_0187.Checked then
   begin
   mpro_0187.Checked:=False;
   face01ba(mpro_0187.name);
   end
else
   begin
   mpro_0187.Checked:=True;
   face01la(mpro_0187.Name);
   end;


end;

procedure TFrm_Ace.rest_0118Click(Sender: TObject);
begin
If rest_0118.Checked then
   begin
   rest_0118.Checked:=False;
   face01ba(rest_0118.name);
   end
else
   begin
   rest_0118.Checked:=True;
   face01la(rest_0118.Name);
   end;


end;

procedure TFrm_Ace.mven_0118Click(Sender: TObject);
begin
If mven_0118.Checked then
   begin
   mven_0118.Checked:=False;
   face01ba(mven_0118.name);
   end
else
   begin
   mven_0118.Checked:=True;
   face01la(mven_0118.Name);
   end;


end;

procedure TFrm_Ace.mven_0121Click(Sender: TObject);
begin
If mven_0121.Checked then
   begin
   mven_0121.Checked:=False;
   face01ba(mven_0121.name);
   end
else
   begin
   mven_0121.Checked:=True;
   face01la(mven_0121.Name);
   end;


end;

procedure TFrm_Ace.cr_0924Click(Sender: TObject);
begin
If cr_0924.Checked then
   begin
   cr_0924.Checked:=False;
   face01ba(cr_0924.name);
   end
else
   begin
   cr_0924.Checked:=True;
   face01la(cr_0924.Name);
   end;


end;

procedure TFrm_Ace.lf_0154Click(Sender: TObject);
begin
If lf_0154.Checked then
   begin
   lf_0154.Checked:=False;
   face01ba(lf_0154.name);
   end
else
   begin
   lf_0154.Checked:=True;
   face01la(lf_0154.Name);
   end;


end;

procedure TFrm_Ace.sai_0157Click(Sender: TObject);
begin
If sai_0157.Checked then
   begin
   sai_0157.Checked:=False;
   face01ba(sai_0157.name);
   end
else
   begin
   sai_0157.Checked:=True;
   face01la(sai_0157.Name);
   end;


end;

procedure TFrm_Ace.sai_0193Click(Sender: TObject);
begin
If sai_0193.Checked then
   begin
   sai_0193.Checked:=False;
   face01ba(sai_0193.name);
   end
else
   begin
   sai_0193.Checked:=True;
   face01la(sai_0193.Name);
   end;


end;

procedure TFrm_Ace.rpro_0184Click(Sender: TObject);
begin
If rpro_0184.Checked then
   begin
   rpro_0184.Checked:=False;
   face01ba(rpro_0184.name);
   end
else
   begin
   rpro_0184.Checked:=True;
   face01la(rpro_0184.Name);
   end;

end;

procedure TFrm_Ace.sai_0196Click(Sender: TObject);
begin
If sai_0196.Checked then
   begin
   sai_0196.Checked:=False;
   face01ba(sai_0196.name);
   end
else
   begin
   sai_0196.Checked:=True;
   face01la(sai_0196.Name);
   end;


end;

procedure TFrm_Ace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ace.cp_0121Click(Sender: TObject);
begin
If cp_0121.Checked then
   begin
   cp_0121.Checked:=False;
   face01ba(cp_0121.name);
   end
else
   begin
   cp_0121.Checked:=True;
   face01la(cp_0121.Name);
   end;


end;

procedure TFrm_Ace.cp_0124Click(Sender: TObject);
begin
If cp_0124.Checked then
   begin
   cp_0124.Checked:=False;
   face01ba(cp_0124.name);
   end
else
   begin
   cp_0124.Checked:=True;
   face01la(cp_0124.Name);
   end;


end;

procedure TFrm_Ace.cp_0127Click(Sender: TObject);
begin
If cp_0127.Checked then
   begin
   cp_0127.Checked:=False;
   face01ba(cp_0127.name);
   end
else
   begin
   cp_0127.Checked:=True;
   face01la(cp_0127.Name);
   end;


end;

procedure TFrm_Ace.mcli_0139Click(Sender: TObject);
begin
If mcli_0139.Checked then
   begin
   mcli_0139.Checked:=False;
   face01ba(mcli_0139.name);
   end
else
   begin
   mcli_0139.Checked:=True;
   face01la(mcli_0139.Name);
   end;


end;

procedure TFrm_Ace.rpro_0187Click(Sender: TObject);
begin
If rpro_0187.Checked then
   begin
   rpro_0187.Checked:=False;
   face01ba(rpro_0187.name);
   end
else
   begin
   rpro_0187.Checked:=True;
   face01la(rpro_0187.Name);
   end;

end;

procedure TFrm_Ace.mpro_0209Click(Sender: TObject);
begin
If mpro_0209.Checked then
   begin
   mpro_0209.Checked:=False;
   face01ba(mpro_0209.name);
   end
else
   begin
   mpro_0209.Checked:=True;
   face01la(mpro_0209.Name);
   end;


end;

procedure TFrm_Ace.mind_0124Click(Sender: TObject);
begin
If mind_0124.Checked then
   begin
   mind_0124.Checked:=False;
   face01ba(mind_0124.name);
   end
else
   begin
   mind_0124.Checked:=True;
   face01la(mind_0124.Name);
   end;


end;

procedure TFrm_Ace.rtra_0103Click(Sender: TObject);
begin
If rtra_0103.Checked then
   begin
   rtra_0103.Checked:=False;
   face01ba(rtra_0103.name);
   end
else
   begin
   rtra_0103.Checked:=True;
   face01la(rtra_0103.Name);
   end;


end;

procedure TFrm_Ace.rusu_0103Click(Sender: TObject);
begin
If rusu_0103.Checked then
   begin
   rusu_0103.Checked:=False;
   face01ba(rusu_0103.name);
   end
else
   begin
   rusu_0103.Checked:=True;
   face01la(rusu_0103.Name);
   end;

end;

procedure TFrm_Ace.rfun_0103Click(Sender: TObject);
begin

If rfun_0103.Checked then
   begin
   rfun_0103.Checked:=False;
   face01ba(rfun_0103.name);
   end
else
   begin
   rfun_0103.Checked:=True;
   face01la(rfun_0103.Name);
   end;

end;

procedure TFrm_Ace.rpv_0103Click(Sender: TObject);
begin
If rpv_0103.Checked then
   begin
   rpv_0103.Checked:=False;
   face01ba(rpv_0103.name);
   end
else
   begin
   rpv_0103.Checked:=True;
   face01la(rpv_0103.Name);
   end;


end;

procedure TFrm_Ace.rbco_0103Click(Sender: TObject);
begin
If rbco_0103.Checked then
   begin
   rbco_0103.Checked:=False;
   face01ba(rbco_0103.name);
   end
else
   begin
   rbco_0103.Checked:=True;
   face01la(rbco_0103.Name);
   end;


end;

procedure TFrm_Ace.rccu_0103Click(Sender: TObject);
begin
If rccu_0103.Checked then
   begin
   rccu_0103.Checked:=False;
   face01ba(rccu_0103.name);
   end
else
   begin
   rccu_0103.Checked:=True;
   face01la(rccu_0103.Name);
   end;


end;

procedure TFrm_Ace.rdep_0103Click(Sender: TObject);
begin
If rdep_0103.Checked then
   begin
   rdep_0103.Checked:=False;
   face01ba(rdep_0103.name);
   end
else
   begin
   rdep_0103.Checked:=True;
   face01la(rdep_0103.Name);
   end;


end;

procedure TFrm_Ace.rcai_0103Click(Sender: TObject);
begin
If rcai_0103.Checked then
   begin
   rcai_0103.Checked:=False;
   face01ba(rcai_0103.name);
   end
else
   begin
   rcai_0103.Checked:=True;
   face01la(rcai_0103.Name);
   end;


end;

procedure TFrm_Ace.rpfor_0101Click(Sender: TObject);
begin
If rpfor_0101.Checked then
   begin
   rpfor_0101.Checked:=False;
   face01ba(rpfor_0101.name);
   end
else
   begin
   rpfor_0101.Checked:=True;
   face01la(rpfor_0101.Name);
   end;


end;

procedure TFrm_Ace.rpfor_0103Click(Sender: TObject);
begin
If rpfor_0103.Checked then
   begin
   rpfor_0103.Checked:=False;
   face01ba(rpfor_0103.name);
   end
else
   begin
   rpfor_0103.Checked:=True;
   face01la(rpfor_0103.Name);
   end;


end;

procedure TFrm_Ace.rrpro_0106Click(Sender: TObject);
begin
If rrpro_0106.Checked then
   begin
   rrpro_0106.Checked:=False;
   face01ba(rrpro_0106.name);
   end
else
   begin
   rrpro_0106.Checked:=True;
   face01la(rrpro_0106.Name);
   end;


end;

procedure TFrm_Ace.rrpro_0109Click(Sender: TObject);
begin
If rrpro_0109.Checked then
   begin
   rrpro_0109.Checked:=False;
   face01ba(rrpro_0109.name);
   end
else
   begin
   rrpro_0109.Checked:=True;
   face01la(rrpro_0109.Name);
   end;


end;

procedure TFrm_Ace.rrpro_0112Click(Sender: TObject);
begin
If rrpro_0112.Checked then
   begin
   rrpro_0112.Checked:=False;
   face01ba(rrpro_0112.name);
   end
else
   begin
   rrpro_0112.Checked:=True;
   face01la(rrpro_0112.Name);
   end;


end;

procedure TFrm_Ace.rrpro_0115Click(Sender: TObject);
begin
If rrpro_0115.Checked then
   begin
   rrpro_0115.Checked:=False;
   face01ba(rrpro_0115.name);
   end
else
   begin
   rrpro_0115.Checked:=True;
   face01la(rrpro_0115.Name);
   end;


end;

procedure TFrm_Ace.sai_0106Click(Sender: TObject);
begin
If sai_0106.Checked then
   begin
   sai_0106.Checked:=False;
   face01ba(sai_0106.name);
   end
else
   begin
   sai_0106.Checked:=True;
   face01la(sai_0106.Name);
   end;


end;

procedure TFrm_Ace.rped_0301Click(Sender: TObject);
begin
If rped_0301.Checked then
   begin
   rped_0301.Checked:=False;
   face01ba(rped_0301.name);
   end
else
   begin
   rped_0301.Checked:=True;
   face01la(rped_0301.Name);
   end;

end;

procedure TFrm_Ace.sai_0199Click(Sender: TObject);
begin
If sai_0199.Checked then
   begin
   sai_0199.Checked:=False;
   face01ba(sai_0199.name);
   end
else
   begin
   sai_0199.Checked:=True;
   face01la(sai_0199.Name);
   end;


end;

procedure TFrm_Ace.cr_0239Click(Sender: TObject);
begin
If cr_0239.Checked then
   begin
   cr_0239.Checked:=False;
   face01ba(cr_0239.name);
   end
else
   begin
   cr_0239.Checked:=True;
   face01la(cr_0239.Name);
   end;


end;

procedure TFrm_Ace.mloc_0112Click(Sender: TObject);
begin
If mloc_0112.Checked then
   begin
   mloc_0112.Checked:=False;
   face01ba(mloc_0112.name);
   end
else
   begin
   mloc_0112.Checked:=True;
   face01la(mloc_0112.Name);
   end;

end;

procedure TFrm_Ace.mloc_0115Click(Sender: TObject);
begin
If mloc_0115.Checked then
   begin
   mloc_0115.Checked:=False;
   face01ba(mloc_0115.name);
   end
else
   begin
   mloc_0115.Checked:=True;
   face01la(mloc_0115.Name);
   end;


end;

procedure TFrm_Ace.cr_0927Click(Sender: TObject);
begin
If cr_0927.Checked then
   begin
   cr_0927.Checked:=False;
   face01ba(cr_0927.name);
   end
else
   begin
   cr_0927.Checked:=True;
   face01la(cr_0927.Name);
   end;


end;

procedure TFrm_Ace.sis2103Click(Sender: TObject);
begin
If sis2103.Checked then
   begin
   sis2103.Checked:=False;
   face01ba(sis2103.name);
   end
else
   begin
   sis2103.Checked:=True;
   face01la(sis2103.Name);
   end;


end;

procedure TFrm_Ace.mIndEnv_0103Click(Sender: TObject);
begin
If mIndEnv_0103.Checked then
   begin
   mIndEnv_0103.Checked:=False;
   face01ba(mIndEnv_0103.name);
   end
else
   begin
   mIndEnv_0103.Checked:=True;
   face01la(mIndEnv_0103.Name);
   end;


end;

procedure TFrm_Ace.mIndEnv_0106Click(Sender: TObject);
begin
If mIndEnv_0106.Checked then
   begin
   mIndEnv_0106.Checked:=False;
   face01ba(mIndEnv_0106.name);
   end
else
   begin
   mIndEnv_0106.Checked:=True;
   face01la(mIndEnv_0106.Name);
   end;


end;

procedure TFrm_Ace.rven_0151Click(Sender: TObject);
begin
If rven_0151.Checked then
   begin
   rven_0151.Checked:=False;
   face01ba(rven_0151.name);
   end
else
   begin
   rven_0151.Checked:=True;
   face01la(rven_0151.Name);
   end;


end;

procedure TFrm_Ace.mIndEnv_0109Click(Sender: TObject);
begin
If mIndEnv_0109.Checked then
   begin
   mIndEnv_0109.Checked:=False;
   face01ba(mIndEnv_0109.name);
   end
else
   begin
   mIndEnv_0109.Checked:=True;
   face01la(mIndEnv_0109.Name);
   end;


end;

procedure TFrm_Ace.mIndEnv_0115Click(Sender: TObject);
begin
If mIndEnv_0115.Checked then
   begin
   mIndEnv_0115.Checked:=False;
   face01ba(mIndEnv_0115.name);
   end
else
   begin
   mIndEnv_0115.Checked:=True;
   face01la(mIndEnv_0115.Name);
   end;


end;

procedure TFrm_Ace.rind_0106Click(Sender: TObject);
begin
If rind_0106.Checked then
   begin
   rind_0106.Checked:=False;
   face01ba(rind_0106.name);
   end
else
   begin
   rind_0106.Checked:=True;
   face01la(rind_0106.Name);
   end;


end;

procedure TFrm_Ace.mdiv_0121Click(Sender: TObject);
begin
If mdiv_0121.Checked then
   begin
   mdiv_0121.Checked:=False;
   face01ba(mdiv_0121.name);
   end
else
   begin
   mdiv_0121.Checked:=True;
   face01la(mdiv_0121.Name);
   end;

end;

procedure TFrm_Ace.mdiv_0124Click(Sender: TObject);
begin
If mdiv_0124.Checked then
   begin
   mdiv_0124.Checked:=False;
   face01ba(mdiv_0124.name);
   end
else
   begin
   mdiv_0124.Checked:=True;
   face01la(mdiv_0124.Name);
   end;
end;

procedure TFrm_Ace.rfor_0121Click(Sender: TObject);
begin
If rfor_0121.Checked then
   begin
   rfor_0121.Checked:=False;
   face01ba(rfor_0121.name);
   end
else
   begin
   rfor_0121.Checked:=True;
   face01la(rfor_0121.Name);
   end;


end;

procedure TFrm_Ace.cr_0928Click(Sender: TObject);
begin
If cr_0928.Checked then
   begin
   cr_0928.Checked:=False;
   face01ba(cr_0928.name);
   end
else
   begin
   cr_0928.Checked:=True;
   face01la(cr_0928.Name);
   end;
end;

procedure TFrm_Ace.cr_0929Click(Sender: TObject);
begin
If cr_0929.Checked then
   begin
   cr_0929.Checked:=False;
   face01ba(cr_0929.name);
   end
else
   begin
   cr_0929.Checked:=True;
   face01la(cr_0929.Name);
   end;
end;

procedure TFrm_Ace.cr_0930Click(Sender: TObject);
begin
If cr_0930.Checked then
   begin
   cr_0930.Checked:=False;
   face01ba(cr_0930.name);
   end
else
   begin
   cr_0930.Checked:=True;
   face01la(cr_0930.Name);
   end;
end;


procedure TFrm_Ace.cp_0130Click(Sender: TObject);
begin
If cp_0130.Checked then
   begin
   cp_0130.Checked:=False;
   face01ba(cp_0130.name);
   end
else
   begin
   cp_0130.Checked:=True;
   face01la(cp_0130.Name);
   end;

end;

procedure TFrm_Ace.mfol_0125Click(Sender: TObject);
begin
  if mfol_0125.Checked then begin
     mfol_0125.Checked:=False;
     face01ba(mfol_0125.name);
  end else begin
     mfol_0125.Checked:=True;
     face01la(mfol_0125.Name);
  end;
end;

procedure TFrm_Ace.mcai_0133Click(Sender: TObject);
begin
If mcai_0133.Checked then
   begin
   mcai_0133.Checked:=False;
   face01ba(mcai_0133.name);
   end
else
   begin
   mcai_0133.Checked:=True;
   face01la(mcai_0133.Name);
   end;
end;

procedure TFrm_Ace.rest_0121Click(Sender: TObject);
begin
If rest_0121.Checked then
   begin
   rest_0121.Checked:=False;
   face01ba(rest_0121.name);
   end
else
   begin
   rest_0121.Checked:=True;
   face01la(rest_0121.Name);
   end;
end;

procedure TFrm_Ace.rfun_0001Click(Sender: TObject);
begin

  if rfun_0001.Checked then begin
     rfun_0001.Checked := False;
     face01ba(rfun_0001.name);
  end else begin
     rfun_0001.Checked := True;
     face01la(rfun_0001.Name);
  end;
end;


procedure TFrm_Ace.mpro_0190Click(Sender: TObject);
begin
If mpro_0190.Checked then
   begin
   mpro_0190.Checked:=False;
   face01ba(mpro_0190.name);
   end
else
   begin
   mpro_0190.Checked:=True;
   face01la(mpro_0190.Name);
   end;


end;

procedure TFrm_Ace.mpro_0193Click(Sender: TObject);
begin
If mpro_0193.Checked then
   begin
   mpro_0193.Checked:=False;
   face01ba(mpro_0193.name);
   end
else
   begin
   mpro_0193.Checked:=True;
   face01la(mpro_0193.Name);
   end;


end;

procedure TFrm_Ace.saiconf_0103Click(Sender: TObject);
begin
If saiconf_0103.Checked then
   begin
   saiconf_0103.Checked:=False;
   face01ba(saiconf_0103.name);
   end
else
   begin
   saiconf_0103.Checked:=True;
   face01la(saiconf_0103.Name);
   end;


end;

procedure TFrm_Ace.saiconf_0106Click(Sender: TObject);
begin
If saiconf_0106.Checked then
   begin
   saiconf_0106.Checked:=False;
   face01ba(saiconf_0106.name);
   end
else
   begin
   saiconf_0106.Checked:=True;
   face01la(saiconf_0106.Name);
   end;


end;

procedure TFrm_Ace.saiconf_0109Click(Sender: TObject);
begin
If saiconf_0109.Checked then
   begin
   saiconf_0109.Checked:=False;
   face01ba(saiconf_0109.name);
   end
else
   begin
   saiconf_0109.Checked:=True;
   face01la(saiconf_0109.Name);
   end;


end;

procedure TFrm_Ace.BitBtn4Click(Sender: TObject);
begin
if fmensagem('Deseja realmente criar Permissão Padrão: '+ComboBox1.Text+'?',0,['1','2'],2) <> mrYes then
   Exit;

AceitaPegunta := False;
BitBtn2Click(Self);
AceitaPegunta := True;

if ComboBox1.Text = 'Auxiliar de Escritório' then begin
   {---Cadastros---}
   mpro_0103.Checked := True;
   face01la(mpro_0103.Name);
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   mpro_0166.Checked := True;
   face01la(mpro_0166.Name);
   mpro_0118.Checked := True;
   face01la(mpro_0118.Name);
   mpro_0115.Checked := True;
   face01la(mpro_0115.Name);
   mpro_0124.Checked := True;
   face01la(mpro_0124.Name);
   mpro_0121.Checked := True;
   face01la(mpro_0121.Name);
   mpro_0148.Checked := True;
   face01la(mpro_0148.Name);
   mpro_0193.Checked := True;
   face01la(mpro_0193.Name);
   mpro_0130.Checked := True;
   face01la(mpro_0130.Name);
   mpro_0112.Checked := True;
   face01la(mpro_0112.Name);
   mpro_0178.Checked := True;
   face01la(mpro_0178.Name);
   mpro_0109.Checked := True;
   face01la(mpro_0109.Name);
   mpro_0203.Checked := True;
   face01la(mpro_0203.Name);
   mpro_0207.Checked := True;
   face01la(mpro_0207.Name);
   mloc_0115.Checked := True;
   face01la(mloc_0115.Name);
   mloc_0112.Checked := True;
   face01la(mloc_0112.Name);
   mpro_0151.Checked := True;
   face01la(mpro_0151.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   mpro_0133.Checked := True;
   face01la(mpro_0133.Name);
   mpro_0142.Checked := True;
   face01la(mpro_0142.Name);
   mpro_0154.Checked := True;
   face01la(mpro_0154.Name);
   mpro_0155.Checked := True;
   face01la(mpro_0155.Name);
   musu_0103.Checked := True;
   face01la(musu_0103.Name);
   mpro_0190.Checked := True;
   face01la(mpro_0190.Name);
   mpro_0145.Checked := True;
   face01la(mpro_0145.Name);
   mpro_0187.Checked := True;
   face01la(mpro_0187.Name);
   mpro_0160.Checked := True;
   face01la(mpro_0160.Name);

   UltimasVendas1.Checked := True;
   face01la(UltimasVendas1.Name);
   mpro_0194.Checked := True;
   face01la(mpro_0194.Name);
   mpro_0195.Checked := True;
   face01la(mpro_0195.Name);

   ConsultasdeRE1.Checked := True;
   face01la(ConsultasdeRE1.Name);



   mfor_0103.Checked := True;
   face01la(mfor_0103.Name);
   mfor_0109.Checked := True;
   face01la(mfor_0109.Name);
   mfor_0110.Checked := True;
   face01la(mfor_0110.Name);
   mfor_0111.Checked := True;
   face01la(mfor_0111.Name);
   mloc_0103.Checked := True;
   face01la(mloc_0103.Name);
   mloc_0106.Checked := True;
   face01la(mloc_0106.Name);
   mloc_0108.Checked := True;
   face01la(mloc_0108.Name);
   mloc_0109.Checked := True;
   face01la(mloc_0109.Name);
   mcli_0103.Checked := True;
   face01la(mcli_0103.Name);
   mcli_0112.Checked := True;
   face01la(mcli_0112.Name);
   mcli_0106.Checked := True;
   face01la(mcli_0106.Name);
   mven_0103.Checked := True;
   face01la(mven_0103.Name);
   mven_0112.Checked := True;
   face01la(mven_0112.Name);
   mven_0118.Checked := True;
   face01la(mven_0118.Name);
   mven_0121.Checked := True;
   face01la(mven_0121.Name);
   mven_0106.Checked := True;
   face01la(mven_0106.Name);
   mven_0109.Checked := True;
   face01la(mven_0109.Name);
   mven_0115.Checked := True;
   face01la(mven_0115.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mdiv_0112.Checked := True;
   face01la(mdiv_0112.Name);
   mdiv_0121.Checked := True;
   face01la(mdiv_0121.Name);
   mdiv_0124.Checked := True;
   face01la(mdiv_0124.Name);
   mimo_0103.Checked := True;
   face01la(mimo_0103.Name);
   mimo_0106.Checked := True;
   face01la(mimo_0106.Name);
   mImo_0109.Checked := True;
   face01la(mimo_0109.Name);
   rpro_0154.Checked := True;
   face01la(rpro_0154.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rest_0118.Checked := True;
   face01la(rest_0118.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   rest_0121.Checked := True;
   face01la(rest_0121.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   rusu_0103.Checked := True;
   face01la(rusu_0103.Name);
   rfun_0103.Checked := True;
   face01la(rfun_0103.Name);
   rpv_0103.Checked := True;
   face01la(rpv_0103.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   rimo_0103.Checked := True;
   face01la(rimo_0103.Name);
   rimo_0106.Checked := True;
   face01la(rimo_0103.Name);
   ros_0103.Checked := True;
   face01la(ros_0103.Name);
   rdiv_0103.Checked := True;
   face01la(rdiv_0103.Name);
   rfun_0001.Checked := True;
   face01la(rfun_0001.Name);
   lf_0103.Checked := True;
   face01la(lf_0103.Name);
   rfor_0121.Checked := True;
   face01la(rfor_0121.Name);
   rfor_0103.Checked := True;
   face01la(rfor_0103.Name);
   lf_0106.Checked := True;
   face01la(lf_0106.Name);
   lf_0124.Checked := True;
   face01la(lf_0124.Name);
   rent_0103.Checked := True;
   face01la(rent_0103.Name);
   rsai_0109.Checked := True;
   face01la(rsai_0109.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rsai_0103.Checked := True;
   face01la(rsai_0103.Name);
   rsai_0106.Checked := True;
   face01la(rsai_0106.Name);
   gnre0103.Checked := True;
   face01la(gnre0103.Name);
   cfo_0103.Checked := True;
   face01la(cfo_0103.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   lf_0151.Checked := True;
   face01la(lf_0151.Name);
   lf_0109.Checked := True;
   face01la(lf_0109.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   lf_0148.Checked := True;
   face01la(lf_0148.Name);
   lf_0112.Checked := True;
   face01la(lf_0112.Name);
   rven_0103.Checked := True;
   face01la(rven_0103.Name);
   lf_0136.Checked := True;
   face01la(lf_0136.Name);
   lf_0121.Checked := True;
   face01la(lf_0121.Name);
   lf_0127.Checked := True;
   face01la(lf_0127.Name);
   lf_0130.Checked := True;
   face01la(lf_0130.Name);
   lf_0115.Checked := True;
   face01la(lf_0115.Name);
   lf_0118.Checked := True;
   face01la(lf_0118.Name);
   rccu_0103.Checked := True;
   face01la(rccu_0103.Name);
   lf_0133.Checked := True;
   face01la(lf_0133.Name);
   lf_0139.Checked := True;
   face01la(lf_0139.Name);
   sai_0112.Checked := True;
   face01la(sai_0112.Name);
   sai_0127.Checked := True;
   face01la(sai_0127.Name);
   sai_0128.Checked := True;
   face01la(sai_0128.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
   mpro_0181.Checked := True;
   face01la(mpro_0181.Name);
   musu_0106.Checked := True;
   face01la(musu_0106.Name);
   musu_0112.Checked := True;
   face01la(musu_0112.Name);
   mcli_0109.Checked := True;
   face01la(mcli_0109.Name);
   mcli_0115.Checked := True;
   face01la(mcli_0115.Name);
   mcli_0118.Checked := True;
   face01la(mcli_0118.Name);
   mcli_0121.Checked := True;
   face01la(mcli_0121.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   mcli_0130.Checked := True;
   face01la(mcli_0130.Name);
end
  else if ComboBox1.Text = 'Estoquista' then
    begin
   mpro_0103.Checked := True;
   face01la(mpro_0103.Name);
   mpro_0160.Checked := True;
   face01la(mpro_0160.Name);

   UltimasVendas1.Checked := True;
   face01la(UltimasVendas1.Name);
   mpro_0194.Checked := True;
   face01la(mpro_0194.Name);
   mpro_0195.Checked := True;
   face01la(mpro_0195.Name);

   ConsultasdeRE1.Checked := True;
   face01la(ConsultasdeRE1.Name);


   mpro_0206.Checked := True;
   face01la(mpro_0206.Name);
   mpro_0127.Checked := True;
   face01la(mpro_0127.Name);
   mpro_0128.Checked := True;
   face01la(mpro_0128.Name);
   mpro_0129.Checked := True;
   face01la(mpro_0129.Name);
   mpro_0175.Checked := True;
   face01la(mpro_0175.Name);
   mpro_0169.Checked := True;
   face01la(mpro_0169.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mpro_0190.Checked := True;
   face01la(mpro_0190.Name);
   rpro_0127.Checked := True;
   face01la(rpro_0127.Name);
   rpro_0121.Checked := True;
   face01la(rpro_0121.Name);
   rpro_0112.Checked := True;
   face01la(rpro_0112.Name);
   rpro_0115.Checked := True;
   face01la(rpro_0115.Name);
   rpro_0116.Checked := True;
   face01la(rpro_0116.Name);
   rpro_0133.Checked := True;
   face01la(rpro_0133.Name);
   rpro_0166.Checked := True;
   face01la(rpro_0166.Name);
   rpro_0136.Checked := True;
   face01la(rpro_0136.Name);
   rpro_0157.Checked := True;
   face01la(rpro_0157.Name);
   rpro_0181.Checked := True;
   face01la(rpro_0181.Name);
   rpro_0160.Checked := True;
   face01la(rpro_0160.Name);
   rpro_0161.Checked := True;
   face01la(rpro_0161.Name);
   rpro_0162.Checked := True;
   face01la(rpro_0162.Name);
   rpro_0163.Checked := True;
   face01la(rpro_0163.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
   mpro_0112.Checked := True;
   face01la(mpro_0112.Name);
   mpro_0184.Checked := True;
   face01la(mpro_0184.Name);
   mpro_0163.Checked := True;
   face01la(mpro_0163.Name);
   mpro_0103.Checked := True;
   face01la(mpro_0103.Name);
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   mpro_0118.Checked := True;
   face01la(mpro_0118.Name);
   mpro_0166.Checked := True;
   face01la(mpro_0166.Name);
   mpro_0124.Checked := True;
   face01la(mpro_0124.Name);
   mpro_0148.Checked := True;
   face01la(mpro_0148.Name);
   mpro_0157.Checked := True;
   face01la(mpro_0157.Name);
   rpro_0130.Checked := True;
   face01la(rpro_0130.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   rpro_0184.Checked := True;
   face01la(rpro_0184.Name);
   rpro_0154.Checked := True;
   face01la(rpro_0154.Name);                     
   rpro_0187.Checked := True;
   face01la(rpro_0187.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rfor_0121.Checked := True;
   face01la(rfor_0121.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rest_0118.Checked := True;
   face01la(rest_0118.Name);
   rest_0121.Checked := True;
   face01la(rest_0121.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rcli_0118.Checked := True;
   face01la(rcli_0118.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rcli_0127.Checked := True;
   face01la(rcli_0127.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   rpfor_0101.Checked := True;
   face01la(rpfor_0101.Name);
   rpfor_0103.Checked := True;
   face01la(rpfor_0103.Name);
   rped_0301.Checked := True;
   face01la(rped_0301.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   ros_0103.Checked := True;
   face01la(ros_0103.Name);
end else if ComboBox1.Text = 'Faturamento' then begin
   mpro_0103.Checked := True;
   face01la(mpro_0103.Name);
   rpv_0103.Checked := True;
   face01la(rpv_0103.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   rrpro_0106.Checked := True;
   face01la(rrpro_0106.Name);
   rrpro_0109.Checked := True;
   face01la(rrpro_0109.Name);
   est_0124.Checked := True;
   face01la(est_0124.Name);
   est_0115.Checked := True;
   face01la(est_0115.Name);
   est_0130.Checked := True;
   face01la(est_0130.Name);
   est_0136.Checked := True;
   face01la(est_0136.Name);
   est_0142.Checked := True;
   face01la(est_0142.Name);
   est_0154.Checked := True;
   face01la(est_0154.Name);
   est_0160.Checked := True;
   face01la(est_0160.Name);
   est_0166.Checked := True;
   face01la(est_0166.Name);
   rsai_0103.Checked := True;
   face01la(rsai_0103.Name);
   rsai_0106.Checked := True;
   face01la(rsai_0106.Name);
   rsai_0109.Checked := True;
   face01la(rsai_0109.Name);
   gnre0103.Checked := True;
   face01la(gnre0103.Name);
   cfo_0103.Checked := True;
   face01la(cfo_0103.Name);
   lf_0151.Checked := True;
   face01la(lf_0151.Name);
   lf_0106.Checked := True;
   face01la(lf_0106.Name);
   sai_0163.Checked := True;
   face01la(sai_0163.Name);
   sai_0166.Checked := True;
   face01la(sai_0166.Name);
   sai_0172.Checked := True;
   face01la(sai_0172.Name);
   sai_0169.Checked := True;
   face01la(sai_0169.Name);
   sai_0175.Checked := True;
   face01la(sai_0175.Name);
   sai_0178.Checked := True;
   face01la(sai_0178.Name);
   sai_0199.Checked := True;
   face01la(sai_0199.Name);
   sai_0202.Checked := True;
   face01la(sai_0202.Name);
   sai_0203.Checked := True;
   face01la(sai_0203.Name);
   sai_0204.Checked := True;
   face01la(sai_0204.Name);
   sai_0193.Checked := True;
   face01la(sai_0193.Name);
   sai_0154.Checked := True;
   face01la(sai_0154.Name);
   sai_0139.Checked := True;
   face01la(sai_0139.Name);
   sai_0151.Checked := True;
   face01la(sai_0151.Name);
   sai_0152.Checked := True;
   face01la(sai_0152.Name);
   sis_0612.Checked := True;
   face01la(sis_0612.Name);
   sis_0615.Checked := True;
   face01la(sis_0615.Name);
   sis_0621.Checked := True;
   face01la(sis_0621.Name);
   sis_0618.Checked := True;
   face01la(sis_0618.Name);
   sai_0184.Checked := True;
   face01la(sai_0184.Name);
   saiconf_0103.Checked := True;
   face01la(saiconf_0103.Name);
   saiconf_0106.Checked := True;
   face01la(saiconf_0106.Name);
   saiconf_0109.Checked := True;
   face01la(saiconf_0109.Name);
   cr_0212.Checked := True;
   face01la(cr_0212.Name);
   cr_0230.Checked := True;
   face01la(cr_0230.Name);
   cr_0239.Checked := True;
   face01la(cr_0239.Name);
   cr_0209.Checked := True;
   face01la(cr_0209.Name);
   cr_0206.Checked := True;
   face01la(cr_0206.Name);
   rcr_0109.Checked := True;
   face01la(rcr_0109.Name);
   rcr_0115.Checked := True;
   face01la(rcr_0115.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   mloc_0106.Checked := True;
   face01la(mloc_0106.Name);
   mloc_0108.Checked := True;
   face01la(mloc_0108.Name);
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   mloc_0112.Checked := True;
   face01la(mloc_0112.Name);
   mloc_0115.Checked := True;
   face01la(mloc_0115.Name);                     
   mcli_0103.Checked := True;
   face01la(mcli_0103.Name);
   mcli_0112.Checked := True;
   face01la(mcli_0112.Name);
   mven_0103.Checked := True;
   face01la(mven_0103.Name);
   mven_0106.Checked := True;
   face01la(mven_0106.Name);
   mven_0109.Checked := True;
   face01la(mven_0109.Name);
   mven_0115.Checked := True;
   face01la(mven_0115.Name);
   rpro_0103.Checked := True;
   face01la(rpro_0103.Name);
   rpro_0154.Checked := True;
   face01la(rpro_0154.Name);
   rpro_0115.Checked := True;
   face01la(rpro_0115.Name);
   rpro_0116.Checked := True;
   face01la(rpro_0116.Name);
   rpro_0133.Checked := True;
   face01la(rpro_0133.Name);
   rpro_0166.Checked := True;
   face01la(rpro_0166.Name);
   rpro_0169.Checked := True;
   face01la(rpro_0169.Name);
   rpro_0142.Checked := True;
   face01la(rpro_0142.Name);
   rpro_0181.Checked := True;
   face01la(rpro_0181.Name);
   rfor_0109.Checked := True;
   face01la(rfor_0109.Name);
   rfor_0106.Checked := True;
   face01la(rfor_0106.Name);
   rest_0106.Checked := True;
   face01la(rest_0106.Name);
   rest_0109.Checked := True;
   face01la(rest_0109.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rfor_0118.Checked := True;
   face01la(rfor_0118.Name);
   rcli_0103.Checked := True;
   face01la(rcli_0103.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rcli_0112.Checked := True;
   face01la(rcli_0112.Name);
   rcli_0115.Checked := True;
   face01la(rcli_0115.Name);
   rped_0301.Checked := True;
   face01la(rped_0301.Name);
   rped_0103.Checked := True;
   face01la(rped_0103.Name);
   rped_0109.Checked := True;
   face01la(rped_0109.Name);
   rped_0112.Checked := True;
   face01la(rped_0112.Name);
   rped_0115.Checked := True;
   face01la(rped_0115.Name);
   rped_0118.Checked := True;
   face01la(rped_0118.Name);
   rped_0119.Checked := True;
   face01la(rped_0119.Name);
   rped_0120.Checked := True;
   face01la(rped_0120.Name);
   rped_0121.Checked := True;
   face01la(rped_0121.Name);
   est_0106.Checked := True;
   face01la(est_0106.Name);
   est_0112.Checked := True;
   face01la(est_0112.Name);
   est_0118.Checked := True;
   face01la(est_0118.Name);
   est_0121.Checked := True;
   face01la(est_0121.Name);
   sai_0103.Checked := True;
   face01la(sai_0103.Name);
   sai_0106.Checked := True;
   face01la(sai_0106.Name);
   sai_0160.Checked := True;
   face01la(sai_0160.Name);
   sai_0181.Checked := True;
   face01la(sai_0181.Name);
   sai_0196.Checked := True;
   face01la(sai_0196.Name);
   sai_0112.Checked := True;
   face01la(sai_0112.Name);
   sai_0148.Checked := True;
   face01la(sai_0148.Name);
   sai_0127.Checked := True;
   face01la(sai_0127.Name);
   sai_0128.Checked := True;
   face01la(sai_0128.Name);
   sai_0157.Checked := True;
   face01la(sai_0157.Name);
   sai_0142.Checked := True;
   face01la(sai_0142.Name);
   sai_0115.Checked := True;
   face01la(sai_0115.Name);
   sai_0121.Checked := True;
   face01la(sai_0121.Name);
   sai_0122.Checked := True;
   face01la(sai_0122.Name);
   sai_0136.Checked := True;
   face01la(sai_0136.Name);
   sai_0124.Checked := True;
   face01la(sai_0124.Name);
   sai_0133.Checked := True;
   face01la(sai_0133.Name);
   sai_0145.Checked := True;
   face01la(sai_0145.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
   mcli_0115.Checked := True;
   face01la(mcli_0115.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   mcli_0109.Checked := True;
   face01la(mcli_0109.Name);
   mcli_0118.Checked := True;
   face01la(mcli_0118.Name);
   mcli_0121.Checked := True;
   face01la(mcli_0121.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   mcli_0130.Checked := True;
   face01la(mcli_0130.Name);
   mcli_0106.Checked := True;
   face01la(mcli_0106.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mdiv_0103.Checked := True;
   face01la(mdiv_0103.Name);
   mdiv_0109.Checked := True;
   face01la(mdiv_0109.Name);
   rpro_0106.Checked := True;
   face01la(rpro_0106.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   rpro_0112.Checked := True;
   face01la(rpro_0112.Name);
   rpro_0139.Checked := True;
   face01la(rpro_0139.Name);
   rpro_0160.Checked := True;
   face01la(rpro_0160.Name);
   rpro_0161.Checked := True;
   face01la(rpro_0161.Name);
   rpro_0162.Checked := True;
   face01la(rpro_0162.Name);
   rpro_0163.Checked := True;
   face01la(rpro_0163.Name);
   rpro_0187.Checked := True;
   face01la(rpro_0187.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rest_0118.Checked := True;
   face01la(rest_0118.Name);
   rest_0121.Checked := True;
   face01la(rest_0121.Name);
   rcli_0118.Checked := True;
   face01la(rcli_0118.Name);
   rcli_0303.Checked := True;
   face01la(rcli_0303.Name);
   rcli_0306.Checked := True;
   face01la(rcli_0306.Name);
   ExportarEmailCSV1.Checked := True;
   face01la(ExportarEmailCSV1.Name);
   rcli_0121.Checked := True;
   face01la(rcli_0121.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rcli_0127.Checked := True;
   face01la(rcli_0127.Name);
   rtpro_0106.Checked := True;
   face01la(rtpro_0106.Name);
   rgpro_0106.Checked := True;
   face01la(rgpro_0106.Name);
   rtpro_0109.Checked := True;
   face01la(rtpro_0109.Name);
   rgpro_0109.Checked := True;
   face01la(rgpro_0109.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   rcpro_0106.Checked := True;
   face01la(rcpro_0106.Name);
   rcpro_0109.Checked := True;
   face01la(rcpro_0109.Name);
end else if ComboBox1.Text = 'Financeiro' then begin
   rger_0230.Checked := True;
   face01la(rger_0230.Name);
   rger_0245.Checked := True;
   face01la(rger_0245.Name);
   rger_0248.Checked := True;
   face01la(rger_0248.Name);
   rger_0257.Checked := True;
   face01la(rger_0257.Name);
   rger_0260.Checked := True;
   face01la(rger_0260.Name);
   rger_0261.Checked := True;
   face01la(rger_0261.Name);
   rger_0262.Checked := True;
   face01la(rger_0262.Name);
   rger_0233.Checked := True;
   face01la(rger_0233.Name);
   rger_0236.Checked := True;
   face01la(rger_0236.Name);
   rger_0239.Checked := True;
   face01la(rger_0239.Name);
   rger_0242.Checked := True;
   face01la(rger_0242.Name);
   rger_0251.Checked := True;
   face01la(rger_0251.Name);
   rger_0254.Checked := True;
   face01la(rger_0254.Name);
   rven_0121.Checked := True;
   face01la(rven_0121.Name);
   cp_0103.Checked := True;
   face01la(cp_0103.Name);
   cr_0909.Checked := True;
   face01la(cr_0909.Name);
   cp_0209.Checked := True;
   face01la(cp_0209.Name);
   cp_0212.Checked := True;
   face01la(cp_0212.Name);
   cp_0303.Checked := True;
   face01la(cp_0303.Name);
   cp_0306.Checked := True;
   face01la(cp_0306.Name);
   cp_0309.Checked := True;
   face01la(cp_0309.Name);
   cp_0312.Checked := True;
   face01la(cp_0312.Name);
   cp_0109.Checked := True;
   face01la(cp_0109.Name);
   cp_0130.Checked := True;
   face01la(cp_0130.Name);
   cp_0112.Checked := True;
   face01la(cp_0112.Name);
   cp_0115.Checked := True;
   face01la(cp_0115.Name);
   cp_0121.Checked := True;
   face01la(cp_0121.Name);
   cp_0124.Checked := True;
   face01la(cp_0124.Name);
   cp_0127.Checked := True;
   face01la(cp_0127.Name);
   cr_0103.Checked := True;
   face01la(cr_0103.Name);
   cr_0203.Checked := True;
   face01la(cr_0203.Name);
   cr_0206.Checked := True;
   face01la(cr_0206.Name);
   cr_0209.Checked := True;
   face01la(cr_0209.Name);
   cr_0215.Checked := True;
   face01la(cr_0215.Name);
   cr_0218.Checked := True;
   face01la(cr_0218.Name);
   cr_0221.Checked := True;
   face01la(cr_0221.Name);
   cr_0224.Checked := True;
   face01la(cr_0224.Name);
   cr_0212.Checked := True;
   face01la(cr_0212.Name);
   cr_0230.Checked := True;
   face01la(cr_0230.Name);
   cr_0233.Checked := True;
   face01la(cr_0233.Name);
   cr_0236.Checked := True;
   face01la(cr_0236.Name);
   cr_0239.Checked := True;
   face01la(cr_0239.Name);
   cr_0303.Checked := True;
   face01la(cr_0303.Name);
   cr_0306.Checked := True;
   face01la(cr_0306.Name);
   cr_0309.Checked := True;
   face01la(cr_0309.Name);
   cr_0312.Checked := True;
   face01la(cr_0312.Name);
   cr_0315.Checked := True;
   face01la(cr_0315.Name);
   cr_0318.Checked := True;
   face01la(cr_0318.Name);
   cr_0903.Checked := True;
   face01la(cr_0903.Name);
   cr_0906.Checked := True;
   face01la(cr_0906.Name);
   cr_0912.Checked := True;
   face01la(cr_0912.Name);
   cr_0918.Checked := True;
   face01la(cr_0918.Name);
   cr_0919.Checked := True;
   face01la(cr_0919.Name);
   cr_0915.Checked := True;
   face01la(cr_0915.Name);
   cr_0921.Checked := True;
   face01la(cr_0921.Name);
   cr_0924.Checked := True;
   face01la(cr_0924.Name);
   cr_0927.Checked := True;
   face01la(cr_0927.Name);
   cr_0929.Checked := True;
   face01la(cr_0929.Name);
   cr_0930.Checked := True;
   face01la(cr_0930.Name);
   rcr_0106.Checked := True;
   face01la(rcr_0106.Name);
   rcr_0109.Checked := True;
   face01la(rcr_0109.Name);
   rcr_0112.Checked := True;
   face01la(rcr_0112.Name);
   rcr_0115.Checked := True;
   face01la(rcr_0115.Name);
   rcr_0118.Checked := True;
   face01la(rcr_0118.Name);
   rcr_0121.Checked := True;
   face01la(rcr_0121.Name);
   rcr_0124.Checked := True;
   face01la(rcr_0124.Name);
   rcr_0127.Checked := True;
   face01la(rcr_0127.Name);
   rcr_0130.Checked := True;
   face01la(rcr_0130.Name);
   rcr_0139.Checked := True;
   face01la(rcr_0139.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   mpro_0106.Checked := True;
   face01la(mpro_0106.Name);
   mcli_0112.Checked := True;
   face01la(mcli_0112.Name);
   mcli_0133.Checked := True;
   face01la(mcli_0133.Name);
   mcli_0136.Checked := True;
   face01la(mcli_0136.Name);
   mcai_0109.Checked := True;
   face01la(mcai_0109.Name);
   mcai_0133.Checked := True;
   face01la(mcai_0133.Name);
   mcai_0136.Checked := True;
   face01la(mcai_0136.Name);
   mcai_0137.Checked := True;
   face01la(mcai_0137.Name);

   mcai_0140.Checked := True;
   face01la(mcai_0140.Name);

   mcai_0143.Checked := True;
   face01la(mcai_0143.Name);

   mdiv_0118.Checked := True;
   face01la(mdiv_0118.Name);
   mdiv_0106.Checked := True;
   face01la(mdiv_0106.Name);
   rpro_0139.Checked := True;
   face01la(rpro_0139.Name);
   rpro_0142.Checked := True;
   face01la(rpro_0142.Name);
   rfor_0121.Checked := True;
   face01la(rfor_0121.Name);
   rfor_0103.Checked := True;
   face01la(rfor_0103.Name);
   rfor_0109.Checked := True;
   face01la(rfor_0109.Name);
   rfor_0118.Checked := True;
   face01la(rfor_0118.Name);
   rfor_0106.Checked := True;
   face01la(rfor_0106.Name);
   rfor_0112.Checked := True;
   face01la(rfor_0112.Name);
   rfor_0115.Checked := True;
   face01la(rfor_0115.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rest_0106.Checked := True;
   face01la(rest_0106.Name);
   rest_0109.Checked := True;
   face01la(rest_0109.Name);
   rest_0112.Checked := True;
   face01la(rest_0112.Name);
   rest_0115.Checked := True;
   face01la(rest_0115.Name);
   rest_0118.Checked := True;
   face01la(rest_0118.Name);
   rest_0121.Checked := True;
   face01la(rest_0121.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rcli_0303.Checked := True;
   face01la(rcli_0303.Name);
   rcli_0306.Checked := True;
   face01la(rcli_0306.Name);
   ExportarEmailCSV1.Checked := True;
   face01la(ExportarEmailCSV1.Name);
   rcli_0121.Checked := True;
   face01la(rcli_0121.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rven_0124.Checked := True;
   face01la(rven_0124.Name);
   rven_0118.Checked := True;
   face01la(rven_0118.Name);
   rven_0133.Checked := True;
   face01la(rven_0133.Name);
   rven_0106.Checked := True;
   face01la(rven_0106.Name);
   rven_0109.Checked := True;
   face01la(rven_0109.Name);
   rven_0112.Checked := True;
   face01la(rven_0112.Name);
   rven_0130.Checked := True;
   face01la(rven_0130.Name);
   rven_0127.Checked := True;
   face01la(rven_0127.Name);
   rven_0142.Checked := True;
   face01la(rven_0142.Name);
   rven_0148.Checked := True;
   face01la(rven_0148.Name);
   rven_0145.Checked := True;
   face01la(rven_0145.Name);
   rven_0151.Checked := True;
   face01la(rven_0151.Name);
   rven_0152.Checked := True;
   face01la(rven_0152.Name);
   rven_0153.Checked := True;
   face01la(rven_0153.Name);
   rven_0154.Checked := True;
   face01la(rven_0154.Name);
   rven_0156.Checked := True;
   face01la(rven_0156.Name);

   rpv_0103.Checked := True;
   face01la(rpv_0103.Name);
   rbco_0103.Checked := True;
   face01la(rbco_0103.Name);
   rccu_0103.Checked := True;
   face01la(rccu_0103.Name);
   rdep_0103.Checked := True;
   face01la(rdep_0103.Name);
   rcai_0103.Checked := True;
   face01la(rcai_0103.Name);
   rpfor_0101.Checked := True;
   face01la(rpfor_0101.Name);
   rpfor_0103.Checked := True;
   face01la(rpfor_0103.Name);
   rped_0301.Checked := True;
   face01la(rped_0301.Name);
   rped_0103.Checked := True;
   face01la(rped_0103.Name);
   rped_0109.Checked := True;
   face01la(rped_0109.Name);
   rped_0112.Checked := True;
   face01la(rped_0112.Name);
   rped_0115.Checked := True;
   face01la(rped_0115.Name);
   rped_0118.Checked := True;
   face01la(rped_0118.Name);
   rped_0119.Checked := True;
   face01la(rped_0119.Name);
   rped_0120.Checked := True;
   face01la(rped_0120.Name);
   rped_0121.Checked := True;
   face01la(rped_0121.Name);
   est_0109.Checked := True;
   face01la(est_0109.Name);
   est_0124.Checked := True;
   face01la(est_0124.Name);
   est_0112.Checked := True;
   face01la(est_0112.Name);
   est_0118.Checked := True;
   face01la(est_0118.Name);
   est_0121.Checked := True;
   face01la(est_0121.Name);
   est_0115.Checked := True;
   face01la(est_0115.Name);
   est_0145.Checked := True;
   face01la(est_0145.Name);
   est_0148.Checked := True;
   face01la(est_0148.Name);
   est_0151.Checked := True;
   face01la(est_0151.Name);
   est_0154.Checked := True;
   face01la(est_0154.Name);
   lf_0112.Checked := True;
   face01la(lf_0112.Name);
   cp_0203.Checked := True;
   face01la(cp_0203.Name);
   cr_0928.Checked := True;
   face01la(cr_0928.Name);
   mcli_0130.Checked := True;
   face01la(mcli_0130.Name);
   mcli_0106.Checked := True;
   face01la(mcli_0106.Name);
   mcli_0139.Checked := True;
   face01la(mcli_0139.Name);
   mcai_0103.Checked := True;
   face01la(mcai_0103.Name);
   mcai_0106.Checked := True;
   face01la(mcai_0106.Name);
   mcai_0107.Checked := True;
   face01la(mcai_0107.Name);
   mcli_0103.Checked := True;
   face01la(mcli_0103.Name);
   mcai_0112.Checked := True;
   face01la(mcai_0112.Name);
   mcai_0115.Checked := True;
   face01la(mcai_0115.Name);
   mcai_0118.Checked := True;
   face01la(mcai_0118.Name);
   mcai_0121.Checked := True;
   face01la(mcai_0121.Name);
   mcai_0124.Checked := True;
   face01la(mcai_0124.Name);
   mcai_0127.Checked := True;
   face01la(mcai_0127.Name);
   mcai_0130.Checked := True;
   face01la(mcai_0130.Name);
   rger_0103.Checked := True;
   face01la(rger_0103.Name);
   rger_0106.Checked := True;
   face01la(rger_0106.Name);
   rger_0109.Checked := True;
   face01la(rger_0109.Name);
   rger_0112.Checked := True;
   face01la(rger_0112.Name);
   rger_0115.Checked := True;
   face01la(rger_0115.Name);
   rger_0200.Checked := True;
   face01la(rger_0200.Name);
   rger_0209.Checked := True;
   face01la(rger_0209.Name);
   rger_0212.Checked := True;
   face01la(rger_0212.Name);
   rger_0218.Checked := True;
   face01la(rger_0218.Name);
   rger_0215.Checked := True;
   face01la(rger_0215.Name);
   rger_0221.Checked := True;
   face01la(rger_0221.Name);
end else if ComboBox1.Text = 'Supervisor' then begin
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   cr_0215.Checked := True;
   face01la(cr_0215.Name);
   cr_0212.Checked := True;
   face01la(cr_0212.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rped_0103.Checked := True;
   face01la(rped_0103.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   sis0615.Checked := True;
   face01la(sis0615.Name);
   mcli_0103.Checked := True;
   face01la(mcli_0103.Name);
   rcr_0106.Checked := True;
   face01la(rcr_0106.Name);
   rcr_0112.Checked := True;
   face01la(rcr_0112.Name);
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   mpro_0160.Checked := True;
   face01la(mpro_0160.Name);

   UltimasVendas1.Checked := True;
   face01la(UltimasVendas1.Name);
   mpro_0194.Checked := True;
   face01la(mpro_0194.Name);
   mpro_0195.Checked := True;
   face01la(mpro_0195.Name);

   ConsultasdeRE1.Checked := True;
   face01la(ConsultasdeRE1.Name);

   mloc_0103.Checked := True;
   face01la(mloc_0103.Name);
   mpro_0151.Checked := True;
   face01la(mpro_0151.Name);
   mloc_0106.Checked := True;
   face01la(mloc_0106.Name);
   mloc_0108.Checked := True;
   face01la(mloc_0108.Name);
   mloc_0112.Checked := True;
   face01la(mloc_0112.Name);
   mloc_0115.Checked := True;
   face01la(mloc_0115.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   mcli_0112.Checked := True;
   face01la(mcli_0112.Name);
   mcli_0118.Checked := True;
   face01la(mcli_0118.Name);
   mcli_0121.Checked := True;
   face01la(mcli_0121.Name);
   mcli_0130.Checked := True;
   face01la(mcli_0130.Name);
   mcli_0106.Checked := True;
   face01la(mcli_0106.Name);
   mcli_0133.Checked := True;
   face01la(mcli_0133.Name);
   mcli_0136.Checked := True;
   face01la(mcli_0136.Name);
   mven_0103.Checked := True;
   face01la(mven_0103.Name);
   mven_0112.Checked := True;
   face01la(mven_0112.Name);
   mven_0118.Checked := True;
   face01la(mven_0118.Name);
   mven_0121.Checked := True;
   face01la(mven_0121.Name);
   mdiv_0103.Checked := True;
   face01la(mdiv_0103.Name);
   mven_0115.Checked := True;
   face01la(mven_0115.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mdiv_0109.Checked := True;
   face01la(mdiv_0109.Name);
   mdiv_0106.Checked := True;
   face01la(mdiv_0106.Name);
   mdiv_0118.Checked := True;
   face01la(mdiv_0118.Name);
   mdiv_0112.Checked := True;
   face01la(mdiv_0112.Name);
   mdiv_0115.Checked := True;
   face01la(mdiv_0115.Name);
   mdiv_0121.Checked := True;
   face01la(mdiv_0121.Name);
   rpro_0106.Checked := True;
   face01la(rpro_0106.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   rpro_0103.Checked := True;
   face01la(rpro_0103.Name);
   rpro_0139.Checked := True;
   face01la(rpro_0139.Name);
   rpro_0142.Checked := True;
   face01la(rpro_0142.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rest_0109.Checked := True;
   face01la(rest_0109.Name);
   rest_0106.Checked := True;
   face01la(rest_0106.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rcli_0112.Checked := True;
   face01la(rcli_0112.Name);
   rcli_0115.Checked := True;
   face01la(rcli_0115.Name);
   rcli_0303.Checked := True;
   face01la(rcli_0303.Name);
   rcli_0306.Checked := True;
   face01la(rcli_0306.Name);
   ExportarEmailCSV1.Checked := True;
   face01la(ExportarEmailCSV1.Name);
   rcli_0121.Checked := True;
   face01la(rcli_0121.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   rtpro_0106.Checked := True;
   face01la(rtpro_0106.Name);
   rtpro_0109.Checked := True;
   face01la(rtpro_0109.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rgpro_0106.Checked := True;
   face01la(rgpro_0106.Name);
   rgpro_0109.Checked := True;
   face01la(rgpro_0109.Name);
   rger_0233.Checked := True;
   face01la(rger_0233.Name);
   rger_0236.Checked := True;
   face01la(rger_0236.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   rcpro_0106.Checked := True;
   face01la(rcpro_0106.Name);
   rcpro_0109.Checked := True;
   face01la(rcpro_0109.Name);
   rven_0103.Checked := True;
   face01la(rven_0103.Name);
   rven_0118.Checked := True;
   face01la(rven_0118.Name);
   rven_0121.Checked := True;
   face01la(rven_0121.Name);
   rven_0124.Checked := True;
   face01la(rven_0124.Name);
   rven_0133.Checked := True;
   face01la(rven_0133.Name);
   rven_0106.Checked := True;
   face01la(rven_0106.Name);
   rven_0109.Checked := True;
   face01la(rven_0109.Name);
   rven_0112.Checked := True;
   face01la(rven_0112.Name);
   rven_0130.Checked := True;
   face01la(rven_0130.Name);
   rven_0127.Checked := True;
   face01la(rven_0127.Name);
   rven_0142.Checked := True;
   face01la(rven_0142.Name);
   rven_0148.Checked := True;
   face01la(rven_0148.Name);
   rven_0145.Checked := True;
   face01la(rven_0145.Name);
   rven_0151.Checked := True;
   face01la(rven_0151.Name);
   rven_0152.Checked := True;
   face01la(rven_0152.Name);
   rven_0154.Checked := True;
   face01la(rven_0154.Name);
   rven_0156.Checked := True;
   face01la(rven_0156.Name);

   rven_0153.Checked := True;
   face01la(rven_0153.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   rpv_0103.Checked := True;
   face01la(rpv_0103.Name);
   rped_0301.Checked := True;
   face01la(rped_0301.Name);
   rped_0109.Checked := True;
   face01la(rped_0109.Name);
   rped_0112.Checked := True;
   face01la(rped_0112.Name);
   rped_0115.Checked := True;
   face01la(rped_0115.Name);
   rped_0118.Checked := True;
   face01la(rped_0118.Name);
   rped_0119.Checked := True;
   face01la(rped_0119.Name);
   rped_0120.Checked := True;
   face01la(rped_0120.Name);
   rped_0121.Checked := True;
   face01la(rped_0121.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   rrpro_0106.Checked := True;
   face01la(rrpro_0106.Name);
   rrpro_0109.Checked := True;
   face01la(rrpro_0109.Name);
   est_0106.Checked := True;
   face01la(est_0106.Name);
   est_0112.Checked := True;
   face01la(est_0112.Name);
   est_0118.Checked := True;
   face01la(est_0118.Name);
   est_0121.Checked := True;
   face01la(est_0121.Name);
   est_0115.Checked := True;
   face01la(est_0115.Name);
   est_0130.Checked := True;
   face01la(est_0130.Name);
   est_0136.Checked := True;
   face01la(est_0136.Name);
   est_0142.Checked := True;
   face01la(est_0142.Name);
   est_0145.Checked := True;
   face01la(est_0145.Name);
   est_0154.Checked := True;
   face01la(est_0154.Name);
   est_0160.Checked := True;
   face01la(est_0160.Name);
   est_0166.Checked := True;
   face01la(est_0166.Name);
   sai_0103.Checked := True;
   face01la(sai_0103.Name);
   sai_0133.Checked := True;
   face01la(sai_0133.Name);
   sai_0193.Checked := True;
   face01la(sai_0193.Name);
   sai_0151.Checked := True;
   face01la(sai_0151.Name);
   sai_0152.Checked := True;
   face01la(sai_0152.Name);
   cr_0230.Checked := True;
   face01la(cr_0230.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
end else if ComboBox1.Text = 'Vendedor' then begin
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   rped_0103.Checked := True;
   face01la(rped_0103.Name);
   rped_0109.Checked := True;
   face01la(rped_0109.Name);
   rped_0301.Checked := True;
   face01la(rped_0301.Name);
   rped_0112.Checked := True;
   face01la(rped_0112.Name);
   rped_0115.Checked := True;
   face01la(rped_0115.Name);
   rped_0118.Checked := True;
   face01la(rped_0118.Name);
   sai_0103.Checked := True;
   rped_0119.Checked := True;
   face01la(rped_0119.Name);
   rped_0120.Checked := True;
   face01la(rped_0120.Name);
   rped_0121.Checked := True;
   face01la(rped_0121.Name);
   face01la(sai_0103.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
   mpro_0106.Checked := True;
   face01la(mpro_0106.Name);
   mloc_0106.Checked := True;
   face01la(mloc_0106.Name);
   mloc_0108.Checked := True;
   face01la(mloc_0108.Name);
   mloc_0103.Checked := True;
   face01la(mloc_0103.Name);
   mloc_0112.Checked := True;
   face01la(mloc_0112.Name);
   mloc_0115.Checked := True;
   face01la(mloc_0115.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   mcli_0112.Checked := True;
   face01la(mcli_0112.Name);
   mcli_0118.Checked := True;
   face01la(mcli_0118.Name);
   mcli_0121.Checked := True;
   face01la(mcli_0121.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   mcli_0130.Checked := True;
   face01la(mcli_0130.Name);
   mcli_0106.Checked := True;
   face01la(mcli_0106.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mdiv_0112.Checked := True;
   face01la(mdiv_0112.Name);
   rpro_0103.Checked := True;
   face01la(rpro_0103.Name);
   rpro_0106.Checked := True;
   face01la(rpro_0106.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   rpro_0139.Checked := True;
   face01la(rpro_0139.Name);
   rpro_0142.Checked := True;
   face01la(rpro_0142.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rcli_0109.Checked := True;
   face01la(rcli_0109.Name);
   rcli_0112.Checked := True;
   face01la(rcli_0112.Name);
   rcli_0115.Checked := True;
   face01la(rcli_0115.Name);
   rcli_0303.Checked := True;
   face01la(rcli_0303.Name);
   rcli_0306.Checked := True;
   face01la(rcli_0306.Name);
   ExportarEmailCSV1.Checked := True;
   face01la(ExportarEmailCSV1.Name);
   rcli_0121.Checked := True;
   face01la(rcli_0121.Name);
   rcli_0122.Checked := True;
   face01la(rcli_0122.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   rtpro_0106.Checked := True;
   face01la(rtpro_0106.Name);
   rtpro_0109.Checked := True;
   face01la(rgpro_0103.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rgpro_0106.Checked := True;
   face01la(rgpro_0106.Name);
   rgpro_0109.Checked := True;
   face01la(rgpro_0109.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   rcpro_0106.Checked := True;
   face01la(rcpro_0106.Name);
   rcpro_0109.Checked := True;
   face01la(rcpro_0109.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   rrpro_0106.Checked := True;
   face01la(rrpro_0106.Name);
   rrpro_0109.Checked := True;
   face01la(rrpro_0109.Name);
   est_0112.Checked := True;
   face01la(est_0112.Name);
   est_0118.Checked := True;
   face01la(est_0118.Name);
   est_0121.Checked := True;
   face01la(est_0121.Name);
   est_0106.Checked := True;
   face01la(est_0106.Name);
   est_0130.Checked := True;
   face01la(est_0130.Name);
   est_0136.Checked := True;
   face01la(est_0136.Name);
   est_0142.Checked := True;
   face01la(est_0142.Name);
   est_0154.Checked := True;
   face01la(est_0154.Name);
   est_0160.Checked := True;
   face01la(est_0160.Name);
   est_0166.Checked := True;
   face01la(est_0166.Name);
   cr_0212.Checked := True;
   face01la(cr_0212.Name);
   cr_0230.Checked := True;
   face01la(cr_0230.Name);
   rcr_0115.Checked := True;
   face01la(rcr_0115.Name);
end else if ComboBox1.Text = 'Compras' then begin
   mpro_0172.Checked := True;
   face01la(mpro_0172.Name);
   mpro_0103.Checked := True;
   face01la(mpro_0103.Name);
   mpro_0160.Checked := True;
   face01la(mpro_0160.Name);

   UltimasVendas1.Checked := True;
   face01la(UltimasVendas1.Name);
   mpro_0194.Checked := True;
   face01la(mpro_0194.Name);
   mpro_0195.Checked := True;
   face01la(mpro_0195.Name);

   ConsultasdeRE1.Checked := True;
   face01la(ConsultasdeRE1.Name);

   mfor_0106.Checked := True;
   face01la(mfor_0106.Name);
   mfor_0103.Checked := True;
   face01la(mfor_0103.Name);
   mloc_0103.Checked := True;
   face01la(mloc_0103.Name);
   mloc_0106.Checked := True;
   face01la(mloc_0106.Name);
   mloc_0108.Checked := True;
   face01la(mloc_0108.Name);
   mloc_0112.Checked := True;
   face01la(mloc_0112.Name);
   mloc_0115.Checked := True;
   face01la(mloc_0115.Name);
   mloc_0107.Checked := True;
   face01la(mloc_0107.Name);
   mtra_0103.Checked := True;
   face01la(mtra_0103.Name);
   mcli_0124.Checked := True;
   face01la(mcli_0124.Name);
   mcli_0125.Checked := True;
   face01la(mcli_0125.Name);
   rfor_0103.Checked := True;
   face01la(rfor_0103.Name);
   rcli_0106.Checked := True;
   face01la(rcli_0106.Name);
   rcli_0128.Checked := True;
   face01la(rcli_0128.Name);
   rpro_0103.Checked := True;
   face01la(rpro_0103.Name);
   rpro_0148.Checked := True;
   face01la(rpro_0148.Name);
   rpro_0145.Checked := True;
   face01la(rpro_0145.Name);
   rpro_0151.Checked := True;
   face01la(rpro_0151.Name);
   mpro_0203.Checked := True;
   face01la(mpro_0203.Name);
   mpro_0207.Checked := True;
   face01la(mpro_0207.Name);
   mpro_0206.Checked := True;
   face01la(mpro_0206.Name);
   mpro_0209.Checked := True;
   face01la(mpro_0209.Name);
   cp_0303.Checked := True;
   face01la(cp_0303.Name);
   cp_0306.Checked := True;
   face01la(cp_0306.Name);
   cp_0309.Checked := True;
   face01la(cp_0309.Name);
   cp_0312.Checked := True;
   face01la(cp_0312.Name);
   mpro_0181.Checked := True;
   face01la(mpro_0181.Name);
   mpro_0166.Checked := True;
   face01la(mpro_0166.Name);
   mpro_0118.Checked := True;
   face01la(mpro_0118.Name);
   mpro_0115.Checked := True;
   face01la(mpro_0115.Name);
   mpro_0124.Checked := True;
   face01la(mpro_0124.Name);
   mpro_0121.Checked := True;
   face01la(mpro_0121.Name);
   mpro_0148.Checked := True;
   face01la(mpro_0148.Name);
   mpro_0193.Checked := True;
   face01la(mpro_0193.Name);
   mpro_0109.Checked := True;
   face01la(mpro_0109.Name);
   mpro_0130.Checked := True;
   face01la(mpro_0130.Name);
   mpro_0106.Checked := True;
   face01la(mpro_0106.Name);
   mpro_0178.Checked := True;
   face01la(mpro_0178.Name);
   mpro_0133.Checked := True;
   face01la(mpro_0133.Name);
   mpro_0142.Checked := True;
   face01la(mpro_0142.Name);
   mpro_0112.Checked := True;
   face01la(mpro_0112.Name);
   mpro_0145.Checked := True;
   face01la(mpro_0145.Name);
   mpro_0190.Checked := True;
   face01la(mpro_0190.Name);
   mpro_0187.Checked := True;
   face01la(mpro_0187.Name);
   rpro_0109.Checked := True;
   face01la(rpro_0109.Name);
   mfor_0109.Checked := True;
   face01la(mfor_0109.Name);
   mfor_0110.Checked := True;
   face01la(mfor_0110.Name);
   mfor_0111.Checked := True;
   face01la(mfor_0111.Name);
   rpro_0106.Checked := True;
   face01la(rpro_0106.Name);
   rpro_0121.Checked := True;
   face01la(rpro_0121.Name);
   rpro_0112.Checked := True;
   face01la(rpro_0112.Name);
   rpro_0115.Checked := True;
   face01la(rpro_0115.Name);
   rpro_0116.Checked := True;
   face01la(rpro_0116.Name);
   rpro_0118.Checked := True;
   face01la(rpro_0118.Name);
   rpro_0127.Checked := True;
   face01la(rpro_0127.Name);
   rpro_0130.Checked := True;
   face01la(rpro_0130.Name);
   rpro_0136.Checked := True;
   face01la(rpro_0136.Name);
   rpro_0184.Checked := True;
   face01la(rpro_0184.Name);
   rpro_0154.Checked := True;
   face01la(rpro_0154.Name);
   rpro_0160.Checked := True;
   face01la(rpro_0160.Name);
   rpro_0161.Checked := True;
   face01la(rpro_0161.Name);
   rpro_0162.Checked := True;
   face01la(rpro_0162.Name);
   rpro_0163.Checked := True;
   face01la(rpro_0163.Name);
   rpro_0187.Checked := True;
   face01la(rpro_0187.Name);
   rpro_0178.Checked := True;
   face01la(rpro_0178.Name);
   rfor_0121.Checked := True;
   face01la(rfor_0121.Name);
   rfor_0112.Checked := True;
   face01la(rfor_0112.Name);
   rfor_0115.Checked := True;
   face01la(rfor_0115.Name);
   rest_0103.Checked := True;
   face01la(rest_0103.Name);
   rest_0112.Checked := True;
   face01la(rest_0112.Name);
   rest_0115.Checked := True;
   face01la(rest_0115.Name);
   rest_0118.Checked := True;
   face01la(rest_0118.Name);
   rest_0121.Checked := True;
   face01la(rest_0121.Name);
   rtpro_0103.Checked := True;
   face01la(rtpro_0103.Name);
   rtpro_0112.Checked := True;
   face01la(rtpro_0112.Name);
   rtpro_0115.Checked := True;
   face01la(rtpro_0115.Name);
   rgpro_0103.Checked := True;
   face01la(rgpro_0103.Name);
   rgpro_0112.Checked := True;
   face01la(rgpro_0112.Name);
   rgpro_0115.Checked := True;
   face01la(rgpro_0115.Name);
   rger_0239.Checked := True;
   face01la(rger_0239.Name);
   rcpro_0103.Checked := True;
   face01la(rcpro_0103.Name);
   rcpro_0112.Checked := True;
   face01la(rcpro_0112.Name);
   rcpro_0115.Checked := True;
   face01la(rcpro_0115.Name);
   rtra_0103.Checked := True;
   face01la(rtra_0103.Name);
   rtra_0104.Checked := True;
   face01la(rtra_0104.Name);
   rpfor_0101.Checked := True;
   face01la(rpfor_0101.Name);
   rpfor_0103.Checked := True;
   face01la(rpfor_0103.Name);
   rrpro_0103.Checked := True;
   face01la(rrpro_0103.Name);
   rrpro_0112.Checked := True;
   face01la(rrpro_0112.Name);
   rrpro_0115.Checked := True;
   face01la(rrpro_0115.Name);
   est_0103.Checked := True;
   face01la(est_0103.Name);
   est_0109.Checked := True;
   face01la(est_0109.Name);
   est_0115.Checked := True;
   face01la(est_0115.Name);
   est_0127.Checked := True;
   face01la(est_0127.Name);
   est_0133.Checked := True;
   face01la(est_0133.Name);
   est_0139.Checked := True;
   face01la(est_0139.Name);
   est_0151.Checked := True;
   face01la(est_0151.Name);
   est_0157.Checked := True;
   face01la(est_0157.Name);
   est_0163.Checked := True;
   face01la(est_0163.Name);
   rent_0103.Checked := True;
   face01la(rent_0103.Name);
   cfo_0103.Checked := True;
   face01la(cfo_0103.Name);
   lf_0151.Checked := True;
   face01la(lf_0151.Name);
   lf_0103.Checked := True;
   face01la(lf_0103.Name);
   lf_0136.Checked := True;
   face01la(lf_0136.Name);
   lf_0130.Checked := True;
   face01la(lf_0130.Name);
   lf_0118.Checked := True;
   face01la(lf_0118.Name);
   lf_0121.Checked := True;
   face01la(lf_0121.Name);
   sai_0133.Checked := True;
   face01la(sai_0133.Name);
   sis0636.Checked := True;
   face01la(sis0636.Name);
end;

end;

procedure TFrm_Ace.mven_118Click(Sender: TObject);
begin
If mven_0118.Checked then
   begin
   mven_0118.Checked:=False;
   face01ba(mven_0118.name);
   end
else
   begin
   mven_0118.Checked:=True;
   face01la(mven_0118.Name);
   end;
end;

procedure TFrm_Ace.saiconf_0115Click(Sender: TObject);
begin
If saiconf_0115.Checked then
   begin
   saiconf_0115.Checked:=False;
   face01ba(saiconf_0115.name);
   end
else
   begin
   saiconf_0115.Checked:=True;
   face01la(saiconf_0115.Name);
   end;


end;

procedure TFrm_Ace.saiconf_0112Click(Sender: TObject);
begin
If saiconf_0112.Checked then
   begin
   saiconf_0112.Checked:=False;
   face01ba(saiconf_0112.name);
   end
else
   begin
   saiconf_0112.Checked:=True;
   face01la(saiconf_0112.Name);
   end;


end;

procedure TFrm_Ace.rven_0153Click(Sender: TObject);
begin
If rven_0153.Checked then
   begin
   rven_0153.Checked:=False;
   face01ba(rven_0153.name);
   end
else
   begin
   rven_0153.Checked:=True;
   face01la(rven_0153.Name);
   end;

end;

procedure TFrm_Ace.saiconf_0118Click(Sender: TObject);
begin
If saiconf_0118.Checked then
   begin
   saiconf_0118.Checked:=False;
   face01ba(saiconf_0118.name);
   end
else
   begin
   saiconf_0118.Checked:=True;
   face01la(saiconf_0118.Name);
   end;


end;

procedure TFrm_Ace.sai_0118Click(Sender: TObject);
begin
If sai_0118.Checked then
   begin
   sai_0118.Checked:=False;
   face01ba(sai_0118.name);
   end
else
   begin
   sai_0118.Checked:=True;
   face01la(sai_0118.Name);
   end;

end;

procedure TFrm_Ace.cp_0215Click(Sender: TObject);
begin
If cp_0215.Checked then
   begin
   cp_0215.Checked:=False;
   face01ba(cp_0215.name);
   end
else
   begin
   cp_0215.Checked:=True;
   face01la(cp_0215.Name);
   end;


end;

procedure TFrm_Ace.rfor_0124Click(Sender: TObject);
begin
If rfor_0124.Checked then
   begin
   rfor_0124.Checked:=False;
   face01ba(rfor_0124.name);
   end
else
   begin
   rfor_0124.Checked:=True;
   face01la(rfor_0124.Name);
   end;

end;

procedure TFrm_Ace.mpro_0301Click(Sender: TObject);
begin
If mpro_0301.Checked then
   begin
   mpro_0301.Checked:=False;
   face01ba(mpro_0301.name);
   end
else
   begin
   mpro_0301.Checked:=True;
   face01la(mpro_0301.Name);
   end;



end;

procedure TFrm_Ace.cr_0242Click(Sender: TObject);
begin
If cr_0242.Checked then
   begin
   cr_0242.Checked:=False;
   face01ba(cr_0242.name);
   end
else
   begin
   cr_0242.Checked:=True;
   face01la(cr_0242.Name);
   end;


end;

procedure TFrm_Ace.sai_0202Click(Sender: TObject);
begin
If sai_0202.Checked then
   begin
   sai_0202.Checked:=False;
   face01ba(sai_0202.name);
   end
else
   begin
   sai_0202.Checked:=True;
   face01la(sai_0202.Name);
   end;
end;

procedure TFrm_Ace.mpro_0155Click(Sender: TObject);
begin
If mpro_0155.Checked then
   begin
   mpro_0155.Checked:=False;
   face01ba(mpro_0155.name);
   end
else
   begin
   mpro_0155.Checked:=True;
   face01la(mpro_0155.Name);
   end;
end;

procedure TFrm_Ace.mloc_0108Click(Sender: TObject);
begin
If mloc_0108.Checked then
   begin
   mloc_0108.Checked:=False;
   face01ba(mloc_0108.name);
   end
else
   begin
   mloc_0108.Checked:=True;
   face01la(mloc_0108.Name);
   end;
end;

procedure TFrm_Ace.mpro_0185Click(Sender: TObject);
begin
If mpro_0185.Checked then
   begin
   mpro_0185.Checked:=False;
   face01ba(mpro_0185.name);
   end
else
   begin
   mpro_0185.Checked:=True;
   face01la(mpro_0185.Name);
   end;


end;

procedure TFrm_Ace.rcli_0128Click(Sender: TObject);
begin
If rcli_0128.Checked then
   begin
   rcli_0106.Checked:=False;
   face01ba(rcli_0128.name);
   end
else
   begin
   rcli_0128.Checked:=True;
   face01la(rcli_0128.Name);
   end;
end;

procedure TFrm_Ace.mpro_0207Click(Sender: TObject);
begin
If mpro_0207.Checked then
   begin
   mpro_0207.Checked:=False;
   face01ba(mpro_0207.name);
   end
else
   begin
   mpro_0207.Checked:=True;
   face01la(mpro_0207.Name);
   end;
end;

procedure TFrm_Ace.rel_0103Click(Sender: TObject);
begin
If rel_0103.Checked then
   begin
   rel_0103.Checked:=False;
   face01ba(rel_0103.name);
   end
else
   begin
   rel_0103.Checked:=True;
   face01la(rel_0103.Name);
   end;


end;

procedure TFrm_Ace.mos_0121Click(Sender: TObject);
begin
If mos_0121.Checked then
   begin
   mos_0121.Checked:=False;
   face01ba(mos_0121.name);
   end
else
   begin
   mos_0121.Checked:=True;
   face01la(mos_0121.Name);
   end;


end;

procedure TFrm_Ace.rtra_0104Click(Sender: TObject);
begin
If rtra_0104.Checked then
   begin
   rtra_0104.Checked:=False;
   face01ba(rtra_0104.name);
   end
else
   begin
   rtra_0104.Checked:=True;
   face01la(rtra_0104.Name);
   end;
end;

procedure TFrm_Ace.mIndEnv_0116Click(Sender: TObject);
begin
If mIndEnv_0116.Checked then
   begin
   mIndEnv_0116.Checked:=False;
   face01ba(mIndEnv_0116.name);
   end
else
   begin
   mIndEnv_0116.Checked:=True;
   face01la(mIndEnv_0116.Name);
   end;
end;

procedure TFrm_Ace.mIndEnv_0117Click(Sender: TObject);
begin
If mIndEnv_0117.Checked then
   begin
   mIndEnv_0117.Checked:=False;
   face01ba(mIndEnv_0117.name);
   end
else
   begin
   mIndEnv_0117.Checked:=True;
   face01la(mIndEnv_0117.Name);
   end;

end;

procedure TFrm_Ace.mfor_0111Click(Sender: TObject);
begin
If mfor_0111.Checked then
   begin
   mfor_0111.Checked:=False;
   face01ba(mfor_0111.name);
   end
else
   begin
   mfor_0111.Checked:=True;
   face01la(mfor_0111.Name);
   end;
end;

procedure TFrm_Ace.mcli_0125Click(Sender: TObject);
begin
If mcli_0125.Checked then
   begin
   mcli_0125.Checked:=False;
   face01ba(mcli_0125.name);
   end
else
   begin
   mcli_0125.Checked:=True;
   face01ba(mcli_0125.name);
   end;
end;

procedure TFrm_Ace.sis_0903Click(Sender: TObject);
begin
If sis_0903.Checked then
   begin
   sis_0903.Checked:=False;
   face01ba(sis_0903.name);
   end
else
   begin
   sis_0903.Checked:=True;
   face01la(sis_0903.Name);
   end;

end;

procedure TFrm_Ace.sis_0906Click(Sender: TObject);
begin
If sis_0906.Checked then
   begin
   sis_0906.Checked:=False;
   face01ba(sis_0906.name);
   end
else
   begin
   sis_0906.Checked:=True;
   face01la(sis_0906.Name);
   end;

end;

procedure TFrm_Ace.sis_0909Click(Sender: TObject);
begin
If sis_0909.Checked then
   begin
   sis_0909.Checked:=False;
   face01ba(sis_0909.name);
   end
else
   begin
   sis_0909.Checked:=True;
   face01la(sis_0909.Name);
   end;

end;

procedure TFrm_Ace.rcli_0130Click(Sender: TObject);
begin
If rcli_0130.Checked then
   begin
   rcli_0130.Checked:=False;
   face01ba(rcli_0130.name);
   end
else
   begin
   rcli_0130.Checked:=True;
   face01la(rcli_0130.Name);
   end;


end;

procedure TFrm_Ace.sis_0248Click(Sender: TObject);
begin
If sis_0248.Checked then
   begin
   sis_0248.Checked:=False;
   face01ba(sis_0248.name);
   end
else
   begin
   sis_0248.Checked:=True;
   face01la(sis_0248.Name);
   end;


end;

procedure TFrm_Ace.rven_0156Click(Sender: TObject);
begin
If rven_0156.Checked then
   begin
   rven_0156.Checked:=False;
   face01ba(rven_0156.name);
   end
else
   begin
   rven_0156.Checked:=True;
   face01la(rven_0156.Name);
   end;

end;

procedure TFrm_Ace.rped_0101Click(Sender: TObject);
begin
If rped_0101.Checked then
   begin
   rped_0101.Checked:=False;
   face01ba(rped_0101.name);
   end
else
   begin
   rped_0101.Checked:=True;
   face01la(rped_0101.Name);
   end;
end;

procedure TFrm_Ace.ExportarEmailCSV1Click(Sender: TObject);
begin
If ExportarEmailCSV1.Checked then
   begin
   ExportarEmailCSV1.Checked:=False;
   face01ba(ExportarEmailCSV1.name);
   end
else
   begin
   ExportarEmailCSV1.Checked:=True;
   face01la(ExportarEmailCSV1.Name);
   end;
end;

procedure TFrm_Ace.UltimasVendas1Click(Sender: TObject);
begin
If UltimasVendas1.Checked then
   begin
   UltimasVendas1.Checked:=False;
   face01ba(UltimasVendas1.name);
   end
else
   begin
   UltimasVendas1.Checked:=True;
   face01la(UltimasVendas1.Name);
   end;
end;

procedure TFrm_Ace.mpro_0194Click(Sender: TObject);
begin
If mpro_0194.Checked then
   begin
   mpro_0194.Checked:=False;
   face01ba(mpro_0194.name);
   end
else
   begin
   mpro_0194.Checked:=True;
   face01la(mpro_0194.Name);
   end;
end;

procedure TFrm_Ace.ConsultasdeRE1Click(Sender: TObject);
begin
If ConsultasdeRE1.Checked then
   begin
   ConsultasdeRE1.Checked:=False;
   face01ba(ConsultasdeRE1.name);
   end
else
   begin
   ConsultasdeRE1.Checked:=True;
   face01la(ConsultasdeRE1.Name);
   end;
end;

procedure TFrm_Ace.mcai_0136Click(Sender: TObject);
begin
if mcai_0136.Checked then
   begin
   mcai_0136.Checked:=False;
   face01ba(mcai_0136.name);
   end
else
   begin
   mcai_0136.Checked:=True;
   face01la(mcai_0136.Name);
   end;
end;

procedure TFrm_Ace.mcai_0137Click(Sender: TObject);
begin
if mcai_0137.Checked then
  begin
  mcai_0137.Checked:=False;
  face01ba(mcai_0137.name);
  end
else
  begin
  mcai_0137.Checked:=True;
  face01la(mcai_0137.Name);
  end;
end;

procedure TFrm_Ace.mind_0122Click(Sender: TObject);
begin
if mind_0122.Checked then
   begin
   mind_0122.Checked:=False;
   face01ba(mind_0122.name);
   end
else
   begin
   mind_0122.Checked:=True;
   face01la(mind_0122.Name);
   end;

end;

procedure TFrm_Ace.mind_0123Click(Sender: TObject);
begin
if mind_0123.Checked then
   begin
   mind_0123.Checked:=False;
   face01ba(mind_0123.name);
   end
else
   begin
   mind_0123.Checked:=True;
   face01la(mind_0123.Name);
   end;

end;

procedure TFrm_Ace.rcli_0122Click(Sender: TObject);
begin
If rcli_0122.Checked then
   begin
   rcli_0122.Checked:=False;
   face01ba(rcli_0122.name);
   end
else
   begin
   rcli_0122.Checked:=True;
   face01la(rcli_0122.Name);
   end;

end;

procedure TFrm_Ace.rpro_0116Click(Sender: TObject);
begin
If rpro_0116.Checked then
   begin
   rpro_0116.Checked:=False;
   face01ba(rpro_0116.name);
   end
else
   begin
   rpro_0116.Checked:=True;
   face01la(rpro_0116.Name);
   end;

end;

procedure TFrm_Ace.rpro_0161Click(Sender: TObject);
begin
If rpro_0161.Checked then
   begin
   rpro_0161.Checked:=False;
   face01ba(rpro_0161.name);
   end
else
   begin
   rpro_0161.Checked:=True;
   face01la(rpro_0161.Name);
   end;

end;

procedure TFrm_Ace.rpro_0162Click(Sender: TObject);
begin
if rpro_0162.Checked then
   begin
   rpro_0162.Checked:=False;
   face01ba(rpro_0162.name);
   end
else
   begin
   rpro_0162.Checked:=True;
   face01la(rpro_0162.Name);
   end;

end;

procedure TFrm_Ace.rpro_0163Click(Sender: TObject);
begin
if rpro_0163.Checked then
   begin
   rpro_0163.Checked:=False;
   face01ba(rpro_0163.name);
   end
else
   begin
   rpro_0163.Checked:=True;
   face01la(rpro_0163.Name);
   end;
end;

procedure TFrm_Ace.rger_0261Click(Sender: TObject);
begin
if rger_0261.Checked then
   begin
   rger_0261.Checked:=False;
   face01ba(rger_0261.name);
   end
else
   begin
   rger_0261.Checked:=True;
   face01la(rger_0261.Name);
   end;
end;

procedure TFrm_Ace.rger_0262Click(Sender: TObject);
begin
if rger_0262.Checked then
   begin
   rger_0262.Checked:=False;
   face01ba(rpro_0162.name);
   end
else
   begin
   rger_0262.Checked:=True;
   face01la(rger_0262.Name);
   end;
end;

procedure TFrm_Ace.rven_0152Click(Sender: TObject);
begin
if rven_0152.Checked then
   begin
   rven_0152.Checked:=False;
   face01ba(rven_0152.name);
   end
else
   begin
   rven_0152.Checked:=True;
   face01la(rven_0152.Name);
   end;
end;

procedure TFrm_Ace.rven_0154Click(Sender: TObject);
begin
if rven_0154.Checked then
   begin
   rven_0154.Checked:=False;
   face01ba(rven_0154.name);
   end
else
   begin
   rven_0154.Checked:=True;
   face01la(rven_0154.Name);
   end;
end;

procedure TFrm_Ace.sai_0128Click(Sender: TObject);
begin
if sai_0128.Checked then
   begin
   sai_0128.Checked:=False;
   face01ba(sai_0128.name);
   end
else
   begin
   sai_0128.Checked:=True;
   face01la(sai_0128.Name);
   end;

end;

procedure TFrm_Ace.saiconf_0119Click(Sender: TObject);
begin
if saiconf_0119.Checked then
   begin
   saiconf_0119.Checked:=False;
   face01ba(saiconf_0119.name);
   end
else
   begin
   saiconf_0119.Checked:=True;
   face01la(saiconf_0119.Name);
   end;

end;

procedure TFrm_Ace.sai_0152Click(Sender: TObject);
begin
if sai_0152.Checked then
   begin
   sai_0152.Checked:=False;
   face01ba(sai_0152.name);
   end
else
   begin
   sai_0152.Checked:=True;
   face01la(sai_0152.Name);
   end;

end;

procedure TFrm_Ace.cr_0919Click(Sender: TObject);
begin
If cr_0919.Checked then
   begin
   cr_0919.Checked:=False;
   face01ba(cr_0919.name);
   end
else
   begin
   cr_0919.Checked:=True;
   face01la(cr_0919.Name);
   end;
end;

procedure TFrm_Ace.sis_0251Click(Sender: TObject);
begin
If sis_0251.Checked then
   begin
   sis_0251.Checked:=False;
   face01ba(sis_0251.name);
   end
else
   begin
   sis_0251.Checked:=True;
   face01la(sis_0251.Name);
   end;
end;

procedure TFrm_Ace.sis_0254Click(Sender: TObject);
begin
If sis_0254.Checked then
   begin
   sis_0254.Checked:=False;
   face01ba(sis_0254.name);
   end
else
   begin
   sis_0254.Checked:=True;
   face01la(sis_0254.Name);
   end;

end;

procedure TFrm_Ace.rpro_0117Click(Sender: TObject);
begin
If rpro_0117.Checked then
   begin
   rpro_0117.Checked:=False;
   face01ba(rpro_0117.name);
   end
else
   begin
   rpro_0117.Checked:=True;
   face01la(rpro_0117.Name);
   end;
end;

procedure TFrm_Ace.rped_0120Click(Sender: TObject);
begin
If rped_0120.Checked then
   begin
   rped_0120.Checked:=False;
   face01ba(rped_0120.name);
   end
else
   begin
   rped_0120.Checked:=True;
   face01la(rped_0120.Name);
   end;              
end;

procedure TFrm_Ace.rger_0265Click(Sender: TObject);
begin
if rger_0265.Checked then
   begin
   rger_0265.Checked:=False;
   face01ba(rpro_0162.name);
   end
else
   begin
   rger_0265.Checked:=True;
   face01la(rger_0265.Name);
   end;

end;

procedure TFrm_Ace.mpro_0195Click(Sender: TObject);
begin
If mpro_0195.Checked then
   begin
   mpro_0195.Checked:=False;
   face01ba(mpro_0195.name);
   end
else
   begin
   mpro_0195.Checked:=True;
   face01la(mpro_0195.Name);
   end;

end;

procedure TFrm_Ace.mpro_0186Click(Sender: TObject);
begin
If mpro_0186.Checked then
   begin
   mpro_0186.Checked:=False;
   face01ba(mpro_0186.name);
   end
else
   begin
   mpro_0186.Checked:=True;
   face01la(mpro_0186.Name);
   end;


end;

procedure TFrm_Ace.rsai_0112Click(Sender: TObject);
begin
If rsai_0112.Checked then
   begin
   rsai_0112.Checked:=False;
   face01ba(rsai_0112.name);
   end
else
   begin
   rsai_0112.Checked:=True;
   face01la(rsai_0112.Name);
   end;

end;

procedure TFrm_Ace.sis_0643Click(Sender: TObject);
begin
If sis_0643.Checked then
   begin
   sis_0643.Checked:=False;
   face01ba(sis_0643.name);
   end
else
   begin
   sis_0643.Checked:=True;
   face01la(sis_0643.Name);
   end;
end;

procedure TFrm_Ace.rped_0121Click(Sender: TObject);
begin
If rped_0121.Checked then
   begin
   rped_0121.Checked:=False;
   face01ba(rped_0121.name);
   end
else
   begin
   rped_0121.Checked:=True;
   face01la(rped_0121.Name);
   end;
end;

procedure TFrm_Ace.rsai_0115Click(Sender: TObject);
begin
If rsai_0115.Checked then
   begin
   rsai_0115.Checked:=False;
   face01ba(rsai_0115.name);
   end
else
   begin
   rsai_0115.Checked:=True;
   face01la(rsai_0115.Name);
   end;
end;

procedure TFrm_Ace.lf_0157Click(Sender: TObject);
begin
If lf_0157.Checked then
   begin
   lf_0157.Checked:=False;
   face01ba(lf_0157.name);
   end
else
   begin
   lf_0157.Checked:=True;
   face01la(lf_0157.Name);
   end;

end;

procedure TFrm_Ace.lf_0160Click(Sender: TObject);
begin
If lf_0160.Checked then
   begin
   lf_0160.Checked:=False;
   face01ba(lf_0160.name);
   end
else
   begin
   lf_0160.Checked:=True;
   face01la(lf_0160.Name);
   end;

end;

procedure TFrm_Ace.rpro_0131Click(Sender: TObject);
begin
If rpro_0131.Checked then
   begin
   rpro_0131.Checked:=False;
   face01ba(rpro_0131.name);
   end
else
   begin
   rpro_0131.Checked:=True;
   face01la(rpro_0131.Name);
   end;


end;

procedure TFrm_Ace.rpro_0129Click(Sender: TObject);
begin
If rpro_0129.Checked then
   begin
   rpro_0129.Checked:=False;
   face01ba(rpro_0129.name);
   end
else
   begin
   rpro_0129.Checked:=True;
   face01la(rpro_0129.Name);
   end;



end;

procedure TFrm_Ace.mcai_0140Click(Sender: TObject);
begin
if mcai_0140.Checked then
   begin
   mcai_0140.Checked:=False;
   face01ba(mcai_0140.name);
   end
else
   begin
   mcai_0140.Checked:=True;
   face01la(mcai_0140.Name);
   end;

end;

procedure TFrm_Ace.mcai_0143Click(Sender: TObject);
begin
if mcai_0143.Checked then
   begin
   mcai_0143.Checked:=False;
   face01ba(mcai_0143.name);
   end
else
   begin
   mcai_0143.Checked:=True;
   face01la(mcai_0143.Name);
   end;

end;

procedure TFrm_Ace.sai_0122Click(Sender: TObject);
begin
if sai_0122.Checked then
   begin
   sai_0122.Checked:=False;
   face01ba(sai_0122.name);
   end
else
   begin
   sai_0122.Checked:=True;
   face01la(sai_0122.Name);
   end;

end;

procedure TFrm_Ace.sai_0203Click(Sender: TObject);
begin
If sai_0203.Checked then
   begin
   sai_0203.Checked:=False;
   face01ba(sai_0203.name);
   end
else
   begin
   sai_0203.Checked:=True;
   face01la(sai_0203.Name);
   end;
end;

procedure TFrm_Ace.sai_0204Click(Sender: TObject);
begin
if sai_0204.Checked then
  begin
  sai_0204.Checked:=False;
  face01ba(sai_0204.name);
  end
else
  begin
  sai_0204.Checked:=True;
  face01la(sai_0204.Name);
  end;
end;

procedure TFrm_Ace.lf_0163Click(Sender: TObject);
begin
If lf_0163.Checked then
   begin
   lf_0163.Checked:=False;
   face01ba(lf_0163.name);
   end
else
   begin
   lf_0163.Checked:=True;
   face01la(lf_0163.Name);
   end;


end;

procedure TFrm_Ace.lf_0166Click(Sender: TObject);
begin
If lf_0166.Checked then
   begin
   lf_0166.Checked:=False;
   face01ba(lf_0166.name);
   end
else
   begin
   lf_0166.Checked:=True;
   face01la(lf_0166.Name);
   end;


end;

procedure TFrm_Ace.sis0648Click(Sender: TObject);
begin
If sis0648.Checked then
   begin
   sis0648.Checked:=False;
   face01ba(sis0648.name);
   end
else
   begin
   sis0648.Checked:=True;
   face01la(sis0648.Name);
   end;



end;

end.


