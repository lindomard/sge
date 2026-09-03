object Frm_ProMed: TFrm_ProMed
  Left = 192
  Top = 114
  Width = 544
  Height = 321
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'M'#233'dia de Vendas por Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 7
    Width = 80
    Height = 13
    Caption = 'Referencia m'#234's.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 7
    Width = 21
    Height = 13
    Caption = 'ano:'
  end
  object MES: TEdit
    Left = 142
    Top = 3
    Width = 36
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object ANO: TEdit
    Left = 226
    Top = 4
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object bbImprimir: TBitBtn
    Left = 8
    Top = 227
    Width = 123
    Height = 42
    Caption = '&Imprimir'
    TabOrder = 5
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
    Left = 357
    Top = 229
    Width = 123
    Height = 42
    Caption = '&Sair'
    TabOrder = 6
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
  object RG_ORDEM: TRadioGroup
    Left = 9
    Top = 168
    Width = 298
    Height = 51
    Caption = 'Ordem do Relat'#243'rio:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Descri'#231#227'o'
      '&C'#243'digo')
    TabOrder = 4
  end
  object RG_TIPOPED: TRadioGroup
    Left = 12
    Top = 32
    Width = 489
    Height = 80
    Caption = 'Emitir Somente:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Venda Normal'
      'Simples Remessa'
      'Dev. a Fornecedor'
      'Remessa p/Troca'
      'Transferencia'
      'Remessa p/Beneficiamento'
      'Remessa p/Venda'
      'Dev. Cliente(Entrada)'
      'Emprestimo de Mercadorias')
    TabOrder = 2
  end
  object RG_TIPO: TRadioGroup
    Left = 12
    Top = 113
    Width = 488
    Height = 30
    Caption = 'Tipo da M'#233'dia:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Valores'
      'Quantidades')
    TabOrder = 3
    OnClick = RG_TIPOExit
    OnExit = RG_TIPOExit
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PNOM AS NOME, CCODEMP AS CODIGO,sum(decode(to_char(p1data' +
        'nf, '#39'yyyymm'#39'),'#39'200301'#39',(P2TOTLIQ-P2DESCRAT) ,0)) as venmes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200302'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes03'
      'from CADP01,CADP02,CADCLI,CADUF'
      'where P1CODEMP is null'
      'and P2CODEMP=P1CODEMP'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and CCODEMP =P1CODEMP'
      'and CCODCLI =P1CODCLI'
      'and PCODEMP =CCODEMP'
      'and PUF     =CUF'
      'group by PNOM,CCODEMP')
    Left = 216
    Top = 72
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
    end
    object Qr_VenCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_VenVENMES01: TFloatField
      FieldName = 'VENMES01'
    end
    object Qr_VenVENMES02: TFloatField
      FieldName = 'VENMES02'
    end
    object Qr_VenVENMES03: TFloatField
      FieldName = 'VENMES03'
    end
  end
end
