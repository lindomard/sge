object Frm_Seg: TFrm_Seg
  Left = 242
  Top = 111
  Width = 851
  Height = 492
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Configura'#231#245'es do sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 14
    Top = 222
    Width = 171
    Height = 13
    Caption = 'Endere'#231'o Pedido Eletr'#244'nico..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 429
    Width = 843
    Height = 32
    Align = alBottom
    TabOrder = 0
    object bbGravar: TBitBtn
      Left = 25
      Top = 3
      Width = 166
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = bbGravarClick
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
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 559
      Top = 3
      Width = 166
      Height = 25
      Caption = '&Sair'
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
    object bbCorrigirForeingKey: TBitBtn
      Left = 297
      Top = 3
      Width = 166
      Height = 25
      Caption = '&Corrigir p/Foreing key'
      TabOrder = 2
      OnClick = bbCorrigirForeingKeyClick
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
      NumGlyphs = 2
    end
  end
  object pc_outfat: TPageControl
    Left = 0
    Top = 0
    Width = 843
    Height = 429
    ActivePage = tsContFat
    Align = alClient
    TabOrder = 1
    object tsSeg: TTabSheet
      Caption = 'Sobre o Segmento'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 835
        Height = 401
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 4
          Width = 218
          Height = 13
          Caption = 'Informe o Segmento da Sua Empresa.:'
        end
        object Label10: TLabel
          Left = 586
          Top = 4
          Width = 110
          Height = 13
          Caption = 'S'#237'mbolo da moeda:'
        end
        object Label28: TLabel
          Left = 588
          Top = 24
          Width = 104
          Height = 13
          Caption = 'C'#243'digo da Moeda:'
        end
        object Label29: TLabel
          Left = 723
          Top = 24
          Width = 38
          Height = 13
          Caption = '9-Real'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label55: TLabel
          Left = 5
          Top = 150
          Width = 160
          Height = 13
          Caption = 'Exportar dados da Empresa:'
        end
        object CB_SEG: TComboBox
          Left = 241
          Top = 1
          Width = 342
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Ctl3D = False
          DragMode = dmAutomatic
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          OnChange = CB_SEGChange
          OnExit = CB_SEGExit
          Items.Strings = (
            '01-Distribuidoras'
            '02-Farmacias'
            '03-Industrias Quimicas e Farmaceuticas'
            '04-Aviamentos'
            '05-Tecidos'
            '06-Industrias confeccoes'
            '07-Auto Pecas'
            '08-Deposito Mat.Constru'#231#227'o'
            '09-Loja Material Eletricos'
            '10-Supermercados'
            '11-Panificadoras'
            '12-A'#231'ouque'
            '13-Lanchonetes'
            '14-Conveniencias'
            '15-Outros Comercios'
            '16-Prestacoes de Servicos'
            '17-Associa'#231'oes'
            '18-Oticas')
        end
        object CB_Grade: TCheckBox
          Left = 20
          Top = 22
          Width = 241
          Height = 17
          Caption = 'Possui Grade de Controle de N'#250'meros'
          TabOrder = 2
        end
        object CB_PServ: TCheckBox
          Left = 260
          Top = 24
          Width = 202
          Height = 17
          Caption = 'Possui Prestacoes de Servicos'
          TabOrder = 3
        end
        object GB_CLIENTE: TGroupBox
          Left = 19
          Top = 38
          Width = 439
          Height = 110
          Caption = 'Exibir os seguintes campos no cadastro de Clientes:'
          TabOrder = 6
          object CB_VISA: TCheckBox
            Left = 4
            Top = 12
            Width = 250
            Height = 20
            Caption = 'Alvara da Vigilancia Sanitaria Municipal'
            TabOrder = 0
          end
          object CB_ANVISA: TCheckBox
            Left = 4
            Top = 28
            Width = 301
            Height = 16
            Caption = 'Alvara da Vigilancia Sanitaria Nacional(ANVISA)'
            TabOrder = 1
          end
          object CB_CONV: TCheckBox
            Left = 4
            Top = 58
            Width = 301
            Height = 16
            Caption = 'Controle de Conv'#234'nios de Clientes'
            TabOrder = 3
          end
          object CB_REDE: TCheckBox
            Left = 4
            Top = 40
            Width = 250
            Height = 20
            Caption = 'Controle de Redes de Clientes'
            TabOrder = 2
          end
          object CB_CLIOINF: TCheckBox
            Left = 4
            Top = 74
            Width = 301
            Height = 16
            Caption = 'Usar a Tela Outras Informa'#231#245'es'
            TabOrder = 4
          end
          object CB_LCVM: TCheckBox
            Left = 4
            Top = 90
            Width = 280
            Height = 16
            Caption = 'Substituir Limite de Cr'#233'dito por Valor Mensal'
            TabOrder = 5
          end
          object RG_CADCLITAXC: TRadioGroup
            Left = 312
            Top = 0
            Width = 126
            Height = 110
            Caption = 'Cadastro de Cliente:'
            ItemIndex = 0
            Items.Strings = (
              '0-Sem Taxa'
              '1-Taxa '#218'nica'
              '2-Taxa Anual'
              '3-Taxa Mensal'
              '4-Taxa Semanal')
            TabOrder = 6
          end
        end
        object MOEDA: TEdit
          Left = 697
          Top = 2
          Width = 32
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = MOEDAExit
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 197
          Width = 766
          Height = 177
          Caption = 'Condi'#231#245'es Especiais Para Produtos'
          TabOrder = 13
          object Label9: TLabel
            Left = 330
            Top = 109
            Width = 203
            Height = 13
            Caption = 'Titulo p/os produtos sem Comiss'#227'o:'
          end
          object Label23: TLabel
            Left = 2
            Top = 81
            Width = 201
            Height = 13
            Caption = 'Palavra utilizada p/Subst.N'#250'meros:'
          end
          object Label11: TLabel
            Left = 330
            Top = 87
            Width = 96
            Height = 13
            Caption = 'Qt Tipos Pre'#231'os:'
          end
          object Label53: TLabel
            Left = 330
            Top = 127
            Width = 208
            Height = 13
            Caption = 'T'#237'tulo p/Descri'#231#227'o 2......................'
          end
          object CB_DCB: TCheckBox
            Left = 3
            Top = 25
            Width = 301
            Height = 16
            Caption = 'Exibir campos DCB-Produtos(Nomes Gen'#233'ricos)'
            TabOrder = 0
          end
          object MANPC: TCheckBox
            Left = 2
            Top = 126
            Width = 291
            Height = 17
            Caption = 'Permite manipular pre'#231'os de custo no cadastro'
            TabOrder = 8
          end
          object CB_PRZVAL: TCheckBox
            Left = 3
            Top = 38
            Width = 291
            Height = 17
            Caption = 'Prazo de Validade no Produto'
            TabOrder = 2
          end
          object CB_UREGMS: TCheckBox
            Left = 3
            Top = 54
            Width = 254
            Height = 13
            Caption = 'Utilizar Registro no Minist'#233'rio da Sa'#250'de'
            TabOrder = 3
          end
          object CB_UPISCOF: TCheckBox
            Left = 3
            Top = 97
            Width = 311
            Height = 13
            Caption = 'Utilizar Controle de Pis-Cofins Pos/neg/Inal'
            TabOrder = 6
          end
          object CB_UTABICM: TCheckBox
            Left = 3
            Top = 111
            Width = 254
            Height = 13
            Caption = 'Utilizar Tabela de icms A e B'
            TabOrder = 7
          end
          object TITSCOM: TEdit
            Left = 537
            Top = 103
            Width = 130
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            OnKeyPress = TITSCOMKeyPress
          end
          object CB_UPMC: TCheckBox
            Left = 330
            Top = 7
            Width = 316
            Height = 17
            Caption = 'Utilizar o campo de Pre'#231'o M'#225'ximo ao Consumidor'
            TabOrder = 9
          end
          object CB_UPALNUM: TCheckBox
            Left = 3
            Top = 67
            Width = 309
            Height = 13
            Caption = 'Usar Palavra ao inves de Valores P/P'#231'o de Custo'
            TabOrder = 4
          end
          object PALNUM: TEdit
            Left = 205
            Top = 79
            Width = 105
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
          end
          object CB_OCUEST: TCheckBox
            Left = 330
            Top = 22
            Width = 401
            Height = 17
            Caption = 'Manter a Quantidade de Estoque Oculta (Manuten'#231#227'o Produtos)'
            TabOrder = 12
          end
          object CB_FILPRO: TCheckBox
            Left = 330
            Top = 37
            Width = 401
            Height = 17
            Caption = 'Utilizar Tela de Filtos Especiais para Manuten'#231#227'o Produtos'
            TabOrder = 13
          end
          object CB_ATPCOFABENT: TCheckBox
            Left = 330
            Top = 68
            Width = 416
            Height = 17
            Caption = 'Atualizar Pre'#231'o Fabrica ao dar Entradas em Mercadorias(PDPCOFAB)'
            TabOrder = 14
          end
          object CB_FORPROPAD: TCheckBox
            Left = 3
            Top = 11
            Width = 301
            Height = 16
            Caption = 'Utilizar Formul'#225'rio de Produtos Novo'
            TabOrder = 1
          end
          object PROD_DNOME2: TEdit
            Left = 537
            Top = 121
            Width = 130
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 15
            OnExit = PROD_DNOME2Exit
          end
          object CB_ATUPCUSACABMP: TCheckBox
            Left = 330
            Top = 51
            Width = 433
            Height = 17
            Caption = 
              '(INDUSTRIA)-Atualizar o Pre'#231'o de Custo Prod.Acabado de Acordo c/' +
              'MP'
            TabOrder = 16
          end
          object CB_CONSPRO_FMAN: TCheckBox
            Left = 4
            Top = 144
            Width = 341
            Height = 17
            Caption = 'Consultar Produtos no formulario de Manuten'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
            OnClick = CB_CONSPRO_FMANClick
          end
          object CB_PDQPCOP: TComboBox
            Left = 424
            Top = 82
            Width = 337
            Height = 21
            BevelKind = bkSoft
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 11
            Text = '1 (Apenas um Pre'#231'o)'
            OnExit = CB_TIPPEDExit
            Items.Strings = (
              '1 (Apenas um Pre'#231'o)'
              '2 (dois Pre'#231'os Normais)'
              '3 (tres Pre'#231'os Normais)'
              '4 (dois Pre'#231'os Titulo Varejo e Atacado)  '
              '5 (tres Pre'#231'os Titulo Varejo/preco1 e Atacado/preco2)'
              
                '6 (tres Pre'#231'os Titulo Varejo/preco1 e Atacado/preco2) Qtd Multip' +
                'la da Embalagem'
              ''
              '')
          end
        end
        object CODMOE: TEdit
          Left = 697
          Top = 20
          Width = 21
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODMOEExit
        end
        object CB_PCOGRA: TCheckBox
          Left = 462
          Top = 25
          Width = 123
          Height = 17
          Caption = 'Pre'#231'os por Grade'
          TabOrder = 4
        end
        object CB_TIPOAJUDA: TCheckBox
          Left = 462
          Top = 41
          Width = 302
          Height = 17
          Caption = 'Arquivo de Ajuda Externo(SGE.HLP)'
          TabOrder = 7
        end
        object GroupBox6: TGroupBox
          Left = 461
          Top = 56
          Width = 249
          Height = 93
          Caption = 'Controle de Empresas'
          TabOrder = 8
          object Label41: TLabel
            Left = 7
            Top = 35
            Width = 159
            Height = 13
            Caption = 'Apresentar Abaixo de 100...'
          end
          object Label42: TLabel
            Left = 7
            Top = 56
            Width = 160
            Height = 13
            Caption = 'Apresentar Acima de 99......'
          end
          object Label43: TLabel
            Left = 7
            Top = 74
            Width = 158
            Height = 13
            Caption = 'Conciliadas.......................'
          end
          object sb_colorBaixo: TSpeedButton
            Left = 218
            Top = 27
            Width = 23
            Height = 22
            Hint = 'Seleciona a Cor de Apresenta'#231#227'o da Mensagem'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
              57705557757777775FF7555555555555000755555555555F777F555555555550
              87075555555555F7577F5555555555088805555555555F755F75555555555033
              805555555555F755F75555555555033B05555555555F755F75555555555033B0
              5555555555F755F75555555555033B05555555555F755F75555555555033B055
              55555555F755F75555555555033B05555555555F755F75555555555033B05555
              555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
              5555F777F7555555555501900555555555557777755555555555099055555555
              5555777755555555555550055555555555555775555555555555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sb_colorBaixoClick
          end
          object sb_colorAlto: TSpeedButton
            Left = 218
            Top = 48
            Width = 23
            Height = 22
            Hint = 'Seleciona a Cor de Apresenta'#231#227'o da Mensagem'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
              57705557757777775FF7555555555555000755555555555F777F555555555550
              87075555555555F7577F5555555555088805555555555F755F75555555555033
              805555555555F755F75555555555033B05555555555F755F75555555555033B0
              5555555555F755F75555555555033B05555555555F755F75555555555033B055
              55555555F755F75555555555033B05555555555F755F75555555555033B05555
              555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
              5555F777F7555555555501900555555555557777755555555555099055555555
              5555777755555555555550055555555555555775555555555555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sb_colorAltoClick
          end
          object sb_colorAmbas: TSpeedButton
            Left = 218
            Top = 69
            Width = 23
            Height = 22
            Hint = 'Seleciona a Cor de Apresenta'#231#227'o da Mensagem'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
              57705557757777775FF7555555555555000755555555555F777F555555555550
              87075555555555F7577F5555555555088805555555555F755F75555555555033
              805555555555F755F75555555555033B05555555555F755F75555555555033B0
              5555555555F755F75555555555033B05555555555F755F75555555555033B055
              55555555F755F75555555555033B05555555555F755F75555555555033B05555
              555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
              5555F777F7555555555501900555555555557777755555555555099055555555
              5555777755555555555550055555555555555775555555555555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sb_colorAmbasClick
          end
          object StaticText1: TStaticText
            Left = 170
            Top = 8
            Width = 45
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Texto'
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 217
            Top = 8
            Width = 26
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Cor'
            TabOrder = 1
          end
          object TEXTOBAIXO: TEdit
            Left = 170
            Top = 29
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            OnExit = TEXTOBAIXOExit
          end
          object TEXTOALTO: TEdit
            Left = 171
            Top = 50
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnExit = TEXTOALTOExit
          end
          object TEXTOAMBAS: TEdit
            Left = 171
            Top = 70
            Width = 45
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            OnExit = TEXTOAMBASExit
          end
        end
        object CB_EXPMOV_EXC: TComboBox
          Left = 168
          Top = 149
          Width = 272
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Ctl3D = False
          DragMode = dmAutomatic
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 9
          Text = 'Nao'
          OnChange = CB_SEGChange
          OnExit = CB_SEGExit
          Items.Strings = (
            'Nao'
            'Sim Excluindo Extras'
            'Sim Excluindo Tudo')
        end
        object MANDUPREC_AUT: TCheckBox
          Left = 3
          Top = 174
          Width = 377
          Height = 20
          Caption = 'Manipular Dup.A Receber Mesmo Qdo lanc.Automaticamente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object MANDUPPAG_AUT: TCheckBox
          Left = 378
          Top = 175
          Width = 377
          Height = 20
          Caption = 'Manipular Dup.A Pagar Mesmo Qdo lanc.Automaticamente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object CB_IGNOR_MINUSCULAS: TCheckBox
          Left = 443
          Top = 150
          Width = 377
          Height = 20
          Caption = 'Ao Consultar Ignorar Maiusculos e Minusculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object tsOutrasOpcoes: TTabSheet
      Caption = 'Outras Op'#231#245'es'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 835
        Height = 210
        Align = alTop
        Caption = 'Utilizar os Seguintes Controles:'
        TabOrder = 0
        object Label36: TLabel
          Left = 326
          Top = 76
          Width = 402
          Height = 13
          Caption = 
            'Caminho que se encontra o arquivo LOGO0.jpg p/Apres.na Tela Inic' +
            'ial'
          Visible = False
        end
        object sbcam: TSpeedButton
          Left = 666
          Top = 88
          Width = 23
          Height = 22
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          Visible = False
          OnClick = sbcamClick
        end
        object Label27: TLabel
          Left = 463
          Top = 110
          Width = 57
          Height = 13
          Caption = 'Tamanho:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 572
          Top = 111
          Width = 38
          Height = 13
          Caption = 'Altura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_CODLOC: TCheckBox
          Left = 9
          Top = 15
          Width = 132
          Height = 17
          Caption = 'Cidade por C'#243'digo'
          TabOrder = 0
        end
        object CB_CODBAI: TCheckBox
          Left = 9
          Top = 29
          Width = 125
          Height = 17
          Caption = '&Bairro por C'#243'digo'
          TabOrder = 1
        end
        object CB_UPVESP: TCheckBox
          Left = 9
          Top = 44
          Width = 295
          Height = 17
          Caption = 'Plano de Vendas Especial Completo'
          TabOrder = 2
        end
        object CB_FOLHA: TCheckBox
          Left = 9
          Top = 60
          Width = 295
          Height = 17
          Caption = 'Folha de Pagamento'
          TabOrder = 3
        end
        object CB_ECFDIR: TCheckBox
          Left = 9
          Top = 76
          Width = 305
          Height = 17
          Caption = 'Vendas direto no ECF(Estilo Supermercado)'
          TabOrder = 4
        end
        object CB_ECFCAI: TCheckBox
          Left = 326
          Top = 8
          Width = 309
          Height = 17
          Caption = 'Caixa com ECF'
          TabOrder = 7
        end
        object CB_ECFSOLCOD: TCheckBox
          Left = 9
          Top = 92
          Width = 311
          Height = 17
          Caption = 'Solicitar C'#243'digo de Clientes na Abertura do Cupom'
          TabOrder = 5
        end
        object CB_ECFFECCOM: TCheckBox
          Left = 9
          Top = 106
          Width = 303
          Height = 17
          Caption = 'Fechamento do Cupom Completa(lan'#231'a Tudo)'
          TabOrder = 6
        end
        object CB_PCHQFC: TCheckBox
          Left = 326
          Top = 52
          Width = 378
          Height = 16
          Caption = 
            'Ao Lan'#231'ar Cheques(Emitidos/Recebidos)/Man. Incluir no Caixa(Real' +
            'izado)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object CB_IMOBIL: TCheckBox
          Left = 326
          Top = 22
          Width = 209
          Height = 17
          Caption = 'Utilizar Controle de Imobilizado'
          TabOrder = 8
        end
        object CB_CONVEI: TCheckBox
          Left = 326
          Top = 37
          Width = 378
          Height = 17
          Caption = 'Utilizar controle de ve'#237'culos'
          TabOrder = 9
        end
        object CAMINHO: TEdit
          Left = 326
          Top = 90
          Width = 338
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          Visible = False
        end
        object CB_TAMJPG: TCheckBox
          Left = 326
          Top = 109
          Width = 131
          Height = 17
          Caption = 'Logotipo Pequeno'
          TabOrder = 12
          OnClick = CB_TAMJPGClick
        end
        object JPGTAM: TEdit
          Left = 522
          Top = 108
          Width = 39
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = JPGTAMExit
        end
        object JPGALT: TEdit
          Left = 631
          Top = 108
          Width = 39
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 14
          OnExit = JPGALTExit
        end
        object CB_SENINTUSR: TCheckBox
          Left = 9
          Top = 122
          Width = 303
          Height = 17
          Caption = 'Senhas Internas por Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Digitos Verificadores'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 835
        Height = 173
        Align = alTop
        Caption = 'Tabelas marcadas possui digito verificador:'
        TabOrder = 0
        object Bevel1: TBevel
          Left = 1
          Top = 29
          Width = 777
          Height = 2
        end
        object Bevel2: TBevel
          Left = 2
          Top = 50
          Width = 777
          Height = 2
        end
        object Bevel3: TBevel
          Left = 2
          Top = 71
          Width = 777
          Height = 2
        end
        object Bevel4: TBevel
          Left = 2
          Top = 92
          Width = 777
          Height = 2
        end
        object Bevel5: TBevel
          Left = 2
          Top = 111
          Width = 777
          Height = 2
        end
        object Bevel6: TBevel
          Left = 2
          Top = 131
          Width = 777
          Height = 2
        end
        object Bevel7: TBevel
          Left = 2
          Top = 151
          Width = 777
          Height = 2
        end
        object Bevel8: TBevel
          Left = 382
          Top = 6
          Width = 2
          Height = 164
        end
        object CB_CADVEN: TCheckBox
          Left = 424
          Top = 133
          Width = 220
          Height = 17
          Caption = 'Cadastro de Vendedores'
          TabOrder = 14
        end
        object CB_CADUSR: TCheckBox
          Left = 424
          Top = 114
          Width = 220
          Height = 17
          Caption = 'Cadastro de Usu'#225'rios do sistema'
          TabOrder = 13
        end
        object CB_CADTRA: TCheckBox
          Left = 424
          Top = 94
          Width = 220
          Height = 17
          Caption = 'Cadastro de Transportadoras'
          TabOrder = 12
        end
        object CB_CADTP: TCheckBox
          Left = 424
          Top = 73
          Width = 220
          Height = 17
          Caption = 'Cadastro de Tipos  Produtos'
          TabOrder = 11
        end
        object CB_CADRAM: TCheckBox
          Left = 424
          Top = 31
          Width = 220
          Height = 17
          Caption = 'Cadastro de Ramo de Produtos'
          TabOrder = 9
        end
        object CB_CADPRO: TCheckBox
          Left = 424
          Top = 11
          Width = 220
          Height = 17
          Caption = 'Cadastro de Produtos'
          TabOrder = 8
        end
        object CB_CADLOC: TCheckBox
          Left = 25
          Top = 153
          Width = 220
          Height = 17
          Caption = 'Cadastro de Localidades/Estados'
          TabOrder = 7
        end
        object CB_CADFOR: TCheckBox
          Left = 25
          Top = 113
          Width = 220
          Height = 17
          Caption = 'Cadastro de Fornecedores'
          TabOrder = 5
        end
        object CB_CADGRU: TCheckBox
          Left = 25
          Top = 134
          Width = 220
          Height = 17
          Caption = 'Cadastro de Grupos de Produtos'
          TabOrder = 6
        end
        object CB_CADCV: TCheckBox
          Left = 25
          Top = 94
          Width = 220
          Height = 17
          Caption = 'Cadastro de Convenios'
          TabOrder = 4
        end
        object CB_CADCON: TCheckBox
          Left = 25
          Top = 73
          Width = 220
          Height = 17
          Caption = 'Cadastro de Controles de Produtos'
          TabOrder = 3
        end
        object CB_CADCLI: TCheckBox
          Left = 25
          Top = 54
          Width = 220
          Height = 17
          Caption = 'Cadastro de Clientes'
          TabOrder = 2
        end
        object CB_CADBAI: TCheckBox
          Left = 25
          Top = 33
          Width = 220
          Height = 17
          Caption = 'Cadastro de bairros'
          TabOrder = 1
        end
        object CB_CADCAR: TCheckBox
          Left = 25
          Top = 12
          Width = 220
          Height = 17
          Caption = 'Cadastro de Cargos/funcoes'
          TabOrder = 0
        end
        object CB_CADSUP: TCheckBox
          Left = 424
          Top = 153
          Width = 220
          Height = 17
          Caption = 'Cadastro de Supervisores'
          TabOrder = 15
        end
        object CB_CADRED: TCheckBox
          Left = 424
          Top = 53
          Width = 220
          Height = 17
          Caption = 'Cadastro de Redes de Clientes'
          TabOrder = 10
        end
      end
    end
    object tsSobFat: TTabSheet
      Caption = 'Sobre o &Faturamento'
      ImageIndex = 2
      object Label8: TLabel
        Left = 5
        Top = 132
        Width = 88
        Height = 13
        Caption = 'Pedido Padr'#227'o:'
      end
      object Label50: TLabel
        Left = 393
        Top = 291
        Width = 102
        Height = 13
        Caption = 'Comiss'#227'o Padr'#227'o:'
      end
      object lbl_Dev_PV: TLabel
        Left = 6
        Top = 282
        Width = 239
        Height = 13
        Caption = 'Plano de Vendas Padr'#227'o para Devolu'#231#227'o:'
        Enabled = False
      end
      object Label51: TLabel
        Left = 3
        Top = 301
        Width = 272
        Height = 13
        Caption = 'At'#233' Quantos dias Permitido para Excluir Pedido:'
      end
      object Label52: TLabel
        Left = 323
        Top = 303
        Width = 88
        Height = 13
        Caption = '0-N'#227'o Bloqueia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 393
        Top = 315
        Width = 149
        Height = 13
        Caption = '% Comiss'#227'o Televendas..:'
      end
      object Label30: TLabel
        Left = 10
        Top = 378
        Width = 113
        Height = 13
        Caption = 'Emprestimo Padr'#227'o:'
      end
      object CB_VENUSR: TCheckBox
        Left = 2
        Top = -1
        Width = 314
        Height = 17
        Caption = 'Ao incluir Pedido entrar com o vendedor do usu'#225'rio'
        TabOrder = 0
      end
      object CB_CliPed: TCheckBox
        Left = 2
        Top = 12
        Width = 347
        Height = 17
        Caption = 'Ao incluir pedidos ja entrar com o cliente 1 como padr'#227'o'
        TabOrder = 1
      end
      object CB_TIPPED: TComboBox
        Left = 94
        Top = 130
        Width = 350
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 2
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          'Or'#231'amento'
          'Venda Normal'
          'Simples Remessa'
          'Dev. a Fornecedor'
          'Remessa p/Troca'
          'Transferencia'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda'
          'Dev. Cliente(Entrada)'
          'Emprestimo de Mercadorias')
      end
      object DEVOL: TCheckBox
        Left = 3
        Top = 215
        Width = 314
        Height = 17
        Caption = 'Deduzir as devolu'#231#245'es no relatorio de comiss'#245'es'
        TabOrder = 16
      end
      object CB_JNR: TCheckBox
        Left = 3
        Top = 199
        Width = 353
        Height = 17
        Caption = 'Descontar na comiss'#227'o do vendedor juros n'#227'o recebidos'
        TabOrder = 15
      end
      object CB_DEDVD: TCheckBox
        Left = 3
        Top = 230
        Width = 381
        Height = 17
        Caption = 'Comiss'#227'o televendas ser'#225' deduzida na comiss'#227'o do vendedor'
        TabOrder = 17
      end
      object GB_CASAS_DEC: TGroupBox
        Left = 15
        Top = 150
        Width = 765
        Height = 49
        Caption = 'N'#250'mero de Casas Decimais:'
        TabOrder = 13
        object Label2: TLabel
          Left = 144
          Top = 13
          Width = 86
          Height = 13
          Caption = 'Pre'#231'o Unit'#225'rio:'
        end
        object Label4: TLabel
          Left = 312
          Top = 11
          Width = 106
          Height = 13
          Caption = 'Para Quantidades:'
        end
        object Label3: TLabel
          Left = 498
          Top = 13
          Width = 133
          Height = 13
          Caption = 'Outros Valores/Totais.:'
        end
        object Label22: TLabel
          Left = 313
          Top = 27
          Width = 106
          Height = 13
          Caption = 'Para Quantidades:'
        end
        object Label24: TLabel
          Left = 8
          Top = 12
          Width = 125
          Height = 13
          Caption = 'Vendas(Faturamento):'
        end
        object Label25: TLabel
          Left = 9
          Top = 29
          Width = 118
          Height = 13
          Caption = 'Produ'#231#227'o/Ind'#250'stria.:'
        end
        object Label26: TLabel
          Left = 143
          Top = 30
          Width = 86
          Height = 13
          Caption = 'Pre'#231'o Unit'#225'rio:'
        end
        object MPCASAS: TEdit
          Left = 635
          Top = 9
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = MPCASASExit
        end
        object CB_CASASPU: TComboBox
          Left = 236
          Top = 7
          Width = 67
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 0
          Text = 'Ignorar'
          Items.Strings = (
            'Ignorar'
            '0 '
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object CB_CASPUIND: TComboBox
          Left = 236
          Top = 26
          Width = 67
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Ignorar'
          Items.Strings = (
            'Ignorar'
            '0 '
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object CB_CASQTD: TComboBox
          Left = 419
          Top = 7
          Width = 67
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 2
          Text = 'Ignorar'
          Items.Strings = (
            'Ignorar'
            '0 '
            '1'
            '2'
            '3'
            '4'
            '5')
        end
        object CB_CASIND: TComboBox
          Left = 419
          Top = 26
          Width = 67
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Ignorar'
          Items.Strings = (
            'Ignorar'
            '0 '
            '1'
            '2'
            '3'
            '4'
            '5')
        end
      end
      object CB_PVPED: TCheckBox
        Left = 2
        Top = 25
        Width = 365
        Height = 17
        Caption = 'Ao incluir pedidos ja entrar com o Plano de Vendas AV/01'
        TabOrder = 4
      end
      object CB_PUZERO: TCheckBox
        Left = 2
        Top = 39
        Width = 365
        Height = 17
        Caption = 'Permitir Faturar Produtos com pre'#231'o igual a zero'
        TabOrder = 5
      end
      object CB_AGRUDUP: TCheckBox
        Left = 375
        Top = -1
        Width = 421
        Height = 17
        Caption = 'Agrupar Notas fiscais de um mesmo pedido em uma so duplicata'
        TabOrder = 11
      end
      object CB_NOTUNI: TCheckBox
        Left = 375
        Top = 12
        Width = 421
        Height = 17
        Caption = 'Mesmo n'#250'mero de Nota Fiscal para o Pedido(varios Formul'#225'rios)'
        TabOrder = 12
      end
      object CB_PEXTRACUS: TCheckBox
        Left = 375
        Top = 25
        Width = 421
        Height = 17
        Caption = 'Exibir o p'#231'o custo na tela de faturamento quando for pre'#231'o extra'
        TabOrder = 10
      end
      object CB_COMEMP: TCheckBox
        Left = 375
        Top = 39
        Width = 365
        Height = 17
        Caption = 'Permite Conciliar Empresas'
        TabOrder = 8
      end
      object CB_PPADATU: TCheckBox
        Left = 375
        Top = 112
        Width = 421
        Height = 17
        Caption = 'Ao Trocar o Pre'#231'o Padr'#227'o Atualizar os Pre'#231'os Novamente'
        TabOrder = 14
      end
      object RG_TIPOTEF: TRadioGroup
        Left = 447
        Top = 125
        Width = 323
        Height = 31
        Caption = 'Tipo TEF(PinPad)'
        Columns = 3
        Items.Strings = (
          'N'#227'o Possui'
          'SGE_FRENTE'
          'SYFRENTE')
        TabOrder = 3
      end
      object CB_EXCFP_EXCPED: TCheckBox
        Left = 3
        Top = 245
        Width = 377
        Height = 17
        Caption = 'Ao Excluir Pedidos Pagos Excluir Tamb'#233'm as Formas Pgtos'
        TabOrder = 18
      end
      object CB_TRODCX: TCheckBox
        Left = 392
        Top = 199
        Width = 381
        Height = 17
        Caption = 'Trocas de Mercadorias Lan'#231'ar no Caixa Somente a Diferen'#231'a'
        TabOrder = 21
      end
      object CB_TROEMP100: TCheckBox
        Left = 392
        Top = 215
        Width = 413
        Height = 17
        Caption = 'Trocas de Mercadorias Somente na Empresa acima de 100'
        TabOrder = 22
      end
      object CB_ATIVARTODAS: TCheckBox
        Left = 375
        Top = 67
        Width = 202
        Height = 17
        Caption = 'Trabalhar com Varias Empresas'
        TabOrder = 9
      end
      object CB_LSEPMOD02: TCheckBox
        Left = 2
        Top = 68
        Width = 327
        Height = 17
        Caption = 'Ao Emitir Lista de Separa'#231#227'o Emitir Tambem a 2'
        TabOrder = 7
      end
      object CB_CONSPROPED: TCheckBox
        Left = 2
        Top = 112
        Width = 366
        Height = 17
        Caption = 'Manter Visivel Consulta de Produtos no Cadastro de Pedido'
        TabOrder = 6
      end
      object CB_LORCMOD02: TCheckBox
        Left = 2
        Top = 81
        Width = 327
        Height = 17
        Caption = 'Ao Emitir Or'#231'amento Emitir Tambem o 2'
        TabOrder = 23
      end
      object CB_LOGUSRPED: TCheckBox
        Left = 392
        Top = 230
        Width = 377
        Height = 17
        Caption = 'Logar Usu'#225'rio Sempre que For Incluir um Novo Pedido'
        TabOrder = 24
      end
      object CB_HINTPROPED: TCheckBox
        Left = 392
        Top = 245
        Width = 377
        Height = 17
        Caption = 'Exibir Informa'#231#245'es do Produto no rodape  Dig.de Pedidos'
        TabOrder = 25
      end
      object CB_VISMLUC: TCheckBox
        Left = 392
        Top = 259
        Width = 377
        Height = 17
        Caption = 'Exibir Lucro da Mercadorias no Programa de Pedido'
        TabOrder = 26
      end
      object CB_ATUCOMPROGRU: TCheckBox
        Left = 392
        Top = 274
        Width = 377
        Height = 17
        Caption = 'Atualizar Comiss'#227'o de Produtos Atrav'#233's do Grupo'
        TabOrder = 27
      end
      object CB_COMISPAD: TComboBox
        Left = 503
        Top = 288
        Width = 260
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 28
        Text = 'Cadastro do Produto'
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          'Cadastro do Produto'
          'Plano de Vendas'
          'Cadastro do Vendedor'
          'Cadastro de Clientes'
          'Cadastro de Estados'
          'Extra por Produto'
          '% da Comiss'#227'o do Produto'
          'Comissao do&Desconto'
          'Ref.Tabela de Status do Produtos')
      end
      object CB_MTE: TCheckBox
        Left = 375
        Top = 83
        Width = 421
        Height = 16
        Caption = 'Exibir todos os dados da Empresa(1+101)'
        TabOrder = 29
      end
      object DEV_CODPV: TEdit
        Left = 288
        Top = 279
        Width = 36
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 19
      end
      object CB_DEV_TABPV: TComboBox
        Left = 245
        Top = 279
        Width = 42
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        Enabled = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 20
        Text = 'AP'
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'CV'
          'PO')
      end
      object QTDDBLOQPED: TEdit
        Left = 276
        Top = 299
        Width = 43
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 30
        OnExit = QTDDBLOQPEDExit
      end
      object CB_LSEPSEP_ORDEM: TCheckBox
        Left = 2
        Top = 96
        Width = 378
        Height = 17
        Caption = 'Ao Emitir Lista de Separa'#231#227'o Separado por Ordem/Sequencia'
        TabOrder = 31
      end
      object CB_PEXTRAMEN: TCheckBox
        Left = 375
        Top = 99
        Width = 309
        Height = 13
        Caption = 'Permitir Pre'#231'o Extra Menor que o pre'#231'o Padr'#227'o'
        TabOrder = 32
      end
      object CB_FORMACE: TCheckBox
        Left = 375
        Top = 53
        Width = 173
        Height = 17
        Caption = 'Conciliar pela quantidade'
        TabOrder = 33
      end
      object CB_CONCEXATO: TCheckBox
        Left = 594
        Top = 67
        Width = 127
        Height = 17
        Caption = 'So Exato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
      object CB_VALEMOD02: TCheckBox
        Left = 2
        Top = 53
        Width = 327
        Height = 17
        Caption = 'Ao Emitir Vale de Mercadorias Emitir Tambem a 2'
        TabOrder = 35
      end
      object CB_ALTEMP_EMI: TCheckBox
        Left = 6
        Top = 330
        Width = 427
        Height = 17
        Caption = 'Permitir alterar emprestimo mesmo depois da Lista de Separa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        OnClick = CB_ALTEMP_EMIClick
      end
      object cb_CliVen: TCheckBox
        Left = 6
        Top = 314
        Width = 275
        Height = 17
        Caption = 'Consultar Clientes especificos do Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
        OnClick = CB_ALTEMP_EMIClick
      end
      object COMTLV: TEdit
        Left = 543
        Top = 310
        Width = 67
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 38
        OnChange = COMTLVChange
        OnExit = COMTLVExit
      end
      object CB_ANDROID: TCheckBox
        Left = 6
        Top = 346
        Width = 251
        Height = 17
        Caption = 'Utiliza SGE-Android / VENDA-ONLINE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 39
        OnClick = CB_ANDROIDClick
      end
      object CB_DESFP: TCheckBox
        Left = 6
        Top = 362
        Width = 347
        Height = 17
        Caption = 'Criticar desconto com forma de pagamento.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 40
        OnClick = CB_DESFPClick
      end
      object CB_EMPRESTIMO_PADRAO: TComboBox
        Left = 130
        Top = 376
        Width = 350
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 41
        OnClick = CB_EMPRESTIMO_PADRAOClick
        OnExit = CB_EMPRESTIMO_PADRAOExit
        Items.Strings = (
          'POR ITEM'
          'POR PEDIDO')
      end
    end
    object tsContFat: TTabSheet
      Caption = 'Faturamento(Continua'#231#227'o)'
      ImageIndex = 4
      object Label70: TLabel
        Left = 3
        Top = 24
        Width = 158
        Height = 13
        Caption = 'Sobre Gravacao de Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 380
        Top = 42
        Width = 387
        Height = 13
        Caption = 'Bloquear Venda de Produto que Esteja com pre'#231'o  Abaixo da tabela'
      end
      object Label57: TLabel
        Left = 381
        Top = 60
        Width = 252
        Height = 13
        Caption = 'e com valor inferior ao Pre'#231'o da(s) ultima(s) '
      end
      object Label58: TLabel
        Left = 669
        Top = 57
        Width = 57
        Height = 13
        Caption = 'Compra(s)'
      end
      object Label63: TLabel
        Left = 384
        Top = 79
        Width = 186
        Height = 13
        Caption = 'Permitir Digitar itens Duplicados:'
      end
      object Label68: TLabel
        Left = 13
        Top = 105
        Width = 178
        Height = 13
        Caption = 'Forma de Pagament no Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 13
        Top = 126
        Width = 168
        Height = 13
        Caption = 'Formulario de Pedido Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 12
        Top = 257
        Width = 174
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o do Servidor de NFE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbntestar: TSpeedButton
        Left = 483
        Top = 252
        Width = 54
        Height = 22
        Caption = 'testar'
        OnClick = sb
      end
      object sbn_salvarnfe01: TSpeedButton
        Left = 539
        Top = 252
        Width = 54
        Height = 22
        Caption = 'Salvar'
        OnClick = sbn_salvarnfe01Click
      end
      object Label76: TLabel
        Left = 73
        Top = 337
        Width = 113
        Height = 13
        Caption = 'Servidores SERIE1:'
      end
      object Label5: TLabel
        Left = 14
        Top = 150
        Width = 171
        Height = 13
        Caption = 'Endere'#231'o Pedido Eletr'#244'nico..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton3: TSpeedButton
        Left = 483
        Top = 144
        Width = 54
        Height = 22
        Caption = 'testar'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 539
        Top = 144
        Width = 54
        Height = 22
        Caption = 'Salvar'
        OnClick = SpeedButton4Click
      end
      object Label6: TLabel
        Left = 14
        Top = 174
        Width = 171
        Height = 13
        Caption = 'Database Pedido Eletr'#244'nico..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 25
        Top = 198
        Width = 160
        Height = 13
        Caption = 'Usu'#225'rio Pedido Eletr'#244'nico..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 31
        Top = 222
        Width = 153
        Height = 13
        Caption = 'Senha Pedido Eletr'#244'nico..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 12
        Top = 275
        Width = 174
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '2a. Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbn_testar02: TSpeedButton
        Left = 483
        Top = 270
        Width = 54
        Height = 22
        Caption = 'testar'
        OnClick = sbn_testar02Click
      end
      object sbn_salvarnfe02: TSpeedButton
        Left = 540
        Top = 270
        Width = 54
        Height = 22
        Caption = 'Salvar'
        OnClick = sbn_salvarnfe02Click
      end
      object Label19: TLabel
        Left = 12
        Top = 291
        Width = 174
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '3a.Op'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbn_testar03: TSpeedButton
        Left = 483
        Top = 286
        Width = 54
        Height = 22
        Caption = 'testar'
        OnClick = sbn_testar03Click
      end
      object sbn_salvarnfe03: TSpeedButton
        Left = 539
        Top = 286
        Width = 54
        Height = 22
        Caption = 'Salvar'
        OnClick = sbn_salvarnfe03Click
      end
      object Label20: TLabel
        Left = 600
        Top = 245
        Width = 225
        Height = 65
        AutoSize = False
        Caption = 
          'Servidor Gerente net 177.70.11.220'#13#10'Servidor intersys        69.' +
          '162.124.34'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
      end
      object Label21: TLabel
        Left = 10
        Top = 309
        Width = 174
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo do Certificado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SBN_TIPO_CERTIFICADO: TSpeedButton
        Left = 539
        Top = 307
        Width = 54
        Height = 22
        Caption = 'Salvar'
        OnClick = SBN_TIPO_CERTIFICADOClick
      end
      object CB_GRAVPEDBLOQ: TComboBox
        Left = 163
        Top = 21
        Width = 232
        Height = 21
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'N'#227'o'
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          'N'#227'o'
          'com Restri'#231#245'es sem exce'#231#227'o'
          'com Restri'#231#245'es exceto de desconto')
      end
      object CB_PCOPADLIQ: TCheckBox
        Left = 4
        Top = 40
        Width = 366
        Height = 17
        Caption = 'Faturar Sempre Manipulando o Pre'#231'o Unitario(Pre'#231'o Extra)'
        TabOrder = 1
      end
      object CB_KITPROD: TCheckBox
        Left = 4
        Top = 59
        Width = 361
        Height = 17
        Caption = 'Permitir Criacao de Kit na Digitacao do Pedido'
        TabOrder = 2
      end
      object CB_RECALCPEDMAN: TCheckBox
        Left = 3
        Top = 77
        Width = 360
        Height = 17
        Caption = 'Recalcular Pedido ao Manipular na Manuten'#231#227'o de Pedido'
        TabOrder = 3
      end
      object BLQPCOMENOR_QTD: TEdit
        Left = 633
        Top = 56
        Width = 32
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = BLQPCOMENOR_QTDExit
      end
      object CB_FATDPRO: TComboBox
        Left = 577
        Top = 77
        Width = 201
        Height = 21
        BevelKind = bkSoft
        Color = 65408
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = '0-Nao'
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          '0-Nao'
          '1-Sim Conf'
          '2-Sim')
      end
      object CB_PPEDFPGTO: TComboBox
        Left = 193
        Top = 103
        Width = 288
        Height = 21
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 6
        Text = 'N'#227'o'
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          'N'#227'o'
          'Sim SGE_FRENTE n'#227'o Manipula'
          'Sim SGE_FRENTE Podendo Manipular a qualquer momento'
          'Sim SGE_FRENTE Fecha Venda Direta Sem Exigir Confirmacao'
          'Sim SGE_FRENTE Manipulando e N'#227'o Baixando o Titulo'
          'Sim SGE_FRENTE Manipula mas n'#227'o aceita desconto')
      end
      object CB_FORPEDPAD: TComboBox
        Left = 193
        Top = 124
        Width = 288
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 7
        Text = 'Antigo em Extin'#231#227'o'
        OnExit = CB_TIPPEDExit
        Items.Strings = (
          'Antigo em Extin'#231#227'o'
          'Intermediario'
          'Novo'
          'Ultimo')
      end
      object CB_TROCARMERDIG: TCheckBox
        Left = 192
        Top = 358
        Width = 425
        Height = 17
        Caption = 'Permitir Trocar Mercadorias no Faturamento(digitacao)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = CB_TROCARMERDIGClick
      end
      object edt_servnfe: TEdit
        Left = 193
        Top = 255
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '186.202.61.22'
      end
      object edt_nfe_servidor01: TEdit
        Left = 193
        Top = 332
        Width = 55
        Height = 19
        Ctl3D = False
        MaxLength = 9
        ParentCtl3D = False
        TabOrder = 10
        OnChange = edt_nfe_servidor01Change
      end
      object edt_nfe_servidor02: TEdit
        Left = 254
        Top = 332
        Width = 55
        Height = 19
        Ctl3D = False
        MaxLength = 9
        ParentCtl3D = False
        TabOrder = 11
        OnChange = edt_nfe_servidor02Change
      end
      object edt_nfe_servidor03: TEdit
        Left = 315
        Top = 332
        Width = 55
        Height = 19
        Ctl3D = False
        MaxLength = 9
        ParentCtl3D = False
        TabOrder = 12
        OnChange = edt_nfe_servidor03Change
      end
      object edt_dbpedele: TEdit
        Left = 193
        Top = 171
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        Text = 'pedele'
      end
      object edt_userpedele: TEdit
        Left = 193
        Top = 195
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        Text = 'pedele'
      end
      object edt_servpedele: TEdit
        Left = 193
        Top = 147
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        Text = '10.1.1.2'
      end
      object edt_passpedele: TEdit
        Left = 193
        Top = 219
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 16
        Text = 'dezenove'
      end
      object edt_servnfe02: TEdit
        Left = 193
        Top = 273
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        Text = '187.115.66.177'
      end
      object edt_servnfe03: TEdit
        Left = 193
        Top = 289
        Width = 284
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        Text = 'localhost'
      end
      object CB_TIPO_CERTIFICADO: TComboBox
        Left = 194
        Top = 307
        Width = 284
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 19
        Text = 'A1'
        OnExit = CB_TIPO_CERTIFICADOExit
        Items.Strings = (
          'A1'
          'CARTAOA3'
          'OUTROS')
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Faturamento(Tipo de Pedidos)'
      ImageIndex = 10
      object GroupBox5: TGroupBox
        Left = 0
        Top = 170
        Width = 835
        Height = 231
        Align = alBottom
        Caption = 'Eventos ao Emitir notas para os Pedidos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lbl_tipo01: TLabel
          Left = 3
          Top = 31
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '01-Venda Normal:'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo02: TLabel
          Left = 3
          Top = 44
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '02-Simples Remessa:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo03: TLabel
          Left = 3
          Top = 58
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '03-Dev.Fornecedor:'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo04: TLabel
          Left = 3
          Top = 72
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '04-Remessa p/Troca:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo05: TLabel
          Left = 3
          Top = 85
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '05-Transferencias:'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo06: TLabel
          Left = 3
          Top = 98
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '06-Rem.p/Beneficiam:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo07: TLabel
          Left = 3
          Top = 110
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '07-Remessa p/Vendas'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo08: TLabel
          Left = 3
          Top = 123
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '08-Dev.Cliente(Entra)'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo09: TLabel
          Left = 3
          Top = 137
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '09-Empr'#233'stimo Merc.:'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object Bevel9: TBevel
          Left = 376
          Top = 6
          Width = 2
          Height = 221
        end
        object lbl_tipo10: TLabel
          Left = 3
          Top = 152
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '10-Nota Complementar:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo11: TLabel
          Left = 3
          Top = 165
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '11-Rem.Consigna'#231#227'o'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo12: TLabel
          Left = 3
          Top = 179
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '12-Dev.Merc.Consign.:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo13: TLabel
          Left = 3
          Top = 194
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '13-Dev.Rem.p/Vda:'
          Color = 16776176
          ParentColor = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo14: TLabel
          Left = 4
          Top = 210
          Width = 111
          Height = 13
          AutoSize = False
          Caption = '14-Venda Merc.Consig:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo15: TLabel
          Left = 379
          Top = 9
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '15-Venda Rem.P/Vda:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo16: TLabel
          Left = 379
          Top = 23
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '16-Venda Nor.Troca M'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo17: TLabel
          Left = 379
          Top = 37
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '17-Dev.Cli.Troca Merc'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo18: TLabel
          Left = 379
          Top = 50
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '18-Transferencia Entr'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo19: TLabel
          Left = 379
          Top = 63
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '19-Dev.Merc.Terc.(Cons)'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo20: TLabel
          Left = 379
          Top = 75
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '20-Rem.p/Industrializa'#231#227'o'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo21: TLabel
          Left = 379
          Top = 88
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '21-Remessa p/Brinde'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo22: TLabel
          Left = 379
          Top = 102
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '22-Rem. Amostra Gratis'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo23: TLabel
          Left = 379
          Top = 117
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '23-Rem. p/Demonstra'#231#227'o'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo24: TLabel
          Left = 379
          Top = 130
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '24-Remessa p/Conserto'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo25: TLabel
          Left = 379
          Top = 144
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '25-Remessa Comodato'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object Label54: TLabel
          Left = 306
          Top = 8
          Width = 62
          Height = 26
          AutoSize = False
          Caption = 'Status Lista Separa'#231#227'o'
          WordWrap = True
        end
        object lbl_tipo26: TLabel
          Left = 378
          Top = 161
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '26-Venda a Ordem'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo27: TLabel
          Left = 379
          Top = 176
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '27-Remessa Venda a Ordem'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo28: TLabel
          Left = 378
          Top = 191
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '28-Remessa p/Incineracao'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object lbl_tipo29: TLabel
          Left = 379
          Top = 208
          Width = 130
          Height = 13
          AutoSize = False
          Caption = '28-Remessa p/Sinistro'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          OnClick = lbl_tipo01Click
        end
        object CB_DUPTIP1: TCheckBox
          Left = 114
          Top = 31
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 0
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP1: TCheckBox
          Left = 213
          Top = 31
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 1
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP2: TCheckBox
          Left = 213
          Top = 44
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP2: TCheckBox
          Left = 114
          Top = 44
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP3: TCheckBox
          Left = 114
          Top = 58
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 4
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP3: TCheckBox
          Left = 213
          Top = 58
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 5
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP4: TCheckBox
          Left = 213
          Top = 72
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP4: TCheckBox
          Left = 114
          Top = 72
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP5: TCheckBox
          Left = 114
          Top = 85
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 8
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP5: TCheckBox
          Left = 213
          Top = 85
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 9
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP6: TCheckBox
          Left = 114
          Top = 98
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP6: TCheckBox
          Left = 213
          Top = 98
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP7: TCheckBox
          Left = 213
          Top = 110
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 12
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP7: TCheckBox
          Left = 114
          Top = 110
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 13
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP8: TCheckBox
          Left = 114
          Top = 123
          Width = 102
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP9: TCheckBox
          Left = 213
          Top = 137
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 15
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP9: TCheckBox
          Left = 114
          Top = 137
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 16
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP8: TCheckBox
          Left = 213
          Top = 123
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP10: TCheckBox
          Left = 114
          Top = 152
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP10: TCheckBox
          Left = 213
          Top = 152
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP11: TCheckBox
          Left = 114
          Top = 165
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP11: TCheckBox
          Left = 213
          Top = 165
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP12: TCheckBox
          Left = 114
          Top = 179
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP12: TCheckBox
          Left = 213
          Top = 179
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 23
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP13: TCheckBox
          Left = 114
          Top = 193
          Width = 98
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          ParentColor = False
          TabOrder = 24
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP13: TCheckBox
          Left = 213
          Top = 193
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          ParentColor = False
          TabOrder = 25
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP14: TCheckBox
          Left = 114
          Top = 210
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP14: TCheckBox
          Left = 213
          Top = 210
          Width = 88
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 27
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP15: TCheckBox
          Left = 632
          Top = 9
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 28
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP15: TCheckBox
          Left = 515
          Top = 9
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP16: TCheckBox
          Left = 515
          Top = 23
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 30
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP16: TCheckBox
          Left = 632
          Top = 23
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 31
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP17: TCheckBox
          Left = 515
          Top = 37
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 32
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP17: TCheckBox
          Left = 632
          Top = 37
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 33
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP18: TCheckBox
          Left = 515
          Top = 50
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 34
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP18: TCheckBox
          Left = 632
          Top = 50
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 35
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP19: TCheckBox
          Left = 515
          Top = 63
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 36
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP19: TCheckBox
          Left = 632
          Top = 63
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 37
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP20: TCheckBox
          Left = 515
          Top = 75
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 38
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP20: TCheckBox
          Left = 632
          Top = 75
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 39
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP21: TCheckBox
          Left = 515
          Top = 88
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 40
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP21: TCheckBox
          Left = 632
          Top = 88
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 41
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP22: TCheckBox
          Left = 515
          Top = 102
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 42
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP22: TCheckBox
          Left = 632
          Top = 102
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 43
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP23: TCheckBox
          Left = 515
          Top = 117
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 44
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP23: TCheckBox
          Left = 632
          Top = 117
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 45
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP24: TCheckBox
          Left = 515
          Top = 130
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 46
        end
        object CB_ESTTIP24: TCheckBox
          Left = 632
          Top = 130
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 47
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP25: TCheckBox
          Left = 515
          Top = 144
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 48
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP25: TCheckBox
          Left = 632
          Top = 144
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 49
          OnClick = CB_DUPTIP1Click
        end
        object STATUS_LSEP09: TListBox
          Left = 312
          Top = 136
          Width = 38
          Height = 17
          ItemHeight = 13
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
          TabOrder = 50
        end
        object CB_DUPTIP26: TCheckBox
          Left = 515
          Top = 158
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 51
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP26: TCheckBox
          Left = 632
          Top = 158
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 52
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP27: TCheckBox
          Left = 515
          Top = 173
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 53
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP27: TCheckBox
          Left = 632
          Top = 173
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 54
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP28: TCheckBox
          Left = 515
          Top = 192
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 55
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP28: TCheckBox
          Left = 633
          Top = 191
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 56
          OnClick = CB_DUPTIP1Click
        end
        object CB_DUPTIP29: TCheckBox
          Left = 516
          Top = 208
          Width = 115
          Height = 17
          Caption = 'Gerar Duplicata'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 57
          OnClick = CB_DUPTIP1Click
        end
        object CB_ESTTIP29: TCheckBox
          Left = 634
          Top = 208
          Width = 126
          Height = 17
          Caption = 'Manter ativa '
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 58
          OnClick = CB_DUPTIP1Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Outras Relacionados ao Faturamento'
      ImageIndex = 3
      object Label59: TLabel
        Left = 14
        Top = 4
        Width = 112
        Height = 13
        Caption = 'Tipo de Nota Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label77: TLabel
        Left = 374
        Top = 4
        Width = 91
        Height = 13
        Caption = 'Vers'#227'o do XML:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 554
        Top = 3
        Width = 117
        Height = 13
        Caption = 'Versao Gerenciador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 38
        Width = 770
        Height = 354
        Caption = 'Relacionados a NFE - Nota Fiscal Eletronica'
        TabOrder = 0
        object Label73: TLabel
          Left = 280
          Top = 49
          Width = 240
          Height = 13
          Caption = 'Local da Marca d'#39'agua no caso de Existir:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 9
          Top = 337
          Width = 167
          Height = 13
          Caption = 'Pasta p/Impressao do Danfe:'
          Visible = False
        end
        object SBNFEPASTAIMP: TSpeedButton
          Left = 727
          Top = 336
          Width = 23
          Height = 20
          Hint = 'Click aqui para Procurar Pastas'
          Caption = '...'
          Visible = False
          OnClick = SBNFEPASTAIMPClick
        end
        object Label12: TLabel
          Left = 166
          Top = 15
          Width = 141
          Height = 13
          Caption = 'Tamanho da Logomarca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label78: TLabel
          Left = 16
          Top = 139
          Width = 144
          Height = 13
          Caption = 'Tipo da Emiss'#227'o da NFE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 17
          Top = 48
          Width = 71
          Height = 13
          Caption = 'Marca Nota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 416
          Top = 115
          Width = 251
          Height = 13
          Caption = 'Tamanho da Fonte Para  Observacoes NFE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_NFETPIMP: TCheckBox
          Left = 16
          Top = 14
          Width = 145
          Height = 17
          Caption = 'Impressao Paisagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = CB_NFETPIMPClick
        end
        object GB_PASTASXML: TGroupBox
          Left = 8
          Top = 215
          Width = 757
          Height = 58
          Caption = 'Pastas dos Arquivos XML'
          TabOrder = 8
          Visible = False
          object Label64: TLabel
            Left = 45
            Top = 16
            Width = 73
            Height = 13
            Caption = 'Pasta Envio:'
          end
          object Label65: TLabel
            Left = 31
            Top = 33
            Width = 86
            Height = 13
            Caption = 'Pasta Retorno:'
          end
          object SBNPastaEnvio: TSpeedButton
            Left = 719
            Top = 13
            Width = 23
            Height = 20
            Hint = 'Click aqui para Procurar Pastas'
            Caption = '...'
            OnClick = SBNPastaEnvioClick
          end
          object SBSPastaRetorno: TSpeedButton
            Left = 719
            Top = 34
            Width = 23
            Height = 19
            Hint = 'Click aqui para Procurar Pastas'
            Caption = '...'
            OnClick = SBSPastaRetornoClick
          end
          object PASTAENVIO: TEdit
            Left = 124
            Top = 16
            Width = 596
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object PASTARETORNO: TEdit
            Left = 124
            Top = 34
            Width = 596
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 275
          Width = 757
          Height = 58
          Caption = 'Pastas dos Arquivos XML Somente para Teste'
          TabOrder = 13
          Visible = False
          object Label66: TLabel
            Left = 45
            Top = 16
            Width = 73
            Height = 13
            Caption = 'Pasta Envio:'
          end
          object Label67: TLabel
            Left = 31
            Top = 33
            Width = 86
            Height = 13
            Caption = 'Pasta Retorno:'
          end
          object SBNValXmlEnvio: TSpeedButton
            Left = 719
            Top = 13
            Width = 23
            Height = 20
            Hint = 'Click aqui para Procurar Pastas'
            Caption = '...'
            OnClick = SBNValXmlEnvioClick
          end
          object SBSValXmlRetorno: TSpeedButton
            Left = 719
            Top = 34
            Width = 23
            Height = 19
            Hint = 'Click aqui para Procurar Pastas'
            Caption = '...'
            OnClick = SBSValXmlRetornoClick
          end
          object VALXMLENVIO: TEdit
            Left = 124
            Top = 16
            Width = 596
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object VALXMLRETORNO: TEdit
            Left = 124
            Top = 34
            Width = 596
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object CB_NFEAVISA_MTPIMP: TCheckBox
          Left = 373
          Top = 13
          Width = 390
          Height = 17
          Caption = 'Avisar ao Mudar o Tipo de Impress'#227'o (CONTIGENCIAxNORMAL)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object CB_NFEVISALIZAR: TCheckBox
          Left = 16
          Top = 31
          Width = 185
          Height = 17
          Caption = 'Visualizar Antes de Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object CB_LOCALMD: TComboBox
          Left = 524
          Top = 46
          Width = 234
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 6
          OnClick = CB_LOCALMDClick
          Items.Strings = (
            'Centralizada'
            'Distribuida'
            'Pagina Inteira')
        end
        object CB_NFEFRAME: TCheckBox
          Left = 524
          Top = 29
          Width = 228
          Height = 17
          Caption = 'Imprimir Diretamente no FrameWork'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = CB_NFEFRAMEClick
        end
        object NFEPASTAIMP: TEdit
          Left = 179
          Top = 335
          Width = 547
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          Visible = False
        end
        object CB_PMC: TCheckBox
          Left = 372
          Top = 31
          Width = 133
          Height = 17
          Caption = 'Imprimir PMC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = CB_PMCClick
        end
        object edt_tamlogomarca: TEdit
          Left = 309
          Top = 13
          Width = 54
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_tamlogomarcaExit
        end
        object CB_RAZSOC_CANHOTO: TCheckBox
          Left = 322
          Top = 96
          Width = 286
          Height = 17
          Caption = 'Imprimir Raz'#227'o Social do Cliente no Canhoto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = CB_RAZSOC_CANHOTOClick
        end
        object CB_TPEMIS: TComboBox
          Left = 163
          Top = 135
          Width = 598
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 11
          Text = 'N'#227'o Definido'
          OnClick = CB_LOCALMDClick
          Items.Strings = (
            'N'#227'o Definido'
            'Normal '#8211' emiss'#227'o normal;'
            
              'Conting'#234'ncia FS '#8211' emiss'#227'o em conting'#234'ncia com impress'#227'o do DANFE' +
              ' em Formul'#225'rio de Seguran'#231'a;'
            
              'Conting'#234'ncia SCAN '#8211' emiss'#227'o em conting'#234'ncia no Sistema de Contin' +
              'g'#234'ncia do Ambiente Nacional '#8211' SCAN;'
            
              'Conting'#234'ncia DPEC - emiss'#227'o em conting'#234'ncia com envio da Declara' +
              #231#227'o Pr'#233'via de Emiss'#227'o em Conting'#234'ncia-DPEC;'
            
              'Conting'#234'ncia FS-DA - emiss'#227'o em conting'#234'ncia com impress'#227'o do DA' +
              'NFE em Formul'#225'rio de Seguran'#231'a para Impress'#227'o de Documento Auxil' +
              'iar de Documento Fiscal Eletr'#244'nico (FS-DA)')
        end
        object GroupBox9: TGroupBox
          Left = 10
          Top = 155
          Width = 743
          Height = 60
          Caption = 'Sobre o INTERSYS_NFE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Visible = False
          object Label44: TLabel
            Left = 13
            Top = 16
            Width = 79
            Height = 13
            Caption = 'Pasta Master:'
          end
          object SpeedButton1: TSpeedButton
            Left = 719
            Top = 13
            Width = 23
            Height = 20
            Hint = 'Click aqui para Procurar Pastas'
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object edt_NFEPASTAMASTER: TEdit
            Left = 124
            Top = 16
            Width = 596
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
          end
          object CB_VERSGENFE: TCheckBox
            Left = 128
            Top = 40
            Width = 513
            Height = 17
            Caption = 'Utilizar Vers'#227'o INTERSYS_NFE como Gerenciador de NFe'
            TabOrder = 1
          end
        end
        object CB_LOTE_VENC: TCheckBox
          Left = 322
          Top = 66
          Width = 229
          Height = 17
          Caption = 'N'#227'o Imprimir Lotes e Vencimentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = CB_LOTE_VENCClick
        end
        object CB_DESCCOMPSEGLIN: TCheckBox
          Left = 15
          Top = 80
          Width = 298
          Height = 17
          Caption = 'Imprimir Descri'#231#227'o Complementar Segunda Linha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = CB_DESCCOMPSEGLINClick
        end
        object CB_NLOGO_NFE: TCheckBox
          Left = 322
          Top = 81
          Width = 229
          Height = 17
          Caption = 'N'#227'o Imprimir Logomarca na NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = CB_NLOGO_NFEClick
        end
        object CB_AVISTASEMDUP: TCheckBox
          Left = 16
          Top = 97
          Width = 298
          Height = 17
          Caption = 'Colocar Pagamento a Vista no Danfe Quando for'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = CB_AVISTASEMDUPClick
        end
        object cb_ExibirMarca: TComboBox
          Left = 99
          Top = 45
          Width = 126
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ItemIndex = 2
          ParentFont = False
          TabOrder = 17
          Text = 'Confirmando'
          OnChange = cb_ExibirMarcaChange
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Confirmando')
        end
        object CB_TRACOITEM: TCheckBox
          Left = 15
          Top = 114
          Width = 290
          Height = 17
          Caption = 'Traco Separando Produtos no Corpo da Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnClick = CB_TRACOITEMClick
        end
        object spn_tamfonteobsnfe: TSpinEdit
          Left = 672
          Top = 112
          Width = 81
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 19
          Value = -13
          OnChange = spn_tamfonteobsnfeChange
        end
        object CB_MARCA_LSEP: TCheckBox
          Left = 16
          Top = 63
          Width = 229
          Height = 17
          Caption = 'Marca na Lista de Separacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnClick = CB_MARCA_LSEPClick
        end
      end
      object CB_USANFE: TComboBox
        Left = 134
        Top = 1
        Width = 234
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 1
        OnExit = CB_USANFEExit
        Items.Strings = (
          'Formulario Continuo'
          'Ambas(Continuo+NFE)-Homologando'
          'Nota Fiscal Eletronica(NFE)-DANFE')
      end
      object CB_VERSAOXML: TComboBox
        Left = 470
        Top = 1
        Width = 75
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 2
        OnExit = CB_VERSAOXMLExit
        Items.Strings = (
          '1.10'
          '2.00'
          '3.10'
          '4.00')
      end
      object cb_versao_gerenciador_nfe: TComboBox
        Left = 674
        Top = 0
        Width = 138
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 3
        Text = 'Antes maio/2017'
        Items.Strings = (
          'Antes maio/2017'
          'a partir maio/2017')
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Atualiza'#231#245'es On-Line (a medida que for Digitando)'
      ImageIndex = 3
      object CB_ONCHANGEPRO: TCheckBox
        Left = 9
        Top = 9
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Produtos'
        TabOrder = 0
      end
      object CB_ONCHANGECLI: TCheckBox
        Left = 9
        Top = 28
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Clientes'
        TabOrder = 1
      end
      object CB_ONCHANGELOC: TCheckBox
        Left = 9
        Top = 46
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Cidades'
        TabOrder = 2
      end
      object CB_ONCHANGEBAI: TCheckBox
        Left = 9
        Top = 64
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Bairros'
        TabOrder = 3
      end
      object CB_ONCHANGEPV: TCheckBox
        Left = 9
        Top = 81
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Plano de Vendas'
        TabOrder = 4
      end
      object CB_ONCHANGEVEND: TCheckBox
        Left = 9
        Top = 99
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Vendedores'
        TabOrder = 5
      end
      object CB_ONCHANGEUSR: TCheckBox
        Left = 9
        Top = 116
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Usu'#225'rios'
        TabOrder = 6
      end
      object CB_ONCHANGECAR: TCheckBox
        Left = 9
        Top = 132
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Cargos'
        TabOrder = 7
      end
      object CB_ONCHANGEFUN: TCheckBox
        Left = 9
        Top = 149
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Funcionarios'
        TabOrder = 8
      end
      object CB_ONCHANGEREDEC: TCheckBox
        Left = 9
        Top = 166
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Rede de Clientes'
        TabOrder = 9
      end
      object CB_ONCHANGEGPRO: TCheckBox
        Left = 9
        Top = 182
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Grupos de Produtos'
        TabOrder = 10
      end
      object CB_ONCHANGERPRO: TCheckBox
        Left = 9
        Top = 199
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Ramos de Produtos'
        TabOrder = 11
      end
      object CB_ONCHANGETPRO: TCheckBox
        Left = 9
        Top = 215
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Tipos de Produtos'
        TabOrder = 12
      end
      object CB_ONCHANGECPRO: TCheckBox
        Left = 9
        Top = 232
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Controles de Produtos'
        TabOrder = 13
      end
      object CB_ONCHANGERCLI: TCheckBox
        Left = 9
        Top = 249
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Ramo de Clientes'
        TabOrder = 14
      end
      object CB_ONCHANGESUP: TCheckBox
        Left = 9
        Top = 265
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Supervisores'
        TabOrder = 15
      end
      object CB_ONCHANGETRA: TCheckBox
        Left = 9
        Top = 282
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Transportadoras'
        TabOrder = 16
      end
      object CB_ONCHANGEUF: TCheckBox
        Left = 9
        Top = 298
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Estado'
        TabOrder = 17
      end
      object CB_ONCHANGECV: TCheckBox
        Left = 394
        Top = 17
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Conv'#234'nios'
        TabOrder = 18
      end
      object CB_ONCHANGEFOR: TCheckBox
        Left = 394
        Top = 34
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Fornecedores'
        TabOrder = 19
      end
      object CB_ONCHANGEDCB: TCheckBox
        Left = 394
        Top = 51
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de DCB-Gen'#233'rico'
        TabOrder = 20
      end
      object CB_ONCHANGEDEPCX: TCheckBox
        Left = 394
        Top = 68
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o de Departamentos do Fluxo de Caixa'
        TabOrder = 21
      end
      object CB_ONCHANGECCU: TCheckBox
        Left = 394
        Top = 83
        Width = 363
        Height = 13
        Caption = 'Manuten'#231#227'o do Centro de custo do Fluxo de Caixa'
        TabOrder = 22
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Relacionados a Industria'
      ImageIndex = 5
      object Label49: TLabel
        Left = 8
        Top = 215
        Width = 467
        Height = 13
        Caption = 
          'Ordem de Envase '#237'tem Controle de Qualidade em Processo Emitir Qu' +
          'antas Linhas:'
      end
      object Label71: TLabel
        Left = 16
        Top = 10
        Width = 253
        Height = 13
        Caption = 'Ind'#250'stria(Controle de Produ'#231#227'o de Produtos)'
      end
      object CB_MPDISP: TCheckBox
        Left = 14
        Top = 129
        Width = 403
        Height = 17
        Caption = 'Ao Gravar Ordem Produ'#231#227'o/Envase Utilizar Mat'#233'rias Primas c/Lote'
        TabOrder = 2
      end
      object CB_MANPCUSFOR: TCheckBox
        Left = 14
        Top = 149
        Width = 403
        Height = 17
        Caption = 'Permitir Manipular o Pre'#231'o de Custo Na Manuten'#231#227'o de F'#243'rmulas'
        TabOrder = 3
      end
      object MQTDLCQP: TEdit
        Left = 477
        Top = 209
        Width = 121
        Height = 21
        TabOrder = 4
        OnExit = MQTDLCQPExit
      end
      object RG_IND_TPFORMULA: TRadioGroup
        Left = 6
        Top = 53
        Width = 434
        Height = 69
        Caption = 'Formula Calculada em'
        Items.Strings = (
          'Quantidade'
          '% c/Rel.Grafico'
          '% c/Rel.Matricial')
        TabOrder = 1
      end
      object GB_FORMALOTE: TGroupBox
        Left = 467
        Top = 28
        Width = 221
        Height = 157
        Caption = 'Forma'#231#227'o do Lote de Fabrica'#231#227'o:'
        TabOrder = 5
        object Label60: TLabel
          Left = 12
          Top = 59
          Width = 78
          Height = 13
          Caption = 'Proximo Lote:'
        end
        object Label61: TLabel
          Left = 12
          Top = 119
          Width = 99
          Height = 13
          Caption = 'Ultima Forma'#231#227'o:'
        end
        object Label62: TLabel
          Left = 12
          Top = 75
          Width = 178
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Mascara do Lote'
          Color = 8454143
          ParentColor = False
        end
        object CB_FORMALOTEFAB: TComboBox
          Left = 11
          Top = 32
          Width = 180
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          Sorted = True
          TabOrder = 0
          Text = 'Ano Inverso + Sequencia'
          Items.Strings = (
            'Ano Inverso + Sequencia'
            'Ano Normal + Sequencia'
            'Ano/Mes Normal + Sequencia'
            'M'#234's/Ano Normal + Sequencia'
            'Sem Sigla')
        end
        object PROXLOTFAB: TEdit
          Left = 98
          Top = 54
          Width = 92
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = PROXLOTFABExit
        end
        object ULTFORLOTFAB: TEdit
          Left = 113
          Top = 115
          Width = 77
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = ULTFORLOTFABExit
        end
        object CB_FORMALOTEFAB_MASC: TComboBox
          Left = 15
          Top = 91
          Width = 180
          Height = 21
          BevelKind = bkFlat
          ItemHeight = 13
          TabOrder = 2
          Text = 'Nenhuma'
          Items.Strings = (
            'Nenhuma'
            '9.999-999'
            '0000')
        end
      end
      object CB_UTILCQ: TCheckBox
        Left = 7
        Top = 189
        Width = 546
        Height = 17
        Caption = 
          'Utilizar Controle de Qualidade 0-Nao 1-Sim (Bloqueia Pedido de C' +
          'ompra e Ordem Produ'#231#227'o)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Visible = False
      end
      object RG_INDUSTRIA: TComboBox
        Left = 11
        Top = 32
        Width = 454
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 6
        TabOrder = 0
        Text = 
          'Controle Simples + Pedidos com Materias Primas Sem Vinculo com P' +
          'roduto'
        Items.Strings = (
          'N'#227'o'
          'Controle Simples'
          'Controle c/Envase Quantidade'
          'Controle c/Prod.(%)Perc.+Envase'
          'Centesimal Sem Produto Intermediario'
          
            'Controle Simples + Pedidos com Materias Primas Vinculado ao Prod' +
            'uto'
          
            'Controle Simples + Pedidos com Materias Primas Sem Vinculo com P' +
            'roduto'
          '')
      end
      object GroupBox10: TGroupBox
        Left = 7
        Top = 232
        Width = 746
        Height = 161
        Caption = 'Se Marcado Sera Gerado Sequencia do Registro de Enrtrada(RE):'
        TabOrder = 7
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 742
          Height = 120
          Align = alClient
          DataSource = src_cadpar_re
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'nometipo'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 362
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'validar_lote'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lote_re'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'analise'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 110
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 2
          Top = 135
          Width = 742
          Height = 24
          Align = alBottom
          TabOrder = 1
          object bbSalvar_RE: TBitBtn
            Left = 263
            Top = 0
            Width = 166
            Height = 25
            Caption = 'Salvar'
            TabOrder = 0
            OnClick = bbSalvar_REClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
              33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
              D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
              BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
              EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
              BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
              D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
              3333333773FFFF77333333333000003333333333377777333333}
            NumGlyphs = 2
          end
        end
        object pnl_RE: TPanel
          Left = 232
          Top = 8
          Width = 241
          Height = 97
          TabOrder = 2
          Visible = False
          OnExit = pnl_REExit
          object lblSigla: TLabel
            Left = 53
            Top = 28
            Width = 49
            Height = 13
            Caption = 'SIGLA..:'
          end
          object lblCodSeq: TLabel
            Left = 18
            Top = 53
            Width = 84
            Height = 13
            Caption = 'SEQU'#202'NCIA..:'
          end
          object dbSigla: TDBEdit
            Left = 104
            Top = 24
            Width = 121
            Height = 21
            DataField = 'Sigla'
            DataSource = src_cadpar_re
            TabOrder = 0
          end
          object dbSeq: TDBEdit
            Left = 104
            Top = 48
            Width = 121
            Height = 21
            DataField = 'Seq'
            DataSource = src_cadpar_re
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pedido de Compra/Outros'
      ImageIndex = 7
      object Bevel10: TBevel
        Left = 0
        Top = 0
        Width = 835
        Height = 401
        Align = alClient
        Shape = bsFrame
        Style = bsRaised
      end
      object Label72: TLabel
        Left = 10
        Top = 20
        Width = 232
        Height = 13
        Caption = 'Formulario de Pedido de Compra Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cb_pedidocompra: TComboBox
        Left = 244
        Top = 12
        Width = 117
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Intermediario'
        Items.Strings = (
          'Intermediario'
          'Novo')
      end
      object GroupBox8: TGroupBox
        Left = 96
        Top = 136
        Width = 553
        Height = 161
        Caption = 'Locais de Armazenagem/Filiais:'
        TabOrder = 1
        object DBGrid_cadpro_filial: TDBGrid
          Left = 2
          Top = 15
          Width = 549
          Height = 144
          Align = alClient
          DataSource = src_Cadpro_Filial
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnExit = DBGrid_cadpro_filialExit
          Columns = <
            item
              Expanded = False
              FieldName = 'CFFILIAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFNOME'
              Visible = True
            end>
        end
      end
    end
    object tsReplicar: TTabSheet
      Caption = 'Replica'#231#227'o'
      ImageIndex = 10
      object Label79: TLabel
        Left = 8
        Top = 8
        Width = 110
        Height = 13
        Caption = 'Nome do Servi'#231'o..:'
      end
      object Label80: TLabel
        Left = 8
        Top = 28
        Width = 110
        Height = 13
        Caption = 'Nome do Usuario..:'
      end
      object edt_Servico: TEdit
        Left = 120
        Top = 1
        Width = 121
        Height = 21
        TabOrder = 0
        OnExit = edt_ServicoExit
      end
      object edt_Usuario: TEdit
        Left = 120
        Top = 25
        Width = 121
        Height = 21
        TabOrder = 1
        OnExit = edt_UsuarioExit
      end
      object rg_CadPro: TCheckBox
        Left = 27
        Top = 48
        Width = 195
        Height = 17
        Caption = 'Replicar Cadastro de Produtos'
        TabOrder = 2
        OnClick = rg_CadProClick
      end
      object rg_CadCli: TCheckBox
        Left = 27
        Top = 64
        Width = 195
        Height = 17
        Caption = 'Replicar Cadastro de Clientes'
        TabOrder = 3
        OnClick = rg_CadCliClick
      end
      object DatHorUltRepPro: TEdit
        Left = 248
        Top = 0
        Width = 121
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
      end
      object DatHorUltRepCli: TEdit
        Left = 248
        Top = 24
        Width = 121
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 688
    Top = 104
  end
  object mem_cadpar_re: TRxMemoryData
    FieldDefs = <>
    Left = 676
    Top = 320
    object mem_cadpar_retipoprod: TStringField
      FieldName = 'tipoprod'
      Size = 40
    end
    object mem_cadpar_relote_re: TStringField
      DisplayLabel = 'Lote RE Individual'
      FieldName = 'lote_re'
      Size = 1
    end
    object mem_cadpar_reanalise: TStringField
      DisplayLabel = 'Aguardar Analise'
      FieldName = 'analise'
      Size = 1
    end
    object mem_cadpar_renometipo: TStringField
      DisplayLabel = 'Tipo de Produto'
      FieldName = 'nometipo'
      Size = 100
    end
    object mem_cadpar_revalidar_lote: TStringField
      DisplayLabel = 'Lote Obrigatorio'
      FieldName = 'validar_lote'
      Size = 1
    end
    object mem_cadpar_reSeq: TFloatField
      FieldName = 'Seq'
    end
    object mem_cadpar_reSigla: TStringField
      DisplayWidth = 10
      FieldName = 'Sigla'
      Size = 10
    end
  end
  object src_cadpar_re: TDataSource
    DataSet = mem_cadpar_re
    Left = 715
    Top = 328
  end
  object Qr_Cadpro_Filial: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_Cadpro_FilialBeforeInsert
    AfterInsert = Qr_Cadpro_FilialAfterInsert
    BeforeEdit = Qr_Cadpro_FilialBeforeEdit
    BeforePost = Qr_Cadpro_FilialBeforePost
    AfterPost = c
    BeforeDelete = c
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPRO_FILIAL')
    UpdateObject = U_Cadpro_Filial
    Left = 468
    Top = 32
    object Qr_Cadpro_FilialCFCODEMP: TFloatField
      FieldName = 'CFCODEMP'
      Origin = 'SG_ASSOC.CADPRO_FILIAL.CFCODEMP'
    end
    object Qr_Cadpro_FilialCFFILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CFFILIAL'
      Origin = 'SG_ASSOC.CADPRO_FILIAL.CFFILIAL'
    end
    object Qr_Cadpro_FilialCFNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFNOME'
      Origin = 'SG_ASSOC.CADPRO_FILIAL.CFNOME'
      Size = 60
    end
  end
  object src_Cadpro_Filial: TDataSource
    DataSet = Qr_Cadpro_Filial
    Left = 436
    Top = 16
  end
  object U_Cadpro_Filial: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO_FILIAL'
      'set'
      '  CFCODEMP = :CFCODEMP,'
      '  CFFILIAL = :CFFILIAL,'
      '  CFNOME = :CFNOME'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFFILIAL = :OLD_CFFILIAL')
    InsertSQL.Strings = (
      'insert into CADPRO_FILIAL'
      '  (CFCODEMP, CFFILIAL, CFNOME)'
      'values'
      '  (:CFCODEMP, :CFFILIAL, :CFNOME)')
    DeleteSQL.Strings = (
      'delete from CADPRO_FILIAL'
      'where'
      '  CFCODEMP = :OLD_CFCODEMP and'
      '  CFFILIAL = :OLD_CFFILIAL')
    Left = 444
    Top = 152
  end
end
