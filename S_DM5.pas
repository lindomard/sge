unit S_DM5;

interface

uses
  SysUtils, Classes, DB, DBTables,S_DM1,lerarq,dialogs, RxMemDS, DBClient;

type
  TDM5 = class(TDataModule)
    Qr_NS: TQuery;
    Qr_NSNSCODEMP: TFloatField;
    Qr_NSNSNUMERO: TFloatField;
    Qr_NSNSSERIE: TStringField;
    Qr_NSNSCODCLI: TFloatField;
    Qr_NSNSDTEMIS: TDateTimeField;
    Qr_NSNSCFO1: TStringField;
    Qr_NSNSCFO2: TStringField;
    Qr_NSNSCNPJ: TFloatField;
    Qr_NSNSIE: TStringField;
    Qr_NSNSTOTNOTA: TFloatField;
    Qr_NSNSBASENI: TFloatField;
    Qr_NSNSICMSNI: TFloatField;
    Qr_NSNSBASENP: TFloatField;
    Qr_NSNSICMSNP: TFloatField;
    Qr_NSNSBASENN: TFloatField;
    Qr_NSNSICMSNN: TFloatField;
    Qr_NSNSBASERI: TFloatField;
    Qr_NSNSICMSRI: TFloatField;
    Qr_NSNSBASERP: TFloatField;
    Qr_NSNSICMSRP: TFloatField;
    Qr_NSNSBASERN: TFloatField;
    Qr_NSNSICMSRN: TFloatField;
    Qr_NSNSTOTPROI: TFloatField;
    Qr_NSNSTOTPROP: TFloatField;
    Qr_NSNSTOTPRON: TFloatField;
    Qr_NSNSBASENRI: TFloatField;
    Qr_NSNSICMSNRI: TFloatField;
    Qr_NSNSBASENRP: TFloatField;
    Qr_NSNSICMSNRP: TFloatField;
    Qr_NSNSBASENRN: TFloatField;
    Qr_NSNSICMSNRN: TFloatField;
    Qr_NSNSALIQ: TFloatField;
    Qr_NSNSIPII: TFloatField;
    Qr_NSNSIPIP: TFloatField;
    Qr_NSNSIPIN: TFloatField;
    Qr_NSNSFRETE: TFloatField;
    Qr_NSNSTOTISEN: TFloatField;
    Qr_NSNSCHAVEP: TFloatField;
    Qr_NSNSTOTNOR: TFloatField;
    Qr_NSNSTOTRET: TFloatField;
    Qr_NSuf: TStringField;
    Qr_NSinscricao: TStringField;
    Qr_NSNSBASEN: TFloatField;
    Qr_NSNSICMSN: TFloatField;
    Qr_NSNSALIQ2: TFloatField;
    Qr_NSNSPISCOFN: TFloatField;
    Qr_NSNSPISCOFR: TFloatField;
    Src_NS: TDataSource;
    Qr_Ne: TQuery;
    Qr_Neuf: TStringField;
    Src_NE: TDataSource;
    Qr_NSNSSUBSER: TStringField;
    Qr_NSNSMODELO: TStringField;
    Qr_PSint: TQuery;
    Qr_PSintP2ITEM: TFloatField;
    Qr_PSintP2CODPRO: TFloatField;
    Qr_PSintP2QTD: TFloatField;
    Qr_PSintP2PRECO: TFloatField;
    Qr_PSintP2TOTDES: TFloatField;
    Qr_PSintP2BASEN: TFloatField;
    Qr_PSintP2BASER: TFloatField;
    Qr_PSintP2ALIQ: TFloatField;
    Qr_PSintP2ALIPI: TFloatField;
    Qr_PSintP2ALIQNR: TFloatField;
    Qr_PSintPDNOME: TStringField;
    Qr_PSintPDUND: TStringField;
    Qr_PSintP2TABELA: TStringField;
    Qr_PSintP2SIT: TStringField;
    Qr_Neinscricao: TStringField;
    Qr_PsintE: TQuery;
    Qr_PsintEPF2ITEM: TFloatField;
    Qr_PsintEPF2CODPRO: TFloatField;
    Qr_PsintEPF2QTDP: TFloatField;
    Qr_PsintEPF2PU: TFloatField;
    Qr_PsintEPF2BASEN: TFloatField;
    Qr_PsintEPF2BASER: TFloatField;
    Qr_PsintEPF2ALIQ: TFloatField;
    Qr_PsintEPF2ALIPI: TFloatField;
    Qr_PsintEPF2IPI: TFloatField;
    Qr_PsintEPF2ALIQNR: TFloatField;
    Qr_PsintEPF2TAB: TStringField;
    Qr_PsintEPF2SIT: TStringField;
    Qr_PsintEPDNOME: TStringField;
    Qr_PsintEPDUND: TStringField;
    Qr_NSNSTIPO: TFloatField;
    Qr_NSNSORDEMP: TFloatField;
    Qr_NSNSSTATUS: TFloatField;
    Qr_PSintP2LISTA: TFloatField;
    Qr_PsintEPF2TOTDES: TFloatField;
    Qr_PsintEPF2LISTA: TFloatField;
    Qr_NScgc: TStringField;
    Qr_NSNSCODECF: TFloatField;
    Qr_NSNSDATCUP: TDateTimeField;
    Qr_NSNSSITCUP: TFloatField;
    Qr_NSNSTOTOUT: TFloatField;
    Qr_NSNSLOTSEQ_CP: TFloatField;
    Tb_R502: TTable;
    Tb_R512: TTable;
    Tb_R532: TTable;
    Tb_R542: TTable;
    Tb_R752: TTable;
    Tb_RE: TTable;
    Tb_RSE: TTable;
    Tb_RSECFO: TStringField;
    Tb_RSEUF: TStringField;
    Tb_RSEALIQ: TFloatField;
    Tb_RSEVLRCONTABIL: TFloatField;
    Tb_RSEBASE01: TFloatField;
    Tb_RSEVALOR01: TFloatField;
    Tb_RSEBASE02: TFloatField;
    Tb_RSEVALOR02: TFloatField;
    Tb_RSEBASE03: TFloatField;
    Tb_RSEVALOR03: TFloatField;
    Tb_RSEBASE04: TFloatField;
    Tb_RSEVALOR04: TFloatField;
    Tb_RSEBASE05: TFloatField;
    Tb_RSEVALOR05: TFloatField;
    Tb_RsCFO: TTable;
    Tb_RsCFOCFO: TFloatField;
    Tb_RsCFOTOTNOTA: TFloatField;
    Tb_RsCFOBASEN: TFloatField;
    Tb_RsCFOICMSN: TFloatField;
    Tb_RsCFOBASER: TFloatField;
    Tb_RsCFOICMSR: TFloatField;
    Tb_RsCFOISENTAS: TFloatField;
    Tb_RsCFOOUTRAS: TFloatField;
    Tb_RsCFOIPI: TFloatField;
    Tb_R502R50SEQ: TFloatField;
    Tb_R502R50TIPO: TStringField;
    Tb_R502R50NUMERO: TFloatField;
    Tb_R502R50CFO: TFloatField;
    Tb_R502R50CGC: TFloatField;
    Tb_R502R50IE: TStringField;
    Tb_R502R50DTEMIS: TDateField;
    Tb_R502R50UF: TStringField;
    Tb_R502R50MODELO: TStringField;
    Tb_R502R50SERIE: TStringField;
    Tb_R502R50SUBSERIE: TStringField;
    Tb_R502R50VALOR: TFloatField;
    Tb_R502R50BASE: TFloatField;
    Tb_R502R50ICMS: TFloatField;
    Tb_R502R50ISENTAS: TFloatField;
    Tb_R502R50OUTRAS: TFloatField;
    Tb_R502R50ALIQ: TFloatField;
    Tb_R502R50SIT: TStringField;
    Tb_R512R51TIPO: TStringField;
    Tb_R512R51NUMERO: TFloatField;
    Tb_R512R51CFO: TFloatField;
    Tb_R512R51CGC: TFloatField;
    Tb_R512R51DTEMIS: TDateField;
    Tb_R512R51UF: TStringField;
    Tb_R512R51SERIE: TStringField;
    Tb_R512R51SUBSERIE: TStringField;
    Tb_R512R51VALOR: TFloatField;
    Tb_R512R51VALORIPI: TFloatField;
    Tb_R512R51ISENTAS: TFloatField;
    Tb_R512R51OUTRAS: TFloatField;
    Tb_R512R51SIT: TStringField;
    Tb_R532R53NUMERO: TFloatField;
    Tb_R532R53CFO: TFloatField;
    Tb_R532R53CGC: TFloatField;
    Tb_R532R53IE: TStringField;
    Tb_R532R53DTEMIS: TDateField;
    Tb_R532R53UF: TStringField;
    Tb_R532R53MODELO: TStringField;
    Tb_R532R53SERIE: TStringField;
    Tb_R532R53BASE: TFloatField;
    Tb_R532R53ICMSR: TFloatField;
    Tb_R532R53DESP: TFloatField;
    Tb_R532R53SIT: TStringField;
    Tb_R532R53SUBSERIE: TStringField;
    Tb_R532R53TIPO: TStringField;
    Tb_R752R75CODIGO: TFloatField;
    Tb_R752R75DATAI: TDateField;
    Tb_R752R75DATAF: TDateField;
    Tb_R752R75CODNCM: TStringField;
    Tb_R752R75NOME: TStringField;
    Tb_R752R75UND: TStringField;
    Tb_R752R75SIT: TStringField;
    Tb_R752R75IPI: TFloatField;
    Tb_R752R75ICMS: TFloatField;
    Tb_R752R75REDUT: TFloatField;
    Tb_R752R75BASER: TFloatField;
    Tb_R512R51INSCRICAO: TStringField;
    Tb_R542R54SEQ: TFloatField;
    Tb_R542R54TIPO: TStringField;
    Tb_R542R54NUMERO: TFloatField;
    Tb_R542R54ITEM: TFloatField;
    Tb_R542R54CGC: TFloatField;
    Tb_R542R54MODELO: TStringField;
    Tb_R542R54SERIE: TStringField;
    Tb_R542R54SUBSERIE: TStringField;
    Tb_R542R54CFO: TFloatField;
    Tb_R542R54CODIGO: TFloatField;
    Tb_R542R54QTD: TFloatField;
    Tb_R542R54VALOR: TFloatField;
    Tb_R542R54DESC: TFloatField;
    Tb_R542R54BASE: TFloatField;
    Tb_R542R54BASER: TFloatField;
    Tb_R542R54IPI: TFloatField;
    Tb_R542R54AL: TFloatField;
    Tb_R542R54SITTRI: TStringField;
    Tb_R10: TTable;
    Tb_R10T10_TIPO: TStringField;
    Tb_R10T10_CNPJ: TStringField;
    Tb_R10T10_IE: TStringField;
    Tb_R10T10_RAZAOSOCIAL: TStringField;
    Tb_R10T10_MUNICIPIO: TStringField;
    Tb_R10T10_UF: TStringField;
    Tb_R10T10_FAX: TStringField;
    Tb_R10T10_DATAINICIAL: TDateTimeField;
    Tb_R10T10_DATAFINAL: TDateTimeField;
    Tb_R10T10_CODCONV: TStringField;
    Tb_R10T10_CODNATOP: TStringField;
    Tb_R10T10_CODFIN: TStringField;
    Tb_R10T10_CH_FALTAS: TFloatField;
    Tb_R10T10_TOTR10: TFloatField;
    Tb_R10T10_TOTR11: TFloatField;
    Tb_R10T10_TOTR50: TFloatField;
    Tb_R10T10_TOTR51: TFloatField;
    Tb_R10T10_TOTR53: TFloatField;
    Tb_R10T10_TOTR54: TFloatField;
    Tb_R10T10_TOTR55: TFloatField;
    Tb_R10T10_TOTR60: TFloatField;
    Tb_R10T10_TOTR61: TFloatField;
    Tb_R10T10_TOTR70: TFloatField;
    Tb_R10T10_TOTR71: TFloatField;
    Tb_R10T10_TOTR74: TFloatField;
    Tb_R10T10_TOTR75: TFloatField;
    Tb_R10T10_TOTR90: TFloatField;
    Tb_R10T10_TOTA10: TFloatField;
    Tb_R10T10_TOTA11: TFloatField;
    Tb_R10T10_TOTA50: TFloatField;
    Tb_R10T10_TOTA51: TFloatField;
    Tb_R10T10_TOTA53: TFloatField;
    Tb_R10T10_TOTA54: TFloatField;
    Tb_R10T10_TOTA55: TFloatField;
    Tb_R10T10_TOTA60: TFloatField;
    Tb_R10T10_TOTA61: TFloatField;
    Tb_R10T10_TOTA70: TFloatField;
    Tb_R10T10_TOTA71: TFloatField;
    Tb_R10T10_TOTA74: TFloatField;
    Tb_R10T10_TOTA75: TFloatField;
    Tb_R10T10_TOTA90: TFloatField;
    Tb_R11: TTable;
    Tb_R11T11_TIPO: TStringField;
    Tb_R11T11_LOGRADOURO: TStringField;
    Tb_R11T11_NUMERO: TStringField;
    Tb_R11T11_COMPLEMENTO: TStringField;
    Tb_R11T11_BAIRRO: TStringField;
    Tb_R11T11_CEP: TStringField;
    Tb_R11T11_NOMECONTATO: TStringField;
    Tb_R11T11_TELEFONE: TStringField;
    Tb_R50: TTable;
    Tb_R50T50_TIPO: TStringField;
    Tb_R50T50_CNPJ: TStringField;
    Tb_R50T50_IE: TStringField;
    Tb_R50T50_DATA: TDateTimeField;
    Tb_R50T50_DATA_REF: TDateTimeField;
    Tb_R50T50_UF: TStringField;
    Tb_R50T50_MODELO: TStringField;
    Tb_R50T50_SERIE: TStringField;
    Tb_R50T50_SUBSERIE: TStringField;
    Tb_R50T50_NUMERO: TFloatField;
    Tb_R50T50_CFOP: TFloatField;
    Tb_R50T50_VLTOTAL: TFloatField;
    Tb_R50T50_BCICMS: TFloatField;
    Tb_R50T50_ICMS: TFloatField;
    Tb_R50T50_ISENTAS: TFloatField;
    Tb_R50T50_OUTRAS: TFloatField;
    Tb_R50T50_ALIQUOTA: TFloatField;
    Tb_R50T50_SITUACAO: TStringField;
    Tb_R50T50_REPETIDA: TFloatField;
    Tb_R50T50_EMITENTE: TStringField;
    Tb_R50T50_ENTSAI: TStringField;
    Tb_R50T50_SEQUENCIA: TFloatField;
    Tb_R51: TTable;
    Tb_R51T51_TIPO: TStringField;
    Tb_R51T51_CNPJ: TStringField;
    Tb_R51T51_IE: TStringField;
    Tb_R51T51_DATA: TDateTimeField;
    Tb_R51T51_DATA_REF: TDateTimeField;
    Tb_R51T51_UF: TStringField;
    Tb_R51T51_SERIE: TStringField;
    Tb_R51T51_SUBSERIE: TStringField;
    Tb_R51T51_NUMERO: TFloatField;
    Tb_R51T51_CFOP: TFloatField;
    Tb_R51T51_VLTOTAL: TFloatField;
    Tb_R51T51_VLIPI: TFloatField;
    Tb_R51T51_ISENTAS: TFloatField;
    Tb_R51T51_OUTRAS: TFloatField;
    Tb_R51T51_BRANCOS: TStringField;
    Tb_R51T51_SITUACAO: TStringField;
    Tb_R53: TTable;
    Tb_R53T53_TIPO: TStringField;
    Tb_R53T53_CNPJ: TStringField;
    Tb_R53T53_IE: TStringField;
    Tb_R53T53_DATA: TDateTimeField;
    Tb_R53T53_DATA_REF: TDateTimeField;
    Tb_R53T53_UF: TStringField;
    Tb_R53T53_MODELO: TStringField;
    Tb_R53T53_SERIE: TStringField;
    Tb_R53T53_SUBSERIE: TStringField;
    Tb_R53T53_NUMERO: TFloatField;
    Tb_R53T53_CFOP: TFloatField;
    Tb_R53T53_BCICMSST: TFloatField;
    Tb_R53T53_ICMSRETIDO: TFloatField;
    Tb_R53T53_DESPACES: TFloatField;
    Tb_R53T53_SITUACAO: TStringField;
    Tb_R53T53_EMITENTE: TStringField;
    Tb_R53T53_CODANT: TStringField;
    Tb_R53T53_BRANCOS: TStringField;
    Tb_R54: TTable;
    Tb_R75: TTable;
    Tb_R54T54_ENTSAI: TStringField;
    Tb_R54T54_DATA: TDateTimeField;
    Tb_R54T54_SEQUENCIA: TFloatField;
    Tb_R54T54_DATA_REF: TDateTimeField;
    Tb_R54T54_SUBSERIE: TStringField;
    Tb_R54T54_TIPO: TStringField;
    Tb_R54T54_CNPJ: TStringField;
    Tb_R54T54_MODELO: TStringField;
    Tb_R54T54_SERIE: TStringField;
    Tb_R54T54_NUMERO: TFloatField;
    Tb_R54T54_CFOP: TFloatField;
    Tb_R54T54_CST: TStringField;
    Tb_R54T54_ITEM: TStringField;
    Tb_R54T54_CODPROD: TStringField;
    Tb_R54T54_QUANTIDADE: TFloatField;
    Tb_R54T54_VLPRODUTO: TFloatField;
    Tb_R54T54_VLDESCONTO: TFloatField;
    Tb_R54T54_BCICMS: TFloatField;
    Tb_R54T54_BCICMSST: TFloatField;
    Tb_R54T54_VLIPI: TFloatField;
    Tb_R54T54_ALIQ: TFloatField;
    Tb_R75T75_CODPROD: TStringField;
    Tb_R75T75_TIPO: TStringField;
    Tb_R75T75_DATAINICIAL: TDateTimeField;
    Tb_R75T75_DATAFINAL: TDateTimeField;
    Tb_R75T75_CODNCM: TStringField;
    Tb_R75T75_DESCRICAO: TStringField;
    Tb_R75T75_UNID: TStringField;
    Tb_R75T75_SITTRI: TStringField;
    Tb_R75T75_ALIQUOTAIPI: TFloatField;
    Tb_R75T75_ALIQUOTAICMS: TFloatField;
    Tb_R75T75_REDBCICMS: TFloatField;
    Tb_R75T75_BCICMSST: TFloatField;
    Tb_R75T75_SELECION: TFloatField;
    Tb_R75T75_IVA: TFloatField;
    Tb_R75T75_REPETIDO: TFloatField;
    Qr_PSintP2CFO: TFloatField;
    Qr_PSintP2ICMSN: TFloatField;
    Qr_PSintP2ICMSNR: TFloatField;
    Qr_Ser: TQuery;
    Qr_SerP2SITEM: TFloatField;
    Qr_SerP2SCODPRO: TFloatField;
    Qr_SerP2SQTD: TFloatField;
    Qr_SerP2SPRECO: TFloatField;
    Qr_SerP2STOTDES: TFloatField;
    Qr_SerP2SBCISSQN: TFloatField;
    Qr_SerP2SALIQ: TFloatField;
    Qr_SerP2SLISTA: TFloatField;
    Qr_SerP2STABELA: TStringField;
    Qr_SerP2SSIT: TStringField;
    Qr_SerP2SCFO: TFloatField;
    Qr_SerP2SVISSQN: TFloatField;
    Qr_SerPDNOME: TStringField;
    Qr_SerPDUND: TStringField;
    Qr_ProSoma: TQuery;
    Qr_ProSomaTOTDES: TFloatField;
    Qr_ProSomaBASEN: TFloatField;
    Qr_ProSomaBASER: TFloatField;
    Qr_ProSomaALIPI: TFloatField;
    Qr_ProSomaTOTLIQ: TFloatField;
    Qr_ProSomaP2CFO: TFloatField;
    Qr_ProSomaP2ALIQ: TFloatField;
    Qr_ProSomaP2ALIQNR: TFloatField;
    Qr_SerSoma: TQuery;
    Qr_SerSomaTOTDES: TFloatField;
    Qr_SerSomaBCISSQN: TFloatField;
    Qr_SerSomaVISSQN: TFloatField;
    Qr_SerSomaTOTBRU: TFloatField;
    Qr_SerSomaP2SCFO: TFloatField;
    Qr_SerSomaP2SALIQ: TFloatField;
    Qr_PsintEPF2CFO: TFloatField;
    Qr_PSintESoma: TQuery;
    Qr_ProSomaICMSN: TFloatField;
    Qr_ProSomaICMSR: TFloatField;
    Qr_ProSomaISENTAS: TFloatField;
    Tb_REENTRADA: TStringField;
    Tb_REESP: TStringField;
    Tb_RESERIE: TStringField;
    Tb_RENUMERO: TStringField;
    Tb_REDATA: TDateTimeField;
    Tb_REEMITENTE: TStringField;
    Tb_REUF: TStringField;
    Tb_REVLRCONTABIL: TFloatField;
    Tb_RECODC: TStringField;
    Tb_RECFO: TStringField;
    Tb_RETIPO: TStringField;
    Tb_REX: TStringField;
    Tb_REBASE: TFloatField;
    Tb_REALIQ: TFloatField;
    Tb_REIMPOSTO: TFloatField;
    Tb_RECHAVE: TFloatField;
    Tb_REISENTAS: TFloatField;
    Tb_REOUTRAS: TFloatField;
    Tb_REBASER: TFloatField;
    Tb_REICMSR: TStringField;
    Qr_ProSomaICMSNR: TFloatField;
    Qr_ProSomaBCINR: TFloatField;
    Qr_ProSomaOUTRAS: TFloatField;
    Qr_PSintESomaTOTDES: TFloatField;
    Qr_PSintESomaBASEN: TFloatField;
    Qr_PSintESomaBASER: TFloatField;
    Qr_PSintESomaICMSN: TFloatField;
    Qr_PSintESomaICMSR: TFloatField;
    Qr_PSintESomaIPI: TFloatField;
    Qr_PSintESomaISENTAS: TFloatField;
    Qr_PSintESomaTOTLIQ: TFloatField;
    Qr_PSintESomaPF2CFO: TFloatField;
    Qr_PSintESomaPF2ALIQ: TFloatField;
    Qr_PSintESomaPF2ALIQNR: TFloatField;
    Tb_GNRE01: TQuery;
    Tb_GNRE01GN1CODEMP: TFloatField;
    Tb_GNRE01GN1LOTSEQ: TFloatField;
    Tb_GNRE01GN1CODIGO: TFloatField;
    Tb_GNRE01GN1CODCLI: TFloatField;
    Tb_GNRE01GN1CNPJ: TFloatField;
    Tb_GNRE01GN1IE: TStringField;
    Tb_GNRE01GN1DATA: TDateTimeField;
    Tb_GNRE01GN1UF: TStringField;
    Tb_GNRE01GN1CODBCO: TFloatField;
    Tb_GNRE01GN1AGENCIA: TStringField;
    Tb_GNRE01GN1NUMAUT: TStringField;
    Tb_GNRE01GN1VALOR: TFloatField;
    Tb_GNRE01GN1DATVEN: TDateTimeField;
    Tb_GNRE01GN1ANOREF: TFloatField;
    Tb_GNRE01GN1MESREF: TFloatField;
    Tb_GNRE01GN1MUMCONV: TStringField;
    Tb_GNRE01GN1CODUSR: TFloatField;
    Tb_GNRE01GN1DATINC: TDateTimeField;
    Tb_GNRE01GN1USRALT: TFloatField;
    Tb_GNRE01GN1DATALT: TDateTimeField;
    Tb_GNRE01GN1STATUS: TFloatField;
    Tb_GNRE02: TQuery;
    Tb_GNRE02GN2CODEMP: TFloatField;
    Tb_GNRE02GN2LOTSEQ: TFloatField;
    Tb_GNRE02GN2CODIGO: TFloatField;
    Tb_GNRE02GN2SEQ: TFloatField;
    Tb_GNRE02GN2NUMDOC: TFloatField;
    Tb_GNRE02GN2MODDOC: TStringField;
    Tb_GNRE02GN2SERDOC: TStringField;
    Tb_GNRE02GN2SUBSER: TStringField;
    Tb_GNRE02GN2DATDOC: TDateTimeField;
    Tb_GNRE02GN2VALDOC: TFloatField;
    Tb_GNRE02GN2VALIMP: TFloatField;
    U_GNRE01: TUpdateSQL;
    U_GNRE02: TUpdateSQL;
    Src_GNRE01: TDataSource;
    Src_GNRE02: TDataSource;
    Tb_R55: TTable;
    Tb_R55T55_TIPO: TStringField;
    Tb_R55T55_CNPJST: TStringField;
    Tb_R55T55_IEST: TStringField;
    Tb_R55T55_DATAGNR: TDateTimeField;
    Tb_R55T55_UF: TStringField;
    Tb_R55T55_UFST: TStringField;
    Tb_R55T55_BANCOGNR: TStringField;
    Tb_R55T55_AGENCIAGNR: TStringField;
    Tb_R55T55_NUMEROGNR: TStringField;
    Tb_R55T55_VLGNR: TFloatField;
    Tb_R55T55_DATAVENCTO: TDateTimeField;
    Tb_R55T55_MESANOREF: TStringField;
    Tb_R55T55_NCONVENIO: TStringField;
    Tb_R55T55_BRANCOS: TStringField;
    Tb_R60M: TTable;
    Tb_R60MT60M_TIPO: TStringField;
    Tb_R60MT60M_MA: TStringField;
    Tb_R60MT60M_DATA: TDateTimeField;
    Tb_R60MT60M_DATA_REF: TDateTimeField;
    Tb_R60MT60M_NSECF: TStringField;
    Tb_R60MT60M_NECF: TStringField;
    Tb_R60MT60M_MODELO: TStringField;
    Tb_R60MT60M_NINICIAL: TFloatField;
    Tb_R60MT60M_NFINAL: TFloatField;
    Tb_R60MT60M_NREDZ: TFloatField;
    Tb_R60MT60M_CRO: TFloatField;
    Tb_R60MT60M_VLVB: TFloatField;
    Tb_R60MT60M_VLGT: TFloatField;
    Tb_R60MT60M_BRANCOS: TStringField;
    Tb_R60A: TTable;
    Tb_R60AT60A_TIPO: TStringField;
    Tb_R60AT60A_MA: TStringField;
    Tb_R60AT60A_DATA: TDateTimeField;
    Tb_R60AT60A_DATA_REF: TDateTimeField;
    Tb_R60AT60A_NSECF: TStringField;
    Tb_R60AT60A_NECF: TStringField;
    Tb_R60AT60A_SITALIQ: TStringField;
    Tb_R60AT60A_VLTP: TFloatField;
    Tb_R60AT60A_BRANCOS: TStringField;
    Tb_R60D: TTable;
    Tb_R60DT60D_TIPO: TStringField;
    Tb_R60DT60D_MA: TStringField;
    Tb_R60DT60D_DATA: TDateTimeField;
    Tb_R60DT60D_DATA_REF: TDateTimeField;
    Tb_R60DT60D_NSECF: TStringField;
    Tb_R60DT60D_CODPRO: TStringField;
    Tb_R60DT60D_QUANT: TFloatField;
    Tb_R60DT60D_VLBRUTO: TFloatField;
    Tb_R60DT60D_VLBCICMS: TFloatField;
    Tb_R60DT60D_SITALIQ: TStringField;
    Tb_R60DT60D_VLCICMS: TFloatField;
    Tb_R60DT60D_BRANCOS: TStringField;
    Tb_R60I: TTable;
    Tb_R60IT60I_TIPO: TStringField;
    Tb_R60IT60I_SUBTIPO: TStringField;
    Tb_R60IT60I_DATA: TDateTimeField;
    Tb_R60IT60I_DATA_REF: TDateTimeField;
    Tb_R60IT60I_NSECF: TStringField;
    Tb_R60IT60I_MODELO: TStringField;
    Tb_R60IT60I_NUMDOC: TFloatField;
    Tb_R60IT60I_ITEM: TFloatField;
    Tb_R60IT60I_CODPRO: TStringField;
    Tb_R60IT60I_QUANT: TFloatField;
    Tb_R60IT60I_VLUNIT: TFloatField;
    Tb_R60IT60I_TOTAL: TFloatField;
    Tb_R60IT60I_BCICMS: TFloatField;
    Tb_R60IT60I_SITALIQ: TStringField;
    Tb_R60IT60I_VLICMS: TFloatField;
    Tb_R60IT60I_BRANCOS: TStringField;
    Tb_R60R: TTable;
    Tb_R60RT60R_TIPO: TStringField;
    Tb_R60RT60R_SUBTIPO: TStringField;
    Tb_R60RT60R_MESANO: TStringField;
    Tb_R60RT60R_CODPRO: TStringField;
    Tb_R60RT60R_QUANT: TFloatField;
    Tb_R60RT60R_VLTOTAL: TFloatField;
    Tb_R60RT60R_BCICMS: TFloatField;
    Tb_R60RT60R_SITALI: TStringField;
    Tb_R60RT60R_BRANCOS: TStringField;
    Qr_Pro: TQuery;
    Qr_ProITEM: TFloatField;
    Qr_ProCODPRO: TFloatField;
    Qr_ProTOTDES: TFloatField;
    Qr_ProBASEN: TFloatField;
    Qr_ProBASER: TFloatField;
    Qr_ProICMSN: TFloatField;
    Qr_ProICMSNR: TFloatField;
    Qr_ProBCINR: TFloatField;
    Qr_ProICMSR: TFloatField;
    Qr_ProALIPI: TFloatField;
    Qr_ProVALIPI: TFloatField;
    Qr_ProISENTAS: TFloatField;
    Qr_ProOUTRAS: TFloatField;
    Qr_ProTOTLIQ: TFloatField;
    Qr_ProP2CFO: TFloatField;
    Qr_ProP2ALIQ: TFloatField;
    Qr_ProP2ALIQNR: TFloatField;
    Qr_ProQTD: TFloatField;
    Qr_ProPCOUNIT: TFloatField;
    Qr_ProSITTRI: TStringField;
    Qr_PSintP2ICMSR: TFloatField;
    Qr_PSintP2VALIPI: TFloatField;
    Qr_GNRE01: TQuery;
    Qr_GNRE01GN1CODEMP: TFloatField;
    Qr_GNRE01GN1LOTSEQ: TFloatField;
    Qr_GNRE01GN1CODIGO: TFloatField;
    Qr_GNRE01GN1CODCLI: TFloatField;
    Qr_GNRE01GN1CNPJ: TFloatField;
    Qr_GNRE01GN1IE: TStringField;
    Qr_GNRE01GN1DATA: TDateTimeField;
    Qr_GNRE01GN1UF: TStringField;
    Qr_GNRE01GN1CODBCO: TFloatField;
    Qr_GNRE01GN1AGENCIA: TStringField;
    Qr_GNRE01GN1NUMAUT: TStringField;
    Qr_GNRE01GN1VALOR: TFloatField;
    Qr_GNRE01GN1DATVEN: TDateTimeField;
    Qr_GNRE01GN1ANOREF: TFloatField;
    Qr_GNRE01GN1MESREF: TFloatField;
    Qr_GNRE01GN1MUMCONV: TStringField;
    Qr_GNRE01GN1CODUSR: TFloatField;
    Qr_GNRE01GN1DATINC: TDateTimeField;
    Qr_GNRE01GN1USRALT: TFloatField;
    Qr_GNRE01GN1DATALT: TDateTimeField;
    Qr_GNRE01GN1STATUS: TFloatField;
    Qr_GNRE01GN1UFST: TStringField;
    Tb_GNRE01GN1UFST: TStringField;
    Qr_R60M: TQuery;
    Qr_R60A: TQuery;
    Qr_R60D: TQuery;
    Qr_R60DCFSERIE: TStringField;
    Qr_R60DP1CODECF: TFloatField;
    Qr_R60DP2CODPRO: TFloatField;
    Qr_R60DP1DATACF: TDateTimeField;
    Qr_R60DP2ALIQ: TFloatField;
    Qr_R60DP2SIT: TStringField;
    Qr_R60DQTD: TFloatField;
    Qr_R60DTOTLIQ: TFloatField;
    Qr_R60DBASEN: TFloatField;
    Qr_R60DICMSN: TFloatField;
    Qr_R60DISENTAS: TFloatField;
    Qr_R60R: TQuery;
    Qr_R60RCFSERIE: TStringField;
    Qr_R60RP1CODECF: TFloatField;
    Qr_R60RP2CODPRO: TFloatField;
    Qr_R60RANO: TStringField;
    Qr_R60RMES: TStringField;
    Qr_R60RP2ALIQ: TFloatField;
    Qr_R60RP2SIT: TStringField;
    Qr_R60RQTD: TFloatField;
    Qr_R60RTOTLIQ: TFloatField;
    Qr_R60RBASEN: TFloatField;
    Qr_R60RICMSN: TFloatField;
    Qr_R60RISENTAS: TFloatField;
    Qr_Neespecie: TStringField;
    Qr_Nedia_ent: TStringField;
    Qr_Nesit: TStringField;
    Qr_NSespecie: TStringField;
    Qr_NSdia_emis: TStringField;
    Qr_NScfo: TStringField;
    Qr_NScod_cont: TFloatField;
    Qr_Necod_cont: TFloatField;
    Qr_NSsit: TStringField;
    Qr_NSprod_serv: TStringField;
    Tb_Emit: TTable;
    Tb_EmitCNPJCPF: TStringField;
    Tb_EmitTIPOFJ: TIntegerField;
    Tb_EmitCIDADE: TStringField;
    Tb_EmitUF: TStringField;
    Tb_EmitINSC_EST: TStringField;
    Tb_EmitENDERECO: TStringField;
    Tb_EmitBAIRRO: TStringField;
    Tb_EmitCEP: TStringField;
    Tb_EmitPAIS: TStringField;
    Tb_EmitFONE: TStringField;
    Tb_EmitFAX: TStringField;
    Tb_EmitNOME: TStringField;
    Qr_PSintESomaPF2ALIPI: TFloatField;
    Qr_ProSomaVALIPI: TFloatField;
    Tb_InvGra: TQuery;
    Tb_InvGraIGCODEMP: TFloatField;
    Tb_InvGraIGNOMEINV: TStringField;
    Tb_InvGraIGCODPRO: TFloatField;
    Tb_InvGraIGPRECO: TFloatField;
    Tb_InvGraIGQTD: TFloatField;
    Tb_InvGraIGSIT: TStringField;
    Tb_InvGraIGCODTIP: TFloatField;
    Qr_R60MCFSERIE: TStringField;
    Qr_R60MCFMODDOC: TStringField;
    Qr_R60MCMDATA: TDateTimeField;
    Qr_R60MCMCODIMP: TFloatField;
    Qr_R60MCMCOO: TFloatField;
    Qr_R60MCMCOO_FINAL: TFloatField;
    Qr_R60MCMCONRED: TFloatField;
    Qr_R60MCMCRO: TFloatField;
    Qr_R60MCMCUPCAN: TFloatField;
    Qr_R60MCMACRECUP: TFloatField;
    Qr_R60MCMDESCUP: TFloatField;
    Qr_R60MCMISENTAS: TFloatField;
    Qr_R60MCMNAOINC: TFloatField;
    Qr_R60MCMSUBTRI: TFloatField;
    Qr_R60MCMISSCUP: TFloatField;
    Qr_R60ACFSERIE: TStringField;
    Qr_R60ACFMODDOC: TStringField;
    Qr_R60ACM2DATA: TDateTimeField;
    Qr_R60ACM2CODIMP: TFloatField;
    Qr_R60ACM2ALIQ: TFloatField;
    Qr_R60ACM2VALOR: TFloatField;
    Qr_R60I: TQuery;
    Qr_R60ICFSERIE: TStringField;
    Qr_R60IP1CODECF: TFloatField;
    Qr_R60IP2CODPRO: TFloatField;
    Qr_R60IP1DATACF: TDateTimeField;
    Qr_R60IP2ALIQ: TFloatField;
    Qr_R60IP2SIT: TStringField;
    Qr_R60IP2ITEM: TFloatField;
    Qr_R60IQTD: TFloatField;
    Qr_R60ITOTLIQ: TFloatField;
    Qr_R60IBASEN: TFloatField;
    Qr_R60IICMSN: TFloatField;
    Qr_R60IISENTAS: TFloatField;
    Qr_R60IP2PRECO: TFloatField;
    Qr_R60IP1NUMCF: TFloatField;
    Qr_R60ICFMODDOC: TStringField;
    Qr_R60MCMVDABRUT: TFloatField;
    Qr_R60MCMVDALIQ: TFloatField;
    Qr_NSrazsoc: TStringField;
    Tb_InvGra_GD: TQuery;
    Tb_InvGra_GDIGCODEMP: TFloatField;
    Tb_InvGra_GDIGNOMEINV: TStringField;
    Tb_InvGra_GDIGCODPRO: TFloatField;
    Tb_InvGra_GDIGGRADE: TStringField;
    Tb_InvGra_GDIGDTVCTO: TDateTimeField;
    Tb_InvGra_GDIGSIT: TStringField;
    Tb_InvGra_GDIGCODTIP: TFloatField;
    Tb_InvGra_GDIGPRECO: TFloatField;
    Tb_InvGra_GDIGQTD: TFloatField;
    Query1: TQuery;
    Query2: TQuery;
    Table1: TTable;
    Tb_R71: TTable;
    Tb_R71T71_TIPO: TStringField;
    Tb_R71T71_CNPJTOMADOR: TStringField;
    Tb_R71T71_IETOMADOR: TStringField;
    Tb_R71T71_DATA: TDateTimeField;
    Tb_R71T71_DATA_REF: TDateTimeField;
    Tb_R71T71_UF: TStringField;
    Tb_R71T71_MODELO: TStringField;
    Tb_R71T71_SERIE: TStringField;
    Tb_R71T71_SUBSERIE: TStringField;
    Tb_R71T71_NUMERO: TFloatField;
    Tb_R71T71_UFNF: TStringField;
    Tb_R71T71_CNPJNF: TStringField;
    Tb_R71T71_IENF: TStringField;
    Tb_R71T71_DATANF: TDateTimeField;
    Tb_R71T71_MODELONF: TStringField;
    Tb_R71T71_SERIENF: TStringField;
    Tb_R71T71_SUBSERIENF: TStringField;
    Tb_R71T71_NUMERONF: TFloatField;
    Tb_R71T71_VLNF: TFloatField;
    Tb_R71T71_BRANCOS: TStringField;
    Tb_R70: TTable;
    Tb_R70T70_TIPO: TStringField;
    Tb_R70T70_CNPJ: TStringField;
    Tb_R70T70_IE: TStringField;
    Tb_R70T70_DATA: TDateTimeField;
    Tb_R70T70_DATA_REF: TDateTimeField;
    Tb_R70T70_UF: TStringField;
    Tb_R70T70_MODELO: TStringField;
    Tb_R70T70_SERIE: TStringField;
    Tb_R70T70_SUBSERIE: TStringField;
    Tb_R70T70_NUMERO: TFloatField;
    Tb_R70T70_CFOP: TFloatField;
    Tb_R70T70_VLTOTAL: TFloatField;
    Tb_R70T70_BCICMS: TFloatField;
    Tb_R70T70_VLICMS: TFloatField;
    Tb_R70T70_ISENTAS: TFloatField;
    Tb_R70T70_OUTRAS: TFloatField;
    Tb_R70T70_CIFFOB: TStringField;
    Tb_R70T70_SITUACAO: TStringField;
    Qr_NSNSTARBAN: TFloatField;
    Qr_NSNSBCISSQN: TFloatField;
    Qr_NSNSVISSQN: TFloatField;
    Qr_NSNSSERIEECF: TStringField;
    Qr_NSNSCFOSER: TStringField;
    Qr_NSNSMODECF: TStringField;
    Qr_NSNSCUPACRE: TFloatField;
    Qr_NSNSCUPDES: TFloatField;
    Qr_NSNSFRETEPC: TFloatField;
    Qr_NSNSICMS_BCFRE: TFloatField;
    Qr_NSNSICMS_ALFRE: TFloatField;
    Qr_NSNSICMS_VLFRE: TFloatField;
    Qr_NSNSICMS_BCSEG: TFloatField;
    Qr_NSNSICMS_ALSEG: TFloatField;
    Qr_NSNSICMS_VLSEG: TFloatField;
    Qr_NSNSICMS_BCOUTD: TFloatField;
    Qr_NSNSICMS_ALOUTD: TFloatField;
    Qr_NSNSICMS_VLOUTD: TFloatField;
    Qr_NSNSICMS_BCIPI: TFloatField;
    Qr_NSNSICMS_ALIPI: TFloatField;
    Qr_NSNSICMS_VLIPI: TFloatField;
    Tb_R74: TTable;
    Tb_R74T74_DATA: TDateField;
    Tb_R74T74_CODPRO: TStringField;
    Tb_R74T74_QTD: TFloatField;
    Tb_R74T74_TOTAL: TFloatField;
    Tb_R74T74_CODPOS: TStringField;
    Tb_R74T74_CNPJ: TFloatField;
    Tb_R74T74_IE: TStringField;
    Tb_R74T74_UF: TStringField;
    Tb_R74T74_BRANCOS: TStringField;
    Tb_R74T74_TIPO: TIntegerField;
    Qr_PSintESomaOUTRAS: TFloatField;
    Qr_NeNECODEMP: TFloatField;
    Qr_NeNECODFOR: TFloatField;
    Qr_NeNENUMERO: TFloatField;
    Qr_NeNESERIE: TStringField;
    Qr_NeNEDTENT: TDateTimeField;
    Qr_NeNEDTEMIS: TDateTimeField;
    Qr_NeNESUBSER: TStringField;
    Qr_NeNEBASEN: TFloatField;
    Qr_NeNEICMSN: TFloatField;
    Qr_NeNEBASER: TFloatField;
    Qr_NeNEICMSR: TFloatField;
    Qr_NeNEFRETE: TFloatField;
    Qr_NeNESEG: TFloatField;
    Qr_NeNEOUTRAS: TFloatField;
    Qr_NeNEIPI: TFloatField;
    Qr_NeNETOTMER: TFloatField;
    Qr_NeNETOTNOT: TFloatField;
    Qr_NeNETOTDES: TFloatField;
    Qr_NeNETOTPOS: TFloatField;
    Qr_NeNETOTNEG: TFloatField;
    Qr_NeNETOTINA: TFloatField;
    Qr_NeNECHAVEP: TFloatField;
    Qr_NeNEORDEM: TFloatField;
    Qr_NeNEALIQ: TFloatField;
    Qr_NeNETIPO: TFloatField;
    Qr_NeNEMODELO: TStringField;
    Qr_NeFUF: TStringField;
    Qr_NeNESTATUS: TFloatField;
    Qr_NeFRAZAO: TStringField;
    Qr_NeFIE: TStringField;
    Qr_NeNEIPIFRETE: TFloatField;
    Qr_NeNELOTSEQ_CP: TFloatField;
    Qr_NeNEISENTAS: TFloatField;
    Qr_NeNEFRETEPC: TFloatField;
    Qr_NeNEOUTNINC: TFloatField;
    Qr_NeORIGEM: TStringField;
    Qr_NeNECFO: TStringField;
    Qr_Netp_oper: TFloatField;
    Qr_NSCRAZAO: TStringField;
    Qr_NSCCNPJ: TFloatField;
    Qr_NSCCPF: TFloatField;
    Qr_NSCIE: TStringField;
    Qr_NSCRG: TStringField;
    Qr_NSCUF: TStringField;
    Qr_NeNEAVAP: TFloatField;
    Qr_NSNSAVAP: TFloatField;
    Qr_NeNEOUTDESP: TFloatField;
    Qr_Nemodelo: TStringField;
    Qr_NSmodelo: TStringField;
    Tb_RESTATUS: TFloatField;
    Tb_REORDEM: TIntegerField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDCLAS: TStringField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDSIT: TStringField;
    Qr_ProPDTABICM: TStringField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDIPI: TFloatField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDCODNCM: TStringField;
    Qr_NeNEOUTRAS_ALIQ: TFloatField;
    Qr_NeNEOUTRAS_IMP: TFloatField;
    Qr_PSintESomaPF2CFOP_COMP: TStringField;
    Qr_ProSomaCFONF: TFloatField;
    Qr_PSintCFONF: TFloatField;
    Qr_NeNEALIQ_FRETE: TFloatField;
    Qr_NeNEICMS_FRETE: TFloatField;
    Query3: TQuery;
    Qr_ProCODPRO_ORI: TStringField;
    Qr_ProNOMPRO_ORI: TStringField;
    Qr_PSintCODPRO_ORI: TStringField;
    Qr_PSintNOMPRO_ORI: TStringField;
    Qr_R60RNOMPRO_ORI: TStringField;
    Qr_R60RCODPRO_ORI: TStringField;
    Qr_R60DNOMPRO_ORI: TStringField;
    Qr_R60DCODPRO_ORI: TStringField;
    Qr_R60ICODPRO_ORI: TStringField;
    Qr_R60INOMPRO_ORI: TStringField;
    Tb_Pro: TRxMemoryData;
    Tb_ProCODPRO: TStringField;
    Tb_ProDESCRICAO: TStringField;
    Tb_ProUNIDADE: TStringField;
    Tb_ProSITTRI: TStringField;
    Tb_ProALIQEST: TFloatField;
    Tb_ProALIQINT: TFloatField;
    Tb_ProRED: TFloatField;
    Tb_ProIVA: TFloatField;
    Tb_ProALIQIPI: TFloatField;
    Tb_ProVALIPI: TFloatField;
    Tb_ProREFERENCIA: TStringField;
    Tb_ProCREDOUT: TFloatField;
    Tb_ProCLAS_FISCAL: TStringField;
    Qr_NSNUMECF: TFloatField;
    Qr_NSNSCODUSR: TFloatField;
    Qr_NSNSDTALT: TDateTimeField;
    Qr_NSNSHRALT: TStringField;
    Qr_NSNSLEMAT: TFloatField;
    Qr_NSNSNUMCUP: TFloatField;
    Qr_ProCFONF: TFloatField;
    Qr_NeFCGC: TStringField;
    Qr_Necgc: TStringField;
    Qr_NSNSNFCE_NUMERO: TFloatField;
    Qr_NSNSNFCF: TFloatField;
    Qr_NSNSNFCE_SITUACAO: TFloatField;
    Qr_NSNSNFCE_DATA: TDateTimeField;
    Qr_NSNSNFCE_SERIE: TStringField;
    Qr_NSNSNFCE_MODELO: TStringField;
    cds_tipo61: TClientDataSet;
    cds_tipo61t61_tipo: TStringField;
    cds_tipo61t61_brancos: TStringField;
    cds_tipo61t61_brancos1: TStringField;
    cds_tipo61t61_data: TDateTimeField;
    cds_tipo61t61_data_ref: TDateTimeField;
    cds_tipo61t61_modelo: TStringField;
    cds_tipo61t61_serie: TStringField;
    cds_tipo61t61_subserie: TStringField;
    cds_tipo61t61_ninicial: TLargeintField;
    cds_tipo61t61_nfinal: TLargeintField;
    cds_tipo61t61_vltotal: TFloatField;
    cds_tipo61t61_bcicms: TFloatField;
    cds_tipo61t61_vlicms: TFloatField;
    cds_tipo61t61_isentas: TFloatField;
    cds_tipo61t61_outras: TFloatField;
    cds_tipo61t61_aliquota: TFloatField;
    cds_tipo61t61_brancos2: TStringField;
    cds_tipo61r: TClientDataSet;
    cds_tipo61rt61r_tipo: TStringField;
    cds_tipo61rt61r_mesano: TStringField;
    cds_tipo61rt61r_cod_item: TStringField;
    cds_tipo61rt61r_quant: TFloatField;
    cds_tipo61rt61r_vlbruto: TFloatField;
    cds_tipo61rt61r_bcicms: TFloatField;
    cds_tipo61rt61r_aliq: TFloatField;
    cds_tipo61rt61r_brancos: TStringField;
    tb_rcfop: TClientDataSet;
    tb_rcfoprcfop_aliq: TFloatField;
    tb_rcfoprcfop_base: TFloatField;
    tb_rcfoprcfop_baser: TFloatField;
    tb_rcfoprcfop_cfo: TStringField;
    tb_rcfoprcfop_cfonome: TStringField;
    tb_rcfoprcfop_icms: TFloatField;
    tb_rcfoprcfop_icmsr: TFloatField;
    tb_rcfoprcfop_isentas: TFloatField;
    tb_rcfoprcfop_outras: TFloatField;
    tb_rcfoprcfop_pis: TFloatField;
    tb_rcfoprcfop_vlrcontabil: TFloatField;
    tb_ruf: TClientDataSet;
    tb_rufruf_base: TFloatField;
    tb_rufruf_baser: TFloatField;
    tb_rufruf_icms: TFloatField;
    tb_rufruf_icmsr: TFloatField;
    tb_rufruf_isentas: TFloatField;
    tb_rufruf_outras: TFloatField;
    tb_rufruf_pis: TFloatField;
    tb_rufruf_uf: TStringField;
    tb_rufruf_vlrcontabil: TFloatField;
    tb_lrs: TClientDataSet;
    tb_lrslrs_aliq: TFloatField;
    tb_lrslrs_baseipi: TFloatField;
    tb_lrslrs_basen: TFloatField;
    tb_lrslrs_baser: TFloatField;
    tb_lrslrs_cfo: TStringField;
    tb_lrslrs_dia: TStringField;
    tb_lrslrs_esp: TStringField;
    tb_lrslrs_icmipi: TStringField;
    tb_lrslrs_icmsn: TFloatField;
    tb_lrslrs_ipi: TFloatField;
    tb_lrslrs_isentas: TFloatField;
    tb_lrslrs_numero: TStringField;
    tb_lrslrs_observ: TStringField;
    tb_lrslrs_outras: TFloatField;
    tb_lrslrs_pis_cof: TFloatField;
    tb_lrslrs_serie: TStringField;
    tb_lrslrs_status: TFloatField;
    tb_lrslrs_tipo: TFloatField;
    tb_lrslrs_uf: TStringField;
    tb_lrslrs_vlrcontabil: TFloatField;
    tb_rsint: TClientDataSet;
    tb_rsintrs_basen: TFloatField;
    tb_rsintrs_baser: TFloatField;
    tb_rsintrs_data: TDateTimeField;
    tb_rsintrs_icmsn: TFloatField;
    tb_rsintrs_icmsr: TFloatField;
    tb_rsintrs_ipi: TFloatField;
    tb_rsintrs_isentas: TFloatField;
    tb_rsintrs_outras: TFloatField;
    tb_rsintrs_tipo: TStringField;
    tb_rsintrs_totnota: TFloatField;
    Table2: TTable;
    DateField1: TDateField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    Qr_NSNUMERO_NF: TFloatField;
    procedure Qr_NeCalcFields(DataSet: TDataSet);
    procedure Qr_NSCalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_GNRE01BeforePost(DataSet: TDataSet);
    procedure Tb_GNRE02BeforePost(DataSet: TDataSet);
    procedure Tb_GNRE01BeforeInsert(DataSet: TDataSet);
    procedure Tb_GNRE01AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM5: TDM5;

implementation

uses Func;

{$R *.dfm}

procedure TDM5.Qr_NeCalcFields(DataSet: TDataSet);
begin
Qr_Necgc.AsString:=Qr_NeFCGC.AsString;
Qr_Neuf.Value :=Qr_NeFUF.Value;
if UpperCase(Qr_NeFIE.Value)='ISENTO' then
   Qr_Neinscricao.Value:='ISENTO'
else
   begin
   if fSonumero(Qr_NeFIE.Value)=0 then
      Qr_Neinscricao.Value:='ISENTO'
   else
      Qr_Neinscricao.Value:=fdeixanum(Qr_NeFIE.Value);
   end;
Qr_Neespecie.Value:='NF';
Qr_Nedia_ent.Value:=FormatDateTime('dd',Qr_NeNEDTENT.Value);
if Qr_NeNESTATUS.Value=9 then
   Qr_Nesit.Value:='S'
else
   Qr_Nesit.Value:='N';
Qr_Necod_cont.Value:=1;
if fsonumero(Qr_NeNECFO.Value)<>0 then
   begin
   if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',DM5.Qr_NeNECFO.AsString) then
      Qr_Netp_oper.Value:=DM1.Query1.Fields[0].AsFloat;
   end;
if Qr_Netp_oper.AsFloat=0 then
   Qr_Netp_oper.Value:=1;
Qr_NEmodelo.Value:=insere(Qr_NeNEMODELO.AsString,'0',2);
end;

procedure TDM5.Qr_NSCalcFields(DataSet: TDataSet);
begin
Qr_NSrazsoc.Value:=Qr_NSCRAZAO.Value;
Qr_NSuf.Value    :=Qr_NSCUF.Value;

if Qr_NSNSCODCLI.Value<3 then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +' CFCODEMP=0'+Qr_NSNSCODEMP.AsString
                     +' and CFCHAVEP=0'+Qr_NSNSCHAVEP.AsString);
   DM1.Tb_CSF.Open;
   if not DM1.Tb_CSF.Eof then
      begin
      Qr_NScgc.Value:=FormatFloat('00000000000000',DM1.Tb_CSFCFCGC.Value);
      if UpperCase(DM1.Tb_CSFCFIE.Value)='ISENTO' then
         Qr_NSinscricao.Value:='ISENTO'
      else
         Qr_NSinscricao.Value:=fdeixanum(DM1.Tb_CSFCFIE.Value);
      if DM1.Tb_CSFCFTIPOC.Value=0 then
         Qr_NSinscricao.Value:='ISENTO';
      Qr_NSuf.Value:=DM1.Tb_CSFCFUF.Value;
      Qr_NSrazsoc.Value:=DM1.Tb_CSFCFRAZAO.Value;
      end;
   if DM1.Tb_CSFCFCGC.Value=0 then
      begin
      Qr_NSrazsoc.Value:=Qr_NSCRAZAO.Value;
      if Qr_NSCCNPJ.Value>0 then
         begin
         Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSNSCNPJ.Value);
         if UpperCase(Qr_NSCIE.AsString)='ISENTO' then
            Qr_NSinscricao.Value:='ISENTO'
         else
            Qr_NSinscricao.Value:=fdeixanum(Qr_NSCIE.Value);
         end
      else
         begin
         Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSCCPF.Value);
         Qr_NSinscricao.Value:='ISENTO';
         end;
      end;
   if Trim(Qr_NSuf.Value)='' then
      Qr_NSuf.Value:=DM1.Tb_EmpUF.Value;
   end
else
   begin
   if Qr_NSCCNPJ.AsFloat>0 then
      begin
      Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSCCNPJ.Value);
      if UpperCase(Qr_NSCIE.asString)='ISENTO' then
         Qr_NSinscricao.Value:='ISENTO'
      else
         Qr_NSinscricao.Value:=fdeixanum(Qr_NSCIE.AsString);
      end
   else
      begin
      Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSCCPF.AsFloat);
      Qr_NSinscricao.Value:='ISENTO'
      end;
{
   if Qr_NSNSCNPJ.AsFloat>0 then
      begin
      Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSNSCNPJ.Value);
      if UpperCase(Qr_NSNSIE.asString)='ISENTO' then
         Qr_NSinscricao.Value:='ISENTO'
      else
         Qr_NSinscricao.Value:=fdeixanum(Qr_NSNSIE.AsString);
      end
   else
      begin
      Qr_NScgc.Value:=FormatFloat('00000000000000',Qr_NSCCPF.AsFloat);
      Qr_NSinscricao.Value:='ISENTO'
      end;
}
   Qr_NSuf.Value:=Qr_NSCUF.Value;
   end;
if trim(Qr_NSinscricao.Value)='0' then
   Qr_NSinscricao.Value:='ISENTO';
Qr_NSdia_emis.Value:=FormatDateTime('dd', Qr_NSNSDTEMIS.Value);
if Qr_NSNSSTATUS.Value=9 then
   Qr_NSsit.Value:='S'
else
   Qr_NSsit.Value:='N';
Qr_NSmodelo.Value:=insere(Qr_NSNSMODELO.AsString,'0',2);

end;

procedure TDM5.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

procedure TDM5.Tb_GNRE01BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM5.Tb_GNRE01.FieldCount-1 do
   begin
   if not DM5.Tb_GNRE01.Fields[i].IsNull then
      Continue;
   if DM5.Tb_GNRE01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM5.Tb_GNRE01.Fields[i].Value:=0
   else if DM5.Tb_GNRE01.Fields[i].DataType in [ftString,ftMemo] then
      DM5.Tb_GNRE01.Fields[i].Value:=' ';
   end;


end;

procedure TDM5.Tb_GNRE02BeforePost(DataSet: TDataSet);
var
i:Integer;
begin
For i:=0 to DM5.Tb_GNRE02.FieldCount-1 do
   begin
   if not DM5.Tb_GNRE02.Fields[i].IsNull then
      Continue;
   if DM5.Tb_GNRE02.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword] then
      DM5.Tb_GNRE02.Fields[i].Value:=0
   else if DM5.Tb_GNRE02.Fields[i].DataType in [ftString,ftMemo] then
      DM5.Tb_GNRE02.Fields[i].Value:=' ';
   end;


end;

procedure TDM5.Tb_GNRE01BeforeInsert(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(GN1CODIGO) from CADGNRE01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADNS',[]),'',' GN1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' GN1LOTSEQ=0');
DM1.Query1.Open;
cod:=DM1.Query1.Fields[0].AsFloat+1;

end;

procedure TDM5.Tb_GNRE01AfterInsert(DataSet: TDataSet);
begin
DM5.Tb_GNRE01GN1CODEMP.Value:=codemp;
DM5.Tb_GNRE01GN1LOTSEQ.Value:=0;
DM5.Tb_GNRE01GN1CODIGO.Value:=cod;
DM5.Tb_GNRE01.Post;
DM5.Tb_GNRE01.Edit;
end;

end.
