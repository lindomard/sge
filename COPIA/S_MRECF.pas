unit S_MRECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,lerarq,S_DM1,S_CapRedZ, RxMemDS, ToolEdit,
  CurrEdit;

type
  TFrm_MRECF = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    IMPRIMIR: TBitBtn;
    CAPTURAR: TBitBtn;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    bbCompararMapaXNotas: TBitBtn;
    tsRedZxCADNS: TTabSheet;
    Label19: TLabel;
    edt_dtini: TMaskEdit;
    Label20: TLabel;
    edt_dtfin: TMaskEdit;
    bbComparar: TBitBtn;
    gb_resumo: TGroupBox;
    Src__ecfxcadns: TDataSource;
    DBGrid__ecfxcadns: TDBGrid;
    mem_ecfxcadns: TRxMemoryData;
    mem_ecfxcadnsecf_totvda_bruta: TFloatField;
    mem_ecfxcadnsecf_totvda_liq: TFloatField;
    mem_ecfxcadnsecf_totvda_canc: TFloatField;
    mem_ecfxcadnsecf_totacres: TFloatField;
    mem_ecfxcadnsecf_totdes: TFloatField;
    mem_ecfxcadnsecf_totissqn: TFloatField;
    mem_ecfxcadnsecf_totisentas: TFloatField;
    mem_ecfxcadnsecf_totNaoInc: TFloatField;
    mem_ecfxcadnsecf_totsubstTrib: TFloatField;
    mem_ecfxcadnsecf_tottrib: TFloatField;
    mem_ecfxcadnsns_totvda_bruta: TFloatField;
    mem_ecfxcadnsns_totvda_liq: TFloatField;
    mem_ecfxcadnsns_totvda_canc: TFloatField;
    mem_ecfxcadnsns_totacres: TFloatField;
    mem_ecfxcadnsns_totdes: TFloatField;
    mem_ecfxcadnsns_totissqn: TFloatField;
    mem_ecfxcadnsns_totisentas: TFloatField;
    mem_ecfxcadnsns_totNaoInc: TFloatField;
    mem_ecfxcadnsns_totsubstTrib: TFloatField;
    mem_ecfxcadnsns_tottrib: TFloatField;
    mem_ecfxcadnsdif_totvda_bruta: TFloatField;
    mem_ecfxcadnsdif_totvda_liq: TFloatField;
    mem_ecfxcadnsdif_totvda_canc: TFloatField;
    mem_ecfxcadnsdif_totacres: TFloatField;
    mem_ecfxcadnsdif_totdes: TFloatField;
    mem_ecfxcadnsdif_totissqn: TFloatField;
    mem_ecfxcadnsdif_totisentas: TFloatField;
    mem_ecfxcadnsdif_totNaoInc: TFloatField;
    mem_ecfxcadnsdif_totsubstTrib: TFloatField;
    mem_ecfxcadnsdif_tottrib: TFloatField;
    mem_ecfxcadnsDATAREDUZ: TDateTimeField;
    U_Ped02_Isentas: TUpdateSQL;
    Tb_Ped02_Isentas: TQuery;
    Tb_Ped02_IsentasP2CODEMP: TFloatField;
    Tb_Ped02_IsentasP2LOTSEQ: TFloatField;
    Tb_Ped02_IsentasP2CHAVE: TFloatField;
    Tb_Ped02_IsentasP2ORDEM: TFloatField;
    Tb_Ped02_IsentasP2ITEM: TFloatField;
    Tb_Ped02_IsentasP2CODPRO: TFloatField;
    Tb_Ped02_IsentasP2CODANT: TFloatField;
    Tb_Ped02_IsentasP2CODAGRU: TFloatField;
    Tb_Ped02_IsentasP2CONSIG: TFloatField;
    Tb_Ped02_IsentasP2QTD: TFloatField;
    Tb_Ped02_IsentasP2QTD_ATEN: TFloatField;
    Tb_Ped02_IsentasP2QTDDEV: TFloatField;
    Tb_Ped02_IsentasP2QTD_ENTREGUE: TFloatField;
    Tb_Ped02_IsentasP2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02_IsentasP2AMBIENTE: TStringField;
    Tb_Ped02_IsentasP2LOTE: TStringField;
    Tb_Ped02_IsentasP2PROMOCAO: TStringField;
    Tb_Ped02_IsentasP2DTVCTO: TDateTimeField;
    Tb_Ped02_IsentasP2DESC1: TFloatField;
    Tb_Ped02_IsentasP2DESC2: TFloatField;
    Tb_Ped02_IsentasP2DESC3: TFloatField;
    Tb_Ped02_IsentasP2VALDES: TFloatField;
    Tb_Ped02_IsentasP2PRECO: TFloatField;
    Tb_Ped02_IsentasP2SIT: TStringField;
    Tb_Ped02_IsentasP2CODFAB: TFloatField;
    Tb_Ped02_IsentasP2CODGRU: TFloatField;
    Tb_Ped02_IsentasP2BASEN: TFloatField;
    Tb_Ped02_IsentasP2ICMSN: TFloatField;
    Tb_Ped02_IsentasP2REPAS: TFloatField;
    Tb_Ped02_IsentasP2BASER: TFloatField;
    Tb_Ped02_IsentasP2ICMSR: TFloatField;
    Tb_Ped02_IsentasP2LISTA: TFloatField;
    Tb_Ped02_IsentasP2STATUS: TFloatField;
    Tb_Ped02_IsentasP2PCOTAB: TFloatField;
    Tb_Ped02_IsentasP2PCOFPG: TFloatField;
    Tb_Ped02_IsentasP2UCPR: TFloatField;
    Tb_Ped02_IsentasP2PCOCUS: TFloatField;
    Tb_Ped02_IsentasP2PCOMAX: TFloatField;
    Tb_Ped02_IsentasP2TOTDES: TFloatField;
    Tb_Ped02_IsentasP2DESCRAT: TFloatField;
    Tb_Ped02_IsentasP2ACRERAT: TFloatField;
    Tb_Ped02_IsentasP2TABELA: TStringField;
    Tb_Ped02_IsentasP2ALIPI: TFloatField;
    Tb_Ped02_IsentasP2VALIPI: TFloatField;
    Tb_Ped02_IsentasP2BCINR: TFloatField;
    Tb_Ped02_IsentasP2ICMSNR: TFloatField;
    Tb_Ped02_IsentasP2ISENTAS: TFloatField;
    Tb_Ped02_IsentasP2TOTOUT: TFloatField;
    Tb_Ped02_IsentasP2ALIQ: TFloatField;
    Tb_Ped02_IsentasP2ALIQNR: TFloatField;
    Tb_Ped02_IsentasP2PCOMIS: TFloatField;
    Tb_Ped02_IsentasP2VCOMIS: TFloatField;
    Tb_Ped02_IsentasP2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02_IsentasP2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02_IsentasP2PCOM02: TFloatField;
    Tb_Ped02_IsentasP2VCOM02: TFloatField;
    Tb_Ped02_IsentasP2VCOM03: TFloatField;
    Tb_Ped02_IsentasP2PCOM03: TFloatField;
    Tb_Ped02_IsentasP2VCOM04: TFloatField;
    Tb_Ped02_IsentasP2DESCM: TFloatField;
    Tb_Ped02_IsentasP2CFO: TFloatField;
    Tb_Ped02_IsentasP2CFOSUBECF: TFloatField;
    Tb_Ped02_IsentasP2SEMCOM: TFloatField;
    Tb_Ped02_IsentasP2TOTLIQ: TFloatField;
    Tb_Ped02_IsentasP2PDESCF: TFloatField;
    Tb_Ped02_IsentasP2VDESCF: TFloatField;
    Tb_Ped02_IsentasP2ACRECONV: TFloatField;
    Tb_Ped02_IsentasP2ACREGER: TFloatField;
    Tb_Ped02_IsentasP2STATUS_PED1: TFloatField;
    Tb_Ped02_IsentasP2TIPO: TFloatField;
    Tb_Ped02_IsentasP2ST_IVA: TFloatField;
    Tb_Ped02_IsentasP2ST_REDUT: TFloatField;
    Tb_Ped02_IsentasP2ST_ICMCRED: TFloatField;
    Tb_Ped02_IsentasP2ST_ICMDEB: TFloatField;
    Tb_Ped02_IsentasP2REDUTICM: TFloatField;
    Tb_Ped02_IsentasP2PRAZO: TFloatField;
    Tb_Ped02_IsentasP2ALPIS: TFloatField;
    Tb_Ped02_IsentasP2VALPIS: TFloatField;
    Tb_Ped02_IsentasP2ALCOFINS: TFloatField;
    Tb_Ped02_IsentasP2COFINS: TFloatField;
    Tb_Ped02_IsentasP2CODVEN: TFloatField;
    Tb_Ped02_IsentasP2TIPO_PCO: TFloatField;
    Tb_Ped02_IsentasP2CONS_PROPRIO: TFloatField;
    Tb_Ped02_IsentasP2CODPRO_ORI: TStringField;
    Tb_Ped02_IsentasP2NOMPRO_ORI: TStringField;
    Tb_Ped02_IsentasP2CHAVE_NIVEL: TFloatField;
    Tb_Ped02_IsentasP2PCRED_SN: TFloatField;
    Tb_Ped02_IsentasP2PCREDSN: TFloatField;
    Tb_Ped02_Trib: TQuery;
    U_Ped02_trib: TUpdateSQL;
    GroupBox1: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Tb_Ped02_SubSt: TQuery;
    U_Ped02_SubSt: TUpdateSQL;
    Tb_Ped02_TribP2CODEMP: TFloatField;
    Tb_Ped02_TribP2LOTSEQ: TFloatField;
    Tb_Ped02_TribP2CHAVE: TFloatField;
    Tb_Ped02_TribP2ORDEM: TFloatField;
    Tb_Ped02_TribP2ITEM: TFloatField;
    Tb_Ped02_TribP2CODPRO: TFloatField;
    Tb_Ped02_TribP2CODANT: TFloatField;
    Tb_Ped02_TribP2CODAGRU: TFloatField;
    Tb_Ped02_TribP2CONSIG: TFloatField;
    Tb_Ped02_TribP2QTD: TFloatField;
    Tb_Ped02_TribP2QTD_ATEN: TFloatField;
    Tb_Ped02_TribP2QTDDEV: TFloatField;
    Tb_Ped02_TribP2QTD_ENTREGUE: TFloatField;
    Tb_Ped02_TribP2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02_TribP2AMBIENTE: TStringField;
    Tb_Ped02_TribP2LOTE: TStringField;
    Tb_Ped02_TribP2PROMOCAO: TStringField;
    Tb_Ped02_TribP2DTVCTO: TDateTimeField;
    Tb_Ped02_TribP2DESC1: TFloatField;
    Tb_Ped02_TribP2DESC2: TFloatField;
    Tb_Ped02_TribP2DESC3: TFloatField;
    Tb_Ped02_TribP2VALDES: TFloatField;
    Tb_Ped02_TribP2PRECO: TFloatField;
    Tb_Ped02_TribP2SIT: TStringField;
    Tb_Ped02_TribP2CODFAB: TFloatField;
    Tb_Ped02_TribP2CODGRU: TFloatField;
    Tb_Ped02_TribP2BASEN: TFloatField;
    Tb_Ped02_TribP2ICMSN: TFloatField;
    Tb_Ped02_TribP2REPAS: TFloatField;
    Tb_Ped02_TribP2BASER: TFloatField;
    Tb_Ped02_TribP2ICMSR: TFloatField;
    Tb_Ped02_TribP2LISTA: TFloatField;
    Tb_Ped02_TribP2STATUS: TFloatField;
    Tb_Ped02_TribP2PCOTAB: TFloatField;
    Tb_Ped02_TribP2PCOFPG: TFloatField;
    Tb_Ped02_TribP2UCPR: TFloatField;
    Tb_Ped02_TribP2PCOCUS: TFloatField;
    Tb_Ped02_TribP2PCOMAX: TFloatField;
    Tb_Ped02_TribP2TOTDES: TFloatField;
    Tb_Ped02_TribP2DESCRAT: TFloatField;
    Tb_Ped02_TribP2ACRERAT: TFloatField;
    Tb_Ped02_TribP2TABELA: TStringField;
    Tb_Ped02_TribP2ALIPI: TFloatField;
    Tb_Ped02_TribP2VALIPI: TFloatField;
    Tb_Ped02_TribP2BCINR: TFloatField;
    Tb_Ped02_TribP2ICMSNR: TFloatField;
    Tb_Ped02_TribP2ISENTAS: TFloatField;
    Tb_Ped02_TribP2TOTOUT: TFloatField;
    Tb_Ped02_TribP2ALIQ: TFloatField;
    Tb_Ped02_TribP2ALIQNR: TFloatField;
    Tb_Ped02_TribP2PCOMIS: TFloatField;
    Tb_Ped02_TribP2VCOMIS: TFloatField;
    Tb_Ped02_TribP2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02_TribP2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02_TribP2PCOM02: TFloatField;
    Tb_Ped02_TribP2VCOM02: TFloatField;
    Tb_Ped02_TribP2VCOM03: TFloatField;
    Tb_Ped02_TribP2PCOM03: TFloatField;
    Tb_Ped02_TribP2VCOM04: TFloatField;
    Tb_Ped02_TribP2DESCM: TFloatField;
    Tb_Ped02_TribP2CFO: TFloatField;
    Tb_Ped02_TribP2CFOSUBECF: TFloatField;
    Tb_Ped02_TribP2SEMCOM: TFloatField;
    Tb_Ped02_TribP2TOTLIQ: TFloatField;
    Tb_Ped02_TribP2PDESCF: TFloatField;
    Tb_Ped02_TribP2VDESCF: TFloatField;
    Tb_Ped02_TribP2ACRECONV: TFloatField;
    Tb_Ped02_TribP2ACREGER: TFloatField;
    Tb_Ped02_TribP2STATUS_PED1: TFloatField;
    Tb_Ped02_TribP2TIPO: TFloatField;
    Tb_Ped02_TribP2ST_IVA: TFloatField;
    Tb_Ped02_TribP2ST_REDUT: TFloatField;
    Tb_Ped02_TribP2ST_ICMCRED: TFloatField;
    Tb_Ped02_TribP2ST_ICMDEB: TFloatField;
    Tb_Ped02_TribP2REDUTICM: TFloatField;
    Tb_Ped02_TribP2PRAZO: TFloatField;
    Tb_Ped02_TribP2ALPIS: TFloatField;
    Tb_Ped02_TribP2VALPIS: TFloatField;
    Tb_Ped02_TribP2ALCOFINS: TFloatField;
    Tb_Ped02_TribP2COFINS: TFloatField;
    Tb_Ped02_TribP2CODVEN: TFloatField;
    Tb_Ped02_TribP2TIPO_PCO: TFloatField;
    Tb_Ped02_TribP2CONS_PROPRIO: TFloatField;
    Tb_Ped02_TribP2CODPRO_ORI: TStringField;
    Tb_Ped02_TribP2NOMPRO_ORI: TStringField;
    Tb_Ped02_TribP2CHAVE_NIVEL: TFloatField;
    Tb_Ped02_TribP2PCRED_SN: TFloatField;
    Tb_Ped02_TribP2PCREDSN: TFloatField;
    Tb_Ped02_SubStP2CODEMP: TFloatField;
    Tb_Ped02_SubStP2LOTSEQ: TFloatField;
    Tb_Ped02_SubStP2CHAVE: TFloatField;
    Tb_Ped02_SubStP2ORDEM: TFloatField;
    Tb_Ped02_SubStP2ITEM: TFloatField;
    Tb_Ped02_SubStP2CODPRO: TFloatField;
    Tb_Ped02_SubStP2CODANT: TFloatField;
    Tb_Ped02_SubStP2CODAGRU: TFloatField;
    Tb_Ped02_SubStP2CONSIG: TFloatField;
    Tb_Ped02_SubStP2QTD: TFloatField;
    Tb_Ped02_SubStP2QTD_ATEN: TFloatField;
    Tb_Ped02_SubStP2QTDDEV: TFloatField;
    Tb_Ped02_SubStP2QTD_ENTREGUE: TFloatField;
    Tb_Ped02_SubStP2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02_SubStP2AMBIENTE: TStringField;
    Tb_Ped02_SubStP2LOTE: TStringField;
    Tb_Ped02_SubStP2PROMOCAO: TStringField;
    Tb_Ped02_SubStP2DTVCTO: TDateTimeField;
    Tb_Ped02_SubStP2DESC1: TFloatField;
    Tb_Ped02_SubStP2DESC2: TFloatField;
    Tb_Ped02_SubStP2DESC3: TFloatField;
    Tb_Ped02_SubStP2VALDES: TFloatField;
    Tb_Ped02_SubStP2PRECO: TFloatField;
    Tb_Ped02_SubStP2SIT: TStringField;
    Tb_Ped02_SubStP2CODFAB: TFloatField;
    Tb_Ped02_SubStP2CODGRU: TFloatField;
    Tb_Ped02_SubStP2BASEN: TFloatField;
    Tb_Ped02_SubStP2ICMSN: TFloatField;
    Tb_Ped02_SubStP2REPAS: TFloatField;
    Tb_Ped02_SubStP2BASER: TFloatField;
    Tb_Ped02_SubStP2ICMSR: TFloatField;
    Tb_Ped02_SubStP2LISTA: TFloatField;
    Tb_Ped02_SubStP2STATUS: TFloatField;
    Tb_Ped02_SubStP2PCOTAB: TFloatField;
    Tb_Ped02_SubStP2PCOFPG: TFloatField;
    Tb_Ped02_SubStP2UCPR: TFloatField;
    Tb_Ped02_SubStP2PCOCUS: TFloatField;
    Tb_Ped02_SubStP2PCOMAX: TFloatField;
    Tb_Ped02_SubStP2TOTDES: TFloatField;
    Tb_Ped02_SubStP2DESCRAT: TFloatField;
    Tb_Ped02_SubStP2ACRERAT: TFloatField;
    Tb_Ped02_SubStP2TABELA: TStringField;
    Tb_Ped02_SubStP2ALIPI: TFloatField;
    Tb_Ped02_SubStP2VALIPI: TFloatField;
    Tb_Ped02_SubStP2BCINR: TFloatField;
    Tb_Ped02_SubStP2ICMSNR: TFloatField;
    Tb_Ped02_SubStP2ISENTAS: TFloatField;
    Tb_Ped02_SubStP2TOTOUT: TFloatField;
    Tb_Ped02_SubStP2ALIQ: TFloatField;
    Tb_Ped02_SubStP2ALIQNR: TFloatField;
    Tb_Ped02_SubStP2PCOMIS: TFloatField;
    Tb_Ped02_SubStP2VCOMIS: TFloatField;
    Tb_Ped02_SubStP2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02_SubStP2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02_SubStP2PCOM02: TFloatField;
    Tb_Ped02_SubStP2VCOM02: TFloatField;
    Tb_Ped02_SubStP2VCOM03: TFloatField;
    Tb_Ped02_SubStP2PCOM03: TFloatField;
    Tb_Ped02_SubStP2VCOM04: TFloatField;
    Tb_Ped02_SubStP2DESCM: TFloatField;
    Tb_Ped02_SubStP2CFO: TFloatField;
    Tb_Ped02_SubStP2CFOSUBECF: TFloatField;
    Tb_Ped02_SubStP2SEMCOM: TFloatField;
    Tb_Ped02_SubStP2TOTLIQ: TFloatField;
    Tb_Ped02_SubStP2PDESCF: TFloatField;
    Tb_Ped02_SubStP2VDESCF: TFloatField;
    Tb_Ped02_SubStP2ACRECONV: TFloatField;
    Tb_Ped02_SubStP2ACREGER: TFloatField;
    Tb_Ped02_SubStP2STATUS_PED1: TFloatField;
    Tb_Ped02_SubStP2TIPO: TFloatField;
    Tb_Ped02_SubStP2ST_IVA: TFloatField;
    Tb_Ped02_SubStP2ST_REDUT: TFloatField;
    Tb_Ped02_SubStP2ST_ICMCRED: TFloatField;
    Tb_Ped02_SubStP2ST_ICMDEB: TFloatField;
    Tb_Ped02_SubStP2REDUTICM: TFloatField;
    Tb_Ped02_SubStP2PRAZO: TFloatField;
    Tb_Ped02_SubStP2ALPIS: TFloatField;
    Tb_Ped02_SubStP2VALPIS: TFloatField;
    Tb_Ped02_SubStP2ALCOFINS: TFloatField;
    Tb_Ped02_SubStP2COFINS: TFloatField;
    Tb_Ped02_SubStP2CODVEN: TFloatField;
    Tb_Ped02_SubStP2TIPO_PCO: TFloatField;
    Tb_Ped02_SubStP2CONS_PROPRIO: TFloatField;
    Tb_Ped02_SubStP2CODPRO_ORI: TStringField;
    Tb_Ped02_SubStP2NOMPRO_ORI: TStringField;
    Tb_Ped02_SubStP2CHAVE_NIVEL: TFloatField;
    Tb_Ped02_SubStP2PCRED_SN: TFloatField;
    Tb_Ped02_SubStP2PCREDSN: TFloatField;
    Tb_Ped02_IsentasP2COMPLEMENTO: TMemoField;
    Tb_Ped02_TribP2COMPLEMENTO: TMemoField;
    Tb_Ped02_SubStP2COMPLEMENTO: TMemoField;
    edt_ret5405: TCurrencyEdit;
    Label21: TLabel;
    bbRetirar: TBitBtn;
    Tb_Ped02_IsentasP2DESCPR: TFloatField;
    Tb_Ped02_TribP2DESCPR: TFloatField;
    Tb_Ped02_SubStP2DESCPR: TFloatField;
    procedure DBEdit1Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure CAMPOExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure CAPTURARClick(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SAIRClick(Sender: TObject);
    procedure bbCompararMapaXNotasClick(Sender: TObject);
    procedure bbCompararClick(Sender: TObject);
    procedure DBGrid__ecfxcadnsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure edt_dtiniExit(Sender: TObject);
    procedure edt_dtfinExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure bbRetirarClick(Sender: TObject);
  private
    { Private declarations }
    function fProcessar(pTipo: Integer):boolean;
    function fCorrigirValores(pDifIsentas,pDifNInc,pDifSubTrib,pDifTrib: Real): Boolean;
    function fMudaSubTrib_p_Trib(pValorProc: Real):Real;
    function fMudaIsentas_p_Trib(pValorProc: Real):Real;

    Function fMudaTrib_p_SubTrib(pValorProc: Real):Real;
    function fMudaIsentas_p_SubsTrib(pValorProc: Real):Real;

    Function fMudaTrib_p_Isentas(pValorProc: Real):Real;
    Function fMudaSubTrib_p_Isentas(pValorProc: Real):Real;
    function fAumentarIsentas(pValorProc: Real):Boolean;
    function fAumentarTrib(pValorProc: Real):Boolean;
    function fAumentarSubSt(pValorProc: Real):Boolean;

  public
    { Public declarations }
  end;

function f02AumDescIsentasDimTrib(pData:TdateTime;pValorAumIsento: Real):Boolean;
function f03DimDescIsentasAumTrib(pData:TdateTime;pValorDimIsento: Real):Boolean;


function f04AumDescIsentasDimSubst(pData:TdateTime;pValorAumIsento: Real):Boolean;
//function f05DimDescIsentasAumSubst(pData:TdateTime;pValorDimIsento: Real):Boolean;

var
  Frm_MRECF: TFrm_MRECF;
  moper: Integer=0;
  maltant: Real=0;
  codmin_ant: Real=0;
  data_ant  : TDateTime;
  mrecf_ori : string;
implementation

uses S_EMRECF, S_ECF_Comp_MRxNS, func_excecoes;

{$R *.dfm}

procedure TFrm_MRECF.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if flcadecf(1,0,DM1.Tb_MI01CMCODIMP.AsString) then
   DM1.Tb_MI01nomeimp.Value:=DM1.Tb_ECFCFNOME.Value
else
   begin
   fmensagem('Impressora não Cadastrada!',0,['0'],0);
   DBEdit1.SetFocus;
   end;

end;

procedure TFrm_MRECF.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM1.Tb_MI01.Append;
DBEdit1.SetFocus;

flcadmi02(0,0,'999999',FormatDateTime(fdt, pdatasis),'999999');
moper:=0;
end;

procedure TFrm_MRECF.ALTERARClick(Sender: TObject);
begin
  inherited;

if DM1.Tb_MI01CMCODIMP.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado!',0,['0'],0);
   CANCELAR.Click;
   exit;
   end;
codmin_ant:=DM1.Tb_MI01CMCODIMP.Value;
data_ant  :=DM1.Tb_MI01CMDATA.Value;
moper:=8;
DM1.Tb_MI01.Edit;
DBEdit1.SetFocus;

end;

procedure TFrm_MRECF.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_MI01.Cancel;
end;

procedure TFrm_MRECF.DBGrid2ColExit(Sender: TObject);
begin
  inherited;
if DBGrid2.SelectedField=DM1.Tb_MI02CM2ALIQ then
   begin
   if (((moper=1) and (maltant<>DM1.Tb_MI02CM2ALIQ.Value)) or
       (moper=0)) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CM2ALIQ from CADMI02 where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADMI02',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                        +' CM2CODIMP=0'+DM1.Tb_MI01CMCODIMP.AsString
                        +' and CM2DATA='+chr(39)+FormatDatetime(fdt2, DM1.Tb_MI01CMDATA.AsDateTime)+chr(39)
                        +' and CM2ALIQ=0'+mudavp(DM1.Tb_MI02CM2ALIQ.AsString));
      DM1.Query1.Open;
      if not DM1.Query1.IsEmpty then
         begin
         fmensagem('Esta alíquota já existe!',0,['0'],0);
         abort;
         end;
      end;
   end;
end;

procedure TFrm_MRECF.BBnAtuClick(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=0 then
   begin
   if (Trim(Edit1.Text)='/  /') or (Trim(Edit1.Text)='') then
      flcadmi01(CAMPO.ItemIndex,1,'','')
   else
      flcadmi01(CAMPO.ItemIndex,1,FormatDateTime(fdt, StrToDate(Edit1.Text)),'')
   end
else
   flcadmi01(CAMPO.ItemIndex,1,Trim(Edit1.Text),'');


end;

procedure TFrm_MRECF.CAMPOExit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex<1 then
   Edit1.EditMask:='!99/99/9999;1; '
else
   edit1.EditMask:='##############;1; ';

end;

procedure TFrm_MRECF.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_MI01CMCODIMP.AsInteger=0 then
   begin
   fmensagem('Código da impressora tem que ser maior que zero!',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_MI01CMDATA.IsNull then
   begin
   fmensagem('Data tem que ser definada!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;
if moper=8 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CM2CODIMP=0'+FloatToStr(codmin_ant)
                     +' and CM2DATA='+chr(39)+FormatDateTime(fdt, data_ant)+chr(39));
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   DM1.Tb_MI02.First;
   While not DM1.Tb_MI02.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.add('Insert into CADMI02 ('
                     +' CM2CODEMP, '
                     +' CM2CODIMP, '
                     +' CM2DATA, '
                     +' CM2ALIQ, '
                     +' CM2VALOR) values ('
                     +IntToStr(codemp)+','
                     +DM1.Tb_MI01CMCODIMP.AsString+','
                     +chr(39)+FormatDateTime(fdt, DM1.Tb_MI01CMDATA.Value)+chr(39)+','
                     +mudavp(DM1.Tb_MI02CM2ALIQ.AsString)+','
                     +mudavp(DM1.Tb_MI02CM2VALOR.AsString)+')');
      try
         DM1.Query1.ExecSQL;
      except
         end;
      fdm1StartCommit;
      DM1.Tb_MI02.Next;
      end;
   end;

DM1.Tb_MI01.Post;
CANCELAR.Click;


end;

procedure TFrm_MRECF.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_MI01CMCODIMP.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CM2CODIMP=0'+DM1.Tb_MI01CMCODIMP.AsString
                     +' and CM2DATA='+chr(39)+FormatDateTime(fdt, DM1.Tb_MI01CMDATA.Value)+chr(39));
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   DM1.Tb_MI01.Delete;
   end;
fmensagem('Registro Excluido!',0,['0'],0);
end;

procedure TFrm_MRECF.IMPRIMIRClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_EMRECF, Frm_EMRECF);
if not DM1.Tb_MI01CMDATA.IsNull then
   begin
   Frm_EMRECF.MDT1.Text:=FormatDatetime(fdt2, DM1.Tb_MI01CMDATA.Value);
   Frm_EMRECF.CODIMP.Text:=DM1.Tb_MI01CMCODIMP.AsString;
   if flcadecf(1,0,DM1.Tb_MI01CMCODIMP.AsString) then
      Frm_EMRECF.nomimp.Text:=DM1.Tb_ECFCFNOME.Value;
   end;

Frm_EMRECF.ShowModal;
Frm_EMRECF.Free;
Frm_EMRECF:=nil;
end;

procedure TFrm_MRECF.CAPTURARClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_CapRedZ, Frm_CapRedZ);
Frm_CapRedZ.ShowModal;
end;

procedure TFrm_MRECF.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_MRECF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_MRECF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MRECF.SAIRClick(Sender: TObject);
begin
  inherited;
if trim(mrecf_ori)='' then
   close;

end;

procedure TFrm_MRECF.bbCompararMapaXNotasClick(Sender: TObject);
begin
  inherited;

fProcessar(0);

end;
function TFrm_MRECF.fProcessar(pTipo: Integer):boolean;
var
mDifer,mValorProc,mValorMax: Real;
//mTotTst: Real;
mDifIsentas, mDifSubSt,mDifTrib: Real;
mMaior,mMenor: Real;

begin
if ptipo=0 then
   Application.CreateForm(TFrm_ECF_Comp_MRxNS, Frm_ECF_Comp_MRxNS);
mRed_DataNF:=DM1.Tb_MI01CMDATA.AsDateTime;
Frm_ECF_Comp_MRxNS.ecf_totvda_bruta.Value:=DM1.Tb_MI01CMVDABRUT.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value  :=DM1.Tb_MI01CMVDALIQ.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totvda_canc.Value :=DM1.Tb_MI01CMCUPCAN.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totacres.Value    :=DM1.Tb_MI01CMACRECUP.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totdes.Value      :=DM1.Tb_MI01CMDESCUP.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totissqn.Value    :=DM1.Tb_MI01CMISSCUP.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totisentas.Value  :=DM1.Tb_MI01CMISENTAS.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totNaoInc.Value   :=DM1.Tb_MI01CMNAOINC.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_totsubstTrib.Value:=DM1.Tb_MI01CMSUBTRI.AsFloat;
Frm_ECF_Comp_MRxNS.ecf_tottrib.Value:=0;



Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value:=0;
Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value  :=0;
Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value :=0;
Frm_ECF_Comp_MRxNS.ns_totacres.Value    :=0;
Frm_ECF_Comp_MRxNS.ns_totdes.Value      :=0;
Frm_ECF_Comp_MRxNS.ns_totissqn.Value    :=0;
Frm_ECF_Comp_MRxNS.ns_totisentas.Value  :=0;
Frm_ECF_Comp_MRxNS.ns_totNaoInc.Value   :=0;
Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value:=0;
Frm_ECF_Comp_MRxNS.ns_tottrib.Value:=0;

dm1.Tb_MI02.First;

Frm_ECF_Comp_MRxNS.mem_MRxNS.Close;
Frm_ECF_Comp_MRxNS.mem_MRxNS.Open;
while not DM1.Tb_MI02.Eof do
   begin
   Frm_ECF_Comp_MRxNS.mem_MRxNS.Append;
   Frm_ECF_Comp_MRxNS.mem_MRxNSOBSERV.Value  :='Alíquota ';
   Frm_ECF_Comp_MRxNS.mem_MRxNSALIQ.Value    :=DM1.Tb_MI02CM2ALIQ.AsFloat;
   Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_MR.Value:=DM1.Tb_MI02CM2VALOR.AsFloat;
   Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=0;
   Frm_ECF_Comp_MRxNS.mem_MRxNS.Post;
   Frm_ECF_Comp_MRxNS.ecf_tottrib.Value:=Frm_ECF_Comp_MRxNS.ecf_tottrib.Value
                                        +DM1.Tb_MI02CM2VALOR.AsFloat;

   DM1.Tb_MI02.Next;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' NSCODEMP=0'+IntTostr(codemp);

fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add('Select sum(DECODE(NSSITCUP,8,0,P2TOTDES))  AS TOTDES '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BASEN))  AS BASEN '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BASER))  AS BASER '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSR))  AS ICMSR '
                  +'       ,SUM(DECODE(NSSITCUP,8,0,P2TOTOUT)) AS OUTRAS '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2VALIPI))  AS VALIPI '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSN))  AS ICMSN '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSNR)) AS ICMSNR '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BCINR))  AS BCINR '
                  +'       ,sum(DECODE(NSSITCUP,8,0,DECODE(P2ALIQ,0, '
                  +'        0,P2TOTOUT))) AS OUTRAS '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ISENTAS))  AS ISENTAS '

//                  +'        DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'6'+chr(39)+',0,P2TOTOUT) '
//                  +'       ,DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'1'+chr(39)+',0,P2ISENTAS)))) AS ISENTAS '

                  +'       ,sum(DECODE(NSSITCUP,8,0,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2))) AS TOTLIQ '
                  +'       ,sum(DECODE(NSSITCUP,8,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2),0)) AS TOTCANC '
                  +'        ,P2CFO '
                  +'        ,P2SIT '
                  +',P2ALIQ,max(P2ALIQNR) as P2ALIQNR,P2ALIPI AS ALIPI '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' NSSITCUP<9 and NSNUMCUP>0');
//      DM5.Qr_NS.SQL.Add(' and (NSDATCUP>='+chr(39)+FormatDatetime(fdt,StrToDate(mdt1.Text))+chr(39)

DM1.Query6.SQL.Add(' and NSDATCUP=:DTEMIS ');
DM1.Query6.ParamByName('DTEMIS').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;
//if mSaiTrib>

DM1.Query6.SQL.Add(' group by P2CFO,P2SIT,P2ALIQ,P2ALIPI ');
DM1.Query6.SQL.Add(' order by TOTDES DESC ');
//DM1.Query6.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

try
   DM1.Query6.open;
except
   DM1.Query6.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
// DM1.Query6.sql.SaveToFile('c:\errmresumo.txt');

While not DM1.Query6.eof do
   begin
   Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value:=Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value +
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat
                                            +DM1.Query6.fieldbYName('TOTDES').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value   :=Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value +
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totacres.Value    :=0;
   Frm_ECF_Comp_MRxNS.ns_totdes.Value      :=Frm_ECF_Comp_MRxNS.ns_totdes.Value+
                                             DM1.Query6.fieldbYName('TOTDES').AsFloat;
   Frm_ECF_Comp_MRxNS.ns_totissqn.Value    :=0;


   Frm_ECF_Comp_MRxNS.ns_totisentas.Value  :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value+
                                             DM1.Query6.fieldbYName('ISENTAS').AsFloat;
{
   if
       ((DM1.Query6.fieldbyname('P2ALIQ').asfloat>0) AND
      (DM1.Query6.fieldbyname('BASEN').asfloat=0))
      or ( ( (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='0')  and
           (DM1.Query6.fieldbyname('BASEN').asfloat=0) ) )  then
       Frm_ECF_Comp_MRxNS.ns_totisentas.Value  :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value+
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat;
}

    if ( ( (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='0')  and
           (DM1.Query6.fieldbyname('BASEN').asfloat=0) ) )  then
       Frm_ECF_Comp_MRxNS.ns_totisentas.Value  :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value+
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat;



   if copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='4' then
      Frm_ECF_Comp_MRxNS.ns_totisentas.Value :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value
                                              +DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totNaoInc.Value   :=0;
//   if (DM1.Query6.fieldbyname('BASEN').asfloat=0) and
   if  (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='1')  or
        (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='6')   then
      Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value:=Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value
                                              +DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

      Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value:=Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value
                                              +DM1.Query6.fieldbYName('TOTCANC').AsFloat;

   if (DM1.Query6.fieldbyname('BASEN').asfloat>0) then
{       and (NOT  ( (DM1.Query6.fieldbyname('BASEN').asfloat=0) and
      ( (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='1')  or
        (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='6')  ))) then
}      begin
      Frm_ECF_Comp_MRxNS.ns_tottrib.Value:=Frm_ECF_Comp_MRxNS.ns_tottrib.Value
                                        +DM1.Query6.fieldbyname('BASEN').asfloat;
      if not Frm_ECF_Comp_MRxNS.mem_MRxNS.Locate('ALIQ',DM1.Query6.fieldbyname('P2ALIQ').asfloat,[]) then
         begin
         Frm_ECF_Comp_MRxNS.mem_MRxNS.Append;
         Frm_ECF_Comp_MRxNS.mem_MRxNSOBSERV.Value  :='Alíquota ';
         Frm_ECF_Comp_MRxNS.mem_MRxNSALIQ.Value    :=DM1.Query6.fieldbyname('P2ALIQ').asfloat;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_MR.Value:=0;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=DM1.Query6.fieldbyname('BASEN').asfloat;

         end
      else
         begin
         Frm_ECF_Comp_MRxNS.mem_MRxNS.Edit;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value+
                                                     DM1.Query6.fieldbyname('BASEN').asfloat;
         end;
      Frm_ECF_Comp_MRxNS.mem_MRxNS.Post;
      end;
   DM1.Query6.Next;
   end;
Frm_ECF_Comp_MRxNS.Panel_cab.Caption:='Data da Redução Z: '+FormatDateTime(fdt2, DM1.Tb_MI01CMDATA.AsDateTime);
mAceita_Valores:=false;

Frm_ECF_Comp_MRxNS.dif_totvda_brutaExit(self);
if ptipo=0 then
   begin
   Frm_ECF_Comp_MRxNS.ShowModal;

   if mAceita_Valores then
      begin
      if (Frm_ECF_Comp_MRxNS.dif_totisentas.Value<>0) or
         (Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value<>0) or
         (Frm_ECF_Comp_MRxNS.dif_tottrib.Value<>0) then
         begin
{         mTotTst:=Frm_ECF_Comp_MRxNS.dif_totisentas.Value
                 +Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value
                 +Frm_ECF_Comp_MRxNS.dif_tottrib.Value;
         mTotTst :=Arredonda(mTotTst,2);
}         mDifIsentas:=Frm_ECF_Comp_MRxNS.dif_totisentas.Value;
         mDifSubSt  :=Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value;
         mDifTrib   :=Frm_ECF_Comp_MRxNS.dif_tottrib.Value;

         mMaior:=0;
         mMenor:=0;



         if mDifIsentas<0 then
            mMenor:=mMenor+mDifIsentas
         else if mDifIsentas>0 then
            mMaior:=mMaior+mDifIsentas;

         if mDifSubSt<0 then
            mMenor:=mMenor+mDifSubSt
         else if mDifSubSt>0 then
            mMaior:=mMaior+mDifSubSt;

         if mDifTrib<0 then
            mMenor:=mMenor+mDifTrib
         else if mDifTrib>0 then
            mMaior:=mMaior+mDifTrib;

         IF (mMaior<>0) and (mMenor<>0) then
            begin
            if (mMenor*-1)>mMaior then
               mMenor:=(mMaior*-1)
            else if mMaior>(mMenor*-1) then
               mMaior:=mMenor*-1;

            if (mDifIsentas<0) then
               begin
               if (mMenor=0) then
                  mDifIsentas:=0
               else
                  begin
                  if mDifIsentas<mMenor then
                     begin
                     mDifIsentas:=mMenor;
                     mMenor:=0;
                     end
                  else
                     begin
                     mMenor:=mMenor-mDifIsentas;
                     end;
                  end;
               end;

            if (mDifSubSt<0) then
               begin
               if (mMenor=0) then
                  mDifSubSt:=0
               else
                  begin
                  if mDifSubSt<mMenor then
                     begin
                     mDifSubSt:=mMenor;
                     mMenor:=0;
                     end
                  else
                     begin
                     mMenor:=mMenor-mDifSubSt;
                     end;
                  end;
               end;


            if (mDifTrib<0) then
               begin
               if (mMenor=0) then
                  mDifTrib:=0
               else
                  begin
                  if mDifTrib<mMenor then
                     begin
                     mDifTrib:=mMenor;
                     mMenor:=0;
                     end
                  else
                     begin
                     mMenor:=mMenor-mDifTrib;
                     end;
                  end;
               end;
    // maior


            if (mDifIsentas>0) then
               begin
               if (mMaior=0) then
                  mDifIsentas:=0
               else
                  begin
                  if mDifIsentas>mMaior then
                     begin
                     mDifIsentas:=mMaior;
                     mMaior:=0;
                     end
                  else
                     begin
                     mMaior:=mMaior-mDifIsentas;
                     end;
                  end;
               end;

            if (mDifSubSt>0) then
               begin
               if (mMaior=0) then
                  mDifSubSt:=0
               else
                  begin
                  if mDifSubSt>mMaior then
                     begin
                     mDifSubSt:=mMaior;
                     mMaior:=0;
                     end
                  else
                     begin
                     mMaior:=mMaior-mDifSubSt;
                     end;
                  end;
               end;

            if (mDifTrib>0) then
               begin
               if (mMaior=0) then
                  mDifTrib:=0
               else
                  begin
                  if mDifTrib>mMaior then
                     begin
                     mDifTrib:=mMaior;
                     mMaior:=0;
                     end
                  else
                     begin
                     mMaior:=mMaior-mDifTrib;
                     end;
                  end;
               end;

            if Arredonda((mDifSubSt+mDifIsentas+mDifTrib),2)=0 then
               begin
               fCorrigirValores((mDifIsentas) ,
                       (Frm_ECF_Comp_MRxNS.dif_totNaoInc.Value),
                       (mDifSubSt),
                       (mDifTrib));
               end;
            end;   
         end;
      end;
{
   if mAceita_Valores then
      begin
       if Frm_ECF_Comp_MRxNS.dif_totisentas.Value>0 then // aumentar o desconto do isentas
          begin
          mDifer:=Frm_ECF_Comp_MRxNS.dif_totisentas.Value;
          if Frm_ECF_Comp_MRxNS.dif_tottrib.Value<0 then
             begin
             f02AumDescIsentasDimTrib(DM1.Tb_MI01CMDATA.AsDateTime,mdifer);
             Frm_ECF_Comp_MRxNS.dif_tottrib.Value:=Frm_ECF_Comp_MRxNS.dif_tottrib.Value
                                                  +mdifer;
             if (Frm_ECF_Comp_MRxNS.dif_tottrib.Value=0) and
                (Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value=0) then
                mAceita_Valores:=false;
             end;

          if Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value<0 then
             begin
             f04AumDescIsentasDimSubst(DM1.Tb_MI01CMDATA.AsDateTime,mdifer);
             Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value:=Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value
                                                  +mdifer;
             if (Frm_ECF_Comp_MRxNS.dif_tottrib.Value=0) and
                (Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value=0) then
                mAceita_Valores:=false;
             end;

          end
       else
          begin
          mDifer:=Frm_ECF_Comp_MRxNS.dif_totisentas.Value*-1;
          if Frm_ECF_Comp_MRxNS.dif_tottrib.Value>0 then
             begin
             f03DimDescIsentasAumTrib(DM1.Tb_MI01CMDATA.AsDateTime,mdifer);
             Frm_ECF_Comp_MRxNS.dif_tottrib.Value:=Frm_ECF_Comp_MRxNS.dif_tottrib.Value
                                                  -mdifer;
             if (Frm_ECF_Comp_MRxNS.dif_tottrib.Value=0) and
                (Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value=0) then
                mAceita_Valores:=false;
             end;
          end;

      if Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value<0 then
         begin
         mSaiTrib  :=Frm_ECF_Comp_MRxNS.dif_tottrib.Value;
         mSaiRet   :=0;
         mEntraTrib:=0;
         mEntraRet :=0;
         end
      else
         begin
         mSaiTrib  :=0;
         mSaiRet   :=Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value;
         mEntraTrib:=0;
         mEntraRet :=0;
         end;
      end;
}
   end

else
   begin
   mem_ecfxcadns.Append;
   mem_ecfxcadnsecf_totvda_bruta.AsFloat:=Frm_ECF_Comp_MRxNS.ecf_totvda_bruta.Value;
   mem_ecfxcadnsecf_totvda_liq.AsFloat  :=Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value;
   mem_ecfxcadnsecf_totvda_canc.AsFloat :=Frm_ECF_Comp_MRxNS.ecf_totvda_canc.Value;
   mem_ecfxcadnsecf_totacres.AsFloat    :=Frm_ECF_Comp_MRxNS.ecf_totacres.Value;
   mem_ecfxcadnsecf_totdes.AsFloat      :=Frm_ECF_Comp_MRxNS.ecf_totdes.Value;
   mem_ecfxcadnsecf_totissqn.AsFloat    :=Frm_ECF_Comp_MRxNS.ecf_totissqn.Value;
   mem_ecfxcadnsecf_totisentas.AsFloat  :=Frm_ECF_Comp_MRxNS.ecf_totisentas.Value;
   mem_ecfxcadnsecf_totNaoInc.AsFloat   :=Frm_ECF_Comp_MRxNS.ecf_totNaoInc.Value;
   mem_ecfxcadnsecf_totsubstTrib.AsFloat:=Frm_ECF_Comp_MRxNS.ecf_totsubstTrib.Value;
   mem_ecfxcadnsecf_tottrib.AsFloat     :=Frm_ECF_Comp_MRxNS. ecf_tottrib.Value;


   mem_ecfxcadnsns_totvda_bruta.AsFloat:=Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value;
   mem_ecfxcadnsns_totvda_liq.AsFloat  :=Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value;
   mem_ecfxcadnsns_totvda_canc.AsFloat :=Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value;
   mem_ecfxcadnsns_totacres.AsFloat    :=Frm_ECF_Comp_MRxNS.ns_totacres.Value;
   mem_ecfxcadnsns_totdes.AsFloat      :=Frm_ECF_Comp_MRxNS.ns_totdes.Value;
   mem_ecfxcadnsns_totissqn.AsFloat    :=Frm_ECF_Comp_MRxNS.ns_totissqn.Value;
   mem_ecfxcadnsns_totisentas.AsFloat  :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value;
   mem_ecfxcadnsns_totNaoInc.AsFloat   :=Frm_ECF_Comp_MRxNS.ns_totNaoInc.Value;
   mem_ecfxcadnsns_totsubstTrib.AsFloat:=Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value;
   mem_ecfxcadnsns_tottrib.AsFloat     :=Frm_ECF_Comp_MRxNS.ns_tottrib.Value;


   mem_ecfxcadnsdif_totvda_bruta.AsFloat:=Frm_ECF_Comp_MRxNS.dif_totvda_bruta.Value;
   mem_ecfxcadnsdif_totvda_liq.AsFloat  :=Frm_ECF_Comp_MRxNS.dif_totvda_liq.Value;
   mem_ecfxcadnsdif_totvda_canc.AsFloat :=Frm_ECF_Comp_MRxNS.dif_totvda_canc.Value;
   mem_ecfxcadnsdif_totacres.AsFloat    :=Frm_ECF_Comp_MRxNS.dif_totacres.Value;
   mem_ecfxcadnsdif_totdes.AsFloat      :=Frm_ECF_Comp_MRxNS.dif_totdes.Value;
   mem_ecfxcadnsdif_totissqn.AsFloat    :=Frm_ECF_Comp_MRxNS.dif_totissqn.Value;
   mem_ecfxcadnsdif_totisentas.AsFloat  :=Frm_ECF_Comp_MRxNS.dif_totisentas.Value;
   mem_ecfxcadnsdif_totNaoInc.AsFloat   :=Frm_ECF_Comp_MRxNS.dif_totNaoInc.Value;
   mem_ecfxcadnsdif_totsubstTrib.AsFloat:=Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value;
   mem_ecfxcadnsdif_tottrib.AsFloat     :=Frm_ECF_Comp_MRxNS.dif_tottrib.Value;
   mem_ecfxcadnsDATAREDUZ.Value         :=DM1.Tb_MI01CMDATA.AsDateTime;
   mem_ecfxcadns.Post;
   mDifer:=arredonda(Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value,2)-Arredonda(Frm_ECF_Comp_MRxNS.ns_totvda_liq.value,2);
   if mDifer<0 then
      mDifer:=mDifer*-1;
   if mDifer>0.1 then
      mAceita_Valores:=false
   else if (Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value=0) and  (Frm_ECF_Comp_MRxNS.dif_tottrib.value=0) then
      mAceita_Valores:=false
   else
      begin
      if Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value<0 then
         begin
         mSaiTrib  :=Frm_ECF_Comp_MRxNS.dif_tottrib.Value;
         mSaiRet   :=0;
         mEntraTrib:=0;
         mEntraRet :=0;
         end
      else
         begin
         mSaiTrib  :=0;
         mSaiRet   :=Frm_ECF_Comp_MRxNS.dif_totsubstTrib.Value;
         mEntraTrib:=0;
         mEntraRet :=0;
         end;
      mAceita_Valores:=true;
      end;
   end;
mEntraTrib:=0;
mEntraRet:=0;
{
if mAceita_Valores then
   begin
   DM1.Query4.close;
   DM1.Query4.sql.Clear;
   DM1.Query4.sql.add('Select  P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ,MIN(P2SIT) AS CSTMIN ,MAX(P2SIT) AS MAXCST'
                     +',SUM(DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'6'+chr(39)+',0, '
                     +'       DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'1'+chr(39)+',0,P2DESCRAT))) AS DESCRATOUT '
                     +' ,SUM(DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'6'+chr(39)+',P2DESCRAT, '
                     +'       DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'1'+chr(39)+',P2DESCRAT,0))) AS DESCRATSUB '
                     +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' NSSITCUP<9 and NSNUMCUP>0');
   DM1.Query4.SQL.Add(' and NSDATCUP=:DTEMIS '
                     +' AND P2SIT<>'+chr(39)+'040'+chr(39) );
   DM1.Query4.SQL.Add(' GROUP BY P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ '
                     +' HAVING MIN(P2SIT)<>MAX(P2SIT) '
                     +'   order by DESCRATSUB DESC ,DESCRATOUT DESC ');
   DM1.Query4.ParamByName('DTEMIS').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;
   try
      DM1.Query4.Open;
   except
      DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   While (not DM1.Query4.Eof) and ((mSaiTrib<>0) or (mSaiRet<>0)) do
      begin
      if (mSaiTrib>0)  then
         begin
         if DM1.Query4.FieldByName('DESCRATOUT').AsFloat=0 then
            begin
            DM1.Query4.Next;
            Continue;
            end;
         end
      else
         begin
         if DM1.Query4.FieldByName('DESCRATSUB').AsFloat=0 then
            begin
            DM1.Query4.Next;
            Continue;
            end;
         end;



      if mSaiTrib>0 then
         begin
         DM1.Query5.Close;
         DM1.Query5.SQL.Clear;
         DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ '
                           +' from CADP02 '
                     +'       where P2CODEMP=:CODEMP '
                     +'       and P2LOTSEQ=:LOTSEQ '
                     +'       and P2CHAVE=:CHAVE '
                     +'       and P2ORDEM=:ORDEM ');
         DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query5.open;
         While (not DM1.Query5.Eof) and (mSaiTrib>0) do
            begin
            if DM1.Query5.FieldByName('P2DESCRAT').AsFloat<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;

            if (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='6') or
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='1') or
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='4') then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            if DM1.Query5.fieldbyName('P2BASEN').AsFloat<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;

            if mSaiTrib>Arredonda(DM1.Query5.FieldByName('P2DESCRAT').AsFloat,2) then
               mValorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat
            else
               begin
               mValorProc:=mSaiTrib;
               end;
            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                              +',P2TOTDES=P2TOTDES-:DESCRAT '
                              +',P2BASEN=P2BASEN+:DESCRAT ');
            if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
               DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN+:DESCRAT)*P2ALIQ/100) , 2) ');


            DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                              +'       and P2LOTSEQ=:LOTSEQ '
                              +'       and P2CHAVE=:CHAVE '
                              +'       and P2ORDEM=:ORDEM '
                              +'       and P2CODPRO=:CODPRO '
                              +'       and P2ITEM=:ITEM '
                              );
            DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
            DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
            DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
            DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
            DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
            DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
            DM1.Query1.ParambyName('DESCRAT').AsFloat:=mValorProc;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
               end;
            mSaiTrib:=Arredonda(mSaiTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);
            mEntraRet:=Arredonda(mEntraRet,DM1.Tb_PargerPCASAS.AsInteger)+
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);

            DM1.Query5.Next;
            end;
         DM1.Query5.First;

         While (not DM1.Query5.Eof) and (mEntraRet>0) do
            begin
            if (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)<>'6') and
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)<>'1')  then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            mValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                       DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
            if mValorMax<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            mValorMax:=Arredonda((mValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
            if mValorMax<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            if mValorMax>mEntraRet then
               mValorProc:=mEntraRet
            else
               mValorProc:=mValorMax;

            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                              +',P2TOTDES=P2TOTDES+:DESCRAT '
                              +' where P2CODEMP=:CODEMP '
                              +'       and P2LOTSEQ=:LOTSEQ '
                              +'       and P2CHAVE=:CHAVE '
                              +'       and P2ORDEM=:ORDEM '
                              +'       and P2CODPRO=:CODPRO '
                              +'       and P2ITEM=:ITEM '
                              );
            DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
            DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
            DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
            DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
            DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
            DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
            DM1.Query1.ParambyName('DESCRAT').AsFloat:=mValorProc;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
               end;
            mEntraRet:=Arredonda(mEntraRet,DM1.Tb_PargerPCASAS.AsInteger)-
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);
            DM1.Query5.Next;
            end;
         end;
// inicia a segunda fase saida dos retido

      if mSaiRet>0 then
         begin
         DM1.Query5.Close;
         DM1.Query5.SQL.Clear;
         DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ '
                           +',P2BASEN,P2ALIQ '
                           +' from CADP02 '
                     +'       where P2CODEMP=:CODEMP '
                     +'       and P2LOTSEQ=:LOTSEQ '
                     +'       and P2CHAVE=:CHAVE '
                     +'       and P2ORDEM=:ORDEM ');
         DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query5.open;
         While (not DM1.Query5.Eof) and (mSaiRet>0) do
            begin
            if DM1.Query5.FieldByName('P2DESCRAT').AsFloat<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            if (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)<>'6') and
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)<>'1') then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            if mSaiRet>Arredonda(DM1.Query5.FieldByName('P2DESCRAT').AsFloat,2) then
               mValorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat
            else
               begin
               mValorProc:=mSaiRet;
               end;
            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                              +',P2TOTDES=P2TOTDES-:DESCRAT '
                              +' where P2CODEMP=:CODEMP '
                              +'       and P2LOTSEQ=:LOTSEQ '
                              +'       and P2CHAVE=:CHAVE '
                              +'       and P2ORDEM=:ORDEM '
                              +'       and P2CODPRO=:CODPRO '
                              +'       and P2ITEM=:ITEM '
                              );
            DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
            DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
            DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
            DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
            DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
            DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
            DM1.Query1.ParambyName('DESCRAT').AsFloat:=mValorProc;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
               end;
            mSaiRet:=Arredonda(mSaiRet,DM1.Tb_PargerPCASAS.AsInteger)-
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);
            mEntraTrib:=Arredonda(mEntraTrib,DM1.Tb_PargerPCASAS.AsInteger)+
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);

            DM1.Query5.Next;

            end;
         DM1.Query5.First;

         While (not DM1.Query5.Eof) and (mEntraTrib>0) do
            begin
            if (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='6') or
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='1') or
               (copy(DM1.Query5.fieldbyName('P2SIT').AsString,2,1)='4') then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            mValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                       DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
            if mValorMax<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            mValorMax:=Arredonda((mValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
            if mValorMax<=0 then
               begin
               DM1.Query5.Next;
               Continue;
               end;
            if mValorMax>mEntraTrib then
               mValorProc:=mEntraTrib
            else
               mValorProc:=mValorMax;

            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                              +',P2TOTDES=P2TOTDES+:DESCRAT '
                              +',P2BASEN=P2BASEN-:DESCRAT ');
            if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
               DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN-:DESCRAT)*P2ALIQ/100) , 2) ');

            DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                              +'       and P2LOTSEQ=:LOTSEQ '
                              +'       and P2CHAVE=:CHAVE '
                              +'       and P2ORDEM=:ORDEM '
                              +'       and P2CODPRO=:CODPRO '
                              +'       and P2ITEM=:ITEM '
                              );
            DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
            DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
            DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
            DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
            DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
            DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
            DM1.Query1.ParambyName('DESCRAT').AsFloat:=mValorProc;
            try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
               end;
            mEntraTrib:=Arredonda(mEntraTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                      Arredonda(mValorProc,DM1.Tb_PargerPCASAS.AsInteger);

            DM1.Query5.Next;
            end;
         end;
      DM1.Query4.Next;
      end;
   end;
}
if ptipo=0 then
   begin
   Frm_ECF_Comp_MRxNS.Free;
   Frm_ECF_Comp_MRxNS:=nil;
   end;
result:=true;
end;

function f02AumDescIsentasDimTrib(pData:TdateTime;pValorAumIsento: Real):Boolean;
var
{ AUMENTA O VALOR DAS ISENTAS     SE ERA 100 E AUMENTA 10 PASSA A SER 110
}
mf02_DimTrib: Real;
mf02_valorProc, mf02_ValorMax: Real;

begin
DM1.Query4.close;
DM1.Query4.sql.Clear;
DM1.Query4.sql.add('Select P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ,'
                  +'  MIN(P2SIT) AS CSTMIN ,MAX(P2SIT) AS MAXCST'
                  +', min(P2ALIQ) AS ALIQMIN, max(P2ALIQ) as ALIQMAX '
                  +', SUM(DECODE(P2ALIQ,0,P2DESCRAT,0)) AS VALORISENTO '
                  +', SUM(DECODE(P2ALIQ,0,0,P2DESCRAT)) AS VALORTRIB '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' NSSITCUP<9 and NSNUMCUP>0'
                     +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
                     +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));
DM1.Query4.SQL.Add(' and NSDATCUP=:DTEMIS ');
DM1.Query4.SQL.Add(' GROUP BY P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ ');
DM1.Query4.ParamByName('DTEMIS').AsDateTime:=pData;
DM1.Query4.Open;
mf02_DimTrib:=0;
mf02_ValorMax:=0;


While (not DM1.Query4.Eof) and ((pValorAumIsento<>0) or (mf02_DimTrib<>0)) do
   begin
   if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0) or
      ( (DM1.Query4.FieldByName('ALIQMIN').AsFloat)=
        (DM1.Query4.FieldByName('ALIQMAX').AsFloat) ) then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   if pValorAumIsento<>0 then
      begin
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                        +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                        +' from CADP02 '
                  +'       where P2CODEMP=:CODEMP '
                  +'       and P2LOTSEQ=:LOTSEQ '
                  +'       and P2CHAVE=:CHAVE '
                  +'       and P2ORDEM=:ORDEM '
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

      DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query5.open;
      while (not DM1.Query5.eof) and (pValorAumIsento<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;

         mf02_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                    DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
         if mf02_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         mf02_ValorMax:=Arredonda((mf02_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
         if mf02_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if mf02_ValorMax>pValorAumIsento then
            mf02_valorProc:=pValorAumIsento
         else
            mf02_valorProc:=mf02_ValorMax;
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                           +',P2TOTDES=P2TOTDES-:DESCRAT ');
         if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf02_valorProc then
            DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT+:DESCRAT ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf02_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         pValorAumIsento:=Arredonda(pValorAumIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf02_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         mf02_DimTrib:=mf02_DimTrib+mf02_valorProc;
         DM1.Query5.Next;
         end;
      DM1.Query5.First;
      while (not DM1.Query5.eof) and (mf02_DimTrib<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf02_DimTrib then
            mf02_valorProc:=mf02_DimTrib
         else
            mf02_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                           +',P2TOTDES=P2TOTDES+:DESCRAT '
                           +',P2BASEN=P2BASEN-:DESCRAT ');
         if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
            DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN-:DESCRAT)*P2ALIQ/100) , 2) ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf02_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         mf02_DimTrib:=Arredonda(mf02_DimTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf02_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         DM1.Query5.Next;
         end;
      end;
   DM1.Query4.Next;
   end;

// INICIO DA SEGUNDA FASE
DM1.Query4.first;
While (not DM1.Query4.Eof) and ((pValorAumIsento<>0) or (mf02_DimTrib<>0)) do
   begin
   if (pValorAumIsento<>0) then
      begin
      if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0)  then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      end;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                     +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                     +' from CADP02 '
               +'       where P2CODEMP=:CODEMP '
               +'       and P2LOTSEQ=:LOTSEQ '
               +'       and P2CHAVE=:CHAVE '
               +'       and P2ORDEM=:ORDEM '
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

   DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
   DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
   DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
   DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
   DM1.Query5.open;
   while (not DM1.Query5.eof) and (pValorAumIsento<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;

      mf02_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                 DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
      if mf02_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      mf02_ValorMax:=Arredonda((mf02_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
      if mf02_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if mf02_ValorMax>pValorAumIsento then
         mf02_valorProc:=pValorAumIsento
      else
         mf02_valorProc:=mf02_ValorMax;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                        +',P2TOTDES=P2TOTDES-:DESCRAT ');
      if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf02_valorProc then
         DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT+:DESCRAT ');
      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf02_valorProc;
//      ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');

      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      pValorAumIsento:=Arredonda(pValorAumIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf02_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      mf02_DimTrib:=mf02_DimTrib+mf02_valorProc;
      DM1.Query5.Next;
      end;
   DM1.Query5.First;
   while (not DM1.Query5.eof) and (mf02_DimTrib<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf02_DimTrib then
         mf02_valorProc:=mf02_DimTrib
      else
         mf02_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                        +',P2TOTDES=P2TOTDES+:DESCRAT '
                        +',P2BASEN=P2BASEN-:DESCRAT ');
      if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
         DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN-:DESCRAT)*P2ALIQ/100) , 2) ');
      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf02_valorProc;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      mf02_DimTrib:=Arredonda(mf02_DimTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf02_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      DM1.Query5.Next;
      end;
   DM1.Query4.Next;
   end;




end;

///


function f04AumDescIsentasDimSubst(pData:TdateTime;pValorAumIsento: Real):Boolean;
var
{ AUMENTA O VALOR DAS ISENTAS     SE ERA 100 E AUMENTA 10 PASSA A SER 110
}
mf04_DimSubst: Real;
mf04_valorProc, mf04_ValorMax: Real;

begin
DM1.Query4.close;
DM1.Query4.sql.Clear;
DM1.Query4.sql.add('Select P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ,'
                  +'  MIN(P2SIT) AS CSTMIN ,MAX(P2SIT) AS MAXCST'
                  +', min(P2ALIQ) AS ALIQMIN, max(P2ALIQ) as ALIQMAX '
                  +', SUM(DECODE(P2ALIQ,0,P2DESCRAT,0)) AS VALORISENTO '
                  +', SUM(DECODE(P2ALIQ,0,0,P2DESCRAT)) AS VALORTRIB '

                  +',SUM(DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'6'+chr(39)+',0, '
                  +'       DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'1'+chr(39)+',0,P2DESCRAT))) AS DESCRATOUT '
                  +' ,SUM(DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'6'+chr(39)+',P2DESCRAT, '
                  +'       DECODE(SUBSTR(P2SIT,2,1),'+chr(39)+'1'+chr(39)+',P2DESCRAT,0))) AS DESCRATSUB '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' NSSITCUP<9 and NSNUMCUP>0');
DM1.Query4.SQL.Add(' and NSDATCUP=:DTEMIS ');
DM1.Query4.SQL.Add(' GROUP BY P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ ');
DM1.Query4.ParamByName('DTEMIS').AsDateTime:=pData;
DM1.Query4.Open;
mf04_DimSubst:=0;
mf04_ValorMax:=0;


While (not DM1.Query4.Eof) and ((pValorAumIsento<>0) or (mf04_DimSubst<>0)) do
   begin
   if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0) or
      ( (DM1.Query4.FieldByName('ALIQMIN').AsFloat)=
        (DM1.Query4.FieldByName('ALIQMAX').AsFloat) ) then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   if pValorAumIsento<>0 then
      begin
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                        +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                        +' from CADP02 '
                  +'       where P2CODEMP=:CODEMP '
                  +'       and P2LOTSEQ=:LOTSEQ '
                  +'       and P2CHAVE=:CHAVE '
                  +'       and P2ORDEM=:ORDEM '
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

      DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query5.open;
      while (not DM1.Query5.eof) and (pValorAumIsento<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;

         mf04_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                    DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
         if mf04_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         mf04_ValorMax:=Arredonda((mf04_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
         if mf04_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if mf04_ValorMax>pValorAumIsento then
            mf04_valorProc:=pValorAumIsento
         else
            mf04_valorProc:=mf04_ValorMax;
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                           +',P2TOTDES=P2TOTDES-:DESCRAT ');
         if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf04_valorProc then
            DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT+:DESCRAT ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf04_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         pValorAumIsento:=Arredonda(pValorAumIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf04_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         mf04_DimSubst:=mf04_DimSubst+mf04_valorProc;
         DM1.Query5.Next;
         end;
      DM1.Query5.First;
      while (not DM1.Query5.eof) and (mf04_DimSubst<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf04_DimSubst then
            mf04_valorProc:=mf04_DimSubst
         else
            mf04_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                           +',P2TOTDES=P2TOTDES+:DESCRAT '
                           +',P2BASEN=P2BASEN-:DESCRAT ');
         if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
            DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN-:DESCRAT)*P2ALIQ/100) , 2) ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf04_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         mf04_DimSubst:=Arredonda(mf04_DimSubst,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf04_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         DM1.Query5.Next;
         end;
      end;
   DM1.Query4.Next;
   end;

// INICIO DA SEGUNDA FASE
DM1.Query4.first;
While (not DM1.Query4.Eof) and ((pValorAumIsento<>0) or (mf04_DimSubst<>0)) do
   begin
   if (pValorAumIsento<>0) then
      begin
      if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0)  then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      end;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                     +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                     +' from CADP02 '
               +'       where P2CODEMP=:CODEMP '
               +'       and P2LOTSEQ=:LOTSEQ '
               +'       and P2CHAVE=:CHAVE '
               +'       and P2ORDEM=:ORDEM '
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

   DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
   DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
   DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
   DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
   DM1.Query5.open;
   while (not DM1.Query5.eof) and (pValorAumIsento<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;

      mf04_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                 DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
      if mf04_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      mf04_ValorMax:=Arredonda((mf04_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
      if mf04_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if mf04_ValorMax>pValorAumIsento then
         mf04_valorProc:=pValorAumIsento
      else
         mf04_valorProc:=mf04_ValorMax;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                        +',P2TOTDES=P2TOTDES-:DESCRAT ');
      if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf04_valorProc then
         DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT+:DESCRAT ');
      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf04_valorProc;
//      ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');

      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      pValorAumIsento:=Arredonda(pValorAumIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf04_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      mf04_DimSubst:=mf04_DimSubst+mf04_valorProc;
      DM1.Query5.Next;
      end;
   DM1.Query5.First;
   while (not DM1.Query5.eof) and (mf04_DimSubst<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf04_DimSubst then
         mf04_valorProc:=mf04_DimSubst
      else
         mf04_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                        +',P2TOTDES=P2TOTDES+:DESCRAT '
                        +',P2BASEN=P2BASEN-:DESCRAT ');
      if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
         DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN-:DESCRAT)*P2ALIQ/100) , 2) ');
      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf04_valorProc;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      mf04_DimSubst:=Arredonda(mf04_DimSubst,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf04_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      DM1.Query5.Next;
      end;
   DM1.Query4.Next;
   end;



end;





function f03DimDescIsentasAumTrib(pData:TdateTime;pValorDimIsento: Real):Boolean;
var
{ AUMENTA O VALOR DAS ISENTAS     SE ERA 100 E AUMENTA 10 PASSA A SER 110
}
mf03_AumTrib: Real;
mf03_valorProc, mf03_ValorMax: Real;

begin
DM1.Query4.close;
DM1.Query4.sql.Clear;
DM1.Query4.sql.add('Select P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ,'
                  +'  MIN(P2SIT) AS CSTMIN ,MAX(P2SIT) AS MAXCST'
                  +', min(P2ALIQ) AS ALIQMIN, max(P2ALIQ) as ALIQMAX '
                  +', SUM(DECODE(P2ALIQ,0,P2DESCRAT,0)) AS VALORISENTO '
                  +', SUM(DECODE(P2ALIQ,0,0,P2DESCRAT)) AS VALORTRIB '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' NSSITCUP<9 and NSNUMCUP>0'
                     +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
                     +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));
DM1.Query4.SQL.Add(' and NSDATCUP=:DTEMIS ');
DM1.Query4.SQL.Add(' GROUP BY P2CHAVE,P2ORDEM,P2CODEMP,P2LOTSEQ ');
DM1.Query4.ParamByName('DTEMIS').AsDateTime:=pData;
DM1.Query4.Open;
mf03_AumTrib:=0;
mf03_ValorMax:=0;


While (not DM1.Query4.Eof) and ((pValorDimIsento<>0) or (mf03_AumTrib<>0)) do
   begin
   if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0) or
      ( (DM1.Query4.FieldByName('ALIQMIN').AsFloat)=
        (DM1.Query4.FieldByName('ALIQMAX').AsFloat) ) then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   if pValorDimIsento<>0 then
      begin
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                        +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                        +' from CADP02 '
                  +'       where P2CODEMP=:CODEMP '
                  +'       and P2LOTSEQ=:LOTSEQ '
                  +'       and P2CHAVE=:CHAVE '
                  +'       and P2ORDEM=:ORDEM '
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
                  +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

      DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query5.open;
      while (not DM1.Query5.eof) and (pValorDimIsento<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;

         mf03_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                    DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
         if mf03_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         mf03_ValorMax:=Arredonda((mf03_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
         if mf03_ValorMax<=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if mf03_ValorMax>pValorDimIsento then
            mf03_valorProc:=pValorDimIsento
         else
            mf03_valorProc:=mf03_ValorMax;
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                           +',P2TOTDES=P2TOTDES+:DESCRAT ');
         if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf03_valorProc then
            DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT-:DESCRAT ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf03_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         pValordimisento:=Arredonda(pValorDimIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf03_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         mf03_AumTrib:=mf03_AumTrib+mf03_valorProc;
         DM1.Query5.Next;
         end;
      DM1.Query5.First;
      while (not DM1.Query5.eof) and (mf03_AumTrib<>0) do
         begin
         if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
            begin
            DM1.Query5.Next;
            Continue;
            end;
         if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf03_AumTrib then
            mf03_valorProc:=mf03_AumTrib
         else
            mf03_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                           +',P2TOTDES=P2TOTDES-:DESCRAT '
                           +',P2BASEN=P2BASEN+:DESCRAT ');

         if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
            DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN+:DESCRAT)*P2ALIQ/100) , 2) ');
         DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                           +'       and P2LOTSEQ=:LOTSEQ '
                           +'       and P2CHAVE=:CHAVE '
                           +'       and P2ORDEM=:ORDEM '
                           +'       and P2CODPRO=:CODPRO '
                           +'       and P2ITEM=:ITEM '
                           );
         DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
         DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
         DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
         DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
         DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
         DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
         DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf03_valorProc;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
            end;
         mf03_AumTrib:=Arredonda(mf03_AumTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                   Arredonda(mf03_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
         DM1.Query5.Next;
         end;
      end;
   DM1.Query4.Next;
   end;

// INICIO DA SEGUNDA FASE
DM1.Query4.first;
While (not DM1.Query4.Eof) and ((pValorDimIsento<>0) or (mf03_AumTrib<>0)) do
   begin
   if (pValorDimIsento<>0) then
      begin
      if (DM1.Query4.FieldByName('ALIQMIN').AsFloat<>0)  then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      end;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ,P2CODEMP,P2CODPRO,'
                     +' P2ITEM,P2DESCRAT,P2SIT,ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS P2TOTLIQ,P2BASEN,P2ALIQ,P2TOTOUT '
                     +' from CADP02 '
               +'       where P2CODEMP=:CODEMP '
               +'       and P2LOTSEQ=:LOTSEQ '
               +'       and P2CHAVE=:CHAVE '
               +'       and P2ORDEM=:ORDEM '
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'6'+chr(39)
               +' and SUBSTR(P2SIT,2,1)<>'+chr(39)+'1'+chr(39));

   DM1.Query5.ParambyName('CODEMP').AsFloat:=DM1.Query4.fieldbyName('P2CODEMP').AsFloat;
   DM1.Query5.ParambyName('LOTSEQ').AsFloat:=DM1.Query4.fieldbyName('P2LOTSEQ').AsFloat;
   DM1.Query5.ParambyName('CHAVE').AsFloat :=DM1.Query4.fieldbyName('P2CHAVE').AsFloat;
   DM1.Query5.ParambyName('ORDEM').AsFloat :=DM1.Query4.fieldbyName('P2ORDEM').AsFloat;
   DM1.Query5.open;
   while (not DM1.Query5.eof) and (pValorDimIsento<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat<>0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;

      mf03_ValorMax:=DM1.Query5.FieldByName('P2TOTLIQ').AsFloat-
                 DM1.Query5.FieldByName('P2DESCRAT').AsFloat;
      if mf03_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      mf03_ValorMax:=Arredonda((mf03_ValorMax*0.50),DM1.Tb_PargerPCASAS.AsInteger);
      if mf03_ValorMax<=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if mf03_ValorMax>pValorDimIsento then
         mf03_valorProc:=pValorDimIsento
      else
         mf03_valorProc:=mf03_ValorMax;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:DESCRAT '
                        +',P2TOTDES=P2TOTDES+:DESCRAT ');
      if DM1.Query5.fieldbyName('P2TOTOUT').AsFloat>=mf03_valorProc then
         DM1.Query1.SQL.Add(',P2TOTOUT=P2TOTOUT-:DESCRAT ');
      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat:=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat  :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf03_valorProc;
//      ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');

      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      pValorDimIsento:=Arredonda(pValorDimIsento,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf03_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      mf03_AumTrib:=mf03_AumTrib+mf03_valorProc;
      DM1.Query5.Next;
      end;
   DM1.Query5.First;
   while (not DM1.Query5.eof) and (mf03_AumTrib<>0) do
      begin
      if DM1.Query5.FieldbyName('P2ALIQ').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat=0 then
         begin
         DM1.Query5.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('P2DESCRAT').AsFloat>=mf03_AumTrib then
         mf03_valorProc:=mf03_AumTrib
      else
         mf03_valorProc:=DM1.Query5.FieldByName('P2DESCRAT').AsFloat;

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:DESCRAT '
                        +',P2TOTDES=P2TOTDES-:DESCRAT '
                        +',P2BASEN=P2BASEN+:DESCRAT ');
      if DM1.Query5.fieldbyName('P2ALIQ').Asfloat>0 then
         DM1.Query1.SQL.add(', P2ICMSN = round( ((P2BASEN+:DESCRAT)*P2ALIQ/100) , 2) ');

      DM1.Query1.SQL.Add(' where P2CODEMP=:CODEMP '
                        +'       and P2LOTSEQ=:LOTSEQ '
                        +'       and P2CHAVE=:CHAVE '
                        +'       and P2ORDEM=:ORDEM '
                        +'       and P2CODPRO=:CODPRO '
                        +'       and P2ITEM=:ITEM '
                        );
      DM1.Query1.ParambyName('CODEMP').AsFloat :=DM1.Query5.fieldbyName('P2CODEMP').AsFloat;
      DM1.Query1.ParambyName('LOTSEQ').AsFloat :=DM1.Query5.fieldbyName('P2LOTSEQ').AsFloat;
      DM1.Query1.ParambyName('CHAVE').AsFloat  :=DM1.Query5.fieldbyName('P2CHAVE').AsFloat;
      DM1.Query1.ParambyName('ORDEM').AsFloat  :=DM1.Query5.fieldbyName('P2ORDEM').AsFloat;
      DM1.Query1.ParambyName('CODPRO').AsFloat :=DM1.Query5.fieldbyName('P2CODPRO').AsFloat;
      DM1.Query1.ParambyName('ITEM').AsFloat   :=DM1.Query5.fieldbyName('P2ITEM').AsFloat;
      DM1.Query1.ParambyName('DESCRAT').AsFloat:=mf03_valorProc;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query1,554,'mrecf','CADP02');
         end;
      mf03_AumTrib:=Arredonda(mf03_AumTrib,DM1.Tb_PargerPCASAS.AsInteger)-
                Arredonda(mf03_valorProc,DM1.Tb_PargerPCASAS.AsInteger);
      DM1.Query5.Next;
      end;
   DM1.Query4.Next;
   end;




end;

procedure TFrm_MRECF.bbCompararClick(Sender: TObject);
begin
  inherited;
if (trim(edt_dtini.Text)<>'/  /') and (trim(edt_dtfin.Text)<>'/  /') then
   begin
   if StrToDate(edt_dtfin.Text)<StrToDate(edt_dtini.Text) then
      begin
      fmensagem('Data Inicial maior que final, inválido!',0,['0'],0);
      edt_dtini.SetFocus;
      exit;
      end;
   end;
DM1.Tb_MI01.Close;
DM1.Tb_MI01.SQL.Clear;
DM1.Tb_MI01.SQL.add('Select * from CADMI01 '
                  +' where CMCODEMP=0'+IntTostr(codemp));
if trim(edt_dtini.Text)<>''then
   DM1.Tb_MI01.SQL.Add(' and CMDATA>='+chr(39)+FormatDatetime(fdt, StrtoDate(edt_dtini.Text))+chr(39));
if trim(edt_dtfin.Text)<>''then
   DM1.Tb_MI01.SQL.Add(' and CMDATA<='+chr(39)+FormatDatetime(fdt, StrtoDate(edt_dtfin.Text))+chr(39));
DM1.Tb_MI01.Open;
if DM1.Tb_MI01.IsEmpty then
   exit;
Application.CreateForm(TFrm_ECF_Comp_MRxNS, Frm_ECF_Comp_MRxNS);
mem_ecfxcadns.Close;
mem_ecfxcadns.Open;
While not DM1.Tb_MI01.Eof do
   begin
   fProcessar(1);
   DM1.Tb_MI01.Next;
   end;
end;

procedure TFrm_MRECF.DBGrid__ecfxcadnsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

if mem_ecfxcadnsdif_totvda_liq.AsFloat<>0 then
   begin
   DBGrid__ecfxcadns.Canvas.Brush.Color := clRed;
   DBGrid__ecfxcadns.Canvas.FillRect(Rect);
   DBGrid__ecfxcadns.DefaultDrawDataCell(Rect, Column.Field, State);
   end
else if (mem_ecfxcadnsdif_tottrib.AsFloat+mem_ecfxcadnsdif_totsubstTrib.AsFloat)=0 then
   begin
   DBGrid__ecfxcadns.Canvas.Brush.Color := clLime;
   DBGrid__ecfxcadns.Canvas.FillRect(Rect);
   DBGrid__ecfxcadns.DefaultDrawDataCell(Rect, Column.Field, State);
   end;

end;

procedure TFrm_MRECF.edt_dtiniExit(Sender: TObject);
begin
  inherited;
if trim(edt_dtini.Text)<>'/  /' then
   begin
   try
      edt_dtini.Text:=FormatDatetime(fdt2, StrToDate(edt_dtini.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      edt_dtini.SetFocus;
      end;
   end;
end;

procedure TFrm_MRECF.edt_dtfinExit(Sender: TObject);
begin
  inherited;
if trim(edt_dtfin.Text)<>'/  /' then
   begin
   try
      edt_dtfin.Text:=FormatDatetime(fdt2, StrToDate(edt_dtfin.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      edt_dtfin.SetFocus;
      end;
   end;

end;

procedure TFrm_MRECF.FormCreate(Sender: TObject);
var
Query_temp: TQuery;

begin
  inherited;


Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update cadp02 set p2sit='+QuotedStr('0')+'||p2sit where length(p2sit)<3');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;


Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update CADP02 set P2CFO=SUBSTR(P2CFO,1,1) ||'+QuotedStr('1')+'|| substr(p2cfo,3,2) '
                  +',p2sit=substr(p2sit,1,1) ||'+QuotedStr('0')+'||substr(p2sit,3,1) '
                  +'where  ((p2basen>0 and substr(p2cfo,2,1)='+QuotedStr('4')+') ) '
//                  +'  or (p2basen=0 and substr(p2sit,2,1)='+QuotedStr('0')+') '

                   );

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update CADP02 set P2CFO=SUBSTR(P2CFO,1,1) ||'+QuotedStr('4')+'|| substr(p2cfo,3,2) '
                  +',p2sit=substr(p2sit,1,1) ||'+QuotedStr('6')+'||substr(p2sit,3,1) '
                  +'where (p2basen=0 and ((substr(p2cfo,2,1)='
                  +QuotedStr('6')+') or  (substr(p2cfo,2,1)='+QuotedStr('1')+') ) ) ');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;

freeandNil(query_temp);

if codusr=1111 then
   begin
   if ValInt(FormatDateTime('dd', pdatasis))>20 then
      edt_dtini.Text :='01/'+FormatDatetime('mm/yyyy',pdatasis)
   else
      edt_dtini.Text:='01/'+FormatDateTime('mm/yyyy', fdatafinal(1,pdatasis-28));
   edt_dtfin.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(edt_dtini.text)));
   end
else
   tsRedZxCADNS.TabVisible:=false;
IF DBNavigator1.DataSource=nil then
   DBNavigator1.DataSource:=DM1.Src_MI01;
IF DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM1.Src_MI01;

end;

function TFrm_MRECF.fCorrigirValores(pDifIsentas,pDifNInc,pDifSubTrib,pDifTrib: Real): Boolean;
var
mIncluir,mTotIsentas,mTotSubTrib,mTotTrib: Real;
mValorProc: Real;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :=' NSCODEMP=0'+IntTostr(codemp);

//fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

DM1.Query2.close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select NSCODEMP,NSLOTSEQ_CP,NSCHAVEP,NSORDEMP '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and '));

DM1.Query2.SQL.Add(' NSDATCUP=:DTEMIS ');
DM1.Query2.ParamByName('DTEMIS').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;
//if mSaiTrib>

//DM1.Query6.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

try
   DM1.Query2.open;
except
   DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
// sub totalizar

mTotIsentas:=0;
mTotSubTrib:=0;
mTotTrib   :=0;
{
While (not DM1.Query2.Eof)  do
   begin

   Tb_Ped02_Isentas.Close;
   Tb_Ped02_Isentas.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_Isentas.Open;
   While not Tb_Ped02_Isentas.Eof do
      begin
      mTotIsentas:=mTotIsentas+Tb_Ped02_IsentasP2TOTLIQ.AsFloat;
      Tb_Ped02_Isentas.Next;
      end;

   Tb_Ped02_SubSt.Close;
   Tb_Ped02_SubSt.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_SubSt.Open;
   While not Tb_Ped02_SubSt.Eof do
      begin
      mTotSubTrib:=mTotSubTrib+Tb_Ped02_SubStP2TOTLIQ.AsFloat;
      Tb_Ped02_SubSt.Next;
      end;

   Tb_Ped02_Trib.Close;
   Tb_Ped02_Trib.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_Trib.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_Trib.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_Trib.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_Trib.Open;
   While not Tb_Ped02_Trib.Eof do
      begin
      mTotTrib:=mTotTrib+Tb_Ped02_TribP2BASEN.AsFloat;
      Tb_Ped02_Trib.Next;
      end;
   DM1.Query2.Next;
   end;

ShowMessage('Tributado: '+Formatfloat(mcasas, Frm_ECF_Comp_MRxNS.ns_tottrib.Value)+' Somado: '+
           FormatFloat(mcasas, mTotTrib)+#13
           +'Substituicao: '+Formatfloat(mcasas, Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value)+' Somado: '+
           FormatFloat(mcasas, mTotSubTrib)+#13
           +'Isentas: '+Formatfloat(mcasas, Frm_ECF_Comp_MRxNS.ns_totisentas.Value)+' Somado: '+
           FormatFloat(mcasas, mTotIsentas)+#13
           );
// sub totalizar
}


DM1.Query2.First;
While (not DM1.Query2.Eof) and ((pDifIsentas<>0) or (pDifSubTrib<>0) or (pDifTrib<>0)) do
   begin
   mTotIsentas:=0;
   mTotSubTrib:=0;
   mTotTrib   :=0;

   Tb_Ped02_Isentas.Close;
   Tb_Ped02_Isentas.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_Isentas.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_Isentas.Open;
   While not Tb_Ped02_Isentas.Eof do
      begin
      mTotIsentas:=mTotIsentas+Tb_Ped02_IsentasP2TOTLIQ.AsFloat;
      Tb_Ped02_Isentas.Next;
      end;

   Tb_Ped02_SubSt.Close;
   Tb_Ped02_SubSt.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_SubSt.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_SubSt.Open;
   While not Tb_Ped02_SubSt.Eof do
      begin
      mTotSubTrib:=mTotSubTrib+Tb_Ped02_SubStP2TOTLIQ.AsFloat;
      Tb_Ped02_SubSt.Next;
      end;

   Tb_Ped02_Trib.Close;
   Tb_Ped02_Trib.ParamByName('CODEMP').Value:=DM1.Query2.fieldbyName('NSCODEMP').AsFloat;
   Tb_Ped02_Trib.ParamByName('LOTSEQ').Value:=DM1.Query2.fieldbyName('NSLOTSEQ_CP').AsFloat;
   Tb_Ped02_Trib.ParamByName('CHAVE').Value:=DM1.Query2.fieldbyName('NSCHAVEP').AsFloat;
   Tb_Ped02_Trib.ParamByName('ORDEM').Value:=DM1.Query2.fieldbyName('NSORDEMP').AsFloat;
   Tb_Ped02_Trib.Open;
   While not Tb_Ped02_Trib.Eof do
      begin
      mTotTrib:=mTotTrib+Tb_Ped02_TribP2BASEN.AsFloat;
      Tb_Ped02_Trib.Next;
      end;
   if (pDifTrib<0) and  ( (pDifSubTrib>0) and (mTotTrib>0) ) then
       begin
       if pDifSubTrib<mTotTrib then
          mValorProc:=pDifSubTrib
       else
          mValorProc:=mTotTrib;
       if (pDifTrib*-1)<=mValorProc then
          mValorProc:=pDifTrib*-1;

       mIncluir:=fMudaTrib_p_SubTrib(mValorProc);
       if mIncluir>0 then
          fAumentarSubSt(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarTrib(mIncluir*-1);
          end;


       pDifTrib:=pDifTrib+mValorProc;
       pDifSubTrib:=pDifSubTrib-mValorProc;
       end
    else if (pDifTrib<0) and ((pDifIsentas>0)  and (mTotTrib>0) )  then
       begin

       if pDifIsentas<mTotTrib then
          mValorProc:=pDifIsentas
       else
          mValorProc:=mTotTrib;
       if (pDifTrib*-1)<=mValorProc then
          mValorProc:=pDifTrib*-1;

       mIncluir:=fMudaTrib_p_Isentas(mValorProc);
       if mIncluir>0 then
         fAumentarIsentas(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarTrib(mIncluir*-1);
          end;

       pDifTrib:=pDifTrib+mValorProc;
       pDifIsentas:=pDifIsentas-mValorProc;
       end
//aqui
    else if (pDifSubTrib<0) and ((pDifTrib>0) and (mTotSubTrib>0) ) then
       begin

       if pDifTrib<mTotSubTrib then
          mValorProc:=pDifTrib
       else
          mValorProc:=mTotSubTrib;
       if (pDifSubTrib*-1)<=mValorProc then
          mValorProc:=pDifSubTrib*-1;
       mIncluir:=fMudaSubTrib_p_Trib(mValorProc);
       if mIncluir>0 then
         fAumentarTrib(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarSubSt(mIncluir*-1);
          end;

       pDifSubTrib:=pDifSubTrib+mValorProc;
       pDifTrib:=pDifTrib-mValorProc;
       end
    else if (pDifSubTrib<0) and ((pDifIsentas>0)  and (mTotSubTrib>0) ) then
       begin
       if pDifIsentas<mTotSubTrib then
          mValorProc:=pDifIsentas
       else
          mValorProc:=mTotIsentas;
       if (pDifSubTrib*-1)<=mValorProc then
          mValorProc:=pDifSubTrib*-1;

       mIncluir:=fMudaSubTrib_p_Isentas(mValorProc);
       if mIncluir>0 then
          fAumentarIsentas(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarSubSt(mIncluir*-1);
          end;
       pDifSubTrib:=pDifSubTrib+mValorProc;
       pDifIsentas:=pDifIsentas-mValorProc;
       end

    else if (pDifIsentas<0) and ((pDifTrib>0)    and (mTotIsentas>0)) then
       begin
       if pDifTrib<mTotIsentas then
          mValorProc:=pDifTrib
       else
          mValorProc:=mTotIsentas;
       if (pDifIsentas*-1)<=mValorProc then
          mValorProc:=pDifIsentas*-1;

       mIncluir:=fMudaIsentas_p_Trib(mValorProc);
       if mIncluir>0 then
         fAumentarTrib(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarIsentas(mIncluir*-1);
          end;
       pDifIsentas:=pDifIsentas+mValorProc;

       pDifTrib:=pDifTrib-mValorProc;
       end

    else if (pDifIsentas<0) and ((pDifSubTrib>0)   and (mTotIsentas>0)) then
       begin
       if pDifSubTrib<mTotIsentas then
          mValorProc:=pDifSubTrib
       else
          mValorProc:=mTotIsentas;
       if (pDifTrib*-1)<=mValorProc then
          mValorProc:=pDifIsentas*-1;
       mIncluir:=fMudaIsentas_p_SubsTrib(mValorProc);
       if mIncluir>0 then
         fAumentarSubSt(mIncluir)
       else if mIncluir<0 then
          begin
          mValorProc:=mValorProc+mIncluir;
//          fAumentarIsentas(mIncluir*-1);
          end;

       pDifIsentas:=pDifIsentas+mValorProc;
       pDifSubTrib:=pDifSubTrib-mValorProc;
       end;
   DM1.Query2.Next;
   end;

result:=true;

end;

Function TFrm_MRECF.fMudaSubTrib_p_Trib(pValorProc: Real):Real;
// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_SubSt.First;
While (not Tb_Ped02_SubSt.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_SubStP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_SubSt.Edit;
      Tb_Ped02_SubStP2SIT.AsString:='000';
      Tb_Ped02_SubStP2BASEN.AsFloat:=Tb_Ped02_SubStP2TOTLIQ.AsFloat;
      if Tb_Ped02_SubStP2ALIQ.Asfloat=0 then
         Tb_Ped02_SubStP2ALIQ.AsFloat:=17;
      Tb_Ped02_SubStP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_SubStP2BASEN.AsFloat*Tb_Ped02_SubStP2ALIQ.ASFLOAT/100),2);
      Tb_Ped02_SubSt.Post;
      pValorProc:=Arredonda((pValorProc-Tb_Ped02_SubStP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_SubSt.Next;
   end;
result:=0;
if pValorProc>0 then
   begin

   Tb_Ped02_Trib.Close;
   Tb_Ped02_Trib.Open;
   if Tb_Ped02_Trib.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_SubSt.First;
   While (not Tb_Ped02_SubSt.Eof) and (pValorProc>0) do
      begin
      if Tb_Ped02_SubStP2SIT.Value[2]='0' then
         begin
         Tb_Ped02_SubSt.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_SubStP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_SubSt.Edit;
//         Tb_Ped02_SubStP2SIT.Value:='000';
         Tb_Ped02_SubStP2TOTDES.Value:=Arredonda((Tb_Ped02_SubStP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_SubStP2DESCRAT.Value:=Arredonda((Tb_Ped02_SubStP2DESCRAT.AsFloat+pValorProc),2);
         Tb_Ped02_SubStP2TOTLIQ.Value:=Arredonda( (Tb_Ped02_SubStP2TOTLIQ.AsFloat-pValorProc),2);
         Tb_Ped02_SubSt.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_SubSt.Next;
      end;
   end;
end;

// aumentar
function TFrm_MRECF.fAumentarIsentas(pValorProc: Real):Boolean;
var
mPU, mDesc: Real;
begin
Tb_Ped02_Isentas.Close;
Tb_Ped02_Isentas.Open;
if Tb_Ped02_Isentas.IsEmpty then
   begin
   result:=false;
   exit;
   end;

While (not Tb_Ped02_Isentas.Eof) and (pValorProc>0) do
   begin
   if Tb_Ped02_IsentasP2TOTDES.AsFloat<=0 then
      begin
      Tb_Ped02_Isentas.Next;
      Continue;
      end;
   Tb_Ped02_Isentas.Edit;
   if Tb_Ped02_IsentasP2TOTDES.AsFloat<=pValorProc then
      begin
      pValorProc:=Arredonda( (pValorProc-Tb_Ped02_IsentasP2TOTDES.AsFloat ),2);
      Tb_Ped02_IsentasP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_IsentasP2TOTLIQ.AsFloat+Tb_Ped02_IsentasP2TOTDES.AsFloat),2);
      Tb_Ped02_IsentasP2TOTDES.AsFloat:=0;
      Tb_Ped02_IsentasP2DESCRAT.AsFloat:=0;
      end
   else
      begin
      Tb_Ped02_IsentasP2TOTDES.AsFloat:=Arredonda((Tb_Ped02_IsentasP2TOTDES.AsFloat-pValorProc),2);
      Tb_Ped02_IsentasP2DESCRAT.AsFloat:=Arredonda((Tb_Ped02_IsentasP2DESCRAT.AsFloat-pValorProc),2);
      Tb_Ped02_IsentasP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_IsentasP2TOTLIQ.AsFloat+pValorProc),2);
      pValorProc:=0;
      end;
   Tb_Ped02_Isentas.Post;
   Tb_Ped02_Isentas.Next;
   end;
if not Tb_Ped02_Isentas.IsEmpty then
   begin
   if pValorProc>0 then
      begin
      Tb_Ped02_Isentas.First;
      mPU  :=0;
      mDesc:=0;
      mpu:=Arredonda( ((Tb_Ped02_Isentasp2TOTLIQ.AsFloat+pValorProc)/Tb_Ped02_IsentasP2QTD.AsFloat) ,2);

      While true do
         begin
         mDesc:=Arredonda( (mpu*Tb_Ped02_IsentasP2QTD.AsFloat),2)-Arredonda( (Tb_Ped02_IsentasP2TOTLIQ.AsFloat+pValorProc),2);

         if mDesc>=0 then
            break;
         mPU:=mPU+0.01;
         end;
      Tb_Ped02_Isentas.Edit;
      Tb_Ped02_IsentasP2PRECO.AsFloat:=Arredonda(mpu,2);
      Tb_Ped02_IsentasP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_IsentasP2PRECO.AsFloat*Tb_Ped02_IsentasP2QTD.AsFloat),2);
      Tb_Ped02_IsentasP2TOTDES.Value:=Arredonda(mDesc,2);
      Tb_Ped02_IsentasP2DESCRAT.Value:=Arredonda(mDesc,2);
      Tb_Ped02_Isentas.Post;
      end;
   end;
result:=true;

// termino aumentar




end;




// aumentar
function TFrm_MRECF.fAumentarTrib(pValorProc: Real):Boolean;
var
mPU, mDesc: Real;
begin
Tb_Ped02_Trib.Close;
Tb_Ped02_Trib.Open;
if Tb_Ped02_Trib.IsEmpty then
   begin
   result:=false;
   exit;
   end;
While (not Tb_Ped02_Trib.Eof) and (pValorProc>0) do
   begin
   if Tb_Ped02_TribP2TOTDES.AsFloat<=0 then
      begin
      Tb_Ped02_Trib.Next;
      Continue;
      end;
   Tb_Ped02_Trib.Edit;
   if Tb_Ped02_TribP2TOTDES.AsFloat<=pValorProc then
      begin
      pValorProc:=Arredonda( (pValorProc-Tb_Ped02_TribP2TOTDES.AsFloat ),2);
      Tb_Ped02_TribP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_TribP2TOTLIQ.AsFloat+Tb_Ped02_TribP2TOTDES.AsFloat),2);

      Tb_Ped02_TribP2BASEN.Value:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat+Tb_Ped02_TribP2TOTDES.AsFloat),2);
      if Tb_Ped02_TribP2BASEN.Asfloat<0 then
         Tb_Ped02_TribP2BASEN.Asfloat:=0;
      if Tb_Ped02_TribP2BASEN.Asfloat>0 then
         begin
         if Tb_Ped02_TribP2ALIQ.Asfloat=0 then
            Tb_Ped02_TribP2ALIQ.AsFloat:=17;
         Tb_Ped02_TribP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat*Tb_Ped02_TribP2ALIQ.ASFLOAT/100),2);
         end;


      Tb_Ped02_TribP2TOTDES.AsFloat:=0;
      Tb_Ped02_TribP2DESCRAT.AsFloat:=0;
      end
   else
      begin
      Tb_Ped02_TribP2TOTDES.AsFloat:=Arredonda((Tb_Ped02_TribP2TOTDES.AsFloat-pValorProc),2);
      Tb_Ped02_TribP2DESCRAT.AsFloat:=Arredonda((Tb_Ped02_TribP2DESCRAT.AsFloat-pValorProc),2);
      Tb_Ped02_TribP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_TribP2TOTLIQ.AsFloat+pValorProc),2);

      Tb_Ped02_TribP2BASEN.Value:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat+pValorProc),2);
      if Tb_Ped02_TribP2BASEN.Asfloat<0 then
         Tb_Ped02_TribP2BASEN.Asfloat:=0;
      if Tb_Ped02_TribP2BASEN.Asfloat>0 then
         begin
         if Tb_Ped02_TribP2ALIQ.Asfloat=0 then
            Tb_Ped02_TribP2ALIQ.AsFloat:=17;
         Tb_Ped02_TribP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat*Tb_Ped02_TribP2ALIQ.ASFLOAT/100),2);
         end;


      pValorProc:=0;
      end;
   Tb_Ped02_Trib.Post;
   Tb_Ped02_Trib.Next;
   end;
if not Tb_Ped02_Trib.IsEmpty then
   begin
   if pValorProc>0 then
      begin
      Tb_Ped02_Trib.First;
      mPU  :=0;
      mDesc:=0;
      mpu:=Arredonda( ((Tb_Ped02_TribP2TOTLIQ.AsFloat+pValorProc)/Tb_Ped02_TribP2QTD.AsFloat) ,2);
      While true do
         begin
         mDesc:=Arredonda( (mpu*Tb_Ped02_TribP2QTD.AsFloat),2)-Arredonda( (Tb_Ped02_TribP2TOTLIQ.AsFloat+pValorProc),2);

         if mDesc>=0 then
            break;
         mPU:=mPU+0.01;
         end;
      Tb_Ped02_Trib.Edit;
      Tb_Ped02_TribP2PRECO.AsFloat:=Arredonda(mpu,2);
      Tb_Ped02_TribP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_TribP2PRECO.AsFloat*Tb_Ped02_TribP2QTD.AsFloat),2);
      Tb_Ped02_TribP2TOTDES.Value:=Arredonda(mDesc,2);
      Tb_Ped02_TribP2DESCRAT.Value:=Arredonda(mDesc,2);


      Tb_Ped02_TribP2BASEN.Value:=Tb_Ped02_TribP2TOTLIQ.AsFloat;
      if Tb_Ped02_TribP2BASEN.Asfloat<0 then
         Tb_Ped02_TribP2BASEN.Asfloat:=0;
      if Tb_Ped02_TribP2BASEN.Asfloat>0 then
         begin
         if Tb_Ped02_TribP2ALIQ.Asfloat=0 then
            Tb_Ped02_TribP2ALIQ.AsFloat:=17;
         Tb_Ped02_TribP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat*Tb_Ped02_TribP2ALIQ.ASFLOAT/100),2);
         end;

      Tb_Ped02_Trib.Post;
      end;
   end;
result:=true;

// termino aumentar




end;



// aumentar
function TFrm_MRECF.fAumentarSubSt(pValorProc: Real):Boolean;
var
mPU, mDesc: Real;
begin
Tb_Ped02_SubSt.Close;
Tb_Ped02_SubSt.Open;

if Tb_Ped02_SubSt.IsEmpty then
   begin
   result:=false;
   exit;
   end;

While (not Tb_Ped02_SubSt.Eof) and (pValorProc>0) do
   begin
   if Tb_Ped02_SubStP2TOTDES.AsFloat<=0 then
      begin
      Tb_Ped02_SubSt.Next;
      Continue;
      end;
   Tb_Ped02_SubSt.Edit;
   if Tb_Ped02_SubStP2TOTDES.AsFloat<=pValorProc then
      begin
      pValorProc:=Arredonda( (pValorProc-Tb_Ped02_SubStP2TOTDES.AsFloat ),2);
      Tb_Ped02_SubStP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_SubStP2TOTLIQ.AsFloat+Tb_Ped02_SubStP2TOTDES.AsFloat),2);
      Tb_Ped02_SubStP2TOTDES.AsFloat:=0;
      Tb_Ped02_SubStP2DESCRAT.AsFloat:=0;
      end
   else
      begin
      Tb_Ped02_SubStP2TOTDES.AsFloat:=Arredonda((Tb_Ped02_SubStP2TOTDES.AsFloat-pValorProc),2);
      Tb_Ped02_SubStP2DESCRAT.AsFloat:=Arredonda((Tb_Ped02_SubStP2DESCRAT.AsFloat-pValorProc),2);
      Tb_Ped02_SubStP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_SubStP2TOTLIQ.AsFloat+pValorProc),2);
      pValorProc:=0;
      end;
   Tb_Ped02_SubSt.Post;
   Tb_Ped02_SubSt.Next;
   end;
if not Tb_Ped02_SubSt.isEmpty then
   begin
   if pValorProc>0 then
      begin
      Tb_Ped02_SubSt.First;
      mPU  :=0;
      mDesc:=0;
      mpu:=Arredonda( ((Tb_Ped02_SubStP2TOTLIQ.AsFloat+pValorProc)/Tb_Ped02_SubSTP2QTD.AsFloat) ,2);

      While true do
         begin
         mDesc:=Arredonda( (mpu*Tb_Ped02_SubStP2QTD.AsFloat),2)-Arredonda( (Tb_Ped02_SubStP2TOTLIQ.AsFloat+pValorProc),2);

         if mDesc>=0 then
            break;
         mPU:=mPU+0.01;
         end;
      Tb_Ped02_SubSt.Edit;
      Tb_Ped02_SubStP2PRECO.AsFloat:=Arredonda(mpu,2);
      Tb_Ped02_SubStP2TOTLIQ.AsFloat:=Arredonda((Tb_Ped02_SubStP2PRECO.AsFloat*Tb_Ped02_SubStP2QTD.AsFloat),2);
      Tb_Ped02_SubStP2TOTDES.Value:=Arredonda(mDesc,2);
      Tb_Ped02_SubStP2DESCRAT.Value:=Arredonda(mDesc,2);
      Tb_Ped02_SubSt.Post;
      end;
   end;
result:=true;

// termino aumentar




end;

function TFrm_MRECF.fMudaIsentas_p_Trib(pValorProc: Real):Real;

// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_Isentas.First;
While (not Tb_Ped02_Isentas.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_IsentasP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_Isentas.Edit;
      Tb_Ped02_IsentasP2SIT.AsString:='000';
      Tb_Ped02_IsentasP2BASEN.AsFloat:=Tb_Ped02_IsentasP2TOTLIQ.AsFloat;
      if Tb_Ped02_IsentasP2ALIQ.Asfloat=0 then
         Tb_Ped02_IsentasP2ALIQ.AsFloat:=17;
      Tb_Ped02_IsentasP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_IsentasP2BASEN.AsFloat*Tb_Ped02_IsentasP2ALIQ.ASFLOAT/100),2);

      Tb_Ped02_Isentas.Post;
      pValorProc:=Arredonda((pValorProc-Tb_Ped02_IsentasP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_Isentas.Next;
   end;
result:=0;
if pValorProc>0 then
   begin
   Tb_Ped02_Trib.Close;
   Tb_Ped02_Trib.Open;
   if Tb_Ped02_Trib.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_Isentas.First;
   While (not Tb_Ped02_Isentas.Eof) and (pValorProc>0) do
      begin
      if (Tb_Ped02_IsentasP2SIT.Value[2]='0') and (Tb_Ped02_IsentasP2BASEN.AsFloat>0) then
         begin
         Tb_Ped02_Isentas.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_IsentasP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_Isentas.Edit;
         Tb_Ped02_IsentasP2TOTDES.Value:=Arredonda((Tb_Ped02_IsentasP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_IsentasP2DESCRAT.Value:=Arredonda((Tb_Ped02_IsentasP2DESCRAT.AsFloat+pValorProc),2);

         Tb_Ped02_IsentasP2BASEN.Value:=Arredonda((Tb_Ped02_IsentasP2BASEN.AsFloat-pValorProc),2);
         if Tb_Ped02_IsentasP2BASEN.Asfloat<0 then
            Tb_Ped02_IsentasP2BASEN.Asfloat:=0;

         Tb_Ped02_IsentasP2TOTLIQ.Value:=Arredonda((Tb_Ped02_IsentasP2TOTLIQ.AsFloat-pValorProc),2);
         Tb_Ped02_Isentas.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_Isentas.Next;
      end;
   end;
end;

// substituicao tributaria
Function TFrm_MRECF.fMudaTrib_p_SubTrib(pValorProc: Real):Real;
// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_Trib.First;
While (not Tb_Ped02_Trib.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_TribP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_Trib.Edit;
      Tb_Ped02_TribP2SIT.AsString:='060';
      Tb_Ped02_TribP2BASEN.AsFloat:=0;
      Tb_Ped02_TribP2ALIQ.Asfloat:=0;
      Tb_Ped02_Trib.Post;

      pValorProc:=Arredonda((pValorProc-Tb_Ped02_TribP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_Trib.Next;
   end;
result:=0;
if pValorProc>0 then
   begin
   Tb_Ped02_SubSt.Close;
   Tb_Ped02_SubSt.Open;
   if Tb_Ped02_SubSt.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_Trib.First;
   While (not Tb_Ped02_Trib.Eof) and (pValorProc>0) do
      begin
      if (Tb_Ped02_TribP2SIT.Value[2]='6')  or (Tb_Ped02_TribP2SIT.Value[2]='1') then
         begin
         Tb_Ped02_Trib.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_TribP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_Trib.Edit;
         Tb_Ped02_TribP2TOTDES.Value:=Arredonda((Tb_Ped02_TribP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_TribP2DESCRAT.Value:=Arredonda((Tb_Ped02_TribP2DESCRAT.AsFloat+pValorProc),2);
         Tb_Ped02_TribP2TOTLIQ.Value:=Arredonda((Tb_Ped02_TribP2TOTLIQ.AsFloat-pValorProc),2);
         Tb_Ped02_TribP2BASEN.Value:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat-pValorProc),2);
         if Tb_Ped02_TribP2BASEN.Asfloat<0 then
            Tb_Ped02_TribP2BASEN.Asfloat:=0;
         if Tb_Ped02_TribP2BASEN.Asfloat>0 then
            begin
            if Tb_Ped02_TribP2ALIQ.Asfloat=0 then
               Tb_Ped02_TribP2ALIQ.AsFloat:=17;
            Tb_Ped02_TribP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat*Tb_Ped02_TribP2ALIQ.ASFLOAT/100),2);
            end;
         Tb_Ped02_Trib.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_Trib.Next;
      end;
   end;
end;



function TFrm_MRECF.fMudaIsentas_p_SubsTrib(pValorProc: Real):Real;

// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_Isentas.First;
While (not Tb_Ped02_Isentas.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_IsentasP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_Isentas.Edit;
      Tb_Ped02_IsentasP2SIT.AsString:='060';
//      Tb_Ped02_IsentasP2BASEN.AsFloat:=Tb_Ped02_IsentasP2TOTLIQ.AsFloat;
      Tb_Ped02_Isentas.Post;
      pValorProc:=Arredonda((pValorProc-Tb_Ped02_IsentasP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_Isentas.Next;
   end;
result:=0;
if pValorProc>0 then
   begin
   Tb_Ped02_SubSt.Close;
   Tb_Ped02_SubSt.Open;
   if Tb_Ped02_SubSt.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_Isentas.First;
   While (not Tb_Ped02_Isentas.Eof) and (pValorProc>0) do
      begin
      if Tb_Ped02_IsentasP2SIT.Value[2]='6' then
         begin
         Tb_Ped02_Isentas.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_IsentasP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_Isentas.Edit;
         Tb_Ped02_IsentasP2TOTDES.Value:=Arredonda((Tb_Ped02_IsentasP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_IsentasP2DESCRAT.Value:=Arredonda((Tb_Ped02_IsentasP2DESCRAT.AsFloat+pValorProc),2);
         Tb_Ped02_IsentasP2TOTLIQ.Value:=Arredonda((Tb_Ped02_IsentasP2TOTLIQ.AsFloat-pValorProc),2);
         Tb_Ped02_Isentas.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_Isentas.Next;
      end;
   end;
end;



// Isentas
Function TFrm_MRECF.fMudaTrib_p_Isentas(pValorProc: Real):Real;
// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_Trib.First;
While (not Tb_Ped02_Trib.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_TribP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_Trib.Edit;
      Tb_Ped02_TribP2SIT.AsString:='000';
      Tb_Ped02_TribP2BASEN.AsFloat:=0;
      Tb_Ped02_TribP2ICMSN.Asfloat:=0;
      Tb_Ped02_Trib.Post;
      pValorProc:=Arredonda((pValorProc-Tb_Ped02_TribP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_Trib.Next;
   end;
result:=0;
if pValorProc>0 then
   begin
   Tb_Ped02_Isentas.Close;
   Tb_Ped02_Isentas.Open;
   if Tb_Ped02_Isentas.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_Trib.First;
   While (not Tb_Ped02_Trib.Eof) and (pValorProc>0) do
      begin
      if (Tb_Ped02_TribP2BASEN.AsFloat=0) then
         begin
         Tb_Ped02_Trib.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_TribP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_Trib.Edit;
         Tb_Ped02_TribP2TOTDES.Value:=Arredonda((Tb_Ped02_TribP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_TribP2DESCRAT.Value:=Arredonda((Tb_Ped02_TribP2DESCRAT.AsFloat+pValorProc),2);
         Tb_Ped02_TribP2BASEN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat-pValorProc),2);
         if Tb_Ped02_TribP2BASEN.Asfloat<0 then
            Tb_Ped02_TribP2BASEN.Asfloat:=0;
         if Tb_Ped02_TribP2BASEN.Asfloat>0 then
            begin
            if Tb_Ped02_TribP2ALIQ.Asfloat=0 then
               Tb_Ped02_TribP2ALIQ.AsFloat:=17;
            Tb_Ped02_TribP2ICMSN.AsFloat:=Arredonda((Tb_Ped02_TribP2BASEN.AsFloat*Tb_Ped02_TribP2ALIQ.ASFLOAT/100),2);
            end;
         Tb_Ped02_Trib.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_Trib.Next;
      end;
   end;
end;


Function TFrm_MRECF.fMudaSubTrib_p_Isentas(pValorProc: Real):Real;
// 2a) fase muda 010 ou 060 para 000
// 3a) fase aumenta valor do desconto
var
mValorEmDesconto: Real;
mValor: Real;
begin
Tb_Ped02_SubSt.First;
While (not Tb_Ped02_SubSt.Eof) and (pValorProc>0) do
   begin
   if Arredonda(Tb_Ped02_SubStP2TOTLIQ.AsFloat,2)<=Arredonda(pValorProc,2) then
      begin
      Tb_Ped02_SubSt.Edit;
      Tb_Ped02_SubStP2SIT.AsString:='000';
      Tb_Ped02_SubStP2BASEN.AsFloat:=0;
      Tb_Ped02_SubSt.Post;
      pValorProc:=Arredonda( ( pValorProc-Tb_Ped02_SubStP2TOTLIQ.AsFloat),2);
      end;
   Tb_Ped02_SubSt.Next;
   end;
result:=0;
if pValorProc>0 then
   begin
   Tb_Ped02_Isentas.Close;
   Tb_Ped02_Isentas.Open;
   if Tb_Ped02_Isentas.IsEmpty then
      begin
      result:=pValorProc*-1;
      exit;
      end;

   result:=pValorProc;
   Tb_Ped02_SubSt.First;
   While (not Tb_Ped02_SubSt.Eof) and (pValorProc>0) do
      begin
      if (Tb_Ped02_SubStP2SIT.Value[2]='0')  then
         begin
         Tb_Ped02_SubSt.Next;
         Continue;
         end;
      if Arredonda(Tb_Ped02_SubStP2TOTLIQ.AsFloat,2)>Arredonda(pValorProc,2) then
         begin
         Tb_Ped02_SubSt.Edit;
         Tb_Ped02_SubStP2TOTDES.Value:=Arredonda((Tb_Ped02_SubStP2TOTDES.AsFloat+pValorProc),2);
         Tb_Ped02_SubStP2DESCRAT.Value:=Arredonda((Tb_Ped02_SubStP2DESCRAT.AsFloat+pValorProc),2);
         Tb_Ped02_SubStP2TOTLIQ.Value:=Arredonda((Tb_Ped02_SubStP2TOTLIQ.AsFloat-pValorProc),2);
         Tb_Ped02_SubSt.Post;
         pValorProc:=0;
         end;
      Tb_Ped02_SubSt.Next;
      end;
   end;
end;



procedure TFrm_MRECF.c(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_MRECF.bbRetirarClick(Sender: TObject);
var
mValorProc,mValorFalta: Real;
begin
  inherited;
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.SQL.Add('SELECT P2CHAVE,P2ORDEM,P2LOTSEQ,(P2TOTLIQ) AS TOTLIQ,((P2QTD*P2PRECO)-P2TOTDES) AS TOTCALC '
                  +',P2ITEM, P2CFO, P2DESCRAT '
                  +'  FROM CADP01,CADP02 '
                  +' WHERE P2CODEMP=P1CODEMP '
                  +' AND P2CHAVE=P1CHAVE '
                  +' AND P2LOTSEQ=P1LOTSEQ '
                  +' AND P2ORDEM=P1ORDEM '
                  +' AND P1CODEMP=1 '
                  +' AND P1DATACF=:DATACF '
                  +' AND P1STATUS<>9 AND P2CFO=5405'
                  +' and P1CODEMP='+IntTostr(codemp)
                  +' ORDER BY P2TOTLIQ DESC ');
DM1.Query2.ParamByName('DATACF').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;
try
   DM1.Query2.Open;
except
   DM1.Query2.SQL.savetofile('c:\sql00.txt');
   exit;
   end;
mValorFalta:=edt_ret5405.Value;
While (not DM1.Query2.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query2.FieldByName('TOTLIQ').AsFloat>mValorFalta then
      mValorProc:=mValorFalta
   else
      mValorProc:=Arredonda( (DM1.Query2.FieldByName('TOTLIQ').AsFloat *0.50),2);
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT+:VALDIF'
                     +',P2TOTDES=P2TOTDES+:VALDIF'
                     +',P2TOTLIQ=P2TOTLIQ-:VALDIF'
                     +' where P2CODEMP=:CODEMP '
                     +' AND   P2LOTSEQ=:LOTSEQ '
                     +' AND   P2CHAVE=:CHAVE '
                     +' AND   P2ORDEM=:ORDEM '
                     +' AND   P2ITEM=:ITEM ');
   DM1.Query1.ParamByName('VALDIF').AsFloat:=mValorFalta;
   DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query2.FieldByName('P2LOTSEQ').AsFloat;
   DM1.Query1.ParamByName('CHAVE').AsFloat :=DM1.Query2.FieldByName('P2CHAVE').AsFloat;
   DM1.Query1.ParamByName('ORDEM').AsFloat :=DM1.Query2.FieldByName('P2ORDEM').AsFloat;
   DM1.Query1.ParamByName('ITEM').AsFloat  :=DM1.Query2.FieldByName('P2ITEM').AsFloat;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,3477,'_mrecf','CADP02');
      exit;
      end;
   mValorFalta:=mValorProc-mValorProc;
   DM1.Query2.Next;
   end;
mValorFalta:=edt_ret5405.Value;
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.SQL.Add('SELECT P2CHAVE,P2ORDEM,P2LOTSEQ,(P2TOTLIQ) AS TOTLIQ,((P2QTD*P2PRECO)-P2TOTDES) AS TOTCALC '
                  +',P2ITEM, P2CFO, P2DESCRAT '
                  +'  FROM CADP01,CADP02 '
                  +' WHERE P2CODEMP=P1CODEMP '
                  +' AND P2CHAVE=P1CHAVE '
                  +' AND P2LOTSEQ=P1LOTSEQ '
                  +' AND P2ORDEM=P1ORDEM '
                  +' AND P1CODEMP=1 '
                  +' AND P1DATACF=:DATACF '
                  +' AND P1STATUS<>9 AND P2CFO=5102'
                  +' and P2BASEN=0'
                  +' and P1CODEMP='+IntTostr(codemp)
                  +' and P2DESCRAT>0 '
                  +' ORDER BY P2DESCRAT DESC ');
DM1.Query2.ParamByName('DATACF').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;
try
   DM1.Query2.Open;
except
   DM1.Query2.SQL.savetofile('c:\sql00.txt');
   end;

While (not DM1.Query2.Eof) and (mValorFalta>0) do
   begin
   if DM1.Query2.FieldByName('P2DESCRAT').AsFloat>mValorFalta then
      mValorProc:=mValorFalta
   else
      mValorProc:=Arredonda( (DM1.Query2.FieldByName('P2DESCRAT').AsFloat *0.50),2);


   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP02 set P2DESCRAT=P2DESCRAT-:VALDIF'
                     +',P2TOTDES=P2TOTDES-:VALDIF'
                     +',P2TOTLIQ=P2TOTLIQ+:VALDIF'
                     +' where P2CODEMP=:CODEMP '
                     +' AND   P2LOTSEQ=:LOTSEQ '
                     +' AND   P2CHAVE=:CHAVE '
                     +' AND   P2ORDEM=:ORDEM '
                     +' AND   P2ITEM=:ITEM ');
   DM1.Query1.ParamByName('VALDIF').AsFloat:=mValorFalta;
   DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
   DM1.Query1.ParamByName('LOTSEQ').AsFloat:=DM1.Query2.FieldByName('P2LOTSEQ').AsFloat;
   DM1.Query1.ParamByName('CHAVE').AsFloat :=DM1.Query2.FieldByName('P2CHAVE').AsFloat;
   DM1.Query1.ParamByName('ORDEM').AsFloat :=DM1.Query2.FieldByName('P2ORDEM').AsFloat;
   DM1.Query1.ParamByName('ITEM').AsFloat  :=DM1.Query2.FieldByName('P2ITEM').AsFloat;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query1,3477,'_mrecf','CADP02');
      exit;
      end;
   mValorFalta:=mValorProc-mValorProc;
   DM1.Query2.Next;
   end;

MessageDlg('Concluido!',mtWarning,[mbOk],0);
edt_ret5405.Value:=0;
end;

end.
