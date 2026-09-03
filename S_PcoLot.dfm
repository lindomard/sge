object Frm_PcoLot: TFrm_PcoLot
  Left = 77
  Top = 56
  Width = 800
  Height = 600
  ActiveControl = bbAtualizar
  Caption = 'Manipula'#231#227'o de Pre'#231'os por Lote'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 62
    Align = alTop
    Caption = 'Pesquisar lotes Existentes:'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 67
      Height = 13
      Caption = 'Pesquisar por:'
    end
    object Label2: TLabel
      Left = 373
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object CB_Pesq: TComboBox
      Left = 81
      Top = 16
      Width = 135
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = CB_PesqExit
      Items.Strings = (
        'Lote'
        'Data do Ajuste')
    end
    object CAMPO: TMaskEdit
      Left = 415
      Top = 16
      Width = 152
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = CAMPOExit
    end
    object bbAtualizar: TBitBtn
      Left = 591
      Top = 11
      Width = 86
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 3
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
      Left = 679
      Top = 11
      Width = 86
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
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
    object CB_CONF: TCheckBox
      Left = 227
      Top = 18
      Width = 134
      Height = 17
      Caption = 'Selecionar Confirmados'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 62
    Width = 792
    Height = 132
    Align = alTop
    Caption = 'Lotes Existentes:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 96
      Align = alClient
      DataSource = Src_AL1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'AL1LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL1DATA'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL1DTPREV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtcon'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL1HORCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL1PORC'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL1OBS'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 111
      Width = 788
      Height = 19
      Align = alBottom
      TabOrder = 1
      object cb_mostrar: TCheckBox
        Left = 5
        Top = 1
        Width = 270
        Height = 17
        Caption = 'Ao Navegar mostrar '#237'tens'
        TabOrder = 0
        OnClick = cb_mostrarClick
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 194
    Width = 792
    Height = 53
    Align = alTop
    Caption = 'Opera'#231#245'es:'
    TabOrder = 2
    object INCLUIR: TBitBtn
      Left = 265
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Incluir'
      Enabled = False
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object ALTERAR: TBitBtn
      Left = 334
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 403
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CANCELAR: TBitBtn
      Left = 472
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = CANCELARClick
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
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 14
      Width = 260
      Height = 35
      DataSource = Src_AL1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object EXCLUIR: TBitBtn
      Left = 542
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 5
      OnClick = EXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CONFIRMAR: TBitBtn
      Left = 611
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Confirmar'
      Enabled = False
      TabOrder = 6
      OnClick = CONFIRMARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object IMPRIMIR: TBitBtn
      Left = 681
      Top = 14
      Width = 70
      Height = 35
      Caption = '&Imprimir'
      Enabled = False
      TabOrder = 7
      OnClick = IMPRIMIRClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 247
    Width = 792
    Height = 116
    Align = alTop
    Caption = 'Detalhes:'
    Enabled = False
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 13
      Caption = 'No. do Lote:'
    end
    object Label4: TLabel
      Left = 169
      Top = 17
      Width = 85
      Height = 13
      Caption = 'Data da Gera'#231#227'o:'
    end
    object Label5: TLabel
      Left = 234
      Top = 38
      Width = 88
      Height = 13
      Caption = 'Data Confirma'#231#227'o:'
    end
    object Label6: TLabel
      Left = 412
      Top = 36
      Width = 26
      Height = 13
      Caption = 'Hora:'
    end
    object Label7: TLabel
      Left = 14
      Top = 39
      Width = 65
      Height = 13
      Caption = '% Percentual:'
    end
    object Label8: TLabel
      Left = 364
      Top = 14
      Width = 73
      Height = 13
      Caption = 'Data do Ajuste:'
    end
    object Label9: TLabel
      Left = 14
      Top = 61
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 12
      Width = 82
      Height = 21
      BevelKind = bkSoft
      Color = 14024703
      DataField = 'AL1LOTE'
      DataSource = Src_AL1
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 275
      Top = 11
      Width = 82
      Height = 21
      BevelKind = bkSoft
      DataField = 'AL1DATA'
      DataSource = Src_AL1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 325
      Top = 34
      Width = 82
      Height = 21
      BevelKind = bkSoft
      Color = 14024703
      DataField = 'dtcon'
      DataSource = Src_AL1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 439
      Top = 33
      Width = 82
      Height = 21
      BevelKind = bkSoft
      Color = 14024703
      DataField = 'AL1HORCON'
      DataSource = Src_AL1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 82
      Top = 35
      Width = 82
      Height = 21
      BevelKind = bkSoft
      DataField = 'AL1PORC'
      DataSource = Src_AL1
      TabOrder = 5
    end
    object DBCheckBox1: TDBCheckBox
      Left = 164
      Top = 36
      Width = 59
      Height = 17
      Caption = 'Diminuir'
      DataField = 'AL1TIPO'
      DataSource = Src_AL1
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit6: TDBEdit
      Left = 439
      Top = 10
      Width = 82
      Height = 21
      BevelKind = bkSoft
      DataField = 'AL1DTPREV'
      DataSource = Src_AL1
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 82
      Top = 57
      Width = 439
      Height = 21
      BevelKind = bkSoft
      DataField = 'AL1OBS'
      DataSource = Src_AL1
      TabOrder = 7
    end
    object gb_altpco: TGroupBox
      Left = 625
      Top = 7
      Width = 161
      Height = 84
      Caption = 'Tipo de Pre'#231'o'
      TabOrder = 9
      object CB_PCOVDA: TDBCheckBox
        Left = 8
        Top = 13
        Width = 143
        Height = 17
        Caption = 'Alterar Pre'#231'o de Venda'
        DataField = 'AL1PCOVDA'
        DataSource = Src_AL1
        TabOrder = 0
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object CB_PCOMAX: TDBCheckBox
        Left = 8
        Top = 46
        Width = 145
        Height = 17
        Caption = 'Alterar Pre'#231'o M'#225'ximo'
        DataField = 'AL1PCOMAX'
        DataSource = Src_AL1
        TabOrder = 2
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object CB_PCOFAB: TDBCheckBox
        Left = 8
        Top = 30
        Width = 143
        Height = 17
        Caption = 'Alterar Pre'#231'os de F'#225'brica'
        DataField = 'AL1PCOFAB'
        DataSource = Src_AL1
        TabOrder = 1
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object CB_PCOCUS: TDBCheckBox
        Left = 8
        Top = 64
        Width = 145
        Height = 17
        Caption = 'Alterar Pre'#231'o de Custo'
        DataField = 'AL1PCOCUS'
        DataSource = Src_AL1
        TabOrder = 3
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
    end
    object bbItens: TBitBtn
      Left = 82
      Top = 92
      Width = 223
      Height = 21
      Caption = 'Passar para o campo de Itens'
      TabOrder = 11
      OnClick = bbItensClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object DBRG_Preco: TDBRadioGroup
      Left = 533
      Top = 6
      Width = 86
      Height = 85
      Caption = 'Alterar o'
      DataField = 'AL1TIPOPCO'
      DataSource = Src_AL1
      Items.Strings = (
        'Pre'#231'o 1'
        'Pre'#231'o 2'
        'Pre'#231'o 3')
      TabOrder = 8
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object DBCB_MAXVDA: TDBCheckBox
      Left = 533
      Top = 95
      Width = 256
      Height = 15
      Caption = 'Manter o Pre'#231'o M'#225'ximo igual ao Pre'#231'o de Venda'
      DataField = 'AL1MAXVDA'
      DataSource = Src_AL1
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object bbPadroes: TBitBtn
      Left = 366
      Top = 92
      Width = 155
      Height = 21
      Caption = '&Salvar Padr'#245'es'
      TabOrder = 12
      OnClick = bbPadroesClick
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
  object GroupBox5: TGroupBox
    Left = 0
    Top = 363
    Width = 792
    Height = 206
    Align = alClient
    Caption = 'Produtos:'
    TabOrder = 4
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 142
      Align = alClient
      DataSource = Src_AL2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid_itensColExit
      OnExit = DBGrid_itensExit
      OnKeyPress = DBGrid_itensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'AL2CODPRO'
          Title.Caption = 'Codigo'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2NOMPRO'
          ReadOnly = True
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2PCOATU1'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2PCONOV1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2FABATU'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2FABNOV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2PMCATU'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2PMCNOV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2CUSATU'
          Title.Caption = 'P'#231'o.Cus.Atual'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AL2CUSNOV'
          Title.Caption = 'P'#231'o.Cus.Novo'
          Visible = True
        end>
    end
    object Panel_Controle: TPanel
      Left = 2
      Top = 157
      Width = 788
      Height = 47
      Align = alBottom
      TabOrder = 1
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 3
        Width = 513
        Height = 42
        DataSource = Src_AL2
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Hints.Strings = (
          'Primeiro registro'
          'Registro anterior'
          'Pr'#243'ximo registro'
          #218'ltimo registro'
          'Inserir registro'
          'Excluir registro'
          'Editar registro'
          'Gravar edi'#231#227'o'
          'Cancelar edi'#231#227'o'
          'Atualizar da rede')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object bbAdicionar: TBitBtn
        Left = 624
        Top = 4
        Width = 136
        Height = 42
        Caption = 'A&dicionar Produtos'
        TabOrder = 1
        OnClick = bbAdicionarClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object Qr_AL1: TQuery
    CachedUpdates = True
    AfterInsert = Qr_AL1AfterInsert
    OnCalcFields = Qr_AL1CalcFields
    DatabaseName = 'SG_ASSOC'
    Filtered = True
    SQL.Strings = (
      'Select * from CADAL1 where AL1CODEMP is null')
    UpdateObject = U_AL1
    Left = 195
    Top = 62
    object Qr_AL1AL1CODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'AL1CODEMP'
      Origin = 'SG_ASSOC.CADAL1.AL1CODEMP'
    end
    object Qr_AL1AL1LOTE: TFloatField
      DisplayLabel = 'No.Lote'
      FieldName = 'AL1LOTE'
      Origin = 'SG_ASSOC.CADAL1.AL1LOTE'
    end
    object Qr_AL1AL1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'AL1DATA'
      Origin = 'SG_ASSOC.CADAL1.AL1DATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Qr_AL1AL1DTPREV: TDateTimeField
      DisplayLabel = 'Data Ajuste'
      FieldName = 'AL1DTPREV'
      Origin = 'SG_ASSOC.CADAL1.AL1DTPREV'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Qr_AL1AL1DTCON: TDateTimeField
      DisplayLabel = 'Data Confirma'#231#227'o'
      FieldName = 'AL1DTCON'
      Origin = 'SG_ASSOC.CADAL1.AL1DTCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Qr_AL1AL1USRCON: TFloatField
      DisplayLabel = 'Usu'#225'rio Confirmou'
      FieldName = 'AL1USRCON'
      Origin = 'SG_ASSOC.CADAL1.AL1USRCON'
    end
    object Qr_AL1AL1HORCON: TStringField
      DisplayLabel = 'Hor'#225'rio Confirma'#231#227'o'
      FieldName = 'AL1HORCON'
      Origin = 'SG_ASSOC.CADAL1.AL1HORCON'
      Size = 10
    end
    object Qr_AL1AL1PORC: TFloatField
      DisplayLabel = 'Porcentagem'
      FieldName = 'AL1PORC'
      Origin = 'SG_ASSOC.CADAL1.AL1PORC'
    end
    object Qr_AL1AL1TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'AL1TIPO'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPO'
    end
    object Qr_AL1AL1CODUSR: TFloatField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'AL1CODUSR'
      Origin = 'SG_ASSOC.CADAL1.AL1CODUSR'
    end
    object Qr_AL1AL1OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'AL1OBS'
      Origin = 'SG_ASSOC.CADAL1.AL1OBS'
      Size = 40
    end
    object Qr_AL1tipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo'
      Size = 10
      Calculated = True
    end
    object Qr_AL1AL1STATUS: TFloatField
      FieldName = 'AL1STATUS'
      Origin = 'SG_ASSOC.CADAL1.AL1STATUS'
    end
    object Qr_AL1AL1LOTSEQ: TFloatField
      FieldName = 'AL1LOTSEQ'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOMAX'
    end
    object Qr_AL1AL1PCOFAB: TFloatField
      FieldName = 'AL1PCOFAB'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPOPCO'
    end
    object Qr_AL1AL1PCOVDA: TFloatField
      FieldName = 'AL1PCOVDA'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPOPCO'
    end
    object Qr_AL1AL1PCOCUS: TFloatField
      FieldName = 'AL1PCOCUS'
      Origin = 'SG_ASSOC.CADAL1.AL1PCOCUS'
    end
    object Qr_AL1AL1PCOMAX: TFloatField
      FieldName = 'AL1PCOMAX'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPOPCO'
    end
    object Qr_AL1AL1TIPOPCO: TFloatField
      FieldName = 'AL1TIPOPCO'
      Origin = 'SG_ASSOC.CADAL1.AL1TIPOPCO'
    end
    object Qr_AL1AL1MAXVDA: TFloatField
      FieldName = 'AL1MAXVDA'
      Origin = 'SG_ASSOC.CADAL1.AL1MAXVDA'
    end
    object Qr_AL1dtcon: TStringField
      DisplayLabel = 'Data Confirma'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtcon'
      Size = 10
      Calculated = True
    end
    object Qr_AL1AL1TPCO01: TFloatField
      FieldName = 'AL1TPCO01'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO01'
    end
    object Qr_AL1AL1TPCO02: TFloatField
      FieldName = 'AL1TPCO02'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO02'
    end
    object Qr_AL1AL1TPCO03: TFloatField
      FieldName = 'AL1TPCO03'
      Origin = 'SG_ASSOC.CADAL1.AL1TPCO03'
    end
  end
  object Src_AL1: TDataSource
    DataSet = Qr_AL1
    OnDataChange = Src_AL1DataChange
    Left = 223
    Top = 62
  end
  object Src_AL2: TDataSource
    DataSet = RxQuery
    Left = 554
    Top = 433
  end
  object U_AL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CADAL1'
      'set'
      '  AL1CODEMP = :AL1CODEMP,'
      '  AL1LOTE = :AL1LOTE,'
      '  AL1DATA = :AL1DATA,'
      '  AL1DTPREV = :AL1DTPREV,'
      '  AL1DTCON = :AL1DTCON,'
      '  AL1USRCON = :AL1USRCON,'
      '  AL1HORCON = :AL1HORCON,'
      '  AL1PORC = :AL1PORC,'
      '  AL1TIPO = :AL1TIPO,'
      '  AL1OBS = :AL1OBS,'
      '  AL1STATUS = :AL1STATUS,'
      '  AL1CODUSR = :AL1CODUSR,'
      '  AL1LOTSEQ = :AL1LOTSEQ,'
      '  AL1PCOFAB = :AL1PCOFAB,'
      '  AL1PCOVDA = :AL1PCOVDA,'
      '  AL1PCOMAX = :AL1PCOMAX,'
      '  AL1TIPOPCO = :AL1TIPOPCO,'
      '  AL1MAXVDA = :AL1MAXVDA'
      'where'
      '  AL1CODEMP = :OLD_AL1CODEMP and'
      '  AL1LOTE = :OLD_AL1LOTE and'
      '  AL1DATA = :OLD_AL1DATA')
    InsertSQL.Strings = (
      'insert into CADAL1'
      '  (AL1CODEMP, AL1LOTE, AL1DATA, AL1DTPREV, AL1DTCON, AL1USRCON, '
      'AL1HORCON, '
      '   AL1PORC, AL1TIPO, AL1OBS, AL1STATUS, AL1CODUSR, AL1LOTSEQ, '
      'AL1PCOFAB, '
      '   AL1PCOVDA, AL1PCOMAX, AL1TIPOPCO, AL1MAXVDA)'
      'values'
      
        '  (:AL1CODEMP, :AL1LOTE, :AL1DATA, :AL1DTPREV, :AL1DTCON, :AL1US' +
        'RCON, '
      ':AL1HORCON, '
      
        '   :AL1PORC, :AL1TIPO, :AL1OBS, :AL1STATUS, :AL1CODUSR, :AL1LOTS' +
        'EQ, '
      ':AL1PCOFAB, '
      '   :AL1PCOVDA, :AL1PCOMAX, :AL1TIPOPCO, :AL1MAXVDA)')
    DeleteSQL.Strings = (
      'delete from CADAL1'
      'where'
      '  AL1CODEMP = :OLD_AL1CODEMP and'
      '  AL1LOTE = :OLD_AL1LOTE and'
      '  AL1DATA = :OLD_AL1DATA')
    Left = 251
    Top = 63
  end
  object RxQuery: TRxMemoryData
    FieldDefs = <
      item
        Name = 'AL2CODEMP'
        DataType = ftInteger
      end
      item
        Name = 'AL2LOTE'
        DataType = ftInteger
      end
      item
        Name = 'AL2ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'AL2TIPALT'
        DataType = ftInteger
      end
      item
        Name = 'AL2PCOANT'
        DataType = ftFloat
      end
      item
        Name = 'AL2PCOATU1'
        DataType = ftFloat
      end
      item
        Name = 'AL2PCONOV1'
        DataType = ftInteger
      end
      item
        Name = 'AL2LOTSEQ'
        DataType = ftInteger
      end
      item
        Name = 'AL2CODPRO'
        DataType = ftInteger
      end
      item
        Name = 'AL2DTUAPCO'
        DataType = ftDate
      end
      item
        Name = 'AL2FABANT'
        DataType = ftFloat
      end
      item
        Name = 'AL2FABATU'
        DataType = ftFloat
      end
      item
        Name = 'AL2FABNOV'
        DataType = ftFloat
      end
      item
        Name = 'AL2DTUAFAB'
        DataType = ftDate
      end
      item
        Name = 'AL2PMCANT'
        DataType = ftFloat
      end
      item
        Name = 'AL2PMCATU'
        DataType = ftFloat
      end
      item
        Name = 'AL2PMCNOV'
        DataType = ftFloat
      end
      item
        Name = 'AL2DTUAPMC'
        DataType = ftDate
      end
      item
        Name = 'DATAATUAL'
        DataType = ftDate
      end
      item
        Name = 'AL2NOMPRO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'CODUSR'
        DataType = ftInteger
      end
      item
        Name = 'AL2CUSANT'
        DataType = ftFloat
      end
      item
        Name = 'AL2CUSATU'
        DataType = ftFloat
      end
      item
        Name = 'AL2CUSNOV'
        DataType = ftFloat
      end
      item
        Name = 'AL2DTUACUS'
        DataType = ftDate
      end>
    AfterInsert = RxQueryAfterInsert
    BeforePost = RxQueryBeforePost
    Left = 488
    Top = 436
    object RxQueryAL2CODEMP: TIntegerField
      FieldName = 'AL2CODEMP'
    end
    object RxQueryAL2LOTE: TIntegerField
      FieldName = 'AL2LOTE'
    end
    object RxQueryAL2ORDEM: TIntegerField
      FieldName = 'AL2ORDEM'
    end
    object RxQueryAL2TIPALT: TIntegerField
      FieldName = 'AL2TIPALT'
    end
    object RxQueryAL2PCOANT: TFloatField
      FieldName = 'AL2PCOANT'
    end
    object RxQueryAL2PCOATU1: TFloatField
      DisplayLabel = 'P'#231'o.Vda.Atual'
      FieldName = 'AL2PCOATU1'
    end
    object RxQueryAL2PCONOV1: TFloatField
      DisplayLabel = 'P'#231'o.Vda.Novo'
      FieldName = 'AL2PCONOV1'
    end
    object RxQueryAL2LOTSEQ: TIntegerField
      FieldName = 'AL2LOTSEQ'
    end
    object RxQueryAL2DTUAPCO: TDateField
      FieldName = 'AL2DTUAPCO'
    end
    object RxQueryAL2FABANT: TFloatField
      FieldName = 'AL2FABANT'
    end
    object RxQueryAL2FABATU: TFloatField
      DisplayLabel = 'P'#231'o.F'#225'b.Atual'
      FieldName = 'AL2FABATU'
    end
    object RxQueryAL2FABNOV: TFloatField
      DisplayLabel = 'P'#231'o.F'#225'b.Novo'
      FieldName = 'AL2FABNOV'
    end
    object RxQueryAL2DTUAFAB: TDateField
      FieldName = 'AL2DTUAFAB'
    end
    object RxQueryAL2PMCANT: TFloatField
      FieldName = 'AL2PMCANT'
    end
    object RxQueryAL2PMCATU: TFloatField
      DisplayLabel = 'P'#231'o.M'#225'x.Atual'
      FieldName = 'AL2PMCATU'
    end
    object RxQueryAL2PMCNOV: TFloatField
      DisplayLabel = 'P'#231'o.M'#225'x.Novo'
      FieldName = 'AL2PMCNOV'
    end
    object RxQueryAL2DTUAPMC: TDateField
      FieldName = 'AL2DTUAPMC'
    end
    object RxQueryDATAATUAL: TDateField
      FieldName = 'DATAATUAL'
    end
    object RxQueryAL2NOMPRO: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'AL2NOMPRO'
      Size = 120
    end
    object RxQueryCODUSR: TIntegerField
      FieldName = 'CODUSR'
    end
    object RxQueryAL2CUSANT: TFloatField
      FieldName = 'AL2CUSANT'
    end
    object RxQueryAL2CUSATU: TFloatField
      FieldName = 'AL2CUSATU'
    end
    object RxQueryAL2CUSNOV: TFloatField
      FieldName = 'AL2CUSNOV'
    end
    object RxQueryAL2DTUACUS: TDateField
      FieldName = 'AL2DTUACUS'
    end
    object RxQueryAL2CODPRO: TFloatField
      FieldName = 'AL2CODPRO'
    end
  end
end
