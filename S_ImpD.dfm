object Frm_ImpD: TFrm_ImpD
  Left = 19
  Top = 230
  Width = 781
  Height = 340
  Caption = 'Impressoes Diversas'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 141
    Top = 0
    Width = 632
    Height = 265
    Align = alClient
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 30
      Width = 177
      Height = 13
      Caption = 'Primeira Linha a Ser Impressa.:'
    end
    object Label2: TLabel
      Left = 5
      Top = 55
      Width = 178
      Height = 13
      Caption = 'Segunda Linha a Ser Impressa:'
    end
    object Label3: TLabel
      Left = 473
      Top = 35
      Width = 99
      Height = 13
      Caption = 'Pular Qtd Linhas:'
    end
    object Label4: TLabel
      Left = 471
      Top = 58
      Width = 99
      Height = 13
      Caption = 'Pular Qtd Linhas:'
    end
    object Label5: TLabel
      Left = 6
      Top = 77
      Width = 301
      Height = 13
      Caption = 'Ap'#243's Imprimir as Linhas Acima Pular Quantas Linhas:'
    end
    object Label6: TLabel
      Left = 6
      Top = 100
      Width = 298
      Height = 13
      Caption = 'Quantidade de colunas/lados Quer Imprimir............:'
    end
    object Label7: TLabel
      Left = 6
      Top = 121
      Width = 299
      Height = 13
      Caption = 'Quantos Jogos Quer Emitir....................................:'
    end
    object Label8: TLabel
      Left = 444
      Top = 97
      Width = 127
      Height = 13
      Caption = 'Pular Qtd Caracteres.:'
    end
    object Label9: TLabel
      Left = 357
      Top = 33
      Width = 64
      Height = 13
      Caption = 'No.Coluna:'
    end
    object Label10: TLabel
      Left = 359
      Top = 53
      Width = 64
      Height = 13
      Caption = 'No.Coluna:'
    end
    object Label11: TLabel
      Left = 7
      Top = 10
      Width = 174
      Height = 13
      Caption = 'Nome do Relat'#243'rio................:'
    end
    object LINHA1: TEdit
      Left = 183
      Top = 29
      Width = 167
      Height = 21
      TabOrder = 1
    end
    object RGTFONTE: TRadioGroup
      Left = 4
      Top = 141
      Width = 450
      Height = 74
      Caption = 'Fonte Padrao:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '1&0cpp Normal Padrao 80 Colunas'
        '1&2cpp  Padrao 96 colunas'
        '1&7cpp Padrao 136 Colunas'
        '2&0cpp Padrao 160 Colunas'
        '&Negrito'
        '&Expandido Padrao 40 Colunas')
      TabOrder = 11
    end
    object RGENTREL: TRadioGroup
      Left = 5
      Top = 218
      Width = 450
      Height = 47
      Caption = 'Tamanho das Entrelinhas:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '6 Linhas por Polegada(Padrao)'
        '8 Linhas por Polegada')
      TabOrder = 12
    end
    object LINHA2: TEdit
      Left = 183
      Top = 51
      Width = 168
      Height = 21
      TabOrder = 4
    end
    object PULAR1: TEdit
      Left = 576
      Top = 30
      Width = 50
      Height = 21
      TabOrder = 3
      Text = '0'
      OnKeyPress = NCOL1KeyPress
    end
    object PULAR2: TEdit
      Left = 576
      Top = 51
      Width = 50
      Height = 21
      TabOrder = 6
      Text = '0'
      OnKeyPress = NCOL1KeyPress
    end
    object PULAR3: TEdit
      Left = 312
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 7
      Text = '0'
      OnKeyPress = NCOL1KeyPress
    end
    object QTDCOL: TEdit
      Left = 312
      Top = 95
      Width = 121
      Height = 21
      TabOrder = 8
      Text = '1'
      OnKeyPress = NCOL1KeyPress
    end
    object QTDJ: TEdit
      Left = 312
      Top = 117
      Width = 121
      Height = 21
      TabOrder = 10
      Text = '1'
      OnKeyPress = NCOL1KeyPress
    end
    object QTDPC: TEdit
      Left = 576
      Top = 95
      Width = 50
      Height = 21
      TabOrder = 9
      Text = '0'
      OnKeyPress = NCOL1KeyPress
    end
    object NCOL1: TEdit
      Left = 423
      Top = 29
      Width = 44
      Height = 21
      TabOrder = 2
      Text = '1'
      OnKeyPress = NCOL1KeyPress
    end
    object NCOL2: TEdit
      Left = 423
      Top = 51
      Width = 45
      Height = 21
      TabOrder = 5
      Text = '1'
      OnKeyPress = NCOL1KeyPress
    end
    object NOMREL: TEdit
      Left = 183
      Top = 7
      Width = 166
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 265
    Width = 773
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BBIMPRIMIR: TBitBtn
      Left = 550
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BBIMPRIMIRClick
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
    object BBSAIR: TBitBtn
      Left = 659
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BBSAIRClick
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
    object bbincluir: TBitBtn
      Left = 2
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Incluir'
      TabOrder = 2
      OnClick = bbincluirClick
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
    object bbalterar: TBitBtn
      Left = 112
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Alterar'
      TabOrder = 3
      OnClick = bbalterarClick
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
    object bbgravar: TBitBtn
      Left = 222
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 4
      OnClick = bbgravarClick
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
    object bbexcluir: TBitBtn
      Left = 332
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Excluir'
      TabOrder = 5
      OnClick = bbexcluirClick
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
    object bbcancelar: TBitBtn
      Left = 442
      Top = 8
      Width = 110
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = bbcancelarClick
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 141
    Height = 265
    Align = alLeft
    Caption = 'Nome do Relat'#243'rio:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 137
      Height = 248
      Align = alClient
      DataSource = Src_IDV
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'IDNOMREL'
          Title.Caption = 'Nome do Relat'#243'rio'
          Visible = True
        end>
    end
  end
  object Qr_IDV: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADIDV order by IDNOMREL')
    Left = 504
    Top = 192
    object Qr_IDVIDCODEMP: TFloatField
      FieldName = 'IDCODEMP'
      Origin = 'SG_ASSOC.CADIDV.IDCODEMP'
    end
    object Qr_IDVIDNOMREL: TStringField
      FieldName = 'IDNOMREL'
      Origin = 'SG_ASSOC.CADIDV.IDNOMREL'
    end
    object Qr_IDVIDLINHA1: TStringField
      FieldName = 'IDLINHA1'
      Origin = 'SG_ASSOC.CADIDV.IDLINHA1'
    end
    object Qr_IDVIDLINHA2: TStringField
      FieldName = 'IDLINHA2'
      Origin = 'SG_ASSOC.CADIDV.IDLINHA2'
    end
    object Qr_IDVIDCOL1: TFloatField
      FieldName = 'IDCOL1'
      Origin = 'SG_ASSOC.CADIDV.IDCOL1'
    end
    object Qr_IDVIDPULAR1: TFloatField
      FieldName = 'IDPULAR1'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR1'
    end
    object Qr_IDVIDCOL2: TFloatField
      FieldName = 'IDCOL2'
      Origin = 'SG_ASSOC.CADIDV.IDCOL2'
    end
    object Qr_IDVIDPULAR2: TFloatField
      FieldName = 'IDPULAR2'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR2'
    end
    object Qr_IDVIDPULAR3: TFloatField
      FieldName = 'IDPULAR3'
      Origin = 'SG_ASSOC.CADIDV.IDPULAR3'
    end
    object Qr_IDVIDQTDCOL: TFloatField
      FieldName = 'IDQTDCOL'
      Origin = 'SG_ASSOC.CADIDV.IDQTDCOL'
    end
    object Qr_IDVIDQTDCP: TFloatField
      FieldName = 'IDQTDCP'
      Origin = 'SG_ASSOC.CADIDV.IDQTDCP'
    end
    object Qr_IDVIDQTDJ: TFloatField
      FieldName = 'IDQTDJ'
      Origin = 'SG_ASSOC.CADIDV.IDQTDJ'
    end
    object Qr_IDVIDFPADRAO: TFloatField
      FieldName = 'IDFPADRAO'
      Origin = 'SG_ASSOC.CADIDV.IDFPADRAO'
    end
    object Qr_IDVIDQTDLPP: TFloatField
      FieldName = 'IDQTDLPP'
      Origin = 'SG_ASSOC.CADIDV.IDQTDLPP'
    end
  end
  object Src_IDV: TDataSource
    DataSet = Qr_IDV
    Left = 392
    Top = 192
  end
end
