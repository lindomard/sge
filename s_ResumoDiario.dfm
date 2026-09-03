object Frm_ResumoDiario: TFrm_ResumoDiario
  Left = 192
  Top = 124
  Width = 928
  Height = 453
  Caption = 'Resumo Diario dos Movimentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 415
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet4: TTabSheet
      Caption = 'Geral'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 239
          Top = 24
          Width = 115
          Height = 13
          Caption = 'Data do Movimento:'
        end
        object edt_datmov: TDateEdit
          Left = 360
          Top = 20
          Width = 119
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          Text = '16/01/2019'
        end
        object bbImprimir: TBitBtn
          Left = 140
          Top = 51
          Width = 143
          Height = 35
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = bbImprimirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 478
          Top = 51
          Width = 143
          Height = 35
          Caption = '&Sair'
          TabOrder = 2
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
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 97
        Width = 904
        Height = 290
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'Pedidos Incluidos no dia'
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 896
            Height = 105
            Align = alTop
            Caption = 'Sintetico:'
            TabOrder = 0
            object DBGrid_pedidos_sintetico: TDBGrid
              Left = 2
              Top = 15
              Width = 892
              Height = 88
              Align = alClient
              DataSource = src_pedidos_sintetico
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 105
            Width = 896
            Height = 157
            Align = alClient
            Caption = 'Analitico'
            TabOrder = 1
            object DBGrid_pedidos_analiticos: TDBGrid
              Left = 2
              Top = 15
              Width = 892
              Height = 140
              Align = alClient
              DataSource = src_pedidos_analitico
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Titulos'
          ImageIndex = 1
        end
        object TabSheet3: TTabSheet
          Caption = 'Estoque'
          ImageIndex = 2
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 24
        Top = 32
        Width = 794
        Height = 1123
        DataSource = src_datamov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 48
          BandType = btHeader
          object RLImage_logo_empresa: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 48
            Align = faLeft
          end
          object RLLabel_cab: TRLLabel
            Left = 107
            Top = 0
            Width = 410
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Resumo de Movimentacao diaria'
          end
          object RLLabel1: TRLLabel
            Left = 107
            Top = 32
            Width = 410
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Movimento do dia 10/09/1969'
          end
          object RLLabel2: TRLLabel
            Left = 670
            Top = 0
            Width = 48
            Height = 14
            Align = faRightTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Emitido em 10/09/2019 as 15:30'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 611
            Top = 34
            Width = 107
            Height = 14
            Align = faRightBottom
            Info = itPageNumber
            Text = 'Pagina '
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 515
            Top = 34
            Width = 96
            Height = 14
            Align = faRightBottom
            Info = itLastPageNumber
            Text = '/'
          end
        end
        object RLBand_detcab: TRLBand
          Left = 38
          Top = 86
          Width = 718
          Height = 51
          object rlcab_QTDEST: TRLLabel
            Left = 104
            Top = 8
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Estoque anterior'
          end
          object rltdet_QTDEST: TRLDBText
            Left = 104
            Top = 28
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTDEST'
            DataSource = src_datamov
          end
          object rlcab_TOTCUSTO: TRLLabel
            Left = 264
            Top = 8
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Preco de Custo'
          end
          object rldet_TOTCUSTO: TRLDBText
            Left = 264
            Top = 27
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTCUSTO'
            DataSource = src_datamov
          end
          object rlcab_TOTVDA: TRLLabel
            Left = 439
            Top = 5
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Preco de Venda'
          end
          object rldet_TOTVDA: TRLDBText
            Left = 439
            Top = 24
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TOTVDA'
            DataSource = src_datamov
          end
        end
        object rlsubdet_pedidosincluidos: TRLSubDetail
          Left = 38
          Top = 137
          Width = 718
          Height = 64
          DataSource = src_pedidos_analitico
          object RLBand_cabped_inclusos: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object rlcab_P1CHAVE: TRLLabel
              Left = 3
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Chave'
              Layout = tlCenter
            end
            object rlcab_P1DATAP: TRLLabel
              Left = 57
              Top = -1
              Width = 76
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Data '
              Layout = tlCenter
            end
            object rlcab_CRAZAO: TRLLabel
              Left = 133
              Top = 0
              Width = 250
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Pessoa'
              Layout = tlCenter
            end
            object rlcab_P1TOTALL: TRLLabel
              Left = 395
              Top = 0
              Width = 80
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Total Liquido'
              Layout = tlCenter
            end
            object rlcab_TPNOME: TRLLabel
              Left = 478
              Top = 1
              Width = 100
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo do Pedido'
              Layout = tlCenter
            end
            object rlcab_P2ESTNOR: TRLLabel
              Left = 600
              Top = 0
              Width = 42
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo'
              Layout = tlCenter
            end
            object rlcab_TOTQTD: TRLLabel
              Left = 645
              Top = 0
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Quantidade'
              Layout = tlCenter
            end
          end
          object RLBand1: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            object rldet_P1CHAVE: TRLDBText
              Left = 3
              Top = -1
              Width = 54
              Height = 16
              AutoSize = False
              DataField = 'P1CHAVE'
              DataSource = src_pedidos_analitico
              Holder = rlcab_P1CHAVE
              Layout = tlCenter
            end
            object rldet_CRAZAO: TRLDBText
              Left = 133
              Top = -1
              Width = 250
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = src_pedidos_analitico
              Holder = rlcab_CRAZAO
              Layout = tlCenter
            end
            object rldet_P1TOTALL: TRLDBText
              Left = 395
              Top = 0
              Width = 80
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTALL'
              DataSource = src_pedidos_analitico
              Holder = rlcab_P1TOTALL
              Layout = tlCenter
            end
            object rldet_TPNOME: TRLDBText
              Left = 478
              Top = -1
              Width = 100
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'TPNOME'
              DataSource = src_pedidos_analitico
              Holder = rlcab_TPNOME
              Layout = tlCenter
            end
            object rldet_P2ESTNOR: TRLDBText
              Left = 600
              Top = 0
              Width = 42
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'P2ESTNOR'
              DataSource = src_pedidos_analitico
              Holder = rlcab_P2ESTNOR
              Layout = tlCenter
            end
            object rldet_TOTQTD: TRLDBText
              Left = 645
              Top = 0
              Width = 66
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'TOTQTD'
              DataSource = src_pedidos_analitico
              Holder = rlcab_TOTQTD
              Layout = tlCenter
            end
            object RLDBText1: TRLDBText
              Left = 57
              Top = 0
              Width = 76
              Height = 16
              AutoSize = False
              DataField = 'P1CHAVE'
              DataSource = src_pedidos_analitico
              Holder = rlcab_P1DATAP
              Layout = tlCenter
            end
          end
        end
      end
    end
  end
  object src_pedidos_analitico: TDataSource
    DataSet = tb_pedidos_analitico
    Left = 484
    Top = 225
  end
  object tb_pedidos_analitico: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P1CHAVE,P1DATAP,P1CODEMP,CRAZAO,P1CODVEN'
      ',P1TOTALL'
      ',NVL(P1TIPO,0) AS P1TIPO'
      ',NVL(TPNOME,'#39'Orcamento'#39') AS TPNOME'
      
        ',case when NVL(P1TIPO,0)=0 THEN '#39'N'#39' ELSE NVL(P2ESTNOR,'#39'N'#39') end a' +
        's P2ESTNOR'
      ', SUM(P2QTD) AS TOTQTD'
      ',SUM( ROUND((P2PCOTAB*P2QTD),2) ) AS TOTPCOTAB'
      ',SUM( ROUND((P2PRECO*P2QTD),2)) AS TOTPCOVDA'
      ',sum(NVL(P2ICMSR,0)) AS TOTICMSR'
      ',sum(NVL(P2TOTOUT,0)) AS TOTOUTRAS'
      ',sum(NVL(P2VFRERAT,0)) AS TOTFRETE'
      ',sum(NVL(P2VALIPI,0)) AS TOTIPI'
      ',sum(NVL(P2IMP_IMP_VII,0)) AS TOTII'
      ',sum(NVL(P2IMP_IMP_VIOF,0)) AS TOTIOF'
      ',sum(NVL(P2IMP_IMP_VALOR,0)) AS TOTIMP_IMP_VALOR'
      ''
      'FROM CADP01,CADP02,CADCLI,CADTIPPED'
      
        'WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM ' +
        'AND P2CODEMP=P1CODEMP'
      'AND CCODCLI=P1CODCLI'
      'AND TPCODIGO(+)=P1TIPO'
      'AND P1DATAP='#39'07/10/2009'#39
      'GROUP BY  P1CHAVE,P1DATAP,P1CODEMP,CRAZAO,P1CODVEN,P1TOTALL'
      ',P1TIPO'
      ',NVL(P1TIPO,0)'
      ',NVL(TPNOME,'#39'Orcamento'#39')'
      ',case when NVL(P1TIPO,0)=0 THEN '#39'N'#39' ELSE NVL(P2ESTNOR,'#39'N'#39') end '
      '')
    Left = 540
    Top = 225
    object tb_pedidos_analiticoTIT_TOTAL: TFloatField
      FieldName = 'TIT_TOTAL'
    end
    object tb_pedidos_analiticoTIT_VALPAG: TFloatField
      FieldName = 'TIT_VALPAG'
    end
    object tb_pedidos_analiticoTIT_DESC: TFloatField
      FieldName = 'TIT_DESC'
    end
    object tb_pedidos_analiticoTIT_JUROS: TFloatField
      FieldName = 'TIT_JUROS'
    end
    object tb_pedidos_analiticoP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object tb_pedidos_analiticoEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object tb_pedidos_analiticoCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 120
    end
    object tb_pedidos_analiticoP1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
    end
    object tb_pedidos_analiticoP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
    end
    object tb_pedidos_analiticoTPNOME: TStringField
      FieldName = 'TPNOME'
      Size = 100
    end
    object tb_pedidos_analiticoP2ESTNOR: TStringField
      FieldName = 'P2ESTNOR'
      Size = 1
    end
    object tb_pedidos_analiticoTOTQTD: TFloatField
      FieldName = 'TOTQTD'
    end
    object tb_pedidos_analiticoTOTPCOTAB: TFloatField
      FieldName = 'TOTPCOTAB'
    end
    object tb_pedidos_analiticoTOTPCOVDA: TFloatField
      FieldName = 'TOTPCOVDA'
    end
    object tb_pedidos_analiticoTOTICMSR: TFloatField
      FieldName = 'TOTICMSR'
    end
    object tb_pedidos_analiticoTOTOUTRAS: TFloatField
      FieldName = 'TOTOUTRAS'
    end
    object tb_pedidos_analiticoTOTFRETE: TFloatField
      FieldName = 'TOTFRETE'
    end
    object tb_pedidos_analiticoTOTIPI: TFloatField
      FieldName = 'TOTIPI'
    end
    object tb_pedidos_analiticoTOTIOF: TFloatField
      FieldName = 'TOTIOF'
    end
    object tb_pedidos_analiticoTOTIMP_IMP_VALOR: TFloatField
      FieldName = 'TOTIMP_IMP_VALOR'
    end
  end
  object src_pedidos_sintetico: TDataSource
    DataSet = tb_pedidos_sintetico
    Left = 484
    Top = 289
  end
  object tb_pedidos_sintetico: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select P1CHAVE,P1DATAP,P1CODEMP,CRAZAO,P1CODVEN'
      ',P1TOTALL'
      ', SUM(P2QTD) AS TOTQTD'
      ',SUM( ROUND((P2PCOTAB*P2QTD),2) ) AS TOTPCOTAB'
      ',SUM( ROUND((P2PRECO*P2QTD),2)) AS TOTPCOVDA'
      ',sum(NVL(P2ICMSR,0)) AS TOTICMSR'
      ',sum(NVL(P2TOTOUT,0)) AS TOTOUTRAS'
      ',sum(NVL(P2VFRERAT,0)) AS TOTFRETE'
      ',sum(NVL(P2VALIPI,0)) AS TOTIPI'
      ',sum(NVL(P2IMP_IMP_VII,0)) AS TOTII'
      ',sum(NVL(P2IMP_IMP_VIOF,0)) AS TOTIOF'
      ',sum(NVL(P2IMP_IMP_VALOR,0)) AS TOTIMP_IMP_VALOR'
      'FROM CADP01,CADP02,CADCLI'
      
        'WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM ' +
        'AND P2CODEMP=P1CODEMP'
      'AND CCODCLI=P1CODCLI'
      'AND P1DATAP='#39'07/10/2009'#39
      'GROUP BY  P1CHAVE,P1DATAP,P1CODEMP,CRAZAO,P1CODVEN,P1TOTALL')
    Left = 540
    Top = 289
  end
  object cds_datamov: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 276
    Top = 248
    object cds_datamovDATAMOV: TDateField
      FieldName = 'DATAMOV'
    end
    object cds_datamovQTDEST: TFloatField
      FieldName = 'QTDEST'
    end
    object cds_datamovTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
    end
    object cds_datamovTOTVDA: TFloatField
      FieldName = 'TOTVDA'
    end
  end
  object src_datamov: TDataSource
    DataSet = cds_datamov
    Left = 308
    Top = 257
  end
end
