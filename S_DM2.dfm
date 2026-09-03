object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 215
  Top = 23
  Height = 669
  Width = 977
  object Qr_Cab: TQuery
    OnCalcFields = Qr_CabCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P1CODEMP,P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODCLI,P1DATAP,P1DATA' +
        'NF,P1CODVEN,'
      '           P1CODV02,P1CODASSE,'
      
        '           P1OBS1,P1OBS2,P1OBS3,P1FRETEPC,P1UFPV,P1PLACAV,P1CODE' +
        'CF,P1DATACF,'
      '           P1TOTALB,P1TOTALL,P1TOTVALAPROXTRIB,'
      '           P1CODUSR,P1HORADIG,P1TABPV,P1CODPV,P1NUMNF,P1NUMCF,'
      '           P1CODTRA,P1BASEN,P1ICMSN,P1BASER,P1ICMSR,P1TOTDES,'
      '           P1TOTTRI, P1TOTRET,P1TOTISE,P1TIPO,P1TIPO_ENTSAI,'
      
        '           P1BASENP, P1BASENN, P1BASENI,P1ICMSNP,P1ICMSNN,P1ICMS' +
        'NI,'
      
        '           P1BASERP, P1BASERN, P1BASERI,P1ICMSRP,P1ICMSRN,P1ICMS' +
        'RI,'
      
        '           P1BASENRI, P1BASENRP, P1BASENRN, P1ICMSNRI,P1ICMSNRP,' +
        'P1ICMSNRN,'
      
        '           P1TOTPOS,P1TOTNEG,P1TOTINA,P1DESC01,P1DESC02,P1VLRDES' +
        ',P1REPAS,'
      '           P1CUPACRE,P1CUPDES,P1SUBMOD,'
      
        '           CCODBAI, CCODLOC,CCEP,CCELULAR,CFONERES,CFAX,CCIDADE,' +
        'CUF,CBAIRRO,CCODRED,'
      
        '           CCODBAIC, CCODLOCC,CCEPC,CCIDADEC,CUFC,CBAIRROC,CENDE' +
        'RC,CICMSR,'
      '           P1QTDVOL,P1VALFRE,P1CODCV,P1ACRECONV,P1ACREGER,'
      
        '           P1PESOL,P1PESOB,P1ESPECIE,P1BANCO,P1PREVENT,P1HPREVEN' +
        'T,'
      
        '           P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL,P1TIPENT,P1CF' +
        'O1,P1CFO2,P1IPIPOS,P1IPINEG,P1IPIINA,'
      
        '           P1TOTOUT,P1TARBAN,P1INCTB,P1VALSEG,P1ALIQDEB,P1TOTCGR' +
        'U,P1TOTSGRU,P1BCISSQN,P1VISSQN,P1CFOSER,'
      '           P1TOTSERLIQ,'
      '           P1NPEDORI,'
      '           P1PEDORI1,'
      '           P1PEDORI2,P1EMITENTE'
      '           ,P1SEPAMB'
      '           ,P1QTDDECPU'
      '           ,P1TOTPIS'
      '           ,P1TOTCOFINS'
      '           ,P1RED_BCISSQN'
      '           ,P1BCINSS'
      '           ,P1RED_BCINSS'
      '           ,P1VINSS'
      '           ,P1BCIRRF'
      '           ,P1RED_BCIRRF'
      '           ,P1VIRRF,P1NFE_ENVXML,P1TPEMIS,P1CODSER'
      '           ,P1COMIS,P1COMV02,CCONSF,CREVENDA_CP,P1SERIE,'
      
        '           CFONECOM,CDTCAD,CRAZAO,CDENOM,CLOG,CNUM,CCOMPL,CPONTO' +
        'R,COBS01,COBS02,COBS03,COBS04,COBS05,CSITCLI,'
      '           CLIM1,CLIM2,CREDICMSNOR,CDEC5834,CDEC5825,'
      '           CNOMCON,CFONCON,CFONE01,CFONE02,CFONE03,'
      '           RAZAO,FANTASIA,ENDERECO,BAIRRO,'
      '           CIDADE,UF,CGC,INSCRICAO,'
      '           FONE,FAX,E_MAIL,P1ORC_OBSERV,P1ORC_FORMAPAG'
      '           ,P1DATVIS,P1NUMVIS'
      '           ,P1ICMS_BCFRE'
      '           ,P1ICMS_ALFRE'
      '           ,P1ICMS_VLFRE'
      '           ,P1DESPACES'
      '           ,P1NFE_IMP_UFSAIDA_PAIS'
      '           ,P1NFE_IMP_XLOCEXPORTA'
      '            ,P1NFE_IMP_XLOCDESPACHO'
      '            ,P1TRUNCARREND'
      '            ,P1NFCE_DATA'
      '            ,P1NFCE_NUMERO'
      '            ,P1NFCE_SERIE'
      '            ,P1NFCE_SITUACAO'
      '            ,P1NFCE_MODELO'
      '            ,P1NFCE_CHV_ACESSO'
      '            ,P1NFCE_NPROT'
      ''
      '            From CADP01,CADCLI,CADEMP,CADP01_ORC'
      
        '           where P1CODEMP=1 and CCODEMP=P1CODEMP and P1CHAVE=P1O' +
        'RC_CHAVE '
      '           and   CODEMP=P1CODEMP and P1ORC_CODEMP=P1CODEMP'
      '           and  P1CHAVE is null and'
      '           CCODCLI=P1CODCLI'
      '')
    Left = 48
    Top = 4
    object Qr_CabP1CHAVE: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_CabP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_CabP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_CabP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'digo do Vendedor'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_CabP1CODUSR: TFloatField
      DisplayLabel = 'Usu'#225'rio que digitou o pedido'
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_CabP1HORADIG: TStringField
      DisplayLabel = 'Hora digitada'
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Qr_CabP1CODPV: TFloatField
      DisplayLabel = 'C'#243'digo Plano de Vendas'
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_CabP1CODTRA: TFloatField
      DisplayLabel = 'C'#243'digo Transportadora'
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_CabP1BASEN: TFloatField
      DisplayLabel = 'Base Icms Normal'
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Qr_CabP1ICMSN: TFloatField
      DisplayLabel = 'Valor do Icms Normal'
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Qr_CabP1BASER: TFloatField
      DisplayLabel = 'Base Icms Retido'
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Qr_CabP1ICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_CabP1TOTTRI: TFloatField
      DisplayLabel = 'Total Tributado'
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Qr_CabP1TOTRET: TFloatField
      DisplayLabel = 'Total Retido'
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Qr_CabP1TOTISE: TFloatField
      DisplayLabel = 'Total Isento'
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Qr_CabCRAZAO: TStringField
      DisplayLabel = 'Razao Social do Cliente'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CabCDENOM: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_CabCCODBAI: TFloatField
      DisplayLabel = 'C'#243'digo do Bairro'
      FieldName = 'CCODBAI'
      Origin = 'SG_ASSOC.CADCLI.CCODBAI'
    end
    object Qr_CabCCODLOC: TFloatField
      DisplayLabel = 'C'#243'digo da Cidade'
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Qr_CabCCEP: TStringField
      DisplayLabel = 'CEP do Cliente'
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_CabCCELULAR: TStringField
      DisplayLabel = 'Celular do Cliente'
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Qr_CabCFONERES: TStringField
      DisplayLabel = 'Telefone do Cliente'
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Qr_CabCFONECOM: TStringField
      DisplayLabel = 'Telefone Comercial'
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Qr_CabCDTCAD: TDateTimeField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'CDTCAD'
      Origin = 'SG_ASSOC.CADCLI.CDTCAD'
    end
    object Qr_CabCPONTOR: TStringField
      DisplayLabel = 'Ponto de Referencia'
      FieldName = 'CPONTOR'
      Origin = 'SG_ASSOC.CADCLI.CPONTOR'
      Size = 60
    end
    object Qr_CabCLIM1: TStringField
      DisplayLabel = 'Liminar do Cliente Primeira Linha'
      FieldName = 'CLIM1'
      Origin = 'SG_ASSOC.CADCLI.CLIM1'
      Size = 60
    end
    object Qr_CabCLIM2: TStringField
      DisplayLabel = 'Liminar do Cliente Segunda Linha'
      FieldName = 'CLIM2'
      Origin = 'SG_ASSOC.CADCLI.CLIM2'
      Size = 60
    end
    object Qr_CabRGIE: TStringField
      DisplayLabel = 'Inscricao Estadual ou Registro Geral'
      FieldKind = fkCalculated
      FieldName = 'RGIE'
      Size = 30
      Calculated = True
    end
    object Qr_Cabcgccpf: TStringField
      DisplayLabel = 'CNPJ ou CNPF do Cliente'
      FieldKind = fkCalculated
      FieldName = 'cgccpf'
      Calculated = True
    end
    object Qr_Cabnomcfo: TStringField
      DisplayLabel = 'Nome do CFOP'
      FieldKind = fkCalculated
      FieldName = 'nomcfo'
      Size = 130
      Calculated = True
    end
    object Qr_Cabinscsub: TStringField
      DisplayLabel = 'Inscri'#231'ao do Substituto Tributario'
      FieldKind = fkCalculated
      FieldName = 'inscsub'
      Size = 30
      Calculated = True
    end
    object Qr_Cabplimina1: TStringField
      DisplayLabel = 'Liminar do Cadastro de Estado Linha 1'
      FieldKind = fkCalculated
      FieldName = 'plimina1'
      Size = 60
      Calculated = True
    end
    object Qr_Cabplimina2: TStringField
      DisplayLabel = 'Liminar do Cadastro de Estado linha 2'
      FieldKind = fkCalculated
      FieldName = 'plimina2'
      Size = 60
      Calculated = True
    end
    object Qr_CabP1TOTALB: TFloatField
      DisplayLabel = 'Total Bruto do Pedido'
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_CabP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido do Pedido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_CabP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_CabP1TOTDES: TFloatField
      DisplayLabel = 'Total dos Descontos'
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Qr_CabP1BASENP: TFloatField
      DisplayLabel = 'Base de Calculo Icms Normal Produtos Positivos'
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Qr_CabP1BASENN: TFloatField
      DisplayLabel = 'Base de Calculo de Icms Normal Produtos Negativos'
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Qr_CabP1BASENI: TFloatField
      DisplayLabel = 'Base de Calculo Icms Normal Produtos Inalterados'
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Qr_CabP1ICMSNP: TFloatField
      DisplayLabel = 'Icms Normal Produtos Positivos'
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Qr_CabP1ICMSNN: TFloatField
      DisplayLabel = 'Icms Normal Produtos Negativos'
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Qr_CabP1ICMSNI: TFloatField
      DisplayLabel = 'Icms Normal Produtos Inalterados'
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Qr_CabP1BASERP: TFloatField
      DisplayLabel = 'Base de Calculo Icms Retido Produtos Positivos'
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Qr_CabP1BASERN: TFloatField
      DisplayLabel = 'Base de Calculo Icms Retido Produtos Negativos'
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Qr_CabP1BASERI: TFloatField
      DisplayLabel = 'Base de Calculo icms Retido Produtos Inalterados'
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Qr_CabP1ICMSRP: TFloatField
      DisplayLabel = 'Icms Retido Produtos Positivos'
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Qr_CabP1ICMSRN: TFloatField
      DisplayLabel = 'Icms Retido Produtos Negativos'
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Qr_CabP1ICMSRI: TFloatField
      DisplayLabel = 'Icms Retido Produtos Inalterados'
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Qr_CabP1TOTPOS: TFloatField
      DisplayLabel = 'Total das Mercadorias da Lista Positiva'
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Qr_CabP1TOTNEG: TFloatField
      DisplayLabel = 'Total Produtos da Lista Negativa'
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Qr_CabP1TOTINA: TFloatField
      DisplayLabel = 'Total dos Produtos da Lista Inalterada'
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Qr_CabP1DESC01: TFloatField
      DisplayLabel = '% de desconto 1'
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Qr_CabP1DESC02: TFloatField
      DisplayLabel = '% de desconto 2'
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Qr_CabP1PESOL: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_CabP1PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_CabP1ESPECIE: TStringField
      DisplayLabel = 'Especie dos volumes'
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
      Size = 10
    end
    object Qr_Cabextl01: TStringField
      DisplayLabel = 'Valor Liquido por Extenso Linha 01 60 letras'
      FieldKind = fkCalculated
      FieldName = 'extl01'
      Size = 60
      Calculated = True
    end
    object Qr_Cabextl02: TStringField
      DisplayLabel = 'Total Liquido por Extenso linha 02 60 letras'
      FieldKind = fkCalculated
      FieldName = 'extl02'
      Size = 60
      Calculated = True
    end
    object Qr_Cabextl03: TStringField
      DisplayLabel = 'Total Liquido por Extenso linha 03 tamanho 60 letras'
      FieldKind = fkCalculated
      FieldName = 'extl03'
      Size = 60
      Calculated = True
    end
    object Qr_CabP1UFPV: TStringField
      DisplayLabel = 'UF da Placa do Veiculo Entregador'
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_CabP1PLACAV: TStringField
      DisplayLabel = 'Placa do Veiculo Entregador'
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_CabP1DATANF: TDateTimeField
      DisplayLabel = 'Data de Emissao da Nota Fiscal'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_Cabnometra: TStringField
      DisplayLabel = 'Nome da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'nometra'
      Size = 40
      Calculated = True
    end
    object Qr_Cabendtra: TStringField
      DisplayLabel = 'Endereco da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'endtra'
      Size = 40
      Calculated = True
    end
    object Qr_Cabcnpftra: TStringField
      DisplayLabel = 'CNPJ da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'cnpftra'
      Size = 18
      Calculated = True
    end
    object Qr_Cabietra: TStringField
      DisplayLabel = 'Inscricao Estadual da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'ietra'
      Calculated = True
    end
    object Qr_Cabcidtra: TStringField
      DisplayLabel = 'Cidade da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'cidtra'
      Size = 30
      Calculated = True
    end
    object Qr_Cabuftra: TStringField
      DisplayLabel = 'UF da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'uftra'
      Size = 2
      Calculated = True
    end
    object Qr_Cabbaitra: TStringField
      DisplayLabel = 'Bairro da Transportadora'
      FieldKind = fkCalculated
      FieldName = 'baitra'
      Size = 30
      Calculated = True
    end
    object Qr_Cabcfo1: TStringField
      DisplayLabel = 'N'#227'o Use'
      FieldKind = fkCalculated
      FieldName = 'cfo1'
      Size = 4
      Calculated = True
    end
    object Qr_Cabcfo2: TStringField
      DisplayLabel = 'N'#227'o Use'
      FieldKind = fkCalculated
      FieldName = 'cfo2'
      Size = 4
      Calculated = True
    end
    object Qr_CabP1VLRDES: TFloatField
      DisplayLabel = 'Valor do Desconto '
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Qr_CabP1VALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_CabCCIDADE: TStringField
      DisplayLabel = 'Cidade do Cliente'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CabCUF: TStringField
      DisplayLabel = 'Estado/UF do Cliente'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CabCBAIRRO: TStringField
      DisplayLabel = 'Bairro do Cliente'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_Cabp1dtv01: TDateField
      DisplayLabel = 'Data de Vencimento 01'
      FieldKind = fkCalculated
      FieldName = 'p1dtv01'
      Calculated = True
    end
    object Qr_Cabp1dtv02: TDateField
      DisplayLabel = 'Data de Vencimento 02'
      FieldKind = fkCalculated
      FieldName = 'p1dtv02'
      Calculated = True
    end
    object Qr_Cabp1dtv03: TDateField
      DisplayLabel = 'Data de Vencimento 03'
      FieldKind = fkCalculated
      FieldName = 'p1dtv03'
      Calculated = True
    end
    object Qr_Cabp1dtv04: TDateField
      DisplayLabel = 'Data de Vencimento 04'
      FieldKind = fkCalculated
      FieldName = 'p1dtv04'
      Calculated = True
    end
    object Qr_Cabp1dtv05: TDateField
      DisplayLabel = 'Data de vencimento 05'
      FieldKind = fkCalculated
      FieldName = 'p1dtv05'
      Calculated = True
    end
    object Qr_Cabp1dtv06: TDateField
      DisplayLabel = 'Data de vencimento 06'
      FieldKind = fkCalculated
      FieldName = 'p1dtv06'
      Calculated = True
    end
    object Qr_Cabp1dtv07: TDateField
      DisplayLabel = 'Data de vencimento 07'
      FieldKind = fkCalculated
      FieldName = 'p1dtv07'
      Calculated = True
    end
    object Qr_Cabp1dtv08: TDateField
      DisplayLabel = 'Data de vencimento 08'
      FieldKind = fkCalculated
      FieldName = 'p1dtv08'
      Calculated = True
    end
    object Qr_Cabp1dtv09: TDateField
      DisplayLabel = 'Data de vencimento 09'
      FieldKind = fkCalculated
      FieldName = 'p1dtv09'
      Calculated = True
    end
    object Qr_Cabp1dtv10: TDateField
      DisplayLabel = 'Data de vencimento 10'
      FieldKind = fkCalculated
      FieldName = 'p1dtv10'
      Calculated = True
    end
    object Qr_Cabp1vlr01: TFloatField
      DisplayLabel = 'Valor Parcela  01'
      FieldKind = fkCalculated
      FieldName = 'p1vlr01'
      Calculated = True
    end
    object Qr_Cabp1vlr02: TFloatField
      DisplayLabel = 'Valor Parcela  02'
      FieldKind = fkCalculated
      FieldName = 'p1vlr02'
      Calculated = True
    end
    object Qr_Cabp1vlr03: TFloatField
      DisplayLabel = 'Valor Parcela  03'
      FieldKind = fkCalculated
      FieldName = 'p1vlr03'
      Calculated = True
    end
    object Qr_Cabp1vlr04: TFloatField
      DisplayLabel = 'Valor Parcela  04'
      FieldKind = fkCalculated
      FieldName = 'p1vlr04'
      Calculated = True
    end
    object Qr_Cabp1vlr05: TFloatField
      DisplayLabel = 'Valor Parcela  05'
      FieldKind = fkCalculated
      FieldName = 'p1vlr05'
      Calculated = True
    end
    object Qr_Cabp1vlr06: TFloatField
      DisplayLabel = 'Valor Parcela  06'
      FieldKind = fkCalculated
      FieldName = 'p1vlr06'
      Calculated = True
    end
    object Qr_Cabp1vlr07: TFloatField
      DisplayLabel = 'Valor Parcela  07'
      FieldKind = fkCalculated
      FieldName = 'p1vlr07'
      Calculated = True
    end
    object Qr_Cabp1vlr08: TFloatField
      DisplayLabel = 'Valor Parcela  08'
      FieldKind = fkCalculated
      FieldName = 'p1vlr08'
      Calculated = True
    end
    object Qr_Cabp1vlr09: TFloatField
      DisplayLabel = 'Valor Parcela  09'
      FieldKind = fkCalculated
      FieldName = 'p1vlr09'
      Calculated = True
    end
    object Qr_Cabp1vlr10: TFloatField
      DisplayLabel = 'Valor Parcela  10'
      FieldKind = fkCalculated
      FieldName = 'p1vlr10'
      Calculated = True
    end
    object Qr_CabP1CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da empresa'
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_CabP1ORDEM: TFloatField
      DisplayLabel = 'Ordem do Pedido'
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_CabP1FRETEPC: TFloatField
      DisplayLabel = 'Frete por conta de 1-Emitente 2-Destinatario'
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_CabP1TIPO: TFloatField
      DisplayLabel = 'Tipo de Pedido 8-Entrada restante saidas'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_CabP1QTDVOL: TFloatField
      DisplayLabel = 'Quantidade de volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_CabP1BANCO: TFloatField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Qr_CabRAZAO: TStringField
      DisplayLabel = 'EMPRESA-Raz'#227'o social'
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.CADEMP.RAZAO'
      Size = 40
    end
    object Qr_CabFANTASIA: TStringField
      DisplayLabel = 'EMPRESA-Nome de fantasia'
      FieldName = 'FANTASIA'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA'
      Size = 40
    end
    object Qr_CabCIDADE: TStringField
      DisplayLabel = 'EMPRESA-Nome da cidade'
      FieldName = 'CIDADE'
      Origin = 'SG_ASSOC.CADEMP.CIDADE'
      Size = 25
    end
    object Qr_CabUF: TStringField
      DisplayLabel = 'EMPRESA-Unidade da federa'#231#227'o'
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADEMP.UF'
      Size = 2
    end
    object Qr_CabCGC: TFloatField
      DisplayLabel = 'EMPRESA-CNPJ '
      FieldName = 'CGC'
      Origin = 'SG_ASSOC.CADEMP.CGC'
    end
    object Qr_CabINSCRICAO: TStringField
      DisplayLabel = 'EMPRESA-Inscri'#231#227'oi estadual'
      FieldName = 'INSCRICAO'
      Origin = 'SG_ASSOC.CADEMP.INSCRICAO'
    end
    object Qr_CabFONE: TStringField
      DisplayLabel = 'EMPRESA-Telefone'
      FieldName = 'FONE'
      Origin = 'SG_ASSOC.CADEMP.FONE'
      Size = 16
    end
    object Qr_CabFAX: TStringField
      DisplayLabel = 'EMPRESA-Fax'
      FieldName = 'FAX'
      Origin = 'SG_ASSOC.CADEMP.FAX'
      Size = 16
    end
    object Qr_CabE_MAIL: TStringField
      DisplayLabel = 'EMPRESA-E mail'
      FieldName = 'E_MAIL'
      Origin = 'SG_ASSOC.CADEMP.E_MAIL'
      Size = 40
    end
    object Qr_Cabnomven: TStringField
      DisplayLabel = 'Nome do vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Qr_CabP1REPAS: TFloatField
      DisplayLabel = 'Repasse de Icms'
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Qr_CabP1PREVENT: TDateTimeField
      DisplayLabel = 
        'Data de Saida das Mercadorias/Previs'#227'o de Entraga das Mercadoria' +
        's'
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Qr_CabP1HPREVENT: TStringField
      DisplayLabel = 'Hora Prevista para Sa'#237'da das Mercadorias'
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Qr_CabBAIRRO: TStringField
      DisplayLabel = 'EMPRESA-Bairro'
      FieldName = 'BAIRRO'
      Origin = 'SG_ASSOC.CADEMP.BAIRRO'
    end
    object Qr_CabCLOG: TStringField
      DisplayLabel = 'Endere'#231'o do Cliente'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_CabENDERECO: TStringField
      DisplayLabel = 'EMPRESA-Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'SG_ASSOC.CADEMP.ENDERECO'
      Size = 40
    end
    object Qr_CabCOBS01: TStringField
      DisplayLabel = 'Observa'#231#227'o Cliente linha 01'
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Qr_CabCOBS02: TStringField
      DisplayLabel = 'Observa'#231#227'o Cliente linha 02'
      FieldName = 'COBS02'
      Origin = 'SG_ASSOC.CADCLI.COBS02'
      Size = 60
    end
    object Qr_CabCOBS04: TStringField
      DisplayLabel = 'Observa'#231#227'o Cliente linha 04'
      FieldName = 'COBS04'
      Origin = 'SG_ASSOC.CADCLI.COBS04'
      Size = 60
    end
    object Qr_CabCOBS03: TStringField
      DisplayLabel = 'Observa'#231#227'o Cliente linha 03'
      FieldName = 'COBS03'
      Origin = 'SG_ASSOC.CADCLI.COBS03'
      Size = 60
    end
    object Qr_CabP1TOTDI01: TFloatField
      DisplayLabel = 'Total dos Descontos 01 do '#237'tem'
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Qr_CabP1TOTDI02: TFloatField
      DisplayLabel = 'Total dos descontos 02 do '#237'tem'
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Qr_CabP1TOTDIVL: TFloatField
      DisplayLabel = 'Total dos Descontos em valores do '#237'tem'
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Qr_CabCCODRED: TFloatField
      DisplayLabel = 'C'#243'digo da Rede'
      FieldName = 'CCODRED'
      Origin = 'SG_ASSOC.CADCLI.CCODRED'
    end
    object Qr_Cabnomred: TStringField
      DisplayLabel = 'Nome da Rede'
      FieldKind = fkCalculated
      FieldName = 'nomred'
      Size = 40
      Calculated = True
    end
    object Qr_CabP1BASENRI: TFloatField
      DisplayLabel = 'Base de Icms Normal do Retido Inalterado'
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Qr_CabP1BASENRP: TFloatField
      DisplayLabel = 'Base de Icms Normal do Retido Positivo'
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Qr_CabP1BASENRN: TFloatField
      DisplayLabel = 'Base de Icms Normal do Retido Negativo'
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Qr_CabP1ICMSNRI: TFloatField
      DisplayLabel = 'Icms Normal do Retido Inalterado'
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Qr_CabP1ICMSNRP: TFloatField
      DisplayLabel = 'Icms Normal do Retido Positivo'
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Qr_CabP1ICMSNRN: TFloatField
      DisplayLabel = 'Icms Normal do Retido Negativo'
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Qr_Cabcfops: TStringField
      DisplayLabel = 'CFOPs existentes no Corpo da Nota'
      FieldKind = fkCalculated
      FieldName = 'cfops'
      Size = 10
      Calculated = True
    end
    object Qr_CabP1CODCV: TFloatField
      DisplayLabel = 'C'#243'digo do Conv'#234'nio'
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_CabP1ACRECONV: TFloatField
      DisplayLabel = 'Acrescimos do Convenio'
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_CabP1ACREGER: TFloatField
      DisplayLabel = 'Acr'#233'scimos Geral'
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_Cabnomcon: TStringField
      DisplayLabel = 'Nome do Conv'#234'nio'
      FieldKind = fkCalculated
      FieldName = 'nomcon'
      Size = 40
      Calculated = True
    end
    object Qr_Cabnomusr: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'nomusr'
      Size = 30
      Calculated = True
    end
    object Qr_Cabpobsnf01: TStringField
      DisplayLabel = 'Observa'#231#245'es do Parametros Linha 01'
      FieldKind = fkCalculated
      FieldName = 'pobsnf01'
      Size = 60
      Calculated = True
    end
    object Qr_Cabpobsnf02: TStringField
      DisplayLabel = 'Observa'#231#245'es do Parametros Linha 02'
      FieldKind = fkCalculated
      FieldName = 'pobsnf02'
      Size = 60
      Calculated = True
    end
    object Qr_Cabpobsnf03: TStringField
      DisplayLabel = 'Observa'#231#245'es do Parametros Linha 03'
      FieldKind = fkCalculated
      FieldName = 'pobsnf03'
      Size = 60
      Calculated = True
    end
    object Qr_Cabpmaxrec: TStringField
      DisplayLabel = 'Prazo M'#225'ximo para Reclama'#231#245'es'
      FieldKind = fkCalculated
      FieldName = 'pmaxrec'
      Calculated = True
    end
    object Qr_CabCCODBAIC: TFloatField
      DisplayLabel = 'C'#243'digo do Bairro de Cobran'#231'a'
      FieldName = 'CCODBAIC'
      Origin = 'SG_ASSOC.CADCLI.CCODBAIC'
    end
    object Qr_CabCCODLOCC: TFloatField
      DisplayLabel = 'C'#243'digo da Cidade de Cobran'#231'a'
      FieldName = 'CCODLOCC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOCC'
    end
    object Qr_CabCCEPC: TStringField
      DisplayLabel = 'CEP do Endere'#231'o de Cobran'#231'a'
      FieldName = 'CCEPC'
      Origin = 'SG_ASSOC.CADCLI.CCEPC'
      Size = 9
    end
    object Qr_CabCCIDADEC: TStringField
      DisplayLabel = 'Cidade de Cobran'#231'a'
      FieldName = 'CCIDADEC'
      Origin = 'SG_ASSOC.CADCLI.CCIDADEC'
      Size = 30
    end
    object Qr_CabCUFC: TStringField
      DisplayLabel = 'UF de Cobran'#231'a'
      FieldName = 'CUFC'
      Origin = 'SG_ASSOC.CADCLI.CUFC'
      Size = 2
    end
    object Qr_CabCBAIRROC: TStringField
      DisplayLabel = 'Bairro de Cobran'#231'a'
      FieldName = 'CBAIRROC'
      Origin = 'SG_ASSOC.CADCLI.CBAIRROC'
      Size = 30
    end
    object Qr_CabCENDERC: TStringField
      DisplayLabel = 'Endere'#231'o de Cobran'#231'a'
      FieldName = 'CENDERC'
      Origin = 'SG_ASSOC.CADCLI.CENDERC'
      Size = 40
    end
    object Qr_CabP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero do Cupom Fiscal'
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_CabP1TIPENT: TFloatField
      DisplayLabel = 'Tipo de Entrega(0-Buscar 1-Entr c/Taxa 2-s/Taxa 3-Sede Convenio'
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Qr_CabP1CFO1: TStringField
      DisplayLabel = 'C'#243'digo Fiscal de Opera'#231#227'o 1'
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Qr_CabP1CFO2: TStringField
      DisplayLabel = 'C'#243'digo Fiscal de Opera'#231#227'o 2'
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Qr_CabP1LOTSEQ: TFloatField
      DisplayLabel = 'Lote de Sequencia'
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_CabP1IPIPOS: TFloatField
      DisplayLabel = 'Total do IPI dos Produtos Positivos'
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Qr_CabP1IPINEG: TFloatField
      DisplayLabel = 'Total do IPI dos Produtos Negativos'
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Qr_CabP1IPIINA: TFloatField
      DisplayLabel = 'Total do IPI dos Produtos Inalterados'
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_CabP1TOTOUT: TFloatField
      DisplayLabel = 'Total de Outras(Redutor de ICMS)'
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Qr_CabP1TABPV: TStringField
      DisplayLabel = 'Tabela do Plano de Vendas'
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_Cabdtvcto01: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 01'
      FieldKind = fkCalculated
      FieldName = 'dtvcto01'
      Size = 10
      Calculated = True
    end
    object Qr_Cabdtvcto02: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 02'
      FieldKind = fkCalculated
      FieldName = 'dtvcto02'
      Size = 10
      Calculated = True
    end
    object Qr_Cabdtvcto03: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 03'
      FieldKind = fkCalculated
      FieldName = 'dtvcto03'
      Size = 10
      Calculated = True
    end
    object Qr_Cabdtvcto04: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 04'
      FieldKind = fkCalculated
      FieldName = 'dtvcto04'
      Size = 10
      Calculated = True
    end
    object Qr_Cabdtvcto05: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 05'
      FieldKind = fkCalculated
      FieldName = 'dtvcto05'
      Size = 10
      Calculated = True
    end
    object Qr_Cabdtvcto06: TStringField
      DisplayLabel = 'N'#227'o Use-Data de Vencimento da Duplicata 06'
      FieldKind = fkCalculated
      FieldName = 'dtvcto06'
      Size = 10
      Calculated = True
    end
    object Qr_Cabvlrdup01: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 01'
      FieldKind = fkCalculated
      FieldName = 'vlrdup01'
      Size = 14
      Calculated = True
    end
    object Qr_Cabvlrdup02: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 02'
      FieldKind = fkCalculated
      FieldName = 'vlrdup02'
      Size = 14
      Calculated = True
    end
    object Qr_Cabvlrdup03: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 03'
      FieldKind = fkCalculated
      FieldName = 'vlrdup03'
      Size = 14
      Calculated = True
    end
    object Qr_Cabvlrdup04: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 04'
      FieldKind = fkCalculated
      FieldName = 'vlrdup04'
      Size = 14
      Calculated = True
    end
    object Qr_Cabvlrdup05: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 05'
      FieldKind = fkCalculated
      FieldName = 'vlrdup05'
      Size = 14
      Calculated = True
    end
    object Qr_Cabvlrdup06: TStringField
      DisplayLabel = 'N'#227'o Use-Valor da Duplicata 06'
      FieldKind = fkCalculated
      FieldName = 'vlrdup06'
      Size = 14
      Calculated = True
    end
    object Qr_Cabdesd01: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 01'
      FieldKind = fkCalculated
      FieldName = 'desd01'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd02: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 02'
      FieldKind = fkCalculated
      FieldName = 'desd02'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd03: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 03'
      FieldKind = fkCalculated
      FieldName = 'desd03'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd04: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 04'
      FieldKind = fkCalculated
      FieldName = 'desd04'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd05: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 05'
      FieldKind = fkCalculated
      FieldName = 'desd05'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd06: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 06'
      FieldKind = fkCalculated
      FieldName = 'desd06'
      Size = 2
      Calculated = True
    end
    object Qr_CabP1TARBAN: TFloatField
      DisplayLabel = 'Tarifa Banc'#225'rias(Outras Despesas Acess'#243'rias)'
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Qr_CabP1VALSEG: TFloatField
      DisplayLabel = 'Valor do Seguro'
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Qr_Cabecf_razao: TStringField
      DisplayLabel = 'ECF-Raz'#227'o Social/Nome do Cliente'
      FieldKind = fkCalculated
      FieldName = 'ecf_razao'
      Size = 100
      Calculated = True
    end
    object Qr_Cabecf_fantasia: TStringField
      DisplayLabel = 'ECF-Fantasia'
      FieldKind = fkCalculated
      FieldName = 'ecf_fantasia'
      Size = 40
      Calculated = True
    end
    object Qr_Cabecf_ender: TStringField
      DisplayLabel = 'ECF-Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'ecf_ender'
      Size = 40
      Calculated = True
    end
    object Qr_Cabecf_bairro: TStringField
      DisplayLabel = 'ECF-Bairro'
      FieldKind = fkCalculated
      FieldName = 'ecf_bairro'
      Size = 30
      Calculated = True
    end
    object Qr_Cabecf_cidade: TStringField
      DisplayLabel = 'ECF-Cidade'
      FieldKind = fkCalculated
      FieldName = 'ecf_cidade'
      Size = 40
      Calculated = True
    end
    object Qr_Cabecf_uf: TStringField
      DisplayLabel = 'ECF-UF'
      FieldKind = fkCalculated
      FieldName = 'ecf_uf'
      Size = 2
      Calculated = True
    end
    object Qr_Cabecf_cep: TStringField
      DisplayLabel = 'ECF-CEP'
      FieldKind = fkCalculated
      FieldName = 'ecf_cep'
      Size = 9
      Calculated = True
    end
    object Qr_Cabecf_cgc: TStringField
      DisplayLabel = 'ECF-CNPJ ou CPF'
      FieldKind = fkCalculated
      FieldName = 'ecf_cgc'
      Calculated = True
    end
    object Qr_Cabecf_ie: TStringField
      DisplayLabel = 'ECF-Insc.Estadual ou RG'
      FieldKind = fkCalculated
      FieldName = 'ecf_ie'
      Size = 40
      Calculated = True
    end
    object Qr_Cabecf_fone: TStringField
      DisplayLabel = 'ECF-Telefone'
      FieldKind = fkCalculated
      FieldName = 'ecf_fone'
      Calculated = True
    end
    object Qr_CabP1CUPACRE: TFloatField
      DisplayLabel = 'Valor do Acr'#233'scimos(Cupom)'
      FieldName = 'P1CUPACRE'
      Origin = 'SG_ASSOC.CADP01.P1CUPACRE'
    end
    object Qr_CabP1CUPDES: TFloatField
      DisplayLabel = 'Valor Descontos(cupom)'
      FieldName = 'P1CUPDES'
      Origin = 'SG_ASSOC.CADP01.P1CUPDES'
    end
    object Qr_CabP1CODASSE: TFloatField
      DisplayLabel = 'C'#243'digo do Assessor'
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Qr_Cabnompv: TStringField
      DisplayLabel = 'Nome do Plano de vendas'
      FieldKind = fkCalculated
      FieldName = 'nompv'
      Size = 40
      Calculated = True
    end
    object Qr_CabCREDICMSNOR: TFloatField
      DisplayLabel = 'Redu'#231#227'o de Icms Normal se houver 0-Sim 1-N'#227'o'
      FieldName = 'CREDICMSNOR'
      Origin = 'SG_ASSOC.CADCLI.CREDICMSNOR'
    end
    object Qr_CabP1TOTDI03: TFloatField
      DisplayLabel = 'Total dos descontos 03 do '#237'tem'
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Qr_CabP1ALIQDEB: TFloatField
      DisplayLabel = 'Al'#237'quota de ICMS de d'#233'bito'
      FieldName = 'P1ALIQDEB'
      Origin = 'SG_ASSOC.CADP01.P1ALIQDEB'
    end
    object Qr_CabP1SUBMOD: TStringField
      DisplayLabel = 'Sub-Modelo do Documento'
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Qr_CabP1TOTCGRU: TFloatField
      DisplayLabel = 'Total Produtos c/Grupos'
      FieldName = 'P1TOTCGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTCGRU'
    end
    object Qr_CabP1TOTSGRU: TFloatField
      DisplayLabel = 'Total Produtos Sem Grupos'
      FieldName = 'P1TOTSGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTSGRU'
    end
    object Qr_CabP1BCISSQN: TFloatField
      DisplayLabel = 'Base de Calculo ISSQN'
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Qr_CabP1VISSQN: TFloatField
      DisplayLabel = 'Valor do ISSQN'
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Qr_CabP1CFOSER: TStringField
      DisplayLabel = 'CFOP de Servi'#231'o'
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Qr_CabCNOMCON: TStringField
      DisplayLabel = 'Nome da Pessoa de Contato'
      FieldName = 'CNOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Qr_CabCFONCON: TStringField
      DisplayLabel = 'Telefone da Pessoa de Contato'
      FieldName = 'CFONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Qr_Cabnomcfoser: TStringField
      DisplayLabel = 'Nome do CFO de Servi'#231'o'
      FieldKind = fkCalculated
      FieldName = 'nomcfoser'
      Size = 40
      Calculated = True
    end
    object Qr_CabP1TOTSERLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido dos Servi'#231'os'
      FieldName = 'P1TOTSERLIQ'
      Origin = 'SGE.CADP01.P1TOTSERLIQ'
    end
    object Qr_Cabprazos: TStringField
      DisplayLabel = 'Prazos Existentes no Pedido'
      FieldKind = fkCalculated
      FieldName = 'prazos'
      Size = 254
      Calculated = True
    end
    object Qr_CabCFAX: TStringField
      DisplayLabel = 'Fax do Cliente'
      FieldName = 'CFAX'
      Origin = 'SGE.CADCLI.CFAX'
      Size = 16
    end
    object Qr_Cabfonetra: TStringField
      DisplayLabel = 'Telefone - Transportador'
      FieldKind = fkCalculated
      FieldName = 'fonetra'
      Calculated = True
    end
    object Qr_CabCOBS05: TStringField
      DisplayLabel = 'Observa'#231#227'o Cliente Linha 05'
      FieldName = 'COBS05'
      Origin = 'SGE.CADCLI.COBS05'
      Size = 60
    end
    object Qr_CabCSITCLI: TFloatField
      DisplayLabel = 'Situa'#231#227'o Cliente 0-Normal 1-Bloq.Temp 2-Bloq.Perm 8-Observa'#231#227'o'
      FieldName = 'CSITCLI'
      Origin = 'SGE.CADCLI.CSITCLI'
    end
    object Qr_CabCFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_CabCFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'CFONE02'
      Origin = 'SG_ASSOC.CADCLI.CFONE02'
      Size = 16
    end
    object Qr_CabCFONE03: TStringField
      DisplayLabel = 'Telefone 03'
      FieldName = 'CFONE03'
      Origin = 'SG_ASSOC.CADCLI.CFONE03'
      Size = 16
    end
    object Qr_CabP1CODECF: TFloatField
      DisplayLabel = 'C'#243'digo do ECF'
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Qr_CabP1DATACF: TDateTimeField
      DisplayLabel = 'Data do Cupom Fiscal'
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Qr_Cabnomassessor: TStringField
      DisplayLabel = 'Nome do Assessor'
      FieldKind = fkCalculated
      FieldName = 'nomassessor'
      Size = 40
      Calculated = True
    end
    object Qr_Cabdesd07: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 07'
      FieldKind = fkCalculated
      FieldName = 'desd07'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd08: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 08'
      FieldKind = fkCalculated
      FieldName = 'desd08'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd09: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 09'
      FieldKind = fkCalculated
      FieldName = 'desd09'
      Size = 2
      Calculated = True
    end
    object Qr_Cabdesd10: TStringField
      DisplayLabel = 'Desdobramento da Duplicata 10'
      FieldKind = fkCalculated
      FieldName = 'desd10'
      Size = 2
      Calculated = True
    end
    object Qr_CabP1NPEDORI: TFloatField
      DisplayLabel = 
        'N'#250'mero do Pedido de Origem(Quando For por dispositivo movel ou p' +
        'ed.eletronico'
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_CabP1PEDORI1: TStringField
      DisplayLabel = 'Pedido Origem 01'
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Qr_CabP1PEDORI2: TStringField
      DisplayLabel = 'Pedido Origem 02'
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Qr_Cabnombco: TStringField
      DisplayLabel = 'Forma de Pagamento(Banco)'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Qr_CabP1INCTB: TFloatField
      DisplayLabel = 
        'Incluir Tarifa bancaria na Nota Fiscal 0-Nao 1-Sim 1-so Duplicat' +
        'a '
      FieldName = 'P1INCTB'
      Origin = 'SG_ASSOC.CADP01.P1INCTB'
    end
    object Qr_CabP1CODV02: TFloatField
      DisplayLabel = 'C'#243'digo do Vendedor 02'
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Qr_Cabnomv02: TStringField
      DisplayLabel = 'Nome do Vendedor 02'
      FieldKind = fkCalculated
      FieldName = 'nomv02'
      Size = 40
      Calculated = True
    end
    object Qr_CabCCONSF: TFloatField
      DisplayLabel = 'Consumidor Final 0-Nao 1-Sim'
      FieldName = 'CCONSF'
      Origin = 'SG_ASSOC.CADCLI.CCONSF'
    end
    object Qr_CabP1COMIS: TFloatField
      DisplayLabel = 'Valor da Comissao do Vendedor 01'
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Qr_CabP1COMV02: TFloatField
      DisplayLabel = 'Valor da Comissao do Vendedor 02'
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Qr_CabCDEC5834: TFloatField
      DisplayLabel = 'Decreto 5834 ou Fomentar 0-Nao 1-Sim'
      FieldName = 'CDEC5834'
      Origin = 'SG_ASSOC.CADCLI.CDEC5834'
    end
    object Qr_CabCDEC5825: TFloatField
      DisplayLabel = 'Decreto 5825 0-Nao 1-Sim'
      FieldName = 'CDEC5825'
      Origin = 'SG_ASSOC.CADCLI.CDEC5825'
    end
    object Qr_Cabsubmod: TFloatField
      DisplayLabel = 'Sub-Modelo em Valor'
      FieldKind = fkCalculated
      FieldName = 'submod'
      Calculated = True
    end
    object Qr_CabCREVENDA_CP: TFloatField
      DisplayLabel = 'c/Inscricao Consumo Proprio 0-Nao 1-Sim'
      FieldName = 'CREVENDA_CP'
      Origin = 'SG_ASSOC.CADCLI.CREVENDA_CP'
    end
    object Qr_CabCICMSR: TFloatField
      DisplayLabel = 'Cobra Icms Retido 0-Nao 1-Sim'
      FieldName = 'CICMSR'
      Origin = 'SG_ASSOC.CADCLI.CICMSR'
    end
    object Qr_Cabbaseicms: TFloatField
      DisplayLabel = 'Base Icms Normal+Base Icms Normal do Retido'
      FieldKind = fkCalculated
      FieldName = 'baseicms'
      Calculated = True
    end
    object Qr_Cabicms: TFloatField
      DisplayLabel = 'Valor do Icms+Icms Normal do Retido'
      FieldKind = fkCalculated
      FieldName = 'icms'
      Calculated = True
    end
    object Qr_Cabvalipi: TFloatField
      DisplayLabel = 'Valor do IPI'
      FieldKind = fkCalculated
      FieldName = 'valipi'
      Calculated = True
    end
    object Qr_Cabnomrota: TStringField
      DisplayLabel = 'Nome da Rota'
      FieldKind = fkCalculated
      FieldName = 'nomrota'
      Size = 30
      Calculated = True
    end
    object Qr_Cabcodrot: TFloatField
      DisplayLabel = 'C'#243'digo da Rota'
      FieldKind = fkCalculated
      FieldName = 'codrot'
      Calculated = True
    end
    object Qr_CabP1EMITENTE: TStringField
      DisplayLabel = 'Emitente P-Proprio T-Terceiros'
      FieldName = 'P1EMITENTE'
      Origin = 'SG_ASSOC.CADP01.P1EMITENTE'
      Size = 1
    end
    object Qr_CabCNUM: TStringField
      DisplayLabel = 'N'#250'mero(endereco)'
      FieldName = 'CNUM'
      Origin = 'SG_ASSOC.CADCLI.CNUM'
      Size = 10
    end
    object Qr_CabCCOMPL: TStringField
      DisplayLabel = 'Complemento do Endere'#231'o'
      FieldName = 'CCOMPL'
      Origin = 'SG_ASSOC.CADCLI.CCOMPL'
      Size = 30
    end
    object Qr_Cabcodloc_ibge: TFloatField
      DisplayLabel = 'C'#243'digo Localidade(IBGE)'
      FieldKind = fkCalculated
      FieldName = 'codloc_ibge'
      Calculated = True
    end
    object Qr_Cabcoduf_ibge: TFloatField
      DisplayLabel = 'C'#243'digo UF(IBGE)'
      FieldKind = fkCalculated
      FieldName = 'coduf_ibge'
      Calculated = True
    end
    object Qr_Cabcodreg_ibge: TFloatField
      DisplayLabel = 'C'#243'digo Regi'#227'o(IBGE)'
      FieldKind = fkCalculated
      FieldName = 'codreg_ibge'
      Calculated = True
    end
    object Qr_Cabcodpais_ibge: TFloatField
      DisplayLabel = 'C'#243'digo Pais (IBGE)'
      FieldKind = fkCalculated
      FieldName = 'codpais_ibge'
      Calculated = True
    end
    object Qr_Cabinscmun: TStringField
      DisplayLabel = 'Inscri'#231#227'o Muniicipal'
      FieldKind = fkCalculated
      FieldName = 'inscmun'
      Size = 30
      Calculated = True
    end
    object Qr_Cabcnae: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnae'
      Size = 30
      Calculated = True
    end
    object Qr_Cabinscsuframa: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscsuframa'
      Size = 50
      Calculated = True
    end
    object Qr_Cabender_completo: TStringField
      DisplayLabel = 'Endere'#231'o Completo do Cliente'
      FieldKind = fkCalculated
      FieldName = 'ender_completo'
      Size = 100
      Calculated = True
    end
    object Qr_CabP1TOTPIS: TFloatField
      DisplayLabel = 'Total PIS'
      FieldName = 'P1TOTPIS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPIS'
    end
    object Qr_CabP1TOTCOFINS: TFloatField
      DisplayLabel = 'Total COFINS'
      FieldName = 'P1TOTCOFINS'
      Origin = 'SG_ASSOC.CADP01.P1TOTCOFINS'
    end
    object Qr_CabP1RED_BCISSQN: TFloatField
      DisplayLabel = 'Red.Base ISSQN'
      FieldName = 'P1RED_BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCISSQN'
    end
    object Qr_CabP1BCINSS: TFloatField
      DisplayLabel = 'Base de Calculo INSS'
      FieldName = 'P1BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1BCINSS'
    end
    object Qr_CabP1RED_BCINSS: TFloatField
      DisplayLabel = 'redut. Base Calc. INSS'
      FieldName = 'P1RED_BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCINSS'
    end
    object Qr_CabP1VINSS: TFloatField
      DisplayLabel = 'Valor do INSS'
      FieldName = 'P1VINSS'
      Origin = 'SG_ASSOC.CADP01.P1VINSS'
    end
    object Qr_CabP1BCIRRF: TFloatField
      DisplayLabel = 'Base de Calculo IRRF'
      FieldName = 'P1BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1BCIRRF'
    end
    object Qr_CabP1RED_BCIRRF: TFloatField
      DisplayLabel = 'Red.Base Calculo IRRF'
      FieldName = 'P1RED_BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCIRRF'
    end
    object Qr_CabP1VIRRF: TFloatField
      DisplayLabel = 'Valor do IRRF'
      FieldName = 'P1VIRRF'
      Origin = 'SG_ASSOC.CADP01.P1VIRRF'
    end
    object Qr_CabP1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Qr_Cabfpgto01: TStringField
      DisplayLabel = 'Nome Fpgto 01'
      FieldKind = fkCalculated
      FieldName = 'fpgto01'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto02: TStringField
      DisplayLabel = 'Nome Fpgto 02'
      FieldKind = fkCalculated
      FieldName = 'fpgto02'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto03: TStringField
      DisplayLabel = 'Nome Fpgto 03'
      FieldKind = fkCalculated
      FieldName = 'fpgto03'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto04: TStringField
      DisplayLabel = 'Nome Fpgto 04'
      FieldKind = fkCalculated
      FieldName = 'fpgto04'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto05: TStringField
      DisplayLabel = 'Nome Fpgto 05'
      FieldKind = fkCalculated
      FieldName = 'fpgto05'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto06: TStringField
      DisplayLabel = 'Nome Fpgto 06'
      FieldKind = fkCalculated
      FieldName = 'fpgto06'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto07: TStringField
      DisplayLabel = 'Nome Fpgto 07'
      FieldKind = fkCalculated
      FieldName = 'fpgto07'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto08: TStringField
      DisplayLabel = 'Nome Fpgto 08'
      FieldKind = fkCalculated
      FieldName = 'fpgto08'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto09: TStringField
      DisplayLabel = 'Nome Fpgto 09'
      FieldKind = fkCalculated
      FieldName = 'fpgto09'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfpgto10: TStringField
      DisplayLabel = 'Nome Fpgto 10'
      FieldKind = fkCalculated
      FieldName = 'fpgto10'
      Size = 40
      Calculated = True
    end
    object Qr_Cabfrete_ciffob: TStringField
      DisplayLabel = 'Tipo do Frete CIF/FOB'
      FieldKind = fkCalculated
      FieldName = 'frete_ciffob'
      Size = 50
      Calculated = True
    end
    object Qr_Cabimpobs: TIntegerField
      DisplayLabel = 'Imprimir Marca 0-Sim 1-Nao'
      FieldKind = fkCalculated
      FieldName = 'impobs'
      Calculated = True
    end
    object Qr_Cabprazoent: TStringField
      DisplayLabel = 'Prazo de Entrega'
      FieldKind = fkCalculated
      FieldName = 'prazoent'
      Size = 50
      Calculated = True
    end
    object Qr_Cabvalpro: TStringField
      DisplayLabel = 'Validade da Proposta'
      FieldKind = fkCalculated
      FieldName = 'valpro'
      Size = 50
      Calculated = True
    end
    object Qr_Cabformpag: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkCalculated
      FieldName = 'formpag'
      Calculated = True
    end
    object Qr_CabP1SEPAMB: TFloatField
      FieldName = 'P1SEPAMB'
      Origin = 'SG_ASSOC.CADP01.P1SEPAMB'
    end
    object Qr_Cabpacredicms: TFloatField
      DisplayLabel = 'Percentual Aproveitamento de Credito icms'
      FieldKind = fkCalculated
      FieldName = 'pacredicms'
      Calculated = True
    end
    object Qr_Cabvlr_aprovcredicms: TFloatField
      DisplayLabel = 'Valor do Aproveitamento de Credito de Icms Todos Produtos'
      FieldKind = fkCalculated
      FieldName = 'vlr_aprovcredicms'
      Calculated = True
    end
    object Qr_Cabvlr_aprovCIcmsTrib: TFloatField
      DisplayLabel = 
        'Valor do Aproveitamento de Credito de Icms Somente dos Produtos ' +
        'Tributados'
      FieldKind = fkCalculated
      FieldName = 'vlr_aprovCIcmsTrib'
      Calculated = True
    end
    object Qr_Cabecf_tipo: TStringField
      DisplayLabel = 'ECF-Tipo Pessoa 0-Fisica 1-Juridica'
      FieldKind = fkCalculated
      FieldName = 'ecf_tipo'
      Size = 1
      Calculated = True
    end
    object Qr_CabP1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
      Origin = 'SG_ASSOC.CADP01.P1QTDDECPU'
    end
    object Qr_CabP1SERIE: TStringField
      DisplayLabel = 'Serie da NFE'
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Qr_Cabsupermicro: TIntegerField
      DisplayLabel = 'SuperMicro 1-Sim 0-Nao'
      FieldKind = fkCalculated
      FieldName = 'supermicro'
      Calculated = True
    end
    object Qr_Cabfoneres: TStringField
      DisplayLabel = 'Fone Residencial'
      FieldKind = fkCalculated
      FieldName = 'foneres'
      Calculated = True
    end
    object Qr_CabP1TPEMIS: TFloatField
      FieldName = 'P1TPEMIS'
      Origin = 'SG_ASSOC.CADP01.P1TPEMIS'
    end
    object Qr_CabP1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Qr_CabP1ICMS_BCFRE: TFloatField
      FieldName = 'P1ICMS_BCFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCFRE'
    end
    object Qr_CabP1ICMS_ALFRE: TFloatField
      FieldName = 'P1ICMS_ALFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALFRE'
    end
    object Qr_CabP1ICMS_VLFRE: TFloatField
      FieldName = 'P1ICMS_VLFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLFRE'
    end
    object Qr_CabP1ORC_LETRA: TStringField
      DisplayLabel = 'Letra'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_LETRA'
      Calculated = True
    end
    object Qr_CabP1ORC_FUNDO: TStringField
      DisplayLabel = 'Fundo'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_FUNDO'
      Calculated = True
    end
    object Qr_CabP1ORC_TAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_TAMANHO'
      Calculated = True
    end
    object Qr_CabP1ORC_TABUTE: TStringField
      DisplayLabel = 'Tabute'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_TABUTE'
      Calculated = True
    end
    object Qr_CabP1ORC_PAPEL: TStringField
      DisplayLabel = 'Papel'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_PAPEL'
      Calculated = True
    end
    object Qr_CabP1ORC_ROLO: TStringField
      DisplayLabel = 'Rolo'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_ROLO'
      Size = 10
      Calculated = True
    end
    object Qr_CabP1ORC_MTROLO: TStringField
      DisplayLabel = 'Metros Rolo'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_MTROLO'
      Size = 10
      Calculated = True
    end
    object Qr_CabP1ORC_CONTATO: TStringField
      DisplayLabel = 'Nome de Contrato'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_CONTATO'
      Calculated = True
    end
    object Qr_Cabp1orc_observ: TStringField
      DisplayLabel = 'Observacao Extras(Orcamento)'
      FieldKind = fkCalculated
      FieldName = 'P1ORC_OBSERV'
      Size = 3000
      Calculated = True
    end
    object Qr_CabP1TIPO_ENTSAI: TFloatField
      DisplayLabel = 'Tipo do Movimento 0-Saida 1-Entrada'
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Qr_CabP1DATVIS: TDateTimeField
      DisplayLabel = 'Data do Visto da Vigilancia'
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Qr_CabP1NUMVIS: TStringField
      DisplayLabel = 'N'#250'mero do Visto da Vigilancia'
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Qr_CabP1DESPACES: TFloatField
      FieldName = 'P1DESPACES'
      Origin = 'SG_ASSOC.CADP01.P1DESPACES'
    end
    object Qr_CabIE_NFE: TStringField
      FieldKind = fkCalculated
      FieldName = 'IE_NFE'
      Size = 30
      Calculated = True
    end
    object Qr_CabMNegoc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MNegoc'
      Calculated = True
    end
    object Qr_CabNOMFPGTO: TStringField
      DisplayLabel = 'Nome Forma de Pagamento (Pedido)'
      FieldKind = fkCalculated
      FieldName = 'NOMFPGTO'
      Size = 60
      Calculated = True
    end
    object Qr_CabP1TOTDESICMS: TFloatField
      DisplayLabel = 'Total Desonera'#231#227'o de ICMS'
      FieldKind = fkCalculated
      FieldName = 'P1TOTDESICMS'
      Calculated = True
    end
    object Qr_Cabperc_redut_icms: TFloatField
      DisplayLabel = 'Redu'#231#227'o de ICMS nos itens e, %'
      FieldKind = fkCalculated
      FieldName = 'perc_redut_icms'
      Calculated = True
    end
    object Qr_CabP1TOTVALAPROXTRIB: TFloatField
      DisplayLabel = 'Valor Aproximado de Impostos'
      FieldName = 'P1TOTVALAPROXTRIB'
      Origin = 'SG_ASSOC.CADP01.P1TOTVALAPROXTRIB'
    end
    object Qr_CabpercAproxTrib: TFloatField
      DisplayLabel = '% Aproximado Tributos'
      FieldKind = fkCalculated
      FieldName = 'percAproxTrib'
      Calculated = True
    end
    object Qr_CabP1OBS1: TMemoField
      DisplayLabel = 'Observacao da Nota Fiscal'
      FieldName = 'P1OBS1'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_CabP1OBS2: TMemoField
      DisplayLabel = 'Observacao do pedido'
      FieldName = 'P1OBS2'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_CabP1OBS3: TMemoField
      DisplayLabel = 'Observacao da Nota de Servico'
      FieldName = 'P1OBS3'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_CabmP2VBCUFDEST: TFloatField
      DisplayLabel = 'Valor da BC do ICMS na UF de destino'
      FieldKind = fkCalculated
      FieldName = 'mP2VBCUFDEST'
      Calculated = True
    end
    object Qr_CabmP2VFCPUDEST: TFloatField
      DisplayLabel = 
        'Valor do ICMS relativo ao Fundo  de Combate '#224' Pobreza (FCP) da U' +
        'F de destino'
      FieldKind = fkCalculated
      FieldName = 'mP2VFCPUDEST'
      Calculated = True
    end
    object Qr_CabmP2VICMSUFDEST: TFloatField
      DisplayLabel = 'Valor do ICMS Interestadual  para a UF de destino'
      FieldKind = fkCalculated
      FieldName = 'mP2VICMSUFDEST'
      Calculated = True
    end
    object Qr_CabmP2VICMSUFREMET: TFloatField
      DisplayLabel = 'Valor do ICMS Interestadual para a UF do remetente'
      FieldKind = fkCalculated
      FieldName = 'mP2VICMSUFREMET'
      Calculated = True
    end
    object Qr_CabP1TRUNCARREND: TFloatField
      FieldName = 'P1TRUNCARREND'
    end
    object Qr_Cabmodelonf: TStringField
      FieldKind = fkCalculated
      FieldName = 'modelonf'
      Size = 2
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_NUMERO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_NUMERO'
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_SERIE: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_SERIE'
      Size = 3
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_SITUACAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_SITUACAO'
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_CHV_ACESSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_CHV_ACESSO'
      Size = 50
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_NPROT: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_NPROT'
      Size = 30
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_MODELO: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_MODELO'
      Size = 2
      Calculated = True
    end
    object Qr_Cabcalc_P1NFCE_DATA: TDateField
      FieldKind = fkCalculated
      FieldName = 'calc_P1NFCE_DATA'
      Calculated = True
    end
    object Qr_CabP1NFCE_DATA: TDateField
      DisplayLabel = 'Data NFCE'
      FieldName = 'P1NFCE_DATA'
    end
    object Qr_CabP1NFCE_NUMERO: TFloatField
      DisplayLabel = 'Numero NFCE'
      FieldName = 'P1NFCE_NUMERO'
    end
    object Qr_CabP1NFCE_SERIE: TStringField
      DisplayLabel = 'Serie NFCE'
      FieldName = 'P1NFCE_SERIE'
      Size = 3
    end
    object Qr_CabP1NFCE_SITUACAO: TFloatField
      DisplayLabel = 'Situacao NFCE'
      FieldName = 'P1NFCE_SITUACAO'
    end
    object Qr_CabP1NFCE_MODELO: TStringField
      DisplayLabel = 'Modelo NFCE'
      FieldName = 'P1NFCE_MODELO'
      Size = 2
    end
    object Qr_CabP1NFCE_CHV_ACESSO: TStringField
      DisplayLabel = 'Chave de Acesso NFCE'
      FieldName = 'P1NFCE_CHV_ACESSO'
      Size = 50
    end
    object Qr_CabP1NFCE_NPROT: TStringField
      DisplayLabel = 'Numero Protocolo NFCE'
      FieldName = 'P1NFCE_NPROT'
      Size = 30
    end
    object Qr_Cabisentoie: TStringField
      FieldKind = fkCalculated
      FieldName = 'isentoie'
      Size = 1
      Calculated = True
    end
    object Qr_Cabnumdoc: TStringField
      FieldKind = fkCalculated
      FieldName = 'numdoc'
      Size = 100
      Calculated = True
    end
    object Qr_Cabtotalcusto: TFloatField
      DisplayLabel = 'Total Custo'
      FieldKind = fkCalculated
      FieldName = 'totalcusto'
      Calculated = True
    end
    object Qr_Cabtotalpcofabrica: TFloatField
      DisplayLabel = 'Total Preco de Fabrica'
      FieldKind = fkCalculated
      FieldName = 'totalpcofabrica'
      Calculated = True
    end
    object Qr_Cabcsosn: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'csosn'
      Calculated = True
    end
    object Qr_Cabcalc_P1DATDOC: TDateField
      FieldKind = fkCalculated
      FieldName = 'calc_P1DATDOC'
      Calculated = True
    end
    object Qr_Cabcalc_P1ORC_METAL_TIPOS_CORTES: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1ORC_METAL_TIPOS_CORTES'
      Size = 254
      Calculated = True
    end
    object Qr_Cabcalc_P1ORC_METAL_QTD_VIAS_PROD: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_P1ORC_METAL_QTD_VIAS_PROD'
      Size = 254
      Calculated = True
    end
    object Qr_Cabcalc_p1datcon: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'calc_p1datcon'
      Calculated = True
    end
    object Qr_Cabcalc_p1codcon: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_p1codcon'
      Calculated = True
    end
    object Qr_Cabcalc_p1datemb: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'calc_p1datemb'
      Calculated = True
    end
    object Qr_Cabcalc_nomemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomemb'
      Size = 100
      Calculated = True
    end
    object Qr_Cabcalc_p1codemb: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_p1codemb'
      Calculated = True
    end
    object Qr_Cabcalc_p1codsep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_p1codsep'
      Calculated = True
    end
    object Qr_Cabcalc_p1datsep: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'calc_p1datsep'
      Calculated = True
    end
    object Qr_Cabcalc_nomsep: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomsep'
      Size = 100
      Calculated = True
    end
    object Qr_Cabcalc_nomcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_nomcon'
      Size = 100
      Calculated = True
    end
    object Qr_Cabobs_cbenef: TStringField
      DisplayLabel = 'aaaObserva'#231#227'o C'#243'digo do Beneficio'
      FieldKind = fkCalculated
      FieldName = 'obs_cbenef'
      Size = 3000
      Calculated = True
    end
    object Qr_CabpGerarTagDifal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'pGerarTagDifal'
      Calculated = True
    end
    object Qr_CabP1CSLL: TFloatField
      DisplayLabel = 'Total do CSLL'
      FieldName = 'P1CSLL'
    end
    object Qr_CabP1IRRF: TFloatField
      DisplayLabel = 'Total do IRRF'
      FieldName = 'P1IRRF'
    end
    object Qr_Cabcalc_p1nome_prod: TStringField
      DisplayLabel = 'Nome do Produto Nota Complementar'
      FieldKind = fkCalculated
      FieldName = 'calc_p1nome_prod'
      Size = 100
      Calculated = True
    end
  end
  object Qr_Cor: TQuery
    BeforeDelete = c
    OnCalcFields = Qr_CorCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM,P2CODPRO,'
      
        '       P2QTD,P2PRECO,P2SIT,P2CSOSN,P2CSOSN_ORI,P2BASEN,P2ICMSN,P' +
        '2DESC1,P2DESC2,'
      '       P2DESC3,P2VALDES,P2TOTDES,P2DESCRAT,'
      '       P2CFO,P2CFOSUBECF,P2LISTA,P2ALIQ,P2ALIQNR,P2PDESCF,'
      '       P2REPAS,P2BCINR,P2ICMSNR,'
      '       P2ST_IVA,P2ST_REDUT,P2ST_ICMCRED,P2ST_ICMDEB,P2REDUTICM,'
      '       P2BASER,P2ICMSR,P2LOTE,P2DTVCTO,P2ALIPI,P2VALIPI,'
      '       P2PROMOCAO,P2COMPLEMENTO,P2PCOTAB,'
      '       P2PCOMIS,P2VCOMIS,P2PCOM02,P2VCOM02,'
      '       PDNOME,PDCODBAR,PDCODTIP,P2PCOFPG,'
      '       PDNOME2,PDMARCA,PDNIVEL,PDCLAS,PDPMC,P2PCOMAX,PDSECAO,'
      '       PDLADO,PDPRAT,PDRUA,'
      '       PDNOME AS GRUPO,P2CODAGRU,P2CONSIG,PDNOMCON,PDREFER,'
      
        '       DECODE(P2NOMPRO_ORI,null,PDNOME,'#39' '#39',PDNOME,P2NOMPRO_ORI) ' +
        'as P2NOMPRO_ORI'
      
        '       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'#39' '#39',to_char(P' +
        'DCODPRO),P2CODPRO_ORI) as P2CODPRO_ORI'
      
        '       ,pdprzval_dias,PDPRZVAL,PDPRZVAL_ANOS,P2PCREDSN,P2VLRICMS' +
        '_SN,P2UND, PDUND'
      '       ,P2VDESPACESRAT,P2VSEGRAT,P2VFRERAT,P2CONTESP'
      '       ,P2ALPIS'
      '       ,P2VALPIS'
      '       ,P2CST_PIS'
      '       ,P2ALCOFINS'
      '       ,P2COFINS'
      '       ,P2CST_COFINS'
      '       ,P2COMPRA_XPED'
      '       ,P2COMPRA_NITEMPED'
      '       ,P2IMP_IMP_ALIQ'
      '       ,P2IMP_IMP_VALOR'
      '       ,P2IMP_IMP_VDESDPADU'
      '       ,P2IMP_IMP_VII'
      '       ,P2IMP_IMP_VIOF'
      '       ,P2IMP_IMP_VBC'
      '       ,P2IPI_VBC'
      '       ,P2PIS_VBC'
      '       ,P2COFINS_VBC'
      ''
      '       ,P2IMP_TPVIATRANSP'
      '       ,P2IMP_VAFRMM'
      '       ,P2IMP_TPINTERMEDIARIO'
      '       ,P2IMP_CNPJ'
      '       ,P2IMP_UFTERCEIRO'
      '       ,P2CEST'
      '       ,P2CPUFDEST'
      '       ,P2ICMSUFDEST'
      '       ,P2ICMSINTER'
      '       ,P2ICMSINTERPART'
      '       ,P2VFCPUDEST'
      '       ,P2VICMSUFDEST'
      '       ,P2VICMSUFREMET'
      '       ,PDNOME_COMPRA'
      '       ,PDCOMPRA_UND'
      
        '       from CADP02, CADPRO where P2CODEMP=0 and P2LOTSEQ=0 AND P' +
        '2CHAVE=0'
      '       and PDCODEMP=P2CODEMP and'
      '       PDCODPRO=P2CODPRO'
      '')
    Left = 70
    Top = 3
    object Qr_CorP2CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Qr_CorP2CHAVE: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_CorP2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_CorP2PRECO: TFloatField
      DisplayLabel = 'Preco Unitario'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_CorP2SIT: TStringField
      DisplayLabel = 'Situacao Tributaria'
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_CorP2BASEN: TFloatField
      DisplayLabel = 'Base de Calculo icms Normal'
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_CorP2CODPRO: TFloatField
      DisplayLabel = 'Codigo do Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_CorP2ICMSN: TFloatField
      DisplayLabel = 'Icms Normal'
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_CorP2BASER: TFloatField
      DisplayLabel = 'Base de Calculo Icms Retido'
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_CorP2ICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_CorPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_CorPDNOME2: TStringField
      DisplayLabel = 'Descricao 2'
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_CorPDMARCA: TStringField
      DisplayLabel = 'Marca/referencia do Produto'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_Corlista: TStringField
      DisplayLabel = 'Lista +-positiva -Negativa '
      FieldKind = fkCalculated
      FieldName = 'lista'
      Size = 1
      Calculated = True
    end
    object Qr_CorP2DESC1: TFloatField
      DisplayLabel = '% de desconto 01'
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_CorP2DESC2: TFloatField
      DisplayLabel = '% de desconto 02'
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_Cortotal: TFloatField
      DisplayLabel = 'Valor Total Quantidade Vezes Preco Unitario'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_CorP2CFO: TFloatField
      DisplayLabel = 'C'#243'digo Fiscal da Operacao'
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_CorP2ALIQ: TFloatField
      DisplayLabel = 'Aliquota de Icms'
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_CorP2ORDEM: TFloatField
      DisplayLabel = 'Ordem do pedido'
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_CorP2LISTA: TFloatField
      DisplayLabel = 'Lista de produtos 0-Inalterado 1-Positivo 2-Negativo'
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Qr_CorPDNIVEL: TFloatField
      DisplayLabel = 'Nivel do produto'
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_CorP2LOTE: TStringField
      DisplayLabel = 'Lote do Produto'
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_CorP2DTVCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento do Produto'
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_CorPDCLAS: TStringField
      DisplayLabel = 'Classifica'#231#227'o fiscal do produto'
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_CorP2VALDES: TFloatField
      DisplayLabel = 'Desconto em Valor do item'
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Qr_CorP2TOTDES: TFloatField
      DisplayLabel = 'Total do desconto do '#237'tem'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_CorP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_CorPDPMC: TFloatField
      DisplayLabel = 'Pre'#231'o Max.Consumidor (Cad.Produto)'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_CorP2PCOMAX: TFloatField
      DisplayLabel = 'Pre'#231'o Max.Consumidor (Pedido Meradorias)'
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Qr_CorP2LOTSEQ: TFloatField
      DisplayLabel = 'Lote de Sequencia'
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Qr_CorPDSECAO: TStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_CorP2ALIPI: TFloatField
      DisplayLabel = 'Al'#237'quota de IPI'
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_CorP2VALIPI: TFloatField
      DisplayLabel = 'Valor do IPI'
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_CorPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_CorP2DESC3: TFloatField
      DisplayLabel = '% de desconto 03'
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Qr_CorP2PROMOCAO: TStringField
      DisplayLabel = 'Promo'#231'ao'
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Qr_Coruf: TStringField
      DisplayLabel = 'UF-do Cliente'
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Qr_CorPDCODTIP: TFloatField
      DisplayLabel = 'C'#243'd.Tipo Prod'
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Qr_CorGRUPO: TStringField
      DisplayLabel = 'Grupo(Ambiente)'
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_CorP2CODAGRU: TFloatField
      DisplayLabel = 'C'#243'digo do Produto(Agrupamento)'
      FieldName = 'P2CODAGRU'
      Origin = 'SG_ASSOC.CADP02.P2CODAGRU'
    end
    object Qr_CorP2PCOMIS: TFloatField
      DisplayLabel = 'Percental de Comiss'#227'o do Vendedor 01'
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Qr_CorP2VCOMIS: TFloatField
      DisplayLabel = 'Valor da Comiss'#227'o do Vendedor 01'
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Qr_CorP2PCOM02: TFloatField
      DisplayLabel = 'Percental de Comiss'#227'o do Vendedor 02'
      FieldName = 'P2PCOM02'
      Origin = 'SG_ASSOC.CADP02.P2PCOM02'
    end
    object Qr_CorP2VCOM02: TFloatField
      DisplayLabel = 'Valor da Comiss'#227'o do Vendedor 02'
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Qr_CorP2REPAS: TFloatField
      DisplayLabel = 'Valor do Repasse de ICMS'
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Qr_CorP2BCINR: TFloatField
      DisplayLabel = 'Base de Calculo Icms Normal do Retido'
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Qr_CorP2ICMSNR: TFloatField
      DisplayLabel = 'Valor do Icms Normal do Retido'
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Qr_CorP2ST_IVA: TFloatField
      DisplayLabel = 'IVA'
      FieldName = 'P2ST_IVA'
      Origin = 'SG_ASSOC.CADP02.P2ST_IVA'
    end
    object Qr_CorP2ST_REDUT: TFloatField
      DisplayLabel = 'Redutor de Icms ST'
      FieldName = 'P2ST_REDUT'
      Origin = 'SG_ASSOC.CADP02.P2ST_REDUT'
    end
    object Qr_CorP2ST_ICMCRED: TFloatField
      DisplayLabel = 'Icms Cr'#233'dito ICMS ST'
      FieldName = 'P2ST_ICMCRED'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMCRED'
    end
    object Qr_CorP2ST_ICMDEB: TFloatField
      DisplayLabel = 'Icms D'#233'bito ICMS ST'
      FieldName = 'P2ST_ICMDEB'
      Origin = 'SG_ASSOC.CADP02.P2ST_ICMDEB'
    end
    object Qr_CorP2REDUTICM: TFloatField
      DisplayLabel = 'Redutor de Icms Normal'
      FieldName = 'P2REDUTICM'
      Origin = 'SG_ASSOC.CADP02.P2REDUTICM'
    end
    object Qr_CorP2DESCRAT: TFloatField
      DisplayLabel = 'Valor Desconto Rateado'
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Qr_CorP2PDESCF: TFloatField
      DisplayLabel = 'Percentual de Desconto Financeiro'
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Qr_CorPDNOMCON: TStringField
      DisplayLabel = 'Controle(B1,C1,C3, etc...)'
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Qr_CorP2CONSIG: TFloatField
      DisplayLabel = 'Consignado 0-Nao 1-Sim'
      FieldName = 'P2CONSIG'
      Origin = 'SG_ASSOC.CADP02.P2CONSIG'
    end
    object Qr_CorP2PCOTAB: TFloatField
      DisplayLabel = 'Pre'#231'o de Tabela do Produto na hora da venda'
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Qr_CorP2PCOFPG: TFloatField
      DisplayLabel = 'Preco da Forma de Pagamento'
      FieldName = 'P2PCOFPG'
      Origin = 'SG_ASSOC.CADP02.P2PCOFPG'
    end
    object Qr_CorP2CFOSUBECF: TFloatField
      DisplayLabel = 'C'#243'digo Fiscal da Operacao no Caso de ECF'
      FieldName = 'P2CFOSUBECF'
      Origin = 'SG_ASSOC.CADP02.P2CFOSUBECF'
    end
    object Qr_Corcfop: TFloatField
      DisplayLabel = 'CFOP-Quando Possuir Cupom Fiscal'
      FieldKind = fkCalculated
      FieldName = 'cfop'
      Calculated = True
    end
    object Qr_Corcodred: TFloatField
      DisplayLabel = 'C'#243'd.Rede Cliente'
      FieldKind = fkCalculated
      FieldName = 'codred'
      Calculated = True
    end
    object Qr_Corcodcli: TFloatField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldKind = fkCalculated
      FieldName = 'codcli'
      Calculated = True
    end
    object Qr_CorvFrete: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vFrete'
      Calculated = True
    end
    object Qr_CorvSeg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vSeg'
      Calculated = True
    end
    object Qr_Cordtfab: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtfab'
      Calculated = True
    end
    object Qr_CorclEnq: TStringField
      FieldKind = fkCalculated
      FieldName = 'clEnq'
      Calculated = True
    end
    object Qr_CorCNPJProd: TStringField
      FieldKind = fkCalculated
      FieldName = 'CNPJProd'
      Calculated = True
    end
    object Qr_CorcSelo: TStringField
      FieldKind = fkCalculated
      FieldName = 'cSelo'
      Calculated = True
    end
    object Qr_CorcEnq: TStringField
      FieldKind = fkCalculated
      FieldName = 'cEnq'
      Calculated = True
    end
    object Qr_CorqSelo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qSelo'
      Calculated = True
    end
    object Qr_Corvpis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vpis'
      Calculated = True
    end
    object Qr_Corvcofins: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vcofins'
      Calculated = True
    end
    object Qr_Cortotal_liquido: TFloatField
      DisplayLabel = 'Total do Item Liquido'
      FieldKind = fkCalculated
      FieldName = 'total_liquido'
      Calculated = True
    end
    object Qr_Corimpmarca: TIntegerField
      DisplayLabel = 'Imprimir Marca 0-Sim 1-Nao'
      FieldKind = fkCalculated
      FieldName = 'impmarca'
      Calculated = True
    end
    object Qr_Cortipo_ped: TIntegerField
      DisplayLabel = 'Tipo do Pedido'
      FieldKind = fkCalculated
      FieldName = 'tipo_ped'
      Calculated = True
    end
    object Qr_Corqtddec: TIntegerField
      DisplayLabel = 'Quantidade de Decimais para o Pre'#231'o Unit'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'qtddec'
      Calculated = True
    end
    object Qr_CorP2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2NOMPRO_ORI'
      Size = 200
    end
    object Qr_CorP2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO_ORI'
      Size = 14
    end
    object Qr_CorPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
    end
    object Qr_CorPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
    end
    object Qr_CorPDPRZVAL_ANOS: TFloatField
      FieldName = 'PDPRZVAL_ANOS'
    end
    object Qr_CorP2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
    end
    object Qr_CorP2UND: TStringField
      FieldName = 'P2UND'
      Size = 6
    end
    object Qr_CorPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_CorP2COMPLEMENTO: TMemoField
      DisplayLabel = 'Complemento da Descricao'
      FieldName = 'P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Qr_CorP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Qr_CorP2CSOSN: TFloatField
      FieldName = 'P2CSOSN'
    end
    object Qr_CorP2CSOSN_ORI: TFloatField
      FieldName = 'P2CSOSN_ORI'
    end
    object Qr_Corlote: TStringField
      DisplayLabel = 'Lote e Quantidade'
      FieldKind = fkCalculated
      FieldName = 'lote'
      Size = 500
      Calculated = True
    end
    object Qr_Corqtd_lote: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'qtd_lote'
      Calculated = True
    end
    object Qr_Corlote2: TStringField
      FieldKind = fkCalculated
      FieldName = 'lote2'
      Size = 1000
      Calculated = True
    end
    object Qr_Cordtvcto_lote: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtvcto_lote'
      Size = 1000
      Calculated = True
    end
    object Qr_CorP2VDESPACESRAT: TFloatField
      FieldName = 'P2VDESPACESRAT'
    end
    object Qr_CorP2VSEGRAT: TFloatField
      FieldName = 'P2VSEGRAT'
    end
    object Qr_CorP2CONTESP: TFloatField
      FieldName = 'P2CONTESP'
    end
    object Qr_CorP2VLRICMS_SN: TFloatField
      FieldName = 'P2VLRICMS_SN'
    end
    object Qr_CorPDREFER: TStringField
      FieldName = 'PDREFER'
    end
    object Qr_CorP2VFRERAT: TFloatField
      FieldName = 'P2VFRERAT'
    end
    object Qr_CorP2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
    end
    object Qr_CorP2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
    end
    object Qr_CorP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 3
    end
    object Qr_CorP2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
    end
    object Qr_CorP2COFINS: TFloatField
      FieldName = 'P2COFINS'
    end
    object Qr_CorP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 3
    end
    object Qr_CorP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
      Size = 15
    end
    object Qr_CorP2COMPRA_NITEMPED: TFloatField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object Qr_CorP2IMP_IMP_ALIQ: TFloatField
      FieldName = 'P2IMP_IMP_ALIQ'
    end
    object Qr_CorP2IMP_IMP_VALOR: TFloatField
      FieldName = 'P2IMP_IMP_VALOR'
    end
    object Qr_CorP2IMP_IMP_VDESDPADU: TFloatField
      FieldName = 'P2IMP_IMP_VDESDPADU'
    end
    object Qr_CorP2IMP_IMP_VII: TFloatField
      FieldName = 'P2IMP_IMP_VII'
    end
    object Qr_CorP2IMP_IMP_VIOF: TFloatField
      FieldName = 'P2IMP_IMP_VIOF'
    end
    object Qr_CorP2IMP_IMP_VBC: TFloatField
      FieldName = 'P2IMP_IMP_VBC'
    end
    object Qr_CorP2IPI_VBC: TFloatField
      FieldName = 'P2IPI_VBC'
    end
    object Qr_CorP2PIS_VBC: TFloatField
      FieldName = 'P2PIS_VBC'
    end
    object Qr_CorP2COFINS_VBC: TFloatField
      FieldName = 'P2COFINS_VBC'
    end
    object Qr_CorP2IMP_TPVIATRANSP: TFloatField
      FieldName = 'P2IMP_TPVIATRANSP'
    end
    object Qr_CorP2IMP_VAFRMM: TFloatField
      FieldName = 'P2IMP_VAFRMM'
    end
    object Qr_CorP2IMP_TPINTERMEDIARIO: TFloatField
      FieldName = 'P2IMP_TPINTERMEDIARIO'
    end
    object Qr_CorP2IMP_CNPJ: TStringField
      FieldName = 'P2IMP_CNPJ'
      Size = 14
    end
    object Qr_CorP2IMP_UFTERCEIRO: TStringField
      FieldName = 'P2IMP_UFTERCEIRO'
      Size = 2
    end
    object Qr_CorP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object Qr_CorP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object Qr_CorP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object Qr_CorP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object Qr_CorP2VFCPUDEST: TFloatField
      FieldName = 'P2VFCPUDEST'
    end
    object Qr_CorP2VICMSUFDEST: TFloatField
      FieldName = 'P2VICMSUFDEST'
    end
    object Qr_CorP2VICMSUFREMET: TFloatField
      FieldName = 'P2VICMSUFREMET'
    end
    object Qr_CorP2VBCUFDEST: TFloatField
      FieldName = 'P2VBCUFDEST'
    end
    object Qr_CorP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 9
    end
    object Qr_Corlote3: TStringField
      FieldKind = fkCalculated
      FieldName = 'lote3'
      Size = 1000
      Calculated = True
    end
    object Qr_CorP2VALAPROXTRIB: TFloatField
      FieldName = 'P2VALAPROXTRIB'
    end
    object Qr_CorPDREGMS: TStringField
      FieldName = 'PDREGMS'
    end
    object Qr_CorPDIPI_CST: TStringField
      FieldName = 'PDIPI_CST'
      Size = 2
    end
    object Qr_CorPDIPI_CENQ: TStringField
      FieldName = 'PDIPI_CENQ'
      Size = 3
    end
    object Qr_Corprecounitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'precounitario'
      Calculated = True
    end
    object Qr_CorPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
    end
    object Qr_Cortotalitemcomipi: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalitemcomipi'
      Calculated = True
    end
    object Qr_CorPDNOME_COMPRA: TStringField
      DisplayLabel = 'Nome na Compra'
      FieldName = 'PDNOME_COMPRA'
      Size = 120
    end
    object Qr_CorPDCOMPRA_UND: TStringField
      DisplayLabel = 'Und Na Compra'
      FieldName = 'PDCOMPRA_UND'
      Size = 30
    end
    object Qr_CorPDLADO: TStringField
      FieldName = 'PDLADO'
      Size = 10
    end
    object Qr_CorPDPRAT: TStringField
      FieldName = 'PDPRAT'
      Size = 10
    end
    object Qr_CorPDRUA: TStringField
      FieldName = 'PDRUA'
      Size = 10
    end
    object Qr_Corendereco: TStringField
      DisplayLabel = 'Endereco/Se'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 100
      Calculated = True
    end
    object Qr_Corcalc_endereco_completo: TStringField
      FieldKind = fkCalculated
      FieldName = 'calc_endereco_completo'
      Size = 100
      Calculated = True
    end
    object Qr_CorP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
      Size = 10
    end
    object Qr_CorP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object Qr_CorP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object Qr_CorP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object Qr_CorP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object Qr_CorP2VICMSDES: TFloatField
      FieldName = 'P2VICMSDES'
    end
    object Qr_CorP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object Qr_CorP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object Qr_CorP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object Qr_CorP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object Qr_CorP2CBS_BC: TFloatField
      FieldName = 'P2CBS_BC'
    end
    object Qr_CorP2CBS_VALOR: TFloatField
      FieldName = 'P2CBS_VALOR'
    end
    object Qr_CorP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object Qr_CorP2IBS_UF_VALOR: TFloatField
      FieldName = 'P2IBS_UF_VALOR'
    end
    object Qr_CorP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object Qr_CorP2IBS_MUN_VALOR: TFloatField
      FieldName = 'P2IBS_MUN_VALOR'
    end
    object Qr_CorP2CBS_DEV_TRIB: TFloatField
      FieldName = 'P2CBS_DEV_TRIB'
    end
    object Qr_CorP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
    end
  end
  object Qr_TDep: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADDEP.DCODDEP,CADDEP.DNOME'
      '       from CADDEP CADDEP'
      '')
    Left = 39
    Top = 361
    object Qr_TDepDCODDEP: TStringField
      DisplayLabel = 'DEPARTAMENTO-C'#243'digo'
      FieldName = 'DCODDEP'
      Origin = 'SG_ASSOC.CADDEP.DCODDEP'
      Size = 6
    end
    object Qr_TDepDNOME: TStringField
      DisplayLabel = 'DEPARTAMENTO-Nome'
      FieldName = 'DNOME'
      Origin = 'SG_ASSOC.CADDEP.DNOME'
    end
    object Qr_TDeprazao: TStringField
      DisplayLabel = 'EMPRESA-Razao Social'
      FieldKind = fkCalculated
      FieldName = 'razao'
      Size = 40
      Calculated = True
    end
    object Qr_TDepfantasia: TStringField
      DisplayLabel = 'EMPRESA-Fantasia'
      FieldKind = fkCalculated
      FieldName = 'fantasia'
      Size = 40
      Calculated = True
    end
    object Qr_TDepcidade: TStringField
      DisplayLabel = 'EMPRESA-Cidade'
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 25
      Calculated = True
    end
    object Qr_TDepuf: TStringField
      DisplayLabel = 'EMPRESA-Unidade da Federacao'
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Qr_TDepcgc: TFloatField
      DisplayLabel = 'EMPRESA-CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cgc'
      Calculated = True
    end
    object Qr_TDepie: TStringField
      DisplayLabel = 'EMPRESA-Inscricao Estadual'
      FieldKind = fkCalculated
      FieldName = 'ie'
      Calculated = True
    end
    object Qr_TDepfone: TStringField
      DisplayLabel = 'EMPRESA-Telefone'
      FieldKind = fkCalculated
      FieldName = 'fone'
      Size = 16
      Calculated = True
    end
    object Qr_TDepfax: TStringField
      DisplayLabel = 'EMPRESA-Fax'
      FieldKind = fkCalculated
      FieldName = 'fax'
      Size = 16
      Calculated = True
    end
    object Qr_TDepe_mail: TStringField
      DisplayLabel = 'EMPRESA-E_Mail'
      FieldKind = fkCalculated
      FieldName = 'e_mail'
      Size = 40
      Calculated = True
    end
    object Qr_TDepcep: TStringField
      DisplayLabel = 'EMPRESA-CEP'
      FieldKind = fkCalculated
      FieldName = 'cep'
      Size = 9
      Calculated = True
    end
  end
  object Tb_OP: TQuery
    CachedUpdates = True
    BeforePost = Tb_OPBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVOP where '
      'TOCODEMP like :CODEMP and'
      'TODOC        like  :DOC        and'
      'TONOME     like  :NOME      and'
      'TOTDET      like  :TDET      and'
      'TOCODIGO  like  :CODIGO and'
      'TOLOCAL     like :LOCAL '
      'order by TOCODIGO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_OP
    Left = 577
    Top = 373
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TDET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCAL'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_OPTOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CTDVOP.TOCODEMP'
    end
    object Tb_OPTODOC: TStringField
      FieldName = 'TODOC'
      Origin = 'SG_ASSOC.CTDVOP.TODOC'
      Size = 10
    end
    object Tb_OPTOTDET: TFloatField
      FieldName = 'TOTDET'
      Origin = 'SG_ASSOC.CTDVOP.TOTDET'
    end
    object Tb_OPTOCODIGO: TFloatField
      FieldName = 'TOCODIGO'
      Origin = 'SG_ASSOC.CTDVOP.TOCODIGO'
    end
    object Tb_OPTOTOP0: TStringField
      FieldName = 'TOTOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP0'
      Size = 1
    end
    object Tb_OPTOOP0: TStringField
      FieldName = 'TOOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOOP0'
      Size = 40
    end
    object Tb_OPTODESOP0: TStringField
      FieldName = 'TODESOP0'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP0'
      Size = 80
    end
    object Tb_OPTOPER0: TStringField
      FieldName = 'TOPER0'
      Origin = 'SG_ASSOC.CTDVOP.TOPER0'
      Size = 1
    end
    object Tb_OPTOTOP1: TStringField
      FieldName = 'TOTOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP1'
      Size = 1
    end
    object Tb_OPTOOP1: TStringField
      FieldName = 'TOOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOOP1'
      Size = 40
    end
    object Tb_OPTODESOP1: TStringField
      FieldName = 'TODESOP1'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP1'
      Size = 80
    end
    object Tb_OPTOPER1: TStringField
      FieldName = 'TOPER1'
      Origin = 'SG_ASSOC.CTDVOP.TOPER1'
      Size = 1
    end
    object Tb_OPTOTOP2: TStringField
      FieldName = 'TOTOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP2'
      Size = 1
    end
    object Tb_OPTOOP2: TStringField
      FieldName = 'TOOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOOP2'
      Size = 40
    end
    object Tb_OPTODESOP2: TStringField
      FieldName = 'TODESOP2'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP2'
      Size = 80
    end
    object Tb_OPTOPER2: TStringField
      FieldName = 'TOPER2'
      Origin = 'SG_ASSOC.CTDVOP.TOPER2'
      Size = 1
    end
    object Tb_OPTOTOP3: TStringField
      FieldName = 'TOTOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP3'
      Size = 1
    end
    object Tb_OPTOOP3: TStringField
      FieldName = 'TOOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOOP3'
      Size = 40
    end
    object Tb_OPTODESOP3: TStringField
      FieldName = 'TODESOP3'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP3'
      Size = 80
    end
    object Tb_OPTOCONDT1: TStringField
      FieldName = 'TOCONDT1'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT1'
      Size = 1
    end
    object Tb_OPTOCOND01: TStringField
      FieldName = 'TOCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND01'
      Size = 30
    end
    object Tb_OPTODCOND01: TStringField
      FieldName = 'TODCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND01'
      Size = 80
    end
    object Tb_OPTOCONDOP: TStringField
      FieldName = 'TOCONDOP'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDOP'
      Size = 5
    end
    object Tb_OPTOCONDT2: TStringField
      FieldName = 'TOCONDT2'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT2'
      Size = 1
    end
    object Tb_OPTOCOND02: TStringField
      FieldName = 'TOCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND02'
      Size = 30
    end
    object Tb_OPTODCOND02: TStringField
      FieldName = 'TODCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND02'
      Size = 80
    end
    object Tb_OPTONOME: TStringField
      FieldName = 'TONOME'
      Origin = 'SG_ASSOC.CTDVOP.TONOME'
      Size = 52
    end
    object Tb_OPTOLOCAL: TFloatField
      FieldName = 'TOLOCAL'
      Origin = 'SG_ASSOC.CTDVOP.TOLOCAL'
    end
  end
  object Src_OP: TDataSource
    DataSet = Tb_OP
    Left = 606
    Top = 373
  end
  object Tb_Arq: TQuery
    CachedUpdates = True
    BeforePost = Tb_ArqBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADARQ2')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Arq
    Left = 116
    Top = 366
    object Tb_ArqCANOMARQ: TStringField
      FieldName = 'CANOMARQ'
      Origin = 'SG_ASSOC.CADARQ2.CANOMARQ'
      Size = 30
    end
    object Tb_ArqCANOMCAM: TStringField
      FieldName = 'CANOMCAM'
      Origin = 'SG_ASSOC.CADARQ2.CANOMCAM'
      Size = 60
    end
    object Tb_ArqCANOMREG: TStringField
      FieldName = 'CANOMREG'
      Origin = 'SG_ASSOC.CADARQ2.CANOMREG'
      Size = 80
    end
    object Tb_ArqCATIPO: TStringField
      FieldName = 'CATIPO'
      Origin = 'SG_ASSOC.CADARQ2.CATIPO'
      Size = 1
    end
    object Tb_ArqCATITULO: TStringField
      FieldName = 'CATITULO'
      Origin = 'SG_ASSOC.CADARQ2.CATITULO'
      Size = 60
    end
    object Tb_ArqCATAMANHO: TFloatField
      FieldName = 'CATAMANHO'
      Origin = 'SG_ASSOC.CADARQ2.CATAMANHO'
    end
    object Tb_ArqCADECIMAL: TFloatField
      FieldName = 'CADECIMAL'
      Origin = 'SG_ASSOC.CADARQ2.CADECIMAL'
    end
  end
  object Src_Arq: TDataSource
    DataSet = Tb_Arq
    Left = 145
    Top = 366
  end
  object Qr_Arq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADARQ where'
      'CANOMREG like :NOMREG and'
      'CATITULO like :TITULO '
      '')
    Left = 8
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'NOMREG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_ArqCANOMARQ: TStringField
      FieldName = 'CANOMARQ'
      Origin = 'SG_ASSOC.CADARQ.CANOMARQ'
      Size = 30
    end
    object Qr_ArqCANOMCAM: TStringField
      FieldName = 'CANOMCAM'
      Origin = 'SG_ASSOC.CADARQ.CANOMCAM'
      Size = 60
    end
    object Qr_ArqCATIPO: TStringField
      FieldName = 'CATIPO'
      Origin = 'SG_ASSOC.CADARQ.CATIPO'
      Size = 1
    end
    object Qr_ArqCATITULO: TStringField
      FieldName = 'CATITULO'
      Origin = 'SG_ASSOC.CADARQ.CATITULO'
      Size = 60
    end
    object Qr_ArqCANOMREG: TStringField
      FieldName = 'CANOMREG'
      Origin = 'SG_ASSOC.CADARQ.CANOMREG'
      Size = 80
    end
    object Qr_ArqCATAMANHO: TFloatField
      FieldName = 'CATAMANHO'
      Origin = 'SG_ASSOC.CADARQ.CATAMANHO'
    end
  end
  object Qr_TSubd: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  TLOCAL  from CADTDV'
      ' where TCODEMP=1'
      ' and TLOCAL>9 and TLOCAL<98'
      ' group by TLOCAL'
      '')
    Left = 145
    Top = 234
    object Qr_TSubdTLOCAL: TFloatField
      FieldName = 'TLOCAL'
    end
  end
  object Qr_TDVCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP like :CODEMP and'
      'TDOC    like :DOC    and'
      'TNOME   like :NOME   and'
      'TLOCAL   like :LOCAL and'
      'TSEQ      like :SEQ')
    Left = 8
    Top = 453
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDVCRTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Qr_TDVCRTDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Qr_TDVCRTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
    end
    object Qr_TDVCRTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Qr_TDVCRTSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Qr_TDVCRTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Qr_TDVCRTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Qr_TDVCRTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Qr_TDVCRTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Qr_TDVCRTCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 140
    end
    object Qr_TDVCRTDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 140
    end
    object Qr_TDVCRTTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Qr_TDVCRTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Qr_TDVCRTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Qr_TDVCRTFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Qr_TDVCRTCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Qr_TDVCRTCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Qr_TDVCRTCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Qr_TDVCRTCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Qr_TDVCRTCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Qr_TDVCRTZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Qr_TDVCRTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Qr_TDVCRTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Qr_TDVCRTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Qr_TDVCRTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Qr_TDVCRTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Qr_TDVCRTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Qr_TDVCRTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Qr_TDVCRTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Qr_TDVCRTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Qr_TDVCRTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Qr_TDVCRTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Qr_TDVCRTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Qr_TDVCRTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Qr_TDVCRTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Qr_TDVCRTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Qr_TDVCRTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Qr_TDVCRTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Qr_TDVCRTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Qr_TDVCRTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Qr_TDVCRTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Qr_TDVCRTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Qr_TDVCRTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Qr_TDVCRTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Qr_TDVCRTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Qr_TDVCRTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Qr_TDVCRTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Qr_TDVCRTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Qr_TDVCRTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
  end
  object Qr_OpDar: TQuery
    CachedUpdates = True
    AfterPost = Tb_OPAfterDelete
    AfterDelete = Tb_OPAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVOP where '
      'TOCODEMP like :CODEMP and'
      'TODOC        like  :DOC        and'
      'TONOME     like  :NOME      and'
      'TOTDET      like  :TDET      and'
      'TOCODIGO  like  :CODIGO'
      'order by TOCODIGO')
    Left = 39
    Top = 50
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TDET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_OpDarTOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CTDVOP.TOCODEMP'
    end
    object Qr_OpDarTODOC: TStringField
      FieldName = 'TODOC'
      Origin = 'SG_ASSOC.CTDVOP.TODOC'
      Size = 10
    end
    object Qr_OpDarTONOME: TStringField
      FieldName = 'TONOME'
      Origin = 'SG_ASSOC.CTDVOP.TONOME'
    end
    object Qr_OpDarTOTOP0: TStringField
      FieldName = 'TOTOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP0'
      Size = 1
    end
    object Qr_OpDarTOOP0: TStringField
      FieldName = 'TOOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOOP0'
      Size = 40
    end
    object Qr_OpDarTODESOP0: TStringField
      FieldName = 'TODESOP0'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP0'
      Size = 80
    end
    object Qr_OpDarTOPER0: TStringField
      FieldName = 'TOPER0'
      Origin = 'SG_ASSOC.CTDVOP.TOPER0'
      Size = 1
    end
    object Qr_OpDarTOTOP1: TStringField
      FieldName = 'TOTOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP1'
      Size = 1
    end
    object Qr_OpDarTOOP1: TStringField
      FieldName = 'TOOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOOP1'
      Size = 40
    end
    object Qr_OpDarTODESOP1: TStringField
      FieldName = 'TODESOP1'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP1'
      Size = 80
    end
    object Qr_OpDarTOPER1: TStringField
      FieldName = 'TOPER1'
      Origin = 'SG_ASSOC.CTDVOP.TOPER1'
      Size = 1
    end
    object Qr_OpDarTOTOP2: TStringField
      FieldName = 'TOTOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP2'
      Size = 1
    end
    object Qr_OpDarTOOP2: TStringField
      FieldName = 'TOOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOOP2'
      Size = 40
    end
    object Qr_OpDarTODESOP2: TStringField
      FieldName = 'TODESOP2'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP2'
      Size = 80
    end
    object Qr_OpDarTOPER2: TStringField
      FieldName = 'TOPER2'
      Origin = 'SG_ASSOC.CTDVOP.TOPER2'
      Size = 1
    end
    object Qr_OpDarTOTOP3: TStringField
      FieldName = 'TOTOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP3'
      Size = 1
    end
    object Qr_OpDarTOOP3: TStringField
      FieldName = 'TOOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOOP3'
      Size = 40
    end
    object Qr_OpDarTODESOP3: TStringField
      FieldName = 'TODESOP3'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP3'
      Size = 80
    end
    object Qr_OpDarTOCONDT1: TStringField
      FieldName = 'TOCONDT1'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT1'
      Size = 1
    end
    object Qr_OpDarTOCOND01: TStringField
      FieldName = 'TOCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND01'
      Size = 30
    end
    object Qr_OpDarTODCOND01: TStringField
      FieldName = 'TODCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND01'
      Size = 80
    end
    object Qr_OpDarTOCONDOP: TStringField
      FieldName = 'TOCONDOP'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDOP'
      Size = 5
    end
    object Qr_OpDarTOCONDT2: TStringField
      FieldName = 'TOCONDT2'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT2'
      Size = 1
    end
    object Qr_OpDarTOCOND02: TStringField
      FieldName = 'TOCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND02'
      Size = 30
    end
    object Qr_OpDarTODCOND02: TStringField
      FieldName = 'TODCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND02'
      Size = 80
    end
    object Qr_OpDarTOTDET: TFloatField
      FieldName = 'TOTDET'
      Origin = 'SG_ASSOC.CTDVOP.TOTDET'
    end
    object Qr_OpDarTOCODIGO: TFloatField
      FieldName = 'TOCODIGO'
      Origin = 'SG_ASSOC.CTDVOP.TOCODIGO'
    end
  end
  object Tb_Emp: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_EmpBeforeInsert
    AfterInsert = Tb_EmpAfterInsert
    BeforePost = Tb_EmpBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    Filter = 'STATUS <> 9'
    Filtered = True
    SQL.Strings = (
      'select * from CADEMP'
      'where CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Emp
    Left = 233
    Top = 410
    object Tb_EmpCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADEMP.CODEMP'
    end
    object Tb_EmpRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.CADEMP.RAZAO'
      Size = 60
    end
    object Tb_EmpFANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'FANTASIA'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA'
      Size = 60
    end
    object Tb_EmpENDERECO: TStringField
      DisplayLabel = 'Endereco'
      FieldName = 'ENDERECO'
      Origin = 'SG_ASSOC.CADEMP.ENDERECO'
      Size = 40
    end
    object Tb_EmpBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'SG_ASSOC.CADEMP.BAIRRO'
    end
    object Tb_EmpCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'SG_ASSOC.CADEMP.CIDADE'
      Size = 25
    end
    object Tb_EmpUF: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADEMP.UF'
      Size = 2
    end
    object Tb_EmpCGC: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CGC'
      Origin = 'SG_ASSOC.CADEMP.CGC'
    end
    object Tb_EmpINSCRICAO: TStringField
      DisplayLabel = 'Inscricao Estadual'
      FieldName = 'INSCRICAO'
      Origin = 'SG_ASSOC.CADEMP.INSCRICAO'
    end
    object Tb_EmpFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FONE'
      Origin = 'SG_ASSOC.CADEMP.FONE'
      Size = 16
    end
    object Tb_EmpFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = 'SG_ASSOC.CADEMP.FAX'
      Size = 16
    end
    object Tb_EmpE_MAIL: TStringField
      DisplayLabel = 'E Mail'
      FieldName = 'E_MAIL'
      Origin = 'SG_ASSOC.CADEMP.E_MAIL'
      Size = 40
    end
    object Tb_EmpPRESID: TStringField
      DisplayLabel = 'Presidente'
      FieldName = 'PRESID'
      Origin = 'SG_ASSOC.CADEMP.PRESID'
      Size = 40
    end
    object Tb_EmpFONEP: TStringField
      DisplayLabel = 'Fone Presidente'
      FieldName = 'FONEP'
      Origin = 'SG_ASSOC.CADEMP.FONEP'
      Size = 16
    end
    object Tb_EmpDIRETOR: TStringField
      DisplayLabel = 'Diretor'
      FieldName = 'DIRETOR'
      Origin = 'SG_ASSOC.CADEMP.DIRETOR'
      Size = 40
    end
    object Tb_EmpFONED: TStringField
      DisplayLabel = 'Fone Diretor'
      FieldName = 'FONED'
      Origin = 'SG_ASSOC.CADEMP.FONED'
      Size = 16
    end
    object Tb_EmpCEP: TStringField
      FieldName = 'CEP'
      Origin = 'SG_ASSOC.CADEMP.CEP'
      Size = 9
    end
    object Tb_EmpCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Origin = 'SG_ASSOC.CADEMP.CAMINHO'
      Size = 60
    end
    object Tb_EmpRESPONS: TStringField
      DisplayLabel = 'Nome do Responsavel'
      FieldName = 'RESPONS'
      Origin = 'SG_ASSOC.CADEMP.RESPONS'
      Size = 40
    end
    object Tb_EmpTELEVENDAS: TStringField
      FieldName = 'TELEVENDAS'
      Origin = 'SG_ASSOC.CADEMP.TELEVENDAS'
    end
    object Tb_EmpNUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'SG_ASSOC.CADEMP.NUMERO'
    end
    object Tb_EmpDATACAD: TDateTimeField
      FieldName = 'DATACAD'
      Origin = 'SG_ASSOC.CADEMP.DATACAD'
    end
    object Tb_EmpDATAALT: TDateTimeField
      FieldName = 'DATAALT'
      Origin = 'SG_ASSOC.CADEMP.DATAALT'
    end
    object Tb_EmpPA001: TStringField
      FieldName = 'PA001'
      Origin = 'SG_ASSOC.CADEMP.PA001'
      Size = 17
    end
    object Tb_EmpPA002: TStringField
      FieldName = 'PA002'
      Origin = 'SG_ASSOC.CADEMP.PA002'
      Size = 17
    end
    object Tb_EmpPA003: TStringField
      FieldName = 'PA003'
      Origin = 'SG_ASSOC.CADEMP.PA003'
      Size = 17
    end
    object Tb_EmpFONERES: TStringField
      FieldName = 'FONERES'
      Origin = 'SG_ASSOC.CADEMP.FONERES'
    end
    object Tb_EmpFUNCAORES: TStringField
      FieldName = 'FUNCAORES'
      Origin = 'SG_ASSOC.CADEMP.FUNCAORES'
    end
    object Tb_EmpINSCMUNIC: TStringField
      FieldName = 'INSCMUNIC'
      Origin = 'SG_ASSOC.CADEMP.INSCMUNIC'
    end
    object Tb_EmpCERTREG: TStringField
      FieldName = 'CERTREG'
      Origin = 'SG_ASSOC.CADEMP.CERTREG'
    end
    object Tb_EmpAUTFUNC: TStringField
      FieldName = 'AUTFUNC'
      Origin = 'SG_ASSOC.CADEMP.AUTFUNC'
    end
    object Tb_EmpAUTESP: TStringField
      FieldName = 'AUTESP'
      Origin = 'SG_ASSOC.CADEMP.AUTESP'
    end
    object Tb_EmpALVFUNC: TStringField
      FieldName = 'ALVFUNC'
      Origin = 'SG_ASSOC.CADEMP.ALVFUNC'
    end
    object Tb_EmpJUCEG: TStringField
      FieldName = 'JUCEG'
      Origin = 'SG_ASSOC.CADEMP.JUCEG'
    end
    object Tb_EmpCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Origin = 'SG_ASSOC.CADEMP.CONTADOR'
      Size = 40
    end
    object Tb_EmpCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'SG_ASSOC.CADEMP.CRC_CONTADOR'
    end
    object Tb_EmpRAZAO_CAB: TStringField
      FieldName = 'RAZAO_CAB'
      Origin = 'SG_ASSOC.CADEMP.RAZAO_CAB'
      Size = 60
    end
    object Tb_EmpFANTASIA_CAB: TStringField
      FieldName = 'FANTASIA_CAB'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA_CAB'
      Size = 60
    end
    object Tb_EmpFECMEN: TFloatField
      FieldName = 'FECMEN'
      Origin = 'SG_ASSOC.CADEMP.FECMEN'
    end
    object Tb_EmpBLOQ: TFloatField
      FieldName = 'BLOQ'
      Origin = 'SG_ASSOC.CADEMP.BLOQ'
    end
    object Tb_EmpSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADEMP.STATUS'
    end
    object Tb_EmpCNPF: TFloatField
      FieldName = 'CNPF'
      Origin = 'SG_ASSOC.CADEMP.CNPF'
    end
    object Tb_EmpRG: TStringField
      FieldName = 'RG'
      Origin = 'SG_ASSOC.CADEMP.RG'
      Size = 40
    end
    object Tb_EmpHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'SG_ASSOC.CADEMP.HOMEPAGE'
      Size = 60
    end
    object Tb_EmpCODLOC: TFloatField
      FieldName = 'CODLOC'
      Origin = 'SG_ASSOC.CADEMP.CODLOC'
    end
    object Tb_EmpCODSERV_PREST: TStringField
      FieldName = 'CODSERV_PREST'
      Origin = 'SG_ASSOC.CADEMP.CODSERV_PREST'
      Size = 10
    end
    object Tb_EmpEMP_CNAE: TStringField
      FieldName = 'EMP_CNAE'
      Origin = 'SG_ASSOC.CADEMP.EMP_CNAE'
      Size = 15
    end
    object Tb_EmpEMP_OPTSIMPLES: TFloatField
      FieldName = 'EMP_OPTSIMPLES'
      Origin = 'SG_ASSOC.CADEMP.EMP_OPTSIMPLES'
    end
    object Tb_EmpEMP_INC_CULTURAL: TFloatField
      FieldName = 'EMP_INC_CULTURAL'
      Origin = 'SG_ASSOC.CADEMP.EMP_INC_CULTURAL'
    end
    object Tb_EmpEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      Origin = 'SG_ASSOC.CADEMP.EMP_SUFRAMA'
    end
    object Tb_EmpEMP_INSC_PISPASEP: TStringField
      FieldName = 'EMP_INSC_PISPASEP'
      Origin = 'SG_ASSOC.CADEMP.EMP_INSC_PISPASEP'
    end
    object Tb_EmpEMP_CONT_CPF: TFloatField
      FieldName = 'EMP_CONT_CPF'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CPF'
    end
    object Tb_EmpEMP_CONT_CNPJ: TFloatField
      FieldName = 'EMP_CONT_CNPJ'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CNPJ'
    end
    object Tb_EmpEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CEP'
      Size = 9
    end
    object Tb_EmpEMP_CONT_ENDER: TStringField
      FieldName = 'EMP_CONT_ENDER'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_ENDER'
      Size = 50
    end
    object Tb_EmpEMP_CONT_NUM_END: TStringField
      FieldName = 'EMP_CONT_NUM_END'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_NUM_END'
    end
    object Tb_EmpEMP_CONT_COMP_END: TStringField
      FieldName = 'EMP_CONT_COMP_END'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_COMP_END'
      Size = 40
    end
    object Tb_EmpEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_BAIRRO'
      Size = 40
    end
    object Tb_EmpEMP_CONT_CODLOC: TFloatField
      FieldName = 'EMP_CONT_CODLOC'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_CODLOC'
    end
    object Tb_EmpEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_FONE'
    end
    object Tb_EmpEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_FAX'
    end
    object Tb_EmpEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_EMAIL'
      Size = 100
    end
    object Tb_EmpEMP_CONT_NOMLOC: TStringField
      FieldName = 'EMP_CONT_NOMLOC'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_NOMLOC'
      Size = 25
    end
    object Tb_EmpEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      Origin = 'SG_ASSOC.CADEMP.EMP_CONT_UF'
      Size = 2
    end
    object Tb_EmpEMP_IND_ATIV: TStringField
      FieldName = 'EMP_IND_ATIV'
      Origin = 'SG_ASSOC.CADEMP.EMP_IND_ATIV'
      Size = 1
    end
    object Tb_EmpEMP_IND_NAT_PJ: TStringField
      FieldName = 'EMP_IND_NAT_PJ'
      Origin = 'SG_ASSOC.CADEMP.EMP_IND_NAT_PJ'
      Size = 2
    end
    object Tb_EmpEMP_CPF_RESPONS: TFloatField
      FieldName = 'EMP_CPF_RESPONS'
      Origin = 'SG_ASSOC.CADEMP.EMP_CPF_RESPONS'
    end
    object Tb_EmpEMP_AUTXML_CNPJCPF: TStringField
      FieldName = 'EMP_AUTXML_CNPJCPF'
      Size = 25
    end
    object Tb_EmpEMP_WHATSAPP_AUTO: TStringField
      FieldName = 'EMP_WHATSAPP_AUTO'
      Origin = 'SG_ASSOC.CADEMP.EMP_WHATSAPP_AUTO'
      Size = 16
    end
    object Tb_EmpEMP_WHATSAPP_ID: TStringField
      FieldName = 'EMP_WHATSAPP_ID'
      Origin = 'SG_ASSOC.CADEMP.EMP_WHATSAPP_ID'
      Size = 30
    end
  end
  object Src_Emp: TDataSource
    DataSet = Tb_Emp
    Left = 262
    Top = 410
  end
  object Qr_TDVCRCP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP like :CODEMP and'
      'TDOC    like :DOC    and'
      'TNOME   like :NOME   and'
      'TLOCAL   like :LOCAL and'
      'TSEQ      like :SEQ')
    Left = 39
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDVCRCPTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Qr_TDVCRCPTDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Qr_TDVCRCPTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
    end
    object Qr_TDVCRCPTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Qr_TDVCRCPTSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Qr_TDVCRCPTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Qr_TDVCRCPTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Qr_TDVCRCPTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Qr_TDVCRCPTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Qr_TDVCRCPTCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 140
    end
    object Qr_TDVCRCPTDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 140
    end
    object Qr_TDVCRCPTTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Qr_TDVCRCPTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Qr_TDVCRCPTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Qr_TDVCRCPTFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Qr_TDVCRCPTCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Qr_TDVCRCPTCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Qr_TDVCRCPTCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Qr_TDVCRCPTCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Qr_TDVCRCPTCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Qr_TDVCRCPTZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Qr_TDVCRCPTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Qr_TDVCRCPTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Qr_TDVCRCPTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Qr_TDVCRCPTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Qr_TDVCRCPTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Qr_TDVCRCPTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Qr_TDVCRCPTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Qr_TDVCRCPTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Qr_TDVCRCPTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Qr_TDVCRCPTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Qr_TDVCRCPTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Qr_TDVCRCPTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Qr_TDVCRCPTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Qr_TDVCRCPTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Qr_TDVCRCPTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Qr_TDVCRCPTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Qr_TDVCRCPTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Qr_TDVCRCPTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Qr_TDVCRCPTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Qr_TDVCRCPTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Qr_TDVCRCPTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Qr_TDVCRCPTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Qr_TDVCRCPTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Qr_TDVCRCPTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Qr_TDVCRCPTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
  end
  object Qr_Ser: TQuery
    OnCalcFields = Qr_SerCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2SCODEMP,P2SLOTSEQ,P2SCHAVE,P2SORDEM,P2SCODPRO,'
      '       '#39'S'#39' as Tipo,'
      
        '       P2SQTD,P2SPRECO,P2SSIT,P2SBCISSQN,P2SVISSQN,P2SDESC1,P2SD' +
        'ESC2,'
      '       P2STOTDES,P2SCFO,P2SLISTA,P2SALIQ,P2SISENTAS,'
      '       PDNOME,PDUND,PDCODBAR,'
      '       PDNOME2,PDMARCA,PDNIVEL,PDCLAS,PDPMC,P2SITEM'
      '       ,P2SQTD_ATEN'
      '       ,P2SBCINSS'
      '       ,P2SREDINSS'
      '       ,P2SVINSS'
      '       ,P2SALIQINSS'
      '       ,P2SREDIRRF'
      '       ,P2SBCIRRF'
      '       ,P2SVIRRF'
      '       ,P2SALIQIRRF'
      ''
      '       from CADP02S, CADPRO where P2SCODEMP=1'
      '       and PDCODEMP=P2SCODEMP and'
      '       PDCODPRO=P2SCODPRO and'
      '       P2SCHAVE is null'
      '')
    Left = 47
    Top = 181
    object Qr_SerP2SCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'P2SCODEMP'
      Origin = 'SG_ASSOC.CADP02S.P2SCODEMP'
    end
    object Qr_SerP2SCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2SCHAVE'
      Origin = 'SG_ASSOC.CADP02S.P2SCHAVE'
    end
    object Qr_SerP2SCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Qr_SerP2SQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Qr_SerP2SPRECO: TFloatField
      DisplayLabel = 'Preco Unit'#225'rio'
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Qr_SerP2SSIT: TStringField
      DisplayLabel = 'Situacao Tributaria'
      FieldName = 'P2SSIT'
      Origin = 'SG_ASSOC.CADP02S.P2SSIT'
      Size = 3
    end
    object Qr_SerP2SBCISSQN: TFloatField
      DisplayLabel = 'Base do ISSQN'
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Qr_SerP2SVISSQN: TFloatField
      DisplayLabel = 'Valor do ISSQN'
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Qr_SerP2SDESC1: TFloatField
      DisplayLabel = '% de desconto do item 1'
      FieldName = 'P2SDESC1'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC1'
    end
    object Qr_SerP2SDESC2: TFloatField
      DisplayLabel = '% de desconto do item 1'
      FieldName = 'P2SDESC2'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC2'
    end
    object Qr_SerP2STOTDES: TFloatField
      DisplayLabel = 'Total dos descontos dos itens'
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Qr_SerP2SCFO: TFloatField
      DisplayLabel = 'CFO - C'#243'digo Fiscal de Operacao'
      FieldName = 'P2SCFO'
      Origin = 'SG_ASSOC.CADP02S.P2SCFO'
    end
    object Qr_SerP2SALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'P2SALIQ'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQ'
    end
    object Qr_SerP2SISENTAS: TFloatField
      DisplayLabel = 'Valor das Mercadorias Isentas'
      FieldName = 'P2SISENTAS'
      Origin = 'SG_ASSOC.CADP02S.P2SISENTAS'
    end
    object Qr_SerPDNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_SerPDUND: TStringField
      DisplayLabel = 'Unidade do Produto'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_SerPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo de Barrasdo Produto'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_SerPDNOME2: TStringField
      DisplayLabel = 'Descricao 2do produto'
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_SerPDMARCA: TStringField
      DisplayLabel = 'Marca/Referencia do Produto'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_Sertotal: TFloatField
      DisplayLabel = 'Total Quantidade vezes o pre'#231'o unitario'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_Serlista: TStringField
      DisplayLabel = 'Lista I-Inalterada(Neutra) P-Positiva N-Negativa '
      FieldKind = fkCalculated
      FieldName = 'lista'
      Size = 1
      Calculated = True
    end
    object Qr_SerP2SORDEM: TFloatField
      FieldName = 'P2SORDEM'
      Origin = 'SG_ASSOC.CADP02S.P2SORDEM'
    end
    object Qr_SerP2SLISTA: TFloatField
      FieldName = 'P2SLISTA'
      Origin = 'SG_ASSOC.CADP02S.P2SLISTA'
    end
    object Qr_SerPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_SerPDPMC: TFloatField
      DisplayLabel = 'Pre'#231'o Maximo Consumidor (Cad.Produto)'
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_SerP2SLOTSEQ: TFloatField
      DisplayLabel = 'Lote de Sequencia'
      FieldName = 'P2SLOTSEQ'
      Origin = 'SG_ASSOC.CADP02S.P2SLOTSEQ'
    end
    object Qr_SerP2SITEM: TFloatField
      FieldName = 'P2SITEM'
      Origin = 'SG_ASSOC.CADP02S.P2SITEM'
    end
    object Qr_SerP2SQTD_ATEN: TFloatField
      DisplayLabel = 'Nao Use (QTD_ATEN)'
      FieldName = 'P2SQTD_ATEN'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD_ATEN'
    end
    object Qr_SerP2SBCINSS: TFloatField
      DisplayLabel = 'Base de Calculo de Inss'
      FieldName = 'P2SBCINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SBCINSS'
    end
    object Qr_SerP2SREDINSS: TFloatField
      DisplayLabel = 'Redutor da Base de Inss'
      FieldName = 'P2SREDINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SREDINSS'
    end
    object Qr_SerP2SVINSS: TFloatField
      DisplayLabel = 'Valor do Inss'
      FieldName = 'P2SVINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SVINSS'
    end
    object Qr_SerP2SALIQINSS: TFloatField
      DisplayLabel = 'Aliquota do inss'
      FieldName = 'P2SALIQINSS'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQINSS'
    end
    object Qr_SerP2SREDIRRF: TFloatField
      DisplayLabel = 'Redutor da Base de Irrf'
      FieldName = 'P2SREDIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SREDIRRF'
    end
    object Qr_SerP2SBCIRRF: TFloatField
      DisplayLabel = 'Base de Calculo do Irrf'
      FieldName = 'P2SBCIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SBCIRRF'
    end
    object Qr_SerP2SVIRRF: TFloatField
      DisplayLabel = 'Valor do Irrf'
      FieldName = 'P2SVIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SVIRRF'
    end
    object Qr_SerP2SALIQIRRF: TFloatField
      DisplayLabel = 'Aliquota do irrf'
      FieldName = 'P2SALIQIRRF'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQIRRF'
    end
    object Qr_Serqtddec: TIntegerField
      DisplayLabel = 'Quantidade de Decimais para o Pre'#231'o Unit'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'qtddec'
      Calculated = True
    end
    object Qr_SerTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qr_SerPDCLAS: TStringField
      FieldName = 'PDCLAS'
    end
    object Qr_SerP2SDESC_COMP: TMemoField
      FieldName = 'P2SDESC_COMP'
      BlobType = ftMemo
    end
  end
  object Qr_Pro: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  '#39'P'#39' OK'
      '       ,PDCODEMP'
      '       ,PDCODPRO'
      '       ,PDCODBAR'
      '       ,PDNOME'
      '       ,PDNOME2'
      '       ,PDMARCA'
      '       ,PDNIVEL'
      '       ,PDCODFOR'
      '       ,PDPRECO1'
      '       ,PDPRECO2'
      '       ,PDPRECO3'
      '       ,PDPRECOA1'
      '       ,PDPRECOA2'
      '       ,PDPRECOA3'
      '       ,PDSIT'
      '       ,PDDTUATP1'
      '       ,PDUSRALT1'
      '       ,PDDTUATP2'
      '       ,PDUSRALT2'
      '       ,PDDTUATP3'
      '       ,PDUSRALT3'
      '       ,PDDATAUA'
      '       ,PDUND'
      '       ,PDCODGRU'
      '       ,PDCODCON'
      '       ,PDCODRAM'
      '       ,PDCODTIP'
      '       ,PDESTMAX'
      '       ,PDESTMIN'
      '       ,PDFRACAO'
      '       ,PDLISTA'
      '       ,PDPRECOC'
      '       ,PDPCOMC'
      '       ,PDPCOFAB'
      '       ,PDSTATUS'
      '       ,PDTABICM'
      '       ,PDIPI'
      '       ,PDREGMS'
      '       ,PDCLAS'
      '       ,PDSECAO'
      '       ,PDEMBPAD'
      '       ,PDEMBMUL'
      '       ,PDCOMIS'
      '       ,PDSEMCOM'
      '       ,PDPRZVAL'
      '       ,PDUCPR'
      '       ,PDCODUSR'
      '       ,PDDTALT'
      '       ,PDHRALT'
      '       ,PDSALDO'
      '       ,PDCURVA'
      '       ,PDDESC1'
      '       ,PDDESC1A'
      '       ,PDDESC2'
      '       ,PDDESC3'
      '       ,PDQTDP'
      '       ,PDPRAZO'
      '       ,PDDESFIN'
      '       ,PDPMC'
      '       ,PDEMBPAD2'
      '       ,PDCODPROC'
      '       ,PDPROALT'
      '       ,PDDTULTSAI'
      '       ,PDDTULTENT'
      '       ,PDVDAMAXM'
      '       ,PDREST'
      '       ,PDPESOB'
      '       ,PDPESOL'
      '       ,PDBAIXO'
      '       ,PDALTO'
      '       ,PDDATCAD'
      '       ,PDNOMFOR'
      '       ,PDNOMPROC'
      '       ,PDNOMGRU'
      '       ,PDNOMCON'
      '       ,PDNOMRAM'
      '       ,PDNOMTIP'
      '       ,PDNOMPROALT'
      '       ,PDSTATUS02'
      '       ,PDSALDOR'
      '       ,PDBAIXOR'
      '       ,PDALTOR'
      '       ,PDSALDOC'
      '       ,PDBAIXOC'
      '       ,PDALTOC'
      '       ,PDCODNCM'
      '       ,PDCUSFAB'
      '       ,PDCUSENV'
      '       ,PDCUSFIN'
      '       ,PDUCODFOR'
      '       ,PDUNOMFOR'
      '       ,PDCODFAB'
      '       ,PDSALDOT'
      '       ,PDALTOT'
      '       ,PDBAIXOT'
      '       ,PDPMC02'
      '       ,PDPMC03'
      '       ,PDCX_PVDA'
      '       ,PDCX_PFAB'
      '       ,PDCX_PMAX'
      '       ,PDICMSCRED'
      '       ,PDICMSDEB'
      '       ,PDVLRINC'
      ''
      '    from CADPRO where PDCODPRO is null')
    UpdateObject = U_Pro
    Left = 39
    Top = 136
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_ProPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda 01'
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Qr_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Qr_ProPDPRECOA1: TFloatField
      FieldName = 'PDPRECOA1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA1'
    end
    object Qr_ProPDPRECOA2: TFloatField
      FieldName = 'PDPRECOA2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA2'
    end
    object Qr_ProPDPRECOA3: TFloatField
      FieldName = 'PDPRECOA3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOA3'
    end
    object Qr_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Origin = 'SG_ASSOC.CADPRO.PDSIT'
      Size = 3
    end
    object Qr_ProPDDTUATP1: TDateTimeField
      FieldName = 'PDDTUATP1'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP1'
    end
    object Qr_ProPDUSRALT1: TFloatField
      FieldName = 'PDUSRALT1'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT1'
    end
    object Qr_ProPDDTUATP2: TDateTimeField
      FieldName = 'PDDTUATP2'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP2'
    end
    object Qr_ProPDUSRALT2: TFloatField
      FieldName = 'PDUSRALT2'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT2'
    end
    object Qr_ProPDDTUATP3: TDateTimeField
      FieldName = 'PDDTUATP3'
      Origin = 'SG_ASSOC.CADPRO.PDDTUATP3'
    end
    object Qr_ProPDUSRALT3: TFloatField
      FieldName = 'PDUSRALT3'
      Origin = 'SG_ASSOC.CADPRO.PDUSRALT3'
    end
    object Qr_ProPDDATAUA: TDateTimeField
      FieldName = 'PDDATAUA'
      Origin = 'SG_ASSOC.CADPRO.PDDATAUA'
    end
    object Qr_ProPDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ProPDCODGRU: TFloatField
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Qr_ProPDCODCON: TFloatField
      FieldName = 'PDCODCON'
      Origin = 'SG_ASSOC.CADPRO.PDCODCON'
    end
    object Qr_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Qr_ProPDESTMAX: TFloatField
      FieldName = 'PDESTMAX'
      Origin = 'SG_ASSOC.CADPRO.PDESTMAX'
    end
    object Qr_ProPDESTMIN: TFloatField
      FieldName = 'PDESTMIN'
      Origin = 'SG_ASSOC.CADPRO.PDESTMIN'
    end
    object Qr_ProPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
      Origin = 'SG_ASSOC.CADPRO.PDFRACAO'
    end
    object Qr_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_ProPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object Qr_ProPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
      Origin = 'SG_ASSOC.CADPRO.PDPCOMC'
    end
    object Qr_ProPDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object Qr_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Qr_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Qr_ProPDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Qr_ProPDCLAS: TStringField
      FieldName = 'PDCLAS'
      Origin = 'SG_ASSOC.CADPRO.PDCLAS'
    end
    object Qr_ProPDSECAO: TStringField
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Qr_ProPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Qr_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
    object Qr_ProPDCOMIS: TFloatField
      FieldName = 'PDCOMIS'
      Origin = 'SG_ASSOC.CADPRO.PDCOMIS'
    end
    object Qr_ProPDSEMCOM: TFloatField
      FieldName = 'PDSEMCOM'
      Origin = 'SG_ASSOC.CADPRO.PDSEMCOM'
    end
    object Qr_ProPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Qr_ProPDUCPR: TFloatField
      FieldName = 'PDUCPR'
      Origin = 'SG_ASSOC.CADPRO.PDUCPR'
    end
    object Qr_ProPDCODUSR: TFloatField
      FieldName = 'PDCODUSR'
      Origin = 'SG_ASSOC.CADPRO.PDCODUSR'
    end
    object Qr_ProPDDTALT: TDateTimeField
      FieldName = 'PDDTALT'
      Origin = 'SG_ASSOC.CADPRO.PDDTALT'
    end
    object Qr_ProPDHRALT: TStringField
      FieldName = 'PDHRALT'
      Origin = 'SG_ASSOC.CADPRO.PDHRALT'
      Size = 10
    end
    object Qr_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Qr_ProPDCURVA: TStringField
      FieldName = 'PDCURVA'
      Origin = 'SG_ASSOC.CADPRO.PDCURVA'
      Size = 1
    end
    object Qr_ProPDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Qr_ProPDDESC1A: TFloatField
      FieldName = 'PDDESC1A'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1A'
    end
    object Qr_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Qr_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Qr_ProPDQTDP: TFloatField
      FieldName = 'PDQTDP'
      Origin = 'SG_ASSOC.CADPRO.PDQTDP'
    end
    object Qr_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Qr_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Qr_ProPDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_ProPDEMBPAD2: TStringField
      FieldName = 'PDEMBPAD2'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD2'
      Size = 10
    end
    object Qr_ProPDCODPROC: TFloatField
      FieldName = 'PDCODPROC'
      Origin = 'SG_ASSOC.CADPRO.PDCODPROC'
    end
    object Qr_ProPDPROALT: TFloatField
      FieldName = 'PDPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDPROALT'
    end
    object Qr_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Qr_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Qr_ProPDVDAMAXM: TFloatField
      FieldName = 'PDVDAMAXM'
      Origin = 'SG_ASSOC.CADPRO.PDVDAMAXM'
    end
    object Qr_ProPDREST: TFloatField
      FieldName = 'PDREST'
      Origin = 'SG_ASSOC.CADPRO.PDREST'
    end
    object Qr_ProPDPESOB: TFloatField
      FieldName = 'PDPESOB'
      Origin = 'SG_ASSOC.CADPRO.PDPESOB'
    end
    object Qr_ProPDPESOL: TFloatField
      FieldName = 'PDPESOL'
      Origin = 'SG_ASSOC.CADPRO.PDPESOL'
    end
    object Qr_ProPDBAIXO: TFloatField
      FieldName = 'PDBAIXO'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXO'
    end
    object Qr_ProPDALTO: TFloatField
      FieldName = 'PDALTO'
      Origin = 'SG_ASSOC.CADPRO.PDALTO'
    end
    object Qr_ProPDDATCAD: TDateTimeField
      FieldName = 'PDDATCAD'
      Origin = 'SG_ASSOC.CADPRO.PDDATCAD'
    end
    object Qr_ProPDNOMFOR: TStringField
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Qr_ProPDNOMPROC: TStringField
      FieldName = 'PDNOMPROC'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROC'
      Size = 40
    end
    object Qr_ProPDNOMGRU: TStringField
      DisplayLabel = 'Grupo de Produtos'
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_ProPDNOMCON: TStringField
      FieldName = 'PDNOMCON'
      Origin = 'SG_ASSOC.CADPRO.PDNOMCON'
      Size = 40
    end
    object Qr_ProPDNOMRAM: TStringField
      FieldName = 'PDNOMRAM'
      Origin = 'SG_ASSOC.CADPRO.PDNOMRAM'
      Size = 40
    end
    object Qr_ProPDNOMTIP: TStringField
      DisplayLabel = 'Tipo de Produto'
      FieldName = 'PDNOMTIP'
      Origin = 'SG_ASSOC.CADPRO.PDNOMTIP'
      Size = 40
    end
    object Qr_ProPDNOMPROALT: TStringField
      FieldName = 'PDNOMPROALT'
      Origin = 'SG_ASSOC.CADPRO.PDNOMPROALT'
      Size = 40
    end
    object Qr_ProPDSTATUS02: TFloatField
      FieldName = 'PDSTATUS02'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS02'
    end
    object Qr_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Qr_ProPDBAIXOR: TFloatField
      FieldName = 'PDBAIXOR'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOR'
    end
    object Qr_ProPDALTOR: TFloatField
      FieldName = 'PDALTOR'
      Origin = 'SG_ASSOC.CADPRO.PDALTOR'
    end
    object Qr_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Qr_ProPDBAIXOC: TFloatField
      FieldName = 'PDBAIXOC'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOC'
    end
    object Qr_ProPDALTOC: TFloatField
      FieldName = 'PDALTOC'
      Origin = 'SG_ASSOC.CADPRO.PDALTOC'
    end
    object Qr_ProPDCODNCM: TStringField
      FieldName = 'PDCODNCM'
      Origin = 'SG_ASSOC.CADPRO.PDCODNCM'
      Size = 10
    end
    object Qr_ProPDCUSFAB: TFloatField
      FieldName = 'PDCUSFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFAB'
    end
    object Qr_ProPDCUSENV: TFloatField
      FieldName = 'PDCUSENV'
      Origin = 'SG_ASSOC.CADPRO.PDCUSENV'
    end
    object Qr_ProPDCUSFIN: TFloatField
      FieldName = 'PDCUSFIN'
      Origin = 'SG_ASSOC.CADPRO.PDCUSFIN'
    end
    object Qr_ProPDUCODFOR: TFloatField
      FieldName = 'PDUCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUCODFOR'
    end
    object Qr_ProPDUNOMFOR: TStringField
      FieldName = 'PDUNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDUNOMFOR'
      Size = 40
    end
    object Qr_ProPDCODFAB: TStringField
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Qr_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
    object Qr_ProPDALTOT: TFloatField
      FieldName = 'PDALTOT'
      Origin = 'SG_ASSOC.CADPRO.PDALTOT'
    end
    object Qr_ProPDBAIXOT: TFloatField
      FieldName = 'PDBAIXOT'
      Origin = 'SG_ASSOC.CADPRO.PDBAIXOT'
    end
    object Qr_ProPDPMC02: TFloatField
      FieldName = 'PDPMC02'
      Origin = 'SG_ASSOC.CADPRO.PDPMC02'
    end
    object Qr_ProPDPMC03: TFloatField
      FieldName = 'PDPMC03'
      Origin = 'SG_ASSOC.CADPRO.PDPMC03'
    end
    object Qr_ProPDCX_PVDA: TFloatField
      FieldName = 'PDCX_PVDA'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PVDA'
    end
    object Qr_ProPDCX_PFAB: TFloatField
      FieldName = 'PDCX_PFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PFAB'
    end
    object Qr_ProPDCX_PMAX: TFloatField
      FieldName = 'PDCX_PMAX'
      Origin = 'SG_ASSOC.CADPRO.PDCX_PMAX'
    end
    object Qr_ProPDICMSCRED: TFloatField
      FieldName = 'PDICMSCRED'
      Origin = 'SG_ASSOC.CADPRO.PDICMSCRED'
    end
    object Qr_ProPDICMSDEB: TFloatField
      FieldName = 'PDICMSDEB'
      Origin = 'SG_ASSOC.CADPRO.PDICMSDEB'
    end
    object Qr_ProPDVLRINC: TFloatField
      FieldName = 'PDVLRINC'
      Origin = 'SG_ASSOC.CADPRO.PDVLRINC'
    end
    object Qr_ProOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
  end
  object Src_Pro: TDataSource
    DataSet = Qr_Pro
    Left = 67
    Top = 136
  end
  object Qr_TDVCA_S: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVCA where '
      'TCCODEMP is null')
    Left = 70
    Top = 361
    object Qr_TDVCA_STCCODEMP: TFloatField
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CTDVCA.TCCODEMP'
    end
    object Qr_TDVCA_STCDOC: TStringField
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CTDVCA.TCDOC'
      Size = 10
    end
    object Qr_TDVCA_STCNOME: TStringField
      FieldName = 'TCNOME'
      Origin = 'SG_ASSOC.CTDVCA.TCNOME'
    end
    object Qr_TDVCA_STCQTDLIN: TFloatField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLIN'
    end
    object Qr_TDVCA_STCQTDCOL: TFloatField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDCOL'
    end
    object Qr_TDVCA_STCFPADRAO: TFloatField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPADRAO'
    end
    object Qr_TDVCA_STCQTDITEM: TFloatField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDITEM'
    end
    object Qr_TDVCA_STCQTDLPP: TFloatField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLPP'
    end
    object Qr_TDVCA_STCNUMCOL: TFloatField
      FieldName = 'TCNUMCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCNUMCOL'
    end
    object Qr_TDVCA_STCINTCOL: TFloatField
      FieldName = 'TCINTCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCINTCOL'
    end
    object Qr_TDVCA_STCTPCOL: TFloatField
      FieldName = 'TCTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPCOL'
    end
    object Qr_TDVCA_STCORDEM: TFloatField
      FieldName = 'TCORDEM'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM'
    end
    object Qr_TDVCA_STCMPAGGR: TFloatField
      FieldName = 'TCMPAGGR'
      Origin = 'SG_ASSOC.CTDVCA.TCMPAGGR'
    end
    object Qr_TDVCA_STCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
    end
    object Qr_TDVCA_STCTPESQ: TFloatField
      FieldName = 'TCTPESQ'
      Origin = 'SG_ASSOC.CTDVCA.TCTPESQ'
    end
    object Qr_TDVCA_STCTPREL: TFloatField
      FieldName = 'TCTPREL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPREL'
    end
    object Qr_TDVCA_STCIMPG: TFloatField
      FieldName = 'TCIMPG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPG'
    end
    object Qr_TDVCA_STCIMPSG: TFloatField
      FieldName = 'TCIMPSG'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPSG'
    end
    object Qr_TDVCA_STCAVPTPI: TFloatField
      FieldName = 'TCAVPTPI'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPTPI'
    end
    object Qr_TDVCA_STCAVPIPF: TFloatField
      FieldName = 'TCAVPIPF'
      Origin = 'SG_ASSOC.CTDVCA.TCAVPIPF'
    end
    object Qr_TDVCA_STCSTATUS: TFloatField
      FieldName = 'TCSTATUS'
      Origin = 'SG_ASSOC.CTDVCA.TCSTATUS'
    end
    object Qr_TDVCA_STCVIS: TFloatField
      FieldName = 'TCVIS'
      Origin = 'SG_ASSOC.CTDVCA.TCVIS'
    end
    object Qr_TDVCA_STCQTDSER: TFloatField
      FieldName = 'TCQTDSER'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDSER'
    end
    object Qr_TDVCA_STCIMPDA: TFloatField
      FieldName = 'TCIMPDA'
      Origin = 'SG_ASSOC.CTDVCA.TCIMPDA'
    end
    object Qr_TDVCA_STCTAB01: TStringField
      FieldName = 'TCTAB01'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB01'
      Size = 40
    end
    object Qr_TDVCA_STCTAB02: TStringField
      FieldName = 'TCTAB02'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02'
      Size = 40
    end
    object Qr_TDVCA_STCTAB02N: TFloatField
      FieldName = 'TCTAB02N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB02N'
    end
    object Qr_TDVCA_STCTAB03: TStringField
      FieldName = 'TCTAB03'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03'
      Size = 40
    end
    object Qr_TDVCA_STCTAB03N: TFloatField
      FieldName = 'TCTAB03N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB03N'
    end
    object Qr_TDVCA_STCTAB04: TStringField
      FieldName = 'TCTAB04'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04'
      Size = 40
    end
    object Qr_TDVCA_STCTAB04N: TFloatField
      FieldName = 'TCTAB04N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB04N'
    end
    object Qr_TDVCA_STCTAB05: TStringField
      FieldName = 'TCTAB05'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05'
      Size = 40
    end
    object Qr_TDVCA_STCTAB05N: TFloatField
      FieldName = 'TCTAB05N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB05N'
    end
    object Qr_TDVCA_STCORDEM2: TStringField
      FieldName = 'TCORDEM2'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM2'
      Size = 240
    end
    object Qr_TDVCA_STCFILTRO: TStringField
      FieldName = 'TCFILTRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRO'
      Size = 240
    end
    object Qr_TDVCA_STCCONT_M: TStringField
      FieldName = 'TCCONT_M'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_M'
      Size = 30
    end
    object Qr_TDVCA_STCCONT_R: TStringField
      FieldName = 'TCCONT_R'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_R'
      Size = 40
    end
    object Qr_TDVCA_STCCONT_AP: TFloatField
      FieldName = 'TCCONT_AP'
      Origin = 'SG_ASSOC.CTDVCA.TCCONT_AP'
    end
    object Qr_TDVCA_STCBLOQ: TFloatField
      FieldName = 'TCBLOQ'
      Origin = 'SG_ASSOC.CTDVCA.TCBLOQ'
    end
    object Qr_TDVCA_STCAGRUPAR: TFloatField
      FieldName = 'TCAGRUPAR'
      Origin = 'SG_ASSOC.CTDVCA.TCAGRUPAR'
    end
    object Qr_TDVCA_STCMASC: TStringField
      FieldName = 'TCMASC'
      Origin = 'SG_ASSOC.CTDVCA.TCMASC'
      Size = 40
    end
    object Qr_TDVCA_STCPERIODO: TStringField
      FieldName = 'TCPERIODO'
      Origin = 'SG_ASSOC.CTDVCA.TCPERIODO'
      Size = 40
    end
    object Qr_TDVCA_STCDIMGRU: TFloatField
      FieldName = 'TCDIMGRU'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMGRU'
    end
    object Qr_TDVCA_STCDIMSG: TFloatField
      FieldName = 'TCDIMSG'
      Origin = 'SG_ASSOC.CTDVCA.TCDIMSG'
    end
    object Qr_TDVCA_STCTPFORM: TFloatField
      FieldName = 'TCTPFORM'
      Origin = 'SG_ASSOC.CTDVCA.TCTPFORM'
    end
    object Qr_TDVCA_STCQTDDIV: TFloatField
      FieldName = 'TCQTDDIV'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDDIV'
    end
    object Qr_TDVCA_STCTAB06: TStringField
      FieldName = 'TCTAB06'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06'
      Size = 40
    end
    object Qr_TDVCA_STCTAB06N: TFloatField
      FieldName = 'TCTAB06N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB06N'
    end
    object Qr_TDVCA_STCTAB07: TStringField
      FieldName = 'TCTAB07'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07'
      Size = 40
    end
    object Qr_TDVCA_STCTAB07N: TFloatField
      FieldName = 'TCTAB07N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB07N'
    end
    object Qr_TDVCA_STCTAB08: TStringField
      FieldName = 'TCTAB08'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08'
      Size = 40
    end
    object Qr_TDVCA_STCTAB08N: TFloatField
      FieldName = 'TCTAB08N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB08N'
    end
    object Qr_TDVCA_STCTAB09: TStringField
      FieldName = 'TCTAB09'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09'
      Size = 40
    end
    object Qr_TDVCA_STCTAB09N: TFloatField
      FieldName = 'TCTAB09N'
      Origin = 'SG_ASSOC.CTDVCA.TCTAB09N'
    end
    object Qr_TDVCA_STCFILVEN: TFloatField
      FieldName = 'TCFILVEN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILVEN'
    end
    object Qr_TDVCA_STCFVCAMPO: TStringField
      FieldName = 'TCFVCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFVCAMPO'
    end
    object Qr_TDVCA_STCFILCLI: TFloatField
      FieldName = 'TCFILCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCLI'
    end
    object Qr_TDVCA_STCFCCAMPO: TStringField
      FieldName = 'TCFCCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFCCAMPO'
    end
    object Qr_TDVCA_STCFILPRO: TFloatField
      FieldName = 'TCFILPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILPRO'
    end
    object Qr_TDVCA_STCFPCAMPO: TStringField
      FieldName = 'TCFPCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPCAMPO'
    end
    object Qr_TDVCA_STCFILFOR: TFloatField
      FieldName = 'TCFILFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFOR'
    end
    object Qr_TDVCA_STCFFCAMPO: TStringField
      FieldName = 'TCFFCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFFCAMPO'
    end
    object Qr_TDVCA_STCFILRED: TFloatField
      FieldName = 'TCFILRED'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRED'
    end
    object Qr_TDVCA_STCFRCAMPO: TStringField
      FieldName = 'TCFRCAMPO'
      Origin = 'SG_ASSOC.CTDVCA.TCFRCAMPO'
    end
    object Qr_TDVCA_STCDETNCOL: TFloatField
      FieldName = 'TCDETNCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETNCOL'
    end
    object Qr_TDVCA_STCDETICOL: TFloatField
      FieldName = 'TCDETICOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETICOL'
    end
    object Qr_TDVCA_STCDETTPCOL: TFloatField
      FieldName = 'TCDETTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCDETTPCOL'
    end
    object Qr_TDVCA_STCAVANCAROD: TFloatField
      FieldName = 'TCAVANCAROD'
      Origin = 'SG_ASSOC.CTDVCA.TCAVANCAROD'
    end
    object Qr_TDVCA_STCFILEST: TFloatField
      FieldName = 'TCFILEST'
      Origin = 'SG_ASSOC.CTDVCA.TCFILEST'
    end
    object Qr_TDVCA_STCQTDVIA: TFloatField
      FieldName = 'TCQTDVIA'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDVIA'
    end
    object Qr_TDVCA_STCFILRAMCLI: TFloatField
      FieldName = 'TCFILRAMCLI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMCLI'
    end
    object Qr_TDVCA_STCFILRAMPRO: TFloatField
      FieldName = 'TCFILRAMPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILRAMPRO'
    end
    object Qr_TDVCA_STCFILTPRO: TFloatField
      FieldName = 'TCFILTPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTPRO'
    end
    object Qr_TDVCA_STCFILGPRO: TFloatField
      FieldName = 'TCFILGPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGPRO'
    end
    object Qr_TDVCA_STCFILCPRO: TFloatField
      FieldName = 'TCFILCPRO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCPRO'
    end
    object Qr_TDVCA_STCFILLOC: TFloatField
      FieldName = 'TCFILLOC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILLOC'
    end
    object Qr_TDVCA_STCFILBAI: TFloatField
      FieldName = 'TCFILBAI'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBAI'
    end
    object Qr_TDVCA_STCFILGFOR: TFloatField
      FieldName = 'TCFILGFOR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILGFOR'
    end
    object Qr_TDVCA_STCFILCONV: TFloatField
      FieldName = 'TCFILCONV'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCONV'
    end
    object Qr_TDVCA_STCFILSUP: TFloatField
      FieldName = 'TCFILSUP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILSUP'
    end
    object Qr_TDVCA_STCFILASS: TFloatField
      FieldName = 'TCFILASS'
      Origin = 'SG_ASSOC.CTDVCA.TCFILASS'
    end
    object Qr_TDVCA_STCFILREG: TFloatField
      FieldName = 'TCFILREG'
      Origin = 'SG_ASSOC.CTDVCA.TCFILREG'
    end
    object Qr_TDVCA_STCFILTRA: TFloatField
      FieldName = 'TCFILTRA'
      Origin = 'SG_ASSOC.CTDVCA.TCFILTRA'
    end
    object Qr_TDVCA_STCFILBCO: TFloatField
      FieldName = 'TCFILBCO'
      Origin = 'SG_ASSOC.CTDVCA.TCFILBCO'
    end
    object Qr_TDVCA_STCFILCC: TFloatField
      FieldName = 'TCFILCC'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCC'
    end
    object Qr_TDVCA_STCFILDEP: TFloatField
      FieldName = 'TCFILDEP'
      Origin = 'SG_ASSOC.CTDVCA.TCFILDEP'
    end
    object Qr_TDVCA_STCFILUSR: TFloatField
      FieldName = 'TCFILUSR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILUSR'
    end
    object Qr_TDVCA_STCFILCAR: TFloatField
      FieldName = 'TCFILCAR'
      Origin = 'SG_ASSOC.CTDVCA.TCFILCAR'
    end
    object Qr_TDVCA_STCFILFUN: TFloatField
      FieldName = 'TCFILFUN'
      Origin = 'SG_ASSOC.CTDVCA.TCFILFUN'
    end
  end
  object Qr_TDV_S: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP like :CODEMP and'
      'TDOC    like :DOC    and'
      'TNOME   like :NOME   and'
      'TLOCAL   like :LOCAL and'
      'TSEQ      like :SEQ'
      'order by TLIN,TCOL')
    Left = 39
    Top = 453
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOCAL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDV_STCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Qr_TDV_STDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Qr_TDV_STNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
    end
    object Qr_TDV_STLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Qr_TDV_STSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Qr_TDV_STLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Qr_TDV_STCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Qr_TDV_STFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Qr_TDV_STTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Qr_TDV_STCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 140
    end
    object Qr_TDV_STDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 140
    end
    object Qr_TDV_STTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Qr_TDV_STALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Qr_TDV_STTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Qr_TDV_STFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Qr_TDV_STCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Qr_TDV_STCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Qr_TDV_STCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Qr_TDV_STCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Qr_TDV_STCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Qr_TDV_STZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Qr_TDV_STCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Qr_TDV_STCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Qr_TDV_STCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Qr_TDV_STCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Qr_TDV_STCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Qr_TDV_STCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Qr_TDV_STCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Qr_TDV_STCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Qr_TDV_STCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Qr_TDV_STCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Qr_TDV_STCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Qr_TDV_STCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Qr_TDV_STCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Qr_TDV_STCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Qr_TDV_STCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Qr_TDV_STCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Qr_TDV_STCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Qr_TDV_STCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Qr_TDV_STCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Qr_TDV_STCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Qr_TDV_STCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Qr_TDV_STCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Qr_TDV_STCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Qr_TDV_STCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Qr_TDV_STCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Qr_TDV_STCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Qr_TDV_STCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Qr_TDV_STCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Qr_TDV_STCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Qr_TDV_STCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Qr_TDV_STCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Qr_TDV_STCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Qr_TDV_STCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Qr_TDV_STCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
  end
  object Qr_Op_S: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVOP where '
      'TOCODEMP like :CODEMP and'
      'TODOC        like  :DOC        and'
      'TONOME     like  :NOME      and'
      'TOTDET      like  :TDET      and'
      'TOCODIGO  like  :CODIGO'
      'order by TOCODIGO')
    Left = 8
    Top = 97
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TDET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_Op_STOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CTDVOP.TOCODEMP'
    end
    object Qr_Op_STODOC: TStringField
      FieldName = 'TODOC'
      Origin = 'SG_ASSOC.CTDVOP.TODOC'
      Size = 10
    end
    object Qr_Op_STONOME: TStringField
      FieldName = 'TONOME'
      Origin = 'SG_ASSOC.CTDVOP.TONOME'
    end
    object Qr_Op_STOTDET: TFloatField
      FieldName = 'TOTDET'
      Origin = 'SG_ASSOC.CTDVOP.TOTDET'
    end
    object Qr_Op_STOCODIGO: TFloatField
      FieldName = 'TOCODIGO'
      Origin = 'SG_ASSOC.CTDVOP.TOCODIGO'
    end
    object Qr_Op_STOTOP0: TStringField
      FieldName = 'TOTOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP0'
      Size = 1
    end
    object Qr_Op_STOOP0: TStringField
      FieldName = 'TOOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOOP0'
      Size = 40
    end
    object Qr_Op_STODESOP0: TStringField
      FieldName = 'TODESOP0'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP0'
      Size = 80
    end
    object Qr_Op_STOPER0: TStringField
      FieldName = 'TOPER0'
      Origin = 'SG_ASSOC.CTDVOP.TOPER0'
      Size = 1
    end
    object Qr_Op_STOTOP1: TStringField
      FieldName = 'TOTOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP1'
      Size = 1
    end
    object Qr_Op_STOOP1: TStringField
      FieldName = 'TOOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOOP1'
      Size = 40
    end
    object Qr_Op_STODESOP1: TStringField
      FieldName = 'TODESOP1'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP1'
      Size = 80
    end
    object Qr_Op_STOPER1: TStringField
      FieldName = 'TOPER1'
      Origin = 'SG_ASSOC.CTDVOP.TOPER1'
      Size = 1
    end
    object Qr_Op_STOTOP2: TStringField
      FieldName = 'TOTOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP2'
      Size = 1
    end
    object Qr_Op_STOOP2: TStringField
      FieldName = 'TOOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOOP2'
      Size = 40
    end
    object Qr_Op_STODESOP2: TStringField
      FieldName = 'TODESOP2'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP2'
      Size = 80
    end
    object Qr_Op_STOPER2: TStringField
      FieldName = 'TOPER2'
      Origin = 'SG_ASSOC.CTDVOP.TOPER2'
      Size = 1
    end
    object Qr_Op_STOTOP3: TStringField
      FieldName = 'TOTOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP3'
      Size = 1
    end
    object Qr_Op_STOOP3: TStringField
      FieldName = 'TOOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOOP3'
      Size = 40
    end
    object Qr_Op_STODESOP3: TStringField
      FieldName = 'TODESOP3'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP3'
      Size = 80
    end
    object Qr_Op_STOCONDT1: TStringField
      FieldName = 'TOCONDT1'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT1'
      Size = 1
    end
    object Qr_Op_STOCOND01: TStringField
      FieldName = 'TOCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND01'
      Size = 30
    end
    object Qr_Op_STODCOND01: TStringField
      FieldName = 'TODCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND01'
      Size = 80
    end
    object Qr_Op_STOCONDOP: TStringField
      FieldName = 'TOCONDOP'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDOP'
      Size = 5
    end
    object Qr_Op_STOCONDT2: TStringField
      FieldName = 'TOCONDT2'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT2'
      Size = 1
    end
    object Qr_Op_STOCOND02: TStringField
      FieldName = 'TOCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND02'
      Size = 30
    end
    object Qr_Op_STODCOND02: TStringField
      FieldName = 'TODCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND02'
      Size = 80
    end
  end
  object Qr_ImpRel: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 8
    Top = 50
  end
  object Qr_RMen: TQuery
    OnCalcFields = Qr_RMenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODEMP,PDCODPRO,PDNOME,'
      'PDPRECO1,PDPRECO2,PDPRECO3,PDPRECOC,PDPCOMC,PDUCPR,'
      'PDSIT,PDCODTIP,'
      #39'01/01/1900'#39' as datai, '#39'01/01/1900'#39' as dataf'
      'from CADPRO where PDCODEMP is null')
    Left = 8
    Top = 181
    object Qr_RMenPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
    object Qr_RMenPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_RMenPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_RMenestini: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estini'
      Calculated = True
    end
    object Qr_RMencompras: TFloatField
      FieldKind = fkCalculated
      FieldName = 'compras'
      Calculated = True
    end
    object Qr_RMenvendas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      Calculated = True
    end
    object Qr_RMendev_cli: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dev_cli'
      Calculated = True
    end
    object Qr_RMendev_for: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dev_for'
      Calculated = True
    end
    object Qr_RMentransf_sai: TFloatField
      FieldKind = fkCalculated
      FieldName = 'transf_sai'
      Calculated = True
    end
    object Qr_RMenest_atu: TFloatField
      FieldKind = fkCalculated
      FieldName = 'est_atu'
      Calculated = True
    end
    object Qr_RMenajuste_ent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ajuste_ent'
      Calculated = True
    end
    object Qr_RMenajuste_sai: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ajuste_sai'
      Calculated = True
    end
    object Qr_RMenoutras_sai: TFloatField
      FieldKind = fkCalculated
      FieldName = 'outras_sai'
      Calculated = True
    end
    object Qr_RMenoutras_ent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'outras_ent'
      Calculated = True
    end
    object Qr_RMenDATAI: TStringField
      FieldName = 'DATAI'
      FixedChar = True
      Size = 10
    end
    object Qr_RMenDATAF: TStringField
      FieldName = 'DATAF'
      FixedChar = True
      Size = 10
    end
    object Qr_RMenPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
    end
    object Qr_RMenPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
    end
    object Qr_RMenPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
    end
    object Qr_RMenPDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
    end
    object Qr_RMenPDPCOMC: TFloatField
      FieldName = 'PDPCOMC'
    end
    object Qr_RMenPDSIT: TStringField
      FieldName = 'PDSIT'
      Size = 3
    end
    object Qr_RMenPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
    end
    object Qr_RMenPDUCPR: TFloatField
      FieldName = 'PDUCPR'
    end
  end
  object Tb_PPR: TQuery
    CachedUpdates = True
    AfterInsert = Tb_PPRAfterInsert
    BeforePost = Tb_PPRBeforePost
    AfterPost = Tb_OPAfterDelete
    BeforeDelete = Tb_PPRBeforeDelete
    AfterDelete = Tb_OPAfterDelete
    OnCalcFields = Tb_PPRCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PPCODEMP,'
      '  PPPROMOCAO,'
      '  PPPVTIP,'
      '  PPPVTAB,'
      '  PPCODRED,'
      '  PPCODREG,'
      '  PPFLAG,'
      '  PPCODPRO,'
      '  PPGRADE,'
      '  PPDATINI,'
      '  PPDATFIN,'
      '  PPCODGRU,'
      '  PPPCOVDA,'
      '  PPDESC_1,'
      '  PPDESC_2,'
      '  PPDESC_3,'
      '  PPCONFVDA,'
      '  PPCOMIS,'
      '  PPQTDMIN,'
      '  PPVALMIN,'
      '  PPOBS,'
      '  PPKIT,'
      '  PPDESC_F,'
      '  PDNOME,'
      '  PPPRIOR'
      ' from CADPPR,CADPRO where'
      'PPCODEMP      like :CODEMP and'
      'PPPROMOCAO like :PROMOCAO and'
      'PPCODPRO      like :CODPRO'
      'and PDCODEMP  like :CODEMP'
      'and PDCODPRO=PPCODPRO'
      'ORDER BY PDNOME')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_PPR
    Left = 577
    Top = 418
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PROMOCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object Tb_PPRPPCODEMP: TFloatField
      FieldName = 'PPCODEMP'
      Origin = 'SG_ASSOC.CADPPR.PPCODEMP'
    end
    object Tb_PPRPPPROMOCAO: TStringField
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 100
    end
    object Tb_PPRPPPVTIP: TStringField
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Tb_PPRPPPVTAB: TStringField
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 2
    end
    object Tb_PPRPPCODRED: TFloatField
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Tb_PPRPPFLAG: TStringField
      FieldName = 'PPFLAG'
      Origin = 'SG_ASSOC.CADPPR.PPFLAG'
      Size = 1
    end
    object Tb_PPRPPCODPRO: TFloatField
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Tb_PPRPPDATINI: TDateTimeField
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Tb_PPRPPDATFIN: TDateTimeField
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Tb_PPRPPCODGRU: TFloatField
      FieldName = 'PPCODGRU'
      Origin = 'SG_ASSOC.CADPPR.PPCODGRU'
    end
    object Tb_PPRPPPCOVDA: TFloatField
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Tb_PPRPPDESC_1: TFloatField
      DisplayLabel = '% D1'
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Tb_PPRPPDESC_2: TFloatField
      DisplayLabel = '% D2'
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Tb_PPRPPDESC_3: TFloatField
      DisplayLabel = '% D3'
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Tb_PPRPPCONFVDA: TStringField
      FieldName = 'PPCONFVDA'
      Origin = 'SG_ASSOC.CADPPR.PPCONFVDA'
      Size = 1
    end
    object Tb_PPRPPCOMIS: TFloatField
      FieldName = 'PPCOMIS'
      Origin = 'SG_ASSOC.CADPPR.PPCOMIS'
    end
    object Tb_PPRPPQTDMIN: TFloatField
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Tb_PPRPPVALMIN: TFloatField
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Tb_PPRPPOBS: TStringField
      FieldName = 'PPOBS'
      Origin = 'SG_ASSOC.CADPPR.PPOBS'
      Size = 50
    end
    object Tb_PPRPPKIT: TStringField
      FieldName = 'PPKIT'
      Origin = 'SG_ASSOC.CADPPR.PPKIT'
      Size = 1
    end
    object Tb_PPRnompro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Tb_PPRPPDESC_F: TFloatField
      DisplayLabel = '%Desc.Fin'
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Tb_PPRPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Tb_PPRPPPRIOR: TFloatField
      FieldName = 'PPPRIOR'
      Origin = 'SG_ASSOC.CADPPR.PPPRIOR'
    end
    object Tb_PPRPPCODREG: TFloatField
      FieldName = 'PPCODREG'
      Origin = 'SG_ASSOC.CADPPR.PPCODREG'
    end
    object Tb_PPRPPGRADE: TStringField
      FieldName = 'PPGRADE'
      Origin = 'SG_ASSOC.CADPPR.PPGRADE'
    end
    object Tb_PPRPPDATHOR_ALT: TDateTimeField
      FieldName = 'PPDATHOR_ALT'
    end
    object Tb_PPRPPDATHOR_INC: TDateTimeField
      FieldName = 'PPDATHOR_INC'
    end
    object Tb_PPRPPCODCLI: TFloatField
      FieldName = 'PPCODCLI'
    end
    object Tb_PPRPPID_ANO: TFloatField
      FieldName = 'PPID_ANO'
    end
    object Tb_PPRPPID: TFloatField
      FieldName = 'PPID'
    end
    object Tb_PPRPPUF: TStringField
      FieldName = 'PPUF'
      Size = 2
    end
  end
  object Src_PPR: TDataSource
    DataSet = Tb_PPR
    Left = 606
    Top = 418
  end
  object Tb_CFR: TQuery
    CachedUpdates = True
    BeforePost = Tb_CFRBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADCFR '
      'where RTABELA = :TABELA'
      '  and RMODELO = :MODELO'
      '  and RORDEM like :ORDEM')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CFR
    Left = 233
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'TABELA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'MODELO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CFRRCODEMP: TFloatField
      FieldName = 'RCODEMP'
      Origin = 'SG_ASSOC.CADCFR.RCODEMP'
    end
    object Tb_CFRRTABELA: TStringField
      FieldName = 'RTABELA'
      Origin = 'SG_ASSOC.CADCFR.RTABELA'
      Size = 10
    end
    object Tb_CFRRMODELO: TStringField
      FieldName = 'RMODELO'
      Origin = 'SG_ASSOC.CADCFR.RMODELO'
    end
    object Tb_CFRRORDEM: TFloatField
      FieldName = 'RORDEM'
      Origin = 'SG_ASSOC.CADCFR.RORDEM'
    end
    object Tb_CFRRSTATUS: TFloatField
      FieldName = 'RSTATUS'
      Origin = 'SG_ASSOC.CADCFR.RSTATUS'
    end
    object Tb_CFRRMEMO: TMemoField
      FieldName = 'RMEMO'
      Origin = 'SG_ASSOC.CADCFR.RMEMO'
      BlobType = ftMemo
      Size = 4000
    end
    object Tb_CFRRHORA: TStringField
      FieldName = 'RHORA'
      Origin = 'SG_ASSOC.CADCFR.RHORA'
      Size = 1
    end
    object Tb_CFRRQTDCOL: TFloatField
      FieldName = 'RQTDCOL'
      Origin = 'SG_ASSOC.CADCFR.RQTDCOL'
    end
    object Tb_CFRRINC2: TFloatField
      FieldName = 'RINC2'
      Origin = 'SG_ASSOC.CADCFR.RINC2'
    end
    object Tb_CFRRINC3: TFloatField
      FieldName = 'RINC3'
      Origin = 'SG_ASSOC.CADCFR.RINC3'
    end
    object Tb_CFRRFIRMA: TStringField
      FieldName = 'RFIRMA'
      Origin = 'SG_ASSOC.CADCFR.RFIRMA'
      Size = 1
    end
    object Tb_CFRRSEPARA: TStringField
      FieldName = 'RSEPARA'
      Origin = 'SG_ASSOC.CADCFR.RSEPARA'
      Size = 1
    end
    object Tb_CFRRSALTAR: TStringField
      FieldName = 'RSALTAR'
      Origin = 'SG_ASSOC.CADCFR.RSALTAR'
      Size = 1
    end
    object Tb_CFRRDATA: TStringField
      FieldName = 'RDATA'
      Origin = 'SG_ASSOC.CADCFR.RDATA'
      Size = 1
    end
    object Tb_CFRRPAG: TStringField
      FieldName = 'RPAG'
      Origin = 'SG_ASSOC.CADCFR.RPAG'
      Size = 1
    end
    object Tb_CFRRQTDLIN: TFloatField
      FieldName = 'RQTDLIN'
      Origin = 'SG_ASSOC.CADCFR.RQTDLIN'
    end
    object Tb_CFRRTPCOL: TFloatField
      FieldName = 'RTPCOL'
      Origin = 'SG_ASSOC.CADCFR.RTPCOL'
    end
    object Tb_CFRRLINIC: TFloatField
      FieldName = 'RLINIC'
      Origin = 'SG_ASSOC.CADCFR.RLINIC'
    end
  end
  object Src_CFR: TDataSource
    DataSet = Tb_CFR
    Left = 262
    Top = 49
  end
  object Tb_CCob: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_CCobCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CARCOB WHERE '
      'CCCHAVE is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CCob
    Left = 234
    Top = 4
    object Tb_CCobrazao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razao'
      Size = 40
      Calculated = True
    end
    object Tb_CCobendc: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'endc'
      Size = 40
      Calculated = True
    end
    object Tb_CCobbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldKind = fkCalculated
      FieldName = 'bairro'
      Size = 30
      Calculated = True
    end
    object Tb_CCobcidade: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 30
      Calculated = True
    end
    object Tb_CCobcepc: TStringField
      DisplayLabel = 'CEP'
      FieldKind = fkCalculated
      FieldName = 'cepc'
      Size = 9
      Calculated = True
    end
    object Tb_CCobnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkCalculated
      FieldName = 'numero'
      Size = 12
      Calculated = True
    end
    object Tb_CCobatraso: TFloatField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'atraso'
      Calculated = True
    end
    object Tb_CCobtotdeb: TFloatField
      DisplayLabel = 'Tot.D'#233'bitos'
      FieldKind = fkCalculated
      FieldName = 'totdeb'
      currency = True
      Calculated = True
    end
    object Tb_CCobCCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CCCODEMP'
      Origin = 'SG_ASSOC.CARCOB.CCCODEMP'
    end
    object Tb_CCobCCCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CCCHAVE'
      Origin = 'SG_ASSOC.CARCOB.CCCHAVE'
    end
    object Tb_CCobCCNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CCNUMERO'
      Origin = 'SG_ASSOC.CARCOB.CCNUMERO'
    end
    object Tb_CCobCCDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CCDESD'
      Origin = 'SG_ASSOC.CARCOB.CCDESD'
      Size = 2
    end
    object Tb_CCobCCDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CCDUP'
      Origin = 'SG_ASSOC.CARCOB.CCDUP'
    end
    object Tb_CCobCCVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CCVALOR'
      Origin = 'SG_ASSOC.CARCOB.CCVALOR'
    end
    object Tb_CCobCCDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CCDTVCTO'
      Origin = 'SG_ASSOC.CARCOB.CCDTVCTO'
    end
    object Tb_CCobCCDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'CCDTPAG'
      Origin = 'SG_ASSOC.CARCOB.CCDTPAG'
    end
    object Tb_CCobCCJURDIA: TFloatField
      DisplayLabel = 'Juros dia'
      FieldName = 'CCJURDIA'
      Origin = 'SG_ASSOC.CARCOB.CCJURDIA'
    end
    object Tb_CCobCCCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CCCODCLI'
      Origin = 'SG_ASSOC.CARCOB.CCCODCLI'
    end
    object Tb_CCobCCVLRENCAR: TFloatField
      DisplayLabel = 'Enc.Financ.'
      FieldName = 'CCVLRENCAR'
      Origin = 'SG_ASSOC.CARCOB.CCVLRENCAR'
    end
    object Tb_CCobCCDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CCDTEMIS'
      Origin = 'SG_ASSOC.CARCOB.CCDTEMIS'
    end
    object Tb_CCobCCLOTSEQ: TFloatField
      DisplayLabel = 'Lot.Seq.'
      FieldName = 'CCLOTSEQ'
      Origin = 'SG_ASSOC.CARCOB.CCLOTSEQ'
    end
    object Tb_CCobtotjur: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totjur'
      DisplayFormat = '#00.00'
      Calculated = True
    end
    object Tb_CCobfone: TStringField
      FieldKind = fkCalculated
      FieldName = 'fone'
      Size = 25
      Calculated = True
    end
    object Tb_CCobfax: TStringField
      FieldKind = fkCalculated
      FieldName = 'fax'
      Size = 25
      Calculated = True
    end
  end
  object QR_TDVCP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where'
      'TCODEMP is null')
    Left = 8
    Top = 404
    object QR_TDVCPTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object QR_TDVCPTDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object QR_TDVCPTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
      Size = 52
    end
    object QR_TDVCPTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object QR_TDVCPTSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object QR_TDVCPTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object QR_TDVCPTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object QR_TDVCPTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object QR_TDVCPTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object QR_TDVCPTCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 140
    end
    object QR_TDVCPTDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 140
    end
    object QR_TDVCPTTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object QR_TDVCPTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object QR_TDVCPTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object QR_TDVCPTFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object QR_TDVCPTCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object QR_TDVCPTCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object QR_TDVCPTCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object QR_TDVCPTCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object QR_TDVCPTCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object QR_TDVCPTZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object QR_TDVCPTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object QR_TDVCPTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object QR_TDVCPTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object QR_TDVCPTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object QR_TDVCPTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object QR_TDVCPTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object QR_TDVCPTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object QR_TDVCPTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object QR_TDVCPTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object QR_TDVCPTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object QR_TDVCPTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object QR_TDVCPTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object QR_TDVCPTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object QR_TDVCPTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object QR_TDVCPTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object QR_TDVCPTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object QR_TDVCPTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object QR_TDVCPTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object QR_TDVCPTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object QR_TDVCPTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object QR_TDVCPTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object QR_TDVCPTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object QR_TDVCPTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object QR_TDVCPTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object QR_TDVCPTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object QR_TDVCPTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object QR_TDVCPTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object QR_TDVCPTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object QR_TDVCPTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object QR_TDVCPTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object QR_TDVCPTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object QR_TDVCPTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object QR_TDVCPTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object QR_TDVCPTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
  end
  object Src_CCob: TDataSource
    DataSet = Tb_CCob
    Left = 292
    Top = 4
  end
  object Tb_Dep_Folha: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Dep_FolhaBeforeInsert
    AfterInsert = Tb_Dep_FolhaAfterInsert
    BeforePost = Tb_Dep_FolhaBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADDEPTO '
      'where DPCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Dep_Folha
    Left = 233
    Top = 96
    object Tb_Dep_FolhaDPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'DPCODEMP'
      Origin = 'SG_ASSOC.CADDEPTO.DPCODEMP'
    end
    object Tb_Dep_FolhaDPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DPNOME'
      Origin = 'SG_ASSOC.CADDEPTO.DPNOME'
      Size = 30
    end
    object Tb_Dep_FolhaDPCODDEP: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DPCODDEP'
      Origin = 'SG_ASSOC.CADDEPTO.DPCODDEP'
    end
  end
  object Src_Dep_Folha: TDataSource
    DataSet = Tb_Dep_Folha
    Left = 291
    Top = 96
  end
  object Tb_Eve: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_EveBeforeInsert
    AfterInsert = Tb_EveAfterInsert
    BeforePost = Tb_EveBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_EveCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADEVE')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Eve
    Left = 233
    Top = 453
    object Tb_EveCECODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CECODEMP'
      Origin = 'SG_ASSOC.CADEVE.CECODEMP'
    end
    object Tb_EveCECODEVE: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CECODEVE'
      Origin = 'SG_ASSOC.CADEVE.CECODEVE'
    end
    object Tb_EveCENOMEVE: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CENOMEVE'
      Origin = 'SG_ASSOC.CADEVE.CENOMEVE'
      Size = 30
    end
    object Tb_EveCENAT: TFloatField
      DisplayLabel = 'Natureza'
      FieldName = 'CENAT'
      Origin = 'SG_ASSOC.CADEVE.CENAT'
    end
    object Tb_EveCETIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CETIPO'
      Origin = 'SG_ASSOC.CADEVE.CETIPO'
    end
    object Tb_EveCEVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CEVALOR'
      Origin = 'SG_ASSOC.CADEVE.CEVALOR'
    end
    object Tb_EveCEINCINSS: TFloatField
      DisplayLabel = 'Incide INSS'
      FieldName = 'CEINCINSS'
      Origin = 'SG_ASSOC.CADEVE.CEINCINSS'
    end
    object Tb_EveCEINCFGTS: TFloatField
      DisplayLabel = 'Incide FGTS'
      FieldName = 'CEINCFGTS'
      Origin = 'SG_ASSOC.CADEVE.CEINCFGTS'
    end
    object Tb_EveCEINCIR: TFloatField
      DisplayLabel = 'Incide IR'
      FieldName = 'CEINCIR'
      Origin = 'SG_ASSOC.CADEVE.CEINCIR'
    end
    object Tb_EveCEINCVT: TFloatField
      FieldName = 'CEINCVT'
      Origin = 'SG_ASSOC.CADEVE.CEINCVT'
    end
    object Tb_EveCETP_EVENTO: TFloatField
      DisplayLabel = 'Tipo do Evento'
      FieldName = 'CETP_EVENTO'
      Origin = 'SG_ASSOC.CADEVE.CETP_EVENTO'
    end
    object Tb_EveCECODEDSR: TFloatField
      FieldName = 'CECODEDSR'
      Origin = 'SG_ASSOC.CADEVE.CECODEDSR'
    end
    object Tb_Evenomevedsr: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomevedsr'
      Size = 40
      Calculated = True
    end
    object Tb_EveCEORDIMP: TFloatField
      FieldName = 'CEORDIMP'
      Origin = 'SG_ASSOC.CADEVE.CEORDIMP'
    end
    object Tb_EveCEO_RESCISAO: TStringField
      FieldName = 'CEO_RESCISAO'
      Origin = 'SG_ASSOC.CADEVE.CEO_RESCISAO'
      Size = 1
    end
    object Tb_EveCEO_FGTS: TStringField
      FieldName = 'CEO_FGTS'
      Origin = 'SG_ASSOC.CADEVE.CEO_FGTS'
      Size = 1
    end
    object Tb_EveCEO_QUANTIFICAR: TStringField
      FieldName = 'CEO_QUANTIFICAR'
      Origin = 'SG_ASSOC.CADEVE.CEO_QUANTIFICAR'
      Size = 1
    end
    object Tb_EveCEO_SALMIN: TStringField
      FieldName = 'CEO_SALMIN'
      Origin = 'SG_ASSOC.CADEVE.CEO_SALMIN'
      Size = 1
    end
    object Tb_EveCEB_INSS: TFloatField
      FieldName = 'CEB_INSS'
      Origin = 'SG_ASSOC.CADEVE.CEB_INSS'
    end
    object Tb_EveCEB_IRRF: TFloatField
      FieldName = 'CEB_IRRF'
      Origin = 'SG_ASSOC.CADEVE.CEB_IRRF'
    end
    object Tb_EveCEO_RAIS: TStringField
      FieldName = 'CEO_RAIS'
      Origin = 'SG_ASSOC.CADEVE.CEO_RAIS'
      Size = 1
    end
    object Tb_EveCEO_SALFAM: TStringField
      FieldName = 'CEO_SALFAM'
      Origin = 'SG_ASSOC.CADEVE.CEO_SALFAM'
      Size = 1
    end
  end
  object Src_Eve: TDataSource
    DataSet = Tb_Eve
    Left = 291
    Top = 453
  end
  object Tb_ParFPag: TQuery
    CachedUpdates = True
    BeforePost = Tb_ParFPagBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from PARFPAG')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_ParFPag
    Left = 577
    Top = 329
    object Tb_ParFPagPFCODEMP: TFloatField
      FieldName = 'PFCODEMP'
      Origin = 'SG_ASSOC.PARFPAG.PFCODEMP'
    end
    object Tb_ParFPagPFCODPAR: TFloatField
      FieldName = 'PFCODPAR'
      Origin = 'SG_ASSOC.PARFPAG.PFCODPAR'
    end
    object Tb_ParFPagPFCODSFAM: TFloatField
      FieldName = 'PFCODSFAM'
      Origin = 'SG_ASSOC.PARFPAG.PFCODSFAM'
    end
    object Tb_ParFPagPFCODINSS: TFloatField
      FieldName = 'PFCODINSS'
      Origin = 'SG_ASSOC.PARFPAG.PFCODINSS'
    end
    object Tb_ParFPagPFFINSS01A: TFloatField
      FieldName = 'PFFINSS01A'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS01A'
    end
    object Tb_ParFPagPFFINSS01B: TFloatField
      FieldName = 'PFFINSS01B'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS01B'
    end
    object Tb_ParFPagPFFINSS02A: TFloatField
      FieldName = 'PFFINSS02A'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS02A'
    end
    object Tb_ParFPagPFFINSS01: TFloatField
      FieldName = 'PFFINSS01'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS01'
    end
    object Tb_ParFPagPFFINSS02B: TFloatField
      FieldName = 'PFFINSS02B'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS02B'
    end
    object Tb_ParFPagPFFINSS02: TFloatField
      FieldName = 'PFFINSS02'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS02'
    end
    object Tb_ParFPagPFFINSS03A: TFloatField
      FieldName = 'PFFINSS03A'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS03A'
    end
    object Tb_ParFPagPFFINSS03B: TFloatField
      FieldName = 'PFFINSS03B'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS03B'
    end
    object Tb_ParFPagPFFINSS03: TFloatField
      FieldName = 'PFFINSS03'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS03'
    end
    object Tb_ParFPagPFFINSS04A: TFloatField
      FieldName = 'PFFINSS04A'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS04A'
    end
    object Tb_ParFPagPFFINSS04B: TFloatField
      FieldName = 'PFFINSS04B'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS04B'
    end
    object Tb_ParFPagPFFINSS04: TFloatField
      FieldName = 'PFFINSS04'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS04'
    end
    object Tb_ParFPagPFFINSS05A: TFloatField
      FieldName = 'PFFINSS05A'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS05A'
    end
    object Tb_ParFPagPFFINSS05B: TFloatField
      FieldName = 'PFFINSS05B'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS05B'
    end
    object Tb_ParFPagPFFINSS05: TFloatField
      FieldName = 'PFFINSS05'
      Origin = 'SG_ASSOC.PARFPAG.PFFINSS05'
    end
    object Tb_ParFPagPFCODFGTS: TFloatField
      FieldName = 'PFCODFGTS'
      Origin = 'SG_ASSOC.PARFPAG.PFCODFGTS'
    end
    object Tb_ParFPagPFFFGTS01A: TFloatField
      FieldName = 'PFFFGTS01A'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS01A'
    end
    object Tb_ParFPagPFFFGTS01B: TFloatField
      FieldName = 'PFFFGTS01B'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS01B'
    end
    object Tb_ParFPagPFFFGTS01: TFloatField
      FieldName = 'PFFFGTS01'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS01'
    end
    object Tb_ParFPagPFFFGTS02A: TFloatField
      FieldName = 'PFFFGTS02A'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS02A'
    end
    object Tb_ParFPagPFFFGTS02B: TFloatField
      FieldName = 'PFFFGTS02B'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS02B'
    end
    object Tb_ParFPagPFFFGTS02: TFloatField
      FieldName = 'PFFFGTS02'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS02'
    end
    object Tb_ParFPagPFFFGTS03A: TFloatField
      FieldName = 'PFFFGTS03A'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS03A'
    end
    object Tb_ParFPagPFFFGTS03B: TFloatField
      FieldName = 'PFFFGTS03B'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS03B'
    end
    object Tb_ParFPagPFFFGTS03: TFloatField
      FieldName = 'PFFFGTS03'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS03'
    end
    object Tb_ParFPagPFFFGTS04A: TFloatField
      FieldName = 'PFFFGTS04A'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS04A'
    end
    object Tb_ParFPagPFFFGTS04B: TFloatField
      FieldName = 'PFFFGTS04B'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS04B'
    end
    object Tb_ParFPagPFFFGTS04: TFloatField
      FieldName = 'PFFFGTS04'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS04'
    end
    object Tb_ParFPagPFFFGTS05A: TFloatField
      FieldName = 'PFFFGTS05A'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS05A'
    end
    object Tb_ParFPagPFFFGTS05B: TFloatField
      FieldName = 'PFFFGTS05B'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS05B'
    end
    object Tb_ParFPagPFFFGTS05: TFloatField
      FieldName = 'PFFFGTS05'
      Origin = 'SG_ASSOC.PARFPAG.PFFFGTS05'
    end
    object Tb_ParFPagPFCODIR: TFloatField
      FieldName = 'PFCODIR'
      Origin = 'SG_ASSOC.PARFPAG.PFCODIR'
    end
    object Tb_ParFPagPFFIR01A: TFloatField
      FieldName = 'PFFIR01A'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR01A'
    end
    object Tb_ParFPagPFFIR01B: TFloatField
      FieldName = 'PFFIR01B'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR01B'
    end
    object Tb_ParFPagPFFIR01: TFloatField
      FieldName = 'PFFIR01'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR01'
    end
    object Tb_ParFPagPFFIR02A: TFloatField
      FieldName = 'PFFIR02A'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR02A'
    end
    object Tb_ParFPagPFFIR02B: TFloatField
      FieldName = 'PFFIR02B'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR02B'
    end
    object Tb_ParFPagPFFIR02: TFloatField
      FieldName = 'PFFIR02'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR02'
    end
    object Tb_ParFPagPFFIR03A: TFloatField
      FieldName = 'PFFIR03A'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR03A'
    end
    object Tb_ParFPagPFFIR03B: TFloatField
      FieldName = 'PFFIR03B'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR03B'
    end
    object Tb_ParFPagPFFIR03: TFloatField
      FieldName = 'PFFIR03'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR03'
    end
    object Tb_ParFPagPFFIR04A: TFloatField
      FieldName = 'PFFIR04A'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR04A'
    end
    object Tb_ParFPagPFFIR04B: TFloatField
      FieldName = 'PFFIR04B'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR04B'
    end
    object Tb_ParFPagPFFIR04: TFloatField
      FieldName = 'PFFIR04'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR04'
    end
    object Tb_ParFPagPFFIR05A: TFloatField
      FieldName = 'PFFIR05A'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR05A'
    end
    object Tb_ParFPagPFFIR05B: TFloatField
      FieldName = 'PFFIR05B'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR05B'
    end
    object Tb_ParFPagPFFIR05: TFloatField
      FieldName = 'PFFIR05'
      Origin = 'SG_ASSOC.PARFPAG.PFFIR05'
    end
    object Tb_ParFPagPFCODSAL: TFloatField
      FieldName = 'PFCODSAL'
      Origin = 'SG_ASSOC.PARFPAG.PFCODSAL'
    end
    object Tb_ParFPagPFCODGRA: TFloatField
      FieldName = 'PFCODGRA'
      Origin = 'SG_ASSOC.PARFPAG.PFCODGRA'
    end
    object Tb_ParFPagPFQTDHM: TFloatField
      FieldName = 'PFQTDHM'
      Origin = 'SG_ASSOC.PARFPAG.PFQTDHM'
    end
    object Tb_ParFPagPFCODVT: TFloatField
      FieldName = 'PFCODVT'
      Origin = 'SG_ASSOC.PARFPAG.PFCODVT'
    end
    object Tb_ParFPagPFCODFER: TFloatField
      FieldName = 'PFCODFER'
      Origin = 'SG_ASSOC.PARFPAG.PFCODFER'
    end
    object Tb_ParFPagPFCODRES: TFloatField
      FieldName = 'PFCODRES'
      Origin = 'SG_ASSOC.PARFPAG.PFCODRES'
    end
    object Tb_ParFPagPFCODDTERUN: TFloatField
      FieldName = 'PFCODDTERUN'
      Origin = 'SG_ASSOC.PARFPAG.PFCODDTERUN'
    end
    object Tb_ParFPagPFCODDTER01: TFloatField
      FieldName = 'PFCODDTER01'
      Origin = 'SG_ASSOC.PARFPAG.PFCODDTER01'
    end
    object Tb_ParFPagPFCODDTER02: TFloatField
      FieldName = 'PFCODDTER02'
      Origin = 'SG_ASSOC.PARFPAG.PFCODDTER02'
    end
  end
  object Src_ParFPag: TDataSource
    DataSet = Tb_ParFPag
    Left = 606
    Top = 329
  end
  object Tb_Fun: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_FunBeforeInsert
    AfterInsert = Tb_FunAfterInsert
    BeforePost = Tb_FunBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_FunCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFUN')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Fun
    Left = 348
    Top = 146
    object Tb_FunCFCODEMP: TFloatField
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADFUN.CFCODEMP'
    end
    object Tb_FunCFCODFUN: TFloatField
      FieldName = 'CFCODFUN'
      Origin = 'SG_ASSOC.CADFUN.CFCODFUN'
    end
    object Tb_FunCFNOMFUN: TStringField
      FieldName = 'CFNOMFUN'
      Origin = 'SG_ASSOC.CADFUN.CFNOMFUN'
      Size = 40
    end
    object Tb_FunCFENDERECO: TStringField
      FieldName = 'CFENDERECO'
      Origin = 'SG_ASSOC.CADFUN.CFENDERECO'
      Size = 40
    end
    object Tb_FunCFBAIRRO: TStringField
      FieldName = 'CFBAIRRO'
      Origin = 'SG_ASSOC.CADFUN.CFBAIRRO'
      Size = 30
    end
    object Tb_FunCFNOMLOC: TStringField
      FieldName = 'CFNOMLOC'
      Origin = 'SG_ASSOC.CADFUN.CFNOMLOC'
      Size = 30
    end
    object Tb_FunCFUF: TStringField
      FieldName = 'CFUF'
      Origin = 'SG_ASSOC.CADFUN.CFUF'
      Size = 2
    end
    object Tb_FunCFCODBAI: TFloatField
      FieldName = 'CFCODBAI'
      Origin = 'SG_ASSOC.CADFUN.CFCODBAI'
    end
    object Tb_FunCFCODLOC: TFloatField
      FieldName = 'CFCODLOC'
      Origin = 'SG_ASSOC.CADFUN.CFCODLOC'
    end
    object Tb_FunCFCEP: TStringField
      FieldName = 'CFCEP'
      Origin = 'SG_ASSOC.CADFUN.CFCEP'
      Size = 9
    end
    object Tb_FunCFDTNAS: TDateTimeField
      FieldName = 'CFDTNAS'
      Origin = 'SG_ASSOC.CADFUN.CFDTNAS'
    end
    object Tb_FunCFNATURAL: TStringField
      FieldName = 'CFNATURAL'
      Origin = 'SG_ASSOC.CADFUN.CFNATURAL'
      Size = 30
    end
    object Tb_FunCFNAT_UF: TStringField
      FieldName = 'CFNAT_UF'
      Origin = 'SG_ASSOC.CADFUN.CFNAT_UF'
      Size = 2
    end
    object Tb_FunCFNACIONAL: TStringField
      FieldName = 'CFNACIONAL'
      Origin = 'SG_ASSOC.CADFUN.CFNACIONAL'
      Size = 40
    end
    object Tb_FunCFDTMIG: TDateTimeField
      FieldName = 'CFDTMIG'
      Origin = 'SG_ASSOC.CADFUN.CFDTMIG'
    end
    object Tb_FunCFNIVEL_ESC: TFloatField
      FieldName = 'CFNIVEL_ESC'
      Origin = 'SG_ASSOC.CADFUN.CFNIVEL_ESC'
    end
    object Tb_FunCFCNPF: TFloatField
      FieldName = 'CFCNPF'
      Origin = 'SG_ASSOC.CADFUN.CFCNPF'
    end
    object Tb_FunCFRG: TStringField
      FieldName = 'CFRG'
      Origin = 'SG_ASSOC.CADFUN.CFRG'
      Size = 40
    end
    object Tb_FunCFDTRG: TDateTimeField
      FieldName = 'CFDTRG'
      Origin = 'SG_ASSOC.CADFUN.CFDTRG'
    end
    object Tb_FunCFORGAORG: TStringField
      FieldName = 'CFORGAORG'
      Origin = 'SG_ASSOC.CADFUN.CFORGAORG'
      Size = 30
    end
    object Tb_FunCFCTPS: TStringField
      FieldName = 'CFCTPS'
      Origin = 'SG_ASSOC.CADFUN.CFCTPS'
      Size = 30
    end
    object Tb_FunCFRESERV: TStringField
      FieldName = 'CFRESERV'
      Origin = 'SG_ASSOC.CADFUN.CFRESERV'
      Size = 30
    end
    object Tb_FunCFTIT_ELE: TStringField
      FieldName = 'CFTIT_ELE'
      Origin = 'SG_ASSOC.CADFUN.CFTIT_ELE'
      Size = 30
    end
    object Tb_FunCFPIS: TStringField
      FieldName = 'CFPIS'
      Origin = 'SG_ASSOC.CADFUN.CFPIS'
      Size = 30
    end
    object Tb_FunCFHABIL: TStringField
      FieldName = 'CFHABIL'
      Origin = 'SG_ASSOC.CADFUN.CFHABIL'
      Size = 30
    end
    object Tb_FunCFEST_CIV: TFloatField
      FieldName = 'CFEST_CIV'
      Origin = 'SG_ASSOC.CADFUN.CFEST_CIV'
    end
    object Tb_FunCFSEXO: TFloatField
      FieldName = 'CFSEXO'
      Origin = 'SG_ASSOC.CADFUN.CFSEXO'
    end
    object Tb_FunCFCONJUGE: TStringField
      FieldName = 'CFCONJUGE'
      Origin = 'SG_ASSOC.CADFUN.CFCONJUGE'
      Size = 40
    end
    object Tb_FunCFPAI: TStringField
      FieldName = 'CFPAI'
      Origin = 'SG_ASSOC.CADFUN.CFPAI'
      Size = 40
    end
    object Tb_FunCFMAE: TStringField
      FieldName = 'CFMAE'
      Origin = 'SG_ASSOC.CADFUN.CFMAE'
      Size = 40
    end
    object Tb_FunCFN_DEP: TFloatField
      FieldName = 'CFN_DEP'
      Origin = 'SG_ASSOC.CADFUN.CFN_DEP'
    end
    object Tb_FunCFCODCAR: TFloatField
      FieldName = 'CFCODCAR'
      Origin = 'SG_ASSOC.CADFUN.CFCODCAR'
    end
    object Tb_FunCFCODDEP: TFloatField
      FieldName = 'CFCODDEP'
      Origin = 'SG_ASSOC.CADFUN.CFCODDEP'
    end
    object Tb_FunCFDT_ADM: TDateTimeField
      FieldName = 'CFDT_ADM'
      Origin = 'SG_ASSOC.CADFUN.CFDT_ADM'
    end
    object Tb_FunCFDT_DEM: TDateTimeField
      FieldName = 'CFDT_DEM'
      Origin = 'SG_ASSOC.CADFUN.CFDT_DEM'
    end
    object Tb_FunCFDT_CAD: TDateTimeField
      FieldName = 'CFDT_CAD'
      Origin = 'SG_ASSOC.CADFUN.CFDT_CAD'
    end
    object Tb_FunCFDT_UALT: TDateTimeField
      FieldName = 'CFDT_UALT'
      Origin = 'SG_ASSOC.CADFUN.CFDT_UALT'
    end
    object Tb_FunCFCODUSR: TFloatField
      FieldName = 'CFCODUSR'
      Origin = 'SG_ASSOC.CADFUN.CFCODUSR'
    end
    object Tb_FunCFSALARIO: TFloatField
      FieldName = 'CFSALARIO'
      Origin = 'SG_ASSOC.CADFUN.CFSALARIO'
    end
    object Tb_FunCFGRATIF: TFloatField
      FieldName = 'CFGRATIF'
      Origin = 'SG_ASSOC.CADFUN.CFGRATIF'
    end
    object Tb_FunCFSTATUS: TFloatField
      FieldName = 'CFSTATUS'
      Origin = 'SG_ASSOC.CADFUN.CFSTATUS'
    end
    object Tb_FunCFOBSL01: TStringField
      FieldName = 'CFOBSL01'
      Origin = 'SG_ASSOC.CADFUN.CFOBSL01'
      Size = 60
    end
    object Tb_FunCFOBSL02: TStringField
      FieldName = 'CFOBSL02'
      Origin = 'SG_ASSOC.CADFUN.CFOBSL02'
      Size = 60
    end
    object Tb_FunCFOBSL03: TStringField
      FieldName = 'CFOBSL03'
      Origin = 'SG_ASSOC.CADFUN.CFOBSL03'
      Size = 60
    end
    object Tb_FunCFOBSL04: TStringField
      FieldName = 'CFOBSL04'
      Origin = 'SG_ASSOC.CADFUN.CFOBSL04'
      Size = 60
    end
    object Tb_FunCFCBO: TStringField
      FieldName = 'CFCBO'
      Origin = 'SG_ASSOC.CADFUN.CFCBO'
      Size = 10
    end
    object Tb_FunCFFONE: TStringField
      FieldName = 'CFFONE'
      Origin = 'SG_ASSOC.CADFUN.CFFONE'
      Size = 30
    end
    object Tb_FunCFCELULAR: TStringField
      FieldName = 'CFCELULAR'
      Origin = 'SG_ASSOC.CADFUN.CFCELULAR'
      Size = 30
    end
    object Tb_FunCFUFCTPS: TStringField
      FieldName = 'CFUFCTPS'
      Origin = 'SG_ASSOC.CADFUN.CFUFCTPS'
      Size = 2
    end
    object Tb_FunCFUFRG: TStringField
      FieldName = 'CFUFRG'
      Origin = 'SG_ASSOC.CADFUN.CFUFRG'
      Size = 2
    end
    object Tb_FunCFCATGRESV: TStringField
      FieldName = 'CFCATGRESV'
      Origin = 'SG_ASSOC.CADFUN.CFCATGRESV'
      Size = 40
    end
    object Tb_FunCFUFRESV: TStringField
      FieldName = 'CFUFRESV'
      Origin = 'SG_ASSOC.CADFUN.CFUFRESV'
      Size = 2
    end
    object Tb_FunCFTITZONA: TStringField
      FieldName = 'CFTITZONA'
      Origin = 'SG_ASSOC.CADFUN.CFTITZONA'
      Size = 5
    end
    object Tb_FunCFTITSECAO: TStringField
      FieldName = 'CFTITSECAO'
      Origin = 'SG_ASSOC.CADFUN.CFTITSECAO'
      Size = 6
    end
    object Tb_FunCFTITLOC: TFloatField
      FieldName = 'CFTITLOC'
      Origin = 'SG_ASSOC.CADFUN.CFTITLOC'
    end
    object Tb_FunCFTITUF: TStringField
      FieldName = 'CFTITUF'
      Origin = 'SG_ASSOC.CADFUN.CFTITUF'
      Size = 2
    end
    object Tb_FunCFTITDTEM: TDateTimeField
      FieldName = 'CFTITDTEM'
      Origin = 'SG_ASSOC.CADFUN.CFTITDTEM'
    end
    object Tb_FunCFCATGHB: TStringField
      FieldName = 'CFCATGHB'
      Origin = 'SG_ASSOC.CADFUN.CFCATGHB'
      Size = 15
    end
    object Tb_FunCFDTVLHB: TDateTimeField
      FieldName = 'CFDTVLHB'
      Origin = 'SG_ASSOC.CADFUN.CFDTVLHB'
    end
    object Tb_FunCFLOCNATU: TFloatField
      FieldName = 'CFLOCNATU'
      Origin = 'SG_ASSOC.CADFUN.CFLOCNATU'
    end
    object Tb_FunCFTIPEMP: TFloatField
      FieldName = 'CFTIPEMP'
      Origin = 'SG_ASSOC.CADFUN.CFTIPEMP'
    end
    object Tb_FunCFDTEMCTPS: TDateTimeField
      FieldName = 'CFDTEMCTPS'
      Origin = 'SG_ASSOC.CADFUN.CFDTEMCTPS'
    end
    object Tb_FunCFTIPOEMP: TFloatField
      FieldName = 'CFTIPOEMP'
      Origin = 'SG_ASSOC.CADFUN.CFTIPOEMP'
    end
    object Tb_FunCFDEPTDESC: TStringField
      FieldName = 'CFDEPTDESC'
      Origin = 'SG_ASSOC.CADFUN.CFDEPTDESC'
      Size = 35
    end
    object Tb_FunCFCRGODESC: TStringField
      FieldName = 'CFCRGODESC'
      Origin = 'SG_ASSOC.CADFUN.CFCRGODESC'
      Size = 35
    end
    object Tb_FunCFCODSIND: TFloatField
      FieldName = 'CFCODSIND'
      Origin = 'SG_ASSOC.CADFUN.CFCODSIND'
    end
    object Tb_FunCFNOMESIND: TStringField
      FieldName = 'CFNOMESIND'
      Origin = 'SG_ASSOC.CADFUN.CFNOMESIND'
      Size = 35
    end
    object Tb_FunCFIMPOSTO: TStringField
      FieldName = 'CFIMPOSTO'
      Origin = 'SG_ASSOC.CADFUN.CFIMPOSTO'
      Size = 1
    end
    object Tb_FunCFALTURA: TFloatField
      FieldName = 'CFALTURA'
      Origin = 'SG_ASSOC.CADFUN.CFALTURA'
    end
    object Tb_FunCFPESO: TFloatField
      FieldName = 'CFPESO'
      Origin = 'SG_ASSOC.CADFUN.CFPESO'
    end
    object Tb_FunCFNUMCALCA: TFloatField
      FieldName = 'CFNUMCALCA'
      Origin = 'SG_ASSOC.CADFUN.CFNUMCALCA'
    end
    object Tb_FunCFNUMCAMISA: TFloatField
      FieldName = 'CFNUMCAMISA'
      Origin = 'SG_ASSOC.CADFUN.CFNUMCAMISA'
    end
    object Tb_FunCFNUMCALCADO: TFloatField
      FieldName = 'CFNUMCALCADO'
      Origin = 'SG_ASSOC.CADFUN.CFNUMCALCADO'
    end
    object Tb_FunCFPOSTO: TFloatField
      FieldName = 'CFPOSTO'
      Origin = 'SG_ASSOC.CADFUN.CFPOSTO'
    end
    object Tb_FunCFTURNO: TFloatField
      FieldName = 'CFTURNO'
      Origin = 'SG_ASSOC.CADFUN.CFTURNO'
    end
    object Tb_FunCFFOLGA: TFloatField
      FieldName = 'CFFOLGA'
      Origin = 'SG_ASSOC.CADFUN.CFFOLGA'
    end
    object Tb_FunCFSERIECTPS: TStringField
      FieldName = 'CFSERIECTPS'
      Origin = 'SG_ASSOC.CADFUN.CFSERIECTPS'
    end
    object Tb_FunCFDGTOCTPS: TStringField
      FieldName = 'CFDGTOCTPS'
      Origin = 'SG_ASSOC.CADFUN.CFDGTOCTPS'
      Size = 2
    end
    object Tb_FunCFTIPOPIS: TFloatField
      FieldName = 'CFTIPOPIS'
      Origin = 'SG_ASSOC.CADFUN.CFTIPOPIS'
    end
    object Tb_FunCFDTPIS: TDateTimeField
      FieldName = 'CFDTPIS'
      Origin = 'SG_ASSOC.CADFUN.CFDTPIS'
    end
    object Tb_FunCFBCOPIS: TFloatField
      FieldName = 'CFBCOPIS'
      Origin = 'SG_ASSOC.CADFUN.CFBCOPIS'
    end
    object Tb_FunCFDTEMHB: TDateTimeField
      FieldName = 'CFDTEMHB'
      Origin = 'SG_ASSOC.CADFUN.CFDTEMHB'
    end
    object Tb_FunCFMAIL: TStringField
      FieldName = 'CFMAIL'
      Origin = 'SG_ASSOC.CADFUN.CFMAIL'
      Size = 40
    end
    object Tb_FunCFRACA: TFloatField
      FieldName = 'CFRACA'
      Origin = 'SG_ASSOC.CADFUN.CFRACA'
    end
    object Tb_FunCFDEFICIENCIA: TFloatField
      FieldName = 'CFDEFICIENCIA'
      Origin = 'SG_ASSOC.CADFUN.CFDEFICIENCIA'
    end
    object Tb_FunCFTIPODEF: TStringField
      FieldName = 'CFTIPODEF'
      Origin = 'SG_ASSOC.CADFUN.CFTIPODEF'
      Size = 30
    end
    object Tb_FunCFGSANGUE: TStringField
      FieldName = 'CFGSANGUE'
      Origin = 'SG_ASSOC.CADFUN.CFGSANGUE'
      Size = 30
    end
    object Tb_FunCFTIPO: TFloatField
      FieldName = 'CFTIPO'
      Origin = 'SG_ASSOC.CADFUN.CFTIPO'
    end
    object Tb_FunCFNR_REGISTRO: TStringField
      FieldName = 'CFNR_REGISTRO'
      Origin = 'SG_ASSOC.CADFUN.CFNR_REGISTRO'
    end
    object Tb_FunCFORGAO_REGISTRO: TStringField
      FieldName = 'CFORGAO_REGISTRO'
      Origin = 'SG_ASSOC.CADFUN.CFORGAO_REGISTRO'
    end
    object Tb_FunCFDT_REGISTRO: TDateTimeField
      FieldName = 'CFDT_REGISTRO'
      Origin = 'SG_ASSOC.CADFUN.CFDT_REGISTRO'
    end
    object Tb_FunCFNUMERO: TStringField
      FieldName = 'CFNUMERO'
      Origin = 'SG_ASSOC.CADFUN.CFNUMERO'
    end
    object Tb_FunCFCOMPL: TStringField
      FieldName = 'CFCOMPL'
      Origin = 'SG_ASSOC.CADFUN.CFCOMPL'
    end
    object Tb_FunNOMCAR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMCAR'
      Calculated = True
    end
    object Tb_FunNOMDEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMDEP'
      Calculated = True
    end
    object Tb_FunCFIMOB: TFloatField
      FieldName = 'CFIMOB'
      Origin = 'SG_ASSOC.CADFUN.CFIMOB'
    end
  end
  object Src_Fun: TDataSource
    DataSet = Tb_Fun
    Left = 410
    Top = 147
  end
  object Tb_EvePref: TQuery
    CachedUpdates = True
    AfterInsert = Tb_EvePrefAfterInsert
    BeforeEdit = Tb_EvePrefBeforeEdit
    BeforePost = Tb_EvePrefBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_EvePrefCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from EVEPREF where EPCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_EvePref
    Left = 353
    Top = 50
    object Tb_EvePrefEPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'EPCODEMP'
      Origin = 'SG_ASSOC.EVEPREF.EPCODEMP'
    end
    object Tb_EvePrefEPLOCAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'EPLOCAL'
      Origin = 'SG_ASSOC.EVEPREF.EPLOCAL'
    end
    object Tb_EvePrefEPCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Funcionario'
      FieldName = 'EPCODCLI'
      Origin = 'SG_ASSOC.EVEPREF.EPCODCLI'
    end
    object Tb_EvePrefEPCODEVE: TFloatField
      DisplayLabel = 'C'#243'digo Evento'
      FieldName = 'EPCODEVE'
      Origin = 'SG_ASSOC.EVEPREF.EPCODEVE'
    end
    object Tb_EvePrefnomeve: TStringField
      DisplayLabel = 'Nome do Evento'
      FieldKind = fkCalculated
      FieldName = 'nomeve'
      Size = 40
      Calculated = True
    end
    object Tb_EvePrefEPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPQUANT'
      Origin = 'SG_ASSOC.EVEPREF.EPQUANT'
    end
  end
  object Src_EvePref: TDataSource
    DataSet = Tb_EvePref
    Left = 410
    Top = 50
  end
  object Tb_LFol: TQuery
    CachedUpdates = True
    BeforePost = Tb_LFolBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADLFOL')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_LFol
    Left = 582
    Top = 6
    object Tb_LFolLCCODEMP: TFloatField
      FieldName = 'LCCODEMP'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEMP'
    end
    object Tb_LFolLCLOCAL: TFloatField
      FieldName = 'LCLOCAL'
      Origin = 'SG_ASSOC.CADLFOL.LCLOCAL'
    end
    object Tb_LFolLCMES: TFloatField
      FieldName = 'LCMES'
      Origin = 'SG_ASSOC.CADLFOL.LCMES'
    end
    object Tb_LFolLCANO: TFloatField
      FieldName = 'LCANO'
      Origin = 'SG_ASSOC.CADLFOL.LCANO'
    end
    object Tb_LFolLCCODFUN: TFloatField
      FieldName = 'LCCODFUN'
      Origin = 'SG_ASSOC.CADLFOL.LCCODFUN'
    end
    object Tb_LFolLCCODEVE: TFloatField
      FieldName = 'LCCODEVE'
      Origin = 'SG_ASSOC.CADLFOL.LCCODEVE'
    end
    object Tb_LFolLCQTD: TFloatField
      FieldName = 'LCQTD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTD'
    end
    object Tb_LFolLCNAT: TFloatField
      FieldName = 'LCNAT'
      Origin = 'SG_ASSOC.CADLFOL.LCNAT'
    end
    object Tb_LFolLCTIPO: TFloatField
      FieldName = 'LCTIPO'
      Origin = 'SG_ASSOC.CADLFOL.LCTIPO'
    end
    object Tb_LFolLCVALOR: TFloatField
      FieldName = 'LCVALOR'
      Origin = 'SG_ASSOC.CADLFOL.LCVALOR'
    end
    object Tb_LFolLCINCINSS: TFloatField
      FieldName = 'LCINCINSS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCINSS'
    end
    object Tb_LFolLCINCFGTS: TFloatField
      FieldName = 'LCINCFGTS'
      Origin = 'SG_ASSOC.CADLFOL.LCINCFGTS'
    end
    object Tb_LFolLCINCIR: TFloatField
      FieldName = 'LCINCIR'
      Origin = 'SG_ASSOC.CADLFOL.LCINCIR'
    end
    object Tb_LFolLCQTDPAD: TFloatField
      DisplayLabel = 'Quantidade Padr'#227'o'
      FieldName = 'LCQTDPAD'
      Origin = 'SG_ASSOC.CADLFOL.LCQTDPAD'
    end
    object Tb_LFolLCSOMA: TFloatField
      DisplayLabel = 'Soma nos totais: 0-Sim 1-Nao'
      FieldName = 'LCSOMA'
      Origin = 'SG_ASSOC.CADLFOL.LCSOMA'
    end
    object Tb_LFolLCINCVT: TFloatField
      FieldName = 'LCINCVT'
      Origin = 'SG_ASSOC.CADLFOL.LCINCVT'
    end
    object Tb_LFolLCTOTAL: TFloatField
      FieldName = 'LCTOTAL'
      Origin = 'SG_ASSOC.CADLFOL.LCTOTAL'
    end
  end
  object Src_LFol: TDataSource
    DataSet = Tb_LFol
    Left = 641
    Top = 6
  end
  object Src_RFol: TDataSource
    DataSet = Tb_RFol
    Left = 627
    Top = 467
  end
  object Tb_RFol: TQuery
    CachedUpdates = True
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADRFOL ')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_RFol
    Left = 570
    Top = 467
    object Tb_RFolRFCODEMP: TFloatField
      FieldName = 'RFCODEMP'
      Origin = 'SG_ASSOC.CADRFOL.RFCODEMP'
    end
    object Tb_RFolRFLOCAL: TFloatField
      FieldName = 'RFLOCAL'
      Origin = 'SG_ASSOC.CADRFOL.RFLOCAL'
    end
    object Tb_RFolRFMES: TFloatField
      FieldName = 'RFMES'
      Origin = 'SG_ASSOC.CADRFOL.RFMES'
    end
    object Tb_RFolRFANO: TFloatField
      FieldName = 'RFANO'
      Origin = 'SG_ASSOC.CADRFOL.RFANO'
    end
    object Tb_RFolRFCODFUN: TFloatField
      FieldName = 'RFCODFUN'
      Origin = 'SG_ASSOC.CADRFOL.RFCODFUN'
    end
    object Tb_RFolRFBASEFGTS: TFloatField
      FieldName = 'RFBASEFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEFGTS'
    end
    object Tb_RFolRFVLRFGTS: TFloatField
      FieldName = 'RFVLRFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRFGTS'
    end
    object Tb_RFolRFBASEINSS: TFloatField
      FieldName = 'RFBASEINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEINSS'
    end
    object Tb_RFolRFVLRINSS: TFloatField
      FieldName = 'RFVLRINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRINSS'
    end
    object Tb_RFolRFBASEVT: TFloatField
      FieldName = 'RFBASEVT'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEVT'
    end
    object Tb_RFolRFALFGTS: TFloatField
      FieldName = 'RFALFGTS'
      Origin = 'SG_ASSOC.CADRFOL.RFALFGTS'
    end
    object Tb_RFolRFALINSS: TFloatField
      FieldName = 'RFALINSS'
      Origin = 'SG_ASSOC.CADRFOL.RFALINSS'
    end
    object Tb_RFolRFALVT: TFloatField
      FieldName = 'RFALVT'
      Origin = 'SG_ASSOC.CADRFOL.RFALVT'
    end
    object Tb_RFolRFBASEIR: TFloatField
      FieldName = 'RFBASEIR'
      Origin = 'SG_ASSOC.CADRFOL.RFBASEIR'
    end
    object Tb_RFolRFALIR: TFloatField
      FieldName = 'RFALIR'
      Origin = 'SG_ASSOC.CADRFOL.RFALIR'
    end
    object Tb_RFolRFVLRIR: TFloatField
      FieldName = 'RFVLRIR'
      Origin = 'SG_ASSOC.CADRFOL.RFVLRIR'
    end
    object Tb_RFolRFTOTVEN: TFloatField
      FieldName = 'RFTOTVEN'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTVEN'
    end
    object Tb_RFolRFTOTDES: TFloatField
      FieldName = 'RFTOTDES'
      Origin = 'SG_ASSOC.CADRFOL.RFTOTDES'
    end
    object Tb_RFolRFSALBASE: TFloatField
      FieldName = 'RFSALBASE'
      Origin = 'SG_ASSOC.CADRFOL.RFSALBASE'
    end
  end
  object U_CCob: TUpdateSQL
    ModifySQL.Strings = (
      'update CARCOB'
      'set'
      '  CCCODEMP = :CCCODEMP,'
      '  CCCHAVE = :CCCHAVE,'
      '  CCNUMERO = :CCNUMERO,'
      '  CCDESD = :CCDESD,'
      '  CCDUP = :CCDUP,'
      '  CCVALOR = :CCVALOR,'
      '  CCDTVCTO = :CCDTVCTO,'
      '  CCDTPAG = :CCDTPAG,'
      '  CCJURDIA = :CCJURDIA,'
      '  CCCODCLI = :CCCODCLI,'
      '  CCVLRENCAR = :CCVLRENCAR,'
      '  CCDTEMIS = :CCDTEMIS,'
      '  CCLOTSEQ = :CCLOTSEQ'
      'where'
      '  CCCODEMP = :OLD_CCCODEMP and'
      '  CCCHAVE = :OLD_CCCHAVE and'
      '  CCNUMERO = :OLD_CCNUMERO and'
      '  CCDESD = :OLD_CCDESD and'
      '  CCDUP = :OLD_CCDUP')
    InsertSQL.Strings = (
      'insert into CARCOB'
      
        '  (CCCODEMP, CCCHAVE, CCNUMERO, CCDESD, CCDUP, CCVALOR, CCDTVCTO' +
        ', '
      'CCDTPAG, '
      '   CCJURDIA, CCCODCLI, CCVLRENCAR, CCDTEMIS, CCLOTSEQ)'
      'values'
      '  (:CCCODEMP, :CCCHAVE, :CCNUMERO, :CCDESD, :CCDUP, :CCVALOR, '
      ':CCDTVCTO, '
      
        '   :CCDTPAG, :CCJURDIA, :CCCODCLI, :CCVLRENCAR, :CCDTEMIS, :CCLO' +
        'TSEQ)')
    DeleteSQL.Strings = (
      'delete from CARCOB'
      'where'
      '  CCCODEMP = :OLD_CCCODEMP and'
      '  CCCHAVE = :OLD_CCCHAVE and'
      '  CCNUMERO = :OLD_CCNUMERO and'
      '  CCDESD = :OLD_CCDESD and'
      '  CCDUP = :OLD_CCDUP')
    Left = 263
    Top = 4
  end
  object U_PPR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPPR'
      'set'
      '  PPCODEMP = :PPCODEMP,'
      '  PPPROMOCAO = :PPPROMOCAO,'
      '  PPPVTIP = :PPPVTIP,'
      '  PPPVTAB = :PPPVTAB,'
      '  PPCODRED = :PPCODRED,'
      '  PPCODREG = :PPCODREG,'
      '  PPFLAG = :PPFLAG,'
      '  PPCODPRO = :PPCODPRO,'
      '  PPGRADE = :PPGRADE,'
      '  PPDATINI = :PPDATINI,'
      '  PPDATFIN = :PPDATFIN,'
      '  PPCODGRU = :PPCODGRU,'
      '  PPPCOVDA = :PPPCOVDA,'
      '  PPDESC_1 = :PPDESC_1,'
      '  PPDESC_2 = :PPDESC_2,'
      '  PPDESC_3 = :PPDESC_3,'
      '  PPCONFVDA = :PPCONFVDA,'
      '  PPCOMIS = :PPCOMIS,'
      '  PPQTDMIN = :PPQTDMIN,'
      '  PPVALMIN = :PPVALMIN,'
      '  PPOBS = :PPOBS,'
      '  PPKIT = :PPKIT,'
      '  PPDESC_F = :PPDESC_F,'
      '  PPPRIOR = :PPPRIOR,'
      '  PPDATHOR_ALT = :PPDATHOR_ALT'
      '  ,PPDATHOR_INC = :PPDATHOR_INC'
      '  ,PPCODCLI = :PPCODCLI'
      '  ,PPID_ANO = :PPID_ANO'
      '  ,PPID =:PPID'
      '  ,PPUF = :PPUF'
      ''
      ''
      'where'
      '  PPCODEMP = :OLD_PPCODEMP and'
      '  PPPROMOCAO = :OLD_PPPROMOCAO and'
      '  PPCODPRO = :OLD_PPCODPRO')
    InsertSQL.Strings = (
      'insert into CADPPR'
      '  (PPCODEMP, PPPROMOCAO, PPPVTIP, PPPVTAB, PPCODRED, PPCODREG, '
      'PPFLAG, '
      '   PPCODPRO, PPGRADE, PPDATINI, PPDATFIN, PPCODGRU, PPPCOVDA, '
      'PPDESC_1,'
      '   PPDESC_2, PPDESC_3, PPCONFVDA, PPCOMIS, PPQTDMIN, PPVALMIN,'
      'PPOBS, PPKIT,'
      '   PPDESC_F, PPPRIOR'
      ',PPDATHOR_ALT,PPDATHOR_INC,PPCODCLI'
      ',PPID_ANO,PPID'
      ',PPUF'
      ' )'
      'values'
      
        '  (:PPCODEMP, :PPPROMOCAO, :PPPVTIP, :PPPVTAB, :PPCODRED, :PPCOD' +
        'REG,'
      ':PPFLAG,'
      
        '   :PPCODPRO, :PPGRADE, :PPDATINI, :PPDATFIN, :PPCODGRU, :PPPCOV' +
        'DA,'
      ':PPDESC_1,'
      
        '   :PPDESC_2, :PPDESC_3, :PPCONFVDA, :PPCOMIS, :PPQTDMIN, :PPVAL' +
        'MIN,'
      ':PPOBS,'
      '   :PPKIT, :PPDESC_F, :PPPRIOR'
      ',:PPDATHOR_ALT,:PPDATHOR_INC ,:PPCODCLI'
      ',:PPID_ANO ,:PPID'
      ',:PPUF'
      '  )'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from CADPPR'
      'where'
      '  PPCODEMP = :OLD_PPCODEMP and'
      '  PPPROMOCAO = :OLD_PPPROMOCAO and'
      '  PPCODPRO = :OLD_PPCODPRO')
    Left = 634
    Top = 418
  end
  object U_Arq: TUpdateSQL
    ModifySQL.Strings = (
      'update CADARQ2'
      'set'
      '  CANOMARQ = :CANOMARQ,'
      '  CANOMCAM = :CANOMCAM,'
      '  CANOMREG = :CANOMREG,'
      '  CATIPO = :CATIPO,'
      '  CATITULO = :CATITULO,'
      '  CATAMANHO = :CATAMANHO,'
      '  CADECIMAL = :CADECIMAL'
      'where'
      '  CANOMARQ = :OLD_CANOMARQ and'
      '  CANOMCAM = :OLD_CANOMCAM and'
      '  CANOMREG = :OLD_CANOMREG and'
      '  CATIPO = :OLD_CATIPO')
    InsertSQL.Strings = (
      'insert into CADARQ2'
      '  (CANOMARQ, CANOMCAM, CANOMREG, CATIPO, CATITULO, CATAMANHO, '
      'CADECIMAL)'
      'values'
      
        '  (:CANOMARQ, :CANOMCAM, :CANOMREG, :CATIPO, :CATITULO, :CATAMAN' +
        'HO, '
      ':CADECIMAL)')
    DeleteSQL.Strings = (
      'delete from CADARQ2'
      'where'
      '  CANOMARQ = :OLD_CANOMARQ and'
      '  CANOMCAM = :OLD_CANOMCAM and'
      '  CANOMREG = :OLD_CANOMREG and'
      '  CATIPO = :OLD_CATIPO')
    Left = 174
    Top = 366
  end
  object U_CFR: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCFR'
      'set'
      '  RCODEMP = :RCODEMP,'
      '  RTABELA = :RTABELA,'
      '  RMODELO = :RMODELO,'
      '  RORDEM = :RORDEM,'
      '  RSTATUS = :RSTATUS,'
      '  RMEMO = :RMEMO,'
      '  RHORA = :RHORA,'
      '  RQTDCOL = :RQTDCOL,'
      '  RINC2 = :RINC2,'
      '  RINC3 = :RINC3,'
      '  RFIRMA = :RFIRMA,'
      '  RSEPARA = :RSEPARA,'
      '  RSALTAR = :RSALTAR,'
      '  RDATA = :RDATA,'
      '  RPAG = :RPAG,'
      '  RQTDLIN = :RQTDLIN,'
      '  RTPCOL = :RTPCOL,'
      '  RLINIC = :RLINIC'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RTABELA = :OLD_RTABELA and'
      '  RMODELO = :OLD_RMODELO and'
      '  RORDEM = :OLD_RORDEM and'
      '  RSTATUS = :OLD_RSTATUS')
    InsertSQL.Strings = (
      'insert into CADCFR'
      '  (RCODEMP, RTABELA, RMODELO, RORDEM, RSTATUS, RMEMO, RHORA, '
      'RQTDCOL, RINC2, '
      
        '   RINC3, RFIRMA, RSEPARA, RSALTAR, RDATA, RPAG, RQTDLIN, RTPCOL' +
        ', '
      'RLINIC)'
      'values'
      
        '  (:RCODEMP, :RTABELA, :RMODELO, :RORDEM, :RSTATUS, :RMEMO, :RHO' +
        'RA, '
      ':RQTDCOL, '
      
        '   :RINC2, :RINC3, :RFIRMA, :RSEPARA, :RSALTAR, :RDATA, :RPAG, :' +
        'RQTDLIN, '
      '   :RTPCOL, :RLINIC)')
    DeleteSQL.Strings = (
      'delete from CADCFR'
      'where'
      '  RCODEMP = :OLD_RCODEMP and'
      '  RTABELA = :OLD_RTABELA and'
      '  RMODELO = :OLD_RMODELO and'
      '  RORDEM = :OLD_RORDEM and'
      '  RSTATUS = :OLD_RSTATUS')
    Left = 291
    Top = 49
  end
  object U_Dep_Folha: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDEPTO'
      'set'
      '  DPCODEMP = :DPCODEMP,'
      '  DPCODDEP = :DPCODDEP,'
      '  DPNOME = :DPNOME'
      'where'
      '  DPCODEMP = :OLD_DPCODEMP and'
      '  DPCODDEP = :OLD_DPCODDEP')
    InsertSQL.Strings = (
      'insert into CADDEPTO'
      '  (DPCODEMP, DPCODDEP, DPNOME)'
      'values'
      '  (:DPCODEMP, :DPCODDEP, :DPNOME)')
    DeleteSQL.Strings = (
      'delete from CADDEPTO'
      'where'
      '  DPCODEMP = :OLD_DPCODEMP and'
      '  DPCODDEP = :OLD_DPCODDEP')
    Left = 262
    Top = 96
  end
  object U_Emp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEMP'
      'set'
      '  CODEMP = :CODEMP,'
      '  RAZAO = :RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  RESPONS = :RESPONS,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CGC = :CGC,'
      '  INSCRICAO = :INSCRICAO,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  E_MAIL = :E_MAIL,'
      '  PRESID = :PRESID,'
      '  FONEP = :FONEP,'
      '  DIRETOR = :DIRETOR,'
      '  FONED = :FONED,'
      '  CEP = :CEP,'
      '  CAMINHO = :CAMINHO,'
      '  TELEVENDAS = :TELEVENDAS,'
      '  DATACAD = :DATACAD,'
      '  DATAALT = :DATAALT,'
      '  PA001 = :PA001,'
      '  PA002 = :PA002,'
      '  PA003 = :PA003,'
      '  FONERES = :FONERES,'
      '  FUNCAORES = :FUNCAORES,'
      '  INSCMUNIC = :INSCMUNIC,'
      '  CERTREG = :CERTREG,'
      '  AUTFUNC = :AUTFUNC,'
      '  AUTESP = :AUTESP,'
      '  ALVFUNC = :ALVFUNC,'
      '  JUCEG = :JUCEG,'
      '  RAZAO_CAB = :RAZAO_CAB,'
      '  FANTASIA_CAB = :FANTASIA_CAB,'
      '  CONTADOR = :CONTADOR,'
      '  CRC_CONTADOR = :CRC_CONTADOR,'
      '  FECMEN = :FECMEN,'
      '  BLOQ = :BLOQ,'
      '  STATUS = :STATUS,'
      '  CNPF = :CNPF,'
      '  RG = :RG,'
      '  HOMEPAGE = :HOMEPAGE,'
      '  CODLOC = :CODLOC,'
      '  CODSERV_PREST = :CODSERV_PREST,'
      '  EMP_CNAE = :EMP_CNAE,'
      '  EMP_OPTSIMPLES = :EMP_OPTSIMPLES,'
      '  EMP_INC_CULTURAL = :EMP_INC_CULTURAL,'
      '  EMP_SUFRAMA = :EMP_SUFRAMA,'
      '  EMP_INSC_PISPASEP = :EMP_INSC_PISPASEP,'
      '  EMP_CONT_CPF = :EMP_CONT_CPF,'
      '  EMP_CONT_CNPJ = :EMP_CONT_CNPJ,'
      '  EMP_CONT_CEP = :EMP_CONT_CEP,'
      '  EMP_CONT_ENDER = :EMP_CONT_ENDER,'
      '  EMP_CONT_NUM_END = :EMP_CONT_NUM_END,'
      '  EMP_CONT_COMP_END = :EMP_CONT_COMP_END,'
      '  EMP_CONT_BAIRRO = :EMP_CONT_BAIRRO,'
      '  EMP_CONT_CODLOC = :EMP_CONT_CODLOC,'
      '  EMP_CONT_NOMLOC = :EMP_CONT_NOMLOC,'
      '  EMP_CONT_UF = :EMP_CONT_UF,'
      '  EMP_CONT_FONE = :EMP_CONT_FONE,'
      '  EMP_CONT_FAX = :EMP_CONT_FAX,'
      '  EMP_CONT_EMAIL = :EMP_CONT_EMAIL,'
      '  EMP_IND_NAT_PJ = :EMP_IND_NAT_PJ,'
      '  EMP_IND_ATIV = :EMP_IND_ATIV,'
      '  EMP_CPF_RESPONS = :EMP_CPF_RESPONS'
      '  ,EMP_AUTXML_CNPJCPF=:EMP_AUTXML_CNPJCPF'
      '  ,EMP_WHATSAPP_AUTO = :EMP_WHATSAPP_AUTO'
      '  ,EMP_WHATSAPP_ID = :EMP_WHATSAPP_ID'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  RAZAO = :OLD_RAZAO')
    InsertSQL.Strings = (
      'insert into CADEMP'
      
        '  (CODEMP, RAZAO, FANTASIA, ENDERECO, NUMERO, RESPONS, BAIRRO, C' +
        'IDADE, '
      
        '   UF, CGC, INSCRICAO, FONE, FAX, E_MAIL, PRESID, FONEP, DIRETOR' +
        ', FONED, '
      
        '   CEP, CAMINHO, TELEVENDAS, DATACAD, DATAALT, PA001, PA002, PA0' +
        '03, FONERES, '
      
        '   FUNCAORES, INSCMUNIC, CERTREG, AUTFUNC, AUTESP, ALVFUNC, JUCE' +
        'G, RAZAO_CAB, '
      
        '   FANTASIA_CAB, CONTADOR, CRC_CONTADOR, FECMEN, BLOQ, STATUS, C' +
        'NPF, RG, '
      
        '   HOMEPAGE, CODLOC, CODSERV_PREST, EMP_CNAE, EMP_OPTSIMPLES, EM' +
        'P_INC_CULTURAL, '
      
        '   EMP_SUFRAMA, EMP_INSC_PISPASEP, EMP_CONT_CPF, EMP_CONT_CNPJ, ' +
        'EMP_CONT_CEP, '
      
        '   EMP_CONT_ENDER, EMP_CONT_NUM_END, EMP_CONT_COMP_END, EMP_CONT' +
        '_BAIRRO, '
      
        '   EMP_CONT_CODLOC, EMP_CONT_NOMLOC, EMP_CONT_UF, EMP_CONT_FONE,' +
        ' EMP_CONT_FAX, '
      
        '   EMP_CONT_EMAIL, EMP_IND_NAT_PJ, EMP_IND_ATIV, EMP_CPF_RESPONS' +
        ',EMP_AUTXML_CNPJCPF'
      '   ,EMP_WHATSAPP_AUTO,EMP_WHATSAPP_ID)'
      'values'
      
        '  (:CODEMP, :RAZAO, :FANTASIA, :ENDERECO, :NUMERO, :RESPONS, :BA' +
        'IRRO, :CIDADE,'
      
        '   :UF, :CGC, :INSCRICAO, :FONE, :FAX, :E_MAIL, :PRESID, :FONEP,' +
        ' :DIRETOR,'
      
        '   :FONED, :CEP, :CAMINHO, :TELEVENDAS, :DATACAD, :DATAALT, :PA0' +
        '01, :PA002,'
      
        '   :PA003, :FONERES, :FUNCAORES, :INSCMUNIC, :CERTREG, :AUTFUNC,' +
        ' :AUTESP,'
      
        '   :ALVFUNC, :JUCEG, :RAZAO_CAB, :FANTASIA_CAB, :CONTADOR, :CRC_' +
        'CONTADOR,'
      
        '   :FECMEN, :BLOQ, :STATUS, :CNPF, :RG, :HOMEPAGE, :CODLOC, :COD' +
        'SERV_PREST,'
      
        '   :EMP_CNAE, :EMP_OPTSIMPLES, :EMP_INC_CULTURAL, :EMP_SUFRAMA, ' +
        ':EMP_INSC_PISPASEP,'
      
        '   :EMP_CONT_CPF, :EMP_CONT_CNPJ, :EMP_CONT_CEP, :EMP_CONT_ENDER' +
        ', :EMP_CONT_NUM_END,'
      
        '   :EMP_CONT_COMP_END, :EMP_CONT_BAIRRO, :EMP_CONT_CODLOC, :EMP_' +
        'CONT_NOMLOC,'
      
        '   :EMP_CONT_UF, :EMP_CONT_FONE, :EMP_CONT_FAX, :EMP_CONT_EMAIL,' +
        ' :EMP_IND_NAT_PJ,'
      '   :EMP_IND_ATIV, :EMP_CPF_RESPONS,:EMP_AUTXML_CNPJCPF'
      '   ,:EMP_WHATSAPP_AUTO,:EMP_WHATSAPP_ID)')
    DeleteSQL.Strings = (
      'delete from CADEMP'
      'where'
      '  CODEMP = :OLD_CODEMP and'
      '  RAZAO = :OLD_RAZAO')
    Left = 291
    Top = 410
  end
  object U_Eve: TUpdateSQL
    ModifySQL.Strings = (
      'update CADEVE'
      'set'
      '  CECODEMP = :CECODEMP,'
      '  CECODEVE = :CECODEVE,'
      '  CENOMEVE = :CENOMEVE,'
      '  CENAT = :CENAT,'
      '  CETIPO = :CETIPO,'
      '  CETP_EVENTO = :CETP_EVENTO,'
      '  CECODEDSR = :CECODEDSR,'
      '  CEVALOR = :CEVALOR,'
      '  CEINCINSS = :CEINCINSS,'
      '  CEINCFGTS = :CEINCFGTS,'
      '  CEINCIR = :CEINCIR,'
      '  CEINCVT = :CEINCVT,'
      '  CEORDIMP = :CEORDIMP'
      'where'
      '  CECODEMP = :OLD_CECODEMP and'
      '  CECODEVE = :OLD_CECODEVE')
    InsertSQL.Strings = (
      'insert into CADEVE'
      '  (CECODEMP, CECODEVE, CENOMEVE, CENAT, CETIPO, CETP_EVENTO, '
      'CECODEDSR, '
      '   CEVALOR, CEINCINSS, CEINCFGTS, CEINCIR, CEINCVT, CEORDIMP)'
      'values'
      
        '  (:CECODEMP, :CECODEVE, :CENOMEVE, :CENAT, :CETIPO, :CETP_EVENT' +
        'O, '
      ':CECODEDSR, '
      
        '   :CEVALOR, :CEINCINSS, :CEINCFGTS, :CEINCIR, :CEINCVT, :CEORDI' +
        'MP)')
    DeleteSQL.Strings = (
      'delete from CADEVE'
      'where'
      '  CECODEMP = :OLD_CECODEMP and'
      '  CECODEVE = :OLD_CECODEVE')
    Left = 262
    Top = 453
  end
  object U_EvePref: TUpdateSQL
    ModifySQL.Strings = (
      'update EVEPREF'
      'set'
      '  EPCODEMP = :EPCODEMP,'
      '  EPLOCAL = :EPLOCAL,'
      '  EPCODCLI = :EPCODCLI,'
      '  EPCODEVE = :EPCODEVE,'
      '  EPQUANT = :EPQUANT'
      'where'
      '  EPCODEMP = :OLD_EPCODEMP and'
      '  EPLOCAL = :OLD_EPLOCAL and'
      '  EPCODCLI = :OLD_EPCODCLI and'
      '  EPCODEVE = :OLD_EPCODEVE')
    InsertSQL.Strings = (
      'insert into EVEPREF'
      '  (EPCODEMP, EPLOCAL, EPCODCLI, EPCODEVE, EPQUANT)'
      'values'
      '  (:EPCODEMP, :EPLOCAL, :EPCODCLI, :EPCODEVE, :EPQUANT)')
    DeleteSQL.Strings = (
      'delete from EVEPREF'
      'where'
      '  EPCODEMP = :OLD_EPCODEMP and'
      '  EPLOCAL = :OLD_EPLOCAL and'
      '  EPCODCLI = :OLD_EPCODCLI and'
      '  EPCODEVE = :OLD_EPCODEVE')
    Left = 382
    Top = 50
  end
  object U_Fun: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFUN'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFCODFUN = :CFCODFUN,'
      '  CFNOMFUN = :CFNOMFUN,'
      '  CFENDERECO = :CFENDERECO,'
      '  CFBAIRRO = :CFBAIRRO,'
      '  CFNOMLOC = :CFNOMLOC,'
      '  CFUF = :CFUF,'
      '  CFCODBAI = :CFCODBAI,'
      '  CFCODLOC = :CFCODLOC,'
      '  CFCEP = :CFCEP,'
      '  CFDTNAS = :CFDTNAS,'
      '  CFNATURAL = :CFNATURAL,'
      '  CFNAT_UF = :CFNAT_UF,'
      '  CFNACIONAL = :CFNACIONAL,'
      '  CFDTMIG = :CFDTMIG,'
      '  CFNIVEL_ESC = :CFNIVEL_ESC,'
      '  CFCNPF = :CFCNPF,'
      '  CFRG = :CFRG,'
      '  CFDTRG = :CFDTRG,'
      '  CFORGAORG = :CFORGAORG,'
      '  CFCTPS = :CFCTPS,'
      '  CFRESERV = :CFRESERV,'
      '  CFTIT_ELE = :CFTIT_ELE,'
      '  CFPIS = :CFPIS,'
      '  CFHABIL = :CFHABIL,'
      '  CFEST_CIV = :CFEST_CIV,'
      '  CFSEXO = :CFSEXO,'
      '  CFCONJUGE = :CFCONJUGE,'
      '  CFPAI = :CFPAI,'
      '  CFMAE = :CFMAE,'
      '  CFN_DEP = :CFN_DEP,'
      '  CFCODCAR = :CFCODCAR,'
      '  CFFONE = :CFFONE,'
      '  CFCELULAR = :CFCELULAR,'
      '  CFCODDEP = :CFCODDEP,'
      '  CFDT_ADM = :CFDT_ADM,'
      '  CFDT_DEM = :CFDT_DEM,'
      '  CFDT_CAD = :CFDT_CAD,'
      '  CFDT_UALT = :CFDT_UALT,'
      '  CFCODUSR = :CFCODUSR,'
      '  CFSALARIO = :CFSALARIO,'
      '  CFGRATIF = :CFGRATIF,'
      '  CFSTATUS = :CFSTATUS,'
      '  CFOBSL01 = :CFOBSL01,'
      '  CFOBSL02 = :CFOBSL02,'
      '  CFOBSL03 = :CFOBSL03,'
      '  CFOBSL04 = :CFOBSL04,'
      '  CFCBO = :CFCBO,'
      '  CFUFCTPS = :CFUFCTPS,'
      '  CFUFRG = :CFUFRG,'
      '  CFCATGRESV = :CFCATGRESV,'
      '  CFUFRESV = :CFUFRESV,'
      '  CFTITZONA = :CFTITZONA,'
      '  CFTITSECAO = :CFTITSECAO,'
      '  CFTITLOC = :CFTITLOC,'
      '  CFTITUF = :CFTITUF,'
      '  CFTITDTEM = :CFTITDTEM,'
      '  CFCATGHB = :CFCATGHB,'
      '  CFDTVLHB = :CFDTVLHB,'
      '  CFLOCNATU = :CFLOCNATU,'
      '  CFTIPEMP = :CFTIPEMP,'
      '  CFDTEMCTPS = :CFDTEMCTPS,'
      '  CFTIPOEMP = :CFTIPOEMP,'
      '  CFDEPTDESC = :CFDEPTDESC,'
      '  CFCRGODESC = :CFCRGODESC,'
      '  CFCODSIND = :CFCODSIND,'
      '  CFNOMESIND = :CFNOMESIND,'
      '  CFIMPOSTO = :CFIMPOSTO,'
      '  CFALTURA = :CFALTURA,'
      '  CFPESO = :CFPESO,'
      '  CFNUMCALCA = :CFNUMCALCA,'
      '  CFNUMCAMISA = :CFNUMCAMISA,'
      '  CFNUMCALCADO = :CFNUMCALCADO,'
      '  CFPOSTO = :CFPOSTO,'
      '  CFTURNO = :CFTURNO,'
      '  CFFOLGA = :CFFOLGA,'
      '  CFSERIECTPS = :CFSERIECTPS,'
      '  CFDGTOCTPS = :CFDGTOCTPS,'
      '  CFTIPOPIS = :CFTIPOPIS,'
      '  CFDTPIS = :CFDTPIS,'
      '  CFBCOPIS = :CFBCOPIS,'
      '  CFDTEMHB = :CFDTEMHB,'
      '  CFMAIL = :CFMAIL,'
      '  CFRACA = :CFRACA,'
      '  CFDEFICIENCIA = :CFDEFICIENCIA,'
      '  CFTIPODEF = :CFTIPODEF,'
      '  CFGSANGUE = :CFGSANGUE,'
      '  CFTIPO = :CFTIPO,'
      '  CFNR_REGISTRO = :CFNR_REGISTRO,'
      '  CFORGAO_REGISTRO = :CFORGAO_REGISTRO,'
      '  CFDT_REGISTRO = :CFDT_REGISTRO,'
      '  CFNUMERO = :CFNUMERO,'
      '  CFCOMPL = :CFCOMPL,'
      '  CFIMOB = :CFIMOB'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODFUN = :OLD_CFCODFUN')
    InsertSQL.Strings = (
      'insert into CADFUN'
      
        '  (CFCODEMP, CFCODFUN, CFNOMFUN, CFENDERECO, CFBAIRRO, CFNOMLOC,' +
        ' '
      'CFUF, '
      '   CFCODBAI, CFCODLOC, CFCEP, CFDTNAS, CFNATURAL, CFNAT_UF, '
      'CFNACIONAL, '
      
        '   CFDTMIG, CFNIVEL_ESC, CFCNPF, CFRG, CFDTRG, CFORGAORG, CFCTPS' +
        ', '
      'CFRESERV, '
      
        '   CFTIT_ELE, CFPIS, CFHABIL, CFEST_CIV, CFSEXO, CFCONJUGE, CFPA' +
        'I, '
      'CFMAE, '
      '   CFN_DEP, CFCODCAR, CFFONE, CFCELULAR, CFCODDEP, CFDT_ADM, '
      'CFDT_DEM, '
      
        '   CFDT_CAD, CFDT_UALT, CFCODUSR, CFSALARIO, CFGRATIF, CFSTATUS,' +
        ' '
      'CFOBSL01, '
      '   CFOBSL02, CFOBSL03, CFOBSL04, CFCBO, CFUFCTPS, CFUFRG, '
      'CFCATGRESV, CFUFRESV, '
      
        '   CFTITZONA, CFTITSECAO, CFTITLOC, CFTITUF, CFTITDTEM, CFCATGHB' +
        ', '
      'CFDTVLHB, '
      '   CFLOCNATU, CFTIPEMP, CFDTEMCTPS, CFTIPOEMP, CFDEPTDESC, '
      'CFCRGODESC, '
      
        '   CFCODSIND, CFNOMESIND, CFIMPOSTO, CFALTURA, CFPESO, CFNUMCALC' +
        'A, '
      'CFNUMCAMISA, '
      '   CFNUMCALCADO, CFPOSTO, CFTURNO, CFFOLGA, CFSERIECTPS, '
      'CFDGTOCTPS, CFTIPOPIS, '
      '   CFDTPIS, CFBCOPIS, CFDTEMHB, CFMAIL, CFRACA, CFDEFICIENCIA, '
      'CFTIPODEF, '
      '   CFGSANGUE, CFTIPO, CFNR_REGISTRO, CFORGAO_REGISTRO, '
      'CFDT_REGISTRO, CFNUMERO, '
      '   CFCOMPL, CFIMOB)'
      'values'
      '  (:CFCODEMP, :CFCODFUN, :CFNOMFUN, :CFENDERECO, :CFBAIRRO, '
      ':CFNOMLOC, '
      
        '   :CFUF, :CFCODBAI, :CFCODLOC, :CFCEP, :CFDTNAS, :CFNATURAL, :C' +
        'FNAT_UF, '
      
        '   :CFNACIONAL, :CFDTMIG, :CFNIVEL_ESC, :CFCNPF, :CFRG, :CFDTRG,' +
        ' '
      ':CFORGAORG, '
      
        '   :CFCTPS, :CFRESERV, :CFTIT_ELE, :CFPIS, :CFHABIL, :CFEST_CIV,' +
        ' :CFSEXO, '
      
        '   :CFCONJUGE, :CFPAI, :CFMAE, :CFN_DEP, :CFCODCAR, :CFFONE, :CF' +
        'CELULAR, '
      '   :CFCODDEP, :CFDT_ADM, :CFDT_DEM, :CFDT_CAD, :CFDT_UALT, '
      ':CFCODUSR, :CFSALARIO, '
      
        '   :CFGRATIF, :CFSTATUS, :CFOBSL01, :CFOBSL02, :CFOBSL03, :CFOBS' +
        'L04, '
      ':CFCBO, '
      '   :CFUFCTPS, :CFUFRG, :CFCATGRESV, :CFUFRESV, :CFTITZONA, '
      ':CFTITSECAO, '
      
        '   :CFTITLOC, :CFTITUF, :CFTITDTEM, :CFCATGHB, :CFDTVLHB, :CFLOC' +
        'NATU, '
      ':CFTIPEMP, '
      
        '   :CFDTEMCTPS, :CFTIPOEMP, :CFDEPTDESC, :CFCRGODESC, :CFCODSIND' +
        ', '
      ':CFNOMESIND, '
      '   :CFIMPOSTO, :CFALTURA, :CFPESO, :CFNUMCALCA, :CFNUMCAMISA, '
      ':CFNUMCALCADO, '
      
        '   :CFPOSTO, :CFTURNO, :CFFOLGA, :CFSERIECTPS, :CFDGTOCTPS, :CFT' +
        'IPOPIS, '
      
        '   :CFDTPIS, :CFBCOPIS, :CFDTEMHB, :CFMAIL, :CFRACA, :CFDEFICIEN' +
        'CIA, '
      ':CFTIPODEF, '
      '   :CFGSANGUE, :CFTIPO, :CFNR_REGISTRO, :CFORGAO_REGISTRO, '
      ':CFDT_REGISTRO, '
      '   :CFNUMERO, :CFCOMPL, :CFIMOB)')
    DeleteSQL.Strings = (
      'delete from CADFUN'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFCODFUN = :OLD_CFCODFUN')
    Left = 379
    Top = 147
  end
  object U_LFol: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLFOL'
      'set'
      '  LCCODEMP = :LCCODEMP,'
      '  LCLOCAL = :LCLOCAL,'
      '  LCMES = :LCMES,'
      '  LCANO = :LCANO,'
      '  LCCODFUN = :LCCODFUN,'
      '  LCCODEVE = :LCCODEVE,'
      '  LCQTD = :LCQTD,'
      '  LCQTDPAD = :LCQTDPAD,'
      '  LCNAT = :LCNAT,'
      '  LCTIPO = :LCTIPO,'
      '  LCVALOR = :LCVALOR,'
      '  LCINCINSS = :LCINCINSS,'
      '  LCINCFGTS = :LCINCFGTS,'
      '  LCINCIR = :LCINCIR,'
      '  LCINCVT = :LCINCVT,'
      '  LCSOMA = :LCSOMA,'
      '  LCTOTAL = :LCTOTAL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    InsertSQL.Strings = (
      'insert into CADLFOL'
      '  (LCCODEMP, LCLOCAL, LCMES, LCANO, LCCODFUN, LCCODEVE, LCQTD, '
      'LCQTDPAD, '
      
        '   LCNAT, LCTIPO, LCVALOR, LCINCINSS, LCINCFGTS, LCINCIR, LCINCV' +
        'T, '
      'LCSOMA, '
      '   LCTOTAL)'
      'values'
      
        '  (:LCCODEMP, :LCLOCAL, :LCMES, :LCANO, :LCCODFUN, :LCCODEVE, :L' +
        'CQTD, '
      ':LCQTDPAD, '
      
        '   :LCNAT, :LCTIPO, :LCVALOR, :LCINCINSS, :LCINCFGTS, :LCINCIR, ' +
        ':LCINCVT, '
      '   :LCSOMA, :LCTOTAL)')
    DeleteSQL.Strings = (
      'delete from CADLFOL'
      'where'
      '  LCCODEMP = :OLD_LCCODEMP and'
      '  LCLOCAL = :OLD_LCLOCAL and'
      '  LCMES = :OLD_LCMES and'
      '  LCANO = :OLD_LCANO and'
      '  LCCODFUN = :OLD_LCCODFUN and'
      '  LCCODEVE = :OLD_LCCODEVE')
    Left = 612
    Top = 6
  end
  object U_ParFPag: TUpdateSQL
    ModifySQL.Strings = (
      'update PARFPAG'
      'set'
      '  PFCODEMP = :PFCODEMP,'
      '  PFCODPAR = :PFCODPAR,'
      '  PFCODSAL = :PFCODSAL,'
      '  PFCODGRA = :PFCODGRA,'
      '  PFCODSFAM = :PFCODSFAM,'
      '  PFCODVT = :PFCODVT,'
      '  PFCODINSS = :PFCODINSS,'
      '  PFFINSS01A = :PFFINSS01A,'
      '  PFFINSS01B = :PFFINSS01B,'
      '  PFFINSS01 = :PFFINSS01,'
      '  PFFINSS02A = :PFFINSS02A,'
      '  PFFINSS02B = :PFFINSS02B,'
      '  PFFINSS02 = :PFFINSS02,'
      '  PFFINSS03A = :PFFINSS03A,'
      '  PFFINSS03B = :PFFINSS03B,'
      '  PFFINSS03 = :PFFINSS03,'
      '  PFFINSS04A = :PFFINSS04A,'
      '  PFFINSS04B = :PFFINSS04B,'
      '  PFFINSS04 = :PFFINSS04,'
      '  PFFINSS05A = :PFFINSS05A,'
      '  PFFINSS05B = :PFFINSS05B,'
      '  PFFINSS05 = :PFFINSS05,'
      '  PFCODFGTS = :PFCODFGTS,'
      '  PFFFGTS01A = :PFFFGTS01A,'
      '  PFFFGTS01B = :PFFFGTS01B,'
      '  PFFFGTS01 = :PFFFGTS01,'
      '  PFFFGTS02A = :PFFFGTS02A,'
      '  PFFFGTS02B = :PFFFGTS02B,'
      '  PFFFGTS02 = :PFFFGTS02,'
      '  PFFFGTS03A = :PFFFGTS03A,'
      '  PFFFGTS03B = :PFFFGTS03B,'
      '  PFFFGTS03 = :PFFFGTS03,'
      '  PFFFGTS04A = :PFFFGTS04A,'
      '  PFFFGTS04B = :PFFFGTS04B,'
      '  PFFFGTS04 = :PFFFGTS04,'
      '  PFFFGTS05A = :PFFFGTS05A,'
      '  PFFFGTS05B = :PFFFGTS05B,'
      '  PFFFGTS05 = :PFFFGTS05,'
      '  PFCODIR = :PFCODIR,'
      '  PFFIR01A = :PFFIR01A,'
      '  PFFIR01B = :PFFIR01B,'
      '  PFFIR01 = :PFFIR01,'
      '  PFFIR02A = :PFFIR02A,'
      '  PFFIR02B = :PFFIR02B,'
      '  PFFIR02 = :PFFIR02,'
      '  PFFIR03A = :PFFIR03A,'
      '  PFFIR03B = :PFFIR03B,'
      '  PFFIR03 = :PFFIR03,'
      '  PFFIR04A = :PFFIR04A,'
      '  PFFIR04B = :PFFIR04B,'
      '  PFFIR04 = :PFFIR04,'
      '  PFFIR05A = :PFFIR05A,'
      '  PFFIR05B = :PFFIR05B,'
      '  PFFIR05 = :PFFIR05,'
      '  PFQTDHM = :PFQTDHM,'
      '  PFCODFER = :PFCODFER,'
      '  PFCODRES = :PFCODRES,'
      '  PFCODDTERUN = :PFCODDTERUN,'
      '  PFCODDTER01 = :PFCODDTER01,'
      '  PFCODDTER02 = :PFCODDTER02'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPAR = :OLD_PFCODPAR')
    InsertSQL.Strings = (
      'insert into PARFPAG'
      '  (PFCODEMP, PFCODPAR, PFCODSAL, PFCODGRA, PFCODSFAM, PFCODVT, '
      'PFCODINSS, '
      
        '   PFFINSS01A, PFFINSS01B, PFFINSS01, PFFINSS02A, PFFINSS02B, PF' +
        'FINSS02, '
      
        '   PFFINSS03A, PFFINSS03B, PFFINSS03, PFFINSS04A, PFFINSS04B, PF' +
        'FINSS04, '
      '   PFFINSS05A, PFFINSS05B, PFFINSS05, PFCODFGTS, PFFFGTS01A, '
      'PFFFGTS01B, '
      '   PFFFGTS01, PFFFGTS02A, PFFFGTS02B, PFFFGTS02, PFFFGTS03A, '
      'PFFFGTS03B, '
      '   PFFFGTS03, PFFFGTS04A, PFFFGTS04B, PFFFGTS04, PFFFGTS05A, '
      'PFFFGTS05B, '
      
        '   PFFFGTS05, PFCODIR, PFFIR01A, PFFIR01B, PFFIR01, PFFIR02A, PF' +
        'FIR02B, '
      
        '   PFFIR02, PFFIR03A, PFFIR03B, PFFIR03, PFFIR04A, PFFIR04B, PFF' +
        'IR04, '
      'PFFIR05A, '
      '   PFFIR05B, PFFIR05, PFQTDHM, PFCODFER, PFCODRES, PFCODDTERUN, '
      'PFCODDTER01, '
      '   PFCODDTER02)'
      'values'
      
        '  (:PFCODEMP, :PFCODPAR, :PFCODSAL, :PFCODGRA, :PFCODSFAM, :PFCO' +
        'DVT, '
      ':PFCODINSS, '
      
        '   :PFFINSS01A, :PFFINSS01B, :PFFINSS01, :PFFINSS02A, :PFFINSS02' +
        'B, '
      ':PFFINSS02, '
      
        '   :PFFINSS03A, :PFFINSS03B, :PFFINSS03, :PFFINSS04A, :PFFINSS04' +
        'B, '
      ':PFFINSS04, '
      
        '   :PFFINSS05A, :PFFINSS05B, :PFFINSS05, :PFCODFGTS, :PFFFGTS01A' +
        ', '
      ':PFFFGTS01B, '
      
        '   :PFFFGTS01, :PFFFGTS02A, :PFFFGTS02B, :PFFFGTS02, :PFFFGTS03A' +
        ', '
      ':PFFFGTS03B, '
      
        '   :PFFFGTS03, :PFFFGTS04A, :PFFFGTS04B, :PFFFGTS04, :PFFFGTS05A' +
        ', '
      ':PFFFGTS05B, '
      
        '   :PFFFGTS05, :PFCODIR, :PFFIR01A, :PFFIR01B, :PFFIR01, :PFFIR0' +
        '2A, '
      ':PFFIR02B, '
      
        '   :PFFIR02, :PFFIR03A, :PFFIR03B, :PFFIR03, :PFFIR04A, :PFFIR04' +
        'B, :PFFIR04, '
      
        '   :PFFIR05A, :PFFIR05B, :PFFIR05, :PFQTDHM, :PFCODFER, :PFCODRE' +
        'S, '
      ':PFCODDTERUN, '
      '   :PFCODDTER01, :PFCODDTER02)')
    DeleteSQL.Strings = (
      'delete from PARFPAG'
      'where'
      '  PFCODEMP = :OLD_PFCODEMP and'
      '  PFCODPAR = :OLD_PFCODPAR')
    Left = 634
    Top = 329
  end
  object U_OP: TUpdateSQL
    ModifySQL.Strings = (
      'update CTDVOP'
      'set'
      '  TOCODEMP = :TOCODEMP,'
      '  TODOC = :TODOC,'
      '  TONOME = :TONOME,'
      '  TOTDET = :TOTDET,'
      '  TOCODIGO = :TOCODIGO,'
      '  TOTOP0 = :TOTOP0,'
      '  TOOP0 = :TOOP0,'
      '  TODESOP0 = :TODESOP0,'
      '  TOPER0 = :TOPER0,'
      '  TOTOP1 = :TOTOP1,'
      '  TOOP1 = :TOOP1,'
      '  TODESOP1 = :TODESOP1,'
      '  TOPER1 = :TOPER1,'
      '  TOTOP2 = :TOTOP2,'
      '  TOOP2 = :TOOP2,'
      '  TODESOP2 = :TODESOP2,'
      '  TOPER2 = :TOPER2,'
      '  TOTOP3 = :TOTOP3,'
      '  TOOP3 = :TOOP3,'
      '  TODESOP3 = :TODESOP3,'
      '  TOCONDT1 = :TOCONDT1,'
      '  TOCOND01 = :TOCOND01,'
      '  TODCOND01 = :TODCOND01,'
      '  TOCONDOP = :TOCONDOP,'
      '  TOCONDT2 = :TOCONDT2,'
      '  TOCOND02 = :TOCOND02,'
      '  TODCOND02 = :TODCOND02,'
      '  TOLOCAL = :TOLOCAL'
      'where'
      '  TOCODEMP = :OLD_TOCODEMP and'
      '  TODOC = :OLD_TODOC and'
      '  TONOME = :OLD_TONOME and'
      '  TOTDET = :OLD_TOTDET and'
      '  TOCODIGO = :OLD_TOCODIGO')
    InsertSQL.Strings = (
      'insert into CTDVOP'
      '  (TOCODEMP, TODOC, TONOME, TOTDET, TOCODIGO, TOTOP0, TOOP0, '
      'TODESOP0, '
      '   TOPER0, TOTOP1, TOOP1, TODESOP1, TOPER1, TOTOP2, TOOP2, '
      'TODESOP2, TOPER2, '
      '   TOTOP3, TOOP3, TODESOP3, TOCONDT1, TOCOND01, TODCOND01, '
      'TOCONDOP, TOCONDT2, '
      '   TOCOND02, TODCOND02, TOLOCAL)'
      'values'
      
        '  (:TOCODEMP, :TODOC, :TONOME, :TOTDET, :TOCODIGO, :TOTOP0, :TOO' +
        'P0, '
      ':TODESOP0, '
      
        '   :TOPER0, :TOTOP1, :TOOP1, :TODESOP1, :TOPER1, :TOTOP2, :TOOP2' +
        ', '
      ':TODESOP2, '
      '   :TOPER2, :TOTOP3, :TOOP3, :TODESOP3, :TOCONDT1, :TOCOND01, '
      ':TODCOND01, '
      '   :TOCONDOP, :TOCONDT2, :TOCOND02, :TODCOND02, :TOLOCAL)')
    DeleteSQL.Strings = (
      'delete from CTDVOP'
      'where'
      '  TOCODEMP = :OLD_TOCODEMP and'
      '  TODOC = :OLD_TODOC and'
      '  TONOME = :OLD_TONOME and'
      '  TOTDET = :OLD_TOTDET and'
      '  TOCODIGO = :OLD_TOCODIGO')
    Left = 634
    Top = 373
  end
  object U_RFol: TUpdateSQL
    ModifySQL.Strings = (
      'update CADRFOL'
      'set'
      '  RFCODEMP = :RFCODEMP,'
      '  RFLOCAL = :RFLOCAL,'
      '  RFMES = :RFMES,'
      '  RFANO = :RFANO,'
      '  RFCODFUN = :RFCODFUN,'
      '  RFTOTVEN = :RFTOTVEN,'
      '  RFTOTDES = :RFTOTDES,'
      '  RFBASEFGTS = :RFBASEFGTS,'
      '  RFALFGTS = :RFALFGTS,'
      '  RFVLRFGTS = :RFVLRFGTS,'
      '  RFBASEIR = :RFBASEIR,'
      '  RFALIR = :RFALIR,'
      '  RFVLRIR = :RFVLRIR,'
      '  RFBASEINSS = :RFBASEINSS,'
      '  RFALINSS = :RFALINSS,'
      '  RFVLRINSS = :RFVLRINSS,'
      '  RFBASEVT = :RFBASEVT,'
      '  RFALVT = :RFALVT,'
      '  RFSALBASE = :RFSALBASE'
      'where'
      '  RFCODEMP = :OLD_RFCODEMP and'
      '  RFLOCAL = :OLD_RFLOCAL and'
      '  RFMES = :OLD_RFMES and'
      '  RFANO = :OLD_RFANO and'
      '  RFCODFUN = :OLD_RFCODFUN')
    InsertSQL.Strings = (
      'insert into CADRFOL'
      
        '  (RFCODEMP, RFLOCAL, RFMES, RFANO, RFCODFUN, RFTOTVEN, RFTOTDES' +
        ', '
      'RFBASEFGTS, '
      '   RFALFGTS, RFVLRFGTS, RFBASEIR, RFALIR, RFVLRIR, RFBASEINSS, '
      'RFALINSS, '
      '   RFVLRINSS, RFBASEVT, RFALVT, RFSALBASE)'
      'values'
      '  (:RFCODEMP, :RFLOCAL, :RFMES, :RFANO, :RFCODFUN, :RFTOTVEN, '
      ':RFTOTDES, '
      
        '   :RFBASEFGTS, :RFALFGTS, :RFVLRFGTS, :RFBASEIR, :RFALIR, :RFVL' +
        'RIR, '
      ':RFBASEINSS, '
      '   :RFALINSS, :RFVLRINSS, :RFBASEVT, :RFALVT, :RFSALBASE)')
    DeleteSQL.Strings = (
      'delete from CADRFOL'
      'where'
      '  RFCODEMP = :OLD_RFCODEMP and'
      '  RFLOCAL = :OLD_RFLOCAL and'
      '  RFMES = :OLD_RFMES and'
      '  RFANO = :OLD_RFANO and'
      '  RFCODFUN = :OLD_RFCODFUN')
    Left = 599
    Top = 467
  end
  object Tb_Fec: TQuery
    CachedUpdates = True
    BeforePost = Tb_FecBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFEC'
      'order by FM_ANO,FM_MES')
    UpdateObject = U_Fec
    Left = 353
    Top = 97
    object Tb_FecFM_ANO: TFloatField
      FieldName = 'FM_ANO'
      Origin = 'SG_ASSOC.CADFEC.FM_ANO'
    end
    object Tb_FecFM_MES: TFloatField
      FieldName = 'FM_MES'
      Origin = 'SG_ASSOC.CADFEC.FM_MES'
    end
    object Tb_FecFM_DATAFEC: TDateTimeField
      FieldName = 'FM_DATAFEC'
      Origin = 'SG_ASSOC.CADFEC.FM_DATAFEC'
    end
    object Tb_FecFM_HORAFEC: TStringField
      FieldName = 'FM_HORAFEC'
      Origin = 'SG_ASSOC.CADFEC.FM_HORAFEC'
      Size = 10
    end
    object Tb_FecFM_CODUSR: TFloatField
      FieldName = 'FM_CODUSR'
      Origin = 'SG_ASSOC.CADFEC.FM_CODUSR'
    end
  end
  object U_Fec: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFEC'
      'set'
      '  FM_ANO = :FM_ANO,'
      '  FM_MES = :FM_MES,'
      '  FM_DATAFEC = :FM_DATAFEC,'
      '  FM_HORAFEC = :FM_HORAFEC,'
      '  FM_CODUSR = :FM_CODUSR'
      'where'
      '  FM_ANO = :OLD_FM_ANO and'
      '  FM_MES = :OLD_FM_MES')
    InsertSQL.Strings = (
      'insert into CADFEC'
      '  (FM_ANO, FM_MES, FM_DATAFEC, FM_HORAFEC, FM_CODUSR)'
      'values'
      '  (:FM_ANO, :FM_MES, :FM_DATAFEC, :FM_HORAFEC, :FM_CODUSR)')
    DeleteSQL.Strings = (
      'delete from CADFEC'
      'where'
      '  FM_ANO = :OLD_FM_ANO and'
      '  FM_MES = :OLD_FM_MES')
    Left = 382
    Top = 97
  end
  object Src_Fec: TDataSource
    DataSet = Tb_Fec
    Left = 410
    Top = 97
  end
  object Tb_EstMes: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CECODPRO,sum(CESALDO) as Estoque from cadest where '
      'CECODEMP is null'
      'group by CECODPRO')
    Left = 735
    Top = 273
    object Tb_EstMesCECODPRO: TFloatField
      FieldName = 'CECODPRO'
      Origin = 'SG_ASSOC.CADEST.CECODPRO'
    end
    object Tb_EstMesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
    end
  end
  object Tb_VenMes: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P2CODPRO,P1TIPO,sum(P2QTD) AS QTD from CADP02,CADP01 wher' +
        'e'
      'P1TIPO>0 and P1STATUS<8 and'
      ' P2CODEMP is null'
      ' and P1CODEMP=P2CODEMP and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM'
      'group by P2CODPRO,P1TIPO')
    Left = 735
    Top = 319
    object Tb_VenMesP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_VenMesP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_VenMesQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
  object Tb_EntMes: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CODPRO,sum(PF2QTDP) as QTD from CADPF2,CADPF1 where'
      'PF2CODEMP is null'
      ' and PF1CODEMP=PF2CODEMP and PF1CHAVE=PF2CHAVE'
      ' and PF1STATUS=1'
      'group by PF2CODPRO'
      '')
    Left = 735
    Top = 364
    object Tb_EntMesPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Tb_EntMesQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
  end
  object Tb_AjMes: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select AJCODPRO,AJTIPOM,sum(AJQTD) as QTD from CADAJU where'
      'AJCODEMP is null'
      'group by AJCODPRO,AJTIPOM')
    Left = 735
    Top = 410
    object Tb_AjMesAJCODPRO: TFloatField
      FieldName = 'AJCODPRO'
      Origin = 'SG_ASSOC.CADAJU.AJCODPRO'
    end
    object Tb_AjMesAJTIPOM: TFloatField
      FieldName = 'AJTIPOM'
      Origin = 'SG_ASSOC.CADAJU.AJTIPOM'
    end
    object Tb_AjMesQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADAJU.AJQTD'
    end
  end
  object Tb_TDVCabDoc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTDV where '
      'TCODEMP is null')
    Left = 735
    Top = 454
    object Tb_TDVCabDocTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTDV.TCODEMP'
    end
    object Tb_TDVCabDocTDOC: TStringField
      FieldName = 'TDOC'
      Origin = 'SG_ASSOC.CADTDV.TDOC'
      Size = 10
    end
    object Tb_TDVCabDocTNOME: TStringField
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTDV.TNOME'
      Size = 50
    end
    object Tb_TDVCabDocTLOCAL: TFloatField
      FieldName = 'TLOCAL'
      Origin = 'SG_ASSOC.CADTDV.TLOCAL'
    end
    object Tb_TDVCabDocTSEQ: TFloatField
      FieldName = 'TSEQ'
      Origin = 'SG_ASSOC.CADTDV.TSEQ'
    end
    object Tb_TDVCabDocTLIN: TFloatField
      FieldName = 'TLIN'
      Origin = 'SG_ASSOC.CADTDV.TLIN'
    end
    object Tb_TDVCabDocTCOL: TFloatField
      FieldName = 'TCOL'
      Origin = 'SG_ASSOC.CADTDV.TCOL'
    end
    object Tb_TDVCabDocTFONTE: TFloatField
      FieldName = 'TFONTE'
      Origin = 'SG_ASSOC.CADTDV.TFONTE'
    end
    object Tb_TDVCabDocTTIPO: TFloatField
      FieldName = 'TTIPO'
      Origin = 'SG_ASSOC.CADTDV.TTIPO'
    end
    object Tb_TDVCabDocTCAMPO: TStringField
      FieldName = 'TCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO'
      Size = 140
    end
    object Tb_TDVCabDocTCAMPO_TAB: TStringField
      FieldName = 'TCAMPO_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCAMPO_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTDCAMPO: TStringField
      FieldName = 'TDCAMPO'
      Origin = 'SG_ASSOC.CADTDV.TDCAMPO'
      Size = 140
    end
    object Tb_TDVCabDocTTIPOC: TStringField
      FieldName = 'TTIPOC'
      Origin = 'SG_ASSOC.CADTDV.TTIPOC'
      Size = 1
    end
    object Tb_TDVCabDocTALINHAR: TFloatField
      FieldName = 'TALINHAR'
      Origin = 'SG_ASSOC.CADTDV.TALINHAR'
    end
    object Tb_TDVCabDocTTAM: TFloatField
      FieldName = 'TTAM'
      Origin = 'SG_ASSOC.CADTDV.TTAM'
    end
    object Tb_TDVCabDocTFORMATO: TStringField
      FieldName = 'TFORMATO'
      Origin = 'SG_ASSOC.CADTDV.TFORMATO'
      Size = 40
    end
    object Tb_TDVCabDocTCONDT1: TStringField
      FieldName = 'TCONDT1'
      Origin = 'SG_ASSOC.CADTDV.TCONDT1'
      Size = 1
    end
    object Tb_TDVCabDocTCOND01: TStringField
      FieldName = 'TCOND01'
      Origin = 'SG_ASSOC.CADTDV.TCOND01'
      Size = 30
    end
    object Tb_TDVCabDocTCOND01_TAB: TStringField
      FieldName = 'TCOND01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND01_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTCONDOP: TStringField
      FieldName = 'TCONDOP'
      Origin = 'SG_ASSOC.CADTDV.TCONDOP'
      Size = 5
    end
    object Tb_TDVCabDocTCONDT2: TStringField
      FieldName = 'TCONDT2'
      Origin = 'SG_ASSOC.CADTDV.TCONDT2'
      Size = 1
    end
    object Tb_TDVCabDocTCOND02: TStringField
      FieldName = 'TCOND02'
      Origin = 'SG_ASSOC.CADTDV.TCOND02'
      Size = 30
    end
    object Tb_TDVCabDocTCOND02_TAB: TStringField
      FieldName = 'TCOND02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND02_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTZERVAR: TFloatField
      FieldName = 'TZERVAR'
      Origin = 'SG_ASSOC.CADTDV.TZERVAR'
    end
    object Tb_TDVCabDocTCTPSEL: TFloatField
      FieldName = 'TCTPSEL'
      Origin = 'SG_ASSOC.CADTDV.TCTPSEL'
    end
    object Tb_TDVCabDocTCBARRAS: TFloatField
      FieldName = 'TCBARRAS'
      Origin = 'SG_ASSOC.CADTDV.TCBARRAS'
    end
    object Tb_TDVCabDocTCEXTENSO: TFloatField
      FieldName = 'TCEXTENSO'
      Origin = 'SG_ASSOC.CADTDV.TCEXTENSO'
    end
    object Tb_TDVCabDocTCEXT_QTDL: TFloatField
      FieldName = 'TCEXT_QTDL'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_QTDL'
    end
    object Tb_TDVCabDocTCEXT_1LP: TFloatField
      FieldName = 'TCEXT_1LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LP'
    end
    object Tb_TDVCabDocTCEXT_1LT: TFloatField
      FieldName = 'TCEXT_1LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1LT'
    end
    object Tb_TDVCabDocTCEXT_1IC: TFloatField
      FieldName = 'TCEXT_1IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_1IC'
    end
    object Tb_TDVCabDocTCEXT_2LP: TFloatField
      FieldName = 'TCEXT_2LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LP'
    end
    object Tb_TDVCabDocTCEXT_2LT: TFloatField
      FieldName = 'TCEXT_2LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2LT'
    end
    object Tb_TDVCabDocTCEXT_2IC: TFloatField
      FieldName = 'TCEXT_2IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_2IC'
    end
    object Tb_TDVCabDocTCEXT_3LP: TFloatField
      FieldName = 'TCEXT_3LP'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LP'
    end
    object Tb_TDVCabDocTCEXT_3LT: TFloatField
      FieldName = 'TCEXT_3LT'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3LT'
    end
    object Tb_TDVCabDocTCEXT_3IC: TFloatField
      FieldName = 'TCEXT_3IC'
      Origin = 'SG_ASSOC.CADTDV.TCEXT_3IC'
    end
    object Tb_TDVCabDocTCTPVAR: TFloatField
      FieldName = 'TCTPVAR'
      Origin = 'SG_ASSOC.CADTDV.TCTPVAR'
    end
    object Tb_TDVCabDocTCOND_CONT: TStringField
      FieldName = 'TCOND_CONT'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT'
      Size = 4
    end
    object Tb_TDVCabDocTCOND_02_01: TStringField
      FieldName = 'TCOND_02_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_02_01_TAB: TStringField
      FieldName = 'TCOND_02_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_01_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_02_OP: TStringField
      FieldName = 'TCOND_02_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_OP'
      Size = 5
    end
    object Tb_TDVCabDocTCOND_02_T2: TStringField
      FieldName = 'TCOND_02_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T2'
      Size = 1
    end
    object Tb_TDVCabDocTCOND_02_02: TStringField
      FieldName = 'TCOND_02_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_02_02_TAB: TStringField
      FieldName = 'TCOND_02_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_02_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_02_T1: TStringField
      FieldName = 'TCOND_02_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_02_T1'
      Size = 1
    end
    object Tb_TDVCabDocTCCORTARDE: TFloatField
      FieldName = 'TCCORTARDE'
      Origin = 'SG_ASSOC.CADTDV.TCCORTARDE'
    end
    object Tb_TDVCabDocTCOND_CONT03: TStringField
      FieldName = 'TCOND_CONT03'
      Origin = 'SG_ASSOC.CADTDV.TCOND_CONT03'
      Size = 4
    end
    object Tb_TDVCabDocTCOND_03_T1: TStringField
      FieldName = 'TCOND_03_T1'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T1'
      Size = 1
    end
    object Tb_TDVCabDocTCOND_03_01: TStringField
      FieldName = 'TCOND_03_01'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_03_01_TAB: TStringField
      FieldName = 'TCOND_03_01_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_01_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_03_OP: TStringField
      FieldName = 'TCOND_03_OP'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_OP'
      Size = 5
    end
    object Tb_TDVCabDocTCOND_03_T2: TStringField
      FieldName = 'TCOND_03_T2'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_T2'
      Size = 1
    end
    object Tb_TDVCabDocTCOND_03_02: TStringField
      FieldName = 'TCOND_03_02'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02'
      Size = 30
    end
    object Tb_TDVCabDocTCOND_03_02_TAB: TStringField
      FieldName = 'TCOND_03_02_TAB'
      Origin = 'SG_ASSOC.CADTDV.TCOND_03_02_TAB'
      Size = 30
    end
    object Tb_TDVCabDocTCINFADIC: TFloatField
      FieldName = 'TCINFADIC'
      Origin = 'SG_ASSOC.CADTDV.TCINFADIC'
    end
  end
  object Tb_JC: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_JCBeforeInsert
    AfterInsert = Tb_JCAfterInsert
    BeforePost = Tb_JCBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVJC where '
      'JCCODEMP is nulll')
    UpdateObject = U_JC
    Left = 467
    Top = 323
    object Tb_JCJCCODEMP: TFloatField
      FieldName = 'JCCODEMP'
      Origin = 'SG_ASSOC.CTDVJC.JCCODEMP'
    end
    object Tb_JCJCDOC: TStringField
      FieldName = 'JCDOC'
      Origin = 'SG_ASSOC.CTDVJC.JCDOC'
      Size = 10
    end
    object Tb_JCJCNOME: TStringField
      FieldName = 'JCNOME'
      Origin = 'SG_ASSOC.CTDVJC.JCNOME'
      Size = 50
    end
    object Tb_JCJCCODIGO: TFloatField
      FieldName = 'JCCODIGO'
      Origin = 'SG_ASSOC.CTDVJC.JCCODIGO'
    end
    object Tb_JCJCTCAMPO1: TFloatField
      FieldName = 'JCTCAMPO1'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO1'
    end
    object Tb_JCJCFORMA01: TStringField
      FieldName = 'JCFORMA01'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA01'
      Size = 1
    end
    object Tb_JCJCCAMPO01: TStringField
      FieldName = 'JCCAMPO01'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO01'
      Size = 132
    end
    object Tb_JCJCFORMATO01: TStringField
      FieldName = 'JCFORMATO01'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO01'
      Size = 30
    end
    object Tb_JCJCESPACO01: TFloatField
      FieldName = 'JCESPACO01'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO01'
    end
    object Tb_JCJCTAMMAX01: TFloatField
      FieldName = 'JCTAMMAX01'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX01'
    end
    object Tb_JCJCTCAMPO2: TFloatField
      FieldName = 'JCTCAMPO2'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO2'
    end
    object Tb_JCJCFORMA02: TStringField
      FieldName = 'JCFORMA02'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA02'
      Size = 1
    end
    object Tb_JCJCCAMPO02: TStringField
      FieldName = 'JCCAMPO02'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO02'
      Size = 132
    end
    object Tb_JCJCFORMATO02: TStringField
      FieldName = 'JCFORMATO02'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO02'
      Size = 30
    end
    object Tb_JCJCESPACO02: TFloatField
      FieldName = 'JCESPACO02'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO02'
    end
    object Tb_JCJCTAMMAX02: TFloatField
      FieldName = 'JCTAMMAX02'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX02'
    end
    object Tb_JCJCTCAMPO3: TFloatField
      FieldName = 'JCTCAMPO3'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO3'
    end
    object Tb_JCJCFORMA03: TStringField
      FieldName = 'JCFORMA03'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA03'
      Size = 1
    end
    object Tb_JCJCCAMPO03: TStringField
      FieldName = 'JCCAMPO03'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO03'
      Size = 132
    end
    object Tb_JCJCFORMATO03: TStringField
      FieldName = 'JCFORMATO03'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO03'
      Size = 30
    end
    object Tb_JCJCESPACO03: TFloatField
      FieldName = 'JCESPACO03'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO03'
    end
    object Tb_JCJCTAMMAX03: TFloatField
      FieldName = 'JCTAMMAX03'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX03'
    end
    object Tb_JCJCTCAMPO4: TFloatField
      FieldName = 'JCTCAMPO4'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO4'
    end
    object Tb_JCJCFORMA04: TStringField
      FieldName = 'JCFORMA04'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA04'
      Size = 1
    end
    object Tb_JCJCCAMPO04: TStringField
      FieldName = 'JCCAMPO04'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO04'
      Size = 132
    end
    object Tb_JCJCFORMATO04: TStringField
      FieldName = 'JCFORMATO04'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO04'
      Size = 30
    end
    object Tb_JCJCESPACO04: TFloatField
      FieldName = 'JCESPACO04'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO04'
    end
    object Tb_JCJCTAMMAX04: TFloatField
      FieldName = 'JCTAMMAX04'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX04'
    end
    object Tb_JCJCNOMCAM: TStringField
      FieldName = 'JCNOMCAM'
      Origin = 'SG_ASSOC.CTDVJC.JCNOMCAM'
      Size = 30
    end
    object Tb_JCJCTDET: TFloatField
      FieldName = 'JCTDET'
      Origin = 'SG_ASSOC.CTDVJC.JCTDET'
    end
    object Tb_JCJCBRANCOS01: TFloatField
      FieldName = 'JCBRANCOS01'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS01'
    end
    object Tb_JCJCBRANCOS02: TFloatField
      FieldName = 'JCBRANCOS02'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS02'
    end
    object Tb_JCJCBRANCOS03: TFloatField
      FieldName = 'JCBRANCOS03'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS03'
    end
    object Tb_JCJCBRANCOS04: TFloatField
      FieldName = 'JCBRANCOS04'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS04'
    end
  end
  object U_JC: TUpdateSQL
    ModifySQL.Strings = (
      'update CTDVJC'
      'set'
      '  JCCODEMP = :JCCODEMP,'
      '  JCDOC = :JCDOC,'
      '  JCNOME = :JCNOME,'
      '  JCCODIGO = :JCCODIGO,'
      '  JCTCAMPO1 = :JCTCAMPO1,'
      '  JCFORMA01 = :JCFORMA01,'
      '  JCCAMPO01 = :JCCAMPO01,'
      '  JCFORMATO01 = :JCFORMATO01,'
      '  JCESPACO01 = :JCESPACO01,'
      '  JCTAMMAX01 = :JCTAMMAX01,'
      '  JCTCAMPO2 = :JCTCAMPO2,'
      '  JCFORMA02 = :JCFORMA02,'
      '  JCCAMPO02 = :JCCAMPO02,'
      '  JCFORMATO02 = :JCFORMATO02,'
      '  JCESPACO02 = :JCESPACO02,'
      '  JCTAMMAX02 = :JCTAMMAX02,'
      '  JCTCAMPO3 = :JCTCAMPO3,'
      '  JCFORMA03 = :JCFORMA03,'
      '  JCCAMPO03 = :JCCAMPO03,'
      '  JCFORMATO03 = :JCFORMATO03,'
      '  JCESPACO03 = :JCESPACO03,'
      '  JCTAMMAX03 = :JCTAMMAX03,'
      '  JCTCAMPO4 = :JCTCAMPO4,'
      '  JCFORMA04 = :JCFORMA04,'
      '  JCCAMPO04 = :JCCAMPO04,'
      '  JCFORMATO04 = :JCFORMATO04,'
      '  JCESPACO04 = :JCESPACO04,'
      '  JCTAMMAX04 = :JCTAMMAX04,'
      '  JCNOMCAM = :JCNOMCAM,'
      '  JCTDET = :JCTDET,'
      '  JCBRANCOS01 = :JCBRANCOS01,'
      '  JCBRANCOS02 = :JCBRANCOS02,'
      '  JCBRANCOS03 = :JCBRANCOS03,'
      '  JCBRANCOS04 = :JCBRANCOS04'
      'where'
      '  JCCODEMP = :OLD_JCCODEMP and'
      '  JCDOC = :OLD_JCDOC and'
      '  JCNOME = :OLD_JCNOME and'
      '  JCCODIGO = :OLD_JCCODIGO and'
      '  JCNOMCAM = :OLD_JCNOMCAM and'
      '  JCTDET = :OLD_JCTDET')
    InsertSQL.Strings = (
      'insert into CTDVJC'
      '  (JCCODEMP, JCDOC, JCNOME, JCCODIGO, JCTCAMPO1, JCFORMA01, '
      'JCCAMPO01, '
      '   JCFORMATO01, JCESPACO01, JCTAMMAX01, JCTCAMPO2, JCFORMA02, '
      'JCCAMPO02, '
      '   JCFORMATO02, JCESPACO02, JCTAMMAX02, JCTCAMPO3, JCFORMA03, '
      'JCCAMPO03, '
      '   JCFORMATO03, JCESPACO03, JCTAMMAX03, JCTCAMPO4, JCFORMA04, '
      'JCCAMPO04, '
      '   JCFORMATO04, JCESPACO04, JCTAMMAX04, JCNOMCAM, JCTDET, '
      'JCBRANCOS01, '
      '   JCBRANCOS02, JCBRANCOS03, JCBRANCOS04)'
      'values'
      
        '  (:JCCODEMP, :JCDOC, :JCNOME, :JCCODIGO, :JCTCAMPO1, :JCFORMA01' +
        ', '
      ':JCCAMPO01, '
      
        '   :JCFORMATO01, :JCESPACO01, :JCTAMMAX01, :JCTCAMPO2, :JCFORMA0' +
        '2, '
      ':JCCAMPO02, '
      
        '   :JCFORMATO02, :JCESPACO02, :JCTAMMAX02, :JCTCAMPO3, :JCFORMA0' +
        '3, '
      ':JCCAMPO03, '
      
        '   :JCFORMATO03, :JCESPACO03, :JCTAMMAX03, :JCTCAMPO4, :JCFORMA0' +
        '4, '
      ':JCCAMPO04, '
      '   :JCFORMATO04, :JCESPACO04, :JCTAMMAX04, :JCNOMCAM, :JCTDET, '
      ':JCBRANCOS01, '
      '   :JCBRANCOS02, :JCBRANCOS03, :JCBRANCOS04)')
    DeleteSQL.Strings = (
      'delete from CTDVJC'
      'where'
      '  JCCODEMP = :OLD_JCCODEMP and'
      '  JCDOC = :OLD_JCDOC and'
      '  JCNOME = :OLD_JCNOME and'
      '  JCCODIGO = :OLD_JCCODIGO and'
      '  JCNOMCAM = :OLD_JCNOMCAM and'
      '  JCTDET = :OLD_JCTDET')
    Left = 497
    Top = 323
  end
  object Src_JC: TDataSource
    DataSet = Tb_JC
    Left = 526
    Top = 323
  end
  object Qr_Obs: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPNF'
      'where PNCHAVE is null')
    Left = 70
    Top = 50
    object Qr_ObsPNCODEMP: TFloatField
      FieldName = 'PNCODEMP'
      Origin = 'SG_ASSOC.CADPNF.PNCODEMP'
    end
    object Qr_ObsPNCHAVE: TFloatField
      FieldName = 'PNCHAVE'
      Origin = 'SG_ASSOC.CADPNF.PNCHAVE'
    end
    object Qr_ObsPNORDEM: TFloatField
      FieldName = 'PNORDEM'
      Origin = 'SG_ASSOC.CADPNF.PNORDEM'
    end
    object Qr_ObsPNLINHA: TFloatField
      FieldName = 'PNLINHA'
      Origin = 'SG_ASSOC.CADPNF.PNLINHA'
    end
    object Qr_ObsPNOBS: TStringField
      FieldName = 'PNOBS'
      Origin = 'SG_ASSOC.CADPNF.PNOBS'
      Size = 60
    end
    object Qr_ObsPNCHAVE_PEDORI: TFloatField
      FieldName = 'PNCHAVE_PEDORI'
      Origin = 'SG_ASSOC.CADPNF.PNCHAVE_PEDORI'
    end
  end
  object Tb_FDia: TQuery
    CachedUpdates = True
    BeforePost = Tb_FDiaBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFDIA'
      'where FD_DATA like :DATA'
      'order by FD_DATA')
    UpdateObject = U_FDia
    Left = 353
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_FDiaFD_DATA: TDateTimeField
      FieldName = 'FD_DATA'
      Origin = 'SG_ASSOC.CADFDIA.FD_DATA'
    end
    object Tb_FDiaFD_ENCMES: TFloatField
      FieldName = 'FD_ENCMES'
      Origin = 'SG_ASSOC.CADFDIA.FD_ENCMES'
    end
    object Tb_FDiaFD_CODUSR: TFloatField
      FieldName = 'FD_CODUSR'
      Origin = 'SG_ASSOC.CADFDIA.FD_CODUSR'
    end
    object Tb_FDiaFD_DATAFEC: TDateTimeField
      FieldName = 'FD_DATAFEC'
      Origin = 'SG_ASSOC.CADFDIA.FD_DATAFEC'
    end
    object Tb_FDiaFD_HORASFEC: TStringField
      FieldName = 'FD_HORASFEC'
      Origin = 'SG_ASSOC.CADFDIA.FD_HORASFEC'
      Size = 10
    end
  end
  object U_FDia: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFDIA'
      'set'
      '  FD_DATA = :FD_DATA,'
      '  FD_ENCMES = :FD_ENCMES,'
      '  FD_CODUSR = :FD_CODUSR,'
      '  FD_DATAFEC = :FD_DATAFEC,'
      '  FD_HORASFEC = :FD_HORASFEC'
      'where'
      '  FD_DATA = :OLD_FD_DATA')
    InsertSQL.Strings = (
      'insert into CADFDIA'
      '  (FD_DATA, FD_ENCMES, FD_CODUSR, FD_DATAFEC, FD_HORASFEC)'
      'values'
      '  (:FD_DATA, :FD_ENCMES, :FD_CODUSR, :FD_DATAFEC, :FD_HORASFEC)')
    DeleteSQL.Strings = (
      'delete from CADFDIA'
      'where'
      '  FD_DATA = :OLD_FD_DATA')
    Left = 382
    Top = 3
  end
  object Tb_Moe: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_MoeBeforeInsert
    AfterInsert = Tb_MoeAfterInsert
    BeforePost = Tb_MoeBeforePost
    AfterPost = c
    AfterCancel = Tb_MoeAfterCancel
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMOE')
    UpdateObject = U_Moe
    Left = 577
    Top = 192
    object Tb_MoeMCODMOE: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MCODMOE'
      Origin = 'SG_ASSOC.CADMOE.MCODMOE'
    end
    object Tb_MoeMNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'MNOME'
      Origin = 'SG_ASSOC.CADMOE.MNOME'
      Size = 30
    end
    object Tb_MoeMSIMBOLO: TStringField
      DisplayLabel = 'Simbolo'
      FieldName = 'MSIMBOLO'
      Origin = 'SG_ASSOC.CADMOE.MSIMBOLO'
      Size = 5
    end
    object Tb_MoeMORIGEM: TStringField
      DisplayLabel = 'Pais Origem'
      FieldName = 'MORIGEM'
      Origin = 'SG_ASSOC.CADMOE.MORIGEM'
      Size = 30
    end
    object Tb_MoeMCODUSR_INC: TFloatField
      FieldName = 'MCODUSR_INC'
      Origin = 'SG_ASSOC.CADMOE.MCODUSR_INC'
    end
    object Tb_MoeMNOMUSR_INC: TStringField
      FieldName = 'MNOMUSR_INC'
      Origin = 'SG_ASSOC.CADMOE.MNOMUSR_INC'
      Size = 40
    end
    object Tb_MoeMDATHOR_INC: TDateTimeField
      FieldName = 'MDATHOR_INC'
      Origin = 'SG_ASSOC.CADMOE.MDATHOR_INC'
    end
    object Tb_MoeMCODUSR_ALT: TFloatField
      FieldName = 'MCODUSR_ALT'
      Origin = 'SG_ASSOC.CADMOE.MCODUSR_ALT'
    end
    object Tb_MoeMNOMUSR_ALT: TStringField
      FieldName = 'MNOMUSR_ALT'
      Origin = 'SG_ASSOC.CADMOE.MNOMUSR_ALT'
      Size = 40
    end
    object Tb_MoeMDATHOR_ALT: TDateTimeField
      FieldName = 'MDATHOR_ALT'
      Origin = 'SG_ASSOC.CADMOE.MDATHOR_ALT'
    end
  end
  object U_Moe: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMOE'
      'set'
      '  MCODMOE = :MCODMOE,'
      '  MNOME = :MNOME,'
      '  MSIMBOLO = :MSIMBOLO,'
      '  MORIGEM = :MORIGEM,'
      '  MCODUSR_INC = :MCODUSR_INC,'
      '  MNOMUSR_INC = :MNOMUSR_INC,'
      '  MDATHOR_INC = :MDATHOR_INC,'
      '  MCODUSR_ALT = :MCODUSR_ALT,'
      '  MNOMUSR_ALT = :MNOMUSR_ALT,'
      '  MDATHOR_ALT = :MDATHOR_ALT'
      'where'
      '  MCODMOE = :OLD_MCODMOE and'
      '  MNOME = :OLD_MNOME')
    InsertSQL.Strings = (
      'insert into CADMOE'
      '  (MCODMOE, MNOME, MSIMBOLO, MORIGEM, MCODUSR_INC, MNOMUSR_INC, '
      'MDATHOR_INC, '
      '   MCODUSR_ALT, MNOMUSR_ALT, MDATHOR_ALT)'
      'values'
      '  (:MCODMOE, :MNOME, :MSIMBOLO, :MORIGEM, :MCODUSR_INC, '
      ':MNOMUSR_INC, :MDATHOR_INC, '
      '   :MCODUSR_ALT, :MNOMUSR_ALT, :MDATHOR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADMOE'
      'where'
      '  MCODMOE = :OLD_MCODMOE and'
      '  MNOME = :OLD_MNOME')
    Left = 606
    Top = 192
  end
  object Src_Moe: TDataSource
    DataSet = Tb_Moe
    Left = 634
    Top = 192
  end
  object Tb_Ind: TQuery
    CachedUpdates = True
    BeforePost = Tb_IndBeforePost
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIND')
    UpdateObject = U_Ind
    Left = 467
    Top = 278
    object Tb_IndICODMOE: TFloatField
      FieldName = 'ICODMOE'
      Origin = 'SG_ASSOC.CADIND.ICODMOE'
    end
    object Tb_IndIDATA: TDateTimeField
      FieldName = 'IDATA'
      Origin = 'SG_ASSOC.CADIND.IDATA'
    end
    object Tb_IndIVLRPARCPR: TFloatField
      FieldName = 'IVLRPARCPR'
      Origin = 'SG_ASSOC.CADIND.IVLRPARCPR'
    end
    object Tb_IndIGVLRPARVDA: TFloatField
      FieldName = 'IGVLRPARVDA'
      Origin = 'SG_ASSOC.CADIND.IGVLRPARVDA'
    end
    object Tb_IndIVLRCOMCPR: TFloatField
      FieldName = 'IVLRCOMCPR'
      Origin = 'SG_ASSOC.CADIND.IVLRCOMCPR'
    end
    object Tb_IndIVLRCOMVDA: TFloatField
      FieldName = 'IVLRCOMVDA'
      Origin = 'SG_ASSOC.CADIND.IVLRCOMVDA'
    end
    object Tb_IndICODUSR_INC: TFloatField
      FieldName = 'ICODUSR_INC'
      Origin = 'SG_ASSOC.CADIND.ICODUSR_INC'
    end
    object Tb_IndINOMUSR_INC: TStringField
      FieldName = 'INOMUSR_INC'
      Origin = 'SG_ASSOC.CADIND.INOMUSR_INC'
      Size = 40
    end
    object Tb_IndIDATHOR_INC: TDateTimeField
      FieldName = 'IDATHOR_INC'
      Origin = 'SG_ASSOC.CADIND.IDATHOR_INC'
    end
    object Tb_IndICODUSR_ALT: TFloatField
      FieldName = 'ICODUSR_ALT'
      Origin = 'SG_ASSOC.CADIND.ICODUSR_ALT'
    end
    object Tb_IndINOMUSR_ALT: TStringField
      FieldName = 'INOMUSR_ALT'
      Origin = 'SG_ASSOC.CADIND.INOMUSR_ALT'
      Size = 40
    end
    object Tb_IndIDATHOR_ALT: TDateTimeField
      FieldName = 'IDATHOR_ALT'
      Origin = 'SG_ASSOC.CADIND.IDATHOR_ALT'
    end
  end
  object U_Ind: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIND'
      'set'
      '  ICODMOE = :ICODMOE,'
      '  IDATA = :IDATA,'
      '  IVLRPARCPR = :IVLRPARCPR,'
      '  IGVLRPARVDA = :IGVLRPARVDA,'
      '  IVLRCOMCPR = :IVLRCOMCPR,'
      '  IVLRCOMVDA = :IVLRCOMVDA,'
      '  ICODUSR_INC = :ICODUSR_INC,'
      '  INOMUSR_INC = :INOMUSR_INC,'
      '  IDATHOR_INC = :IDATHOR_INC,'
      '  ICODUSR_ALT = :ICODUSR_ALT,'
      '  INOMUSR_ALT = :INOMUSR_ALT,'
      '  IDATHOR_ALT = :IDATHOR_ALT'
      'where'
      '  ICODMOE = :OLD_ICODMOE and'
      '  IDATA = :OLD_IDATA')
    InsertSQL.Strings = (
      'insert into CADIND'
      
        '  (ICODMOE, IDATA, IVLRPARCPR, IGVLRPARVDA, IVLRCOMCPR, IVLRCOMV' +
        'DA, '
      'ICODUSR_INC, '
      '   INOMUSR_INC, IDATHOR_INC, ICODUSR_ALT, INOMUSR_ALT, '
      'IDATHOR_ALT)'
      'values'
      '  (:ICODMOE, :IDATA, :IVLRPARCPR, :IGVLRPARVDA, :IVLRCOMCPR, '
      ':IVLRCOMVDA, '
      '   :ICODUSR_INC, :INOMUSR_INC, :IDATHOR_INC, :ICODUSR_ALT, '
      ':INOMUSR_ALT, '
      '   :IDATHOR_ALT)')
    DeleteSQL.Strings = (
      'delete from CADIND'
      'where'
      '  ICODMOE = :OLD_ICODMOE and'
      '  IDATA = :OLD_IDATA')
    Left = 497
    Top = 278
  end
  object Src_Ind: TDataSource
    DataSet = Tb_Ind
    Left = 526
    Top = 278
  end
  object Tb_MVei: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_MVeiBeforeInsert
    AfterInsert = Tb_MVeiAfterInsert
    BeforePost = Tb_MVeiBeforePost
    AfterPost = c
    AfterCancel = Tb_MVeiAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_MVeiCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMVEI')
    UpdateObject = U_MVei
    Left = 577
    Top = 98
    object Tb_MVeiMCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'MCODEMP'
      Origin = 'SG_ASSOC.CADMAN.MCODEMP'
    end
    object Tb_MVeiMCODMAN: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MCODMAN'
      Origin = 'SG_ASSOC.CADMAN.MCODMAN'
    end
    object Tb_MVeiMNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MNOME'
      Origin = 'SG_ASSOC.CADMAN.MNOME'
      Size = 40
    end
    object Tb_MVeiMPERIOD: TFloatField
      DisplayLabel = 'Periodicidade'
      FieldName = 'MPERIOD'
      Origin = 'SG_ASSOC.CADMAN.MPERIOD'
    end
    object Tb_MVeiMCODMOE: TFloatField
      DisplayLabel = 'C'#243'd.Moeda'
      FieldName = 'MCODMOE'
      Origin = 'SG_ASSOC.CADMAN.MCODMOE'
    end
    object Tb_MVeiMVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'MVALOR'
      Origin = 'SG_ASSOC.CADMAN.MVALOR'
      DisplayFormat = '#,##0.000'
    end
    object Tb_MVeinomemoe: TStringField
      DisplayLabel = 'Nome da Moeda'
      FieldKind = fkCalculated
      FieldName = 'nomemoe'
      Size = 30
      Calculated = True
    end
    object Tb_MVeiMKM: TFloatField
      DisplayLabel = 'KM'
      FieldName = 'MKM'
      Origin = 'SG_ASSOC.CADMAN.MKM'
    end
  end
  object U_MVei: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMVEI'
      'set'
      '  MCODEMP = :MCODEMP,'
      '  MCODMAN = :MCODMAN,'
      '  MNOME = :MNOME,'
      '  MPERIOD = :MPERIOD,'
      '  MKM = :MKM,'
      '  MCODMOE = :MCODMOE,'
      '  MVALOR = :MVALOR'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMAN = :OLD_MCODMAN')
    InsertSQL.Strings = (
      'insert into CADMVEI'
      '  (MCODEMP, MCODMAN, MNOME, MPERIOD, MKM, MCODMOE, MVALOR)'
      'values'
      
        '  (:MCODEMP, :MCODMAN, :MNOME, :MPERIOD, :MKM, :MCODMOE, :MVALOR' +
        ')')
    DeleteSQL.Strings = (
      'delete from CADMVEI'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMAN = :OLD_MCODMAN')
    Left = 606
    Top = 98
  end
  object Src_MVei: TDataSource
    DataSet = Tb_MVei
    Left = 634
    Top = 98
  end
  object Tb_Imo01: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Imo01BeforeInsert
    AfterInsert = Tb_Imo01AfterInsert
    BeforePost = Tb_Imo01BeforePost
    AfterPost = c
    AfterCancel = Tb_Imo01AfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Imo01CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADIMO01.*, ROWID AS IDIMO from CADIMO01')
    UpdateObject = U_Imo01
    Left = 467
    Top = 143
    object Tb_Imo01IM1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'IM1CODEMP'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODEMP'
    end
    object Tb_Imo01IM1CODIMO: TFloatField
      DisplayLabel = 'C'#243'd.Imob'
      FieldName = 'IM1CODIMO'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODIMO'
    end
    object Tb_Imo01IM1NOME: TStringField
      DisplayLabel = 'Nome do Objeto'
      FieldName = 'IM1NOME'
      Origin = 'SG_ASSOC.CADIMO01.IM1NOME'
      Size = 40
    end
    object Tb_Imo01IM1MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'IM1MARCA'
      Origin = 'SG_ASSOC.CADIMO01.IM1MARCA'
      Size = 40
    end
    object Tb_Imo01IM1MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'IM1MODELO'
      Origin = 'SG_ASSOC.CADIMO01.IM1MODELO'
      Size = 40
    end
    object Tb_Imo01IM1SERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'IM1SERIE'
      Origin = 'SG_ASSOC.CADIMO01.IM1SERIE'
      Size = 40
    end
    object Tb_Imo01IM1DATAAQ: TDateTimeField
      DisplayLabel = 'Data Aq'
      FieldName = 'IM1DATAAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1DATAAQ'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_Imo01IM1CODIND: TFloatField
      DisplayLabel = 'C'#243'd.Moe'
      FieldName = 'IM1CODIND'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODIND'
    end
    object Tb_Imo01IM1VALORCPR: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'IM1VALORCPR'
      Origin = 'SG_ASSOC.CADIMO01.IM1VALORCPR'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Imo01IM1PERCDEP: TFloatField
      DisplayLabel = 'Deprecia'#231#227'o'
      FieldName = 'IM1PERCDEP'
      Origin = 'SG_ASSOC.CADIMO01.IM1PERCDEP'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Imo01IM1LOCAQ: TStringField
      DisplayLabel = 'Local da Aquisi'#231#227'o'
      FieldName = 'IM1LOCAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1LOCAQ'
      Size = 40
    end
    object Tb_Imo01IM1CONTAQ: TStringField
      DisplayLabel = 'Pessoa de Contato'
      FieldName = 'IM1CONTAQ'
      Origin = 'SG_ASSOC.CADIMO01.IM1CONTAQ'
      Size = 40
    end
    object Tb_Imo01IM1FONEC1: TStringField
      DisplayLabel = 'Fone do Contato'
      FieldName = 'IM1FONEC1'
      Origin = 'SG_ASSOC.CADIMO01.IM1FONEC1'
    end
    object Tb_Imo01IM1OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'IM1OBS01'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS01'
      Size = 60
    end
    object Tb_Imo01IM1OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'IM1OBS02'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS02'
      Size = 60
    end
    object Tb_Imo01IM1OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'IM1OBS03'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS03'
      Size = 60
    end
    object Tb_Imo01IM1OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'IM1OBS04'
      Origin = 'SG_ASSOC.CADIMO01.IM1OBS04'
      Size = 60
    end
    object Tb_Imo01IM1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'IM1STATUS'
      Origin = 'SG_ASSOC.CADIMO01.IM1STATUS'
    end
    object Tb_Imo01IM1DATAVDA: TDateTimeField
      DisplayLabel = 'Data da Venda'
      FieldName = 'IM1DATAVDA'
      Origin = 'SG_ASSOC.CADIMO01.IM1DATAVDA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_Imo01IM1VLRVEND: TFloatField
      DisplayLabel = 'Valor Vendido'
      FieldName = 'IM1VLRVEND'
      Origin = 'SG_ASSOC.CADIMO01.IM1VLRVEND'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Imo01nomemoe: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemoe'
      Size = 40
      Calculated = True
    end
    object Tb_Imo01IM1GARANTIA: TFloatField
      DisplayLabel = 'Garantia'
      FieldName = 'IM1GARANTIA'
      Origin = 'SG_ASSOC.CADIMO01.IM1GARANTIA'
    end
    object Tb_Imo01datavenda: TStringField
      FieldKind = fkCalculated
      FieldName = 'datavenda'
      Size = 10
      Calculated = True
    end
    object Tb_Imo01datacompra: TStringField
      FieldKind = fkCalculated
      FieldName = 'datacompra'
      Size = 10
      Calculated = True
    end
    object Tb_Imo01IM1FOTO: TBlobField
      FieldName = 'IM1FOTO'
      Origin = 'SG_ASSOC.CADIMO01.IM1FOTO'
      Size = 1
    end
    object Tb_Imo01IM1CODPRO: TStringField
      FieldName = 'IM1CODPRO'
      Origin = 'SG_ASSOC.CADIMO01.IM1CODPRO'
    end
    object Tb_Imo01nomepro: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomepro'
      Size = 60
      Calculated = True
    end
    object Tb_Imo01IDIMO: TStringField
      FieldName = 'IDIMO'
      Size = 18
    end
  end
  object U_Imo01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIMO01'
      'set'
      '  IM1CODEMP = :IM1CODEMP,'
      '  IM1CODIMO = :IM1CODIMO,'
      '  IM1NOME = :IM1NOME,'
      '  IM1MARCA = :IM1MARCA,'
      '  IM1MODELO = :IM1MODELO,'
      '  IM1SERIE = :IM1SERIE,'
      '  IM1DATAAQ = :IM1DATAAQ,'
      '  IM1CODIND = :IM1CODIND,'
      '  IM1VALORCPR = :IM1VALORCPR,'
      '  IM1PERCDEP = :IM1PERCDEP,'
      '  IM1LOCAQ = :IM1LOCAQ,'
      '  IM1CONTAQ = :IM1CONTAQ,'
      '  IM1FONEC1 = :IM1FONEC1,'
      '  IM1OBS01 = :IM1OBS01,'
      '  IM1OBS02 = :IM1OBS02,'
      '  IM1OBS03 = :IM1OBS03,'
      '  IM1OBS04 = :IM1OBS04,'
      '  IM1STATUS = :IM1STATUS,'
      '  IM1DATAVDA = :IM1DATAVDA,'
      '  IM1VLRVEND = :IM1VLRVEND,'
      '  IM1GARANTIA = :IM1GARANTIA,'
      '  IM1CODPRO = :IM1CODPRO'
      'where'
      '  IM1CODEMP = :OLD_IM1CODEMP and'
      '  IM1CODIMO = :OLD_IM1CODIMO and'
      '  IM1NOME = :OLD_IM1NOME')
    InsertSQL.Strings = (
      'insert into CADIMO01'
      
        '  (IM1CODEMP, IM1CODIMO, IM1NOME, IM1MARCA, IM1MODELO, IM1SERIE,' +
        ' '
      'IM1DATAAQ, '
      '   IM1CODIND, IM1VALORCPR, IM1PERCDEP, IM1LOCAQ, IM1CONTAQ, '
      'IM1FONEC1, '
      
        '   IM1OBS01, IM1OBS02, IM1OBS03, IM1OBS04, IM1STATUS, IM1DATAVDA' +
        ', '
      'IM1VLRVEND, '
      '   IM1GARANTIA, IM1CODPRO)'
      'values'
      
        '  (:IM1CODEMP, :IM1CODIMO, :IM1NOME, :IM1MARCA, :IM1MODELO, :IM1' +
        'SERIE, '
      
        '   :IM1DATAAQ, :IM1CODIND, :IM1VALORCPR, :IM1PERCDEP, :IM1LOCAQ,' +
        ' '
      ':IM1CONTAQ, '
      
        '   :IM1FONEC1, :IM1OBS01, :IM1OBS02, :IM1OBS03, :IM1OBS04, :IM1S' +
        'TATUS, '
      '   :IM1DATAVDA, :IM1VLRVEND, :IM1GARANTIA, :IM1CODPRO)')
    DeleteSQL.Strings = (
      'delete from CADIMO01'
      'where'
      '  IM1CODEMP = :OLD_IM1CODEMP and'
      '  IM1CODIMO = :OLD_IM1CODIMO and'
      '  IM1NOME = :OLD_IM1NOME')
    Left = 497
    Top = 143
  end
  object Src_Imo01: TDataSource
    DataSet = Tb_Imo01
    Left = 526
    Top = 143
  end
  object Tb_Imo02: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Imo02BeforeInsert
    AfterInsert = Tb_Imo02AfterInsert
    BeforePost = Tb_Imo02BeforePost
    AfterPost = c
    AfterCancel = Tb_Imo02AfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Imo02CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIMO02')
    UpdateObject = U_Imo02
    Left = 467
    Top = 188
    object Tb_Imo02IM2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'IM2CODEMP'
      Origin = 'SG_ASSOC.CADIMO02.IM2CODEMP'
    end
    object Tb_Imo02IM2CODIMO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IM2CODIMO'
      Origin = 'SG_ASSOC.CADIMO02.IM2CODIMO'
    end
    object Tb_Imo02IM2SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'IM2SEQ'
      Origin = 'SG_ASSOC.CADIMO02.IM2SEQ'
    end
    object Tb_Imo02IM2CODMAN: TFloatField
      DisplayLabel = 'C'#243'd.Man.'
      FieldName = 'IM2CODMAN'
      Origin = 'SG_ASSOC.CADIMO02.IM2CODMAN'
    end
    object Tb_Imo02IM2DATAEM: TDateTimeField
      DisplayLabel = 'Data Envio'
      FieldName = 'IM2DATAEM'
      Origin = 'SG_ASSOC.CADIMO02.IM2DATAEM'
    end
    object Tb_Imo02IM2DATARM: TDateTimeField
      DisplayLabel = 'Data Retorno'
      FieldName = 'IM2DATARM'
      Origin = 'SG_ASSOC.CADIMO02.IM2DATARM'
    end
    object Tb_Imo02IM2EMPMAN: TStringField
      DisplayLabel = 'Empresa Manuten'#231'ao'
      FieldName = 'IM2EMPMAN'
      Origin = 'SG_ASSOC.CADIMO02.IM2EMPMAN'
      Size = 40
    end
    object Tb_Imo02IM2EMCONTATO: TStringField
      DisplayLabel = 'Pessoa Contato'
      FieldName = 'IM2EMCONTATO'
      Origin = 'SG_ASSOC.CADIMO02.IM2EMCONTATO'
      Size = 40
    end
    object Tb_Imo02IM2FONE: TStringField
      DisplayLabel = 'Fone Contato'
      FieldName = 'IM2FONE'
      Origin = 'SG_ASSOC.CADIMO02.IM2FONE'
    end
    object Tb_Imo02IM2FPGTO: TFloatField
      DisplayLabel = 'F.Pgto'
      FieldName = 'IM2FPGTO'
      Origin = 'SG_ASSOC.CADIMO02.IM2FPGTO'
    end
    object Tb_Imo02IM2OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'IM2OBS01'
      Origin = 'SG_ASSOC.CADIMO02.IM2OBS01'
      Size = 60
    end
    object Tb_Imo02IM2OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'IM2OBS02'
      Origin = 'SG_ASSOC.CADIMO02.IM2OBS02'
      Size = 60
    end
    object Tb_Imo02IM2OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'IM2OBS03'
      Origin = 'SG_ASSOC.CADIMO02.IM2OBS03'
      Size = 60
    end
    object Tb_Imo02IM2OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'IM2OBS04'
      Origin = 'SG_ASSOC.CADIMO02.IM2OBS04'
      Size = 60
    end
    object Tb_Imo02nomeman: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'nomeman'
      Size = 40
      Calculated = True
    end
    object Tb_Imo02dataenv: TStringField
      DisplayLabel = 'Data do Envio'
      FieldKind = fkCalculated
      FieldName = 'dataenv'
      Size = 10
      Calculated = True
    end
    object Tb_Imo02dataret: TStringField
      DisplayLabel = 'Data Retorno'
      FieldKind = fkCalculated
      FieldName = 'dataret'
      Size = 10
      Calculated = True
    end
    object Tb_Imo02IM2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'IM2QTD'
      Origin = 'SG_ASSOC.CADIMO02.IM2QTD'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Imo02IM2PCOUNI: TFloatField
      DisplayLabel = 'P'#231'o.Unit.'
      FieldName = 'IM2PCOUNI'
      Origin = 'SG_ASSOC.CADIMO02.IM2PCOUNI'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Imo02total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,##0.000'
      Calculated = True
    end
    object Tb_Imo02IM2STATUS: TFloatField
      FieldName = 'IM2STATUS'
      Origin = 'SG_ASSOC.CADIMO02.IM2STATUS'
    end
    object Tb_Imo02nomfpgto: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfpgto'
      Size = 10
      Calculated = True
    end
  end
  object U_Imo02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADIMO02'
      'set'
      '  IM2CODEMP = :IM2CODEMP,'
      '  IM2CODIMO = :IM2CODIMO,'
      '  IM2SEQ = :IM2SEQ,'
      '  IM2CODMAN = :IM2CODMAN,'
      '  IM2DATAEM = :IM2DATAEM,'
      '  IM2DATARM = :IM2DATARM,'
      '  IM2EMPMAN = :IM2EMPMAN,'
      '  IM2EMCONTATO = :IM2EMCONTATO,'
      '  IM2FONE = :IM2FONE,'
      '  IM2QTD = :IM2QTD,'
      '  IM2PCOUNI = :IM2PCOUNI,'
      '  IM2FPGTO = :IM2FPGTO,'
      '  IM2OBS01 = :IM2OBS01,'
      '  IM2OBS02 = :IM2OBS02,'
      '  IM2OBS03 = :IM2OBS03,'
      '  IM2OBS04 = :IM2OBS04,'
      '  IM2STATUS = :IM2STATUS'
      'where'
      '  IM2CODEMP = :OLD_IM2CODEMP and'
      '  IM2CODIMO = :OLD_IM2CODIMO and'
      '  IM2SEQ = :OLD_IM2SEQ')
    InsertSQL.Strings = (
      'insert into CADIMO02'
      
        '  (IM2CODEMP, IM2CODIMO, IM2SEQ, IM2CODMAN, IM2DATAEM, IM2DATARM' +
        ', '
      'IM2EMPMAN, '
      
        '   IM2EMCONTATO, IM2FONE, IM2QTD, IM2PCOUNI, IM2FPGTO, IM2OBS01,' +
        ' '
      'IM2OBS02, '
      '   IM2OBS03, IM2OBS04, IM2STATUS)'
      'values'
      '  (:IM2CODEMP, :IM2CODIMO, :IM2SEQ, :IM2CODMAN, :IM2DATAEM, '
      ':IM2DATARM, '
      '   :IM2EMPMAN, :IM2EMCONTATO, :IM2FONE, :IM2QTD, :IM2PCOUNI, '
      ':IM2FPGTO, '
      '   :IM2OBS01, :IM2OBS02, :IM2OBS03, :IM2OBS04, :IM2STATUS)')
    DeleteSQL.Strings = (
      'delete from CADIMO02'
      'where'
      '  IM2CODEMP = :OLD_IM2CODEMP and'
      '  IM2CODIMO = :OLD_IM2CODIMO and'
      '  IM2SEQ = :OLD_IM2SEQ')
    Left = 497
    Top = 188
  end
  object Src_Imo02: TDataSource
    DataSet = Tb_Imo02
    Left = 526
    Top = 188
  end
  object Tb_Vei01: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Vei01BeforeInsert
    AfterInsert = Tb_Vei01AfterInsert
    BeforePost = Tb_Vei01BeforePost
    AfterPost = c
    AfterCancel = Tb_Vei01AfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Vei01CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADVEI01')
    UpdateObject = U_Vei01
    Left = 577
    Top = 238
    object Tb_Vei01V1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'V1CODEMP'
      Origin = 'SG_ASSOC.CADVEI01.V1CODEMP'
    end
    object Tb_Vei01V1CODVEI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'V1CODVEI'
      Origin = 'SG_ASSOC.CADVEI01.V1CODVEI'
    end
    object Tb_Vei01V1NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'V1NOME'
      Origin = 'SG_ASSOC.CADVEI01.V1NOME'
      Size = 40
    end
    object Tb_Vei01V1MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'V1MARCA'
      Origin = 'SG_ASSOC.CADVEI01.V1MARCA'
      Size = 40
    end
    object Tb_Vei01V1MODELO: TStringField
      DisplayLabel = 'Modela'
      FieldName = 'V1MODELO'
      Origin = 'SG_ASSOC.CADVEI01.V1MODELO'
      Size = 40
    end
    object Tb_Vei01V1CHASSIS: TStringField
      DisplayLabel = 'Chassis'
      FieldName = 'V1CHASSIS'
      Origin = 'SG_ASSOC.CADVEI01.V1CHASSIS'
      Size = 40
    end
    object Tb_Vei01V1RENAVAN: TStringField
      DisplayLabel = 'Renava'
      FieldName = 'V1RENAVAN'
      Origin = 'SG_ASSOC.CADVEI01.V1RENAVAN'
      Size = 40
    end
    object Tb_Vei01V1PLACAAT: TStringField
      DisplayLabel = 'Placa Atual'
      FieldName = 'V1PLACAAT'
      Origin = 'SG_ASSOC.CADVEI01.V1PLACAAT'
      Size = 8
    end
    object Tb_Vei01V1PLACAANT: TStringField
      DisplayLabel = 'Placa Anterior'
      FieldName = 'V1PLACAANT'
      Origin = 'SG_ASSOC.CADVEI01.V1PLACAANT'
      Size = 8
    end
    object Tb_Vei01V1LOCAQ: TStringField
      DisplayLabel = 'Empresa Aquisi'#231#227'o'
      FieldName = 'V1LOCAQ'
      Origin = 'SG_ASSOC.CADVEI01.V1LOCAQ'
      Size = 40
    end
    object Tb_Vei01V1CONTAQ: TStringField
      DisplayLabel = 'Contato '
      FieldName = 'V1CONTAQ'
      Origin = 'SG_ASSOC.CADVEI01.V1CONTAQ'
      Size = 40
    end
    object Tb_Vei01V1FONEC1: TStringField
      DisplayLabel = 'Fone Contato'
      FieldName = 'V1FONEC1'
      Origin = 'SG_ASSOC.CADVEI01.V1FONEC1'
    end
    object Tb_Vei01V1CODIND: TFloatField
      DisplayLabel = 'C'#243'd.Moeda'
      FieldName = 'V1CODIND'
      Origin = 'SG_ASSOC.CADVEI01.V1CODIND'
    end
    object Tb_Vei01V1VALORCPR: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'V1VALORCPR'
      Origin = 'SG_ASSOC.CADVEI01.V1VALORCPR'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Vei01V1PERCDEP: TFloatField
      DisplayLabel = '%Deprecia'#231#227'o'
      FieldName = 'V1PERCDEP'
      Origin = 'SG_ASSOC.CADVEI01.V1PERCDEP'
    end
    object Tb_Vei01V1OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'V1OBS01'
      Origin = 'SG_ASSOC.CADVEI01.V1OBS01'
      Size = 60
    end
    object Tb_Vei01V1OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'V1OBS02'
      Origin = 'SG_ASSOC.CADVEI01.V1OBS02'
      Size = 60
    end
    object Tb_Vei01V1OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'V1OBS03'
      Origin = 'SG_ASSOC.CADVEI01.V1OBS03'
      Size = 60
    end
    object Tb_Vei01V1OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'V1OBS04'
      Origin = 'SG_ASSOC.CADVEI01.V1OBS04'
      Size = 60
    end
    object Tb_Vei01V1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'V1STATUS'
      Origin = 'SG_ASSOC.CADVEI01.V1STATUS'
    end
    object Tb_Vei01V1DATAVDA: TDateTimeField
      DisplayLabel = 'Data da Venda'
      FieldName = 'V1DATAVDA'
      Origin = 'SG_ASSOC.CADVEI01.V1DATAVDA'
    end
    object Tb_Vei01V1VLRVEND: TFloatField
      DisplayLabel = 'Valor da Venda'
      FieldName = 'V1VLRVEND'
      Origin = 'SG_ASSOC.CADVEI01.V1VLRVEND'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Vei01V1GARANTIA: TFloatField
      DisplayLabel = 'Garantia Meses'
      FieldName = 'V1GARANTIA'
      Origin = 'SG_ASSOC.CADVEI01.V1GARANTIA'
    end
    object Tb_Vei01V1UFPLACAATU: TStringField
      DisplayLabel = 'UF-Placa Atual'
      FieldName = 'V1UFPLACAATU'
      Origin = 'SG_ASSOC.CADVEI01.V1UFPLACAATU'
      Size = 2
    end
    object Tb_Vei01V1UFPLACAANT: TStringField
      DisplayLabel = 'UF-Placa Anterior'
      FieldName = 'V1UFPLACAANT'
      Origin = 'SG_ASSOC.CADVEI01.V1UFPLACAANT'
      Size = 2
    end
    object Tb_Vei01V1DATAAQ: TDateTimeField
      DisplayLabel = 'Data Aquisi'#231#227'o'
      FieldName = 'V1DATAAQ'
      Origin = 'SG_ASSOC.CADVEI01.V1DATAAQ'
    end
    object Tb_Vei01V1COMBUST: TFloatField
      FieldName = 'V1COMBUST'
      Origin = 'SG_ASSOC.CADVEI01.V1COMBUST'
    end
    object Tb_Vei01dt_compra: TStringField
      FieldKind = fkCalculated
      FieldName = 'dt_compra'
      Size = 10
      Calculated = True
    end
    object Tb_Vei01dt_venda: TStringField
      FieldKind = fkCalculated
      FieldName = 'dt_venda'
      Size = 10
      Calculated = True
    end
    object Tb_Vei01nomemoe: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomemoe'
      Size = 40
      Calculated = True
    end
  end
  object U_Vei01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADVEI01'
      'set'
      '  V1CODEMP = :V1CODEMP,'
      '  V1CODVEI = :V1CODVEI,'
      '  V1NOME = :V1NOME,'
      '  V1MARCA = :V1MARCA,'
      '  V1MODELO = :V1MODELO,'
      '  V1CHASSIS = :V1CHASSIS,'
      '  V1RENAVAN = :V1RENAVAN,'
      '  V1PLACAAT = :V1PLACAAT,'
      '  V1PLACAANT = :V1PLACAANT,'
      '  V1LOCAQ = :V1LOCAQ,'
      '  V1CONTAQ = :V1CONTAQ,'
      '  V1FONEC1 = :V1FONEC1,'
      '  V1CODIND = :V1CODIND,'
      '  V1VALORCPR = :V1VALORCPR,'
      '  V1PERCDEP = :V1PERCDEP,'
      '  V1OBS01 = :V1OBS01,'
      '  V1OBS02 = :V1OBS02,'
      '  V1OBS03 = :V1OBS03,'
      '  V1OBS04 = :V1OBS04,'
      '  V1STATUS = :V1STATUS,'
      '  V1DATAVDA = :V1DATAVDA,'
      '  V1VLRVEND = :V1VLRVEND,'
      '  V1UFPLACAATU = :V1UFPLACAATU,'
      '  V1UFPLACAANT = :V1UFPLACAANT,'
      '  V1DATAAQ = :V1DATAAQ,'
      '  V1GARANTIA = :V1GARANTIA,'
      '  V1COMBUST = :V1COMBUST'
      'where'
      '  V1CODEMP = :OLD_V1CODEMP and'
      '  V1CODVEI = :OLD_V1CODVEI and'
      '  V1NOME = :OLD_V1NOME')
    InsertSQL.Strings = (
      'insert into CADVEI01'
      '  (V1CODEMP, V1CODVEI, V1NOME, V1MARCA, V1MODELO, V1CHASSIS, '
      'V1RENAVAN, '
      
        '   V1PLACAAT, V1PLACAANT, V1LOCAQ, V1CONTAQ, V1FONEC1, V1CODIND,' +
        ' '
      'V1VALORCPR, '
      '   V1PERCDEP, V1OBS01, V1OBS02, V1OBS03, V1OBS04, V1STATUS, '
      'V1DATAVDA, '
      '   V1VLRVEND, V1UFPLACAATU, V1UFPLACAANT, V1DATAAQ, V1GARANTIA, '
      'V1COMBUST)'
      'values'
      
        '  (:V1CODEMP, :V1CODVEI, :V1NOME, :V1MARCA, :V1MODELO, :V1CHASSI' +
        'S, '
      ':V1RENAVAN, '
      
        '   :V1PLACAAT, :V1PLACAANT, :V1LOCAQ, :V1CONTAQ, :V1FONEC1, :V1C' +
        'ODIND, '
      
        '   :V1VALORCPR, :V1PERCDEP, :V1OBS01, :V1OBS02, :V1OBS03, :V1OBS' +
        '04, '
      ':V1STATUS, '
      
        '   :V1DATAVDA, :V1VLRVEND, :V1UFPLACAATU, :V1UFPLACAANT, :V1DATA' +
        'AQ, '
      ':V1GARANTIA, '
      '   :V1COMBUST)')
    DeleteSQL.Strings = (
      'delete from CADVEI01'
      'where'
      '  V1CODEMP = :OLD_V1CODEMP and'
      '  V1CODVEI = :OLD_V1CODVEI and'
      '  V1NOME = :OLD_V1NOME')
    Left = 606
    Top = 238
  end
  object Srv_Vei01: TDataSource
    DataSet = Tb_Vei01
    Left = 634
    Top = 238
  end
  object Tb_Vei02: TQuery
    CachedUpdates = True
    BeforePost = Tb_Vei02BeforePost
    AfterPost = c
    AfterCancel = Tb_Vei02AfterCancel
    AfterDelete = c
    OnCalcFields = Tb_Vei02CalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADVEI02')
    UpdateObject = U_Vei02
    Left = 577
    Top = 283
    object Tb_Vei02V2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'V2CODEMP'
      Origin = 'SG_ASSOC.CADVEI02.V2CODEMP'
    end
    object Tb_Vei02V2CODVEI: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'V2CODVEI'
      Origin = 'SG_ASSOC.CADVEI02.V2CODVEI'
    end
    object Tb_Vei02V2SEQ: TFloatField
      DisplayLabel = 'Seq'
      FieldName = 'V2SEQ'
      Origin = 'SG_ASSOC.CADVEI02.V2SEQ'
    end
    object Tb_Vei02V2ORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'V2ORIGEM'
      Origin = 'SG_ASSOC.CADVEI02.V2ORIGEM'
    end
    object Tb_Vei02V2CODMAN: TFloatField
      DisplayLabel = 'C'#243'd.Man'
      FieldName = 'V2CODMAN'
      Origin = 'SG_ASSOC.CADVEI02.V2CODMAN'
    end
    object Tb_Vei02V2DATAEM: TDateTimeField
      DisplayLabel = 'Data Envio'
      FieldName = 'V2DATAEM'
      Origin = 'SG_ASSOC.CADVEI02.V2DATAEM'
    end
    object Tb_Vei02V2DATARM: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'V2DATARM'
      Origin = 'SG_ASSOC.CADVEI02.V2DATARM'
    end
    object Tb_Vei02V2EMPMAN: TStringField
      DisplayLabel = 'Empresa Manuten'#231#227'o'
      FieldName = 'V2EMPMAN'
      Origin = 'SG_ASSOC.CADVEI02.V2EMPMAN'
      Size = 40
    end
    object Tb_Vei02V2EMCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'V2EMCONTATO'
      Origin = 'SG_ASSOC.CADVEI02.V2EMCONTATO'
      Size = 40
    end
    object Tb_Vei02V2FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'V2FONE'
      Origin = 'SG_ASSOC.CADVEI02.V2FONE'
    end
    object Tb_Vei02V2QTD: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'V2QTD'
      Origin = 'SG_ASSOC.CADVEI02.V2QTD'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Vei02V2PCOUNI: TFloatField
      DisplayLabel = 'P'#231'o.Unit.'
      FieldName = 'V2PCOUNI'
      Origin = 'SG_ASSOC.CADVEI02.V2PCOUNI'
      DisplayFormat = '#,##0.000'
    end
    object Tb_Vei02V2KM: TFloatField
      DisplayLabel = 'KM'
      FieldName = 'V2KM'
      Origin = 'SG_ASSOC.CADVEI02.V2KM'
    end
    object Tb_Vei02V2STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'V2STATUS'
      Origin = 'SG_ASSOC.CADVEI02.V2STATUS'
    end
    object Tb_Vei02V2FPGTO: TFloatField
      DisplayLabel = 'F.Pgto.'
      FieldName = 'V2FPGTO'
      Origin = 'SG_ASSOC.CADVEI02.V2FPGTO'
    end
    object Tb_Vei02V2OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es linha 01'
      FieldName = 'V2OBS01'
      Origin = 'SG_ASSOC.CADVEI02.V2OBS01'
      Size = 60
    end
    object Tb_Vei02V2OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es linha 02'
      FieldName = 'V2OBS02'
      Origin = 'SG_ASSOC.CADVEI02.V2OBS02'
      Size = 60
    end
    object Tb_Vei02V2OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es linha 03'
      FieldName = 'V2OBS03'
      Origin = 'SG_ASSOC.CADVEI02.V2OBS03'
      Size = 60
    end
    object Tb_Vei02V2OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es linha 04'
      FieldName = 'V2OBS04'
      Origin = 'SG_ASSOC.CADVEI02.V2OBS04'
      Size = 60
    end
    object Tb_Vei02dataenv: TStringField
      DisplayLabel = 'Data Envio'
      FieldKind = fkCalculated
      FieldName = 'dataenv'
      Size = 10
      Calculated = True
    end
    object Tb_Vei02dataret: TStringField
      DisplayLabel = 'Data Retorno'
      FieldKind = fkCalculated
      FieldName = 'dataret'
      Size = 10
      Calculated = True
    end
    object Tb_Vei02total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object Tb_Vei02nomeman: TStringField
      DisplayLabel = 'Nome Manuten'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'nomeman'
      Size = 40
      Calculated = True
    end
    object Tb_Vei02nomfpgto: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfpgto'
      Size = 10
      Calculated = True
    end
    object Tb_Vei02V2DESCPQTD: TFloatField
      FieldName = 'V2DESCPQTD'
      Origin = 'SG_ASSOC.CADVEI02.V2DESCPQTD'
    end
    object Tb_Vei02totalsdesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalsdesc'
      Calculated = True
    end
  end
  object U_Vei02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADVEI02'
      'set'
      '  V2CODEMP = :V2CODEMP,'
      '  V2CODVEI = :V2CODVEI,'
      '  V2SEQ = :V2SEQ,'
      '  V2ORIGEM = :V2ORIGEM,'
      '  V2CODMAN = :V2CODMAN,'
      '  V2DATAEM = :V2DATAEM,'
      '  V2DATARM = :V2DATARM,'
      '  V2EMPMAN = :V2EMPMAN,'
      '  V2EMCONTATO = :V2EMCONTATO,'
      '  V2FONE = :V2FONE,'
      '  V2QTD = :V2QTD,'
      '  V2PCOUNI = :V2PCOUNI,'
      '  V2KM = :V2KM,'
      '  V2STATUS = :V2STATUS,'
      '  V2FPGTO = :V2FPGTO,'
      '  V2OBS01 = :V2OBS01,'
      '  V2OBS02 = :V2OBS02,'
      '  V2OBS03 = :V2OBS03,'
      '  V2OBS04 = :V2OBS04,'
      '  V2DESCPQTD = :V2DESCPQTD'
      'where'
      '  V2CODEMP = :OLD_V2CODEMP and'
      '  V2CODVEI = :OLD_V2CODVEI and'
      '  V2SEQ = :OLD_V2SEQ')
    InsertSQL.Strings = (
      'insert into CADVEI02'
      '  (V2CODEMP, V2CODVEI, V2SEQ, V2ORIGEM, V2CODMAN, V2DATAEM, '
      'V2DATARM, V2EMPMAN, '
      
        '   V2EMCONTATO, V2FONE, V2QTD, V2PCOUNI, V2KM, V2STATUS, V2FPGTO' +
        ', '
      'V2OBS01, '
      '   V2OBS02, V2OBS03, V2OBS04, V2DESCPQTD)'
      'values'
      
        '  (:V2CODEMP, :V2CODVEI, :V2SEQ, :V2ORIGEM, :V2CODMAN, :V2DATAEM' +
        ', '
      ':V2DATARM, '
      '   :V2EMPMAN, :V2EMCONTATO, :V2FONE, :V2QTD, :V2PCOUNI, :V2KM, '
      ':V2STATUS, '
      
        '   :V2FPGTO, :V2OBS01, :V2OBS02, :V2OBS03, :V2OBS04, :V2DESCPQTD' +
        ')')
    DeleteSQL.Strings = (
      'delete from CADVEI02'
      'where'
      '  V2CODEMP = :OLD_V2CODEMP and'
      '  V2CODVEI = :OLD_V2CODVEI and'
      '  V2SEQ = :OLD_V2SEQ')
    Left = 606
    Top = 283
  end
  object Src_Vei02: TDataSource
    DataSet = Tb_Vei02
    Left = 634
    Top = 283
  end
  object Tb_MImo: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_MImoBeforeInsert
    AfterInsert = Tb_MImoAfterInsert
    BeforePost = Tb_MImoBeforePost
    AfterPost = c
    AfterCancel = Tb_MImoAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_MImoCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADMIMO')
    UpdateObject = U_MImo
    Left = 577
    Top = 145
    object Tb_MImoMCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'MCODEMP'
      Origin = 'SG_ASSOC.CADMIMO.MCODEMP'
    end
    object Tb_MImoMCODMAN: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MCODMAN'
      Origin = 'SG_ASSOC.CADMIMO.MCODMAN'
    end
    object Tb_MImoMNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'MNOME'
      Origin = 'SG_ASSOC.CADMIMO.MNOME'
      Size = 40
    end
    object Tb_MImoMPERIOD: TFloatField
      DisplayLabel = 'Periodicidade'
      FieldName = 'MPERIOD'
      Origin = 'SG_ASSOC.CADMIMO.MPERIOD'
    end
    object Tb_MImoMCODMOE: TFloatField
      DisplayLabel = 'C'#243'd.Moeda'
      FieldName = 'MCODMOE'
      Origin = 'SG_ASSOC.CADMIMO.MCODMOE'
    end
    object Tb_MImoMVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'MVALOR'
      Origin = 'SG_ASSOC.CADMIMO.MVALOR'
      DisplayFormat = '#,##0.000'
    end
    object Tb_MImonomemoe: TStringField
      DisplayLabel = 'Nome da Moeda'
      FieldKind = fkCalculated
      FieldName = 'nomemoe'
      Size = 40
      Calculated = True
    end
  end
  object U_MImo: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMIMO'
      'set'
      '  MCODEMP = :MCODEMP,'
      '  MCODMAN = :MCODMAN,'
      '  MNOME = :MNOME,'
      '  MPERIOD = :MPERIOD,'
      '  MCODMOE = :MCODMOE,'
      '  MVALOR = :MVALOR'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMAN = :OLD_MCODMAN')
    InsertSQL.Strings = (
      'insert into CADMIMO'
      '  (MCODEMP, MCODMAN, MNOME, MPERIOD, MCODMOE, MVALOR)'
      'values'
      '  (:MCODEMP, :MCODMAN, :MNOME, :MPERIOD, :MCODMOE, :MVALOR)')
    DeleteSQL.Strings = (
      'delete from CADMIMO'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMAN = :OLD_MCODMAN')
    Left = 606
    Top = 145
  end
  object Src_MImo: TDataSource
    DataSet = Tb_MImo
    Left = 634
    Top = 145
  end
  object Tb_GC01: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADGC01'
      'where'
      '    GC1CODEMP  like :CODEMP'
      'and GC1CODGIR  like :CODGIR'
      'and GC1NOMEGIR like :NOMEGIR'
      '')
    UpdateObject = U_GC01
    Left = 353
    Top = 235
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODGIR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMEGIR'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_GC01GC1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GC1CODEMP'
      Origin = 'SG_ASSOC.CADGC01.GC1CODEMP'
    end
    object Tb_GC01GC1CODGIR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GC1CODGIR'
      Origin = 'SG_ASSOC.CADGC01.GC1CODGIR'
    end
    object Tb_GC01GC1NOMEGIR: TStringField
      DisplayLabel = 'Nome do Giro'
      FieldName = 'GC1NOMEGIR'
      Origin = 'SG_ASSOC.CADGC01.GC1NOMEGIR'
      Size = 40
    end
    object Tb_GC01GC1QTDCID: TFloatField
      DisplayLabel = 'Qtd.Cidade'
      FieldName = 'GC1QTDCID'
      Origin = 'SG_ASSOC.CADGC01.GC1QTDCID'
    end
    object Tb_GC01GC1OBSL01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'GC1OBSL01'
      Origin = 'SG_ASSOC.CADGC01.GC1OBSL01'
      Size = 78
    end
    object Tb_GC01GC1OBSL02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'GC1OBSL02'
      Origin = 'SG_ASSOC.CADGC01.GC1OBSL02'
      Size = 78
    end
    object Tb_GC01GC1OBSL03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'GC1OBSL03'
      Origin = 'SG_ASSOC.CADGC01.GC1OBSL03'
      Size = 78
    end
    object Tb_GC01GC1STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'GC1STATUS'
      Origin = 'SG_ASSOC.CADGC01.GC1STATUS'
    end
    object Tb_GC01GC1TIPGIR: TFloatField
      FieldName = 'GC1TIPGIR'
      Origin = 'SG_ASSOC.CADGC01.GC1TIPGIR'
    end
  end
  object U_GC01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGC01'
      'set'
      '  GC1CODEMP = :GC1CODEMP,'
      '  GC1CODGIR = :GC1CODGIR,'
      '  GC1NOMEGIR = :GC1NOMEGIR,'
      '  GC1QTDCID = :GC1QTDCID,'
      '  GC1OBSL01 = :GC1OBSL01,'
      '  GC1OBSL02 = :GC1OBSL02,'
      '  GC1OBSL03 = :GC1OBSL03,'
      '  GC1STATUS = :GC1STATUS'
      'where'
      '  GC1CODEMP = :OLD_GC1CODEMP and'
      '  GC1CODGIR = :OLD_GC1CODGIR')
    InsertSQL.Strings = (
      'insert into CADGC01'
      '  (GC1CODEMP, GC1CODGIR, GC1NOMEGIR, GC1QTDCID, GC1OBSL01, '
      'GC1OBSL02, GC1OBSL03, '
      '   GC1STATUS)'
      'values'
      '  (:GC1CODEMP, :GC1CODGIR, :GC1NOMEGIR, :GC1QTDCID, :GC1OBSL01, '
      ':GC1OBSL02, '
      '   :GC1OBSL03, :GC1STATUS)')
    DeleteSQL.Strings = (
      'delete from CADGC01'
      'where'
      '  GC1CODEMP = :OLD_GC1CODEMP and'
      '  GC1CODGIR = :OLD_GC1CODGIR')
    Left = 382
    Top = 235
  end
  object Src_GC01: TDataSource
    DataSet = Tb_GC01
    Left = 410
    Top = 235
  end
  object Tb_GC02: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select GC2CODEMP,'
      '       GC2CODGIR,'
      '       GC2CODLOC,'
      '       GC2SEQ,'
      '       LNOME,LUF,'
      '       BCODBAI AS CODBAI,'
      '       DECODE(BNOME,NULL,'#39'todos'#39',BNOME) as NOMBAI'
      'from CADGC02,CADLOC,CADBAI'
      'where GC2CODEMP is null'
      'and LCODEMP=GC2CODEMP'
      'and LCODLOC=GC2CODLOC'
      'and BCODBAI(+)=GC2CODBAI')
    UpdateObject = U_GC02
    Left = 353
    Top = 278
    object Tb_GC02GC2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GC2CODEMP'
      Origin = 'SG_ASSOC.CADGC02.GC2CODEMP'
    end
    object Tb_GC02GC2CODGIR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GC2CODGIR'
      Origin = 'SG_ASSOC.CADGC02.GC2CODGIR'
    end
    object Tb_GC02GC2CODLOC: TFloatField
      DisplayLabel = 'C'#243'd.Cidade'
      FieldName = 'GC2CODLOC'
      Origin = 'SG_ASSOC.CADGC02.GC2CODLOC'
    end
    object Tb_GC02GC2SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'GC2SEQ'
      Origin = 'SG_ASSOC.CADGC02.GC2SEQ'
    end
    object Tb_GC02LNOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'LNOME'
      Origin = 'SG_ASSOC.CADLOC.LNOME'
      Size = 30
    end
    object Tb_GC02LUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'LUF'
      Origin = 'SG_ASSOC.CADLOC.LUF'
      Size = 2
    end
    object Tb_GC02CODBAI: TFloatField
      DisplayLabel = 'C'#243'd.Bai'
      FieldName = 'CODBAI'
    end
    object Tb_GC02NOMBAI: TStringField
      DisplayLabel = 'Nome do Bairro'
      FieldName = 'NOMBAI'
      Size = 30
    end
  end
  object U_GC02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGC02'
      'set'
      '  GC2CODEMP = :GC2CODEMP,'
      '  GC2CODGIR = :GC2CODGIR,'
      '  GC2CODLOC = :GC2CODLOC,'
      '  GC2SEQ = :GC2SEQ'
      'where'
      '  GC2CODEMP = :OLD_GC2CODEMP and'
      '  GC2CODGIR = :OLD_GC2CODGIR and'
      '  GC2SEQ = :OLD_GC2SEQ')
    InsertSQL.Strings = (
      'insert into CADGC02'
      '  (GC2CODEMP, GC2CODGIR, GC2CODLOC, GC2SEQ)'
      'values'
      '  (:GC2CODEMP, :GC2CODGIR, :GC2CODLOC, :GC2SEQ)')
    DeleteSQL.Strings = (
      'delete from CADGC02'
      'where'
      '  GC2CODEMP = :OLD_GC2CODEMP and'
      '  GC2CODGIR = :OLD_GC2CODGIR and'
      '  GC2SEQ = :OLD_GC2SEQ')
    Left = 382
    Top = 278
  end
  object Src_GC02: TDataSource
    DataSet = Tb_GC02
    Left = 410
    Top = 278
  end
  object Tb_Help: TQuery
    CachedUpdates = True
    BeforePost = Tb_HelpBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_HelpCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADHELP')
    UpdateObject = U_Help
    Left = 467
    Top = 97
    object Tb_HelpHP_CODSEG: TFloatField
      DisplayLabel = 'Segmento'
      FieldName = 'HP_CODSEG'
      Origin = 'SG_ASSOC.CADHELP.HP_CODSEG'
    end
    object Tb_HelpHP_CODLINK: TFloatField
      DisplayLabel = 'C'#243'digo do Link'
      FieldName = 'HP_CODLINK'
      Origin = 'SG_ASSOC.CADHELP.HP_CODLINK'
    end
    object Tb_HelpHP_DESC: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'HP_DESC'
      Origin = 'SG_ASSOC.CADHELP.HP_DESC'
      BlobType = ftMemo
      Size = 1
    end
    object Tb_HelpHP_NOMCAM: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'HP_NOMCAM'
      Origin = 'SG_ASSOC.CADHELP.HP_NOMCAM'
      Size = 30
    end
    object Tb_HelpHP_MAPA: TStringField
      DisplayLabel = 'Mapa do Link'
      FieldName = 'HP_MAPA'
      Origin = 'SG_ASSOC.CADHELP.HP_MAPA'
      Size = 30
    end
    object Tb_HelpHP_FORMULARIO: TStringField
      DisplayLabel = 'Formul'#225'rio'
      FieldName = 'HP_FORMULARIO'
      Origin = 'SG_ASSOC.CADHELP.HP_FORMULARIO'
      Size = 30
    end
    object Tb_Helpnomeseg: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomeseg'
      Size = 60
      Calculated = True
    end
  end
  object U_Help: TUpdateSQL
    ModifySQL.Strings = (
      'update CADHELP'
      'set'
      '  HP_CODSEG = :HP_CODSEG,'
      '  HP_CODLINK = :HP_CODLINK,'
      '  HP_NOMCAM = :HP_NOMCAM,'
      '  HP_MAPA = :HP_MAPA,'
      '  HP_FORMULARIO = :HP_FORMULARIO'
      'where'
      '  HP_CODLINK = :OLD_HP_CODLINK')
    InsertSQL.Strings = (
      'insert into CADHELP'
      '  (HP_CODSEG, HP_CODLINK, HP_NOMCAM, HP_MAPA, HP_FORMULARIO)'
      'values'
      
        '  (:HP_CODSEG, :HP_CODLINK, :HP_NOMCAM, :HP_MAPA, :HP_FORMULARIO' +
        ')')
    DeleteSQL.Strings = (
      'delete from CADHELP'
      'where'
      '  HP_CODLINK = :OLD_HP_CODLINK')
    Left = 497
    Top = 97
  end
  object Src_Help: TDataSource
    DataSet = Tb_Help
    Left = 526
    Top = 97
  end
  object Tb_DupRec: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_DupRecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADDUPREC')
    UpdateObject = U_DupRec
    Left = 233
    Top = 143
    object Tb_DupRecDPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'DPCODEMP'
      Origin = 'SG_ASSOC.CADDUPREC.DPCODEMP'
    end
    object Tb_DupRecDPTPOR: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DPTPOR'
      Origin = 'SG_ASSOC.CADDUPREC.DPTPOR'
      Size = 2
    end
    object Tb_DupRecDPCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DPCODIGO'
      Origin = 'SG_ASSOC.CADDUPREC.DPCODIGO'
    end
    object Tb_DupRecDPSEQ: TFloatField
      DisplayLabel = 'Seq.'
      FieldName = 'DPSEQ'
      Origin = 'SG_ASSOC.CADDUPREC.DPSEQ'
    end
    object Tb_DupRecDPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'DPLOTE'
      Origin = 'SG_ASSOC.CADDUPREC.DPLOTE'
    end
    object Tb_DupRecDPNR: TFloatField
      DisplayLabel = 'NR'
      FieldName = 'DPNR'
      Origin = 'SG_ASSOC.CADDUPREC.DPNR'
    end
    object Tb_DupRecDPNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DPNUMERO'
      Origin = 'SG_ASSOC.CADDUPREC.DPNUMERO'
    end
    object Tb_DupRecDPDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'DPDESD'
      Origin = 'SG_ASSOC.CADDUPREC.DPDESD'
      Size = 2
    end
    object Tb_DupRecDPDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'DPDUP'
      Origin = 'SG_ASSOC.CADDUPREC.DPDUP'
    end
    object Tb_DupRecDPCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'DPCODCLI'
      Origin = 'SG_ASSOC.CADDUPREC.DPCODCLI'
    end
    object Tb_DupRecDPCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'DPCODVEN'
      Origin = 'SG_ASSOC.CADDUPREC.DPCODVEN'
    end
    object Tb_DupRecDPDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'DPDTEMIS'
      Origin = 'SG_ASSOC.CADDUPREC.DPDTEMIS'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DupRecDPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'DPVALOR'
      Origin = 'SG_ASSOC.CADDUPREC.DPVALOR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupRecDPJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'DPJUROS'
      Origin = 'SG_ASSOC.CADDUPREC.DPJUROS'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupRecDPDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DPDESC'
      Origin = 'SG_ASSOC.CADDUPREC.DPDESC'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupRecDPTIPO: TFloatField
      DisplayLabel = 'Tipo Reg'
      FieldName = 'DPTIPO'
      Origin = 'SG_ASSOC.CADDUPREC.DPTIPO'
    end
    object Tb_DupRecDPLOTENV: TFloatField
      DisplayLabel = 'Lote Envio'
      FieldName = 'DPLOTENV'
      Origin = 'SG_ASSOC.CADDUPREC.DPLOTENV'
    end
    object Tb_DupRecDPORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'DPORIGEM'
      Origin = 'SG_ASSOC.CADDUPREC.DPORIGEM'
    end
    object Tb_DupRecdtemis: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtemis'
      Size = 10
      Calculated = True
    end
    object Tb_DupRecnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_DupRecDPDTPAG: TDateTimeField
      FieldName = 'DPDTPAG'
      Origin = 'SG_ASSOC.CADDUPREC.DPDTPAG'
    end
  end
  object U_DupRec: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDUPREC'
      'set'
      '  DPCODEMP = :DPCODEMP,'
      '  DPTPOR = :DPTPOR,'
      '  DPCODIGO = :DPCODIGO,'
      '  DPSEQ = :DPSEQ,'
      '  DPLOTE = :DPLOTE,'
      '  DPNR = :DPNR,'
      '  DPNUMERO = :DPNUMERO,'
      '  DPDESD = :DPDESD,'
      '  DPDUP = :DPDUP,'
      '  DPCODCLI = :DPCODCLI,'
      '  DPCODVEN = :DPCODVEN,'
      '  DPDTEMIS = :DPDTEMIS,'
      '  DPVALOR = :DPVALOR,'
      '  DPJUROS = :DPJUROS,'
      '  DPDESC = :DPDESC,'
      '  DPTIPO = :DPTIPO,'
      '  DPLOTENV = :DPLOTENV,'
      '  DPORIGEM = :DPORIGEM,'
      '  DPDTPAG = :DPDTPAG'
      'where'
      '  DPCODEMP = :OLD_DPCODEMP and'
      '  DPTPOR = :OLD_DPTPOR and'
      '  DPCODIGO = :OLD_DPCODIGO and'
      '  DPSEQ = :OLD_DPSEQ and'
      '  DPLOTE = :OLD_DPLOTE')
    InsertSQL.Strings = (
      'insert into CADDUPREC'
      '  (DPCODEMP, DPTPOR, DPCODIGO, DPSEQ, DPLOTE, DPNR, DPNUMERO, '
      'DPDESD, DPDUP, '
      
        '   DPCODCLI, DPCODVEN, DPDTEMIS, DPVALOR, DPJUROS, DPDESC, DPTIP' +
        'O, '
      'DPLOTENV, '
      '   DPORIGEM, DPDTPAG)'
      'values'
      
        '  (:DPCODEMP, :DPTPOR, :DPCODIGO, :DPSEQ, :DPLOTE, :DPNR, :DPNUM' +
        'ERO, '
      ':DPDESD, '
      '   :DPDUP, :DPCODCLI, :DPCODVEN, :DPDTEMIS, :DPVALOR, :DPJUROS, '
      ':DPDESC, '
      '   :DPTIPO, :DPLOTENV, :DPORIGEM, :DPDTPAG)')
    DeleteSQL.Strings = (
      'delete from CADDUPREC'
      'where'
      '  DPCODEMP = :OLD_DPCODEMP and'
      '  DPTPOR = :OLD_DPTPOR and'
      '  DPCODIGO = :OLD_DPCODIGO and'
      '  DPSEQ = :OLD_DPSEQ and'
      '  DPLOTE = :OLD_DPLOTE')
    Left = 262
    Top = 143
  end
  object Src_DupRec: TDataSource
    DataSet = Tb_DupRec
    Left = 291
    Top = 143
  end
  object Tb_DupDRec: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_DupDRecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADDUPDREC')
    UpdateObject = U_DupDrec
    Left = 233
    Top = 366
    object Tb_DupDRecDRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'DRCODEMP'
      Origin = 'SG_ASSOC.CADDUPDREC.DRCODEMP'
    end
    object Tb_DupDRecDRTPOR: TStringField
      DisplayLabel = 'Tp.Origem'
      FieldName = 'DRTPOR'
      Origin = 'SG_ASSOC.CADDUPDREC.DRTPOR'
      Size = 2
    end
    object Tb_DupDRecDRCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DRCODIGO'
      Origin = 'SG_ASSOC.CADDUPDREC.DRCODIGO'
    end
    object Tb_DupDRecDRSEQ: TFloatField
      DisplayLabel = 'Seq.'
      FieldName = 'DRSEQ'
      Origin = 'SG_ASSOC.CADDUPDREC.DRSEQ'
    end
    object Tb_DupDRecDRLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'DRLOTE'
      Origin = 'SG_ASSOC.CADDUPDREC.DRLOTE'
    end
    object Tb_DupDRecDRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'DRVALOR'
      Origin = 'SG_ASSOC.CADDUPDREC.DRVALOR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupDRecDRDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DRDATA'
      Origin = 'SG_ASSOC.CADDUPDREC.DRDATA'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DupDRecDRFORMA: TFloatField
      DisplayLabel = 'Forma'
      FieldName = 'DRFORMA'
      Origin = 'SG_ASSOC.CADDUPDREC.DRFORMA'
    end
    object Tb_DupDRecDRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DRNUMERO'
      Origin = 'SG_ASSOC.CADDUPDREC.DRNUMERO'
    end
    object Tb_DupDRecDRSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'DRSERIE'
      Origin = 'SG_ASSOC.CADDUPDREC.DRSERIE'
    end
    object Tb_DupDRecDRCC: TStringField
      DisplayLabel = 'C/C'
      FieldName = 'DRCC'
      Origin = 'SG_ASSOC.CADDUPDREC.DRCC'
    end
    object Tb_DupDRecDRCOMP: TStringField
      DisplayLabel = 'Compen'
      FieldName = 'DRCOMP'
      Origin = 'SG_ASSOC.CADDUPDREC.DRCOMP'
      Size = 4
    end
    object Tb_DupDRecDRAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'DRAGENCIA'
      Origin = 'SG_ASSOC.CADDUPDREC.DRAGENCIA'
    end
    object Tb_DupDRecDREMIT: TStringField
      FieldName = 'DREMIT'
      Origin = 'SG_ASSOC.CADDUPDREC.DREMIT'
      Size = 40
    end
    object Tb_DupDRecDRRG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'DRRG'
      Origin = 'SG_ASSOC.CADDUPDREC.DRRG'
      Size = 40
    end
    object Tb_DupDRecDRCGC: TFloatField
      DisplayLabel = 'CNPJ/CNPF'
      FieldName = 'DRCGC'
      Origin = 'SG_ASSOC.CADDUPDREC.DRCGC'
    end
    object Tb_DupDRecDRDTNAS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'DRDTNAS'
      Origin = 'SG_ASSOC.CADDUPDREC.DRDTNAS'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DupDRecDRTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'DRTIPO'
      Origin = 'SG_ASSOC.CADDUPDREC.DRTIPO'
    end
    object Tb_DupDRecDRLOTENV: TFloatField
      DisplayLabel = 'Lote Env'
      FieldName = 'DRLOTENV'
      Origin = 'SG_ASSOC.CADDUPDREC.DRLOTENV'
    end
    object Tb_DupDRecDRORIGEM: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'DRORIGEM'
      Origin = 'SG_ASSOC.CADDUPDREC.DRORIGEM'
    end
    object Tb_DupDRecDRBANCO: TFloatField
      FieldName = 'DRBANCO'
      Origin = 'SG_ASSOC.CADDUPDREC.DRBANCO'
    end
    object Tb_DupDRecdata: TStringField
      FieldKind = fkCalculated
      FieldName = 'data'
      Size = 10
      Calculated = True
    end
    object Tb_DupDRecdtnas: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtnas'
      Size = 10
      Calculated = True
    end
    object Tb_DupDRecforma: TStringField
      FieldKind = fkCalculated
      FieldName = 'forma'
      Size = 10
      Calculated = True
    end
  end
  object U_DupDrec: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDUPDREC'
      'set'
      '  DRCODEMP = :DRCODEMP,'
      '  DRTPOR = :DRTPOR,'
      '  DRCODIGO = :DRCODIGO,'
      '  DRSEQ = :DRSEQ,'
      '  DRLOTE = :DRLOTE,'
      '  DRVALOR = :DRVALOR,'
      '  DRDATA = :DRDATA,'
      '  DRFORMA = :DRFORMA,'
      '  DRNUMERO = :DRNUMERO,'
      '  DRSERIE = :DRSERIE,'
      '  DRCC = :DRCC,'
      '  DRCOMP = :DRCOMP,'
      '  DRAGENCIA = :DRAGENCIA,'
      '  DREMIT = :DREMIT,'
      '  DRRG = :DRRG,'
      '  DRCGC = :DRCGC,'
      '  DRDTNAS = :DRDTNAS,'
      '  DRTIPO = :DRTIPO,'
      '  DRLOTENV = :DRLOTENV,'
      '  DRORIGEM = :DRORIGEM,'
      '  DRBANCO = :DRBANCO'
      'where'
      '  DRCODEMP = :OLD_DRCODEMP and'
      '  DRTPOR = :OLD_DRTPOR and'
      '  DRCODIGO = :OLD_DRCODIGO and'
      '  DRSEQ = :OLD_DRSEQ and'
      '  DRLOTE = :OLD_DRLOTE')
    InsertSQL.Strings = (
      'insert into CADDUPDREC'
      '  (DRCODEMP, DRTPOR, DRCODIGO, DRSEQ, DRLOTE, DRVALOR, DRDATA, '
      'DRFORMA, '
      '   DRNUMERO, DRSERIE, DRCC, DRCOMP, DRAGENCIA, DREMIT, DRRG, '
      'DRCGC, DRDTNAS, '
      '   DRTIPO, DRLOTENV, DRORIGEM, DRBANCO)'
      'values'
      '  (:DRCODEMP, :DRTPOR, :DRCODIGO, :DRSEQ, :DRLOTE, :DRVALOR, '
      ':DRDATA, :DRFORMA, '
      
        '   :DRNUMERO, :DRSERIE, :DRCC, :DRCOMP, :DRAGENCIA, :DREMIT, :DR' +
        'RG, '
      ':DRCGC, '
      '   :DRDTNAS, :DRTIPO, :DRLOTENV, :DRORIGEM, :DRBANCO)')
    DeleteSQL.Strings = (
      'delete from CADDUPDREC'
      'where'
      '  DRCODEMP = :OLD_DRCODEMP and'
      '  DRTPOR = :OLD_DRTPOR and'
      '  DRCODIGO = :OLD_DRCODIGO and'
      '  DRSEQ = :OLD_DRSEQ and'
      '  DRLOTE = :OLD_DRLOTE')
    Left = 262
    Top = 366
  end
  object Src_DupDRec: TDataSource
    DataSet = Tb_DupDRec
    Left = 291
    Top = 366
  end
  object Qr_PedFP: TQuery
    OnCalcFields = Qr_PedFPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PFPCODEMP,'
      '       PFPLOTSEQ,'
      '       PFPCHAVE,'
      '       PFPSEQ,'
      '       PFPFORMA,'
      '       PFPDATA,'
      '       PFPNUMDOC,'
      '       PFPBANCO,'
      '       PFPSERIE,'
      '       PFPVALOR,'
      '       PFPCC,'
      '       PFPCOMP,'
      '       PFPAGENCIA,'
      '       PFPEMITENTE from CADPFP where PFPCODEMP is null')
    Left = 108
    Top = 3
    object Qr_PedFPPFPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PFPCODEMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCODEMP'
    end
    object Qr_PedFPPFPLOTSEQ: TFloatField
      DisplayLabel = 'Lot.Seq'
      FieldName = 'PFPLOTSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPLOTSEQ'
    end
    object Qr_PedFPPFPCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PFPCHAVE'
      Origin = 'SG_ASSOC.CADPFP.PFPCHAVE'
    end
    object Qr_PedFPPFPSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'PFPSEQ'
      Origin = 'SG_ASSOC.CADPFP.PFPSEQ'
    end
    object Qr_PedFPPFPFORMA: TFloatField
      DisplayLabel = 'C'#243'd.Fpgto'
      FieldName = 'PFPFORMA'
      Origin = 'SG_ASSOC.CADPFP.PFPFORMA'
    end
    object Qr_PedFPPFPDATA: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'PFPDATA'
      Origin = 'SG_ASSOC.CADPFP.PFPDATA'
    end
    object Qr_PedFPPFPNUMDOC: TStringField
      DisplayLabel = 'N'#250'mero Doc.'
      FieldName = 'PFPNUMDOC'
      Origin = 'SG_ASSOC.CADPFP.PFPNUMDOC'
    end
    object Qr_PedFPPFPBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'PFPBANCO'
      Origin = 'SG_ASSOC.CADPFP.PFPBANCO'
    end
    object Qr_PedFPPFPSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'PFPSERIE'
      Origin = 'SG_ASSOC.CADPFP.PFPSERIE'
    end
    object Qr_PedFPPFPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'PFPVALOR'
      Origin = 'SG_ASSOC.CADPFP.PFPVALOR'
    end
    object Qr_PedFPPFPCC: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'PFPCC'
      Origin = 'SG_ASSOC.CADPFP.PFPCC'
    end
    object Qr_PedFPPFPCOMP: TStringField
      DisplayLabel = 'Compensa'#231#227'o'
      FieldName = 'PFPCOMP'
      Origin = 'SG_ASSOC.CADPFP.PFPCOMP'
      Size = 5
    end
    object Qr_PedFPPFPAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'PFPAGENCIA'
      Origin = 'SG_ASSOC.CADPFP.PFPAGENCIA'
      Size = 8
    end
    object Qr_PedFPPFPEMITENTE: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'PFPEMITENTE'
      Origin = 'SG_ASSOC.CADPFP.PFPEMITENTE'
      Size = 40
    end
    object Qr_PedFPnomefp: TStringField
      DisplayLabel = 'Nome da Forma de Pagamento'
      FieldKind = fkCalculated
      FieldName = 'nomefp'
      Calculated = True
    end
  end
  object Tb_TDVFE: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVFE')
    UpdateObject = U_TDVFE
    Left = 690
    Top = 183
    object Tb_TDVFEFECODEMP: TFloatField
      FieldName = 'FECODEMP'
      Origin = 'SG_ASSOC.CTDVFE.FECODEMP'
    end
    object Tb_TDVFEFEDOC: TStringField
      FieldName = 'FEDOC'
      Origin = 'SG_ASSOC.CTDVFE.FEDOC'
      Size = 10
    end
    object Tb_TDVFEFENOME: TStringField
      FieldName = 'FENOME'
      Origin = 'SG_ASSOC.CTDVFE.FENOME'
      Size = 50
    end
    object Tb_TDVFEFETIPO: TFloatField
      FieldName = 'FETIPO'
      Origin = 'SG_ASSOC.CTDVFE.FETIPO'
    end
    object Tb_TDVFEFEFILTRO: TMemoField
      FieldName = 'FEFILTRO'
      Origin = 'SG_ASSOC.CTDVFE.FEFILTRO'
      BlobType = ftMemo
      Size = 500
    end
  end
  object U_TDVFE: TUpdateSQL
    ModifySQL.Strings = (
      'update CTDVFE'
      'set'
      '  FECODEMP = :FECODEMP,'
      '  FEDOC = :FEDOC,'
      '  FENOME = :FENOME,'
      '  FETIPO = :FETIPO,'
      '  FEFILTRO = :FEFILTRO'
      'where'
      '  FECODEMP = :OLD_FECODEMP and'
      '  FEDOC = :OLD_FEDOC and'
      '  FENOME = :OLD_FENOME')
    InsertSQL.Strings = (
      'insert into CTDVFE'
      '  (FECODEMP, FEDOC, FENOME, FETIPO, FEFILTRO)'
      'values'
      '  (:FECODEMP, :FEDOC, :FENOME, :FETIPO, :FEFILTRO)')
    DeleteSQL.Strings = (
      'delete from CTDVFE'
      'where'
      '  FECODEMP = :OLD_FECODEMP and'
      '  FEDOC = :OLD_FEDOC and'
      '  FENOME = :OLD_FENOME')
    Left = 719
    Top = 183
  end
  object Src_TDVFE: TDataSource
    DataSet = Tb_TDVFE
    Left = 747
    Top = 183
  end
  object Tb_Assessor: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_AssessorBeforeInsert
    AfterInsert = Tb_AssessorAfterInsert
    OnCalcFields = Tb_AssessorCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADASSE')
    UpdateObject = U_Assessor
    Left = 116
    Top = 453
    object Tb_AssessorCACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADASSE.CACODEMP'
    end
    object Tb_AssessorCACODASS: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CACODASS'
      Origin = 'SG_ASSOC.CADASSE.CACODASS'
    end
    object Tb_AssessorCARAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CARAZAO'
      Origin = 'SG_ASSOC.CADASSE.CARAZAO'
      Size = 40
    end
    object Tb_AssessorCADENOM: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'CADENOM'
      Origin = 'SG_ASSOC.CADASSE.CADENOM'
      Size = 40
    end
    object Tb_AssessorCAENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CAENDERECO'
      Origin = 'SG_ASSOC.CADASSE.CAENDERECO'
      Size = 40
    end
    object Tb_AssessorCABAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CABAIRRO'
      Origin = 'SG_ASSOC.CADASSE.CABAIRRO'
      Size = 30
    end
    object Tb_AssessorCACIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CACIDADE'
      Origin = 'SG_ASSOC.CADASSE.CACIDADE'
      Size = 30
    end
    object Tb_AssessorCAUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CAUF'
      Origin = 'SG_ASSOC.CADASSE.CAUF'
      Size = 2
    end
    object Tb_AssessorCACODBAI: TFloatField
      DisplayLabel = 'C'#243'd.Bairro'
      FieldName = 'CACODBAI'
      Origin = 'SG_ASSOC.CADASSE.CACODBAI'
    end
    object Tb_AssessorCACODLOC: TFloatField
      DisplayLabel = 'C'#243'd.Cidade'
      FieldName = 'CACODLOC'
      Origin = 'SG_ASSOC.CADASSE.CACODLOC'
    end
    object Tb_AssessorCACEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CACEP'
      Origin = 'SG_ASSOC.CADASSE.CACEP'
      Size = 9
    end
    object Tb_AssessorCAFONE01: TStringField
      DisplayLabel = 'Telefone 01'
      FieldName = 'CAFONE01'
      Origin = 'SG_ASSOC.CADASSE.CAFONE01'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_AssessorCAFONE02: TStringField
      DisplayLabel = 'Telefone 02'
      FieldName = 'CAFONE02'
      Origin = 'SG_ASSOC.CADASSE.CAFONE02'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_AssessorCAFONE03: TStringField
      DisplayLabel = 'Telefone 03'
      FieldName = 'CAFONE03'
      Origin = 'SG_ASSOC.CADASSE.CAFONE03'
      EditMask = '(9999)9999-9999;1; '
      Size = 16
    end
    object Tb_AssessorCACH_FONE01: TStringField
      DisplayLabel = 'Chave Fone 01'
      FieldName = 'CACH_FONE01'
      Origin = 'SG_ASSOC.CADASSE.CACH_FONE01'
      Size = 16
    end
    object Tb_AssessorCACH_FONE02: TStringField
      DisplayLabel = 'Chave Fone 02'
      FieldName = 'CACH_FONE02'
      Origin = 'SG_ASSOC.CADASSE.CACH_FONE02'
      Size = 16
    end
    object Tb_AssessorCACH_FONE03: TStringField
      DisplayLabel = 'chave Fone 03'
      FieldName = 'CACH_FONE03'
      Origin = 'SG_ASSOC.CADASSE.CACH_FONE03'
      Size = 16
    end
    object Tb_AssessorCACH_FAX: TStringField
      DisplayLabel = 'Chave Fax'
      FieldName = 'CACH_FAX'
      Origin = 'SG_ASSOC.CADASSE.CACH_FAX'
      Size = 16
    end
    object Tb_AssessorCADTCAD: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'CADTCAD'
      Origin = 'SG_ASSOC.CADASSE.CADTCAD'
    end
    object Tb_AssessorCAFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CAFAX'
      Origin = 'SG_ASSOC.CADASSE.CAFAX'
      Size = 16
    end
    object Tb_AssessorCARG: TStringField
      DisplayLabel = 'Registro Geral'
      FieldName = 'CARG'
      Origin = 'SG_ASSOC.CADASSE.CARG'
      Size = 40
    end
    object Tb_AssessorCACPF: TFloatField
      DisplayLabel = 'CNPF'
      FieldName = 'CACPF'
      Origin = 'SG_ASSOC.CADASSE.CACPF'
      DisplayFormat = '000"."000"."000"-"00'
      EditFormat = '##############'
    end
    object Tb_AssessorCACNPJ: TFloatField
      DisplayLabel = 'CNPJ'
      FieldName = 'CACNPJ'
      Origin = 'SG_ASSOC.CADASSE.CACNPJ'
      DisplayFormat = '00"."000"."000"/"0000"-"00'
      EditFormat = '##############'
    end
    object Tb_AssessorCAIE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'CAIE'
      Origin = 'SG_ASSOC.CADASSE.CAIE'
      Size = 30
    end
    object Tb_AssessorCAPONTOR: TStringField
      DisplayLabel = 'Ponto Referencia'
      FieldName = 'CAPONTOR'
      Origin = 'SG_ASSOC.CADASSE.CAPONTOR'
      Size = 60
    end
    object Tb_AssessorCAREFCOM01: TStringField
      DisplayLabel = 'Ref.Comercial 01'
      FieldName = 'CAREFCOM01'
      Origin = 'SG_ASSOC.CADASSE.CAREFCOM01'
      Size = 60
    end
    object Tb_AssessorCAREFCOM02: TStringField
      DisplayLabel = 'Ref.Comercial 02'
      FieldName = 'CAREFCOM02'
      Origin = 'SG_ASSOC.CADASSE.CAREFCOM02'
      Size = 60
    end
    object Tb_AssessorCAREFCOM03: TStringField
      DisplayLabel = 'Ref.Comercial 03'
      FieldName = 'CAREFCOM03'
      Origin = 'SG_ASSOC.CADASSE.CAREFCOM03'
      Size = 60
    end
    object Tb_AssessorCAREFCOM04: TStringField
      DisplayLabel = 'Ref.Comercial 04'
      FieldName = 'CAREFCOM04'
      Origin = 'SG_ASSOC.CADASSE.CAREFCOM04'
      Size = 60
    end
    object Tb_AssessorCAREFBAN01: TStringField
      DisplayLabel = 'Ref.Banc'#225'rias 01'
      FieldName = 'CAREFBAN01'
      Origin = 'SG_ASSOC.CADASSE.CAREFBAN01'
      Size = 60
    end
    object Tb_AssessorCAREFBAN02: TStringField
      DisplayLabel = 'Ref.Banc'#225'rias 02'
      FieldName = 'CAREFBAN02'
      Origin = 'SG_ASSOC.CADASSE.CAREFBAN02'
      Size = 60
    end
    object Tb_AssessorCAREFBAN03: TStringField
      DisplayLabel = 'Ref.Banc'#225'rias 03'
      FieldName = 'CAREFBAN03'
      Origin = 'SG_ASSOC.CADASSE.CAREFBAN03'
      Size = 60
    end
    object Tb_AssessorCAREFBAN04: TStringField
      DisplayLabel = 'Ref.Banc'#225'rias 04'
      FieldName = 'CAREFBAN04'
      Origin = 'SG_ASSOC.CADASSE.CAREFBAN04'
      Size = 60
    end
    object Tb_AssessorCAREFPES01: TStringField
      DisplayLabel = 'Ref.Pessoais 01'
      FieldName = 'CAREFPES01'
      Origin = 'SG_ASSOC.CADASSE.CAREFPES01'
      Size = 60
    end
    object Tb_AssessorCAREFPES02: TStringField
      DisplayLabel = 'Ref.Pessoais 02'
      FieldName = 'CAREFPES02'
      Origin = 'SG_ASSOC.CADASSE.CAREFPES02'
      Size = 60
    end
    object Tb_AssessorCAREFPES03: TStringField
      DisplayLabel = 'Ref.Pessoais 03'
      FieldName = 'CAREFPES03'
      Origin = 'SG_ASSOC.CADASSE.CAREFPES03'
      Size = 60
    end
    object Tb_AssessorCAREFPES04: TStringField
      DisplayLabel = 'Ref.Pessoais 04'
      FieldName = 'CAREFPES04'
      Origin = 'SG_ASSOC.CADASSE.CAREFPES04'
      Size = 60
    end
    object Tb_AssessorCAOBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'CAOBS01'
      Origin = 'SG_ASSOC.CADASSE.CAOBS01'
      Size = 60
    end
    object Tb_AssessorCAOBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'CAOBS02'
      Origin = 'SG_ASSOC.CADASSE.CAOBS02'
      Size = 60
    end
    object Tb_AssessorCAOBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'CAOBS03'
      Origin = 'SG_ASSOC.CADASSE.CAOBS03'
      Size = 60
    end
    object Tb_AssessorCAOBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'CAOBS04'
      Origin = 'SG_ASSOC.CADASSE.CAOBS04'
      Size = 60
    end
    object Tb_AssessorCALCRED: TFloatField
      DisplayLabel = 'Limite de Credito'
      FieldName = 'CALCRED'
      Origin = 'SG_ASSOC.CADASSE.CALCRED'
    end
    object Tb_AssessorCATABPV: TStringField
      DisplayLabel = 'Plano Vendas Tabela'
      FieldName = 'CATABPV'
      Origin = 'SG_ASSOC.CADASSE.CATABPV'
      Size = 2
    end
    object Tb_AssessorCACODPV: TFloatField
      DisplayLabel = 'Plano Vendas C'#243'digo'
      FieldName = 'CACODPV'
      Origin = 'SG_ASSOC.CADASSE.CACODPV'
    end
    object Tb_AssessorCAFIL_PAI: TStringField
      DisplayLabel = 'Filia'#231#227'o Pai'
      FieldName = 'CAFIL_PAI'
      Origin = 'SG_ASSOC.CADASSE.CAFIL_PAI'
      Size = 40
    end
    object Tb_AssessorCAFIL_MAE: TStringField
      DisplayLabel = 'Filia'#231#227'o Mae'
      FieldName = 'CAFIL_MAE'
      Origin = 'SG_ASSOC.CADASSE.CAFIL_MAE'
      Size = 40
    end
    object Tb_AssessorCANATURAL: TStringField
      DisplayLabel = 'Naturalidade'
      FieldName = 'CANATURAL'
      Origin = 'SG_ASSOC.CADASSE.CANATURAL'
      Size = 30
    end
    object Tb_AssessorCANAT_UF: TStringField
      DisplayLabel = 'UF Naturalidade'
      FieldName = 'CANAT_UF'
      Origin = 'SG_ASSOC.CADASSE.CANAT_UF'
      Size = 2
    end
    object Tb_AssessorCATPPESSOA: TFloatField
      DisplayLabel = 'Tipo de Pessoa'
      FieldName = 'CATPPESSOA'
      Origin = 'SG_ASSOC.CADASSE.CATPPESSOA'
    end
    object Tb_AssessorCASTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADASSE.CASTATUS'
    end
    object Tb_AssessorCASITASS: TFloatField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'CASITASS'
      Origin = 'SG_ASSOC.CADASSE.CASITASS'
    end
    object Tb_AssessorCACOMIS: TFloatField
      DisplayLabel = '% Comiss'#227'p'
      FieldName = 'CACOMIS'
      Origin = 'SG_ASSOC.CADASSE.CACOMIS'
    end
    object Tb_AssessorCAEMAIL: TStringField
      DisplayLabel = 'EMail'
      FieldName = 'CAEMAIL'
      Origin = 'SG_ASSOC.CADASSE.CAEMAIL'
      Size = 50
    end
    object Tb_AssessorCAHOME: TStringField
      DisplayLabel = 'Home Page'
      FieldName = 'CAHOME'
      Origin = 'SG_ASSOC.CADASSE.CAHOME'
      Size = 50
    end
    object Tb_AssessorCACODCCD: TStringField
      DisplayLabel = 'C'#243'digo Centro de custo D'#233'bito'
      FieldName = 'CACODCCD'
      Origin = 'SG_ASSOC.CADASSE.CACODCCD'
      Size = 5
    end
    object Tb_AssessorCACODCCC: TStringField
      DisplayLabel = 'C'#243'digo centro de Custo Cr'#233'dito'
      FieldName = 'CACODCCC'
      Origin = 'SG_ASSOC.CADASSE.CACODCCC'
      Size = 5
    end
    object Tb_AssessorCACODDEPD: TStringField
      DisplayLabel = 'C'#243'digo Departamento D'#233'bito'
      FieldName = 'CACODDEPD'
      Origin = 'SG_ASSOC.CADASSE.CACODDEPD'
      Size = 5
    end
    object Tb_AssessorCACODDEPC: TStringField
      DisplayLabel = 'C'#243'digo Departamento Cr'#233'dito'
      FieldName = 'CACODDEPC'
      Origin = 'SG_ASSOC.CADASSE.CACODDEPC'
      Size = 5
    end
    object Tb_AssessorCADESCMVD: TStringField
      DisplayLabel = 'Descri'#231#227'o Movimento do Departamento'
      FieldName = 'CADESCMVD'
      Origin = 'SG_ASSOC.CADASSE.CADESCMVD'
      Size = 40
    end
    object Tb_AssessorCADESCMVC: TStringField
      DisplayLabel = 'Descri'#231#227'o do Movimento do Centro de custo'
      FieldName = 'CADESCMVC'
      Origin = 'SG_ASSOC.CADASSE.CADESCMVC'
      Size = 40
    end
    object Tb_AssessorCACODUSR: TFloatField
      DisplayLabel = 'C'#243'digo Usu'#225'rio'
      FieldName = 'CACODUSR'
      Origin = 'SG_ASSOC.CADASSE.CACODUSR'
    end
    object Tb_AssessorCADTALT: TDateTimeField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'CADTALT'
      Origin = 'SG_ASSOC.CADASSE.CADTALT'
    end
    object Tb_AssessorCAHRALT: TStringField
      DisplayLabel = 'Hora Altera'#231#227'o'
      FieldName = 'CAHRALT'
      Origin = 'SG_ASSOC.CADASSE.CAHRALT'
      Size = 10
    end
    object Tb_AssessorCASEXO: TFloatField
      DisplayLabel = 'Sexo'
      FieldName = 'CASEXO'
      Origin = 'SG_ASSOC.CADASSE.CASEXO'
    end
    object Tb_AssessorCAPROF: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'CAPROF'
      Origin = 'SG_ASSOC.CADASSE.CAPROF'
      Size = 30
    end
    object Tb_AssessorCAESTCIV: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'CAESTCIV'
      Origin = 'SG_ASSOC.CADASSE.CAESTCIV'
    end
    object Tb_AssessorCADTNAS: TDateTimeField
      DisplayLabel = 'Data de Mascimento'
      FieldName = 'CADTNAS'
      Origin = 'SG_ASSOC.CADASSE.CADTNAS'
    end
    object Tb_AssessorCANOMCCD: TStringField
      DisplayLabel = 'Nome do Centro de custo D'#233'bito'
      FieldName = 'CANOMCCD'
      Origin = 'SG_ASSOC.CADASSE.CANOMCCD'
      Size = 40
    end
    object Tb_AssessorCANOMCCC: TStringField
      DisplayLabel = 'Nome do Centro de custo Credito'
      FieldName = 'CANOMCCC'
      Origin = 'SG_ASSOC.CADASSE.CANOMCCC'
      Size = 40
    end
    object Tb_AssessorCANOMDEPD: TStringField
      DisplayLabel = 'Nome do Departamento D'#233'bito'
      FieldName = 'CANOMDEPD'
      Origin = 'SG_ASSOC.CADASSE.CANOMDEPD'
      Size = 40
    end
    object Tb_AssessorCANOMDEPC: TStringField
      DisplayLabel = 'Nome do Departamento Credito'
      FieldName = 'CANOMDEPC'
      Origin = 'SG_ASSOC.CADASSE.CANOMDEPC'
      Size = 40
    end
    object Tb_Assessordatnas: TStringField
      FieldKind = fkCalculated
      FieldName = 'datnas'
      Size = 10
      Calculated = True
    end
    object Tb_AssessorCANATDCD: TStringField
      FieldName = 'CANATDCD'
      Origin = 'SG_ASSOC.CADASSE.CANATDCD'
      Size = 1
    end
    object Tb_AssessorCANATDCC: TStringField
      FieldName = 'CANATDCC'
      Origin = 'SG_ASSOC.CADASSE.CANATDCC'
      Size = 1
    end
    object Tb_AssessorCACODUSR_ALT: TFloatField
      FieldName = 'CACODUSR_ALT'
      Origin = 'SG_ASSOC.CADASSE.CACODUSR_ALT'
    end
    object Tb_AssessorCADATA_REP: TDateTimeField
      FieldName = 'CADATA_REP'
      Origin = 'SG_ASSOC.CADASSE.CADATA_REP'
    end
  end
  object U_Assessor: TUpdateSQL
    ModifySQL.Strings = (
      'update CADASSE'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CACODASS = :CACODASS,'
      '  CARAZAO = :CARAZAO,'
      '  CADENOM = :CADENOM,'
      '  CAENDERECO = :CAENDERECO,'
      '  CABAIRRO = :CABAIRRO,'
      '  CACIDADE = :CACIDADE,'
      '  CAUF = :CAUF,'
      '  CACODBAI = :CACODBAI,'
      '  CACODLOC = :CACODLOC,'
      '  CACEP = :CACEP,'
      '  CAFONE01 = :CAFONE01,'
      '  CAFONE02 = :CAFONE02,'
      '  CAFONE03 = :CAFONE03,'
      '  CACH_FONE01 = :CACH_FONE01,'
      '  CACH_FONE02 = :CACH_FONE02,'
      '  CACH_FONE03 = :CACH_FONE03,'
      '  CACH_FAX = :CACH_FAX,'
      '  CAFAX = :CAFAX,'
      '  CADTCAD = :CADTCAD,'
      '  CARG = :CARG,'
      '  CACPF = :CACPF,'
      '  CACNPJ = :CACNPJ,'
      '  CAIE = :CAIE,'
      '  CAPONTOR = :CAPONTOR,'
      '  CAREFCOM01 = :CAREFCOM01,'
      '  CAREFCOM02 = :CAREFCOM02,'
      '  CAREFCOM03 = :CAREFCOM03,'
      '  CAREFCOM04 = :CAREFCOM04,'
      '  CAREFBAN01 = :CAREFBAN01,'
      '  CAREFBAN02 = :CAREFBAN02,'
      '  CAREFBAN03 = :CAREFBAN03,'
      '  CAREFBAN04 = :CAREFBAN04,'
      '  CAREFPES01 = :CAREFPES01,'
      '  CAREFPES02 = :CAREFPES02,'
      '  CAREFPES03 = :CAREFPES03,'
      '  CAREFPES04 = :CAREFPES04,'
      '  CAOBS01 = :CAOBS01,'
      '  CAOBS02 = :CAOBS02,'
      '  CAOBS03 = :CAOBS03,'
      '  CAOBS04 = :CAOBS04,'
      '  CALCRED = :CALCRED,'
      '  CATABPV = :CATABPV,'
      '  CACODPV = :CACODPV,'
      '  CAFIL_PAI = :CAFIL_PAI,'
      '  CAFIL_MAE = :CAFIL_MAE,'
      '  CANATURAL = :CANATURAL,'
      '  CANAT_UF = :CANAT_UF,'
      '  CATPPESSOA = :CATPPESSOA,'
      '  CASTATUS = :CASTATUS,'
      '  CASITASS = :CASITASS,'
      '  CACOMIS = :CACOMIS,'
      '  CAEMAIL = :CAEMAIL,'
      '  CAHOME = :CAHOME,'
      '  CACODCCD = :CACODCCD,'
      '  CACODCCC = :CACODCCC,'
      '  CACODDEPD = :CACODDEPD,'
      '  CACODDEPC = :CACODDEPC,'
      '  CADESCMVD = :CADESCMVD,'
      '  CADESCMVC = :CADESCMVC,'
      '  CACODUSR = :CACODUSR,'
      '  CADTALT = :CADTALT,'
      '  CAHRALT = :CAHRALT,'
      '  CASEXO = :CASEXO,'
      '  CAPROF = :CAPROF,'
      '  CAESTCIV = :CAESTCIV,'
      '  CADTNAS = :CADTNAS,'
      '  CANOMCCD = :CANOMCCD,'
      '  CANOMCCC = :CANOMCCC,'
      '  CANOMDEPD = :CANOMDEPD,'
      '  CANOMDEPC = :CANOMDEPC,'
      '  CANATDCD = :CANATDCD,'
      '  CANATDCC = :CANATDCC,'
      '  CACODUSR_ALT = :CACODUSR_ALT,'
      '  CADATA_REP = :CADATA_REP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CACODASS = :OLD_CACODASS')
    InsertSQL.Strings = (
      'insert into CADASSE'
      '  (CACODEMP, CACODASS, CARAZAO, CADENOM, CAENDERECO, CABAIRRO, '
      'CACIDADE, '
      
        '   CAUF, CACODBAI, CACODLOC, CACEP, CAFONE01, CAFONE02, CAFONE03' +
        ', '
      'CACH_FONE01, '
      
        '   CACH_FONE02, CACH_FONE03, CACH_FAX, CAFAX, CADTCAD, CARG, CAC' +
        'PF, '
      'CACNPJ, '
      
        '   CAIE, CAPONTOR, CAREFCOM01, CAREFCOM02, CAREFCOM03, CAREFCOM0' +
        '4, '
      'CAREFBAN01, '
      '   CAREFBAN02, CAREFBAN03, CAREFBAN04, CAREFPES01, CAREFPES02, '
      'CAREFPES03, '
      
        '   CAREFPES04, CAOBS01, CAOBS02, CAOBS03, CAOBS04, CALCRED, CATA' +
        'BPV, '
      'CACODPV, '
      
        '   CAFIL_PAI, CAFIL_MAE, CANATURAL, CANAT_UF, CATPPESSOA, CASTAT' +
        'US, '
      'CASITASS, '
      '   CACOMIS, CAEMAIL, CAHOME, CACODCCD, CACODCCC, CACODDEPD, '
      'CACODDEPC, '
      '   CADESCMVD, CADESCMVC, CACODUSR, CADTALT, CAHRALT, CASEXO, '
      'CAPROF, CAESTCIV, '
      '   CADTNAS, CANOMCCD, CANOMCCC, CANOMDEPD, CANOMDEPC, CANATDCD, '
      'CANATDCC, '
      '   CACODUSR_ALT, CADATA_REP)'
      'values'
      '  (:CACODEMP, :CACODASS, :CARAZAO, :CADENOM, :CAENDERECO, '
      ':CABAIRRO, :CACIDADE, '
      
        '   :CAUF, :CACODBAI, :CACODLOC, :CACEP, :CAFONE01, :CAFONE02, :C' +
        'AFONE03, '
      '   :CACH_FONE01, :CACH_FONE02, :CACH_FONE03, :CACH_FAX, :CAFAX, '
      ':CADTCAD, '
      
        '   :CARG, :CACPF, :CACNPJ, :CAIE, :CAPONTOR, :CAREFCOM01, :CAREF' +
        'COM02, '
      
        '   :CAREFCOM03, :CAREFCOM04, :CAREFBAN01, :CAREFBAN02, :CAREFBAN' +
        '03, '
      ':CAREFBAN04, '
      
        '   :CAREFPES01, :CAREFPES02, :CAREFPES03, :CAREFPES04, :CAOBS01,' +
        ' '
      ':CAOBS02, '
      
        '   :CAOBS03, :CAOBS04, :CALCRED, :CATABPV, :CACODPV, :CAFIL_PAI,' +
        ' '
      ':CAFIL_MAE, '
      
        '   :CANATURAL, :CANAT_UF, :CATPPESSOA, :CASTATUS, :CASITASS, :CA' +
        'COMIS, '
      
        '   :CAEMAIL, :CAHOME, :CACODCCD, :CACODCCC, :CACODDEPD, :CACODDE' +
        'PC, '
      ':CADESCMVD, '
      '   :CADESCMVC, :CACODUSR, :CADTALT, :CAHRALT, :CASEXO, :CAPROF, '
      ':CAESTCIV, '
      '   :CADTNAS, :CANOMCCD, :CANOMCCC, :CANOMDEPD, :CANOMDEPC, '
      ':CANATDCD, :CANATDCC, '
      '   :CACODUSR_ALT, :CADATA_REP)')
    DeleteSQL.Strings = (
      'delete from CADASSE'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CACODASS = :OLD_CACODASS')
    Left = 145
    Top = 453
  end
  object Src_Assessor: TDataSource
    DataSet = Tb_Assessor
    Left = 174
    Top = 453
  end
  object Tb_Trocas_Cab: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Trocas_CabCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRO_CAB where TCCODEMP is null')
    UpdateObject = U_Trocas_Cab
    Left = 233
    Top = 189
    object Tb_Trocas_CabTCCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCODEMP'
    end
    object Tb_Trocas_CabTCLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'TCLOTSEQ'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCLOTSEQ'
    end
    object Tb_Trocas_CabTCCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'TCCHAVE'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCHAVE'
    end
    object Tb_Trocas_CabTCCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'TCCODCLI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCODCLI'
    end
    object Tb_Trocas_CabTCCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'TCCODVEN'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCODVEN'
    end
    object Tb_Trocas_CabTCOBS01: TStringField
      DisplayLabel = 'Observa'#231'oes 01'
      FieldName = 'TCOBS01'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCOBS01'
      Size = 60
    end
    object Tb_Trocas_CabTCOBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es 02'
      FieldName = 'TCOBS02'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCOBS02'
      Size = 60
    end
    object Tb_Trocas_CabTCOBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es 03'
      FieldName = 'TCOBS03'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCOBS03'
      Size = 60
    end
    object Tb_Trocas_CabTCOBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es 04'
      FieldName = 'TCOBS04'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCOBS04'
      Size = 60
    end
    object Tb_Trocas_CabTCCHECARORI: TFloatField
      DisplayLabel = 'checar Origem'
      FieldName = 'TCCHECARORI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCHECARORI'
    end
    object Tb_Trocas_CabTCSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'TCSTATUS'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCSTATUS'
    end
    object Tb_Trocas_CabTCDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'TCDATA'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCDATA'
    end
    object Tb_Trocas_CabTCICMSRETDEV: TFloatField
      DisplayLabel = 'Icms Retido Devolu'#231#227'o'
      FieldName = 'TCICMSRETDEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCICMSRETDEV'
    end
    object Tb_Trocas_CabTCVALORDEV: TFloatField
      DisplayLabel = 'Total Devolu'#231#227'o'
      FieldName = 'TCVALORDEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCVALORDEV'
    end
    object Tb_Trocas_CabTCDESCDEV: TFloatField
      DisplayLabel = 'Desconto Devolu'#231#227'o'
      FieldName = 'TCDESCDEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCDESCDEV'
    end
    object Tb_Trocas_CabTCACREDEV: TFloatField
      DisplayLabel = 'Acrescimos Devolu'#231#227'o'
      FieldName = 'TCACREDEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCACREDEV'
    end
    object Tb_Trocas_CabTCICMSRETSAI: TFloatField
      DisplayLabel = 'Icms Retido Saida'
      FieldName = 'TCICMSRETSAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCICMSRETSAI'
    end
    object Tb_Trocas_CabTCVALORSAI: TFloatField
      DisplayLabel = 'Valor da Saida'
      FieldName = 'TCVALORSAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCVALORSAI'
    end
    object Tb_Trocas_CabTCDESCSAI: TFloatField
      DisplayLabel = 'Desconto Saida'
      FieldName = 'TCDESCSAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCDESCSAI'
    end
    object Tb_Trocas_CabTCACRESAI: TFloatField
      DisplayLabel = 'Acr'#233'scimos Sa'#237'da'
      FieldName = 'TCACRESAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCACRESAI'
    end
    object Tb_Trocas_CabTCTROCO: TFloatField
      DisplayLabel = 'Troco concedido'
      FieldName = 'TCTROCO'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCTROCO'
    end
    object Tb_Trocas_CabTCRECEBIDO: TFloatField
      DisplayLabel = 'Diferen'#231'a Recebida'
      FieldName = 'TCRECEBIDO'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCRECEBIDO'
    end
    object Tb_Trocas_CabTCLOTSEQ_CP_DEV: TFloatField
      DisplayLabel = 'Lote Seq Ped Devolu'#231#227'o'
      FieldName = 'TCLOTSEQ_CP_DEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCLOTSEQ_CP_DEV'
    end
    object Tb_Trocas_CabTCCHAVE_DEV: TFloatField
      DisplayLabel = 'Chave Pedido da Devolu'#231#227'o'
      FieldName = 'TCCHAVE_DEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCHAVE_DEV'
    end
    object Tb_Trocas_CabTCNUMNF_DEV: TFloatField
      DisplayLabel = 'N'#250'mero da NF devolu'#231#227'o'
      FieldName = 'TCNUMNF_DEV'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCNUMNF_DEV'
    end
    object Tb_Trocas_CabTCLOTSEQ_CP_SAI: TFloatField
      DisplayLabel = 'Lote Seq Pedido Sa'#237'da'
      FieldName = 'TCLOTSEQ_CP_SAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCLOTSEQ_CP_SAI'
    end
    object Tb_Trocas_CabTCCHAVE_SAI: TFloatField
      DisplayLabel = 'Chave Pedido da Sa'#237'da'
      FieldName = 'TCCHAVE_SAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCHAVE_SAI'
    end
    object Tb_Trocas_CabTCNUMNF_SAI: TFloatField
      DisplayLabel = 'N'#250'mero NF do Pedido de Saida'
      FieldName = 'TCNUMNF_SAI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCNUMNF_SAI'
    end
    object Tb_Trocas_CabTCQTDMAN: TFloatField
      DisplayLabel = 'Qtd.Manuten'#231#227'o'
      FieldName = 'TCQTDMAN'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCQTDMAN'
    end
    object Tb_Trocas_CabTCSITUACAO: TFloatField
      DisplayLabel = 'Situa'#231#227'o do Registro'
      FieldName = 'TCSITUACAO'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCSITUACAO'
    end
    object Tb_Trocas_CabTCCODUSR: TFloatField
      FieldName = 'TCCODUSR'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCODUSR'
    end
    object Tb_Trocas_CabTCDATAHOR: TDateTimeField
      FieldName = 'TCDATAHOR'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCDATAHOR'
    end
    object Tb_Trocas_CabTCCODUSR_MAN: TFloatField
      FieldName = 'TCCODUSR_MAN'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCCODUSR_MAN'
    end
    object Tb_Trocas_CabTCDATAHOR_MAN: TDateTimeField
      FieldName = 'TCDATAHOR_MAN'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCDATAHOR_MAN'
    end
    object Tb_Trocas_Cabnomcli: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_Trocas_CabTCFPGTO: TFloatField
      FieldName = 'TCFPGTO'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCFPGTO'
    end
    object Tb_Trocas_CabTCNOMCLI: TStringField
      FieldName = 'TCNOMCLI'
      Origin = 'SG_ASSOC.CADTRO_CAB.TCNOMCLI'
      Size = 40
    end
    object Tb_Trocas_CabTCID_NEW: TFloatField
      FieldName = 'TCID_NEW'
    end
  end
  object U_Trocas_Cab: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRO_CAB'
      'set'
      '  TCCODEMP = :TCCODEMP,'
      '  TCLOTSEQ = :TCLOTSEQ,'
      '  TCCHAVE = :TCCHAVE,'
      '  TCCODCLI = :TCCODCLI,'
      '  TCCODVEN = :TCCODVEN,'
      '  TCOBS01 = :TCOBS01,'
      '  TCOBS02 = :TCOBS02,'
      '  TCOBS03 = :TCOBS03,'
      '  TCOBS04 = :TCOBS04,'
      '  TCCHECARORI = :TCCHECARORI,'
      '  TCSTATUS = :TCSTATUS,'
      '  TCDATA = :TCDATA,'
      '  TCICMSRETDEV = :TCICMSRETDEV,'
      '  TCVALORDEV = :TCVALORDEV,'
      '  TCDESCDEV = :TCDESCDEV,'
      '  TCFPGTO = :TCFPGTO,'
      '  TCACREDEV = :TCACREDEV,'
      '  TCICMSRETSAI = :TCICMSRETSAI,'
      '  TCVALORSAI = :TCVALORSAI,'
      '  TCDESCSAI = :TCDESCSAI,'
      '  TCACRESAI = :TCACRESAI,'
      '  TCTROCO = :TCTROCO,'
      '  TCRECEBIDO = :TCRECEBIDO,'
      '  TCLOTSEQ_CP_DEV = :TCLOTSEQ_CP_DEV,'
      '  TCCHAVE_DEV = :TCCHAVE_DEV,'
      '  TCNUMNF_DEV = :TCNUMNF_DEV,'
      '  TCLOTSEQ_CP_SAI = :TCLOTSEQ_CP_SAI,'
      '  TCCHAVE_SAI = :TCCHAVE_SAI,'
      '  TCNUMNF_SAI = :TCNUMNF_SAI,'
      '  TCQTDMAN = :TCQTDMAN,'
      '  TCSITUACAO = :TCSITUACAO,'
      '  TCCODUSR = :TCCODUSR,'
      '  TCDATAHOR = :TCDATAHOR,'
      '  TCCODUSR_MAN = :TCCODUSR_MAN,'
      '  TCDATAHOR_MAN = :TCDATAHOR_MAN,'
      '  TCNOMCLI = :TCNOMCLI,'
      '  TCID_NEW = :TCID_NEW'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCLOTSEQ = :OLD_TCLOTSEQ and'
      '  TCCHAVE = :OLD_TCCHAVE')
    InsertSQL.Strings = (
      'insert into CADTRO_CAB'
      '  (TCCODEMP, TCLOTSEQ, TCCHAVE, TCCODCLI, TCCODVEN, TCOBS01, '
      'TCOBS02, TCOBS03, '
      '   TCOBS04, TCCHECARORI, TCSTATUS, TCDATA, TCICMSRETDEV, '
      'TCVALORDEV, TCDESCDEV, '
      '   TCFPGTO, TCACREDEV, TCICMSRETSAI, TCVALORSAI, TCDESCSAI, '
      'TCACRESAI, '
      '   TCTROCO, TCRECEBIDO, TCLOTSEQ_CP_DEV, TCCHAVE_DEV, '
      'TCNUMNF_DEV, TCLOTSEQ_CP_SAI, '
      '   TCCHAVE_SAI, TCNUMNF_SAI, TCQTDMAN, TCSITUACAO, TCCODUSR, '
      'TCDATAHOR, '
      '   TCCODUSR_MAN, TCDATAHOR_MAN, TCNOMCLI'
      '   ,TCID_NEW'
      '   )'
      'values'
      
        '  (:TCCODEMP, :TCLOTSEQ, :TCCHAVE, :TCCODCLI, :TCCODVEN, :TCOBS0' +
        '1,'
      ':TCOBS02,'
      '   :TCOBS03, :TCOBS04, :TCCHECARORI, :TCSTATUS, :TCDATA,'
      ':TCICMSRETDEV,'
      '   :TCVALORDEV, :TCDESCDEV, :TCFPGTO, :TCACREDEV, :TCICMSRETSAI,'
      ':TCVALORSAI,'
      
        '   :TCDESCSAI, :TCACRESAI, :TCTROCO, :TCRECEBIDO, :TCLOTSEQ_CP_D' +
        'EV,'
      ':TCCHAVE_DEV,'
      '   :TCNUMNF_DEV, :TCLOTSEQ_CP_SAI, :TCCHAVE_SAI, :TCNUMNF_SAI,'
      ':TCQTDMAN,'
      '   :TCSITUACAO, :TCCODUSR, :TCDATAHOR, :TCCODUSR_MAN,'
      ':TCDATAHOR_MAN, :TCNOMCLI'
      ',:TCID_NEW)')
    DeleteSQL.Strings = (
      'delete from CADTRO_CAB'
      'where'
      '  TCCODEMP = :OLD_TCCODEMP and'
      '  TCLOTSEQ = :OLD_TCLOTSEQ and'
      '  TCCHAVE = :OLD_TCCHAVE')
    Left = 262
    Top = 189
  end
  object Src_Trocas_Cab: TDataSource
    DataSet = Tb_Trocas_Cab
    Left = 291
    Top = 189
  end
  object Tb_Trocas_Ent: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRO_ENT where TECODEMP is null')
    Left = 233
    Top = 234
    object Tb_Trocas_EntTECODEMP: TFloatField
      FieldName = 'TECODEMP'
      Origin = 'SG_ASSOC.CADTRO_ENT.TECODEMP'
    end
    object Tb_Trocas_EntTELOTSEQ: TFloatField
      FieldName = 'TELOTSEQ'
      Origin = 'SG_ASSOC.CADTRO_ENT.TELOTSEQ'
    end
    object Tb_Trocas_EntTECHAVE: TFloatField
      FieldName = 'TECHAVE'
      Origin = 'SG_ASSOC.CADTRO_ENT.TECHAVE'
    end
    object Tb_Trocas_EntTECODPRO: TFloatField
      FieldName = 'TECODPRO'
      Origin = 'SG_ASSOC.CADTRO_ENT.TECODPRO'
    end
    object Tb_Trocas_EntTEQTD: TFloatField
      FieldName = 'TEQTD'
      Origin = 'SG_ASSOC.CADTRO_ENT.TEQTD'
    end
    object Tb_Trocas_EntTEPU: TFloatField
      FieldName = 'TEPU'
      Origin = 'SG_ASSOC.CADTRO_ENT.TEPU'
    end
    object Tb_Trocas_EntTELOTE: TStringField
      FieldName = 'TELOTE'
      Origin = 'SG_ASSOC.CADTRO_ENT.TELOTE'
    end
    object Tb_Trocas_EntTEDTVCTO: TDateTimeField
      FieldName = 'TEDTVCTO'
      Origin = 'SG_ASSOC.CADTRO_ENT.TEDTVCTO'
    end
    object Tb_Trocas_EntTEITEM: TFloatField
      FieldName = 'TEITEM'
      Origin = 'SG_ASSOC.CADTRO_ENT.TEITEM'
    end
    object Tb_Trocas_EntTEID_NEW: TFloatField
      FieldName = 'TEID_NEW'
    end
    object Tb_Trocas_EntTEID_CAB_NEW: TFloatField
      FieldName = 'TEID_CAB_NEW'
    end
  end
  object U_Trocas_Ent: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRO_ENT'
      'set'
      '  TECODEMP = :TECODEMP,'
      '  TELOTSEQ = :TELOTSEQ,'
      '  TECHAVE = :TECHAVE,'
      '  TECODPRO = :TECODPRO,'
      '  TEQTD = :TEQTD,'
      '  TEPU = :TEPU,'
      '  TELOTE = :TELOTE,'
      '  TEDTVCTO = :TEDTVCTO,'
      '  TEITEM = :TEITEM'
      '  ,:TEID_NEW = :TEID_NEW'
      '  ,:TEID_CAB_NEW = :TEID_CAB_NEW'
      'where'
      '  TECODEMP = :OLD_TECODEMP and'
      '  TELOTSEQ = :OLD_TELOTSEQ and'
      '  TECHAVE = :OLD_TECHAVE and'
      '  TEITEM = :OLD_TEITEM')
    InsertSQL.Strings = (
      'insert into CADTRO_ENT'
      '  (TECODEMP, TELOTSEQ, TECHAVE, TECODPRO, TEQTD, TEPU, TELOTE, '
      'TEDTVCTO, '
      '   TEITEM'
      '   ,TEID_NEW,TEID_CAB_NEW)'
      'values'
      
        '  (:TECODEMP, :TELOTSEQ, :TECHAVE, :TECODPRO, :TEQTD, :TEPU, :TE' +
        'LOTE,'
      ':TEDTVCTO,'
      '   :TEITEM,:TEID_NEW,TEID_CAB_NEW)')
    DeleteSQL.Strings = (
      'delete from CADTRO_ENT'
      'where'
      '  TECODEMP = :OLD_TECODEMP and'
      '  TELOTSEQ = :OLD_TELOTSEQ and'
      '  TECHAVE = :OLD_TECHAVE and'
      '  TEITEM = :OLD_TEITEM')
    Left = 262
    Top = 234
  end
  object Src_Trocas_Ent: TDataSource
    DataSet = Tb_Trocas_Ent
    Left = 291
    Top = 234
  end
  object Tb_Trocas_Ori: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRO_ORI where TOCODEMP is null')
    UpdateObject = U_Trocas_Ori
    Left = 233
    Top = 278
    object Tb_Trocas_OriTOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOCODEMP'
    end
    object Tb_Trocas_OriTOLOTSEQ: TFloatField
      FieldName = 'TOLOTSEQ'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOLOTSEQ'
    end
    object Tb_Trocas_OriTOCHAVE: TFloatField
      FieldName = 'TOCHAVE'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOCHAVE'
    end
    object Tb_Trocas_OriTOCODEMP_CP_DEV: TFloatField
      FieldName = 'TOCODEMP_CP_DEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOCODEMP_CP_DEV'
    end
    object Tb_Trocas_OriTOLOTSEQ_CP_DEV: TFloatField
      FieldName = 'TOLOTSEQ_CP_DEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOLOTSEQ_CP_DEV'
    end
    object Tb_Trocas_OriTOCHAVE_CP_DEV: TFloatField
      FieldName = 'TOCHAVE_CP_DEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOCHAVE_CP_DEV'
    end
    object Tb_Trocas_OriTOITEM: TFloatField
      FieldName = 'TOITEM'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOITEM'
    end
    object Tb_Trocas_OriTOCODCLI_CP_DEV: TFloatField
      FieldName = 'TOCODCLI_CP_DEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOCODCLI_CP_DEV'
    end
    object Tb_Trocas_OriTOVALOR_PEDDEV: TFloatField
      FieldName = 'TOVALOR_PEDDEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TOVALOR_PEDDEV'
    end
    object Tb_Trocas_OriTODATA_DEV: TDateTimeField
      FieldName = 'TODATA_DEV'
      Origin = 'SG_ASSOC.CADTRO_ORI.TODATA_DEV'
    end
    object Tb_Trocas_OriTOID_NEW: TFloatField
      FieldName = 'TOID_NEW'
    end
    object Tb_Trocas_OriTOID_CAB_NEW: TFloatField
      FieldName = 'TOID_CAB_NEW'
    end
    object Tb_Trocas_OriTOID_CP_DEV_NEW: TFloatField
      FieldName = 'TOID_CP_DEV_NEW'
    end
  end
  object U_Trocas_Ori: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRO_ORI'
      'set'
      '  TOCODEMP = :TOCODEMP,'
      '  TOLOTSEQ = :TOLOTSEQ,'
      '  TOCHAVE = :TOCHAVE,'
      '  TOCODEMP_CP_DEV = :TOCODEMP_CP_DEV,'
      '  TOLOTSEQ_CP_DEV = :TOLOTSEQ_CP_DEV,'
      '  TOCHAVE_CP_DEV = :TOCHAVE_CP_DEV,'
      '  TOITEM = :TOITEM,'
      '  TOCODCLI_CP_DEV = :TOCODCLI_CP_DEV,'
      '  TOVALOR_PEDDEV = :TOVALOR_PEDDEV,'
      '  TODATA_DEV = :TODATA_DEV'
      '  ,TOID_NEW = :TOID_NEW'
      '  ,TOID_CAB_NEW = :TOID_CAB_NEW'
      '  ,TOID_CP_DEV_NEW = :TOID_CP_DEV_NEW'
      'where'
      '  TOCODEMP = :OLD_TOCODEMP and'
      '  TOLOTSEQ = :OLD_TOLOTSEQ and'
      '  TOCHAVE = :OLD_TOCHAVE and'
      '  TOITEM = :OLD_TOITEM')
    InsertSQL.Strings = (
      'insert into CADTRO_ORI'
      '  (TOCODEMP, TOLOTSEQ, TOCHAVE, TOCODEMP_CP_DEV, '
      'TOLOTSEQ_CP_DEV, TOCHAVE_CP_DEV, '
      '   TOITEM, TOCODCLI_CP_DEV, TOVALOR_PEDDEV, TODATA_DEV'
      ',TOID_NEW, TOID_CAB_NEW, TOID_CP_DEV_NEW)'
      'values'
      '  (:TOCODEMP, :TOLOTSEQ, :TOCHAVE, :TOCODEMP_CP_DEV, '
      ':TOLOTSEQ_CP_DEV, '
      '   :TOCHAVE_CP_DEV, :TOITEM, :TOCODCLI_CP_DEV, :TOVALOR_PEDDEV, '
      ':TODATA_DEV,:TOID_NEW, :TOID_CAB_NEW, :TOID_CP_DEV_NEW)')
    DeleteSQL.Strings = (
      'delete from CADTRO_ORI'
      'where'
      '  TOCODEMP = :OLD_TOCODEMP and'
      '  TOLOTSEQ = :OLD_TOLOTSEQ and'
      '  TOCHAVE = :OLD_TOCHAVE and'
      '  TOITEM = :OLD_TOITEM')
    Left = 262
    Top = 278
  end
  object Src_Trocas_Ori: TDataSource
    DataSet = Tb_Trocas_Ori
    Left = 291
    Top = 278
  end
  object Tb_Trocas_Sai: TQuery
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTRO_SAI where TSCODEMP is null')
    UpdateObject = U_Trocas_Sai
    Left = 233
    Top = 323
    object Tb_Trocas_SaiTSCODEMP: TFloatField
      FieldName = 'TSCODEMP'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSCODEMP'
    end
    object Tb_Trocas_SaiTSLOTSEQ: TFloatField
      FieldName = 'TSLOTSEQ'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSLOTSEQ'
    end
    object Tb_Trocas_SaiTSCHAVE: TFloatField
      FieldName = 'TSCHAVE'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSCHAVE'
    end
    object Tb_Trocas_SaiTSCODPRO: TFloatField
      FieldName = 'TSCODPRO'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSCODPRO'
    end
    object Tb_Trocas_SaiTSQTD: TFloatField
      FieldName = 'TSQTD'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSQTD'
    end
    object Tb_Trocas_SaiTSPU: TFloatField
      FieldName = 'TSPU'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSPU'
    end
    object Tb_Trocas_SaiTSLOTE: TStringField
      FieldName = 'TSLOTE'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSLOTE'
    end
    object Tb_Trocas_SaiTSDTVCTO: TDateTimeField
      FieldName = 'TSDTVCTO'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSDTVCTO'
    end
    object Tb_Trocas_SaiTSITEM: TFloatField
      FieldName = 'TSITEM'
      Origin = 'SG_ASSOC.CADTRO_SAI.TSITEM'
    end
    object Tb_Trocas_SaiTSID_NEW: TFloatField
      FieldName = 'TSID_NEW'
    end
    object Tb_Trocas_SaiTSID_CAB_NEW: TFloatField
      FieldName = 'TSID_CAB_NEW'
    end
  end
  object U_Trocas_Sai: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTRO_SAI'
      'set'
      '  TSCODEMP = :TSCODEMP,'
      '  TSLOTSEQ = :TSLOTSEQ,'
      '  TSCHAVE = :TSCHAVE,'
      '  TSCODPRO = :TSCODPRO,'
      '  TSQTD = :TSQTD,'
      '  TSPU = :TSPU,'
      '  TSLOTE = :TSLOTE,'
      '  TSDTVCTO = :TSDTVCTO,'
      '  TSITEM = :TSITEM'
      '  ,TSID_NEW  = :TSID_NEW '
      ',TSID_CAB_NEW = :TSID_CAB_NEW'
      'where'
      '  TSCODEMP = :OLD_TSCODEMP and'
      '  TSLOTSEQ = :OLD_TSLOTSEQ and'
      '  TSCHAVE = :OLD_TSCHAVE and'
      '  TSITEM = :OLD_TSITEM')
    InsertSQL.Strings = (
      'insert into CADTRO_SAI'
      '  (TSCODEMP, TSLOTSEQ, TSCHAVE, TSCODPRO, TSQTD, TSPU, TSLOTE, '
      'TSDTVCTO, '
      '   TSITEM,TSID_NEW,TSID_CAB_NEW)'
      'values'
      
        '  (:TSCODEMP, :TSLOTSEQ, :TSCHAVE, :TSCODPRO, :TSQTD, :TSPU, :TS' +
        'LOTE,'
      ':TSDTVCTO,'
      '   :TSITEM, :TSID_NEW, :TSID_CAB_NEW)')
    DeleteSQL.Strings = (
      'delete from CADTRO_SAI'
      'where'
      '  TSCODEMP = :OLD_TSCODEMP and'
      '  TSLOTSEQ = :OLD_TSLOTSEQ and'
      '  TSCHAVE = :OLD_TSCHAVE and'
      '  TSITEM = :OLD_TSITEM')
    Left = 262
    Top = 323
  end
  object Src_Trocas_Sai: TDataSource
    DataSet = Tb_Trocas_Sai
    Left = 291
    Top = 323
  end
  object Tb_SGPro: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select SGPCODEMP,SGPCODPRO,SGPCODGRU,TNOME'
      'from CADSGPRO,CADTP'
      'where SGPCODEMP=1 '
      'and     TCODEMP=SGPCODEMP'
      'and     TCODTIP=SGPCODGRU')
    UpdateObject = U_SGPro
    Left = 353
    Top = 322
    object Tb_SGProSGPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'SGPCODEMP'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODEMP'
    end
    object Tb_SGProSGPCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'SGPCODPRO'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODPRO'
    end
    object Tb_SGProSGPCODGRU: TFloatField
      DisplayLabel = 'C'#243'digo Grupo'
      FieldName = 'SGPCODGRU'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODGRU'
    end
    object Tb_SGProTNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTP.TNOME'
      Size = 30
    end
  end
  object U_SGPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSGPRO'
      'set'
      '  SGPCODEMP = :SGPCODEMP,'
      '  SGPCODPRO = :SGPCODPRO,'
      '  SGPCODGRU = :SGPCODGRU'
      'where'
      '  SGPCODEMP = :OLD_SGPCODEMP and'
      '  SGPCODPRO = :OLD_SGPCODPRO and'
      '  SGPCODGRU = :OLD_SGPCODGRU')
    InsertSQL.Strings = (
      'insert into CADSGPRO'
      '  (SGPCODEMP, SGPCODPRO, SGPCODGRU)'
      'values'
      '  (:SGPCODEMP, :SGPCODPRO, :SGPCODGRU)')
    DeleteSQL.Strings = (
      'delete from CADSGPRO'
      'where'
      '  SGPCODEMP = :OLD_SGPCODEMP and'
      '  SGPCODPRO = :OLD_SGPCODPRO and'
      '  SGPCODGRU = :OLD_SGPCODGRU')
    Left = 382
    Top = 322
  end
  object Src_SGPro: TDataSource
    DataSet = Tb_SGPro
    Left = 410
    Top = 322
  end
  object Tb_SGPro_Ano: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADSGPRO_ANO')
    UpdateObject = U_SGPro_Ano
    Left = 353
    Top = 365
    object Tb_SGPro_AnoSGPACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'SGPACODEMP'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODEMP'
    end
    object Tb_SGPro_AnoSGPACODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'SGPACODPRO'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODPRO'
    end
    object Tb_SGPro_AnoSGPACODGRU: TFloatField
      DisplayLabel = 'C'#243'digo Grupo'
      FieldName = 'SGPACODGRU'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODGRU'
    end
    object Tb_SGPro_AnoSGPAANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SGPAANO'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPAANO'
    end
  end
  object U_SGPro_Ano: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSGPRO_ANO'
      'set'
      '  SGPACODEMP = :SGPACODEMP,'
      '  SGPACODPRO = :SGPACODPRO,'
      '  SGPACODGRU = :SGPACODGRU,'
      '  SGPAANO = :SGPAANO'
      'where'
      '  SGPACODEMP = :OLD_SGPACODEMP and'
      '  SGPACODPRO = :OLD_SGPACODPRO and'
      '  SGPACODGRU = :OLD_SGPACODGRU and'
      '  SGPAANO = :OLD_SGPAANO')
    InsertSQL.Strings = (
      'insert into CADSGPRO_ANO'
      '  (SGPACODEMP, SGPACODPRO, SGPACODGRU, SGPAANO)'
      'values'
      '  (:SGPACODEMP, :SGPACODPRO, :SGPACODGRU, :SGPAANO)')
    DeleteSQL.Strings = (
      'delete from CADSGPRO_ANO'
      'where'
      '  SGPACODEMP = :OLD_SGPACODEMP and'
      '  SGPACODPRO = :OLD_SGPACODPRO and'
      '  SGPACODGRU = :OLD_SGPACODGRU and'
      '  SGPAANO = :OLD_SGPAANO')
    Left = 382
    Top = 365
  end
  object Src_SGPro_Ano: TDataSource
    DataSet = Tb_SGPro_Ano
    Left = 410
    Top = 365
  end
  object Tb_SitMaq: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADSITMAQ')
    UpdateObject = U_SitMaq
    Left = 467
    Top = 3
    object Tb_SitMaqSCODEMP: TFloatField
      FieldName = 'SCODEMP'
      Origin = 'SG_ASSOC.CADSITMAQ.SCODEMP'
    end
    object Tb_SitMaqSCODSITMAQ: TFloatField
      FieldName = 'SCODSITMAQ'
      Origin = 'SG_ASSOC.CADSITMAQ.SCODSITMAQ'
    end
    object Tb_SitMaqSNOMSITMAQ: TStringField
      FieldName = 'SNOMSITMAQ'
      Origin = 'SG_ASSOC.CADSITMAQ.SNOMSITMAQ'
      Size = 40
    end
  end
  object U_SitMaq: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSITMAQ'
      'set'
      '  SCODEMP = :SCODEMP,'
      '  SCODSITMAQ = :SCODSITMAQ,'
      '  SNOMSITMAQ = :SNOMSITMAQ'
      'where'
      '  SCODEMP = :OLD_SCODEMP and'
      '  SCODSITMAQ = :OLD_SCODSITMAQ')
    InsertSQL.Strings = (
      'insert into CADSITMAQ'
      '  (SCODEMP, SCODSITMAQ, SNOMSITMAQ)'
      'values'
      '  (:SCODEMP, :SCODSITMAQ, :SNOMSITMAQ)')
    DeleteSQL.Strings = (
      'delete from CADSITMAQ'
      'where'
      '  SCODEMP = :OLD_SCODEMP and'
      '  SCODSITMAQ = :OLD_SCODSITMAQ')
    Left = 497
    Top = 3
  end
  object Src_SitMaq: TDataSource
    DataSet = Tb_SitMaq
    Left = 526
    Top = 3
  end
  object Tb_TroMol: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADTROMOL')
    UpdateObject = U_TroMol
    Left = 467
    Top = 50
    object Tb_TroMolTCODEMP: TFloatField
      FieldName = 'TCODEMP'
      Origin = 'SG_ASSOC.CADTROMOL.TCODEMP'
    end
    object Tb_TroMolTCODTROMOL: TFloatField
      FieldName = 'TCODTROMOL'
      Origin = 'SG_ASSOC.CADTROMOL.TCODTROMOL'
    end
    object Tb_TroMolTOBSESTSAI: TStringField
      FieldName = 'TOBSESTSAI'
      Origin = 'SG_ASSOC.CADTROMOL.TOBSESTSAI'
      Size = 50
    end
    object Tb_TroMolTDATAENT: TDateTimeField
      FieldName = 'TDATAENT'
      Origin = 'SG_ASSOC.CADTROMOL.TDATAENT'
    end
    object Tb_TroMolTHORAENTINI: TStringField
      FieldName = 'THORAENTINI'
      Origin = 'SG_ASSOC.CADTROMOL.THORAENTINI'
      Size = 2
    end
    object Tb_TroMolTMINUENTTOFIN: TStringField
      FieldName = 'TMINUENTTOFIN'
      Origin = 'SG_ASSOC.CADTROMOL.TMINUENTTOFIN'
      Size = 2
    end
    object Tb_TroMolTDATASAI: TDateTimeField
      FieldName = 'TDATASAI'
      Origin = 'SG_ASSOC.CADTROMOL.TDATASAI'
    end
    object Tb_TroMolTHORASAIINI: TStringField
      FieldName = 'THORASAIINI'
      Origin = 'SG_ASSOC.CADTROMOL.THORASAIINI'
      Size = 2
    end
    object Tb_TroMolTMINUSAIFIN: TStringField
      FieldName = 'TMINUSAIFIN'
      Origin = 'SG_ASSOC.CADTROMOL.TMINUSAIFIN'
      Size = 2
    end
    object Tb_TroMolTCODSIT1: TStringField
      FieldName = 'TCODSIT1'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT1'
      Size = 50
    end
    object Tb_TroMolTCODSIT2: TStringField
      FieldName = 'TCODSIT2'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT2'
      Size = 50
    end
    object Tb_TroMolTCODSIT3: TStringField
      FieldName = 'TCODSIT3'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT3'
      Size = 50
    end
    object Tb_TroMolTCODSIT4: TStringField
      FieldName = 'TCODSIT4'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT4'
      Size = 50
    end
    object Tb_TroMolTCODSIT5: TStringField
      FieldName = 'TCODSIT5'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT5'
      Size = 50
    end
    object Tb_TroMolTCODSIT6: TStringField
      FieldName = 'TCODSIT6'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT6'
      Size = 50
    end
    object Tb_TroMolTCODSIT7: TStringField
      FieldName = 'TCODSIT7'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT7'
      Size = 50
    end
    object Tb_TroMolTCODSIT8: TStringField
      FieldName = 'TCODSIT8'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT8'
      Size = 50
    end
    object Tb_TroMolTCODSIT9: TStringField
      FieldName = 'TCODSIT9'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT9'
      Size = 50
    end
    object Tb_TroMolTCODSIT10: TStringField
      FieldName = 'TCODSIT10'
      Origin = 'SG_ASSOC.CADTROMOL.TCODSIT10'
      Size = 50
    end
    object Tb_TroMolTCODMOLDE: TFloatField
      FieldName = 'TCODMOLDE'
      Origin = 'SG_ASSOC.CADTROMOL.TCODMOLDE'
    end
    object Tb_TroMolTCODIMO: TFloatField
      FieldName = 'TCODIMO'
      Origin = 'SG_ASSOC.CADTROMOL.TCODIMO'
    end
    object Tb_TroMolTCODMOLSAI: TFloatField
      FieldName = 'TCODMOLSAI'
      Origin = 'SG_ASSOC.CADTROMOL.TCODMOLSAI'
    end
    object Tb_TroMolTCODENCAR: TFloatField
      FieldName = 'TCODENCAR'
      Origin = 'SG_ASSOC.CADTROMOL.TCODENCAR'
    end
    object Tb_TroMolTCODGEREN: TFloatField
      FieldName = 'TCODGEREN'
      Origin = 'SG_ASSOC.CADTROMOL.TCODGEREN'
    end
  end
  object U_TroMol: TUpdateSQL
    ModifySQL.Strings = (
      'update CADTROMOL'
      'set'
      '  TCODEMP = :TCODEMP,'
      '  TCODTROMOL = :TCODTROMOL,'
      '  TOBSESTSAI = :TOBSESTSAI,'
      '  TDATAENT = :TDATAENT,'
      '  THORAENTINI = :THORAENTINI,'
      '  TMINUENTTOFIN = :TMINUENTTOFIN,'
      '  TDATASAI = :TDATASAI,'
      '  THORASAIINI = :THORASAIINI,'
      '  TMINUSAIFIN = :TMINUSAIFIN,'
      '  TCODSIT1 = :TCODSIT1,'
      '  TCODSIT2 = :TCODSIT2,'
      '  TCODSIT3 = :TCODSIT3,'
      '  TCODSIT4 = :TCODSIT4,'
      '  TCODSIT5 = :TCODSIT5,'
      '  TCODSIT6 = :TCODSIT6,'
      '  TCODSIT7 = :TCODSIT7,'
      '  TCODSIT8 = :TCODSIT8,'
      '  TCODSIT9 = :TCODSIT9,'
      '  TCODSIT10 = :TCODSIT10,'
      '  TCODMOLDE = :TCODMOLDE,'
      '  TCODIMO = :TCODIMO,'
      '  TCODMOLSAI = :TCODMOLSAI,'
      '  TCODENCAR = :TCODENCAR,'
      '  TCODGEREN = :TCODGEREN'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTROMOL = :OLD_TCODTROMOL')
    InsertSQL.Strings = (
      'insert into CADTROMOL'
      
        '  (TCODEMP, TCODTROMOL, TOBSESTSAI, TDATAENT, THORAENTINI, TMINU' +
        'ENTTOFIN, '
      
        '   TDATASAI, THORASAIINI, TMINUSAIFIN, TCODSIT1, TCODSIT2, TCODS' +
        'IT3, TCODSIT4, '
      
        '   TCODSIT5, TCODSIT6, TCODSIT7, TCODSIT8, TCODSIT9, TCODSIT10, ' +
        'TCODMOLDE, '
      '   TCODIMO, TCODMOLSAI, TCODENCAR, TCODGEREN)'
      'values'
      
        '  (:TCODEMP, :TCODTROMOL, :TOBSESTSAI, :TDATAENT, :THORAENTINI, ' +
        ':TMINUENTTOFIN, '
      
        '   :TDATASAI, :THORASAIINI, :TMINUSAIFIN, :TCODSIT1, :TCODSIT2, ' +
        ':TCODSIT3, '
      
        '   :TCODSIT4, :TCODSIT5, :TCODSIT6, :TCODSIT7, :TCODSIT8, :TCODS' +
        'IT9, :TCODSIT10, '
      '   :TCODMOLDE, :TCODIMO, :TCODMOLSAI, :TCODENCAR, :TCODGEREN)')
    DeleteSQL.Strings = (
      'delete from CADTROMOL'
      'where'
      '  TCODEMP = :OLD_TCODEMP and'
      '  TCODTROMOL = :OLD_TCODTROMOL')
    Left = 497
    Top = 50
  end
  object Src_TroMol: TDataSource
    DataSet = Tb_TroMol
    Left = 526
    Top = 50
  end
  object Tb_Molde: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADMOLDE')
    UpdateObject = U_Molde
    Left = 582
    Top = 50
    object Tb_MoldeMCODEMP: TFloatField
      FieldName = 'MCODEMP'
      Origin = 'SG_ASSOC.CADMOLDE.MCODEMP'
    end
    object Tb_MoldeMCODMOLDE: TFloatField
      FieldName = 'MCODMOLDE'
      Origin = 'SG_ASSOC.CADMOLDE.MCODMOLDE'
    end
    object Tb_MoldeMNOMMOLDE: TStringField
      FieldName = 'MNOMMOLDE'
      Origin = 'SG_ASSOC.CADMOLDE.MNOMMOLDE'
      Size = 40
    end
  end
  object U_Molde: TUpdateSQL
    ModifySQL.Strings = (
      'update CADMOLDE'
      'set'
      '  MCODEMP = :MCODEMP,'
      '  MCODMOLDE = :MCODMOLDE,'
      '  MNOMMOLDE = :MNOMMOLDE'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMOLDE = :OLD_MCODMOLDE')
    InsertSQL.Strings = (
      'insert into CADMOLDE'
      '  (MCODEMP, MCODMOLDE, MNOMMOLDE)'
      'values'
      '  (:MCODEMP, :MCODMOLDE, :MNOMMOLDE)')
    DeleteSQL.Strings = (
      'delete from CADMOLDE'
      'where'
      '  MCODEMP = :OLD_MCODEMP and'
      '  MCODMOLDE = :OLD_MCODMOLDE')
    Left = 612
    Top = 50
  end
  object Src_Molde: TDataSource
    DataSet = Tb_Molde
    Left = 641
    Top = 50
  end
  object Tb_LBR1: TQuery
    CachedUpdates = True
    AfterInsert = Tb_LBR1AfterInsert
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_LBR1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADLBR1')
    UpdateObject = U_LBR1
    Left = 469
    Top = 368
    object Tb_LBR1LBCODEMP: TFloatField
      FieldName = 'LBCODEMP'
      Origin = 'SG_ASSOC.CADLBR1.LBCODEMP'
    end
    object Tb_LBR1LBNUMLOT: TFloatField
      FieldName = 'LBNUMLOT'
      Origin = 'SG_ASSOC.CADLBR1.LBNUMLOT'
    end
    object Tb_LBR1LBDATA: TDateTimeField
      FieldName = 'LBDATA'
      Origin = 'SG_ASSOC.CADLBR1.LBDATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_LBR1LBCODBCO: TFloatField
      FieldName = 'LBCODBCO'
      Origin = 'SG_ASSOC.CADLBR1.LBCODBCO'
    end
    object Tb_LBR1LBTIPCOB: TFloatField
      FieldName = 'LBTIPCOB'
      Origin = 'SG_ASSOC.CADLBR1.LBTIPCOB'
    end
    object Tb_LBR1LBTOTAL: TFloatField
      FieldName = 'LBTOTAL'
      Origin = 'SG_ASSOC.CADLBR1.LBTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object Tb_LBR1nombco: TStringField
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
  end
  object U_LBR1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLBR1'
      'set'
      '  LBCODEMP = :LBCODEMP,'
      '  LBNUMLOT = :LBNUMLOT,'
      '  LBDATA = :LBDATA,'
      '  LBCODBCO = :LBCODBCO,'
      '  LBTIPCOB = :LBTIPCOB,'
      '  LBTOTAL = :LBTOTAL'
      'where'
      '  LBCODEMP = :OLD_LBCODEMP and'
      '  LBNUMLOT = :OLD_LBNUMLOT')
    InsertSQL.Strings = (
      'insert into CADLBR1'
      '  (LBCODEMP, LBNUMLOT, LBDATA, LBCODBCO, LBTIPCOB, LBTOTAL)'
      'values'
      
        '  (:LBCODEMP, :LBNUMLOT, :LBDATA, :LBCODBCO, :LBTIPCOB, :LBTOTAL' +
        ')')
    DeleteSQL.Strings = (
      'delete from CADLBR1'
      'where'
      '  LBCODEMP = :OLD_LBCODEMP and'
      '  LBNUMLOT = :OLD_LBNUMLOT')
    Left = 500
    Top = 368
  end
  object Src_LBR1: TDataSource
    DataSet = Tb_LBR1
    Left = 528
    Top = 368
  end
  object Src_LBR2: TDataSource
    DataSet = Tb_LBR2
    Left = 531
    Top = 413
  end
  object Tb_LBR2: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_LBR2CalcFields
    DatabaseName = 'SG_ASSOC'
    Constrained = True
    SQL.Strings = (
      'Select LB2CODEMP,'
      '        LB2NUMLOT,'
      '       LB2NUMERO,'
      '       LB2DESD,'
      '       LB2DUP,'
      '       LB2CODEMP_DUP,'
      '       LB2DTEMIS,'
      '       LB2DTVCTO,'
      '       LB2VALOR,'
      '       LB2CODCLI,'
      '       LB2CODVEN,'
      '       LB2CODLOC,'
      '       CRAZAO,'
      '       LNOME,'
      '       LUF'
      '       from CADLBR2, CADCLI, CADLOC'
      'where CCODCLI(+)=LB2CODCLI'
      '   and LCODLOC(+)=LB2CODLOC')
    UpdateObject = U_LBR2
    Left = 470
    Top = 413
    object Tb_LBR2LB2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'LB2CODEMP'
    end
    object Tb_LBR2LB2NUMLOT: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'LB2NUMLOT'
    end
    object Tb_LBR2LB2NUMERO: TFloatField
      DisplayLabel = 'Num.Dup'
      FieldName = 'LB2NUMERO'
    end
    object Tb_LBR2LB2DESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'LB2DESD'
      Size = 2
    end
    object Tb_LBR2LB2DUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'LB2DUP'
    end
    object Tb_LBR2LB2CODEMP_DUP: TFloatField
      DisplayLabel = 'Cod.Emp.Dup'
      FieldName = 'LB2CODEMP_DUP'
    end
    object Tb_LBR2LB2DTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'LB2DTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_LBR2LB2DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'LB2DTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_LBR2LB2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'LB2VALOR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_LBR2LB2CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'LB2CODCLI'
    end
    object Tb_LBR2LB2CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'LB2CODVEN'
    end
    object Tb_LBR2LB2CODLOC: TFloatField
      DisplayLabel = 'C'#243'd.Loc.'
      FieldName = 'LB2CODLOC'
    end
    object Tb_LBR2CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Tb_LBR2LNOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'LNOME'
      Size = 30
    end
    object Tb_LBR2LUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'LUF'
      Size = 2
    end
    object Tb_LBR2Numero: TStringField
      FieldKind = fkCalculated
      FieldName = 'Numero'
      Size = 10
      Calculated = True
    end
    object Tb_LBR2cidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 40
      Calculated = True
    end
  end
  object U_LBR2: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLBR2'
      'set'
      '  LB2CODEMP = :LB2CODEMP,'
      '  LB2NUMLOT = :LB2NUMLOT,'
      '  LB2NUMERO = :LB2NUMERO,'
      '  LB2DESD = :LB2DESD,'
      '  LB2DUP = :LB2DUP,'
      '  LB2CODEMP_DUP = :LB2CODEMP_DUP,'
      '  LB2DTEMIS = :LB2DTEMIS,'
      '  LB2DTVCTO = :LB2DTVCTO,'
      '  LB2VALOR = :LB2VALOR,'
      '  LB2CODCLI = :LB2CODCLI,'
      '  LB2CODVEN = :LB2CODVEN,'
      '  LB2CODLOC = :LB2CODLOC'
      'where'
      '  LB2CODEMP = :OLD_LB2CODEMP and'
      '  LB2NUMLOT = :OLD_LB2NUMLOT and'
      '  LB2NUMERO = :OLD_LB2NUMERO and'
      '  LB2DESD = :OLD_LB2DESD and'
      '  LB2DUP = :OLD_LB2DUP and'
      '  LB2CODEMP_DUP = :OLD_LB2CODEMP_DUP and'
      '  LB2DTEMIS = :OLD_LB2DTEMIS')
    InsertSQL.Strings = (
      'insert into CADLBR2'
      '  (LB2CODEMP, LB2NUMLOT, LB2NUMERO, LB2DESD, LB2DUP, '
      'LB2CODEMP_DUP, LB2DTEMIS, '
      '   LB2DTVCTO, LB2VALOR, LB2CODCLI, LB2CODVEN, LB2CODLOC)'
      'values'
      '  (:LB2CODEMP, :LB2NUMLOT, :LB2NUMERO, :LB2DESD, :LB2DUP, '
      ':LB2CODEMP_DUP, '
      '   :LB2DTEMIS, :LB2DTVCTO, :LB2VALOR, :LB2CODCLI, :LB2CODVEN, '
      ':LB2CODLOC)')
    DeleteSQL.Strings = (
      'delete from CADLBR2'
      'where'
      '  LB2CODEMP = :OLD_LB2CODEMP and'
      '  LB2NUMLOT = :OLD_LB2NUMLOT and'
      '  LB2NUMERO = :OLD_LB2NUMERO and'
      '  LB2DESD = :OLD_LB2DESD and'
      '  LB2DUP = :OLD_LB2DUP and'
      '  LB2CODEMP_DUP = :OLD_LB2CODEMP_DUP and'
      '  LB2DTEMIS = :OLD_LB2DTEMIS')
    Left = 500
    Top = 413
  end
  object Qr_PPR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PPPROMOCAO,'
      '       PPDATINI,'
      '       PPCODPRO,'
      '       PPDATFIN,'
      '       PPPCOVDA,'
      '       PPPVTIP,'
      '       PPPVTAB,'
      '       PPCODRED,'
      '       PPCODREG,'
      '       PPFLAG,'
      '       PPDESC_1,'
      '       PPDESC_2,'
      '       PPDESC_3,'
      '       PPCONFVDA,'
      '       PPCOMIS,'
      '       PPQTDMIN,'
      '       PPVALMIN,'
      '       PPDESC_F,'
      '       PPPRIOR'
      'from CADPPR where'
      'PPCODEMP  is null'
      '')
    Left = 48
    Top = 97
    object Qr_PPRPPPROMOCAO: TStringField
      DisplayLabel = 'Promo'#231#227'o'
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 10
    end
    object Qr_PPRPPDATINI: TDateTimeField
      DisplayLabel = 'Data Inicio'
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Qr_PPRPPDATFIN: TDateTimeField
      DisplayLabel = 'Data Final'
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Qr_PPRPPPCOVDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Qr_PPRPPDESC_1: TFloatField
      DisplayLabel = '% Desc.01'
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Qr_PPRPPDESC_2: TFloatField
      DisplayLabel = '% Desc.02'
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Qr_PPRPPDESC_3: TFloatField
      DisplayLabel = '% Desc.03'
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Qr_PPRPPCONFVDA: TStringField
      DisplayLabel = 'Conf.Vda.'
      FieldName = 'PPCONFVDA'
      Origin = 'SG_ASSOC.CADPPR.PPCONFVDA'
      Size = 1
    end
    object Qr_PPRPPCOMIS: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PPCOMIS'
      Origin = 'SG_ASSOC.CADPPR.PPCOMIS'
    end
    object Qr_PPRPPQTDMIN: TFloatField
      DisplayLabel = 'Qtd.M'#237'nima'
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Qr_PPRPPVALMIN: TFloatField
      DisplayLabel = 'Valor M'#237'nimo'
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Qr_PPRPPDESC_F: TFloatField
      DisplayLabel = '% Desc.Fin.'
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Qr_PPRPPPRIOR: TFloatField
      DisplayLabel = 'Prioridade'
      FieldName = 'PPPRIOR'
      Origin = 'SG_ASSOC.CADPPR.PPPRIOR'
    end
    object Qr_PPRPPPVTIP: TStringField
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Qr_PPRPPPVTAB: TStringField
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 2
    end
    object Qr_PPRPPCODRED: TFloatField
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Qr_PPRPPFLAG: TStringField
      FieldName = 'PPFLAG'
      Origin = 'SG_ASSOC.CADPPR.PPFLAG'
      Size = 1
    end
    object Qr_PPRPPCODPRO: TFloatField
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Qr_PPRPPCODREG: TFloatField
      FieldName = 'PPCODREG'
      Origin = 'SG_ASSOC.CADPPR.PPCODREG'
    end
    object Qr_PPRPPCODCLI: TFloatField
      FieldName = 'PPCODCLI'
    end
    object Qr_PPRPPID_ANO: TFloatField
      FieldName = 'PPID_ANO'
    end
    object Qr_PPRPPID: TFloatField
      FieldName = 'PPID'
    end
    object Qr_PPRPPUF: TStringField
      FieldName = 'PPUF'
      Size = 2
    end
  end
  object Tb_AjPco: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADAJPCO')
    UpdateObject = U_AjPco
    Left = 117
    Top = 408
    object Tb_AjPcoAPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'APCODEMP'
      Origin = 'SG_ASSOC.CADAJPCO.APCODEMP'
    end
    object Tb_AjPcoAPCODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornec.Pre'#231'os'
      FieldName = 'APCODFOR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFOR'
    end
    object Tb_AjPcoAPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'APLOTE'
      Origin = 'SG_ASSOC.CADAJPCO.APLOTE'
    end
    object Tb_AjPcoAPDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'APDATA'
      Origin = 'SG_ASSOC.CADAJPCO.APDATA'
    end
    object Tb_AjPcoAPCODPRO_FOR: TFloatField
      DisplayLabel = 'C'#243'd.Prod.Forn.'
      FieldName = 'APCODPRO_FOR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODPRO_FOR'
    end
    object Tb_AjPcoAPCODBAR: TFloatField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'APCODBAR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODBAR'
    end
    object Tb_AjPcoAPCODPRO_LOCAL: TFloatField
      DisplayLabel = 'C'#243'd.Prod.Local'
      FieldName = 'APCODPRO_LOCAL'
      Origin = 'SG_ASSOC.CADAJPCO.APCODPRO_LOCAL'
    end
    object Tb_AjPcoAPNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'APNOME'
      Origin = 'SG_ASSOC.CADAJPCO.APNOME'
      Size = 53
    end
    object Tb_AjPcoAPAPRES: TStringField
      DisplayLabel = 'Apresenta'#231#227'o'
      FieldName = 'APAPRES'
      Origin = 'SG_ASSOC.CADAJPCO.APAPRES'
      Size = 45
    end
    object Tb_AjPcoAPCODFAB: TFloatField
      DisplayLabel = 'C'#243'd.Ind'#250'stria'
      FieldName = 'APCODFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFAB'
    end
    object Tb_AjPcoAPNOMFAB: TStringField
      DisplayLabel = 'Nome da Ind'#250'stria'
      FieldName = 'APNOMFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMFAB'
      Size = 45
    end
    object Tb_AjPcoAPUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'APUND'
      Origin = 'SG_ASSOC.CADAJPCO.APUND'
      Size = 3
    end
    object Tb_AjPcoAPEMBMUL: TFloatField
      DisplayLabel = 'Emb.M'#250'ltipla'
      FieldName = 'APEMBMUL'
      Origin = 'SG_ASSOC.CADAJPCO.APEMBMUL'
    end
    object Tb_AjPcoAPPCOFAB: TFloatField
      DisplayLabel = 'Pre'#231'o f'#225'brica'
      FieldName = 'APPCOFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB'
    end
    object Tb_AjPcoAPPCOMAX: TFloatField
      DisplayLabel = 'Pre'#231'o m'#225'ximo'
      FieldName = 'APPCOMAX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX'
    end
    object Tb_AjPcoAPPCOVDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'APPCOVDA'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOVDA'
    end
    object Tb_AjPcoAPPCOFAB_CX: TFloatField
      DisplayLabel = 'P'#231'o.Fab.Caixa'
      FieldName = 'APPCOFAB_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_CX'
    end
    object Tb_AjPcoAPPCOMAX_CX: TFloatField
      DisplayLabel = 'P'#231'o.M'#225'x.Caixa'
      FieldName = 'APPCOMAX_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_CX'
    end
    object Tb_AjPcoAPDTVIG: TDateTimeField
      DisplayLabel = 'Data Vig'#234'ncia'
      FieldName = 'APDTVIG'
      Origin = 'SG_ASSOC.CADAJPCO.APDTVIG'
    end
    object Tb_AjPcoAPPERC_PCOFAB: TFloatField
      DisplayLabel = '% Pre'#231'o F'#225'brica'
      FieldName = 'APPERC_PCOFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOFAB'
    end
    object Tb_AjPcoAPPERC_PCOMAX: TFloatField
      DisplayLabel = '% Pre'#231'o M'#225'ximo'
      FieldName = 'APPERC_PCOMAX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOMAX'
    end
    object Tb_AjPcoAPPERC_PCOVDA: TFloatField
      DisplayLabel = '% Pre'#231'o Venda'
      FieldName = 'APPERC_PCOVDA'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOVDA'
    end
    object Tb_AjPcoAPPERC_PCOFAB_CX: TFloatField
      DisplayLabel = '% Pre'#231'o F'#225'brica Caixa '
      FieldName = 'APPERC_PCOFAB_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOFAB_CX'
    end
    object Tb_AjPcoAPPERC_PCOMAX_CX: TFloatField
      DisplayLabel = '% Pre'#231'o M'#225'ximo Caixa'
      FieldName = 'APPERC_PCOMAX_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOMAX_CX'
    end
    object Tb_AjPcoAPCODGRU: TFloatField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'APCODGRU'
      Origin = 'SG_ASSOC.CADAJPCO.APCODGRU'
    end
    object Tb_AjPcoAPNOMGRU: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'APNOMGRU'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMGRU'
      Size = 30
    end
    object Tb_AjPcoAPCODCON: TFloatField
      DisplayLabel = 'C'#243'd.Controle'
      FieldName = 'APCODCON'
      Origin = 'SG_ASSOC.CADAJPCO.APCODCON'
    end
    object Tb_AjPcoAPNOMCON: TStringField
      DisplayLabel = 'Nome do Controle'
      FieldName = 'APNOMCON'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMCON'
      Size = 30
    end
    object Tb_AjPcoAPCODRAM: TFloatField
      DisplayLabel = 'C'#243'd.Ramo'
      FieldName = 'APCODRAM'
      Origin = 'SG_ASSOC.CADAJPCO.APCODRAM'
    end
    object Tb_AjPcoAPNOMRAM: TStringField
      DisplayLabel = 'Nome do Ramo'
      FieldName = 'APNOMRAM'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMRAM'
      Size = 30
    end
    object Tb_AjPcoAPCODTIP: TFloatField
      DisplayLabel = 'C'#243'd.tipo'
      FieldName = 'APCODTIP'
      Origin = 'SG_ASSOC.CADAJPCO.APCODTIP'
    end
    object Tb_AjPcoAPNOMTIP: TStringField
      DisplayLabel = 'Nome do Tipo'
      FieldName = 'APNOMTIP'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMTIP'
      Size = 30
    end
    object Tb_AjPcoAPLISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'APLISTA'
      Origin = 'SG_ASSOC.CADAJPCO.APLISTA'
    end
    object Tb_AjPcoAPIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'APIPI'
      Origin = 'SG_ASSOC.CADAJPCO.APIPI'
    end
    object Tb_AjPcoAPREGMS: TStringField
      DisplayLabel = 'Reg.Minist.Sa'#250'de'
      FieldName = 'APREGMS'
      Origin = 'SG_ASSOC.CADAJPCO.APREGMS'
    end
    object Tb_AjPcoAPCLAS: TStringField
      DisplayLabel = 'Classifica'#231#227'o Fiscal'
      FieldName = 'APCLAS'
      Origin = 'SG_ASSOC.CADAJPCO.APCLAS'
    end
    object Tb_AjPcoAPCODBAR_ANT: TFloatField
      FieldName = 'APCODBAR_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODBAR_ANT'
    end
    object Tb_AjPcoAPCODFAB_ANT: TFloatField
      FieldName = 'APCODFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFAB_ANT'
    end
    object Tb_AjPcoAPNOMFAB_ANT: TStringField
      FieldName = 'APNOMFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMFAB_ANT'
      Size = 45
    end
    object Tb_AjPcoAPUND_ANT: TStringField
      FieldName = 'APUND_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APUND_ANT'
      Size = 3
    end
    object Tb_AjPcoAPEMBMUL_ANT: TFloatField
      FieldName = 'APEMBMUL_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APEMBMUL_ANT'
    end
    object Tb_AjPcoAPPCOFAB_ANT: TFloatField
      FieldName = 'APPCOFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_ANT'
    end
    object Tb_AjPcoAPPCOMAX_ANT: TFloatField
      FieldName = 'APPCOMAX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_ANT'
    end
    object Tb_AjPcoAPPCOFAB_CX_ANT: TFloatField
      FieldName = 'APPCOFAB_CX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_CX_ANT'
    end
    object Tb_AjPcoAPCODGRU_ANT: TFloatField
      FieldName = 'APCODGRU_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODGRU_ANT'
    end
    object Tb_AjPcoAPNOMGRU_ANT: TStringField
      FieldName = 'APNOMGRU_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMGRU_ANT'
      Size = 30
    end
    object Tb_AjPcoAPCODCON_ANT: TFloatField
      FieldName = 'APCODCON_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODCON_ANT'
    end
    object Tb_AjPcoAPNOMCON_ANT: TStringField
      FieldName = 'APNOMCON_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMCON_ANT'
      Size = 30
    end
    object Tb_AjPcoAPCODRAM_ANT: TFloatField
      FieldName = 'APCODRAM_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODRAM_ANT'
    end
    object Tb_AjPcoAPNOMRAM_ANT: TStringField
      FieldName = 'APNOMRAM_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMRAM_ANT'
      Size = 30
    end
    object Tb_AjPcoAPCODTIP_ANT: TFloatField
      FieldName = 'APCODTIP_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODTIP_ANT'
    end
    object Tb_AjPcoAPNOMTIP_ANT: TStringField
      FieldName = 'APNOMTIP_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMTIP_ANT'
      Size = 30
    end
    object Tb_AjPcoAPLISTA_ANT: TFloatField
      FieldName = 'APLISTA_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APLISTA_ANT'
    end
    object Tb_AjPcoAPIPI_ANT: TFloatField
      FieldName = 'APIPI_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APIPI_ANT'
    end
    object Tb_AjPcoAPREGMS_ANT: TStringField
      FieldName = 'APREGMS_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APREGMS_ANT'
    end
    object Tb_AjPcoAPCLAS_ANT: TStringField
      FieldName = 'APCLAS_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCLAS_ANT'
    end
    object Tb_AjPcoAPSTATUS: TFloatField
      FieldName = 'APSTATUS'
      Origin = 'SG_ASSOC.CADAJPCO.APSTATUS'
    end
    object Tb_AjPcoAPNOMECOMP: TStringField
      FieldName = 'APNOMECOMP'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMECOMP'
      Size = 53
    end
    object Tb_AjPcoAPPCOVDA_ANT: TFloatField
      FieldName = 'APPCOVDA_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOVDA_ANT'
    end
    object Tb_AjPcoAPNOME_ANT: TStringField
      FieldName = 'APNOME_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOME_ANT'
      Size = 53
    end
    object Tb_AjPcoAPPCOMAX_CX_ANT: TFloatField
      FieldName = 'APPCOMAX_CX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_CX_ANT'
    end
    object Tb_AjPcoAPSITUACAO: TFloatField
      FieldName = 'APSITUACAO'
      Origin = 'SG_ASSOC.CADAJPCO.APSITUACAO'
    end
    object Tb_AjPcoAPRELACIONADO: TFloatField
      FieldName = 'APRELACIONADO'
      Origin = 'SG_ASSOC.CADAJPCO.APRELACIONADO'
    end
  end
  object U_AjPco: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAJPCO'
      'set'
      '  APCODEMP = :APCODEMP,'
      '  APCODFOR = :APCODFOR,'
      '  APLOTE = :APLOTE,'
      '  APDATA = :APDATA,'
      '  APCODPRO_FOR = :APCODPRO_FOR,'
      '  APCODBAR = :APCODBAR,'
      '  APCODPRO_LOCAL = :APCODPRO_LOCAL,'
      '  APNOME = :APNOME,'
      '  APAPRES = :APAPRES,'
      '  APCODFAB = :APCODFAB,'
      '  APNOMFAB = :APNOMFAB,'
      '  APUND = :APUND,'
      '  APEMBMUL = :APEMBMUL,'
      '  APPCOFAB = :APPCOFAB,'
      '  APPCOMAX = :APPCOMAX,'
      '  APPCOVDA = :APPCOVDA,'
      '  APPCOFAB_CX = :APPCOFAB_CX,'
      '  APPCOMAX_CX = :APPCOMAX_CX,'
      '  APDTVIG = :APDTVIG,'
      '  APPERC_PCOFAB = :APPERC_PCOFAB,'
      '  APPERC_PCOMAX = :APPERC_PCOMAX,'
      '  APPERC_PCOVDA = :APPERC_PCOVDA,'
      '  APPERC_PCOFAB_CX = :APPERC_PCOFAB_CX,'
      '  APPERC_PCOMAX_CX = :APPERC_PCOMAX_CX,'
      '  APCODGRU = :APCODGRU,'
      '  APNOMGRU = :APNOMGRU,'
      '  APCODCON = :APCODCON,'
      '  APNOMCON = :APNOMCON,'
      '  APCODRAM = :APCODRAM,'
      '  APNOMRAM = :APNOMRAM,'
      '  APCODTIP = :APCODTIP,'
      '  APNOMTIP = :APNOMTIP,'
      '  APLISTA = :APLISTA,'
      '  APIPI = :APIPI,'
      '  APREGMS = :APREGMS,'
      '  APCLAS = :APCLAS,'
      '  APCODBAR_ANT = :APCODBAR_ANT,'
      '  APCODFAB_ANT = :APCODFAB_ANT,'
      '  APNOMFAB_ANT = :APNOMFAB_ANT,'
      '  APUND_ANT = :APUND_ANT,'
      '  APEMBMUL_ANT = :APEMBMUL_ANT,'
      '  APPCOFAB_ANT = :APPCOFAB_ANT,'
      '  APPCOMAX_ANT = :APPCOMAX_ANT,'
      '  APPCOFAB_CX_ANT = :APPCOFAB_CX_ANT,'
      '  APCODGRU_ANT = :APCODGRU_ANT,'
      '  APNOMGRU_ANT = :APNOMGRU_ANT,'
      '  APCODCON_ANT = :APCODCON_ANT,'
      '  APNOMCON_ANT = :APNOMCON_ANT,'
      '  APCODRAM_ANT = :APCODRAM_ANT,'
      '  APNOMRAM_ANT = :APNOMRAM_ANT,'
      '  APCODTIP_ANT = :APCODTIP_ANT,'
      '  APNOMTIP_ANT = :APNOMTIP_ANT,'
      '  APLISTA_ANT = :APLISTA_ANT,'
      '  APIPI_ANT = :APIPI_ANT,'
      '  APREGMS_ANT = :APREGMS_ANT,'
      '  APCLAS_ANT = :APCLAS_ANT,'
      '  APSTATUS = :APSTATUS,'
      '  APNOMECOMP = :APNOMECOMP,'
      '  APPCOVDA_ANT = :APPCOVDA_ANT,'
      '  APNOME_ANT = :APNOME_ANT,'
      '  APPCOMAX_CX_ANT = :APPCOMAX_CX_ANT,'
      '  APSITUACAO = :APSITUACAO'
      'where'
      '  APCODEMP = :OLD_APCODEMP and'
      '  APCODFOR = :OLD_APCODFOR and'
      '  APLOTE = :OLD_APLOTE and'
      '  APCODPRO_FOR = :OLD_APCODPRO_FOR and'
      '  APCODPRO_LOCAL = :OLD_APCODPRO_LOCAL')
    InsertSQL.Strings = (
      'insert into CADAJPCO'
      '  (APCODEMP, APCODFOR, APLOTE, APDATA, APCODPRO_FOR, APCODBAR, '
      'APCODPRO_LOCAL, '
      '   APNOME, APAPRES, APCODFAB, APNOMFAB, APUND, APEMBMUL, '
      'APPCOFAB, APPCOMAX, '
      '   APPCOVDA, APPCOFAB_CX, APPCOMAX_CX, APDTVIG, APPERC_PCOFAB, '
      'APPERC_PCOMAX, '
      '   APPERC_PCOVDA, APPERC_PCOFAB_CX, APPERC_PCOMAX_CX, APCODGRU, '
      'APNOMGRU, '
      '   APCODCON, APNOMCON, APCODRAM, APNOMRAM, APCODTIP, APNOMTIP, '
      'APLISTA, '
      '   APIPI, APREGMS, APCLAS, APCODBAR_ANT, APCODFAB_ANT, '
      'APNOMFAB_ANT, APUND_ANT, '
      '   APEMBMUL_ANT, APPCOFAB_ANT, APPCOMAX_ANT, APPCOFAB_CX_ANT, '
      'APCODGRU_ANT, '
      '   APNOMGRU_ANT, APCODCON_ANT, APNOMCON_ANT, APCODRAM_ANT, '
      'APNOMRAM_ANT, '
      
        '   APCODTIP_ANT, APNOMTIP_ANT, APLISTA_ANT, APIPI_ANT, APREGMS_A' +
        'NT, '
      'APCLAS_ANT, '
      '   APSTATUS, APNOMECOMP, APPCOVDA_ANT, APNOME_ANT, '
      'APPCOMAX_CX_ANT, APSITUACAO)'
      'values'
      '  (:APCODEMP, :APCODFOR, :APLOTE, :APDATA, :APCODPRO_FOR, '
      ':APCODBAR, :APCODPRO_LOCAL, '
      '   :APNOME, :APAPRES, :APCODFAB, :APNOMFAB, :APUND, :APEMBMUL, '
      ':APPCOFAB, '
      '   :APPCOMAX, :APPCOVDA, :APPCOFAB_CX, :APPCOMAX_CX, :APDTVIG, '
      ':APPERC_PCOFAB, '
      '   :APPERC_PCOMAX, :APPERC_PCOVDA, :APPERC_PCOFAB_CX, '
      ':APPERC_PCOMAX_CX, '
      '   :APCODGRU, :APNOMGRU, :APCODCON, :APNOMCON, :APCODRAM, '
      ':APNOMRAM, :APCODTIP, '
      
        '   :APNOMTIP, :APLISTA, :APIPI, :APREGMS, :APCLAS, :APCODBAR_ANT' +
        ', '
      ':APCODFAB_ANT, '
      '   :APNOMFAB_ANT, :APUND_ANT, :APEMBMUL_ANT, :APPCOFAB_ANT, '
      ':APPCOMAX_ANT, '
      '   :APPCOFAB_CX_ANT, :APCODGRU_ANT, :APNOMGRU_ANT, '
      ':APCODCON_ANT, :APNOMCON_ANT, '
      '   :APCODRAM_ANT, :APNOMRAM_ANT, :APCODTIP_ANT, :APNOMTIP_ANT, '
      ':APLISTA_ANT, '
      
        '   :APIPI_ANT, :APREGMS_ANT, :APCLAS_ANT, :APSTATUS, :APNOMECOMP' +
        ', '
      ':APPCOVDA_ANT, '
      '   :APNOME_ANT, :APPCOMAX_CX_ANT, :APSITUACAO)')
    DeleteSQL.Strings = (
      'delete from CADAJPCO'
      'where'
      '  APCODEMP = :OLD_APCODEMP and'
      '  APCODFOR = :OLD_APCODFOR and'
      '  APLOTE = :OLD_APLOTE and'
      '  APCODPRO_FOR = :OLD_APCODPRO_FOR and'
      '  APCODPRO_LOCAL = :OLD_APCODPRO_LOCAL')
    Left = 145
    Top = 408
  end
  object Src_AjPco: TDataSource
    DataSet = Tb_AjPco
    Left = 173
    Top = 409
  end
  object Tb_Dar: TQuery
    OnCalcFields = Tb_DarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRVALOR,CRDTEMIS,'
      '       CRDTVCTO,CRDTPAG,CRDTBX,CRNPED,CRORDEM,CRVALPAG,CRCODVEN,'
      
        '       CROBS,CRDESC,CRDEVOL,CRJUROS,CRCODBCO,CRLOTE,CRICMSR,CRDE' +
        'SCF,'
      
        '       CRDTDESCF,CRJURD,CREMIDUP,CREMIBLQ,CRVALFRE,CRNOSNUM,CRTI' +
        'PCOB,'
      
        '       CRCODLDR,CRSTATUS,CRTOTNF,CRNFACUM,CRNUMPARC,CRQTDPARC,CR' +
        'MULTA,'
      
        '       VNOME,BCBANCO,CRAZAO,CUF,CDENOM,CCIDADE,CBAIRRO,CLOG,CNUM' +
        ',CCOMPL,CFONERES,CFONECOM,CCELULAR,'
      '       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,CRTOTCGRU,CRTOTSGRU,'
      '       CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO,'
      '       RAZAO,FANTASIA,'
      '       CIDADE,UF,CGC,INSCRICAO,'
      '       FONE,FAX,E_MAIL from CADDAR,CADEMP,CADCLI,CADBCO,CADVEN'
      '       where CODEMP=1'
      '       and CRCODEMP=CCODEMP'
      '       and CCODCLI=CRCODCLI'
      '       AND BCCODBCO=CRCODBCO'
      '       AND VCODVEN=CRCODVEN')
    Left = 192
    Top = 96
    object Tb_DarCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_DarCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DarCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Tb_DarCRDUP: TFloatField
      DisplayLabel = 'Tipo do Documento'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_DarCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Tb_DarCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Tb_DarCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Tb_DarCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Tb_DarCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Tb_DarCRDTBX: TDateTimeField
      DisplayLabel = 'Data Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Tb_DarCRNPED: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Tb_DarCRORDEM: TFloatField
      DisplayLabel = 'Ordem Ped'
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Tb_DarCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Tb_DarCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Tb_DarCRDESC: TFloatField
      DisplayLabel = 'Desconto Concedido'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Tb_DarCRDEVOL: TFloatField
      DisplayLabel = 'Devolu'#231'oes'
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
    end
    object Tb_DarCRJUROS: TFloatField
      DisplayLabel = 'Juros Recebidos'
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Tb_DarCRCODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco.'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Tb_DarCRLOTE: TFloatField
      DisplayLabel = 'Lote Baixa'
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Tb_DarCRICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
    end
    object Tb_DarCRDESCF: TFloatField
      DisplayLabel = 'Vlr.Desc.Financ.'
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Tb_DarCRDTDESCF: TDateTimeField
      DisplayLabel = 'Dt.Desc.Fin'
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Tb_DarCRJURD: TFloatField
      DisplayLabel = 'Juros por Dia'
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Tb_DarCREMIDUP: TFloatField
      DisplayLabel = 'Emitiu Dup'
      FieldName = 'CREMIDUP'
      Origin = 'SG_ASSOC.CADDAR.CREMIDUP'
    end
    object Tb_DarCREMIBLQ: TFloatField
      DisplayLabel = 'Emitiu.Blq'
      FieldName = 'CREMIBLQ'
      Origin = 'SG_ASSOC.CADDAR.CREMIBLQ'
    end
    object Tb_DarCRVALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.CADDAR.CRVALFRE'
    end
    object Tb_DarCRNOSNUM: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Tb_DarCRTIPCOB: TFloatField
      DisplayLabel = 'Tp.Cob'
      FieldName = 'CRTIPCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTIPCOB'
    end
    object Tb_DarCRCODLDR: TFloatField
      DisplayLabel = 'Cod.Fluxo Caixa'
      FieldName = 'CRCODLDR'
      Origin = 'SG_ASSOC.CADDAR.CRCODLDR'
    end
    object Tb_DarCRSTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Tb_DarCRTOTNF: TFloatField
      DisplayLabel = 'Total Notas Fiscai'
      FieldName = 'CRTOTNF'
      Origin = 'SG_ASSOC.CADDAR.CRTOTNF'
    end
    object Tb_DarCRNFACUM: TStringField
      DisplayLabel = 'NF.Acumuladas'
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Tb_DarCRNUMPARC: TFloatField
      DisplayLabel = 'Num.Parc'
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.CADDAR.CRNUMPARC'
    end
    object Tb_DarCRQTDPARC: TFloatField
      DisplayLabel = 'Qtd.Parcelas'
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.CADDAR.CRQTDPARC'
    end
    object Tb_DarVNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_DarBCBANCO: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
      Size = 40
    end
    object Tb_DarCRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_DarCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_DarCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_DarCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Tb_DarCLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Tb_DarCNUM: TStringField
      DisplayLabel = 'Num.Oficial'
      FieldName = 'CNUM'
      Origin = 'SG_ASSOC.CADCLI.CNUM'
      Size = 10
    end
    object Tb_DarCCOMPL: TStringField
      DisplayLabel = 'Compl.Endere'#231'o'
      FieldName = 'CCOMPL'
      Origin = 'SG_ASSOC.CADCLI.CCOMPL'
      Size = 30
    end
    object Tb_DarCFONERES: TStringField
      DisplayLabel = 'Telefone Res.'
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Tb_DarCFONECOM: TStringField
      DisplayLabel = 'Fone Comercial'
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Tb_DarCCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Tb_DarCCIDADEC: TStringField
      DisplayLabel = 'Cidade Cobran'#231'a'
      FieldName = 'CCIDADEC'
      Origin = 'SG_ASSOC.CADCLI.CCIDADEC'
      Size = 30
    end
    object Tb_DarCBAIRROC: TStringField
      DisplayLabel = 'Bairro Cobran'#231'a'
      FieldName = 'CBAIRROC'
      Origin = 'SG_ASSOC.CADCLI.CBAIRROC'
      Size = 30
    end
    object Tb_DarCENDERC: TStringField
      DisplayLabel = 'Endere'#231'o Cobran'#231'a'
      FieldName = 'CENDERC'
      Origin = 'SG_ASSOC.CADCLI.CENDERC'
      Size = 40
    end
    object Tb_DarCUFC: TStringField
      DisplayLabel = 'UF-Cob'
      FieldName = 'CUFC'
      Origin = 'SG_ASSOC.CADCLI.CUFC'
      Size = 2
    end
    object Tb_DarCCEPC: TStringField
      DisplayLabel = 'CEP-Cob'
      FieldName = 'CCEPC'
      Origin = 'SG_ASSOC.CADCLI.CCEPC'
      Size = 9
    end
    object Tb_DarRAZAO: TStringField
      DisplayLabel = 'Razao Social Empresa'
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.CADEMP.RAZAO'
      Size = 40
    end
    object Tb_DarFANTASIA: TStringField
      DisplayLabel = 'Fantasia - Empresa'
      FieldName = 'FANTASIA'
      Origin = 'SG_ASSOC.CADEMP.FANTASIA'
      Size = 40
    end
    object Tb_DarCIDADE: TStringField
      DisplayLabel = 'Cidade Empresa'
      FieldName = 'CIDADE'
      Origin = 'SG_ASSOC.CADEMP.CIDADE'
      Size = 25
    end
    object Tb_DarUF: TStringField
      DisplayLabel = 'UF - Empresa'
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADEMP.UF'
      Size = 2
    end
    object Tb_DarCGC: TFloatField
      DisplayLabel = 'CNPJ - Empresa'
      FieldName = 'CGC'
      Origin = 'SG_ASSOC.CADEMP.CGC'
    end
    object Tb_DarINSCRICAO: TStringField
      DisplayLabel = 'Incri'#231#227'o - Empresa'
      FieldName = 'INSCRICAO'
      Origin = 'SG_ASSOC.CADEMP.INSCRICAO'
    end
    object Tb_DarFONE: TStringField
      DisplayLabel = 'Telefone - Empresa'
      FieldName = 'FONE'
      Origin = 'SG_ASSOC.CADEMP.FONE'
      Size = 16
    end
    object Tb_DarFAX: TStringField
      DisplayLabel = 'Fax - Empresa'
      FieldName = 'FAX'
      Origin = 'SG_ASSOC.CADEMP.FAX'
      Size = 16
    end
    object Tb_DarE_MAIL: TStringField
      DisplayLabel = 'E-Mail Empresa'
      FieldName = 'E_MAIL'
      Origin = 'SG_ASSOC.CADEMP.E_MAIL'
      Size = 40
    end
    object Tb_Darcgccpf: TStringField
      FieldKind = fkCalculated
      FieldName = 'cgccpf'
      Calculated = True
    end
    object Tb_Darrgie: TStringField
      FieldKind = fkCalculated
      FieldName = 'rgie'
      Size = 40
      Calculated = True
    end
    object Tb_Darcepcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'cepcli'
      Size = 9
      Calculated = True
    end
    object Tb_Darendereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 60
      Calculated = True
    end
    object Tb_Darextl01: TStringField
      FieldKind = fkCalculated
      FieldName = 'extl01'
      Size = 85
      Calculated = True
    end
    object Tb_Darextl02: TStringField
      FieldKind = fkCalculated
      FieldName = 'extl02'
      Size = 85
      Calculated = True
    end
    object Tb_Darextl03: TStringField
      FieldKind = fkCalculated
      FieldName = 'extl03'
      Size = 85
      Calculated = True
    end
    object Tb_Darjurosacum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'jurosacum'
      Calculated = True
    end
    object Tb_Dardatanf01: TDateField
      DisplayLabel = 'Data da Nota Fiscal 01'
      FieldKind = fkCalculated
      FieldName = 'datanf01'
      Calculated = True
    end
    object Tb_Dardatanf02: TDateField
      DisplayLabel = 'Data da Nota Fiscal 02'
      FieldKind = fkCalculated
      FieldName = 'datanf02'
      Calculated = True
    end
    object Tb_Dardatanf03: TDateField
      DisplayLabel = 'Data da Nota Fiscal 03'
      FieldKind = fkCalculated
      FieldName = 'datanf03'
      Calculated = True
    end
    object Tb_Dardatanf04: TDateField
      DisplayLabel = 'Data da Nota Fiscal 04'
      FieldKind = fkCalculated
      FieldName = 'datanf04'
      Calculated = True
    end
    object Tb_Dardatanf05: TDateField
      DisplayLabel = 'Data da Nota Fiscal 05'
      FieldKind = fkCalculated
      FieldName = 'datanf05'
      Calculated = True
    end
    object Tb_Darnumnf01: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal 01'
      FieldKind = fkCalculated
      FieldName = 'numnf01'
      Calculated = True
    end
    object Tb_Darnumnf02: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal 02'
      FieldKind = fkCalculated
      FieldName = 'numnf02'
      Calculated = True
    end
    object Tb_Darnumnf03: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal 03'
      FieldKind = fkCalculated
      FieldName = 'numnf03'
      Calculated = True
    end
    object Tb_Darnumnf04: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal 04'
      FieldKind = fkCalculated
      FieldName = 'numnf04'
      Calculated = True
    end
    object Tb_Darnumnf05: TFloatField
      DisplayLabel = 'N'#250'mero da Nota Fiscal 05'
      FieldKind = fkCalculated
      FieldName = 'numnf05'
      Calculated = True
    end
    object Tb_Darvalornf01: TFloatField
      DisplayLabel = 'Valor da Nota Fiscal 01'
      FieldKind = fkCalculated
      FieldName = 'valornf01'
      Calculated = True
    end
    object Tb_Darvalornf02: TFloatField
      DisplayLabel = 'Valor da Nota Fiscal 02'
      FieldKind = fkCalculated
      FieldName = 'valornf02'
      Calculated = True
    end
    object Tb_Darvalornf03: TFloatField
      DisplayLabel = 'Valor da Nota Fiscal 03'
      FieldKind = fkCalculated
      FieldName = 'valornf03'
      Calculated = True
    end
    object Tb_Darvalornf04: TFloatField
      DisplayLabel = 'Valor da Nota Fiscal 04'
      FieldKind = fkCalculated
      FieldName = 'valornf04'
      Calculated = True
    end
    object Tb_Darvalornf05: TFloatField
      DisplayLabel = 'Valor da Nota Fiscal 05'
      FieldKind = fkCalculated
      FieldName = 'valornf05'
      Calculated = True
    end
    object Tb_DarCDENOM: TStringField
      DisplayLabel = 'Denomina'#231#227'o(Nome de Fantasia)'
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Tb_DarCRTOTCGRU: TFloatField
      DisplayLabel = 'Total com Grupos(Desc.Fin.A Vista)'
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTCGRU'
    end
    object Tb_DarCRTOTSGRU: TFloatField
      DisplayLabel = 'Total sem Grupos(Desc.Fin.A Vista)'
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTSGRU'
    end
    object Tb_DarCNOMRED: TStringField
      DisplayLabel = 'Nome da Rede'
      FieldName = 'CNOMRED'
      Origin = 'SG_ASSOC.CADCLI.CNOMRED'
      Size = 40
    end
    object Tb_DarPRAZO: TFloatField
      DisplayLabel = 'Prazo da Duplicata'
      FieldName = 'PRAZO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Tb_DarCRMULTA: TFloatField
      DisplayLabel = 'Valor da Multa'
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Tb_Darsaldodev: TFloatField
      DisplayLabel = 'Saldo Devedor'
      FieldKind = fkCalculated
      FieldName = 'saldodev'
      Calculated = True
    end
    object Tb_DarCROBS: TMemoField
      FieldName = 'CROBS'
      BlobType = ftMemo
      Size = 3000
    end
    object Tb_DarCRID_NEW: TFloatField
      FieldName = 'CRID_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_NEW'
    end
    object Tb_DarCRID_PED01_NEW: TFloatField
      FieldName = 'CRID_PED01_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_PED01_NEW'
    end
    object Tb_DarCRID_LDR_NEW: TFloatField
      FieldName = 'CRID_LDR_NEW'
      Origin = 'SG_ASSOC.CADDAR.CRID_LDR_NEW'
    end
  end
  object U_Pro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  OK = :OK,'
      '  PDCODEMP = :PDCODEMP,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDCODBAR = :PDCODBAR,'
      '  PDNOME = :PDNOME,'
      '  PDNOME2 = :PDNOME2,'
      '  PDMARCA = :PDMARCA,'
      '  PDNIVEL = :PDNIVEL,'
      '  PDCODFOR = :PDCODFOR,'
      '  PDPRECO1 = :PDPRECO1,'
      '  PDPRECO2 = :PDPRECO2,'
      '  PDPRECO3 = :PDPRECO3,'
      '  PDPRECOA1 = :PDPRECOA1,'
      '  PDPRECOA2 = :PDPRECOA2,'
      '  PDPRECOA3 = :PDPRECOA3,'
      '  PDSIT = :PDSIT,'
      '  PDDTUATP1 = :PDDTUATP1,'
      '  PDUSRALT1 = :PDUSRALT1,'
      '  PDDTUATP2 = :PDDTUATP2,'
      '  PDUSRALT2 = :PDUSRALT2,'
      '  PDDTUATP3 = :PDDTUATP3,'
      '  PDUSRALT3 = :PDUSRALT3,'
      '  PDDATAUA = :PDDATAUA,'
      '  PDUND = :PDUND,'
      '  PDCODGRU = :PDCODGRU,'
      '  PDCODCON = :PDCODCON,'
      '  PDCODRAM = :PDCODRAM,'
      '  PDCODTIP = :PDCODTIP,'
      '  PDESTMAX = :PDESTMAX,'
      '  PDESTMIN = :PDESTMIN,'
      '  PDFRACAO = :PDFRACAO,'
      '  PDLISTA = :PDLISTA,'
      '  PDPRECOC = :PDPRECOC,'
      '  PDPCOMC = :PDPCOMC,'
      '  PDPCOFAB = :PDPCOFAB,'
      '  PDSTATUS = :PDSTATUS,'
      '  PDTABICM = :PDTABICM,'
      '  PDIPI = :PDIPI,'
      '  PDREGMS = :PDREGMS,'
      '  PDCLAS = :PDCLAS,'
      '  PDSECAO = :PDSECAO,'
      '  PDEMBPAD = :PDEMBPAD,'
      '  PDEMBMUL = :PDEMBMUL,'
      '  PDCOMIS = :PDCOMIS,'
      '  PDSEMCOM = :PDSEMCOM,'
      '  PDPRZVAL = :PDPRZVAL,'
      '  PDUCPR = :PDUCPR,'
      '  PDCODUSR = :PDCODUSR,'
      '  PDDTALT = :PDDTALT,'
      '  PDHRALT = :PDHRALT,'
      '  PDSALDO = :PDSALDO,'
      '  PDCURVA = :PDCURVA,'
      '  PDDESC1 = :PDDESC1,'
      '  PDDESC1A = :PDDESC1A,'
      '  PDDESC2 = :PDDESC2,'
      '  PDDESC3 = :PDDESC3,'
      '  PDQTDP = :PDQTDP,'
      '  PDPRAZO = :PDPRAZO,'
      '  PDDESFIN = :PDDESFIN,'
      '  PDPMC = :PDPMC,'
      '  PDEMBPAD2 = :PDEMBPAD2,'
      '  PDCODPROC = :PDCODPROC,'
      '  PDPROALT = :PDPROALT,'
      '  PDDTULTSAI = :PDDTULTSAI,'
      '  PDDTULTENT = :PDDTULTENT,'
      '  PDVDAMAXM = :PDVDAMAXM,'
      '  PDREST = :PDREST,'
      '  PDPESOB = :PDPESOB,'
      '  PDPESOL = :PDPESOL,'
      '  PDBAIXO = :PDBAIXO,'
      '  PDALTO = :PDALTO,'
      '  PDDATCAD = :PDDATCAD,'
      '  PDNOMFOR = :PDNOMFOR,'
      '  PDNOMPROC = :PDNOMPROC,'
      '  PDNOMGRU = :PDNOMGRU,'
      '  PDNOMCON = :PDNOMCON,'
      '  PDNOMRAM = :PDNOMRAM,'
      '  PDNOMTIP = :PDNOMTIP,'
      '  PDNOMPROALT = :PDNOMPROALT,'
      '  PDSTATUS02 = :PDSTATUS02,'
      '  PDSALDOR = :PDSALDOR,'
      '  PDBAIXOR = :PDBAIXOR,'
      '  PDALTOR = :PDALTOR,'
      '  PDSALDOC = :PDSALDOC,'
      '  PDBAIXOC = :PDBAIXOC,'
      '  PDALTOC = :PDALTOC,'
      '  PDCODNCM = :PDCODNCM,'
      '  PDCUSFAB = :PDCUSFAB,'
      '  PDCUSENV = :PDCUSENV,'
      '  PDCUSFIN = :PDCUSFIN,'
      '  PDUCODFOR = :PDUCODFOR,'
      '  PDUNOMFOR = :PDUNOMFOR,'
      '  PDCODFAB = :PDCODFAB,'
      '  PDSALDOT = :PDSALDOT,'
      '  PDALTOT = :PDALTOT,'
      '  PDBAIXOT = :PDBAIXOT,'
      '  PDPMC02 = :PDPMC02,'
      '  PDPMC03 = :PDPMC03,'
      '  PDCX_PVDA = :PDCX_PVDA,'
      '  PDCX_PFAB = :PDCX_PFAB,'
      '  PDCX_PMAX = :PDCX_PMAX,'
      '  PDICMSCRED = :PDICMSCRED,'
      '  PDICMSDEB = :PDICMSDEB,'
      '  PDVLRINC = :PDVLRINC'
      'where'
      '  OK = :OLD_OK and'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (OK, PDCODEMP, PDCODPRO, PDCODBAR, PDNOME, PDNOME2, PDMARCA, '
      'PDNIVEL, '
      
        '   PDCODFOR, PDPRECO1, PDPRECO2, PDPRECO3, PDPRECOA1, PDPRECOA2,' +
        ' '
      'PDPRECOA3, '
      
        '   PDSIT, PDDTUATP1, PDUSRALT1, PDDTUATP2, PDUSRALT2, PDDTUATP3,' +
        ' '
      'PDUSRALT3, '
      '   PDDATAUA, PDUND, PDCODGRU, PDCODCON, PDCODRAM, PDCODTIP, '
      'PDESTMAX, PDESTMIN, '
      '   PDFRACAO, PDLISTA, PDPRECOC, PDPCOMC, PDPCOFAB, PDSTATUS, '
      'PDTABICM, '
      
        '   PDIPI, PDREGMS, PDCLAS, PDSECAO, PDEMBPAD, PDEMBMUL, PDCOMIS,' +
        ' '
      'PDSEMCOM, '
      '   PDPRZVAL, PDUCPR, PDCODUSR, PDDTALT, PDHRALT, PDSALDO, '
      'PDCURVA, PDDESC1, '
      
        '   PDDESC1A, PDDESC2, PDDESC3, PDQTDP, PDPRAZO, PDDESFIN, PDPMC,' +
        ' '
      'PDEMBPAD2, '
      '   PDCODPROC, PDPROALT, PDDTULTSAI, PDDTULTENT, PDVDAMAXM, '
      'PDREST, PDPESOB, '
      '   PDPESOL, PDBAIXO, PDALTO, PDDATCAD, PDNOMFOR, PDNOMPROC, '
      'PDNOMGRU, PDNOMCON, '
      '   PDNOMRAM, PDNOMTIP, PDNOMPROALT, PDSTATUS02, PDSALDOR, '
      'PDBAIXOR, PDALTOR, '
      '   PDSALDOC, PDBAIXOC, PDALTOC, PDCODNCM, PDCUSFAB, PDCUSENV, '
      'PDCUSFIN, '
      '   PDUCODFOR, PDUNOMFOR, PDCODFAB, PDSALDOT, PDALTOT, PDBAIXOT, '
      'PDPMC02, '
      '   PDPMC03, PDCX_PVDA, PDCX_PFAB, PDCX_PMAX, PDICMSCRED, '
      'PDICMSDEB, PDVLRINC)'
      'values'
      '  (:OK, :PDCODEMP, :PDCODPRO, :PDCODBAR, :PDNOME, :PDNOME2, '
      ':PDMARCA, :PDNIVEL, '
      '   :PDCODFOR, :PDPRECO1, :PDPRECO2, :PDPRECO3, :PDPRECOA1, '
      ':PDPRECOA2, '
      '   :PDPRECOA3, :PDSIT, :PDDTUATP1, :PDUSRALT1, :PDDTUATP2, '
      ':PDUSRALT2, '
      
        '   :PDDTUATP3, :PDUSRALT3, :PDDATAUA, :PDUND, :PDCODGRU, :PDCODC' +
        'ON, '
      ':PDCODRAM, '
      
        '   :PDCODTIP, :PDESTMAX, :PDESTMIN, :PDFRACAO, :PDLISTA, :PDPREC' +
        'OC, '
      ':PDPCOMC, '
      '   :PDPCOFAB, :PDSTATUS, :PDTABICM, :PDIPI, :PDREGMS, :PDCLAS, '
      ':PDSECAO, '
      
        '   :PDEMBPAD, :PDEMBMUL, :PDCOMIS, :PDSEMCOM, :PDPRZVAL, :PDUCPR' +
        ', '
      ':PDCODUSR, '
      '   :PDDTALT, :PDHRALT, :PDSALDO, :PDCURVA, :PDDESC1, :PDDESC1A, '
      ':PDDESC2, '
      '   :PDDESC3, :PDQTDP, :PDPRAZO, :PDDESFIN, :PDPMC, :PDEMBPAD2, '
      ':PDCODPROC, '
      '   :PDPROALT, :PDDTULTSAI, :PDDTULTENT, :PDVDAMAXM, :PDREST, '
      ':PDPESOB, '
      
        '   :PDPESOL, :PDBAIXO, :PDALTO, :PDDATCAD, :PDNOMFOR, :PDNOMPROC' +
        ', '
      ':PDNOMGRU, '
      '   :PDNOMCON, :PDNOMRAM, :PDNOMTIP, :PDNOMPROALT, :PDSTATUS02, '
      ':PDSALDOR, '
      
        '   :PDBAIXOR, :PDALTOR, :PDSALDOC, :PDBAIXOC, :PDALTOC, :PDCODNC' +
        'M, '
      ':PDCUSFAB, '
      '   :PDCUSENV, :PDCUSFIN, :PDUCODFOR, :PDUNOMFOR, :PDCODFAB, '
      ':PDSALDOT, '
      
        '   :PDALTOT, :PDBAIXOT, :PDPMC02, :PDPMC03, :PDCX_PVDA, :PDCX_PF' +
        'AB, '
      ':PDCX_PMAX, '
      '   :PDICMSCRED, :PDICMSDEB, :PDVLRINC)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  OK = :OLD_OK and'
      '  PDCODEMP = :OLD_PDCODEMP and'
      '  PDCODPRO = :OLD_PDCODPRO')
    Left = 96
    Top = 136
  end
  object Src_Cab: TDataSource
    DataSet = Qr_Cab
    Left = 168
    Top = 16
  end
  object Src_Cor: TDataSource
    DataSet = Qr_Cor
    Left = 152
    Top = 64
  end
  object Tb_TipPed: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADTIPPED')
    Left = 693
    Top = 229
    object Tb_TipPedTPCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPCODIGO'
      Origin = 'SG_ASSOC.CADTIPPED.TPCODIGO'
    end
    object Tb_TipPedTPNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TPNOME'
      Origin = 'SG_ASSOC.CADTIPPED.TPNOME'
      Size = 40
    end
    object Tb_TipPedTPENTRADA_NORMAL: TFloatField
      FieldName = 'TPENTRADA_NORMAL'
      Origin = 'SG_ASSOC.CADTIPPED.TPENTRADA_NORMAL'
    end
    object Tb_TipPedTPENTRADA_CONSIGNADO: TFloatField
      FieldName = 'TPENTRADA_CONSIGNADO'
      Origin = 'SG_ASSOC.CADTIPPED.TPENTRADA_CONSIGNADO'
    end
    object Tb_TipPedTPENTRADA_REM_VENDA: TFloatField
      FieldName = 'TPENTRADA_REM_VENDA'
      Origin = 'SG_ASSOC.CADTIPPED.TPENTRADA_REM_VENDA'
    end
    object Tb_TipPedTPENTRADA_EST_TERC: TFloatField
      FieldName = 'TPENTRADA_EST_TERC'
      Origin = 'SG_ASSOC.CADTIPPED.TPENTRADA_EST_TERC'
    end
    object Tb_TipPedTPSAIDA_NORMAL: TFloatField
      FieldName = 'TPSAIDA_NORMAL'
      Origin = 'SG_ASSOC.CADTIPPED.TPSAIDA_NORMAL'
    end
    object Tb_TipPedTPSAIDA_CONSIGNADO: TFloatField
      FieldName = 'TPSAIDA_CONSIGNADO'
      Origin = 'SG_ASSOC.CADTIPPED.TPSAIDA_CONSIGNADO'
    end
    object Tb_TipPedTPSAIDA_REM_VENDA: TFloatField
      FieldName = 'TPSAIDA_REM_VENDA'
      Origin = 'SG_ASSOC.CADTIPPED.TPSAIDA_REM_VENDA'
    end
    object Tb_TipPedTPSAIDA_EST_TERC: TFloatField
      FieldName = 'TPSAIDA_EST_TERC'
      Origin = 'SG_ASSOC.CADTIPPED.TPSAIDA_EST_TERC'
    end
    object Tb_TipPedTPCODUSR_INC: TFloatField
      FieldName = 'TPCODUSR_INC'
      Origin = 'SG_ASSOC.CADTIPPED.TPCODUSR_INC'
    end
    object Tb_TipPedTPCODUSR_ALT: TFloatField
      FieldName = 'TPCODUSR_ALT'
      Origin = 'SG_ASSOC.CADTIPPED.TPCODUSR_ALT'
    end
    object Tb_TipPedTPGERDUP: TFloatField
      FieldName = 'TPGERDUP'
      Origin = 'SG_ASSOC.CADTIPPED.TPGERDUP'
    end
    object Tb_TipPedTPATIVO: TFloatField
      FieldName = 'TPATIVO'
      Origin = 'SG_ASSOC.CADTIPPED.TPATIVO'
    end
    object Tb_TipPedTPDENTRO_SUBST_CFOP_ST: TFloatField
      FieldName = 'TPDENTRO_SUBST_CFOP_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_SUBST_CFOP_ST'
    end
    object Tb_TipPedTPDENTRO_SUBST_CFOP_TRIB: TFloatField
      FieldName = 'TPDENTRO_SUBST_CFOP_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_SUBST_CFOP_TRIB'
    end
    object Tb_TipPedTPDENTRO_SUBST_CFOP_ISENTO: TFloatField
      FieldName = 'TPDENTRO_SUBST_CFOP_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_SUBST_CFOP_ISENTO'
    end
    object Tb_TipPedTPFORA_SUBST_CFOP_ST: TFloatField
      FieldName = 'TPFORA_SUBST_CFOP_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_SUBST_CFOP_ST'
    end
    object Tb_TipPedTPFORA_SUBST_CFOP_TRIB: TFloatField
      FieldName = 'TPFORA_SUBST_CFOP_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_SUBST_CFOP_TRIB'
    end
    object Tb_TipPedTPFORA_SUBST_CFOP_ISENTO: TFloatField
      FieldName = 'TPFORA_SUBST_CFOP_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_SUBST_CFOP_ISENTO'
    end
    object Tb_TipPedTPDENTRO_CFOP_RV_ST: TFloatField
      FieldName = 'TPDENTRO_CFOP_RV_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RV_ST'
    end
    object Tb_TipPedTPDENTRO_CFOP_RV_TRIB: TFloatField
      FieldName = 'TPDENTRO_CFOP_RV_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RV_TRIB'
    end
    object Tb_TipPedTPDENTRO_CFOP_RV_ISENTO: TFloatField
      FieldName = 'TPDENTRO_CFOP_RV_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RV_ISENTO'
    end
    object Tb_TipPedTPDENTRO_CFOP_RVCP_ST: TFloatField
      FieldName = 'TPDENTRO_CFOP_RVCP_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RVCP_ST'
    end
    object Tb_TipPedTPDENTRO_CFOP_RVCP_TRIB: TFloatField
      FieldName = 'TPDENTRO_CFOP_RVCP_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RVCP_TRIB'
    end
    object Tb_TipPedTPDENTRO_CFOP_RVCP_ISENTO: TFloatField
      FieldName = 'TPDENTRO_CFOP_RVCP_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_RVCP_ISENTO'
    end
    object Tb_TipPedTPDENTRO_CFOP_CF_ST: TFloatField
      FieldName = 'TPDENTRO_CFOP_CF_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_CF_ST'
    end
    object Tb_TipPedTPDENTRO_CFOP_CF_TRIB: TFloatField
      FieldName = 'TPDENTRO_CFOP_CF_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_CF_TRIB'
    end
    object Tb_TipPedTPDENTRO_CFOP_CF_ISENTO: TFloatField
      FieldName = 'TPDENTRO_CFOP_CF_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPDENTRO_CFOP_CF_ISENTO'
    end
    object Tb_TipPedTPFORA_CFOP_RV_ST: TFloatField
      FieldName = 'TPFORA_CFOP_RV_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RV_ST'
    end
    object Tb_TipPedTPFORA_CFOP_RV_TRIB: TFloatField
      FieldName = 'TPFORA_CFOP_RV_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RV_TRIB'
    end
    object Tb_TipPedTPFORA_CFOP_RV_ISENTO: TFloatField
      FieldName = 'TPFORA_CFOP_RV_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RV_ISENTO'
    end
    object Tb_TipPedTPFORA_CFOP_RVCP_ST: TFloatField
      FieldName = 'TPFORA_CFOP_RVCP_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RVCP_ST'
    end
    object Tb_TipPedTPFORA_CFOP_RVCP_TRIB: TFloatField
      FieldName = 'TPFORA_CFOP_RVCP_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RVCP_TRIB'
    end
    object Tb_TipPedTPFORA_CFOP_RVCP_ISENTO: TFloatField
      FieldName = 'TPFORA_CFOP_RVCP_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_RVCP_ISENTO'
    end
    object Tb_TipPedTPFORA_CFOP_CF_ST: TFloatField
      FieldName = 'TPFORA_CFOP_CF_ST'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_CF_ST'
    end
    object Tb_TipPedTPFORA_CFOP_CF_TRIB: TFloatField
      FieldName = 'TPFORA_CFOP_CF_TRIB'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_CF_TRIB'
    end
    object Tb_TipPedTPFORA_CFOP_CF_ISENTO: TFloatField
      FieldName = 'TPFORA_CFOP_CF_ISENTO'
      Origin = 'SG_ASSOC.CADTIPPED.TPFORA_CFOP_CF_ISENTO'
    end
    object Tb_TipPedTPCALCIMP_RV_DENTRO: TFloatField
      FieldName = 'TPCALCIMP_RV_DENTRO'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_RV_DENTRO'
    end
    object Tb_TipPedTPCALCIMP_RVCP_DENTRO: TFloatField
      FieldName = 'TPCALCIMP_RVCP_DENTRO'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_RVCP_DENTRO'
    end
    object Tb_TipPedTPCALCIMP_CF_DENTRO: TFloatField
      FieldName = 'TPCALCIMP_CF_DENTRO'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_CF_DENTRO'
    end
    object Tb_TipPedTPCALCIMP_RV_FORA: TFloatField
      FieldName = 'TPCALCIMP_RV_FORA'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_RV_FORA'
    end
    object Tb_TipPedTPCALCIMP_RVCP_FORA: TFloatField
      FieldName = 'TPCALCIMP_RVCP_FORA'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_RVCP_FORA'
    end
    object Tb_TipPedTPCALCIMP_CF_FORA: TFloatField
      FieldName = 'TPCALCIMP_CF_FORA'
      Origin = 'SG_ASSOC.CADTIPPED.TPCALCIMP_CF_FORA'
    end
    object Tb_TipPedTPDATHOR_INC: TDateTimeField
      FieldName = 'TPDATHOR_INC'
      Origin = 'SG_ASSOC.CADTIPPED.TPDATHOR_INC'
    end
    object Tb_TipPedTPDATHOR_ALT: TDateTimeField
      FieldName = 'TPDATHOR_ALT'
      Origin = 'SG_ASSOC.CADTIPPED.TPDATHOR_ALT'
    end
    object Tb_TipPedTPFINNFE: TFloatField
      FieldName = 'TPFINNFE'
    end
  end
  object Src_TipPed: TDataSource
    DataSet = Tb_TipPed
    Left = 723
    Top = 228
  end
  object Tb_UF_TPPED: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select DISTINCT UFTP_CODEMP,'
      '  UFTP_UF,'
      '  UFTP_CODTPPED,'
      '  UFTP_CFOP_RV_ST,'
      '  UFTP_CFOP_RV_TRIB,'
      '  UFTP_CFOP_RV_ISENTO,'
      '  UFTP_CALCIMP_RV,'
      '  UFTP_CFOP_RVCP_ST,'
      '  UFTP_CFOP_RVCP_TRIB,'
      '  UFTP_CFOP_RVCP_ISENTO,'
      '  UFTP_CALCIMP_RVCP,'
      '  UFTP_CFOP_CF_ST,'
      '  UFTP_CFOP_CF_TRIB,'
      '  UFTP_CFOP_CF_ISENTO,'
      '  UFTP_CALCIMP_CF,'
      '  UFTP_SUBST_CFOP_ST,'
      '  UFTP_SUBST_CFOP_TRIB,'
      '  UFTP_SUBST_CFOP_ISENTO,'
      '  TPNOME,'
      '  TPENTRADA_NORMAL,'
      '  TPENTRADA_CONSIGNADO,'
      '  TPENTRADA_REM_VENDA,'
      '  TPENTRADA_EST_TERC,'
      '  TPSAIDA_NORMAL,'
      '  TPSAIDA_CONSIGNADO,'
      '  TPSAIDA_REM_VENDA,'
      '  TPSAIDA_EST_TERC,'
      '  TPGERDUP,'
      '  TPATIVO,'
      
        '  decode(tpentrada_normal,1,1,decode(tpentrada_consignado,1,1,de' +
        'code(tpentrada_rem_venda,1,1,'
      '  decode(tpentrada_est_terc,1,1,0)))) as tp_entrada,'
      
        '  decode(tpsaida_normal,1,1,decode(tpsaida_consignado,1,1,decode' +
        '(tpsaida_rem_venda,1,1,'
      '  decode(tpsaida_est_terc,1,1,0)))) as tp_saida'
      ''
      'FROM  CADUF_TPPED,CADTIPPED'
      'WHERE TPCODIGO= UFTP_CODTPPED')
    Left = 688
    Top = 142
    object Tb_UF_TPPEDUFTP_CODEMP: TFloatField
      FieldName = 'UFTP_CODEMP'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CODEMP'
    end
    object Tb_UF_TPPEDUFTP_UF: TStringField
      FieldName = 'UFTP_UF'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_UF'
      Size = 2
    end
    object Tb_UF_TPPEDUFTP_CODTPPED: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'UFTP_CODTPPED'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CODTPPED'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RV_ST: TFloatField
      FieldName = 'UFTP_CFOP_RV_ST'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RV_ST'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RV_TRIB: TFloatField
      FieldName = 'UFTP_CFOP_RV_TRIB'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RV_TRIB'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO: TFloatField
      FieldName = 'UFTP_CFOP_RV_ISENTO'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RV_ISENTO'
    end
    object Tb_UF_TPPEDUFTP_CALCIMP_RV: TFloatField
      FieldName = 'UFTP_CALCIMP_RV'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CALCIMP_RV'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RVCP_ST: TFloatField
      FieldName = 'UFTP_CFOP_RVCP_ST'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RVCP_ST'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RVCP_TRIB: TFloatField
      FieldName = 'UFTP_CFOP_RVCP_TRIB'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RVCP_TRIB'
    end
    object Tb_UF_TPPEDUFTP_CFOP_RVCP_ISENTO: TFloatField
      FieldName = 'UFTP_CFOP_RVCP_ISENTO'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_RVCP_ISENTO'
    end
    object Tb_UF_TPPEDUFTP_CALCIMP_RVCP: TFloatField
      FieldName = 'UFTP_CALCIMP_RVCP'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CALCIMP_RVCP'
    end
    object Tb_UF_TPPEDUFTP_CFOP_CF_ST: TFloatField
      FieldName = 'UFTP_CFOP_CF_ST'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_CF_ST'
    end
    object Tb_UF_TPPEDUFTP_CFOP_CF_TRIB: TFloatField
      FieldName = 'UFTP_CFOP_CF_TRIB'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_CF_TRIB'
    end
    object Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO: TFloatField
      FieldName = 'UFTP_CFOP_CF_ISENTO'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CFOP_CF_ISENTO'
    end
    object Tb_UF_TPPEDUFTP_CALCIMP_CF: TFloatField
      FieldName = 'UFTP_CALCIMP_CF'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_CALCIMP_CF'
    end
    object Tb_UF_TPPEDUFTP_SUBST_CFOP_ST: TFloatField
      FieldName = 'UFTP_SUBST_CFOP_ST'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_SUBST_CFOP_ST'
    end
    object Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB: TFloatField
      FieldName = 'UFTP_SUBST_CFOP_TRIB'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_SUBST_CFOP_TRIB'
    end
    object Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO: TFloatField
      FieldName = 'UFTP_SUBST_CFOP_ISENTO'
      Origin = 'SG_ASSOC.CADUF_TPPED.UFTP_SUBST_CFOP_ISENTO'
    end
    object Tb_UF_TPPEDTPNOME: TStringField
      DisplayLabel = 'Tipo do Pedido'
      FieldName = 'TPNOME'
      Origin = 'SG_ASSOC.CADTIPPED.TPNOME'
      Size = 60
    end
    object Tb_UF_TPPEDTPENTRADA_NORMAL: TFloatField
      FieldName = 'TPENTRADA_NORMAL'
    end
    object Tb_UF_TPPEDTPENTRADA_CONSIGNADO: TFloatField
      FieldName = 'TPENTRADA_CONSIGNADO'
    end
    object Tb_UF_TPPEDTPENTRADA_REM_VENDA: TFloatField
      FieldName = 'TPENTRADA_REM_VENDA'
    end
    object Tb_UF_TPPEDTPENTRADA_EST_TERC: TFloatField
      FieldName = 'TPENTRADA_EST_TERC'
    end
    object Tb_UF_TPPEDTPSAIDA_NORMAL: TFloatField
      FieldName = 'TPSAIDA_NORMAL'
    end
    object Tb_UF_TPPEDTPSAIDA_CONSIGNADO: TFloatField
      FieldName = 'TPSAIDA_CONSIGNADO'
    end
    object Tb_UF_TPPEDTPSAIDA_REM_VENDA: TFloatField
      FieldName = 'TPSAIDA_REM_VENDA'
    end
    object Tb_UF_TPPEDTPSAIDA_EST_TERC: TFloatField
      FieldName = 'TPSAIDA_EST_TERC'
    end
    object Tb_UF_TPPEDTPGERDUP: TFloatField
      FieldName = 'TPGERDUP'
    end
    object Tb_UF_TPPEDTPATIVO: TFloatField
      FieldName = 'TPATIVO'
    end
    object Tb_UF_TPPEDTP_ENTRADA: TFloatField
      FieldName = 'TP_ENTRADA'
    end
    object Tb_UF_TPPEDTP_SAIDA: TFloatField
      FieldName = 'TP_SAIDA'
    end
    object Tb_UF_TPPEDUFTP_REQUER_PEDORI: TFloatField
      FieldName = 'UFTP_REQUER_PEDORI'
    end
  end
  object Src_UF_TPPED: TDataSource
    DataSet = Tb_UF_TPPED
    Left = 718
    Top = 142
  end
  object Src_Ser: TDataSource
    DataSet = Qr_Ser
    Left = 72
    Top = 192
  end
  object Qr_Ped02_Trocas: TQuery
    OnCalcFields = Qr_Ped02_TrocasCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02_TROCAS')
    Left = 145
    Top = 170
    object Qr_Ped02_TrocasP2TRO_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2TRO_CODEMP'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODEMP'
    end
    object Qr_Ped02_TrocasP2TRO_ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'P2TRO_ITEM'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_ITEM'
    end
    object Qr_Ped02_TrocasP2TRO_CODPRO_ENTRA: TFloatField
      DisplayLabel = 'C'#243'digo Produto Entra'
      FieldName = 'P2TRO_CODPRO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODPRO_ENTRA'
    end
    object Qr_Ped02_TrocasP2TRO_LOTE_ENTRA: TStringField
      DisplayLabel = 'Lote Produto Entra'
      FieldName = 'P2TRO_LOTE_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTE_ENTRA'
    end
    object Qr_Ped02_TrocasP2TRO_QTD_ENTRA: TFloatField
      DisplayLabel = 'Quantidade Produto Entra'
      FieldName = 'P2TRO_QTD_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_ENTRA'
    end
    object Qr_Ped02_TrocasP2TRO_PCOUNI_ENTRA: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario Produto Entra'
      FieldName = 'P2TRO_PCOUNI_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_PCOUNI_ENTRA'
    end
    object Qr_Ped02_TrocasP2TRO_CODPRO_SAIDA: TFloatField
      DisplayLabel = 'C'#243'digo Produto Saida'
      FieldName = 'P2TRO_CODPRO_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CODPRO_SAIDA'
    end
    object Qr_Ped02_TrocasP2TRO_LOTE_SAIDA: TStringField
      DisplayLabel = 'Lote Produto Saida'
      FieldName = 'P2TRO_LOTE_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTE_SAIDA'
    end
    object Qr_Ped02_TrocasP2TRO_QTD_SAIDA: TFloatField
      DisplayLabel = 'Quantidade Produto Saida'
      FieldName = 'P2TRO_QTD_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_QTD_SAIDA'
    end
    object Qr_Ped02_TrocasP2TRO_PCOUNI_SAIDA: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario Saida'
      FieldName = 'P2TRO_PCOUNI_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_PCOUNI_SAIDA'
    end
    object Qr_Ped02_TrocasP2TRO_DTVCTO_ENTRA: TDateTimeField
      DisplayLabel = 'Data de Vencimento Entra'
      FieldName = 'P2TRO_DTVCTO_ENTRA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_DTVCTO_ENTRA'
    end
    object Qr_Ped02_TrocasP2TRO_DTVCTO_SAIDA: TDateTimeField
      DisplayLabel = 'Data de Vencimento Saida'
      FieldName = 'P2TRO_DTVCTO_SAIDA'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_DTVCTO_SAIDA'
    end
    object Qr_Ped02_TrocasP2TRO_LOTSEQ: TFloatField
      DisplayLabel = 'Lote de Sequencia'
      FieldName = 'P2TRO_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_LOTSEQ'
    end
    object Qr_Ped02_TrocasP2TRO_CHAVE: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'P2TRO_CHAVE'
      Origin = 'SG_ASSOC.CADP02_TROCAS.P2TRO_CHAVE'
    end
    object Qr_Ped02_Trocasnompro_entra: TStringField
      DisplayLabel = 'Nome do Produto Entra'
      FieldKind = fkCalculated
      FieldName = 'nompro_entra'
      Size = 53
      Calculated = True
    end
    object Qr_Ped02_Trocasund_entra: TStringField
      DisplayLabel = 'Unidade do Produto Entra'
      FieldKind = fkCalculated
      FieldName = 'und_entra'
      Size = 3
      Calculated = True
    end
    object Qr_Ped02_Trocasnompro_saida: TStringField
      DisplayLabel = 'Nome do Produto Saida'
      FieldKind = fkCalculated
      FieldName = 'nompro_saida'
      Size = 53
      Calculated = True
    end
    object Qr_Ped02_Trocasund_saida: TStringField
      DisplayLabel = 'Unidade do Produto Saida'
      FieldKind = fkCalculated
      FieldName = 'und_saida'
      Size = 3
      Calculated = True
    end
  end
  object Qr_Ped02_MP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2MP_CODEMP,'
      '  P2MP_LOTSEQ,'
      '  P2MP_CHAVE,'
      '  P2MP_ITEM,'
      '  P2MP_CODPRO,'
      '  P2MP_QTDSOL,'
      '  P2MP_QTD_DEVOL,'
      '  P2MP_QTD_SOBRA,'
      '  P2MP_QTD_QUEBRA,'
      '  P2MP_QTD_OUTRET,'
      '  P2MP_PRECO,'
      '  P2MP_DATAHORA_SOL,PDNOME,PDUND,PDCODGRU,PDNOMGRU'
      '  FROM CADP02_MP,CADPRO'
      '  WHERE PDCODPRO=P2MP_CODPRO')
    Left = 144
    Top = 128
    object Qr_Ped02_MPP2MP_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'P2MP_CODEMP'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODEMP'
    end
    object Qr_Ped02_MPP2MP_LOTSEQ: TFloatField
      DisplayLabel = 'LotSeq'
      FieldName = 'P2MP_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_LOTSEQ'
    end
    object Qr_Ped02_MPP2MP_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2MP_CHAVE'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CHAVE'
    end
    object Qr_Ped02_MPP2MP_ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'P2MP_ITEM'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_ITEM'
    end
    object Qr_Ped02_MPP2MP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'P2MP_CODPRO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_CODPRO'
    end
    object Qr_Ped02_MPP2MP_QTDSOL: TFloatField
      DisplayLabel = 'Quantidade Solicitada'
      FieldName = 'P2MP_QTDSOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTDSOL'
    end
    object Qr_Ped02_MPP2MP_QTD_DEVOL: TFloatField
      DisplayLabel = 'Quantidade Devolvida'
      FieldName = 'P2MP_QTD_DEVOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_DEVOL'
    end
    object Qr_Ped02_MPP2MP_QTD_SOBRA: TFloatField
      DisplayLabel = 'Quantidade Sobra'
      FieldName = 'P2MP_QTD_SOBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_SOBRA'
    end
    object Qr_Ped02_MPP2MP_QTD_QUEBRA: TFloatField
      DisplayLabel = 'Quantidade Quebra/Perdas'
      FieldName = 'P2MP_QTD_QUEBRA'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_QUEBRA'
    end
    object Qr_Ped02_MPP2MP_QTD_OUTRET: TFloatField
      DisplayLabel = 'Quantidade de Outros Retornos'
      FieldName = 'P2MP_QTD_OUTRET'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_QTD_OUTRET'
    end
    object Qr_Ped02_MPP2MP_PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'P2MP_PRECO'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_PRECO'
    end
    object Qr_Ped02_MPP2MP_DATAHORA_SOL: TDateTimeField
      DisplayLabel = 'Data e Hora da Solicita'#231#227'o'
      FieldName = 'P2MP_DATAHORA_SOL'
      Origin = 'SG_ASSOC.CADP02_MP.P2MP_DATAHORA_SOL'
    end
    object Qr_Ped02_MPPDNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Ped02_MPPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Ped02_MPPDCODGRU: TFloatField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Qr_Ped02_MPPDNOMGRU: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
  end
  object TB_DEPEN: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADDPT')
    UpdateObject = UP_DEPEN
    Left = 11
    Top = 272
    object TB_DEPENDPTCODEMP: TFloatField
      FieldName = 'DPTCODEMP'
      Origin = 'SG_ASSOC.CADDPT.DPTCODEMP'
    end
    object TB_DEPENDPTCODFUN: TFloatField
      FieldName = 'DPTCODFUN'
      Origin = 'SG_ASSOC.CADDPT.DPTCODFUN'
    end
    object TB_DEPENDPTNOME: TStringField
      FieldName = 'DPTNOME'
      Origin = 'SG_ASSOC.CADDPT.DPTNOME'
      Size = 50
    end
    object TB_DEPENDPTDTNASC: TDateTimeField
      FieldName = 'DPTDTNASC'
      Origin = 'SG_ASSOC.CADDPT.DPTDTNASC'
    end
    object TB_DEPENDPTCARTO: TStringField
      FieldName = 'DPTCARTO'
      Origin = 'SG_ASSOC.CADDPT.DPTCARTO'
      Size = 35
    end
    object TB_DEPENDPTREG: TStringField
      FieldName = 'DPTREG'
      Origin = 'SG_ASSOC.CADDPT.DPTREG'
      Size = 15
    end
    object TB_DEPENDPTLIVRO: TStringField
      FieldName = 'DPTLIVRO'
      Origin = 'SG_ASSOC.CADDPT.DPTLIVRO'
      Size = 10
    end
    object TB_DEPENDPTPGN: TStringField
      FieldName = 'DPTPGN'
      Origin = 'SG_ASSOC.CADDPT.DPTPGN'
      Size = 10
    end
    object TB_DEPENDPTDTCAD: TDateTimeField
      FieldName = 'DPTDTCAD'
      Origin = 'SG_ASSOC.CADDPT.DPTDTCAD'
    end
    object TB_DEPENDPTDTUALT: TDateTimeField
      FieldName = 'DPTDTUALT'
      Origin = 'SG_ASSOC.CADDPT.DPTDTUALT'
    end
    object TB_DEPENDPTCODUSR: TFloatField
      FieldName = 'DPTCODUSR'
      Origin = 'SG_ASSOC.CADDPT.DPTCODUSR'
    end
    object TB_DEPENDPTPARENTESCO: TStringField
      FieldName = 'DPTPARENTESCO'
      Origin = 'SG_ASSOC.CADDPT.DPTPARENTESCO'
      Size = 30
    end
    object TB_DEPENDPT_DEPENDENTE: TFloatField
      FieldName = 'DPT_DEPENDENTE'
      Origin = 'SG_ASSOC.CADDPT.DPT_DEPENDENTE'
    end
    object TB_DEPENDPTSEXO: TFloatField
      FieldName = 'DPTSEXO'
      Origin = 'SG_ASSOC.CADDPT.DPTSEXO'
    end
    object TB_DEPENDPT_PARENTESCO: TFloatField
      FieldName = 'DPT_PARENTESCO'
      Origin = 'SG_ASSOC.CADDPT.DPT_PARENTESCO'
    end
    object TB_DEPENDPT_DFISICO: TFloatField
      FieldName = 'DPT_DFISICO'
      Origin = 'SG_ASSOC.CADDPT.DPT_DFISICO'
    end
    object TB_DEPENDPT_CPF: TStringField
      FieldName = 'DPT_CPF'
      Origin = 'SG_ASSOC.CADDPT.DPT_CPF'
      Size = 14
    end
    object TB_DEPENDPT_FALECIDO: TFloatField
      FieldName = 'DPT_FALECIDO'
      Origin = 'SG_ASSOC.CADDPT.DPT_FALECIDO'
    end
    object TB_DEPENDPT_IMPOSTORENDA: TFloatField
      FieldName = 'DPT_IMPOSTORENDA'
      Origin = 'SG_ASSOC.CADDPT.DPT_IMPOSTORENDA'
    end
    object TB_DEPENDPT_SALARIOFAMILIA: TFloatField
      FieldName = 'DPT_SALARIOFAMILIA'
      Origin = 'SG_ASSOC.CADDPT.DPT_SALARIOFAMILIA'
    end
    object TB_DEPENDPT_AUXILI0CRECHE: TFloatField
      FieldName = 'DPT_AUXILI0CRECHE'
      Origin = 'SG_ASSOC.CADDPT.DPT_AUXILI0CRECHE'
    end
    object TB_DEPENDPT_PENSAO: TFloatField
      FieldName = 'DPT_PENSAO'
      Origin = 'SG_ASSOC.CADDPT.DPT_PENSAO'
    end
    object TB_DEPENDPT_PERCPENSAO: TFloatField
      FieldName = 'DPT_PERCPENSAO'
      Origin = 'SG_ASSOC.CADDPT.DPT_PERCPENSAO'
    end
    object TB_DEPENDPT_TIPOCALC: TFloatField
      FieldName = 'DPT_TIPOCALC'
      Origin = 'SG_ASSOC.CADDPT.DPT_TIPOCALC'
    end
  end
  object SRC_DEPEN: TDataSource
    DataSet = TB_DEPEN
    Left = 104
    Top = 272
  end
  object UP_DEPEN: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDPT'
      'set'
      '  DPTCODEMP = :DPTCODEMP,'
      '  DPTCODFUN = :DPTCODFUN,'
      '  DPTNOME = :DPTNOME,'
      '  DPTDTNASC = :DPTDTNASC,'
      '  DPTCARTO = :DPTCARTO,'
      '  DPTREG = :DPTREG,'
      '  DPTLIVRO = :DPTLIVRO,'
      '  DPTPGN = :DPTPGN,'
      '  DPTDTCAD = :DPTDTCAD,'
      '  DPTDTUALT = :DPTDTUALT,'
      '  DPTCODUSR = :DPTCODUSR,'
      '  DPTPARENTESCO = :DPTPARENTESCO,'
      '  DPT_DEPENDENTE = :DPT_DEPENDENTE,'
      '  DPTSEXO = :DPTSEXO,'
      '  DPT_PARENTESCO = :DPT_PARENTESCO,'
      '  DPT_DFISICO = :DPT_DFISICO,'
      '  DPT_CPF = :DPT_CPF,'
      '  DPT_FALECIDO = :DPT_FALECIDO,'
      '  DPT_IMPOSTORENDA = :DPT_IMPOSTORENDA,'
      '  DPT_SALARIOFAMILIA = :DPT_SALARIOFAMILIA,'
      '  DPT_AUXILI0CRECHE = :DPT_AUXILI0CRECHE,'
      '  DPT_PENSAO = :DPT_PENSAO,'
      '  DPT_PERCPENSAO = :DPT_PERCPENSAO,'
      '  DPT_TIPOCALC = :DPT_TIPOCALC'
      'where'
      '  DPTCODEMP = :OLD_DPTCODEMP and'
      '  DPTCODFUN = :OLD_DPTCODFUN and'
      '  DPTNOME = :OLD_DPTNOME and'
      '  DPTDTNASC = :OLD_DPTDTNASC and'
      '  DPT_PARENTESCO = :OLD_DPT_PARENTESCO')
    InsertSQL.Strings = (
      'insert into CADDPT'
      '  (DPTCODEMP, DPTCODFUN, DPTNOME, DPTDTNASC, DPTCARTO, DPTREG, '
      'DPTLIVRO, '
      '   DPTPGN, DPTDTCAD, DPTDTUALT, DPTCODUSR, DPTPARENTESCO, '
      'DPT_DEPENDENTE, '
      '   DPTSEXO, DPT_PARENTESCO, DPT_DFISICO, DPT_CPF, DPT_FALECIDO, '
      'DPT_IMPOSTORENDA, '
      '   DPT_SALARIOFAMILIA, DPT_AUXILI0CRECHE, DPT_PENSAO, '
      'DPT_PERCPENSAO, DPT_TIPOCALC)'
      'values'
      '  (:DPTCODEMP, :DPTCODFUN, :DPTNOME, :DPTDTNASC, :DPTCARTO, '
      ':DPTREG, :DPTLIVRO, '
      '   :DPTPGN, :DPTDTCAD, :DPTDTUALT, :DPTCODUSR, :DPTPARENTESCO, '
      ':DPT_DEPENDENTE, '
      
        '   :DPTSEXO, :DPT_PARENTESCO, :DPT_DFISICO, :DPT_CPF, :DPT_FALEC' +
        'IDO, '
      ':DPT_IMPOSTORENDA, '
      '   :DPT_SALARIOFAMILIA, :DPT_AUXILI0CRECHE, :DPT_PENSAO, '
      ':DPT_PERCPENSAO, '
      '   :DPT_TIPOCALC)')
    DeleteSQL.Strings = (
      'delete from CADDPT'
      'where'
      '  DPTCODEMP = :OLD_DPTCODEMP and'
      '  DPTCODFUN = :OLD_DPTCODFUN and'
      '  DPTNOME = :OLD_DPTNOME and'
      '  DPTDTNASC = :OLD_DPTDTNASC and'
      '  DPT_PARENTESCO = :OLD_DPT_PARENTESCO')
    Left = 56
    Top = 272
  end
  object Tb_CADDPF: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADDPF'
      '')
    UpdateObject = U_CADDPF
    Left = 65515
    Top = 472
    object Tb_CADDPFDFCODEMP: TFloatField
      FieldName = 'DFCODEMP'
      Origin = 'SG_ASSOC.CADDPF.DFCODEMP'
    end
    object Tb_CADDPFDFCODFUN: TFloatField
      FieldName = 'DFCODFUN'
      Origin = 'SG_ASSOC.CADDPF.DFCODFUN'
    end
    object Tb_CADDPFDFNREG: TStringField
      FieldName = 'DFNREG'
      Origin = 'SG_ASSOC.CADDPF.DFNREG'
      Size = 25
    end
    object Tb_CADDPFDFORGEM: TStringField
      FieldName = 'DFORGEM'
      Origin = 'SG_ASSOC.CADDPF.DFORGEM'
      Size = 10
    end
    object Tb_CADDPFDFDT_CONC: TDateTimeField
      FieldName = 'DFDT_CONC'
      Origin = 'SG_ASSOC.CADDPF.DFDT_CONC'
    end
    object Tb_CADDPFDFDT_VENC: TDateTimeField
      FieldName = 'DFDT_VENC'
      Origin = 'SG_ASSOC.CADDPF.DFDT_VENC'
    end
    object Tb_CADDPFDFCNV: TStringField
      FieldName = 'DFCNV'
      Origin = 'SG_ASSOC.CADDPF.DFCNV'
      Size = 10
    end
    object Tb_CADDPFDFDT_EMICVN: TDateTimeField
      FieldName = 'DFDT_EMICVN'
      Origin = 'SG_ASSOC.CADDPF.DFDT_EMICVN'
    end
    object Tb_CADDPFDFDT_VENCVN: TDateTimeField
      FieldName = 'DFDT_VENCVN'
      Origin = 'SG_ASSOC.CADDPF.DFDT_VENCVN'
    end
    object Tb_CADDPFDFDTCAD: TDateTimeField
      FieldName = 'DFDTCAD'
      Origin = 'SG_ASSOC.CADDPF.DFDTCAD'
    end
    object Tb_CADDPFDFDTUALT: TDateTimeField
      FieldName = 'DFDTUALT'
      Origin = 'SG_ASSOC.CADDPF.DFDTUALT'
    end
    object Tb_CADDPFDFCODUSR: TFloatField
      FieldName = 'DFCODUSR'
      Origin = 'SG_ASSOC.CADDPF.DFCODUSR'
    end
  end
  object SRC_CADDPF: TDataSource
    DataSet = Tb_CADDPF
    Left = 104
    Top = 304
  end
  object U_CADDPF: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDPF'
      'set'
      '  DFCODEMP = :DFCODEMP,'
      '  DFCODFUN = :DFCODFUN,'
      '  DFNREG = :DFNREG,'
      '  DFORGEM = :DFORGEM,'
      '  DFDT_CONC = :DFDT_CONC,'
      '  DFDT_VENC = :DFDT_VENC,'
      '  DFCNV = :DFCNV,'
      '  DFDT_EMICVN = :DFDT_EMICVN,'
      '  DFDT_VENCVN = :DFDT_VENCVN,'
      '  DFDTCAD = :DFDTCAD,'
      '  DFDTUALT = :DFDTUALT,'
      '  DFCODUSR = :DFCODUSR'
      'where'
      '  DFCODEMP = :OLD_DFCODEMP and'
      '  DFCODFUN = :OLD_DFCODFUN and'
      '  DFNREG = :OLD_DFNREG and'
      '  DFDTCAD = :OLD_DFDTCAD')
    InsertSQL.Strings = (
      'insert into CADDPF'
      '  (DFCODEMP, DFCODFUN, DFNREG, DFORGEM, DFDT_CONC, DFDT_VENC, '
      'DFCNV, DFDT_EMICVN, '
      '   DFDT_VENCVN, DFDTCAD, DFDTUALT, DFCODUSR)'
      'values'
      
        '  (:DFCODEMP, :DFCODFUN, :DFNREG, :DFORGEM, :DFDT_CONC, :DFDT_VE' +
        'NC, '
      ':DFCNV, '
      '   :DFDT_EMICVN, :DFDT_VENCVN, :DFDTCAD, :DFDTUALT, :DFCODUSR)')
    DeleteSQL.Strings = (
      'delete from CADDPF'
      'where'
      '  DFCODEMP = :OLD_DFCODEMP and'
      '  DFCODFUN = :OLD_DFCODFUN and'
      '  DFNREG = :OLD_DFNREG and'
      '  DFDTCAD = :OLD_DFDTCAD')
    Left = 56
    Top = 304
  end
  object Qr_AddExt: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from CADP01_ADDEXT'
      '')
    Left = 710
    Top = 59
    object Qr_AddExtP1AE_CODEMP: TFloatField
      FieldName = 'P1AE_CODEMP'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_CODEMP'
    end
    object Qr_AddExtP1AE_LOTSEQ: TFloatField
      FieldName = 'P1AE_LOTSEQ'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_LOTSEQ'
    end
    object Qr_AddExtP1AE_CHAVE: TFloatField
      FieldName = 'P1AE_CHAVE'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_CHAVE'
    end
    object Qr_AddExtP1AE_CHAVE_NIVEL: TFloatField
      FieldName = 'P1AE_CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_CHAVE_NIVEL'
    end
    object Qr_AddExtP1AE_ORIGEM: TFloatField
      FieldName = 'P1AE_ORIGEM'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_ORIGEM'
    end
    object Qr_AddExtP1AE_ITEM: TFloatField
      FieldName = 'P1AE_ITEM'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_ITEM'
    end
    object Qr_AddExtP1AE_NOME: TStringField
      FieldName = 'P1AE_NOME'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_NOME'
      Size = 60
    end
    object Qr_AddExtP1AE_VALOR: TFloatField
      FieldName = 'P1AE_VALOR'
      Origin = 'SG_ASSOC.CADP01_ADDEXT.P1AE_VALOR'
    end
  end
  object Sr_AddExt: TDataSource
    DataSet = Qr_AddExt
    Left = 779
    Top = 67
  end
  object Tb_FImo: TQuery
    CachedUpdates = True
    BeforePost = Tb_FImoBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_FImoCalcFields
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADFIMO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = Up_FImo
    Left = 348
    Top = 194
    object Tb_FImoCFI_CODEMP: TFloatField
      FieldName = 'CFI_CODEMP'
      Origin = 'SG_ASSOC.CADFIMO.CFI_CODEMP'
    end
    object Tb_FImoCFI_CODSEQ: TFloatField
      FieldName = 'CFI_CODSEQ'
      Origin = 'SG_ASSOC.CADFIMO.CFI_CODSEQ'
    end
    object Tb_FImoCFI_CODFUN: TFloatField
      FieldName = 'CFI_CODFUN'
      Origin = 'SG_ASSOC.CADFIMO.CFI_CODFUN'
    end
    object Tb_FImoCFI_CODIMO: TFloatField
      FieldName = 'CFI_CODIMO'
      Origin = 'SG_ASSOC.CADFIMO.CFI_CODIMO'
    end
    object Tb_FImoNOMIMO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMIMO'
      Size = 60
      Calculated = True
    end
  end
  object Src_FImo: TDataSource
    DataSet = Tb_FImo
    Left = 410
    Top = 195
  end
  object Up_FImo: TUpdateSQL
    ModifySQL.Strings = (
      'update CADFIMO'
      'set'
      '  CFI_CODEMP = :CFI_CODEMP,'
      '  CFI_CODSEQ = :CFI_CODSEQ,'
      '  CFI_CODFUN = :CFI_CODFUN,'
      '  CFI_CODIMO = :CFI_CODIMO'
      'where'
      '  CFI_CODEMP = :OLD_CFI_CODEMP and'
      '  CFI_CODSEQ = :OLD_CFI_CODSEQ')
    InsertSQL.Strings = (
      'insert into CADFIMO'
      '  (CFI_CODEMP, CFI_CODSEQ, CFI_CODFUN, CFI_CODIMO)'
      'values'
      '  (:CFI_CODEMP, :CFI_CODSEQ, :CFI_CODFUN, :CFI_CODIMO)')
    DeleteSQL.Strings = (
      'delete from CADFIMO'
      'where'
      '  CFI_CODEMP = :OLD_CFI_CODEMP and'
      '  CFI_CODSEQ = :OLD_CFI_CODSEQ')
    Left = 379
    Top = 195
  end
  object Src_Con_Cli: TDataSource
    DataSet = Tb_Con_Cli
    Left = 291
    Top = 499
  end
  object Tb_Con_Cli: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Con_CliAfterInsert
    BeforePost = Tb_Con_CliBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    Constrained = True
    SQL.Strings = (
      'Select * from CADCON_CLIFOR')
    UpdateObject = Up_Con_Cli
    Left = 234
    Top = 499
    object Tb_Con_CliCC_CODEMP: TFloatField
      FieldName = 'CC_CODEMP'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CODEMP'
    end
    object Tb_Con_CliCC_TIPO: TFloatField
      FieldName = 'CC_TIPO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_TIPO'
    end
    object Tb_Con_CliCC_CLIFOR: TFloatField
      FieldName = 'CC_CLIFOR'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CLIFOR'
    end
    object Tb_Con_CliCC_CODIGO: TFloatField
      FieldName = 'CC_CODIGO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CODIGO'
    end
    object Tb_Con_CliCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_NOME'
      Size = 60
    end
    object Tb_Con_CliCC_DEPTO: TStringField
      FieldName = 'CC_DEPTO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_DEPTO'
      Size = 60
    end
    object Tb_Con_CliCC_FONE01: TStringField
      DisplayLabel = 'WhatsApp'
      FieldName = 'CC_FONE01'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_FONE01'
      Size = 18
    end
    object Tb_Con_CliCC_FONE02: TStringField
      FieldName = 'CC_FONE02'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_FONE02'
      Size = 18
    end
    object Tb_Con_CliCC_OBS: TMemoField
      FieldName = 'CC_OBS'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_OBS'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_Con_CliCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_EMAIL'
      Size = 60
    end
  end
  object Up_Con_Cli: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON_CLIFOR'
      'set'
      '  CC_CODEMP = :CC_CODEMP,'
      '  CC_TIPO = :CC_TIPO,'
      '  CC_CLIFOR = :CC_CLIFOR,'
      '  CC_CODIGO = :CC_CODIGO,'
      '  CC_NOME = :CC_NOME,'
      '  CC_DEPTO = :CC_DEPTO,'
      '  CC_FONE01 = :CC_FONE01,'
      '  CC_FONE02 = :CC_FONE02,'
      '  CC_OBS = :CC_OBS,'
      '  CC_EMAIL = :CC_EMAIL'
      'where'
      '  CC_CODEMP = :OLD_CC_CODEMP and'
      '  CC_TIPO = :OLD_CC_TIPO and'
      '  CC_CLIFOR = :OLD_CC_CLIFOR and'
      '  CC_CODIGO = :OLD_CC_CODIGO')
    InsertSQL.Strings = (
      'insert into CADCON_CLIFOR'
      '  (CC_CODEMP, CC_TIPO, CC_CLIFOR, CC_CODIGO, CC_NOME, CC_DEPTO, '
      'CC_FONE01, '
      '   CC_FONE02, CC_OBS, CC_EMAIL)'
      'values'
      
        '  (:CC_CODEMP, :CC_TIPO, :CC_CLIFOR, :CC_CODIGO, :CC_NOME, :CC_D' +
        'EPTO, '
      ':CC_FONE01, '
      '   :CC_FONE02, :CC_OBS, :CC_EMAIL)')
    DeleteSQL.Strings = (
      'delete from CADCON_CLIFOR'
      'where'
      '  CC_CODEMP = :OLD_CC_CODEMP and'
      '  CC_TIPO = :OLD_CC_TIPO and'
      '  CC_CLIFOR = :OLD_CC_CLIFOR and'
      '  CC_CODIGO = :OLD_CC_CODIGO')
    Left = 263
    Top = 499
  end
  object Src_Con_For: TDataSource
    DataSet = Tb_Con_For
    Left = 291
    Top = 539
  end
  object Tb_Con_For: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Con_ForAfterInsert
    BeforePost = Tb_Con_ForBeforePost
    AfterPost = c
    AfterDelete = c
    OnPostError = e
    DatabaseName = 'SG_ASSOC'
    Constrained = True
    SQL.Strings = (
      'Select * from CADCON_CLIFOR')
    UpdateObject = up_Con_For
    Left = 234
    Top = 539
    object Tb_Con_ForCC_CODEMP: TFloatField
      FieldName = 'CC_CODEMP'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CODEMP'
    end
    object Tb_Con_ForCC_TIPO: TFloatField
      FieldName = 'CC_TIPO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_TIPO'
    end
    object Tb_Con_ForCC_CLIFOR: TFloatField
      FieldName = 'CC_CLIFOR'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CLIFOR'
    end
    object Tb_Con_ForCC_CODIGO: TFloatField
      FieldName = 'CC_CODIGO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_CODIGO'
    end
    object Tb_Con_ForCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_NOME'
      Size = 60
    end
    object Tb_Con_ForCC_DEPTO: TStringField
      FieldName = 'CC_DEPTO'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_DEPTO'
      Size = 60
    end
    object Tb_Con_ForCC_FONE01: TStringField
      DisplayLabel = 'WhatsApp'
      FieldName = 'CC_FONE01'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_FONE01'
      Size = 18
    end
    object Tb_Con_ForCC_FONE02: TStringField
      FieldName = 'CC_FONE02'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_FONE02'
      Size = 18
    end
    object Tb_Con_ForCC_OBS: TMemoField
      FieldName = 'CC_OBS'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_OBS'
      BlobType = ftMemo
      Size = 1000
    end
    object Tb_Con_ForCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Origin = 'SG_ASSOC.CADCON_CLIFOR.CC_EMAIL'
      Size = 60
    end
  end
  object up_Con_For: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCON_CLIFOR'
      'set'
      '  CC_CODEMP = :CC_CODEMP,'
      '  CC_TIPO = :CC_TIPO,'
      '  CC_CLIFOR = :CC_CLIFOR,'
      '  CC_CODIGO = :CC_CODIGO,'
      '  CC_NOME = :CC_NOME,'
      '  CC_DEPTO = :CC_DEPTO,'
      '  CC_FONE01 = :CC_FONE01,'
      '  CC_FONE02 = :CC_FONE02,'
      '  CC_OBS = :CC_OBS,'
      '  CC_EMAIL = :CC_EMAIL'
      'where'
      '  CC_CODEMP = :OLD_CC_CODEMP and'
      '  CC_TIPO = :OLD_CC_TIPO and'
      '  CC_CLIFOR = :OLD_CC_CLIFOR and'
      '  CC_CODIGO = :OLD_CC_CODIGO')
    InsertSQL.Strings = (
      'insert into CADCON_CLIFOR'
      '  (CC_CODEMP, CC_TIPO, CC_CLIFOR, CC_CODIGO, CC_NOME, CC_DEPTO, '
      'CC_FONE01, '
      '   CC_FONE02, CC_OBS, CC_EMAIL)'
      'values'
      
        '  (:CC_CODEMP, :CC_TIPO, :CC_CLIFOR, :CC_CODIGO, :CC_NOME, :CC_D' +
        'EPTO, '
      ':CC_FONE01, '
      '   :CC_FONE02, :CC_OBS, :CC_EMAIL)')
    DeleteSQL.Strings = (
      'delete from CADCON_CLIFOR'
      'where'
      '  CC_CODEMP = :OLD_CC_CODEMP and'
      '  CC_TIPO = :OLD_CC_TIPO and'
      '  CC_CLIFOR = :OLD_CC_CLIFOR and'
      '  CC_CODIGO = :OLD_CC_CODIGO')
    Left = 263
    Top = 539
  end
  object Tb_Sol1: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Sol1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadsol1')
    UpdateObject = Up_Sol1
    Left = 353
    Top = 413
    object Tb_Sol1CS1CODEMP: TFloatField
      FieldName = 'CS1CODEMP'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODEMP'
    end
    object Tb_Sol1CS1CHAVE: TFloatField
      FieldName = 'CS1CHAVE'
      Origin = 'SG_ASSOC.CADSOL1.CS1CHAVE'
    end
    object Tb_Sol1CS1LOTSEQ: TFloatField
      FieldName = 'CS1LOTSEQ'
      Origin = 'SG_ASSOC.CADSOL1.CS1LOTSEQ'
    end
    object Tb_Sol1CS1CODSOL: TStringField
      FieldName = 'CS1CODSOL'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODSOL'
    end
    object Tb_Sol1CS1CODDEP: TFloatField
      FieldName = 'CS1CODDEP'
      Origin = 'SG_ASSOC.CADSOL1.CS1CODDEP'
    end
    object Tb_Sol1CS1OBS: TStringField
      FieldName = 'CS1OBS'
      Origin = 'SG_ASSOC.CADSOL1.CS1OBS'
      Size = 200
    end
    object Tb_Sol1CS1DATA: TDateTimeField
      FieldName = 'CS1DATA'
      Origin = 'SG_ASSOC.CADSOL1.CS1DATA'
    end
    object Tb_Sol1CS1STATUS: TFloatField
      FieldName = 'CS1STATUS'
      Origin = 'SG_ASSOC.CADSOL1.CS1STATUS'
    end
    object Tb_Sol1NOMSOL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMSOL'
      Size = 120
      Calculated = True
    end
    object Tb_Sol1NOMDEP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMDEP'
      Size = 60
      Calculated = True
    end
  end
  object Up_Sol1: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsol1'
      'set'
      '  CS1CODEMP = :CS1CODEMP,'
      '  CS1CHAVE = :CS1CHAVE,'
      '  CS1LOTSEQ = :CS1LOTSEQ,'
      '  CS1CODDEP = :CS1CODDEP,'
      '  CS1CODSOL = :CS1CODSOL,'
      '  CS1OBS = :CS1OBS,'
      '  CS1DATA = :CS1DATA,'
      '  CS1STATUS = :CS1STATUS'
      'where'
      '  CS1CODEMP = :OLD_CS1CODEMP and'
      '  CS1CHAVE = :OLD_CS1CHAVE and'
      '  CS1LOTSEQ = :OLD_CS1LOTSEQ')
    InsertSQL.Strings = (
      'insert into cadsol1'
      
        '  (CS1CODEMP, CS1CHAVE, CS1LOTSEQ, CS1CODDEP, CS1CODSOL, CS1OBS,' +
        ' '
      'CS1DATA, '
      '   CS1STATUS)'
      'values'
      '  (:CS1CODEMP, :CS1CHAVE, :CS1LOTSEQ, :CS1CODDEP, :CS1CODSOL, '
      ':CS1OBS, '
      '   :CS1DATA, :CS1STATUS)')
    DeleteSQL.Strings = (
      'delete from cadsol1'
      'where'
      '  CS1CODEMP = :OLD_CS1CODEMP and'
      '  CS1CHAVE = :OLD_CS1CHAVE and'
      '  CS1LOTSEQ = :OLD_CS1LOTSEQ')
    Left = 382
    Top = 413
  end
  object Src_Sol1: TDataSource
    DataSet = Tb_Sol1
    Left = 410
    Top = 413
  end
  object Tb_Sol2: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Tb_Sol2CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from cadsol2')
    UpdateObject = Up_Sol2
    Left = 353
    Top = 461
    object Tb_Sol2CS2CODEMP: TFloatField
      FieldName = 'CS2CODEMP'
      Origin = 'SG_ASSOC.CADSOL2.CS2CODEMP'
    end
    object Tb_Sol2CS2CHAVE: TFloatField
      FieldName = 'CS2CHAVE'
      Origin = 'SG_ASSOC.CADSOL2.CS2CHAVE'
    end
    object Tb_Sol2CS2LOTSEQ: TFloatField
      FieldName = 'CS2LOTSEQ'
      Origin = 'SG_ASSOC.CADSOL2.CS2LOTSEQ'
    end
    object Tb_Sol2CS2CODPRO: TStringField
      FieldName = 'CS2CODPRO'
      Origin = 'SG_ASSOC.CADSOL2.CS2CODPRO'
    end
    object Tb_Sol2CS2QTDPREV: TFloatField
      FieldName = 'CS2QTDPREV'
      Origin = 'SG_ASSOC.CADSOL2.CS2QTDPREV'
    end
    object Tb_Sol2CS2QTDREAL: TFloatField
      FieldName = 'CS2QTDREAL'
      Origin = 'SG_ASSOC.CADSOL2.CS2QTDREAL'
    end
    object Tb_Sol2NOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 120
      Calculated = True
    end
    object Tb_Sol2QTDPEN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTDPEN'
      Calculated = True
    end
  end
  object Up_Sol2: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsol2'
      'set'
      '  CS2CODEMP = :CS2CODEMP,'
      '  CS2CHAVE = :CS2CHAVE,'
      '  CS2LOTSEQ = :CS2LOTSEQ,'
      '  CS2CODPRO = :CS2CODPRO,'
      '  CS2QTDPREV = :CS2QTDPREV,'
      '  CS2QTDREAL = :CS2QTDREAL'
      'where'
      '  CS2CODEMP = :OLD_CS2CODEMP and'
      '  CS2CHAVE = :OLD_CS2CHAVE and'
      '  CS2LOTSEQ = :OLD_CS2LOTSEQ and'
      '  CS2CODPRO = :OLD_CS2CODPRO')
    InsertSQL.Strings = (
      'insert into cadsol2'
      '  (CS2CODEMP, CS2CHAVE, CS2LOTSEQ, CS2CODPRO, CS2QTDPREV, '
      'CS2QTDREAL)'
      'values'
      '  (:CS2CODEMP, :CS2CHAVE, :CS2LOTSEQ, :CS2CODPRO, :CS2QTDPREV, '
      ':CS2QTDREAL)')
    DeleteSQL.Strings = (
      'delete from cadsol2'
      'where'
      '  CS2CODEMP = :OLD_CS2CODEMP and'
      '  CS2CHAVE = :OLD_CS2CHAVE and'
      '  CS2LOTSEQ = :OLD_CS2LOTSEQ and'
      '  CS2CODPRO = :OLD_CS2CODPRO')
    Left = 382
    Top = 461
  end
  object Src_Sol2: TDataSource
    DataSet = Tb_Sol2
    Left = 410
    Top = 461
  end
  object src_ImpRel: TDataSource
    DataSet = Qr_ImpRel
    Left = 104
    Top = 48
  end
end
