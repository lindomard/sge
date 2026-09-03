object Frm_CME: TFrm_CME
  Left = 54
  Top = 3
  Width = 733
  Height = 526
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Configurar Arquivos Multi-Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 444
    Width = 725
    Height = 51
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 0
      Top = 2
      Width = 120
      Height = 45
      Caption = '&Marcar todos'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbMeioMarcado: TBitBtn
      Left = 119
      Top = 2
      Width = 125
      Height = 45
      Caption = '&Meio Marcado em Todos'
      TabOrder = 5
      OnClick = bbMeioMarcadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 243
      Top = 2
      Width = 120
      Height = 45
      Caption = '&Desmarcar Todos'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 362
      Top = 2
      Width = 120
      Height = 45
      Caption = '&Cadastros '#250'nicos'
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
        0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
        03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
        033333337F73FF737F33B33B778000877333333373F777337333333B30888880
        33333333373FFFF73333333B3300000333333333337777733333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 481
      Top = 2
      Width = 120
      Height = 45
      Caption = 'Salvar as &Alteracoes'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 600
      Top = 2
      Width = 120
      Height = 45
      Caption = '&Sair '
      TabOrder = 3
      OnClick = BitBtn4Click
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 725
    Height = 444
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Tabelas &Gerais'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 717
        Height = 19
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Selecione as Tabelas Multi Empresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 171
        Top = 313
        Width = 316
        Height = 91
        Caption = 
          'Marcado o Registro pode Ser Encontrado'#13#10'na empresa 1 e 101 respe' +
          'ctivamente para as demais'#13#10#13#10'Meio Marcado(Grayed) somente na emp' +
          'resa exata'#13#10'sera localizado o registro.'#13#10#13#10'N'#227'o Marcado  ficara d' +
          'isponivel para todas as empresas'
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CB_CADBCO: TCheckBox
        Left = 0
        Top = 28
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Bancos'
        TabOrder = 0
      end
      object CB_CADCCU: TCheckBox
        Left = 0
        Top = 44
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Centro de Custos'
        TabOrder = 1
      end
      object CB_CADCFO: TCheckBox
        Left = 0
        Top = 60
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de CFOP-C'#243'digo fiscal de Operacao'
        TabOrder = 2
      end
      object CB_CADCLI: TCheckBox
        Left = 0
        Top = 74
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Clientes'
        TabOrder = 3
      end
      object CB_CADCON: TCheckBox
        Left = 0
        Top = 88
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Controles de Produtos'
        TabOrder = 4
      end
      object CB_CADCV: TCheckBox
        Left = 0
        Top = 104
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Convenios'
        TabOrder = 5
      end
      object CB_CADDEP: TCheckBox
        Left = 0
        Top = 119
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Departamentos'
        TabOrder = 6
      end
      object CB_CADECF: TCheckBox
        Left = 0
        Top = 134
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de ECF-Emissor de Cupom Fiscal(Impressora Fiscal)'
        TabOrder = 7
      end
      object CB_CADFOR: TCheckBox
        Left = 0
        Top = 149
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Fornecedores'
        TabOrder = 8
      end
      object CB_CADIDV: TCheckBox
        Left = 0
        Top = 163
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela Impressao de relatorio diversos'
        TabOrder = 9
      end
      object CB_CADPED: TCheckBox
        Left = 0
        Top = 210
        Width = 303
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Pedidos/Financeito e Relacionados'
        TabOrder = 11
      end
      object CB_CADPAR: TCheckBox
        Left = 0
        Top = 225
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Parametros do sistema'
        TabOrder = 12
      end
      object CB_CADPRO: TCheckBox
        Left = 350
        Top = 28
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Produtos'
        TabOrder = 14
      end
      object CB_CADPV: TCheckBox
        Left = 350
        Top = 60
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Plano de Vendas'
        TabOrder = 15
      end
      object CB_CADTAB: TCheckBox
        Left = 350
        Top = 76
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Tabulacoes de Notas Fiscais'
        TabOrder = 16
      end
      object CB_CADTDV: TCheckBox
        Left = 350
        Top = 92
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Tabulacoes de Relatorios diversos'
        TabOrder = 17
      end
      object CB_CADTRA: TCheckBox
        Left = 350
        Top = 107
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Transportadoras'
        TabOrder = 18
      end
      object CB_CADUF: TCheckBox
        Left = 350
        Top = 122
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Unidades da Federacao/Estados'
        TabOrder = 19
      end
      object CB_CADUSR: TCheckBox
        Left = 350
        Top = 138
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Usu'#225'rios/Acessos/Cargos'
        TabOrder = 20
      end
      object CB_CADVEN: TCheckBox
        Left = 350
        Top = 154
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de &Vendedores'
        TabOrder = 21
      end
      object CB_CADEST: TCheckBox
        Left = 350
        Top = 43
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Estoque de Produtos'
        TabOrder = 22
      end
      object CB_CADSUP: TCheckBox
        Left = 350
        Top = 169
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de &Supervisores'
        TabOrder = 23
      end
      object CB_CADCOMD: TCheckBox
        Left = 350
        Top = 185
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Comis&oes do desconto'
        TabOrder = 24
      end
      object CB_PARLDR: TCheckBox
        Left = 1
        Top = 241
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Parametros do Fluxo de Caixa'
        TabOrder = 13
      end
      object CB_CADRED: TCheckBox
        Left = 350
        Top = 200
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Redes de Clientes'
        TabOrder = 25
      end
      object CB_CADLOC: TCheckBox
        Left = 350
        Top = 215
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Cadastro de Cidades'
        TabOrder = 26
      end
      object CB_CADBAI: TCheckBox
        Left = 350
        Top = 228
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Cadastro de Bairros'
        TabOrder = 27
      end
      object CB_CADMOE: TCheckBox
        Left = 350
        Top = 243
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Cadastro de Moeda/Indexadores'
        TabOrder = 28
      end
      object CB_CADIMO: TCheckBox
        Left = 350
        Top = 259
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Cadastro de Imobilizados/Veiculos'
        TabOrder = 29
      end
      object CB_CADGIR: TCheckBox
        Left = 350
        Top = 274
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Cadastro de Giros'
        TabOrder = 30
      end
      object CB_CADCPN: TCheckBox
        Left = 350
        Top = 288
        Width = 328
        Height = 17
        AllowGrayed = True
        Caption = 'Formularios Tabulados'
        TabOrder = 31
      end
      object CB_CADIMP_SYS: TCheckBox
        Left = 1
        Top = 179
        Width = 341
        Height = 17
        AllowGrayed = True
        Caption = 
          'Tabela de Impressoras do Sistemas(relatorios on-line/sem visuali' +
          'zar)'
        TabOrder = 32
      end
      object CB_CADLOGSIS: TCheckBox
        Left = 1
        Top = 195
        Width = 217
        Height = 17
        AllowGrayed = True
        Caption = 'Tabela de Logomarcas do Sistema'
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tabelas &Industrias'
      ImageIndex = 2
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 717
        Height = 19
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Selecione as Tabelas Multi Empresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
