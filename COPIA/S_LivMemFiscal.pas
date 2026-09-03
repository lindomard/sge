unit S_LivMemFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DB, ADODB, Mask, Gauges, RxMemDS, ComCtrls,
  RLReport, DBTables, Grids, DBGrids, ExtCtrls;

type
  TFrm_LivMemFiscal = class(TForm)
    opd1: TOpenDialog;
    ADOConnection1: TADOConnection;
    ADO_Origem: TADOQuery;
    ADO_OrigemcontCOO: TIntegerField;
    ADO_OrigemHoraInicio: TDateTimeField;
    ADO_OrigemcontCCF: TIntegerField;
    ADO_OrigemCNPJ_CPFConsumidor: TWideStringField;
    ADO_OrigemNome: TWideStringField;
    ADO_OrigemEndereco: TWideStringField;
    ADO_OrigemSubTotal: TBCDField;
    ADO_OrigemValorAcrescimo: TBCDField;
    ADO_OrigemValorDesconto: TBCDField;
    ADO_OrigemTotal: TBCDField;
    ADO_OrigemSomaPgto: TBCDField;
    ADO_OrigemTroco: TBCDField;
    ADO_OrigemTextoSuplementar: TMemoField;
    ADO_OrigemCancelado: TBooleanField;
    ADO_OrigemCupomAdicional: TBooleanField;
    ADO_OrigemDescontoISSDesabilitado: TBooleanField;
    mem_ecferro: TRxMemoryData;
    mem_ecferroCENUMCUP: TIntegerField;
    mem_ecferroCEDATCUP: TDateTimeField;
    mem_ecferroCEVALORCF: TFloatField;
    mem_ecferroCEVALORPED: TFloatField;
    mem_ecferroOBS: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsRelatorio: TTabSheet;
    gb_progress: TGroupBox;
    Gauge1: TGauge;
    lbl_titulo: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    edt_nomarq: TEdit;
    sbn: TSpeedButton;
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLCabGer: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    lbl_dathor: TRLLabel;
    RLCabObs: TRLBand;
    lbl_periodo: TRLLabel;
    RlCabDet: TRLBand;
    lblNumCF: TRLLabel;
    lblDatECF: TRLLabel;
    lblValorCF: TRLLabel;
    lblValorPed: TRLLabel;
    lbl_obs: TRLLabel;
    RLDet: TRLBand;
    src_ecferro: TDataSource;
    edtNumCF: TRLDBText;
    edtDatECF: TRLDBText;
    edtValorCF: TRLDBText;
    edtValorPed: TRLDBText;
    edt_obs: TRLDBText;
    RLRodape: TRLBand;
    RLSumario: TRLBand;
    bbArredonda: TBitBtn;
    Tb_Ped02: TQuery;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2CODANT: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2PROMOCAO: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CODFAB: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2REPAS: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2STATUS: TFloatField;
    Tb_Ped02P2PCOTAB: TFloatField;
    Tb_Ped02P2UCPR: TFloatField;
    Tb_Ped02P2PCOCUS: TFloatField;
    Tb_Ped02P2PCOMAX: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2DESCRAT: TFloatField;
    Tb_Ped02P2TABELA: TStringField;
    Tb_Ped02P2ALIPI: TFloatField;
    Tb_Ped02P2VALIPI: TFloatField;
    Tb_Ped02P2BCINR: TFloatField;
    Tb_Ped02P2ICMSNR: TFloatField;
    Tb_Ped02P2ISENTAS: TFloatField;
    Tb_Ped02P2TOTOUT: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2ALIQNR: TFloatField;
    Tb_Ped02P2PCOMIS: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2VCOM02: TFloatField;
    Tb_Ped02P2VCOM03: TFloatField;
    Tb_Ped02P2DESCM: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2SEMCOM: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2PDESCF: TFloatField;
    Tb_Ped02P2VDESCF: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02P2DESC3: TFloatField;
    Tb_Ped02P2CODGRU: TFloatField;
    Tb_Ped02P2VCOM04: TFloatField;
    Tb_Ped02P2ACRERAT: TFloatField;
    Tb_Ped02P2QTD_ENTREGUE: TFloatField;
    Tb_Ped02P2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02P2AMBIENTE: TStringField;
    Tb_Ped02P2PCOFPG: TFloatField;
    Tb_Ped02P2PCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2VCOMIS_EXTRA: TFloatField;
    Tb_Ped02P2STATUS_PED1: TFloatField;
    Tb_Ped02P2TIPO: TFloatField;
    Tb_Ped02P2CFOSUBECF: TFloatField;
    Tb_Ped02P2CODAGRU: TFloatField;
    Tb_Ped02P2CONSIG: TFloatField;
    Tb_Ped02P2PCOM02: TFloatField;
    Tb_Ped02P2PCOM03: TFloatField;
    Tb_Ped02P2ST_IVA: TFloatField;
    Tb_Ped02P2ST_REDUT: TFloatField;
    Tb_Ped02P2ST_ICMCRED: TFloatField;
    Tb_Ped02P2ST_ICMDEB: TFloatField;
    Tb_Ped02P2REDUTICM: TFloatField;
    Tb_Ped02P2PRAZO: TFloatField;
    Tb_Ped02P2QTD_ATEN: TFloatField;
    Tb_Ped02P2ALPIS: TFloatField;
    Tb_Ped02P2VALPIS: TFloatField;
    Tb_Ped02P2ALCOFINS: TFloatField;
    Tb_Ped02P2COFINS: TFloatField;
    Tb_Ped02P2CODVEN: TFloatField;
    Tb_Ped02P2COMPLEMENTO: TMemoField;
    Tb_Ped02P2TIPO_PCO: TFloatField;
    Tb_Ped02P2CONS_PROPRIO: TFloatField;
    Tb_Ped02P2CODPRO_ORI: TStringField;
    Tb_Ped02P2NOMPRO_ORI: TStringField;
    Tb_Ped02P2CHAVE_NIVEL: TFloatField;
    Tb_Ped02P2PCRED_SN: TFloatField;
    Tb_Ped02P2PCREDSN: TFloatField;
    Tb_Ped02P2UND: TStringField;
    U_Ped02: TUpdateSQL;
    Tb_Ped01: TQuery;
    Tb_Ped01P1CODEMP: TFloatField;
    Tb_Ped01P1CHAVE: TFloatField;
    Tb_Ped01P1ORDEM: TFloatField;
    Tb_Ped01P1CODCLI: TFloatField;
    Tb_Ped01P1CODVEN: TFloatField;
    Tb_Ped01P1CODV02: TFloatField;
    Tb_Ped01P1CODV03: TFloatField;
    Tb_Ped01P1DATAP: TDateTimeField;
    Tb_Ped01P1DATANF: TDateTimeField;
    Tb_Ped01P1NUMNF: TFloatField;
    Tb_Ped01P1SERIE: TStringField;
    Tb_Ped01P1SUBSER: TStringField;
    Tb_Ped01P1MODELO: TStringField;
    Tb_Ped01P1SUBMOD: TStringField;
    Tb_Ped01P1OBS1: TStringField;
    Tb_Ped01P1OBS2: TStringField;
    Tb_Ped01P1OBS3: TStringField;
    Tb_Ped01P1STATUS: TFloatField;
    Tb_Ped01P1TIPO: TFloatField;
    Tb_Ped01P1TOTALB: TFloatField;
    Tb_Ped01P1TOTALL: TFloatField;
    Tb_Ped01P1CODUSR: TFloatField;
    Tb_Ped01P1HORADIG: TStringField;
    Tb_Ped01P1DTMOD: TDateTimeField;
    Tb_Ped01P1HRMOD: TStringField;
    Tb_Ped01P1USRMOD: TFloatField;
    Tb_Ped01P1CONF: TStringField;
    Tb_Ped01P1CODCON: TFloatField;
    Tb_Ped01P1DATCON: TDateTimeField;
    Tb_Ped01P1HORCON: TStringField;
    Tb_Ped01P1TIPENT: TFloatField;
    Tb_Ped01P1PREVENT: TDateTimeField;
    Tb_Ped01P1HPREVENT: TStringField;
    Tb_Ped01P1CODENT: TFloatField;
    Tb_Ped01P1PRAZO: TFloatField;
    Tb_Ped01P1DATENT: TDateTimeField;
    Tb_Ped01P1HORENT: TStringField;
    Tb_Ped01P1TABPV: TStringField;
    Tb_Ped01P1CODPV: TFloatField;
    Tb_Ped01P1CUPOM: TFloatField;
    Tb_Ped01P1BASEN: TFloatField;
    Tb_Ped01P1ICMSN: TFloatField;
    Tb_Ped01P1REPAS: TFloatField;
    Tb_Ped01P1BASER: TFloatField;
    Tb_Ped01P1ICMSR: TFloatField;
    Tb_Ped01P1BASENP: TFloatField;
    Tb_Ped01P1BASENN: TFloatField;
    Tb_Ped01P1BASENI: TFloatField;
    Tb_Ped01P1ICMSNP: TFloatField;
    Tb_Ped01P1ICMSNN: TFloatField;
    Tb_Ped01P1ICMSNI: TFloatField;
    Tb_Ped01P1BASERP: TFloatField;
    Tb_Ped01P1BASERN: TFloatField;
    Tb_Ped01P1BASERI: TFloatField;
    Tb_Ped01P1ICMSRP: TFloatField;
    Tb_Ped01P1ICMSRN: TFloatField;
    Tb_Ped01P1ICMSRI: TFloatField;
    Tb_Ped01P1BASENRI: TFloatField;
    Tb_Ped01P1ICMSNRI: TFloatField;
    Tb_Ped01P1BASENRP: TFloatField;
    Tb_Ped01P1ICMSNRP: TFloatField;
    Tb_Ped01P1BASENRN: TFloatField;
    Tb_Ped01P1ICMSNRN: TFloatField;
    Tb_Ped01P1IPIINA: TFloatField;
    Tb_Ped01P1IPIPOS: TFloatField;
    Tb_Ped01P1IPINEG: TFloatField;
    Tb_Ped01P1TOTTRI: TFloatField;
    Tb_Ped01P1TOTRET: TFloatField;
    Tb_Ped01P1TOTISE: TFloatField;
    Tb_Ped01P1TOTPOS: TFloatField;
    Tb_Ped01P1TOTNEG: TFloatField;
    Tb_Ped01P1TOTINA: TFloatField;
    Tb_Ped01P1PISCOFN: TFloatField;
    Tb_Ped01P1PISCOFR: TFloatField;
    Tb_Ped01P1TOTDES: TFloatField;
    Tb_Ped01P1TOTUCPR: TFloatField;
    Tb_Ped01P1DESC01: TFloatField;
    Tb_Ped01P1DESC02: TFloatField;
    Tb_Ped01P1VLRDES: TFloatField;
    Tb_Ped01P1PAVDES: TFloatField;
    Tb_Ped01P1CODTRA: TFloatField;
    Tb_Ped01P1QTDVOL: TFloatField;
    Tb_Ped01P1PESOL: TFloatField;
    Tb_Ped01P1PESOB: TFloatField;
    Tb_Ped01P1FRETEPC: TFloatField;
    Tb_Ped01P1VALFRE: TFloatField;
    Tb_Ped01P1UFPV: TStringField;
    Tb_Ped01P1PLACAV: TStringField;
    Tb_Ped01P1BANCO: TFloatField;
    Tb_Ped01P1CODSER: TFloatField;
    Tb_Ped01P1CODLDR: TFloatField;
    Tb_Ped01P1PCOMIS: TFloatField;
    Tb_Ped01P1COMIS: TFloatField;
    Tb_Ped01P1COMIST: TFloatField;
    Tb_Ped01P1COMISS: TFloatField;
    Tb_Ped01P1ORIGEM: TFloatField;
    Tb_Ped01P1CODTLV: TFloatField;
    Tb_Ped01P1BCISSQN: TFloatField;
    Tb_Ped01P1VISSQN: TFloatField;
    Tb_Ped01P1ETIVOL: TFloatField;
    Tb_Ped01P1CODSEP: TFloatField;
    Tb_Ped01P1DATASEP: TDateTimeField;
    Tb_Ped01P1HORSEP: TStringField;
    Tb_Ped01P1CODEMB: TFloatField;
    Tb_Ped01P1DATAEMB: TDateTimeField;
    Tb_Ped01P1HOREMB: TStringField;
    Tb_Ped01P1NUMCF: TFloatField;
    Tb_Ped01P1DATACF: TDateTimeField;
    Tb_Ped01P1TPPCO: TFloatField;
    Tb_Ped01P1SEMCOM: TFloatField;
    Tb_Ped01P1DESCFIN: TFloatField;
    Tb_Ped01P1LOTCV: TFloatField;
    Tb_Ped01P1LOTCS: TFloatField;
    Tb_Ped01P1LOTCT: TFloatField;
    Tb_Ped01P1PVTC: TFloatField;
    Tb_Ped01P1PVCOM: TFloatField;
    Tb_Ped01P1PVACTD: TFloatField;
    Tb_Ped01P1PVACT00: TFloatField;
    Tb_Ped01P1PVACT01: TFloatField;
    Tb_Ped01P1PVACT99: TFloatField;
    Tb_Ped01P1PVTDC: TFloatField;
    Tb_Ped01P1PVDES: TFloatField;
    Tb_Ped01P1PVTPD1: TFloatField;
    Tb_Ped01P1PVDES1: TFloatField;
    Tb_Ped01P1PVTPD2: TFloatField;
    Tb_Ped01P1PVDES2: TFloatField;
    Tb_Ped01P1PVTPDESF: TFloatField;
    Tb_Ped01P1PVDESCF: TFloatField;
    Tb_Ped01P1PVDIASDESCF: TFloatField;
    Tb_Ped01P1PVDDESCF: TFloatField;
    Tb_Ped01P1TPP: TFloatField;
    Tb_Ped01P1SITAC: TFloatField;
    Tb_Ped01P1CODECF: TFloatField;
    Tb_Ped01P1VLRACRE: TFloatField;
    Tb_Ped01P1PEDORI1: TStringField;
    Tb_Ped01P1PEDORI2: TStringField;
    Tb_Ped01P1MOTIVO: TStringField;
    Tb_Ped01P1NUMVIS: TStringField;
    Tb_Ped01P1DATVIS: TDateTimeField;
    Tb_Ped01P1LOTSEQ: TFloatField;
    Tb_Ped01P1FORMACE: TFloatField;
    Tb_Ped01P1SITPED: TFloatField;
    Tb_Ped01P1TOTOUT: TFloatField;
    Tb_Ped01P1TOTDI01: TFloatField;
    Tb_Ped01P1TOTDI02: TFloatField;
    Tb_Ped01P1TOTDIVL: TFloatField;
    Tb_Ped01P1CODCV: TFloatField;
    Tb_Ped01P1LOTEDM: TFloatField;
    Tb_Ped01P1MINUTA: TFloatField;
    Tb_Ped01P1COMV02: TFloatField;
    Tb_Ped01P1COMV03: TFloatField;
    Tb_Ped01P1NPEDORI: TFloatField;
    Tb_Ped01P1LOTCV02: TFloatField;
    Tb_Ped01P1LOTCV03: TFloatField;
    Tb_Ped01P1PVCOM02: TFloatField;
    Tb_Ped01P1PVCOM03: TFloatField;
    Tb_Ped01P1SITCPR: TFloatField;
    Tb_Ped01P1DATDOC: TDateTimeField;
    Tb_Ped01P1EMIDOC: TFloatField;
    Tb_Ped01P1ACRECONV: TFloatField;
    Tb_Ped01P1ACREGER: TFloatField;
    Tb_Ped01P1PACRECONV: TFloatField;
    Tb_Ped01P1PACREGER: TFloatField;
    Tb_Ped01P1CODDEP: TFloatField;
    Tb_Ped01P1NAUT: TStringField;
    Tb_Ped01P1PEDORI: TFloatField;
    Tb_Ped01P1CFO1: TStringField;
    Tb_Ped01P1CFO2: TStringField;
    Tb_Ped01P1BLQPRM: TFloatField;
    Tb_Ped01P1TOTDI03: TFloatField;
    Tb_Ped01P1VALDES01: TFloatField;
    Tb_Ped01P1VALDES02: TFloatField;
    Tb_Ped01P1TARBAN: TFloatField;
    Tb_Ped01P1PVTPD3: TFloatField;
    Tb_Ped01P1PVDES3: TFloatField;
    Tb_Ped01P1VALSEG: TFloatField;
    Tb_Ped01P1CFOSER: TStringField;
    Tb_Ped01P1PDESCLIB: TFloatField;
    Tb_Ped01P1PDESCL_USR: TFloatField;
    Tb_Ped01P1PROCESSO: TStringField;
    Tb_Ped01P1CUPACRE: TFloatField;
    Tb_Ped01P1CUPDES: TFloatField;
    Tb_Ped01P1LEMAT: TFloatField;
    Tb_Ped01P1DTACERTO: TDateTimeField;
    Tb_Ped01P1LTACERTO: TFloatField;
    Tb_Ped01P1CODASSE: TFloatField;
    Tb_Ped01P1COMASSE: TFloatField;
    Tb_Ped01P1LOTCASSE: TFloatField;
    Tb_Ped01P1QTDMAN: TFloatField;
    Tb_Ped01P1CANHOTO: TFloatField;
    Tb_Ped01P1ICMS_BCFRE: TFloatField;
    Tb_Ped01P1ICMS_ALFRE: TFloatField;
    Tb_Ped01P1ICMS_VLFRE: TFloatField;
    Tb_Ped01P1ICMS_BCSEG: TFloatField;
    Tb_Ped01P1ICMS_ALSEG: TFloatField;
    Tb_Ped01P1ICMS_VLSEG: TFloatField;
    Tb_Ped01P1ICMS_BCOUTD: TFloatField;
    Tb_Ped01P1ICMS_ALOUTD: TFloatField;
    Tb_Ped01P1ICMS_VLOUTD: TFloatField;
    Tb_Ped01P1ICMS_BCIPI: TFloatField;
    Tb_Ped01P1ICMS_ALIPI: TFloatField;
    Tb_Ped01P1ICMS_VLIPI: TFloatField;
    Tb_Ped01P1ESPECIE: TStringField;
    Tb_Ped01P1CODV04: TFloatField;
    Tb_Ped01P1PROMOCAO: TStringField;
    Tb_Ped01P1ALIQDEB: TFloatField;
    Tb_Ped01P1COMV04: TFloatField;
    Tb_Ped01P1LOTCV04: TFloatField;
    Tb_Ped01P1PVCOM04: TFloatField;
    Tb_Ped01P1TOTCGRU: TFloatField;
    Tb_Ped01P1TOTSGRU: TFloatField;
    Tb_Ped01P1CODPRIOR: TFloatField;
    Tb_Ped01P1DTHRCHEG: TDateTimeField;
    Tb_Ped01P1CODBLOQ: TStringField;
    Tb_Ped01P1CODUSR_LBLOQ: TFloatField;
    Tb_Ped01P1TOTSERLIQ: TFloatField;
    Tb_Ped01P1VALENT: TFloatField;
    Tb_Ped01P1PRAZO_ENT: TFloatField;
    Tb_Ped01P1QTDM3: TFloatField;
    Tb_Ped01P1VFRE_CUSENT: TFloatField;
    Tb_Ped01P1COMIS_EXTRA: TFloatField;
    Tb_Ped01P1SEPAMB: TFloatField;
    Tb_Ped01P1PZOLIB: TFloatField;
    Tb_Ped01P1PZOLIB_USR: TFloatField;
    Tb_Ped01P1BLOQPEND: TFloatField;
    Tb_Ped01P1CODBLOQ_LIB: TStringField;
    Tb_Ped01P1ECF_SERIE: TStringField;
    Tb_Ped01P1CX_CODCAI: TFloatField;
    Tb_Ped01P1CX_LOTMOV: TFloatField;
    Tb_Ped01P1DUP_PROD: TFloatField;
    Tb_Ped01P1DUP_SERV: TFloatField;
    Tb_Ped01P1INCTB: TFloatField;
    Tb_Ped01P1EMITENTE: TStringField;
    Tb_Ped01P1PVACREDESREG: TFloatField;
    Tb_Ped01P1PVAJCOMIS: TFloatField;
    Tb_Ped01P1LOCAL: TFloatField;
    Tb_Ped01P1TIPO_ENTSAI: TFloatField;
    Tb_Ped01P1TOTPROM: TFloatField;
    Tb_Ped01P1NOMEREC: TStringField;
    Tb_Ped01P1DATHORREC: TDateTimeField;
    Tb_Ped01P1TOTPIS: TFloatField;
    Tb_Ped01P1TOTCOFINS: TFloatField;
    Tb_Ped01P1RED_BCISSQN: TFloatField;
    Tb_Ped01P1BCINSS: TFloatField;
    Tb_Ped01P1RED_BCINSS: TFloatField;
    Tb_Ped01P1VINSS: TFloatField;
    Tb_Ped01P1BCIRRF: TFloatField;
    Tb_Ped01P1RED_BCIRRF: TFloatField;
    Tb_Ped01P1VIRRF: TFloatField;
    Tb_Ped01P1NFE_ENVXML: TFloatField;
    Tb_Ped01P1QTDDECPU: TFloatField;
    Tb_Ped01P1DATHOR_REP: TDateTimeField;
    Tb_Ped01P1CHAVE_NIVEL: TFloatField;
    Tb_Ped01P1DATHOR_UEVE: TDateTimeField;
    Tb_Ped01P1TPEMIS: TFloatField;
    Tb_Ped01P1DATHOR_ULTEVE: TDateTimeField;
    Tb_Ped01P1CODUSR_ULTEVE: TFloatField;
    Tb_Ped01P1COMP_ULTEVE: TStringField;
    U_Ped01: TUpdateSQL;
    Label4: TLabel;
    edt_chave: TEdit;
    tscupons: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    ADO_Itens: TADOQuery;
    Qr_ECF_Aliq: TQuery;
    Qr_ECF_AliqCACODEMP: TFloatField;
    Qr_ECF_AliqCACODIMP: TFloatField;
    Qr_ECF_AliqCACODALI: TFloatField;
    Qr_ECF_AliqCAALIQ: TFloatField;
    ADO_Itensaliq: TFloatField;
    ADO_ItenscontCOOCupom: TIntegerField;
    ADO_ItensCodigoItem: TIntegerField;
    ADO_ItensCodigo: TWideStringField;
    ADO_ItensQuantidade: TFloatField;
    ADO_ItensValorTotal: TBCDField;
    ADO_ItensSituacaoTributaria: TIntegerField;
    mem_itens: TRxMemoryData;
    mem_itensITEM_NUMCUP: TIntegerField;
    mem_itensITEM_VALORITEM: TFloatField;
    mem_itensITEM_CODPRO: TStringField;
    mem_itensITEM_VALDES: TFloatField;
    mem_itensITEM_TOTLIQ: TFloatField;
    mem_itensITEM_QUANTIDADE: TFloatField;
    mem_itensITEM_CODALIQ: TFloatField;
    TabSheet3: TTabSheet;
    mem_itensAliqDif: TRxMemoryData;
    mem_itensAliqDifITEM_NUMCUP: TIntegerField;
    mem_itensAliqDifITEM_DATCUP: TDateTimeField;
    mem_itensAliqDifITEM_VALORITEM: TFloatField;
    mem_itensAliqDifITEM_CUPOM_ALIQ: TStringField;
    mem_itensAliqDifITEM_CUPOM_VALOR: TFloatField;
    mem_itensAliqDifITEM_CODALIQ: TStringField;
    mem_itensAliqDifITEM_OBS: TStringField;
    Src_itensAliqDif: TDataSource;
    mem_diario: TRxMemoryData;
    src_diario: TDataSource;
    DBGrid3: TDBGrid;
    mem_diarioMD_DATA: TDateTimeField;
    mem_diarioMD_MFD_TOTRET: TFloatField;
    mem_diarioMD_MFD_TOTTRIB: TFloatField;
    mem_diarioMD_MP_TOTTRIB: TFloatField;
    mem_diarioMD_MP_TOTRET: TFloatField;
    Panel1: TPanel;
    Label5: TLabel;
    tot_mfd_totret: TStaticText;
    tot_mp_totret: TStaticText;
    tot_mfd_tottrib: TStaticText;
    tot_mp_tottrib: TStaticText;
    ret_difer: TStaticText;
    trib_difer: TStaticText;
    Tb_Ped02P2DESCPR: TFloatField;
    Tb_Ped01P1SEMCOMP: TStringField;
    procedure sbnClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbArredondaClick(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure ADO_ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
   function fPgtoRatearDescAcre(pOrigem: Integer;pCodemp,pLotSeq,pChave,pOrdem, pTotBru,pValDes,pValAcre: Real): Boolean;

  end;


var
  Frm_LivMemFiscal: TFrm_LivMemFiscal;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure TFrm_LivMemFiscal.sbnClick(Sender: TObject);
begin
if trim(edt_nomarq.Text)<>'' then
   OPd1.FileName:=edt_nomarq.Text
else
   OPd1.FileName:='C:\AUDSIN\NOTAS.ACCDB';
if Opd1.execute then
   edt_nomarq.text:=opd1.filename;

end;

procedure TFrm_LivMemFiscal.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LivMemFiscal.bbImportarClick(Sender: TObject);
var
mQtdReg,mLidos: Integer;
mPercDes: Real;
mValorDes: Real;
mObs: String;
mDif: Real;
mAliqmax,mAliqMin: Real;
mMaiorValor: Real;
mDescResta: Real;
mPosMValor: TBookmark;

mtot_mfd_tottrib, mtot_mfd_totret: Real;
mtot_mp_tottrib, mtot_mp_totret: Real;

begin
if trim(edt_nomarq.Text)='' then
   begin
   MessageDlg('Nome do arquivo tem que ser colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if not FileExists(edt_nomarq.Text) then
   begin
   MessageDlg('Arquivo não encontrado!',mtWarning,[mbOk],0);
   exit;
   end;

if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial Maior que Final, invalido!',mtWarning,[mbOk],0);
      Exit;
      end;
   end;

Qr_ECF_Aliq.Close;
Qr_ECF_Aliq.SQL.Clear;
Qr_ECF_Aliq.SQL.Add('Select * from CADCAL where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),' ',' CACODEMP=0'+IntTostr(codemp)+' and ')
                 +' CACODIMP=01'
                 +' order by CACODALI ');
Qr_ECF_Aliq.Open;



ADOConnection1.Close;

ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;'
+'Data Source='+edt_nomarq.Text+';Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";'
+'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=6;'
+'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
+'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'
+'Jet OLEDB:Don'+chr(39)+'t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;'
+'Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False';

try
   ADOConnection1.Connected:=true;
except
    MessageDlg('Não Foi Possivel Abrir o Banco de Dados: '+edt_nomarq.Text,mtWarning,[mbOK],0);
    exit;
   end;

ADO_Origem.Close;
ADO_Origem.SQL.Clear;
ADO_Origem.SQL.Add('Select * from CuponsFiscais where cancelado=0 ');

mcinst:=' and ';
if trim(MDT1.Text)<>'/  /' then
   begin
   ADO_Origem.SQL.Add(mcinst+' HoraInicio>:datini');
   ADO_Origem.Parameters.ParamByName('datini').Value:=StrToDateTime(mdt1.Text+' 00:00:01');
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   ADO_Origem.SQL.Add(mcinst+' HoraInicio<:datfin');
   ADO_Origem.Parameters.ParamByName('datfin').Value:=StrToDateTime(mdt2.Text+' 23:59:59');
   mcinst:=' and ';
   end;

ADO_Origem.SQL.Add(' Order by contCOO ');
try
   ADO_Origem.Open;
except
   ADO_Origem.SQL.SaveToFile('c:\sql.txt');
   end;
// itens



ADO_Itens.Close;
ADO_Itens.SQL.Clear;
ADO_Itens.SQL.Add(' Select contCOOCupom,CodigoItem,Codigo,Quantidade,ValorTotal,SituacaoTributaria '
                  +' from ItensPorCupom,itensCadastrados '
                  +' where codigoItem=IdCodigoItem ');
mcinst:=' and ';
if trim(MDT1.Text)<>'/  /' then
   begin
   ADO_Itens.SQL.Add(mcinst+' HoraInicioCupom>:datini');
   ADO_Itens.Parameters.ParamByName('datini').Value:=StrToDateTime(mdt1.Text+' 00:00:01');
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   ADO_Itens.SQL.Add(mcinst+' HoraInicioCupom<:datfin');
   ADO_Itens.Parameters.ParamByName('datfin').Value:=StrToDateTime(mdt2.Text+' 23:59:59');
   mcinst:=' and ';
   end;

ADO_Itens.SQL.Add(' Order by contCOOCupom,CodigoItem,Quantidade');
try
   ADO_Itens.Open;
except
   ADO_Itens.SQL.SaveToFile('c:\sql.txt');
   exit;
   end;


// termino



DM1.Query5.close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select P1CHAVE,P1TOTALL,P1NUMCF,P1DATACF,P1STATUS,P1LOTSEQ,P1CODEMP,P1ORDEM '
                  +', P1TOTTRI,P1TOTRET,P1TOTISE,P1VLRDES from CADP01 where '
                  +' P1CODEMP=0'+IntToStr(codemp)
                  +'  ');
mcinst:=' and ';
if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.Add(mcinst+' P1DATACF>=:datini');
   DM1.Query5.ParamByName('datini').Value:=StrToDate(mdt1.Text);
   mcinst:=' and ';
   end;
if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query5.SQL.Add(mcinst+' P1DATACF<=:datfin');
   DM1.Query5.ParamByName('datfin').Value:=StrToDate(mdt2.Text);
   mcinst:=' and ';
   end;

DM1.Query5.SQL.Add(' order by P1NUMCF ');
try
   DM1.Query5.Open;
except
   DM1.Query5.SQL.SaveToFile('c:\sql2.txt');
   end;
lbl_titulo.Caption:='Comparando Cupom x Pedido';
gb_progress.Visible:=true;
mQtdReg:=ADO_Origem.RecordCount+DM1.Query5.RecordCount;
mLidos:=0;
mem_ecferro.Close;
mem_ecferro.Open;

mem_itensAliqDif.Close;
mem_itensAliqDif.Open;

mem_diario.Close;
mem_diario.Open;




While not ADO_Origem.Eof do
   begin
   IF ADO_OrigemValorDesconto.AsFloat=0 then
      mPercDes:=0
   else
      mPercDes:=(ADO_OrigemValorDesconto.AsFloat*100) / ADO_OrigemSubTotal.AsFloat;

   mLidos:=mLidos+1;
   Gauge1.Progress:=mLidos*100 div mQtdReg;
   Frm_LivMemFiscal.Update;
   if not DM1.Query5.Locate('P1NUMCF',ADO_OrigemcontCOO.AsInteger,[]) then
      begin
      mem_ecferro.Append;
      mem_ecferroCENUMCUP.Value  :=ADO_OrigemcontCOO.AsInteger;
      mem_ecferroCEDATCUP.Value  :=ADO_OrigemHoraInicio.AsDateTime;
      mem_ecferroCEVALORCF.Value :=ADO_OrigemTotal.AsFloat;
      mem_ecferroCEVALORPED.Value:=0;
      mem_ecferroOBS.Value:='Não Encontrado Pedido Correspondente';
      mem_ecferro.Post;
      end
   else if DM1.Query5.fieldbyName('P1STATUS').AsInteger>=valint(mstatus_excluido) then
      begin

      mem_ecferro.Append;
      mem_ecferroCENUMCUP.Value  :=ADO_OrigemcontCOO.AsInteger;
      mem_ecferroCEDATCUP.Value  :=ADO_OrigemHoraInicio.AsDateTime;
      mem_ecferroCEVALORCF.Value :=ADO_OrigemTotal.AsFloat;
      mem_ecferroCEVALORPED.Value:=DM1.Query5.fieldbyName('P1TOTALL').AsFloat;
      mem_ecferroOBS.Value:='**Pedido Cancelado**';
      if Arredonda(ADO_OrigemTotal.AsFloat,2)<>Arredonda(DM1.Query5.fieldbyName('P1TOTALL').AsFloat,2) then
         mem_ecferroOBS.Value       :=' Valor Diferente';
      mem_ecferro.Post;
      end
   else if Arredonda(ADO_OrigemTotal.AsFloat,2)<>Arredonda(DM1.Query5.fieldbyName('P1TOTALL').AsFloat,2) then
      begin
      mem_ecferro.Append;
      mem_ecferroCENUMCUP.Value  :=ADO_OrigemcontCOO.AsInteger;
      mem_ecferroCEDATCUP.Value  :=ADO_OrigemHoraInicio.AsDateTime;
      mem_ecferroCEVALORCF.Value :=ADO_OrigemTotal.AsFloat;
      mem_ecferroCEVALORPED.Value:=DM1.Query5.fieldbyName('P1TOTALL').AsFloat;
      mem_ecferroOBS.Value       :='Valor do Cupom Difere do Valor do Pedido';
      mem_ecferro.Post;
      end;

//   if (DM1.Query5.FieldByName('P1VLRDES').AsFloat>0)  then
//      begin
      mem_itens.Close;
      mem_itens.Open;

      if ADO_Itens.Locate('contCOOCupom',DM1.Query5.fieldbyName('P1NUMCF').AsInteger,[]) then
         begin


         mMaiorValor:=0;
         mDescResta:=ADO_OrigemValorDesconto.AsFloat;
         While (not ADO_Itens.Eof) and (ADO_ItenscontCOOCupom.AsInteger=DM1.Query5.fieldbyName('P1NUMCF').AsInteger) do
            begin
            mem_itens.Append;
            mem_itensITEM_NUMCUP.AsInteger  :=DM1.Query5.fieldbyName('P1NUMCF').AsInteger;
            mem_itensITEM_CODALIQ.AsString  :=ADO_Itensaliq.AsString;
            mem_itensITEM_CODPRO.AsString   :=ADO_ItensCodigo.AsString;
            mem_itensITEM_VALDES.AsFloat    :=truncar( (ADO_ItensValorTotal.Value*mPercDes/100),2);
            mem_itensITEM_TOTLIQ.AsFloat    :=ADO_ItensValorTotal.AsFloat-mem_itensITEM_VALDES.AsFloat;
            mem_itensITEM_VALORITEM.AsFloat :=ADO_ItensValorTotal.AsFloat;
            mem_itensITEM_QUANTIDADE.AsFloat:=ADO_ItensQuantidade.AsFloat;
            mem_itens.Post;
            mDescResta:=mDescResta-mem_itensITEM_VALDES.AsFloat;
            if ADO_ItensValorTotal.AsFloat>mMaiorValor then
               begin
               mMaiorValor:=ADO_ItensValorTotal.AsFloat;
               mPosMValor:=mem_Itens.GetBookmark;
               end;

            ADO_Itens.Next;
            end;
         if mDescResta<>0 then
            begin
            mem_itens.GotoBookmark(mPosMValor);
            mem_itens.Edit;
            mem_itensITEM_VALDES.AsFloat:=mem_itensITEM_VALDES.AsFloat+mDescResta;
            mem_itensITEM_TOTLIQ.AsFloat:=mem_itensITEM_TOTLIQ.AsFloat-mDescResta;
            mem_itens.Post;
            end;

  //       end;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select P2TOTLIQ,P2CODPRO,P2SIT,P2ALIQ,P2QTD,P2QTD*P2PRECO AS TOTCALC,P2TOTDES'
                        +'  from CADP02 '
                        +' where P2CHAVE=:CHAVE '
                        +' and P2ORDEM=:ORDEM '
                        +' and P2LOTSEQ=:LOTSEQ '
                        +' and P2CODEMP=:CODEMP ');
      DM1.Query2.ParamByName('CHAVE').AsFloat:=DM1.Query5.fieldbyName('P1CHAVE').AsFloat;
      DM1.Query2.ParamByName('ORDEM').AsFloat:=DM1.Query5.fieldbyName('P1ORDEM').AsFloat;
      DM1.Query2.ParamByName('LOTSEQ').AsFloat:=DM1.Query5.fieldbyName('P1LOTSEQ').AsFloat;
      DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Query5.fieldbyName('P1CODEMP').AsFloat;

      DM1.Query2.Open;


      mem_itens.First;


      While not DM1.Query2.Eof do
         begin
         mObs:='';
         if mem_itens.Locate('ITEM_NUMCUP;ITEM_CODPRO;ITEM_QUANTIDADE',
                            VarArrayOf([DM1.Query5.fieldbyName('P1NUMCF').AsInteger,DM1.Query2.fieldbyName('P2CODPRO').AsString
                               ,DM1.Query2.fieldbyName('P2QTD').AsFloat]),[]) then
            begin

            if mem_diario.Locate('MD_DATA',DM1.Query5.fieldbyName('P1DATACF').AsDateTime,[]) then
               mem_diario.Edit
            else
               begin
               mem_diario.Append;
               mem_diarioMD_DATA.Value       :=DM1.Query5.fieldbyName('P1DATACF').AsDateTime;
               mem_diarioMD_MFD_TOTRET.Value :=0;
               mem_diarioMD_MFD_TOTTRIB.Value:=0;
               mem_diarioMD_MP_TOTTRIB.Value :=0;
               mem_diarioMD_MP_TOTRET.Value  :=0;
               end;
            if mem_itensITEM_CODALIQ.AsFloat=0 then
               mem_diarioMD_MP_TOTRET.Value:=mem_diarioMD_MP_TOTRET.Value+mem_itensITEM_TOTLIQ.AsFloat
            else
               mem_diarioMD_MP_TOTTRIB.Value:=mem_diarioMD_MP_TOTTRIB.Value+mem_itensITEM_TOTLIQ.AsFloat;

            if mem_itensITEM_CODALIQ.AsFloat=0 then
               mem_diarioMD_MFD_TOTRET.Value:=mem_diarioMD_MFD_TOTRET.Value+DM1.Query2.FieldByName('P2TOTLIQ').asfloat
            else
               mem_diarioMD_MFD_TOTTRIB.Value:=mem_diarioMD_MFD_TOTTRIB.Value+DM1.Query2.FieldByName('P2TOTLIQ').asfloat;

            mem_diario.Post;

            if Arredonda(mem_itensITEM_TOTLIQ.AsFloat,2)<>Arredonda(DM1.Query2.FieldByName('P2TOTLIQ').asfloat,2) then
               mObs:=mObs+'ECF: '+FormatFloat(mcasas, mem_itensITEM_TOTLIQ.AsFloat)+' Pedido: '
                    +FormatFloat(mcasas, DM1.Query2.FieldByName('P2TOTLIQ').asfloat)+' Valor errado ';
            if mem_itensITEM_CODALIQ.Value<>DM1.Query2.FieldByName('P2ALIQ').asfloat then
               mObs:=mObs+' ECF: '+mem_itensITEM_CODALIQ.AsString+' PEDIDO: '+DM1.Query2.FieldByName('P2ALIQ').asString+' Aliq Difer ';
            if trim(mObs)<>'' then
               begin
               mem_itensAliqDif.Append;
               mem_itensAliqDifITEM_NUMCUP.Value:=DM1.Query5.FieldbyName('P1NUMCF').AsInteger;
               mem_itensAliqDifITEM_DATCUP.Value:=DM1.Query5.FieldbyName('P1DATACF').AsDateTime;
               mem_itensAliqDifITEM_CODALIQ.Value:=mem_itensITEM_CODALIQ.AsString;
               mem_itensAliqDifITEM_VALORITEM.AsFloat:=DM1.Query2.fieldbyName('P2TOTLIQ').AsFloat;
               mem_itensAliqDifITEM_CUPOM_ALIQ.AsFloat:=DM1.Query2.fieldbyName('P2ALIQ').AsFloat;
               mem_itensAliqDifITEM_CUPOM_VALOR.AsFloat:=mem_itensITEM_TOTLIQ.AsFloat;
               mem_itensAliqDifITEM_OBS.Value:=mObs;
               mem_itensAliqDif.Post;
               end;
            end
         else
            begin
            mem_itensAliqDif.Append;
            mem_itensAliqDifITEM_NUMCUP.Value:=DM1.Query5.FieldbyName('P1NUMCF').AsInteger;
            mem_itensAliqDifITEM_DATCUP.Value:=DM1.Query5.FieldbyName('P1DATACF').AsDateTime;
            mem_itensAliqDifITEM_VALORITEM.AsFloat:=DM1.Query2.fieldbyName('P2TOTLIQ').AsFloat;
            mem_itensAliqDifITEM_CUPOM_ALIQ.AsFloat:=DM1.Query2.fieldbyName('P2ALIQ').AsFloat;
            mem_itensAliqDifITEM_OBS.Value:=mObs;
            mem_itensAliqDif.Post;
            end;

         DM1.Query2.Next;
         end;
      end;
   ADO_Origem.Next;
   end;
DM1.Query5.First;

While not DM1.Query5.Eof do
   begin
   mLidos:=mLidos+1;
   Gauge1.Progress:=mLidos*100 div mQtdReg;
   Frm_LivMemFiscal.Update;
   if DM1.Query5.FieldByName('P1STATUS').AsInteger=9 then
      begin
      DM1.Query5.Next;
      Continue;
      end;
   if not ADO_Origem.Locate('ContCOO',DM1.Query5.fieldbyName('P1NUMCF').AsInteger,[]) then
      begin
      mem_ecferro.Append;
      mem_ecferroCENUMCUP.Value  :=DM1.Query5.fieldbyName('P1NUMCF').AsInteger;
      mem_ecferroCEDATCUP.Value  :=DM1.Query5.fieldbyName('P1DATACF').AsDateTime;
      mem_ecferroCEVALORCF.Value :=0;
      mem_ecferroCEVALORPED.Value:=DM1.Query5.fieldbyName('P1TOTALL').AsFloat;
      mem_ecferroOBS.Value:='Não Encontrado Cupom Fiscal Correspondente';
      mem_ecferro.Post;
      end
   else if Arredonda(ADO_OrigemTotal.AsFloat,2)<>Arredonda(DM1.Query5.fieldbyName('P1TOTALL').AsFloat,2) then
      begin
      mem_ecferro.Append;
      mem_ecferroCENUMCUP.Value  :=ADO_OrigemcontCOO.AsInteger;
      mem_ecferroCEDATCUP.Value  :=ADO_OrigemHoraInicio.AsDateTime;
      mem_ecferroCEVALORCF.Value :=ADO_OrigemTotal.AsFloat;
      mem_ecferroCEVALORPED.Value:=DM1.Query5.fieldbyName('P1TOTALL').AsFloat;
      mem_ecferroOBS.Value       :='Valor do Pedido Cupom Difere do Valor do Cupom';
      mem_ecferro.Post;
      end;
   DM1.Query5.Next;
   end;
mem_diario.First;
mtot_mfd_tottrib:=0;
mtot_mfd_totret:=0;
mtot_mp_tottrib:=0;
mtot_mp_totret:=0;

While not mem_diario.Eof do
   begin
   mtot_mfd_tottrib:=mtot_mfd_tottrib+mem_diarioMD_MFD_TOTTRIB.AsFloat;
   mtot_mfd_totret:=mtot_mfd_totret+mem_diarioMD_MFD_TOTRET.AsFloat;
   mtot_mp_tottrib:=mtot_mp_tottrib+mem_diarioMD_MP_TOTTRIB.AsFloat;
   mtot_mp_totret:=mtot_mp_totret+mem_diarioMD_MP_TOTRET.AsFloat;
   mem_diario.Next;
   end;
tot_mfd_totret.Caption:=FormatFloat(mcasas, mtot_mfd_totret);
tot_mp_totret.Caption :=FormatFloat(mcasas, mtot_mp_totret);
ret_difer.Caption     :=FormatFloat(mcasas, mtot_mfd_totret-mtot_mp_totret);

tot_mfd_tottrib.Caption:=FormatFloat(mcasas, mtot_mfd_tottrib);
tot_mp_tottrib.Caption :=FormatFloat(mcasas, mtot_mp_tottrib);
trib_difer.Caption     :=FormatFloat(mcasas, mtot_mfd_tottrib-mtot_mp_tottrib);


lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
lbl_dathor.Caption:='Data/Hora: '+FormatDateTime(fdathor, now);




RLReport1.PreviewModal;

end;

procedure TFrm_LivMemFiscal.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_LivMemFiscal.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_LivMemFiscal.FormCreate(Sender: TObject);
var
mdatai: TDateTime;
begin
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   mdatai:=pdatasis
else
   mdatai:=fdatafinal(1,pdatasis-28);
mdatai:=StrtodAte('01/'+FormatDatetime('mm/yyyy',mdatai));
MDT1.Text   :=FormatDatetime(fdt2, mdatai);
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(mdatai));

tsRelatorio.TabVisible:=false;
RLCabGer.Borders.DrawLeft:=true;
RLCabGer.Borders.DrawRight:=true;
RLCabGer.Borders.DrawTop:=true;
RLCabGer.Borders.DrawBottom:=true;

RLCabObs.Borders.DrawRight:=true;
RLCabObs.Borders.DrawLeft:=true;
RLCabObs.Borders.DrawBottom:=true;

RlCabDet.Borders.DrawRight:=true;
RlCabDet.Borders.DrawLeft:=true;
RlCabDet.Borders.DrawBottom:=true;

RLDet.Borders.DrawRight:=true;
RLDet.Borders.DrawLeft:=true;
RLDet.Borders.DrawBottom:=true;

lblNumCF.Borders.DrawRight:=true;
lblDatECF.Borders.DrawRight:=true;
lblValorCF.Borders.DrawRight:=true;
lblValorPed.Borders.DrawRight:=true;

edtNumCF.Borders.DrawRight:=true;
edtDatECF.Borders.DrawRight:=true;
edtValorCF.Borders.DrawRight:=true;
edtValorPed.Borders.DrawRight:=true;
mem_ecferroCEDATCUP.DisplayFormat:=fdt2;
mem_ecferroCEVALORCF.DisplayFormat:=mcasas;
mem_ecferroCEVALORPED.DisplayFormat:=mcasas;

end;

procedure TFrm_LivMemFiscal.bbArredondaClick(Sender: TObject);
var
mTotReg,mLidos: Integer;
begin
if Application.MessageBox('Quer Realmente Ajustar os Arredondamentos?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial Maior que Final, invalido!',mtWarning,[mbOk],0);
      Exit;
      end;
   end;


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('SELECT P1NUMCF,P1DATACF,P1CODEMP,P1STATUS,P1VLRDES,P1TOTALL,'
                  +' P1TOTALB,P1TOTDES,P1CHAVE,P1LOTSEQ,P1ORDEM FROM CADP01 '
//                  +' WHERE P1TOTTRI>0 and (P1TOTRET>0 or P1TOTISE>0) '
//                  +' and P1VLRDES>0 and P1STATUS<'+mstatus_excluido+' '

                  +' WHERE P1VLRDES>0 and P1STATUS<'+mstatus_excluido+' '
                  +' and P1CODEMP=0'+IntToStr(codemp));
if trim(MDT1.Text)<>'/  /' then
   DM1.Query3.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query3.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.text))+chr(39));
if fSonumero(edt_chave.Text)<>0  then
   DM1.Query3.SQL.add(' and P1CHAVE=0'+edt_chave.Text);
try
   DM1.Query3.Open;
except
   DM1.Query3.SQL.savetofile('c:\sql.txt');
   end;
mTotReg:=DM1.Query3.RecordCount;
mLidos:=0;
gb_progress.Visible:=true;
while not DM1.Query3.eof do
   begin
   mLidos:=mLidos+1;
   Gauge1.Progress:=mlidos*100 div mTotReg;
   fPgtoRatearDescAcre(0,DM1.Query3.fieldbyName('P1CODEMP').AsInteger,
                         DM1.Query3.fieldbyName('P1LOTSEQ').AsInteger,
                         DM1.Query3.fieldbyName('P1CHAVE').AsInteger,
                         DM1.Query3.fieldbyName('P1ORDEM').AsInteger,
                         (DM1.Query3.fieldbyName('P1TOTALL').AsFloat+DM1.Query3.fieldbyName('P1VLRDES').AsFloat),
                          DM1.Query3.fieldbyName('P1VLRDES').AsFloat,0);
   DM1.Query3.Next;
   end;

MessageDlg('Concluido!',mtInformation,[mbOk],0);

end;




function tFrm_LivMemFiscal.fPgtoRatearDescAcre(pOrigem: Integer;pCodemp,pLotSeq,pChave,pOrdem, pTotBru,pValDes,pValAcre: Real): Boolean;
var
mDiferenca : Real;
mTipo      : Integer; // 0-Desconto 1-Acrescimos
mPercentual: Real;
mTotAbat   : Real;
mValorRat  : Real;
mMaiorValor: Real;
mPosMaiorValor: TBookmark;
// variaves

mPed1_Totall: Real;
mPed1_TotDes: Real;
mPed1_Basen: Real;
mPed1_Basenp: Real;
mPed1_Basenn: Real;
mPed1_Baseni: Real;


mPed1_Icmsn: Real;
mPed1_Icmsnp: Real;
mPed1_Icmsnn: Real;
mPed1_Icmsni: Real;

mPed_BaseIcms:Real;

mPed1_totneg: Real;
mPed1_totpos : Real;
mPed1_totina: Real;
mPed1_tottri: Real;
mPed1_totise: Real;
mPed1_totret: Real;
mPed1_totdi01: Real;
mPed1_totdi02: Real;
mPed1_totdi03: Real;
mPed1_totdivl: Real;
mPed1_piscofn: Real;
mPed1_piscofr: Real;
mPed1_vlrdes : Real;
mPed1_vlracre: Real;
mPed1_comis  : Real;
mPed1_comv02 : Real;
mPed1_comv03 : Real;
mPed1_comv04 : Real;
mPed1_comist : Real;
mPed1_comiss : Real;
mPed1_semcom : Real;
mPed1_comasse: Real;
mPed1_icmsr  : Real;
mPed1_descfin: Real;
mPed1_ipiina : Real;
mPed1_ipipos : Real;
mPed1_ipineg : Real;
mPed1_totcgru: Real;
mPed1_totsgru: Real;
mPed1_comis_extra: Real;
mPed_Total: Real;
mPed_TotDes: Real;
mPed_VlrIcms: Real;
mPed1_totalb: Real;
mPed1_CodEmp: Real;
mPed_sit: String;
begin
if (pValDes>pValAcre) then
   begin
   mtipo:=0;
   mDiferenca:=pValDes-pValAcre;
   end
else
   begin
   mTipo:=1;
   mDiferenca:=pValAcre-pValDes;
   end;
mPercentual:=(mDiferenca*100)/pTotBru;
mTotAbat:=0;
mPed1_Totall:=0;

Tb_Ped02.Close;
Tb_Ped02.sql.clear;
Tb_Ped02.sql.Add('Select * from CADP02 where P2CODEMP='+FloatTostr(pCodemp)
                +' and P2LOTSEQ='+FloatTostr(pLotseq)
                +' and P2CHAVE='+FloatTostr(pChave)
                +' and P2ORDEM='+FloatTostr(pOrdem));
try
   Tb_ped02.Open;
except
   Tb_ped02.sql.savetofile('c:\sql.txt');
   result:=false;
   exit;
   end;

Tb_Ped01.Close;
Tb_Ped01.sql.clear;
Tb_Ped01.sql.Add('Select * from CADP01 where P1CODEMP='+FloatTostr(pCodemp)
                +' and P1LOTSEQ='+FloatTostr(pLotseq)
                +' and P1CHAVE='+FloatTostr(pChave)
                +' and P1ORDEM='+FloatTostr(pOrdem));
try
   Tb_ped01.Open;
except
   Tb_ped01.sql.savetofile('c:\sql.txt');
   result:=false;
   exit;
   end;


mPed1_CodEmp:=Tb_Ped01P1CODEMP.Value;
mPed1_Totall:=Tb_Ped01P1TOTALL.Value;
mPed1_Basen:=Tb_Ped01P1BASEN.Value;
mPed1_Basenp:=Tb_Ped01P1BASENP.Value;
mPed1_Basenn:=Tb_Ped01P1BASENN.Value;
mPed1_Baseni:=Tb_Ped01P1BASENI.Value;

mPed1_Icmsn:=Tb_Ped01P1ICMSN.Value;
mPed1_Icmsnp:=Tb_Ped01P1ICMSNP.Value;
mPed1_Icmsnn:=Tb_Ped01P1ICMSNN.Value;
mPed1_Icmsni:=Tb_Ped01P1ICMSNI.Value;
mPed1_TotDes:=Tb_Ped01P1TOTDES.Value;



While not Tb_Ped02.Eof do
   begin
   if Tb_Ped02P2TOTLIQ.AsFloat>mMaiorValor  then
      begin
      mMaiorValor:=Tb_Ped02P2TOTLIQ.AsFloat;
      mPosMaiorValor:=Tb_Ped02.GetBookmark;
      end;

   Tb_Ped02.Edit;
   mPed_Total:=(Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value);
   mPed_Total:=Arredonda(mPed_Total,2);
   mPed_TotDes:=0;
   if Tb_Ped02P2DESC1.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC1.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;
   if Tb_Ped02P2DESC2.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC2.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;
   if Tb_Ped02P2DESC3.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC3.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;
   mValorRat:=truncar( ((mPed_Total-mPed_TotDes)*mPercentual/100),2);
   if (mTotAbat+mValorRat)>mDiferenca then
      mValorRat:=mDiferenca-mTotAbat;
   mTotAbat:=mTotAbat+mValorRat;





   if mTipo=1 then
      begin
      Tb_Ped02P2ACRERAT.Value:=mValorRat;
      Tb_Ped02P2DESCRAT.Value:=0;
      end
   else
      begin
      Tb_Ped02P2DESCRAT.Value:=mValorRat;
      Tb_Ped02P2ACRERAT.Value:=0;
      end;
   if Tb_Ped02P2ALIQ.AsFloat<>0 then
      begin
      mPed_BaseIcms:=mPed_Total-mPed_TotDes;
      mPed_BaseIcms:=(mPed_BaseIcms-Tb_Ped02P2DESCRAT.AsFloat);
      mPed_VlrIcms :=mPed_BaseIcms*Tb_Ped02P2ALIQ.AsFloat/100;
      mPed_VlrIcms :=arredonda(mPed_VlrIcms,2);
      Tb_Ped02P2BASEN.Value :=mPed_BaseIcms;
      Tb_Ped02P2ICMSN.Value :=mPed_VlrIcms;
      Tb_Ped02P2TOTOUT.Value:=(mPed_Total-mPed_TotDes-Tb_Ped02P2DESCRAT.AsFloat)-mPed_BaseIcms;
      end;

   Tb_Ped02P2TOTDES.Value :=mPed_TotDes+Tb_Ped02P2DESCRAT.Value;
   Tb_Ped02P2TOTLIQ.AsFloat:=Arredonda( (((Tb_Ped02P2QTD.AsFloat*Tb_Ped02P2PRECO.AsFloat)
                                +Tb_Ped02P2ACRERAT.AsFloat)-Tb_Ped02P2TOTDES.AsFloat),2);
   Tb_Ped02.Post;


   Tb_Ped02.Next;
   end;
   // inicio
if (mTotAbat)<mDiferenca then
   begin
   Tb_Ped02.GotoBookmark(mPosMaiorValor);


   Tb_Ped02.Edit;
   mDiferenca:=mDiferenca-mTotAbat;
   if mTipo=1 then // acrescimos
      Tb_Ped02P2ACRERAT.Value:=Tb_Ped02P2ACRERAT.Value+mDiferenca
   else
      Tb_Ped02P2DESCRAT.Value:=Tb_Ped02P2DESCRAT.Value+mDiferenca;

   mPed_Total:=(Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value);
   mPed_Total:=Arredonda(mPed_Total,2);
   mPed_TotDes:=0;
   if Tb_Ped02P2DESC1.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC1.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;
   if Tb_Ped02P2DESC2.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC2.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;
   if Tb_Ped02P2DESC3.AsFloat<>0 then
      begin
      mPed_TotDes:=mPed_TotDes +(  (mPed_Total-mPed_TotDes)*Tb_Ped02P2DESC3.Value/100 );
      mPed_TotDes:=Arredonda(mPed_TotDes,2);
      end;




   if Tb_Ped02P2ALIQ.AsFloat<>0 then
      begin
      mPed_BaseIcms:=mPed_Total-mPed_TotDes;
      mPed_BaseIcms:=(mPed_BaseIcms-Tb_Ped02P2DESCRAT.AsFloat);
        mPed_BaseIcms:=(mPed_BaseIcms-Tb_Ped02P2DESCRAT.AsFloat);
      mPed_VlrIcms :=mPed_BaseIcms*Tb_Ped02P2ALIQ.AsFloat/100;
      mPed_VlrIcms :=arredonda(mPed_VlrIcms,2);
      Tb_Ped02P2BASEN.Value :=mPed_BaseIcms;
      Tb_Ped02P2ICMSN.Value :=mPed_VlrIcms*Tb_Ped02P2ALIQ.AsFloat/100;;
      Tb_Ped02P2TOTOUT.Value:=(mPed_Total-mPed_TotDes-Tb_Ped02P2DESCRAT.AsFloat)-mPed_BaseIcms;
      end;

   if Tb_Ped02P2PCOMIS.AsFloat<>0 then
      begin
      Tb_Ped02P2VCOMIS.Value:=Arredonda( ((mPed_Total-mPed_TotDes)*Tb_Ped02P2PCOMIS.AsFloat/100), 2) ;
      end;

   if Tb_Ped02P2PCOMIS_EXTRA.AsFloat<>0 then
      begin
      Tb_Ped02P2VCOMIS_EXTRA.Value:=Arredonda( ((mPed_Total-mPed_TotDes)*Tb_Ped02P2PCOMIS_EXTRA.AsFloat/100), 2) ;
      end;

   if Tb_Ped02P2ALIPI.AsFloat<>0 then
      begin
      Tb_Ped02P2VALIPI.Value:=Arredonda( ((mPed_Total-mPed_TotDes)*Tb_Ped02P2ALIPI.AsFloat/100), 2) ;
      end;

   Tb_Ped02P2TOTDES.Value :=mPed_TotDes+Tb_Ped02P2DESCRAT.Value;
   Tb_Ped02.Post;

   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM from CADP01 where ');
if not DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
   begin
   if pcodemp<>0 then
      DM1.Query5.SQL.add(' P1CODEMP=0'+FloatToStr(pCodEmp)+' and ')
   else
      DM1.Query5.SQL.add(' P1CODEMP=0'+FloatTostr(mPed1_Codemp)+' and ');
//         DM1.Query5.SQL.add(' P2CODEMP=0'+FloatTostr(Pc_codemppad)+' and ');
   end;
DM1.Query5.SQL.add(' P1LOTSEQ=0'+FloatToStr(pLotSeq));
DM1.Query5.SQL.add(' and P1CHAVE=0'+FloatToStr(pChave));
DM1.Query5.SQL.add(' order by P1ORDEM ');
try
   DM1.Query5.Open;
except
   DM1.Query5.SQL.SaveToFile('c:\sql.txt');
   end;
While not DM1.Query5.Eof do
   begin
   mPed1_totalb :=0;
   mPed1_totdes :=0;
   mPed1_totall :=0;
   mPed1_basen  :=0;
   mPed1_icmsn  :=0;
   mPed1_totneg :=0;
   mPed1_basenn :=0;
   mPed1_icmsnn :=0;
   mPed1_totpos :=0;
   mPed1_basenp :=0;
   mPed1_icmsnp :=0;
   mPed1_totina :=0;
   mPed1_baseni :=0;
   mPed1_icmsni :=0;
   mPed1_tottri :=0;
   mPed1_totise :=0;
   mPed1_totret :=0;
   mPed1_totdi01:=0;
   mPed1_totdi02:=0;
   mPed1_totdi03:=0;
   mPed1_totdivl:=0;
   mPed1_piscofn:=0;
   mPed1_piscofr:=0;
   mPed1_vlrdes :=0;
   mPed1_vlracre:=0;
   mPed1_comis  :=0;
   mPed1_comv02 :=0;
   mPed1_comv03 :=0;
   mPed1_comv04 :=0;
   mPed1_comist :=0;
   mPed1_comiss :=0;
   mPed1_semcom :=0;
   mPed1_comasse:=0;
   mPed1_icmsr  :=0;
   mPed1_descfin:=0;
   mPed1_ipiina :=0;
   mPed1_ipipos :=0;
   mPed1_ipineg :=0;
   mPed1_totcgru:=0;
   mPed1_totsgru:=0;
   mPed1_comis_extra:=0;

   Tb_Ped02.Close;
   Tb_Ped02.sql.clear;
   Tb_Ped02.sql.Add('Select * from CADP02 where P2CODEMP='+Tb_Ped01P1CODEMP.AsString
                   +' and P2LOTSEQ='+Tb_Ped01P1LOTSEQ.AsString
                   +' and P2CHAVE='+Tb_Ped01P1CHAVE.AsString
                   +' and P2ORDEM='+Tb_Ped01P1ORDEM.AsString);
   try
      Tb_ped02.Open;
   except
      Tb_ped02.sql.savetofile('c:\sql.txt');
      result:=false;
      exit;
      end;

   Tb_Ped02.First;
   While not Tb_Ped02.Eof do
      begin
      mPed_Total:=Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value;
      mPed_Total:=Arredonda(mPed_Total,2);
      mPed1_totalb        :=mPed1_totalb+mPed_Total;
      mPed1_totdes        :=mPed1_totdes+Tb_Ped02P2TOTDES.Value;
      mPed1_totall        :=mPed1_totalb-mPed1_totdes;
      mPed1_basen         :=mPed1_basen+Tb_Ped02P2BASEN.Value;
      mPed1_icmsn         :=mPed1_icmsn+Tb_Ped02P2ICMSN.Value;
      mPed1_vlrdes        :=mPed1_vlrdes+Tb_Ped02P2DESCRAT.Value;
      mPed1_vlracre       :=mPed1_vlracre+Tb_Ped02P2ACRERAT.Value;
      mPed1_descfin       :=mPed1_descfin+Tb_Ped02P2VDESCF.Value;
      mPed1_comis  := mPed1_comis+Tb_Ped02P2VCOMIS.Value;
      mPed1_comv02 := mPed1_comv02+Tb_Ped02P2VCOM02.Value;
      mPed1_comv03 := mPed1_comv03+Tb_Ped02P2VCOM03.Value;
      mPed1_comv04 := mPed1_comv04+Tb_Ped02P2VCOM04.Value;
      mPed1_comis_extra:=mPed1_comis_extra+Tb_Ped02P2VCOMIS_EXTRA.Value;
      mPed1_comist := 0;
      mPed1_comiss := 0;
      mPed1_semcom := mPed1_semcom+Tb_Ped02P2SEMCOM.Value;
      mPed1_comasse:= 0;
      mPed1_icmsr  := mPed1_icmsr+Tb_Ped02P2ICMSR.Value;

      mValorRat    := mPed_Total*Tb_Ped02P2DESC1.Value/100;
      mValorRat    := Truncar(mValorRat,DM1.Tb_ParGerPCASAS.AsInteger);
      mPed1_totdi01:=mPed1_totdi01+mValorRat;
      mTotAbat     :=mValorRat;

      mValorRat    :=((mPed_Total-mTotAbat)
                    * Tb_Ped02P2DESC2.Value/100);
      mValorRat    := Truncar(mValorRat,DM1.Tb_ParGerPCASAS.AsInteger);
      mPed1_totdi02:=mPed1_totdi02+mValorRat;
      mTotAbat     :=mTotAbat+mValorRat;

      mValorRat    :=((mPed_Total-mTotAbat)
                    * Tb_Ped02P2DESC3.Value/100);
      mValorRat    := Truncar(mValorRat,DM1.Tb_ParGerPCASAS.AsInteger);
      mPed1_totdi03:=mPed1_totdi03+mValorRat;

      mPed1_totdivl:=mPed1_totdivl+Tb_Ped02P2VALDES.Value;
      if Tb_Ped02P2CODGRU.Value=0 then
         mPed1_totsgru:=mPed1_totsgru+(Tb_Ped02P2TOTLIQ.Value-Tb_Ped02P2DESCRAT.Value+Tb_Ped02P2ACRERAT.Value)
      else
         mPed1_totcgru:=mPed1_totcgru+(Tb_Ped02P2TOTLIQ.Value-Tb_Ped02P2DESCRAT.Value+Tb_Ped02P2ACRERAT.Value);

      mPed1_comiss :=0;

      if Tb_Ped02P2LISTA.AsInteger=2 then
         begin
         mPed1_totneg:=mPed1_totneg+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_basenn:=mPed1_basenn+Tb_Ped02P2BASEN.Value;
         mPed1_icmsnn:=mPed1_icmsnn+Tb_Ped02P2ICMSN.Value;
         mPed1_ipineg:=mPed1_ipineg+Tb_Ped02P2VALIPI.Value;
         end
      else if Tb_Ped02P2LISTA.AsInteger=1 then
         begin
         mPed1_totpos:=mPed1_totpos+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_basenp:=mPed1_basenp+Tb_Ped02P2BASEN.Value;
         mPed1_icmsnp:=mPed1_icmsnp+Tb_Ped02P2ICMSN.Value;
         mPed1_ipipos:=mPed1_ipipos+Tb_Ped02P2VALIPI.Value;
         end
      else
         begin
         mPed1_totina:=mPed1_totina+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_baseni:=mPed1_baseni+Tb_Ped02P2BASEN.Value;
         mPed1_icmsni:=mPed1_icmsni+Tb_Ped02P2ICMSN.Value;
         mPed1_ipiina:=mPed1_ipiina+Tb_Ped02P2VALIPI.Value;
         end;
      mPed_sit:=FormatFloat('000',Tb_Ped02P2SIT.AsFloat);
      if Tb_Ped02P2ALIQ.AsFloat<>0 then
         begin
         mPed1_tottri:=mPed1_tottri+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_piscofn:=mPed1_piscofn+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         end
      else if mPed_sit[2]='4' then
         begin
         mPed1_totise:=mPed1_totise+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_piscofn:=mPed1_piscofn+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         end
      else
         begin
         mPed1_totret:=mPed1_totret+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         mPed1_piscofr:=mPed1_piscofr+(mPed_Total-Tb_Ped02P2TOTDES.Value);
         end;
      mPed1_totdi01:=mPed1_totdi01+Tb_Ped02P2TOTDES.Value;
      Tb_Ped02.Next;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      DM1.Query1.Params.CreateParam(FtString,'P1CODEMP',ptInput);

   DM1.Query1.SQL.Add('Update CADP01 set '
                         +' P1TOTALB =:P1TOTALB '
                         +',P1TOTDES =:P1TOTDES '
                         +',P1TOTALL =:P1TOTALL '
                         +',P1BASEN  =:P1BASEN '
                         +',P1ICMSN  =:P1ICMSN '
                         +',P1TOTPOS =:P1TOTPOS '
                         +',P1TOTNEG =:P1TOTNEG '
                         +',P1TOTINA =:P1TOTINA '
                         +',P1BASENN =:P1BASENN '
                         +',P1ICMSNN =:P1ICMSNN '
                         +',P1BASENP =:P1BASENP '
                         +',P1ICMSNP =:P1ICMSNP '
                         +',P1BASENI =:P1BASENI '
                         +',P1ICMSNI =:P1ICMSNI '
                         +',P1TOTTRI =:P1TOTTRI '
                         +',P1TOTRET =:P1TOTRET '
                         +',P1TOTISE =:P1TOTISE '
                         +',P1TOTDI01=:P1TOTDI01 '
                         +',P1TOTDI02=:P1TOTDI02 '
                         +',P1TOTDI03=:P1TOTDI03 '
                         +',P1TOTDIVL=:P1TOTDIVL '
                         +',P1PISCOFN=:P1PISCOFN '
                         +',P1PISCOFR=:P1PISCOFR '
                         +',P1VLRACRE=:P1VLRACRE '
                         +',P1VLRDES =:P1VLRDES '
                         +',P1COMIS  =:P1COMIS '
                         +',P1COMV02 =:P1COMV02 '
                         +',P1COMV03 =:P1COMV03 '
                         +',P1COMV04 =:P1COMV04 '
                         +',P1COMIST =:P1COMIST '
                         +',P1COMISS =:P1COMISS '
                         +',P1SEMCOM =:P1SEMCOM '
                         +',P1COMASSE=:P1COMASSE '
                         +',P1ICMSR  =:P1ICMSR '
                         +',P1DESCFIN=:P1DESCFIN '
                         +',P1IPIINA =:P1IPIINA '
                         +',P1IPINEG =:P1IPINEG '
                         +',P1IPIPOS =:P1IPIPOS '
                         +',P1TOTCGRU=:P1TOTCGRU '
                         +',P1TOTSGRU=:P1TOTSGRU '
                         +' where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      DM1.Query1.SQL.Add(' P1CODEMP=:P1CODEMP and ');
   DM1.Query1.SQL.Add(' P1LOTSEQ=:P1LOTSEQ ');
   DM1.Query1.SQL.Add(' and P1CHAVE=:P1CHAVE ');
   DM1.Query1.SQL.Add(' and P1ORDEM=:P1ORDEM ');



   DM1.Query1.ParamByName('P1TOTALB').AsFloat   :=mPed1_totalb;
   DM1.Query1.ParamByName('P1TOTDES').AsFloat   :=mPed1_totdes;
   DM1.Query1.ParamByName('P1TOTALL').AsFloat   :=mPed1_totall;
   DM1.Query1.ParamByName('P1BASEN').AsFloat    :=mPed1_basen;
   DM1.Query1.ParamByName('P1ICMSN').AsFloat    :=mPed1_icmsn;
   DM1.Query1.ParamByName('P1TOTPOS').AsFloat   :=mPed1_totpos;
   DM1.Query1.ParamByName('P1TOTNEG').AsFloat   :=mPed1_totneg;
   DM1.Query1.ParamByName('P1TOTINA').AsFloat   :=mPed1_totina;
   DM1.Query1.ParamByName('P1BASENN').AsFloat   :=mPed1_basenn;
   DM1.Query1.ParamByName('P1ICMSNN').AsFloat   :=mPed1_icmsnn;
   DM1.Query1.ParamByName('P1BASENP').AsFloat   :=mPed1_basenp;
   DM1.Query1.ParamByName('P1ICMSNP').AsFloat   :=mPed1_icmsnp;
   DM1.Query1.ParamByName('P1BASENI').AsFloat   :=mPed1_baseni;
   DM1.Query1.ParamByName('P1ICMSNI').AsFloat   :=mPed1_icmsni;
   DM1.Query1.ParamByName('P1TOTTRI').AsFloat   :=mPed1_tottri;
   DM1.Query1.ParamByName('P1TOTRET').AsFloat   :=mPed1_totret;
   DM1.Query1.ParamByName('P1TOTISE').AsFloat   :=mPed1_totise;
   DM1.Query1.ParamByName('P1TOTDI01').AsFloat  :=mPed1_totdi01;
   DM1.Query1.ParamByName('P1TOTDI02').AsFloat  :=mPed1_totdi02;
   DM1.Query1.ParamByName('P1TOTDI03').AsFloat  :=mPed1_totdi03;
   DM1.Query1.ParamByName('P1TOTDIVL').AsFloat  :=mPed1_totdivl;
   DM1.Query1.ParamByName('P1PISCOFN').AsFloat  :=mPed1_piscofn;
   DM1.Query1.ParamByName('P1PISCOFR').AsFloat  :=mPed1_piscofr;
   DM1.Query1.ParamByName('P1VLRACRE').AsFloat  :=mPed1_vlracre;
   DM1.Query1.ParamByName('P1VLRDES').AsFloat   :=mPed1_vlrdes;

   DM1.Query1.ParamByName('P1COMIS').AsFloat    :=mPed1_comis;
   DM1.Query1.ParamByName('P1COMV02').AsFloat   :=mPed1_comv02;
   DM1.Query1.ParamByName('P1COMV03').AsFloat   :=mPed1_comv03;
   DM1.Query1.ParamByName('P1COMV04').AsFloat   :=mPed1_comv04;
   DM1.Query1.ParamByName('P1COMIST').AsFloat   :=mPed1_comist;
   DM1.Query1.ParamByName('P1COMISS').AsFloat   :=mPed1_comiss;
   DM1.Query1.ParamByName('P1SEMCOM').AsFloat   :=mPed1_semcom;
   DM1.Query1.ParamByName('P1COMASSE').AsFloat  :=mPed1_comasse;
   DM1.Query1.ParamByName('P1ICMSR').AsFloat    :=mPed1_icmsr;
   DM1.Query1.ParamByName('P1DESCFIN').AsFloat  :=mPed1_descfin;
   DM1.Query1.ParamByName('P1IPIINA').AsFloat   :=mPed1_ipiina;
   DM1.Query1.ParamByName('P1IPINEG').AsFloat   :=mPed1_ipineg;
   DM1.Query1.ParamByName('P1IPIPOS').AsFloat   :=mPed1_ipipos;
   DM1.Query1.ParamByName('P1TOTCGRU').AsFloat  :=mPed1_totcgru;
   DM1.Query1.ParamByName('P1TOTSGRU').AsFloat  :=mPed1_totsgru;
   if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      DM1.Query1.ParamByName('P1CODEMP').AsFloat   :=DM1.Query5.fieldByName('P1CODEMP').AsFloat;
   DM1.Query1.ParamByName('P1LOTSEQ').AsFloat      :=DM1.Query5.fieldByName('P1LOTSEQ').AsFloat;
   DM1.Query1.ParamByName('P1CHAVE').AsFloat       :=DM1.Query5.fieldByName('P1CHAVE').AsFloat;
   DM1.Query1.ParamByName('P1ORDEM').AsFloat       :=DM1.Query5.fieldByName('P1ORDEM').AsFloat;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      verteclado(0);
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      fmensagem('Erro 3772 ao Gravar o arquivo de Vendas!',0,['0'],0);
      end;
   DM1.Query5.Next;
   end;
result:=true;
end;

procedure TFrm_LivMemFiscal.c(DataSet: TDataSet);
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

procedure TFrm_LivMemFiscal.ADO_ItensCalcFields(DataSet: TDataSet);
begin
{n
if Qr_ECF_Aliq.Locate('CACODALI',valint(ADO_ItensSituacaoTributaria.AsString),[]) then
   ADO_Itensaliq.Value:=Qr_ECF_AliqCAALIQ.AsFloat
else
   ADO_Itensaliq.Value:=0;
   }
if valint(ADO_ItensSituacaoTributaria.AsString)=1 then
   ADO_Itensaliq.Value:=0
else if valint(ADO_ItensSituacaoTributaria.AsString)=2 then
   ADO_Itensaliq.Value:=17
else
   ADO_Itensaliq.Value:=17;

end;

end.
