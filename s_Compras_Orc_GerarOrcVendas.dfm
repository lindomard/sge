object Frm_Compras_Orc_GerarOrcVendas: TFrm_Compras_Orc_GerarOrcVendas
  Left = 192
  Top = 117
  Width = 655
  Height = 467
  Caption = 'Gerar Or'#231'amento de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 84
    Width = 150
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Cliente....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 104
    Width = 150
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo do Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 20
    Top = 122
    Width = 150
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Plano de Vendas.....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_pedido_origem: TLabel
    Left = 0
    Top = 0
    Width = 647
    Height = 65
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'lbl_pedido_origem'
    Layout = tlCenter
    WordWrap = True
  end
  object edt_codcli: TEdit
    Left = 183
    Top = 82
    Width = 77
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = edt_codcliExit
    OnKeyPress = edt_codcliKeyPress
  end
  object edt_nomcli: TEdit
    Left = 259
    Top = 82
    Width = 330
    Height = 19
    Color = 16764108
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object edt_codven: TEdit
    Left = 183
    Top = 100
    Width = 77
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = edt_codvenExit
    OnKeyPress = edt_codvenKeyPress
  end
  object edt_NOMVEN: TEdit
    Left = 259
    Top = 100
    Width = 330
    Height = 19
    Color = 16764108
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object CB_TABPV: TComboBox
    Left = 183
    Top = 118
    Width = 53
    Height = 21
    BevelKind = bkSoft
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 4
    Text = 'AP'
    OnExit = CB_TABPVExit
    Items.Strings = (
      'AV'
      'AP'
      'PP'
      'PO')
  end
  object edt_CODPV: TEdit
    Left = 236
    Top = 118
    Width = 59
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = edt_CODPVExit
    OnKeyPress = edt_CODPVKeyPress
  end
  object NOMPV: TEdit
    Left = 294
    Top = 118
    Width = 294
    Height = 19
    Color = 16764108
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object bbFaturar: TBitBtn
    Left = 28
    Top = 153
    Width = 130
    Height = 23
    Cursor = crHandPoint
    HelpType = htKeyword
    Caption = 'Faturar'
    TabOrder = 7
    OnClick = bbFaturarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 405
    Top = 145
    Width = 130
    Height = 23
    Cursor = crHandPoint
    HelpType = htKeyword
    Caption = '&Sair'
    TabOrder = 8
    OnClick = bbSairClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 187
    Width = 647
    Height = 249
    Align = alBottom
    Caption = 'GroupBox1'
    TabOrder = 9
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 643
      Height = 232
      Align = alClient
      DataSource = src_pedfor2
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2ITEM'
          Title.Alignment = taCenter
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2CODPRO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Width = 298
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2QTDP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object cds_pedfor2: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PF2CHAVE'
        DataType = ftInteger
      end
      item
        Name = 'PF2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'PF2QTDP'
        DataType = ftFloat
      end
      item
        Name = 'PDNOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PDUND'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PF2ITEM'
        DataType = ftInteger
      end
      item
        Name = 'PF1DATAP'
        DataType = ftDateTime
      end
      item
        Name = 'PF1TOTALL'
        DataType = ftFloat
      end
      item
        Name = 'FRAZAO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'PDPRECO1'
        DataType = ftFloat
      end
      item
        Name = 'PDUCPR'
        DataType = ftFloat
      end
      item
        Name = 'PDPRECOC'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 192
    Data = {
      010100009619E0BD01000000180000000C000000000003000000010108504632
      4348415645040001000000000009504632434F4450524F080004000000000007
      5046325154445008000400000000000650444E4F4D4501004900000001000557
      49445448020002006400055044554E4401004900000001000557494454480200
      02000A00075046324954454D0400010000000000085046314441544150080008
      000000000009504631544F54414C4C0800040000000000064652415A414F0100
      490000000100055749445448020002007800085044505245434F310800040000
      000000065044554350520800040000000000085044505245434F430800040000
      0000000000}
    object cds_pedfor2PF2CHAVE: TIntegerField
      FieldName = 'PF2CHAVE'
    end
    object cds_pedfor2PF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'PF2CODPRO'
    end
    object cds_pedfor2PF2QTDP: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PF2QTDP'
    end
    object cds_pedfor2PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Size = 100
    end
    object cds_pedfor2PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 10
    end
    object cds_pedfor2PF2ITEM: TIntegerField
      DisplayLabel = #236'tem'
      FieldName = 'PF2ITEM'
    end
    object cds_pedfor2PF1DATAP: TDateTimeField
      FieldName = 'PF1DATAP'
    end
    object cds_pedfor2PF1TOTALL: TFloatField
      FieldName = 'PF1TOTALL'
    end
    object cds_pedfor2FRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 120
    end
    object cds_pedfor2PDPRECO1: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'PDPRECO1'
    end
    object cds_pedfor2PDUCPR: TFloatField
      FieldName = 'PDUCPR'
    end
    object cds_pedfor2PDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
    end
  end
  object src_pedfor2: TDataSource
    DataSet = cds_pedfor2
    Left = 256
    Top = 192
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 245
    Top = 193
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldName = 'requer_pedori'
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldName = 'al_IcmsTribDesonera'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 128
    object tb_ped02_preP2ICMS_PERC: TFloatField
      FieldName = 'P2ICMS_PERC'
    end
    object tb_ped02_preP2ICMS_PPRED: TFloatField
      FieldName = 'P2ICMS_PPRED'
    end
    object tb_ped02_preP2ICMSSN_PERC: TFloatField
      FieldName = 'P2ICMSSN_PERC'
    end
    object tb_ped02_preP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object tb_ped02_preP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object tb_ped02_preP2ST_ICMSCRED: TFloatField
      FieldName = 'P2ST_ICMSCRED'
    end
    object tb_ped02_preP2ST_ICMSDEB: TFloatField
      FieldName = 'P2ST_ICMSDEB'
    end
    object tb_ped02_preP2MODBCST: TIntegerField
      FieldName = 'P2MODBCST'
    end
    object tb_ped02_preP2IPI_PERC: TFloatField
      FieldName = 'P2IPI_PERC'
    end
    object tb_ped02_preP2CST: TStringField
      FieldName = 'P2CST'
      Size = 3
    end
    object tb_ped02_preP2CSOSN_ORI: TIntegerField
      FieldName = 'P2CSOSN_ORI'
    end
    object tb_ped02_preP2CSOSN: TIntegerField
      FieldName = 'P2CSOSN'
    end
    object tb_ped02_preP2PIS_PERC: TFloatField
      FieldName = 'P2PIS_PERC'
    end
    object tb_ped02_preP2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 4
    end
    object tb_ped02_preP2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 4
    end
    object tb_ped02_preP2COFINS_PERC: TFloatField
      FieldName = 'P2COFINS_PERC'
    end
    object tb_ped02_preP2CONTESP: TIntegerField
      FieldName = 'P2CONTESP'
    end
    object tb_ped02_preP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object tb_ped02_preP2ICMS_PPRED_101: TFloatField
      FieldName = 'P2ICMS_PPRED_101'
    end
    object tb_ped02_preP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object tb_ped02_preP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object tb_ped02_preP2ST_ICMSCRED_101: TFloatField
      FieldName = 'P2ST_ICMSCRED_101'
    end
    object tb_ped02_preP2ST_ICMSDEB_101: TFloatField
      FieldName = 'P2ST_ICMSDEB_101'
    end
    object tb_ped02_preP2MODBCST_101: TFloatField
      FieldName = 'P2MODBCST_101'
    end
    object tb_ped02_preP2CFOP_ECF: TIntegerField
      FieldName = 'P2CFOP_ECF'
    end
    object tb_ped02_preP2CFOP_NF: TIntegerField
      FieldName = 'P2CFOP_NF'
    end
    object tb_ped02_preP2PRECO_MAXCONS: TFloatField
      FieldName = 'P2PRECO_MAXCONS'
    end
    object tb_ped02_preP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object tb_ped02_preP2CODEMP: TIntegerField
      FieldName = 'P2CODEMP'
    end
    object tb_ped02_preP2LOTSEQ: TIntegerField
      FieldName = 'P2LOTSEQ'
    end
    object tb_ped02_preP2CHAVE: TIntegerField
      FieldName = 'P2CHAVE'
    end
    object tb_ped02_preP2ORDEM: TIntegerField
      FieldName = 'P2ORDEM'
    end
    object tb_ped02_preP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object tb_ped02_preP2ITEM: TIntegerField
      FieldName = 'P2ITEM'
    end
    object tb_ped02_preP2CONS_PROPRIO: TIntegerField
      FieldName = 'P2CONS_PROPRIO'
    end
    object tb_ped02_prePDNOME: TStringField
      DisplayWidth = 120
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02_preP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object tb_ped02_preP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object tb_ped02_preP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object tb_ped02_preP2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object tb_ped02_preP2DESCFIN_PERC: TFloatField
      FieldName = 'P2DESCFIN_PERC'
    end
    object tb_ped02_preP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object tb_ped02_preP2DESC_COMP: TStringField
      FieldName = 'P2DESC_COMP'
      Size = 10
    end
    object tb_ped02_preP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object tb_ped02_preP2DESC_PERC01: TFloatField
      FieldName = 'P2DESC_PERC01'
    end
    object tb_ped02_preP2DESC_PERC02: TFloatField
      FieldName = 'P2DESC_PERC02'
    end
    object tb_ped02_preP2DESC_PERC03: TFloatField
      FieldName = 'P2DESC_PERC03'
    end
    object tb_ped02_preP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object tb_ped02_preP2TIPO_PCO: TIntegerField
      FieldName = 'P2TIPO_PCO'
    end
    object tb_ped02_preP2ICMS_ALIPI: TFloatField
      FieldName = 'P2ICMS_ALIPI'
    end
    object tb_ped02_preP2ALIQICMSDES: TFloatField
      FieldName = 'P2ALIQICMSDES'
    end
    object tb_ped02_preP2ALIQAPROXTRIB: TFloatField
      FieldName = 'P2ALIQAPROXTRIB'
    end
    object tb_ped02_preP2COMPRA_NITEMPED: TIntegerField
      FieldName = 'P2COMPRA_NITEMPED'
    end
    object tb_ped02_preP2COMPRA_XPED: TStringField
      FieldName = 'P2COMPRA_XPED'
    end
    object tb_ped02_preP2CPUFDEST: TFloatField
      FieldName = 'P2CPUFDEST'
    end
    object tb_ped02_preP2ICMSUFDEST: TFloatField
      FieldName = 'P2ICMSUFDEST'
    end
    object tb_ped02_preP2ICMSINTER: TFloatField
      FieldName = 'P2ICMSINTER'
    end
    object tb_ped02_preP2ICMSINTERPART: TFloatField
      FieldName = 'P2ICMSINTERPART'
    end
    object tb_ped02_preP2CEST: TStringField
      FieldName = 'P2CEST'
      Size = 10
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
    end
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
    end
    object tb_ped02_preP2UCPR: TFloatField
      FieldName = 'P2UCPR'
    end
    object tb_ped02_preP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
    end
    object tb_ped02_preP2CBENEF: TStringField
      FieldName = 'P2CBENEF'
      Size = 10
    end
    object tb_ped02_preP2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object tb_ped02_preP2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
    object tb_ped02_preP2ID_NEW_101: TFloatField
      FieldName = 'P2ID_NEW_101'
    end
    object tb_ped02_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02_preP2MOTIVODESONERACAO: TFloatField
      FieldName = 'P2MOTIVODESONERACAO'
    end
    object tb_ped02_preP2CBS_CST: TStringField
      FieldName = 'P2CBS_CST'
      Size = 3
    end
    object tb_ped02_preP2CODCLASSTRIB: TStringField
      FieldName = 'P2CODCLASSTRIB'
      Size = 6
    end
    object tb_ped02_preP2CBS_ALIQ: TFloatField
      FieldName = 'P2CBS_ALIQ'
    end
    object tb_ped02_preP2IBS_UF_ALIQ: TFloatField
      FieldName = 'P2IBS_UF_ALIQ'
    end
    object tb_ped02_preP2IBS_MUN_ALIQ: TFloatField
      FieldName = 'P2IBS_MUN_ALIQ'
    end
    object tb_ped02_preP2NRECEITUARIO: TStringField
      FieldName = 'P2NRECEITUARIO'
    end
  end
end
