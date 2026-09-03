object Frm_RAni: TFrm_RAni
  Left = 214
  Top = 120
  Width = 570
  Height = 306
  Caption = 'Relat'#243'rio de Aniversariantes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 562
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Emite Relat'#243'rio de Aniversariantes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 13
    Top = 49
    Width = 73
    Height = 13
    Caption = 'Per'#237'odo de dia:'
  end
  object Label3: TLabel
    Left = 136
    Top = 49
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label4: TLabel
    Left = 232
    Top = 50
    Width = 26
    Height = 13
    Caption = #224' dia:'
  end
  object Label5: TLabel
    Left = 306
    Top = 51
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object DIAI: TEdit
    Left = 91
    Top = 46
    Width = 37
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = DIAIExit
  end
  object MESI: TEdit
    Left = 163
    Top = 47
    Width = 37
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnExit = MESIExit
  end
  object DIAF: TEdit
    Left = 261
    Top = 48
    Width = 37
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnExit = DIAFExit
  end
  object MESF: TEdit
    Left = 333
    Top = 49
    Width = 37
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnExit = MESFExit
  end
  object RG_ORDEM: TRadioGroup
    Left = 15
    Top = 136
    Width = 503
    Height = 35
    Caption = 'Ordem Para Impress'#227'o:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Alfabetica'
      'Data de Aniversario+Alfabetica')
    ParentCtl3D = False
    TabOrder = 5
  end
  object RG_TIPO: TRadioGroup
    Left = 15
    Top = 70
    Width = 502
    Height = 56
    Caption = 'Tipos de Aniversariantes:'
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '&Todos'
      '&Clientes'
      '&Fornecedores'
      '&Outros')
    ParentCtl3D = False
    TabOrder = 4
  end
  object bbImprimir: TBitBtn
    Left = 15
    Top = 233
    Width = 129
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 6
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
    Left = 392
    Top = 232
    Width = 129
    Height = 25
    Caption = '&Sair'
    TabOrder = 7
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
  object RG_TPREL: TRadioGroup
    Left = 15
    Top = 179
    Width = 504
    Height = 40
    Caption = 'Tipo do Relat'#243'rio:'
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Resumido'
      'Completo')
    ParentCtl3D = False
    TabOrder = 8
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 512
    Top = 24
  end
end
