object Frm_Pro_AtuaGeral: TFrm_Pro_AtuaGeral
  Left = 180
  Top = 115
  Width = 1148
  Height = 559
  Caption = 'Atualiza'#231#227'o em Massa de Produtos'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1140
    Height = 487
    ActivePage = tsCampos
    Align = alClient
    TabOrder = 0
    object tsCampos: TTabSheet
      Caption = 'Campos a Serem Atualizados'
      object GroupBox1: TGroupBox
        Left = 17
        Top = 0
        Width = 210
        Height = 39
        Caption = 'C'#243'digo NCM:'
        TabOrder = 0
        object cb_atu_ncm: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object edt_codncm: TEdit
          Left = 86
          Top = 12
          Width = 122
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_codncmExit
        end
      end
      object gb_cest: TGroupBox
        Left = 232
        Top = 0
        Width = 210
        Height = 39
        Caption = 'CEST:'
        TabOrder = 1
        object CB_ATU_CEST: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CEST: TComboBox
          Left = 80
          Top = 12
          Width = 123
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'CB_CEST'
          OnExit = CB_CESTExit
        end
      end
      object gb_ipi: TGroupBox
        Left = 456
        Top = 0
        Width = 210
        Height = 39
        Caption = '% IPI'
        TabOrder = 2
        object cb_atu_ipi: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object edt_ipi: TEdit
          Left = 80
          Top = 12
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_ipiExit
        end
      end
      object gb_origem_do_produto: TGroupBox
        Left = 675
        Top = 0
        Width = 210
        Height = 39
        Caption = 'Origem do Produto'
        TabOrder = 3
        object CB_ATU_ORIGEM: TCheckBox
          Left = 8
          Top = 16
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_ORIGEM_PRODUTO: TComboBox
          Left = 82
          Top = 13
          Width = 123
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '0 - Nacional'
          OnExit = CB_ORIGEM_PRODUTOExit
          Items.Strings = (
            '0 - Nacional'
            '1 - Estrang. - Imp. direta'
            '2 - Estrang. - Merc. Interno'
            '3 - Nacional - Merc. com conteudo de Importa'#231#227'o superior a 40%'
            '4 - Nacional - com processos produtivos Basicos'
            '5 - Nacional - Merc. com conteudo importa'#231#227'o inferior a 40%'
            '6 - Estrangeira - Importa'#231#227'o direta CAMEX'
            '7 - Estrangeira - Merc. Interno CAMEX')
        end
      end
      object gb_tabicm: TGroupBox
        Left = 674
        Top = 47
        Width = 210
        Height = 39
        Caption = 'Tabela de Icms'
        TabOrder = 4
        object CB_ATU_TABICM: TCheckBox
          Left = 0
          Top = 19
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_TABICM: TComboBox
          Left = 76
          Top = 17
          Width = 123
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I')
        end
      end
      object gb_lista_piscofins: TGroupBox
        Left = 17
        Top = 48
        Width = 210
        Height = 39
        Caption = 'Lista Pis Cofins'
        TabOrder = 5
        object CB_ATU_LISTA_PIS_COFINS: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_LISTA_PIS_COFINS: TComboBox
          Left = 83
          Top = 11
          Width = 123
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Inalterado'
          Items.Strings = (
            'Inalterado'
            'Positiva'
            'Negativa')
        end
      end
      object GB_CST_ICMS_DENTRO_ESTADO_REVENDA: TGroupBox
        Left = 17
        Top = 98
        Width = 385
        Height = 39
        Caption = 'CST ICMS Revenda dentro do estado:'
        TabOrder = 6
        object CB_ATU_CST_ICMS_DENTRO_ESTADO_REVENDA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_ICMS_DENTRO_ESTADO_REVENDA: TComboBox
          Left = 74
          Top = 14
          Width = 301
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '00 - Tributado integralmente'
          OnExit = CB_CST_ICMS_DENTRO_ESTADO_REVENDAExit
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
        end
      end
      object GB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TGroupBox
        Left = 574
        Top = 98
        Width = 385
        Height = 39
        Caption = 'CST ICMS Consumidor dentro do estado:'
        TabOrder = 8
        object CB_ATU_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_ICMS_DENTRO_ESTADO_CONSMIDOR: TComboBox
          Left = 74
          Top = 14
          Width = 301
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '00 - Tributado integralmente'
          OnExit = CB_CST_ICMS_DENTRO_ESTADO_CONSMIDORExit
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
        end
      end
      object GB_CST_ICMS_FORA_ESTADO_REVENDA: TGroupBox
        Left = 17
        Top = 144
        Width = 385
        Height = 39
        Caption = 'CST ICMS Revenda Forao do estado:'
        TabOrder = 10
        object CB_ATU_CST_ICMS_FORA_ESTADO_REVENDA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_ICMS_FORA_ESTADO_REVENDA: TComboBox
          Left = 74
          Top = 14
          Width = 301
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '00 - Tributado integralmente'
          OnExit = CB_CST_ICMS_FORA_ESTADO_REVENDAExit
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
        end
      end
      object GB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TGroupBox
        Left = 574
        Top = 145
        Width = 385
        Height = 37
        Caption = 'CST ICMS Consumidor fora do estado:'
        TabOrder = 12
        object CB_ATU_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_ICMS_FORA_ESTADO_CONSUMIDOR: TComboBox
          Left = 74
          Top = 14
          Width = 301
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '00 - Tributado integralmente'
          OnExit = CB_CST_ICMS_FORA_ESTADO_CONSUMIDORExit
          Items.Strings = (
            '00 - Tributado integralmente'
            '10 - Tributado e com cobr.  do ICMS por subs. trib.'
            '20 - Com redu'#231#227'o de base de c'#225'lculo'
            '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
            '40 - Isenta ou n'#227'o tributada'
            '41 - N'#227'o tributada'
            '50 - Com suspens'#227'o ou deferimento'
            '51 - Diferimento'
            '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
            '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
            '90 - Outras')
        end
      end
      object GB_CSOSN_DENTRO_ESTADO_REVENDA: TGroupBox
        Left = 17
        Top = 193
        Width = 430
        Height = 39
        Caption = 'CSOSN Revenda dentro do estado:'
        TabOrder = 14
        object CB_ATU_CSOSN_DENTRO_ESTADO_REVENDA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CSOSN_DENTRO_ESTADO_REVENDA: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros'
            '')
        end
      end
      object GB_CSOSN_DENTRO_ESTADO_CONSMIDOR: TGroupBox
        Left = 456
        Top = 194
        Width = 430
        Height = 39
        Caption = 'CSOSN Consumidor dentro do estado:'
        TabOrder = 15
        object CB_ATU_CSOSN_DENTRO_ESTADO_CONSUMIDOR: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CSOSN_DENTRO_ESTADO_CONSUMIDOR: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros'
            '')
        end
      end
      object GB_CSOSN_FORA_ESTADO_REVENDA: TGroupBox
        Left = 17
        Top = 236
        Width = 430
        Height = 37
        Caption = 'CSOSN Revenda Fora do estado:'
        TabOrder = 16
        object CB_ATU_CSOSN_FORA_ESTADO_REVENDA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CSOSN_FORA_ESTADO_REVENDA: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros'
            '')
        end
      end
      object GB_CSOSN_FORA_ESTADO_CONSUMIDOR: TGroupBox
        Left = 456
        Top = 237
        Width = 430
        Height = 39
        Caption = 'CSOSN Consumidor fora do estado:'
        TabOrder = 17
        object CB_ATU_CSOSN_FORA_ESTADO_CONSUMIDOR: TCheckBox
          Left = 8
          Top = 16
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CSOSN_FORA_ESTADO_CONSUMIDOR: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          Items.Strings = (
            '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
            '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
            
              '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta'
            
              '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
              ' com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            
              '203 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
              'bruta e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'
            '300 - Imune'
            '400 - N'#227'o tributada pelo Simples Nacional'
            
              '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
              'bstitu'#237'do) ou por antecipa'#231#227'o'
            '900 - Outros'
            '')
        end
      end
      object GB_CST_PISCOFINS_PARA_SAIDAS: TGroupBox
        Left = 17
        Top = 325
        Width = 430
        Height = 37
        Caption = 'CST PIS/COFINS para saidas'
        TabOrder = 18
        object CB_ATU_CST_PISCOFINS_PARA_SAIDA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_PISCOFINS_PARA_SAIDA: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es'
            '')
        end
      end
      object GB_CST_PISCOFINS_PARA_ENTRADA: TGroupBox
        Left = 17
        Top = 281
        Width = 430
        Height = 39
        Caption = 'CST PIS/COFINS para entradas'
        TabOrder = 19
        object CB_ATU_CST_PISCOFINS_PARA_ENTRADA: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object CB_CST_PISCOFINS_PARA_ENTRADA: TComboBox
          Left = 74
          Top = 14
          Width = 346
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es'
            '')
        end
      end
      object GB_ALIQ_PIS_ENTRADA: TGroupBox
        Left = 456
        Top = 281
        Width = 210
        Height = 39
        Caption = 'Aliquota Pis Entrada:'
        TabOrder = 20
        object CB_ATU_ALIQ_PIS_ENTRADA: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object EDT_ALIQ_PIS_ENTRADA: TEdit
          Left = 108
          Top = 12
          Width = 47
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = EDT_ALIQ_PIS_ENTRADAExit
        end
      end
      object GB_ALIQ_COFINS_ENTRADA: TGroupBox
        Left = 670
        Top = 281
        Width = 210
        Height = 39
        Caption = 'Aliquota Cofins Entrada:'
        TabOrder = 21
        object CB_ATU_ALIQ_COFINS_ENTRADA: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object EDT_ALIQ_COFINS_ENTRADA: TEdit
          Left = 99
          Top = 12
          Width = 47
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = EDT_ALIQ_COFINS_ENTRADAExit
        end
      end
      object GB_ALIQ_PIS_SAIDA: TGroupBox
        Left = 456
        Top = 328
        Width = 210
        Height = 39
        Caption = 'Aliquota Pis Saida:'
        TabOrder = 22
        object CB_ATU_ALIQ_PIS_SAIDA: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object EDT_ALIQ_PIS_SAIDA: TEdit
          Left = 105
          Top = 12
          Width = 47
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = EDT_ALIQ_PIS_SAIDAExit
        end
      end
      object GB_ALIQ_COFINS_SAIDA: TGroupBox
        Left = 672
        Top = 329
        Width = 210
        Height = 39
        Caption = 'Aliquota Cofins Saida:'
        TabOrder = 23
        OnExit = GB_ALIQ_COFINS_SAIDAExit
        object CB_ATU_ALIQ_COFINS_SAIDA: TCheckBox
          Left = 8
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object EDT_ALIQ_COFINS_SAIDA: TEdit
          Left = 98
          Top = 12
          Width = 47
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object GB_PRED_ICMS_NORMAL_DENTRO_ESTADO: TGroupBox
        Left = 232
        Top = 47
        Width = 210
        Height = 39
        Caption = '% Redu'#231#227'o ICMS Dentro Estado:'
        TabOrder = 25
        object CB_ATU_PRED_ICMS_NORMAL_DENTRO_ESTADO: TCheckBox
          Left = 8
          Top = 17
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object edt_PRED_ICMS_NORMAL_DENTRO_ESTADO: TEdit
          Left = 82
          Top = 16
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_PRED_ICMS_NORMAL_DENTRO_ESTADOExit
        end
      end
      object GB_PRED_ICMS_NORMAL_FORA_ESTADO: TGroupBox
        Left = 456
        Top = 46
        Width = 210
        Height = 39
        Caption = '% Redu'#231#227'o ICMS fora Estado:'
        TabOrder = 24
        object CB_ATU_PRED_ICMS_NORMAL_FORA_ESTADO: TCheckBox
          Left = 8
          Top = 17
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object edt_PRED_ICMS_NORMAL_FORA_ESTADO: TEdit
          Left = 82
          Top = 16
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_PRED_ICMS_NORMAL_FORA_ESTADOExit
        end
      end
      object GB_CBENEF_DENTRO_ESTADO_REVENDA: TGroupBox
        Left = 406
        Top = 99
        Width = 162
        Height = 39
        Caption = 'C'#243'digo Beneficio:'
        TabOrder = 7
        object ATU_CB_CBENEF_DENTRO_ESTADO_REVENDA: TCheckBox
          Left = 3
          Top = 16
          Width = 47
          Height = 17
          Caption = 'Atu'
          TabOrder = 0
        end
        object CB_CBENEF_DENTRO_ESTADO_REVENDA: TComboBox
          Left = 48
          Top = 13
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I')
        end
      end
      object GB_CBENEF_FORA_ESTADO_REVENDA: TGroupBox
        Left = 405
        Top = 144
        Width = 162
        Height = 39
        Caption = 'C'#243'digo Beneficio:'
        TabOrder = 11
        object ATU_CB_CBENEF_FORA_ESTADO_REVENDA: TCheckBox
          Left = 3
          Top = 16
          Width = 47
          Height = 17
          Caption = 'Atu'
          TabOrder = 0
        end
        object CB_CBENEF_FORA_ESTADO_REVENDA: TComboBox
          Left = 48
          Top = 13
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I')
        end
      end
      object GB_CBENEF_DENTRO_ESTADO_CONSMIDOR: TGroupBox
        Left = 961
        Top = 97
        Width = 162
        Height = 39
        Caption = 'C'#243'digo Beneficio:'
        TabOrder = 9
        object ATU_CB_CBENEF_DENTRO_ESTADO_CONSMIDOR: TCheckBox
          Left = 3
          Top = 16
          Width = 47
          Height = 17
          Caption = 'Atu'
          TabOrder = 0
        end
        object CB_CBENEF_DENTRO_ESTADO_CONSMIDOR: TComboBox
          Left = 48
          Top = 13
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I')
        end
      end
      object GB_CBENEF_FORA_ESTADO_CONSUMIDOR: TGroupBox
        Left = 962
        Top = 144
        Width = 162
        Height = 39
        Caption = 'C'#243'digo Beneficio:'
        TabOrder = 13
        object ATU_CB_CBENEF_FORA_ESTADO_CONSUMIDOR: TCheckBox
          Left = 3
          Top = 16
          Width = 47
          Height = 17
          Caption = 'Atu'
          TabOrder = 0
        end
        object CB_CBENEF_FORA_ESTADO_CONSUMIDOR: TComboBox
          Left = 48
          Top = 13
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I')
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 418
        Width = 1132
        Height = 41
        Caption = 'CBS/IBS:'
        TabOrder = 26
        object Label134: TLabel
          Left = 116
          Top = 19
          Width = 29
          Height = 13
          Caption = 'CST:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label135: TLabel
          Left = 604
          Top = 17
          Width = 94
          Height = 13
          Caption = 'Cod Classif Trib:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cb_atucbs: TCheckBox
          Left = 8
          Top = 18
          Width = 65
          Height = 17
          Caption = 'Atualiza'
          TabOrder = 0
        end
        object cb_cbs_cst: TComboBox
          Left = 167
          Top = 14
          Width = 411
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          OnClick = cb_cbs_cstClick
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es'
            '')
        end
        object cb_codclastrib: TComboBox
          Left = 701
          Top = 14
          Width = 426
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
          Items.Strings = (
            '01 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de Pro' +
              'duto'
            '04 Opera'#231#227'o Tribut'#225'vel Monof'#225'sica - Revenda a Al'#237'quota Zero'
            '05 Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita Tributada no Mercado Interno'
            
              '51 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita N'#227'o Tributada no Mercado Interno'
            
              '52 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a R' +
              'eceita de Exporta'#231#227'o'
            
              '53 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno'
            
              '54 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das no Mercado Interno e de Exporta'#231#227'o'
            
              '55 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-Tri' +
              'butadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributa' +
              'das e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita Tributada no Mercado Interno'
            
              '61 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusiva' +
              'mente a Receita de Exporta'#231#227'o'
            
              '63 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receita' +
              's Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227 +
              'o'
            '67 Cr'#233'dito Presumido - Outras Opera'#231#245'es'
            '70 Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 Outras Opera'#231#245'es de Entrada'
            '99 Outras Opera'#231#245'es'
            '')
        end
      end
    end
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 1
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Produto:'
      end
      object Label5: TLabel
        Left = 528
        Top = 2
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor:'
      end
      object Label2: TLabel
        Left = 0
        Top = 44
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo Produto:'
      end
      object Label4: TLabel
        Left = 528
        Top = 40
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Grupo:'
      end
      object Label6: TLabel
        Left = 0
        Top = 86
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ramo:'
      end
      object Label14: TLabel
        Left = 528
        Top = 83
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Depto.:'
      end
      object Label3: TLabel
        Left = 0
        Top = 129
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Controle:'
      end
      object Label7: TLabel
        Left = 0
        Top = 170
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NCM:'
      end
      object lbx_codpro: TListBox
        Left = 140
        Top = 1
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 81
        Top = 23
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CODPRO: TEdit
        Left = 79
        Top = 1
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object CODFOR: TEdit
        Left = 610
        Top = 0
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 671
        Top = 0
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 611
        Top = 24
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CODTIP: TEdit
        Left = 79
        Top = 42
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object lbx_codtip: TListBox
        Left = 140
        Top = 42
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 83
        Top = 62
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object CODGRU: TEdit
        Left = 610
        Top = 39
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 671
        Top = 39
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 611
        Top = 59
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODRAM: TEdit
        Left = 79
        Top = 83
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object lbx_codram: TListBox
        Left = 140
        Top = 83
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 80
        Top = 106
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object CODDEP: TEdit
        Left = 611
        Top = 80
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = CODDEPExit
        OnKeyPress = CODDEPKeyPress
      end
      object lbx_coddep: TListBox
        Left = 671
        Top = 80
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_coddepKeyDown
      end
      object OMITIR_DEP: TCheckBox
        Left = 612
        Top = 103
        Width = 57
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object CODCON: TEdit
        Left = 79
        Top = 126
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object lbx_codcon: TListBox
        Left = 140
        Top = 124
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 77
        Top = 148
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
      object codncm: TEdit
        Left = 79
        Top = 167
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnExit = codncmExit
        OnKeyPress = codncmKeyPress
      end
      object lbx_codncm: TListBox
        Left = 140
        Top = 165
        Width = 380
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnKeyDown = lbx_codncmKeyDown
      end
      object omitir_codncm: TCheckBox
        Left = 77
        Top = 190
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
      end
    end
    object tsItensaSeremAtuaizados: TTabSheet
      Caption = 'Itens a Serem Atuaizados'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1132
        Height = 459
        Align = alClient
        DataSource = Src_Atualizacao
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 487
    Width = 1140
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbAtualizar: TBitBtn
      Left = 472
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Atualizar'
      Enabled = False
      TabOrder = 0
      OnClick = bbAtualizarClick
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
    object bbSair: TBitBtn
      Left = 736
      Top = 8
      Width = 169
      Height = 25
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
    object bbVisualizar: TBitBtn
      Left = 48
      Top = 8
      Width = 169
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
      OnClick = bbVisualizarClick
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
  end
  object Src_Atualizacao: TDataSource
    DataSet = Qr_Atualizacao
    Left = 524
    Top = 208
  end
  object Qr_Atualizacao: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 648
    Top = 184
  end
end
