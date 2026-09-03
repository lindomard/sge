unit SR_PFor01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, QuickRpt, QRCtrls, RLXLSFilter, RLFilters, RLPDFFilter,
  DB, RLDraftFilter, ComCtrls, DBTables, RLHTMLFilter, RLRichFilter;

type
  TQr_PFor01 = class(TForm)
    Src_PFor02: TDataSource;
    src_pfor01: TDataSource;
    src_emp: TDataSource;
    src_for: TDataSource;
    PageControl1: TPageControl;
    tsmodelo01: TTabSheet;
    modelo01: TRLReport;
    RLBand1: TRLBand;
    RLDraw19: TRLDraw;
    QR_IMGLOGO: TRLImage;
    FANTASIA: TRLDBText;
    RAZAO: TRLDBText;
    endereco: TRLDBText;
    cidade: TRLDBText;
    Telefone: TRLDBText;
    E_MAIL: TRLDBText;
    cnpj: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel23: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    tipov01: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel26: TRLLabel;
    RLDraw9: TRLDraw;
    prazo01: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    datav01: TRLLabel;
    desc01: TRLLabel;
    enc01: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw12: TRLDraw;
    tipov02: TRLLabel;
    prazo02: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    datav02: TRLLabel;
    desc02: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    enc02: TRLLabel;
    FRETE: TRLLabel;
    QROBS: TRLMemo;
    NOMUSR: TRLLabel;
    CHAVE: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLBand2: TRLBand;
    rlcab_nompro: TRLLabel;
    rlcab_PF2CODPRO: TRLLabel;
    rlcab_undpro: TRLLabel;
    rlcab_PF2QTDP: TRLMemo;
    rlcab_pcoimp: TRLMemo;
    rlcab_PF2ICMSR: TRLMemo;
    RLLabel40: TRLLabel;
    rlcab_totbru: TRLLabel;
    rlcab_totdes: TRLLabel;
    rlcab_totliq: TRLLabel;
    RLBand3: TRLBand;
    rldet_PF2CODPRO: TRLDBText;
    rldet_undpro: TRLDBText;
    rldet_PF2QTDP: TRLDBText;
    rldet_pcoimp: TRLDBText;
    rldet_PF2ICMSR: TRLDBText;
    rldet_totbru: TRLDBText;
    rldet_totdes: TRLDBText;
    rldet_totliq: TRLDBText;
    RLBand4: TRLBand;
    RLLabel43: TRLLabel;
    totdes: TRLLabel;
    totbru: TRLLabel;
    totqtd: TRLLabel;
    totliq: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLBand5: TRLBand;
    emitido: TRLLabel;
    RLLabel55: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    tsmodelo02: TTabSheet;
    tsmodelo03: TTabSheet;
    modelo02: TRLReport;
    RLBand6: TRLBand;
    RLDraw20: TRLDraw;
    qr_imglogom02: TRLImage;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    enderecom02: TRLDBText;
    cidadem02: TRLDBText;
    telefonem02: TRLDBText;
    emailm02: TRLDBText;
    cnpjm02: TRLDBText;
    RLDraw21: TRLDraw;
    RLLabel44: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel75: TRLLabel;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    tipov01m02: TRLLabel;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    tipov02m02: TRLLabel;
    tipov03m02: TRLLabel;
    RLLabel79: TRLLabel;
    RLDraw29: TRLDraw;
    prazo01m02: TRLLabel;
    prazo02m02: TRLLabel;
    prazo03m02: TRLLabel;
    RLLabel83: TRLLabel;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    datav01m02: TRLLabel;
    datav02m02: TRLLabel;
    datav03m02: TRLLabel;
    desc03m02: TRLLabel;
    desc01m02: TRLLabel;
    desc02m02: TRLLabel;
    enc03m02: TRLLabel;
    enc01m02: TRLLabel;
    enc02m02: TRLLabel;
    RLLabel95: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    tipov04m02: TRLLabel;
    tipov05m02: TRLLabel;
    tipov06m02: TRLLabel;
    prazo06m02: TRLLabel;
    prazo05m02: TRLLabel;
    prazo04m02: TRLLabel;
    RLLabel102: TRLLabel;
    RLLabel103: TRLLabel;
    datav04m02: TRLLabel;
    datav05m02: TRLLabel;
    datav06m02: TRLLabel;
    desc06m02: TRLLabel;
    desc05m02: TRLLabel;
    desc04m02: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    enc04m02: TRLLabel;
    enc05m02: TRLLabel;
    enc06m02: TRLLabel;
    fretem02: TRLLabel;
    qrobsm02: TRLMemo;
    nomusrm02: TRLLabel;
    chavem02: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLBand7: TRLBand;
    RLLabel118: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel120: TRLLabel;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLMemo7: TRLMemo;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel127: TRLLabel;
    RLBand8: TRLBand;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    RLDBText67: TRLDBText;
    RLBand9: TRLBand;
    RLLabel128: TRLLabel;
    totdesm02: TRLLabel;
    totbrum02: TRLLabel;
    totqtdm02: TRLLabel;
    totliqm02: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel134: TRLLabel;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLBand10: TRLBand;
    emitidom02: TRLLabel;
    RLLabel138: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    modelo03: TRLReport;
    RLBand11: TRLBand;
    RLDraw39: TRLDraw;
    qr_imglogom03: TRLImage;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    enderecom03: TRLDBText;
    cidadem03: TRLDBText;
    telefonem03: TRLDBText;
    emailm03: TRLDBText;
    cnpjm03: TRLDBText;
    RLDraw40: TRLDraw;
    RLLabel139: TRLLabel;
    RLDraw41: TRLDraw;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLLabel142: TRLLabel;
    RLLabel143: TRLLabel;
    RLLabel144: TRLLabel;
    RLLabel145: TRLLabel;
    RLLabel146: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLLabel149: TRLLabel;
    RLLabel150: TRLLabel;
    RLLabel151: TRLLabel;
    RLLabel152: TRLLabel;
    RLLabel153: TRLLabel;
    RLDraw42: TRLDraw;
    RLLabel154: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLDraw43: TRLDraw;
    RLLabel163: TRLLabel;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    tipov01m03: TRLLabel;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    tipov02m03: TRLLabel;
    tipov03m03: TRLLabel;
    RLLabel167: TRLLabel;
    RLDraw48: TRLDraw;
    prazo01m03: TRLLabel;
    prazo02m03: TRLLabel;
    prazo03m03: TRLLabel;
    RLLabel171: TRLLabel;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLLabel172: TRLLabel;
    RLLabel173: TRLLabel;
    datav01m03: TRLLabel;
    datav02m03: TRLLabel;
    datav03m03: TRLLabel;
    desc03m03: TRLLabel;
    desc01m03: TRLLabel;
    desc02m03: TRLLabel;
    enc03m03: TRLLabel;
    enc01m03: TRLLabel;
    enc02m03: TRLLabel;
    RLLabel183: TRLLabel;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    tipov04m03: TRLLabel;
    tipov05m03: TRLLabel;
    tipov06m03: TRLLabel;
    prazo06m03: TRLLabel;
    prazo05m03: TRLLabel;
    prazo04m03: TRLLabel;
    RLLabel190: TRLLabel;
    RLLabel191: TRLLabel;
    datav04m03: TRLLabel;
    datav05m03: TRLLabel;
    datav06m03: TRLLabel;
    desc06m03: TRLLabel;
    desc05m03: TRLLabel;
    desc04m03: TRLLabel;
    RLLabel198: TRLLabel;
    RLLabel199: TRLLabel;
    enc04m03: TRLLabel;
    enc05m03: TRLLabel;
    enc06m03: TRLLabel;
    fretem03: TRLLabel;
    qrobsm03: TRLMemo;
    nomusrm03: TRLLabel;
    chavem03: TRLLabel;
    RLDBText75: TRLDBText;
    RLDBText76: TRLDBText;
    RLDBText77: TRLDBText;
    RLDBText78: TRLDBText;
    RLDBText79: TRLDBText;
    RLDBText80: TRLDBText;
    RLDBText81: TRLDBText;
    RLDBText82: TRLDBText;
    RLDBText83: TRLDBText;
    RLDBText84: TRLDBText;
    RLDBText85: TRLDBText;
    RLDBText86: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    RLDBText89: TRLDBText;
    RLDBText90: TRLDBText;
    RLDBText91: TRLDBText;
    RLDBText92: TRLDBText;
    RLBand12: TRLBand;
    RLLabel206: TRLLabel;
    RLLabel207: TRLLabel;
    RLLabel208: TRLLabel;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLLabel209: TRLLabel;
    RLLabel210: TRLLabel;
    RLLabel211: TRLLabel;
    RLMemo11: TRLMemo;
    RLLabel212: TRLLabel;
    RLLabel213: TRLLabel;
    RLLabel214: TRLLabel;
    RLLabel215: TRLLabel;
    RLBand13: TRLBand;
    RLDBText93: TRLDBText;
    RLDBText94: TRLDBText;
    RLDBText95: TRLDBText;
    RLDBText96: TRLDBText;
    RLDBText97: TRLDBText;
    RLDBText99: TRLDBText;
    RLDBText100: TRLDBText;
    RLDBText101: TRLDBText;
    RLDBText102: TRLDBText;
    RLDBText103: TRLDBText;
    RLDBText104: TRLDBText;
    RLBand14: TRLBand;
    RLLabel216: TRLLabel;
    totdesm03: TRLLabel;
    totbrum03: TRLLabel;
    totqtdm03: TRLLabel;
    totliqm03: TRLLabel;
    RLLabel221: TRLLabel;
    RLLabel222: TRLLabel;
    RLLabel223: TRLLabel;
    RLLabel224: TRLLabel;
    RLBand15: TRLBand;
    RLLabel225: TRLLabel;
    RLLabel226: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw58: TRLDraw;
    RLLabel227: TRLLabel;
    RLLabel228: TRLLabel;
    RLLabel235: TRLLabel;
    RLLabel237: TRLLabel;
    RLLabel238: TRLLabel;
    RLLabel239: TRLLabel;
    RL_EMP: TRLLabel;
    RLLabel230: TRLLabel;
    RLLabel231: TRLLabel;
    RLLabel232: TRLLabel;
    RLLabel233: TRLLabel;
    RLLabel234: TRLLabel;
    RLLabel236: TRLLabel;
    RLLabel240: TRLLabel;
    RLLabel241: TRLLabel;
    RLLabel242: TRLLabel;
    RLLabel243: TRLLabel;
    RLLabel244: TRLLabel;
    RLLabel245: TRLLabel;
    banner01: TRLLabel;
    banner02: TRLLabel;
    banner03: TRLLabel;
    enc03: TRLLabel;
    desc03: TRLLabel;
    datav03: TRLLabel;
    prazo03: TRLLabel;
    tipov03: TRLLabel;
    RLDraw8: TRLDraw;
    enc05: TRLLabel;
    desc05: TRLLabel;
    datav05: TRLLabel;
    prazo05: TRLLabel;
    tipov05: TRLLabel;
    enc07: TRLLabel;
    desc07: TRLLabel;
    datav07: TRLLabel;
    prazo07: TRLLabel;
    tipov07: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw59: TRLDraw;
    enc09: TRLLabel;
    desc09: TRLLabel;
    datav09: TRLLabel;
    prazo09: TRLLabel;
    tipov09: TRLLabel;
    enc04: TRLLabel;
    desc04: TRLLabel;
    datav04: TRLLabel;
    prazo04: TRLLabel;
    tipov04: TRLLabel;
    tipov06: TRLLabel;
    tipov08: TRLLabel;
    tipov10: TRLLabel;
    prazo10: TRLLabel;
    prazo08: TRLLabel;
    prazo06: TRLLabel;
    datav06: TRLLabel;
    datav08: TRLLabel;
    datav10: TRLLabel;
    desc10: TRLLabel;
    desc06: TRLLabel;
    desc08: TRLLabel;
    enc08: TRLLabel;
    enc06: TRLLabel;
    enc10: TRLLabel;
    RLDraw17: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    enc11: TRLLabel;
    desc11: TRLLabel;
    datav11: TRLLabel;
    prazo11: TRLLabel;
    tipov11: TRLLabel;
    tipov12: TRLLabel;
    prazo12: TRLLabel;
    datav12: TRLLabel;
    desc12: TRLLabel;
    enc12: TRLLabel;
    Ts_Mod04: TTabSheet;
    modelo04: TRLReport;
    RLBand18: TRLBand;
    RLDBText120: TRLDBText;
    RLDBText121: TRLDBText;
    RLDBText122: TRLDBText;
    RLDBText124: TRLDBText;
    RLBand20: TRLBand;
    RLLabel286: TRLLabel;
    RLLabel287: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel288: TRLLabel;
    RLBand17: TRLBand;
    RLLabel267: TRLLabel;
    RLLabel268: TRLLabel;
    RLLabel269: TRLLabel;
    RLMemo12: TRLMemo;
    RLDBText33: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    Ts_Mod05: TTabSheet;
    modelo05: TRLReport;
    RLBand19: TRLBand;
    RLDBText71: TRLDBText;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLDBText74: TRLDBText;
    RLDBText105: TRLDBText;
    RLDBText106: TRLDBText;
    RLBand21: TRLBand;
    RLDraw65: TRLDraw;
    RLImage1: TRLImage;
    RLDBText107: TRLDBText;
    RLDBText108: TRLDBText;
    RLDBText109: TRLDBText;
    RLDBText110: TRLDBText;
    RLDBText111: TRLDBText;
    RLDBText112: TRLDBText;
    RLDBText113: TRLDBText;
    RLDraw66: TRLDraw;
    RLLabel82: TRLLabel;
    RLDraw67: TRLDraw;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDraw68: TRLDraw;
    RLLabel101: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLDraw69: TRLDraw;
    RLLabel114: TRLLabel;
    RLDraw70: TRLDraw;
    RLDraw71: TRLDraw;
    tipov01m05: TRLLabel;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    tipov02m05: TRLLabel;
    tipov03m05: TRLLabel;
    RLLabel129: TRLLabel;
    RLDraw74: TRLDraw;
    prazo01m05: TRLLabel;
    prazo02m05: TRLLabel;
    prazo03m05: TRLLabel;
    RLLabel137: TRLLabel;
    RLDraw75: TRLDraw;
    RLDraw76: TRLDraw;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    datav01m05: TRLLabel;
    datav02m05: TRLLabel;
    datav03m05: TRLLabel;
    desc03m05: TRLLabel;
    desc01m05: TRLLabel;
    desc02m05: TRLLabel;
    enc03m05: TRLLabel;
    enc01m05: TRLLabel;
    enc02m05: TRLLabel;
    RLLabel179: TRLLabel;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    RLDraw83: TRLDraw;
    tipov04m05: TRLLabel;
    tipov05m05: TRLLabel;
    tipov06m05: TRLLabel;
    prazo06m05: TRLLabel;
    prazo05m05: TRLLabel;
    prazo04m05: TRLLabel;
    RLLabel187: TRLLabel;
    RLLabel188: TRLLabel;
    datav04m05: TRLLabel;
    datav05m05: TRLLabel;
    datav06m05: TRLLabel;
    desc06m05: TRLLabel;
    desc05m05: TRLLabel;
    desc04m05: TRLLabel;
    RLLabel197: TRLLabel;
    RLLabel200: TRLLabel;
    enc04m05: TRLLabel;
    enc05m05: TRLLabel;
    enc06m05: TRLLabel;
    RLLabel204: TRLLabel;
    RLMemo4: TRLMemo;
    RLLabel205: TRLLabel;
    rlchavem5: TRLLabel;
    RLDBText114: TRLDBText;
    RLDBText115: TRLDBText;
    RLDBText116: TRLDBText;
    RLDBText117: TRLDBText;
    RLDBText118: TRLDBText;
    RLDBText119: TRLDBText;
    RLDBText123: TRLDBText;
    RLDBText125: TRLDBText;
    RLDBText126: TRLDBText;
    RLDBText127: TRLDBText;
    RLDBText128: TRLDBText;
    RLDBText129: TRLDBText;
    RLDBText130: TRLDBText;
    RLDBText131: TRLDBText;
    RLDBText132: TRLDBText;
    RLDBText133: TRLDBText;
    RLDBText134: TRLDBText;
    RLDBText135: TRLDBText;
    RLDraw84: TRLDraw;
    RLLabel218: TRLLabel;
    RLLabel219: TRLLabel;
    RLLabel220: TRLLabel;
    RLLabel229: TRLLabel;
    RLLabel246: TRLLabel;
    RLLabel247: TRLLabel;
    RLLabel248: TRLLabel;
    RLLabel249: TRLLabel;
    RLLabel250: TRLLabel;
    RLLabel251: TRLLabel;
    RLLabel252: TRLLabel;
    RLLabel253: TRLLabel;
    RLLabel254: TRLLabel;
    RLLabel255: TRLLabel;
    RLLabel256: TRLLabel;
    RLLabel257: TRLLabel;
    RLLabel258: TRLLabel;
    RLLabel259: TRLLabel;
    RLLabel260: TRLLabel;
    src_lucro: TDataSource;
    RLLabel261: TRLLabel;
    RLLabel262: TRLLabel;
    RLLabel263: TRLLabel;
    RLLabel264: TRLLabel;
    RLLabel265: TRLLabel;
    RLLabel266: TRLLabel;
    RLBand16: TRLBand;
    RLLabel76: TRLLabel;
    PRECO_CO: TRLLabel;
    QTD_T: TRLLabel;
    PRECO_VE: TRLLabel;
    RLLabel270: TRLLabel;
    RLLabel271: TRLLabel;
    RLLabel272: TRLLabel;
    RLLabel273: TRLLabel;
    Qr_PF02: TQuery;
    Qr_PF02PF2CODEMP: TFloatField;
    Qr_PF02PF2CHAVE: TFloatField;
    Qr_PF02PF2ITEM: TFloatField;
    Qr_PF02PF2CODPRO: TFloatField;
    Qr_PF02PF2LOTE: TStringField;
    Qr_PF02PF2DATAV: TDateTimeField;
    Qr_PF02PF2QTDP: TFloatField;
    Qr_PF02PF2PU: TFloatField;
    Qr_PF02PF2DESC01: TFloatField;
    Qr_PF02PF2DESC02: TFloatField;
    Qr_PF02PF2DESC03: TFloatField;
    Qr_PF02PF2SIT: TStringField;
    Qr_PF02PF2ALIQ: TFloatField;
    Qr_PF02PF2ALIQNR: TFloatField;
    Qr_PF02PF2BASEN: TFloatField;
    Qr_PF02PF2ICMSN: TFloatField;
    Qr_PF02PF2BASER: TFloatField;
    Qr_PF02PF2ICMSR: TFloatField;
    Qr_PF02PF2STATUS: TFloatField;
    Qr_PF02PF2TAB: TStringField;
    Qr_PF02PF2LISTA: TFloatField;
    Qr_PF02PF2PCOTAB: TFloatField;
    Qr_PF02PF2TOTDES: TFloatField;
    Qr_PF02PF2BASENR: TFloatField;
    Qr_PF02PF2ICMSNR: TFloatField;
    Qr_PF02PF2ISENTAS: TFloatField;
    Qr_PF02PF2ALIPI: TFloatField;
    Qr_PF02PF2IPI: TFloatField;
    Qr_PF02PF2CFO: TFloatField;
    Qr_PF02PF2DESCRAT: TFloatField;
    Qr_PF02undpro: TStringField;
    Qr_PF02totdes: TFloatField;
    Qr_PF02totliq: TFloatField;
    Qr_PF02totbru: TFloatField;
    Qr_PF02PF2LOTSEQ: TFloatField;
    Qr_PF02PF2PMC: TFloatField;
    Qr_PF02PF2VALDES: TFloatField;
    Qr_PF02PF2OUTRAS: TFloatField;
    Qr_PF02PF2ORIGEM: TFloatField;
    Qr_PF02PF2STATUS_PF1: TFloatField;
    Qr_PF02PF2PUOUT: TFloatField;
    Qr_PF02PF2PBT: TFloatField;
    Qr_PF02PF2FRERAT: TFloatField;
    Qr_PF02PF2QTDREC: TFloatField;
    Qr_PF02PF2VALDESOUT: TFloatField;
    Qr_PF02PF2FRERATOUT: TFloatField;
    Qr_PF02PF2DESCRATOUT: TFloatField;
    Qr_PF02PF2TOTDESOUT: TFloatField;
    Qr_PF02PF2SIV_OUTROS: TFloatField;
    Qr_PF02PF2PREDICMNOR: TFloatField;
    Qr_PF02PF2CFOP_COMP: TStringField;
    Qr_PF02PF2LOTE_RE: TStringField;
    Qr_PF02PF2DTENTRADA: TDateTimeField;
    Qr_PF02PF2OBS: TStringField;
    Qr_PF02pcoimp: TFloatField;
    Qr_PF02PF2NOMPRO: TStringField;
    Qr_PF02NOMPRO: TStringField;
    Query_Pf01: TQuery;
    Query_Pf01PF1CODEMP: TFloatField;
    Query_Pf01PF1CHAVE: TFloatField;
    Query_Pf01PF1CODFOR: TFloatField;
    Query_Pf01PF1DATA: TDateTimeField;
    Query_Pf01PF1OBS: TMemoField;
    Query_Pf01PF1DESC01: TFloatField;
    Query_Pf01PF1DESC02: TFloatField;
    Query_Pf01PF1DESC03: TFloatField;
    Query_Pf01PF1TOTDES: TFloatField;
    Query_Pf01PF1TOTBRU: TFloatField;
    Query_Pf01PF1TOTLIQ: TFloatField;
    Query_Pf01PF1STATUS: TFloatField;
    Query_Pf01PF1CODUSR: TFloatField;
    Query_Pf01PF1HORDIG: TStringField;
    Query_Pf01PF1USRMOD: TFloatField;
    Query_Pf01PF1DTMOD: TDateTimeField;
    Query_Pf01PF1HRMOD: TStringField;
    Query_Pf01PF1TOTMER: TFloatField;
    Query_Pf01PF1TOTPOS: TFloatField;
    Query_Pf01PF1TOTNEG: TFloatField;
    Query_Pf01PF1TOTINA: TFloatField;
    Query_Pf01PF1TOTFRE: TFloatField;
    Query_Pf01PF1TOTSEG: TFloatField;
    Query_Pf01PF1BASEN: TFloatField;
    Query_Pf01PF1BASER: TFloatField;
    Query_Pf01PF1ICMSN: TFloatField;
    Query_Pf01PF1ICMSR: TFloatField;
    Query_Pf01PF1CODLDR: TFloatField;
    Query_Pf01PF1BASENR: TFloatField;
    Query_Pf01PF1ICMSNR: TFloatField;
    Query_Pf01PF1ISENTAS: TFloatField;
    Query_Pf01PF1TOTOUT: TFloatField;
    Query_Pf01PF1TOTIPI: TFloatField;
    Query_Pf01PF1DATANF: TDateTimeField;
    Query_Pf01PF1NUMNF: TFloatField;
    Query_Pf01PF1SERIE: TStringField;
    Query_Pf01PF1SUBSER: TStringField;
    Query_Pf01PF1CODPV: TFloatField;
    Query_Pf01PF1CODBCO: TFloatField;
    Query_Pf01PF1CODTRA: TFloatField;
    Query_Pf01PF1MODELO: TStringField;
    Query_Pf01PF1NUMDUP: TFloatField;
    Query_Pf01PF1DESD: TStringField;
    Query_Pf01PF1GRAVNF: TFloatField;
    Query_Pf01PF1GRAVDP: TFloatField;
    Query_Pf01PF1CASASD: TFloatField;
    Query_Pf01PF1TABPV: TStringField;
    Query_Pf01PF1DATAENT: TDateTimeField;
    Query_Pf01PF1DTPFAT: TDateTimeField;
    Query_Pf01PF1DTPENT: TDateTimeField;
    Query_Pf01PF1PERCFRE: TFloatField;
    Query_Pf01PF1FRETEPC: TFloatField;
    Query_Pf01PF1CONDPAG: TStringField;
    Query_Pf01PF1PIPIFRETE: TFloatField;
    Query_Pf01PF1IPIFRETE: TFloatField;
    Query_Pf01PF1LOTSEQ: TFloatField;
    Query_Pf01PF1TEMBOL: TFloatField;
    Query_Pf01PF1LEMAT: TFloatField;
    Query_Pf01PF1CODEMP_ORI: TFloatField;
    Query_Pf01PF1NUMPED_ORI: TFloatField;
    Query_Pf01PF1PAG_ORI: TFloatField;
    Query_Pf01PF1ORIGEM: TFloatField;
    Query_Pf01PF1OUTNINC: TFloatField;
    Query_Pf01PF1OUTDESP: TFloatField;
    Query_Pf01PF1NFCF: TFloatField;
    Query_Pf01PF1TOTLIQOUT: TFloatField;
    Query_Pf01PF1TOTPBT: TFloatField;
    Query_Pf01PF1FORMACE: TFloatField;
    Query_Pf01PF1SITPED: TFloatField;
    Query_Pf01PF1QTDMAN: TFloatField;
    Query_Pf01PF1TOTDESOUT: TFloatField;
    Query_Pf01PF1TOTBRUOUT: TFloatField;
    Query_Pf01PF1TOTFREOUT: TFloatField;
    Query_Pf01PF1OUTROS: TFloatField;
    Query_Pf01PF1NUMDUPOUT: TFloatField;
    Query_Pf01PF1TIPO: TFloatField;
    Query_Pf01PF1SIV_FRETE: TFloatField;
    Query_Pf01PF1SIV_DARE: TFloatField;
    Query_Pf01PF1SIV_OUTROS: TFloatField;
    Query_Pf01PF1OUTVDUP: TFloatField;
    Query_Pf01dtpfat: TStringField;
    Query_Pf01dtpent: TStringField;
    Query_Pf01PF1PRAZO: TFloatField;
    Query_Pf01PF1INT: TFloatField;
    Query_Pf01PF1QTDP: TFloatField;
    Query_Pf01PF1LOCAL: TFloatField;
    Query_Pf01PF1SUBMOD: TStringField;
    Query_Pf01PF1TOTOUT_ALIQ: TFloatField;
    Query_Pf01PF1TOTOUT_IMP: TFloatField;
    Query_Pf01PF1LOTE_ENTRADA: TStringField;
    Query_Pf01PF1REGENT: TStringField;
    Query_Pf01PF1SITPROD: TFloatField;
    Query_Pf01PF1ALIQ_FRETE: TFloatField;
    Query_Pf01PF1ICMS_FRETE: TFloatField;
    Query_Pf01PF1_NFE_CHAVE: TStringField;
    Query_Pf01PF1INCFRE: TFloatField;
    Tb_Lucro: TQuery;
    Tb_LucroPF2CODPRO: TFloatField;
    Tb_LucroQTD: TFloatField;
    Tb_LucroCOMPRA: TFloatField;
    Tb_LucroPRECO: TFloatField;
    Tb_LucroLUCRO: TFloatField;
    Tb_LucroPF2NOMPRO: TStringField;
    Qr_Pf01V: TQuery;
    Qr_Pf01VPF1VCODEMP: TFloatField;
    Qr_Pf01VPF1VCHAVE: TFloatField;
    Qr_Pf01VPF1VCODIGO: TFloatField;
    Qr_Pf01VPF1VDATAV: TDateTimeField;
    Qr_Pf01VPF1VVALOR: TFloatField;
    Qr_Pf01VPF1VTABPV: TStringField;
    Qr_Pf01VPF1VDESCF: TFloatField;
    Qr_Pf01VPF1VDTDESCF: TDateTimeField;
    Qr_Pf01VPF1VLOTSEQ: TFloatField;
    Qr_Pf01VPF1VVALOUT: TFloatField;
    Qr_Pf01VPF1VDESCFOUT: TFloatField;
    Qr_Pf01VPF1VDES_CODEMP: TFloatField;
    Qr_Pf01VPF1VDUP: TFloatField;
    rlcab_PF2IPI: TRLMemo;
    rldet_PF2IPI: TRLDBText;
    Qr_PF02PF2TOTLIQ: TFloatField;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel131: TRLLabel;
    RLLabel132: TRLLabel;
    RLLabel166: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel169: TRLLabel;
    RLLabel170: TRLLabel;
    RLLabel174: TRLLabel;
    RLLabel175: TRLLabel;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    Query_Pf01NOMFP: TStringField;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText1: TRLDBText;
    Qr_PF02codio_no_fornecedor: TStringField;
    RLDB_NOMPRO: TRLDBMemo;
    Qr_PF02lotes: TStringField;
    RLDBText98: TRLDBText;
    RLDBText3: TRLDBText;
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure modelo01BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure modelo02BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure modelo03BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand16BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure modelo05BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand19BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_PF02CalcFields(DataSet: TDataSet);
    procedure Query_Pf01CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    lotesAoInvesDescontoMod03: boolean;

     pfor01_pcoven: Boolean;
     function fLerPF1(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;

     function fLerPF2(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;
     function fLerPF1V(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;

  end;

var
  Qr_PFor01: TQr_PFor01;
  mtotqtd, mtotdes, mtotbru,mtotliq: Real;

implementation

uses Func, S_DM1, jpeg, S_DM2,lerarq, func_excecoes;
{$R *.dfm}

procedure TQr_PFor01.RLBand3AfterPrint(Sender: TObject);
begin
     mtotqtd:=mtotqtd+Qr_PF02PF2QTDP.Value;
     mtotdes:=mtotdes+Qr_PF02totdes.Value;
     mtotbru:=mtotbru+Qr_PF02totbru.Value;
     mtotliq:=mtotliq+Qr_PF02totliq.Value;
end;

procedure TQr_PFor01.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  totqtd.Caption:=FormatFloat(mcasqtd, mtotqtd);
  totdes.Caption:=Formatfloat(mcasas, mtotdes);
  totbru.Caption:=FormatFloat(mcasas, mtotbru);
  totliq.Caption:=FormatFloat(mcasas, mtotliq);
  emitido.Caption:='Relatório emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
end;

procedure TQr_PFor01.modelo01BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  mtotqtd:=0;
  mtotdes:=0;
  mtotbru:=0;
  mtotliq:=0;
end;

procedure TQr_PFor01.modelo02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotqtd:=0;
  mtotdes:=0;
  mtotbru:=0;
  mtotliq:=0;
end;

procedure TQr_PFor01.modelo03BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotqtd:=0;
  mtotdes:=0;
  mtotbru:=0;
  mtotliq:=0;
  RLDBText3.Visible:=lotesAoInvesDescontoMod03=true;
  RLDBText98.Visible:=lotesAoInvesDescontoMod03=false;

  if lotesAoInvesDescontoMod03 then
     begin
     RLLabel209.visible := false;
     RLLabel211.Visible := false;
     RLMemo11.visible   := false;
     RLDBText99.visible := false;
     RLDBText104.visible := false;
     RLDBText100.visible := false;
     RLLabel210.width    := 211 +  RLLabel213.width + RLLabel214.width;
     RLLabel210.Caption  := 'lote';
     RLLabel213.visible  :=false;
     RLLabel214.visible  :=false;
     RLDBText101.visible  :=false;
     RLDBText102.visible  :=false;
     RLLabel212.caption   :='Total';
//     RLDBText96.DataField := 'lote';
//     RLDBText98.DataField :=

     end;

end;

procedure TQr_PFor01.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  totqtdm02.Caption:=FormatFloat(mcasqtd, mtotqtd);
  totdesm02.Caption:=Formatfloat(mcasas, mtotdes);
  totbrum02.Caption:=FormatFloat(mcasas, mtotbru);
  totliqm02.Caption:=FormatFloat(mcasas, mtotliq);
  emitidom02.Caption:='Relatório emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
end;

procedure TQr_PFor01.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  totqtdm03.Caption:=FormatFloat(mcasqtd, mtotqtd);
  totdesm03.Caption:=Formatfloat(mcasas, mtotdes);
  totbrum03.Caption:=FormatFloat(mcasas, mtotbru);
  totliqm03.Caption:=FormatFloat(mcasas, mtotliq);
  emitidom02.Caption:='Relatório emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
end;

procedure TQr_PFor01.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
banner01.Caption:=pBanner_Intersys;
end;

procedure TQr_PFor01.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
banner02.Caption:=pBanner_Intersys;
end;

procedure TQr_PFor01.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
banner03.Caption:=pBanner_Intersys;
end;

procedure TQr_PFor01.RLBand16BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
QTD_T.Caption:=FormatFloat(mcasqtd, mtotqtd);
PRECO_CO.Caption:=Formatfloat(mcasas, mtotbru);
PRECO_VE.Caption:=Formatfloat(mcasas, mtotliq);

end;

procedure TQr_PFor01.modelo05BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotqtd:=0;
  mtotdes:=0;
  mtotbru:=0;
  mtotliq:=0;
end;

procedure TQr_PFor01.RLBand19BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotqtd:=mtotqtd+Tb_LucroQTD.AsFloat;
mtotbru:=mtotbru+(Tb_LucroCOMPRA.AsFloat*Tb_LucroQTD.AsFloat);
mtotliq:=mtotliq+(Tb_LucroPRECO.AsFloat*Tb_LucroQTD.AsFloat);
end;



function TQr_PFor01.fLerPF1(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;
begin
Query_Pf01.Close;
Query_Pf01.Sql.Clear;
Query_Pf01.sQl.add('Select PF1CODEMP, '
               +'       PF1CHAVE,'
               +'       PF1DATA, '
               +'       PF1OBS, '
               +'       PF1CASASD, '
               +'       PF1LOCAL, '
               +'       PF1DESC01, '
               +'       PF1DESC02, '
               +'       PF1DESC03, '
               +'       PF1STATUS, '
               +'       PF1CODUSR, '
               +'       PF1HORDIG, '
               +'       PF1USRMOD, '
               +'       PF1DTMOD, '
               +'       PF1HRMOD, '
               +'       PF1TOTMER, '
               +'       PF1TOTPOS, '
               +'       PF1TOTNEG, '
               +'       PF1TOTINA, '
               +'       PF1TOTSEG, '
               +'       PF1BASEN, '
               +'       PF1BASER, '
               +'       PF1ICMSN, '
               +'       PF1ICMSR, '
               +'       PF1CODLDR, '
               +'       PF1BASENR, '
               +'       PF1ICMSNR, '
               +'       PF1ISENTAS, '
               +'       PF1TOTOUT, '
               +'       PF1TOTOUT_ALIQ, '
               +'       PF1TOTOUT_IMP, '
               +'       PF1TOTIPI, '
               +'       PF1DATANF, '
               +'       PF1NUMNF, '
               +'       PF1SERIE, '
               +'       PF1SUBSER, '
               +'       PF1CODPV, '
               +'       PF1CODBCO, '
               +'       PF1CODTRA, '
               +'       PF1MODELO, '
               +'       PF1SUBMOD, '
               +'       PF1NUMDUP, '
               +'       PF1NUMDUPOUT, '
               +'       PF1DESD, '
               +'       PF1GRAVNF, '
               +'       PF1GRAVDP, '
               +'       PF1TABPV, '
               +'       PF1CONDPAG, '
               +'       PF1PIPIFRETE, '
               +'       PF1IPIFRETE, '
               +'       PF1DATAENT, '
               +'       PF1DTPFAT, '
               +'       PF1DTPENT, '
               +'       PF1PERCFRE, '
               +'       PF1FRETEPC, '
               +'       PF1LOTSEQ, '
               +'       PF1ORIGEM, '
               +'       PF1OUTNINC, '
               +'       PF1TEMBOL, '
               +'       PF1LEMAT, '
               +'       PF1CODEMP_ORI, '
               +'       PF1NUMPED_ORI, '
               +'       PF1PAG_ORI, '
               +'       PF1OUTDESP, '
               +'       PF1NFCF, '
               +'       PF1CODFOR, '
               +'       PF1TOTLIQOUT, '
               +'       PF1TOTPBT, '
               +'       PF1FORMACE, '
               +'       PF1SITPED, '
               +'       PF1QTDMAN, '
               +'       PF1TOTDESOUT, '
               +'       PF1TOTBRUOUT, '
               +'       PF1TOTFREOUT, '
               +'       PF1OUTROS, '
               +'       PF1TIPO, '
               +'       PF1SIV_FRETE,'
               +'       PF1SIV_DARE,'
               +'       PF1SIV_OUTROS,'
               +'       PF1OUTVDUP,'
               +'       PF1PRAZO,'
               +'       PF1INT,'
               +'       PF1QTDP,'
               );


if ptipo=2 then
   begin
   Query_Pf01.sQl.add(' PF1TOTDES+PF1TOTDESOUT AS PF1TOTDES, '
                  +' PF1TOTBRU+PF1TOTBRUOUT AS PF1TOTBRU, '
                  +' PF1TOTLIQ+PF1TOTLIQOUT AS PF1TOTLIQ, '
                  +' PF1TOTFRE+PF1TOTFREOUT AS PF1TOTFRE ')
   end
else if ptipo=1 then
   begin
   Query_Pf01.sQl.add(' PF1TOTDESOUT AS PF1TOTDES, '
                  +' PF1TOTBRUOUT AS PF1TOTBRU, '
                  +' PF1TOTLIQOUT AS PF1TOTLIQ, '
                  +' PF1TOTFREOUT AS PF1TOTFRE ')
   end
else
   begin
   Query_Pf01.sQl.add('       PF1TOTDES,'
                  +'       PF1TOTBRU, '
                  +'       PF1TOTLIQ, '
                  +'       PF1TOTFRE ');
   end;

Query_Pf01.sQl.add(' ,PF1LOTE_ENTRADA ' );
Query_Pf01.sQl.add(' ,PF1REGENT');
Query_Pf01.sQl.add(' ,PF1SITPROD');
Query_Pf01.sQl.add(' ,PF1ALIQ_FRETE');
Query_Pf01.sQl.add(' ,PF1ICMS_FRETE');
Query_Pf01.sQl.add(' ,PF1_NFE_CHAVE');
Query_Pf01.sQl.add(' ,PF1INCFRE');

if pCodNov>0 then
   Query_Pf01.Sql.Add(' from OLD_CADPF1 ')
else
   Query_Pf01.Sql.Add(' from CADPF1 ');


Query_Pf01.sQl.add(' where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1CODEMP=0'+FloatTostr(pCodEmp)+' and ')
               +'       PF1LOTSEQ=0'+FloatToStr(pLotSeq));
if pcodnov=0 then
   Query_Pf01.sQl.add(' and PF1CHAVE=0'+FloatToStr(pChave))
else
   Query_Pf01.sQl.add(' and PF1CODNOV=0'+FloatToStr(pCodNov));

try
   Query_Pf01.Open;
except
   Query_Pf01.Sql.SaveToFile('C:\SQL.TXT');
   end;
if Query_Pf01.Eof then
   result:=false
else
   result:=true;
end;

function TQr_PFor01.fLerPF2(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;
begin
Qr_Pf02.Close;
Qr_Pf02.Sql.Clear;
Qr_Pf02.Sql.Add('Select PF2CODEMP, '
               +'       PF2CHAVE, '
               +'       PF2ITEM, '
               +'       PF2CODPRO, '
               +'       PF2NOMPRO, '
               +'       PF2TOTLIQ, '
               +'       PF2LOTE, '
               +'       PF2DATAV, '
               +'       PF2QTDP, '
               +'       PF2DESC01, '
               +'       PF2DESC02, '
               +'       PF2DESC03, '
               +'       PF2SIT, '
               +'       PF2ALIQ, '
               +'       PF2ALIQNR, '
               +'       PF2BASEN, '
               +'       PF2ICMSN, '
               +'       PF2BASER, '
               +'       PF2ICMSR, '
               +'       PF2STATUS, '
               +'       PF2TAB, '
               +'       PF2LISTA, '
               +'       PF2PCOTAB, '
               +'       PF2BASENR, '
               +'       PF2ICMSNR, '
               +'       PF2ISENTAS, '
               +'       PF2ALIPI, '
               +'       PF2IPI, '
               +'       PF2CFO, '
               +'       PF2CFOP_COMP, '
               +'       PF2LOTSEQ, '
               +'       PF2PMC, '
               +'       PF2OUTRAS, '
               +'       PF2ORIGEM, '
               +'       PF2STATUS_PF1, '
               +'       PF2PUOUT, '
               +'       PF2PBT, '
               +'       PF2QTDREC, '
               +'       PF2FRERATOUT, '
               +'       PF2DESCRATOUT, '
               +'       PF2VALDESOUT, '
               +'       PF2TOTDESOUT, '
               +'       PF2SIV_OUTROS, ');

if ptipo=2 then
   begin
   Qr_Pf02.Sql.Add(' PF2PU+PF2PUOUT AS  PF2PU, '
                  +' PF2FRERAT+PF2FRERATOUT AS PF2FRERAT, '
                  +' PF2TOTDES+PF2TOTDESOUT AS PF2TOTDES, '
                  +' PF2VALDES+PF2VALDESOUT AS PF2VALDES, '
                  +' PF2DESCRAT+PF2DESCRATOUT AS PF2DESCRAT ');
   end
else if ptipo=1 then
   begin
   Qr_Pf02.Sql.Add(' PF2PUOUT AS  PF2PU, '
                  +' PF2FRERATOUT AS PF2FRERAT, '
                  +' PF2TOTDESOUT AS PF2TOTDES, '
                  +' PF2VALDESOUT AS PF2VALDES, '
                  +' PF2DESCRATOUT AS PF2DESCRAT ');
   end
else
   begin
   Qr_Pf02.Sql.Add('     PF2PU, '
                  +'       PF2FRERAT, '
                  +'       PF2TOTDES, '
                  +'       PF2VALDES, '
                  +'       PF2DESCRAT ');
   end;
Qr_Pf02.Sql.Add(', PF2PREDICMNOR ');
Qr_Pf02.Sql.Add(', PF2LOTE_RE ');
Qr_Pf02.Sql.Add(', PF2DTENTRADA ');
Qr_Pf02.Sql.Add(', PF2OBS ');
if pCodNov>0 then
   Qr_Pf02.Sql.Add(' from OLD_CADPF2 ')
else
   Qr_Pf02.Sql.Add(' from CADPF2 ');

Qr_Pf02.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+FloatToStr(pCodEmp)+' and ')
               +' PF2LOTSEQ=0'+Floattostr(pLotSeq));


if pCodNov>0 then
   Qr_Pf02.Sql.Add(' and PF2CODNOV=:CODNOV ')
else
   Qr_Pf02.Sql.Add(' and PF2CHAVE=0'+Floattostr(pChave));

Qr_Pf02.Sql.Add(' order by PF2CODEMP,PF2LOTSEQ,PF2CHAVE');

try
   Qr_PF02.Open;
except
   Qr_PF02.Sql.SaveToFile('C:\SQL.TXT');
   end;

if Qr_PF02.Eof then
   result:=false
else
   result:=true;
end;


function TQr_PFor01.fLerPF1V(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real;pCodNov: Real): Boolean;

begin
Qr_Pf01V.Close;
Qr_Pf01V.Sql.Clear;
Qr_Pf01V.Sql.Add('Select PF1VCODEMP, '
             +'       PF1VCHAVE, '
             +'       PF1VCODIGO, '
             +'       PF1VDATAV, '
             +'       PF1VTABPV, '
             +'       PF1VDTDESCF, '
             +'       PF1VDUP, '
             +'       PF1VLOTSEQ, '
             +'       PF1VVALOUT, '
             +'       PF1VDESCFOUT, '
             +'       PF1VDES_CODEMP, ');

if ptipo=2 then
   begin
   Qr_Pf01V.Sql.add(' PF1VVALOR+PF1VVALOUT    AS PF1VVALOR, '
                   +' PF1VDESCF+PF1VDESCFOUT AS PF1VDESCF ')
   end
else if ptipo=1 then
   begin
   Qr_Pf01V.Sql.add(' PF1VVALOUT    AS PF1VVALOR, '
                   +' PF1VDESCFOUT AS PF1VDESCF ');
   end
else
   begin
   Qr_Pf01V.Sql.add(' PF1VVALOR, '
                   +' PF1VDESCF ');
   end;
if pCodNov>0 then 
   Qr_Pf01V.Sql.add('  from OLD_CADPF1V ')
else
   Qr_Pf01V.Sql.add('  from CADPF1V ');


Qr_Pf01V.Sql.add(' where '
            +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1VCODEMP=0'+FloatToStr(pCodEmp)+' and ')
            +' PF1VLOTSEQ=0'+Floattostr(pLotSeq));
if pcodnov>0 then
   Qr_Pf01V.Sql.add(' and PF1VCODNOV=0'+Floattostr(pCodNov))
else
   Qr_Pf01V.Sql.add(' and PF1VCHAVE=0'+Floattostr(pChave));

Qr_Pf01V.Sql.add(' order by PF1VCODEMP,PF1VLOTSEQ,PF1VDATAV');
try
   Qr_PF01V.Open;
except
   Qr_PF01V.Sql.SaveToFile('C:\SQL.TXT');
   end;


if Qr_PF01V.Eof then
   result:=false
else
   result:=true;
end;
function fBloqueiaLibera(ptipo: Integer; pCodEmp,pLotSeq,pChave: Real): Boolean;
// ptipo=0 libera chave
//      =1 bloqueia chave
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPF1 set PF1SITPED='+IntToStr(ptipo)
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPFOR',[]),'',' PF1CODEMP=0'+FloatToStr(pcodemp)+' and ')
                  +' PF1LOTSEQ=0'+FloatToStr(pLotSeq)
                  +' and PF1CHAVE=0'+FloatToStr(pChave));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
result:=true;
end;

procedure TQr_PFor01.Qr_PF02CalcFields(DataSet: TDataSet);
var
query_lotes: tQuery;

begin
if flqr1('PDNOME, PDUND','PD','CADPRO','N','PDCODPRO',Qr_PF02PF2CODPRO.AsString) then
   begin

   if Qr_PF02PF2NOMPRO.IsNull then
     Qr_PF02NOMPRO.Value:=DM1.Query1.Fields[0].AsString
   else
     Qr_PF02NOMPRO.Value:=Qr_PF02PF2NOMPRO.AsString;

   Qr_PF02undpro.Value:=DM1.Query1.Fields[1].AsString;
   end;
Qr_PF02totbru.Value:=Arredonda(Qr_PF02PF2PU.Value*Qr_PF02PF2QTDP.Value,2);
//Qr_PF02totdes.Value:=(Qr_PF02PF2TOTDES.Value+Qr_PF02PF2DESCRAT.Value);
Qr_PF02totdes.Value:=Qr_PF02PF2TOTDES.Value;

//if not Qr_PF02PF2TOTLIQ.IsNull then
//  Qr_PF02totliq.Value:=Qr_PF02totbru.Value-Qr_PF02totdes.Value+Qr_PF02PF2IPI.Value
//else
  Qr_PF02totliq.Value:=Arredonda(Qr_PF02PF2TOTLIQ.Value + Qr_PF02PF2IPI.Value + Qr_PF02PF2ICMSR.Value,2);

if fLerGenerico_query('CODPFOR','PFCODPFORN','PFCODPRO=0'+Qr_PF02PF2CODPRO.AsString+' and PFCODFOR='+Query_Pf01PF1CODFOR.AsString,query_consulta) then
   Qr_PF02codio_no_fornecedor.AsString:=query_consulta.fieldbyname('PFCODPFORN').AsString;

fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');
if pfor01_pcoven=false then
   Qr_PF02pcoimp.AsFloat  :=  Qr_PF02PF2PU.AsFloat
else
  begin
  flcadpro(1,0,codemp,Qr_PF02PF2CODPRO.AsString);
  Qr_PF02pcoimp.AsFloat  :=  DM1.Tb_ProPDPRECO1.AsFloat;
  end;

query_lotes:=tQuery.create(nil);
query_lotes.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_lotes.SQL.add('select pf2l_item,pf2l_lote,pf2l_dtvcto,pf2l_qtd from cadpf2_lotes_orc '
                   +' where pf2l_codemp='+Query_Pf01PF1CODEMP.AsString
                   +' and pf2l_chave='+Query_Pf01PF1CHAVE.AsString
                   +' and pf2l_lotseq='+Query_Pf01PF1LOTSEQ.AsString
                   +' and pf2l_item='+Qr_PF02PF2ITEM.AsString);
try
   query_lotes.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_lotes,1447,'SGE','CADPF2_LOTES_ORC');
   end;
   end;
Qr_PF02lotes.Value:='';
While not query_lotes.eof do
   begin
   if Qr_PF02lotes.Value <> '' then
      Qr_PF02Lotes.Value := Qr_PF02Lotes.Value +' - ';
{
   Qr_PF02lotes.Value := Qr_PF02lotes.Value + 'Lote: '+query_lotes.fieldbyname('pf2l_lote').asstring;
   if query_lotes.fieldbyname('pf2l_dtvcto').AsDateTime >  pdatanula then
      Qr_PF02lotes.Value := Qr_PF02lotes.Value + ' Vcto: '+formatdatetime(fdt2,  query_lotes.fieldbyname('pf2l_dtvcto').asDateTime);
   Qr_PF02lotes.Value := Qr_PF02lotes.Value + ' Qtde: '+query_lotes.fieldbyname('pf2l_qtd').asstring;
 }

   Qr_PF02lotes.Value := Qr_PF02lotes.Value + 'Lt: '+query_lotes.fieldbyname('pf2l_lote').asstring;
   Qr_PF02lotes.Value := Qr_PF02lotes.Value + '/'+query_lotes.fieldbyname('pf2l_qtd').asstring+' ';

   query_lotes.next;
   end;
freeandnil(query_lotes);


end;

procedure TQr_PFor01.Query_Pf01CalcFields(DataSet: TDataSet);
begin


if (Query_Pf01PF1DTPFAT.AsDateTime>pdatanula) then
   Query_Pf01dtpfat.Value:=FormatDatetime(fdt2, Query_Pf01PF1DTPFAT.Value)
else
   Query_Pf01dtpfat.Value:='___/___/___';


if (Query_Pf01PF1DTPENT.AsdateTime)>pdatanula then
   Query_Pf01dtpent.Value:=FormatDatetime(fdt2, Query_Pf01PF1DTPENT.Value)
else
   Query_Pf01dtpent.Value:='___/___/___';
if flcadpv(1,0,Query_Pf01PF1TABPV.AsString,Query_Pf01PF1CODPV.AsString) then
  Query_Pf01NOMFP.AsString:=DM1.Tb_PVPVNOME.AsString
else
  Query_Pf01NOMFP.AsString:='Plano Opcional';


end;

procedure TQr_PFor01.FormCreate(Sender: TObject);
begin

Qr_PF02totliq.DisplayFormat:='#,##0.00';
Qr_PF02totbru.DisplayFormat:='#,##0.00';
Qr_PF02totdes.DisplayFormat:='#,##0.00';
Qr_PF02pcoimp.DisplayFormat:='#,##0.00';
Qr_PF02PF2PU.DisplayFormat:='#,##0.00';
end;

end.
