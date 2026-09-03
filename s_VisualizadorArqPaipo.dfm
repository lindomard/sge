object Frm_VisualizadorArqPaipo: TFrm_VisualizadorArqPaipo
  Left = 192
  Top = 125
  Width = 1081
  Height = 480
  Caption = 'Visualizador EFD ou outros com paipo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 16
      Width = 82
      Height = 13
      Caption = 'ler a partir da tag:'
    end
    object BitBtn2: TBitBtn
      Left = 11
      Top = 3
      Width = 151
      Height = 32
      Cursor = crHandPoint
      Hint = 
        'Esta Op'#231#227'o Permite que se altere o Pedido'#13#10'para Ajustar erros no' +
        ' SINTEGRA'
      Caption = '&Buscar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 606
      Top = 3
      Width = 151
      Height = 32
      Caption = 'Sair'
      TabOrder = 1
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
    object edt_nome_tag: TEdit
      Left = 261
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'C170'
    end
    object BitBtn1: TBitBtn
      Left = 395
      Top = 9
      Width = 174
      Height = 32
      Cursor = crHandPoint
      Hint = 
        'Esta Op'#231#227'o Permite que se altere o Pedido'#13#10'para Ajustar erros no' +
        ' SINTEGRA'
      Caption = 'Comparar Linha 1 com Linha 2'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1065
    Height = 400
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1057
        Height = 372
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'campo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 555
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'origem_campo'
            Width = 369
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1057
        Height = 372
        Align = alClient
        Lines.Strings = (
          '|01|REG Texto fixo contendo "C170" C 004 - S'
          
            '|02|NUM_ITEM N'#250'mero seq'#252'encial do item no documento fiscal N 003' +
            ' - S'
          
            '|03|COD_ITEM C'#243'digo do item (campo 02 do Registro 0200) C 060 - ' +
            'S'
          
            '|04|DESCR_COMPL Descri'#231#227'o complementar do item como adotado no d' +
            'ocumento fiscal C - - N'
          '|05|QTD Quantidade do item N - 05 N'
          '|06|UNID Unidade do item (Campo 02 do registro 0190) C 006 - N'
          
            '|07|VL_ITEM Valor total do item (mercadorias ou servi'#231'os) N - 02' +
            ' S'
          
            '|08|VL_DESC Valor do desconto comercial / exclus'#227'o da base de c'#225 +
            'lculo do PIS/PASEP e da COFINS'
          
            '|09|IND_MOV Movimenta'#231#227'o f'#237'sica do ITEM/PRODUTO: 0. SIM1. N'#195'O C ' +
            '001 - N'
          
            '|10|CST_ICMS C'#243'digo da Situa'#231#227'o Tribut'#225'ria referente ao ICMS, co' +
            'nforme a Tabela indicada no item 4.3.1 N 003* - N'
          '|11|CFOP C'#243'digo Fiscal de Opera'#231#227'o e Presta'#231#227'o N 004* - S'
          
            '|12|COD_NAT C'#243'digo da natureza da opera'#231#227'o (campo 02 do Registro' +
            ' 0400) C 010 - N '
          '|13|VL_BC_IC MS Valor da base de c'#225'lculo do ICMS N - 02 N'
          '|14|ALIQ_ICMS Al'#237'quota do ICMS N 006 02 N'
          '|15|VL_ICMS Valor do ICMS creditado/debitado N - 02 N '
          
            '|16|VL_BC_ICMS_ST Valor da base de c'#225'lculo referente '#224' substitui' +
            #231#227'o tribut'#225'ria N - 02 N'
          
            '|17|ALIQ_ST Al'#237'quota do ICMS da substitui'#231#227'o tribut'#225'ria na unida' +
            'de da federa'#231#227'o de destino N 006 02 N'
          
            '|18|VL_ICMS_ST Valor do ICMS referente '#224' substitui'#231#227'o tribut'#225'ria' +
            ' N - 02 N'
          
            '|19|IND_APUR Indicador de per'#237'odo de apura'#231#227'o do IPI: 0 - Mensal' +
            '; 1 Decendial C 001* - N'
          
            '|20|CST_IPI C'#243'digo da Situa'#231#227'o Tribut'#225'ria referente ao IPI, conf' +
            'orme a Tabela indicada no item 4.3.2. C 002* - N'
          
            '|21|COD_ENQ C'#243'digo de enquadramento legal do IPI, conforme tabel' +
            'a indicada no item 4.5.3.C 003* - N'
          '|22|VL_BC_IPI Valor da base de c'#225'lculo do IPI N - 02 N'
          '|23|ALIQ_IPI Al'#237'quota do IPI N 006 02 N '
          '|24|VL_IPI Valor do IPI creditado/debitado N - 02 N'
          
            '|25|CST_PIS C'#243'digo da Situa'#231#227'o Tribut'#225'ria referente ao PIS. N 00' +
            '2* - S'
          '|26|VL_BC_PIS Valor da base de c'#225'lculo do PIS/PASEP N - 02 N'
          '|27|ALIQ_PIS Al'#237'quota do PIS (em percentual) N 008 04 N'
          '|28|QUANT_BC_PIS Quantidade '#8211' Base de c'#225'lculo PIS/PASEP N - 03 N'
          '|29|ALIQ_PIS_QUANT Al'#237'quota do PIS/PASEP (em reais) N - 04 N'
          '|30|VL_PIS Valor do PIS/PASEP N - 02 N'
          
            '|31|CST_COFINS C'#243'digo da Situa'#231#227'o Tribut'#225'ria referente ao COFINS' +
            '. N 002* - S'
          '|32|VL_BC_COFINS Valor da base de c'#225'lculo da COFINS N - 02 N'
          '|33|ALIQ_COFINS Al'#237'quota do COFINS (em percentual) N 008 04 N'
          '|34|QUANT_BC_COFINS Quantidade '#8211' Base de c'#225'lculo COFINS N - 03 N'
          '|35|ALIQ_COFINS_QUANT Al'#237'quota da COFINS (em reais) N - 04 N'
          '|36|VL_COFINS Valor da COFINS N - 02 N'
          
            '|37|COD_CTA C'#243'digo da conta anal'#237'tica cont'#225'bil debitada/creditad' +
            'a C 255 - N')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Comparacao Linha 1 com linha 2'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1057
        Height = 372
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'campo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Width = 555
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor_linha2'
            Width = 369
            Visible = True
          end>
      end
    end
  end
  object cds_arqpaipo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 128
    object cds_arqpaipocampo: TIntegerField
      FieldName = 'campo'
    end
    object cds_arqpaipovalor: TStringField
      FieldName = 'valor'
      Size = 254
    end
    object cds_arqpaipoorigem_campo: TStringField
      FieldName = 'origem_campo'
      Size = 254
    end
    object cds_arqpaipovalor_linha2: TStringField
      FieldName = 'valor_linha2'
      Size = 254
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_arqpaipo
    Left = 216
    Top = 128
  end
  object opd1: TOpenDialog
    Left = 276
    Top = 121
  end
end
