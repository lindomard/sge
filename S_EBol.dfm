object Frm_EBol: TFrm_EBol
  Left = 204
  Top = 116
  Width = 1212
  Height = 626
  Caption = ']'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1204
    Height = 595
    ActivePage = tsMod02Peguena
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Emiss'#227'o'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 201
        Align = alClient
        DataSource = Src_dup
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CRDTEMIS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRNUMERO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESD'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRNOSNUM'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALOR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESCF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTDESCF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRJURD'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODCLI'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODVEN'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomcli'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codagced'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nndig'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numdoc'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aceite'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'especie'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'moeda'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dignn'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'agendig'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'locpag'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codbco'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDUP'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datven'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jurdia'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDNOSNUM'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODDIG'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODBAR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRACEITE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRESPECIE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombco'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'razao_ced'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codcar'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 201
        Width = 1196
        Height = 329
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 106
          Height = 13
          Caption = 'N'#250'mero Inicial.............'
        end
        object Label2: TLabel
          Left = 232
          Top = 7
          Width = 98
          Height = 13
          Caption = 'N'#250'mero Final............'
        end
        object Label3: TLabel
          Left = 16
          Top = 43
          Width = 103
          Height = 13
          Caption = 'Data inicial.................'
        end
        object Label4: TLabel
          Left = 233
          Top = 44
          Width = 96
          Height = 13
          Caption = 'Data Final................'
        end
        object Label5: TLabel
          Left = 16
          Top = 63
          Width = 103
          Height = 13
          Caption = 'Banco........................'
        end
        object Label6: TLabel
          Left = 16
          Top = 24
          Width = 107
          Height = 13
          Caption = 'Parcelas......................'
        end
        object Label7: TLabel
          Left = 153
          Top = 24
          Width = 137
          Height = 13
          Caption = '[em branco emite todas]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dupemi: TLabel
          Left = 1
          Top = 277
          Width = 1194
          Height = 13
          Align = alBottom
          Alignment = taCenter
          AutoSize = False
          Caption = 'dupemi'
          Visible = False
        end
        object Label8: TLabel
          Left = 16
          Top = 140
          Width = 142
          Height = 13
          Caption = 'N'#250'mero Boleto........................'
          Visible = False
        end
        object Label9: TLabel
          Left = 201
          Top = 141
          Width = 73
          Height = 13
          Caption = 'Nosso N'#250'mero:'
        end
        object NUMI: TEdit
          Left = 120
          Top = 4
          Width = 80
          Height = 19
          Hint = 'Digite o N'#250'mero Inicial'#13#10'do Boleto a Ser Emitido'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = NUMIKeyPress
        end
        object NUMF: TEdit
          Left = 323
          Top = 4
          Width = 80
          Height = 19
          Hint = 'Digite o N'#250'mero Final'#13#10'do Boleto a Ser Emitido'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = NUMFExit
          OnKeyPress = NUMIKeyPress
        end
        object MDT1: TMaskEdit
          Left = 120
          Top = 40
          Width = 80
          Height = 19
          Hint = 'Digite a Data Inicial'#13#10'a Ser Emitida'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 324
          Top = 40
          Width = 80
          Height = 19
          Hint = 'Digite a Data de Emiss'#227'o '#13#10'M'#225'xima para Impress'#227'o'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CODBCO: TEdit
          Left = 120
          Top = 58
          Width = 80
          Height = 19
          Hint = 
            'Digite o C'#243'digo do Banco'#13#10'Este C'#243'digo '#233' o Codigo '#13#10'que '#233' Cadastr' +
            'ado no Sistema.'#13#10'Digite o Nome para CONSULTAR'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object NOMBCO: TEdit
          Left = 199
          Top = 58
          Width = 292
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object CB_TPBOL: TCheckBox
          Left = 18
          Top = 96
          Width = 177
          Height = 17
          Hint = 'Se Marcado a Emiss'#227'o'#13#10'sera de boleto pr'#233'-impresso'
          Caption = 'Boleta Pr'#233'-impressa'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = CB_TPBOLClick
        end
        object CB_TPEMI: TCheckBox
          Left = 224
          Top = 96
          Width = 202
          Height = 17
          Hint = 'se marcado emite tambem'#13#10'as que ja foram emitidas'
          Caption = 'Emitir tambem as ja emitidas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object PARC: TEdit
          Left = 120
          Top = 22
          Width = 25
          Height = 19
          Hint = 'Digite a Parcela'#13#10'a Ser Emitida'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 290
          Width = 1194
          Height = 38
          Align = alBottom
          Caption = 'Progresso da Montagem do Relatorio:'
          TabOrder = 16
          Visible = False
          object Gauge1: TGauge
            Left = 2
            Top = 15
            Width = 1190
            Height = 21
            Align = alClient
            Progress = 0
          end
        end
        object cb_modelo: TCheckBox
          Left = 16
          Top = 119
          Width = 290
          Height = 17
          Hint = 
            'v'#225'lido para a impress'#227'o a laser'#13#10'se marcado o boleto sera emitid' +
            'o'#13#10'em uma so folha, caso contrario '#13#10'ser'#227'o emitidos 2 boletas em' +
            ' cada'#13#10'folha(tamanho reduzido)'
          Caption = 'Imprimir modelo grande 1 por p'#225'gina'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object NUMBOL: TEdit
          Left = 118
          Top = 139
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          Visible = False
          OnExit = NUMBOLExit
        end
        object NOSNUM: TEdit
          Left = 277
          Top = 138
          Width = 133
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object DIGNOSNUM: TEdit
          Left = 412
          Top = 138
          Width = 21
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object CB_GRAVNOSNUM: TCheckBox
          Left = 223
          Top = 112
          Width = 202
          Height = 17
          Hint = 
            'Se marcado sera gravado o '#13#10'nosso n'#250'mero.  Fica sendo '#13#10'Obrigat'#243 +
            'rio a digita'#231#227'o do '#13#10'n'#250'mero do boleto'
          Caption = 'Gravar Nosso N'#250'mero'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object gb_instrucoes: TGroupBox
          Left = 1
          Top = 185
          Width = 1194
          Height = 92
          Align = alBottom
          Caption = '&Instru'#231#245'es Boleto(Valido Somente p/Impressora a Laser):'
          TabOrder = 15
          object lbl_qtdvias: TLabel
            Left = 730
            Top = 47
            Width = 93
            Height = 13
            Caption = 'Quantidade de Vias'
          end
          object INST01: TEdit
            Left = 6
            Top = 16
            Width = 521
            Height = 19
            Hint = 
              'Digite aqui a instru'#231#227'o que deseja'#13#10'que seja impresso no campo d' +
              'e '#13#10'oberva'#231#245'es do boleto banc'#225'rio'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = INST01Exit
            OnKeyPress = INST01KeyPress
          end
          object INST02: TEdit
            Left = 6
            Top = 34
            Width = 521
            Height = 19
            Hint = 
              'Digite aqui a instru'#231#227'o que deseja'#13#10'que seja impresso no campo d' +
              'e '#13#10'oberva'#231#245'es do boleto banc'#225'rio'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = INST02Exit
            OnKeyPress = INST02KeyPress
          end
          object INST03: TEdit
            Left = 6
            Top = 52
            Width = 521
            Height = 19
            Hint = 
              'Digite aqui a instru'#231#227'o que deseja'#13#10'que seja impresso no campo d' +
              'e '#13#10'oberva'#231#245'es do boleto banc'#225'rio'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnExit = INST03Exit
            OnKeyPress = INST03KeyPress
          end
          object INST04: TEdit
            Left = 6
            Top = 70
            Width = 521
            Height = 19
            Hint = 
              'Digite aqui a instru'#231#227'o que deseja'#13#10'que seja impresso no campo d' +
              'e '#13#10'oberva'#231#245'es do boleto banc'#225'rio'
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnExit = INST04Exit
            OnKeyPress = INST04KeyPress
          end
          object CB_SUBST: TCheckBox
            Left = 536
            Top = 15
            Width = 158
            Height = 17
            Caption = 'Substituir se Reemiss'#227'o'
            TabOrder = 4
          end
          object edt_qtdvias: TSpinEdit
            Left = 729
            Top = 65
            Width = 121
            Height = 19
            Ctl3D = False
            MaxValue = 0
            MinValue = 0
            ParentCtl3D = False
            TabOrder = 5
            Value = 1
          end
        end
        object cb_subsNosNum: TCheckBox
          Left = 485
          Top = 98
          Width = 265
          Height = 17
          Hint = 
            'Se marcado substitui o nosso n'#250'mero'#13#10'caso o mesmo ja tenha sido ' +
            'gerado'
          Caption = 'Substituir Nosso N'#250'mero Caso ja Tenha Gerado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object CODDIG: TEdit
          Left = 435
          Top = 120
          Width = 287
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
        end
        object CODBAR: TEdit
          Left = 435
          Top = 138
          Width = 287
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 18
        end
        object MDTVCTO: TMaskEdit
          Left = 516
          Top = 56
          Width = 80
          Height = 19
          Hint = 'Digite a Data de Emiss'#227'o '#13#10'M'#225'xima para Impress'#227'o'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          Text = '  /  /    '
          OnExit = MDTVCTOExit
        end
        object VALOR: TEdit
          Left = 614
          Top = 58
          Width = 81
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnExit = VALORExit
        end
        object cb_boleto: TCheckBox
          Left = 407
          Top = 5
          Width = 202
          Height = 17
          Hint = 
            'Se marcado sera gravado o '#13#10'nosso n'#250'mero.  Fica sendo '#13#10'Obrigat'#243 +
            'rio a digita'#231#227'o do '#13#10'n'#250'mero do boleto'
          Caption = 'Somente Forma de Pagamento Boleto.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
        end
        object CB_JURDIA: TCheckBox
          Left = 407
          Top = 23
          Width = 266
          Height = 17
          Hint = 
            'Se marcado nao sera impresso'#13#10'os dados de juros por dia de atras' +
            'o'
          Caption = 'Nao Imprimir Linha Juros por dia de atraso'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
        end
        object Memo1: TMemo
          Left = 660
          Top = 175
          Width = 710
          Height = 38
          Lines.Strings = (
            'Memo1')
          TabOrder = 23
          Visible = False
        end
        object GroupBox1: TGroupBox
          Left = 894
          Top = 1
          Width = 301
          Height = 184
          Align = alRight
          Caption = 'Bancos Disponveis:'
          TabOrder = 24
          object Memo2: TMemo
            Left = 2
            Top = 15
            Width = 297
            Height = 167
            Align = alClient
            Lines.Strings = (
              '001 banco do brasil'
              '104 Caixa Economica'
              '341 itau'
              '399 hsbc'
              '756 sicob'
              '237 bradesco'
              '353 santander'
              '008 santander meridional'
              '033 Banco do Estado S'#227'o Paulo S.A. Banespa (santander)'
              '422 Safra')
            ReadOnly = True
            ScrollBars = ssHorizontal
            TabOrder = 0
            WordWrap = False
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 530
        Width = 1196
        Height = 37
        Align = alBottom
        TabOrder = 2
        object bbImprimir: TBitBtn
          Left = 158
          Top = 8
          Width = 150
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = bbImprimirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object bbPadrao: TBitBtn
          Left = 462
          Top = 8
          Width = 150
          Height = 25
          Caption = '&Salvar Padr'#227'o'
          TabOrder = 2
          OnClick = bbPadraoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333000003333333333F777773FF333333008877700
            33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
            703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
            77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
            07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
            780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
            8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
            3333333773FFFF77333333333000003333333333377777333333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 617
          Top = 7
          Width = 150
          Height = 25
          Caption = '&Sair do programa'
          TabOrder = 3
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
        object bbAtualizar: TBitBtn
          Left = 7
          Top = 8
          Width = 150
          Height = 25
          Caption = '&Atualizar'
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
        object bbSalvar: TBitBtn
          Left = 310
          Top = 9
          Width = 150
          Height = 25
          Caption = 'Salvar Boleto em JPG'
          TabOrder = 4
          OnClick = bbSalvarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
      object gb_anexos: TGroupBox
        Left = 895
        Top = 0
        Width = 301
        Height = 201
        Align = alRight
        Caption = 'Outros Anexos:'
        TabOrder = 3
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 297
          Height = 41
          Align = alTop
          TabOrder = 0
          object bbInserirAnexo: TBitBtn
            Left = 7
            Top = 8
            Width = 121
            Height = 25
            Caption = 'Adicionar Anexo'
            TabOrder = 0
            OnClick = bbInserirAnexoClick
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
          object bbRemoverAnexo: TBitBtn
            Left = 168
            Top = 5
            Width = 121
            Height = 25
            Caption = 'Remover Anexo'
            TabOrder = 1
            OnClick = bbRemoverAnexoClick
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
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 56
          Width = 297
          Height = 143
          Align = alClient
          DataSource = Src_CaddarOutAnexos
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CROA_ID'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CROA_ENDERECO'
              Title.Alignment = taCenter
              Width = 192
              Visible = True
            end>
        end
      end
    end
    object TsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RL_BOLETAS: TRLReport
        Left = 25
        Top = 0
        Width = 794
        Height = 1123
        DataSource = src_bol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 5.000000000000000000
        Margins.BottomMargin = 2.000000000000000000
        ShowProgress = False
        object detrod01: TRLBand
          Left = 38
          Top = 305
          Width = 718
          Height = 78
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel27: TRLLabel
            Left = 436
            Top = 5
            Width = 99
            Height = 12
            Caption = 'Autentica'#231#227'o Mec'#226'nica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel28: TRLLabel
            Left = 581
            Top = 5
            Width = 116
            Height = 11
            Caption = 'Controle do Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw20: TRLDraw
            Left = 2
            Top = 55
            Width = 714
            Height = 1
            Color = clBlack
            ParentColor = False
            Pen.Style = psDot
            Transparent = False
          end
        end
        object detRod03: TRLBand
          Left = 38
          Top = 1017
          Width = 718
          Height = 77
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel29: TRLLabel
            Left = 587
            Top = 21
            Width = 99
            Height = 12
            Caption = 'Autentica'#231#227'o Mec'#226'nica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 581
            Top = 5
            Width = 120
            Height = 11
            Caption = 'FICHA DE COMPENSA'#199#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBBarcode1: TRLDBBarcode
            Left = 4
            Top = 9
            Width = 90
            Height = 60
            Borders.Width = 2
            CheckSumMethod = cmNone
            DataField = 'CRCODBAR'
            DataSource = src_bol
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
            Ratio = 3.000000000000000000
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 735
          Width = 718
          Height = 282
          object rlLogo02: TRLImage
            Left = 3
            Top = 4
            Width = 37
            Height = 20
            Stretch = True
          end
          object RLDBText26: TRLDBText
            Left = 42
            Top = 8
            Width = 125
            Height = 16
            AutoSize = False
            DataField = 'nombco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText27: TRLDBText
            Left = 169
            Top = 7
            Width = 36
            Height = 16
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw21: TRLDraw
            Left = 168
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw22: TRLDraw
            Left = 205
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw23: TRLDraw
            Left = 472
            Top = 28
            Width = 1
            Height = 194
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw24: TRLDraw
            Left = 1
            Top = 48
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw25: TRLDraw
            Left = 2
            Top = 71
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel31: TRLLabel
            Left = 2
            Top = 49
            Width = 52
            Height = 12
            Caption = 'Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText29: TRLDBText
            Left = 3
            Top = 61
            Width = 467
            Height = 10
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 500
            Top = 60
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw26: TRLDraw
            Left = 2
            Top = 95
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel33: TRLLabel
            Left = 3
            Top = 72
            Width = 87
            Height = 12
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw27: TRLDraw
            Left = 123
            Top = 72
            Width = 1
            Height = 50
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel34: TRLLabel
            Left = 126
            Top = 72
            Width = 77
            Height = 12
            Caption = 'N'#186' do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 8
            Top = 84
            Width = 62
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = Src_dup
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText32: TRLDBText
            Left = 126
            Top = 84
            Width = 78
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'numdoc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw28: TRLDraw
            Left = 213
            Top = 72
            Width = 1
            Height = 49
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw29: TRLDraw
            Left = 278
            Top = 72
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw30: TRLDraw
            Left = 313
            Top = 72
            Width = 1
            Height = 32
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel35: TRLLabel
            Left = 215
            Top = 72
            Width = 59
            Height = 12
            Caption = 'Esp'#233'cie Doc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText33: TRLDBText
            Left = 216
            Top = 84
            Width = 58
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 280
            Top = 72
            Width = 29
            Height = 12
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText34: TRLDBText
            Left = 282
            Top = 84
            Width = 26
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'aceite'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 317
            Top = 72
            Width = 87
            Height = 12
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 402
            Top = 84
            Width = 66
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 475
            Top = 72
            Width = 66
            Height = 12
            Caption = 'Nosso N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 500
            Top = 84
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'nndig_semcart'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw31: TRLDraw
            Left = 2
            Top = 120
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel39: TRLLabel
            Left = 3
            Top = 96
            Width = 103
            Height = 12
            Caption = 'N'#186' da Conta / Respons.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 126
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw32: TRLDraw
            Left = 167
            Top = 97
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText37: TRLDBText
            Left = 126
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'codcar'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel41: TRLLabel
            Left = 171
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText38: TRLDBText
            Left = 170
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'moeda'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel42: TRLLabel
            Left = 216
            Top = 96
            Width = 50
            Height = 12
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel43: TRLLabel
            Left = 309
            Top = 103
            Width = 10
            Height = 11
            Alignment = taCenter
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel44: TRLLabel
            Left = 323
            Top = 96
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw33: TRLDraw
            Left = 313
            Top = 114
            Width = 1
            Height = 7
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw34: TRLDraw
            Left = 473
            Top = 140
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel45: TRLLabel
            Left = 475
            Top = 96
            Width = 102
            Height = 12
            Caption = '(=) Valor do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText39: TRLDBText
            Left = 500
            Top = 108
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 476
            Top = 121
            Width = 55
            Height = 12
            Caption = '(-) Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw35: TRLDraw
            Left = 473
            Top = 160
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel47: TRLLabel
            Left = 476
            Top = 141
            Width = 86
            Height = 12
            Caption = '(-) Outras dedu'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw36: TRLDraw
            Left = 473
            Top = 181
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel48: TRLLabel
            Left = 476
            Top = 161
            Width = 88
            Height = 12
            Caption = '(+) Mora/Multa/Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw37: TRLDraw
            Left = 473
            Top = 202
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel49: TRLLabel
            Left = 475
            Top = 183
            Width = 97
            Height = 12
            Caption = '(+) Outros Acr'#233'scimos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel50: TRLLabel
            Left = 475
            Top = 203
            Width = 76
            Height = 12
            Caption = '(=) Valor Cobrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw38: TRLDraw
            Left = 2
            Top = 222
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel51: TRLLabel
            Left = 3
            Top = 121
            Width = 53
            Height = 11
            Caption = 'Instru'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText40: TRLDBText
            Left = 3
            Top = 132
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'descfin'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBT_Jurdia2: TRLDBText
            Left = 3
            Top = 141
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'jurdia'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText42: TRLDBText
            Left = 3
            Top = 151
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'outras_instruc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText43: TRLDBText
            Left = 3
            Top = 163
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST01'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText44: TRLDBText
            Left = 3
            Top = 174
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST02'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText45: TRLDBText
            Left = 3
            Top = 185
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST03'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText46: TRLDBText
            Left = 3
            Top = 198
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST04'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw39: TRLDraw
            Left = 2
            Top = 26
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel55: TRLLabel
            Left = 1
            Top = 27
            Width = 91
            Height = 12
            Caption = 'Local de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel56: TRLLabel
            Left = 474
            Top = 27
            Width = 55
            Height = 12
            Caption = 'Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText50: TRLDBText
            Left = 500
            Top = 36
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText77: TRLDBText
            Left = 3
            Top = 209
            Width = 462
            Height = 11
            AutoSize = False
            DataField = 'multa_mora'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText17: TRLDBText
            Left = 209
            Top = 7
            Width = 504
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo2: TRLDBMemo
            Left = 96
            Top = 29
            Width = 369
            Height = 19
            AutoSize = False
            DataField = 'locpag'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel52: TRLLabel
            Left = 1
            Top = 223
            Width = 44
            Height = 11
            Caption = 'Pagador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText47: TRLDBText
            Left = 51
            Top = 224
            Width = 325
            Height = 9
            AutoSize = False
            DataField = 'nomcli'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel53: TRLLabel
            Left = 387
            Top = 225
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ/CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText48: TRLDBText
            Left = 434
            Top = 226
            Width = 150
            Height = 8
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText49: TRLDBText
            Left = 433
            Top = 237
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'bairro'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText80: TRLDBText
            Left = 544
            Top = 237
            Width = 168
            Height = 8
            AutoSize = False
            DataField = 'cidade'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel54: TRLLabel
            Left = 386
            Top = 237
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText82: TRLDBText
            Left = 49
            Top = 237
            Width = 280
            Height = 8
            AutoSize = False
            DataField = 'endereco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel93: TRLLabel
            Left = 1
            Top = 237
            Width = 49
            Height = 11
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel96: TRLLabel
            Left = 586
            Top = 250
            Width = 78
            Height = 11
            Caption = 'C'#243'digo de Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText85: TRLDBText
            Left = 475
            Top = 49
            Width = 70
            Height = 12
            DataField = 'codagced)_label'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 386
            Top = 250
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText90: TRLDBText
            Left = 432
            Top = 250
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'cep'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText97: TRLDBText
            Left = 4
            Top = 249
            Width = 113
            Height = 8
            AutoSize = False
            DataField = 'sacador_avalista'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 19
          Width = 718
          Height = 286
          object rlLogo03: TRLImage
            Left = 3
            Top = 4
            Width = 37
            Height = 20
            Stretch = True
          end
          object RLDBText51: TRLDBText
            Left = 42
            Top = 8
            Width = 125
            Height = 16
            AutoSize = False
            DataField = 'nombco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText52: TRLDBText
            Left = 169
            Top = 7
            Width = 36
            Height = 16
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText53: TRLDBText
            Left = 209
            Top = 6
            Width = 504
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw41: TRLDraw
            Left = 168
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw42: TRLDraw
            Left = 205
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw43: TRLDraw
            Left = 472
            Top = 28
            Width = 1
            Height = 194
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw44: TRLDraw
            Left = 1
            Top = 48
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw45: TRLDraw
            Left = 2
            Top = 71
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel59: TRLLabel
            Left = 2
            Top = 49
            Width = 52
            Height = 12
            Caption = 'Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText54: TRLDBText
            Left = 3
            Top = 61
            Width = 467
            Height = 10
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText55: TRLDBText
            Left = 500
            Top = 60
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw46: TRLDraw
            Left = 2
            Top = 95
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel61: TRLLabel
            Left = 3
            Top = 72
            Width = 87
            Height = 12
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw47: TRLDraw
            Left = 123
            Top = 72
            Width = 1
            Height = 50
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel62: TRLLabel
            Left = 126
            Top = 72
            Width = 77
            Height = 12
            Caption = 'N'#186' do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText56: TRLDBText
            Left = 8
            Top = 84
            Width = 62
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText57: TRLDBText
            Left = 126
            Top = 84
            Width = 78
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'numdoc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw48: TRLDraw
            Left = 213
            Top = 72
            Width = 1
            Height = 49
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw49: TRLDraw
            Left = 278
            Top = 72
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw50: TRLDraw
            Left = 313
            Top = 72
            Width = 1
            Height = 32
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel63: TRLLabel
            Left = 215
            Top = 72
            Width = 59
            Height = 12
            Caption = 'Esp'#233'cie Doc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText58: TRLDBText
            Left = 216
            Top = 84
            Width = 58
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel64: TRLLabel
            Left = 280
            Top = 72
            Width = 29
            Height = 12
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText59: TRLDBText
            Left = 282
            Top = 84
            Width = 26
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'aceite'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel65: TRLLabel
            Left = 317
            Top = 72
            Width = 104
            Height = 12
            Caption = 'Data do Processamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText60: TRLDBText
            Left = 402
            Top = 84
            Width = 66
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel66: TRLLabel
            Left = 475
            Top = 72
            Width = 66
            Height = 12
            Caption = 'Nosso N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText61: TRLDBText
            Left = 500
            Top = 84
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'nndig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw51: TRLDraw
            Left = 2
            Top = 120
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel67: TRLLabel
            Left = 3
            Top = 96
            Width = 103
            Height = 12
            Caption = 'N'#186' da Conta / Respons.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel68: TRLLabel
            Left = 126
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw52: TRLDraw
            Left = 167
            Top = 97
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText62: TRLDBText
            Left = 126
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'codcar'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel69: TRLLabel
            Left = 171
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText63: TRLDBText
            Left = 170
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'moeda'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel70: TRLLabel
            Left = 216
            Top = 96
            Width = 50
            Height = 12
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel71: TRLLabel
            Left = 309
            Top = 103
            Width = 10
            Height = 11
            Alignment = taCenter
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel72: TRLLabel
            Left = 323
            Top = 96
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw53: TRLDraw
            Left = 313
            Top = 114
            Width = 1
            Height = 7
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw54: TRLDraw
            Left = 473
            Top = 140
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel73: TRLLabel
            Left = 475
            Top = 96
            Width = 102
            Height = 12
            Caption = '(=) Valor do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText64: TRLDBText
            Left = 500
            Top = 108
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel74: TRLLabel
            Left = 476
            Top = 121
            Width = 55
            Height = 12
            Caption = '(-) Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw55: TRLDraw
            Left = 473
            Top = 160
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel75: TRLLabel
            Left = 476
            Top = 141
            Width = 86
            Height = 12
            Caption = '(-) Outras dedu'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw56: TRLDraw
            Left = 473
            Top = 181
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel76: TRLLabel
            Left = 476
            Top = 161
            Width = 88
            Height = 12
            Caption = '(+) Mora/Multa/Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw57: TRLDraw
            Left = 473
            Top = 202
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel77: TRLLabel
            Left = 475
            Top = 183
            Width = 97
            Height = 12
            Caption = '(+) Outros Acr'#233'scimos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel78: TRLLabel
            Left = 475
            Top = 203
            Width = 76
            Height = 12
            Caption = '(=) Valor Cobrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw58: TRLDraw
            Left = 2
            Top = 222
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel79: TRLLabel
            Left = 3
            Top = 121
            Width = 53
            Height = 11
            Caption = 'Instru'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText65: TRLDBText
            Left = 3
            Top = 134
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'descfin'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBT_Jurdia0: TRLDBText
            Left = 3
            Top = 143
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'jurdia'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText67: TRLDBText
            Left = 3
            Top = 154
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'outras_instruc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText68: TRLDBText
            Left = 3
            Top = 165
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST01'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText69: TRLDBText
            Left = 3
            Top = 175
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST02'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText70: TRLDBText
            Left = 3
            Top = 186
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST03'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText71: TRLDBText
            Left = 3
            Top = 198
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST04'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel80: TRLLabel
            Left = 1
            Top = 223
            Width = 44
            Height = 11
            Caption = 'Pagador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText72: TRLDBText
            Left = 51
            Top = 225
            Width = 325
            Height = 10
            AutoSize = False
            DataField = 'nomcli'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText73: TRLDBText
            Left = 49
            Top = 237
            Width = 328
            Height = 8
            AutoSize = False
            DataField = 'endereco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText74: TRLDBText
            Left = 544
            Top = 237
            Width = 168
            Height = 8
            AutoSize = False
            DataField = 'cidade'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel82: TRLLabel
            Left = 586
            Top = 250
            Width = 78
            Height = 11
            Caption = 'C'#243'digo de Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw59: TRLDraw
            Left = 2
            Top = 26
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel83: TRLLabel
            Left = 1
            Top = 27
            Width = 91
            Height = 12
            Caption = 'Local de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 96
            Top = 29
            Width = 369
            Height = 19
            AutoSize = False
            DataField = 'locpag'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel84: TRLLabel
            Left = 474
            Top = 27
            Width = 55
            Height = 12
            Caption = 'Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlDtvctoB01: TRLDBText
            Left = 500
            Top = 36
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText75: TRLDBText
            Left = 3
            Top = 210
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'multa_mora'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel85: TRLLabel
            Left = 387
            Top = 225
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ/CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rldb_cnpj: TRLDBText
            Left = 434
            Top = 226
            Width = 150
            Height = 8
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel86: TRLLabel
            Left = 1
            Top = 237
            Width = 49
            Height = 11
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel87: TRLLabel
            Left = 386
            Top = 237
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText41: TRLDBText
            Left = 433
            Top = 237
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'bairro'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText83: TRLDBText
            Left = 475
            Top = 49
            Width = 70
            Height = 12
            DataField = 'codagced)_label'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 386
            Top = 250
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText89: TRLDBText
            Left = 432
            Top = 250
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'cep'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText99: TRLDBText
            Left = 4
            Top = 249
            Width = 113
            Height = 8
            AutoSize = False
            DataField = 'sacador_avalista'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 663
          Width = 718
          Height = 72
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel57: TRLLabel
            Left = 436
            Top = 5
            Width = 99
            Height = 12
            Caption = 'Autentica'#231#227'o Mec'#226'nica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 581
            Top = 5
            Width = 91
            Height = 11
            Caption = 'Recibo do Pagador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw40: TRLDraw
            Left = 2
            Top = 48
            Width = 714
            Height = 1
            Color = clBlack
            ParentColor = False
            Pen.Style = psDot
            Transparent = False
          end
        end
        object det01: TRLBand
          Left = 38
          Top = 383
          Width = 718
          Height = 280
          object rlLogo01: TRLImage
            Left = 3
            Top = 4
            Width = 37
            Height = 20
            Stretch = True
          end
          object RLDBText1: TRLDBText
            Left = 42
            Top = 8
            Width = 125
            Height = 16
            AutoSize = False
            DataField = 'nombco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 169
            Top = 7
            Width = 36
            Height = 16
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 168
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw3: TRLDraw
            Left = 205
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw4: TRLDraw
            Left = 472
            Top = 28
            Width = 1
            Height = 194
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw5: TRLDraw
            Left = 1
            Top = 48
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw6: TRLDraw
            Left = 2
            Top = 71
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel3: TRLLabel
            Left = 2
            Top = 49
            Width = 52
            Height = 12
            Caption = 'Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 3
            Top = 61
            Width = 467
            Height = 10
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 500
            Top = 60
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw7: TRLDraw
            Left = 2
            Top = 95
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel5: TRLLabel
            Left = 3
            Top = 72
            Width = 87
            Height = 12
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw8: TRLDraw
            Left = 123
            Top = 72
            Width = 1
            Height = 50
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel7: TRLLabel
            Left = 126
            Top = 72
            Width = 77
            Height = 12
            Caption = 'N'#186' do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 8
            Top = 84
            Width = 62
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 126
            Top = 84
            Width = 78
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'numdoc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw9: TRLDraw
            Left = 213
            Top = 72
            Width = 1
            Height = 49
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw10: TRLDraw
            Left = 278
            Top = 72
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw11: TRLDraw
            Left = 313
            Top = 72
            Width = 1
            Height = 32
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel6: TRLLabel
            Left = 215
            Top = 72
            Width = 59
            Height = 12
            Caption = 'Esp'#233'cie Doc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 216
            Top = 84
            Width = 58
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 280
            Top = 72
            Width = 29
            Height = 12
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 282
            Top = 84
            Width = 26
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'aceite'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 317
            Top = 72
            Width = 104
            Height = 12
            Caption = 'Data do Processamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 402
            Top = 84
            Width = 66
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 475
            Top = 72
            Width = 66
            Height = 12
            Caption = 'Nosso N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 500
            Top = 84
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'nndig_semcart'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw12: TRLDraw
            Left = 2
            Top = 120
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 3
            Top = 96
            Width = 103
            Height = 12
            Caption = 'N'#186' da Conta / Respons.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 126
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw13: TRLDraw
            Left = 167
            Top = 97
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText13: TRLDBText
            Left = 126
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'codcar'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 171
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 170
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'moeda'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 216
            Top = 96
            Width = 50
            Height = 12
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 309
            Top = 103
            Width = 10
            Height = 11
            Alignment = taCenter
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 323
            Top = 96
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw14: TRLDraw
            Left = 313
            Top = 114
            Width = 1
            Height = 7
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw15: TRLDraw
            Left = 473
            Top = 140
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel17: TRLLabel
            Left = 475
            Top = 96
            Width = 102
            Height = 12
            Caption = '(=) Valor do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 500
            Top = 108
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 476
            Top = 121
            Width = 55
            Height = 12
            Caption = '(-) Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw16: TRLDraw
            Left = 473
            Top = 160
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel19: TRLLabel
            Left = 476
            Top = 141
            Width = 86
            Height = 12
            Caption = '(-) Outras dedu'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw17: TRLDraw
            Left = 473
            Top = 181
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel20: TRLLabel
            Left = 476
            Top = 161
            Width = 88
            Height = 12
            Caption = '(+) Mora/Multa/Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw18: TRLDraw
            Left = 473
            Top = 202
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel21: TRLLabel
            Left = 475
            Top = 183
            Width = 97
            Height = 12
            Caption = '(+) Outros Acr'#233'scimos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 475
            Top = 203
            Width = 76
            Height = 12
            Caption = '(=) Valor Cobrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw19: TRLDraw
            Left = 2
            Top = 222
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel23: TRLLabel
            Left = 3
            Top = 121
            Width = 53
            Height = 11
            Caption = 'Instru'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 3
            Top = 131
            Width = 462
            Height = 9
            AutoSize = False
            DataField = 'descfin'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBT_Jurdia: TRLDBText
            Left = 3
            Top = 142
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'jurdia'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText18: TRLDBText
            Left = 3
            Top = 152
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'outras_instruc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 3
            Top = 163
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST01'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText20: TRLDBText
            Left = 3
            Top = 175
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST02'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText21: TRLDBText
            Left = 3
            Top = 187
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST03'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText22: TRLDBText
            Left = 3
            Top = 199
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST04'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 2
            Top = 26
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel1: TRLLabel
            Left = 1
            Top = 27
            Width = 91
            Height = 12
            Caption = 'Local de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 474
            Top = 27
            Width = 55
            Height = 12
            Caption = 'Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 500
            Top = 36
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText76: TRLDBText
            Left = 3
            Top = 210
            Width = 462
            Height = 9
            AutoSize = False
            DataField = 'multa_mora'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 209
            Top = 7
            Width = 504
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 96
            Top = 29
            Width = 369
            Height = 19
            AutoSize = False
            DataField = 'locpag'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 1
            Top = 223
            Width = 44
            Height = 11
            Caption = 'Pagador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText23: TRLDBText
            Left = 49
            Top = 224
            Width = 325
            Height = 9
            AutoSize = False
            DataField = 'nomcli'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 387
            Top = 225
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ/CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 434
            Top = 226
            Width = 150
            Height = 8
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText25: TRLDBText
            Left = 433
            Top = 237
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'bairro'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText66: TRLDBText
            Left = 544
            Top = 237
            Width = 168
            Height = 8
            AutoSize = False
            DataField = 'cidade'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 386
            Top = 237
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText79: TRLDBText
            Left = 49
            Top = 237
            Width = 326
            Height = 8
            AutoSize = False
            DataField = 'endereco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel89: TRLLabel
            Left = 1
            Top = 237
            Width = 49
            Height = 11
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel91: TRLLabel
            Left = 386
            Top = 250
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel92: TRLLabel
            Left = 586
            Top = 250
            Width = 78
            Height = 11
            Caption = 'C'#243'digo de Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText84: TRLDBText
            Left = 475
            Top = 49
            Width = 70
            Height = 12
            DataField = 'codagced)_label'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText88: TRLDBText
            Left = 432
            Top = 250
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'cep'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText98: TRLDBText
            Left = 4
            Top = 249
            Width = 113
            Height = 8
            AutoSize = False
            DataField = 'sacador_avalista'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsMod02Peguena: TTabSheet
      Caption = 'Modelo 02 Peguena'
      ImageIndex = 2
      object rlModelo02_pegueno: TRLReport
        Left = -7
        Top = 59
        Width = 794
        Height = 1123
        DataSource = src_bol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 0.000000000000000000
        Margins.BottomMargin = 2.000000000000000000
        ShowProgress = False
        object RLBand4: TRLBand
          Left = 38
          Top = 158
          Width = 718
          Height = 36
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel97: TRLLabel
            Left = 508
            Top = 5
            Width = 99
            Height = 12
            Caption = 'Autentica'#231#227'o Mec'#226'nica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw60: TRLDraw
            Left = 2
            Top = 22
            Width = 714
            Height = 1
            Color = clBlack
            ParentColor = False
            Pen.Style = psDot
            Transparent = False
          end
        end
        object RLBand8: TRLBand
          Left = 38
          Top = 462
          Width = 718
          Height = 92
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel161: TRLLabel
            Left = 436
            Top = 5
            Width = 194
            Height = 12
            Caption = 'Autentica'#231#227'o Mec'#226'nica / Ficha Compensa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBBarcode2: TRLDBBarcode
            Left = 4
            Top = 9
            Width = 90
            Height = 60
            Borders.Width = 2
            CheckSumMethod = cmNone
            DataField = 'CRCODBAR'
            DataSource = src_bol
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
            Ratio = 3.000000000000000000
          end
          object RLDraw61: TRLDraw
            Left = 2
            Top = 79
            Width = 714
            Height = 1
            Color = clBlack
            ParentColor = False
            Pen.Style = psDot
            Transparent = False
          end
        end
        object RLBand9: TRLBand
          Left = 38
          Top = 194
          Width = 718
          Height = 268
          object RLImage3: TRLImage
            Left = 3
            Top = 4
            Width = 37
            Height = 20
            Stretch = True
          end
          object RLDBText141: TRLDBText
            Left = 46
            Top = 8
            Width = 125
            Height = 16
            AutoSize = False
            DataField = 'nombco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText142: TRLDBText
            Left = 179
            Top = 8
            Width = 39
            Height = 16
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw100: TRLDraw
            Left = 176
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw101: TRLDraw
            Left = 225
            Top = 1
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw102: TRLDraw
            Left = 472
            Top = 28
            Width = 1
            Height = 194
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw103: TRLDraw
            Left = 1
            Top = 48
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw104: TRLDraw
            Left = 2
            Top = 71
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel163: TRLLabel
            Left = 2
            Top = 49
            Width = 52
            Height = 12
            Caption = 'Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText143: TRLDBText
            Left = 3
            Top = 61
            Width = 302
            Height = 10
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText144: TRLDBText
            Left = 500
            Top = 60
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw105: TRLDraw
            Left = 2
            Top = 95
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel165: TRLLabel
            Left = 3
            Top = 72
            Width = 87
            Height = 12
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw106: TRLDraw
            Left = 123
            Top = 72
            Width = 1
            Height = 50
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel166: TRLLabel
            Left = 126
            Top = 72
            Width = 77
            Height = 12
            Caption = 'N'#186' do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText145: TRLDBText
            Left = 4
            Top = 84
            Width = 116
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText146: TRLDBText
            Left = 126
            Top = 84
            Width = 78
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'numdoc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw107: TRLDraw
            Left = 213
            Top = 72
            Width = 1
            Height = 49
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw108: TRLDraw
            Left = 278
            Top = 72
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw109: TRLDraw
            Left = 313
            Top = 72
            Width = 1
            Height = 48
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel167: TRLLabel
            Left = 215
            Top = 72
            Width = 59
            Height = 12
            Caption = 'Esp'#233'cie Doc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText147: TRLDBText
            Left = 216
            Top = 84
            Width = 58
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel168: TRLLabel
            Left = 280
            Top = 72
            Width = 29
            Height = 12
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText148: TRLDBText
            Left = 282
            Top = 84
            Width = 26
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'aceite'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel169: TRLLabel
            Left = 317
            Top = 72
            Width = 104
            Height = 12
            Caption = 'Data do Processamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText149: TRLDBText
            Left = 402
            Top = 84
            Width = 66
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel170: TRLLabel
            Left = 475
            Top = 72
            Width = 66
            Height = 12
            Caption = 'Nosso N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText150: TRLDBText
            Left = 500
            Top = 84
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'nndig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw110: TRLDraw
            Left = 2
            Top = 120
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel171: TRLLabel
            Left = 3
            Top = 96
            Width = 62
            Height = 12
            Caption = 'Uso do Banco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel172: TRLLabel
            Left = 126
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw111: TRLDraw
            Left = 167
            Top = 96
            Width = 1
            Height = 23
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText151: TRLDBText
            Left = 126
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'codcar'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel173: TRLLabel
            Left = 171
            Top = 96
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText152: TRLDBText
            Left = 170
            Top = 110
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'moeda'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel174: TRLLabel
            Left = 216
            Top = 96
            Width = 50
            Height = 12
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel176: TRLLabel
            Left = 323
            Top = 96
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw113: TRLDraw
            Left = 473
            Top = 140
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel177: TRLLabel
            Left = 475
            Top = 96
            Width = 102
            Height = 12
            Caption = '(=) Valor do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText153: TRLDBText
            Left = 500
            Top = 108
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel178: TRLLabel
            Left = 476
            Top = 121
            Width = 110
            Height = 12
            Caption = '(-) Desconto/Abatimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw114: TRLDraw
            Left = 473
            Top = 160
            Width = 244
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw115: TRLDraw
            Left = 473
            Top = 181
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel180: TRLLabel
            Left = 476
            Top = 161
            Width = 62
            Height = 12
            Caption = '(+) Mora/Multa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw116: TRLDraw
            Left = 473
            Top = 202
            Width = 245
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel182: TRLLabel
            Left = 475
            Top = 203
            Width = 76
            Height = 12
            Caption = '(=) Valor Cobrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw117: TRLDraw
            Left = 2
            Top = 222
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel183: TRLLabel
            Left = 3
            Top = 121
            Width = 53
            Height = 11
            Caption = 'Instru'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText154: TRLDBText
            Left = 3
            Top = 131
            Width = 462
            Height = 9
            AutoSize = False
            DataField = 'descfin'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText155: TRLDBText
            Left = 3
            Top = 142
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'jurdia'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText156: TRLDBText
            Left = 3
            Top = 152
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'outras_instruc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText157: TRLDBText
            Left = 3
            Top = 163
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST01'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText158: TRLDBText
            Left = 3
            Top = 175
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST02'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText159: TRLDBText
            Left = 3
            Top = 187
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST03'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText160: TRLDBText
            Left = 3
            Top = 199
            Width = 462
            Height = 8
            AutoSize = False
            DataField = 'CRINST04'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw118: TRLDraw
            Left = 2
            Top = 26
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel184: TRLLabel
            Left = 1
            Top = 27
            Width = 91
            Height = 12
            Caption = 'Local de Pagamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel185: TRLLabel
            Left = 474
            Top = 27
            Width = 55
            Height = 12
            Caption = 'Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText161: TRLDBText
            Left = 500
            Top = 36
            Width = 210
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText162: TRLDBText
            Left = 3
            Top = 210
            Width = 462
            Height = 9
            AutoSize = False
            DataField = 'multa_mora'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText163: TRLDBText
            Left = 229
            Top = 8
            Width = 486
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBMemo6: TRLDBMemo
            Left = 96
            Top = 29
            Width = 369
            Height = 19
            AutoSize = False
            DataField = 'locpag'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel186: TRLLabel
            Left = 1
            Top = 223
            Width = 44
            Height = 11
            Caption = 'Pagador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText164: TRLDBText
            Left = 51
            Top = 225
            Width = 325
            Height = 8
            AutoSize = False
            DataField = 'nomcli'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel187: TRLLabel
            Left = 387
            Top = 225
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ/CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText165: TRLDBText
            Left = 434
            Top = 226
            Width = 150
            Height = 8
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText166: TRLDBText
            Left = 433
            Top = 237
            Width = 107
            Height = 8
            AutoSize = False
            DataField = 'bairro'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText167: TRLDBText
            Left = 544
            Top = 237
            Width = 168
            Height = 8
            AutoSize = False
            DataField = 'cidade'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel188: TRLLabel
            Left = 386
            Top = 237
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText168: TRLDBText
            Left = 336
            Top = 237
            Width = 43
            Height = 8
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'cep'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText169: TRLDBText
            Left = 49
            Top = 237
            Width = 280
            Height = 8
            AutoSize = False
            DataField = 'endereco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel189: TRLLabel
            Left = 1
            Top = 237
            Width = 49
            Height = 11
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel191: TRLLabel
            Left = 386
            Top = 250
            Width = 44
            Height = 10
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel192: TRLLabel
            Left = 586
            Top = 250
            Width = 78
            Height = 11
            Caption = 'C'#243'digo de Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel98: TRLLabel
            Left = 372
            Top = 49
            Width = 50
            Height = 12
            Caption = 'CNPJ/CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText121: TRLDBText
            Left = 372
            Top = 61
            Width = 97
            Height = 10
            AutoSize = False
            DataField = 'cnpj_emitente'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText87: TRLDBText
            Left = 475
            Top = 48
            Width = 70
            Height = 12
            DataField = 'codagced)_label'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText96: TRLDBText
            Left = 0
            Top = 249
            Width = 113
            Height = 8
            AutoSize = False
            DataField = 'sacador_avalista'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand7: TRLBand
          Left = 38
          Top = 0
          Width = 718
          Height = 158
          BeforePrint = RLBand7BeforePrint
          object RLImage2: TRLImage
            Left = 3
            Top = 4
            Width = 37
            Height = 28
            Stretch = True
          end
          object RLDBText112: TRLDBText
            Left = 42
            Top = 19
            Width = 130
            Height = 16
            AutoSize = False
            DataField = 'nombco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText113: TRLDBText
            Left = 184
            Top = 19
            Width = 36
            Height = 16
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText114: TRLDBText
            Left = 229
            Top = 19
            Width = 486
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDraw80: TRLDraw
            Left = 176
            Top = 1
            Width = 1
            Height = 34
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw81: TRLDraw
            Left = 226
            Top = 1
            Width = 1
            Height = 35
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw83: TRLDraw
            Left = 1
            Top = 36
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw84: TRLDraw
            Left = 2
            Top = 62
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel131: TRLLabel
            Left = 2
            Top = 37
            Width = 55
            Height = 12
            Caption = 'Beneficiado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText115: TRLDBText
            Left = 3
            Top = 50
            Width = 250
            Height = 10
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel132: TRLLabel
            Left = 606
            Top = 38
            Width = 52
            Height = 12
            Caption = 'Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText116: TRLDBText
            Left = 608
            Top = 49
            Width = 80
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw85: TRLDraw
            Left = 2
            Top = 89
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel133: TRLLabel
            Left = 3
            Top = 63
            Width = 168
            Height = 12
            Caption = 'Endere'#231'o Beneficiado/Sacador Avalista'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw86: TRLDraw
            Left = 105
            Top = 89
            Width = 1
            Height = 61
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object rldb_ender_emitente: TRLDBText
            Left = 4
            Top = 76
            Width = 712
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'ender_emitente'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw87: TRLDraw
            Left = 283
            Top = 91
            Width = 1
            Height = 25
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw90: TRLDraw
            Left = 2
            Top = 117
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel139: TRLLabel
            Left = 3
            Top = 90
            Width = 100
            Height = 12
            AutoSize = False
            Caption = 'Nosso N'#250'mero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel140: TRLLabel
            Left = 105
            Top = 90
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw91: TRLDraw
            Left = 222
            Top = 90
            Width = 1
            Height = 60
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText123: TRLDBText
            Left = 105
            Top = 105
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'codcar'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel141: TRLLabel
            Left = 232
            Top = 91
            Width = 36
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText124: TRLDBText
            Left = 231
            Top = 106
            Width = 36
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'moeda'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel142: TRLLabel
            Left = 299
            Top = 91
            Width = 50
            Height = 12
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel144: TRLLabel
            Left = 454
            Top = 90
            Width = 24
            Height = 12
            Alignment = taCenter
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw92: TRLDraw
            Left = 447
            Top = 89
            Width = 1
            Height = 29
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel193: TRLLabel
            Left = 573
            Top = 3
            Width = 126
            Height = 16
            Caption = 'Recibo do Pagador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel155: TRLLabel
            Left = 263
            Top = 37
            Width = 50
            Height = 12
            Caption = 'CNPJ/CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldb_cnpj_emitente: TRLDBText
            Left = 264
            Top = 50
            Width = 107
            Height = 10
            AutoSize = False
            DataField = 'cnpj_emitente'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel156: TRLLabel
            Left = 377
            Top = 38
            Width = 77
            Height = 12
            Caption = 'Sacador/Avalista:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw98: TRLDraw
            Left = 374
            Top = 35
            Width = 1
            Height = 26
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw119: TRLDraw
            Left = 602
            Top = 36
            Width = 1
            Height = 26
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText117: TRLDBText
            Left = 3
            Top = 105
            Width = 100
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'nndig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText118: TRLDBText
            Left = 581
            Top = 106
            Width = 134
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw88: TRLDraw
            Left = 2
            Top = 149
            Width = 716
            Height = 1
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel135: TRLLabel
            Left = 4
            Top = 120
            Width = 100
            Height = 12
            AutoSize = False
            Caption = 'Data do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText119: TRLDBText
            Left = 3
            Top = 135
            Width = 100
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel136: TRLLabel
            Left = 108
            Top = 120
            Width = 98
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'N'#250'mero do Document:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBT_numdoc: TRLDBText
            Left = 108
            Top = 134
            Width = 98
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'numdoc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel137: TRLLabel
            Left = 231
            Top = 120
            Width = 100
            Height = 12
            Alignment = taCenter
            Caption = 'Esp'#233'cie do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw89: TRLDraw
            Left = 354
            Top = 118
            Width = 1
            Height = 32
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDBText120: TRLDBText
            Left = 231
            Top = 135
            Width = 100
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel138: TRLLabel
            Left = 374
            Top = 120
            Width = 30
            Height = 12
            Alignment = taCenter
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldb_aceite: TRLDBText
            Left = 359
            Top = 135
            Width = 60
            Height = 8
            Alignment = taCenter
            AutoSize = False
            DataField = 'aceite'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw93: TRLDraw
            Left = 424
            Top = 118
            Width = 1
            Height = 31
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel143: TRLLabel
            Left = 426
            Top = 119
            Width = 104
            Height = 12
            Alignment = taCenter
            Caption = 'Data de Processamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldb_CRDTEMIS: TRLDBText
            Left = 429
            Top = 134
            Width = 100
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRDTEMIS'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw120: TRLDraw
            Left = 577
            Top = 89
            Width = 1
            Height = 29
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLDraw121: TRLDraw
            Left = 537
            Top = 118
            Width = 1
            Height = 31
            Brush.Color = clBlack
            Color = clBlack
            ParentColor = False
            Transparent = False
          end
          object RLLabel145: TRLLabel
            Left = 547
            Top = 119
            Width = 88
            Height = 12
            Alignment = taCenter
            Caption = 'Valor do Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDB_CRVALOR: TRLDBText
            Left = 547
            Top = 135
            Width = 100
            Height = 9
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRVALOR'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText86: TRLDBText
            Left = 583
            Top = 91
            Width = 70
            Height = 12
            DataField = 'codagced)_label'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_modpeq_sacador: TRLLabel
            Left = 377
            Top = 52
            Width = 224
            Height = 10
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'tsConfiguracao'
      ImageIndex = 3
      object Label10: TLabel
        Left = 64
        Top = 40
        Width = 3
        Height = 13
      end
      object Label11: TLabel
        Left = 64
        Top = 51
        Width = 101
        Height = 13
        Caption = 'Sacador Avalista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cb_sacadomodpeq: TComboBox
        Left = 168
        Top = 48
        Width = 361
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'Nao Imprimir'
        OnClick = cb_sacadomodpeqClick
        Items.Strings = (
          'Nao Imprimir'
          'Imprimir Nome do Sacado'
          'Imprimir Nome do Emitente')
      end
      object cb_sacador_avalista: TCheckBox
        Left = 168
        Top = 80
        Width = 393
        Height = 17
        Caption = 'Anexar Cnpj ao Nome do Beneficiario'
        TabOrder = 1
        OnClick = cb_sacador_avalistaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Modelo 03 Carne'
      ImageIndex = 4
      object RLReport1: TRLReport
        Left = 24
        Top = 40
        Width = 794
        Height = 1123
        DataSource = src_bol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand5: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 266
          object RLlogo_carne1: TRLImage
            Left = 3
            Top = 4
            Width = 88
            Height = 28
            Stretch = True
          end
          object RLMemo_RECIBO: TRLMemo
            Left = 97
            Top = -261
            Width = 90
            Height = 30
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            Lines.Strings = (
              'RECIBO'
              'DO SACADO')
            ParentFont = False
          end
          object RLDraw62: TRLDraw
            Left = 200
            Top = 2
            Width = 1
            Height = 264
            Pen.Style = psDash
          end
          object RLlogo_carne2: TRLImage
            Left = 206
            Top = 4
            Width = 94
            Height = 28
            Stretch = True
          end
          object RLDraw63: TRLDraw
            Left = 306
            Top = 3
            Width = 1
            Height = 36
          end
          object RLDBText28: TRLDBText
            Left = 312
            Top = 4
            Width = 40
            Height = 28
            AutoSize = False
            DataField = 'codbco'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
            Text = '104-0'
          end
          object RLDraw64: TRLDraw
            Left = 359
            Top = 2
            Width = 1
            Height = 36
          end
          object RLDBText78: TRLDBText
            Left = 366
            Top = 10
            Width = 346
            Height = 16
            AutoSize = False
            DataField = 'coddig'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDraw65: TRLDraw
            Left = 1
            Top = 34
            Width = 188
            Height = 231
          end
          object RLDraw66: TRLDraw
            Left = 205
            Top = 27
            Width = 508
            Height = 210
          end
          object rldbtext_nomcli: TRLDBText
            Left = 7
            Top = 63
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'razao_ced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object rldbtext_cnpj: TRLDBText
            Left = 7
            Top = 74
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'cnpj_emitente'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDraw67: TRLDraw
            Left = 3
            Top = 60
            Width = 185
            Height = 1
          end
          object RLLabel88: TRLLabel
            Left = 5
            Top = 37
            Width = 48
            Height = 7
            Caption = 'Parcela/Plano'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw68: TRLDraw
            Left = 95
            Top = 35
            Width = 1
            Height = 26
          end
          object RLLabel90: TRLLabel
            Left = 96
            Top = 36
            Width = 41
            Height = 7
            Caption = 'Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText81: TRLDBText
            Left = 13
            Top = 44
            Width = 37
            Height = 16
            AutoSize = False
            DataField = 'crnumparc'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText91: TRLDBText
            Left = 101
            Top = 43
            Width = 76
            Height = 16
            AutoSize = False
            DataField = 'datven'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText92: TRLDBText
            Left = 5
            Top = 99
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'nomcli'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDBText93: TRLDBText
            Left = 4
            Top = 111
            Width = 180
            Height = 16
            AutoSize = False
            DataField = 'cnpj'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLDraw69: TRLDraw
            Left = 4
            Top = 90
            Width = 185
            Height = 1
          end
          object RLLabel95: TRLLabel
            Left = 6
            Top = 92
            Width = 27
            Height = 7
            Caption = 'Sacado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw70: TRLDraw
            Left = 3
            Top = 129
            Width = 185
            Height = 1
          end
          object RLLabel99: TRLLabel
            Left = 5
            Top = 131
            Width = 77
            Height = 7
            Caption = 'Ag'#234'ncia / C'#243'd Cedente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel100: TRLLabel
            Left = 158
            Top = 131
            Width = 29
            Height = 7
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText94: TRLDBText
            Left = 5
            Top = 141
            Width = 90
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'codagced'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw71: TRLDraw
            Left = 152
            Top = 129
            Width = 1
            Height = 26
          end
          object RLDBText95: TRLDBText
            Left = 159
            Top = 142
            Width = 26
            Height = 10
            Alignment = taCenter
            AutoSize = False
            DataField = 'especie'
            DataSource = src_bol
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw72: TRLDraw
            Left = 1
            Top = 154
            Width = 185
            Height = 1
          end
          object RLLabel101: TRLLabel
            Left = 5
            Top = 157
            Width = 77
            Height = 7
            Caption = 'Ag'#234'ncia / C'#243'd Cedente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Testar Codigo de Barras eLinha Digitavel'
      ImageIndex = 5
      object Label12: TLabel
        Left = 10
        Top = 39
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo:'
      end
      object Label13: TLabel
        Left = 10
        Top = 61
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo Empresa:'
      end
      object Label14: TLabel
        Left = 10
        Top = 82
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo do Banco:'
      end
      object Label15: TLabel
        Left = 10
        Top = 103
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero do Banco:'
      end
      object Label16: TLabel
        Left = 10
        Top = 124
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Codigo da Moeda:'
      end
      object Label17: TLabel
        Left = 192
        Top = 35
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero do Convenio:'
      end
      object Label18: TLabel
        Left = 191
        Top = 56
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo da Agencia:'
      end
      object Label19: TLabel
        Left = 191
        Top = 78
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo do Cedente:'
      end
      object Label20: TLabel
        Left = 374
        Top = 78
        Width = 19
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dig:'
      end
      object Label21: TLabel
        Left = 191
        Top = 99
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo da Carteira:'
      end
      object Label22: TLabel
        Left = 448
        Top = 35
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data de Emiss'#227'o:'
      end
      object Label23: TLabel
        Left = 448
        Top = 57
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data de Vencimento:'
      end
      object Label24: TLabel
        Left = 448
        Top = 77
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nosso Numero:'
      end
      object Label25: TLabel
        Left = 448
        Top = 99
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor:'
      end
      object Label26: TLabel
        Left = 754
        Top = 36
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Parcela:'
      end
      object Label27: TLabel
        Left = 753
        Top = 57
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtde Parcela:'
      end
      object Label28: TLabel
        Left = 47
        Top = 330
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Linha digitav'#233'l:'
      end
      object Label29: TLabel
        Left = 47
        Top = 355
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo de barras:'
      end
      object Label30: TLabel
        Left = 753
        Top = 78
        Width = 100
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero Duplicata:'
      end
      object edt_tipo: TSpinEdit
        Left = 114
        Top = 34
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 0
        Value = 0
      end
      object edt_codemp: TSpinEdit
        Left = 114
        Top = 55
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 1
        Value = 1
      end
      object edt_codbco: TSpinEdit
        Left = 114
        Top = 76
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 2
        Value = 756
      end
      object edt_numbco: TSpinEdit
        Left = 114
        Top = 97
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 3
        Value = 756
      end
      object edt_codmoe: TSpinEdit
        Left = 114
        Top = 118
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 4
        Value = 9
      end
      object edt_numcon: TEdit
        Left = 296
        Top = 32
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = '1162462'
      end
      object edt_codage: TEdit
        Left = 296
        Top = 53
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = '3351'
      end
      object edt_codced: TEdit
        Left = 296
        Top = 75
        Width = 74
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Text = '116246'
      end
      object edt_codced_dig: TEdit
        Left = 401
        Top = 75
        Width = 17
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        Text = '2'
      end
      object edt_codcar: TEdit
        Left = 296
        Top = 96
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Text = '1'
      end
      object edt_dtemis: TDateEdit
        Left = 553
        Top = 31
        Width = 120
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 10
        Text = '31/08/2025'
      end
      object edt_dtvcto: TDateEdit
        Left = 553
        Top = 51
        Width = 120
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 11
        Text = '31/08/2025'
      end
      object edt_nosnum: TSpinEdit
        Left = 553
        Top = 71
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 12
        Value = 1
      end
      object edt_valordup: TCurrencyEdit
        Left = 554
        Top = 92
        Width = 121
        Height = 21
        AutoSize = False
        Ctl3D = False
        DisplayFormat = ' ,0.00;- ,0.00'
        ParentCtl3D = False
        TabOrder = 13
        Value = 10.000000000000000000
      end
      object edt_parcela: TSpinEdit
        Left = 858
        Top = 30
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 14
        Value = 1
      end
      object edt_qtdparc: TSpinEdit
        Left = 858
        Top = 51
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 15
        Value = 1
      end
      object bbValidar: TBitBtn
        Left = 39
        Top = 280
        Width = 150
        Height = 25
        Caption = 'Validar'
        TabOrder = 16
        OnClick = bbValidarClick
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
      object edt_linha_digitavel: TEdit
        Left = 152
        Top = 327
        Width = 889
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
      end
      object edt_codbar: TEdit
        Left = 152
        Top = 352
        Width = 889
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
      end
      object edt_numdup: TSpinEdit
        Left = 858
        Top = 72
        Width = 65
        Height = 19
        Ctl3D = False
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        TabOrder = 19
        Value = 1
      end
      object GroupBox3: TGroupBox
        Left = 68
        Top = 152
        Width = 489
        Height = 105
        Caption = 'Linha Digitavel:'
        TabOrder = 20
        object Label31: TLabel
          Left = 6
          Top = 18
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Esperado:'
        end
        object Label32: TLabel
          Left = 6
          Top = 39
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Gerado:'
        end
        object Label33: TLabel
          Left = 5
          Top = 62
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Resultado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edt_linha_dig_esp: TEdit
          Left = 83
          Top = 14
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '75691335100111624620600000150011411900000001000'
        end
        object edt_linha_dig_gerado: TEdit
          Left = 83
          Top = 35
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '75691335100111624620600000150011411900000001000'
        end
        object edt_linha_dig_resultados: TEdit
          Left = 82
          Top = 58
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '75691335100111624620600000150011411900000001000'
        end
      end
      object GroupBox4: TGroupBox
        Left = 611
        Top = 152
        Width = 489
        Height = 105
        Caption = 'Comparar'
        TabOrder = 21
        object Label34: TLabel
          Left = 6
          Top = 18
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor 01:'
        end
        object Label35: TLabel
          Left = 6
          Top = 39
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor 02:'
        end
        object Label36: TLabel
          Left = 5
          Top = 62
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Resultado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edt_valor01: TEdit
          Left = 83
          Top = 14
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '75691335100111624620600000150011411900000001000'
        end
        object edt_valor02: TEdit
          Left = 83
          Top = 35
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '75691335100111624620600000150011411900000001000'
        end
        object edt_resultado: TEdit
          Left = 82
          Top = 58
          Width = 358
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '75691335100111624620600000150011411900000001000'
        end
        object bbComparar: TBitBtn
          Left = 150
          Top = 79
          Width = 150
          Height = 25
          Caption = 'Comparar'
          TabOrder = 3
          OnClick = bbCompararClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object Tb_Dup: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM' +
        ','
      '       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE,'
      
        '       CRVALOR,CRDESCF,CRDTDESCF,CRDESCD,CRJURD,CRNFACUM,CRCODCL' +
        'I,CRCODVEN,'
      
        '       CRINST01,CRINST02,CRINST03,CRINST04,CRTABPV,CRCODPV,CRMUL' +
        'TA,CRQTDDM,'
      '       CRCODFPGTO'
      'from caddar where CRCODEMP is null')
    UpdateObject = U_Dup
    Left = 400
    Top = 24
    object Tb_DupCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_DupCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_DupCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DupCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Tb_DupCRNOSNUM: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Tb_DupCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupCRDESCF: TFloatField
      DisplayLabel = 'Desc.Fin'
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupCRDTDESCF: TDateTimeField
      DisplayLabel = 'Dt.Desc.fin'
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Tb_DupCRJURD: TFloatField
      DisplayLabel = 'Juros por dia'
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
      DisplayFormat = '#,##0.00'
    end
    object Tb_DupCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Tb_DupCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Tb_Dupnomcli: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 120
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 120
      Calculated = True
    end
    object Tb_Dupendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 70
      Calculated = True
    end
    object Tb_Dupbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldKind = fkCalculated
      FieldName = 'bairro'
      Size = 50
      Calculated = True
    end
    object Tb_Dupcidade: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkCalculated
      FieldName = 'cidade'
      Size = 50
      Calculated = True
    end
    object Tb_Dupuf: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkCalculated
      FieldName = 'uf'
      Size = 2
      Calculated = True
    end
    object Tb_Dupcnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Size = 30
      Calculated = True
    end
    object Tb_Dupcep: TStringField
      DisplayLabel = 'Cep'
      FieldKind = fkCalculated
      FieldName = 'cep'
      Size = 9
      Calculated = True
    end
    object Tb_Dupcodagced: TStringField
      DisplayLabel = 'C'#243'd.Ag.'
      FieldKind = fkCalculated
      FieldName = 'codagced'
      Size = 30
      Calculated = True
    end
    object Tb_Dupnndig: TStringField
      DisplayLabel = 'Dig.Nos.Num'
      FieldKind = fkCalculated
      FieldName = 'nndig'
      Size = 30
      Calculated = True
    end
    object Tb_Dupnumdoc: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldKind = fkCalculated
      FieldName = 'numdoc'
      Size = 10
      Calculated = True
    end
    object Tb_Dupaceite: TStringField
      DisplayLabel = 'Aceite'
      FieldKind = fkCalculated
      FieldName = 'aceite'
      Size = 1
      Calculated = True
    end
    object Tb_Dupespecie: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldKind = fkCalculated
      FieldName = 'especie'
      Size = 2
      Calculated = True
    end
    object Tb_Dupmoeda: TStringField
      DisplayLabel = 'Moeda'
      FieldKind = fkCalculated
      FieldName = 'moeda'
      Size = 2
      Calculated = True
    end
    object Tb_Dupdignn: TStringField
      DisplayLabel = 'Dig.Nos.N'#250'm'
      FieldKind = fkCalculated
      FieldName = 'dignn'
      Size = 1
      Calculated = True
    end
    object Tb_Dupagendig: TStringField
      DisplayLabel = 'Agencia+D'
      FieldKind = fkCalculated
      FieldName = 'agendig'
      Size = 4
      Calculated = True
    end
    object Tb_Duplocpag: TStringField
      DisplayLabel = 'Loc.Pag.'
      FieldKind = fkCalculated
      FieldName = 'locpag'
      Size = 500
      Calculated = True
    end
    object Tb_Dupcodbco: TStringField
      DisplayLabel = 'C'#243'd.Bco'
      FieldKind = fkCalculated
      FieldName = 'codbco'
      Size = 5
      Calculated = True
    end
    object Tb_DupCRDUP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_Dupdatven: TStringField
      DisplayLabel = 'Dt.Ven'
      FieldKind = fkCalculated
      FieldName = 'datven'
      Size = 10
      Calculated = True
    end
    object Tb_Dupjurdia: TStringField
      DisplayLabel = 'Juros ao Dia'
      FieldKind = fkCalculated
      FieldName = 'jurdia'
      Size = 40
      Calculated = True
    end
    object Tb_DupCRDNOSNUM: TStringField
      DisplayLabel = 'D'#237'gito Nos.N'#250'mero'
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object Tb_DupCRCODDIG: TStringField
      DisplayLabel = 'Linha Digit'#225'vel'
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.CADDAR.CRCODDIG'
      Size = 30
    end
    object Tb_DupCRCODBAR: TStringField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODBAR'
      Size = 30
    end
    object Tb_DupCRACEITE: TStringField
      DisplayLabel = 'Aceite'
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.CADDAR.CRACEITE'
      Size = 1
    end
    object Tb_DupCRESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.CADDAR.CRESPECIE'
      Size = 2
    end
    object Tb_Dupnombco: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Tb_Duprazao_ced: TStringField
      DisplayLabel = 'Cedente'
      FieldKind = fkCalculated
      FieldName = 'razao_ced'
      Size = 40
      Calculated = True
    end
    object Tb_Dupcodcar: TStringField
      DisplayLabel = 'C'#243'd.Cart'
      FieldKind = fkCalculated
      FieldName = 'codcar'
      Size = 10
      Calculated = True
    end
    object Tb_DupCRINST01: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 01'
      FieldName = 'CRINST01'
      Origin = 'SG_ASSOC.CADDAR.CRINST01'
      Size = 60
    end
    object Tb_DupCRINST02: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 02'
      FieldName = 'CRINST02'
      Origin = 'SG_ASSOC.CADDAR.CRINST02'
      Size = 60
    end
    object Tb_DupCRINST03: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 03'
      FieldName = 'CRINST03'
      Origin = 'SG_ASSOC.CADDAR.CRINST03'
      Size = 60
    end
    object Tb_DupCRINST04: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 04'
      FieldName = 'CRINST04'
      Origin = 'SG_ASSOC.CADDAR.CRINST04'
      Size = 60
    end
    object Tb_DupCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_DupCRTABPV: TStringField
      FieldName = 'CRTABPV'
      Origin = 'SG_ASSOC.CADDAR.CRTABPV'
      Size = 2
    end
    object Tb_DupCRCODPV: TFloatField
      FieldName = 'CRCODPV'
      Origin = 'SG_ASSOC.CADDAR.CRCODPV'
    end
    object Tb_Dupdescfin: TStringField
      FieldKind = fkCalculated
      FieldName = 'descfin'
      Size = 100
      Calculated = True
    end
    object Tb_Dupoutras_instruc: TStringField
      FieldKind = fkCalculated
      FieldName = 'outras_instruc'
      Size = 100
      Calculated = True
    end
    object Tb_DupCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Tb_DupCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Tb_DupCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Tb_DupCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.CADDAR.CRQTDDM'
    end
    object Tb_Dupmulta_mora: TStringField
      FieldKind = fkCalculated
      FieldName = 'multa_mora'
      Size = 100
      Calculated = True
    end
    object Tb_DupCRCODFPGTO: TFloatField
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRCODFPGTO'
    end
    object Tb_Dupcnpj_emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj_emitente'
      Size = 18
      Calculated = True
    end
    object Tb_Dupender_emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'ender_emitente'
      Size = 200
      Calculated = True
    end
    object Tb_Dupcoddig: TStringField
      FieldKind = fkCalculated
      FieldName = 'coddig'
      Size = 100
      Calculated = True
    end
    object Tb_DupCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
    end
    object Tb_DupCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
    end
    object Tb_DupCRCOMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'CRCOMPETENCIA_DTINICIO'
    end
    object Tb_Dupnndig_semcarteira: TStringField
      FieldKind = fkCalculated
      FieldName = 'nndig_semcarteira'
      Size = 50
      Calculated = True
    end
    object Tb_DupCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
    end
    object Tb_Duptipodoc_emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipodoc_emitente'
      Size = 1
      Calculated = True
    end
    object Tb_DupCRID_NEW: TFloatField
      FieldName = 'CRID_NEW'
    end
    object Tb_Dupsacador_avalista: TStringField
      FieldKind = fkCalculated
      FieldName = 'sacador_avalista'
      Size = 60
      Calculated = True
    end
  end
  object Src_dup: TDataSource
    DataSet = Tb_Dup
    OnDataChange = Src_dupDataChange
    Left = 296
    Top = 24
  end
  object U_Dup: TUpdateSQL
    ModifySQL.Strings = (
      'update caddar'
      'set'
      '  CRNOSNUM = :CRNOSNUM'
      'where'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD')
    InsertSQL.Strings = (
      'insert into caddar'
      '  (CRNOSNUM)'
      'values'
      '  (:CRNOSNUM)')
    DeleteSQL.Strings = (
      'delete from caddar'
      'where'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD')
    Left = 344
    Top = 16
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'All (*.pdf)|*.pdf'
    Left = 600
    Top = 24
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 536
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 464
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 368
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 624
    Top = 24
  end
  object mem_bol: TRxMemoryData
    FieldDefs = <>
    Left = 512
    Top = 16
    object mem_bollocpag: TStringField
      FieldName = 'locpag'
      Size = 254
    end
    object mem_boldatven: TStringField
      FieldName = 'datven'
      Size = 30
    end
    object mem_bolrazao_ced: TStringField
      FieldName = 'razao_ced'
      Size = 120
    end
    object mem_bolcodagced: TStringField
      FieldName = 'codagced'
      Size = 40
    end
    object mem_bolCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
    end
    object mem_bolCRVALOR: TFloatField
      FieldName = 'CRVALOR'
    end
    object mem_bolnumdoc: TStringField
      FieldName = 'numdoc'
      Size = 30
    end
    object mem_bolespecie: TStringField
      FieldName = 'especie'
      Size = 5
    end
    object mem_bolaceite: TStringField
      FieldName = 'aceite'
      Size = 5
    end
    object mem_bolnndig: TStringField
      FieldName = 'nndig'
      Size = 80
    end
    object mem_bolcodcar: TStringField
      FieldName = 'codcar'
      Size = 10
    end
    object mem_bolmoeda: TStringField
      FieldName = 'moeda'
      Size = 5
    end
    object mem_boldescfin: TStringField
      FieldName = 'descfin'
      Size = 100
    end
    object mem_boljurdia: TStringField
      FieldName = 'jurdia'
      Size = 150
    end
    object mem_boloutras_instruc: TStringField
      FieldName = 'outras_instruc'
      Size = 150
    end
    object mem_bolCRINST01: TStringField
      FieldName = 'CRINST01'
      Size = 150
    end
    object mem_bolCRINST02: TStringField
      FieldName = 'CRINST02'
      Size = 150
    end
    object mem_bolCRINST03: TStringField
      FieldName = 'CRINST03'
      Size = 150
    end
    object mem_bolCRINST04: TStringField
      FieldName = 'CRINST04'
      Size = 150
    end
    object mem_bolmulta_mora: TStringField
      FieldName = 'multa_mora'
      Size = 150
    end
    object mem_bolnomcli: TStringField
      FieldName = 'nomcli'
      Size = 200
    end
    object mem_bolcnpj: TStringField
      FieldName = 'cnpj'
      Size = 30
    end
    object mem_bolendereco: TStringField
      FieldName = 'endereco'
      Size = 200
    end
    object mem_bolcep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object mem_bolbairro: TStringField
      FieldName = 'bairro'
      Size = 40
    end
    object mem_bolcidade: TStringField
      FieldName = 'cidade'
      Size = 200
    end
    object mem_bolnombco: TStringField
      FieldName = 'nombco'
      Size = 50
    end
    object mem_bolcodbco: TStringField
      FieldName = 'codbco'
      Size = 9
    end
    object mem_bolcoddig: TStringField
      FieldName = 'coddig'
      Size = 80
    end
    object mem_bolcnpj_emitente: TStringField
      FieldName = 'cnpj_emitente'
      Size = 30
    end
    object mem_bolender_emitente: TStringField
      FieldName = 'ender_emitente'
      Size = 254
    end
    object mem_bolCRCODBAR: TStringField
      FieldName = 'CRCODBAR'
      Size = 50
    end
    object mem_bolcodagced_label: TStringField
      FieldName = 'codagced)_label'
      Size = 100
    end
    object mem_bolnndig_semcart: TStringField
      FieldName = 'nndig_semcart'
      Size = 50
    end
    object mem_bolcrnumparc: TFloatField
      FieldName = 'crnumparc'
    end
    object mem_bolcrqtdparc: TFloatField
      FieldName = 'crqtdparc'
    end
    object mem_bolsacador_avalista: TStringField
      FieldName = 'sacador_avalista'
      Size = 60
    end
  end
  object src_bol: TDataSource
    DataSet = mem_bol
    Left = 568
    Top = 16
  end
  object Src_CaddarOutAnexos: TDataSource
    DataSet = qr_CaddarOutAnexos
    Left = 923
    Top = 104
  end
  object qr_CaddarOutAnexos: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 955
    Top = 112
    object qr_CaddarOutAnexosCROA_ID: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CROA_ID'
    end
    object qr_CaddarOutAnexosCROA_ID_CADDAR: TFloatField
      DisplayLabel = 'Id Caddar'
      FieldName = 'CROA_ID_CADDAR'
    end
    object qr_CaddarOutAnexosCROA_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CROA_ENDERECO'
      Size = 254
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 668
    Top = 48
  end
end
