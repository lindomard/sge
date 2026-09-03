object Frm_Ocorrencias_ecf: TFrm_Ocorrencias_ecf
  Left = 191
  Top = 112
  Width = 801
  Height = 501
  Caption = 'Ocorrencias de ECF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 70
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 180
      Top = 28
      Width = 6
      Height = 13
      Caption = #225
    end
    object Label1: TLabel
      Left = 8
      Top = 28
      Width = 45
      Height = 13
      Caption = 'Periodo..:'
    end
    object dt_final: TDateEdit
      Left = 192
      Top = 20
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = dt_finalExit
    end
    object dt_inicial: TDateEdit
      Left = 56
      Top = 20
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = dt_inicialExit
    end
    object Bit_visu: TBitBtn
      Left = 316
      Top = 16
      Width = 86
      Height = 30
      Caption = 'Visualizar'
      TabOrder = 2
      OnClick = Bit_visuClick
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000110B0000110B00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000A4F6F7A452000000000000000000
        000000000000005207FFFFFFF7A4A4A49B490000000000000000000049A4F6FF
        FFFFFFFFF7A4A4A4A4A4A45B4900000000004907FFFFFFFFFFF6FFFFF7F7A45B
        9BA4A4F7A4A45200000049FFFFFFFFFFFFF60707A4A4A4F7A4A45B5BA4A4F7A4
        000049F6FFFFF6080707F6F6F7F7F7A4A4A4F7A49B52A4F7000049F6F60707F6
        F6F6F6F607F7F7F7F7F7A4A4A4F7F7F700005208F6F6F6F6F6F6080808080707
        07F7F7F7F7A4A4A4000049F6F6F6F6F6080808F6F6F6F60808070707EEEEF7F7
        000049F6F6F608080808F6F6F6F6F6F6F6F6F6ED7B72F5F700005208F6080808
        F60808F6F6FFF6F6F6F6F6F6AC7208A4000000F70708FFFF525B5BA4F70708F6
        FFF6F6F6FFFF07490000000000525BA409FF09EDA45B5BA4F707F6FFF6A40000
        0000000000000049FF090909090909EDA30707A44900000000000000000000A4
        FFF609090909090909000000000000000000000000000007FFF6F6F6F6090909
        F50000000000000000000000000052FFFFFFF6F6F6F6F6FF5B00000000000000
        00000000000007FFFFFFFFFFFFF6F6FF00000000000000000000000000A4FFFF
        FFFFFFFFFFFFFF9B000000000000000000000000F7F6FFFFFFFFFFFFFFFF0700
        00000000000000000000000000525249F7F70708F60800000000000000000000
        0000000000000000000000004900000000000000000000000000}
    end
  end
  object RLReport_rel: TRLReport
    Left = 0
    Top = 72
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    Visible = False
    BeforePrint = RLReport_relBeforePrint
    object RLGroup1: TRLGroup
      Left = 38
      Top = 135
      Width = 718
      Height = 84
      DataFields = 'P1NUMCF'
      BeforePrint = RLGroup1BeforePrint
      object RLBand_cabdet: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 16
        BandType = btTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object cab_coditem: TRLLabel
          Left = 0
          Top = 0
          Width = 78
          Height = 16
          AutoSize = False
          Caption = 'C'#243'digo Item'
          Layout = tlCenter
        end
        object cab_qtd: TRLLabel
          Left = 78
          Top = 0
          Width = 30
          Height = 16
          AutoSize = False
          Caption = 'Qtd'
          Layout = tlCenter
        end
        object cab_descpro: TRLLabel
          Left = 108
          Top = 0
          Width = 212
          Height = 16
          AutoSize = False
          Caption = 'Descricao do produto'
          Layout = tlCenter
        end
        object cab_precuni: TRLLabel
          Left = 319
          Top = 0
          Width = 54
          Height = 16
          AutoSize = False
          Caption = 'Preco Unit'
          Layout = tlCenter
        end
        object cab_desc: TRLLabel
          Left = 373
          Top = 0
          Width = 49
          Height = 16
          AutoSize = False
          Caption = 'Descontos'
          Layout = tlCenter
        end
        object cab_totliq: TRLLabel
          Left = 422
          Top = 0
          Width = 53
          Height = 16
          AutoSize = False
          Caption = 'Total liquido'
          Layout = tlCenter
        end
        object cab_sitaliqe: TRLLabel
          Left = 475
          Top = 0
          Width = 61
          Height = 16
          AutoSize = False
          Caption = 'Sit Aliq Errado'
          Layout = tlCenter
        end
        object cab_icmse: TRLLabel
          Left = 536
          Top = 0
          Width = 59
          Height = 16
          AutoSize = False
          Caption = 'Icms Errado'
          Layout = tlCenter
        end
        object cab_sitaliqc: TRLLabel
          Left = 594
          Top = 0
          Width = 63
          Height = 16
          AutoSize = False
          Caption = 'Sit Aliq Correto'
          Layout = tlCenter
        end
        object cab_icmsc: TRLLabel
          Left = 657
          Top = 0
          Width = 61
          Height = 16
          AutoSize = False
          Caption = 'Icms Correto'
          Layout = tlCenter
        end
      end
      object RLBand_detalhe: TRLBand
        Left = 0
        Top = 34
        Width = 718
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        AfterPrint = RLBand_detalheAfterPrint
        object det_coditem: TRLDBText
          Left = 0
          Top = 0
          Width = 78
          Height = 16
          AutoSize = False
          DataField = 'P2CODPRO'
          DataSource = DataSource1
          Holder = cab_coditem
          Layout = tlCenter
        end
        object det_qtd: TRLDBText
          Left = 78
          Top = 0
          Width = 30
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'P2QTD'
          DataSource = DataSource1
          Holder = cab_qtd
          Layout = tlCenter
        end
        object det_descpro: TRLDBText
          Left = 108
          Top = 0
          Width = 212
          Height = 16
          AutoSize = False
          DataField = 'PDNOME'
          DataSource = DataSource1
          Holder = cab_descpro
          Layout = tlCenter
        end
        object det_precuni: TRLDBText
          Left = 319
          Top = 0
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'P2PRECO'
          DataSource = DataSource1
          Holder = cab_precuni
          Layout = tlCenter
        end
        object det_desc: TRLDBText
          Left = 373
          Top = 0
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'P2TOTDES'
          DataSource = DataSource1
          Holder = cab_desc
          Layout = tlCenter
        end
        object det_totliq: TRLDBText
          Left = 422
          Top = 0
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'P2TOTLIQ'
          DataSource = DataSource1
          Holder = cab_totliq
          Layout = tlCenter
        end
        object det_sitaliqe: TRLDBText
          Left = 475
          Top = 0
          Width = 61
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITALIQ_ERRADO'
          DataSource = DataSource1
          Holder = cab_sitaliqe
          Layout = tlCenter
        end
        object det_icmse: TRLDBText
          Left = 536
          Top = 0
          Width = 59
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'P2ICMSN_ERRADO'
          DataSource = DataSource1
          Holder = cab_icmse
          Layout = tlCenter
        end
        object det_sitaliqc: TRLDBText
          Left = 594
          Top = 0
          Width = 63
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITALIQ_CORRETO'
          DataSource = DataSource1
          Holder = cab_sitaliqc
          Layout = tlCenter
        end
        object det_icmsc: TRLDBText
          Left = 657
          Top = 0
          Width = 61
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ICMS_CORRETO'
          DataSource = DataSource1
          Holder = cab_icmsc
          Layout = tlCenter
        end
      end
      object RLBand_cabgru: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        BandType = btHeader
        object rl_cab: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 18
          Align = faClient
          Alignment = taCenter
          Caption = 'Numero COO XXXXX Data Cupom Cliente: Consumidor Final  '
          Layout = tlCenter
        end
      end
      object RLBand_totcup: TRLBand
        Left = 0
        Top = 50
        Width = 718
        Height = 16
        BandType = btSummary
        BeforePrint = RLBand_totcupBeforePrint
        object RLLabel1: TRLLabel
          Left = -2
          Top = 0
          Width = 105
          Height = 16
          Caption = 'Total do cupom..:'
        end
        object det_toticmscor: TRLLabel
          Left = 628
          Top = 0
          Width = 90
          Height = 16
          Alignment = taRightJustify
          Holder = cab_icmsc
          Layout = tlCenter
        end
        object det_toticmserr: TRLLabel
          Left = 508
          Top = 0
          Width = 87
          Height = 16
          Alignment = taRightJustify
          Holder = cab_icmse
          Layout = tlCenter
        end
      end
    end
    object RLBand_geral: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 97
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 1
        Width = 75
        Height = 16
        Caption = 'Emperesa..:'
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 17
        Width = 71
        Height = 16
        Caption = 'Endereco..:'
      end
      object RLDBText1: TRLDBText
        Left = 75
        Top = 0
        Width = 110
        Height = 16
        DataField = 'FANTASIA'
        DataSource = DM1.Src_Emp
      end
      object RLDBText2: TRLDBText
        Left = 71
        Top = 17
        Width = 36
        Height = 16
        DataField = 'ender'
        DataSource = DM1.Src_Emp
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 608
        Top = 0
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 600
        Top = 0
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel4: TRLLabel
        Left = 612
        Top = 0
        Width = 56
        Height = 16
        Caption = 'Pagina..:'
      end
      object RLLabel5: TRLLabel
        Left = 691
        Top = 0
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLLabel_dthora: TRLLabel
        Left = 624
        Top = 81
        Width = 94
        Height = 16
        Align = faRightBottom
        Alignment = taRightJustify
      end
      object RLLabel_periodo: TRLLabel
        Left = 0
        Top = 32
        Width = 716
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
    end
    object RLBand_totger: TRLBand
      Left = 38
      Top = 219
      Width = 718
      Height = 18
      BandType = btSummary
      BeforePrint = RLBand_totgerBeforePrint
      object RLLabel13: TRLLabel
        Left = 0
        Top = 0
        Width = 126
        Height = 16
        Caption = 'No final Total Geral..:'
      end
      object det_geralcmserr: TRLLabel
        Left = 498
        Top = 0
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Holder = cab_icmse
        Layout = tlCenter
      end
      object det_geralicmscor: TRLLabel
        Left = 615
        Top = 0
        Width = 103
        Height = 16
        Alignment = taRightJustify
        Holder = cab_icmsc
        Layout = tlCenter
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT P1NUMCF,P1DATACF,CRAZAO,P2ITEM,P2CODPRO,PDNOME,PDUND,P2QT' +
        'D,P2PRECO,P2TOTDES,P2TOTLIQ,'
      
        'P2CSOSN_ERRADO,P2ALIQ_ERRADO,SITALIQ_ERRADO,P2BASEN_ERRADO,P2ICM' +
        'SN_ERRADO'
      ',CSOSN_CORRETO'
      ','
      'CASE WHEN ALIQ_CORRETO>0 THEN TO_CHAR(ALIQ_CORRETO*100,'#39'0000'#39') '
      '      WHEN CSOSN_CORRETO=103 OR CSOSN_CORRETO=203 THEN '#39'I'#39
      '      WHEN CSOSN_CORRETO=300 OR CSOSN_CORRETO=400 THEN '#39'N'#39
      '      WHEN CSOSN_CORRETO=500 THEN '#39'F'#39
      
        '      ELSE  TO_CHAR(CSOSN_CORRETO*100,'#39'0000'#39') END AS SITALIQ_COR' +
        'RETO,'
      
        'CASE WHEN ALIQ_CORRETO>0 THEN P2TOTLIQ ELSE 0 END AS BASEN_CORRE' +
        'TO      '
      ''
      
        ',CASE WHEN ALIQ_CORRETO>0 THEN  TRUNC(  ((P2TOTLIQ*ALIQ_CORRETO)' +
        '/100)  ,2)'
      '  ELSE 0 END AS ICMS_CORRETO'
      '      '
      ' from '
      '('
      
        'SELECT P1NUMCF,P1DATACF,CRAZAO,P2ITEM,P2CODPRO,PDNOME,PDUND,P2QT' +
        'D,P2PRECO,P2TOTDES,P2TOTLIQ,'
      'P2CSOSN AS P2CSOSN_ERRADO,P2ALIQ AS P2ALIQ_ERRADO'
      ',CASE WHEN P2ALIQ>0 THEN TO_CHAR(P2ALIQ*100,'#39'0000'#39') '
      '      WHEN P2CSOSN=103 OR P2CSOSN=203 THEN '#39'I'#39
      '      WHEN P2CSOSN=300 OR P2CSOSN=400 THEN '#39'N'#39
      '      WHEN P2CSOSN=500 THEN '#39'F'#39
      '      ELSE  TO_CHAR(P2ALIQ*100,'#39'0000'#39') END AS SITALIQ_ERRADO,'
      ' P2BASEN AS P2BASEN_ERRADO,P2ICMSN AS P2ICMSN_ERRADO'
      ' '
      ',PDFIS_CSOSN_EST_CF AS CSOSN_CORRETO'
      ',CASE WHEN PDFIS_CSOSN_EST_CF IN ('#39'101'#39','#39'102'#39','#39'202'#39','#39'900'#39') THEN '
      ' CALIQA '
      ' ELSE 0 END AS ALIQ_CORRETO'
      ',PDTABICM AS TABICM'
      ''
      'FROM CADP01,CADP02 PED2_SEL,CADPRO PRO_SEL,CADCLI'
      'where '
      
        'P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM AND P2' +
        'CODEMP=P1CODEMP AND '
      'CCODCLI=P1CODCLI AND '
      'PDCODPRO=P2CODPRO AND '
      'exists (select P2CODPRO FROM CADP02 PED2_SUB'
      'WHERE P1DATACF>='#39'19/10/2012'#39' AND P1CODEMP=1 AND '
      
        'PED2_SUB.P2CHAVE=PED2_SEL.P2CHAVE AND PED2_SUB.P2LOTSEQ=PED2_SEL' +
        '.P2LOTSEQ'
      'AND PED2_SUB.P2ORDEM=PED2_SEL.P2ORDEM '
      'AND PED2_SUB.P2CODEMP=PED2_SEL.P2CODEMP AND '
      'PED2_SUB.P2CSOSN<>(select PDFIS_CSOSN_EST_CF'
      'FROM CADPRO WHERE PDCODPRO=PED2_SUB.P2CODPRO)'
      ')'
      'ORDER BY P2CHAVE,P1NUMCF,P2ITEM'
      ') TESTE')
    Left = 480
    Top = 32
    object Query1P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
    end
    object Query1P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
    end
    object Query1CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Query1P2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Query1P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Query1PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Query1PDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Query1P2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Query1P2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Query1P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Query1P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object Query1P2CSOSN_ERRADO: TFloatField
      FieldName = 'P2CSOSN_ERRADO'
    end
    object Query1P2ALIQ_ERRADO: TFloatField
      FieldName = 'P2ALIQ_ERRADO'
    end
    object Query1SITALIQ_ERRADO: TStringField
      FieldName = 'SITALIQ_ERRADO'
      Size = 5
    end
    object Query1P2BASEN_ERRADO: TFloatField
      FieldName = 'P2BASEN_ERRADO'
    end
    object Query1P2ICMSN_ERRADO: TFloatField
      FieldName = 'P2ICMSN_ERRADO'
    end
    object Query1CSOSN_CORRETO: TStringField
      FieldName = 'CSOSN_CORRETO'
      Size = 3
    end
    object Query1SITALIQ_CORRETO: TStringField
      FieldName = 'SITALIQ_CORRETO'
      Size = 5
    end
    object Query1BASEN_CORRETO: TFloatField
      FieldName = 'BASEN_CORRETO'
    end
    object Query1ICMS_CORRETO: TFloatField
      FieldName = 'ICMS_CORRETO'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 568
    Top = 32
  end
end
