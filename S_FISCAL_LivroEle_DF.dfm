object Frm_FISCAL_LivroEle_DF: TFrm_FISCAL_LivroEle_DF
  Left = 309
  Top = 119
  Width = 928
  Height = 615
  Caption = 'Livro Eletronico do DF'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 920
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbGerar: TBitBtn
      Left = 10
      Top = 4
      Width = 151
      Height = 32
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = bbGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 574
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 920
    Height = 200
    ActivePage = tsEventos
    Align = alTop
    TabOrder = 1
    object tsEventos: TTabSheet
      Caption = 'Eventos'
      ImageIndex = 1
      object memo_erros: TRichEdit
        Left = 0
        Top = 0
        Width = 912
        Height = 172
        Align = alClient
        Lines.Strings = (
          'memo_erros')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 2
      object memo1: TRichEdit
        Left = 0
        Top = 0
        Width = 912
        Height = 172
        Align = alClient
        Lines.Strings = (
          'memo_erros')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsEntrada: TTabSheet
      Caption = 'Entrada de Dados'
      ImageIndex = 3
      object Label6: TLabel
        Left = 9
        Top = 10
        Width = 300
        Height = 13
        Caption = 'C'#243'digo indicador da incid'#234'ncia tribut'#225'ria no per'#237'odo:'
        Color = 16774388
        ParentColor = False
      end
      object Label7: TLabel
        Left = 10
        Top = 32
        Width = 300
        Height = 39
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'C'#243'd ind m'#233'todo apropria'#231#227'o de cr'#233'ditos no caso de incid'#234'ncia no ' +
          'regime n'#227'ocumulativo (COD_INC_TRIB = 1 ou 3):'
        Color = 15138790
        ParentColor = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 10
        Top = 77
        Width = 298
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'digo indicador do Tipo de Contribui'#231#227'o Apurada no Periodo:'
        Color = 16774388
        ParentColor = False
        WordWrap = True
      end
      object cb_COD_INC_TRIB: TComboBox
        Left = 312
        Top = 7
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 
          '1 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
          'egime n'#227'o-cumulativo;'
        Items.Strings = (
          
            '1 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
            'egime n'#227'o-cumulativo;'
          
            '2 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia exclusivamente no r' +
            'egime cumulativo;'
          
            '3 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncia nos regimes n'#227'o-cum' +
            'ulativo e cumulativo')
      end
      object CB_IND_APRO_CRED: TComboBox
        Left = 312
        Top = 51
        Width = 585
        Height = 21
        Color = 15138790
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = '1 - M'#233'todo de Apropria'#231#227'o Direta;'
        Items.Strings = (
          '1 - M'#233'todo de Apropria'#231#227'o Direta;'
          '2 - M'#233'todo de Rateio Proporcional (Receita Bruta)')
      end
      object CB_COD_TIPO_CONT: TComboBox
        Left = 312
        Top = 86
        Width = 585
        Height = 21
        Color = 16774388
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = '1 '#8211' Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
        Items.Strings = (
          '1 '#8211' Apura'#231#227'o da Contribui'#231#227'o Exclusivamente a Al'#237'quota B'#225'sica'
          
            '2 '#8211' Apura'#231#227'o da Contribui'#231#227'o a Al'#237'quotas Espec'#237'ficas (Diferencia' +
            'das e/ou por Unidade de Medida de Produto)')
      end
    end
    object tsGeral: TTabSheet
      Caption = 'Principal'
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 194
        Top = 10
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 345
        Top = 8
        Width = 249
        Height = 13
        Caption = 'Vers'#227'o do Layout Fiscal de Processamento:'
      end
      object Label4: TLabel
        Left = 59
        Top = 35
        Width = 128
        Height = 13
        Caption = 'Finalidade do Arquivo:'
      end
      object Label15: TLabel
        Left = 2
        Top = 116
        Width = 181
        Height = 13
        Caption = 'Nome do Arquivo a Ser Gerado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbnsalvar: TSpeedButton
        Left = 717
        Top = 111
        Width = 23
        Height = 22
        Caption = '...'
      end
      object Label47: TLabel
        Left = 122
        Top = 126
        Width = 62
        Height = 13
        Caption = 'Inventario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 0
        Top = 51
        Width = 718
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'C'#243'digo da vers'#227'o do leiaute requerido pela Secretaria da Receita' +
          ' Previdenci'#225'ria, estabelecido conforme ato normativo pr'#243'prio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 2
        Top = 69
        Width = 222
        Height = 13
        Caption = 'Indicador de tipo de entrada de dados:'
      end
      object Label9: TLabel
        Left = 3
        Top = 91
        Width = 248
        Height = 13
        Caption = 'Indicador de centraliza'#231#227'o de escritura'#231#227'o:'
      end
      object edt_datini: TDateEdit
        Left = 76
        Top = 6
        Width = 103
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object edt_datfin: TDateEdit
        Left = 221
        Top = 5
        Width = 103
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnExit = edt_datfinExit
      end
      object cb_codfin: TComboBox
        Left = 193
        Top = 30
        Width = 464
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = '00-Remessa regular de arquivo'
        Items.Strings = (
          '00-Remessa regular de arquivo'
          '01-Remessa de arquivo substituto'
          
            '02-Remessa de arquivo com dados adicionais a arquivo anteriormen' +
            'te remetido'
          '03-Remessa de arquivo requerido por intima'#231#227'o espec'#237'fica'
          
            '04-Remessa de arquivo requerido para corre'#231#227'o do '#205'ndice de Parti' +
            'cipa'#231#227'o dos Munic'#237'pios'
          
            '05-Remessa de arquivo requerido por ato publicado no Di'#225'rio Ofic' +
            'ial'
          
            '15-Sintegra - remessa regular de arquivo das opera'#231#245'es interesta' +
            'duais'
          
            '16-Sintegra - remessa de arquivo substituto das opera'#231#245'es intere' +
            'staduais'
          
            '17-Sintegra - remessa de arquivo com dados adicionais das opera'#231 +
            #245'es interestaduais'
          
            '18-Sintegra - remessa regular de arquivo das opera'#231#245'es interesta' +
            'duais com substitui'#231#227'o tribut'#225'ria do ICMS'
          
            '19-Sintegra - remessa de arquivo substituto das opera'#231#245'es intere' +
            'staduais com substitui'#231#227'o tribut'#225'ria do ICMS'
          
            '20-Sintegra -remessa de arquivo com dados adicionais das opera'#231#245 +
            'es interestaduais com substitui'#231#227'o tribut'#225'ria do ICMS'
          
            '25-Remessa para a Sefin/Mun de arquivo de reten'#231#245'es do ISSQN efe' +
            'tuadas por terceiros'
          
            '26-Remessa para a Sefin/Mun de arquivo substituto de reten'#231#245'es d' +
            'o ISSQN efetuadas por terceiros'
          
            '27-Remessa para a Sefin/Mun de arquivo com dados adicionais de r' +
            'eten'#231#245'es do ISSQN efetuadas por terceiros'
          '30-Emiss'#227'o de documento'
          '31-Emiss'#227'o de documento fiscal avulso por reparti'#231#227'o fiscal'
          
            '61-Solicita'#231#227'o de Auditor-Fiscal da Secretaria da Receita Previd' +
            'enci'#225'ria atrav'#233's de MPF'
          
            '62-Entrega na Secretaria da Receita Previdenci'#225'ria -movimento an' +
            'ual de '#243'rg'#227'o p'#250'blico, conforme intima'#231#227'o'
          
            '90-Remessa de informa'#231#245'es complementares para a Sefaz da unidade' +
            ' da federa'#231#227'o de origem'
          '')
      end
      object edt_nomarq: TEdit
        Left = 193
        Top = 116
        Width = 529
        Height = 21
        TabOrder = 3
        Text = 'C:\SGE\EFD_PISCOFINS_012011.TXT'
      end
      object CB_INVENTARIO: TComboBox
        Left = 193
        Top = 140
        Width = 530
        Height = 21
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 0
        ParentFont = False
        TabOrder = 4
      end
      object cb_versao_layout: TComboBox
        Left = 600
        Top = 4
        Width = 305
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 5
        Text = ' 002 1.0.0.2 Art 2O. do Ato Cotepe 35/05'
        Items.Strings = (
          ' 001 1.0.0.1 Art 2O. do Ato Cotepe 35/05'
          ' 002 1.0.0.2 Art 2O. do Ato Cotepe 35/05'
          ' 003 1.0.0.3 Art 2O. do Ato Cotepe 35/05'
          '1004 1.0.0.4 Art 2O. do Ato Cotepe 35/05'
          '1005 1.0.0.5 Art 2O. do Ato Cotepe 35/05'
          '2000 2.0.0.0 Art 2O. do Ato Cotepe 35/05')
      end
      object edt_COD_SRP: TEdit
        Left = 726
        Top = 45
        Width = 35
        Height = 21
        MaxLength = 3
        TabOrder = 6
      end
      object cb_IND_ED: TComboBox
        Left = 227
        Top = 67
        Width = 464
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 7
        Text = '1. Importa'#231#227'o de arquivo texto;'
        Items.Strings = (
          '0. Digita'#231#227'o de dados; '
          '1. Importa'#231#227'o de arquivo texto;'
          '2. Valida'#231#227'o de arquivo texto')
      end
      object CB_IND_CENTR: TComboBox
        Left = 262
        Top = 88
        Width = 464
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 8
        Text = '0. Estabelecimento sem centraliza'#231#227'o de escritura'#231#227'o; '
        Items.Strings = (
          '0. Estabelecimento sem centraliza'#231#227'o de escritura'#231#227'o; '
          '1. Estabelecimento centralizador de escritura'#231#227'o;'
          '2. Estabelecimento com escritura'#231#227'o centralizada')
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 200
    Width = 920
    Height = 343
    ActivePage = tsGuiaST
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'Austes E111'
      object Panel1: TPanel
        Left = 0
        Top = 288
        Width = 904
        Height = 32
        Align = alBottom
        TabOrder = 0
        object bbe111_INCLUIR: TBitBtn
          Left = 4
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbe111_INCLUIRClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbe111_ALTERAR: TBitBtn
          Left = 103
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbe111_ALTERARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object bbe111_EXCLUIR: TBitBtn
          Left = 202
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbe111_EXCLUIRClick
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
        object bbe111_GRAVAR: TBitBtn
          Left = 301
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bbe111_GRAVARClick
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
        object bbe111_CANCELAR: TBitBtn
          Left = 400
          Top = 5
          Width = 100
          Height = 25
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bbe111_CANCELARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbe111_DBNavigator1: TDBNavigator
          Left = 499
          Top = 5
          Width = 396
          Height = 25
          Hint = 'Navega entre os registros selecionados'
          DataSource = src_ajusE111
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Proximo Registro'
            #218'ltimo Registro')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
      object DBGrid1_e111: TDBGrid
        Left = 0
        Top = 0
        Width = 904
        Height = 254
        Align = alClient
        DataSource = src_ajusE111
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGOAJUST'
            PickList.Strings = (
              
                'GO000001 - D'#233'bito referente ao valor compensado do ICMS de subst' +
                'itui'#231#227'o tribut'#225'ria.|01012009|'
              
                'GO000002 - D'#233'bito referente ao valor da restitui'#231#227'o de cr'#233'dito d' +
                'e ICMS normal, concedida mediante processo (recebimento em moeda' +
                ') - 01012009 -'
              
                'GO000003 - Baixa do cr. relativo ao valor adicional de 2% na al'#237 +
                'quota de ICMS, utilizado para abater o ICMS Subst. Tribut'#225'ria. P' +
                'ROTEGE. - CTE - Art. 27, '#167' 5'#186' e IN 784/06 Art. 6 - 01012009 -'
              
                'GO000004 - D'#233'bito referente ao estorno do cheque-moradia por sal' +
                'do insuficiente no campo "Observa'#231#245'es" do RAICMS - IN 575/02-GSF' +
                ' - Art. 1, '#167' 3'#186', II - 01012009 -'
              
                'GO000005 - ICMS debitado qdo, conf. TARE, o imposto devido por S' +
                'T pelas op anteriores seja apurado junt c/ aquele devido pela op' +
                ' sa'#237'da pr'#243'pria do estab eleito substituto, resultando um s'#243' d'#233'b ' +
                'por per'#237'odo nas aquisi'#231#245'es  - RCTE - Art. 14, '#167' '#218'nico - Anexo VI' +
                'II - 01012009 -'
              
                'GO000006 - ICMS debitado na sa'#237'da de mercadoria remetida sem des' +
                'tinat'#225'rio certo, por qualquer meio de transporte, para realiza'#231#227 +
                'o de opera'#231#227'o fora do estabelecimento - RCTE - Art. 28, '#167' 2'#186' - A' +
                'nexo XII - 01012009 -'
              
                'GO000007 - D'#233'b. do imposto relativo ao frete, quando n'#227'o tiver i' +
                'ntegrado a base de c'#225'lculo para efeito de reten'#231#227'o, exceto quant' +
                'o ao ve'#237'culo automotor, apurado conforme Art. 42 do Anexo VII do' +
                ' RCTE - RCTE - Art. 42, I, "a" e '#167' '#218'nico - Anexo VIII - 01012009' +
                ' -'
              
                'GO000008 - D'#233'bito do imposto relativo a embalagem ou acondiciona' +
                'mento, quando n'#227'o tiver integrado a base de c'#225'lculo para efeito ' +
                'de reten'#231#227'o, apurado conforme Art. 42 do Anexo VII do RCTE  - RC' +
                'TE - Art. 42, II e '#167' '#218'nico - Anexo VIII - 01012009 -'
              
                'GO000009 - D'#233'b. do imposto relativo a determinadas merc. n'#227'o suj' +
                'eita ao regime de ST, qdo comercializada ou fornecida de forma a' +
                'ssociada a uma mercadoria submetida a este regime. - RCTE - Art.' +
                ' 42, III e '#167' '#218'nico - Anexo VIII - 01012009 -'
              
                'GO000010 - D'#233'b. do imp. qdo o contrib estabel neste estado adqui' +
                'rir merc. suj. ao regime de ST de contrib com med. judicial limi' +
                'nar, ou de contrib sediado em UF com den'#250'ncia de conv ou protoc ' +
                '- RCTE - Art. 42, IV; '#167' '#218'nico e Art. 34, '#167' '#218'nico, II, "a", 2 - A' +
                'nexo VIII - 01012009 -'
              
                'GO000011 - Comp. ICMS devido ST com o  saldo credor acumulado - ' +
                ' opera'#231#227'o com destino a contribuinte do imposto estabelecido em ' +
                'outra UF e alcan'#231'ada pela substitui'#231#227'o tribut'#225'ria - RCTE - Art. ' +
                '45, II e Art.  46, '#167' 4'#186' - Anexo VIII - 01012009 -'
              
                'GO000012 - Baixa pela restitui'#231#227'o do saldo credor acumulado -  o' +
                'pera'#231#227'o com destino a contribuinte do imposto estabelecido em ou' +
                'tra UF e alcan'#231'ada pela substitui'#231#227'o tribut'#225'ria - RCTE - Art. 45' +
                ', II e Art.  46, '#167' 4'#186' - Anexo VIII - 01012009 -'
              
                'GO000013 - Baixa pela restitui'#231#227'o do  saldo credor acumulado - d' +
                'esfazimento do neg'#243'cio ou devolu'#231#227'o total ou parcial. - RCTE - A' +
                'rt. 45, VI e Art.  46, '#167' 4'#186' - Anexo VIII - 01012009 -'
              
                'GO000014 - Comp. ICMS devido ST com o  saldo credor acumulado - ' +
                'desfazimento do neg'#243'cio ou devolu'#231#227'o total ou parcial. - RCTE - ' +
                'Art. 45, VI e Art.  46, '#167' 4'#186' - Anexo VIII - 01012009 -'
              
                'GO000015 - Comp. ICMS dev. por ST com saldo  credor acumulado - ' +
                'op interna realizada p/ contrib industr ou comerciante atac. c/ ' +
                'destino a empresa de const. civil, a '#243'rg'#227'o da adm pub direta/hos' +
                'pital e cl'#237'nica de sa'#250'de - RCTE - Art. 45, X e Art.  46, '#167' 4'#186' - ' +
                'Anexo VIII - 01012009 -'
              
                'GO000016 - Baixa pela restitui'#231#227'o do  saldo credor acumul - op i' +
                'nterna realizada p/ contrib. indust. ou comerciante atac. c/ des' +
                'tino a empresa de const. civil, a '#243'rg'#227'o da adm pub. direta ou ho' +
                'spital e cl'#237'nica de sa'#250'de - RCTE - Art. 45, X e Art. 46, '#167' 4'#186' - ' +
                'Anexo VIII - 01012009 -'
              
                'GO000017 - ICMS d'#233'b. p/ compensar saldo credor ICMS acumulado, c' +
                '/ imposto devido t'#237'tulo de retido na fonte, relativo a nova aqui' +
                's de mercadoria sujeito a ST, cuja responsabilidade pela apura'#231#227 +
                'o e pgto '#233' do pr'#243'prio adq. - RCTE - Art. 49, '#167' 1'#186', I, "b" - Anex' +
                'o VIII - 01012009 -'
              
                'GO000018 - Compensa'#231#227'o de Auto de Infra'#231#227'o. - RCTE - Art. 494 - ' +
                '01012009 -'
              
                'GO000019 - D'#233'bito do montante do imposto correspondente '#224' difere' +
                'n'#231'a de al'#237'quotas - RCTE - Art. 73, '#167' 1'#186', I - 01012009 -'
              
                'GO000020 - D'#233'bito, mediante TARE, correspondente ao imposto devi' +
                'do na importa'#231#227'o do exterior - RCTE - Art. 73, '#167' 3'#186' - 01012009 -'
              
                'GO000021 - ICMS debitado pelo contrib. substitu'#237'do que mantiver ' +
                'estoque de mercadoria sujeito '#224' ST e destinada '#224' comercializa'#231#227'o' +
                ', e para a qual ocorra aumento da carga tribut'#225'ria na opera'#231#227'o i' +
                'nterna  - RCTE - Art. 80, '#167' '#218'nico - Anexo VIII - 01012009 -'
              
                'GO000022 - D'#233'bito referente ao valor '#224' aplica'#231#227'o da al'#237'quota pr'#243 +
                'pria sobre a entrada de mercadorias para as empresas que possuam' +
                ' TARE e que devam a ter a sua sa'#237'da lan'#231'ada em outros d'#233'bitos - ' +
                'TARE 093/01-GSF - 01012009 -'
              
                'GO009999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS Pr'#243'prio - 01012009 - 31072010' +
                ' -'
              
                'GO109999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS-ST - 01012009 -'
              
                'GO100001 - Repasse de ICMS por dedu'#231#245'es efetuadas de outras UF -' +
                ' Conv. ICMS 110/07, Cl'#225'usula 22'#170', III e Art. 61-D, III, '#8220'a'#8221', Ane' +
                'xo VIII do RCTE - 01012009 -'
              
                'GO010001 - Ref. ao cr out pelo equip do ECF em que o contrib. q ' +
                'cesse o uso do ECF, em pzo. inf a 2 anos, a contar do in'#237'cio de ' +
                'sua efetiva utiliz, no mesmo per. de apur. em que ocorrer a cess' +
                ' de uso ou em desacor. com a leg especif. - IN 495/01-GSF - Art.' +
                ' 7, I e II - 01012009 -'
              
                'GO010002 - Ref. cr. out. pela adquis. equip e software neces. p/' +
                'integr da oper com cart'#227'o de cr ou d'#233'b. ao ECF, em que o contrib' +
                '. deixar de op c/cart'#227'o de cr ou d'#233'b, em prazo inf. a 2 anos, a ' +
                'contar do in'#237'cio de sua efetiva utiliz. - IN 571/02-GSF - Art. 8' +
                ', I e II - 01012009 -'
              
                'GO010003 - Ref. a utiliz da red de b. de c'#225'lc prev no inc VIII d' +
                'o Art. 8'#186', An IX-RCTE. O benef pode ser utiliz, desde q, no fina' +
                'l do per de apur, o contrib efetue o estorno do corresp cr. de I' +
                'CMS q tenha sido aprov em perc sup a 7%  - IN 899/08-GSF - Art. ' +
                ' 2'#186', '#167' 1'#186' - 01012009 -'
              
                'GO010004 - Ref. '#224' entrada de mercadoria recebida em devolu'#231#227'o, o' +
                ' contribuinte deve estornar o cr'#233'dito do imposto apropriado em f' +
                'un'#231#227'o de benef'#237'cio fiscal relacionado '#224' opera'#231#227'o de sa'#237'da. - Par' +
                'ecer n'#186' 600/05 GOT - 01012009 -'
              
                'GO010005 - Ref. '#224' decis'#227'o de restitui'#231#227'o de  ICMS denegat'#243'ria do' +
                ' pagamento do mesmo, referente  '#224' substitui'#231#227'o tribut'#225'ria e cujo' +
                ' fato gerador n'#227'o se realizou e que foi aproveitado nos termos d' +
                'o  Art.   49, II do CTE  - RCTE - Art.  42, II - 01012009 -'
              
                'GO010006 - Ref. '#224' decis'#227'o denegat'#243'ria de aprov de cr. prop ao im' +
                'p estornado ou n'#227'o creditado em op. ou prest. anteriores, de ope' +
                'r. tributada realizada com prod. agrop, ..., e esta por sua vez,' +
                ' antecedida de oper. ou prest tributada - RCTE - Art.  50, '#167' 2'#186' ' +
                '- 01012009 -'
              
                'GO010007 - Ref.  ao vl. corresp '#224' dif. constatada resultar cr. s' +
                'up. para o estab. remetente, entre o valor corresp '#224' dif. apurad' +
                'a, do confronto entre o cr. e o d'#233'b. do icms, na hip de transf. ' +
                'Inter. de bem integrado ao at. imob.  - RCTE - Art. 11, II, '#8220'c'#8221' ' +
                '- ANEXO IX - 01012009 -'
              
                'GO010008 - Ref. ao vl. corresp. '#224' dif. constatada resultar cr. s' +
                'up. para o estab. remetente, entre o valor corresp. '#224' dif. apura' +
                'da, do confronto entre o cr. e o d'#233'b. do icms, na hip. de transf' +
                '. Inter.l de material de uso/consumo  - RCTE - Art. 11, II, '#8220'c'#8221' ' +
                '- ANEXO IX - 01012009 -'
              
                'GO010009 - Ref. ao valor integral do cr. out. para o estab. Fab.' +
                ' ou revendedor de combust'#237'vel, ao valor equivalente ao da aquisi' +
                #231#227'o de equip. medidor eletr'#244'nico de vaz'#227'o - RCTE - Art. 11, XIV,' +
                ' "g" e "j"  1 e 2 - Anexo IX - 01012009 -'
              
                'GO010010 - Ref. ao cr. correspondente '#224' respectiva entrada, qdo ' +
                'o estabelecimento da construtora que efetuar venda ao p'#250'blico, r' +
                'ealizar remessa para a obra que executar,  - RCTE - Art. 28 '#167' '#250'n' +
                'ico - Anexo XIII - 01012009 -'
              
                'GO010011 - Referente ao estorno de cr'#233'dito, mediante Notifica'#231#227'o' +
                ' Fiscal, sem preju'#237'zo da aplica'#231#227'o de penalidade cab'#237'vel, desde ' +
                'que n'#227'o tenha havido omiss'#227'o do pagamento do imposto - RCTE - Ar' +
                't. 445-A - 01012009 -'
              
                'GO010012 - Ref. '#224' decis'#227'o denegat'#243'ria de aproveitamento de cr'#233'di' +
                'to perda ou extravio da 1'#170' (primeira) via do documento fiscal re' +
                'spectivo - RCTE - Art. 53, '#167' 3'#186' - 01012009 -'
              
                'GO010013 - Ref. '#224's entradas recebidas em transf e qdo a base de ' +
                'c'#225'lc. utilizada na opera'#231#227'o subsequente for inferior '#224' da respec' +
                'tiva transf. - RCTE - Art. 58, '#167' 2'#186' - 01012009 -'
              
                'GO010014 - Ref. servi'#231'o transporte cuja entradas recebidas em tr' +
                'ansf e qdo a bc utilizada na op subseq'#252'ente for inferior '#224' da re' +
                'spectiva transf - RCTE - Art. 58, '#167' 2'#186' e Art. 61 - 01012009 -'
              
                'GO010015 - Ref. entrada serv comunic cuja sa'#237'da ou prest serv se' +
                'ja isenta ou n'#227'o-trib ou seja utiliz como insumo proces industr ' +
                'ou prest serv, cuja sa'#237'da prod result ou serv prest for isento o' +
                'u n'#227'o trib. - RCTE - Art. 58, I,  "a" e "c", 1 e Art. 61 - 01012' +
                '009 -'
              
                'GO010016 - Ref. servi'#231'o transporte cuja sa'#237'da ou prest serv seja' +
                ' isenta ou n'#227'o-trib ou seja utiliz como insumo proces de industr' +
                ' ou prest de serv, cuja sa'#237'da prod result ou serv prestado for i' +
                'sento ou n'#227'o trib - RCTE - Art. 58, I, "a" e "c", 1 e Art. 61 - ' +
                '01012009 -'
              
                'GO010017 - Ref. entrada energia el'#233't cuja sa'#237'da ou prest serv se' +
                'ja isenta ou n'#227'o-tributada ou em que seja utiliz como insumo e c' +
                'uja sa'#237'da do prod result ou do serv prest for isento ou n'#227'o trib' +
                'utado - RCTE - Art. 58, I, "a" e "c", item 1 e Art.  61 - 010120' +
                '09 -'
              
                'GO010018 - Ref. '#224' entrada de servi'#231'o de comunica'#231#227'o cuja sa'#237'da o' +
                'u presta'#231#227'o de servi'#231'o seja contemplada com redu'#231#227'o de base de c' +
                #225'lculo, hip'#243'tese em que o estorno '#233' proporcional a essa redu'#231#227'o;' +
                ' - RCTE - Art. 58, I, "b" e Art. 61 - 01012009 -'
              
                'GO010019 - Ref. '#224' entrada e que tenha sido utiliz no consumo do ' +
                'pr'#243'prio estabel., relativa e proporc. '#224' parcela das oper. ou pre' +
                'st. isentas ou n'#227'o-tribut., considerando-se as sa'#237'das e as prest' +
                '. com destino ao exterior como sendo tributadas - RCTE - Art. 58' +
                ', I, "e" - 01012009 -'
              
                'GO010020 - Ref. serv transp cuja entrada e que tenha sido utiliz' +
                ' no uso ou consumo final do pr'#243'prio estab, e houver sa'#237'da ou pre' +
                'st isen ou n'#227'o trib, na prop que estas sa'#237'das ou prest represent' +
                ' total sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. 58, I, "e" ' +
                'e Art. 61 - 01012009 -'
              
                'GO010021 - Ref. entrada em que seja utilizada como insumo proces' +
                'so industr ou prest serv, e houver sa'#237'da ou prest isentas ou n'#227'o' +
                ' trib e sendo imposs'#237'vel determinar a qual delas corresponde a m' +
                'ercad ou o servi'#231'o. - RCTE - Art. 58, I, '#8220' c'#8221', 2 - 01012009 -'
              
                'GO010022 - Ref. '#224' entrada de mercadoria ou bem cuja sa'#237'da ou pre' +
                'sta'#231#227'o de servi'#231'o seja isenta ou n'#227'o-tributada - RCTE - Art. 58,' +
                ' I, '#8220'a'#8221' - 01012009 -'
              
                'GO010023 - Ref. '#224' entrada cuja sa'#237'da ou presta'#231#227'o de servi'#231'o sej' +
                'a contemplada com redu'#231#227'o de base de c'#225'lculo, hip'#243'tese em que o ' +
                'estorno '#233' proporcional a essa redu'#231#227'o. - RCTE - Art. 58, I, '#8220'b'#8221' ' +
                'e '#167'4'#186' - 01012009 -'
              
                'GO010024 - Ref. a presta'#231#227'o de servi'#231'o de transporte corresponde' +
                'nte seja contemplada com redu'#231#227'o de base de c'#225'lculo, hip'#243'tese em' +
                ' que o estorno '#233' proporcional a essa redu'#231#227'o. - RCTE - Art. 58, ' +
                'I, '#8220'b'#8221' e '#167'4'#186', Art. 61 - 01012009 -'
              
                'GO010025 - Ref. '#224' entrada de energia el'#233'trica cuja sa'#237'da ou pres' +
                'ta'#231#227'o de servi'#231'o seja contemplada com redu'#231#227'o de base de c'#225'lculo' +
                ', hip'#243'tese em que o estorno '#233' proporcional a essa redu'#231#227'o. - RCT' +
                'E - Art. 58, I, '#8220'b'#8221' e '#167'4'#186', Art. 61 - 01012009 -'
              
                'GO010026 - Ref. '#224' entrada em que seja integrada ou consumida em ' +
                'processo de produ'#231#227'o, industrializa'#231#227'o e cuja sa'#237'da da mercadori' +
                'a resultante for isenta ou n'#227'o tributada - RCTE - Art. 58, I, '#8220'c' +
                #8221', 1 - 01012009 -'
              
                'GO010027 - Ref. '#224' entrada em que seja utilizada como insumo em p' +
                'rocesso de produ'#231#227'o, industr ou prest de serv, e cuja sa'#237'da do p' +
                'rod result ou do serv prestado for isento ou n'#227'o tributado - RCT' +
                'E - Art. 58, I, '#8220'c'#8221', 1 - 01012009 -'
              
                'GO010028 - Ref. '#224' entrada em que seja integrada ou consumida em ' +
                'processo de industrializa'#231#227'o, e houver sa'#237'da ou prest isentas ou' +
                ' n'#227'o trib e sendo imposs'#237'vel determinar a qual delas corresponde' +
                ' a mercadoria - RCTE - Art. 58, I, '#8220'c'#8221', 2 - 01012009 -'
              
                'GO010029 - Ref. '#224' entrada de mercadoria e integrada ao ativo imo' +
                'bilizado do estabelecimento, e houver perecimento, sinistro, fur' +
                'to, roubo ou deteriora'#231#227'o do bem, para bens adquiridos at'#233' 31.12' +
                '.00 - RCTE - Art. 58, I, '#8220'd'#8221',  2 - 01012009 -'
              
                'GO010030 - Ref. '#224' entrada de mercadoria e integrada ao ativo imo' +
                'bilizado do estabelecimento, e houver sa'#237'da de produto ou mercad' +
                'oria isentos ou n'#227'o tributados, para bens adquiridos at'#233' 31.12.0' +
                '0 - RCTE - Art. 58, I, '#8220'd'#8221', 1 - 01012009 -'
              
                'GO010031 - Ref. ao servi'#231'o de transporte cuja entrada de mercado' +
                'ria e integrada ao ativo imobilizado do estabelecimento, e houve' +
                'r sa'#237'da de produto ou mercadoria isentos ou n'#227'o tributados - RCT' +
                'E - Art. 58, I, '#8220'd'#8221', 1 e Art. 61 - 01012009 -'
              
                'GO010032 - Ref. entrada utiliz no uso ou consumo final do pr'#243'pri' +
                'o estabel., e houver sa'#237'da ou prest isentas ou n'#227'o trib, na prop' +
                '. em que estas sa'#237'das ou prest represent do total das sa'#237'das e p' +
                'rest no mesmo per'#237'odo (apl. a partir de 01.01.03) - RCTE - Art. ' +
                '58, I, '#8220'e'#8221' - 01012009 -'
              
                'GO010033 - Ref. entrada servi'#231'o comunica'#231#227'o em que seja utilizad' +
                'a como insumo em processo industr ou prest serv, e houver sa'#237'da ' +
                'ou prest isentas ou n'#227'o trib e imposs'#237'vel determinar a qual corr' +
                'esp a mercad ou o servi'#231'o - RCTE - Art. 58, I,'#8221' c'#8221', 2 e Art. 61 ' +
                '- 01012009 -'
              
                'GO010034 - Ref. ao servi'#231'o transporte entrada seja utilizada com' +
                'o insumo processo industr ou prest serv, e houver sa'#237'da ou prest' +
                ' isentas ou n'#227'o trib e sendo imposs'#237'vel determinar a qual delas ' +
                'corresp mercad ou o serv - RCTE - Art. 58, I,'#8221' c'#8221', 2 e Art. 61 -' +
                ' 01012009 -'
              
                'GO010035 - Ref. ao servi'#231'o de transporte cuja entrada de mercado' +
                'ria e integrada ao ativo imobilizado do estabelecimento, e houve' +
                'r perecimento, sinistro, furto, roubo ou que implique a deterior' +
                'a'#231#227'o do bem - RCTE - Art. 58, I,'#8221' d'#8221', 2 e Art. 61 - 01012009 -'
              
                'GO010036 - Ref. entrada energia el'#233't utilizada como insumo proce' +
                's industr ou prest serv, e houver sa'#237'da ou prest isentas ou n'#227'o ' +
                'trib e sendo imposs'#237'vel determinar a qual delas corresp a mercad' +
                ' ou o serv - RCTE - Art. 58, I,'#8221'c'#8221', 2 e Art. 61 - 01012009 -'
              
                'GO010037 - Ref. '#224's entradas e que forem utilizadas em fim alheio' +
                ' '#224' atividade operacional do estabelecimento - RCTE - Art. 58, II' +
                ' - 01012009 -'
              
                'GO010038 - Ref. '#224's entrada de energia el'#233'trica e que for utiliza' +
                'da em fim alheio '#224' atividade operacional do estabelecimento - RC' +
                'TE - Art. 58, II e Art.  61 - 01012009 -'
              
                'GO010039 - Ref. ao servi'#231'o de transporte de entradas que forem u' +
                'tilizadas em fim alheio '#224' atividade operacional do estabelecimen' +
                'to - RCTE - Art. 58, II e Art. 61 - 01012009 -'
              
                'GO010040 - Ref. '#224's entrada de servi'#231'o de comunica'#231#227'o e que for u' +
                'tilizada em fim alheio '#224' atividade operacional do estabeleciment' +
                'o - RCTE - Art. 58, II e Art. 61 - 01012009 -'
              
                'GO010041 - Ref. entradas e que inexistir, por qualquer motivo, o' +
                'p ou prest posterior, em raz'#227'o de sinistro, furto, roubo, pereci' +
                'mento ou de qualquer outro motivo, desde de que devidamente comp' +
                'rovados - RCTE - Art. 58, III - 01012009 -'
              
                'GO010042 - Ref. entrada de energia el'#233'trica e que inexistir, por' +
                ' qualquer motivo, opera'#231#227'o ou presta'#231#227'o posterior, em raz'#227'o de s' +
                'inistro, furto, roubo, perecimento ou de qualquer outro motivo -' +
                ' RCTE - Art. 58, III e Art. 61 - 01012009 -'
              
                'GO010043 - Ref. entrada servi'#231'o comunica'#231#227'o e que inexistir oper' +
                'a'#231#227'o ou presta'#231#227'o posterior, em raz'#227'o de sinistro, furto, roubo,' +
                ' perecimento ou de qualquer outro motivo - RCTE - Art. 58, III e' +
                ' Art. 61 - 01012009 -'
              
                'GO010044 - Ref. servi'#231'o transporte de entradas e que inexistir, ' +
                'por qualquer motivo, op ou prest posterior, em raz'#227'o de sinistro' +
                ', furto, roubo, perecimento, ou de qualquer outro motivo - RCTE ' +
                '- Art. 58, III e Art. 61 - 01012009 -'
              
                'GO010045 - Ref. entradas de mercadorias, bem, energia el'#233'trica, ' +
                'servi'#231'o de comunica'#231#227'o, e servi'#231'o de transporte e na conta merca' +
                'd, no final do exerc ou no encer ativ estab, por seu valor bruto' +
                ', apresentar preju'#237'zo - RCTE - Art. 58, IV e Art.  61 - 01012009' +
                ' -'
              
                'GO010046 - Ref. '#224' entrada de merc. e houver sa'#237'da ou prest isent' +
                'as ou n'#227'o trib. junt c/sa'#237'da ou prest tributadas, devendo o esto' +
                'rno ser feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o t' +
                'rib repres do total das sa'#237'das e prest no mesmo per'#237'odo. - RCTE ' +
                '- Art. 60 - 01012009 -'
              
                'GO010047 - Ref. '#224' entrada de mercad p/ a usina de alcool que uti' +
                'liza o cred out previsto no Art.  11, inciso XXVI do RCTE e houv' +
                'er sa'#237'da ou presta'#231#245'es isentas ou n'#227'o trib juntamente com sa'#237'da ' +
                'ou prest trib - RCTE - Art. 60 e 61 - 01012009 -'
              
                'GO010048 - Ref. '#224' entrada de energia el'#233't. e houver sa'#237'da ou pre' +
                'st. isentas ou n'#227'o trib junt c/sa'#237'da ou prest trib, dev o est se' +
                'r feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o trib re' +
                'pres do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. ' +
                '60 e 61 - 01012009 -'
              
                'GO010049 - Ref '#224' entrada de serv de comunic e houver sa'#237'da ou pr' +
                'est isentas ou n'#227'o trib junt c/sa'#237'da ou prest trib, dev o est se' +
                'r feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o trib re' +
                'pres do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. ' +
                '60 e 61 - 01012009 -'
              
                'GO010050 - Ref. ao serv de transp qdo houver sa'#237'da/prest isentas' +
                '/n'#227'o trib junt c/sa'#237'da ou prest trib, consid as sa'#237'das p/o ext c' +
                'omo trib, dev o est ser feito na prop em q estas sa'#237'da/prest rep' +
                'res do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Arts. ' +
                '60 e 61 - 01012009 -'
              
                'GO010051 - O contribuinte que efetuar oper interest com o produt' +
                'o result da mistura de '#243'leo diesel com B100 deve efetuar o estor' +
                'no do cr do imposto correspondente ao vol de B100 remetido.  - R' +
                'CTE - Art. 61-A, '#167' 3'#186' - Anexo VIII - 01012009 -'
              
                'GO010052 - Ref. ao cr. que superar o perc. de 58,33%, qdo a empr' +
                'esa utilizar a red.da b. de c'#225'lc. sobre o vl. da op que resulte ' +
                'o perc. de 7% na sa'#237'da interna c/prod de inform'#225't., telecomun. o' +
                'u aut.  relac. no Apend. IV do Anexo IX. - RCTE - Art. 8, XIII -' +
                ' Anexo IX - 01012009 -'
              
                'GO019999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS Pr'#243'prio. - 01012009 - 3107201' +
                '0 -'
              
                'GO119999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS-ST. - 01012009 -'
              
                'GO110001 - Cr. Referente a dedu'#231#227'o de ICMS por repasses a outras' +
                ' UF efetuados por outro estabelecimento do sujeito passivo  - Co' +
                'nv. ICMS 110/07, Cl'#225'usula 22'#170', '#167' 6'#186' e Art. 61-D, '#167' 6'#186', Anexo VII' +
                'I do RCTE - 01012009 -'
              
                'GO010053 - Estorno, pelo estabelec. remet., do imposto creditado' +
                ', na hip'#243'tese em que a sa'#237'da subseq. da mercad. resultante do pr' +
                'ocesso de industr.ou de outro tratam., promovida pelo estabelec.' +
                ' dest., tenha sido contemplada com benef. Fiscal - CTE - Art. 62' +
                ', '#167' '#250'nico - 01122009 -'
              
                'GO020001 - Cr. relativo ao adicional de 2% na al'#237'quota do ICMS, ' +
                'na opera'#231#227'o ou a presta'#231#227'o sujeitas ao regime normal de tributa'#231 +
                #227'o. PROTEGE. - CTE - Art. 27, '#167' 5'#186' e Art. 6 -  IN  784/06 - 0101' +
                '2009 -'
              
                'GO020002 - Cr. out. (COMEXPRODUZIR) para a empresa comercial imp' +
                '. e exp., inclusive por "trading company", que opere, exclusiva ' +
                'ou prepond. com op. de com. ext. realiz. por interm'#233'dio de estru' +
                't. portu'#225'ria de zona sec. localiz. Em Goi'#225's - Dec. 5.686/02 - Ar' +
                't. 3, III - 01012009 -'
              
                'GO020003 - Cr. Out. (LOGPRODUZIR) '#224' operadora de log'#237'stica, nos ' +
                'percentuais do Art. 4'#186' do Dec. 5.835/03 no saldo devedor do ICMS' +
                ' pelas presta'#231#245'es interestaduais de servi'#231'o de transporte da ben' +
                'efici'#225'ria no per'#237'odo. - Dec. 5.835/03 - Art. 3 e 4 - 01012009 -'
              
                'GO020004 - Antecipa'#231#227'o de ICMS de imposto apropriado em decorr'#234'n' +
                'cia de pagamento antecipado pela futura opera'#231#227'o interna. - Dec.' +
                ' 6.716/08 - Art. 8, '#167' '#250'nico e IN. 893/08 - 01012009 -'
              
                'GO020005 - Cr. do ICMS ao optante do Simples Nacional que deixar' +
                ' de ser optante do referido regime, correspondente '#224' aquisi'#231#227'o d' +
                'a mercadoria existente em seu estoque na mudan'#231'a do regime, obse' +
                'rvadas as regras da legisla'#231#227'o tribut'#225'ria.  - IN  894/08-GSF - 0' +
                '1012009 -'
              
                'GO020006 - Presumido ao produtor ou extrator ou ST, exceto o cre' +
                'denciado, nos percentuais de cr'#233'dito presumido, aplicados no imp' +
                'osto devido, na opera'#231#227'o sujeita '#224's al'#237'quotas indicadas em lei. ' +
                '- IN 673/04-GSF - Art. 14 - 01012009 -'
              
                'GO020007 - Cr. do imposto relativo '#225' aquisi'#231#227'o do '#243'leo diesel pe' +
                'lo contribuinte, consumido em m'#225'quina agr'#237'cola. - IN 673/04-GSF ' +
                '- Art. 17 e  '#167' '#218'nico - 01012009 -'
              
                'GO020008 - Pela diferen'#231'a a maior, entre o ICMS pago em parcelas' +
                ', em percentuais do imposto apurado no per'#237'odo anterior, e o val' +
                'or apurado para o per'#237'odo de refer'#234'ncia. Reg. 1200 - IN 709/05; ' +
                '754/05; 768/06 e demais similares - 01012009 -'
              
                'GO020009 - Outorgado ao produtor rural (repasse), apropriado pel' +
                'o ST, em 75% do ICMS, no algod'#227'o em pluma.  - Lei n'#186' 13.506/99, ' +
                'Art. 2'#186' - 01012009 -'
              
                'GO020010 - Cr. out. mediante TARE, relativo ao incentivo do TECN' +
                'OPRODUZIR, a ser compensado com o imposto devido pela empresa in' +
                'vestidora, por opera'#231#227'o pr'#243'pria ou de sua responsabilidade devid' +
                'o por ST. - Lei n'#186' 15.619/06 - 01012009 -'
              
                'GO020011 - Cr. out. qdo n'#227'o apropriado no per'#237'odo em que ocorrer' +
                ' a op. ou prest., cujo aproveitamento foi autorizado pelo Sup. d' +
                'a Receita Estadual, em caso de recurso ap'#243's decis'#227'o denegat'#243'ria ' +
                'do aproveitamento do cr'#233'dito. - RCTE - Art. 10, '#167' 2'#186' - Anexo IX ' +
                '- 01012009 -'
              
                'GO020012 - Cr. out. qdo n'#227'o apropriado no per'#237'odo em que ocorrer' +
                ' a opera'#231#227'o ou presta'#231#227'o, cujo aproveitamento foi autorizado pel' +
                'o titular da Delegacia Regional de Fiscaliza'#231#227'o - RCTE - Art. 10' +
                ', '#167' 1'#186' - Anexo IX - 01012009 -'
              
                'GO020013 - Cr. Out. ao industrial alcooleiro do FOMENTAR ou PROD' +
                'UZIR, na opera'#231#227'o com '#225'lcool et'#237'lico anidro combust'#237'vel. Reg. 12' +
                '00 - RCTE - Art. 11,  XXVI, anexo IX - 01012009 -'
              
                'GO020014 - Cr. ao estabelecimento substituto na opera'#231#227'o interna' +
                ' de aquisi'#231#227'o de cana-de-a'#231#250'car, para industrializa'#231#227'o.(Cr. ST a' +
                'nterior).  - RCTE - Art. 11, '#167' 3'#186', I do Anexo VIII - 01012009 -'
              
                'GO020015 - Cr. out. ao que receber de outra UF, com isen'#231#227'o do I' +
                'CMS as mercadorias Hortifrut'#237'colas - RCTE - Art. 11, I, "a" - An' +
                'exo IX - 01012009 -'
              
                'GO020016 - Cr. out. ao que receber de outra UF, com isen'#231#227'o do I' +
                'CMS as mercadorias Ave e produtos comest'#237'veis resultante de sua ' +
                'matan'#231'a. - RCTE - Art. 11, I, "b" - Anexo IX - 01012009 -'
              
                'GO020017 - Cr. out. ao que receber de outra UF, com isen'#231#227'o do I' +
                'CMS as mercadorias Caprino e produtos comest'#237'veis resultante de ' +
                'sua matan'#231'a. - RCTE - Art. 11, I, "c" - Anexo IX - 01012009 -'
              
                'GO020018 - Cr. out. ao remetente pela diferen'#231'a apurada a menor ' +
                'entre o cr'#233'dito e o d'#233'bito do ICMS, qdo da transfer'#234'ncia interes' +
                'tadual de bem integrado ao ativo imobilizado. - RCTE - Art. 11, ' +
                'II - Anexo IX - 01012009 -'
              
                'GO020019 - Cr. out. ao remetente pela diferen'#231'a apurada a menor ' +
                'entre o cr'#233'dito e o d'#233'bito do ICMS, qdo da transfer'#234'ncia interes' +
                'tadual de material de uso ou consumo. - RCTE - Art. 11, II - Ane' +
                'xo IX - 01012009 -'
              
                'GO020020 - Cr. out. ao comerciante atacadista equivalente a 3% n' +
                'a sa'#237'da interestadual de mercadoria para comercializa'#231#227'o, produ'#231 +
                #227'o ou industrializa'#231#227'o. - RCTE - Art. 11, III - Anexo IX - 01012' +
                '009 -'
              
                'GO020021 - Cr. out. ao industrial, equivalente a 2%, na sa'#237'da in' +
                'terestadual de mercadoria para comercio, produ'#231#227'o ou industriali' +
                'za'#231#227'o.  - RCTE - Art. 11, III - Anexo IX - 01012009 -'
              
                'GO020022 - Cr. out. ao contrib.e comerciante equiparado a atacad' +
                'ista (varejista), em 3%, na sa'#237'da interest. que destine merc. pa' +
                'ra comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre' +
                ' o valor da correspondente opera'#231#227'o. - RCTE - Art. 11, III, "a" ' +
                '- Anexo IX - 01012009 -'
              
                'GO020023 - Cr. out. ao fabricante de fertilizante, em 5%, na ope' +
                'ra'#231#227'o interestadual com esse insumo. - RCTE - Art. 11, IX - Anex' +
                'o IX - 01012009 -'
              
                'GO020024 - Cr. out. ao remetente em 5% da base de c'#225'lculo, na sa' +
                #237'da interestadual com pedra-de-Piren'#243'polis,  vedado o aproveitam' +
                'ento de quaisquer cr'#233'ditos do ICMS relativos '#224' entrada e ao serv' +
                'i'#231'o utilizado.  - RCTE - Art. 11, LI - Anexo IX - 01012009 -'
              
                'GO020025 - Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%' +
                ', na sa'#237'da de carne de asinino, bovino, bufalino, eq'#252'ino, muar, ' +
                'ovino, caprino, lepor'#237'deo e ran'#237'deo para comercializa'#231#227'o, produ'#231 +
                #227'o ou industrializa'#231#227'o. - RCTE - Art. 11, V - Anexo IX - 0101200' +
                '9 -'
              
                'GO020026 - Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%' +
                ', na sa'#237'da de carnes de ave para comercializa'#231#227'o, produ'#231#227'o ou in' +
                'dustrializa'#231#227'o.  Inclusive em transfer'#234'ncia interestadual median' +
                'te TARE. - RCTE - Art. 11, VI - Anexo IX - 01012009 -'
              
                'GO020027 - Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%' +
                ', na sa'#237'da de carnes de su'#237'no para comercializa'#231#227'o, produ'#231#227'o ou ' +
                'industrializa'#231#227'o.  Inclusive em transfer'#234'ncia interestadual medi' +
                'ante TARE. - RCTE - Art. 11, VI - Anexo IX - 01012009 -'
              
                'GO020028 - Cr. out. ao produtor rural, no valor do ICMS, na sa'#237'd' +
                'a de alho. - RCTE - Art. 11, X - Anexo IX - 01012009 -'
              
                'GO020029 - Cr. out. ao titular de projeto agroindustrial de suin' +
                'ocultura, em 5%, na sa'#237'da de produto comest'#237'vel de su'#237'no para o ' +
                'N, NE, CO e ES. - RCTE - Art. 11, XII - Anexo IX - 01012009 -'
              
                'GO020030 - Cr. out. ao titular de projeto agroindustrial de avic' +
                'ultura, em 5%, na sa'#237'da de produto comest'#237'vel de ave para o N, N' +
                'E, CO e ES. - RCTE - Art. 11, XII - Anexo IX  (Red. Dec.6.547/06' +
                ') - 01012009 -'
              
                'GO020031 - Cr. out. ao industrial, quando o produto for resultan' +
                'te do beneficiamento de sua produ'#231#227'o em Goi'#225's, em de 75% do ICMS' +
                ' na opera'#231#227'o de venda de algod'#227'o em pluma. - RCTE - Art. 11, XII' +
                'I - Anexo IX - 01012009 -'
              
                'GO020032 - Cr. out. ao fabricante ou revendedor de combust'#237'vel, ' +
                'no valor do medidor eletr'#244'nico de vaz'#227'o. - RCTE - Art. 11, XIV -' +
                ' Anexo IX - 01012009 -'
              
                'GO020033 - Cr. out. ao remetente, em 5% , na sa'#237'da interestadual' +
                ' com areia, saibro ou material britado.  - RCTE - Art. 11, XIX -' +
                ' Anexo IX - 01012009 -'
              
                'GO020034 - Cr. out. ao remetente, mediante TARE, em 5% , em tran' +
                'sfer'#234'ncia interestadual com areia, saibro ou material britado.  ' +
                '- RCTE - Art. 11, XIX, "f", 2 - Anexo IX - 01012009 -'
              
                'GO020035 - Cr. out. ao remetente, na sa'#237'da interestadual de telh' +
                'a, tijolo, tijoleira e tapa-viga cer'#226'micos, n'#227'o esmaltados nem v' +
                'itrificados, em 5% da base de c'#225'lculo, at'#233' 7%, o cr'#233'dito da aqui' +
                'si'#231#227'o interestadual de mercadoria. - RCTE - Art. 11, XL - Anexo ' +
                'IX - 01012009 -'
              
                'GO020036 - Cr. out. p/ o industrial, em 5% sobre o valor de entr' +
                'ada de produto resultante de reciclagem realizada em GO utilizad' +
                'o como mat'#233'ria-prima no seu processo de industr.; e embalagem e ' +
                'papel usados, sucata e aparas.RCTE - Art. 11, XLI - Anexo IX - 0' +
                '1012009 -'
              
                'GO020037 - Cr. out. mediante TARE, ao prestador de servi'#231'o de te' +
                'lecomunica'#231#227'o, at'#233' 2% dos d'#233'bitos de ICMS pela telecomunica'#231#227'o, ' +
                'em substitui'#231#227'o ao estorno de d'#233'bito de situa'#231#245'es sem o fato ger' +
                'ador do ICMS. - RCTE - Art. 11, XLVII - Anexo IX - 01012009 -'
              
                'GO020038 - Cr. out. ao industrial, benefici'#225'rio do PRODUZIR, que' +
                ' instalou, at'#233' 31 de dezembro de 2007, na regi'#227'o Norte de Goi'#225's,' +
                ' industrializa'#231#227'o do biodiesel, no valor do investido em obras d' +
                'e infra-estrutura. - RCTE - Art. 11, XLIX - Anexo IX - 01012009 ' +
                '-'
              
                'GO020039 - Cr. out. ao frigor'#237'fico, abatedor ou produtor rural n' +
                'a sa'#237'da de abate de animal silvestre e ex'#243'tico, para comercializ' +
                'a'#231#227'o ou industrializa'#231#227'o. Inclusive a transfer'#234'ncia interestadua' +
                'l mediante TARE. - RCTE - Art. 11, XV, "b", '#8220'e'#8221', 2 - Anexo IX - ' +
                '01012009 -'
              
                'GO020040 - Cr. out. '#224' PETROBRAS no valor do ICMS no fornecimento' +
                ' energia el'#233'trica. - RCTE - Art. 11, XVII - Anexo IX - 01012009 ' +
                '- 28032009 -'
              
                'GO020041 - Cr. out. ao remetente, em 9% , na opera'#231#227'o interestad' +
                'ual com arroz, exceto o em casca. Inclusive a transfer'#234'ncia inte' +
                'restadual mediante TARE. - RCTE - Art. 11, XVIII - Anexo IX - 01' +
                '012009 -'
              
                'GO020042 - Cr. out. ao prestador do servi'#231'o de transporte de pas' +
                'sageiro, em 4% e sujeita a 12% sobre a base de c'#225'lculo.  - RCTE ' +
                '- Art. 11, XX, "a" - Anexo IX - 01012009 -'
              
                'GO020043 - Cr. out. ao prestador do servi'#231'o de transporte de pas' +
                'sageiro, em 9% e sujeita a 17% sobre a base de c'#225'lculo.  - RCTE ' +
                '- Art. 11, XX, "b" - Anexo IX - 01012009 -'
              
                'GO020044 - Cr. out. ao contribuinte participante projeto cultura' +
                'l da Lei GOYAZES.  - RCTE - Art. 11, XXII - Anexo IX - 01012009 ' +
                '-'
              
                'GO020045 - Cr. out. ao atacadista de medicamento, mediante TARE,' +
                ' em 4% , na sa'#237'da interestadual de medicamento de uso humano. - ' +
                'RCTE - Art. 11, XXIII - Anexo IX - 01012009 -'
              
                'GO020046 - Cr. out. ao industrial e comerciante atacadista, em 5' +
                '% , na sa'#237'da interestadual de '#243'leo vegetal comest'#237'vel. - RCTE - ' +
                'Art. 11, XXV - Anexo IX - 01012009 -'
              
                'GO020047 - Cr. out. ref. ao valor constante do doc. denominado '#8220 +
                'Cheque Moradia'#8221', para o estabel. que fornecer a benefici'#225'rio do ' +
                'Programa Habitacional Morada Nova, merc. arroladas no anexo IX d' +
                'o RCTE. Reg. 1200 - RCTE - Art. 11, XXVII e '#167' 5'#186',  II, '#8220'e'#8221' - Ane' +
                'xo IX - 01012009 -'
              
                'GO020048 - Cr. out. ao remetente, em 5%, na sa'#237'da interestadual ' +
                'de m'#225'quina e equipamentos rodovi'#225'rios. - RCTE - Art. 11, XXVIII ' +
                '- Anexo IX - 01012009 -'
              
                'GO020049 - Cr. out. ao industrializador de produto agr'#237'cola, at'#233 +
                ' 7% do valor do produto agr'#237'cola produzido em Goi'#225's, e tamb'#233'm no' +
                ' Estado industrializado em estabelecimento seu. - RCTE - Art. 11' +
                ', XXXI -  Anexo IX - 01012009 -'
              
                'GO020050 - Cr. Out. ao distrib. de prod. m'#233'dico-hospitalar, farm' +
                'ac'#234'utico, de perfumaria e preparado cosm'#233'tico, em 5,6% da b. de ' +
                'c'#225'lc. na sa'#237'da interest. com prod. Imp. de sua empresa no ext. e' +
                ' tb com prod. de fab. pr'#243'pria - RCTE - Art. 11, XXXII '#167' 11'#186'  - A' +
                'nexo I X - 01012009 -'
              
                'GO020051 - Cr. out. ao remetente, em 1% , na opera'#231#227'o interna de' +
                ' leite natural, pasteurizado ou esterilizado. - RCTE - Art. 11, ' +
                'XXXIV, "a" - Anexo IX - 01012009 -'
              
                'GO020052 - Cr. out. ao remetente, em 9%, na oper. interestadual ' +
                'c/ feij'#227'o produzido neste Estado que n'#227'o tenha sido submetido a ' +
                'qualquer processo de industrializa'#231#227'o fora de GO. Inclusive a tr' +
                'ansf. interestadual mediante TARE.RCTE - Art. 11, XXXIV, "b" - A' +
                'nexo IX - 01012009 -'
              
                'GO020053 - Cr. out. ao remetente, em 5%, na opera'#231#227'o interestadu' +
                'al de produtos derivativos do leite. Inclusive a transfer'#234'ncia m' +
                'ediante TARE. - RCTE - Art. 11, XXXV - Anexo IX - 01012009 -'
              
                'GO020054 - Cr. out. ao contribuinte de ICMS que apoiar financeir' +
                'amente o PROTEGE - RCTE - Art. 11, XXXVI - Anexo IX e Art. 9,I -' +
                '  Lei 14.469. - 01012009 -'
              
                'GO020055 - Cr. out. ao contribuinte do ICMS que apoiar financeir' +
                'amente o PROESPORTE. - RCTE - Art. 11, XXXVII - Anexo IX - 01012' +
                '009 -'
              
                'GO020056 - Cr. out. ao industrial de ve'#237'culo automotor benefici'#225 +
                'rio do PRODUZIR, em 92,53% da parcela n'#227'o incentivada pelo progr' +
                'ama. Reg. 1200 - RCTE - Art. 11, XXXVIII, "a",  '#167' 14 a 18 - Anex' +
                'o IX - 01012009 -'
              
                'GO020057 - Cr. out. ao industrial de ve'#237'culo automotor benefici'#225 +
                'rio do PRODUZIR, em 98% do saldo devedor da sa'#237'da do ve'#237'culo e p' +
                'e'#231'as para o exterior. Reg. 1200 - RCTE - Art. 11, XXXVIII, "b" -' +
                ' Anexo IX - 01012009 -'
              
                'GO020058 - Cr. out. ao industrial de ve'#237'culo automotor com PRODU' +
                'ZIR, a ser apropriado desde o inicio das atividades da industria' +
                ' em Goi'#225's, no valor investido em infra-estrutura. Reg. 1200 - RC' +
                'TE - Art. 11, XXXVIII, "c" - Anexo IX - 01012009 -'
              
                'GO020059 - Cr. out. ao industrial, em 60% para compensa'#231#227'o do IC' +
                'MS devido, na sa'#237'da interna de adesivo hidroxilado, cuja mat'#233'ria' +
                '-prima espec'#237'fica seja material resultante da moagem ou tritura'#231 +
                #227'o de garrafa PET.  - RCTE - Art. 12, VI, e '#167' 4'#186' - Anexo IX - 01' +
                '012009 -'
              
                'GO020060 - Normal do ICMS do DARE pago, ao regularizar a opera'#231#227 +
                'o, n'#227'o se efetuar dentro do per'#237'odo de apura'#231#227'o e emitir o docum' +
                'ento fiscal tamb'#233'm. - RCTE - Art. 141, '#167' 2'#186' - 01012009 -'
              
                'GO020061 - Cr. especial/pr'#233'-operacional para investimento autori' +
                'zado por TARE. REG. 1200 - RCTE - Art. 19 a 29 - Anexo IX e TARE' +
                ' - 01012009 -'
              
                'GO020062 - Normal '#224' CONAB/PGPM no valor do ICMS pago, referente ' +
                'ao estoque de mercadoria existente no ultimo dia de cada m'#234's. Se' +
                'm despensa o d'#233'bito na sa'#237'da.  - RCTE - Art. 20 - Anexo XIII - 0' +
                '1012009 -'
              
                'GO020063 - Cr. do imposto correspondente ao valor pago em outro ' +
                'Estado, nas vendas fora do estabelecimento. - RCTE - Art. 28, '#167' ' +
                '3'#186' e '#167' 4'#186', V, "b" - Anexo XII - 01012009 -'
              
                'GO020064 - Pagamento antecipado do ICMS - sa'#237'da interestadual - ' +
                'Registro 1200 - RCTE - Art. 340 '#167'1'#186' e IN  598/03 - 01012009 -'
              
                'GO020065 - Cr. relativo '#224' restitui'#231#227'o do valor do imposto pago, ' +
                'por for'#231'a da substitui'#231#227'o tribut'#225'ria, correspondente ao fato ger' +
                'ador presumido que n'#227'o se realizar - RCTE - Art. 42, I - 0101200' +
                '9 -'
              
                'GO020066 - Cr. relativo '#224' restitui'#231#227'o do valor do imposto pago, ' +
                'por for'#231'a da substitui'#231#227'o tribut'#225'ria, correspondente ao fato ger' +
                'ador presumido que n'#227'o se realizar, quando n'#227'o houver  delibera'#231 +
                #227'o no prazo de 90 dias - RCTE - Art. 42, II - 01012009 -'
              
                'GO020067 - Antecipa'#231#227'o de ICMS retido na aquisi'#231#227'o de '#225'lcool n'#227'o' +
                ' carburante procedente de outra UF.  - RCTE - Art. 45, I, "a"; A' +
                'rt. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' e Art. 58, '#167' 1'#186' - Anexo VIII - 010' +
                '12009 - 28032009 -'
              
                'GO020068 - Antecipa'#231#227'o de ICMS retido na aquisi'#231#227'o de '#225'lcool n'#227'o' +
                ' carburante procedente do exterior. - RCTE - Art. 45, I, "a"; Ar' +
                't. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' e Art. 58, '#167' 1'#186' - Anexo VIII - 0101' +
                '2009 - 28032009 -'
              
                'GO020069 - Cr. decorrente do imposto retido, por utilizar mercad' +
                'oria sujeita '#224' substitui'#231#227'o tribut'#225'ria em processo de produ'#231#227'o o' +
                'u industrializa'#231#227'o, inclusive manipula'#231#227'o - RCTE - Art. 45, III,' +
                '  e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Anexo VIII - 01012009 -'
              
                'GO020070 - Cr. decorrente do imp. retido na aquis. de qualquer m' +
                'erc. ou contrata'#231#227'o de serv. de transp., por contrib. goiano sig' +
                'nat'#225'rio de TARE que lhe atribua a condi'#231#227'o de subst. tribut'#225'rio ' +
                ' - RCTE - Art. 45, I,'#8221'b'#8221' e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Ane' +
                'xo VIII - 01012009 -'
              
                'GO020071 - Cr. decorrente do imposto retido,  por realizar opera' +
                #231#227'o com mercadoria sujeita '#224' substitui'#231#227'o tribut'#225'ria,  destinada' +
                ' a contribuinte do imposto estabelecido em outra UF - RCTE - Art' +
                '. 45, II e Art. 46, I,  II e '#167' 1'#186', 4'#186' e 5'#186' - Anexo VIII - 010120' +
                '09 -'
              
                'GO020072 - Cr. decorrente do imposto retido   por destinar merca' +
                'doria sujeita '#224' substitui'#231#227'o tribut'#225'ria ao ativo imobilizado - R' +
                'CTE - Art. 45, IV e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Anexo VIII' +
                ' - 01012009 -'
              
                'GO020073 - Cr. decorrente do imposto retido, por realizar opera'#231 +
                #227'o subseq'#252'ente n'#227'o onerada pelo imposto com mercadoria sujeita '#224 +
                ' substitui'#231#227'o tribut'#225'ria - RCTE - Art. 45, V e Art. 46, I, II e ' +
                #167' 1'#186' - Anexo VIII - 01012009 -'
              
                'GO020074 - Cr. decorrente do imposto retido devido ao desfazimen' +
                'to do neg'#243'cio ou devolu'#231#227'o total ou parcial - RCTE - Art. 45, VI' +
                ' e Art. 46, I,  II e '#167' 1'#186', 4'#186' e 5'#186' - Anexo VIII - 01012009 -'
              
                'GO020075 - Cr. decorrente do imposto retido devido '#224' inexist'#234'nci' +
                'a de opera'#231#227'o subseq'#252'ente em raz'#227'o de quebra, sinistro, furto, r' +
                'oubo, perecimento ou qualquer outro motivo - RCTE - Art. 45, VII' +
                ' e Art. 46, I, II e '#167' 1'#186' - Anexo VIII - 01012009 -'
              
                'GO020076 - Cr. decorrente do imp. retido,  por realizar op. com ' +
                'merc. sujeita '#224' ST c/destino a contrib. detentor de med. Jud. li' +
                'minar suspendendo a apl. do regime de subst. Tribut. - RCTE - Ar' +
                't. 45, VIII, Art. 46, I, II e '#167' 1'#186' e Art. 48 e 49, '#167' 1'#186', II - An' +
                'exo VIII - 01012009 -'
              
                'GO020077 - Cr. decorrente do imp. retido, dev. '#224' op. interna com' +
                ' merc. sujeita '#224' ST, realiz. por contrib. ind. ou comerc. atac. ' +
                'com destino a empresa de constr. civil ou a '#243'rg'#227'o da adm p'#250'b. di' +
                'reta. - RCTE - Art. 45, X e Art. 46, I, II e V; '#167' 1'#186', 4'#186' e 5'#186' - ' +
                'Anexo VIII - 01012009 -'
              
                'GO020078 - Cr. do imposto apropriado com base em documento de ar' +
                'recada'#231#227'o que excepcionalmente substituir o documento fiscal pr'#243 +
                'prio, estabelecido na legisla'#231#227'o tribut'#225'ria para a opera'#231#227'o ou p' +
                'resta'#231#227'o - RCTE - Art. 46, '#167' 1'#186', III - 01012009 -'
              
                'GO020079 - Cr. decorrente da entrada de bem destinado ao Ativo I' +
                'mobilizado, '#224' raz'#227'o de 1/48 por m'#234's. - RCTE - Art. 46, '#167' 4'#186' - 01' +
                '012009 -'
              
                'GO020080 - Cr. do imposto anteriormente cobrado em opera'#231#245'es res' +
                'ultantes de aquisi'#231#227'o de combust'#237'vel por estabelecimento prestad' +
                'or de servi'#231'o de transporte interestadual e intermunicipal. - RC' +
                'TE - Art. 46, '#167' 6'#186' - 01012009 -'
              
                'GO020081 - Cr. em rela'#231#227'o ao diferencial de al'#237'quotas devido em ' +
                'opera'#231#245'es ou presta'#231#245'es resultantes de entrada de mercadoria, re' +
                'al ou simb'#243'lica, no seu estabelecimento destinada ao seu ativo i' +
                'mobilizado - RCTE - Art. 46, I e V - 01012009 -'
              
                'GO020082 - Cr. em rela'#231#227'o ao diferencial de al'#237'quotas devido em ' +
                'opera'#231#245'es ou presta'#231#245'es resultantes de entrada de mercadoria, re' +
                'al ou simb'#243'lica, no seu estabelecimento destinada ao seu uso ou ' +
                'consumo final. - RCTE - Art. 46, I, V e Art. 522, I - 01012009 -'
              
                'GO020083 - Cr. do imp. anteriormente cobrad. em op. ou prest res' +
                'ult. de entrada de merc, real ou simb, no seu estab, inclusive a' +
                ' destin uso/consumo final/at imob, realiz s/ aproveit. de cr, fa' +
                'ce a ved, qdo ocorrer a sa'#237'da com d'#233'b. - RCTE - Art. 46, IV - 01' +
                '012009 -'
              
                'GO020084 - Cr. em rela'#231#227'o ao dif. de al'#237'q. dev. em op. ou prest.' +
                ' Result. de entrada de merc, real ou simb. no seu estab. dest. s' +
                'eu uso ou consumo final e at. imob., realiz sem aproveit. de cr,' +
                ' face a ved const. na legisla'#231#227'o. - RCTE - Art. 46, IV, V e Art.' +
                ' 522, I - 01012009 -'
              
                'GO020085 - Cr. do imposto relativo '#224' restitui'#231#227'o do ind'#233'bito tri' +
                'but'#225'rio sob a forma de aproveitamento de cr'#233'dito, quando autoriz' +
                'ado pela legisla'#231#227'o tribut'#225'ria - RCTE - Art. 47, I - 01012009 -'
              
                'GO020086 - Relativo ao valor pago, indevidamente, pelo erro de f' +
                'ato ocorrido na escritura'#231#227'o livros fiscais ou no preparo do doc' +
                'umento de arrecada'#231#227'o, mediante escritura'#231#227'o no per'#237'odo de sua c' +
                'onstata'#231#227'o. - RCTE - Art. 47, III, "a" e "b" - 01012009 -'
              
                'GO020087 - Relativo imposto destacado na nota fiscal de remessa ' +
                'para usu'#225'rio do servi'#231'o de recep'#231#227'o de som e imagem por sat'#233'lite' +
                ' na devolu'#231#227'o do equipamento ao fornecedor. - RCTE - Art. 47, V ' +
                '- 01012009 -'
              
                'GO020088 - Cr. ao imposto relativo '#224' restitui'#231#227'o do valor do dep' +
                #243'sito extrajudicial sob a forma de aproveitamento de cr'#233'dito, qu' +
                'ando autorizado pela legisla'#231#227'o tribut'#225'ria - RCTE - Art. 47, VI ' +
                '- 01012009 -'
              
                'GO020089 - Cr. do imp. result. da apl. da al'#237'q. interna sobre a ' +
                'b. de c'#225'lc., multip pelo tempo que faltar p/completar o quadri'#234'n' +
                'io, na raz'#227'o de 1/48 por m'#234's ou fra'#231#227'o, na transf de at imob cuj' +
                'a entrada no estab tenha ocor a partir de 01/01/01 - RCTE - Art.' +
                ' 47, VII - 01012009 -'
              
                'GO020090 - Cr. aut por Del Fiscal, confir. por dilig. prop ao im' +
                'p est. ou n'#227'o cred. em op ou prest ant. qdo da realiz de op trib' +
                ' c/prod agrop, antecedida de op/prest isentas ou n'#227'o trib e esta' +
                's, por sua vez, antecedida de op ou prest trib - RCTE - Art. 50,' +
                ' III, '#167' 1'#186' - 01012009 -'
              
                'GO020091 - Cr. qdo da inexist de delib no praz. Estabel. p/manif' +
                'esta'#231#227'o do del. fiscal, prop. ao imp. Estorn. ou n'#227'o cred. em op' +
                '. ou prest. anteriores, qdo da realiz de op. trib. c/ prod. agro' +
                'p. antecedida de op/prest isentas ou n'#227'o trib - RCTE - Art. 50, ' +
                'III, '#167' 2'#186' - 01012009 -'
              
                'GO020092 - Cr. pela restitui'#231#227'o do dep'#243'sito do montante integral' +
                ' se a decis'#227'o em ultima inst'#226'ncia administrativa for favor'#225'vel a' +
                'o contribuinte. - RCTE - Art. 505, '#167' 4'#186', I, "a" - 01012009 -'
              
                'GO020093 - Cr. do imposto, exceto o outorgado, apropriado median' +
                'te autoriza'#231#227'o do Delegado Fiscal da circunscri'#231#227'o do contribuin' +
                'te, atrav'#233's de processo administrativo - RCTE - Art. 52  e outra' +
                's situa'#231#245'es previstas na legisla'#231#227'o. - 01012009 -'
              
                'GO020094 - Cr. do imposto pelo recebimento de servi'#231'o de comunic' +
                'a'#231#227'o utilizado no estabelecimento, at'#233' 31/12/2010 havendo opera'#231 +
                #227'o de sa'#237'da/presta'#231#227'o para o exterior, na propor'#231#227'o destas sobre' +
                ' as sa'#237'das ou presta'#231#245'es totais.  - RCTE - Art. 522, II, "a", 3 ' +
                '- 01012009 -'
              
                'GO020095 - Cr. relativo '#224' entrada de energia el'#233'trica no estabel' +
                'ecimento, at'#233' 31/12/2010 quando houver opera'#231#227'o de sa'#237'da ou pres' +
                'ta'#231#227'o para o exterior, na propor'#231#227'o destas sobre as sa'#237'das ou pr' +
                'esta'#231#245'es totais.  - RCTE - Art. 522, II, "b", 2 - 01012009 -'
              
                'GO020096 - Cr. decor. do imp. cobrado na op. ou prest. anterior,' +
                ' no caso em que ocorreu a  perda, extrav. ou reten'#231#227'o da 1'#170' via ' +
                'do doc. fiscal respec. e n'#227'o houve deliber. no prazo estab. sobr' +
                'e a solic. aut. ao Del. Fiscal  p/aprov. do cr - RCTE - Art. 53,' +
                ' '#167' 3'#186' e 4'#186' - 01012009 -'
              
                'GO020097 - Cr. presumido ao estabelecimento prestador de servi'#231'o' +
                ' de transportes interestadual e intermunicipal, exceto o a'#233'reo, ' +
                '20% sobre o valor devido na presta'#231#227'o, em ST ao sistema normal d' +
                'e creditamento. - RCTE - Art. 64, I - 01012009 - '
              
                'GO020098 - Cr. presumido ao estabel. prestador de serv. de trans' +
                'p. a'#233'reo, no perc. de 4% , aplicado sobre o valor da prest. inte' +
                'rna, que deve ser adotado, opcionalmente, pelo contribuinte, em ' +
                'substitui'#231#227'o ao sistema normal de creditamento - RCTE - Art. 64,' +
                ' II - 01012009 - '
              
                'GO020099 - Regime de Estimativa relativo ao valor pago em excess' +
                'o no regime de estimativa  - RCTE - Art. 70, I, "b", 1 - 0101200' +
                '9 - '
              
                'GO020100 - Cr. decor. do imp. retido qdo uma esp'#233'cie de merc for' +
                ' exclu'#237'da do reg. de ST (Tb p/registrar as parc. mensais corresp' +
                '. ao vl do cr. do ICMS, conf. art. 3'#186', III do Dec. n'#186' 6663) - RC' +
                'TE - Art. 81, I, II e III e '#167' 1'#186' - Anexo VIII e Art. 2 e 3 - Dec' +
                '. 6.663/07 - 01012009 - '
              
                'GO020101 - Cr. decor. do imp. retido qdo ocorrer red. da carga t' +
                'rib. na op interna c/merc. sujeita ao reg de ST, nos casos em qu' +
                'e o contrib substitu'#237'do  mantiver estoque merc. dessa natureza, ' +
                'dest. '#224' comercializa'#231#227'o. - RCTE - Art. 81, I, II e III e '#167' 2'#186' - ' +
                'Anexo VIII - 01012009 - '
              
                'GO020102 - Cr. apropriado em fun'#231#227'o de concess'#227'o por meio de TAR' +
                'E (C'#243'digo exclusivo p/as quais n'#227'o exista previs'#227'o de nenhum out' +
                'ro c'#243'digo espec'#237'fico nesta tabela). - TARE'#39's diversos - 01012009' +
                ' - '
              
                'GO029999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS Pr'#243'prio - 01012009 - 31072010' +
                ' - '
              
                'GO129999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS-ST - 01012009 - '
              
                'GO020103 - Cr. out. p/ ind. fab. de vestu'#225'rio ou p/ estab. atac.' +
                ' a ele pertencente, o equiv. '#224' aplic. do percentual de 12% sobre' +
                ' o valor da base de c'#225'lc. corresp. '#224' op. interest. com prod. de ' +
                'fab. pr'#243'pria destinado '#224' comerc. ou ind. - RCTE - Art. 11, LII -' +
                ' Anexo IX - 01052009 - '
              
                'GO020104 - Cr. out. p/ ind. fab. de vestu'#225'rio ou p/ estab. atac.' +
                ' a ele pertencente, o equiv. '#224' aplic. do perc. de 10% sobre o vl' +
                '. da base de c'#225'lc. corresp. '#224' op. de venda interna com prod. de ' +
                'fab. pr'#243'pria destinado '#224' comerc. ou ind. - RCTE - Art. 11, LIII ' +
                '- Anexo IX - 01052009 -'
              
                'GO020105 - Cr. out. p/ ind. fab. de vestu'#225'rio, o equiv. '#224' aplic.' +
                ' do percentual 10% sobre o valor da base de c'#225'lc. corresp. '#224' tra' +
                'nsfer'#234'ncia interna de produto de fab. pr'#243'pria destinado '#224' comerc' +
                '. em estab. varejista a ele pertencente. - RCTE - Art. 11, LIV -' +
                ' Anexo IX - 01052009 - '
              
                'GO020106 - Cr. Referente a dedu'#231#227'o de ICMS Pr'#243'prio por repasses ' +
                'efetuados '#224' outras UF - Conv. ICMS 110/07, Cl'#225'usula 22'#170', III e A' +
                'rt. 61-D, '#167' 1'#186', Anexo VIII do RCTE - 01012009 - '
              
                'GO120001 - Cr. Referente a dedu'#231#227'o de ICMS Subst. Tribut'#225'ria por' +
                ' repasses efetuados '#224' outras UF - Conv. ICMS 110/07, Cl'#225'usula 22' +
                #170', III e Art. 61-D, '#167' 1'#186', Anexo VIII do RCTE - 01012009 - '
              
                'GO120002 - Ressarcimento de ICMS concedido '#224' distribuidoras - Co' +
                'nv. ICMS 110/07, Cl'#225'usula 18'#170', '#167' 3'#186', II e Arts. 45, II; 46, II, ' +
                #8220'e'#8221'; 47 e 61-A, '#167' 3'#186', II, Anexo VIII do RCTE - 01012009 - '
              
                'GO120003 - Cr. Referente a dedu'#231#227'o de ICMS por repasses a outras' +
                ' UF efetuados por outro estabelecimento do sujeito passivo  - Co' +
                'nv. ICMS 110/07, Cl'#225'usula 22'#170', '#167' 6'#186' e Art. 61-D, '#167' 6'#186', Anexo VII' +
                'I do RCTE - 01012009 - '
              
                'GO020107 - Cr. decorrente do imposto normal, anteriormente estor' +
                'nado em fun'#231#227'o da sa'#237'da com benef'#237'cio, devido ao desfazimento do' +
                ' neg'#243'cio ou devolu'#231#227'o total ou parcial - RCTE - Art. 47, II. - 0' +
                '1012009 - '
              
                'GO020108 - Cr. para o estabelecimento remetente, o equiv. '#224' apli' +
                'c. do perc. de 4% s/ o valor da base de c'#225'lculo correspondente '#224 +
                ' oper. interestadual com ve'#237'culo automotor caminh'#227'o com peso em ' +
                'carga maxima superior a 5 toneladas. - RCTE - Art. 11, LV - Anex' +
                'o IX - 01112009 - '
              
                'GO020109 - Cr. para o estabelecimento remetente, o equiv. '#224' apli' +
                'c. do percentual de 4% s/ o valor da base de c'#225'lculo corresponde' +
                'nte '#224' oper.  interestadual com ve'#237'culo automotor '#244'nibus ou com c' +
                'hassi com motor para '#244'nibus. - RCTE - Art. 11, LVI - Anexo IX - ' +
                '01112009 - '
              
                'GO020110 - Cr.  out. p/ o estabel. industrial N'#195'O benefic. do FO' +
                'MENTAR, nas sa'#237'das interna e interest. de '#243'leo vegetal comest'#237've' +
                'l, result. da industr. em GO de produto agr'#237'cola produzido e adq' +
                'uir. em GO, conf. TARE, equiv a 5% - RCTE - Art. 11, VIII , '#8220'a'#8221' ' +
                '- Anexo IX - 01012009 - '
              
                'GO020111 - Cr.  out. p/ o estabel. industrial benefic. do FOMENT' +
                'AR, nas sa'#237'das interna e interest. de '#243'leo vegetal comest'#237'vel, r' +
                'esult. da industr. em  GO de produto agr'#237'cola produzido e adquir' +
                'ido em GO, conf. TARE, equiv. a 3% - RCTE - Art. 11, VIII , '#8220'c'#8221' ' +
                '- Anexo IX - 01012009 - '
              
                'GO020112 - Cr. out. p/ efeito de compensa'#231#227'o c/ o ICMS devido, o' +
                'bs o '#167' 4'#186' qto. ao t'#233'rm.da vig. do benef., por empresa produtora ' +
                'de disco fonogr'#225'fico ou de outro suporte com som gravado, o valo' +
                'r do dir. autoral, art'#237'st. ou conexo. - RCTE - Art. 12, I e '#167'1'#186' ' +
                '- Anexo IX - 01012009 - '
              
                'GO020113 - Cr. out. p/ o estabel. industrial q. realizar a op. i' +
                'nterestadual, o eq. ao perc. de 9% s/ o vl. da b. de c'#225'lc, na sa' +
                #237'da interest. com ave viva prov. de prod. rural goiano que a pro' +
                'duziu em sist. Integ/parceria c/ o indust - 01012010 - '
              
                'GO030001 - Estorno de d'#233'bito referente ao ICMS lan'#231'ado na remess' +
                'a para venda fora do estabelecimento (retorno de mercadorias n'#227'o' +
                ' vendidas). RCTE - Art. 28, '#167' 4'#186', V, '#8220'a'#8221' - Anexo XII - 01012009 ' +
                '- '
              
                'GO030002 - Estorno de d'#233'b. Ref. '#224' transf. de cr. pelo produtor r' +
                'ural, em que o adq. assume a condi'#231#227'o de substituto tribut'#225'rio, ' +
                'no per'#237'odo em que tomar ci'#234'ncia da decis'#227'o da n'#227'o aut. da transf' +
                '. por parte da SEFAZ. RCTE - Art. 46, '#167' 1'#186', I - 01012009 - '
              
                'GO030003 - Estorno de d'#233'bito nos casos autorizados por TARE ou d' +
                'espacho fundamentado do delegado ou superintendente. - 01012009 ' +
                '- '
              
                'GO030004 - Estorno de d'#233'bito conforme previsto no Conv'#234'nio ICMS ' +
                '84/2005 - 01012009 - '
              
                'GO030005 - Estorno referente ao cancelamento de bilhete de passa' +
                'gem rodovi'#225'rio, escriturado antes do in'#237'cio da presta'#231#227'o do serv' +
                'i'#231'o, havendo direito de restitui'#231#227'o do valor ao usu'#225'rio. - 01012' +
                '010 - '
              
                'GO039999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS Pr'#243'prio - 01012009 - 31072010' +
                ' - '
              
                'GO139999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS-ST - 01012009 -'
              
                'GO040001 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. relativo' +
                ' ao val adicional de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CT' +
                'E - Art. 27,  '#167' 5'#186' e Art.  6 - IN 784/06 - 01012009 - '
              
                'GO040002 - Ded. ICMS m'#233'dia FOM/PROD, cr. relativo ao valor adici' +
                'onal de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CTE - Art. 27, ' +
                ' '#167' 5'#186' e Art.  6 - IN. 784/06 - 01012009 -'
              
                'GO040003 - Ded. ICMS parcela n'#227'o finan. FOM/PROD, cr. relativo a' +
                'o val adicional de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CTE ' +
                '- Art. 27,  '#167' 5'#186' e Art.  6 - IN. 784/06 - 01012009 - '
              
                'GO040004 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incenti-FOM/PROD, pela dif' +
                'eren'#231'a a maior, entre o ICMS pago em parcelas, em percentuais do' +
                ' imposto apurado no per'#237'odo anterior, e o valor apurado para o p' +
                'er'#237'odo de refer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186'  I e demais si' +
                'milares - 01012009 - '
              
                'GO040005 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, pela diferen'#231'a a m' +
                'aior, entre o ICMS pago em parcelas, em percentuais do imposto a' +
                'purado no per'#237'odo anterior, e o valor apurado para o per'#237'odo de ' +
                'refer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186' I e demais similares - 0' +
                '1012009 - '
              
                'GO040006 - Ded. ICMS parcela n'#227'o financiada - FOM/PROD, pela dif' +
                'eren'#231'a a maior, entre o ICMS pago em parcelas, em percentuais do' +
                ' imposto apurado no per'#237'odo anterior, e o valor apurado para o p' +
                'er'#237'odo de refer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186' I e demais sim' +
                'ilares - 01012009 - '
              
                'GO040007 - ICMS Financiado Oper. Incentivadas FOMENTAR/PRODUZIR.' +
                ' IN 885/07 - 01012009 - '
              
                'GO040008 - ICMS financiado sobre opera'#231#245'es destinadas a contribu' +
                'inte - CENTROPRODUZIR. Lei N'#186' 13.844/01 Art.  3, I, '#8220'a'#8221' - 010120' +
                '09 - '
              
                'GO040009 - ICMS financiado sobre opera'#231#245'es destinadas a n'#227'o cont' +
                'ribuinte - CENTROPRODUZIR. Lei N'#186' 13.844/01 Art.  3, I, '#8220'b'#8221'. - 0' +
                '1012009 - '
              
                'GO040010 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, pgto antecipado IC' +
                'MS sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 '#167' 1'#186' IV e IN' +
                ' 598/03 - 01012009 - '
              
                'GO040011 - Ded. ICMS parcela n'#227'o financiada - FOME/PROD,  pgto a' +
                'ntecipado ICMS sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 ' +
                #167' 1'#186' IV e IN 598/03 - 01012009 - '
              
                'GO040012 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incenti-FOM/PROD,  pgto an' +
                'tecipado ICMS sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 '#167 +
                ' 1'#186' IV e IN 598/03 - 01012009 -'
              
                'GO040013 - Ded. ICMS m'#233'dia FOM/PROD, instalar Ind. Biodiesel. Re' +
                'g. 1210. RCTE - Art. 11, XLIX - Anexo IX - 01012009 - '
              
                'GO040014 - Ded. ICMS parcela n'#227'o financi FOM/PROD,instalar Ind b' +
                'iodiesel. Reg. 1210. RCTE - Art. 11, XLIX - Anexo IX - 01012009 ' +
                '- '
              
                'GO040015 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD,instalar Ind ' +
                'biodiesel. Reg. 1210. RCTE - Art. 11, XLIX - Anexo IX - 01012009' +
                ' - '
              
                'GO040016 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, GOYAZES, origem re' +
                'g. 1210. RCTE - Art. 11, XXII - Anexo IX - 01012009 - '
              
                'GO040017 - Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR,' +
                ' GOYAZES. Reg. 1210. RCTE - Art. 11, XXII - Anexo IX - 01012009 ' +
                '- '
              
                'GO040018 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRO' +
                'DUZIR, GOYAZES. Reg. 1210. RCTE - Art. 11, XXII - Anexo IX - 010' +
                '12009 - '
              
                'GO040019 - Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao ind. alcooleiro' +
                ' do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combust'#237'vel. Re' +
                'g. 1210. RCTE - Art. 11, XXVI - Anexo  IX - 01012009 - '
              
                'GO040020 - Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao ind. ' +
                'alcooleiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combu' +
                'st'#237'vel. Reg. 1210. RCTE - Art. 11, XXVI - Anexo  IX - 01012009 -' +
                ' '
              
                'GO040021 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao ' +
                'ind. alcooleiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro ' +
                'combust'#237'vel. Reg. 1210. RCTE - Art. 11, XXVI - Anexo  IX - 01012' +
                '009 - '
              
                'GO040022 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, cheque moradia, or' +
                'igem reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' II, '#8220'e'#8221'  - Anexo IX' +
                ' - 01012009 - '
              
                'GO040023 - Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR,' +
                ' cheque moradia. Reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' II, '#8220'e'#8221 +
                '  - Anexo IX - 01012009 - '
              
                'GO040024 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRO' +
                'DUZIR, cheque moradia. Reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' I' +
                'I, '#8220'e'#8221'  - Anexo IX - 01012009 - '
              
                'GO040025 - Ded. ICMS parcela n'#227'o financida - FOMENTAR/PRODUZIR, ' +
                'PROTEGE apoio financeiro. Reg. 1210. RCTE - Art. 11, XXXVI  - An' +
                'exo IX e Lei 14.469, Art. 9'#186', I. - 01012009 - '
              
                'GO040026 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRO' +
                'DUZIR, PROTEGE apoio financeiro. Reg. 1210. RCTE - Art. 11, XXXV' +
                'I  - Anexo IX e Lei 14.469, Art. 9'#186', I. - 01012009 - '
              
                'GO040027 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, PROTEGE apoio fina' +
                'nceiro, origem reg. 1210. RCTE - Art. 11, XXXVI - Anexo IX e Lei' +
                ' 14.469, Art. 9'#186', I. - 01012009 - '
              
                'GO040028 - Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR,' +
                ' PROESPORTE. Reg. 1210. RCTE - Art. 11, XXXVII -  Anexo IX - 010' +
                '12009 - '
              
                'GO040029 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRO' +
                'DUZIR, PROESPORTE. Reg. 1210. RCTE - Art. 11, XXXVII -  Anexo IX' +
                ' - 01012009 - '
              
                'GO040030 - Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, PROESPORTE, origem' +
                ' reg. 1210. RCTE - Art. 11, XXXVII - Anexo IX - 01012009 - '
              
                'GO040031 - Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de v' +
                'e'#237'culo automotor benefici'#225'rio do PRODUZIR, em 92,53% da parcela ' +
                'n'#227'o incentivada pelo programa. Reg. 1200. RCTE - Art. 11, XXXVII' +
                'I, '#8220'a'#8221' -  Anexo IX - 01012009 -'
              
                'GO040032 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out.ao i' +
                'ndustrial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 92,5' +
                '3% da parcela n'#227'o incentivada pelo programa. Reg. 1200. RCTE - A' +
                'rt. 11, XXXVIII, '#8220'a'#8221' -  Anexo IX - 01012009 - '
              
                'GO040033 - Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao indus' +
                'trial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 92,53% d' +
                'a parcela n'#227'o incentivada pelo programa. Reg. 1200. RCTE - Art. ' +
                '11, XXXVIII, '#8220'a'#8221' -  Anexo IX - 01012009 -'
              
                'GO040034 - Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao indus' +
                'trial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 98% do s' +
                'aldo devedor da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. RCTE ' +
                '- Art. 11, XXXVIII, '#8220'b'#8221' - Anexo IX - 01012009 - '
              
                'GO040035 - Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de v' +
                'e'#237'culo automotor benefici'#225'rio do PRODUZIR, em 98% do saldo deved' +
                'or da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. RCTE - Art. 11,' +
                ' XXXVIII, '#8220'b'#8221' - Anexo IX - 01012009 - '
              
                'GO040036 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao ' +
                'industrial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 98%' +
                ' do saldo devedor da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. ' +
                'RCTE - Art. 11, XXXVIII, '#8220'b'#8221' - Anexo IX - 01012009 - '
              
                'GO040037 - Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao indus' +
                'trial de ve'#237'culo automotor com PRODUZIR, a ser apropriado desde ' +
                'o inicio das atividades da industria em Goi'#225's, no valor investid' +
                'o em infra-estrutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8220'c'#8221' - ' +
                ' Anexo IX - 01012009 - '
              
                'GO040038 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao ' +
                'industrial de ve'#237'culo automotor com PRODUZIR, a ser apropri. des' +
                'de o inicio das ativid. da industria em Goi'#225's, no valor investid' +
                'o em infra-estrutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8221'c'#8221' - ' +
                ' Anexo IX - 01012009 - '
              
                'GO040039 - Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de v' +
                'e'#237'culo automotor com PRODUZIR, a ser apropriado desde o inicio d' +
                'as atividades da industria em Goi'#225's, no valor investido em infra' +
                '-estrutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8221'c'#8221' -  Anexo IX ' +
                '- 01012009 - '
              
                'GO040040 - Ded. ICMS m'#233'dia FOM/PROD, DARE p/ regularizar oper. f' +
                'ora do per'#237'odo. Reg. 1210. RCTE - Art. 141, '#167' 2'#186' - 01012009 - '
              
                'GO040041 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD,DARE regul op' +
                'er fora do per'#237'odo. Reg 1210. RCTE - Art. 141, '#167' 2'#186' - 01012009 -' +
                ' '
              
                'GO040042 - Ded. ICMS parc n'#227'o financ FOM/PROD, DARE regulari ope' +
                'r. fora do per'#237'odo. Reg 1210. RCTE - Art. 141, '#167' 2'#186' - 01012009 -' +
                ' '
              
                'GO040043 - Ded. ICMS m'#233'dia FOM/PROD, cr. especial/pr'#233'-operaciona' +
                'l p/ investimento-autorir. TARE. RCTE - Art. 19 a 29 - Anexo IX ' +
                'e TARE - 01012009 -'
              
                'GO040044 - Ded. ICMS parc n'#227'o financ FOM/PROD, cr. especial/pr'#233'-' +
                'operacional p/ investimento-autorir. TARE. RCTE - Art. 19 a 29 -' +
                ' Anexo IX e TARE - 01012009 - '
              
                'GO040045 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. especial' +
                '/pr'#233'-operacional p/ investimento-autorir. TARE. RCTE - Art. 19 a' +
                ' 29 - Anexo IX e TARE - 01012009 - '
              
                'GO040046 - Ded. ICMS m'#233'dia FOM/PROD, ICMS pago indevido em virtu' +
                'de de erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221', 1 - 01012009 - '
              
                'GO040047 - Ded. ICMS parc n'#227'o financ FOM/PROD, ICMS pago indevid' +
                'o virtude erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221', 1 - 0101200' +
                '9 - '
              
                'GO040048 - Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada FOM/PROD,ICMS ' +
                'pago indevido virtude erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221',' +
                ' 1 - 01012009 - '
              
                'GO049999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS Pr'#243'prio. - 01012009 - 3107201' +
                '0 - '
              
                'GO040049 - Cr. out. p/ o industrial de ve'#237'culo automotor benef. ' +
                'do PRODUZIR, que implantar ou ampliar estabel. em GO, equiv. a 9' +
                '8% do saldo devedor do imposto correspondente '#224' sa'#237'da de ve'#237'culo' +
                's, suas partes e pe'#231'as, import.do exterior. RCTE - Art. 11, LVII' +
                ', Anexo IX - 01042010 - '
              
                'GO040050 - Cr. out. p/ o industrial de ve'#237'culo automotor benef. ' +
                'do PRODUZIR, que implantar ou ampliar estabel. em GO, equiv. a 9' +
                '8% do valor da parcela n'#227'o incentivada do imposto corresp. '#224' sa'#237 +
                'da de ve'#237'culos, suas partes e pe'#231'as. RCTE - Art. 11, LVII, Anexo' +
                ' IX - 01042010 - '
              
                'GO040051 - Cr. out. p/ o industrial de ve'#237'culo automotor benef. ' +
                'do FOMENTAR, que ampliar estabel. em GO, equiv. a 98% do val. da' +
                ' parcela n'#227'o incentivada do ICMS corresp. '#224' sa'#237'da de ve'#237'culos, s' +
                'uas partes e pe'#231'as, inclusive os import. RCTE - Art. 11, LVIII, ' +
                'Anexo IX - 01042010 - '
              
                'GO140001 - Ded. ICMS ST, cr.rRelativo ao valor adicional de 2% n' +
                'a al'#237'quota de ICMS. PROTEGE.  CTE - Art. 27, '#167' 5'#186' e Art. 6 - IN ' +
                '784/06 - 01012009 - '
              
                'GO140002 - Ded. ICMS ST, pela diferen'#231'a a maior, entre o ICMS pa' +
                'go em parcelas, em percentuais do imposto apurado no per'#237'odo ant' +
                'erior, e o valor apurado para o per'#237'odo de refer'#234'ncia. Reg. 1200' +
                '. IN 768/06 - '#167' 2'#186' I e demais similares - 01012009 - '
              
                'GO140003 - Ded. ICMS ST, ind. alcooleiro s/ cr. out. ao ind. alc' +
                'ooleiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combust'#237 +
                'vel. Reg. 1210 RCTE - Art. 11 XXVI - Anexo IX - 01012009 -'
              
                'GO140004 - Ded. ICMS ST, cheque moradia. Reg. 1210. RCTE - Art. ' +
                '11 XXVII e '#167' 5'#186' II, e - Anexo IX - 01012009 - '
              
                'GO140005 - Ded. ICMS ST, instalar Ind. Biodiesel. Reg. 1210. RCT' +
                'E - Art. 11, XLIX - Anexo IX - 01012009 - '
              
                'GO140006 - Ded. ICMS ST, cr. out. ao industrial de ve'#237'culo autom' +
                'otor com PRODUZIR, a ser apropriado desde o inicio das atividade' +
                's da industria em Goi'#225's, no valor investido em infra-estrutura. ' +
                'Reg. 1200. RCTE - Art. 11, XXXVIII, '#8220'c'#8221' - Anexo IX - 01012009 - '
              
                'GO140007 - Ded. ICMS ST, cr. especial/pr'#233'-operacional p/ investi' +
                'mento-autorir. TARE TARE - 01012009 - '
              
                'GO149999 - C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo e' +
                'spec'#237'fico previsto na tabela. ICMS-ST - 01012009 - '
              
                'GO059999 - D'#233'bitos Especiais - valores extra-apura'#231#227'o. C'#243'digo ge' +
                'n'#233'rico p/ situa'#231#245'es n'#227'o previstas na tabela. - 01012009 - '
              
                'GO159999 - D'#233'bitos Especiais ref. a subst. tribut.- valores extr' +
                'a-apura'#231#227'o. C'#243'digo gen'#233'rico p/ situa'#231#245'es n'#227'o previstas na tabela' +
                '. - 01012009 -')
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPL_DESCR'
            Width = 492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORAJUST'
            Width = 93
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 254
        Width = 904
        Height = 34
        Align = alBottom
        TabOrder = 2
        object DBText1: TDBText
          Left = 1
          Top = 1
          Width = 902
          Height = 32
          Align = alClient
          Alignment = taCenter
          DataField = 'CODIGOAJUST'
          DataSource = src_ajusE111
          WordWrap = True
        end
      end
    end
    object tsE115: TTabSheet
      Caption = 'Ajustes E115'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 222
        Width = 904
        Height = 34
        Align = alBottom
        TabOrder = 0
        object DBText2: TDBText
          Left = 1
          Top = 1
          Width = 902
          Height = 32
          Align = alClient
          Alignment = taCenter
          DataField = 'CODIGOAJUST'
          DataSource = src_ajusE115
          WordWrap = True
        end
      end
      object DBGrid1_e115: TDBGrid
        Left = 0
        Top = 0
        Width = 904
        Height = 222
        Align = alClient
        DataSource = src_ajusE115
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGOAJUST'
            PickList.Strings = (
              'GO000001 1. Sa'#237'das das Opera'#231#245'es Incentivadas'
              'GO000002 2. Total das Sa'#237'das'
              
                'GO000003 3. Percentual das Sa'#237'das das Opera'#231#245'es Incentivadas [(1' +
                '/2)x100]'
              'GO000004 4. Cr'#233'ditos por Entradas'
              'GO000005 5. Outros Cr'#233'ditos'
              'GO000006 6. Estorno de D'#233'bitos'
              'GO000007 7. Saldo Credor do Per'#237'odo Anterior'
              'GO000008 8. Total dos Cr'#233'ditos do Per'#237'odo (4+5+6+7)'
              'GO000009 9. Cr'#233'dito para Opera'#231#245'es Incentivadas [(3x8)/100]'
              'GO000010 10. Cr'#233'dito para Opera'#231#245'es N'#227'o Incentivadas (8-9)'
              'GO000011 11. D'#233'bito do ICMS das Opera'#231#245'es Incentivadas'
              'GO000012 12. Outros D'#233'bitos das Opera'#231#245'es Incentivadas'
              'GO000013 13. Estorno de Cr'#233'ditos das Opera'#231#245'es Incentivadas'
              'GO000014 14. Cr'#233'dito para Opera'#231#245'es Incentivadas (9)'
              
                'GO000015 15. Dedu'#231#245'es das Oper. Incentivadas (Linha 14 do Quadro' +
                ' da Apura'#231#227'o dos Saldos - LRA)'
              
                'GO000016 16. Cr'#233'dito Referente a Saldo Credor do Per'#237'odo das Ope' +
                'ra'#231#245'es N'#227'o Incentivadas (43)'
              
                'GO000017 17. Saldo Devedor do ICMS das Opera'#231#245'es Incentivadas [(' +
                '11+12+13)-(14+15+16)]'
              'GO000018 18. ICMS por M'#233'dia'
              'GO000019 19. Dedu'#231#245'es/Compensa'#231#245'es - ICMS M'#233'dia'
              'GO000020 20. Saldo do ICMS a Pagar por M'#233'dia (18-19)'
              'GO000021 21. ICMS Base para Fomentar/Produzir (17-18)'
              'GO000022 22. Percentagem do Financiamento'
              'GO000023 23. ICMS Sujeito a Financiamento [(21x22)/100]'
              'GO000024 24. ICMS Excedente N'#227'o Sujeito ao Incentivo'
              'GO000025 25. ICMS Financiado (23-24)'
              'GO000026 26. Saldo do ICMS da Parcela N'#227'o Financiada (21-23)'
              'GO000027 27. Dedu'#231#245'es/Compensa'#231#245'es - parcela n'#227'o financiada'
              
                'GO000028 28. Saldo do ICMS a Pagar da Parcela N'#227'o Financiada (26' +
                '-27)'
              
                'GO000029 29. Saldo Credor do Per'#237'odo - Op. incentivadas [(14+15)' +
                '-(11+12+13)]'
              
                'GO000030 30. Saldo Credor do Per'#237'odo (Op. Incentivadas) Utilizad' +
                'o nas Opera'#231#245'es N'#227'o Incentivadas'
              
                'GO000031 31. Saldo Credor a Transportar para o Per'#237'odo Seguinte ' +
                '- Oper. incentivadas(29-30)'
              'GO000032 32. D'#233'bito do ICMS das Opera'#231#245'es N'#227'o Incentivadas'
              'GO000033 33. Outros D'#233'bitos das Opera'#231#245'es N'#227'o Incentivadas'
              'GO000034 34. Estorno de Cr'#233'ditos das Opera'#231#245'es N'#227'o Incentivadas'
              'GO000035 35. ICMS Excedente N'#227'o Sujeito ao Incentivo'
              'GO000036 36 .Cr'#233'dito para Opera'#231#245'es N'#227'o Incentivadas (10)'
              
                'GO000037 37. Dedu'#231#245'es das Oper. N'#227'o Incentivadas (Linha 14 do Qu' +
                'adro Apura'#231#227'o dos Saldos - LRA)'
              
                'GO000038 38. Cr'#233'dito Referente a Saldo Credor do Per'#237'odo das Ope' +
                'ra'#231#245'es Incentivadas (30)'
              
                'GO000039 39. Saldo Devedor do ICMS das Opera'#231#245'es N'#227'o Incentivada' +
                's [(32+33+34+35)-(36+37+38)]'
              
                'GO000040 40. Dedu'#231#245'es/Compensa'#231#245'es - Sd. Devedor do ICMS das Ope' +
                'r. N'#227'o Incentivadas'
              
                'GO000041 41. Saldo do ICMS a Pagar das Opera'#231#245'es N'#227'o Incentivada' +
                's (39-40)'
              
                'GO000042 42. Saldo Credor do Per'#237'odo - Op. N'#227'o Incentivadas [(36' +
                '+37)-(32+33+34+35)]'
              
                'GO000043 43. Saldo Credor do Per'#237'odo (Op. N'#227'o incentivadas) Util' +
                'izado nas Opera'#231#245'es Incentivadas'
              
                'GO000044 44. Saldo Credor a Transp para o Per'#237'odo Seguinte - Ope' +
                'r. N'#227'o incentivadas(42-43)'
              'GO000045 73. Total das Mercadorias Importadas'
              
                'GO000046 74. Outros Acr'#233'scimos sobre Importa'#231#227'o GUIA PR'#193'TICO DA ' +
                'ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO 24'
              'GO000047 75.Total das Opera'#231#245'es de Importa'#231#227'o (73+74)'
              'GO000048 76. Total das Entradas do Per'#237'odo'
              
                'GO000049 77. Percentual das Opera'#231#245'es de Importa'#231#227'o [(75/76)x100' +
                ']'
              'GO000050 78. ICMS sobre Importa'#231#227'o'
              
                'GO000051 79. Mercadorias Importadas Excedentes {[76x(77 - 30%)]/' +
                '100}'
              'GO000052 80. ICMS sobre Importa'#231#227'o Excedente [78x(79/75)]'
              
                'GO000053 81. ICMS sobre Importa'#231#227'o Excedente N'#227'o Sujeito a Incen' +
                'tivo [(80x22)/100]'
              'GO000054 82. ICMS sobre Importa'#231#227'o Sujeito ao Incentivo (78-80)'
              
                'GO000055 83. ICMS sobre Importa'#231#227'o da Parcela N'#227'o Financiada {[7' +
                '8x( 100%- 22)]/100}'
              
                'GO000056 84. Saldo do ICMS sobre Importa'#231#227'o a Pagar (81+83) GUIA' +
                ' PR'#193'TICO DA ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO ' +
                '25 ANEXO II '#8211' Tabela 5.2 '#8211' C'#243'digos para PROTEGE Goi'#225's. C'#243'digos a' +
                ' serem utilizados pelos estabelecimentos condicionados ao recolh' +
                'imento do PROTEGE GOI'#193'S. C'#243'digo Descri'#231#227'o'
              
                'GO000065 Cr'#233'dito Outorg., para o estabelecimento que efetuar ope' +
                'ra'#231#227'o interestadual com achocolatado em p'#243'; bebida l'#225'ctea; creme' +
                ' de leite; doce de leite; iogurte; leite aromatizado, esteriliza' +
                'do (UHT), pasteurizado ou em p'#243'; manteiga de leite; queijo, incl' +
                'usive requeij'#227'o; soro de leite em p'#243'; e '#243'leo but'#237'rico de manteig' +
                'a (butter oil), leite pr'#233'-concentrado integral e leite pr'#233'-conce' +
                'ntrado desnatado, o percentual de 5% aplicado sobre o valor da b' +
                'ase de c'#225'lculo. Art. 11, XXXV do Anexo IX do RCTE GO000066 Cr'#233'di' +
                'to Outorg., para o estabelecimento que efetuar as seguintes oper' +
                'a'#231#245'es, o percentual a seguir especificado aplicado sobre o valor' +
                ' da base de c'#225'lculo correspondente. a) opera'#231#227'o interna com leit' +
                'e em estado natural, pasteurizado ou esterilizado (UHT), 1% ; b)' +
                ' opera'#231#227'o interestadual com feij'#227'o, 9%. Art. 11, XXXIV do Anexo ' +
                'IX do RCTE '
              
                'GO000067 Cr'#233'dito Outorg., para o estabelecimento distribuidor de' +
                ' empresa fabricante de aparelho, m'#225'quina, equipamento ou instrum' +
                'ento m'#233'dico-hospitalar, produto farmac'#234'utico, de perfumaria ou d' +
                'e toucador, preparado e prepara'#231#227'o cosm'#233'tica, constantes dos c'#243'd' +
                'igos da NBM/SH, ..., 9603 na sa'#237'da interestadual com produto de ' +
                'fabrica'#231#227'o pr'#243'pria, o equivalente '#224' aplica'#231#227'o do percentual de 5' +
                ',6% sobre o valor da base de c'#225'lculo. Art. 11, XXXII do Anexo IX' +
                ' do RCTE '
              
                'GO000068 Cr'#233'dito Outorg., para o estabelecimento industrializado' +
                'r de produto agr'#237'cola, o equivalente '#224' aplica'#231#227'o de at'#233' 7% sobre' +
                ' o valor do produto agr'#237'cola produzido no Estado de Goi'#225's efetiv' +
                'amente industrializado em estabelecimento seu localizado neste E' +
                'stado. Art. 11, XXXI do Anexo IX do RCTE '
              
                'GO000069 Cr'#233'dito Outorg., para o estabelecimento remetente, na s' +
                'a'#237'da interestadual de m'#225'quinas e equipamentos rodovi'#225'rios, relac' +
                'ionados no Ap'#234'ndice XII do Anexo IX-RCTE, o equivalente '#224' aplica' +
                #231#227'o de 5% sobre o valor da base de c'#225'lculo. Art. 11, XXVIII do A' +
                'nexo IX do RCTE '
              
                'GO000070 Cr'#233'dito Outorg., para industrial e comerciante atacadis' +
                'ta na opera'#231#227'o de sa'#237'da de '#243'leo vegetal comest'#237'vel, em valor equ' +
                'ivalente a 5% da respectiva base de c'#225'lculo. Art. 11, XXV do Ane' +
                'xo IX do RCTE '
              
                'GO000071 Cr'#233'dito Outorg., para o comerciante atacadista de medic' +
                'amento, equivalente '#224' aplica'#231#227'o de 4% sobre o valor da correspon' +
                'dente base de c'#225'lculo na sa'#237'da interestadual com medicamento de ' +
                'uso humano destinado a comercializa'#231#227'o, produ'#231#227'o ou industrializ' +
                'a'#231#227'o, mantido o sistema normal de compensa'#231#227'o do imposto. Art. 1' +
                '1, XXIII do Anexo IX do RCTE '
              
                'GO000072 Cr'#233'dito Outorg., para o estabelecimento prestador do se' +
                'rvi'#231'o de transporte de passageiro, o valor equivalente '#224' aplica'#231 +
                #227'o dos percentuais previstos nas al'#237'neas "a" e "b" do Art. 11- A' +
                'nexo IX-RCTE, sobre o valor da respectiva base de c'#225'lculo na pre' +
                'sta'#231#227'o de servi'#231'o de transporte rodovi'#225'rio interestadual e inter' +
                'municipal de passageiro, inclusive de turismo e escolar. Art. 11' +
                ', XX do Anexo IX do RCTE '
              
                'GO000073 Cr'#233'dito Outorg., para o estabelecimento remetente na op' +
                'era'#231#227'o interestadual com arroz, exceto com o em casca, o equival' +
                'ente '#224' aplica'#231#227'o de 9% sobre o valor da base de c'#225'lculo. Art. 11' +
                ', XVIII do Anexo IX do RCTE '
              
                'GO000074 Cr'#233'dito Outorg., para o industrial fabricante de fertil' +
                'izante, na opera'#231#227'o interestadual que praticar com esse insumo a' +
                'gropecu'#225'rio, o valor equivalente a 5% da respectiva base de c'#225'lc' +
                'ulo. (Depende de TARE) Art. 11, IX do Anexo IX do RCTE '
              
                'GO000075 Cr'#233'dito Outorg., para o estabelecimento frigor'#237'fico ou ' +
                'abatedor, na sa'#237'da para comercializa'#231#227'o ou industrializa'#231#227'o, de ' +
                'carne fresca, resfriada, congelada, salgada, temperada ou salmou' +
                'rada e mi'#250'do comest'#237'vel resultantes do abate, em seu pr'#243'prio est' +
                'abelecimento de asinino, bovino, bufalino, eq'#252'ino e muar adquiri' +
                'do em opera'#231#227'o interna com a redu'#231#227'o de base de c'#225'lculo de que t' +
                'rata o inciso XIV do Art. 8'#186' do Anexo IX-RCTE, o equivalente '#224' a' +
                'plica'#231#227'o de 9%, sobre o valor da respectiva base de c'#225'lculo. Art' +
                '. 11, V do Anexo IX do RCTE '
              
                'GO000076 Cr'#233'dito Outorg., para os contribuintes industrial e com' +
                'erciante atacadista, o equivalente ao percentual de 2% e 3%, res' +
                'pectivamente, na sa'#237'da interestadual que destine mercadoria para' +
                ' comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre o' +
                ' valor da correspondente opera'#231#227'o. Art. 11, III do Anexo IX do R' +
                'CTE GUIA PR'#193'TICO DA ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S S' +
                'EFAZ/GO 26 '
              
                'GO000077 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
                'obre o valor da opera'#231#227'o do percentual equivalente a 15%, na sa'#237 +
                'da interna de gasolina de avia'#231#227'o, ficando mantido o cr'#233'dito. Ar' +
                't. 8, XXIX do Anexo IX do RCTE '
              
                'GO000078 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
                'obre o valor da opera'#231#227'o o percentual equivalente a 7%, na sa'#237'da' +
                ' interna de m'#225'quinas e equipamentos rodovi'#225'rios, relacionados no' +
                ' Ap'#234'ndice XII do Anexo IX-RCTE. Art. 8, XXVII do Anexo IX do RCT' +
                'E '
              
                'GO000079 Red. Base de Calc. na opera'#231#227'o interna com os produtos ' +
                'especificados, de tal forma que resulte a aplica'#231#227'o do percentua' +
                'l equivalente a 17% sobre o valor da opera'#231#227'o: b)-demais produto' +
                's constantes do Anexo I-RCTE, exceto armas e muni'#231#245'es, para o co' +
                'ntribuinte que aderir ao Programa Estadual de Combate '#224' Comercia' +
                'liza'#231#227'o ilegal de Mercadorias, mediante celebra'#231#227'o de TARE. Art.' +
                ' 8, XXIII do Anexo IX do RCTE '
              
                'GO000080 Red. Base de Calc. na sa'#237'da interna com produto de info' +
                'rm'#225'tica, telecomunica'#231#227'o ou automa'#231#227'o relacionado no Ap'#234'ndice IV' +
                ' deste Anexo, de tal forma que resulte a aplica'#231#227'o sobre o valor' +
                ' da opera'#231#227'o do equivalente ao percentual de 7%, ficando mantido' +
                ' o cr'#233'dito do imposto at'#233' o limite de 7%, devendo ser observado ' +
                'o disposto nas al'#237'neas do mesmo art. Art. 8, XIII do Anexo IX do' +
                ' RCTE '
              
                'GO000081 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
                'obre o valor da opera'#231#227'o do equivalente ao percentual de 7%, na ' +
                'opera'#231#227'o interna de fornecimento de refei'#231#227'o, ficando mantido o ' +
                'cr'#233'dito. Art. 8, XII do Anexo IX do RCTE '
              
                'GO000082 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
                'obre o valor da opera'#231#227'o do equivalente ao percentual de 10%, na' +
                ' sa'#237'da interna realizada por contribuinte industrial ou comercia' +
                'nte atacadista que destine mercadoria para comercializa'#231#227'o, prod' +
                'u'#231#227'o ou industrializa'#231#227'o, ficando mantido o cr'#233'dito. Art. 8, VII' +
                'I do Anexo IX do RCTE '
              
                'GO000083 Isen'#231#227'o, mediante despacho individual concedido pelo Se' +
                'cret'#225'rio da Fazenda, a opera'#231#227'o de importa'#231#227'o do exterior, inclu' +
                'sive em doa'#231#227'o, dos bens relacionados nas al'#237'neas "a", "b" e "c"' +
                '- Art. 6'#186', LXXI-Anexo IX-RCTE, sem similar produzido no Pa'#237's, ou' +
                ' mesmo com similar para a entrada decorrente de doa'#231#227'o, quando d' +
                'estinados a atividade de ensino, pesquisa ou presta'#231#227'o de servi'#231 +
                'o m'#233'dico-hospitalar, adquiridos por pessoa natural ou jur'#237'dica. ' +
                'Art. 6, LXXI do Anexo IX do RCTE GUIA PR'#193'TICO DA ESCRITURA'#199#195'O FI' +
                'SCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO 27 ANEXO III '#8211' Tabela 5.2 '#8211 +
                ' Demonstrativo Mensal de Apura'#231#227'o do Cr'#233'dito Outorgado do '#193'lcool' +
                ' Et'#237'lico Anidro Combust'#237'vel. C'#243'digos a serem utilizados pelos es' +
                'tabelecimentos industriais produtores de '#225'lcool et'#237'lico anidro c' +
                'ombust'#237'vel para informa'#231#227'o dos valores relativos '#224' apura'#231#227'o do c' +
                'r'#233'dito outorgado apropriado pela ind'#250'stria sucroalcoleira.  C'#211'D.' +
                ' EFD DESCRI'#199#195'O '
              
                'GO000084 A - Somat'#243'rio dos valores de ICMS que seria debitado na' +
                's notas fiscais de sa'#237'da de '#225'lcool et'#237'lico anidro combust'#237'vel ca' +
                'so n'#227'o houvesse o diferimento do imposto. '
              
                'GO000085 B - Somat'#243'rio dos valores das opera'#231#245'es de sa'#237'da de '#225'lc' +
                'ool et'#237'lico anidro combust'#237'vel acrescido do valor do ICMS que se' +
                'ria debitado (A). '
              
                'GO000086 C - Valor total das opera'#231#245'es de sa'#237'das tributadas do p' +
                'er'#237'odo, excluindo-se as exporta'#231#245'es e qualquer outra sa'#237'da n'#227'o i' +
                'ncentivada pelos programas Fomentar/Produzir. '
              
                'GO000087 D=B/C - Coeficiente de proporcionalidade das sa'#237'das de ' +
                #225'lcool et'#237'lico anidro combust'#237'vel (B) em rela'#231#227'o '#224's sa'#237'das totai' +
                's (C). Ex.: B=50 C=1000 D=50/1000 D=0,05x100 D=5% (Informar 5,00' +
                ') '
              
                'GO000088 E - Valor correspondente ao total dos cr'#233'ditos constant' +
                'e no campo 12 (total de cr'#233'ditos) do Livro Registro de Apura'#231#227'o ' +
                'do ICMS deduzido os valores dos cr'#233'ditos outorgados referente '#224's' +
                ' sa'#237'das interestaduais previstas no Art. 11, III, do anexo IX do' +
                ' RCTE. '
              
                'GO000089 F - Valor total da m'#233'dia de ICMS a partir da qual se co' +
                'ncedeu o financiamento do Fomentar/Produzir, calculada e corrigi' +
                'da pelo '#237'ndice definido. '
              
                'GO000090 G - Cr'#233'dito do ICMS a ser deduzido (DxE) e lan'#231'ado no c' +
                #243'digo 49 como estorno de cr'#233'dito no Livro Registro de Apura'#231#227'o d' +
                'o ICMS. '
              
                'GO000091 H - Valor do ICMS m'#233'dio a ser deduzido do ICMS que seri' +
                'a debitado (A), mediante a multiplica'#231#227'o dos itens D e F. '
              
                'GO000092 H1 - Percentual do cr'#233'dito outorgado previsto na legisl' +
                'a'#231#227'o para o per'#237'odo. '
              
                'GO000093 I - Valor do cr'#233'dito outorgado de ICMS no per'#237'odo pelas' +
                ' sa'#237'das de '#225'lcool et'#237'lico anidro combust'#237'vel. '
              
                'GO000094 Valor do cr'#233'dito outorgado autorizado pela Sefaz/GO por' +
                ' processo.')
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPL_DESCR'
            Width = 492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORAJUST'
            Width = 123
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 256
        Width = 904
        Height = 32
        Align = alBottom
        TabOrder = 2
        object bbe115_INCLUIR: TBitBtn
          Left = 4
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbe115_INCLUIRClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbe115_ALTERAR: TBitBtn
          Left = 103
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbe115_ALTERARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object bbe115_EXCLUIR: TBitBtn
          Left = 202
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbe115_EXCLUIRClick
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
        object bbe115_GRAVAR: TBitBtn
          Left = 301
          Top = 4
          Width = 100
          Height = 25
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bbe115_GRAVARClick
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
        object bbe115_CANCELAR: TBitBtn
          Left = 400
          Top = 5
          Width = 100
          Height = 25
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bbe115_CANCELARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbe115_DBNAVIGATOR1: TDBNavigator
          Left = 499
          Top = 5
          Width = 396
          Height = 25
          Hint = 'Navega entre os registros selecionados'
          DataSource = src_ajusE111
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Proximo Registro'
            #218'ltimo Registro')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
    end
    object tsGuiaST: TTabSheet
      Caption = 'Guia ST'
      ImageIndex = 2
      object Label52: TLabel
        Left = 19
        Top = 7
        Width = 124
        Height = 13
        Caption = 'C'#243'digo da Obriga'#231#227'o:'
      end
      object Label53: TLabel
        Left = 109
        Top = 24
        Width = 34
        Height = 13
        Caption = 'Valor:'
      end
      object Label54: TLabel
        Left = 276
        Top = 26
        Width = 62
        Height = 13
        Caption = 'Data Vcto:'
      end
      object Label57: TLabel
        Left = 446
        Top = 27
        Width = 100
        Height = 13
        Caption = 'N'#250'meroProcesso:'
      end
      object Label65: TLabel
        Left = 679
        Top = 26
        Width = 82
        Height = 13
        Caption = 'UF das Notas:'
      end
      object Label56: TLabel
        Left = 34
        Top = 45
        Width = 110
        Height = 13
        Caption = 'C'#243'digo da Receita:'
      end
      object Label59: TLabel
        Left = 311
        Top = 47
        Width = 94
        Height = 13
        Caption = 'Referencia M'#234's:'
      end
      object Label60: TLabel
        Left = 455
        Top = 44
        Width = 27
        Height = 13
        Caption = 'Ano:'
      end
      object Label58: TLabel
        Left = 538
        Top = 44
        Width = 93
        Height = 13
        Caption = 'Desc.Resumida:'
      end
      object Label61: TLabel
        Left = -2
        Top = 65
        Width = 145
        Height = 13
        Caption = 'Descri'#231#227'o Complementar:'
      end
      object RxDB_valor: TRxDBCalcEdit
        Left = 146
        Top = 22
        Width = 121
        Height = 21
        DataField = 'VL_OR'
        DataSource = Src_GuiaST
        Ctl3D = False
        DisplayFormat = '#,##0.00'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbedtguiast_dt_vcto: TDBDateEdit
        Left = 338
        Top = 22
        Width = 103
        Height = 21
        DataField = 'DT_VCTO'
        DataSource = Src_GuiaST
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 2
      end
      object dbcb_UF: TRxDBComboBox
        Left = 763
        Top = 22
        Width = 74
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'UF'
        DataSource = Src_GuiaST
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Values.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
      object bbGuiaST_Excluir: TBitBtn
        Left = 709
        Top = 81
        Width = 174
        Height = 21
        Caption = 'Excluir'
        TabOrder = 13
        OnClick = bbGuiaST_ExcluirClick
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
      object bbGuiaST_Alterar: TBitBtn
        Left = 174
        Top = 81
        Width = 174
        Height = 21
        Caption = 'Alterar'
        TabOrder = 11
        OnClick = bbGuiaST_AlterarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object bbGuiaST_Incluir: TBitBtn
        Left = 1
        Top = 81
        Width = 174
        Height = 21
        Caption = 'Incluir'
        TabOrder = 10
        OnClick = bbGuiaST_IncluirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 285
        Width = 912
        Height = 30
        Align = alBottom
        Caption = 'Totais:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        object Label62: TLabel
          Left = 8
          Top = 13
          Width = 85
          Height = 13
          Caption = 'Valor Digitado:'
        end
        object Label63: TLabel
          Left = 224
          Top = 13
          Width = 91
          Height = 13
          Caption = 'Valor Esperado:'
        end
        object Label64: TLabel
          Left = 448
          Top = 13
          Width = 56
          Height = 13
          Caption = 'Restante:'
        end
        object sbnNotas: TSpeedButton
          Left = 638
          Top = 8
          Width = 96
          Height = 22
          Caption = 'Ver Notas'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = sbnNotasClick
        end
        object edtguiast_valordig: TCurrencyEdit
          Left = 105
          Top = 9
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 0
        end
        object edtguiast_valoresp: TCurrencyEdit
          Left = 321
          Top = 9
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 1
        end
        object edtguiast_valorResto: TCurrencyEdit
          Left = 509
          Top = 9
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ReadOnly = True
          TabOrder = 2
        end
      end
      object DBedtguiast_num_proc: TDBEdit
        Left = 547
        Top = 22
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'NUM_PROC'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbCB_GUIAST_COD_OR: TRxDBComboBox
        Left = 146
        Top = 1
        Width = 584
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'COD_OR'
        DataSource = Src_GuiaST
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '000 ICMS a recolher'
          '001 ICMS da substitui'#231#227'o tribut'#225'ria pelas entradas'
          '002 ICMS da substitui'#231#227'o tribut'#225'ria pelas sa'#237'das para o Estado'
          '003 Antecipa'#231#227'o do diferencial de al'#237'quotas do ICMS'
          '004 Antecipa'#231#227'o do ICMS da importa'#231#227'o'
          '005 Antecipa'#231#227'o tribut'#225'ria'
          
            '006 ICMS resultante da al'#237'quota adicional dos itens inclu'#237'dos no' +
            ' Fundo de Combate '#224' Pobreza (FUNCEP)'
          '090 Outras obriga'#231#245'es do ICMS'
          
            '999 ICMS da substitui'#231#227'o tribut'#225'ria pelas sa'#237'das para outros est' +
            'ados')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Values.Strings = (
          '000'
          '001'
          '002'
          '003'
          '004'
          '005'
          '006'
          '090'
          '999'
          ''
          '')
      end
      object db_PROC: TDBEdit
        Left = 632
        Top = 42
        Width = 260
        Height = 19
        Ctl3D = False
        DataField = 'PROC'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 8
      end
      object db_TXT_COMP: TDBEdit
        Left = 146
        Top = 60
        Width = 518
        Height = 19
        Ctl3D = False
        DataField = 'TXT_COMP'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBE_MES_REF: TDBEdit
        Left = 406
        Top = 42
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'MES_REF'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBE_ANO_REF: TDBEdit
        Left = 487
        Top = 42
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'ANO_REF'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBGrid_GuiaST: TDBGrid
        Left = 0
        Top = 115
        Width = 912
        Height = 170
        Align = alBottom
        DataSource = Src_GuiaST
        TabOrder = 16
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_OR'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_OR'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VCTO'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_REC'
            Width = 155
            Visible = True
          end>
      end
      object bbGuiaST_GRAVAR: TBitBtn
        Left = 350
        Top = 81
        Width = 174
        Height = 21
        Caption = 'Gravar'
        TabOrder = 12
        OnClick = bbGuiaST_GRAVARClick
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
      object bbGuiaST_Cancelar: TBitBtn
        Left = 533
        Top = 81
        Width = 174
        Height = 21
        Caption = 'Cancelar'
        TabOrder = 14
        OnClick = bbGuiaST_CancelarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object DBE_COD_REC: TDBEdit
        Left = 146
        Top = 42
        Width = 120
        Height = 19
        Ctl3D = False
        DataField = 'COD_REC'
        DataSource = Src_GuiaST
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 16
        Top = 32
        Width = 393
        Height = 225
        Caption = 'Filtrar:'
        TabOrder = 0
        object Label44: TLabel
          Left = 8
          Top = 16
          Width = 98
          Height = 13
          Caption = 'Nota de Entrada:'
        end
        object Label45: TLabel
          Left = 8
          Top = 65
          Width = 86
          Height = 13
          Caption = 'Nota de Saida:'
        end
        object Label46: TLabel
          Left = 8
          Top = 113
          Width = 80
          Height = 13
          Caption = 'Cupom Fiscal:'
        end
        object edt_numnf_ent: TEdit
          Left = 111
          Top = 14
          Width = 81
          Height = 21
          TabOrder = 0
          OnExit = edt_numnf_entExit
        end
        object edt_numnf_sai: TEdit
          Left = 111
          Top = 63
          Width = 82
          Height = 21
          TabOrder = 1
          OnExit = edt_numnf_saiExit
        end
        object edt_num_ecf: TEdit
          Left = 110
          Top = 111
          Width = 81
          Height = 21
          TabOrder = 2
          OnExit = edt_num_ecfExit
        end
        object lbx_numnf_ent: TListBox
          Left = 193
          Top = 14
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_numnf_entKeyDown
        end
        object lbx_numnf_sai: TListBox
          Left = 193
          Top = 63
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_numnf_saiKeyDown
        end
        object lbx_numcf: TListBox
          Left = 193
          Top = 111
          Width = 100
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_numcfKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 108
          Top = 36
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
      end
    end
  end
  object mem_R0150: TRxMemoryData
    FieldDefs = <>
    Left = 44
    Top = 16
    object mem_R0150COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 60
    end
    object mem_R0150NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object mem_R0150COD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
    end
    object mem_R0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mem_R0150CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object mem_R0150CEI: TStringField
      FieldName = 'CEI'
      Size = 12
    end
    object mem_R0150NIT: TStringField
      FieldName = 'NIT'
      Size = 11
    end
    object mem_R0150UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mem_R0150IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object mem_R0150COD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
    object mem_R0150SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object mem_R0150IE_ST: TStringField
      FieldName = 'IE_ST'
      Size = 30
    end
    object mem_R0150IM: TStringField
      FieldName = 'IM'
      Size = 30
    end
    object mem_R0150END: TStringField
      FieldName = 'END'
      Size = 200
    end
    object mem_R0150NUM: TStringField
      FieldName = 'NUM'
    end
    object mem_R0150COMPL: TStringField
      FieldName = 'COMPL'
      Size = 200
    end
    object mem_R0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object mem_R0150CEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object mem_R0150CEP_CP: TStringField
      FieldName = 'CEP_CP'
      Size = 8
    end
    object mem_R0150FONE: TStringField
      FieldName = 'FONE'
    end
    object mem_R0150FAX: TStringField
      FieldName = 'FAX'
    end
  end
  object mem_R0200: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 160
    object mem_R0200COD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 60
    end
    object mem_R0200DESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 300
    end
    object mem_R0200COD_GEN: TStringField
      FieldName = 'COD_GEN'
      Size = 2
    end
    object mem_R0200COD_LST: TStringField
      FieldName = 'COD_LST'
      Size = 4
    end
  end
  object mem_R0400: TRxMemoryData
    FieldDefs = <>
    Left = 76
    Top = 16
    object mem_R0400COD_NAT: TStringField
      FieldName = 'COD_NAT'
      Size = 10
    end
    object mem_R0400DESCR_NAT: TStringField
      FieldName = 'DESCR_NAT'
      Size = 200
    end
  end
  object Tb_GuiaST: TRxMemoryData
    FieldDefs = <
      item
        Name = 'COD_OR'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'VL_OR'
        DataType = ftFloat
      end
      item
        Name = 'DT_VCTO'
        DataType = ftDateTime
      end
      item
        Name = 'COD_REC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUM_PROC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IND_PROC'
        DataType = ftInteger
      end
      item
        Name = 'PROC'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TXT_COMP'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'MES_REF'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end>
    AfterInsert = Tb_GuiaSTAfterInsert
    AfterEdit = Tb_GuiaSTAfterEdit
    BeforePost = Tb_GuiaSTBeforePost
    AfterPost = Tb_GuiaSTAfterPost
    AfterCancel = Tb_GuiaSTAfterCancel
    AfterDelete = Tb_GuiaSTAfterDelete
    Left = 176
    Top = 99
    object Tb_GuiaSTCOD_OR: TStringField
      DisplayLabel = 'C'#243'd.Obriga'#231#227'o'
      FieldName = 'COD_OR'
      Size = 4
    end
    object Tb_GuiaSTVL_OR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VL_OR'
    end
    object Tb_GuiaSTDT_VCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'DT_VCTO'
    end
    object Tb_GuiaSTCOD_REC: TStringField
      DisplayLabel = 'C'#243'd. da Receita'
      FieldName = 'COD_REC'
      Size = 100
    end
    object Tb_GuiaSTIND_PROC: TIntegerField
      FieldName = 'IND_PROC'
    end
    object Tb_GuiaSTPROC: TStringField
      FieldName = 'PROC'
      Size = 300
    end
    object Tb_GuiaSTTXT_COMP: TStringField
      FieldName = 'TXT_COMP'
      Size = 300
    end
    object Tb_GuiaSTMES_REF: TStringField
      FieldName = 'MES_REF'
      Size = 6
    end
    object Tb_GuiaSTNUM_PROC: TStringField
      FieldName = 'NUM_PROC'
      Size = 15
    end
    object Tb_GuiaSTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Tb_GuiaSTANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
  end
  object Src_GuiaST: TDataSource
    DataSet = Tb_GuiaST
    Left = 344
    Top = 75
  end
  object Tb_AjusE115: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TABELA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALORAJUST'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGOAJUST'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'INDICE'
        DataType = ftInteger
      end
      item
        Name = 'COMPL_DESCR'
        DataType = ftString
        Size = 200
      end>
    AfterInsert = Tb_AjusE115AfterInsert
    AfterEdit = Tb_AjusE115AfterEdit
    BeforePost = Tb_AjusE115BeforePost
    AfterPost = Tb_AjusE115AfterPost
    AfterCancel = Tb_AjusE115AfterCancel
    AfterDelete = Tb_AjusE115AfterDelete
    Left = 328
    Top = 11
    object Tb_AjusE115TABELA: TStringField
      FieldName = 'TABELA'
      Size = 4
    end
    object Tb_AjusE115DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Tb_AjusE115VALORAJUST: TFloatField
      DisplayLabel = 'Valor do Ajuste'
      FieldName = 'VALORAJUST'
    end
    object Tb_AjusE115TIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Tb_AjusE115CODIGOAJUST: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGOAJUST'
      Size = 3000
    end
    object Tb_AjusE115INDICE: TIntegerField
      FieldName = 'INDICE'
    end
    object Tb_AjusE115COMPL_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o Complementar'
      FieldName = 'COMPL_DESCR'
      Size = 200
    end
  end
  object src_ajusE115: TDataSource
    DataSet = Tb_AjusE115
    Left = 352
    Top = 11
  end
  object Tb_AjusE111: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TABELA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALORAJUST'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGOAJUST'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'INDICE'
        DataType = ftInteger
      end
      item
        Name = 'COMPL_DESCR'
        DataType = ftString
        Size = 200
      end>
    AfterInsert = Tb_AjusE111AfterInsert
    AfterEdit = Tb_AjusE111AfterEdit
    BeforePost = Tb_AjusE111BeforePost
    AfterPost = Tb_AjusE111AfterPost
    AfterCancel = Tb_AjusE111AfterCancel
    AfterDelete = Tb_AjusE111AfterDelete
    Left = 384
    Top = 19
    object Tb_AjusE111TABELA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TABELA'
      Size = 4
    end
    object Tb_AjusE111DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object Tb_AjusE111VALORAJUST: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALORAJUST'
    end
    object Tb_AjusE111TIPO: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'TIPO'
      Size = 1
    end
    object Tb_AjusE111CODIGOAJUST: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGOAJUST'
      Size = 3000
    end
    object Tb_AjusE111INDICE: TIntegerField
      FieldName = 'INDICE'
    end
    object Tb_AjusE111COMPL_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o Complementar'
      FieldName = 'COMPL_DESCR'
      Size = 200
    end
  end
  object src_ajusE111: TDataSource
    DataSet = Tb_AjusE111
    Left = 408
    Top = 19
  end
  object mem_e200: TRxMemoryData
    FieldDefs = <>
    Left = 176
    Top = 256
    object mem_e200E200_UF: TStringField
      FieldName = 'E200_UF'
      Size = 2
    end
    object mem_e200E200_DT_INI: TDateField
      FieldName = 'E200_DT_INI'
    end
    object mem_e200E200_DT_FIN: TDateField
      FieldName = 'E200_DT_FIN'
    end
  end
  object mem_e210: TRxMemoryData
    FieldDefs = <>
    Left = 248
    Top = 256
    object mem_e210E210_IND_MOV_ST: TStringField
      FieldName = 'E210_IND_MOV_ST'
      Size = 1
    end
    object mem_e210E210_VL_SLD_CRED_ANT_ST: TFloatField
      FieldName = 'E210_VL_SLD_CRED_ANT_ST'
    end
    object mem_e210E210_VL_DEVOL_ST: TFloatField
      FieldName = 'E210_VL_DEVOL_ST'
    end
    object mem_e210E210_VL_RESSARC_ST: TFloatField
      FieldName = 'E210_VL_RESSARC_ST'
    end
    object mem_e210E210_VL_OUT_CRED_ST: TFloatField
      FieldName = 'E210_VL_OUT_CRED_ST'
    end
    object mem_e210E210_VL_AJ_CREDITOS_ST: TFloatField
      FieldName = 'E210_VL_AJ_CREDITOS_ST'
    end
    object mem_e210E210_VL_RETENAO_ST: TFloatField
      FieldName = 'E210_VL_RETEN'#199'AO_ST'
    end
    object mem_e210E210_VL_OUT_DEB_ST: TFloatField
      FieldName = 'E210_VL_OUT_DEB_ST'
    end
    object mem_e210E210_VL_AJ_DEBITOS_ST: TFloatField
      FieldName = 'E210_VL_AJ_DEBITOS_ST'
    end
    object mem_e210E210_VL_SLD_DEV_ANT_ST: TFloatField
      FieldName = 'E210_VL_SLD_DEV_ANT_ST'
    end
    object mem_e210E210_VL_DEDUCOES_ST: TFloatField
      FieldName = 'E210_VL_DEDUCOES_ST'
    end
    object mem_e210E210_VL_ICMS_RECOL_ST: TFloatField
      FieldName = 'E210_VL_ICMS_RECOL_ST'
    end
    object mem_e210E210_VL_SLD_CRED_ST_TRAN: TFloatField
      FieldName = 'E210_VL_SLD_CRED_ST_TRAN'
    end
    object mem_e210E210_DEB_ESP_ST: TFloatField
      FieldName = 'E210_DEB_ESP_ST'
    end
    object mem_e210E210_UF: TStringField
      FieldName = 'E210_UF'
      Size = 2
    end
  end
  object mem_R0205: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 200
    object mem_R0205COD_ITEM_ANT: TStringField
      FieldName = 'COD_ITEM_ANT'
    end
    object mem_R0205DESCR_ANT_ITEM: TStringField
      FieldName = 'DESCR_ANT_ITEM'
      Size = 100
    end
    object mem_R0205DT_INI_ANT: TDateField
      FieldName = 'DT_INI_ANT'
    end
    object mem_R0205DT_FIN_ANT: TDateField
      FieldName = 'DT_FIN_ANT'
    end
  end
  object mem_R0180: TRxMemoryData
    FieldDefs = <>
    Left = 36
    Top = 128
    object mem_r180IND_REL: TIntegerField
      FieldName = 'IND_REL'
    end
    object mem_r180DT_INI_REL: TDateField
      FieldName = 'DT_INI_REL'
    end
    object mem_r180DT_FIN_REL: TDateField
      FieldName = 'DT_FIN_REL'
    end
  end
  object Mem_R0210: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 224
    object Mem_R0210UNID_ITEM: TStringField
      FieldName = 'UNID_ITEM'
      Size = 10
    end
    object Mem_R0210COD_ITEM_COMP: TStringField
      FieldName = 'COD_ITEM_COMP'
    end
    object Mem_R0210QTD_COMP: TFloatField
      FieldName = 'QTD_COMP'
    end
    object Mem_R0210UNID_COMP: TStringField
      FieldName = 'UNID_COMP'
    end
    object Mem_R0210PERDA_COMP: TFloatField
      FieldName = 'PERDA_COMP'
    end
    object Mem_R0210DT_INI_COMP: TDateField
      FieldName = 'DT_INI_COMP'
    end
    object Mem_R0210DT_FIN_COMP: TDateField
      FieldName = 'DT_FIN_COMP'
    end
  end
  object Mem_R0220: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 248
    object Mem_R0220UNID_INV: TStringField
      FieldName = 'UNID_INV'
      Size = 10
    end
    object Mem_R0220UNID_CONV: TStringField
      FieldName = 'UNID_CONV'
      Size = 10
    end
    object Mem_R0220FAT_CONV: TFloatField
      FieldName = 'FAT_CONV'
    end
  end
  object Mem_R0450: TRxMemoryData
    FieldDefs = <>
    Left = 75
    Top = 41
    object Mem_R0450COD_INF_OBS: TStringField
      FieldName = 'COD_INF_OBS'
    end
    object Mem_R0450TXT: TStringField
      FieldName = 'TXT'
      Size = 65536
    end
  end
  object Mem_R0460: TRxMemoryData
    FieldDefs = <>
    AfterInsert = Tb_GuiaSTAfterInsert
    AfterEdit = Tb_GuiaSTAfterEdit
    BeforePost = Tb_GuiaSTBeforePost
    AfterPost = Tb_GuiaSTAfterPost
    AfterCancel = Tb_GuiaSTAfterCancel
    AfterDelete = Tb_GuiaSTAfterDelete
    Left = 72
    Top = 179
    object Mem_R0460COD_DA: TStringField
      FieldName = 'COD_DA'
      Size = 50
    end
    object Mem_R0460NUM_DA: TStringField
      FieldName = 'NUM_DA'
      Size = 50
    end
    object Mem_R0460VL_DA: TFloatField
      FieldName = 'VL_DA'
    end
    object Mem_R0460DT_INI: TDateField
      FieldName = 'DT_INI'
    end
    object Mem_R0460DT_FIN: TDateField
      FieldName = 'DT_FIN'
    end
    object Mem_R0460DT_VCTO: TDateField
      FieldName = 'DT_VCTO'
    end
    object Mem_R0460DT_PGTO: TDateField
      FieldName = 'DT_PGTO'
    end
  end
  object Mem_R0465: TRxMemoryData
    FieldDefs = <>
    AfterInsert = Tb_GuiaSTAfterInsert
    AfterEdit = Tb_GuiaSTAfterEdit
    BeforePost = Tb_GuiaSTBeforePost
    AfterPost = Tb_GuiaSTAfterPost
    AfterCancel = Tb_GuiaSTAfterCancel
    AfterDelete = Tb_GuiaSTAfterDelete
    Left = 72
    Top = 219
    object Mem_R0465IND_OPER: TIntegerField
      FieldName = 'IND_OPER'
    end
    object Mem_R0465IND_EMIT: TIntegerField
      FieldName = 'IND_EMIT'
    end
    object Mem_R0465CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object Mem_R0465CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object Mem_R0465UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Mem_R0465IE: TStringField
      FieldName = 'IE'
      Size = 40
    end
    object Mem_R0465COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Size = 7
    end
    object Mem_R0465IM: TStringField
      FieldName = 'IM'
      Size = 50
    end
    object Mem_R0465COD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 2
    end
    object Mem_R0465SER: TStringField
      FieldName = 'SER'
      Size = 10
    end
    object Mem_R0465SUB: TStringField
      FieldName = 'SUB'
      Size = 5
    end
    object Mem_R0465NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object Mem_R0465DT_DOC: TDateField
      FieldName = 'DT_DOC'
    end
    object Mem_R0465VL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Mem_R0465VL_ISSQN: TFloatField
      FieldName = 'VL_ISSQN'
    end
    object Mem_R0465VL_RT: TFloatField
      FieldName = 'VL_RT'
    end
    object Mem_R0465VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Mem_R0465VL_ST: TFloatField
      FieldName = 'VL_ST'
    end
    object Mem_R0465VL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
  end
  object Mem_R0455: TRxMemoryData
    FieldDefs = <>
    AfterInsert = Tb_GuiaSTAfterInsert
    AfterEdit = Tb_GuiaSTAfterEdit
    BeforePost = Tb_GuiaSTBeforePost
    AfterPost = Tb_GuiaSTAfterPost
    AfterCancel = Tb_GuiaSTAfterCancel
    AfterDelete = Tb_GuiaSTAfterDelete
    Left = 72
    Top = 131
    object Mem_R0455NORMA: TStringField
      FieldName = 'NORMA'
      Size = 65536
    end
  end
  object Mem_R0470: TRxMemoryData
    FieldDefs = <>
    AfterInsert = Tb_GuiaSTAfterInsert
    AfterEdit = Tb_GuiaSTAfterEdit
    BeforePost = Tb_GuiaSTBeforePost
    AfterPost = Tb_GuiaSTAfterPost
    AfterCancel = Tb_GuiaSTAfterCancel
    AfterDelete = Tb_GuiaSTAfterDelete
    Left = 72
    Top = 251
    object Mem_R0470COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object Mem_R0470ECF_FAB: TStringField
      FieldName = 'ECF_FAB'
      Size = 30
    end
    object Mem_R0470ECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object Mem_R0470CRO: TIntegerField
      FieldName = 'CRO'
    end
    object Mem_R0470CRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object Mem_R0470NUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object Mem_R0470DT_DOC: TDateField
      FieldName = 'DT_DOC'
    end
    object Mem_R0470VL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Mem_R0470VL_ISSQN: TFloatField
      FieldName = 'VL_ISSQN'
    end
    object Mem_R0470VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
  end
  object mem_e360: TRxMemoryData
    FieldDefs = <>
    Left = 128
    Top = 139
    object mem_e360VALDEBIMP01: TFloatField
      FieldName = 'VALDEBIMP01'
    end
    object mem_e360VALOUTDEB02: TFloatField
      FieldName = 'VALOUTDEB02'
    end
    object mem_e360VALESTCRED03: TFloatField
      FieldName = 'VALESTCRED03'
    end
    object mem_e360VALDEB04: TFloatField
      FieldName = 'VALDEB04'
    end
    object mem_e360VALCRED05: TFloatField
      FieldName = 'VALCRED05'
    end
    object mem_e360VALOUTCRED06: TFloatField
      FieldName = 'VALOUTCRED06'
    end
    object mem_e360VALESTDEB07: TFloatField
      FieldName = 'VALESTDEB07'
    end
    object mem_e360VALCRED08: TFloatField
      FieldName = 'VALCRED08'
    end
    object mem_e360VALCRED_ANT09: TFloatField
      FieldName = 'VALCRED_ANT09'
    end
    object mem_e360VALTOTCRED10: TFloatField
      FieldName = 'VALTOTCRED10'
    end
    object mem_e360VALCREDTRANSP11: TFloatField
      FieldName = 'VALCREDTRANSP11'
    end
    object mem_e360VALTOTDEV12: TFloatField
      FieldName = 'VALTOTDEV12'
    end
    object mem_e360VALDEDUC13: TFloatField
      FieldName = 'VALDEDUC13'
    end
    object mem_e360VALICMSREC14: TFloatField
      FieldName = 'VALICMSREC14'
    end
    object mem_e360VALCREDICMSST15: TFloatField
      FieldName = 'VALCREDICMSST15'
    end
    object mem_e360VALICMSST_DEST16: TFloatField
      FieldName = 'VALICMSST_DEST16'
    end
    object mem_e360VALDIFICMS17: TFloatField
      FieldName = 'VALDIFICMS17'
    end
    object mem_e360VALICMSIMP18: TFloatField
      FieldName = 'VALICMSIMP18'
    end
    object mem_e360VALOUTICMS19: TFloatField
      FieldName = 'VALOUTICMS19'
    end
    object mem_e360VALICMSRECOLHER20: TFloatField
      FieldName = 'VALICMSRECOLHER20'
    end
    object mem_e360VALICMSST_OUTEST99: TFloatField
      FieldName = 'VALICMSST_OUTEST99'
    end
  end
  object mem_e310: TRxMemoryData
    FieldDefs = <>
    Left = 128
    Top = 171
    object mem_e310CFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object mem_e310VL_CONT: TFloatField
      FieldName = 'VL_CONT'
    end
    object mem_e310VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object mem_e310VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object mem_e310VL_ST: TFloatField
      FieldName = 'VL_ST'
    end
    object mem_e310VL_COMPL: TFloatField
      FieldName = 'VL_COMPL'
    end
    object mem_e310VL_ISNT_ICMS: TFloatField
      FieldName = 'VL_ISNT_ICMS'
    end
    object mem_e310VL_OUT_ICMS: TFloatField
      FieldName = 'VL_OUT_ICMS'
    end
  end
end
