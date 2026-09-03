object Frm_Tab01: TFrm_Tab01
  Left = -18
  Top = -9
  Width = 792
  Height = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 378
    Align = alTop
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Pular:'
    end
    object Label2: TLabel
      Left = 147
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Coluna...:'
    end
    object Label3: TLabel
      Left = 171
      Top = 63
      Width = 54
      Height = 13
      Caption = 'Campo......:'
    end
    object Label4: TLabel
      Left = 171
      Top = 90
      Width = 55
      Height = 13
      Caption = 'Mensagem:'
    end
    object Label6: TLabel
      Left = 10
      Top = 281
      Width = 103
      Height = 13
      Caption = 'Condicao: Se Campo:'
    end
    object Label7: TLabel
      Left = 98
      Top = 304
      Width = 15
      Height = 13
      Caption = 'For'
    end
    object Label8: TLabel
      Left = 234
      Top = 302
      Width = 29
      Height = 13
      Caption = 'a/que'
    end
    object Label9: TLabel
      Left = 171
      Top = 110
      Width = 55
      Height = 13
      Caption = 'Sistema.....:'
    end
    object Label10: TLabel
      Left = 171
      Top = 129
      Width = 55
      Height = 13
      Caption = 'Caractere..:'
    end
    object Label11: TLabel
      Left = 280
      Top = 128
      Width = 135
      Height = 13
      Caption = 'Digitar Somente um Caracter'
    end
    object Label12: TLabel
      Left = 217
      Top = 223
      Width = 116
      Height = 13
      Caption = 'Tamanho/Qdt.Caracter.:'
    end
    object Label5: TLabel
      Left = 408
      Top = 223
      Width = 50
      Height = 13
      Caption = 'Formato...:'
    end
    object Label13: TLabel
      Left = 95
      Top = 9
      Width = 37
      Height = 13
      Caption = 'Linha(s)'
    end
    object Label14: TLabel
      Left = 171
      Top = 147
      Width = 56
      Height = 13
      Caption = 'Operador...:'
    end
    object Label15: TLabel
      Left = 171
      Top = 171
      Width = 54
      Height = 13
      Caption = 'Campo......:'
    end
    object Label30: TLabel
      Left = 171
      Top = 195
      Width = 67
      Height = 13
      Caption = 'Concatenado:'
    end
    object RG_CORTARDE: TRadioGroup
      Left = 614
      Top = 211
      Width = 167
      Height = 29
      Caption = 'Se Maior Cortar do lado:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&Direira'
        '&Esquerda')
      TabOrder = 18
    end
    object CAMPO_IE: TComboBox
      Left = 203
      Top = 169
      Width = 290
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      Visible = False
      OnExit = CAMPO_IEExit
    end
    object CONCATENADO: TComboBox
      Left = 240
      Top = 193
      Width = 290
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 7
      Visible = False
      OnExit = CONCATENADOExit
    end
    object RGFONTE: TRadioGroup
      Left = 287
      Top = 2
      Width = 229
      Height = 55
      Caption = 'Fonte:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '1&0cpp Normal'
        '1&2cpp '
        '1&7cpp'
        '2&0cpp'
        '&Negrito'
        '&Expandido')
      TabOrder = 2
    end
    object RGTREG: TRadioGroup
      Left = 5
      Top = 56
      Width = 167
      Height = 157
      Caption = 'Tipo do Registro:'
      ItemIndex = 0
      Items.Strings = (
        '&Campo'
        '&Mensagens'
        '&Sistema'
        '&Repetir Caractere'
        '&Operadores'
        '&Dados  da Empresa'
        'Campo &Instru'#231#245'es Especiais'
        'Campos Co&ncatenados')
      TabOrder = 3
      OnClick = RGTREGClick
      OnExit = RGTREGClick
    end
    object LINHA: TEdit
      Left = 50
      Top = 7
      Width = 38
      Height = 21
      TabOrder = 0
      OnKeyPress = LINHAKeyPress
    end
    object COLUNA: TEdit
      Left = 202
      Top = 8
      Width = 41
      Height = 21
      TabOrder = 1
      OnKeyPress = LINHAKeyPress
    end
    object MENSAGEM: TEdit
      Left = 240
      Top = 83
      Width = 290
      Height = 21
      TabOrder = 12
      OnExit = MENSAGEMExit
      OnKeyPress = MENSAGEMKeyPress
    end
    object CONDICAO: TComboBox
      Left = 116
      Top = 301
      Width = 106
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 24
      Items.Strings = (
        '= Igual'
        '< Menor'
        '> Maior'
        '>= Maior ou Igual'
        '<= Menor ou Igual'
        '<> Diferente')
    end
    object CAMPO1: TComboBox
      Left = 115
      Top = 279
      Width = 660
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 23
      OnExit = CAMPO1Exit
    end
    object CAMPO2: TComboBox
      Left = 268
      Top = 302
      Width = 510
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 25
      OnExit = CAMPO2Exit
    end
    object CAMPO: TComboBox
      Left = 241
      Top = 61
      Width = 290
      Height = 21
      BevelKind = bkSoft
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      Sorted = True
      TabOrder = 5
      OnExit = CAMPOExit
    end
    object SISTEMA: TComboBox
      Left = 240
      Top = 103
      Width = 290
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 13
      OnExit = SISTEMAExit
      Items.Strings = (
        'Data'
        'Hora'
        'Pagina'
        'Periodo'
        'Saldo Inicial'
        'Venda Periodo'
        'Venda Mes/Ate Dt.Final'
        'Venda Periodo Mes/Ant'
        'Venda Mes Ant/Ate Dt.Final'
        'Qtde Mes Ant/Ate Dt.Final'
        'Qtde Mes/Ate Dt.Final'
        'Texto Extra'
        'Texto Extra 2'
        '')
    end
    object CARACTER: TEdit
      Left = 241
      Top = 125
      Width = 30
      Height = 21
      TabOrder = 14
      OnKeyPress = CARACTERKeyPress
    end
    object TAMANHO: TEdit
      Left = 342
      Top = 220
      Width = 55
      Height = 21
      TabOrder = 16
    end
    object RGTIPOC: TRadioGroup
      Left = 7
      Top = 214
      Width = 185
      Height = 59
      Caption = 'Tipo de Campo:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&Caractere'
        '&Numerico'
        '&Data'
        '&Hora')
      TabOrder = 15
    end
    object RGALINHAR: TRadioGroup
      Left = 217
      Top = 241
      Width = 244
      Height = 34
      Caption = 'Alinhar:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Esquerda'
        '&Direira'
        '&Centralizar')
      TabOrder = 22
    end
    object FORMATO: TComboBox
      Left = 465
      Top = 218
      Width = 145
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 17
      Items.Strings = (
        '00000-000'
        '000"."000"."000"."000"-"00'
        '00"."000"."000"/"0000"-"00'
        'dd/mm/yyyy'
        'dd/mm/yy'
        'dd/mm/yyyy hh:nn:ss'
        'hh:nn:ss'
        '###,##0.00'
        '0000'
        'dd'
        'mm'
        'mmm'
        'yy'
        'yyyy'
        'yy/mm'
        'mm/yy'
        'yyyy/mm'
        'mm/yyyy'
        'yyyy/mmm'
        'mmm/yyyy')
    end
    object OPERADOR: TComboBox
      Left = 241
      Top = 146
      Width = 290
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 19
      OnChange = OPERADORChange
      OnExit = OPERADORExit
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 324
      Width = 782
      Height = 53
      Align = alBottom
      Caption = 'Formula do Calculo do Operador Selecionado:'
      Enabled = False
      TabOrder = 20
      object Memo1: TMemo
        Left = 2
        Top = 15
        Width = 778
        Height = 36
        Align = alClient
        TabOrder = 0
      end
    end
    object ZERAR: TCheckBox
      Left = 536
      Top = 148
      Width = 104
      Height = 17
      Caption = 'Zerar ao Imprimir'
      TabOrder = 21
    end
    object RG_TPSEL: TRadioGroup
      Left = 532
      Top = 38
      Width = 249
      Height = 44
      Caption = 'Especial:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Somar'
        'Contar'
        'M'#225'ximo'
        'M'#237'nimo'
        'Unico')
      TabOrder = 11
      OnClick = RG_TPSELClick
    end
    object CAMPO_EMP: TComboBox
      Left = 241
      Top = 169
      Width = 290
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      Sorted = True
      TabOrder = 6
      OnExit = CAMPO_EMPExit
    end
    object CB_BARRAS: TCheckBox
      Left = 534
      Top = 85
      Width = 139
      Height = 17
      Caption = 'Imprimir em Barras'
      Enabled = False
      TabOrder = 8
    end
    object RG_EXTENSO: TRadioGroup
      Left = 534
      Top = 100
      Width = 249
      Height = 47
      Caption = 'Tipo:'
      Columns = 2
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Extenso Moeda'
        'Extenso N'#250'mero'
        'Palavra')
      TabOrder = 9
      OnClick = RG_EXTENSOClick
      OnExit = RG_EXTENSOClick
    end
    object GroupBox2: TGroupBox
      Left = 179
      Top = 150
      Width = 602
      Height = 110
      Caption = 'Sobre o Extenso:'
      TabOrder = 10
      Visible = False
      OnExit = GroupBox2Exit
      object Label16: TLabel
        Left = 4
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Dividir em'
      end
      object Label17: TLabel
        Left = 99
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Linha(s)'
      end
      object Label18: TLabel
        Left = 4
        Top = 40
        Width = 163
        Height = 13
        Caption = 'Primeira Linha:    Iniciar na Coluna:'
      end
      object Label19: TLabel
        Left = 391
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Avan'#231'ar: '
      end
      object Label20: TLabel
        Left = 478
        Top = 41
        Width = 118
        Height = 13
        Caption = 'Linha(s) antes de imprimir'
      end
      object Label21: TLabel
        Left = 217
        Top = 40
        Width = 122
        Height = 13
        Caption = 'Tamanho/qtd.Caracteres:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 34
        Width = 602
        Height = 2
      end
      object Bevel3: TBevel
        Left = 0
        Top = 58
        Width = 602
        Height = 2
      end
      object Label22: TLabel
        Left = 4
        Top = 64
        Width = 163
        Height = 13
        Caption = 'Segunda Linha:  Iniciar na Coluna:'
      end
      object Label23: TLabel
        Left = 217
        Top = 64
        Width = 122
        Height = 13
        Caption = 'Tamanho/qtd.Caracteres:'
      end
      object Label24: TLabel
        Left = 391
        Top = 64
        Width = 46
        Height = 13
        Caption = 'Avan'#231'ar: '
      end
      object Label25: TLabel
        Left = 478
        Top = 65
        Width = 118
        Height = 13
        Caption = 'Linha(s) antes de imprimir'
      end
      object Label26: TLabel
        Left = 4
        Top = 89
        Width = 162
        Height = 13
        Caption = 'Terceira Linha:   Iniciar na Coluna:'
      end
      object Label27: TLabel
        Left = 217
        Top = 89
        Width = 122
        Height = 13
        Caption = 'Tamanho/qtd.Caracteres:'
      end
      object Label28: TLabel
        Left = 391
        Top = 89
        Width = 46
        Height = 13
        Caption = 'Avan'#231'ar: '
      end
      object Label29: TLabel
        Left = 476
        Top = 90
        Width = 118
        Height = 13
        Caption = 'Linha(s) antes de imprimir'
      end
      object Bevel2: TBevel
        Left = 81
        Top = 36
        Width = 2
        Height = 71
      end
      object Bevel4: TBevel
        Left = 213
        Top = 36
        Width = 2
        Height = 71
      end
      object Bevel5: TBevel
        Left = 384
        Top = 36
        Width = 2
        Height = 71
      end
      object Bevel6: TBevel
        Left = 0
        Top = 82
        Width = 602
        Height = 2
      end
      object EXT_QTDL: TEdit
        Left = 55
        Top = 13
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object EXT_1LT: TEdit
        Left = 342
        Top = 37
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
      object EXT_1LP: TEdit
        Left = 440
        Top = 37
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object EXT_1IC: TEdit
        Left = 171
        Top = 37
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object EXT_2IC: TEdit
        Left = 170
        Top = 61
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object EXT_2LT: TEdit
        Left = 342
        Top = 61
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object EXT_2LP: TEdit
        Left = 440
        Top = 61
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object EXT_3IC: TEdit
        Left = 170
        Top = 86
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
      end
      object EXT_3LT: TEdit
        Left = 342
        Top = 86
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
      object EXT_3LP: TEdit
        Left = 440
        Top = 86
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 378
    Width = 784
    Height = 107
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 782
      Height = 105
      Align = alClient
      DataSource = Src_TDV
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
          FieldName = 'TLIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TDCAMPO'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'colfinal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TFORMATO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTIPOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TDOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TALINHAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDT1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TFONTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCAMPO'
          Width = 268
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOND01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDT2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOND02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TLOCAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSEQ'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 485
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label35: TLabel
      Left = 636
      Top = 2
      Width = 139
      Height = 13
      Caption = 'Incrementar a partir do Cursor'
    end
    object Label36: TLabel
      Left = 624
      Top = 23
      Width = 29
      Height = 13
      Caption = 'Linha:'
    end
    object Label37: TLabel
      Left = 689
      Top = 23
      Width = 36
      Height = 13
      Caption = 'Coluna:'
    end
    object SBNAplicar: TSpeedButton
      Left = 758
      Top = 16
      Width = 23
      Height = 22
      Hint = 'Aplicar os Incremento'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SBNAplicarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 1
      Width = 228
      Height = 39
      DataSource = Src_TDV
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object INCLUIR: TBitBtn
      Left = 231
      Top = 3
      Width = 65
      Height = 37
      Caption = '&Incluir'
      TabOrder = 2
      OnClick = INCLUIRClick
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
    object ALTERAR: TBitBtn
      Left = 295
      Top = 3
      Width = 65
      Height = 37
      Caption = 'A&lterar'
      TabOrder = 3
      OnClick = ALTERARClick
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
    object GRAVAR: TBitBtn
      Left = 359
      Top = 3
      Width = 65
      Height = 37
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = GRAVARClick
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
    object EXCLUIR: TBitBtn
      Left = 423
      Top = 3
      Width = 65
      Height = 37
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = EXCLUIRClick
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
    object CANCELAR: TBitBtn
      Left = 487
      Top = 3
      Width = 65
      Height = 37
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = CANCELARClick
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
    object SAIR: TBitBtn
      Left = 551
      Top = 3
      Width = 65
      Height = 37
      Caption = '&Sair'
      TabOrder = 6
      OnClick = SAIRClick
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
    object MLINHA: TEdit
      Left = 656
      Top = 18
      Width = 31
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object MCOLUNA: TEdit
      Left = 725
      Top = 18
      Width = 31
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
    end
  end
  object Src_TDV: TDataSource
    DataSet = DM1.Tb_TDV
    OnDataChange = Src_TDVDataChange
    Left = 160
    Top = 24
  end
  object Qr_TDVOP: TQuery
    OnCalcFields = Qr_TDVOPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVOP where '
      'TOCODEMP like :CODEMP and'
      'TODOC        like  :DOC        and'
      'TONOME     like  :NOME      and'
      'TOCODIGO  like  :CODIGO')
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDVOPTOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CTDVOP.TOCODEMP'
    end
    object Qr_TDVOPTODOC: TStringField
      FieldName = 'TODOC'
      Origin = 'SG_ASSOC.CTDVOP.TODOC'
      Size = 10
    end
    object Qr_TDVOPTONOME: TStringField
      FieldName = 'TONOME'
      Origin = 'SG_ASSOC.CTDVOP.TONOME'
    end
    object Qr_TDVOPTOTOP1: TStringField
      FieldName = 'TOTOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP1'
      Size = 1
    end
    object Qr_TDVOPTOOP1: TStringField
      FieldName = 'TOOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOOP1'
      Size = 40
    end
    object Qr_TDVOPTOPER1: TStringField
      FieldName = 'TOPER1'
      Origin = 'SG_ASSOC.CTDVOP.TOPER1'
      Size = 1
    end
    object Qr_TDVOPTOTOP2: TStringField
      FieldName = 'TOTOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP2'
      Size = 1
    end
    object Qr_TDVOPTOOP2: TStringField
      FieldName = 'TOOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOOP2'
      Size = 40
    end
    object Qr_TDVOPTOPER2: TStringField
      FieldName = 'TOPER2'
      Origin = 'SG_ASSOC.CTDVOP.TOPER2'
      Size = 1
    end
    object Qr_TDVOPTOTOP3: TStringField
      FieldName = 'TOTOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP3'
      Size = 1
    end
    object Qr_TDVOPTOOP3: TStringField
      FieldName = 'TOOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOOP3'
      Size = 40
    end
    object Qr_TDVOPdescricao: TStringField
      DisplayLabel = 'Descricao'
      FieldKind = fkCalculated
      FieldName = 'descricao'
      Calculated = True
    end
    object Qr_TDVOPcampo1: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo1'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPcampo2: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo2'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPmoper: TStringField
      FieldKind = fkCalculated
      FieldName = 'moper'
      Size = 200
      Calculated = True
    end
    object Qr_TDVOPTOTOP0: TStringField
      FieldName = 'TOTOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP0'
      Size = 1
    end
    object Qr_TDVOPTOOP0: TStringField
      FieldName = 'TOOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOOP0'
      Size = 40
    end
    object Qr_TDVOPTOPER0: TStringField
      FieldName = 'TOPER0'
      Origin = 'SG_ASSOC.CTDVOP.TOPER0'
      Size = 1
    end
    object Qr_TDVOPcampo0: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo0'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPcampo3: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo3'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPTODESOP0: TStringField
      FieldName = 'TODESOP0'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP0'
      Size = 80
    end
    object Qr_TDVOPTODESOP1: TStringField
      FieldName = 'TODESOP1'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP1'
      Size = 80
    end
    object Qr_TDVOPTODESOP2: TStringField
      FieldName = 'TODESOP2'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP2'
      Size = 80
    end
    object Qr_TDVOPTODESOP3: TStringField
      FieldName = 'TODESOP3'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP3'
      Size = 80
    end
    object Qr_TDVOPTOCONDT1: TStringField
      FieldName = 'TOCONDT1'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT1'
      Size = 1
    end
    object Qr_TDVOPTOCOND01: TStringField
      FieldName = 'TOCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND01'
      Size = 30
    end
    object Qr_TDVOPTODCOND01: TStringField
      FieldName = 'TODCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND01'
      Size = 80
    end
    object Qr_TDVOPTOCONDOP: TStringField
      FieldName = 'TOCONDOP'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDOP'
      Size = 5
    end
    object Qr_TDVOPTOCONDT2: TStringField
      FieldName = 'TOCONDT2'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT2'
      Size = 1
    end
    object Qr_TDVOPTOCOND02: TStringField
      FieldName = 'TOCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND02'
      Size = 30
    end
    object Qr_TDVOPTODCOND02: TStringField
      FieldName = 'TODCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND02'
      Size = 80
    end
    object Qr_TDVOPTOTDET: TFloatField
      FieldName = 'TOTDET'
      Origin = 'SG_ASSOC.CTDVOP.TOTDET'
    end
    object Qr_TDVOPTOCODIGO: TFloatField
      FieldName = 'TOCODIGO'
      Origin = 'SG_ASSOC.CTDVOP.TOCODIGO'
    end
  end
end
