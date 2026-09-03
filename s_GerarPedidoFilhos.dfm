object Frm_GerarPedidoFilhos: TFrm_GerarPedidoFilhos
  Left = 97
  Top = 110
  Width = 1175
  Height = 480
  Caption = 'Faturar Pedido Filhos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 449
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 877
      Height = 105
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 8
        Width = 152
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Chave do Pedido Original:'
      end
      object Label2: TLabel
        Left = 557
        Top = 7
        Width = 61
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor:'
      end
      object Label3: TLabel
        Left = 268
        Top = 7
        Width = 152
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data do Pedido:'
      end
      object Label4: TLabel
        Left = 4
        Top = 30
        Width = 152
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Raz'#227'o Social:'
      end
      object edt_chave_ori: TEdit
        Left = 163
        Top = 4
        Width = 120
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object edt_valor: TEdit
        Left = 619
        Top = 4
        Width = 120
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object edt_datped: TEdit
        Left = 427
        Top = 3
        Width = 120
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object edt_razsoc: TEdit
        Left = 163
        Top = 26
        Width = 382
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object BBnFechar: TBitBtn
        Left = 634
        Top = 72
        Width = 183
        Height = 29
        Caption = '&Sair'
        TabOrder = 5
        OnClick = BBnFecharClick
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
      object bbFaturar: TBitBtn
        Left = 10
        Top = 76
        Width = 183
        Height = 29
        Caption = '&Faturar'
        TabOrder = 4
        OnClick = bbFaturarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 106
      Width = 877
      Height = 342
      Align = alClient
      Caption = 'Resumo do Pedido:'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 35
        Width = 873
        Height = 305
        Align = alClient
        DataSource = src_ped02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 287
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PRECO'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_VDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FAT'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PEND'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FATURAR'
            Title.Alignment = taCenter
            Width = 71
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 2
        Top = 15
        Width = 873
        Height = 20
        Align = alTop
        TabOrder = 1
        object bbFaturarPendentes: TBitBtn
          Left = 496
          Top = -1
          Width = 145
          Height = 21
          Caption = 'Faturar Pendentes'
          TabOrder = 0
          OnClick = bbFaturarPendentesClick
        end
      end
      object bbZerarAFaturar: TBitBtn
        Left = 664
        Top = 14
        Width = 145
        Height = 21
        Caption = 'Zerar Todos A Faturar'
        TabOrder = 2
        OnClick = bbZerarAFaturarClick
      end
    end
  end
  object Panel3: TPanel
    Left = 879
    Top = 0
    Width = 288
    Height = 449
    Align = alRight
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 286
      Height = 203
      Align = alTop
      Caption = 'Outros Filhos:'
      TabOrder = 0
      object DBGrid_ped01_faturado: TDBGrid
        Left = 2
        Top = 15
        Width = 282
        Height = 186
        Align = alClient
        DataSource = src_ped01_faturado
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'P1CHAVE'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1DATAP'
            Title.Alignment = taCenter
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1TOTALL'
            Title.Alignment = taCenter
            Width = 84
            Visible = True
          end>
      end
    end
    object gb_itens_filhos: TGroupBox
      Left = 1
      Top = 204
      Width = 286
      Height = 244
      Align = alClient
      Caption = 'Itens do Filho:'
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 282
        Height = 227
        Align = alClient
        DataSource = src_ped02_faturado
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTD'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2ITEM'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  object src_ped02: TDataSource
    DataSet = qr_ped02
    Left = 288
    Top = 112
  end
  object qr_ped02: TQuery
    CachedUpdates = True
    BeforePost = qr_ped02BeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT T1.*, case when (QTD_VDA-QTD_FAT) <1 then 0 '
      '                  else (QTD_VDA-QTD_FAT) end AS QTD_PEND'
      ', case when (QTD_VDA-QTD_FAT) <1 then 0 '
      
        '                  else (QTD_VDA-QTD_FAT) end AS QTD_FATURAR     ' +
        '             '
      ',PDNOME,PDUND                  '
      '                  '
      '                  from ('
      'select '
      '  P2CODEMP,'
      '  P2LOTSEQ,'
      '  P2CHAVE,'
      '  P2ORDEM,'
      '  P2CODPRO,'
      '  max(P2DESC1) AS P2DESC1,'
      '  max(P2DESC2) AS P2DESC2,'
      '  max(P2DESC3) AS P2DESC3,'
      '  sum(P2VALDES) AS P2VALDES,'
      ''
      '  max(P2PRECO) AS P2PRECO,'
      '  max(P2ITEM) AS P2ITEM,'
      '  sum(P2QTD) AS QTD_VDA,'
      '  sum(P2TOTDES) AS TOTDES,'
      '  sum(P2TOTLIQ) AS TOTLIQ'
      '  ,NVL((select sum(P2QTD) from CADP01_FILHOS,CADP02 DENTRO'
      
        '   WHERE PF_CHAVE_FILHO=83 AND PF_CHAVE_ANO_FILHO=0 AND (PF_CODE' +
        'MP_FILHO=1 OR PF_CODEMP_FILHO=101)'
      
        '   AND DENTRO.P2CHAVE=PF_CHAVE_FILHO AND DENTRO.P2LOTSEQ=PF_CHAV' +
        'E_ANO_FILHO AND DENTRO.P2CODEMP=1),0) AS QTD_FAT'
      '  from CADP02 WHERE P2CHAVE=83'
      'GROUP BY  '
      '  P2CODEMP,'
      '  P2LOTSEQ,'
      '  P2CHAVE,'
      '  P2ORDEM,'
      '  P2CODPRO'
      ') t1,CADPRO WHERE PDCODPRO=P2CODPRO ORDER BY P2ITEM')
    UpdateObject = u_ped02
    Left = 329
    Top = 114
    object qr_ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object qr_ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object qr_ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object qr_ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object qr_ped02P2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'P2CODPRO'
    end
    object qr_ped02P2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'P2PRECO'
    end
    object qr_ped02P2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
    end
    object qr_ped02QTD_VDA: TFloatField
      DisplayLabel = 'Qtd Vendido'
      FieldName = 'QTD_VDA'
    end
    object qr_ped02TOTDES: TFloatField
      DisplayLabel = 'Total Descontos'
      FieldName = 'TOTDES'
    end
    object qr_ped02TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'TOTLIQ'
    end
    object qr_ped02QTD_FAT: TFloatField
      DisplayLabel = 'Qtd Faturado'
      FieldName = 'QTD_FAT'
    end
    object qr_ped02QTD_PEND: TFloatField
      DisplayLabel = 'Qtd Pendente'
      FieldName = 'QTD_PEND'
    end
    object qr_ped02QTD_FATURAR: TFloatField
      DisplayLabel = 'Faturar'
      FieldName = 'QTD_FATURAR'
    end
    object qr_ped02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o da Mercadoria'
      FieldName = 'PDNOME'
      Size = 120
    end
    object qr_ped02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object qr_ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object qr_ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object qr_ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object qr_ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
  end
  object u_ped02: TUpdateSQL
    Left = 361
    Top = 114
  end
  object src_ped02_faturado: TDataSource
    DataSet = qr_ped02_faturado
    Left = 992
    Top = 256
  end
  object qr_ped02_faturado: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select '
      ' P2CHAVE,'
      'P2CODEMP,'
      'P2LOTSEQ,'
      '  P2CODPRO,'
      '  P2QTD,'
      '  P2ITEM,'
      '  PDNOME,PDUND'
      'FROM CADP02,CADPRO'
      'WHERE  P2CHAVE=83 AND PDCODPRO=P2CODPRO')
    Left = 1033
    Top = 258
    object qr_ped02_faturadoP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd Produto'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object qr_ped02_faturadoP2QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object qr_ped02_faturadoP2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object qr_ped02_faturadoPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object qr_ped02_faturadoPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object qr_ped02_faturadoP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object qr_ped02_faturadoP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object qr_ped02_faturadoP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
  end
  object src_ped01_faturado: TDataSource
    DataSet = qr_ped01_faturado
    OnDataChange = src_ped01_faturadoDataChange
    Left = 952
    Top = 56
  end
  object qr_ped01_faturado: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P1CHAVE,P1LOTSEQ,P1CODEMP,P1TOTALL,P1DATAP FROM CADP01_FI' +
        'LHOS,CADP01'
      
        'WHERE  PF_CHAVE_PAI=83 AND PF_CHAVE_ANO_PAI=0 AND (PF_CODEMP_PAI' +
        '=1 OR PF_CODEMP_PAI=101)'
      
        '   AND P1CHAVE=PF_CHAVE_FILHO AND P1LOTSEQ=PF_CHAVE_ANO_FILHO AN' +
        'D P1CODEMP=1')
    Left = 993
    Top = 58
    object qr_ped01_faturadoP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object qr_ped01_faturadoP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object qr_ped01_faturadoP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object qr_ped01_faturadoP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object qr_ped01_faturadoP1DATAP: TDateTimeField
      DisplayLabel = 'Data do Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
  end
  object cds_aliquotas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 229
    Top = 193
    Data = {
      0A0300009619E0BD0100000018000000230000000000030000000A0308746970
      6F5F726567040001000000000009616C5F74616269636D010049000000010005
      57494454480200020001000C616C5F616C697172656475740800040000000000
      0B616C5F49636D735472696208000400000000000A616C5F69636D7352657404
      000100000000000D616C5F737449636D734372656408000400000000000C616C
      5F737449636D7344656208000400000000000C616C5F73744956415F496E6108
      000400000000000C616C5F73744956415F4E656708000400000000000D43666F
      5F496E6475735F52657404000100000000000E43666F5F496E6475735F547269
      6204000100000000001043666F5F496E6475735F4973656E746F040001000000
      00000B43666F5F7265765F52657404000100000000000C43666F5F7265765F54
      72696204000100000000000E43666F5F7265765F4973656E746F040001000000
      00000E43666F5F5375624563665F52657404000100000000000F43666F5F5375
      624563665F5472696204000100000000001143666F5F5375624563665F497365
      6E746F040001000000000009616C5F636F66696E730800040000000000076D6F
      644263535404000100000000000C616C5F7374416C6971526564080004000000
      000007616C5F696E737308000400000000000C616C5F696E73735F7072656408
      0004000000000007616C5F6972726608000400000000000C616C5F697272665F
      7072656408000400000000000A616C5F72657061737365080004000000000008
      616C5F697373716E08000400000000000B63666F5F7365727669636F04000100
      0000000006616C5F706973080004000000000009616C5F63726564736E080004
      00000000000C616C5F73744956415F506F73080004000000000012616C5F636F
      6D626174655F706F6272657A61080004000000000013616C5F69636D73637265
      645F64657374696E6F08000400000000000F616C5F69636D735F64657374696E
      6F08000400000000001A646564757A69725F69636D735F62635F7069735F636F
      66696E7308000400000000000000}
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
      FieldKind = fkCalculated
      FieldName = 'requer_pedori'
      Calculated = True
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_IcmsTribDesonera'
      Calculated = True
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_cbs'
      Calculated = True
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_ibs_mun'
      Calculated = True
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldKind = fkCalculated
      FieldName = 'al_ibs_uf'
      Calculated = True
    end
  end
  object src_aliquotas: TDataSource
    DataSet = cds_aliquotas
    Left = 257
    Top = 195
  end
  object tb_ped02_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 53
    Top = 351
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
      Size = 15
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
    object tb_ped02_preP2PERCDESC_AUT: TFloatField
      FieldName = 'P2PERCDESC_AUT'
    end
    object tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField
      FieldName = 'P2PERCDESC_AUT_CODUSR'
    end
    object tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField
      FieldName = 'P2PERCDESC_AUT_DATHOR'
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
