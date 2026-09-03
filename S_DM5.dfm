object DM5: TDM5
  OldCreateOrder = False
  Left = 180
  Top = 151
  Height = 452
  Width = 1097
  object Qr_NS: TQuery
    OnCalcFields = Qr_NSCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT NSCODEMP,NSNUMERO,NSSERIE,NSCODCLI,NSDTEMIS'
      '      ,NSCODUSR'
      '      ,NSDTALT'
      '      ,NSHRALT'
      '      ,NSLEMAT'
      '      ,NSCFO1,NSCFO2,NSCNPJ,NSIE,NSTOTNOTA,NSBASENI'
      '      ,NSICMSNI,NSBASENP,NSICMSNP,NSBASENN,NSICMSNN'
      '      ,NSBASERI,NSICMSRI,NSBASERP,NSICMSRP,NSBASERN'
      '      ,NSICMSRN,NSTOTPROI,NSTOTPROP,NSTOTPRON,NSBASENRI'
      '      ,NSICMSNRI,NSBASENRP,NSICMSNRP,NSBASENRN,NSICMSNRN'
      '      ,NSALIQ,NSIPII,NSIPIP,NSIPIN,NSFRETE,NSTOTISEN'
      '      ,NSCHAVEP,NSTOTNOR,NSTOTRET,NSBASEN,NSICMSN'
      '      ,NSALIQ2,NSPISCOFN,NSPISCOFR,NSSUBSER,NSMODELO'
      '      ,NSTIPO,NSORDEMP,NSSTATUS,NSNFCF,NSNFCE_SITUACAO,NSSTATUS'
      '      ,NSNUMCUP'
      '      ,NSNUMCUP as NUMECF,NSCODECF'
      '      ,NSDATCUP,NSSITCUP,NSTOTOUT,NSLOTSEQ_CP'
      '      ,NSTARBAN,NSBCISSQN,NSVISSQN,NSSERIEECF'
      '      ,NSCFOSER,NSMODECF,NSCUPACRE,NSCUPDES'
      '      ,NSFRETEPC,NSICMS_BCFRE,NSICMS_ALFRE'
      '      ,NSICMS_VLFRE,NSICMS_BCSEG,NSICMS_ALSEG'
      '      ,NSICMS_VLSEG,NSICMS_BCOUTD,NSICMS_ALOUTD'
      '      ,NSICMS_VLOUTD,NSICMS_BCIPI,NSICMS_ALIPI'
      '      ,NSICMS_VLIPI,CRAZAO,CUF,CCNPJ,CCPF,CIE,CRG, NSAVAP'
      '       FROM'
      'CADNS,CADCLI,CADP01V'
      'WHERE NSNUMERO=0'
      'AND CCODCLI=NSCODCLI'
      'AND P1VLOTSEQ=NSLOTSEQ_CP'
      'AND P1VCHAVE=NSCHAVEP'
      'AND P1VORDEM=NSORDEMP'
      '              and NSDTEMIS is null'
      '              and NSTIPO<>1 and NSCFO1>'#39'499'#39
      '              order by NSDTEMIS, NSNUMERO')
    UpdateMode = upWhereKeyOnly
    Left = 8
    Top = 64
    object Qr_NSNSCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'NSCODEMP'
      Origin = 'SG_ASSOC.CADNS.NSCODEMP'
    end
    object Qr_NSNSNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'NSNUMERO'
      Origin = 'SG_ASSOC.CADNS.NSNUMERO'
    end
    object Qr_NSNSSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NSSERIE'
      Origin = 'SG_ASSOC.CADNS.NSSERIE'
      Size = 6
    end
    object Qr_NSNSCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'NSCODCLI'
      Origin = 'SG_ASSOC.CADNS.NSCODCLI'
    end
    object Qr_NSNSDTEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#228'o'
      FieldName = 'NSDTEMIS'
      Origin = 'SG_ASSOC.CADNS.NSDTEMIS'
    end
    object Qr_NSNSCFO1: TStringField
      DisplayLabel = 'CFO 1'
      FieldName = 'NSCFO1'
      Origin = 'SG_ASSOC.CADNS.NSCFO1'
      Size = 6
    end
    object Qr_NSNSCFO2: TStringField
      DisplayLabel = 'CFO 2'
      FieldName = 'NSCFO2'
      Origin = 'SG_ASSOC.CADNS.NSCFO2'
      Size = 6
    end
    object Qr_NSNSCNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'NSCNPJ'
      Origin = 'SG_ASSOC.CADNS.NSCNPJ'
    end
    object Qr_NSNSIE: TStringField
      DisplayLabel = 'Inscri'#231'ao Estadual'
      FieldName = 'NSIE'
      Origin = 'SG_ASSOC.CADNS.NSIE'
      Size = 30
    end
    object Qr_NSNSTOTNOTA: TFloatField
      DisplayLabel = 'Total da Nota'
      FieldName = 'NSTOTNOTA'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOTA'
      currency = True
    end
    object Qr_NSNSBASENI: TFloatField
      DisplayLabel = 'Base Icmsn Inalterado'
      FieldName = 'NSBASENI'
      Origin = 'SG_ASSOC.CADNS.NSBASENI'
      currency = True
    end
    object Qr_NSNSICMSNI: TFloatField
      DisplayLabel = 'Icms Inalterado'
      FieldName = 'NSICMSNI'
      Origin = 'SG_ASSOC.CADNS.NSICMSNI'
      currency = True
    end
    object Qr_NSNSBASENP: TFloatField
      DisplayLabel = 'Base Icms Positivo'
      FieldName = 'NSBASENP'
      Origin = 'SG_ASSOC.CADNS.NSBASENP'
      currency = True
    end
    object Qr_NSNSICMSNP: TFloatField
      DisplayLabel = 'Icms Positivo'
      FieldName = 'NSICMSNP'
      Origin = 'SG_ASSOC.CADNS.NSICMSNP'
      currency = True
    end
    object Qr_NSNSBASENN: TFloatField
      DisplayLabel = 'Base Icms Negativo'
      FieldName = 'NSBASENN'
      Origin = 'SG_ASSOC.CADNS.NSBASENN'
      currency = True
    end
    object Qr_NSNSICMSNN: TFloatField
      DisplayLabel = 'Icms Negativo'
      FieldName = 'NSICMSNN'
      Origin = 'SG_ASSOC.CADNS.NSICMSNN'
      currency = True
    end
    object Qr_NSNSBASERI: TFloatField
      DisplayLabel = 'Base Retido Inalterado'
      FieldName = 'NSBASERI'
      Origin = 'SG_ASSOC.CADNS.NSBASERI'
      currency = True
    end
    object Qr_NSNSICMSRI: TFloatField
      DisplayLabel = 'Icms Retido Inalterado'
      FieldName = 'NSICMSRI'
      Origin = 'SG_ASSOC.CADNS.NSICMSRI'
      currency = True
    end
    object Qr_NSNSBASERP: TFloatField
      DisplayLabel = 'Base Retido Posito'
      FieldName = 'NSBASERP'
      Origin = 'SG_ASSOC.CADNS.NSBASERP'
      currency = True
    end
    object Qr_NSNSICMSRP: TFloatField
      DisplayLabel = 'Icms Retido Positivo'
      FieldName = 'NSICMSRP'
      Origin = 'SG_ASSOC.CADNS.NSICMSRP'
      currency = True
    end
    object Qr_NSNSBASERN: TFloatField
      DisplayLabel = 'Base Retido Negativo'
      FieldName = 'NSBASERN'
      Origin = 'SG_ASSOC.CADNS.NSBASERN'
      currency = True
    end
    object Qr_NSNSICMSRN: TFloatField
      DisplayLabel = 'Icms Retido Negativo'
      FieldName = 'NSICMSRN'
      Origin = 'SG_ASSOC.CADNS.NSICMSRN'
      currency = True
    end
    object Qr_NSNSTOTPROI: TFloatField
      DisplayLabel = 'Total Produtos Inalterados'
      FieldName = 'NSTOTPROI'
      Origin = 'SG_ASSOC.CADNS.NSTOTPROI'
      currency = True
    end
    object Qr_NSNSTOTPROP: TFloatField
      DisplayLabel = 'Total dos Produtos Positivos'
      FieldName = 'NSTOTPROP'
      Origin = 'SG_ASSOC.CADNS.NSTOTPROP'
      currency = True
    end
    object Qr_NSNSTOTPRON: TFloatField
      DisplayLabel = 'Total Produtos Negativos'
      FieldName = 'NSTOTPRON'
      Origin = 'SG_ASSOC.CADNS.NSTOTPRON'
      currency = True
    end
    object Qr_NSNSBASENRI: TFloatField
      DisplayLabel = 'Base Normal do Retido Inalterado'
      FieldName = 'NSBASENRI'
      Origin = 'SG_ASSOC.CADNS.NSBASENRI'
      currency = True
    end
    object Qr_NSNSICMSNRI: TFloatField
      DisplayLabel = 'Icms Normal do Retido Inalterado'
      FieldName = 'NSICMSNRI'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRI'
      currency = True
    end
    object Qr_NSNSBASENRP: TFloatField
      DisplayLabel = 'Base Icms Normal do Retido Positivo'
      FieldName = 'NSBASENRP'
      Origin = 'SG_ASSOC.CADNS.NSBASENRP'
      currency = True
    end
    object Qr_NSNSICMSNRP: TFloatField
      DisplayLabel = 'Icms Normal do Retivo Retido'
      FieldName = 'NSICMSNRP'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRP'
      currency = True
    end
    object Qr_NSNSBASENRN: TFloatField
      DisplayLabel = 'Icms Normal do Retido Negativo'
      FieldName = 'NSBASENRN'
      Origin = 'SG_ASSOC.CADNS.NSBASENRN'
      currency = True
    end
    object Qr_NSNSICMSNRN: TFloatField
      DisplayLabel = 'Icms Normal do Retido Negativo'
      FieldName = 'NSICMSNRN'
      Origin = 'SG_ASSOC.CADNS.NSICMSNRN'
      currency = True
    end
    object Qr_NSNSALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota de Icms'
      FieldName = 'NSALIQ'
      Origin = 'SG_ASSOC.CADNS.NSALIQ'
      currency = True
    end
    object Qr_NSNSIPII: TFloatField
      DisplayLabel = 'IPI produto Inalterados'
      FieldName = 'NSIPII'
      Origin = 'SG_ASSOC.CADNS.NSIPII'
      currency = True
    end
    object Qr_NSNSIPIP: TFloatField
      DisplayLabel = 'IPI Produtos Positivos'
      FieldName = 'NSIPIP'
      Origin = 'SG_ASSOC.CADNS.NSIPIP'
      currency = True
    end
    object Qr_NSNSIPIN: TFloatField
      DisplayLabel = 'IPI produtos Negativos'
      FieldName = 'NSIPIN'
      Origin = 'SG_ASSOC.CADNS.NSIPIN'
      currency = True
    end
    object Qr_NSNSFRETE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'NSFRETE'
      Origin = 'SG_ASSOC.CADNS.NSFRETE'
      currency = True
    end
    object Qr_NSNSTOTISEN: TFloatField
      DisplayLabel = 'Total de Mercadorias Isentas'
      FieldName = 'NSTOTISEN'
      Origin = 'SG_ASSOC.CADNS.NSTOTISEN'
      currency = True
    end
    object Qr_NSNSCHAVEP: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'NSCHAVEP'
      Origin = 'SG_ASSOC.CADNS.NSCHAVEP'
    end
    object Qr_NSNSTOTNOR: TFloatField
      DisplayLabel = 'Total dos Produtos Normais'
      FieldName = 'NSTOTNOR'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOR'
      currency = True
    end
    object Qr_NSNSTOTRET: TFloatField
      DisplayLabel = 'Total dos Produtos Retidos'
      FieldName = 'NSTOTRET'
      Origin = 'SG_ASSOC.CADNS.NSTOTRET'
      currency = True
    end
    object Qr_NSuf: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Qr_NSinscricao: TStringField
      DisplayLabel = 'Inscricao Estadual'
      FieldKind = fkCalculated
      FieldName = 'inscricao'
      Calculated = True
    end
    object Qr_NSNSBASEN: TFloatField
      DisplayLabel = 'Base de Icms Normal'
      FieldName = 'NSBASEN'
      Origin = 'SG_ASSOC.CADNS.NSBASEN'
      currency = True
    end
    object Qr_NSNSICMSN: TFloatField
      DisplayLabel = 'Icms Normal'
      FieldName = 'NSICMSN'
      Origin = 'SG_ASSOC.CADNS.NSICMSN'
      currency = True
    end
    object Qr_NSNSALIQ2: TFloatField
      DisplayLabel = 'Al'#237'quota 2 de Icms'
      FieldName = 'NSALIQ2'
      Origin = 'SG_ASSOC.CADNS.NSALIQ2'
      currency = True
    end
    object Qr_NSNSPISCOFN: TFloatField
      DisplayLabel = 'PIS/COFINS Produtos Tributados'
      FieldName = 'NSPISCOFN'
      Origin = 'SG_ASSOC.CADNS.NSPISCOFN'
      currency = True
    end
    object Qr_NSNSPISCOFR: TFloatField
      DisplayLabel = 'PIS/COFINS dos Produtos Retido'
      FieldName = 'NSPISCOFR'
      Origin = 'SG_ASSOC.CADNS.NSPISCOFR'
      currency = True
    end
    object Qr_NSNSSUBSER: TStringField
      FieldName = 'NSSUBSER'
      Origin = 'SG_ASSOC.CADNS.NSSUBSER'
      Size = 3
    end
    object Qr_NSNSMODELO: TStringField
      FieldName = 'NSMODELO'
      Origin = 'SG_ASSOC.CADNS.NSMODELO'
      Size = 3
    end
    object Qr_NSNSTIPO: TFloatField
      FieldName = 'NSTIPO'
      Origin = 'SG_ASSOC.CADNS.NSTIPO'
    end
    object Qr_NSNSORDEMP: TFloatField
      FieldName = 'NSORDEMP'
      Origin = 'SG_ASSOC.CADNS.NSORDEMP'
    end
    object Qr_NSNSSTATUS: TFloatField
      FieldName = 'NSSTATUS'
      Origin = 'SG_ASSOC.CADNS.NSSTATUS'
    end
    object Qr_NScgc: TStringField
      DisplayLabel = 'CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cgc'
      Calculated = True
    end
    object Qr_NSNSCODECF: TFloatField
      FieldName = 'NSCODECF'
      Origin = 'SG_ASSOC.CADNS.NSCODECF'
    end
    object Qr_NSNSDATCUP: TDateTimeField
      FieldName = 'NSDATCUP'
      Origin = 'SG_ASSOC.CADNS.NSDATCUP'
    end
    object Qr_NSNSSITCUP: TFloatField
      FieldName = 'NSSITCUP'
      Origin = 'SG_ASSOC.CADNS.NSSITCUP'
    end
    object Qr_NSNSTOTOUT: TFloatField
      FieldName = 'NSTOTOUT'
      Origin = 'SG_ASSOC.CADNS.NSTOTOUT'
    end
    object Qr_NSNSLOTSEQ_CP: TFloatField
      FieldName = 'NSLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNS.NSLOTSEQ_CP'
    end
    object Qr_NSespecie: TStringField
      FieldKind = fkCalculated
      FieldName = 'especie'
      Size = 2
      Calculated = True
    end
    object Qr_NSdia_emis: TStringField
      FieldKind = fkCalculated
      FieldName = 'dia_emis'
      Size = 2
      Calculated = True
    end
    object Qr_NScfo: TStringField
      FieldKind = fkCalculated
      FieldName = 'cfo'
      Size = 4
      Calculated = True
    end
    object Qr_NScod_cont: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cod_cont'
      Calculated = True
    end
    object Qr_NSsit: TStringField
      FieldKind = fkCalculated
      FieldName = 'sit'
      Size = 1
      Calculated = True
    end
    object Qr_NSprod_serv: TStringField
      FieldKind = fkCalculated
      FieldName = 'prod_serv'
      Size = 2
      Calculated = True
    end
    object Qr_NSrazsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razsoc'
      Size = 40
      Calculated = True
    end
    object Qr_NSNSTARBAN: TFloatField
      FieldName = 'NSTARBAN'
      Origin = 'SG_ASSOC.CADNS.NSTARBAN'
    end
    object Qr_NSNSBCISSQN: TFloatField
      FieldName = 'NSBCISSQN'
      Origin = 'SG_ASSOC.CADNS.NSBCISSQN'
    end
    object Qr_NSNSVISSQN: TFloatField
      FieldName = 'NSVISSQN'
      Origin = 'SG_ASSOC.CADNS.NSVISSQN'
    end
    object Qr_NSNSSERIEECF: TStringField
      FieldName = 'NSSERIEECF'
      Origin = 'SG_ASSOC.CADNS.NSSERIEECF'
    end
    object Qr_NSNSCFOSER: TStringField
      FieldName = 'NSCFOSER'
      Origin = 'SG_ASSOC.CADNS.NSCFOSER'
      Size = 4
    end
    object Qr_NSNSMODECF: TStringField
      FieldName = 'NSMODECF'
      Origin = 'SG_ASSOC.CADNS.NSMODECF'
      Size = 2
    end
    object Qr_NSNSCUPACRE: TFloatField
      FieldName = 'NSCUPACRE'
      Origin = 'SG_ASSOC.CADNS.NSCUPACRE'
    end
    object Qr_NSNSCUPDES: TFloatField
      FieldName = 'NSCUPDES'
      Origin = 'SG_ASSOC.CADNS.NSCUPDES'
    end
    object Qr_NSNSFRETEPC: TFloatField
      FieldName = 'NSFRETEPC'
      Origin = 'SG_ASSOC.CADNS.NSFRETEPC'
    end
    object Qr_NSNSICMS_BCFRE: TFloatField
      FieldName = 'NSICMS_BCFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCFRE'
    end
    object Qr_NSNSICMS_ALFRE: TFloatField
      FieldName = 'NSICMS_ALFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALFRE'
    end
    object Qr_NSNSICMS_VLFRE: TFloatField
      FieldName = 'NSICMS_VLFRE'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLFRE'
    end
    object Qr_NSNSICMS_BCSEG: TFloatField
      FieldName = 'NSICMS_BCSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCSEG'
    end
    object Qr_NSNSICMS_ALSEG: TFloatField
      FieldName = 'NSICMS_ALSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALSEG'
    end
    object Qr_NSNSICMS_VLSEG: TFloatField
      FieldName = 'NSICMS_VLSEG'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLSEG'
    end
    object Qr_NSNSICMS_BCOUTD: TFloatField
      FieldName = 'NSICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCOUTD'
    end
    object Qr_NSNSICMS_ALOUTD: TFloatField
      FieldName = 'NSICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALOUTD'
    end
    object Qr_NSNSICMS_VLOUTD: TFloatField
      FieldName = 'NSICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLOUTD'
    end
    object Qr_NSNSICMS_BCIPI: TFloatField
      FieldName = 'NSICMS_BCIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_BCIPI'
    end
    object Qr_NSNSICMS_ALIPI: TFloatField
      FieldName = 'NSICMS_ALIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_ALIPI'
    end
    object Qr_NSNSICMS_VLIPI: TFloatField
      FieldName = 'NSICMS_VLIPI'
      Origin = 'SG_ASSOC.CADNS.NSICMS_VLIPI'
    end
    object Qr_NSCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_NSCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_NSCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_NSCIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_NSCRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_NSCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_NSNSAVAP: TFloatField
      FieldName = 'NSAVAP'
      Origin = 'SG_ASSOC.CADNS.NSAVAP'
    end
    object Qr_NSmodelo: TStringField
      FieldKind = fkCalculated
      FieldName = 'modelo'
      Size = 2
      Calculated = True
    end
    object Qr_NSNUMECF: TFloatField
      FieldName = 'NUMECF'
      Origin = 'SG_ASSOC.CADNS.NSNUMCUP'
    end
    object Qr_NSNSCODUSR: TFloatField
      FieldName = 'NSCODUSR'
      Origin = 'SG_ASSOC.CADNS.NSCODUSR'
    end
    object Qr_NSNSDTALT: TDateTimeField
      FieldName = 'NSDTALT'
      Origin = 'SG_ASSOC.CADNS.NSDTALT'
    end
    object Qr_NSNSHRALT: TStringField
      FieldName = 'NSHRALT'
      Origin = 'SG_ASSOC.CADNS.NSHRALT'
      Size = 10
    end
    object Qr_NSNSLEMAT: TFloatField
      FieldName = 'NSLEMAT'
      Origin = 'SG_ASSOC.CADNS.NSLEMAT'
    end
    object Qr_NSNSNUMCUP: TFloatField
      FieldName = 'NSNUMCUP'
      Origin = 'SG_ASSOC.CADNS.NSNUMCUP'
    end
    object Qr_NSNSNFCE_NUMERO: TFloatField
      FieldName = 'NSNFCE_NUMERO'
    end
    object Qr_NSNSNFCF: TFloatField
      FieldName = 'NSNFCF'
    end
    object Qr_NSNSNFCE_SITUACAO: TFloatField
      FieldName = 'NSNFCE_SITUACAO'
    end
    object Qr_NSNSNFCE_DATA: TDateTimeField
      FieldName = 'NSNFCE_DATA'
    end
    object Qr_NSNSNFCE_SERIE: TStringField
      FieldName = 'NSNFCE_SERIE'
      Size = 3
    end
    object Qr_NSNSNFCE_MODELO: TStringField
      FieldName = 'NSNFCE_MODELO'
      Size = 3
    end
    object Qr_NSNUMERO_NF: TFloatField
      FieldName = 'NUMERO_NF'
    end
  end
  object Src_NS: TDataSource
    DataSet = Qr_NS
    Left = 40
    Top = 64
  end
  object Qr_Ne: TQuery
    OnCalcFields = Qr_NeCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  NECODEMP, NECODFOR'
      '       ,NENUMERO'
      '       ,NESERIE'
      '       ,TO_CHAR(NECFO) AS NECFO'
      '       ,NEDTENT'
      '       ,NEDTEMIS'
      '       ,NESUBSER'
      '       ,NEBASEN'
      '       ,NEICMSN'
      '       ,NEBASER'
      '       ,NEICMSR'
      '       ,NEFRETE'
      '       ,NEALIQ_FRETE'
      '       ,NEICMS_FRETE'
      '       ,NESEG'
      '       ,NEOUTRAS'
      '       ,NEOUTRAS_ALIQ'
      '       ,NEOUTRAS_IMP'
      '       ,NEIPI'
      '       ,NETOTMER'
      '       ,NETOTNOT'
      '       ,NETOTDES'
      '       ,NETOTPOS'
      '       ,NETOTNEG'
      '       ,NETOTINA'
      '       ,NECHAVEP'
      '       ,(NECHAVEP-NECHAVEP) AS NEORDEM'
      '       ,NEALIQ'
      '       ,NETIPO'
      '       ,NEMODELO'
      '       ,FUF'
      '       ,NESTATUS'
      '       ,FRAZAO'
      '       ,FCGC'
      '       ,FIE'
      '       ,NEIPIFRETE'
      '       ,NELOTSEQ_CP'
      '       ,NEISENTAS'
      '       ,NEFRETEPC'
      '       ,NEOUTNINC'
      '       ,NEOUTDESP'
      '       ,'#39'E'#39' AS ORIGEM'
      '       ,NEAVAP'
      '        FROM CADNE,CADFOR'
      '       where  NECODEMP = FCODEMP'
      '        AND NECODFOR = FCODFOR'
      '        and  NECODEMP is null')
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 64
    object Qr_Neuf: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Qr_Neinscricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscricao'
      Calculated = True
    end
    object Qr_Nesit: TStringField
      FieldKind = fkCalculated
      FieldName = 'sit'
      Size = 1
      Calculated = True
    end
    object Qr_Neespecie: TStringField
      FieldKind = fkCalculated
      FieldName = 'especie'
      Size = 2
      Calculated = True
    end
    object Qr_Necod_cont: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cod_cont'
      Calculated = True
    end
    object Qr_Nedia_ent: TStringField
      FieldKind = fkCalculated
      FieldName = 'dia_ent'
      Size = 2
      Calculated = True
    end
    object Qr_NeNECODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'NECODEMP'
      Origin = 'SG_ASSOC.CADNE.NECODEMP'
    end
    object Qr_NeNECODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornec'
      FieldName = 'NECODFOR'
      Origin = 'SG_ASSOC.CADNE.NECODFOR'
    end
    object Qr_NeNENUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NENUMERO'
      Origin = 'SG_ASSOC.CADNE.NENUMERO'
    end
    object Qr_NeNESERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NESERIE'
      Origin = 'SG_ASSOC.CADNE.NESERIE'
      Size = 6
    end
    object Qr_NeNEDTENT: TDateTimeField
      DisplayLabel = 'Dt.Entrada'
      FieldName = 'NEDTENT'
      Origin = 'SG_ASSOC.CADNE.NEDTENT'
    end
    object Qr_NeNEDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'NEDTEMIS'
      Origin = 'SG_ASSOC.CADNE.NEDTEMIS'
    end
    object Qr_NeNESUBSER: TStringField
      DisplayLabel = 'Sub-S'#233'rie'
      FieldName = 'NESUBSER'
      Origin = 'SG_ASSOC.CADNE.NESUBSER'
      Size = 6
    end
    object Qr_NeNEBASEN: TFloatField
      DisplayLabel = 'Base Icms'
      FieldName = 'NEBASEN'
      Origin = 'SG_ASSOC.CADNE.NEBASEN'
    end
    object Qr_NeNEICMSN: TFloatField
      DisplayLabel = 'Valor Icms'
      FieldName = 'NEICMSN'
      Origin = 'SG_ASSOC.CADNE.NEICMSN'
    end
    object Qr_NeNEBASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'NEBASER'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Qr_NeNEICMSR: TFloatField
      DisplayLabel = 'Icms ST'
      FieldName = 'NEICMSR'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Qr_NeNEFRETE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'NEFRETE'
      Origin = 'SG_ASSOC.CADNE.NEFRETE'
    end
    object Qr_NeNESEG: TFloatField
      DisplayLabel = 'Vlr.Seguro'
      FieldName = 'NESEG'
      Origin = 'SG_ASSOC.CADNE.NESEG'
    end
    object Qr_NeNEOUTRAS: TFloatField
      DisplayLabel = 'Outras'
      FieldName = 'NEOUTRAS'
      Origin = 'SG_ASSOC.CADNE.NEOUTRAS'
    end
    object Qr_NeNEIPI: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'NEIPI'
      Origin = 'SG_ASSOC.CADNE.NEIPI'
    end
    object Qr_NeNETOTMER: TFloatField
      DisplayLabel = 'Total Merc'
      FieldName = 'NETOTMER'
      Origin = 'SG_ASSOC.CADNE.NETOTMER'
    end
    object Qr_NeNETOTNOT: TFloatField
      DisplayLabel = 'Total Nota'
      FieldName = 'NETOTNOT'
      Origin = 'SG_ASSOC.CADNE.NETOTNOT'
    end
    object Qr_NeNETOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'NETOTDES'
      Origin = 'SG_ASSOC.CADNE.NETOTDES'
    end
    object Qr_NeNETOTPOS: TFloatField
      DisplayLabel = 'Total Positivo'
      FieldName = 'NETOTPOS'
      Origin = 'SG_ASSOC.CADNE.NETOTPOS'
    end
    object Qr_NeNETOTNEG: TFloatField
      DisplayLabel = 'Total Negativo'
      FieldName = 'NETOTNEG'
      Origin = 'SG_ASSOC.CADNE.NETOTNEG'
    end
    object Qr_NeNETOTINA: TFloatField
      DisplayLabel = 'Total Inalterado'
      FieldName = 'NETOTINA'
      Origin = 'SG_ASSOC.CADNE.NETOTINA'
    end
    object Qr_NeNECHAVEP: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'NECHAVEP'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP'
    end
    object Qr_NeNEORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'NEORDEM'
      Origin = 'SG_ASSOC.CADNE.NECHAVEP'
    end
    object Qr_NeNEALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'NEALIQ'
      Origin = 'SG_ASSOC.CADNE.NEALIQ'
    end
    object Qr_NeNETIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'NETIPO'
      Origin = 'SG_ASSOC.CADNE.NETIPO'
    end
    object Qr_NeNEMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NEMODELO'
      Origin = 'SG_ASSOC.CADNE.NEMODELO'
      Size = 3
    end
    object Qr_NeFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
    object Qr_NeNESTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'NESTATUS'
      Origin = 'SG_ASSOC.CADNE.NESTATUS'
    end
    object Qr_NeFRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_NeFIE: TStringField
      DisplayLabel = 'Incri'#231#227'o Estadual'
      FieldName = 'FIE'
      Origin = 'SG_ASSOC.CADFOR.FIE'
    end
    object Qr_NeNEIPIFRETE: TFloatField
      DisplayLabel = 'IPI do Frete'
      FieldName = 'NEIPIFRETE'
      Origin = 'SG_ASSOC.CADNE.NEIPIFRETE'
    end
    object Qr_NeNELOTSEQ_CP: TFloatField
      DisplayLabel = 'Lote Seq.Ped'
      FieldName = 'NELOTSEQ_CP'
      Origin = 'SG_ASSOC.CADNE.NELOTSEQ_CP'
    end
    object Qr_NeNEISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'NEISENTAS'
      Origin = 'SG_ASSOC.CADNE.NEISENTAS'
    end
    object Qr_NeNEFRETEPC: TFloatField
      DisplayLabel = 'Tipo Frete'
      FieldName = 'NEFRETEPC'
      Origin = 'SG_ASSOC.CADNE.NEFRETEPC'
    end
    object Qr_NeNEOUTNINC: TFloatField
      DisplayLabel = 'Outras Nao Incidente'
      FieldName = 'NEOUTNINC'
      Origin = 'SG_ASSOC.CADNE.NEOUTNINC'
    end
    object Qr_NeORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 1
    end
    object Qr_NeNECFO: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NECFO'
      Size = 40
    end
    object Qr_Netp_oper: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tp_oper'
      Calculated = True
    end
    object Qr_NeNEAVAP: TFloatField
      FieldName = 'NEAVAP'
    end
    object Qr_NeNEOUTDESP: TFloatField
      FieldName = 'NEOUTDESP'
    end
    object Qr_Nemodelo: TStringField
      FieldKind = fkCalculated
      FieldName = 'modelo'
      Size = 2
      Calculated = True
    end
    object Qr_NeNEOUTRAS_ALIQ: TFloatField
      FieldName = 'NEOUTRAS_ALIQ'
    end
    object Qr_NeNEOUTRAS_IMP: TFloatField
      FieldName = 'NEOUTRAS_IMP'
    end
    object Qr_NeNEALIQ_FRETE: TFloatField
      FieldName = 'NEALIQ_FRETE'
    end
    object Qr_NeNEICMS_FRETE: TFloatField
      FieldName = 'NEICMS_FRETE'
    end
    object Qr_NeFCGC: TStringField
      FieldName = 'FCGC'
      Size = 14
    end
    object Qr_Necgc: TStringField
      FieldKind = fkCalculated
      FieldName = 'cgc'
      Calculated = True
    end
  end
  object Src_NE: TDataSource
    DataSet = Qr_Ne
    Left = 104
    Top = 64
  end
  object Qr_PSint: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2ITEM,P2CODPRO,P2QTD,P2PRECO,P2TOTDES,'
      '          P2BASEN,P2BASER,P2ALIQ,'
      '           P2ALIPI,P2ALIQNR,P2LISTA,P2TABELA,P2SIT,'
      '           P2CFO,P2CFO AS CFONF,P2ICMSN,P2ICMSNR,P2ICMSR,'
      '           P2VALIPI,PDNOME,PDUND'
      '           ,TO_CHAR(PDCODPRO) AS CODPRO_ORI'
      '           ,PDNOME   AS NOMPRO_ORI'
      '          from CADP02,CADPRO where P2CHAVE IS null'
      '          and PDCODEMP=P2CODEMP'
      '          and PDCODPRO=P2CODPRO'
      ''
      '      ')
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 72
    object Qr_PSintP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_PSintP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PSintP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PSintP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_PSintP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_PSintP2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_PSintP2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_PSintP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_PSintP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_PSintP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_PSintPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PSintPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PSintP2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Qr_PSintP2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_PSintP2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Qr_PSintP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_PSintP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_PSintP2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Qr_PSintP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_PSintP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_PSintCFONF: TFloatField
      FieldName = 'CFONF'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_PSintCODPRO_ORI: TStringField
      FieldName = 'CODPRO_ORI'
      Size = 40
    end
    object Qr_PSintNOMPRO_ORI: TStringField
      FieldName = 'NOMPRO_ORI'
      Size = 53
    end
  end
  object Qr_PsintE: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF2ITEM,PF2CODPRO,PF2QTDP,PF2PU,PF2TOTDES,PF2BASEN,PF2BAS' +
        'ER,PF2ALIQ,'
      '           PF2ALIPI,PF2IPI,PF2ALIQNR,PF2LISTA,PF2TAB,PF2SIT'
      '           ,PF2CFO,PDNOME,PDUND'
      '          from CADPF2,CADPRO where PF2CHAVE IS null'
      '          and PDCODEMP=PF2CODEMP '
      '          and PDCODPRO=PF2CODPRO'
      ''
      '      ')
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 64
    object Qr_PsintEPF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_PsintEPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_PsintEPF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_PsintEPF2PU: TFloatField
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_PsintEPF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_PsintEPF2BASER: TFloatField
      FieldName = 'PF2BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_PsintEPF2ALIQ: TFloatField
      FieldName = 'PF2ALIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Qr_PsintEPF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Qr_PsintEPF2IPI: TFloatField
      FieldName = 'PF2IPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Qr_PsintEPF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQNR'
    end
    object Qr_PsintEPF2TAB: TStringField
      FieldName = 'PF2TAB'
      Origin = 'SG_ASSOC.CADPF2.PF2TAB'
      Size = 1
    end
    object Qr_PsintEPF2SIT: TStringField
      FieldName = 'PF2SIT'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 4
    end
    object Qr_PsintEPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_PsintEPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PsintEPF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_PsintEPF2LISTA: TFloatField
      FieldName = 'PF2LISTA'
      Origin = 'SG_ASSOC.CADPF2.PF2LISTA'
    end
    object Qr_PsintEPF2CFO: TFloatField
      FieldName = 'PF2CFO'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
  end
  object Tb_R502: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'R50SEQ'
        DataType = ftFloat
      end
      item
        Name = 'R50TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'R50NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'R50CFO'
        DataType = ftFloat
      end
      item
        Name = 'R50CGC'
        DataType = ftFloat
      end
      item
        Name = 'R50IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'R50DTEMIS'
        DataType = ftDate
      end
      item
        Name = 'R50UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R50MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R50SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'R50SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R50VALOR'
        DataType = ftFloat
      end
      item
        Name = 'R50BASE'
        DataType = ftFloat
      end
      item
        Name = 'R50ICMS'
        DataType = ftFloat
      end
      item
        Name = 'R50ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'R50OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'R50ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'R50SIT'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    TableName = 'CADR50'
    Left = 152
    Top = 16
    object Tb_R502R50SEQ: TFloatField
      FieldName = 'R50SEQ'
    end
    object Tb_R502R50TIPO: TStringField
      FieldName = 'R50TIPO'
      Size = 1
    end
    object Tb_R502R50NUMERO: TFloatField
      FieldName = 'R50NUMERO'
    end
    object Tb_R502R50CFO: TFloatField
      FieldName = 'R50CFO'
    end
    object Tb_R502R50CGC: TFloatField
      FieldName = 'R50CGC'
    end
    object Tb_R502R50IE: TStringField
      FieldName = 'R50IE'
      Size = 14
    end
    object Tb_R502R50DTEMIS: TDateField
      FieldName = 'R50DTEMIS'
    end
    object Tb_R502R50UF: TStringField
      FieldName = 'R50UF'
      Size = 2
    end
    object Tb_R502R50MODELO: TStringField
      FieldName = 'R50MODELO'
      Size = 2
    end
    object Tb_R502R50SERIE: TStringField
      FieldName = 'R50SERIE'
      Size = 3
    end
    object Tb_R502R50SUBSERIE: TStringField
      FieldName = 'R50SUBSERIE'
      Size = 2
    end
    object Tb_R502R50VALOR: TFloatField
      FieldName = 'R50VALOR'
    end
    object Tb_R502R50BASE: TFloatField
      FieldName = 'R50BASE'
    end
    object Tb_R502R50ICMS: TFloatField
      FieldName = 'R50ICMS'
    end
    object Tb_R502R50ISENTAS: TFloatField
      FieldName = 'R50ISENTAS'
    end
    object Tb_R502R50OUTRAS: TFloatField
      FieldName = 'R50OUTRAS'
    end
    object Tb_R502R50ALIQ: TFloatField
      FieldName = 'R50ALIQ'
    end
    object Tb_R502R50SIT: TStringField
      FieldName = 'R50SIT'
      Size = 1
    end
  end
  object Tb_R512: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'R51TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'R51NUMERO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'R51CFO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'R51CGC'
        DataType = ftFloat
      end
      item
        Name = 'R51DTEMIS'
        DataType = ftDate
      end
      item
        Name = 'R51UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R51SERIE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R51SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R51VALOR'
        DataType = ftFloat
      end
      item
        Name = 'R51VALORIPI'
        DataType = ftFloat
      end
      item
        Name = 'R51ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'R51OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'R51SIT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'R51INSCRICAO'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'CADR51'
    Left = 198
    Top = 18
    object Tb_R512R51TIPO: TStringField
      FieldName = 'R51TIPO'
      Required = True
      Size = 1
    end
    object Tb_R512R51NUMERO: TFloatField
      FieldName = 'R51NUMERO'
      Required = True
    end
    object Tb_R512R51CFO: TFloatField
      FieldName = 'R51CFO'
      Required = True
    end
    object Tb_R512R51CGC: TFloatField
      FieldName = 'R51CGC'
    end
    object Tb_R512R51DTEMIS: TDateField
      FieldName = 'R51DTEMIS'
    end
    object Tb_R512R51UF: TStringField
      FieldName = 'R51UF'
      Size = 2
    end
    object Tb_R512R51SERIE: TStringField
      FieldName = 'R51SERIE'
      Required = True
      Size = 2
    end
    object Tb_R512R51SUBSERIE: TStringField
      FieldName = 'R51SUBSERIE'
      Size = 2
    end
    object Tb_R512R51VALOR: TFloatField
      FieldName = 'R51VALOR'
    end
    object Tb_R512R51VALORIPI: TFloatField
      FieldName = 'R51VALORIPI'
    end
    object Tb_R512R51ISENTAS: TFloatField
      FieldName = 'R51ISENTAS'
    end
    object Tb_R512R51OUTRAS: TFloatField
      FieldName = 'R51OUTRAS'
    end
    object Tb_R512R51SIT: TStringField
      FieldName = 'R51SIT'
      Size = 1
    end
    object Tb_R512R51INSCRICAO: TStringField
      FieldName = 'R51INSCRICAO'
    end
  end
  object Tb_R532: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'R53NUMERO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'R53CFO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'R53CGC'
        DataType = ftFloat
      end
      item
        Name = 'R53IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'R53DTEMIS'
        DataType = ftDate
      end
      item
        Name = 'R53UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R53MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R53SERIE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R53BASE'
        DataType = ftFloat
      end
      item
        Name = 'R53ICMSR'
        DataType = ftFloat
      end
      item
        Name = 'R53DESP'
        DataType = ftFloat
      end
      item
        Name = 'R53SIT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'R53SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R53TIPO'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    TableName = 'CADR53'
    Left = 240
    Top = 20
    object Tb_R532R53NUMERO: TFloatField
      FieldName = 'R53NUMERO'
      Required = True
    end
    object Tb_R532R53CFO: TFloatField
      FieldName = 'R53CFO'
      Required = True
    end
    object Tb_R532R53CGC: TFloatField
      FieldName = 'R53CGC'
    end
    object Tb_R532R53IE: TStringField
      FieldName = 'R53IE'
      Size = 14
    end
    object Tb_R532R53DTEMIS: TDateField
      FieldName = 'R53DTEMIS'
    end
    object Tb_R532R53UF: TStringField
      FieldName = 'R53UF'
      Size = 2
    end
    object Tb_R532R53MODELO: TStringField
      FieldName = 'R53MODELO'
      Size = 2
    end
    object Tb_R532R53SERIE: TStringField
      FieldName = 'R53SERIE'
      Required = True
      Size = 2
    end
    object Tb_R532R53BASE: TFloatField
      FieldName = 'R53BASE'
    end
    object Tb_R532R53ICMSR: TFloatField
      FieldName = 'R53ICMSR'
    end
    object Tb_R532R53DESP: TFloatField
      FieldName = 'R53DESP'
    end
    object Tb_R532R53SIT: TStringField
      FieldName = 'R53SIT'
      Size = 1
    end
    object Tb_R532R53SUBSERIE: TStringField
      FieldName = 'R53SUBSERIE'
      Size = 2
    end
    object Tb_R532R53TIPO: TStringField
      FieldName = 'R53TIPO'
      Size = 1
    end
  end
  object Tb_R542: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'R54SEQ'
        DataType = ftFloat
      end
      item
        Name = 'R54TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'R54NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'R54ITEM'
        DataType = ftFloat
      end
      item
        Name = 'R54CGC'
        DataType = ftFloat
      end
      item
        Name = 'R54MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R54SERIE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'R54SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R54CFO'
        DataType = ftFloat
      end
      item
        Name = 'R54CODIGO'
        DataType = ftFloat
      end
      item
        Name = 'R54QTD'
        DataType = ftFloat
      end
      item
        Name = 'R54VALOR'
        DataType = ftFloat
      end
      item
        Name = 'R54DESC'
        DataType = ftFloat
      end
      item
        Name = 'R54BASE'
        DataType = ftFloat
      end
      item
        Name = 'R54BASER'
        DataType = ftFloat
      end
      item
        Name = 'R54IPI'
        DataType = ftFloat
      end
      item
        Name = 'R54AL'
        DataType = ftFloat
      end
      item
        Name = 'R54SITTRI'
        DataType = ftString
        Size = 3
      end>
    StoreDefs = True
    TableName = 'CADR54'
    Left = 272
    Top = 21
    object Tb_R542R54SEQ: TFloatField
      FieldName = 'R54SEQ'
    end
    object Tb_R542R54TIPO: TStringField
      FieldName = 'R54TIPO'
      Size = 1
    end
    object Tb_R542R54NUMERO: TFloatField
      FieldName = 'R54NUMERO'
    end
    object Tb_R542R54ITEM: TFloatField
      FieldName = 'R54ITEM'
    end
    object Tb_R542R54CGC: TFloatField
      FieldName = 'R54CGC'
    end
    object Tb_R542R54MODELO: TStringField
      FieldName = 'R54MODELO'
      Size = 2
    end
    object Tb_R542R54SERIE: TStringField
      FieldName = 'R54SERIE'
      Required = True
      Size = 3
    end
    object Tb_R542R54SUBSERIE: TStringField
      FieldName = 'R54SUBSERIE'
      Size = 2
    end
    object Tb_R542R54CFO: TFloatField
      FieldName = 'R54CFO'
    end
    object Tb_R542R54CODIGO: TFloatField
      FieldName = 'R54CODIGO'
    end
    object Tb_R542R54QTD: TFloatField
      FieldName = 'R54QTD'
    end
    object Tb_R542R54VALOR: TFloatField
      FieldName = 'R54VALOR'
    end
    object Tb_R542R54DESC: TFloatField
      FieldName = 'R54DESC'
    end
    object Tb_R542R54BASE: TFloatField
      FieldName = 'R54BASE'
    end
    object Tb_R542R54BASER: TFloatField
      FieldName = 'R54BASER'
    end
    object Tb_R542R54IPI: TFloatField
      FieldName = 'R54IPI'
    end
    object Tb_R542R54AL: TFloatField
      FieldName = 'R54AL'
    end
    object Tb_R542R54SITTRI: TStringField
      FieldName = 'R54SITTRI'
      Size = 3
    end
  end
  object Tb_R752: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'R75CODIGO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'R75DATAI'
        DataType = ftDate
      end
      item
        Name = 'R75DATAF'
        DataType = ftDate
      end
      item
        Name = 'R75CODNCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'R75NOME'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'R75UND'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'R75SIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'R75IPI'
        DataType = ftFloat
      end
      item
        Name = 'R75ICMS'
        DataType = ftFloat
      end
      item
        Name = 'R75REDUT'
        DataType = ftFloat
      end
      item
        Name = 'R75BASER'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'Tb_R750'
        Fields = 'R75CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CADR75'
    Left = 312
    Top = 21
    object Tb_R752R75CODIGO: TFloatField
      FieldName = 'R75CODIGO'
      Required = True
    end
    object Tb_R752R75DATAI: TDateField
      FieldName = 'R75DATAI'
    end
    object Tb_R752R75DATAF: TDateField
      FieldName = 'R75DATAF'
    end
    object Tb_R752R75CODNCM: TStringField
      FieldName = 'R75CODNCM'
      Size = 8
    end
    object Tb_R752R75NOME: TStringField
      FieldName = 'R75NOME'
      Size = 53
    end
    object Tb_R752R75UND: TStringField
      FieldName = 'R75UND'
      Size = 6
    end
    object Tb_R752R75SIT: TStringField
      FieldName = 'R75SIT'
      Size = 3
    end
    object Tb_R752R75IPI: TFloatField
      FieldName = 'R75IPI'
    end
    object Tb_R752R75ICMS: TFloatField
      FieldName = 'R75ICMS'
    end
    object Tb_R752R75REDUT: TFloatField
      FieldName = 'R75REDUT'
    end
    object Tb_R752R75BASER: TFloatField
      FieldName = 'R75BASER'
    end
  end
  object Tb_RE: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'ENTRADA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'EMITENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VLRCONTABIL'
        DataType = ftFloat
      end
      item
        Name = 'CODC'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CFO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'X'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BASE'
        DataType = ftFloat
      end
      item
        Name = 'ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'IMPOSTO'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'BASER'
        DataType = ftFloat
      end
      item
        Name = 'ICMSR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'STATUS'
        DataType = ftFloat
      end
      item
        Name = 'ORDEM'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'CADRE'
    Left = 48
    Top = 128
    object Tb_REENTRADA: TStringField
      FieldName = 'ENTRADA'
      Size = 2
    end
    object Tb_REESP: TStringField
      FieldName = 'ESP'
      Size = 3
    end
    object Tb_RESERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object Tb_RENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object Tb_REDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Tb_REEMITENTE: TStringField
      FieldName = 'EMITENTE'
    end
    object Tb_REUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Tb_REVLRCONTABIL: TFloatField
      FieldName = 'VLRCONTABIL'
    end
    object Tb_RECODC: TStringField
      FieldName = 'CODC'
      Size = 5
    end
    object Tb_RECFO: TStringField
      FieldName = 'CFO'
      Size = 5
    end
    object Tb_RETIPO: TStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object Tb_REX: TStringField
      FieldName = 'X'
      Size = 1
    end
    object Tb_REBASE: TFloatField
      FieldName = 'BASE'
    end
    object Tb_REALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object Tb_REIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object Tb_RECHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Tb_REISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Tb_REOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object Tb_REBASER: TFloatField
      FieldName = 'BASER'
    end
    object Tb_REICMSR: TStringField
      FieldName = 'ICMSR'
    end
    object Tb_RESTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object Tb_REORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object Tb_RSE: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'CFO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'VLRCONTABIL'
        DataType = ftFloat
      end
      item
        Name = 'BASE01'
        DataType = ftFloat
      end
      item
        Name = 'VALOR01'
        DataType = ftFloat
      end
      item
        Name = 'BASE02'
        DataType = ftFloat
      end
      item
        Name = 'VALOR02'
        DataType = ftFloat
      end
      item
        Name = 'BASE03'
        DataType = ftFloat
      end
      item
        Name = 'VALOR03'
        DataType = ftFloat
      end
      item
        Name = 'BASE04'
        DataType = ftFloat
      end
      item
        Name = 'VALOR04'
        DataType = ftFloat
      end
      item
        Name = 'BASE05'
        DataType = ftFloat
      end
      item
        Name = 'VALOR05'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'Tb_RSE0'
        Fields = 'CFO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CADRSE'
    Left = 11
    Top = 131
    object Tb_RSECFO: TStringField
      FieldName = 'CFO'
      Size = 5
    end
    object Tb_RSEUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Tb_RSEALIQ: TFloatField
      FieldName = 'ALIQ'
    end
    object Tb_RSEVLRCONTABIL: TFloatField
      FieldName = 'VLRCONTABIL'
    end
    object Tb_RSEBASE01: TFloatField
      FieldName = 'BASE01'
    end
    object Tb_RSEVALOR01: TFloatField
      FieldName = 'VALOR01'
    end
    object Tb_RSEBASE02: TFloatField
      FieldName = 'BASE02'
    end
    object Tb_RSEVALOR02: TFloatField
      FieldName = 'VALOR02'
    end
    object Tb_RSEBASE03: TFloatField
      FieldName = 'BASE03'
    end
    object Tb_RSEVALOR03: TFloatField
      FieldName = 'VALOR03'
    end
    object Tb_RSEBASE04: TFloatField
      FieldName = 'BASE04'
    end
    object Tb_RSEVALOR04: TFloatField
      FieldName = 'VALOR04'
    end
    object Tb_RSEBASE05: TFloatField
      FieldName = 'BASE05'
    end
    object Tb_RSEVALOR05: TFloatField
      FieldName = 'VALOR05'
    end
  end
  object Tb_RsCFO: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'CFO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TOTNOTA'
        DataType = ftFloat
      end
      item
        Name = 'BASEN'
        DataType = ftFloat
      end
      item
        Name = 'ICMSN'
        DataType = ftFloat
      end
      item
        Name = 'BASER'
        DataType = ftFloat
      end
      item
        Name = 'ICMSR'
        DataType = ftFloat
      end
      item
        Name = 'ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'IPI'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'Tb_RsCFO0'
        Fields = 'CFO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CADRSCFO'
    Left = 88
    Top = 136
    object Tb_RsCFOCFO: TFloatField
      FieldName = 'CFO'
      Required = True
    end
    object Tb_RsCFOTOTNOTA: TFloatField
      FieldName = 'TOTNOTA'
    end
    object Tb_RsCFOBASEN: TFloatField
      FieldName = 'BASEN'
    end
    object Tb_RsCFOICMSN: TFloatField
      FieldName = 'ICMSN'
    end
    object Tb_RsCFOBASER: TFloatField
      FieldName = 'BASER'
    end
    object Tb_RsCFOICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Tb_RsCFOISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Tb_RsCFOOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object Tb_RsCFOIPI: TFloatField
      FieldName = 'IPI'
    end
  end
  object Tb_R10: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T10_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T10_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T10_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T10_RAZAOSOCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'T10_MUNICIPIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'T10_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T10_FAX'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'T10_DATAINICIAL'
        DataType = ftDateTime
      end
      item
        Name = 'T10_DATAFINAL'
        DataType = ftDateTime
      end
      item
        Name = 'T10_CODCONV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T10_CODNATOP'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T10_CODFIN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T10_CH_FALTAS'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR10'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR11'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR50'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR51'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR53'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR54'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR55'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR60'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR61'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR70'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR71'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR74'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR75'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTR90'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA10'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA11'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA50'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA51'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA53'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA54'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA55'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA60'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA61'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA70'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA71'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA74'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA75'
        DataType = ftFloat
      end
      item
        Name = 'T10_TOTA90'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'CADR10'
    Left = 155
    Top = 129
    object Tb_R10T10_TIPO: TStringField
      FieldName = 'T10_TIPO'
      Size = 2
    end
    object Tb_R10T10_CNPJ: TStringField
      FieldName = 'T10_CNPJ'
      Size = 14
    end
    object Tb_R10T10_IE: TStringField
      FieldName = 'T10_IE'
      Size = 14
    end
    object Tb_R10T10_RAZAOSOCIAL: TStringField
      FieldName = 'T10_RAZAOSOCIAL'
      Size = 35
    end
    object Tb_R10T10_MUNICIPIO: TStringField
      FieldName = 'T10_MUNICIPIO'
      Size = 30
    end
    object Tb_R10T10_UF: TStringField
      FieldName = 'T10_UF'
      Size = 2
    end
    object Tb_R10T10_FAX: TStringField
      FieldName = 'T10_FAX'
      Size = 10
    end
    object Tb_R10T10_DATAINICIAL: TDateTimeField
      FieldName = 'T10_DATAINICIAL'
    end
    object Tb_R10T10_DATAFINAL: TDateTimeField
      FieldName = 'T10_DATAFINAL'
    end
    object Tb_R10T10_CODCONV: TStringField
      FieldName = 'T10_CODCONV'
      Size = 1
    end
    object Tb_R10T10_CODNATOP: TStringField
      FieldName = 'T10_CODNATOP'
      Size = 1
    end
    object Tb_R10T10_CODFIN: TStringField
      FieldName = 'T10_CODFIN'
      Size = 1
    end
    object Tb_R10T10_CH_FALTAS: TFloatField
      FieldName = 'T10_CH_FALTAS'
    end
    object Tb_R10T10_TOTR10: TFloatField
      FieldName = 'T10_TOTR10'
    end
    object Tb_R10T10_TOTR11: TFloatField
      FieldName = 'T10_TOTR11'
    end
    object Tb_R10T10_TOTR50: TFloatField
      FieldName = 'T10_TOTR50'
    end
    object Tb_R10T10_TOTR51: TFloatField
      FieldName = 'T10_TOTR51'
    end
    object Tb_R10T10_TOTR53: TFloatField
      FieldName = 'T10_TOTR53'
    end
    object Tb_R10T10_TOTR54: TFloatField
      FieldName = 'T10_TOTR54'
    end
    object Tb_R10T10_TOTR55: TFloatField
      FieldName = 'T10_TOTR55'
    end
    object Tb_R10T10_TOTR60: TFloatField
      FieldName = 'T10_TOTR60'
    end
    object Tb_R10T10_TOTR61: TFloatField
      FieldName = 'T10_TOTR61'
    end
    object Tb_R10T10_TOTR70: TFloatField
      FieldName = 'T10_TOTR70'
    end
    object Tb_R10T10_TOTR71: TFloatField
      FieldName = 'T10_TOTR71'
    end
    object Tb_R10T10_TOTR74: TFloatField
      FieldName = 'T10_TOTR74'
    end
    object Tb_R10T10_TOTR75: TFloatField
      FieldName = 'T10_TOTR75'
    end
    object Tb_R10T10_TOTR90: TFloatField
      FieldName = 'T10_TOTR90'
    end
    object Tb_R10T10_TOTA10: TFloatField
      FieldName = 'T10_TOTA10'
    end
    object Tb_R10T10_TOTA11: TFloatField
      FieldName = 'T10_TOTA11'
    end
    object Tb_R10T10_TOTA50: TFloatField
      FieldName = 'T10_TOTA50'
    end
    object Tb_R10T10_TOTA51: TFloatField
      FieldName = 'T10_TOTA51'
    end
    object Tb_R10T10_TOTA53: TFloatField
      FieldName = 'T10_TOTA53'
    end
    object Tb_R10T10_TOTA54: TFloatField
      FieldName = 'T10_TOTA54'
    end
    object Tb_R10T10_TOTA55: TFloatField
      FieldName = 'T10_TOTA55'
    end
    object Tb_R10T10_TOTA60: TFloatField
      FieldName = 'T10_TOTA60'
    end
    object Tb_R10T10_TOTA61: TFloatField
      FieldName = 'T10_TOTA61'
    end
    object Tb_R10T10_TOTA70: TFloatField
      FieldName = 'T10_TOTA70'
    end
    object Tb_R10T10_TOTA71: TFloatField
      FieldName = 'T10_TOTA71'
    end
    object Tb_R10T10_TOTA74: TFloatField
      FieldName = 'T10_TOTA74'
    end
    object Tb_R10T10_TOTA75: TFloatField
      FieldName = 'T10_TOTA75'
    end
    object Tb_R10T10_TOTA90: TFloatField
      FieldName = 'T10_TOTA90'
    end
  end
  object Tb_R11: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T11_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T11_LOGRADOURO'
        DataType = ftString
        Size = 34
      end
      item
        Name = 'T11_NUMERO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'T11_COMPLEMENTO'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'T11_BAIRRO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'T11_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'T11_NOMECONTATO'
        DataType = ftString
        Size = 28
      end
      item
        Name = 'T11_TELEFONE'
        DataType = ftString
        Size = 12
      end>
    StoreDefs = True
    TableName = 'CADR11'
    Left = 200
    Top = 129
    object Tb_R11T11_TIPO: TStringField
      FieldName = 'T11_TIPO'
      Size = 2
    end
    object Tb_R11T11_LOGRADOURO: TStringField
      FieldName = 'T11_LOGRADOURO'
      Size = 34
    end
    object Tb_R11T11_NUMERO: TStringField
      FieldName = 'T11_NUMERO'
      Size = 5
    end
    object Tb_R11T11_COMPLEMENTO: TStringField
      FieldName = 'T11_COMPLEMENTO'
      Size = 22
    end
    object Tb_R11T11_BAIRRO: TStringField
      FieldName = 'T11_BAIRRO'
      Size = 15
    end
    object Tb_R11T11_CEP: TStringField
      FieldName = 'T11_CEP'
      Size = 8
    end
    object Tb_R11T11_NOMECONTATO: TStringField
      FieldName = 'T11_NOMECONTATO'
      Size = 28
    end
    object Tb_R11T11_TELEFONE: TStringField
      FieldName = 'T11_TELEFONE'
      Size = 12
    end
  end
  object Tb_R50: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T50_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T50_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T50_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T50_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T50_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T50_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T50_MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T50_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T50_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T50_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T50_CFOP'
        DataType = ftFloat
      end
      item
        Name = 'T50_VLTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'T50_BCICMS'
        DataType = ftFloat
      end
      item
        Name = 'T50_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'T50_ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'T50_OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'T50_ALIQUOTA'
        DataType = ftFloat
      end
      item
        Name = 'T50_SITUACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T50_REPETIDA'
        DataType = ftFloat
      end
      item
        Name = 'T50_EMITENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T50_ENTSAI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T50_SEQUENCIA'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'CADR50'
    Left = 242
    Top = 130
    object Tb_R50T50_TIPO: TStringField
      FieldName = 'T50_TIPO'
      Size = 2
    end
    object Tb_R50T50_CNPJ: TStringField
      FieldName = 'T50_CNPJ'
      Size = 14
    end
    object Tb_R50T50_IE: TStringField
      FieldName = 'T50_IE'
      Size = 14
    end
    object Tb_R50T50_DATA: TDateTimeField
      FieldName = 'T50_DATA'
    end
    object Tb_R50T50_DATA_REF: TDateTimeField
      FieldName = 'T50_DATA_REF'
    end
    object Tb_R50T50_UF: TStringField
      FieldName = 'T50_UF'
      Size = 2
    end
    object Tb_R50T50_MODELO: TStringField
      FieldName = 'T50_MODELO'
      Size = 2
    end
    object Tb_R50T50_SERIE: TStringField
      FieldName = 'T50_SERIE'
      Size = 3
    end
    object Tb_R50T50_SUBSERIE: TStringField
      FieldName = 'T50_SUBSERIE'
      Size = 2
    end
    object Tb_R50T50_NUMERO: TFloatField
      FieldName = 'T50_NUMERO'
    end
    object Tb_R50T50_CFOP: TFloatField
      FieldName = 'T50_CFOP'
    end
    object Tb_R50T50_VLTOTAL: TFloatField
      FieldName = 'T50_VLTOTAL'
    end
    object Tb_R50T50_BCICMS: TFloatField
      FieldName = 'T50_BCICMS'
    end
    object Tb_R50T50_ICMS: TFloatField
      FieldName = 'T50_ICMS'
    end
    object Tb_R50T50_ISENTAS: TFloatField
      FieldName = 'T50_ISENTAS'
    end
    object Tb_R50T50_OUTRAS: TFloatField
      FieldName = 'T50_OUTRAS'
    end
    object Tb_R50T50_ALIQUOTA: TFloatField
      FieldName = 'T50_ALIQUOTA'
    end
    object Tb_R50T50_SITUACAO: TStringField
      FieldName = 'T50_SITUACAO'
      Size = 1
    end
    object Tb_R50T50_REPETIDA: TFloatField
      FieldName = 'T50_REPETIDA'
    end
    object Tb_R50T50_EMITENTE: TStringField
      FieldName = 'T50_EMITENTE'
      Size = 1
    end
    object Tb_R50T50_ENTSAI: TStringField
      FieldName = 'T50_ENTSAI'
      Size = 1
    end
    object Tb_R50T50_SEQUENCIA: TFloatField
      FieldName = 'T50_SEQUENCIA'
    end
  end
  object Tb_R51: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T51_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T51_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T51_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T51_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T51_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T51_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T51_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T51_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T51_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T51_CFOP'
        DataType = ftFloat
      end
      item
        Name = 'T51_VLTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'T51_VLIPI'
        DataType = ftFloat
      end
      item
        Name = 'T51_ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'T51_OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'T51_BRANCOS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'T51_SITUACAO'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    TableName = 'CADR51'
    Left = 286
    Top = 130
    object Tb_R51T51_TIPO: TStringField
      FieldName = 'T51_TIPO'
      Size = 2
    end
    object Tb_R51T51_CNPJ: TStringField
      FieldName = 'T51_CNPJ'
      Size = 14
    end
    object Tb_R51T51_IE: TStringField
      FieldName = 'T51_IE'
      Size = 14
    end
    object Tb_R51T51_DATA: TDateTimeField
      FieldName = 'T51_DATA'
    end
    object Tb_R51T51_DATA_REF: TDateTimeField
      FieldName = 'T51_DATA_REF'
    end
    object Tb_R51T51_UF: TStringField
      FieldName = 'T51_UF'
      Size = 2
    end
    object Tb_R51T51_SERIE: TStringField
      FieldName = 'T51_SERIE'
      Size = 3
    end
    object Tb_R51T51_SUBSERIE: TStringField
      FieldName = 'T51_SUBSERIE'
      Size = 2
    end
    object Tb_R51T51_NUMERO: TFloatField
      FieldName = 'T51_NUMERO'
    end
    object Tb_R51T51_CFOP: TFloatField
      FieldName = 'T51_CFOP'
    end
    object Tb_R51T51_VLTOTAL: TFloatField
      FieldName = 'T51_VLTOTAL'
    end
    object Tb_R51T51_VLIPI: TFloatField
      FieldName = 'T51_VLIPI'
    end
    object Tb_R51T51_ISENTAS: TFloatField
      FieldName = 'T51_ISENTAS'
    end
    object Tb_R51T51_OUTRAS: TFloatField
      FieldName = 'T51_OUTRAS'
    end
    object Tb_R51T51_BRANCOS: TStringField
      FieldName = 'T51_BRANCOS'
    end
    object Tb_R51T51_SITUACAO: TStringField
      FieldName = 'T51_SITUACAO'
      Size = 1
    end
  end
  object Tb_R53: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T53_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T53_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T53_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T53_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T53_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T53_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T53_MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T53_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T53_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T53_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T53_CFOP'
        DataType = ftFloat
      end
      item
        Name = 'T53_BCICMSST'
        DataType = ftFloat
      end
      item
        Name = 'T53_ICMSRETIDO'
        DataType = ftFloat
      end
      item
        Name = 'T53_DESPACES'
        DataType = ftFloat
      end
      item
        Name = 'T53_SITUACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T53_EMITENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T53_CODANT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T53_BRANCOS'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    TableName = 'CADR53'
    Left = 152
    Top = 180
    object Tb_R53T53_TIPO: TStringField
      FieldName = 'T53_TIPO'
      Size = 2
    end
    object Tb_R53T53_CNPJ: TStringField
      FieldName = 'T53_CNPJ'
      Size = 14
    end
    object Tb_R53T53_IE: TStringField
      FieldName = 'T53_IE'
      Size = 14
    end
    object Tb_R53T53_DATA: TDateTimeField
      FieldName = 'T53_DATA'
    end
    object Tb_R53T53_DATA_REF: TDateTimeField
      FieldName = 'T53_DATA_REF'
    end
    object Tb_R53T53_UF: TStringField
      FieldName = 'T53_UF'
      Size = 2
    end
    object Tb_R53T53_MODELO: TStringField
      FieldName = 'T53_MODELO'
      Size = 2
    end
    object Tb_R53T53_SERIE: TStringField
      FieldName = 'T53_SERIE'
      Size = 3
    end
    object Tb_R53T53_SUBSERIE: TStringField
      FieldName = 'T53_SUBSERIE'
      Size = 2
    end
    object Tb_R53T53_NUMERO: TFloatField
      FieldName = 'T53_NUMERO'
    end
    object Tb_R53T53_CFOP: TFloatField
      FieldName = 'T53_CFOP'
    end
    object Tb_R53T53_BCICMSST: TFloatField
      FieldName = 'T53_BCICMSST'
    end
    object Tb_R53T53_ICMSRETIDO: TFloatField
      FieldName = 'T53_ICMSRETIDO'
    end
    object Tb_R53T53_DESPACES: TFloatField
      FieldName = 'T53_DESPACES'
    end
    object Tb_R53T53_SITUACAO: TStringField
      FieldName = 'T53_SITUACAO'
      Size = 1
    end
    object Tb_R53T53_EMITENTE: TStringField
      FieldName = 'T53_EMITENTE'
      Size = 1
    end
    object Tb_R53T53_CODANT: TStringField
      FieldName = 'T53_CODANT'
      Size = 1
    end
    object Tb_R53T53_BRANCOS: TStringField
      FieldName = 'T53_BRANCOS'
      Size = 1
    end
  end
  object Tb_R54: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T54_ENTSAI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T54_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T54_SEQUENCIA'
        DataType = ftFloat
      end
      item
        Name = 'T54_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T54_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T54_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T54_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T54_MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T54_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T54_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T54_CFOP'
        DataType = ftFloat
      end
      item
        Name = 'T54_CST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T54_ITEM'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T54_CODPROD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T54_QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'T54_VLPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'T54_VLDESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'T54_BCICMS'
        DataType = ftFloat
      end
      item
        Name = 'T54_BCICMSST'
        DataType = ftFloat
      end
      item
        Name = 'T54_VLIPI'
        DataType = ftFloat
      end
      item
        Name = 'T54_ALIQ'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'TBTIPO54'
    Left = 200
    Top = 181
    object Tb_R54T54_ENTSAI: TStringField
      FieldName = 'T54_ENTSAI'
      Size = 2
    end
    object Tb_R54T54_DATA: TDateTimeField
      FieldName = 'T54_DATA'
    end
    object Tb_R54T54_SEQUENCIA: TFloatField
      FieldName = 'T54_SEQUENCIA'
    end
    object Tb_R54T54_DATA_REF: TDateTimeField
      FieldName = 'T54_DATA_REF'
    end
    object Tb_R54T54_SUBSERIE: TStringField
      FieldName = 'T54_SUBSERIE'
      Size = 2
    end
    object Tb_R54T54_TIPO: TStringField
      FieldName = 'T54_TIPO'
      Size = 2
    end
    object Tb_R54T54_CNPJ: TStringField
      FieldName = 'T54_CNPJ'
      Size = 14
    end
    object Tb_R54T54_MODELO: TStringField
      FieldName = 'T54_MODELO'
      Size = 2
    end
    object Tb_R54T54_SERIE: TStringField
      FieldName = 'T54_SERIE'
      Size = 3
    end
    object Tb_R54T54_NUMERO: TFloatField
      FieldName = 'T54_NUMERO'
    end
    object Tb_R54T54_CFOP: TFloatField
      FieldName = 'T54_CFOP'
    end
    object Tb_R54T54_CST: TStringField
      FieldName = 'T54_CST'
      Size = 3
    end
    object Tb_R54T54_ITEM: TStringField
      FieldName = 'T54_ITEM'
      Size = 3
    end
    object Tb_R54T54_CODPROD: TStringField
      FieldName = 'T54_CODPROD'
      Size = 14
    end
    object Tb_R54T54_QUANTIDADE: TFloatField
      FieldName = 'T54_QUANTIDADE'
    end
    object Tb_R54T54_VLPRODUTO: TFloatField
      FieldName = 'T54_VLPRODUTO'
    end
    object Tb_R54T54_VLDESCONTO: TFloatField
      FieldName = 'T54_VLDESCONTO'
    end
    object Tb_R54T54_BCICMS: TFloatField
      FieldName = 'T54_BCICMS'
    end
    object Tb_R54T54_BCICMSST: TFloatField
      FieldName = 'T54_BCICMSST'
    end
    object Tb_R54T54_VLIPI: TFloatField
      FieldName = 'T54_VLIPI'
    end
    object Tb_R54T54_ALIQ: TFloatField
      FieldName = 'T54_ALIQ'
    end
  end
  object Tb_R75: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T75_CODPROD'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T75_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T75_DATAINICIAL'
        DataType = ftDateTime
      end
      item
        Name = 'T75_DATAFINAL'
        DataType = ftDateTime
      end
      item
        Name = 'T75_CODNCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'T75_DESCRICAO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'T75_UNID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'T75_SITTRI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T75_ALIQUOTAIPI'
        DataType = ftFloat
      end
      item
        Name = 'T75_ALIQUOTAICMS'
        DataType = ftFloat
      end
      item
        Name = 'T75_REDBCICMS'
        DataType = ftFloat
      end
      item
        Name = 'T75_BCICMSST'
        DataType = ftFloat
      end
      item
        Name = 'T75_SELECION'
        DataType = ftFloat
      end
      item
        Name = 'T75_IVA'
        DataType = ftFloat
      end
      item
        Name = 'T75_REPETIDO'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'Tb_R750'
        Fields = 'T75_CODPROD'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CADR75'
    Left = 344
    Top = 181
    object Tb_R75T75_CODPROD: TStringField
      FieldName = 'T75_CODPROD'
      Size = 14
    end
    object Tb_R75T75_TIPO: TStringField
      FieldName = 'T75_TIPO'
      Size = 2
    end
    object Tb_R75T75_DATAINICIAL: TDateTimeField
      FieldName = 'T75_DATAINICIAL'
    end
    object Tb_R75T75_DATAFINAL: TDateTimeField
      FieldName = 'T75_DATAFINAL'
    end
    object Tb_R75T75_CODNCM: TStringField
      FieldName = 'T75_CODNCM'
      Size = 8
    end
    object Tb_R75T75_DESCRICAO: TStringField
      FieldName = 'T75_DESCRICAO'
      Size = 53
    end
    object Tb_R75T75_UNID: TStringField
      FieldName = 'T75_UNID'
      Size = 6
    end
    object Tb_R75T75_SITTRI: TStringField
      FieldName = 'T75_SITTRI'
      Size = 3
    end
    object Tb_R75T75_ALIQUOTAIPI: TFloatField
      FieldName = 'T75_ALIQUOTAIPI'
    end
    object Tb_R75T75_ALIQUOTAICMS: TFloatField
      FieldName = 'T75_ALIQUOTAICMS'
    end
    object Tb_R75T75_REDBCICMS: TFloatField
      FieldName = 'T75_REDBCICMS'
    end
    object Tb_R75T75_BCICMSST: TFloatField
      FieldName = 'T75_BCICMSST'
    end
    object Tb_R75T75_SELECION: TFloatField
      FieldName = 'T75_SELECION'
    end
    object Tb_R75T75_IVA: TFloatField
      FieldName = 'T75_IVA'
    end
    object Tb_R75T75_REPETIDO: TFloatField
      FieldName = 'T75_REPETIDO'
    end
  end
  object Qr_Ser: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2SITEM,P2SCODPRO,P2SQTD,P2SPRECO,P2STOTDES,'
      '          P2SBCISSQN,P2SALIQ,'
      '           P2SLISTA,P2STABELA,P2SSIT,'
      '           P2SCFO,P2SVISSQN,PDNOME,PDUND'
      '          from CADP02S,CADPRO where P2SCHAVE IS null'
      '          and PDCODEMP=P2SCODEMP'
      '          and PDCODPRO=P2SCODPRO'
      ''
      '      ')
    Left = 368
    Top = 16
    object Qr_SerP2SITEM: TFloatField
      FieldName = 'P2SITEM'
      Origin = 'SG_ASSOC.CADP02S.P2SITEM'
    end
    object Qr_SerP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Qr_SerP2SQTD: TFloatField
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Qr_SerP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Qr_SerP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Qr_SerP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Qr_SerP2SALIQ: TFloatField
      FieldName = 'P2SALIQ'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQ'
    end
    object Qr_SerP2SLISTA: TFloatField
      FieldName = 'P2SLISTA'
      Origin = 'SG_ASSOC.CADP02S.P2SLISTA'
    end
    object Qr_SerP2STABELA: TStringField
      FieldName = 'P2STABELA'
      Origin = 'SG_ASSOC.CADP02S.P2STABELA'
      Size = 1
    end
    object Qr_SerP2SSIT: TStringField
      FieldName = 'P2SSIT'
      Origin = 'SG_ASSOC.CADP02S.P2SSIT'
      Size = 3
    end
    object Qr_SerP2SCFO: TFloatField
      FieldName = 'P2SCFO'
      Origin = 'SG_ASSOC.CADP02S.P2SCFO'
    end
    object Qr_SerP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Qr_SerPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_SerPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Qr_ProSoma: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(P2TOTDES)  AS TOTDES'
      '       ,sum(P2BASEN)  AS BASEN'
      '       ,sum(P2BASER)  AS BASER'
      '       ,sum(P2ICMSN)  AS ICMSN'
      '       ,sum(P2ICMSNR) AS ICMSNR'
      '       ,sum(P2BCINR)  AS BCINR'
      '       ,sum(P2ICMSR)  AS ICMSR'
      '       ,sum(P2VALIPI)  AS VALIPI'
      '       ,sum(P2ISENTAS) AS ISENTAS'
      '       ,sum(P2TOTOUT)  AS OUTRAS'
      '       ,sum(P2TOTLIQ) AS TOTLIQ'
      
        '       ,P2CFO,P2CFOSUBECF AS CFONF,P2ALIQ,P2ALIQNR,P2ALIPI AS AL' +
        'IPI'
      'from CADP02'
      'where P2CHAVE is null'
      'group by P2CFO,P2CFOSUBECF,P2ALIQ,P2ALIQNR,P2ALIPI'
      '')
    Left = 416
    Top = 73
    object Qr_ProSomaTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_ProSomaBASEN: TFloatField
      FieldName = 'BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_ProSomaBASER: TFloatField
      FieldName = 'BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_ProSomaALIPI: TFloatField
      FieldName = 'ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_ProSomaTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_ProSomaP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_ProSomaP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_ProSomaP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_ProSomaICMSN: TFloatField
      FieldName = 'ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_ProSomaICMSR: TFloatField
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_ProSomaISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Qr_ProSomaICMSNR: TFloatField
      FieldName = 'ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Qr_ProSomaBCINR: TFloatField
      FieldName = 'BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Qr_ProSomaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Qr_ProSomaVALIPI: TFloatField
      FieldName = 'VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_ProSomaCFONF: TFloatField
      FieldName = 'CFONF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
  end
  object Qr_SerSoma: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(P2STOTDES) AS TOTDES'
      '       ,sum(P2SBCISSQN) AS BCISSQN'
      '       ,sum(P2SVISSQN)    AS VISSQN'
      '       ,sum(P2SQTD*P2SPRECO) AS TOTBRU'
      '       ,P2SCFO,P2SALIQ'
      'from CADP02S'
      'where P2SCHAVE is null'
      'group by P2SCFO,P2SALIQ')
    Left = 424
    Top = 15
    object Qr_SerSomaTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object Qr_SerSomaBCISSQN: TFloatField
      FieldName = 'BCISSQN'
    end
    object Qr_SerSomaVISSQN: TFloatField
      FieldName = 'VISSQN'
    end
    object Qr_SerSomaTOTBRU: TFloatField
      FieldName = 'TOTBRU'
    end
    object Qr_SerSomaP2SCFO: TFloatField
      FieldName = 'P2SCFO'
    end
    object Qr_SerSomaP2SALIQ: TFloatField
      FieldName = 'P2SALIQ'
    end
  end
  object Qr_PSintESoma: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(PF2TOTDES)   as TOTDES'
      '      ,sum(PF2BASEN)    as BASEN'
      '      ,sum(PF2BASER)    as BASER'
      '      ,sum(PF2ICMSN)    as ICMSN'
      '      ,sum(PF2ICMSR)    as ICMSR'
      '      ,sum(PF2IPI)      as IPI'
      '      ,sum(PF2ISENTAS)  as ISENTAS'
      '      ,sum(PF2OUTRAS)  as OUTRAS'
      '      ,sum((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTLIQ'
      
        '      ,PF2CFO,max(PF2CFOP_COMP) as PF2CFOP_COMP,PF2ALIQ,PF2ALIQN' +
        'R,PF2ALIPI'
      '      from CADPF2 where PF2CHAVE IS null'
      '      group by PF2CFO,PF2ALIQ,PF2ALIQNR,PF2ALIPI'
      '')
    Left = 312
    Top = 66
    object Qr_PSintESomaTOTDES: TFloatField
      FieldName = 'TOTDES'
    end
    object Qr_PSintESomaBASEN: TFloatField
      FieldName = 'BASEN'
    end
    object Qr_PSintESomaBASER: TFloatField
      FieldName = 'BASER'
    end
    object Qr_PSintESomaICMSN: TFloatField
      FieldName = 'ICMSN'
    end
    object Qr_PSintESomaICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_PSintESomaIPI: TFloatField
      FieldName = 'IPI'
    end
    object Qr_PSintESomaISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Qr_PSintESomaTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object Qr_PSintESomaPF2CFO: TFloatField
      FieldName = 'PF2CFO'
    end
    object Qr_PSintESomaPF2ALIQ: TFloatField
      FieldName = 'PF2ALIQ'
    end
    object Qr_PSintESomaPF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
    end
    object Qr_PSintESomaPF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
    end
    object Qr_PSintESomaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object Qr_PSintESomaPF2CFOP_COMP: TStringField
      FieldName = 'PF2CFOP_COMP'
      Size = 10
    end
  end
  object Tb_GNRE01: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GNRE01BeforeInsert
    AfterInsert = Tb_GNRE01AfterInsert
    BeforePost = Tb_GNRE01BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGNRE01')
    UpdateObject = U_GNRE01
    Left = 32
    Top = 248
    object Tb_GNRE01GN1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GN1CODEMP'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODEMP'
    end
    object Tb_GNRE01GN1LOTSEQ: TFloatField
      DisplayLabel = 'Lot.Sequencia'
      FieldName = 'GN1LOTSEQ'
      Origin = 'SG_ASSOC.CADGNRE01.GN1LOTSEQ'
    end
    object Tb_GNRE01GN1CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GN1CODIGO'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODIGO'
    end
    object Tb_GNRE01GN1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'GN1CODCLI'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODCLI'
    end
    object Tb_GNRE01GN1CNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'GN1CNPJ'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CNPJ'
    end
    object Tb_GNRE01GN1IE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'GN1IE'
      Origin = 'SG_ASSOC.CADGNRE01.GN1IE'
    end
    object Tb_GNRE01GN1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'GN1DATA'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATA'
    end
    object Tb_GNRE01GN1UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'GN1UF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1UF'
      Size = 2
    end
    object Tb_GNRE01GN1CODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco'
      FieldName = 'GN1CODBCO'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODBCO'
    end
    object Tb_GNRE01GN1AGENCIA: TStringField
      DisplayLabel = 'Agencia'
      FieldName = 'GN1AGENCIA'
      Origin = 'SG_ASSOC.CADGNRE01.GN1AGENCIA'
      Size = 10
    end
    object Tb_GNRE01GN1NUMAUT: TStringField
      DisplayLabel = 'N'#250'm.Autor'
      FieldName = 'GN1NUMAUT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1NUMAUT'
      Size = 30
    end
    object Tb_GNRE01GN1VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'GN1VALOR'
      Origin = 'SG_ASSOC.CADGNRE01.GN1VALOR'
    end
    object Tb_GNRE01GN1DATVEN: TDateTimeField
      DisplayLabel = 'Data Vcto'
      FieldName = 'GN1DATVEN'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATVEN'
    end
    object Tb_GNRE01GN1ANOREF: TFloatField
      DisplayLabel = 'Ano Ref.'
      FieldName = 'GN1ANOREF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1ANOREF'
    end
    object Tb_GNRE01GN1MESREF: TFloatField
      DisplayLabel = 'M'#234's Ref.'
      FieldName = 'GN1MESREF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1MESREF'
    end
    object Tb_GNRE01GN1MUMCONV: TStringField
      DisplayLabel = 'Num.Conv.'
      FieldName = 'GN1MUMCONV'
      Origin = 'SG_ASSOC.CADGNRE01.GN1MUMCONV'
      Size = 30
    end
    object Tb_GNRE01GN1CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'GN1CODUSR'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODUSR'
    end
    object Tb_GNRE01GN1DATINC: TDateTimeField
      DisplayLabel = 'Data Incl.'
      FieldName = 'GN1DATINC'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATINC'
    end
    object Tb_GNRE01GN1USRALT: TFloatField
      DisplayLabel = 'Usr Alt.'
      FieldName = 'GN1USRALT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1USRALT'
    end
    object Tb_GNRE01GN1DATALT: TDateTimeField
      DisplayLabel = 'Data alt.'
      FieldName = 'GN1DATALT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATALT'
    end
    object Tb_GNRE01GN1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'GN1STATUS'
      Origin = 'SG_ASSOC.CADGNRE01.GN1STATUS'
    end
    object Tb_GNRE01GN1UFST: TStringField
      FieldName = 'GN1UFST'
      Origin = 'SG_ASSOC.CADGNRE01.GN1UFST'
      Size = 2
    end
  end
  object Tb_GNRE02: TQuery
    CachedUpdates = True
    BeforePost = Tb_GNRE02BeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGNRE02')
    UpdateObject = U_GNRE02
    Left = 32
    Top = 304
    object Tb_GNRE02GN2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GN2CODEMP'
      Origin = 'SG_ASSOC.CADGNRE02.GN2CODEMP'
    end
    object Tb_GNRE02GN2LOTSEQ: TFloatField
      DisplayLabel = 'Lot.Seq.'
      FieldName = 'GN2LOTSEQ'
      Origin = 'SG_ASSOC.CADGNRE02.GN2LOTSEQ'
    end
    object Tb_GNRE02GN2CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GN2CODIGO'
      Origin = 'SG_ASSOC.CADGNRE02.GN2CODIGO'
    end
    object Tb_GNRE02GN2SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'GN2SEQ'
      Origin = 'SG_ASSOC.CADGNRE02.GN2SEQ'
    end
    object Tb_GNRE02GN2NUMDOC: TFloatField
      DisplayLabel = 'N'#250'mero Doc'
      FieldName = 'GN2NUMDOC'
      Origin = 'SG_ASSOC.CADGNRE02.GN2NUMDOC'
    end
    object Tb_GNRE02GN2MODDOC: TStringField
      DisplayLabel = 'Mod.Doc.'
      FieldName = 'GN2MODDOC'
      Origin = 'SG_ASSOC.CADGNRE02.GN2MODDOC'
      Size = 6
    end
    object Tb_GNRE02GN2SERDOC: TStringField
      DisplayLabel = 'S'#233'r.Doc'
      FieldName = 'GN2SERDOC'
      Origin = 'SG_ASSOC.CADGNRE02.GN2SERDOC'
      Size = 6
    end
    object Tb_GNRE02GN2SUBSER: TStringField
      DisplayLabel = 'Sub-Ser Doc'
      FieldName = 'GN2SUBSER'
      Origin = 'SG_ASSOC.CADGNRE02.GN2SUBSER'
      Size = 6
    end
    object Tb_GNRE02GN2DATDOC: TDateTimeField
      DisplayLabel = 'Data Doc'
      FieldName = 'GN2DATDOC'
      Origin = 'SG_ASSOC.CADGNRE02.GN2DATDOC'
    end
    object Tb_GNRE02GN2VALDOC: TFloatField
      DisplayLabel = 'Valor Doc'
      FieldName = 'GN2VALDOC'
      Origin = 'SG_ASSOC.CADGNRE02.GN2VALDOC'
    end
    object Tb_GNRE02GN2VALIMP: TFloatField
      DisplayLabel = 'Valor Imp'
      FieldName = 'GN2VALIMP'
      Origin = 'SG_ASSOC.CADGNRE02.GN2VALIMP'
    end
  end
  object U_GNRE01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGNRE01'
      'set'
      '  GN1CODEMP = :GN1CODEMP,'
      '  GN1LOTSEQ = :GN1LOTSEQ,'
      '  GN1CODIGO = :GN1CODIGO,'
      '  GN1CODCLI = :GN1CODCLI,'
      '  GN1CNPJ = :GN1CNPJ,'
      '  GN1IE = :GN1IE,'
      '  GN1DATA = :GN1DATA,'
      '  GN1UF = :GN1UF,'
      '  GN1CODBCO = :GN1CODBCO,'
      '  GN1AGENCIA = :GN1AGENCIA,'
      '  GN1NUMAUT = :GN1NUMAUT,'
      '  GN1VALOR = :GN1VALOR,'
      '  GN1DATVEN = :GN1DATVEN,'
      '  GN1ANOREF = :GN1ANOREF,'
      '  GN1MESREF = :GN1MESREF,'
      '  GN1MUMCONV = :GN1MUMCONV,'
      '  GN1CODUSR = :GN1CODUSR,'
      '  GN1DATINC = :GN1DATINC,'
      '  GN1USRALT = :GN1USRALT,'
      '  GN1DATALT = :GN1DATALT,'
      '  GN1STATUS = :GN1STATUS,'
      '  GN1UFST = :GN1UFST'
      'where'
      '  GN1CODEMP = :OLD_GN1CODEMP and'
      '  GN1LOTSEQ = :OLD_GN1LOTSEQ and'
      '  GN1CODIGO = :OLD_GN1CODIGO')
    InsertSQL.Strings = (
      'insert into CADGNRE01'
      '  (GN1CODEMP, GN1LOTSEQ, GN1CODIGO, GN1CODCLI, GN1CNPJ, GN1IE, '
      'GN1DATA, '
      
        '   GN1UF, GN1CODBCO, GN1AGENCIA, GN1NUMAUT, GN1VALOR, GN1DATVEN,' +
        ' '
      'GN1ANOREF, '
      '   GN1MESREF, GN1MUMCONV, GN1CODUSR, GN1DATINC, GN1USRALT, '
      'GN1DATALT, GN1STATUS, '
      '   GN1UFST)'
      'values'
      
        '  (:GN1CODEMP, :GN1LOTSEQ, :GN1CODIGO, :GN1CODCLI, :GN1CNPJ, :GN' +
        '1IE, '
      ':GN1DATA, '
      '   :GN1UF, :GN1CODBCO, :GN1AGENCIA, :GN1NUMAUT, :GN1VALOR, '
      ':GN1DATVEN, '
      '   :GN1ANOREF, :GN1MESREF, :GN1MUMCONV, :GN1CODUSR, :GN1DATINC, '
      ':GN1USRALT, '
      '   :GN1DATALT, :GN1STATUS, :GN1UFST)')
    DeleteSQL.Strings = (
      'delete from CADGNRE01'
      'where'
      '  GN1CODEMP = :OLD_GN1CODEMP and'
      '  GN1LOTSEQ = :OLD_GN1LOTSEQ and'
      '  GN1CODIGO = :OLD_GN1CODIGO')
    Left = 74
    Top = 249
  end
  object U_GNRE02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGNRE02'
      'set'
      '  GN2CODEMP = :GN2CODEMP,'
      '  GN2LOTSEQ = :GN2LOTSEQ,'
      '  GN2CODIGO = :GN2CODIGO,'
      '  GN2SEQ = :GN2SEQ,'
      '  GN2NUMDOC = :GN2NUMDOC,'
      '  GN2MODDOC = :GN2MODDOC,'
      '  GN2SERDOC = :GN2SERDOC,'
      '  GN2SUBSER = :GN2SUBSER,'
      '  GN2DATDOC = :GN2DATDOC,'
      '  GN2VALDOC = :GN2VALDOC,'
      '  GN2VALIMP = :GN2VALIMP'
      'where'
      '  GN2CODEMP = :OLD_GN2CODEMP and'
      '  GN2LOTSEQ = :OLD_GN2LOTSEQ and'
      '  GN2CODIGO = :OLD_GN2CODIGO and'
      '  GN2SEQ = :OLD_GN2SEQ')
    InsertSQL.Strings = (
      'insert into CADGNRE02'
      '  (GN2CODEMP, GN2LOTSEQ, GN2CODIGO, GN2SEQ, GN2NUMDOC, '
      'GN2MODDOC, GN2SERDOC, '
      '   GN2SUBSER, GN2DATDOC, GN2VALDOC, GN2VALIMP)'
      'values'
      '  (:GN2CODEMP, :GN2LOTSEQ, :GN2CODIGO, :GN2SEQ, :GN2NUMDOC, '
      ':GN2MODDOC, '
      '   :GN2SERDOC, :GN2SUBSER, :GN2DATDOC, :GN2VALDOC, :GN2VALIMP)')
    DeleteSQL.Strings = (
      'delete from CADGNRE02'
      'where'
      '  GN2CODEMP = :OLD_GN2CODEMP and'
      '  GN2LOTSEQ = :OLD_GN2LOTSEQ and'
      '  GN2CODIGO = :OLD_GN2CODIGO and'
      '  GN2SEQ = :OLD_GN2SEQ')
    Left = 79
    Top = 305
  end
  object Src_GNRE01: TDataSource
    DataSet = Tb_GNRE01
    Left = 116
    Top = 251
  end
  object Src_GNRE02: TDataSource
    DataSet = Tb_GNRE02
    Left = 125
    Top = 306
  end
  object Tb_R55: TTable
    DatabaseName = '\SGE\TEMP'
    TableName = 'TBTIPO55'
    Left = 200
    Top = 248
    object Tb_R55T55_TIPO: TStringField
      FieldName = 'T55_TIPO'
      Size = 2
    end
    object Tb_R55T55_CNPJST: TStringField
      FieldName = 'T55_CNPJST'
      Size = 14
    end
    object Tb_R55T55_IEST: TStringField
      FieldName = 'T55_IEST'
      Size = 14
    end
    object Tb_R55T55_DATAGNR: TDateTimeField
      FieldName = 'T55_DATAGNR'
    end
    object Tb_R55T55_UF: TStringField
      FieldName = 'T55_UF'
      Size = 2
    end
    object Tb_R55T55_UFST: TStringField
      FieldName = 'T55_UFST'
      Size = 2
    end
    object Tb_R55T55_BANCOGNR: TStringField
      FieldName = 'T55_BANCOGNR'
      Size = 3
    end
    object Tb_R55T55_AGENCIAGNR: TStringField
      FieldName = 'T55_AGENCIAGNR'
      Size = 4
    end
    object Tb_R55T55_NUMEROGNR: TStringField
      FieldName = 'T55_NUMEROGNR'
    end
    object Tb_R55T55_VLGNR: TFloatField
      FieldName = 'T55_VLGNR'
    end
    object Tb_R55T55_DATAVENCTO: TDateTimeField
      FieldName = 'T55_DATAVENCTO'
    end
    object Tb_R55T55_MESANOREF: TStringField
      FieldName = 'T55_MESANOREF'
      Size = 6
    end
    object Tb_R55T55_NCONVENIO: TStringField
      FieldName = 'T55_NCONVENIO'
      Size = 30
    end
    object Tb_R55T55_BRANCOS: TStringField
      FieldName = 'T55_BRANCOS'
      Size = 8
    end
  end
  object Tb_R60M: TTable
    DatabaseName = '\SGE\TEMP'
    TableName = 'TBTIPO60M'
    Left = 240
    Top = 250
    object Tb_R60MT60M_TIPO: TStringField
      FieldName = 'T60M_TIPO'
      Size = 2
    end
    object Tb_R60MT60M_MA: TStringField
      FieldName = 'T60M_MA'
      Size = 2
    end
    object Tb_R60MT60M_DATA: TDateTimeField
      FieldName = 'T60M_DATA'
    end
    object Tb_R60MT60M_DATA_REF: TDateTimeField
      FieldName = 'T60M_DATA_REF'
    end
    object Tb_R60MT60M_NSECF: TStringField
      FieldName = 'T60M_NSECF'
    end
    object Tb_R60MT60M_NECF: TStringField
      FieldName = 'T60M_NECF'
      Size = 3
    end
    object Tb_R60MT60M_MODELO: TStringField
      FieldName = 'T60M_MODELO'
      Size = 2
    end
    object Tb_R60MT60M_NINICIAL: TFloatField
      FieldName = 'T60M_NINICIAL'
    end
    object Tb_R60MT60M_NFINAL: TFloatField
      FieldName = 'T60M_NFINAL'
    end
    object Tb_R60MT60M_NREDZ: TFloatField
      FieldName = 'T60M_NREDZ'
    end
    object Tb_R60MT60M_CRO: TFloatField
      FieldName = 'T60M_CRO'
    end
    object Tb_R60MT60M_VLVB: TFloatField
      FieldName = 'T60M_VLVB'
    end
    object Tb_R60MT60M_VLGT: TFloatField
      FieldName = 'T60M_VLGT'
    end
    object Tb_R60MT60M_BRANCOS: TStringField
      FieldName = 'T60M_BRANCOS'
      Size = 65
    end
  end
  object Tb_R60A: TTable
    DatabaseName = '\SGE\TEMP'
    TableName = 'TBTIPO60A'
    Left = 280
    Top = 250
    object Tb_R60AT60A_TIPO: TStringField
      FieldName = 'T60A_TIPO'
      Size = 2
    end
    object Tb_R60AT60A_MA: TStringField
      FieldName = 'T60A_MA'
      Size = 1
    end
    object Tb_R60AT60A_DATA: TDateTimeField
      FieldName = 'T60A_DATA'
    end
    object Tb_R60AT60A_DATA_REF: TDateTimeField
      FieldName = 'T60A_DATA_REF'
    end
    object Tb_R60AT60A_NSECF: TStringField
      FieldName = 'T60A_NSECF'
    end
    object Tb_R60AT60A_NECF: TStringField
      FieldName = 'T60A_NECF'
      Size = 3
    end
    object Tb_R60AT60A_SITALIQ: TStringField
      FieldName = 'T60A_SITALIQ'
      Size = 4
    end
    object Tb_R60AT60A_VLTP: TFloatField
      FieldName = 'T60A_VLTP'
    end
    object Tb_R60AT60A_BRANCOS: TStringField
      FieldName = 'T60A_BRANCOS'
      Size = 96
    end
  end
  object Tb_R60D: TTable
    DatabaseName = '\SGE\TEMP'
    TableName = 'TBTIPO60D'
    Left = 320
    Top = 256
    object Tb_R60DT60D_TIPO: TStringField
      FieldName = 'T60D_TIPO'
      Size = 2
    end
    object Tb_R60DT60D_MA: TStringField
      FieldName = 'T60D_MA'
      Size = 1
    end
    object Tb_R60DT60D_DATA: TDateTimeField
      FieldName = 'T60D_DATA'
    end
    object Tb_R60DT60D_DATA_REF: TDateTimeField
      FieldName = 'T60D_DATA_REF'
    end
    object Tb_R60DT60D_NSECF: TStringField
      FieldName = 'T60D_NSECF'
    end
    object Tb_R60DT60D_CODPRO: TStringField
      FieldName = 'T60D_CODPRO'
      Size = 14
    end
    object Tb_R60DT60D_QUANT: TFloatField
      FieldName = 'T60D_QUANT'
    end
    object Tb_R60DT60D_VLBRUTO: TFloatField
      FieldName = 'T60D_VLBRUTO'
    end
    object Tb_R60DT60D_VLBCICMS: TFloatField
      FieldName = 'T60D_VLBCICMS'
    end
    object Tb_R60DT60D_SITALIQ: TStringField
      FieldName = 'T60D_SITALIQ'
      Size = 4
    end
    object Tb_R60DT60D_VLCICMS: TFloatField
      FieldName = 'T60D_VLCICMS'
    end
    object Tb_R60DT60D_BRANCOS: TStringField
      FieldName = 'T60D_BRANCOS'
      Size = 19
    end
  end
  object Tb_R60I: TTable
    DatabaseName = '\SGE\TEMP'
    StoreDefs = True
    TableName = 'TBTIPO60I'
    Left = 360
    Top = 256
    object Tb_R60IT60I_TIPO: TStringField
      FieldName = 'T60I_TIPO'
      Size = 2
    end
    object Tb_R60IT60I_SUBTIPO: TStringField
      FieldName = 'T60I_SUBTIPO'
      Size = 1
    end
    object Tb_R60IT60I_DATA: TDateTimeField
      FieldName = 'T60I_DATA'
    end
    object Tb_R60IT60I_DATA_REF: TDateTimeField
      FieldName = 'T60I_DATA_REF'
    end
    object Tb_R60IT60I_NSECF: TStringField
      FieldName = 'T60I_NSECF'
    end
    object Tb_R60IT60I_MODELO: TStringField
      FieldName = 'T60I_MODELO'
      Size = 2
    end
    object Tb_R60IT60I_NUMDOC: TFloatField
      FieldName = 'T60I_NUMDOC'
    end
    object Tb_R60IT60I_ITEM: TFloatField
      FieldName = 'T60I_ITEM'
    end
    object Tb_R60IT60I_CODPRO: TStringField
      FieldName = 'T60I_CODPRO'
      Size = 14
    end
    object Tb_R60IT60I_QUANT: TFloatField
      FieldName = 'T60I_QUANT'
    end
    object Tb_R60IT60I_VLUNIT: TFloatField
      FieldName = 'T60I_VLUNIT'
    end
    object Tb_R60IT60I_TOTAL: TFloatField
      FieldName = 'T60I_TOTAL'
    end
    object Tb_R60IT60I_BCICMS: TFloatField
      FieldName = 'T60I_BCICMS'
    end
    object Tb_R60IT60I_SITALIQ: TStringField
      FieldName = 'T60I_SITALIQ'
      Size = 4
    end
    object Tb_R60IT60I_VLICMS: TFloatField
      FieldName = 'T60I_VLICMS'
    end
    object Tb_R60IT60I_BRANCOS: TStringField
      FieldName = 'T60I_BRANCOS'
      Size = 16
    end
  end
  object Tb_R60R: TTable
    DatabaseName = '\SGE\TEMP'
    TableName = 'TBTIPO60R'
    Left = 400
    Top = 256
    object Tb_R60RT60R_TIPO: TStringField
      FieldName = 'T60R_TIPO'
      Size = 2
    end
    object Tb_R60RT60R_SUBTIPO: TStringField
      FieldName = 'T60R_SUBTIPO'
      Size = 1
    end
    object Tb_R60RT60R_MESANO: TStringField
      FieldName = 'T60R_MESANO'
      Size = 6
    end
    object Tb_R60RT60R_CODPRO: TStringField
      FieldName = 'T60R_CODPRO'
      Size = 14
    end
    object Tb_R60RT60R_QUANT: TFloatField
      FieldName = 'T60R_QUANT'
    end
    object Tb_R60RT60R_VLTOTAL: TFloatField
      FieldName = 'T60R_VLTOTAL'
    end
    object Tb_R60RT60R_BCICMS: TFloatField
      FieldName = 'T60R_BCICMS'
    end
    object Tb_R60RT60R_SITALI: TStringField
      FieldName = 'T60R_SITALI'
      Size = 4
    end
    object Tb_R60RT60R_BRANCOS: TStringField
      FieldName = 'T60R_BRANCOS'
      Size = 54
    end
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  P2ITEM    AS ITEM'
      '       ,P2CODPRO  AS CODPRO'
      '       ,P2QTD     AS QTD'
      '       ,P2PRECO   AS PCOUNIT'
      '       ,P2TOTDES  AS TOTDES'
      '       ,P2BASEN   AS BASEN'
      '       ,P2BASER   AS BASER'
      '       ,P2ICMSN   AS ICMSN'
      '       ,P2ICMSNR  AS ICMSNR'
      '       ,P2BCINR   AS BCINR'
      '       ,P2ICMSR   AS ICMSR'
      '       ,P2ALIPI   AS ALIPI'
      '       ,P2VALIPI  AS VALIPI'
      '       ,P2ISENTAS AS ISENTAS'
      '       ,P2TOTOUT  AS OUTRAS'
      '       ,P2TOTLIQ  AS TOTLIQ'
      '       ,P2SIT     AS SITTRI'
      '       ,P2CFO,P2CFO AS CFONF,P2ALIQ,P2ALIQNR'
      '       ,PDCODPRO AS PDCODPRO'
      '       ,PDNOME   AS PDNOME'
      '       ,PDCLAS   AS PDCLAS'
      '       ,PDUND    AS PDUND'
      '       ,PDSIT    AS PDSIT'
      '       ,PDTABICM AS PDTABICM'
      '       ,PDPRECO1 AS PDPRECO1'
      '       ,PDIPI   AS PDIPI'
      '       ,PDMARCA AS PDMARCA'
      '       ,PDCODNCM AS PDCODNCM'
      '       ,TO_CHAR(PDCODPRO) AS CODPRO_ORI'
      '       ,PDNOME   AS NOMPRO_ORI'
      'from CADP02,CADPRO'
      'where P2CHAVE is null'
      'and PDCODPRO=P2CODPRO'
      'order by P2CHAVE,P2ORDEM,P2ITEM'
      '')
    Left = 368
    Top = 128
    object Qr_ProITEM: TFloatField
      FieldName = 'ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_ProCODPRO: TFloatField
      FieldName = 'CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_ProTOTDES: TFloatField
      FieldName = 'TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_ProBASEN: TFloatField
      FieldName = 'BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_ProBASER: TFloatField
      FieldName = 'BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_ProICMSN: TFloatField
      FieldName = 'ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_ProICMSNR: TFloatField
      FieldName = 'ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Qr_ProBCINR: TFloatField
      FieldName = 'BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Qr_ProICMSR: TFloatField
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_ProALIPI: TFloatField
      FieldName = 'ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_ProVALIPI: TFloatField
      FieldName = 'VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_ProISENTAS: TFloatField
      FieldName = 'ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Qr_ProOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Qr_ProTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_ProP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_ProP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_ProP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_ProQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_ProPCOUNIT: TFloatField
      FieldName = 'PCOUNIT'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_ProSITTRI: TStringField
      FieldName = 'SITTRI'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_ProPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Qr_ProPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Qr_ProCODPRO_ORI: TStringField
      FieldName = 'CODPRO_ORI'
      Size = 40
    end
    object Qr_ProNOMPRO_ORI: TStringField
      FieldName = 'NOMPRO_ORI'
      Size = 53
    end
    object Qr_ProCFONF: TFloatField
      FieldName = 'CFONF'
    end
  end
  object Qr_GNRE01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGNRE01')
    Left = 376
    Top = 184
    object Qr_GNRE01GN1CODEMP: TFloatField
      FieldName = 'GN1CODEMP'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODEMP'
    end
    object Qr_GNRE01GN1LOTSEQ: TFloatField
      FieldName = 'GN1LOTSEQ'
      Origin = 'SG_ASSOC.CADGNRE01.GN1LOTSEQ'
    end
    object Qr_GNRE01GN1CODIGO: TFloatField
      FieldName = 'GN1CODIGO'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODIGO'
    end
    object Qr_GNRE01GN1CODCLI: TFloatField
      FieldName = 'GN1CODCLI'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODCLI'
    end
    object Qr_GNRE01GN1CNPJ: TFloatField
      FieldName = 'GN1CNPJ'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CNPJ'
    end
    object Qr_GNRE01GN1IE: TStringField
      FieldName = 'GN1IE'
      Origin = 'SG_ASSOC.CADGNRE01.GN1IE'
    end
    object Qr_GNRE01GN1DATA: TDateTimeField
      FieldName = 'GN1DATA'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATA'
    end
    object Qr_GNRE01GN1UF: TStringField
      FieldName = 'GN1UF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1UF'
      Size = 2
    end
    object Qr_GNRE01GN1CODBCO: TFloatField
      FieldName = 'GN1CODBCO'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODBCO'
    end
    object Qr_GNRE01GN1AGENCIA: TStringField
      FieldName = 'GN1AGENCIA'
      Origin = 'SG_ASSOC.CADGNRE01.GN1AGENCIA'
      Size = 10
    end
    object Qr_GNRE01GN1NUMAUT: TStringField
      FieldName = 'GN1NUMAUT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1NUMAUT'
      Size = 30
    end
    object Qr_GNRE01GN1VALOR: TFloatField
      FieldName = 'GN1VALOR'
      Origin = 'SG_ASSOC.CADGNRE01.GN1VALOR'
    end
    object Qr_GNRE01GN1DATVEN: TDateTimeField
      FieldName = 'GN1DATVEN'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATVEN'
    end
    object Qr_GNRE01GN1ANOREF: TFloatField
      FieldName = 'GN1ANOREF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1ANOREF'
    end
    object Qr_GNRE01GN1MESREF: TFloatField
      FieldName = 'GN1MESREF'
      Origin = 'SG_ASSOC.CADGNRE01.GN1MESREF'
    end
    object Qr_GNRE01GN1MUMCONV: TStringField
      FieldName = 'GN1MUMCONV'
      Origin = 'SG_ASSOC.CADGNRE01.GN1MUMCONV'
      Size = 30
    end
    object Qr_GNRE01GN1CODUSR: TFloatField
      FieldName = 'GN1CODUSR'
      Origin = 'SG_ASSOC.CADGNRE01.GN1CODUSR'
    end
    object Qr_GNRE01GN1DATINC: TDateTimeField
      FieldName = 'GN1DATINC'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATINC'
    end
    object Qr_GNRE01GN1USRALT: TFloatField
      FieldName = 'GN1USRALT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1USRALT'
    end
    object Qr_GNRE01GN1DATALT: TDateTimeField
      FieldName = 'GN1DATALT'
      Origin = 'SG_ASSOC.CADGNRE01.GN1DATALT'
    end
    object Qr_GNRE01GN1STATUS: TFloatField
      FieldName = 'GN1STATUS'
      Origin = 'SG_ASSOC.CADGNRE01.GN1STATUS'
    end
    object Qr_GNRE01GN1UFST: TStringField
      FieldName = 'GN1UFST'
      Origin = 'SG_ASSOC.CADGNRE01.GN1UFST'
      Size = 2
    end
  end
  object Qr_R60M: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CFSERIE,CFMODDOC,CMDATA,CMCODIMP,'
      '       CMCOO,'
      '       CMCOO_FINAL,'
      '       CMCONRED,'
      '       CMCRO,'
      '       CMVDABRUT,'
      '       CMVDALIQ,CMCUPCAN,'
      '       CMACRECUP,CMDESCUP,'
      '       CMISENTAS,CMNAOINC,'
      '       CMSUBTRI,CMISSCUP'
      '       from CADECF,CADMI01'
      'where CMcodemp is null'
      'and CFCODEMP=CMCODEMP'
      'and CFCAIXA=CMCODIMP'
      '')
    Left = 192
    Top = 304
    object Qr_R60MCFSERIE: TStringField
      FieldName = 'CFSERIE'
      Origin = 'SG_ASSOC.CADECF.CFSERIE'
    end
    object Qr_R60MCFMODDOC: TStringField
      FieldName = 'CFMODDOC'
      Origin = 'SG_ASSOC.CADECF.CFMODDOC'
      Size = 2
    end
    object Qr_R60MCMDATA: TDateTimeField
      FieldName = 'CMDATA'
      Origin = 'SG_ASSOC.CADMI01.CMDATA'
    end
    object Qr_R60MCMCODIMP: TFloatField
      FieldName = 'CMCODIMP'
      Origin = 'SG_ASSOC.CADMI01.CMCODIMP'
    end
    object Qr_R60MCMCOO: TFloatField
      FieldName = 'CMCOO'
      Origin = 'SG_ASSOC.CADMI01.CMCOO'
    end
    object Qr_R60MCMCOO_FINAL: TFloatField
      FieldName = 'CMCOO_FINAL'
      Origin = 'SG_ASSOC.CADMI01.CMCOO_FINAL'
    end
    object Qr_R60MCMCONRED: TFloatField
      FieldName = 'CMCONRED'
      Origin = 'SG_ASSOC.CADMI01.CMCONRED'
    end
    object Qr_R60MCMCRO: TFloatField
      FieldName = 'CMCRO'
      Origin = 'SG_ASSOC.CADMI01.CMCRO'
    end
    object Qr_R60MCMCUPCAN: TFloatField
      FieldName = 'CMCUPCAN'
      Origin = 'SG_ASSOC.CADMI01.CMCUPCAN'
    end
    object Qr_R60MCMACRECUP: TFloatField
      FieldName = 'CMACRECUP'
      Origin = 'SG_ASSOC.CADMI01.CMACRECUP'
    end
    object Qr_R60MCMDESCUP: TFloatField
      FieldName = 'CMDESCUP'
      Origin = 'SG_ASSOC.CADMI01.CMDESCUP'
    end
    object Qr_R60MCMISENTAS: TFloatField
      FieldName = 'CMISENTAS'
      Origin = 'SG_ASSOC.CADMI01.CMISENTAS'
    end
    object Qr_R60MCMNAOINC: TFloatField
      FieldName = 'CMNAOINC'
      Origin = 'SG_ASSOC.CADMI01.CMNAOINC'
    end
    object Qr_R60MCMSUBTRI: TFloatField
      FieldName = 'CMSUBTRI'
      Origin = 'SG_ASSOC.CADMI01.CMSUBTRI'
    end
    object Qr_R60MCMISSCUP: TFloatField
      FieldName = 'CMISSCUP'
      Origin = 'SG_ASSOC.CADMI01.CMISSCUP'
    end
    object Qr_R60MCMVDABRUT: TFloatField
      FieldName = 'CMVDABRUT'
      Origin = 'SG_ASSOC.CADMI01.CMVDABRUT'
    end
    object Qr_R60MCMVDALIQ: TFloatField
      FieldName = 'CMVDALIQ'
      Origin = 'SG_ASSOC.CADMI01.CMVDALIQ'
    end
  end
  object Qr_R60A: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CFSERIE,CFMODDOC,CM2DATA,CM2CODIMP,'
      '       CM2ALIQ,CM2VALOR'
      '       from CADECF,CADMI02'
      'where CM2codemp is null'
      'and CFCODEMP=CM2CODEMP'
      'and CFCAIXA=CM2CODIMP'
      '')
    Left = 232
    Top = 305
    object Qr_R60ACFSERIE: TStringField
      FieldName = 'CFSERIE'
      Origin = 'SG_ASSOC.CADECF.CFSERIE'
    end
    object Qr_R60ACFMODDOC: TStringField
      FieldName = 'CFMODDOC'
      Origin = 'SG_ASSOC.CADECF.CFMODDOC'
      Size = 2
    end
    object Qr_R60ACM2DATA: TDateTimeField
      FieldName = 'CM2DATA'
      Origin = 'SG_ASSOC.CADMI02.CM2DATA'
    end
    object Qr_R60ACM2CODIMP: TFloatField
      FieldName = 'CM2CODIMP'
      Origin = 'SG_ASSOC.CADMI02.CM2CODIMP'
    end
    object Qr_R60ACM2ALIQ: TFloatField
      FieldName = 'CM2ALIQ'
      Origin = 'SG_ASSOC.CADMI02.CM2ALIQ'
    end
    object Qr_R60ACM2VALOR: TFloatField
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADMI02.CM2VALOR'
    end
  end
  object Qr_R60D: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CFSERIE,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,P2SIT'
      '       ,sum(P2QTD) AS QTD'
      '       ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ'
      '       ,sum(P2BASEN) AS BASEN,sum(P2ICMSN) AS ICMSN'
      '       ,sum(P2ISENTAS) AS ISENTAS'
      '       ,max(P2NOMPRO_ORI) as NOMPRO_ORI'
      
        '       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'#39' '#39',to_char(P' +
        '2CODPRO),'
      '                        P2CODPRO_ORI) as CODPRO_ORI'
      '       '
      '  from CADP01,CADP02,CADECF where '
      'P1CODEMP=5'
      'and P2CODEMP=P1CODEMP '
      'and P2LOTSEQ=P1LOTSEQ'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and P1DATACF>='#39'17/03/2005'#39
      'and P1DATACF<='#39'28/03/2005'#39
      'and CFCAIXA =P1CODECF'
      
        'Group by CFSERIE,P1CODECF,P2CODPRO,P2CODPRO_ORI,P1DATACF,P2ALIQ,' +
        'P2SIT'
      '')
    Left = 272
    Top = 307
    object Qr_R60DCFSERIE: TStringField
      FieldName = 'CFSERIE'
    end
    object Qr_R60DP1CODECF: TFloatField
      FieldName = 'P1CODECF'
    end
    object Qr_R60DP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_R60DP1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
    end
    object Qr_R60DP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Qr_R60DP2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Qr_R60DQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_R60DTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object Qr_R60DBASEN: TFloatField
      FieldName = 'BASEN'
    end
    object Qr_R60DICMSN: TFloatField
      FieldName = 'ICMSN'
    end
    object Qr_R60DISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Qr_R60DNOMPRO_ORI: TStringField
      FieldName = 'NOMPRO_ORI'
      Size = 200
    end
    object Qr_R60DCODPRO_ORI: TStringField
      FieldName = 'CODPRO_ORI'
      Size = 40
    end
  end
  object Qr_R60R: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CFSERIE,P1CODECF,P2CODPRO,'
      '       TO_CHAR(P1DATACF, '#39'YYYY'#39') AS ANO,'
      '       TO_CHAR(P1DATACF, '#39'MM'#39') AS MES,'
      '       P2ALIQ,P2SIT'
      '       ,sum(P2QTD) AS QTD'
      '       ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ'
      '       ,sum(P2BASEN) AS BASEN,sum(P2ICMSN) AS ICMSN'
      '       ,sum(P2ISENTAS) AS ISENTAS'
      '       ,max(P2NOMPRO_ORI) as NOMPRO_ORI'
      
        '       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'#39' '#39',to_char(P' +
        '2CODPRO),'
      '                        P2CODPRO_ORI) as CODPRO_ORI'
      '  from CADP01,CADP02,CADECF where'
      'P1CODEMP=5'
      'and P2CODEMP=P1CODEMP'
      'and P2LOTSEQ=P1LOTSEQ'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and P1DATACF>='#39'17/03/2005'#39
      'and P1DATACF<='#39'28/03/2005'#39
      'and CFCAIXA =P1CODECF'
      
        'Group by CFSERIE,P1CODECF,P2CODPRO,P2CODPRO_ORI,TO_CHAR(P1DATACF' +
        ', '#39'YYYY'#39'),TO_CHAR(P1DATACF, '#39'MM'#39') ,P2ALIQ,P2SIT'
      '')
    Left = 328
    Top = 310
    object Qr_R60RCFSERIE: TStringField
      FieldName = 'CFSERIE'
    end
    object Qr_R60RP1CODECF: TFloatField
      FieldName = 'P1CODECF'
    end
    object Qr_R60RP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_R60RANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Qr_R60RMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Qr_R60RP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Qr_R60RP2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Qr_R60RQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_R60RTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object Qr_R60RBASEN: TFloatField
      FieldName = 'BASEN'
    end
    object Qr_R60RICMSN: TFloatField
      FieldName = 'ICMSN'
    end
    object Qr_R60RISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object Qr_R60RNOMPRO_ORI: TStringField
      FieldName = 'NOMPRO_ORI'
      Size = 200
    end
    object Qr_R60RCODPRO_ORI: TStringField
      FieldName = 'CODPRO_ORI'
      Size = 40
    end
  end
  object Tb_Emit: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'CNPJCPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'TIPOFJ'
        DataType = ftInteger
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'INSC_EST'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PAIS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'CADEMI0'
        Fields = 'CNPJCPF'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CADEMI'
    Left = 424
    Top = 312
    object Tb_EmitCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 14
    end
    object Tb_EmitTIPOFJ: TIntegerField
      FieldName = 'TIPOFJ'
    end
    object Tb_EmitCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object Tb_EmitUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Tb_EmitINSC_EST: TStringField
      FieldName = 'INSC_EST'
      Size = 16
    end
    object Tb_EmitENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Tb_EmitBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object Tb_EmitCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object Tb_EmitPAIS: TStringField
      FieldName = 'PAIS'
    end
    object Tb_EmitFONE: TStringField
      FieldName = 'FONE'
      Size = 12
    end
    object Tb_EmitFAX: TStringField
      FieldName = 'FAX'
      Size = 12
    end
    object Tb_EmitNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object Tb_InvGra: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from INVGRA where IGCODEMP is null')
    Left = 408
    Top = 110
    object Tb_InvGraIGCODEMP: TFloatField
      FieldName = 'IGCODEMP'
      Origin = 'SG_ASSOC.INVGRA.IGCODEMP'
    end
    object Tb_InvGraIGNOMEINV: TStringField
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA.IGNOMEINV'
      Size = 30
    end
    object Tb_InvGraIGCODPRO: TFloatField
      FieldName = 'IGCODPRO'
      Origin = 'SG_ASSOC.INVGRA.IGCODPRO'
    end
    object Tb_InvGraIGPRECO: TFloatField
      FieldName = 'IGPRECO'
      Origin = 'SG_ASSOC.INVGRA.IGPRECO'
    end
    object Tb_InvGraIGQTD: TFloatField
      FieldName = 'IGQTD'
      Origin = 'SG_ASSOC.INVGRA.IGQTD'
    end
    object Tb_InvGraIGSIT: TStringField
      FieldName = 'IGSIT'
      Origin = 'SG_ASSOC.INVGRA.IGSIT'
      Size = 3
    end
    object Tb_InvGraIGCODTIP: TFloatField
      FieldName = 'IGCODTIP'
      Origin = 'SG_ASSOC.INVGRA.IGCODTIP'
    end
  end
  object Qr_R60I: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT CFSERIE,CFMODDOC,P1CODECF,P1NUMCF,P2CODPRO,P1DATACF,P2ALI' +
        'Q,P2SIT,'
      '        P2ITEM'
      '       ,P2QTD AS QTD'
      '       ,P2PRECO'
      '       ,P2TOTLIQ-P2DESCRAT AS TOTLIQ'
      '       ,P2BASEN AS BASEN,P2ICMSN AS ICMSN'
      '       ,P2ISENTAS AS ISENTAS'
      '       ,P2NOMPRO_ORI AS NOMPRO_ORI'
      
        '       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'#39' '#39',to_char(P' +
        '2CODPRO),'
      '       P2CODPRO_ORI) as CODPRO_ORI'
      ''
      ''
      '  from CADP01,CADP02,CADECF where'
      'P1CODEMP=5'
      'and P2CODEMP=P1CODEMP'
      'and P2LOTSEQ=P1LOTSEQ'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and P1DATACF>='#39'17/03/2005'#39
      'and P1DATACF<='#39'28/03/2005'#39
      'and CFCAIXA =P1CODECF'
      'Order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM'
      ''
      '')
    Left = 360
    Top = 312
    object Qr_R60ICFSERIE: TStringField
      FieldName = 'CFSERIE'
      Origin = 'SG_ASSOC.CADECF.CFSERIE'
    end
    object Qr_R60IP1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Qr_R60IP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_R60IP1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Qr_R60IP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_R60IP2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_R60IP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_R60IQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_R60ITOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_R60IBASEN: TFloatField
      FieldName = 'BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_R60IICMSN: TFloatField
      FieldName = 'ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_R60IISENTAS: TFloatField
      FieldName = 'ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Qr_R60IP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_R60IP1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_R60ICFMODDOC: TStringField
      FieldName = 'CFMODDOC'
      Origin = 'SG_ASSOC.CADECF.CFMODDOC'
      Size = 2
    end
    object Qr_R60ICODPRO_ORI: TStringField
      FieldName = 'CODPRO_ORI'
      Size = 40
    end
    object Qr_R60INOMPRO_ORI: TStringField
      FieldName = 'NOMPRO_ORI'
      Size = 200
    end
  end
  object Tb_InvGra_GD: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from INVGRA_GD where IGCODEMP is null')
    Left = 416
    Top = 185
    object Tb_InvGra_GDIGCODEMP: TFloatField
      FieldName = 'IGCODEMP'
      Origin = 'SG_ASSOC.INVGRA_GD.IGCODEMP'
    end
    object Tb_InvGra_GDIGNOMEINV: TStringField
      FieldName = 'IGNOMEINV'
      Origin = 'SG_ASSOC.INVGRA_GD.IGNOMEINV'
      Size = 30
    end
    object Tb_InvGra_GDIGCODPRO: TFloatField
      FieldName = 'IGCODPRO'
      Origin = 'SG_ASSOC.INVGRA_GD.IGCODPRO'
    end
    object Tb_InvGra_GDIGGRADE: TStringField
      FieldName = 'IGGRADE'
      Origin = 'SG_ASSOC.INVGRA_GD.IGGRADE'
    end
    object Tb_InvGra_GDIGDTVCTO: TDateTimeField
      FieldName = 'IGDTVCTO'
      Origin = 'SG_ASSOC.INVGRA_GD.IGDTVCTO'
    end
    object Tb_InvGra_GDIGSIT: TStringField
      FieldName = 'IGSIT'
      Origin = 'SG_ASSOC.INVGRA_GD.IGSIT'
      Size = 3
    end
    object Tb_InvGra_GDIGCODTIP: TFloatField
      FieldName = 'IGCODTIP'
      Origin = 'SG_ASSOC.INVGRA_GD.IGCODTIP'
    end
    object Tb_InvGra_GDIGPRECO: TFloatField
      FieldName = 'IGPRECO'
      Origin = 'SG_ASSOC.INVGRA_GD.IGPRECO'
    end
    object Tb_InvGra_GDIGQTD: TFloatField
      FieldName = 'IGQTD'
      Origin = 'SG_ASSOC.INVGRA_GD.IGQTD'
    end
  end
  object Query1: TQuery
    DatabaseName = 'C:\SGE\TEMP'
    SQL.Strings = (
      'SELECT * FROM TTT00006')
    Left = 8
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'C:\SGE\TEMP'
    Left = 48
    Top = 192
  end
  object Table1: TTable
    DatabaseName = '\SGE\TEMP'
    Left = 128
    Top = 200
  end
  object Tb_R71: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T71_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_CNPJTOMADOR'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T71_IETOMADOR'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T71_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T71_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T71_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T71_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T71_UFNF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_CNPJNF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T71_IENF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T71_DATANF'
        DataType = ftDateTime
      end
      item
        Name = 'T71_MODELONF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_SERIENF'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T71_SUBSERIENF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T71_NUMERONF'
        DataType = ftFloat
      end
      item
        Name = 'T71_VLNF'
        DataType = ftFloat
      end
      item
        Name = 'T71_BRANCOS'
        DataType = ftString
        Size = 11
      end>
    StoreDefs = True
    TableName = 'TBTIPO71'
    Left = 272
    Top = 184
    object Tb_R71T71_TIPO: TStringField
      FieldName = 'T71_TIPO'
      Size = 2
    end
    object Tb_R71T71_CNPJTOMADOR: TStringField
      FieldName = 'T71_CNPJTOMADOR'
      Size = 14
    end
    object Tb_R71T71_IETOMADOR: TStringField
      FieldName = 'T71_IETOMADOR'
      Size = 14
    end
    object Tb_R71T71_DATA: TDateTimeField
      FieldName = 'T71_DATA'
    end
    object Tb_R71T71_DATA_REF: TDateTimeField
      FieldName = 'T71_DATA_REF'
    end
    object Tb_R71T71_UF: TStringField
      FieldName = 'T71_UF'
      Size = 2
    end
    object Tb_R71T71_MODELO: TStringField
      FieldName = 'T71_MODELO'
      Size = 2
    end
    object Tb_R71T71_SERIE: TStringField
      FieldName = 'T71_SERIE'
      Size = 3
    end
    object Tb_R71T71_SUBSERIE: TStringField
      FieldName = 'T71_SUBSERIE'
      Size = 2
    end
    object Tb_R71T71_NUMERO: TFloatField
      FieldName = 'T71_NUMERO'
    end
    object Tb_R71T71_UFNF: TStringField
      FieldName = 'T71_UFNF'
      Size = 2
    end
    object Tb_R71T71_CNPJNF: TStringField
      FieldName = 'T71_CNPJNF'
      Size = 14
    end
    object Tb_R71T71_IENF: TStringField
      FieldName = 'T71_IENF'
      Size = 14
    end
    object Tb_R71T71_DATANF: TDateTimeField
      FieldName = 'T71_DATANF'
    end
    object Tb_R71T71_MODELONF: TStringField
      FieldName = 'T71_MODELONF'
      Size = 2
    end
    object Tb_R71T71_SERIENF: TStringField
      FieldName = 'T71_SERIENF'
      Size = 3
    end
    object Tb_R71T71_SUBSERIENF: TStringField
      FieldName = 'T71_SUBSERIENF'
      Size = 2
    end
    object Tb_R71T71_NUMERONF: TFloatField
      FieldName = 'T71_NUMERONF'
    end
    object Tb_R71T71_VLNF: TFloatField
      FieldName = 'T71_VLNF'
    end
    object Tb_R71T71_BRANCOS: TStringField
      FieldName = 'T71_BRANCOS'
      Size = 11
    end
  end
  object Tb_R70: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T70_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T70_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T70_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T70_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'T70_DATA_REF'
        DataType = ftDateTime
      end
      item
        Name = 'T70_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T70_MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T70_SERIE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'T70_SUBSERIE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T70_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'T70_CFOP'
        DataType = ftFloat
      end
      item
        Name = 'T70_VLTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'T70_BCICMS'
        DataType = ftFloat
      end
      item
        Name = 'T70_VLICMS'
        DataType = ftFloat
      end
      item
        Name = 'T70_ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'T70_OUTRAS'
        DataType = ftFloat
      end
      item
        Name = 'T70_CIFFOB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T70_SITUACAO'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    TableName = 'TBTIPO70'
    Left = 236
    Top = 182
    object Tb_R70T70_TIPO: TStringField
      FieldName = 'T70_TIPO'
      Size = 2
    end
    object Tb_R70T70_CNPJ: TStringField
      FieldName = 'T70_CNPJ'
      Size = 14
    end
    object Tb_R70T70_IE: TStringField
      FieldName = 'T70_IE'
      Size = 14
    end
    object Tb_R70T70_DATA: TDateTimeField
      FieldName = 'T70_DATA'
    end
    object Tb_R70T70_DATA_REF: TDateTimeField
      FieldName = 'T70_DATA_REF'
    end
    object Tb_R70T70_UF: TStringField
      FieldName = 'T70_UF'
      Size = 2
    end
    object Tb_R70T70_MODELO: TStringField
      FieldName = 'T70_MODELO'
      Size = 2
    end
    object Tb_R70T70_SERIE: TStringField
      FieldName = 'T70_SERIE'
      Size = 3
    end
    object Tb_R70T70_SUBSERIE: TStringField
      FieldName = 'T70_SUBSERIE'
      Size = 2
    end
    object Tb_R70T70_NUMERO: TFloatField
      FieldName = 'T70_NUMERO'
    end
    object Tb_R70T70_CFOP: TFloatField
      FieldName = 'T70_CFOP'
    end
    object Tb_R70T70_VLTOTAL: TFloatField
      FieldName = 'T70_VLTOTAL'
    end
    object Tb_R70T70_BCICMS: TFloatField
      FieldName = 'T70_BCICMS'
    end
    object Tb_R70T70_VLICMS: TFloatField
      FieldName = 'T70_VLICMS'
    end
    object Tb_R70T70_ISENTAS: TFloatField
      FieldName = 'T70_ISENTAS'
    end
    object Tb_R70T70_OUTRAS: TFloatField
      FieldName = 'T70_OUTRAS'
    end
    object Tb_R70T70_CIFFOB: TStringField
      FieldName = 'T70_CIFFOB'
      Size = 1
    end
    object Tb_R70T70_SITUACAO: TStringField
      FieldName = 'T70_SITUACAO'
      Size = 1
    end
  end
  object Tb_R74: TTable
    DatabaseName = '\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'T74_TIPO'
        DataType = ftInteger
      end
      item
        Name = 'T74_DATA'
        DataType = ftDate
      end
      item
        Name = 'T74_CODPRO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T74_QTD'
        DataType = ftFloat
      end
      item
        Name = 'T74_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'T74_CODPOS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T74_CNPJ'
        DataType = ftFloat
      end
      item
        Name = 'T74_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T74_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T74_BRANCOS'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'TBTIPO74'
    Left = 307
    Top = 184
    object Tb_R74T74_DATA: TDateField
      FieldName = 'T74_DATA'
    end
    object Tb_R74T74_CODPRO: TStringField
      FieldName = 'T74_CODPRO'
      Size = 14
    end
    object Tb_R74T74_QTD: TFloatField
      FieldName = 'T74_QTD'
    end
    object Tb_R74T74_TOTAL: TFloatField
      FieldName = 'T74_TOTAL'
    end
    object Tb_R74T74_CODPOS: TStringField
      FieldName = 'T74_CODPOS'
      Size = 1
    end
    object Tb_R74T74_CNPJ: TFloatField
      FieldName = 'T74_CNPJ'
    end
    object Tb_R74T74_IE: TStringField
      FieldName = 'T74_IE'
      Size = 14
    end
    object Tb_R74T74_UF: TStringField
      FieldName = 'T74_UF'
      Size = 2
    end
    object Tb_R74T74_BRANCOS: TStringField
      FieldName = 'T74_BRANCOS'
    end
    object Tb_R74T74_TIPO: TIntegerField
      FieldName = 'T74_TIPO'
    end
  end
  object Query3: TQuery
    DatabaseName = 'C:\SGE\TEMP'
    SQL.Strings = (
      'SELECT * FROM TTT00008')
    Left = 88
    Top = 192
  end
  object Tb_Pro: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODPRO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CLAS_FISCAL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SITTRI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ALIQEST'
        DataType = ftFloat
      end
      item
        Name = 'ALIQINT'
        DataType = ftFloat
      end
      item
        Name = 'RED'
        DataType = ftFloat
      end
      item
        Name = 'IVA'
        DataType = ftFloat
      end
      item
        Name = 'ALIQIPI'
        DataType = ftFloat
      end
      item
        Name = 'VALIPI'
        DataType = ftFloat
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CREDOUT'
        DataType = ftFloat
      end>
    Left = 472
    Top = 304
    object Tb_ProCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 14
    end
    object Tb_ProDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object Tb_ProUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object Tb_ProSITTRI: TStringField
      FieldName = 'SITTRI'
      Size = 3
    end
    object Tb_ProALIQEST: TFloatField
      FieldName = 'ALIQEST'
    end
    object Tb_ProALIQINT: TFloatField
      FieldName = 'ALIQINT'
    end
    object Tb_ProRED: TFloatField
      FieldName = 'RED'
    end
    object Tb_ProIVA: TFloatField
      FieldName = 'IVA'
    end
    object Tb_ProALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
    end
    object Tb_ProVALIPI: TFloatField
      FieldName = 'VALIPI'
    end
    object Tb_ProREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 10
    end
    object Tb_ProCREDOUT: TFloatField
      FieldName = 'CREDOUT'
    end
    object Tb_ProCLAS_FISCAL: TStringField
      FieldName = 'CLAS_FISCAL'
      Size = 10
    end
  end
  object cds_tipo61: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\SGE\sint_tbtipo61.xml'
    Params = <>
    Left = 656
    Top = 256
    Data = {
      D71800009619E0BD010000001800000018003200000003000000B9040E743631
      5F7174647265675F64757004000100100000000C7436315F63686176655F6964
      0400010010000000087436315F7469706F010049001000010005574944544802
      00020002000B7436315F6272616E636F73010049001000010005574944544802
      0002000E000C7436315F6272616E636F73310100490010000100055749445448
      020002000E00087436315F6461746108000800100000000C7436315F64617461
      5F72656608000800100000000A7436315F6D6F64656C6F010049001000010005
      5749445448020002000200097436315F73657269650100490010000100055749
      4454480200020003000C7436315F737562736572696501004900100001000557
      494454480200020002000C7436315F6E696E696369616C08000100100000000A
      7436315F6E66696E616C08000100100000000B7436315F766C746F74616C0800
      0400100000000A7436315F626369636D7308000400100000000A7436315F766C
      69636D7308000400100000000B7436315F6973656E7461730800040010000000
      0A7436315F6F757472617308000400100000000C7436315F616C6971756F7461
      08000400100000000C7436315F6272616E636F73320100490010000100055749
      445448020002000100077436315F70616908000100100000000E7436315F6E69
      76656C61677275700800010010000000097436315F6C696E6861080001001000
      00000E7436315F64745F7265665F696E6908000800100000000E7436315F6474
      5F7265665F66696E080008001000000001000A4348414E47455F4C4F47040082
      0096000000010000000000000004000000020000000000000004000000030000
      0000000000040000000400000000000000040000000500000000000000040000
      0006000000000000000400000007000000000000000400000008000000000000
      00040000000900000000000000040000000A00000000000000040000000B0000
      0000000000040000000C00000000000000040000000D00000000000000040000
      000E00000000000000040000000F000000000000000400000010000000000000
      0004000000110000000000000004000000120000000000000004000000130000
      0000000000040000001400000000000000040000001500000000000000040000
      0016000000000000000400000017000000000000000400000018000000000000
      00040000001900000000000000040000001A00000000000000040000001B0000
      0000000000040000001C00000000000000040000001D00000000000000040000
      001E00000000000000040000001F000000000000000400000020000000000000
      0004000000210000000000000004000000220000000000000004000000230000
      0000000000040000002400000000000000040000002500000000000000040000
      0026000000000000000400000027000000000000000400000028000000000000
      00040000002900000000000000040000002A00000000000000040000002B0000
      0000000000040000002C00000000000000040000002D00000000000000040000
      002E00000000000000040000002F000000000000000400000030000000000000
      0004000000310000000000000004000000320000000000000004000000040500
      00004055023631010001000000BE8643F1CC420000BE8643F1CC420236350131
      010002000000000000000200000000000000713D0AD7A3704E40000000000000
      000000000000000000000000000000000000713D0AD7A3704E40000000000000
      0000010004050000004055023631010001000000BE8643F1CC420000BE8643F1
      CC4202363501310100030000000000000003000000000000000000000000006E
      400000000000000000000000000000000000000000000000000000000000006E
      400000000000000000010004050000004055023631010001000000BE8643F1CC
      420000BE8643F1CC420236350131010001000000000000000100000000000000
      3D0AD7A3708D7A40000000000000000000000000000000000000000000000000
      3D0AD7A3708D7A40000000000000000001000405000000405502363101000100
      0000BE8643F1CC420000BE8643F1CC4202363501310100060000000000000006
      000000000000000000000000C059400000000000000000000000000000000000
      000000000000000000000000C059400000000000000000010004050000004055
      023631010001000000BE8643F1CC420000BE8643F1CC42023635013101000700
      00000000000007000000000000008FC2F5285C3F724000000000000000000000
      00000000000000000000000000008FC2F5285C3F724000000000000000000100
      04050000004055023631010001000000BE8643F1CC420000BE8643F1CC420236
      350131010008000000000000000800000000000000F6285C8FC2753840000000
      000000000000000000000000000000000000000000F6285C8FC2753840000000
      0000000000010004050000004055023631010001000000BE8643F1CC420000BE
      8643F1CC420236350131010009000000000000000900000000000000E17A14AE
      47015B40000000000000000000000000000000000000000000000000E17A14AE
      47015B400000000000000000010004050000004055023631010001000000BE86
      43F1CC420000BE8643F1CC42023635013101000A000000000000000A00000000
      000000713D0AD7A3005040000000000000000000000000000000000000000000
      000000713D0AD7A3005040000000000000000001000405000000405502363101
      0001000000BE8643F1CC420000BE8643F1CC42023635013101000B0000000000
      00000B00000000000000CDCCCCCCCCDC5C400000000000000000000000000000
      00000000000000000000CDCCCCCCCCDC5C400000000000000000010004050000
      004055023631010001000000BE8643F1CC420000BE8643F1CC42023635013101
      000C000000000000000C000000000000007B14AE47E1CA554000000000000000
      00000000000000000000000000000000007B14AE47E1CA554000000000000000
      00010004050000004055023631010001000000BE8643F1CC420000BE8643F1CC
      42023635013101000D000000000000000D000000000000000000000000C86240
      0000000000000000000000000000000000000000000000000000000000C86240
      0000000000000000010004050000004055023631010001000000BE8643F1CC42
      0000BE8643F1CC42023635013101000E000000000000000E0000000000000066
      66666666663F4000000000000000000000000000000000000000000000000066
      66666666663F4000000000000000000100040500000040550236310100010000
      00BE8643F1CC420000BE8643F1CC42023635013101000F000000000000000F00
      000000000000A4703D0AD7E37C40000000000000000000000000000000000000
      000000000000A4703D0AD7E37C40000000000000000001000405000000405502
      3631010001000000BE8643F1CC420000BE8643F1CC4202363501310100100000
      0000000000100000000000000000000000000039400000000000000000000000
      0000000000000000000000000000000000000039400000000000000000010004
      050000004055023631010001000000BE8643F1CC420000BE8643F1CC42023635
      0131010011000000000000001100000000000000000000000000524000000000
      0000000000000000000000000000000000000000000000000000524000000000
      00000000010004050000004055023631010001000000BE8643F1CC420000BE86
      43F1CC420236350131010014000000000000001400000000000000B81E85EB51
      407540000000000000000000000000000000000000000000000000B81E85EB51
      4075400000000000000000010004050000004055023631010001000000BE8643
      F1CC420000BE8643F1CC42023635013201001500000000000000150000000000
      0000000000000000184000000000000000000000000000000000000000000000
      0000000000000000184000000000000000000100040500000040550236310100
      01000000BE8643F1CC420000BE8643F1CC420236350132010016000000000000
      0016000000000000000000000000003240000000000000000000000000000000
      0000000000000000000000000000003240000000000000000001000405000000
      4055023631010001000000BE8643F1CC420000BE8643F1CC4202363501320100
      1700000000000000170000000000000000000000000042400000000000000000
      0000000000000000000000000000000000000000000042400000000000000000
      010004050000004055023631010001000000BE8643F1CC420000BE8643F1CC42
      02363501320100180000000000000018000000000000007B14AE47E1CA554000
      00000000000000000000000000000000000000000000007B14AE47E1CA554000
      00000000000000010004050000004055023631010001000000BE8643F1CC4200
      00BE8643F1CC4202363501320100190000000000000019000000000000000000
      000000A064400000000000000000000000000000000000000000000000000000
      000000A064400000000000000000010004050000004055023631010001000000
      BE8643F1CC420000BE8643F1CC42023635013201001A000000000000001A0000
      0000000000C3F5285C8F02364000000000000000000000000000000000000000
      0000000000C3F5285C8F02364000000000000000000100040500000040550236
      31010001000000BE8643F1CC420000BE8643F1CC42023635013201001B000000
      000000001B000000000000005C8FC2F528007440000000000000000000000000
      0000000000000000000000005C8FC2F528007440000000000000000001000405
      0000004055023631010001000000BE8643F1CC420000BE8643F1CC4202363501
      3201001C000000000000001C0000000000000000000000000012400000000000
      0000000000000000000000000000000000000000000000000012400000000000
      000000010004050000004055023631010001000000BE8643F1CC420000BE8643
      F1CC42023635013201001D000000000000001D00000000000000000000000000
      1840000000000000000000000000000000000000000000000000000000000000
      18400000000000000000010004050000004055023631010001000000BE8643F1
      CC420000BE8643F1CC42023635013201001E000000000000001E000000000000
      0000000000000038400000000000000000000000000000000000000000000000
      0000000000000038400000000000000000010004050000004055023631010001
      000000BE8643F1CC420000BE8643F1CC42023635013201001F00000000000000
      1F000000000000000000000000003E4000000000000000000000000000000000
      00000000000000000000000000003E4000000000000000000100040500000040
      55023631010001000000BE8643F1CC420000BE8643F1CC420236350132010020
      000000000000002000000000000000713D0AD7A3805340000000000000000000
      000000000000000000000000000000713D0AD7A3805340000000000000000001
      0004050000004055023631010001000000BE8643F1CC420000BE8643F1CC4202
      36350132010021000000000000002100000000000000A4703D0AD7A31E400000
      00000000000000000000000000000000000000000000A4703D0AD7A31E400000
      000000000000010004050000004055023631010001000000BE8643F1CC420000
      BE8643F1CC420236350132010022000000000000002200000000000000B81E85
      EB51606940000000000000000000000000000000000000000000000000B81E85
      EB516069400000000000000000010004050000004055023631010001000000BE
      8643F1CC420000BE8643F1CC4202363501320100230000000000000023000000
      00000000C3F5285C8FC247400000000000000000000000000000000000000000
      00000000C3F5285C8FC247400000000000000000010004050000004055023631
      010001000000BE8643F1CC420000BE8643F1CC42023635013201002400000000
      0000002400000000000000E17A14AE47014F4000000000000000000000000000
      0000000000000000000000E17A14AE47014F4000000000000000000100040500
      00004055023631010001000000BE8643F1CC420000BE8643F1CC420236350132
      0100250000000000000025000000000000000000000000006940000000000000
      0000000000000000000000000000000000000000000000006940000000000000
      0000010004050000004055023631010001000000BE8643F1CC420000BE8643F1
      CC4202363501320100260000000000000026000000000000007B14AE47E13A32
      400000000000000000000000000000000000000000000000007B14AE47E13A32
      400000000000000000010004050000004055023631010001000000BE8643F1CC
      420000BE8643F1CC420236350132010027000000000000002700000000000000
      0000000000C05240000000000000000000000000000000000000000000000000
      0000000000C05240000000000000000001000405000000405502363101000100
      0000BE8643F1CC420000BE8643F1CC4202363501320100280000000000000028
      0000000000000000000000004050400000000000000000000000000000000000
      0000000000000000000000004050400000000000000000010004050000004055
      023631010001000000BE8643F1CC420000BE8643F1CC42023635013201002900
      0000000000002900000000000000000000000080404000000000000000000000
      0000000000000000000000000000000000000080404000000000000000000100
      04050000004055023631010001000000BE8643F1CC420000BE8643F1CC420236
      35013201002A000000000000002A000000000000000000000000706A40000000
      0000000000000000000000000000000000000000000000000000706A40000000
      0000000000010004050000004055023631010001000000BE8643F1CC420000BE
      8643F1CC42023635013201002B000000000000002B00000000000000713D0AD7
      A3405840000000000000000000000000000000000000000000000000713D0AD7
      A34058400000000000000000010004050000004055023631010001000000BE86
      43F1CC420000BE8643F1CC42023635013201002C000000000000002C00000000
      000000B81E85EB51806140000000000000000000000000000000000000000000
      000000B81E85EB51806140000000000000000001000405000000405502363101
      0001000000BE8643F1CC420000BE8643F1CC42023635013201002D0000000000
      00002D00000000000000A4703D0AD72B61400000000000000000000000000000
      00000000000000000000A4703D0AD72B61400000000000000000010004050000
      004055023631010001000000BE8643F1CC420000BE8643F1CC42023635013201
      002D000000000000002D00000000000000000000000000654000000000000000
      0000000000000000000000000000000000000000000000654000000000000000
      00010004050000004055023631010001000000BE8643F1CC420000BE8643F1CC
      42023635013201002E000000000000002E00000000000000713D0AD7A3405340
      000000000000000000000000000000000000000000000000713D0AD7A3405340
      0000000000000000010004050000004055023631010001000000BE8643F1CC42
      0000BE8643F1CC42023635013201003000000000000000300000000000000071
      3D0AD7A3A0654000000000000000000000000000000000000000000000000071
      3D0AD7A3A0654000000000000000000100040500000040550236310100010000
      00BE8643F1CC420000BE8643F1CC420236350132010031000000000000003100
      0000000000000000000000806640000000000000000000000000000000000000
      0000000000000000000000806640000000000000000001000405000000405502
      3631010001000000BE8643F1CC420000BE8643F1CC4202363501310100320000
      000000000032000000000000008FC2F5285C9F61400000000000000000000000
      000000000000000000000000008FC2F5285C9F61400000000000000000010004
      050000004055023631010001000000BE8643F1CC420000BE8643F1CC42023635
      01310100330000000000000033000000000000000000000000405F4000000000
      00000000000000000000000000000000000000000000000000405F4000000000
      00000000010004050000004055023631010001000000BE8643F1CC420000BE86
      43F1CC4202363501310100350000000000000035000000000000000000000000
      0038400000000000000000000000000000000000000000000000000000000000
      0038400000000000000000010004050000004055023631010001000000BE8643
      F1CC420000BE8643F1CC42023635013101003600000000000000360000000000
      00000000000000E0704000000000000000000000000000000000000000000000
      00000000000000E0704000000000000000000100040500000040550236310100
      01000000BE8643F1CC420000BE8643F1CC420236350131010037000000000000
      003700000000000000AE47E17A14088140000000000000000000000000000000
      000000000000000000AE47E17A1408814000000000000000000100}
    object cds_tipo61t61_tipo: TStringField
      FieldName = 't61_tipo'
      Size = 2
    end
    object cds_tipo61t61_brancos: TStringField
      FieldName = 't61_brancos'
      Size = 14
    end
    object cds_tipo61t61_brancos1: TStringField
      FieldName = 't61_brancos1'
      Size = 14
    end
    object cds_tipo61t61_data: TDateTimeField
      FieldName = 't61_data'
    end
    object cds_tipo61t61_data_ref: TDateTimeField
      FieldName = 't61_data_ref'
    end
    object cds_tipo61t61_modelo: TStringField
      FieldName = 't61_modelo'
      Size = 2
    end
    object cds_tipo61t61_serie: TStringField
      FieldName = 't61_serie'
      Size = 3
    end
    object cds_tipo61t61_subserie: TStringField
      FieldName = 't61_subserie'
      Size = 2
    end
    object cds_tipo61t61_ninicial: TLargeintField
      FieldName = 't61_ninicial'
    end
    object cds_tipo61t61_nfinal: TLargeintField
      FieldName = 't61_nfinal'
    end
    object cds_tipo61t61_vltotal: TFloatField
      FieldName = 't61_vltotal'
    end
    object cds_tipo61t61_bcicms: TFloatField
      FieldName = 't61_bcicms'
    end
    object cds_tipo61t61_vlicms: TFloatField
      FieldName = 't61_vlicms'
    end
    object cds_tipo61t61_isentas: TFloatField
      FieldName = 't61_isentas'
    end
    object cds_tipo61t61_outras: TFloatField
      FieldName = 't61_outras'
    end
    object cds_tipo61t61_aliquota: TFloatField
      FieldName = 't61_aliquota'
    end
    object cds_tipo61t61_brancos2: TStringField
      FieldName = 't61_brancos2'
      Size = 1
    end
  end
  object cds_tipo61r: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 't61r_qtdreg_dup'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 't61r_chave_id'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 't61r_tipo'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 't61r_ma'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 't61r_mesano'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 't61r_cod_item'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 't61r_quant'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 't61r_vlbruto'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 't61r_bcicms'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 't61r_aliq'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 't61r_brancos'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 54
      end
      item
        Name = 't61r_pai'
        Attributes = [faUnNamed]
        DataType = ftLargeint
      end
      item
        Name = 't61r_nivelagrup'
        Attributes = [faUnNamed]
        DataType = ftLargeint
      end
      item
        Name = 't61r_linha'
        Attributes = [faUnNamed]
        DataType = ftLargeint
      end
      item
        Name = 't61r_dt_ref_ini'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 't61r_dt_ref_fin'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 't61r_cod_item_calc'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <
      item
        Name = 'cds_tipo61rIndex1'
        Fields = 't61r_mesano;t61r_cod_item'
        Options = [ixUnique]
      end>
    IndexName = 'cds_tipo61rIndex1'
    Params = <>
    StoreDefs = True
    Left = 656
    Top = 304
    object cds_tipo61rt61r_tipo: TStringField
      FieldName = 't61r_tipo'
      Size = 3
    end
    object cds_tipo61rt61r_mesano: TStringField
      FieldName = 't61r_mesano'
      Size = 6
    end
    object cds_tipo61rt61r_cod_item: TStringField
      FieldName = 't61r_cod_item'
      Size = 60
    end
    object cds_tipo61rt61r_quant: TFloatField
      FieldName = 't61r_quant'
    end
    object cds_tipo61rt61r_vlbruto: TFloatField
      FieldName = 't61r_vlbruto'
    end
    object cds_tipo61rt61r_bcicms: TFloatField
      FieldName = 't61r_bcicms'
    end
    object cds_tipo61rt61r_aliq: TFloatField
      FieldName = 't61r_aliq'
    end
    object cds_tipo61rt61r_brancos: TStringField
      FieldName = 't61r_brancos'
      Size = 54
    end
  end
  object tb_rcfop: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'rcfop_aliq'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_base'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_baser'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_cfo'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'rcfop_cfonome'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'rcfop_icms'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_icmsr'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_isentas'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_outras'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_pis'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rcfop_vlrcontabil'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tb_rcfop_chave'
        Fields = 'rcfop_cfo;rcfop_aliq'
        Options = [ixUnique]
      end>
    IndexName = 'tb_rcfop_chave'
    Params = <>
    StoreDefs = True
    Left = 640
    Top = 40
    object tb_rcfoprcfop_aliq: TFloatField
      FieldName = 'rcfop_aliq'
    end
    object tb_rcfoprcfop_base: TFloatField
      FieldName = 'rcfop_base'
    end
    object tb_rcfoprcfop_baser: TFloatField
      FieldName = 'rcfop_baser'
    end
    object tb_rcfoprcfop_cfo: TStringField
      FieldName = 'rcfop_cfo'
      Size = 5
    end
    object tb_rcfoprcfop_cfonome: TStringField
      FieldName = 'rcfop_cfonome'
      Size = 25
    end
    object tb_rcfoprcfop_icms: TFloatField
      FieldName = 'rcfop_icms'
    end
    object tb_rcfoprcfop_icmsr: TFloatField
      FieldName = 'rcfop_icmsr'
    end
    object tb_rcfoprcfop_isentas: TFloatField
      FieldName = 'rcfop_isentas'
    end
    object tb_rcfoprcfop_outras: TFloatField
      FieldName = 'rcfop_outras'
    end
    object tb_rcfoprcfop_pis: TFloatField
      FieldName = 'rcfop_pis'
    end
    object tb_rcfoprcfop_vlrcontabil: TFloatField
      FieldName = 'rcfop_vlrcontabil'
    end
  end
  object tb_ruf: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ruf_base'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_baser'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_icms'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_icmsr'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_isentas'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_outras'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_pis'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'ruf_uf'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ruf_vlrcontabil'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tb_rufIndex1'
        Fields = 'ruf_uf'
        Options = [ixUnique]
      end>
    IndexName = 'tb_rufIndex1'
    Params = <>
    StoreDefs = True
    Left = 640
    Top = 80
    object tb_rufruf_base: TFloatField
      FieldName = 'ruf_base'
    end
    object tb_rufruf_baser: TFloatField
      FieldName = 'ruf_baser'
    end
    object tb_rufruf_icms: TFloatField
      FieldName = 'ruf_icms'
    end
    object tb_rufruf_icmsr: TFloatField
      FieldName = 'ruf_icmsr'
    end
    object tb_rufruf_isentas: TFloatField
      FieldName = 'ruf_isentas'
    end
    object tb_rufruf_outras: TFloatField
      FieldName = 'ruf_outras'
    end
    object tb_rufruf_pis: TFloatField
      FieldName = 'ruf_pis'
    end
    object tb_rufruf_uf: TStringField
      FieldName = 'ruf_uf'
      Size = 2
    end
    object tb_rufruf_vlrcontabil: TFloatField
      FieldName = 'ruf_vlrcontabil'
    end
  end
  object tb_lrs: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 136
    object tb_lrslrs_aliq: TFloatField
      FieldName = 'lrs_aliq'
    end
    object tb_lrslrs_baseipi: TFloatField
      FieldName = 'lrs_baseipi'
    end
    object tb_lrslrs_basen: TFloatField
      FieldName = 'lrs_basen'
    end
    object tb_lrslrs_baser: TFloatField
      FieldName = 'lrs_baser'
    end
    object tb_lrslrs_cfo: TStringField
      FieldName = 'lrs_cfo'
      Size = 10
    end
    object tb_lrslrs_dia: TStringField
      FieldName = 'lrs_dia'
      Size = 2
    end
    object tb_lrslrs_esp: TStringField
      FieldName = 'lrs_esp'
      Size = 4
    end
    object tb_lrslrs_icmipi: TStringField
      FieldName = 'lrs_icmipi'
      Size = 8
    end
    object tb_lrslrs_icmsn: TFloatField
      FieldName = 'lrs_icmsn'
    end
    object tb_lrslrs_ipi: TFloatField
      FieldName = 'lrs_ipi'
    end
    object tb_lrslrs_isentas: TFloatField
      FieldName = 'lrs_isentas'
    end
    object tb_lrslrs_numero: TStringField
      FieldName = 'lrs_numero'
      Size = 6
    end
    object tb_lrslrs_observ: TStringField
      FieldName = 'lrs_observ'
    end
    object tb_lrslrs_outras: TFloatField
      FieldName = 'lrs_outras'
    end
    object tb_lrslrs_pis_cof: TFloatField
      FieldName = 'lrs_pis_cof'
    end
    object tb_lrslrs_serie: TStringField
      FieldName = 'lrs_serie'
      Size = 6
    end
    object tb_lrslrs_status: TFloatField
      FieldName = 'lrs_status'
    end
    object tb_lrslrs_tipo: TFloatField
      FieldName = 'lrs_tipo'
    end
    object tb_lrslrs_uf: TStringField
      FieldName = 'lrs_uf'
      Size = 2
    end
    object tb_lrslrs_vlrcontabil: TFloatField
      FieldName = 'lrs_vlrcontabil'
    end
  end
  object tb_rsint: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'rs_basen'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_baser'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_data'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'rs_icmsn'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_icmsr'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_ipi'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_isentas'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_outras'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'rs_tipo'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'rs_totnota'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tb_rsint_data'
        Fields = 'rs_data'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'rs_data'
    Params = <>
    StoreDefs = True
    Left = 648
    Top = 200
    object tb_rsintrs_basen: TFloatField
      FieldName = 'rs_basen'
    end
    object tb_rsintrs_baser: TFloatField
      FieldName = 'rs_baser'
    end
    object tb_rsintrs_data: TDateTimeField
      FieldName = 'rs_data'
    end
    object tb_rsintrs_icmsn: TFloatField
      FieldName = 'rs_icmsn'
    end
    object tb_rsintrs_icmsr: TFloatField
      FieldName = 'rs_icmsr'
    end
    object tb_rsintrs_ipi: TFloatField
      FieldName = 'rs_ipi'
    end
    object tb_rsintrs_isentas: TFloatField
      FieldName = 'rs_isentas'
    end
    object tb_rsintrs_outras: TFloatField
      FieldName = 'rs_outras'
    end
    object tb_rsintrs_tipo: TStringField
      FieldName = 'rs_tipo'
      Size = 1
    end
    object tb_rsintrs_totnota: TFloatField
      FieldName = 'rs_totnota'
    end
  end
  object Table2: TTable
    DatabaseName = 'c:\'
    FieldDefs = <
      item
        Name = 'T74_TIPO'
        DataType = ftInteger
      end
      item
        Name = 'T74_DATA'
        DataType = ftDate
      end
      item
        Name = 'T74_CODPRO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T74_QTD'
        DataType = ftFloat
      end
      item
        Name = 'T74_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'T74_CODPOS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'T74_CNPJ'
        DataType = ftFloat
      end
      item
        Name = 'T74_IE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'T74_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'T74_BRANCOS'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'TBTIPO74'
    Left = 563
    Top = 320
    object DateField1: TDateField
      FieldName = 'T74_DATA'
    end
    object StringField1: TStringField
      FieldName = 'T74_CODPRO'
      Size = 14
    end
    object FloatField1: TFloatField
      FieldName = 'T74_QTD'
    end
    object FloatField2: TFloatField
      FieldName = 'T74_TOTAL'
    end
    object StringField2: TStringField
      FieldName = 'T74_CODPOS'
      Size = 1
    end
    object FloatField3: TFloatField
      FieldName = 'T74_CNPJ'
    end
    object StringField3: TStringField
      FieldName = 'T74_IE'
      Size = 14
    end
    object StringField4: TStringField
      FieldName = 'T74_UF'
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'T74_BRANCOS'
    end
    object IntegerField1: TIntegerField
      FieldName = 'T74_TIPO'
    end
  end
end
