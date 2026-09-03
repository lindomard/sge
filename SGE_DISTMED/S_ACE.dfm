object Frm_Ace: TFrm_Ace
  Left = 139
  Top = 212
  Width = 790
  Height = 513
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Manuten'#231#227'o no Cadastro de Acessos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 455
    Align = alClient
    TabOrder = 0
    object BBCargo: TBitBtn
      Left = 166
      Top = 89
      Width = 171
      Height = 25
      Caption = '&Selecionar Cargo'
      TabOrder = 0
      OnClick = BBCargoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
        00007777777777777777933393303933337073F37F37F73F3377393393303393
        379037FF7F37F37FF777379793303379793037777337F3777737339933303339
        93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
        999037777337F377777793993330333393307377FF37F3337FF7333993303333
        993033377F37F33377F7333993303333993033377337F3337737333333303333
        33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
        03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
      NumGlyphs = 2
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 435
      Width = 772
      Height = 19
      Panels = <
        item
          Width = 70
        end
        item
          Width = 300
        end>
    end
    object BitBtn1: TBitBtn
      Left = 116
      Top = 282
      Width = 120
      Height = 25
      Caption = '&Liberar Tudo'
      TabOrder = 2
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
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 270
      Top = 282
      Width = 120
      Height = 25
      Caption = '&Bloqueia Tudo'
      TabOrder = 3
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
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 166
      Top = 113
      Width = 171
      Height = 25
      Caption = 'Acesso Por Programa/Tabela'
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 165
      Width = 326
      Height = 66
      Caption = 'Defini'#231#227'o Padr'#227'o de Acessos'
      TabOrder = 5
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 88
        Height = 13
        Caption = 'Defini'#231#227'o Padr'#227'o :'
      end
      object ComboBox1: TComboBox
        Left = 8
        Top = 34
        Width = 158
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        Sorted = True
        TabOrder = 0
        Text = 'Auxiliar de Escrit'#243'rio'
        Items.Strings = (
          'Auxiliar de Escrit'#243'rio'
          'Compras'
          'Estoquista'
          'Faturamento'
          'Financeiro'
          'Supervisor'
          'Vendedor')
      end
      object BitBtn4: TBitBtn
        Left = 170
        Top = 31
        Width = 146
        Height = 25
        Cursor = crHandPoint
        Caption = '&Gerar Permiss'#227'o Padr'#227'o'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 120
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      ImageIndex = 0
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        object mpro_0103: TMenuItem
          Caption = 'M&anutencao'
          OnClick = mpro_0103Click
        end
        object mpro_0181: TMenuItem
          Caption = 'Manipula'#231#227'o Personalizada'
          OnClick = mpro_0181Click
        end
        object mpro_0172: TMenuItem
          Caption = 'Consultar Prod&utos'
          OnClick = mpro_0172Click
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object mpro_0166: TMenuItem
          Caption = 'Manuten'#231#227'o em Mat'#233'rias Primas'
          OnClick = mpro_0166Click
        end
        object NMP: TMenuItem
          Caption = '-'
        end
        object mpro_0115: TMenuItem
          Caption = '&Ramo/Sub-Grupo Produto'
          OnClick = mpro_0115Click
        end
        object mpro_0118: TMenuItem
          Caption = '&Grupos'
          OnClick = mpro_0118Click
        end
        object mpro_0121: TMenuItem
          Caption = '&Tipo de Controles'
          OnClick = mpro_0121Click
        end
        object mpro_0124: TMenuItem
          Caption = 'Tipo de P&rodutos'
          OnClick = mpro_0124Click
        end
        object mpro_0148: TMenuItem
          Caption = 'DCB-Gen'#233'rico'
          Visible = False
          OnClick = mpro_0148Click
        end
        object mpro_0193: TMenuItem
          Caption = 'Departamento'
          OnClick = mpro_0193Click
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object PedidodeCompra1: TMenuItem
          Caption = '&Pedido de Compra'
          object mpro_0203: TMenuItem
            Caption = '&Manuten'#231#227'o'
            OnClick = mpro_0203Click
          end
          object mpro_0207: TMenuItem
            Caption = 'Gerar Pedido Atrav'#233's de Leitor'
            OnClick = mpro_0207Click
          end
          object mpro_0206: TMenuItem
            Caption = '&Confer'#234'ncia Eletr'#244'nica'
            OnClick = mpro_0206Click
          end
          object N35: TMenuItem
            Caption = '-'
          end
          object mpro_0209: TMenuItem
            Caption = 'Gerar Pre'#231'o de Custo/M'#233'dio de Compra Atrav'#233's das Entradas'
            Visible = False
            OnClick = mpro_0209Click
          end
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object mpro_0112: TMenuItem
          Caption = '&Mudar/Agrupar C'#243'digo'
          OnClick = mpro_0112Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object AjustedeEstoque: TMenuItem
          Caption = '&Ajuste de Estoque'
          object mpro_0127: TMenuItem
            Caption = '&Estoque Normal'
            OnClick = mpro_0127Click
          end
          object mpro_0128: TMenuItem
            Caption = 'Estoque em &Consigna'#231#227'o'
            OnClick = mpro_0128Click
          end
          object mpro_0129: TMenuItem
            Caption = 'Estoque de Remessa para &Venda'
            OnClick = mpro_0129Click
          end
          object mpro_0175: TMenuItem
            Caption = 'Estoque de &Terceiros'
            OnClick = mpro_0175Click
          end
          object mpro_0184: TMenuItem
            Caption = 'Transferencias Prateleira/Deposito'
            OnClick = mpro_0184Click
          end
          object mpro_0185: TMenuItem
            Caption = 'Transferencias Prateleira/Reparo'
            OnClick = mpro_0185Click
          end
          object Balano1: TMenuItem
            Caption = '&Balan'#231'o'
            object mpro_0163: TMenuItem
              Caption = 'Manuten'#231#227'o'
              OnClick = mpro_0163Click
            end
          end
          object mpro_0186: TMenuItem
            Caption = 'Transferencia de Filiais/Local de Armazenagem'
            OnClick = mpro_0186Click
          end
        end
        object N42: TMenuItem
          Caption = '-'
        end
        object minventario: TMenuItem
          Caption = 'Manipular invent'#225'rio gravado'
          object mpro_0157: TMenuItem
            Caption = '&Invent'#225'rio por Produto'
            OnClick = mpro_0157Click
          end
          object mpro_0169: TMenuItem
            Caption = 'I&nvent'#225'rio por Grade'
            Visible = False
            OnClick = mpro_0169Click
          end
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object ExportarProd: TMenuItem
          Caption = '&Exportar'
          object mpro_0106: TMenuItem
            Caption = 'Exportar Entre Empresas do Sistema'
            Visible = False
          end
          object mpro_0190: TMenuItem
            Caption = 'Exportar Para Balan'#231'as'
            OnClick = mpro_0190Click
          end
        end
        object Importar1: TMenuItem
          Caption = '&Importar'
          object mpro_0130: TMenuItem
            Caption = '&Padr'#227'o 1 arquivo DBF'
            Visible = False
            OnClick = mpro_0130Click
          end
          object mpro_0178: TMenuItem
            Caption = 'Relat'#243'rio de Importa'#231#227'o'
            Visible = False
            OnClick = mpro_0178Click
          end
          object mpro_0109: TMenuItem
            Caption = 'C'#243'&d.Prod.Fornecedor'
            OnClick = mpro_0109Click
          end
        end
        object AlteraesdePreos1: TMenuItem
          Caption = 'Altera'#231#245'es de &Pre'#231'os'
          object mpro_0145: TMenuItem
            Caption = '&Manuten'#231#227'o por Lote'
            OnClick = mpro_0145Click
          end
          object mpro_0187: TMenuItem
            Caption = 'Atualiza'#231#227'o por '#205'ndices'
            OnClick = mpro_0187Click
          end
          object mpro_0301: TMenuItem
            Caption = 'Replicar Pre'#231'os nas Filiais'
            OnClick = mpro_0301Click
          end
        end
        object Custos1: TMenuItem
          Caption = '&Custos'
          object mpro_0133: TMenuItem
            Caption = '&Manipular Por Produto'
            OnClick = mpro_0133Click
          end
          object mpro_0142: TMenuItem
            Caption = '&Atualizar Pre'#231'os'
            OnClick = mpro_0142Click
          end
          object mpro_0154: TMenuItem
            Caption = 'Atualizar Pre'#231'o de Fabrica Atrav'#233's da Formula'
            Visible = False
            OnClick = mpro_0154Click
          end
          object mpro_0155: TMenuItem
            Caption = 'A&tualizar Pre'#231'o de Custo (Produtos Acabados) Atrav'#233's da Formula'
            OnClick = mpro_0155Click
          end
        end
        object N24: TMenuItem
          Caption = '-'
        end
        object Especiais2: TMenuItem
          Caption = '&Especiais'
          Visible = False
          object mpro_0151: TMenuItem
            Caption = '&Ajustar Desconto 1 do Produto'
            OnClick = mpro_0151Click
          end
        end
        object N46: TMenuItem
          Caption = '-'
        end
        object mpro_0160: TMenuItem
          Caption = 'Relat'#243'rio de C&ompra de Mercadorias'
          OnClick = mpro_0160Click
        end
        object UltimasVendas1: TMenuItem
          Caption = 'Relat'#243'rio de &Venda de Mercadorias'
          OnClick = UltimasVendas1Click
        end
        object N99: TMenuItem
          Caption = '-'
        end
        object mpro_0195: TMenuItem
          Caption = 'Produtos em Analise'
          OnClick = mpro_0195Click
        end
        object ConsultasdeRe1: TMenuItem
          Caption = 'Consultas de RE'
          OnClick = ConsultasdeRE1Click
        end
        object mpro_0194: TMenuItem
          Caption = '&Gerar estoque minimo atrav'#233's das vendas'
          OnClick = mpro_0194Click
        end
      end
      object Localidades1: TMenuItem
        Caption = '&Localidades'
        object mloc_0103: TMenuItem
          Caption = '&Estados'
          OnClick = mloc_0103Click
        end
        object N44: TMenuItem
          Caption = '-'
        end
        object mloc_0106: TMenuItem
          Caption = '&Cidades'
          Visible = False
          OnClick = mloc_0106Click
        end
        object mloc_0108: TMenuItem
          Caption = '&Mudar / Agrupar Cidades'
          OnClick = mloc_0108Click
        end
        object mloc_0112: TMenuItem
          Caption = 'Paises'
          OnClick = mloc_0112Click
        end
        object mloc_0115: TMenuItem
          Caption = 'Regiao'
          OnClick = mloc_0115Click
        end
        object N45: TMenuItem
          Caption = '-'
        end
        object mloc_0107: TMenuItem
          Caption = 'Giro/Rota'
          Visible = False
          OnClick = mloc_0107Click
        end
        object mloc_0109: TMenuItem
          Caption = '&Bairros'
          Visible = False
          OnClick = mloc_0109Click
        end
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
        object mfor_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = mfor_0103Click
        end
        object mfor_0106: TMenuItem
          Caption = '&Compras'
          OnClick = mfor_0106Click
        end
        object N31: TMenuItem
          Caption = '-'
        end
        object mfor_0111: TMenuItem
          Caption = '&Agendamento de Fornecedores'
          OnClick = mfor_0111Click
        end
        object mfor_0109: TMenuItem
          Caption = 'Grupo de Fornecedores'
          OnClick = mfor_0109Click
        end
        object mfor_0110: TMenuItem
          Caption = 'Mudar / &Agrupar Fornecedores'
          OnClick = mfor_0110Click
        end
      end
      object Associados1: TMenuItem
        Caption = '&Clientes'
        object mcli_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = mcli_0103Click
        end
        object mcli_0109: TMenuItem
          Caption = '&Importar Al'#237'quotas'
          Visible = False
          OnClick = mcli_0109Click
        end
        object mcli_0112: TMenuItem
          Caption = 'C&onvenios'
          OnClick = mcli_0112Click
        end
        object mcli_0115: TMenuItem
          Caption = '&Exportar'
          Visible = False
          OnClick = mcli_0115Click
        end
        object mcli_0118: TMenuItem
          Caption = '&Rede de Clientes'
          OnClick = mcli_0118Click
        end
        object mcli_0121: TMenuItem
          Caption = 'R&amo de Atividade'
          OnClick = mcli_0121Click
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object mcli_0125: TMenuItem
          Caption = '&Agendamento de Clientes'
          OnClick = mcli_0125Click
        end
        object mcli_0124: TMenuItem
          Caption = 'Con&tatos'
          OnClick = mcli_0124Click
        end
        object N29: TMenuItem
          Caption = '-'
        end
        object mcli_0106: TMenuItem
          Caption = '&Pedidos'
          OnClick = mcli_0106Click
        end
        object mcli_0130: TMenuItem
          Caption = '&Titulos'
          OnClick = mcli_0130Click
        end
        object N28: TMenuItem
          Caption = '-'
        end
        object Especiais3: TMenuItem
          Caption = '&Especiais'
          object mcli_0133: TMenuItem
            Caption = '&Bloquear Clientes Sem Compras'
            OnClick = mcli_0133Click
          end
          object mcli_0136: TMenuItem
            Caption = 'Mudar/Agrupar C'#243'digos'
            OnClick = mcli_0136Click
          end
          object mcli_0139: TMenuItem
            Caption = 'Gerar Limite de Credito Atrav'#233's do Historico'
            OnClick = mcli_0139Click
          end
        end
      end
      object Vendedor1: TMenuItem
        Caption = '&Vendedores'
        object mven_0103: TMenuItem
          Caption = '&Manuten'#231'ao no Cadastro de Vendedores'
          OnClick = mven_0103Click
        end
        object N64: TMenuItem
          Caption = '-'
        end
        object mven_0112: TMenuItem
          Caption = 'Cota Geral &Mensal de Vendas'
          OnClick = mven_0112Click
        end
        object mven_0118: TMenuItem
          Caption = 'Cota de &Vendas por Fornecedor'
          OnClick = mven_0118Click
        end
        object mven_0121: TMenuItem
          Caption = 'Cota de Vendas por &Produto'
          OnClick = mven_0121Click
        end
        object N57: TMenuItem
          Caption = '-'
        end
        object mven_0106: TMenuItem
          Caption = '&Manuten'#231#227'o no cadastro de Supervisores'
          OnClick = mven_0106Click
        end
        object N58: TMenuItem
          Caption = '-'
        end
        object mven_0109: TMenuItem
          Caption = 'Manuten'#231#227'o no cadastro de Assessores'
          OnClick = mven_0109Click
        end
        object N39: TMenuItem
          Caption = '-'
        end
        object mven_0115: TMenuItem
          Caption = 'Manutencao no Cadastro de Regiao'
          OnClick = mven_0115Click
        end
        object mven_118: TMenuItem
          Caption = 'Planilha de Viagem'
          Visible = False
          OnClick = mven_118Click
        end
      end
      object ransportadora1: TMenuItem
        Caption = '&Transportadora'
        object mtra_0103: TMenuItem
          Caption = '&Manuten'#231'ao'
          OnClick = mtra_0103Click
        end
      end
      object Caixa1: TMenuItem
        Caption = '&Caixa'
        object mcai_0103: TMenuItem
          Caption = '&Bancos/Caixa'
          OnClick = mcai_0103Click
        end
        object mcai_0106: TMenuItem
          Caption = '&Centro de Custo'
          OnClick = mcai_0106Click
        end
        object mcai_0107: TMenuItem
          Caption = 'Composi'#231#227'o D&RE'
        end
        object mcai_0109: TMenuItem
          Caption = '&Departamentos'
          OnClick = mcai_0109Click
        end
        object mcai_0112: TMenuItem
          Caption = '&Lancamentos'
          OnClick = mcai_0112Click
        end
        object mcai_0115: TMenuItem
          Caption = '&Ajustar Caixa c/Centro de Custo'
          OnClick = mcai_0115Click
        end
        object mcai_0118: TMenuItem
          Caption = 'Realizar por Sele'#231#227'o'
          OnClick = mcai_0118Click
        end
        object mcai_0121: TMenuItem
          Caption = '&Transferencia  Entre Contas'
          OnClick = mcai_0121Click
        end
        object mcai_0124: TMenuItem
          Caption = 'Compen&sa'#231#245'es'
          OnClick = mcai_0124Click
        end
        object mcai_0127: TMenuItem
          Caption = '&Lote de Movimento'
          Visible = False
          OnClick = mcai_0127Click
        end
        object N78: TMenuItem
          Caption = '-'
        end
        object mcai_0130: TMenuItem
          Caption = '&Lan'#231'amento Automatico(Despesas Fixas)'
          OnClick = mcai_0130Click
        end
        object N97: TMenuItem
          Caption = '-'
        end
        object mcai_0133: TMenuItem
          Caption = 'Configura'#231#227'o'
          OnClick = mcai_0133Click
        end
        object N98: TMenuItem
          Caption = '-'
        end
        object mcai_0136: TMenuItem
          Caption = 'Provis'#245'es Manualmente'
          OnClick = mcai_0136Click
        end
        object N105: TMenuItem
          Caption = '-'
        end
        object mcai_0137: TMenuItem
          Caption = '&Calcular Burden'
          OnClick = mcai_0137Click
        end
        object mcai_0140: TMenuItem
          Caption = 'Concilia'#231#227'o Bancaria Manual'
          OnClick = mcai_0140Click
        end
        object mcai_0143: TMenuItem
          Caption = 'Concilia'#231#227'o Bancaria Automatica'
          OnClick = mcai_0143Click
        end
      end
      object Industria1: TMenuItem
        Caption = '&Ind'#250'stria'
        object mind_0103: TMenuItem
          Caption = '&Formulas'
          OnClick = mind_0103Click
        end
        object mind_0106: TMenuItem
          Caption = '&Ordem de Produ'#231#227'o'
          OnClick = mind_0106Click
        end
        object mind_0115: TMenuItem
          Caption = 'Ordem de Envase'
          OnClick = mind_0115Click
        end
        object mind_0109: TMenuItem
          Caption = '&Manuten'#231#227'o em Procedimentos'
          OnClick = mind_0109Click
        end
        object mind_0112: TMenuItem
          Caption = 'Produto/Procedimentos'
          Visible = False
        end
        object mind_0118: TMenuItem
          Caption = '&Produtos Fabricados'
          OnClick = mind_0118Click
        end
        object mind_0139: TMenuItem
          Caption = 'Produtos Envasados'
          OnClick = mind_0139Click
        end
        object mind_0121: TMenuItem
          Caption = 'Materias Primas Utilizadas'
          OnClick = mind_0121Click
        end
        object Cont_Prod: TMenuItem
          Caption = '&Controle de Produ'#231#227'o'
          Visible = False
          object mind_0124: TMenuItem
            Caption = '&Manuten'#231#227'o no Controle de Produ'#231#227'o'
            OnClick = mind_0124Click
          end
          object N65: TMenuItem
            Caption = '-'
          end
          object mind_0127: TMenuItem
            Caption = 'Manuten'#231#227'o no Controle de Produ'#231#227'o &Serigrafia'
          end
          object N66: TMenuItem
            Caption = '-'
          end
          object mind_0130: TMenuItem
            Caption = 'Manuten'#231#227'o em Motivo de &Perdas'
            OnClick = mind_0130Click
          end
          object mind_0133: TMenuItem
            Caption = 'Manuten'#231#227'o em &Motivo de Paradas'
            OnClick = mind_0133Click
          end
          object N68: TMenuItem
            Caption = '-'
          end
          object mind_0136: TMenuItem
            Caption = 'Ordem de Servi'#231'o para Troca de Molde'
            OnClick = mind_0136Click
          end
        end
        object mind_0122: TMenuItem
          Caption = '&Relatorio de Produ'#231#245'es'
          OnClick = mind_0122Click
        end
        object mind_0123: TMenuItem
          Caption = 'Relatorio de Evento de Produ'#231'ao'
          OnClick = mind_0123Click
        end
      end
      object Industria_Envase: TMenuItem
        Caption = 'Ind'#250'stria'
        object mIndEnv_0103: TMenuItem
          Caption = 'Formulas'
          OnClick = mIndEnv_0103Click
        end
        object mIndEnv_0106: TMenuItem
          Caption = 'Ordem de Produ'#231#227'o'
          OnClick = mIndEnv_0106Click
        end
        object mIndEnv_0109: TMenuItem
          Caption = 'Produtos Fabricados'
          OnClick = mIndEnv_0109Click
        end
        object mIndEnv_0115: TMenuItem
          Caption = 'Mat'#233'rias Primas Utilizadas'
          OnClick = mIndEnv_0115Click
        end
        object mIndEnv_0116: TMenuItem
          Caption = 'Rela'#231#227'o de Materiais de &Envase'
          OnClick = mIndEnv_0116Click
        end
        object mIndEnv_0117: TMenuItem
          Caption = 'Rela'#231#227'o de Produtos E&xcluidos'
          OnClick = mIndEnv_0117Click
        end
        object RelaodeProdues1: TMenuItem
          Caption = '&Rela'#231#227'o de Produ'#231#245'es'
        end
      end
      object Usurios1: TMenuItem
        Caption = '&Usu'#225'rios/Funcion'#225'rios'
        object musu_0103: TMenuItem
          Caption = '&Manuten'#231#227'o no Cadastro de Usu'#225'rios do Sistema'
          OnClick = musu_0103Click
        end
        object musu_0106: TMenuItem
          Caption = '&Fun'#231#245'es/Cargos'
          OnClick = musu_0106Click
        end
        object musu_0109: TMenuItem
          Caption = '&Senhas'
          OnClick = musu_0109Click
        end
        object N43: TMenuItem
          Caption = '-'
        end
        object musu_0112: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Funcion'#225'rios'
          OnClick = musu_0112Click
        end
      end
      object Diversos1: TMenuItem
        Caption = '&Diversos'
        object mdiv_0103: TMenuItem
          Caption = '&Plano de Vendas'
          OnClick = mdiv_0103Click
        end
        object mdiv_0118: TMenuItem
          Caption = 
            'Parametros p/Ajustar Comissao de Acordo c/Descontos ou Acrescimo' +
            's'
          OnClick = mdiv_0118Click
        end
        object mdiv_0106: TMenuItem
          Caption = '&Comiss'#227'o por Descontos'
          OnClick = mdiv_0106Click
        end
        object mdiv_0109: TMenuItem
          Caption = '&Promo'#231#245'es'
          OnClick = mdiv_0109Click
        end
        object N67: TMenuItem
          Caption = '-'
        end
        object mdiv_0112: TMenuItem
          Caption = '&Aniversariantes'
          OnClick = mdiv_0112Click
        end
        object N70: TMenuItem
          Caption = '-'
        end
        object mdiv_0115: TMenuItem
          Caption = 'Bloqueios'
          Visible = False
          OnClick = mdiv_0115Click
        end
        object N94: TMenuItem
          Caption = '-'
        end
        object mdiv_0121: TMenuItem
          Caption = 'Tipo de Dependentes'
          OnClick = mdiv_0121Click
        end
        object mdiv_0124: TMenuItem
          Caption = 'Sindicato'
          OnClick = mdiv_0124Click
        end
        object N95: TMenuItem
          Caption = '-'
        end
      end
      object folha: TMenuItem
        Caption = 'Folha de P&agamento'
        object mfol_0103: TMenuItem
          Caption = '&Manuten'#231#227'o Funcion'#225'rios'
          OnClick = mfol_0103Click
        end
        object mfol_0106: TMenuItem
          Caption = 'Manuten'#231#227'o &Cargos'
          OnClick = mfol_0106Click
        end
        object mfol_0109: TMenuItem
          Caption = 'Manuten'#231#227'o &Departamentos'
          OnClick = mfol_0109Click
        end
        object mfol_0124: TMenuItem
          Caption = 'Manuten'#231#227'o &Eventos'
          OnClick = mfol_0124Click
        end
        object Relatrios3: TMenuItem
          Caption = '&Relat'#243'rios'
          object mfol_0121: TMenuItem
            Caption = '&Resumo de Pagamentos'
            OnClick = mfol_0121Click
          end
          object mfol_0118: TMenuItem
            Caption = 'R&ecibo de Pagamento'
            OnClick = mfol_0118Click
          end
          object mfol_0133: TMenuItem
            Caption = '&Personalizados'
            OnClick = mfol_0133Click
          end
        end
        object Manut_folha: TMenuItem
          Caption = 'Manuten'#231#227'o &Folha'
          object mfol_0127: TMenuItem
            Caption = '&Gerar'
            OnClick = mfol_0127Click
          end
          object mfol_0130: TMenuItem
            Caption = '&Incluir Lan'#231'amentos Manual'
            OnClick = mfol_0130Click
          end
        end
        object mfol_0115: TMenuItem
          Caption = '&Parametros'
          OnClick = mfol_0115Click
        end
        object mfol_0125: TMenuItem
          Caption = 'Manuten'#231#227'o de Turnos (Hor'#225'rios)'
          OnClick = mfol_0125Click
        end
      end
      object Imobilizados: TMenuItem
        Caption = '&Imobilizados'
        object mimo_0103: TMenuItem
          Caption = '&Manuten'#231#227'o no Cadastro de Imobilizado'
          OnClick = mimo_0103Click
        end
        object mimo_0106: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Tipos de Manuten'#231#245'es'
          OnClick = mimo_0106Click
        end
        object mImo_0109: TMenuItem
          Caption = '&Manuten'#231#245'es'
          OnClick = mImo_0109Click
        end
      end
      object Veiculos: TMenuItem
        Caption = 'Ve'#237'culos/Frota'
        object mvei_0103: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Ve'#237'culos/Frota'
          OnClick = mvei_0103Click
        end
        object mvei_0106: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Tipos de Manuten'#231#245'es'
          OnClick = mvei_0106Click
        end
        object mvei_0109: TMenuItem
          Caption = 'Man&uten'#231#245'es'
          OnClick = mvei_0109Click
        end
      end
      object MoedasIndexadores1: TMenuItem
        Caption = '&Moedas/Indexadores'
        Visible = False
        object mmoe_0103: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Moedas'
          OnClick = mmoe_0103Click
        end
        object mmoe_0106: TMenuItem
          Caption = 'Manuten'#231#227'o no Cadastro de Indexadores'
          OnClick = mmoe_0106Click
        end
      end
    end
    object Relatrios_gerenciais: TMenuItem
      Caption = '&Relat'#243'rios'
      ImageIndex = 1
      object Associados2: TMenuItem
        Caption = '&Clientes'
        object rcli_0103: TMenuItem
          Caption = '&Resumido '
          Visible = False
        end
        object rcli_0106: TMenuItem
          Caption = '&Rela'#231#227'o de Clientes'
          OnClick = rcli_0106Click
        end
        object rcli_0128: TMenuItem
          Caption = 'Relat'#243'rio de Ultima Venda por Cliente'
          OnClick = rcli_0128Click
        end
        object rcli_0109: TMenuItem
          Caption = '&Personalizados'
          OnClick = rcli_0109Click
        end
        object rcli_0112: TMenuItem
          Caption = '&Curva ABC'
          Hint = 'rcli_0112'
          OnClick = rcli_0112Click
        end
        object rcli_0115: TMenuItem
          Caption = '&M'#233'dia Trimestral'
          OnClick = rcli_0115Click
        end
        object rcli_0118: TMenuItem
          Caption = 'Ro&tulo'
          OnClick = rcli_0118Click
        end
        object Rel_Convenio: TMenuItem
          Caption = 'Vendas por &Conv'#234'nios'
          object rcli_0303: TMenuItem
            Caption = '&Anal'#237'tico'
            OnClick = rcli_0303Click
          end
          object rcli_0306: TMenuItem
            Caption = '&Sint'#233'tico'
            OnClick = rcli_0306Click
          end
        end
        object rcli_0121: TMenuItem
          Caption = 'Clientes Sem  Compras'
          OnClick = rcli_0121Click
        end
        object rcli_0122: TMenuItem
          Caption = '&Rela'#231#227'o de Clientes com Pendencia no Cadastro'
          OnClick = rcli_0122Click
        end
        object N71: TMenuItem
          Caption = '-'
        end
        object rcli_0127: TMenuItem
          Caption = 'Etiqueta Impressora Laser'
          OnClick = rcli_0127Click
        end
        object N100: TMenuItem
          Caption = '-'
        end
        object rcli_0130: TMenuItem
          Caption = 'Rela'#231#227'o de Clientes(Portaria)'
          Visible = False
        end
        object ExportarEmailCSV1: TMenuItem
          Caption = '&Exportar Email CSV'
          OnClick = ExportarEmailCSV1Click
        end
      end
      object Fornecedores2: TMenuItem
        Caption = '&Fornecedores'
        object rfor_0121: TMenuItem
          Caption = 'Rela'#231#227'o de Fornecedores'
          OnClick = rfor_0121Click
        end
        object N96: TMenuItem
          Caption = '-'
        end
        object rfor_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rfor_0103Click
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object rfor_0106: TMenuItem
          Caption = 'ABC &Vendas'
          OnClick = rfor_0106Click
        end
        object rfor_0109: TMenuItem
          Caption = 'Vendas &Trimestrais'
          OnClick = rfor_0109Click
        end
        object N12: TMenuItem
          Caption = '-'
        end
        object rfor_0112: TMenuItem
          Caption = 'ABC &Compras'
          OnClick = rfor_0112Click
        end
        object rfor_0115: TMenuItem
          Caption = 'C&ompras Trimestrais'
          OnClick = rfor_0115Click
        end
        object N32: TMenuItem
          Caption = '-'
        end
        object rfor_0118: TMenuItem
          Caption = 'Vendas Por Fornecedor/Grupo'
          OnClick = rfor_0118Click
        end
        object rfor_0124: TMenuItem
          Caption = 'Compras Por Grupo de Fornecedores'
          OnClick = rfor_0124Click
        end
      end
      object Produtos2: TMenuItem
        Caption = '&Produtos'
        object rpro_0103: TMenuItem
          Caption = '&Rel'#225'torio de Pre'#231'os(Impress'#227'o Laser)'
          OnClick = rpro_0103Click
        end
        object rpro_0106: TMenuItem
          Caption = '&Lista de Pre'#231'os'
          OnClick = rpro_0106Click
        end
        object rpro_0109: TMenuItem
          Caption = '&Personalizados'
          OnClick = rpro_0109Click
        end
        object rpro_0121: TMenuItem
          Caption = '&Ajuste de Estoque Personalizado'
          OnClick = rpro_0121Click
        end
        object rpro_0112: TMenuItem
          Caption = '&Extrato 1'
          OnClick = rpro_0112Click
        end
        object rpro_0115: TMenuItem
          Caption = 'E&xtrato 2'
          OnClick = rpro_0115Click
        end
        object rpro_0117: TMenuItem
          Caption = 'Extrato de Produtos'
          OnClick = rpro_0117Click
        end
        object rpro_0116: TMenuItem
          Caption = '&Extrato 3 (Movimenta'#231#227'o Geral)'
          OnClick = rpro_0116Click
        end
        object rpro_0118: TMenuItem
          Caption = '&Media p/Compras'
          Visible = False
          OnClick = rpro_0118Click
        end
        object rpro_0124: TMenuItem
          Caption = 'Registro&s de Psicotropicos'
          Visible = False
          object rpro_0127: TMenuItem
            Caption = 'Vigil'#226'ncia &Estadual'
            OnClick = rpro_0127Click
          end
          object SNGPC: TMenuItem
            Caption = 'SNGPC Para Farmacia e Drogarias'
            object rpro_0129: TMenuItem
              Caption = 'Invent'#225'rio Inicial'
              OnClick = rpro_0129Click
            end
            object rpro_0132: TMenuItem
              Caption = 'Dados da Compra'
            end
            object rpro_0130: TMenuItem
              Caption = 'Dados da Venda'
              OnClick = rpro_0130Click
            end
            object rpro_0131: TMenuItem
              Caption = 'XML - SNGPC Para Farmacia e Drogarias'
              OnClick = rpro_0131Click
            end
          end
        end
        object N80: TMenuItem
          Caption = '-'
        end
        object rpro_0133: TMenuItem
          Caption = 'Rastrear Produtos Por Lot&e'
          Visible = False
          OnClick = rpro_0133Click
        end
        object rpro_0166: TMenuItem
          Caption = 'Rastrear Destino de Produtos'
          OnClick = rpro_0166Click
        end
        object rpro_0169: TMenuItem
          Caption = 'Produtos x Titulos Recebidos'
          OnClick = rpro_0169Click
        end
        object N79: TMenuItem
          Caption = '-'
        end
        object rpro_0136: TMenuItem
          Caption = 'Sugest'#227'o Compras &1'
          OnClick = rpro_0136Click
        end
        object rpro_0184: TMenuItem
          Caption = '&Estoque de Produtos Por Fornecedor+ 2 Ult.Compras'
          OnClick = rpro_0184Click
        end
        object rpro_0157: TMenuItem
          Caption = 'Rela'#231#227'o para Contagem'
          OnClick = rpro_0157Click
        end
        object N26: TMenuItem
          Caption = '-'
        end
        object rpro_0139: TMenuItem
          Caption = 'M'#233'dia &Trimestral Vendas'
          OnClick = rpro_0139Click
        end
        object rpro_0145: TMenuItem
          Caption = 'M'#233'dia Tr&imestral Compras'
          OnClick = rpro_0145Click
        end
        object N27: TMenuItem
          Caption = '-'
        end
        object rpro_0142: TMenuItem
          Caption = 'C&urva ABC Vendas'
          OnClick = rpro_0142Click
        end
        object rpro_0148: TMenuItem
          Caption = 'Cur&va ABC Compras'
          OnClick = rpro_0148Click
        end
        object N30: TMenuItem
          Caption = '-'
        end
        object rpro_0151: TMenuItem
          Caption = '&Resumo de Or'#231'amentos para Compra'
          OnClick = rpro_0151Click
        end
        object N34: TMenuItem
          Caption = '-'
        end
        object rpro_0154: TMenuItem
          Caption = 'Imprimir I&nforma'#231#245'es do Produto'
          Visible = False
          OnClick = rpro_0154Click
        end
        object N51: TMenuItem
          Caption = '-'
          Visible = False
        end
        object rpro_0181: TMenuItem
          Caption = 'Etiqueta de Pre'#231'os'
          OnClick = rpro_0181Click
        end
        object rpro_0187: TMenuItem
          Caption = 'Imprimir Etiqueta Impressora Termica'
          OnClick = rpro_0187Click
        end
        object rpro_0178: TMenuItem
          Caption = 'Comparativo Entrada x Saidas por Periodo'
          OnClick = rpro_0178Click
        end
        object rpro_0160: TMenuItem
          Caption = 'Imprimir C'#243'digos de Barras'
          OnClick = rpro_0160Click
        end
        object rpro_0161: TMenuItem
          Caption = '&Rela'#231#227'o de Lucro por Produto'
          OnClick = rpro_0161Click
        end
        object N104: TMenuItem
          Caption = '-'
        end
        object rpro_0162: TMenuItem
          Caption = 'Grafico &Entrada'
          OnClick = rpro_0162Click
        end
        object rpro_0163: TMenuItem
          Caption = 'Grafico &Saida'
          OnClick = rpro_0163Click
        end
      end
      object Estados2: TMenuItem
        Caption = '&Estados/Cidades/Bairros'
        object rest_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rest_0103Click
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object rest_0106: TMenuItem
          Caption = '&ABC Vendas'
          OnClick = rest_0106Click
        end
        object rest_0109: TMenuItem
          Caption = '&M'#233'dia Vendas'
          OnClick = rest_0109Click
        end
        object N14: TMenuItem
          Caption = '-'
        end
        object rest_0112: TMenuItem
          Caption = 'A&BC Compras'
          OnClick = rest_0112Click
        end
        object rest_0115: TMenuItem
          Caption = 'M'#233'dia &Compras'
          OnClick = rest_0115Click
        end
        object rel_localidades: TMenuItem
          Caption = 'Localidades'
          object rest_0118: TMenuItem
            Caption = '&Personalizados'
            OnClick = rest_0118Click
          end
        end
        object Bairros1: TMenuItem
          Caption = 'Bairros'
          object rest_0121: TMenuItem
            Caption = '&Personalizados'
            OnClick = rest_0121Click
          end
        end
      end
      object iposdeProdutos2: TMenuItem
        Caption = '&Tipos de Produtos'
        object rtpro_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rtpro_0103Click
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object rtpro_0106: TMenuItem
          Caption = '&ABC Vendas'
          OnClick = rtpro_0106Click
        end
        object rtpro_0109: TMenuItem
          Caption = '&M'#233'dia Vendas'
          OnClick = rtpro_0109Click
        end
        object N16: TMenuItem
          Caption = '-'
        end
        object rtpro_0112: TMenuItem
          Caption = 'A&BC Compras'
          OnClick = rtpro_0112Click
        end
        object rtpro_0115: TMenuItem
          Caption = 'M'#233'dia &Compras'
          OnClick = rtpro_0115Click
        end
      end
      object Grupos2: TMenuItem
        Caption = '&Grupos'
        object rgpro_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rgpro_0103Click
        end
        object N17: TMenuItem
          Caption = '-'
        end
        object rgpro_0106: TMenuItem
          Caption = '&ABC Vendas'
          OnClick = rgpro_0106Click
        end
        object rgpro_0109: TMenuItem
          Caption = '&M'#233'dia Vendas'
          OnClick = rgpro_0109Click
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object rgpro_0112: TMenuItem
          Caption = 'ABC &Compras'
          OnClick = rgpro_0112Click
        end
        object rgpro_0115: TMenuItem
          Caption = 'M'#233'&dia Compras'
          OnClick = rgpro_0115Click
        end
      end
      object ControledeProdutos2: TMenuItem
        Caption = 'C&ontrole de Produtos'
        object rcpro_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rcpro_0103Click
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object rcpro_0106: TMenuItem
          Caption = '&ABC Vendas'
          OnClick = rcpro_0106Click
        end
        object rcpro_0109: TMenuItem
          Caption = '&M'#233'dia Vendas'
          OnClick = rcpro_0109Click
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object rcpro_0112: TMenuItem
          Caption = 'A&BC Compras'
          OnClick = rcpro_0112Click
        end
        object rcpro_0115: TMenuItem
          Caption = 'M'#233'dia &Compras'
          OnClick = rcpro_0115Click
        end
      end
      object Gerenciais1: TMenuItem
        Caption = '&Gerenciais'
        object rger_0103: TMenuItem
          Caption = '&Resumo das Mercadorias do Pedido'
          Visible = False
          OnClick = rger_0103Click
        end
        object rger_0106: TMenuItem
          Caption = '&Rela'#231#227'o de Pedidos &Analitico'
          Visible = False
        end
        object rger_0109: TMenuItem
          Caption = '&Balan'#231'o (nao disponivel)'
          Visible = False
        end
        object rger_0112: TMenuItem
          Caption = '&Produtos/Compras'
          Visible = False
        end
        object rger_0115: TMenuItem
          Caption = 'Resumo &Mensal'
          OnClick = rger_0115Click
        end
        object rger_0224: TMenuItem
          Caption = '&Eventos do Sistema'
          OnClick = rger_0224Click
        end
        object Caixa2: TMenuItem
          Caption = '&Caixa'
          object rger_0200: TMenuItem
            Caption = 'P&ersonalizados'
            OnClick = rger_0200Click
          end
          object rger_0209: TMenuItem
            Caption = 'Pr&evisoes x Real'
            OnClick = rger_0209Click
          end
          object rger_0212: TMenuItem
            Caption = 'Re&sumido Departamento'
            OnClick = rger_0212Click
          end
          object rger_0215: TMenuItem
            Caption = 'Res&umido Dep+Centro de Custo'
            OnClick = rger_0215Click
          end
          object rger_0218: TMenuItem
            Caption = '&Analitico'
            OnClick = rger_0218Click
          end
          object rger_0221: TMenuItem
            Caption = 'Resumo &Di'#225'rio'
            OnClick = rger_0221Click
          end
          object rger_0230: TMenuItem
            Caption = 'Resumo &Mensal'
            OnClick = rger_0230Click
          end
          object rger_0245: TMenuItem
            Caption = '&Extrato Banc'#225'rio'
            OnClick = rger_0245Click
          end
          object rger_0248: TMenuItem
            Caption = '&Comparar Saldos entre dois dias'
            OnClick = rger_0248Click
          end
          object N62: TMenuItem
            Caption = '-'
          end
          object rger_0257: TMenuItem
            Caption = 'Resumido Dep.+Centro Custo Trimestral/Anual'
            OnClick = rger_0257Click
          end
          object N81: TMenuItem
            Caption = '-'
          end
          object rger_0260: TMenuItem
            Caption = 'Relat'#243'rio Sint'#233'tico'
            OnClick = rger_0260Click
          end
          object rger_0261: TMenuItem
            Caption = '&Modelo Grafico - Centro de Custo'
            OnClick = rger_0261Click
          end
          object rger_0262: TMenuItem
            Caption = 'M&odelo Grafico - Departamento'
            OnClick = rger_0262Click
          end
          object rger_0265: TMenuItem
            Caption = 'Movimento Di'#225'rio'
            OnClick = rger_0265Click
          end
        end
        object rger_0227: TMenuItem
          Caption = '&Personalizados'
          OnClick = rger_0227Click
        end
        object rger_0233: TMenuItem
          Caption = 'Compras X Vendas'
          Visible = False
          OnClick = rger_0233Click
        end
        object rger_0236: TMenuItem
          Caption = 'Vendas X Compras/Despesas'
          Visible = False
          OnClick = rger_0236Click
        end
        object N25: TMenuItem
          Caption = '-'
        end
        object rger_0239: TMenuItem
          Caption = '&Entradas Comparado a Sa'#237'da'
          OnClick = rger_0239Click
        end
        object rger_0242: TMenuItem
          Caption = '&Saidas Comparado a Entrada'
          OnClick = rger_0242Click
        end
        object N54: TMenuItem
          Caption = '-'
        end
        object rger_0251: TMenuItem
          Caption = '&Resumo do Faturamento(Fechamento)'
          OnClick = rger_0251Click
        end
        object N55: TMenuItem
          Caption = '-'
        end
        object rger_0254: TMenuItem
          Caption = '&Fluxo de Pagamentos/Dep'#243'sitos'
          OnClick = rger_0254Click
        end
        object N89: TMenuItem
          Caption = '-'
        end
        object rger_0263: TMenuItem
          Caption = 'Super Gerente'
          Visible = False
          OnClick = rger_0263Click
        end
        object N93: TMenuItem
          Caption = '-'
        end
        object rger_0266: TMenuItem
          Caption = 'Balan'#231'o de Produtos por Colunas de Per'#237'odo'
          OnClick = rger_0266Click
        end
      end
      object Vendedores2: TMenuItem
        Caption = '&Vendedores'
        object rven_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rven_0103Click
        end
        object Comissesporvenda1: TMenuItem
          Caption = '&Comiss'#245'es por venda'
          object rven_0118: TMenuItem
            Caption = 'Comiss'#245'es do &Vendedor'
            OnClick = rven_0118Click
          end
          object rven_0121: TMenuItem
            Caption = 'Comiss'#245'es do &Supervisor'
            OnClick = rven_0121Click
          end
          object rven_0124: TMenuItem
            Caption = 'Comiss'#245'es do &Televendas'
            OnClick = rven_0124Click
          end
          object rven_0133: TMenuItem
            Caption = 'Comiss'#227'o do &Assessor'
            OnClick = rven_0133Click
          end
          object N102: TMenuItem
            Caption = '-'
          end
          object rven_0156: TMenuItem
            Caption = 'Rela'#231#227'o das Vendas Separados Itens por Vendedor'
            OnClick = rven_0156Click
          end
        end
        object Comissesporrecebimento1: TMenuItem
          Caption = 'Comiss'#245'es por &recebimento'
          object rven_0106: TMenuItem
            Caption = 'Comiss'#245'es do &Vendedor'
            OnClick = rven_0106Click
          end
          object rven_0109: TMenuItem
            Caption = 'Comiss'#245'es do &Supervisor'
            OnClick = rven_0109Click
          end
          object rven_0112: TMenuItem
            Caption = 'Comiss'#245'es do &Televendas'
            OnClick = rven_0112Click
          end
          object rven_0130: TMenuItem
            Caption = 'Comiss'#227'o do &Assessor'
            OnClick = rven_0130Click
          end
        end
        object rven_0127: TMenuItem
          Caption = '&Curva ABC'
          OnClick = rven_0127Click
        end
        object rven_0115: TMenuItem
          Caption = '&Vendas Trimestrais'
          OnClick = rven_0115Click
        end
        object rven_0136: TMenuItem
          Caption = 'Descontos Concedidos'
          Visible = False
        end
        object N87: TMenuItem
          Caption = '-'
        end
        object rven_0142: TMenuItem
          Caption = 'Relat'#243'rio de Vendas c/Comiss'#245'es e Cotas'
          OnClick = rven_0142Click
        end
        object rven_0148: TMenuItem
          Caption = 'Relatorio de Duplicatas com Comiss'#227'o'
          OnClick = rven_0148Click
        end
        object N75: TMenuItem
          Caption = '-'
        end
        object rven_0145: TMenuItem
          Caption = 'Relat'#243'rio de Vendas por Grupo de Fornecedores e Cotas'
          OnClick = rven_0145Click
        end
        object N40: TMenuItem
          Caption = '-'
        end
        object rven_0151: TMenuItem
          Caption = 'Curva ABC por Assessor'
          OnClick = rven_0151Click
        end
        object N41: TMenuItem
          Caption = '-'
        end
        object rven_0153: TMenuItem
          Caption = 'Demonstrativo de Comiss'#227'o por Vendedor'
          Visible = False
          OnClick = rven_0153Click
        end
        object RelatrioComparativodeComisses1: TMenuItem
          Caption = 'Relat'#243'rio Comparativo de Comiss'#245'es'
          Visible = False
        end
        object rven_0152: TMenuItem
          Caption = '&Grafico'
          OnClick = rven_0152Click
        end
        object rven_0154: TMenuItem
          Caption = 'Com&iss'#227'o por Produto'
          OnClick = rven_0154Click
        end
      end
      object ransportadoras1: TMenuItem
        Caption = '&Transportadoras'
        object rtra_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rtra_0103Click
        end
        object rtra_0104: TMenuItem
          Caption = '&Rela'#231#227'o de Mercadorias para Entrega'
          OnClick = rtra_0104Click
        end
      end
      object Usurios2: TMenuItem
        Caption = '&Usu'#225'rios'
        object rusu_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rusu_0103Click
        end
      end
      object Bancos2: TMenuItem
        Caption = '&Bancos'
        object rbco_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rbco_0103Click
        end
      end
      object CargosFuncoes1: TMenuItem
        Caption = 'C&argos/Funcoes'
        object rfun_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rfun_0103Click
        end
      end
      object PlanodeVendas2: TMenuItem
        Caption = 'P&lano de Vendas'
        object rpv_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rpv_0103Click
        end
      end
      object CentrodeCustos1: TMenuItem
        Caption = 'Ce&ntro de Custos'
        object rccu_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rccu_0103Click
        end
      end
      object Departamentos2: TMenuItem
        Caption = '&Departamentos'
        object rdep_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rdep_0103Click
        end
      end
      object MovimentodoCaixa1: TMenuItem
        Caption = '&Movimento do Caixa'
        object rcai_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = rcai_0103Click
        end
      end
      object PedidosdeFornecedores1: TMenuItem
        Caption = '&Pedidos de Fornecedores'
        object rpfor_0101: TMenuItem
          Caption = '&Personalizados'
          OnClick = rpfor_0101Click
        end
        object rpfor_0103: TMenuItem
          Caption = '&Relat'#243'rio Resumido de Pedido de Fornecedor'
          OnClick = rpfor_0103Click
        end
      end
      object PedidosdeVendas1: TMenuItem
        Caption = 'P&edidos de Vendas'
        object PendenciasdePedidos1: TMenuItem
          Caption = '&Pendencias de Pedidos'
          object rped_0301: TMenuItem
            Caption = '&Personalizados'
            OnClick = rped_0301Click
          end
        end
        object rped_0103: TMenuItem
          Caption = 'Relat'#243'rio Analitico'
          OnClick = rped_0103Click
        end
        object rped_0109: TMenuItem
          Caption = '&Resumo das Quantidade por Pedido'
          OnClick = rped_0109Click
        end
        object rped_0101: TMenuItem
          Caption = '&Personalizados'
          OnClick = rped_0101Click
        end
        object rped_0112: TMenuItem
          Caption = 'Relat'#243'rio de Pedidos x Encargos'
          Visible = False
          OnClick = rped_0112Click
        end
        object rped_0115: TMenuItem
          Caption = '&Resumo das Formas de Pagamento dos Pedidos'
          OnClick = rped_0115Click
        end
        object rped_0118: TMenuItem
          Caption = 'Relat'#243'rio Analitico de Pedidos c/Formas'
          OnClick = rped_0118Click
        end
        object rped_0119: TMenuItem
          Caption = 'Relat'#243'rio de N&otas Fiscais de Saida'
          OnClick = rped_0119Click
        end
        object rped_0120: TMenuItem
          Caption = '&Relatorio de Cupons/Itens Cancelados'
          OnClick = rped_0120Click
        end
        object rped_0121: TMenuItem
          Caption = 'R&elatorio de Consiguina'#231#245'es Pendentes'
          OnClick = rped_0121Click
        end
      end
      object RamodeProduto1: TMenuItem
        Caption = '&Ramo de Produto'
        object rrpro_0103: TMenuItem
          Caption = '&Personalizado'
          OnClick = rrpro_0103Click
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object rrpro_0106: TMenuItem
          Caption = '&ABC Vendas'
          OnClick = rrpro_0106Click
        end
        object rrpro_0109: TMenuItem
          Caption = '&M'#233'dia Vendas'
          OnClick = rrpro_0109Click
        end
        object N22: TMenuItem
          Caption = '-'
        end
        object rrpro_0112: TMenuItem
          Caption = 'A&BC Compras'
          OnClick = rrpro_0112Click
        end
        object rrpro_0115: TMenuItem
          Caption = 'M'#233'dia &Compras'
          OnClick = rrpro_0115Click
        end
      end
      object rel_imobilizados: TMenuItem
        Caption = 'Imobilizados'
        object rimo_0103: TMenuItem
          Caption = 'Imobilizados Personalizados'
          OnClick = rimo_0103Click
        end
        object rimo_0106: TMenuItem
          Caption = 'Manuten'#231#245'es Personalizados'
          OnClick = rimo_0106Click
        end
      end
      object rel_veiculos: TMenuItem
        Caption = 'Ve'#237'culos/Frota'
        object rvei_0103: TMenuItem
          Caption = 'Veiculos Personalizados'
          OnClick = rvei_0103Click
        end
        object rvei_0106: TMenuItem
          Caption = 'Manuten'#231#245'es Personalizados'
          OnClick = rvei_0106Click
        end
      end
      object Moeda1: TMenuItem
        Caption = '&Moeda'
        object rmoe_0103: TMenuItem
          Caption = 'Personalizados'
          OnClick = rmoe_0103Click
        end
      end
      object rel_OrdemServico: TMenuItem
        Caption = '&Ordem de Servi'#231'os'
        object ros_0103: TMenuItem
          Caption = '&Personalizados'
          OnClick = ros_0103Click
        end
      end
      object Diversos2: TMenuItem
        Caption = '&Diversos'
        object rdiv_0103: TMenuItem
          Caption = '&Aniversariantes'
          OnClick = rdiv_0103Click
        end
      end
      object Industria2: TMenuItem
        Caption = '&Industria'
        object rind_0103: TMenuItem
          Caption = 'Relatorio de Produ'#231#227'o'
          OnClick = rind_0103Click
        end
        object rind_0106: TMenuItem
          Caption = 'Relat'#243'rio de Inventario(Controle do Estoque)'
          OnClick = rind_0106Click
        end
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcion'#225'rios'
        object rfun_0001: TMenuItem
          Caption = 'Personalizados'
          OnClick = rfun_0001Click
        end
      end
      object rel_0103: TMenuItem
        Caption = 'Gerar C'#243'digo de Barras Sequenciais'
        OnClick = rel_0103Click
      end
    end
    object Estatsticas1: TMenuItem
      Caption = '&Estat'#237'sticas'
      ImageIndex = 2
      Visible = False
      object Produtos: TMenuItem
        Caption = '&Produtos'
        object est_0103: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0103Click
        end
        object est_0106: TMenuItem
          Caption = '&Saidas'
          OnClick = est_0106Click
        end
      end
      object Fornecedores: TMenuItem
        Caption = '&Fornecedores'
        object est_0109: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0109Click
        end
        object est_0124: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0124Click
        end
      end
      object clientes: TMenuItem
        Caption = '&Clientes'
        object est_0112: TMenuItem
          Caption = '&Vendas Por Cliente'
          OnClick = est_0112Click
        end
        object est_0118: TMenuItem
          Caption = 'Vendas Por &Rede'
          OnClick = est_0118Click
        end
        object est_0121: TMenuItem
          Caption = 'Vendas por &Conv'#234'nios'
          OnClick = est_0121Click
        end
      end
      object est_0115: TMenuItem
        Caption = '&Personalizados'
        OnClick = est_0115Click
      end
      object Estado1: TMenuItem
        Caption = '&Estado'
        object est_0127: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0127Click
        end
        object est_0130: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0130Click
        end
      end
      object iposdeProdutos1: TMenuItem
        Caption = '&Tipos de Produtos'
        object est_0133: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0133Click
        end
        object est_0136: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0136Click
        end
      end
      object GruposdeProdutos1: TMenuItem
        Caption = 'Grupos de Produtos'
        object est_0139: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0139Click
        end
        object est_0142: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0142Click
        end
      end
      object est_0145: TMenuItem
        Caption = '&Vendedores'
        OnClick = est_0145Click
      end
      object est_0148: TMenuItem
        Caption = '&Supervisores'
        OnClick = est_0148Click
      end
      object Empresa1: TMenuItem
        Caption = '&Empresa'
        object est_0151: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0151Click
        end
        object est_0154: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0154Click
        end
      end
      object RamodeProdutos1: TMenuItem
        Caption = '&Ramo de Produtos'
        object est_0157: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0157Click
        end
        object est_0160: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0160Click
        end
      end
      object ControlesdeProdutos1: TMenuItem
        Caption = '&Controles de Produtos'
        object est_0163: TMenuItem
          Caption = '&Entradas'
          OnClick = est_0163Click
        end
        object est_0166: TMenuItem
          Caption = '&Sa'#237'das'
          OnClick = est_0166Click
        end
      end
    end
    object Saidas1: TMenuItem
      Caption = '&Faturamento'
      ImageIndex = 3
      object sai_0103: TMenuItem
        Caption = '&Manutencao'
        OnClick = sai_0103Click
      end
      object sai_0202: TMenuItem
        Caption = '&Sobras / Devolu'#231#245'es'
        OnClick = sai_0202Click
      end
      object sai_0203: TMenuItem
        Caption = 'Controle de &Qualidade'
        OnClick = sai_0203Click
      end
      object sai_0109: TMenuItem
        Caption = '&Conferencia Eletronica'
        OnClick = sai_0109Click
      end
      object sai_0112: TMenuItem
        Caption = '&Emitir Cupom Fiscal'
        OnClick = sai_0112Click
      end
      object sai_0148: TMenuItem
        Caption = 'Par&ticionar Pedido'
        OnClick = sai_0148Click
      end
      object sai_0127: TMenuItem
        Caption = 'Cai&xa'
        OnClick = sai_0127Click
      end
      object sai_0157: TMenuItem
        Caption = 'Recibo Comodato'
        Visible = False
        OnClick = sai_0157Click
      end
      object sai_0128: TMenuItem
        Caption = 'Remessas e Devolu'#231#245'es'
        OnClick = sai_0128Click
      end
      object sai_0142: TMenuItem
        Caption = '&Emitir Nota por Intervalo'
        OnClick = sai_0142Click
      end
      object sai_0115: TMenuItem
        Caption = '&Remessa/Devolu'#231'oes'
        Visible = False
        OnClick = sai_0115Click
      end
      object Licitacoes: TMenuItem
        Caption = '&Licitacoes'
        object sai_0118: TMenuItem
          Caption = 'Manuten'#231#245'es'
          OnClick = sai_0118Click
        end
      end
      object sai_0121: TMenuItem
        Caption = '&Faturar &Empr'#233'stimos'
        OnClick = sai_0121Click
      end
      object sai_0122: TMenuItem
        Caption = '&Faturar Ped. Eletronico'
        OnClick = sai_0122Click
      end
      object sai_0193: TMenuItem
        Caption = '&Previsao de Corte(Pendencias)'
        OnClick = sai_0193Click
      end
      object sai_0133: TMenuItem
        Caption = 'C&onsultar Pedidos'
        OnClick = sai_0133Click
      end
      object sai_0136: TMenuItem
        Caption = '&Manipula Volumes'
        OnClick = sai_0136Click
      end
      object sai_0154: TMenuItem
        Caption = 'Etiqueta de Volumes por Pedido'
        OnClick = sai_0154Click
      end
      object sai_0139: TMenuItem
        Caption = '&Etiquetas de Volumes por Periodo'
        OnClick = sai_0139Click
      end
      object sai_0184: TMenuItem
        Caption = 'Parametros(Origem do Pedido)'
        OnClick = sai_0184Click
      end
      object sai_0145: TMenuItem
        Caption = '&Troca de Mercadorias'
        OnClick = sai_0145Click
      end
      object sai_0151: TMenuItem
        Caption = 'Pedidos Pendentes/&Bloqueados'
        OnClick = sai_0151Click
      end
      object consembprod: TMenuItem
        Caption = 'Consigna'#231'oes Embalagens/Produtos'
        object sai_0187: TMenuItem
          Caption = 'Manuten'#231#227'o'
          OnClick = sai_0187Click
        end
        object sai_0190: TMenuItem
          Caption = 'Relat'#243'rios'
        end
      end
      object DispositivosMveis1: TMenuItem
        Caption = '&Dispositivos M'#243'veis'
        object sis_0612: TMenuItem
          Caption = '&Exportar dados'
          OnClick = sis_0612Click
        end
        object sis_0615: TMenuItem
          Caption = '&Importar dados'
          OnClick = sis_0615Click
        end
        object N88: TMenuItem
          Caption = '-'
        end
        object Mensagem1: TMenuItem
          Caption = 'Mensagem'
          object sis_0903: TMenuItem
            Caption = 'Escrever'
            OnClick = sis_0903Click
          end
          object sis_0906: TMenuItem
            Caption = 'Enviadas'
          end
          object sis_0909: TMenuItem
            Caption = 'Recebidas'
          end
        end
        object N49: TMenuItem
          Caption = '-'
        end
        object sis_0621: TMenuItem
          Caption = '&Recebimentos'
          OnClick = sis_0621Click
        end
        object N47: TMenuItem
          Caption = '-'
        end
        object sis_0618: TMenuItem
          Caption = '&Configura'#231#245'es'
          OnClick = sis_0618Click
        end
      end
      object Minuta: TMenuItem
        Caption = 'Minuta de Entre&ga'
        object sai_0106: TMenuItem
          Caption = 'Minuta de Entrega por &Pedido'
          OnClick = sai_0106Click
        end
        object sai_0160: TMenuItem
          Caption = '&Minuta 02'
          OnClick = sai_0160Click
        end
        object sai_0181: TMenuItem
          Caption = 'Relatorio de Pedidos da Minuta'
          OnClick = sai_0181Click
        end
        object sai_0196: TMenuItem
          Caption = '&Confirmacao de Entrega'
          OnClick = sai_0196Click
        end
        object N83: TMenuItem
          Caption = '-'
        end
        object conhecimento: TMenuItem
          Caption = 'Entrega por Mercadorias(Conhecimento)'
          object sai_0163: TMenuItem
            Caption = 'Manuten'#231#227'o(Entrega Parcial)'
            OnClick = sai_0163Click
          end
          object sai_0166: TMenuItem
            Caption = 'Manuten'#231#227'o(Entrega Total'
            Visible = False
            OnClick = sai_0166Click
          end
          object sai_0172: TMenuItem
            Caption = 'Confirmar Entrega'
            OnClick = sai_0172Click
          end
          object sai_0169: TMenuItem
            Caption = 'Relat'#243'rio Conhecimento(Analitico)'
            OnClick = sai_0169Click
          end
          object sai_0175: TMenuItem
            Caption = 'Produtos a Entregar(Sint'#233'tico)'
            OnClick = sai_0175Click
          end
          object sai_0178: TMenuItem
            Caption = 'Relatorio de Conhecimento(Sint'#233'tico)'
            OnClick = sai_0178Click
          end
        end
        object N38: TMenuItem
          Caption = '-'
        end
        object sai_0199: TMenuItem
          Caption = 'Expedi'#231#227'o(Checkout Saida)'
          Visible = False
        end
      end
      object romaneio: TMenuItem
        Caption = 'Romanei&o'
        object sai_0124: TMenuItem
          Caption = 'Manutencao'
          OnClick = sai_0124Click
        end
      end
      object os: TMenuItem
        Caption = '&Ordem de Servi'#231'o'
        object mos_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = mos_0103Click
        end
        object SAC1: TMenuItem
          Caption = '&SAC - Servi'#231'o de Atendimento ao Cliente'
        end
        object mos_0106: TMenuItem
          Caption = '&Consultas'
          OnClick = mos_0106Click
        end
        object N48: TMenuItem
          Caption = '-'
        end
        object contratos: TMenuItem
          Caption = 'Contratos Presta'#231#245'es de Servi'#231'os'
          object mos_0109: TMenuItem
            Caption = '&Manuten'#231#227'o'
            OnClick = mos_0109Click
          end
          object mos_0115: TMenuItem
            Caption = '&Faturas'
            OnClick = mos_0115Click
          end
          object N76: TMenuItem
            Caption = '-'
          end
          object mos_0118: TMenuItem
            Caption = 'Configurar Contrato'
            OnClick = mos_0118Click
          end
        end
        object N61: TMenuItem
          Caption = '-'
        end
        object mos_0112: TMenuItem
          Caption = 'Relat'#243'rio Resumido de OS'
          OnClick = mos_0112Click
        end
        object N59: TMenuItem
          Caption = '-'
        end
        object mos_0121: TMenuItem
          Caption = 'Contrato de Loca'#231#245'es'
          OnClick = mos_0121Click
        end
      end
      object ParametrosConfiguraes1: TMenuItem
        Caption = 'Parametros(Configura'#231#245'es)'
        object saiconf_0103: TMenuItem
          Caption = 'Configura'#231#227'o de Or'#231'amento por Ambiente(word)'
          OnClick = saiconf_0103Click
        end
        object saiconf_0106: TMenuItem
          Caption = 'Configura'#231#227'o de Or'#231'amento Normal (Word)'
          OnClick = saiconf_0106Click
        end
        object saiconf_0109: TMenuItem
          Caption = 'Configura'#231#227'o da Lista de Separa'#231#227'o(Word)'
          OnClick = saiconf_0109Click
        end
        object saiconf_0112: TMenuItem
          Caption = 'Configura'#231#227'o/Lista Separa'#231#227'o Or'#231'amento(Richedit)'
          OnClick = saiconf_0112Click
        end
        object saiconf_0115: TMenuItem
          Caption = 'Recalcular Comiss'#227'o do Pedido'
          OnClick = saiconf_0115Click
        end
        object saiconf_0118: TMenuItem
          Caption = 'Configuracao Ordem Produ'#231#227'o do Pedido'
          OnClick = saiconf_0118Click
        end
        object saiconf_0119: TMenuItem
          Caption = '&Configura'#231#227'o de Contrato de Venda'
          OnClick = saiconf_0119Click
        end
      end
      object sai_0152: TMenuItem
        Caption = 'Fabrica'#231#227'o por Encomenda'
        OnClick = sai_0152Click
      end
      object ManipularItensdoPedido1: TMenuItem
        Caption = '&Manipular Itens do Pedido'
      end
      object sai_0204: TMenuItem
        Caption = '&Registro de Reclama'#231#245'es'
        OnClick = sai_0204Click
      end
    end
    object LivrosFiscais1: TMenuItem
      Caption = 'Fiscais'
      ImageIndex = 4
      object RegistroEntrada1: TMenuItem
        Caption = '&Registro Entrada'
        object rent_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = rent_0103Click
        end
      end
      object RegistroSaidas1: TMenuItem
        Caption = 'Registro &Saidas'
        object rsai_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = rsai_0103Click
        end
        object rsai_0106: TMenuItem
          Caption = 'Notas Fiscais Complementar de Impostos'
          OnClick = rsai_0106Click
        end
        object rsai_0109: TMenuItem
          Caption = '&Manuten'#231#227'o nos dados do Cliente Cupom Fiscal'
          OnClick = rsai_0109Click
        end
        object rsai_0112: TMenuItem
          Caption = 'Salvar XML para Cliente'
          OnClick = rsai_0112Click
        end
        object rsai_0115: TMenuItem
          Caption = 'Ocorrencia de ecf'
          OnClick = rsai_0115Click
        end
      end
      object GNRE1: TMenuItem
        Caption = 'GNRE'
        object gnre0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = gnre0103Click
        end
      end
      object cfo_0103: TMenuItem
        Caption = '&Manuten'#231'ao CFOP'
        OnClick = cfo_0103Click
      end
      object lf_0151: TMenuItem
        Caption = 'Classifica'#231'ao Fiscal / Tabela de Icms'
        OnClick = lf_0151Click
      end
      object LivrosFiscais2: TMenuItem
        Caption = '&Livros Fiscais'
        object lf_0103: TMenuItem
          Caption = '&Livro de Entrada'
          OnClick = lf_0103Click
        end
        object lf_0106: TMenuItem
          Caption = '&Livro de Saidas'
          OnClick = lf_0106Click
        end
        object lf_0109: TMenuItem
          Caption = '&Apuracao ICMS'
          OnClick = lf_0109Click
        end
        object lf_0148: TMenuItem
          Caption = 'Pis/Cofins Produtos'
          OnClick = lf_0148Click
        end
        object N23: TMenuItem
          Caption = '-'
        end
        object lf_0124: TMenuItem
          Caption = '&Carta de Corre'#231#227'o'
          OnClick = lf_0124Click
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object lf_0112: TMenuItem
          Caption = '&Sintegra'
          OnClick = lf_0112Click
        end
        object lf_0136: TMenuItem
          Caption = 'Corrigir &Pedido de Compra'
          OnClick = lf_0136Click
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object inventario: TMenuItem
          Caption = 'Invent'#225'rio de Mercadorias'
          object lf_0121: TMenuItem
            Caption = '&Invent'#225'rio por Produto'
            OnClick = lf_0121Click
          end
          object lf_0142: TMenuItem
            Caption = 'I&nvent'#225'rio por Grade'
            OnClick = lf_0142Click
          end
          object lf_0145: TMenuItem
            Caption = '&Comparar Invent'#225'rio'
            OnClick = lf_0145Click
          end
        end
        object N10: TMenuItem
          Caption = '-'
        end
        object lf_0127: TMenuItem
          Caption = 'Relat'#243'rio de Notas de Sa'#237'das p/Confer'#234'ncia'
          OnClick = lf_0127Click
        end
        object lf_0130: TMenuItem
          Caption = 'Relat'#243'rio de Notas de Entradas p/Confer'#234'ncia'
          OnClick = lf_0130Click
        end
        object N37: TMenuItem
          Caption = '-'
        end
        object lf_0115: TMenuItem
          Caption = '&Relat'#243'rios de Notas de Saidas Personalizados'
          OnClick = lf_0115Click
        end
        object lf_0118: TMenuItem
          Caption = 'Rel'#225'torios &de Notas de Entradas Personalizados'
          OnClick = lf_0118Click
        end
        object N90: TMenuItem
          Caption = '-'
        end
        object lf_0154: TMenuItem
          Caption = 'Compra Legal(Estado da Bahia)'
          OnClick = lf_0154Click
        end
      end
      object Exportaes1: TMenuItem
        Caption = 'Exporta'#231#245'es'
        object lf_0133: TMenuItem
          Caption = 'Exporta'#231#227'o(Tron)'
          OnClick = lf_0133Click
        end
        object lf_0139: TMenuItem
          Caption = 'Exporta'#231#227'o(Contabilidade 01)'
          OnClick = lf_0139Click
        end
      end
      object lf_0157_menu: TMenuItem
        Caption = 'Programas SPED'
        object lf_0157: TMenuItem
          Caption = '&EFD Escritura'#231#227'o Fiscal Digital(SPED)'
          OnClick = lf_0157Click
        end
        object lf_0160: TMenuItem
          Caption = '&EFD - PIS COFINS Escritura'#231#227'o Fiscal Digital  Pis Cofins(SPED)'
          OnClick = lf_0160Click
        end
        object lf_0163: TMenuItem
          Caption = '&EFD - Escritura'#231#227'o Fiscal Digital (SPED) - nova rotina'
          OnClick = lf_0163Click
        end
        object lf_0166: TMenuItem
          Caption = 'Livro Eletronico (DF)'
          OnClick = lf_0166Click
        end
      end
      object GerarArquivos1: TMenuItem
        Caption = 'Gerar Arquivos Revenda de ECF '
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Fina&nceiro'
      ImageIndex = 5
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a &Receber'
        object cr_0103: TMenuItem
          Caption = '&Manuten'#231'ao'
          OnClick = cr_0103Click
        end
        object BaixaDuplicatas1: TMenuItem
          Caption = '&Baixa Duplicatas'
          object cr_0303: TMenuItem
            Caption = '&Baixa'
            OnClick = cr_0303Click
          end
          object cr_0306: TMenuItem
            Caption = '&Cancelamento'
            OnClick = cr_0306Click
          end
          object cr_0309: TMenuItem
            Caption = '&Relat'#243'rios'
            OnClick = cr_0309Click
          end
          object cr_0312: TMenuItem
            Caption = 'R&esumo por Forma'
            OnClick = cr_0312Click
          end
          object cr_0315: TMenuItem
            Caption = '&Baixar Devolu'#231#245'es'
            OnClick = cr_0315Click
          end
          object N60: TMenuItem
            Caption = '-'
          end
          object cr_0318: TMenuItem
            Caption = '&Efetuar Baixas Atrav'#233's das Formas dos Pedidos'
            OnClick = cr_0318Click
          end
        end
        object Relatorios1: TMenuItem
          Caption = '&Relatorios'
          object cr_0203: TMenuItem
            Caption = '&Personalizados'
            OnClick = cr_0203Click
          end
          object cr_0206: TMenuItem
            Caption = '&Emite Duplicatas'
            OnClick = cr_0206Click
          end
          object cr_0209: TMenuItem
            Caption = 'Emiss'#227'o Boletos Bancarios'
            OnClick = cr_0209Click
          end
          object cr_0215: TMenuItem
            Caption = 'Relat'#243'rio p/Cobran'#231'a'
            OnClick = cr_0215Click
          end
          object cartadecobranca: TMenuItem
            Caption = '&Carta de Cobran'#231'a'
            object cr_0218: TMenuItem
              Caption = '&T'#237'tulos'
              OnClick = cr_0218Click
            end
            object cr_0221: TMenuItem
              Caption = '&Juros'
              OnClick = cr_0221Click
            end
          end
          object cr_0224: TMenuItem
            Caption = '&Bordero de Recebimento'
            OnClick = cr_0224Click
          end
          object cr_0212: TMenuItem
            Caption = 'Relat'#243'rio Analitico'
            OnClick = cr_0212Click
          end
          object cr_0230: TMenuItem
            Caption = 'Relat'#243'rio Sint'#233'tico'
            OnClick = cr_0230Click
          end
          object N84: TMenuItem
            Caption = '-'
          end
          object cr_0233: TMenuItem
            Caption = 'Levantamento di'#225'rio'
            OnClick = cr_0233Click
          end
          object cr_0236: TMenuItem
            Caption = '&Resumo das Formas de Pagamento dos Pedidos'
          end
          object cr_0239: TMenuItem
            Caption = 'Posi'#231#227'o da Carteira'
            OnClick = cr_0239Click
          end
          object N50: TMenuItem
            Caption = '-'
          end
          object cr_0242: TMenuItem
            Caption = 'Recebimento por Cart'#227'o(Rede)'
            OnClick = cr_0242Click
          end
        end
        object ChequesdeClientes1: TMenuItem
          Caption = '&Cheques de Clientes'
          object rcr_0106: TMenuItem
            Caption = '&Manuten'#231#227'o'
            OnClick = rcr_0106Click
          end
          object Relatrios2: TMenuItem
            Caption = '&Relat'#243'rios'
            object rcr_0109: TMenuItem
              Caption = 'Relat'#243'rio 1'
              OnClick = rcr_0109Click
            end
          end
          object Baixas1: TMenuItem
            Caption = '&Baixas'
            object rcr_0112: TMenuItem
              Caption = '&Manuten'#231#227'o'
              OnClick = rcr_0112Click
            end
          end
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object rcr_0115: TMenuItem
          Caption = '&Hist'#243'rico de Clientes'
          OnClick = rcr_0115Click
        end
        object N56: TMenuItem
          Caption = '-'
        end
        object rcr_0118: TMenuItem
          Caption = 'Agrupar Duplicatas'
          OnClick = rcr_0118Click
        end
        object N33: TMenuItem
          Caption = '-'
        end
        object rcr_0121: TMenuItem
          Caption = 'C'#225'lculos Vencimentos/Pagamentos'
          OnClick = rcr_0121Click
        end
        object N69: TMenuItem
          Caption = '-'
        end
        object CobranaIntercmbioEletroni1: TMenuItem
          Caption = '&Cobran'#231'a Eletronica'
          object rcr_0124: TMenuItem
            Caption = '&Remessa'
            OnClick = rcr_0124Click
          end
          object rcr_0127: TMenuItem
            Caption = 'R&etorno'
            OnClick = rcr_0127Click
          end
        end
        object N86: TMenuItem
          Caption = '-'
        end
        object rcr_0130: TMenuItem
          Caption = 'Gerar T'#237'tulos Financeira Agrupado'
          OnClick = rcr_0130Click
        end
        object N91: TMenuItem
          Caption = '-'
        end
        object rcr_0139: TMenuItem
          Caption = 'Relatorio de Baixas Separado por Banco'
          OnClick = rcr_0139Click
        end
        object cr_0928: TMenuItem
          Caption = 'Arquivos Serasa'
          OnClick = cr_0928Click
        end
      end
      object ContasaPagar1: TMenuItem
        Caption = '&Contas a Pagar'
        object cp_0103: TMenuItem
          Caption = '&Manuten'#231#227'o'
          OnClick = cp_0103Click
        end
        object BaixadeDuplicatas1: TMenuItem
          Caption = '&Baixa de Duplicatas'
          object cp_0203: TMenuItem
            Caption = '&Baixa c/Formas'
            OnClick = cp_0203Click
          end
          object cp_0206: TMenuItem
            Caption = '&Exclus'#227'o de Baixas'
            OnClick = cp_0206Click
          end
          object cp_0209: TMenuItem
            Caption = 'Relat'#243'rio '
            OnClick = cp_0209Click
          end
          object cp_0212: TMenuItem
            Caption = 'R&esumo por Formas'
            OnClick = cp_0212Click
          end
          object cp_0215: TMenuItem
            Caption = 'Baixar Devolu'#231#245'es'
            OnClick = cp_0215Click
          end
        end
        object Relatrio2: TMenuItem
          Caption = '&Relat'#243'rio'
          object cp_0303: TMenuItem
            Caption = '&Relat'#243'rio Anal'#237'tico'
            OnClick = cp_0303Click
          end
          object cp_0306: TMenuItem
            Caption = '&Personalizados'
            OnClick = cp_0306Click
          end
          object cp_0309: TMenuItem
            Caption = 'Relat'#243'rio Sint'#233'tico'
            OnClick = cp_0309Click
          end
          object N85: TMenuItem
            Caption = '-'
          end
          object cp_0312: TMenuItem
            Caption = 'Levantamento di'#225'rio'
            OnClick = cp_0312Click
          end
        end
        object cp_0109: TMenuItem
          Caption = '&Compras p/Fornecedor'
          OnClick = cp_0109Click
        end
        object cp_0130: TMenuItem
          Caption = 'Pagamento Simplificado(R'#225'pido)'
          OnClick = cp_0130Click
        end
        object N74: TMenuItem
          Caption = '-'
        end
        object cp_0112: TMenuItem
          Caption = '&Agrupar Duplicatas'
          OnClick = cp_0112Click
        end
        object N77: TMenuItem
          Caption = '-'
        end
        object cp_0115: TMenuItem
          Caption = 'Lan'#231'amento Automatico(Despesas Fixa)'
          OnClick = cp_0115Click
        end
        object cp_0118: TMenuItem
          Caption = 'Cheques Emitidos'
          object cp_0121: TMenuItem
            Caption = '&Manuten'#231#227'o'
            OnClick = cp_0121Click
          end
          object cp_0124: TMenuItem
            Caption = 'Baixa'
            Visible = False
            OnClick = cp_0124Click
          end
          object cp_0127: TMenuItem
            Caption = 'Relat'#243'rios'
            OnClick = cp_0127Click
          end
        end
      end
      object CalculosDiversos1: TMenuItem
        Caption = 'C&alculos Diversos'
        object cr_0903: TMenuItem
          Caption = '&Juros de documentos'
          OnClick = cr_0903Click
        end
        object cr_0906: TMenuItem
          Caption = '&Valor da Presta'#231#227'o'
          OnClick = cr_0906Click
        end
        object cr_0909: TMenuItem
          Caption = '&M'#233'dia de vencimentos'
          OnClick = cr_0909Click
        end
        object cr_0912: TMenuItem
          Caption = 'Resumir &Documentos'
          OnClick = cr_0912Click
        end
        object cr_0918: TMenuItem
          Caption = '&Calcular dias/meses de v'#225'rios per'#237'odos'
          OnClick = cr_0918Click
        end
        object cr_0919: TMenuItem
          Caption = 'Calcular Co&eficiente'
          OnClick = cr_0919Click
        end
      end
      object cr_0915: TMenuItem
        Caption = '&Emiss'#227'o de Cheques'
        OnClick = cr_0915Click
      end
      object cr_0921: TMenuItem
        Caption = 'Levantamento Financeiro'
        OnClick = cr_0921Click
      end
      object cr_0924: TMenuItem
        Caption = 'Emite Recibo'
        OnClick = cr_0924Click
      end
      object cr_0927: TMenuItem
        Caption = 'Demonstrativo Financeiro'
        OnClick = cr_0927Click
      end
      object cr_0929: TMenuItem
        Caption = 'Cr'#233'dito e D'#233'bito'
        OnClick = cr_0929Click
      end
      object cr_0930: TMenuItem
        Caption = '&Demonstrativo do Resultado do Exerc'#237'cio'
        OnClick = cr_0930Click
      end
    end
    object Sistema1: TMenuItem
      Caption = 'S&istema'
      ImageIndex = 6
      object Sobre1: TMenuItem
        Caption = '&Sobre'
      end
      object sis_0103: TMenuItem
        Caption = '&Impressoras'
        OnClick = sis_0103Click
      end
      object sis_0106: TMenuItem
        Caption = '&Acessos'
        OnClick = sis_0106Click
      end
      object sis_0643: TMenuItem
        Caption = 'Mudar Local Estoque/Filial'
        OnClick = sis_0643Click
      end
      object sis_0109: TMenuItem
        Caption = '&Senhas Internas'
        OnClick = sis_0109Click
      end
      object Parametros: TMenuItem
        Caption = '&Par'#228'metros'
        object sis_0112: TMenuItem
          Caption = '&Gerais'
          OnClick = sis_0112Click
        end
        object sis_0114: TMenuItem
          Caption = 'AJuste de Pre'#231'os de Produtos'
          RadioItem = True
          Visible = False
          OnClick = sis_0114Click
        end
        object sis_0117: TMenuItem
          Caption = '&Leitor '#211'ptico'
          OnClick = sis_0117Click
        end
        object sis_0120: TMenuItem
          Caption = '&Configurar Fontes'
          OnClick = sis_0120Click
        end
        object sis_0123: TMenuItem
          Caption = 'Ajustar Descri'#231#227'o dos Produtos'
          OnClick = sis_0123Click
        end
        object sis_0126: TMenuItem
          Caption = 'Documentos On-Line'
          OnClick = sis_0126Click
        end
        object sis_0129: TMenuItem
          Caption = '&Eliminar Dados'
          OnClick = sis_0129Click
        end
        object N36: TMenuItem
          Caption = '-'
        end
        object sis_0132: TMenuItem
          Caption = '&Atualizar dados'
          OnClick = sis_0132Click
        end
        object N63: TMenuItem
          Caption = '-'
        end
        object sis_0135: TMenuItem
          Caption = 'C'#243'digos Diversos'
          OnClick = sis_0135Click
        end
        object N72: TMenuItem
          Caption = '-'
        end
        object sis_0138: TMenuItem
          Caption = '&Enviar E-Mail'
          OnClick = sis_0138Click
        end
        object N73: TMenuItem
          Caption = '-'
        end
        object sis_0141: TMenuItem
          Caption = '&Liberar Senhas  de Pendentes'
          OnClick = sis_0141Click
        end
        object N92: TMenuItem
          Caption = '-'
        end
        object sis_0144: TMenuItem
          Caption = '&Ajustar Devolu'#231#245'es'
          OnClick = sis_0144Click
        end
        object sis_0147: TMenuItem
          Caption = 'Ajustar Titulos e Notas'
          OnClick = sis_0147Click
        end
      end
      object ImpressoraFiscal1: TMenuItem
        Caption = '&Impressora Fiscal'
        object sis_0203: TMenuItem
          Caption = '&Parametros'
          OnClick = sis_0203Click
        end
        object sis_0206: TMenuItem
          Caption = '&Hor'#225'rio de Ver'#227'o'
          OnClick = sis_0206Click
        end
        object sis_0209: TMenuItem
          Caption = '&Moeda'
          OnClick = sis_0209Click
        end
        object sis_0212: TMenuItem
          Caption = '&Aliquotas'
          OnClick = sis_0212Click
        end
        object sis_0215: TMenuItem
          Caption = 'A&bertura do dia'
          Visible = False
          OnClick = sis_0215Click
        end
        object sis_0218: TMenuItem
          Caption = '&Resetar Impressora'
          Visible = False
          OnClick = sis_0218Click
        end
        object sis_0221: TMenuItem
          Caption = '&Leitura da Memoria'
          OnClick = sis_0221Click
        end
        object sis_0224: TMenuItem
          Caption = 'Redu'#231#227'o &Z'
          OnClick = sis_0224Click
        end
        object sis_0227: TMenuItem
          Caption = 'Leitura &X'
          OnClick = sis_0227Click
        end
        object sis_0230: TMenuItem
          Caption = '&Estado da Impressora'
          OnClick = sis_0230Click
        end
        object sis_0233: TMenuItem
          Caption = '&N'#250'mero do Cupom'
          OnClick = sis_0233Click
        end
        object sis_0236: TMenuItem
          Caption = 'Truncamento/arredondamento'
          OnClick = sis_0236Click
        end
        object sis_0239: TMenuItem
          Caption = '&Cancela Cupom'
          OnClick = sis_0239Click
        end
        object sis_0242: TMenuItem
          Caption = '&Fechamento do dia'
          OnClick = sis_0242Click
        end
        object N82: TMenuItem
          Caption = '-'
        end
        object sis_0245: TMenuItem
          Caption = '&Mapa Resumo'
          OnClick = sis_0245Click
        end
        object N101: TMenuItem
          Caption = '-'
        end
        object sis_0248: TMenuItem
          Caption = 'Gerar Arquivo Sintegra'
          OnClick = sis_0248Click
        end
        object N103: TMenuItem
          Caption = '-'
        end
        object sis_0251: TMenuItem
          Caption = 'Comparar Memoria x Livro Fiscal'
          OnClick = sis_0251Click
        end
        object sis_0254: TMenuItem
          Caption = 'Gerar Arquivo dos Cupom'
          OnClick = sis_0254Click
        end
      end
      object sis_0115: TMenuItem
        Caption = '&Mudar Usu'#225'rio'
        OnClick = sis_0115Click
      end
      object sis_0118: TMenuItem
        Caption = '&Importar dados'
        Visible = False
        OnClick = sis_0118Click
      end
      object sis_0121: TMenuItem
        Caption = '&Exportar dados'
        Visible = False
      end
      object sis_0124: TMenuItem
        Caption = '&Impressoes Diversas'
        OnClick = sis_0124Click
      end
      object sis_0127: TMenuItem
        Caption = '&Empresa'
        OnClick = sis_0127Click
      end
      object Tabulacoes: TMenuItem
        Caption = '&Tabula'#231'oes'
        object sis_0312: TMenuItem
          Caption = 'Tabular &Documentos'
        end
        object Continua1: TMenuItem
          Caption = '&Tabula'#231'oes Gerais'
        end
        object sis_0303: TMenuItem
          Caption = '&Atualizar'
          OnClick = sis_0303Click
        end
      end
      object sis_0130: TMenuItem
        Caption = '&Verificar Estruturas'
        OnClick = sis_0130Click
      end
      object sis_0133: TMenuItem
        Caption = 'Imprimir C'#243'digo de &Barras'
        OnClick = sis_0133Click
      end
      object Especiais1: TMenuItem
        Caption = '&Especiais'
        Visible = False
        object sis_0601: TMenuItem
          Caption = '&Listagem de Acessos'
          OnClick = sis_0601Click
        end
        object sis_0606: TMenuItem
          Caption = '&Configurar Tabelas Multi-Empresas'
          OnClick = sis_0606Click
        end
        object sis_0609: TMenuItem
          Caption = '&Configura'#231#227'o do Sistema'
          OnClick = sis_0609Click
        end
        object ParametrosTiposdePedidos1: TMenuItem
          Caption = 'Parametros(Tipos de Pedidos)'
        end
        object sis_0630: TMenuItem
          Caption = '&Encerramento de m'#234's'
          OnClick = sis_0630Click
        end
        object sis_0633: TMenuItem
          Caption = '&Consist'#234'ncia Pedido/Duplicatas'
          OnClick = sis_0633Click
        end
        object sis_0636: TMenuItem
          Caption = 'Consistencia &Pedido Cabe'#231'alho/Mercadorias'
          OnClick = sis_0636Click
        end
        object sis_0639: TMenuItem
          Caption = 'Consistencia Pedidos/&Notas de Saidas'
        end
        object sis_0642: TMenuItem
          Caption = '&Mercadorias do Pedido/Duplicatas'
          OnClick = sis_0642Click
        end
        object sis_0645: TMenuItem
          Caption = '&Ratear Icms Retido Entradas'
          OnClick = sis_0645Click
        end
        object sis_0648: TMenuItem
          Caption = #218'ltimo Pre'#231'o de Compra Pedido de Vendas'
          OnClick = sis_0648Click
        end
        object sis_0651: TMenuItem
          Caption = 'Recalc&ular Icms das Notas'
          OnClick = sis_0651Click
        end
        object sis_0690: TMenuItem
          Caption = 'Ajustar Extrato de Produtos de Acordo com o Estoque'
          OnClick = sis_0690Click
        end
        object sis_0654: TMenuItem
          Caption = 'Ajustar Estoque de Acordo com o Extrato'
          OnClick = sis_0654Click
        end
        object sis_0657: TMenuItem
          Caption = 'Restaurar Pedidos Perdidos Atraves da Nota de Sa'#237'da'
          OnClick = sis_0657Click
        end
        object sis_0660: TMenuItem
          Caption = '&Lote de Sequencias'
          OnClick = sis_0660Click
        end
        object sis_0663: TMenuItem
          Caption = '&Formas de Pagamentos'
          OnClick = sis_0663Click
        end
        object sis_0666: TMenuItem
          Caption = 'Parametros de Custos'
          OnClick = sis_0666Click
        end
        object sis_0669: TMenuItem
          Caption = 
            'Restaurar Lan'#231'amentos Realizados Atrav'#233's de Duplicatas Recebidas' +
            ' baixadas'
          OnClick = sis_0669Click
        end
        object sis_0672: TMenuItem
          Caption = '&Manuten'#231#227'o no Arquivo de Ajuda'
          OnClick = sis_0672Click
        end
        object sis_0675: TMenuItem
          Caption = 'Estoque diferente do Extrato'
          OnClick = sis_0675Click
        end
        object sis_0678: TMenuItem
          Caption = 'Restaurar Notas Atraves dos Pedidos'
          OnClick = sis_0678Click
        end
        object sis_0681: TMenuItem
          Caption = '&Gerar em Excel'
          OnClick = sis_0681Click
        end
        object sis_0684: TMenuItem
          Caption = '&Gerar Mapa Resumo ECF atrav'#233's dos Cupons(CADNS)'
          OnClick = sis_0684Click
        end
        object sis_0687: TMenuItem
          Caption = '&Cancelar Fechamento do dia'
          OnClick = sis_0687Click
        end
        object sis_0693: TMenuItem
          Caption = 'Estoque do Lote Diferente'
          OnClick = sis_0693Click
        end
        object Outros1: TMenuItem
          Caption = 'Outros'
          object sis_0696: TMenuItem
            Caption = 'Configurar Formul'#225'rios'
          end
        end
        object m_ConexaoRemota: TMenuItem
          Caption = 'Conexao Remota SGE'
        end
      end
      object Backups1: TMenuItem
        Caption = '&Backups'
        object sis0615: TMenuItem
          Caption = 'Fazer &Backups'
          OnClick = sis0615Click
        end
        object sis0618: TMenuItem
          Caption = '&Restaurar Backups'
          OnClick = sis0618Click
        end
        object sis0621: TMenuItem
          Caption = '&Configura'#231#245'es do Backups'
          OnClick = sis0621Click
        end
        object sis0639: TMenuItem
          Caption = 'Restaurar &Dados'
          OnClick = sis0639Click
        end
      end
      object sis0624: TMenuItem
        Caption = '&Zerar Estoque'
        OnClick = sis0624Click
      end
      object sis0627: TMenuItem
        Caption = '&Corrigir Estoque'
        OnClick = sis0627Click
      end
      object sis0630: TMenuItem
        Caption = '&Comunicar pela Rede'
        OnClick = sis0630Click
      end
      object sis0633: TMenuItem
        Caption = '&Importar Relat'#243'rios'
        OnClick = sis0633Click
      end
      object sis0645: TMenuItem
        Caption = 'Consultas Diversas'
        Visible = False
      end
      object sis0636: TMenuItem
        Caption = 'Cons&ultas Diversas'
        OnClick = sis0636Click
      end
      object ransfernciasdeArquivos1: TMenuItem
        Caption = '&Transfer'#234'ncias de Arquivos'
        object msis_0703: TMenuItem
          Caption = '&Exportar Movimentos'
          OnClick = msis_0703Click
        end
        object msis_0706: TMenuItem
          Caption = '&Exportar Cadastros'
          OnClick = msis_0706Click
        end
        object msis_0718: TMenuItem
          Caption = '&Exportar Pedido de Vendas/Retorno'
          OnClick = msis_0718Click
        end
        object N52: TMenuItem
          Caption = '-'
        end
        object msis_0709: TMenuItem
          Caption = '&Importar Movimentos'
          OnClick = msis_0709Click
        end
        object msis_0712: TMenuItem
          Caption = '&Importar Cadastros'
          OnClick = msis_0712Click
        end
        object msis_0721: TMenuItem
          Caption = '&Importar Pedido de Vendas/Retorno'
          OnClick = msis_0721Click
        end
        object N53: TMenuItem
          Caption = '-'
        end
        object msis_0715: TMenuItem
          Caption = '&Servidor Remoto de Importa'#231#227'o/Exporta'#231#227'o'
          OnClick = msis_0715Click
        end
      end
      object sis0642: TMenuItem
        Caption = '&Desbloqueia Pedido'
        OnClick = sis0642Click
      end
      object Integraes1: TMenuItem
        Caption = 'Integra'#231#245'es'
        object sis2103: TMenuItem
          Caption = 'Integra'#231#227'o EMS SIMILAR'
          OnClick = sis2103Click
        end
      end
      object sis0648: TMenuItem
        Caption = 'Gerar em Excel'
        OnClick = sis0648Click
      end
    end
  end
end
