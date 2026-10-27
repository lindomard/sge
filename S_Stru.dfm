object frm_stru: Tfrm_stru
  Left = 114
  Top = 82
  Width = 1132
  Height = 655
  Caption = 'estruturas'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 232
    Top = 128
    Width = 145
    Height = 33
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 576
    Width = 1124
    Height = 48
    Align = alBottom
    TabOrder = 0
    object INICIAR: TBitBtn
      Left = 2
      Top = 2
      Width = 77
      Height = 42
      Caption = 'Verificar Agora'
      TabOrder = 0
      OnClick = INICIARClick
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
    object SAIR: TBitBtn
      Left = 705
      Top = 3
      Width = 90
      Height = 41
      Caption = '&Sair do Programa'
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object INDICES: TBitBtn
      Left = 319
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Criar Indices'
      TabOrder = 2
      OnClick = INDICESClick
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
    object SELECAO: TBitBtn
      Left = 473
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Selec'#227'o tabelas'
      TabOrder = 3
      OnClick = SELECAOClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object delindices: TBitBtn
      Left = 396
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Deletar Indices'
      TabOrder = 4
      OnClick = delindicesClick
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
    object BitBtn1: TBitBtn
      Left = 551
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Eliminar Nullos'
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbCriarTriggers: TBitBtn
      Left = 242
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Criar &Triggers'
      TabOrder = 6
      OnClick = bbCriarTriggersClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333FFF33F333FF3F330E0330FFFCCFCC33777FF7F3377F7730EEE030FFFC
        CFCC377777F7F33773770EEE0000FFFFFCCF777777773F33377FEEE0BFBF0FFF
        FCCF7777333373F337730E0BFBFBF0FFCCFF77733333373F77F330BFBFBFBF0F
        CCFF37F333333F7F773330FBFBFB0B0FFFFF37F3F33F737FFFFF30B0BF0FB000
        000037F73F73F777777730FB0BF0FB0FFFFF373F73F73F7F333F330030BF0F0F
        FF993F77373F737F3377CC33330BF00FFF9977FFF373F77F3F77CC993330009F
        99FF7777F337777F77F333993330F99F99FF3F77FF37F773773F993CC330FFF9
        9F9977F77F37F3377F77993CC330FFF99F997737733733377377}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbcompras: TBitBtn
      Left = 155
      Top = 3
      Width = 86
      Height = 41
      Caption = 'Atualizar Compras'
      TabOrder = 7
      OnClick = bbcomprasClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333FFF33F333FF3F330E0330FFFCCFCC33777FF7F3377F7730EEE030FFFC
        CFCC377777F7F33773770EEE0000FFFFFCCF777777773F33377FEEE0BFBF0FFF
        FCCF7777333373F337730E0BFBFBF0FFCCFF77733333373F77F330BFBFBFBF0F
        CCFF37F333333F7F773330FBFBFB0B0FFFFF37F3F33F737FFFFF30B0BF0FB000
        000037F73F73F777777730FB0BF0FB0FFFFF373F73F73F7F333F330030BF0F0F
        FF993F77373F737F3377CC33330BF00FFF9977FFF373F77F3F77CC993330009F
        99FF7777F337777F77F333993330F99F99FF3F77FF37F773773F993CC330FFF9
        9F9977F77F37F3377F77993CC330FFF99F997737733733377377}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbElim_: TBitBtn
      Left = 628
      Top = 3
      Width = 77
      Height = 41
      Caption = 'Eliminar _'
      TabOrder = 8
      OnClick = bbElim_Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSoEstruturas: TBitBtn
      Left = 78
      Top = 2
      Width = 77
      Height = 42
      Caption = 'So Estruturas'
      TabOrder = 9
      OnClick = bbSoEstruturasClick
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
    object bbCorrigirObsPro: TBitBtn
      Left = 827
      Top = 12
      Width = 245
      Height = 20
      Caption = 'Corrigir Obs Pro'
      TabOrder = 10
      OnClick = bbCorrigirObsProClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1124
    Height = 576
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Campos Padr'#245'es'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 548
        Align = alClient
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 123
          Width = 1110
          Height = 20
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Label2'
          Visible = False
        end
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 1110
          Height = 122
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Verificando Estruturas Aguarde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -35
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          WordWrap = True
        end
        object Label3: TLabel
          Left = 309
          Top = 205
          Width = 64
          Height = 13
          Caption = 'Filtrar Tabela:'
        end
        object lbl_per01: TLabel
          Left = 308
          Top = 226
          Width = 66
          Height = 13
          Caption = 'Filtar Per'#237'odo:'
          Visible = False
        end
        object lbl_per02: TLabel
          Left = 429
          Top = 226
          Width = 6
          Height = 13
          Caption = #224
          Visible = False
        end
        object STG1: TStringGrid
          Left = 1
          Top = 534
          Width = 1110
          Height = 9
          Align = alBottom
          ColCount = 7
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          TabOrder = 0
          Visible = False
          ColWidths = (
            197
            156
            64
            64
            64
            64
            64)
        end
        object CB_ALTCAMPOS: TCheckBox
          Left = 5
          Top = 145
          Width = 214
          Height = 16
          Caption = 'Deletar e Diminuir tamanho de campos'
          TabOrder = 1
          Visible = False
        end
        object bbGerarEst: TBitBtn
          Left = 692
          Top = 168
          Width = 87
          Height = 26
          Caption = 'Gerar Estoque'
          TabOrder = 2
          Visible = False
          OnClick = bbGerarEstClick
        end
        object bb_Anchieta: TBitBtn
          Left = 596
          Top = 169
          Width = 95
          Height = 25
          Caption = 'Sub. CFO Entrada'
          TabOrder = 3
          Visible = False
          OnClick = bb_AnchietaClick
        end
        object Memo1: TMemo
          Left = 449
          Top = 203
          Width = 325
          Height = 17
          Lines.Strings = (
            'Memo1')
          TabOrder = 4
          Visible = False
          WordWrap = False
        end
        object bbTabela_Exp: TBitBtn
          Left = 408
          Top = 169
          Width = 90
          Height = 25
          Caption = 'Tabela Exportar'
          TabOrder = 5
          Visible = False
          OnClick = bbTabela_ExpClick
        end
        object bbIndices: TBitBtn
          Left = 1
          Top = 205
          Width = 95
          Height = 42
          Caption = 'Indices n'#227'o Criado'
          TabOrder = 6
          OnClick = bbIndicesClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object MNOMTAB: TEdit
          Left = 381
          Top = 201
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object bbAjustarTriggers: TBitBtn
          Left = 96
          Top = 206
          Width = 96
          Height = 41
          Caption = 'Ajustar Triggers'
          TabOrder = 8
          OnClick = bbAjustarTriggersClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
            0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
            B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
            FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
            FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
            FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
            0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
            0555555555777777755555555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbdeltriggers: TBitBtn
          Left = 1
          Top = 163
          Width = 95
          Height = 42
          Caption = 'Deletar Triggers'
          TabOrder = 9
          Visible = False
          OnClick = bbdeltriggersClick
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
        object bbZerar: TBitBtn
          Left = 192
          Top = 206
          Width = 111
          Height = 41
          Caption = 'Zerar Devolu'#231#245'es'
          TabOrder = 10
          Visible = False
          OnClick = bbZerarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object bbLayOut: TBitBtn
          Left = 97
          Top = 163
          Width = 95
          Height = 42
          Caption = 'Imprimir LayOut'
          TabOrder = 11
          Visible = False
          OnClick = bbLayOutClick
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
        object MDT1: TMaskEdit
          Left = 376
          Top = 223
          Width = 70
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 12
          Text = '  /  /    '
          Visible = False
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 454
          Top = 223
          Width = 69
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 13
          Text = '  /  /    '
          Visible = False
          OnExit = MDT2Exit
        end
        object bbExpHelp: TBitBtn
          Left = 307
          Top = 169
          Width = 100
          Height = 25
          Caption = 'Exportar Help'
          TabOrder = 14
          Visible = False
          OnClick = bbExpHelpClick
        end
        object bbdelTemp: TBitBtn
          Left = 626
          Top = 220
          Width = 99
          Height = 25
          Caption = 'Deletar Temporarios'
          TabOrder = 15
          Visible = False
          OnClick = bbdelTempClick
        end
        object bbAjusped: TBitBtn
          Left = 527
          Top = 256
          Width = 185
          Height = 24
          Caption = 'Ajustar Pre'#231'o de Compra'
          TabOrder = 16
          Visible = False
          OnClick = bbAjuspedClick
        end
        object bbGerarGrade: TBitBtn
          Left = 527
          Top = 221
          Width = 99
          Height = 24
          Caption = 'Gerar Grades'
          TabOrder = 17
          Visible = False
          OnClick = bbGerarGradeClick
        end
        object bbAtualizaFone: TBitBtn
          Left = 527
          Top = 281
          Width = 185
          Height = 24
          Caption = '&Atualizar Informa'#231#245'es Cadastrais'
          TabOrder = 18
          Visible = False
          OnClick = bbAtualizaFoneClick
        end
        object bbMonitora: TBitBtn
          Left = 1
          Top = 267
          Width = 95
          Height = 42
          Caption = 'Monitora Estoque'
          TabOrder = 19
          Visible = False
          OnClick = bbMonitoraClick
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
        object bbCancelMonitora: TBitBtn
          Left = 97
          Top = 267
          Width = 114
          Height = 42
          Caption = 'Cancela Monitoramento'
          TabOrder = 20
          Visible = False
          OnClick = bbCancelMonitoraClick
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
        object bbHistPro: TBitBtn
          Left = 212
          Top = 267
          Width = 114
          Height = 42
          Caption = 'Hist'#243'rico do Produto'
          TabOrder = 21
          Visible = False
          OnClick = bbHistProClick
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
        object bbGerarTitulos: TBitBtn
          Left = 499
          Top = 169
          Width = 97
          Height = 25
          Caption = 'Gerar T'#237'tulos'
          TabOrder = 22
          Visible = False
          OnClick = bbGerarTitulosClick
        end
        object bbFPgto: TBitBtn
          Left = 192
          Top = 180
          Width = 111
          Height = 25
          Caption = 'Corrigir Formas Pgto'
          TabOrder = 23
          Visible = False
          OnClick = bbFPgtoClick
        end
        object bb_nfecadver: TBitBtn
          Left = 527
          Top = 306
          Width = 185
          Height = 24
          Caption = 'Corrigir NFE_CADVER'
          TabOrder = 24
          OnClick = bb_nfecadverClick
        end
        object recriar_tabela: TButton
          Left = 528
          Top = 336
          Width = 185
          Height = 25
          Caption = 'Recriar Tabela Erro ao Importar'
          TabOrder = 25
          OnClick = recriar_tabelaClick
        end
        object btn_corrigeund: TButton
          Left = 529
          Top = 362
          Width = 185
          Height = 25
          Caption = 'Corrigir P2UND'
          TabOrder = 26
          OnClick = btn_corrigeundClick
        end
        object btnCorrigirSequence: TButton
          Left = 529
          Top = 394
          Width = 185
          Height = 25
          Caption = 'Criar Sequencia Android/Venda Online'
          TabOrder = 27
          OnClick = btnCorrigirSequenceClick
        end
        object Button3: TButton
          Left = 97
          Top = 474
          Width = 185
          Height = 25
          Caption = 'Gera Planilha CSV'
          TabOrder = 28
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Registros Duplicados'
      ImageIndex = 1
      object Label4: TLabel
        Left = 496
        Top = 330
        Width = 44
        Height = 13
        Caption = 'Ped. Old:'
      end
      object Label5: TLabel
        Left = 252
        Top = 390
        Width = 44
        Height = 13
        Caption = 'Prod Old:'
      end
      object Label8: TLabel
        Left = 493
        Top = 428
        Width = 36
        Height = 13
        Caption = 'Lic.Old:'
      end
      object Label26: TLabel
        Left = 741
        Top = 26
        Width = 83
        Height = 13
        Caption = 'Ped Compra Chv:'
      end
      object bbDuplic: TBitBtn
        Left = 0
        Top = 1
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup do Arquivo de Pedidos 02(CADP02)'
        TabOrder = 0
        OnClick = bbDuplicClick
      end
      object bbAjusNe: TBitBtn
        Left = 0
        Top = 20
        Width = 245
        Height = 20
        Caption = 'Ajustar Notas de Entradas Repetidas(CADNE)'
        TabOrder = 1
        OnClick = bbAjusNeClick
      end
      object bbAjusPro: TBitBtn
        Left = 0
        Top = 39
        Width = 245
        Height = 20
        Caption = 'Ajustar Produtos Repetidos(CADPRO)'
        TabOrder = 2
        OnClick = bbAjusProClick
      end
      object bbAjusCRec: TBitBtn
        Left = 0
        Top = 58
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicatas a Receber Repetidas(CADDAR)'
        TabOrder = 3
        OnClick = bbAjusCRecClick
      end
      object bbAjusLDR: TBitBtn
        Left = 0
        Top = 96
        Width = 245
        Height = 20
        Caption = 'Ajustar Movimento do Caixa Duplicado(CADLDR)'
        TabOrder = 4
        OnClick = bbAjusLDRClick
      end
      object bbAjusAju: TBitBtn
        Left = 0
        Top = 115
        Width = 245
        Height = 20
        Caption = 'Ajustar no Arquivo de Ajuste Duplicado(CADAJU)'
        TabOrder = 5
        OnClick = bbAjusAjuClick
      end
      object bbAjusCPag: TBitBtn
        Left = 0
        Top = 77
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicatas a Pagar Repetidas(CADDAP)'
        TabOrder = 6
        OnClick = bbAjusCPagClick
      end
      object bbTrocaEmp: TBitBtn
        Left = 0
        Top = 154
        Width = 245
        Height = 20
        Caption = 'Trocar Pedidos de Empresa(RESTRITO)'
        TabOrder = 7
        Visible = False
        OnClick = bbTrocaEmpClick
      end
      object bbEstoque: TBitBtn
        Left = 0
        Top = 134
        Width = 245
        Height = 20
        Caption = 'Ajustar no Arquivo de Estoque(CADEST)'
        TabOrder = 8
        OnClick = bbEstoqueClick
      end
      object bbInstSql: TBitBtn
        Left = 248
        Top = 308
        Width = 245
        Height = 20
        Caption = 'Gerar Instru'#231#245'es SQL'
        TabOrder = 9
        OnClick = bbInstSqlClick
      end
      object bbAjustaPF: TBitBtn
        Left = 0
        Top = 173
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. do Ped.Fornecedor 02(CADPF2)'
        TabOrder = 10
        OnClick = bbAjustaPFClick
      end
      object BitBtn2: TBitBtn
        Left = 0
        Top = 212
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Arquivo de Pedidos 01(CADP01)'
        TabOrder = 11
        OnClick = BitBtn2Click
      end
      object bbAjustaNS: TBitBtn
        Left = 0
        Top = 311
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Arquivo de Notas de Sa'#237'das(CADNS)'
        TabOrder = 12
        OnClick = bbAjustaNSClick
      end
      object bbCadp01v: TBitBtn
        Left = 0
        Top = 250
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade do Arquivo (CADP01V)'
        TabOrder = 13
        OnClick = bbCadp01vClick
      end
      object bbAjusta_CADLGC: TBitBtn
        Left = 0
        Top = 330
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Arquivo de Grades/Lotes(CADLGC)'
        TabOrder = 14
        OnClick = bbAjusta_CADLGCClick
      end
      object bbCheques: TBitBtn
        Left = -1
        Top = 349
        Width = 245
        Height = 20
        Caption = 'Ajusta Duplicidade de &Cheques(CADCHQ)'
        TabOrder = 15
        OnClick = bbChequesClick
      end
      object bbCadp01D: TBitBtn
        Left = 0
        Top = 231
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Arquivo de Pedidos 01D(CADP01D)'
        TabOrder = 16
        OnClick = bbCadp01DClick
      end
      object bbCadPen: TBitBtn
        Left = -1
        Top = 368
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do arquivo de Pend. Ped(CADPEN)'
        TabOrder = 17
        OnClick = bbCadPenClick
      end
      object bbTempor: TBitBtn
        Left = 248
        Top = 327
        Width = 245
        Height = 20
        Caption = 'Temporario Programa'#231#227'o'
        TabOrder = 18
        OnClick = bbTemporClick
      end
      object bbEstDia: TBitBtn
        Left = -1
        Top = 387
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Estoque Diario(CADEDIA)'
        TabOrder = 19
        OnClick = bbEstDiaClick
      end
      object bbReComis: TBitBtn
        Left = 249
        Top = 174
        Width = 245
        Height = 19
        Caption = '&Recalcular Comiss'#227'o'
        TabOrder = 20
        OnClick = bbReComisClick
      end
      object bbFPCRDUP: TBitBtn
        Left = -1
        Top = 402
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade do Arquivo FPCR'
        TabOrder = 21
        OnClick = bbFPCRDUPClick
      end
      object bbCodpfor: TBitBtn
        Left = 0
        Top = 192
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do  Arquivo de CODPFOR(CODPFOR)'
        TabOrder = 22
        OnClick = bbCodpforClick
      end
      object bbSoumRel: TBitBtn
        Left = 0
        Top = 486
        Width = 245
        Height = 20
        Caption = 'Deixar So um Relacionamento CODPFOR'
        TabOrder = 23
        OnClick = bbSoumRelClick
      end
      object bbProSemRel: TBitBtn
        Left = 249
        Top = 20
        Width = 245
        Height = 20
        Caption = 'Eliminar Produtos sem Relacionamento'
        TabOrder = 24
        OnClick = bbProSemRelClick
      end
      object bbAjustarDupPV: TBitBtn
        Left = 249
        Top = 39
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. &Plano de Vendas(CADPV/CADPV2)'
        TabOrder = 25
        OnClick = bbAjustarDupPVClick
      end
      object bbAjustaDupPar: TBitBtn
        Left = 249
        Top = 59
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. Arquivo de Parametros(CADPAR)'
        TabOrder = 26
        OnClick = bbAjustaDupParClick
      end
      object bbCadMI: TBitBtn
        Left = 249
        Top = 78
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Mapa Resumo(CADMI01/02)'
        TabOrder = 27
        OnClick = bbCadMIClick
      end
      object bbCadCSF: TBitBtn
        Left = 249
        Top = 97
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade Consumidor Final (CADCSF)'
        TabOrder = 28
        OnClick = bbCadCSFClick
      end
      object bbAjustar_bairro: TBitBtn
        Left = 249
        Top = 117
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bairros(CADBAI)'
        TabOrder = 29
        OnClick = bbAjustar_bairroClick
      end
      object bbCadUF: TBitBtn
        Left = 249
        Top = 136
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Estados(CADUF)'
        TabOrder = 30
        OnClick = bbCadUFClick
      end
      object bbEstGrade: TBitBtn
        Left = 249
        Top = 155
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arq. Estoque Diario(Grade)(CADEGD)'
        TabOrder = 31
        OnClick = bbEstGradeClick
      end
      object bbDupProm: TBitBtn
        Left = 249
        Top = 194
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Promocoes(CADPPR)'
        TabOrder = 32
        OnClick = bbDupPromClick
      end
      object bbDarChPed: TBitBtn
        Left = 248
        Top = 232
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades CADNS_NFEEVE'
        TabOrder = 33
        OnClick = bbDarChPedClick
      end
      object bbCadtp: TBitBtn
        Left = 248
        Top = 251
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de Produtos(CADTP)'
        TabOrder = 34
        OnClick = bbCadtpClick
      end
      object CHAVERET: TEdit
        Left = 547
        Top = 328
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 35
      end
      object bbBuscarAgora: TBitBtn
        Left = 626
        Top = 329
        Width = 111
        Height = 20
        Caption = 'Buscar Agora Gera Nova'
        TabOrder = 36
        OnClick = bbBuscarAgoraClick
      end
      object BitBtn3: TBitBtn
        Left = 248
        Top = 270
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades das Minutas(CADMIN2)'
        TabOrder = 37
        OnClick = BitBtn3Click
      end
      object bbCadgru: TBitBtn
        Left = 248
        Top = 289
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades Grupod de Produtos(CADGRU)'
        TabOrder = 38
        OnClick = bbCadgruClick
      end
      object bbEstPratDep: TBitBtn
        Left = 248
        Top = 346
        Width = 245
        Height = 20
        Caption = 'Ajustar Estoque(Prateleira/Deposito/Reparo)'
        TabOrder = 39
        OnClick = bbEstPratDepClick
      end
      object bbCadBal02: TBitBtn
        Left = 248
        Top = 365
        Width = 245
        Height = 20
        Caption = 'Ajustar dup. Arquivo de Balanco(CADBAL02)'
        TabOrder = 40
        OnClick = bbCadBal02Click
      end
      object bbcadpf01v: TBitBtn
        Left = 0
        Top = 269
        Width = 245
        Height = 20
        Caption = ' Ajustar Dup. do Ped.Fornec Vcto(CADPF1V)'
        TabOrder = 41
        OnClick = bbcadpf01vClick
      end
      object bbigualProEst: TBitBtn
        Left = 248
        Top = 422
        Width = 245
        Height = 20
        Caption = 'Igualar CADEST/CADPRO'
        TabOrder = 42
        OnClick = bbigualProEstClick
      end
      object bbCadTra: TBitBtn
        Left = 248
        Top = 403
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bairros(CADTRA)'
        TabOrder = 43
        OnClick = bbCadTraClick
      end
      object bbReEntrada: TBitBtn
        Left = 0
        Top = 524
        Width = 245
        Height = 20
        Caption = 'Recriar lotes de Entradas'
        TabOrder = 44
      end
      object bbQtdAtendidas: TBitBtn
        Left = 496
        Top = 39
        Width = 245
        Height = 20
        Caption = 'Criar Unidades Atendidas'
        TabOrder = 45
        OnClick = bbQtdAtendidasClick
      end
      object bbAtuaFPag: TBitBtn
        Left = 496
        Top = 59
        Width = 245
        Height = 20
        Caption = 'Atualizar Prazos das Formas de Pagamentos'
        TabOrder = 46
        OnClick = bbAtuaFPagClick
      end
      object bbTestar: TBitBtn
        Left = 496
        Top = 79
        Width = 245
        Height = 20
        Caption = 'Testar Campos CADUF'
        TabOrder = 47
        OnClick = bbTestarClick
      end
      object bbBaixarDup: TBitBtn
        Left = 496
        Top = 99
        Width = 245
        Height = 20
        Caption = 'Baixar Duplicatas Sobrepostas(NAZARE)'
        TabOrder = 48
        OnClick = bbBaixarDupClick
      end
      object bbCadUF_TPPED: TBitBtn
        Left = 496
        Top = 136
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de CADUF_TPPED'
        TabOrder = 49
        OnClick = bbCadUF_TPPEDClick
      end
      object bbCorCidade: TBitBtn
        Left = 495
        Top = 155
        Width = 245
        Height = 20
        Caption = 'Corrigir Cidades no Cadastro de Clientes'
        TabOrder = 50
        OnClick = bbCorCidadeClick
      end
      object bbAjustarDatas: TBitBtn
        Left = 494
        Top = 174
        Width = 245
        Height = 20
        Caption = 'Ajustar Data do Caixa para Data Pgto(a pagar)'
        TabOrder = 51
        OnClick = bbAjustarDatasClick
      end
      object bbErroTroco: TBitBtn
        Left = 494
        Top = 194
        Width = 245
        Height = 20
        Caption = 'C'#243'rrigir erro de Troco DO SGE FRENTE'
        TabOrder = 52
        OnClick = bbErroTrocoClick
      end
      object bbcepmysql: TBitBtn
        Left = 494
        Top = 213
        Width = 245
        Height = 18
        Caption = 'Criar Insert para CEP mysql-linux'
        TabOrder = 53
        OnClick = bbcepmysqlClick
      end
      object bbDARDAPCX: TBitBtn
        Left = 493
        Top = 231
        Width = 245
        Height = 20
        Caption = 'Ajustar Dep/Centro Custo apagar/Rec c/Caixa'
        TabOrder = 54
        OnClick = bbDARDAPCXClick
      end
      object BitBtn4: TBitBtn
        Left = 493
        Top = 250
        Width = 245
        Height = 20
        Caption = 'Atualiza Terminal Service'
        TabOrder = 55
        OnClick = BitBtn4Click
      end
      object bbAjuDupCli: TBitBtn
        Left = 494
        Top = 270
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Clientes'
        TabOrder = 56
        OnClick = bbAjuDupCliClick
      end
      object bbAjustar_banco: TBitBtn
        Left = 247
        Top = 461
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bancos(CADBCO)'
        TabOrder = 57
        OnClick = bbAjustar_bancoClick
      end
      object bbordemped: TBitBtn
        Left = 493
        Top = 289
        Width = 245
        Height = 20
        Caption = 'Ajustar Ordem/Pagina no CADP01'
        TabOrder = 58
        OnClick = bbAjuDupCliClick
      end
      object bbAbaterNegativo: TBitBtn
        Left = 493
        Top = 308
        Width = 190
        Height = 20
        Caption = 'Abater Lote Negativo Onde ha Positivo'
        TabOrder = 59
        OnClick = bbAbaterNegativoClick
      end
      object bbCabAcTab: TBitBtn
        Left = -1
        Top = 443
        Width = 245
        Height = 20
        Caption = 'Ajustar Acesso Por Tabela(CADACTAB)'
        TabOrder = 60
        OnClick = bbCabAcTabClick
      end
      object prod_old: TEdit
        Left = 304
        Top = 387
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 61
      end
      object GerarNovoPro: TBitBtn
        Left = 381
        Top = 386
        Width = 111
        Height = 20
        Caption = 'Gerar Novo'
        TabOrder = 62
        OnClick = GerarNovoProClick
      end
      object BitBtn6: TBitBtn
        Left = 492
        Top = 388
        Width = 245
        Height = 20
        Caption = 'Corrigir Aniversariantes(CADANI)'
        TabOrder = 63
        OnClick = BitBtn6Click
      end
      object BBPENPRO: TBitBtn
        Left = 491
        Top = 407
        Width = 245
        Height = 20
        Caption = 'Corrigir Pendencias CADPRO'
        TabOrder = 64
        OnClick = BBPENPROClick
      end
      object CHAVELC1: TEdit
        Left = 541
        Top = 423
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 65
      end
      object BitBtn8: TBitBtn
        Left = 625
        Top = 424
        Width = 111
        Height = 20
        Caption = 'Buscar Agora Gera Nova'
        TabOrder = 66
        OnClick = BitBtn8Click
      end
      object bbCodFor: TBitBtn
        Left = -1
        Top = 464
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Fornecedor(CADFOR)'
        TabOrder = 67
        OnClick = bbCodForClick
      end
      object bb_duptpdre: TBitBtn
        Left = 248
        Top = 442
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADTPDRE'
        TabOrder = 68
        OnClick = bb_duptpdreClick
      end
      object BBNIVPRO: TBitBtn
        Left = 495
        Top = 441
        Width = 242
        Height = 20
        Caption = 'Corrigir Nivel do Produto'
        TabOrder = 69
        OnClick = BBNIVPROClick
      end
      object bbCadCli: TBitBtn
        Left = 247
        Top = 2
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Clientes (CADCLI)'
        TabOrder = 70
        OnClick = bbCadCliClick
      end
      object bbFpag: TBitBtn
        Left = 0
        Top = 504
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.das Formas de Pagamentos (CADFP)'
        TabOrder = 71
        OnClick = bbFpagClick
      end
      object bbDupEmp: TBitBtn
        Left = 493
        Top = 460
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades de Empresa (CADEMP)'
        TabOrder = 72
        OnClick = bbDupEmpClick
      end
      object BitBtn10: TBitBtn
        Left = 496
        Top = 119
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de CADTIPPED'
        TabOrder = 73
        OnClick = BitBtn10Click
      end
      object bbfpcrduptit: TBitBtn
        Left = -1
        Top = 421
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade do Arquivo FPCRDUP TITULOS'
        TabOrder = 74
        OnClick = bbfpcrduptitClick
      end
      object bbArredonda: TBitBtn
        Left = 247
        Top = 482
        Width = 245
        Height = 20
        Caption = 'Arredondar Decimais das Quantidades'
        TabOrder = 75
        OnClick = bbArredondaClick
      end
      object bbArredondaPU: TBitBtn
        Left = 495
        Top = 483
        Width = 245
        Height = 20
        Caption = 'Arredondar Decimais das Pre'#231'os Unitarios'
        TabOrder = 76
        OnClick = bbArredondaPUClick
      end
      object bbdupCADCV: TBitBtn
        Left = 249
        Top = 213
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Promocoes(CADCV)'
        TabOrder = 77
        OnClick = bbdupCADCVClick
      end
      object bbfpcp: TBitBtn
        Left = 494
        Top = 349
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade FPCP'
        TabOrder = 78
        OnClick = bbfpcpClick
      end
      object bbfpcpdup: TBitBtn
        Left = 495
        Top = 368
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade FPCPDUP'
        TabOrder = 79
        OnClick = bbfpcpdupClick
      end
      object bbcadrcli: TBitBtn
        Left = 496
        Top = 1
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADRCLI'
        TabOrder = 80
        OnClick = bbcadrcliClick
      end
      object bbcadecf_cat52_download: TBitBtn
        Left = 493
        Top = 505
        Width = 245
        Height = 20
        Caption = 'Duplicidade CADECF_CAT52_DOWNLOAD'
        TabOrder = 81
        OnClick = bbcadecf_cat52_downloadClick
      end
      object BitBtn5: TBitBtn
        Left = 494
        Top = 20
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.CADP02_LOTES'
        TabOrder = 82
        OnClick = BitBtn5Click
      end
      object BitBtn11: TBitBtn
        Left = 246
        Top = 501
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADDWORD_TAB01/02'
        TabOrder = 83
        OnClick = BitBtn11Click
      end
      object edt_codpro: TEdit
        Left = 683
        Top = 310
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 84
      end
      object BitBtn14: TBitBtn
        Left = 245
        Top = 519
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.CADPF22_LOTES_ORC'
        TabOrder = 85
        OnClick = BitBtn14Click
      end
      object BitBtn15: TBitBtn
        Left = 493
        Top = 523
        Width = 245
        Height = 20
        Caption = 'cadped di'
        TabOrder = 86
        OnClick = BitBtn15Click
      end
      object BitBtn21: TBitBtn
        Left = 746
        Top = 3
        Width = 245
        Height = 20
        Caption = 'Corrigir CadMov_Prod(balanco);'
        TabOrder = 87
        OnClick = BitBtn21Click
      end
      object edt_chave_old_pf: TEdit
        Left = 826
        Top = 24
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 88
      end
      object BitBtnOldPFor: TBitBtn
        Left = 912
        Top = 23
        Width = 169
        Height = 20
        Caption = 'Resgatar Ped Compras Cab 01'
        TabOrder = 89
        OnClick = BitBtnOldPForClick
      end
      object bbCadImpSys: TBitBtn
        Left = 744
        Top = 41
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADIMP_SYS'
        TabOrder = 90
        OnClick = bbCadImpSysClick
      end
      object bbCADETIVOL: TBitBtn
        Left = 744
        Top = 61
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADETIVOL'
        TabOrder = 91
        OnClick = bbCADETIVOLClick
      end
      object bbAjusCadCus: TBitBtn
        Left = 744
        Top = 81
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADCUS'
        TabOrder = 92
        OnClick = bbAjusCadCusClick
      end
      object bbAjusCadMovProd: TBitBtn
        Left = 745
        Top = 103
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADMOV_PROD'
        TabOrder = 93
        OnClick = bbAjusCadMovProdClick
      end
      object bbcadpf01: TBitBtn
        Left = 3
        Top = 288
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. do Ped.Fornec. 1.(CADPF1)'
        TabOrder = 94
        OnClick = bbcadpf01Click
      end
      object BitBtn22: TBitBtn
        Left = 745
        Top = 143
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADTIT_CAUCAO_CAB'
        TabOrder = 95
        OnClick = bbAjusCadMovProdClick
      end
      object BitBtn24: TBitBtn
        Left = 747
        Top = 163
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade Buscar e Testar ID'
        TabOrder = 96
        OnClick = BitBtn24Click
      end
      object bbAjuDupCadlogSis: TBitBtn
        Left = 743
        Top = 122
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades CADLOGSIS - Logomarcas'
        TabOrder = 97
        OnClick = bbAjusCadMovProdClick
      end
      object bbDupCadPcus: TBitBtn
        Left = 747
        Top = 185
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADPCUS'
        TabOrder = 98
        OnClick = bbDupCadPcusClick
      end
      object bbDupFilpad: TBitBtn
        Left = 747
        Top = 208
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade FILPAD'
        TabOrder = 99
        OnClick = bbDupFilpadClick
      end
      object bbCadAce: TBitBtn
        Left = 747
        Top = 230
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADACE'
        TabOrder = 100
        OnClick = bbCadAceClick
      end
      object bbCTDVOP: TBitBtn
        Left = 763
        Top = 262
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CTDVOP'
        TabOrder = 101
        OnClick = bbCTDVOPClick
      end
      object BitBtn25: TBitBtn
        Left = 763
        Top = 302
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADCSERV'
        TabOrder = 102
        OnClick = BitBtn25Click
      end
      object BitBtn26: TBitBtn
        Left = 763
        Top = 334
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADREMBCO'
        TabOrder = 103
        OnClick = BitBtn26Click
      end
      object BitBtn27: TBitBtn
        Left = 763
        Top = 374
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADCST_ICMS_CBENEF'
        TabOrder = 104
        OnClick = BitBtn27Click
      end
      object BitBtn28: TBitBtn
        Left = 763
        Top = 406
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADCNAE todos'
        TabOrder = 105
        OnClick = BitBtn28Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Outros'
      ImageIndex = 2
      object TextoTmp: TRichEdit
        Left = 32
        Top = 18
        Width = 779
        Height = 68
        Color = 12123134
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Texto')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 0
        Top = 92
        Width = 245
        Height = 20
        Caption = 'Replicar Itens na outra Empresa CADPRO'
        TabOrder = 1
        OnClick = BitBtn9Click
      end
      object pc_triggers: TPageControl
        Left = 0
        Top = 355
        Width = 1116
        Height = 193
        ActivePage = tsCadp02_NR
        Align = alBottom
        TabOrder = 2
        object tsCADPF: TTabSheet
          Caption = 'tsCADPF'
          ImageIndex = 2
          object memo_triggers_cadpf: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADPF02_ORC_TEMP_TRIG01 AFTER INSERT O' +
                'N CADPF2_ORC_TEMP'
              ''
              'FOR EACH ROW'
              ''
              ''
              'declare mDiferSaldo NUMBER;'
              '        mTotalPed NUMBER;'
              '        mTotalPed_QTD NUMBER;'
              '        mTotIPI NUMBER;'
              '        mTotMer NUMBER;'
              '        mTotMer_QTD NUMBER;'
              '        mTotIcmsR NUMBER;'
              '        mTotBaseR NUMBER;'
              '        mTotIcmsN NUMBER;'
              '        mTotVICMSDESON NUMBER;'
              '        mTotVICMSDESON_DEDUZ NUMBER;'
              '        mTotBaseN NUMBER;'
              '        mValFre NUMBER;'
              '        mValOutVDup NUMBER;'
              '        mValFre_ICMS_VALOR NUMBER;'
              ''
              '        mQtdxPreco NUMBER;'
              '        mTotDes NUMBER;'
              '        mImp_Imp_Valor NUMBER;'
              '        mPercRat NUMBER;'
              '        mValorDup NUMBER;'
              '        mDifDup NUMBER;'
              '        mItemPed NUMBER;'
              '        pos_ini INTEGER;'
              '        namelength INTEGER;'
              '        l_loop INTEGER;'
              '        mCalcDiv_Valor NUMBER;'
              '        mCalcDiv_Difer NUMBER;'
              '        mCalcDiv_Perc NUMBER;'
              '        mCalcDiv_Tempor NUMBER;'
              '        mCalcDiv_Qtd NUMBER;'
              ''
              ''
              'BEGIN'
              'mDiferSaldo:=0;'
              'mTotalPed:=0;'
              'mTotalPed_QTD:=0;'
              'mTotIcmsR:=0;'
              'mTotBaseR:=0;'
              'mTotBaseN:=0;'
              'mTotIcmsN:=0;'
              'mTotVICMSDESON:=0;'
              'mTotVICMSDESON_DEDUZ :=0;'
              ''
              'mTotMer:=0;'
              'mTotMer_QTD:=0;'
              'mQtdxPreco:=0;'
              'mTotDes:=0;'
              'mPercRat:=0;'
              'mValorDup:=0;'
              'mDifDup:=0;'
              'mItemPed:=0;'
              'pos_ini:=1;'
              'namelength:=0;'
              'l_loop:=0;'
              'mPercRat:=0;'
              ''
              'if :NEW.PF2T_TIPO_EVENTO=0 then'
              '   Insert into CADPF2'
              '                          ('
              '                           PF2CODEMP'
              '                          ,PF2ID_PF01_NEW'
              '                          ,PF2ID_NEW'
              '                          ,PF2CHAVE'
              '                          ,PF2LOTSEQ'
              '                          ,PF2ITEM'
              '                          ,PF2CODPRO'
              '                          ,PF2QTDP'
              '                          ,PF2DESC01'
              '                          ,PF2DESC02'
              '                          ,PF2DESC03'
              '                          ,PF2VALDES'
              '                          ,PF2PU'
              '                          ,PF2SIT'
              '                          ,PF2CST_PIS'
              '                          ,PF2CST_COFINS'
              '                          ,PF2CST_IPI'
              '                          ,PF2CSOSN'
              '                          ,PF2CSOSN_ORI'
              '                          ,PF2PREDICMNOR'
              '                          ,PF2MODBCST'
              '                          ,PF2ST_IVA'
              '                          ,PF2ST_PERCRED'
              '                          ,PF2ST_ICMSCRED'
              '                          ,PF2ST_ICMSDEB'
              '                          ,PF2BASER'
              '                          ,PF2ICMSR'
              '                          ,PF2PMC'
              '                          ,PF2ALIPI'
              '                          ,PF2IPI_PRED'
              '                          ,PF2ALIQ'
              '                          ,PF2CFO'
              '                          ,PF2PIS_PERC'
              '                          ,PF2COFINS_PERC'
              '                          ,PF2DESC_COMPL'
              '                          ,PF2ICMSSN_PERC'
              '                          ,PF2SITUACAO'
              '                          ,PF2DESC_CABEC'
              '                          ,PF2IPIQTDUNID'
              '                          ,PF2IPIVUNID'
              '                          ,PF2PISQTDUNID'
              '                          ,PF2PISVUNID'
              '                          ,PF2CBENEF'
              '                          ,PF2COFINSQTDUNID'
              '                          ,PF2COFINSVUNID'
              '                          ,PF2VICMSDESON'
              '                          ,PF2DESONERACAO_DEDUZ'
              '                          ,PF2DESONERACAO_MOTIVO'
              ''
              '                          ,PF2CODNCM'
              '                          ,PF2CEST'
              ''
              '                         ,PF2CBS_CST'
              '                         ,PF2CBS_ALIQ'
              '                         ,Pf2IBS_UF_ALIQ'
              '                         ,PF2IBS_MUN_ALIQ'
              '                         ,PF2CODCLASSTRIB'
              ''
              ''
              ''
              ''
              ''
              ''
              '                          ) values ('
              '                          :NEW.PF2T_CODEMP'
              ''
              '                          , :NEW.PF2T_ID_PF01_NEW'
              '                          , :NEW.PF2T_ID_PF02_NEW'
              '                          , :NEW.PF2T_CHAVE'
              '                          , :NEW.PF2T_CHAVE_ANO'
              '                          , :NEW.PF2T_ITEM'
              '                          , :NEW.PF2T_CODPRO'
              '                          , :NEW.PF2T_QTDPED'
              '                          , :NEW.PF2T_DESC_PERC01'
              '                          , :NEW.PF2T_DESC_PERC02'
              '                          , :NEW.PF2T_DESC_PERC03'
              '                          , :NEW.PF2T_DESC_VALOR'
              '                          , :NEW.PF2T_PRECO'
              '                          , :NEW.PF2T_CST'
              '                          , :NEW.PF2T_CST_PIS'
              '                          , :NEW.PF2T_CST_COFINS'
              '                          , :NEW.PF2T_CST_IPI'
              ''
              '                          , :NEW.PF2T_CSOSN'
              '                          , :NEW.PF2T_CSOSN_ORI'
              '                          , :NEW.PF2T_ICMS_PRED'
              '                          , :NEW.PF2T_MODBCST'
              '                          , :NEW.PF2T_ST_IVA'
              '                          , :NEW.PF2T_ST_PREDUT'
              '                          , :NEW.PF2T_ICMS_PERC'
              '                          , :NEW.PF2T_ST_ICMSDEB'
              '                          , :NEW.PF2T_ST_BASE'
              '                          , :NEW.PF2T_ST_VALOR'
              '                          , :NEW.PF2T_PRECO_MAXCONS'
              '                          , :NEW.PF2T_IPI_PERC'
              '                          , :NEW.PF2T_IPI_PRED'
              '                          , :NEW.PF2T_ICMS_PERC'
              '                          , :NEW.PF2T_CFOP'
              '                          , :NEW.PF2T_PIS_PERC'
              '                          , :NEW.PF2T_COFINS_PERC'
              '                          , :NEW.PF2T_DESCCOMPL'
              '                          , :NEW.PF2T_ICMSSN_PERC'
              '                          , :NEW.PF2T_SITUACAO'
              '                          , :NEW.PF2T_DESC_CAB'
              '                          , :NEW.PF2T_IPIQTDUNID'
              '                          , :NEW.PF2T_IPIVUNID'
              '                          , :NEW.PF2T_PISQTDUNID'
              '                          , :NEW.PF2T_PISVUNID'
              '                          , :NEW.PF2T_CBENEF'
              '                          , :NEW.PF2T_COFINSQTDUNID'
              '                          , :NEW.PF2T_COFINSVUNID'
              '                          , :NEW.PF2T_VICMSDESON'
              ''
              '                          ,:NEW.PF2T_DESONERACAO_DEDUZ'
              '                          ,:NEW.PF2T_DESONERACAO_MOTIVO'
              ''
              '                          , :NEW.PF2T_CODNCM'
              '                          , :NEW.PF2T_CEST'
              ''
              ''
              ''
              '                         ,:NEW.PF2T_CBS_CST'
              '                         ,:NEW.PF2T_CBS_ALIQ'
              '                         ,:NEW.PF2T_IBS_UF_ALIQ'
              '                         ,:NEW.PF2T_IBS_MUN_ALIQ'
              '                         ,:NEW.PF2T_CODCLASSTRIB'
              ''
              ''
              '                          );'
              ''
              ''
              ''
              '   if :NEW.PF2T_TIPOMOV=0 then'
              
                '      update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL THEN' +
                ' 0 ELSE PDENTPEN END+'
              
                '      :NEW.PF2T_QTDPED WHERE PDCODEMP=:NEW.PF2T_CODEMP and PDCOD' +
                'PRO=:NEW.PF2T_CODPRO;'
              ''
              '      end if;'
              '   if :NEW.PF2T_TIPOMOV=1 then'
              ''
              
                '      update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL THEN' +
                ' 0 ELSE PDENTPEN END'
              '      -:NEW.PF2T_QTDPED WHERE PDCODEMP=:NEW.PF2T_CODEMP'
              '      and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              '      end if;'
              '   end if;'
              ''
              'if :NEW.PF2T_TIPO_EVENTO=1 then'
              '   Update CADPF2 set   PF2CODPRO=:NEW.PF2T_CODPRO'
              '                          ,PF2QTDP=:NEW.PF2T_QTDPED'
              '                          ,PF2DESC01=:NEW.PF2T_DESC_PERC01'
              '                          ,PF2DESC02=:NEW.PF2T_DESC_PERC02'
              '                          ,PF2DESC03=:NEW.PF2T_DESC_PERC03'
              '                          ,PF2PU=:NEW.PF2T_PRECO'
              '                          ,PF2BASER=:NEW.PF2T_ST_BASE'
              '                          ,PF2ICMSR=:NEW.PF2T_ST_VALOR'
              '                          ,PF2SIT=:NEW.PF2T_CST'
              '                          ,PF2CST_PIS=:NEW.PF2T_CST_PIS'
              '                          ,PF2CST_COFINS=:NEW.PF2T_CST_COFINS'
              '                          ,PF2CST_IPI=:NEW.PF2T_CST_IPI'
              ''
              '                          ,PF2CSOSN=:NEW.PF2T_CSOSN'
              '                          ,PF2CSOSN_ORI=:NEW.PF2T_CSOSN_ORI'
              '                          ,PF2PREDICMNOR=:NEW.PF2T_ICMS_PRED'
              '                          ,PF2MODBCST=:NEW.PF2T_MODBCST'
              '                          ,PF2ST_IVA=:NEW.PF2T_ST_IVA'
              '                          ,PF2ST_PERCRED=:NEW.PF2T_ST_PREDUT'
              '                          ,PF2ST_ICMSCRED=:NEW.PF2T_ICMS_PERC'
              '                          ,PF2ST_ICMSDEB=:NEW.PF2T_ST_ICMSDEB'
              '                          ,PF2PMC=:NEW.PF2T_PRECO_MAXCONS'
              '                          ,PF2ALIPI=:NEW.PF2T_IPI_PERC'
              '                          ,PF2IPI_PRED=:NEW.PF2T_IPI_PRED'
              '                          ,PF2ALIQ=:NEW.PF2T_ICMS_PERC'
              '                          ,PF2CFO=:NEW.PF2T_CFOP'
              '                          ,PF2PIS_PERC=:NEW.PF2T_PIS_PERC'
              '                          ,PF2COFINS_PERC=:NEW.PF2T_COFINS_PERC'
              '                          ,PF2DESC_COMPL=:NEW.PF2T_DESCCOMPL'
              '                          ,PF2ICMSSN_PERC=:NEW.PF2T_ICMSSN_PERC'
              '                          ,PF2SITUACAO=:NEW.PF2T_SITUACAO'
              '                          ,PF2TIPOMOV=:NEW.PF2T_TIPOMOV'
              '                          ,PF2DESC_CABEC=:NEW.PF2T_DESC_CAB'
              '                          ,PF2IPIQTDUNID=:NEW.PF2T_IPIQTDUNID'
              '                          ,PF2IPIVUNID=:NEW.PF2T_IPIVUNID'
              '                          ,PF2PISQTDUNID=:NEW.PF2T_PISQTDUNID'
              '                          ,PF2PISVUNID=:NEW.PF2T_PISVUNID'
              '                          ,PF2CBENEF=:NEW.PF2T_CBENEF'
              
                '                          ,PF2COFINSQTDUNID=:NEW.PF2T_COFINSQTDU' +
                'NID'
              '                          ,PF2COFINSVUNID=:NEW.PF2T_COFINSVUNID'
              '                          ,PF2VICMSDESON=:NEW.PF2T_VICMSDESON'
              
                '                          ,PF2DESONERACAO_DEDUZ = :NEW.PF2T_DESO' +
                'NERACAO_DEDUZ'
              
                '                          ,PF2DESONERACAO_MOTIVO = :NEW.PF2T_DES' +
                'ONERACAO_MOTIVO'
              '                          ,PF2CODNCM=:NEW.PF2T_CODNCM'
              '                          ,PF2CEST=:NEW.PF2T_CEST'
              ''
              '                         ,PF2CBS_CST       = :NEW.PF2T_CBS_CST'
              '                         ,PF2CBS_ALIQ      =  :NEW.PF2T_CBS_ALIQ'
              
                '                         ,Pf2IBS_UF_ALIQ   = :NEW.PF2T_IBS_UF_AL' +
                'IQ'
              
                '                         ,PF2IBS_MUN_ALIQ  = :NEW.PF2T_IBS_MUN_A' +
                'LIQ'
              ''
              ''
              ''
              '             where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                          and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                          and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                          and PF2ITEM=:NEW.PF2T_ITEM;'
              '--                          and PF2CODPRO=:NEW.PF2T_CODPRO_ANT;'
              '   if :NEW.PF2T_CODPRO<>:NEW.PF2T_CODPRO_ANT then'
              '      if :NEW.PF2T_TIPOMOV=0 then'
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END+'
              '         :NEW.PF2T_QTDPED WHERE PDCODEMP=:NEW.PF2T_CODEMP'
              '         and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END'
              
                '         -:NEW.PF2T_QTDPED_ANT WHERE PDCODEMP=:NEW.PF2T_CODEMP a' +
                'nd'
              '           PDCODPRO=:NEW.PF2T_CODPRO_ANT;'
              ''
              '         end if;'
              '      if :NEW.PF2T_TIPOMOV=1 then'
              ''
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END'
              '         -:NEW.PF2T_QTDPED WHERE'
              '         PDCODEMP=:NEW.PF2T_CODEMP'
              '         and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              ''
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END-'
              '         :NEW.PF2T_QTDPED_ANT WHERE'
              '         PDCODEMP=:NEW.PF2T_CODEMP'
              '         and PDCODPRO=:NEW.PF2T_CODPRO_ANT;'
              ''
              ''
              '         end if;'
              '      end if;'
              ''
              '   if :NEW.PF2T_CODPRO=:NEW.PF2T_CODPRO_ANT then'
              '      if :NEW.PF2T_TIPOMOV=0 then'
              '         mDiferSaldo := :NEW.PF2T_QTDPED-:NEW.PF2T_QTDPED_ANT;'
              ''
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END+'
              '         mDiferSaldo WHERE'
              '         PDCODEMP=:NEW.PF2T_CODEMP'
              '         and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              '         end if;'
              '      if :NEW.PF2T_TIPOMOV=1 then'
              '         mDiferSaldo := :NEW.PF2T_QTDPED-:NEW.PF2T_QTDPED_ANT;'
              ''
              
                '         update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL T' +
                'HEN 0 ELSE PDENTPEN END'
              '         -mDiferSaldo WHERE'
              '         PDCODEMP=:NEW.PF2T_CODEMP'
              '         and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              '         end if;'
              '      end if;'
              '   end if;'
              'if :NEW.PF2T_TIPO_EVENTO=2 then'
              '   delete from CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                          and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                          and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                          and PF2ITEM=:NEW.PF2T_ITEM'
              '                          and PF2CODPRO=:NEW.PF2T_CODPRO'
              '                          and PF2ID_NEW=:NEW.PF2T_ID_PF02_NEW;'
              '   if :NEW.PF2T_TIPOMOV=0 then'
              ''
              
                '      update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL THEN' +
                ' 0 ELSE PDENTPEN END-'
              '      :NEW.PF2T_QTDPED WHERE PDCODEMP=:NEW.PF2T_CODEMP'
              '      and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              '   end if;'
              '   if :NEW.PF2T_TIPOMOV=1 then'
              ''
              
                '      update CADPRO set PDENTPEN=CASE WHEN PDENTPEN IS NULL THEN' +
                ' 0 ELSE PDSALDO END'
              '      +:NEW.PF2T_QTDPED WHERE PDCODEMP=:NEW.PF2T_CODEMP'
              '      and PDCODPRO=:NEW.PF2T_CODPRO;'
              ''
              ''
              ''
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              ''
              
                'if :NEW.PF2T_PED1_DESC_PERC01!= :NEW.PF2T_PED1_DESC_PERC01_ANT O' +
                'R'
              
                '   :NEW.PF2T_PED1_DESC_PERC02!= :NEW.PF2T_PED1_DESC_PERC02_ANT O' +
                'R'
              
                '   :NEW.PF2T_PED1_DESC_PERC02!= :NEW.PF2T_PED1_DESC_PERC03_ANT T' +
                'HEN'
              
                '   Update CADPF2 set PF2DESC_CABEC=ROUND(  ((( (PF2QTDP*PF2PU) )' +
                ' *'
              '   :NEW.PF2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND(((((PF2QTDP*PF2PU))-(ROUND(  ((( (PF2Q' +
                'TDP*PF2PU) ) *'
              '   :NEW.PF2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.PF2T_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '((((PF2QTDP*PF2PU))'
              
                '                     -((ROUND(  ((( (PF2QTDP*PF2PU) ) * :NEW.PF2' +
                'T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((PF2QTDP*PF2PU))-(ROUND(  ((( (P' +
                'F2QTDP*PF2PU) ) *'
              '   :NEW.PF2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.PF2T_PED1_DESC_PERC01/100),2)))) *:NE' +
                'W.PF2T_PED1_DESC_PERC03/100) ,2),'
              
                '                     PF2TOTLIQ=round((PF2QTDP*PF2PU)-(ROUND(  ((' +
                '( (PF2QTDP*PF2PU) ) *'
              '   :NEW.PF2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +ROUND(((((PF2QTDP*PF2PU))-(ROUND(  ((( (PF' +
                '2QTDP*PF2PU) ) *'
              '   :NEW.PF2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.PF2T_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '((((PF2QTDP*PF2PU))'
              
                '                     -((ROUND(  ((( (PF2QTDP*PF2PU) ) * :NEW.PF2' +
                'T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((PF2QTDP*PF2PU))-(ROUND(  ((( (P' +
                'F2QTDP*PF2PU) ) *'
              '   :NEW.PF2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.PF2T_PED1_DESC_PERC02/100),2)))) *:NE' +
                'W.PF2T_PED1_DESC_PERC03/100) ,2))'
              '                     ,2)'
              ''
              
                '                     where PF2CODEMP=:NEW.PF2T_CODEMP  and PF2CH' +
                'AVE=:NEW.PF2T_CHAVE  and'
              '   PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              'Update CADPF2 set PF2DESC_RATEADO=0,PF2ACRERAT=0'
              '                          ,PF2OUTRAS=0'
              '                          ,PF2FRERAT=0'
              ',PF2TOTDES=PF2VALDES+ CASE WHEN'
              'PF2DESC_CABEC IS NULL THEN 0'
              
                'ELSE PF2DESC_CABEC END +  ROUND(  ((( (PF2QTDP*PF2PU)-CASE WHEN ' +
                'PF2DESC_CABEC IS NULL'
              'THEN 0'
              
                'ELSE PF2DESC_CABEC END )  * PF2DESC01) / 100) , 2) +ROUND(((((PF' +
                '2QTDP*PF2PU))-'
              
                '(ROUND(  ((( (PF2QTDP*PF2PU)-CASE WHEN PF2DESC_CABEC IS NULL THE' +
                'N 0 ELSE PF2DESC_CABEC'
              'END  )'
              ''
              
                '* PF2DESC01) / 100) , 2)))*PF2DESC02/100),2) +ROUND( ((((PF2QTDP' +
                '*PF2PU)-CASE'
              
                'WHEN PF2DESC_CABEC IS NULL THEN 0 ELSE PF2DESC_CABEC END)-((ROUN' +
                'D(  ((( (PF2QTDP*PF2PU)-'
              
                ' CASE WHEN PF2DESC_CABEC IS NULL THEN 0 ELSE PF2DESC_CABEC END )' +
                ' * PF2DESC01) / 100) , 2))'
              
                ' +(ROUND(((((PF2QTDP*PF2PU)-CASE WHEN PF2DESC_CABEC IS NULL THEN' +
                ' 0 ELSE PF2DESC_CABEC'
              'END)-'
              
                ' (ROUND(  ((( (PF2QTDP*PF2PU)-CASE WHEN PF2DESC_CABEC IS NULL TH' +
                'EN 0 ELSE PF2DESC_CABEC'
              'END )'
              
                '* PF2DESC01) / 100) , 2)))*PF2DESC02/100),2)))) *PF2DESC03/100) ' +
                ',2)'
              ''
              ''
              ''
              ',PF2TOTLIQ=round(((PF2QTDP*PF2PU) - NVL(PF2DESC_CABEC,0) )-'
              '(ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0) )'
              '* PF2DESC01) / 100) , 2)+ROUND(((((PF2QTDP*PF2PU)-'
              
                ' NVL(PF2DESC_CABEC,0))-(ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_' +
                'CABEC,0) ) * PF2DESC01) / 100) , 2)))*PF2DESC02/100),2)'
              ' +ROUND( ((((PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0))-'
              
                ' ((ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0) ) * PF2DESC0' +
                '1) / 100) , 2))+(ROUND(((((PF2QTDP*PF2PU)'
              
                ' - NVL(PF2DESC_CABEC,0))- (ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DE' +
                'SC_CABEC,0) )'
              
                ' * PF2DESC01) / 100) , 2)))*PF2DESC02/100),2)))) * NVL(PF2DESC03' +
                ',0)/100) ,2)) - case when PF2DESONERACAO_DEDUZ=1 THEN PF2VICMSDE' +
                'SON ELSE 0 END ,2)'
              ''
              
                'where PF2CODEMP=:NEW.PF2T_CODEMP  and PF2CHAVE=:NEW.PF2T_CHAVE  ' +
                'and'
              'PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              'Update CADPF2 set PF2TOTLIQ=PF2TOTLIQ - PF2TOTDES'
              
                'where PF2CODEMP=:NEW.PF2T_CODEMP  and PF2CHAVE=:NEW.PF2T_CHAVE  ' +
                'and'
              'PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              
                'Select sum(PF2QTDP*PF2PU),sum(PF2QTDP) into mTotMer,mTotMer_Qtd ' +
                'from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              'mTotalPed :=0;'
              'mTotalPed_QTD :=0;'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mTotalPed + mTotMer;'
              ' end if;'
              ''
              'if mTotMer_QTD>0 then'
              '   mTotalPed_QTD := mTotalPed_QTD + mTotMer_QTD;'
              ' end if;'
              ''
              ''
              'if :NEW.PF2T_PED1_DESCRAT>0 OR :NEW.PF2T_PED1_ACRERAT>0 THEN'
              ''
              ''
              '   if :NEW.PF2T_PED1_DESCRAT>0 THEN'
              '      mPercRat:=(:NEW.PF2T_PED1_DESCRAT*100)/mTotalPed;'
              '      if mTotMer>0 then'
              '         Update CADPF2 set PF2DESC_RATEADO='
              
                '                                 TRUNC(((PF2TOTLIQ*mPercRat)/100' +
                '),2)'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '         end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              '      if mTotMer>0 then'
              '         Select sum(PF2DESC_RATEADO) into mQtdxPreco from CADPF2'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '         end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '         end if;'
              '      mQtdxPreco := 0;'
              ''
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '         end if;'
              ''
              '      mDifDup:=:NEW.PF2T_PED1_DESCRAT-mDifDup;'
              ''
              '      if mDifDup!=0 then'
              '         if mTotMer>0 then'
              '            SELECT PF2ITEM into mItemPed FROM'
              '            ('
              '            select pF2item from CADPF2'
              '            where PF2CODEMP=:NEW.PF2T_CODEMP'
              '            and PF2CHAVE=:NEW.PF2T_CHAVE'
              '            and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '            order by PF2TOTLIQ DESC'
              '            ) WHERE ROWNUM<2;'
              
                '            Update CADPF2 set PF2DESC_RATEADO=PF2DESC_RATEADO+mD' +
                'ifDup'
              '            where PF2CODEMP=:NEW.PF2T_CODEMP'
              '            and PF2CHAVE=:NEW.PF2T_CHAVE'
              '            and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '            and PF2ITEM=mItemPed;'
              '            mDifDup:=0;'
              '            end if;'
              '         end if;'
              '      Update CADPF2 set  PF2TOTDES=PF2TOTDES+PF2DESC_RATEADO'
              
                '                                    , PF2TOTLIQ=round(PF2TOTLIQ-' +
                'PF2DESC_RATEADO,2)'
              '      where PF2CODEMP=:NEW.PF2T_CODEMP'
              '      and PF2CHAVE=:NEW.PF2T_CHAVE'
              '      and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '      and PF2SITUACAO<>1;'
              '      end if;'
              '   IF :NEW.PF2T_PED1_ACRERAT>0 THEN'
              '     mPercRat:=(:NEW.PF2T_PED1_DESCRAT*100)/mTotalPed;'
              '     Update CADPF2 set PF2ACRERAT='
              
                '                                TRUNC(((PF2TOTLIQ*mPercRat)/100)' +
                ',2)'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              ''
              '     Select sum(PF2ACRERAT) into mDifDup from CADPF2'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '     mDifDup:=:NEW.PF2T_PED1_ACRERAT-mDifDup;'
              '     if mDifDup!=0 THEN'
              '        Select PF2ITEM into mItemPed FROM'
              '        (select pF2item from CADPF2'
              '        where PF2CODEMP=:NEW.PF2T_CODEMP'
              '            and PF2CHAVE=:NEW.PF2T_CHAVE'
              '            and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '            order by PF2TOTLIQ DESC'
              '            )'
              '        where ROWNUM<2;'
              '        Update CADPF2 set PF2ACRERAT=PF2ACRERAT+mDifDup'
              '        where PF2CODEMP=:NEW.PF2T_CODEMP'
              '        and PF2CHAVE=:NEW.PF2T_CHAVE'
              '        and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '        and PF2ITEM=mItemPed;'
              '        mDifDup:=0;'
              '        end if;'
              ''
              '     Update CADPF2 set PF2TOTLIQ=round(PF2TOTLIQ+PF2ACRERAT,2)'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '     end if;'
              '   end if;'
              ''
              '-- RATEAR SIV_OUTROS'
              ''
              ''
              ''
              'if :NEW.PF2T_PED1_SIV_OUTROS>0 THEN'
              '    if :NEW.PF2T_PED1_SIV_OUTROS_TIPO='#39'Q'#39' THEN'
              '       mPercRat:=(:NEW.PF2T_PED1_SIV_OUTROS*100)/mTotalPed_QTD;'
              '       if mTotMer_QTD>0 then'
              '          Update CADPF2 set PF2SIV_OUTROS='
              
                '                                 TRUNC(((PF2QTDP*mPercRat)/100),' +
                '2)'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '       end if;'
              '    else'
              '       mPercRat:=(:NEW.PF2T_PED1_SIV_OUTROS*100)/mTotalPed;'
              '       if mTotMer>0 then'
              '          Update CADPF2 set PF2SIV_OUTROS='
              
                '                                 TRUNC(((PF2TOTLIQ*mPercRat)/100' +
                '),2)'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '       end if;'
              '    end if;'
              ''
              '    mQtdxPreco := 0;'
              '    Select sum(PF2SIV_OUTROS) into mQtdxPreco from CADPF2'
              '                            where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                            and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                            and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '    mDifDup := :NEW.PF2T_PED1_SIV_OUTROS-mQtdxPreco;'
              '    if mDifDup!=0 then'
              '       SELECT PF2ITEM into mItemPed FROM'
              '       ('
              '       select pF2item from CADPF2'
              '       where PF2CODEMP=:NEW.PF2T_CODEMP'
              '       and PF2CHAVE=:NEW.PF2T_CHAVE'
              '       and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '       order by PF2SIV_OUTROS DESC'
              '       ) WHERE ROWNUM<2;'
              ''
              '       Update CADPF2 set PF2SIV_OUTROS=PF2SIV_OUTROS+mDifDup'
              '       where PF2CODEMP=:NEW.PF2T_CODEMP'
              '       and PF2CHAVE=:NEW.PF2T_CHAVE'
              '       and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '       and PF2ITEM=mItemPed;'
              '       mDifDup:=0;'
              '    end if;'
              ' end if;'
              ''
              '-- RATEAR SIV_OUTROS TERMINO'
              ''
              ''
              '-- RATEAR FRETE'
              'if :NEW.PF2T_VALFRE>0 THEN'
              '   mPercRat:=(:NEW.PF2T_VALFRE*100)/mTotalPed;'
              '   if mTotMer>0 then'
              '      Update CADPF2 set PF2FRERAT='
              
                '                              TRUNC(((PF2TOTLIQ*mPercRat)/100),2' +
                ')'
              '                              where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '   end if;'
              ''
              '   Select sum(PF2FRERAT) into mDifDup from CADPF2'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '   mDifDup:=:NEW.PF2T_VALFRE-mDifDup;'
              '   if mDifDup!=0 THEN'
              '      Update CADPF2 set PF2FRERAT=PF2FRERAT+mDifDup'
              '      where PF2CODEMP=:NEW.PF2T_CODEMP'
              '      and PF2CHAVE=:NEW.PF2T_CHAVE'
              '      and PF2ITEM=(SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'ORDER BY TOTBRU DESC )                              '
              
                '--                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_AN' +
                'O and PF2ALIPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '      and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '   end if;'
              'end if;'
              ''
              '-- TERMINO DO RATEIO DO FRETE'
              ''
              '-- RATEAR OUTROS'
              'if :NEW.PF2T_OUTDESP>0 THEN'
              
                '   mPercRat:=(:NEW.PF2T_OUTDESP*100)/case when mTotalPed=0 then ' +
                '1 else mTotalPed end;'
              '   if mTotMer>0 then'
              '      Update CADPF2 set PF2OUTRAS='
              
                '                              TRUNC(((PF2TOTLIQ*mPercRat)/100),2' +
                ')'
              '                              where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '   end if;'
              ''
              '   Select sum(PF2OUTRAS) into mDifDup from CADPF2'
              
                '                                 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              '   mDifDup:=:NEW.PF2T_OUTDESP-mDifDup;'
              '   if mDifDup!=0 THEN'
              '      Update CADPF2 set PF2OUTRAS=PF2OUTRAS+mDifDup'
              '      where PF2CODEMP=:NEW.PF2T_CODEMP'
              '      and PF2CHAVE=:NEW.PF2T_CHAVE'
              '      and PF2ITEM=(SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2ALIPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '      and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '   end if;'
              'end if;'
              ''
              '-- TERMINO DO RATEIO DE OUTROS'
              ''
              ''
              ''
              'UPDATE CADPF2 SET PF2COFINS_VALOR= round( ('
              
                'case when NVL(PF2COFINSVUNID,0)>0 then PF2COFINSVUNID*PF2COFINSQ' +
                'TDUNID'
              
                'ELSE ( (PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) *PF2COFINS_PERC)/100 END)' +
                ' ,2)'
              ','
              'PF2IPI=round(('
              'case when NVL(PF2IPIVUNID,0)>0 then  (PF2IPIVUNID*PF2IPIQTDUNID)'
              
                'ELSE   ((((PF2QTDP*PF2PU)-0)) - CASE WHEN PF2IPI_PRED<=0 THEN  0' +
                ' ELSE'
              
                '     ROUND( (((PF2QTDP*PF2PU)-0) * PF2IPI_PRED /100) ,2) END ) *' +
                'NVL(PF2ALIPI,0)/100 END) ,2)'
              
                '-- ELSE   (((PF2QTDP*PF2PU)-PF2TOTDES)+PF2FRERAT) *NVL(PF2ALIPI,' +
                '0)/100 END) ,2)'
              ','
              'PF2PIS_VALOR=round(('
              'case when NVL(PF2PISVUNID,0)>0 then PF2PISVUNID*PF2PISQTDUNID'
              
                'ELSE (PF2TOTLIQ+PF2FRERAT+PF2OUTRAS)*NVL(PF2PIS_PERC,0)/100 END)' +
                ' ,2)'
              ','
              'PF2ICMS_RED_VLR=CASE PF2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ((PF2TOTLIQ*PF2PREDICMNOR)/100),2) END ,'
              ''
              'PF2BASEN=CASE PF2ALIQ WHEN 0 THEN 0'
              
                '--ELSE ROUND( ((PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) -(PF2TOTLIQ*PF2PR' +
                'EDICMNOR)/100),2) END ,'
              
                'ELSE ROUND( (  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OUTRAS)  -PF2TOTD' +
                'ES)-(((  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES)*PF' +
                '2PREDICMNOR)/100),2)'
              '+'
              ''
              'case when :NEW.PF2T_ICMS_SOB_IPI=0 THEN 0 ELSE'
              'round(('
              'case when NVL(PF2IPIVUNID,0)>0 then  (PF2IPIVUNID*PF2IPIQTDUNID)'
              
                'ELSE   ((((PF2QTDP*PF2PU)-PF2TOTDES)) - CASE WHEN PF2IPI_PRED<=0' +
                ' THEN  0 ELSE'
              
                '     ROUND( (((PF2QTDP*PF2PU)-PF2TOTDES) * PF2IPI_PRED /100) ,2)' +
                ' END ) *NVL(PF2ALIPI,0)/100 END) ,2)'
              ''
              ' END END ,'
              ''
              ''
              'PF2ICMSN=CASE PF2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ( ('
              ''
              '(  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OUTRAS'
              ''
              ''
              '+'
              'case when :NEW.PF2T_ICMS_SOB_IPI=0 THEN 0 ELSE  '
              ' round(('
              'case when NVL(PF2IPIVUNID,0)>0 then  (PF2IPIVUNID*PF2IPIQTDUNID)'
              
                'ELSE   ((((PF2QTDP*PF2PU)-PF2TOTDES)) - CASE WHEN PF2IPI_PRED<=0' +
                ' THEN  0 ELSE'
              
                '     ROUND( (((PF2QTDP*PF2PU)-PF2TOTDES) * PF2IPI_PRED /100) ,2)' +
                ' END ) *NVL(PF2ALIPI,0)/100 END) ,2) end'
              ''
              '  )  -PF2TOTDES)-'
              '(    (  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OUTRAS'
              '+ case when :NEW.PF2T_ICMS_SOB_IPI=0 THEN 0 ELSE  '
              'round(('
              'case when NVL(PF2IPIVUNID,0)>0 then  (PF2IPIVUNID*PF2IPIQTDUNID)'
              
                'ELSE   ((((PF2QTDP*PF2PU)-PF2TOTDES)) - CASE WHEN PF2IPI_PRED<=0' +
                ' THEN  0 ELSE'
              
                '     ROUND( (((PF2QTDP*PF2PU)-PF2TOTDES) * PF2IPI_PRED /100) ,2)' +
                ' END ) *NVL(PF2ALIPI,0)/100 END) ,2) end'
              ''
              ')  -PF2TOTDES)'
              ''
              '   *PF2PREDICMNOR)/100) *PF2ALIQ/100),2) END , '
              '   '
              '   '
              ''
              'PF2ICMSSN_VALOR=CASE PF2ICMSSN_PERC WHEN 0 THEN 0 ELSE'
              '--ROUND( ((PF2TOTLIQ*PF2ICMSSN_PERC)/100),2) END'
              
                'ROUND( ((   ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OUTRAS)    *PF2ICMSS' +
                'N_PERC)/100),2) END'
              ''
              '--PF2BASER= CASE PF2MODBCST WHEN  4 THEN'
              '--   ROUND(  (PF2TOTLIQ+PF2TOTDES+decode(:NEW.,1,PF2IPI,0) )'
              
                '--    * ((CASE PF2ST_IVA WHEN 0 THEN 0 ELSE 100PF2T_BASER_IPI EN' +
                'D + PF2ST_IVA)/100)'
              '--  * ( (100-PF2ST_PERCRED)/100) , 2)  WHEN 0'
              '--THEN ROUND( (PF2QTDP*PF2PMC)'
              '--*((100-PF2ST_PERCRED)/100),2)'
              '--ELSE 0 END,'
              '--LUIZ FERNANDO'
              ''
              
                '--PF2ST_ICMS=ROUND((PF2ST_ICMSDEB *(  (    (PF2TOTLIQ+PF2TOTDES+' +
                'decode(:NEW.PF2T_BASER_IPI,1,PF2IPI,0))'
              
                '--         *  ((CASE PF2ST_IVA WHEN 0 THEN 0 ELSE 100 END + PF2S' +
                'T_IVA)/100)'
              '--         *   ((100-PF2ST_PERCRED)/100) )) / 100 ),2)'
              
                '--          - ROUND(CASE PF2ST_IVA WHEN 0 THEN 0 ELSE  ((PF2ST_I' +
                'CMSCRED * PF2TOTLIQ)/100) END, 2)'
              '--LUIZ FERNANDO'
              ''
              ''
              
                '-- , PF2TOTLIQ=ROUND(  (PF2TOTLIQ+((PF2ST_ICMSDEB *(    (PF2TOTL' +
                'IQ+PF2TOTDES+decode(:NEW.PF2T_BASER_IPI,1,PF2IPI,0))'
              
                '--         *  ((CASE PF2ST_IVA WHEN 0 THEN 0 ELSE 100 END + PF2S' +
                'T_IVA)/100)'
              '--         *   ((100-PF2ST_PERCRED)/100) )) / 100 )) ,2)'
              
                '--          - ROUND(CASE PF2ST_IVA WHEN 0 THEN 0 ELSE  ((PF2ST_I' +
                'CMSCRED * PF2TOTLIQ)/100) END, 2)'
              ''
              ''
              
                ',PF2CBS_BC=CASE WHEN PF2CBS_ALIQ>0 OR Pf2IBS_UF_ALIQ>0 OR  PF2IB' +
                'S_MUN_ALIQ> 0  THEN  PF2TOTLIQ ELSE 0 END'
              
                ',PF2CBS_VALOR=CASE WHEN PF2CBS_ALIQ>0 THEN  ROUND( (PF2TOTLIQ*PF' +
                '2CBS_ALIQ/100), 2) ELSE 0 END'
              
                ',PF2IBS_UF_VALOR=CASE WHEN Pf2IBS_UF_ALIQ>0 THEN  ROUND( (PF2TOT' +
                'LIQ*Pf2IBS_UF_ALIQ/100), 2) ELSE 0 END'
              
                ',Pf2IBS_MUN_VALOR=CASE WHEN PF2IBS_MUN_ALIQ>0 THEN  ROUND( (PF2T' +
                'OTLIQ*PF2IBS_MUN_ALIQ/100), 2) ELSE 0 END'
              ''
              ''
              'where PF2CODEMP=:NEW.PF2T_CODEMP'
              'and PF2CHAVE=:NEW.PF2T_CHAVE'
              'and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              'mTotalPed := 0;'
              ''
              
                'Select sum(PF2TOTLIQ),sum(PF2QTDP*PF2PU),SUM(PF2IPI),sum(PF2TOTD' +
                'ES),'
              ''
              
                'sum(DECODE((SELECT FCRT FROM CADFOR WHERE FCODFOR=(SELECT PF1COD' +
                'FOR FROM'
              
                'CADPF1 WHERE PF1CHAVE=PF2CHAVE AND PF1CODEMP=PF2CODEMP AND PF1LO' +
                'TSEQ=PF2LOTSEQ ))'
              
                ',3,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2BASER),0,DECODE(SUBSTR(PF2SI' +
                'T,2,1),6,0,PF2BASER),'
              'DECODE(PF2CSOSN,500,0,PF2BASER))),'
              ''
              
                'sum(DECODE((SELECT FCRT FROM CADFOR WHERE FCODFOR=(SELECT PF1COD' +
                'FOR FROM'
              
                'CADPF1 WHERE PF1CHAVE=PF2CHAVE AND PF1CODEMP=PF2CODEMP AND PF1LO' +
                'TSEQ=PF2LOTSEQ ))'
              
                ',3,DECODE(SUBSTR(PF2SIT,2,1),6,0,PF2ICMSR),0,DECODE(SUBSTR(PF2SI' +
                'T,2,1),6,0,PF2ICMSR),'
              'DECODE(PF2CSOSN,500,0,PF2ICMSR))),'
              ''
              'sum(PF2BASEN), sum(PF2ICMSN)'
              ', sum(PF2VICMSDESON)'
              
                ', sum(CASE WHEN PF2DESONERACAO_DEDUZ=1 THEN PF2VICMSDESON ELSE 0' +
                ' END)'
              ''
              ''
              
                'into mTotMer, mQtdxPreco, mTotIPI,mTotDes,mTotBaseR,mTotIcmsR,mT' +
                'otBaseN,mTotIcmsN,mTotVICMSDESON,mTotVICMSDESON_DEDUZ'
              ''
              ' from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mTotalPed + mQtdxPreco;'
              '   end if;'
              'if mTotIPI is null then'
              '   mTotIPI:=0;'
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'if :NEW.PF2T_VD_IPI_Valor<>0 THEN'
              
                '--   select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES)+PF2FRER' +
                'AT)),count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADP' +
                'F2 WHERE'
              
                '   select sum(PF2IPI),sum(( (PF2QTDP*PF2PU)   -PF2TOTDES)+PF2FRE' +
                'RAT),count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADP' +
                'F2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0;'
              
                '--   RAISE_APPLICATION_ERROR(-20000, '#39'TOTALIPI NOVO '#39' || mCalcDi' +
                'v_Valor);'
              ''
              '   if mCalcDiv_Qtd>0 then'
              '      if :NEW.PF2T_VD_IPI_VALOR<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_IPI_VALOR-mCalcDiv_Valor' +
                ';'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_IPI' +
                '_VALOR;'
              
                '         Update CADPF2 set PF2IPI=TRUNC(PF2IPI* ((100+mCalcDiv_D' +
                'ifer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0;'
              ''
              
                '--         select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES)+P' +
                'F2FRERAT)) into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              
                '         select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES))) i' +
                'nto mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_IPI_VALOR-mCalcDiv_Valor' +
                ';'
              '         if mcalcDiv_Difer<>0 then'
              '             Update CADPF2 set PF2IPI=PF2IPI+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '--                              (SELECT PF2ITEM,(((PF2QTDP*PF2PU' +
                ')-PF2TOTDES)+PF2FRERAT) as TOTBRU  FROM CADPF2 where PF2CODEMP=:' +
                'NEW.PF2T_CODEMP'
              
                '                              (SELECT PF2ITEM,(((PF2QTDP*PF2PU)-' +
                'PF2TOTDES)) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_COD' +
                'EMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '--      select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES)+PF2F' +
                'RERAT)),count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from C' +
                'ADPF2 WHERE'
              
                '      select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES))),coun' +
                't(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              '         if :NEW.PF2T_VD_IPI_VALOR<>mCalcDiv_Valor then'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_IPI_VALOR-mCalcDiv_Va' +
                'lor;'
              
                '            mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_' +
                'IPI_VALOR;'
              
                '            Update CADPF2 set PF2IPI=TRUNC(PF2IPI* ((100+mCalcDi' +
                'v_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              
                '--            select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES' +
                ')+PF2FRERAT)) into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              
                '            select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES))' +
                ') into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_IPI_VALOR-mCalcDiv_Va' +
                'lor;'
              '            if mcalcDiv_Difer<>0 then'
              '               Update CADPF2 set PF2IPI=PF2IPI+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '--                              (SELECT PF2ITEM,(((PF2QTDP*PF2PU' +
                ')-PF2TOTDES)+PF2FRERAT) as TOTBRU  FROM CADPF2 where PF2CODEMP=:' +
                'NEW.PF2T_CODEMP'
              
                '                              (SELECT PF2ITEM,(((PF2QTDP*PF2PU)-' +
                'PF2TOTDES)) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_COD' +
                'EMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '               end if;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              ''
              '   Select SUM(PF2IPI) into  mTotIPI'
              '   from CADPF2 WHERE'
              '                                     PF2CODEMP=:NEW.PF2T_CODEMP'
              '                                 and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF2LOTSEQ=:NEW.PF2T_CHAVE_A' +
                'NO;'
              ''
              '   if mTotIPI is null then'
              '      mTotIPI:=0;'
              '      end if;'
              ''
              ''
              '   end if;'
              'mImp_Imp_Valor:=:NEW.PF2T_IMP_IMP_VALOR;'
              ''
              'if :NEW.PF2T_IMP_IMP_ALIQ>0 then'
              
                '   mImp_Imp_Valor:=ROUND( ( ( (mtotmer-mtotdes)*:NEW.PF2T_IMP_IM' +
                'P_ALIQ)/100),2);'
              '   end if;'
              ''
              'mValFre:=:NEW.PF2T_VALFRE;'
              ''
              ''
              'mValFre_ICMS_Valor:=:NEW.PF2T_VALFRE_ICMS_VALOR;'
              ''
              'if :NEW.PF2T_VALFRE_PERC>0 then'
              
                '   mValFre:=ROUND( ( ( (mtotmer-mtotdes)*:NEW.PF2T_VALFRE_PERC)/' +
                '100),2);'
              '   end if;'
              ''
              'if (:NEW.PF2T_VALFRE_ICMS_ALIQ>0) and (mValFre>0) then'
              
                '   mValFre_ICMS_Valor:=ROUND( ( ( (mValFre)*:NEW.PF2T_VALFRE_ICM' +
                'S_ALIQ)/100),2);'
              '   end if;'
              ''
              ''
              ''
              ''
              'if :NEW.PF2T_VD_ICMSST_VALOR<>0 then'
              '   mTotIcmsR:=:NEW.PF2T_VD_ICMSST_VALOR;'
              'end if;'
              ''
              
                '--mTotalPed:=nvl(mTotalPed,0)+nvl(mTotIPI,0)+nvl(mTotIcmsR,0)+nv' +
                'l(:NEW.PF2T_IMP_IMP_VALOR,0)+nvl(:NEW.PF2T_OUTDESP,0)+nvl(mValFr' +
                'e,0)+nvl(:NEW.PF2T_TOTSEG,0)-nvl(mTotDes,0);'
              
                'mTotalPed:=nvl(mTotalPed,0)+nvl(mTotIPI,0)+nvl(:NEW.PF2T_IMP_IMP' +
                '_VALOR,0)+nvl(:NEW.PF2T_OUTDESP,0)+nvl(mValFre,0)+nvl(:NEW.PF2T_' +
                'TOTSEG,0)-(nvl(mTotDes,0)+'
              'mTotVICMSDESON_DEDUZ'
              ');'
              '--mTotalPed:=mTotalPed+mTotIPI+mValFre+;'
              '--LUIZ FERNANDO OLHAR AQUI'
              ''
              
                'update CADPF1 set PF1BASER_IPI=:NEW.PF2T_BASER_IPI,PF1TOTLIQ=ROU' +
                'ND(mTotalPed,2)+round(+mTotIcmsR,2)  ,PF1TOTMER=mTotMer,PF1IMP_I' +
                'MP_VALOR=mImp_Imp_Valor'
              
                '--update CADPF1 set PF1BASER_IPI=:NEW.PF2T_BASER_IPI,PF1TOTLIQ=R' +
                'OUND(mTotalPed,2)  ,PF1TOTMER=mTotMer,PF1IMP_IMP_VALOR=mImp_Imp_' +
                'Valor'
              '                ,PF1IMP_IMP_ALIQ=:NEW.PF2T_IMP_IMP_ALIQ'
              '                ,PF1TOTSEG=:NEW.PF2T_TOTSEG'
              '                ,PF1TOTSEG_ICMS_ALIQ=:NEW.PF2T_TOTSEG_ICMS_ALIQ'
              
                '                ,PF1TOTSEG_ICMS_VALOR=:NEW.PF2T_TOTSEG_ICMS_VALO' +
                'R'
              '                ,PF1BASER=nvl(mTotBaseR,0)'
              '                ,PF1ICMSR=nvl(mTotIcmsR,0)'
              '                ,PF1BASEN=nvl(mTotBaseN,0)'
              '                ,PF1ICMSN=nvl(mTotIcmsN,0)'
              '                ,PF1TOTDES=nvl(mTotDes,0)'
              '                ,PF1TOTALDESONERACAO =mTotVICMSDESON'
              '                ,PF1OUTDESP=:NEW.PF2T_OUTDESP'
              '                ,PF1OUTVDUP=:NEW.PF2T_PED1_OUTVDUP'
              
                '                ,PF1OUTDESP_ICMS_ALIQ=:NEW.PF2T_OUTDESP_ICMS_ALI' +
                'Q'
              
                '                ,PF1OUTDESP_ICMS_VALOR=:NEW.PF2T_OUTDESP_ICMS_VA' +
                'LOR'
              '                ,PF1PERCFRETE=:NEW.PF2T_VALFRE_PERC'
              '                ,PF1TOTFRE=:NEW.PF2T_VALFRE'
              '                ,PF1ALIQ_FRETE=:NEW.PF2T_VALFRE_ICMS_ALIQ'
              '                ,PF1ICMS_FRETE=:NEW.PF2T_VALFRE_ICMS_VALOR'
              '                ,PF1PIPIFRETE=:NEW.PF2T_VALFRE_IPIICMS_ALIQ'
              '                ,PF1IPIFRETE=:NEW.PF2T_VALFRE_IPIICMS_VALOR'
              ''
              
                '                where PF1CODEMP=:NEW.PF2T_CODEMP AND PF1CHAVE=:N' +
                'EW.PF2T_CHAVE AND'
              '                PF1LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              '-- SO PARA ARREDONDAMENTO DE VALORES de base de icms'
              ''
              'if :NEW.PF2T_VD_ICMS_BASE<>0 THEN'
              
                '   select SUM(PF2BASEN),count(*) into mCalcDiv_Valor,mCalcDiv_Qt' +
                'd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              
                '                              and (substr(PF2SIT,2,1)='#39'2'#39' or PF2' +
                'ALIQ<>0);'
              '   if mCalcDiv_Valor>0 then'
              '      if :NEW.PF2T_VD_ICMS_BASE<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_BASE-mCalcDiv_Valor' +
                ';'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_ICM' +
                'S_BASE;'
              
                '         Update CADPF2 set PF2BASEN=TRUNC(PF2BASEN* ((100+mCalcD' +
                'iv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              
                '                              and (substr(PF2SIT,2,1)='#39'2'#39' or PF2' +
                'ALIQ<>0);'
              
                '         select SUM(PF2BASEN) into  mCalcDiv_Valor from CADPF2 W' +
                'HERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              
                '                              and (substr(PF2SIT,2,1)='#39'2'#39' or PF2' +
                'ALIQ<>0);'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_BASE-mCalcDiv_Valor' +
                ';'
              '         if mcalcDiv_Difer<>0 then'
              '             Update CADPF2 set PF2BASEN=PF2BASEN+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM, PF2BASEN as TOTBR' +
                'U  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              
                '                              and (substr(PF2SIT,2,1)='#39'2'#39' or PF2' +
                'ALIQ<>0)'
              '                              ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              
                '                              and (substr(PF2SIT,2,1)='#39'2'#39' or PF2' +
                'ALIQ<>0);'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select SUM(PF2BASEN),count(*) into mCalcDiv_Valor,mCalcDiv' +
                '_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              '         if :NEW.PF2T_VD_ICMS_BASE<>mCalcDiv_Valor then'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_VALOR-mCalcDiv_V' +
                'alor;'
              
                '            mCalcDiv_Difer := (mCalcDiv_Difer*100)/ CASE WHEN :N' +
                'EW.PF2T_VD_ICMS_VALOR=0 THEN 1 else :NEW.PF2T_VD_ICMS_VALOR end;'
              
                '            Update CADPF2 set PF2BASEN=TRUNC(PF2BASEN* ((100+mCa' +
                'lcDiv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              
                '            select SUM(PF2BASEN),count(*) into mCalcDiv_Valor,mC' +
                'alcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_BASE-mCalcDiv_Va' +
                'lor;'
              '            if mcalcDiv_Difer<>0 then'
              
                '               Update CADPF2 set PF2BASEN=PF2BASEN+mcalcDiv_Dife' +
                'r'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(PF2BASEN) as TOTB' +
                'RU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '               end if;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              '-- INICIO'
              ''
              '   UPDATE CADPF2 SET'
              '   PF2ICMSN=ROUND((PF2BASEN *PF2ALIQ/100),2),'
              
                '   PF2PREDICMNOR=CASE WHEN ROUND( ((((PF2TOTLIQ+PF2FRERAT+PF2OUT' +
                'RAS) -PF2TOTDES-PF2BASEN)*100) /'
              
                '   ((PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) -PF2TOTDES)) ,2) <0 THEN 0 E' +
                'LSE  ROUND( ((((PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) -PF2BASEN)*100) /' +
                ' (PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) ) ,2) END'
              
                '   ,PF2ICMS_RED_VLR=CASE WHEN ((PF2TOTLIQ+PF2FRERAT+PF2OUTRAS) -' +
                'PF2TOTDES-PF2BASEN)<0 THEN 0 ELSE (PF2TOTLIQ+PF2FRERAT+PF2OUTRAS' +
                ') -PF2TOTDES-PF2BASEN END'
              '   WHERE PF2CODEMP=:NEW.PF2T_CODEMP'
              '   and PF2CHAVE=:NEW.PF2T_CHAVE'
              '   and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '   and (substr(PF2SIT,2,1)='#39'2'#39' or PF2ALIQ<>0);'
              ''
              '-- TERMINO'
              ''
              '   end if;'
              ''
              ''
              '-- termino de arredondamento de valores'
              ''
              ''
              '-- inicio do valor do icms'
              ''
              'if :NEW.PF2T_VD_ICMS_VALOR<>0 THEN'
              
                '   select SUM(PF2ICMSN),count(*) into mCalcDiv_Valor,mCalcDiv_Qt' +
                'd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                              and PF2BASEN<>0;'
              '   if mCalcDiv_Valor>0 then'
              '      if :NEW.PF2T_VD_ICMS_VALOR<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_VALOR-mCalcDiv_Valo' +
                'r;'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_ICM' +
                'S_VALOR;'
              
                '         Update CADPF2 set PF2ICMSN=TRUNC(PF2ICMSN* ((100+mCalcD' +
                'iv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                              and PF2BASEN<>0;'
              
                '         select SUM(PF2ICMSN) into  mCalcDiv_Valor from CADPF2 W' +
                'HERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                              and PF2BASEN<>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_VALOR-mCalcDiv_Valo' +
                'r;'
              '         if mcalcDiv_Difer<>0 then'
              '             Update CADPF2 set PF2ICMSN=PF2ICMSN+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM, PF2ICMSN as TOTBR' +
                'U  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                              and PF2BASEN<>0'
              '                              ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO'
              '                              and PF2BASEN<>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select SUM(PF2ICMSN),count(*) into mCalcDiv_Valor,mCalcDiv' +
                '_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              '         if :NEW.PF2T_VD_ICMS_VALOR<>mCalcDiv_Valor then'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_VALOR-mCalcDiv_V' +
                'alor;'
              
                '            mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_' +
                'ICMS_VALOR;'
              
                '            Update CADPF2 set PF2ICMSN=TRUNC(PF2ICMSN* ((100+mCa' +
                'lcDiv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              
                '            select SUM(PF2ICMSN),count(*) into mCalcDiv_Valor,mC' +
                'alcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_ICMS_VALOR-mCalcDiv_V' +
                'alor;'
              '            if mcalcDiv_Difer<>0 then'
              
                '               Update CADPF2 set PF2ICMSN=PF2ICMSN+mcalcDiv_Dife' +
                'r'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(PF2ICMSN) as TOTB' +
                'RU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2IPI>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '               end if;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              '-- termino ddo valor do icms'
              ''
              '-- COFINS INICIO'
              ''
              'if :NEW.PF2T_VD_COFINS_Valor<>0 THEN'
              
                '   select sum(PF2COFINS_VALOR),sum(       ( (PF2QTDP*PF2PU) +PF2' +
                'FRERAT+PF2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTot' +
                'Mer,mCalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0;'
              '   if mCalcDiv_Qtd>0 then'
              '      if :NEW.PF2T_VD_COFINS_VALOR<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_COFINS_VALOR-mCalcDiv_Va' +
                'lor;'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_COF' +
                'INS_VALOR;'
              
                '         Update CADPF2 set PF2COFINS_VALOR=TRUNC(PF2COFINS_VALOR' +
                '* ((100+mCalcDiv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0;'
              ''
              
                '         select sum(PF2COFINS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF' +
                '2FRERAT+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer from' +
                ' CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_COFINS_VALOR-mCalcDiv_Va' +
                'lor;'
              '         if mcalcDiv_Difer<>0 then'
              
                '             Update CADPF2 set PF2COFINS_VALOR=PF2COFINS_VALOR+m' +
                'calcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(  ( (PF2QTDP*PF2P' +
                'U) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) as TOTBRU  FROM CADPF2 whe' +
                're PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select sum(PF2COFINS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF2FR' +
                'ERAT+PF2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMe' +
                'r,mCalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              '         if :NEW.PF2T_VD_COFINS_VALOR<>mCalcDiv_Valor then'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_COFINS_VALOR-mCalcDiv' +
                '_Valor;'
              
                '            mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_' +
                'COFINS_VALOR;'
              
                '            Update CADPF2 set PF2COFINS_VALOR=TRUNC(PF2COFINS_VA' +
                'LOR* ((100+mCalcDiv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              
                '            select sum(PF2COFINS_VALOR),sum(  ( (PF2QTDP*PF2PU) ' +
                '+PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer f' +
                'rom CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_COFINS_VALOR-mCalcDiv' +
                '_Valor;'
              '            if mcalcDiv_Difer<>0 then'
              
                '               Update CADPF2 set PF2COFINS_VALOR=PF2COFINS_VALOR' +
                '+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(  ( (PF2QTDP*PF2P' +
                'U) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) as TOTBRU  FROM CADPF2 whe' +
                're PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2COFINS_PERC>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '               end if;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              '-- COFINS TERMINO'
              ''
              ''
              '-- PICS INICIO'
              ''
              'if :NEW.PF2T_VD_PIS_Valor<>0 THEN'
              
                '   select sum(PF2PIS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF2FRERAT+P' +
                'F2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMer,mCal' +
                'cDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2PIS_PERC>0;'
              '   if mCalcDiv_Qtd>0 then'
              '      if :NEW.PF2T_VD_PIS_VALOR<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_PIS_VALOR-mCalcDiv_Valor' +
                ';'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_PIS' +
                '_VALOR;'
              
                '         Update CADPF2 set PF2PIS_VALOR=TRUNC(PF2PIS_VALOR* ((10' +
                '0+mCalcDiv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2PIS_PERC>0;'
              ''
              
                '         select sum(PF2PIS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF2FR' +
                'ERAT+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer from CA' +
                'DPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2PIS_PERC>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_PIS_VALOR-mCalcDiv_Valor' +
                ';'
              '         if mcalcDiv_Difer<>0 then'
              
                '             Update CADPF2 set PF2PIS_VALOR=PF2PIS_VALOR+mcalcDi' +
                'v_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(  ( (PF2QTDP*PF2P' +
                'U) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) as TOTBRU  FROM CADPF2 whe' +
                're PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2PIS_PERC>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2PIS_PERC>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select sum(PF2PIS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF2FRERA' +
                'T+PF2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMer,m' +
                'CalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              
                '         mCalcDiv_Perc:=trunc(( (:NEW.PF2T_VD_PIS_VALOR*100)/mTo' +
                'tMer),2);'
              
                '         Update CADPF2 set PF2PIS_VALOR=TRUNC((  ( (PF2QTDP*PF2P' +
                'U) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES)* ((mCalcDiv_Perc)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '         select sum(PF2PIS_VALOR),sum(  ( (PF2QTDP*PF2PU) +PF2FR' +
                'ERAT+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer from CA' +
                'DPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_PIS_VALOR-mCalcDiv_Valor' +
                ';'
              '         if mcalcDiv_Difer<>0 then'
              
                '            Update CADPF2 set PF2PIS_VALOR=PF2PIS_VALOR+mcalcDiv' +
                '_Difer'
              '                        WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                           and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                           and PF2ITEM='
              '                            ('
              '                           SELECT PF2ITEM FROM'
              
                '                           (SELECT PF2ITEM,(  ( (PF2QTDP*PF2PU) ' +
                '+PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) as TOTBRU  FROM CADPF2 where ' +
                'PF2CODEMP=:NEW.PF2T_CODEMP'
              '                            and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO and' +
                ' PF2PIS_PERC>0 ORDER BY TOTBRU DESC )'
              '                            where rownum<2'
              '                             )'
              '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '         end if;'
              '         end if;'
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              '-- PIS TERMINO'
              ''
              ''
              ''
              ''
              ''
              '-- BASER INICIO'
              ''
              'if :NEW.PF2T_VD_ICMSST_BASE<>0 THEN'
              
                '   select sum(PF2BASER),sum(  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF2OU' +
                'TRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv' +
                '_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0;'
              '   if mCalcDiv_Qtd>0 then'
              '      if :NEW.PF2T_VD_ICMSST_BASE<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_BASE-mCalcDiv_Val' +
                'or;'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_ICM' +
                'SST_BASE;'
              
                '         Update CADPF2 set PF2BASER=TRUNC(PF2BASER* ((100+mCalcD' +
                'iv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0;'
              ''
              
                '         select sum(PF2BASER),sum(  ( (PF2QTDP*PF2PU) +PF2FRERAT' +
                '+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer from CADPF2' +
                ' WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_BASE-mCalcDiv_Val' +
                'or;'
              '         if mcalcDiv_Difer<>0 then'
              '             Update CADPF2 set PF2BASER=PF2BASER+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,(  ( (PF2QTDP*PF2P' +
                'U) +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES) as TOTBRU  FROM CADPF2 whe' +
                're PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select sum(PF2BASER),sum(  ( (PF2QTDP*PF2PU) +PF2FRERAT+PF' +
                '2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMer,mCalc' +
                'Div_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              
                '         select sum(PF2BASER),sum(  ( (PF2QTDP*PF2PU) +PF2FRERAT' +
                '+PF2OUTRAS)  -PF2TOTDES),count(*) into mCalcDiv_Valor,mTotMer,mC' +
                'alcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '         if mCalcDiv_Qtd>0 then'
              
                '            mCalcDiv_Perc:=trunc(( (:NEW.PF2T_VD_ICMSST_BASE*100' +
                ')/mTotMer),2);'
              
                '            Update CADPF2 set PF2BASER=TRUNC((  ( (PF2QTDP*PF2PU' +
                ') +PF2FRERAT+PF2OUTRAS)  -PF2TOTDES)* ((mCalcDiv_Perc)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              
                '            select sum(PF2BASER),sum(  ( (PF2QTDP*PF2PU) +PF2FRE' +
                'RAT+PF2OUTRAS)  -PF2TOTDES) into mCalcDiv_Valor,mTotMer from CAD' +
                'PF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '            mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_BASE-mCalcDiv_' +
                'Valor;'
              '            if mcalcDiv_Difer<>0 then'
              
                '               Update CADPF2 set PF2BASER=PF2BASER+mcalcDiv_Dife' +
                'r'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2BASER>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '               end if;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              '-- BASER TERMINO'
              ''
              ''
              '-- ICMSR INICIO'
              ''
              'if :NEW.PF2T_VD_ICMSST_VALOR<>0 THEN'
              
                '   select sum(NVL(PF2ICMSR,0)),sum((PF2QTDP*PF2PU)-PF2TOTDES),co' +
                'unt(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHER' +
                'E'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and NVL(PF2ICMSR,0)>0;'
              '   if mCalcDiv_Qtd>0 then'
              '      if :NEW.PF2T_VD_ICMSST_VALOR<>mCalcDiv_Valor then'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_VALOR-mCalcDiv_Va' +
                'lor;'
              
                '         mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_ICM' +
                'SST_VALOR;'
              
                '         Update CADPF2 set PF2ICMSR=TRUNC(PF2ICMSR* ((100+mCalcD' +
                'iv_Difer)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2ICMSR>0;'
              ''
              
                '         select sum(PF2ICMSR),sum((PF2QTDP*PF2PU)-PF2TOTDES) int' +
                'o mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2ICMSR>0;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_VALOR-mCalcDiv_Va' +
                'lor;'
              '         if mcalcDiv_Difer<>0 then'
              '             Update CADPF2 set PF2ICMSR=PF2ICMSR+mcalcDiv_Difer'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2ITEM='
              ''
              '                              ('
              '                              SELECT PF2ITEM FROM'
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2ICMSR>0 ORDER BY TOTBRU DESC )'
              '                               where rownum<2'
              '                               )'
              
                '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO ' +
                'and PF2ICMSR>0;'
              '             end if;'
              '         end if;'
              '   elsif mCalcDiv_Qtd=0 then'
              
                '      select sum(NVL(PF2ICMSR,0)),sum((PF2QTDP*PF2PU)-PF2TOTDES)' +
                ',count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 W' +
                'HERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              
                '         mCalcDiv_Perc:=trunc(( (:NEW.PF2T_VD_ICMSST_VALOR*100)/' +
                'mTotMer),2);'
              
                '         Update CADPF2 set PF2ICMSR=TRUNC(((PF2QTDP*PF2PU)-PF2TO' +
                'TDES)* ((mCalcDiv_Perc)/100),2)'
              '                        WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                           and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              
                '         select sum(PF2ICMSR),sum((PF2QTDP*PF2PU)-PF2TOTDES) int' +
                'o mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
              '                               PF2CODEMP=:NEW.PF2T_CODEMP'
              '                           and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '         mCalcDiv_Difer := :NEW.PF2T_VD_ICMSST_VALOR-mCalcDiv_Va' +
                'lor;'
              '         if mcalcDiv_Difer<>0 then'
              '            Update CADPF2 set PF2ICMSR=PF2ICMSR+mcalcDiv_Difer'
              '                        WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                           and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                           and PF2ITEM='
              ''
              '                           ('
              '                           SELECT PF2ITEM FROM'
              
                '                           (SELECT PF2ITEM,((PF2QTDP*PF2PU)-PF2T' +
                'OTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
              '                           and PF2CHAVE=:NEW.PF2T_CHAVE'
              
                '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO and' +
                ' PF2ICMSR>0 ORDER BY TOTBRU DESC )'
              '                            where rownum<2'
              '                            )'
              '                           and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '            end if;'
              '         end if;'
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              '-- ICMSR TERMINO'
              ''
              ''
              ''
              '-- TERMINO PARA ARREDONDAMENTO DE VALORES'
              ''
              ''
              'if :NEW.PF2T_ALTDUP<>'#39'N'#39' then'
              '   if :NEW.PF2T_QTDDUP>0 then'
              
                '      mValorDup := trunc( ((mTotalPed + :NEW.PF2T_PED1_OUTVDUP) ' +
                '/ :NEW.PF2T_QTDDUP) ,2);'
              '      if mValorDup is null then'
              '         mValorDup:=0;'
              '         end if;'
              '      if mTotalPed is null then'
              '         mTotalPed:=0;'
              '         end if;'
              ''
              
                '      mDifDup := mTotalPed+:NEW.PF2T_PED1_OUTVDUP - (mValorDup *' +
                ' :NEW.PF2T_QTDDUP);'
              '      if :NEW.PF2T_QTDDUP!=:NEW.PF2T_QTDDUP_ANT THEN'
              '         delete from CADPF1V where PF1VCODEMP=:NEW.PF2T_CODEMP'
              '                                 and PF1VCHAVE=:NEW.PF2T_CHAVE'
              
                '                                 and PF1VLOTSEQ=:NEW.PF2T_CHAVE_' +
                'ANO;'
              '         while l_loop < :NEW.PF2T_QTDDUP loop'
              '            l_loop := l_loop +  1;'
              
                '            insert into CADPF1V (PF1VCODEMP,PF1VCHAVE,PF1V_ID_NE' +
                'W,PF1V_ID_PF01_NEW,PF1VLOTSEQ'
              '                           ,PF1VCODIGO'
              '                           ,PF1VQTDPARC'
              '                          ,PF1VCODFP'
              '                          ,PF1VVALOR'
              '                          ,PF1VBAIXA'
              '                          ,PF1VNOMFP'
              '                          ,PF1VPRAZO'
              '                          ,PF1VDATAV'
              '                          ) values ('
              '                           :NEW.PF2T_CODEMP,:NEW.PF2T_CHAVE'
              '                           ,CADPF1V_SEQ.NEXTVAL'
              '                           ,:NEW.PF2T_ID_PF01_NEW'
              '                           ,:NEW.PF2T_CHAVE_ANO'
              '                          ,l_loop'
              '                          ,:NEW.PF2T_QTDDUP'
              '                          ,:NEW.PF2T_CODFP'
              '                          ,mValorDup+mDifDup'
              '                          ,:NEW.PF2T_BAIXA'
              '                          ,:NEW.PF2T_NOMFP'
              '                          ,substr(:NEW.PF2T_PRAZOS,pos_ini,4)'
              
                '                          ,:NEW.PF2T_DATAPED+TO_NUMBER(substr(:N' +
                'EW.PF2T_PRAZOS,pos_ini,4))'
              '                          );'
              '            pos_ini := pos_ini + 4;'
              '            mDifDup := 0;'
              '            end loop;'
              '         end if;'
              '      if :NEW.PF2T_QTDDUP=:NEW.PF2T_QTDDUP_ANT THEN'
              
                '         Update CADPF1V set PF1VVALOR=mValorDup + case when  PF1' +
                'VCODIGO=1 then'
              '         mDifDup else 0 end'
              
                '                                  where PF1VCODEMP=:NEW.PF2T_COD' +
                'EMP'
              '                                  and PF1VCHAVE=:NEW.PF2T_CHAVE'
              
                '                                  and PF1VLOTSEQ=:NEW.PF2T_CHAVE' +
                '_ANO;'
              ''
              '         end if;'
              '      end if;'
              '   end if;'
              'END;'
              ''
              '')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object tsGerarDuplic: TTabSheet
          Caption = 'Gerar Duplic'
          ImageIndex = 3
          object Memo_Triggers_Duplic: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              ''
              ''
              ''
              
                'CREATE OR REPLACE TRIGGER CADP01_TRIG01_DUPLIC AFTER UPDATE OR D' +
                'ELETE OR INSERT ON CADP01'
              'FOR EACH ROW'
              'declare mCriardup VARCHAR2(01);'
              '        mCriardup_eve VARCHAR2(01);'
              '        pldr_nombco VARCHAR2(60);'
              '        pldr_nomdep VARCHAR2(60);'
              '        pldr_nomccu VARCHAR2(60);'
              '        pldr_nome VARCHAR2(60);'
              '        pldr_natdc VARCHAR2(01);'
              '        pldr_codccu VARCHAR2(10);'
              '        pldr_coddep VARCHAR2(10);'
              '        pldr_descmov VARCHAR2(60);'
              '        pldr_doc VARCHAR2(10);'
              '        pldr_codcai NUMBER;'
              '        mGerarDuplic NUMBER;'
              '        mTotalDup NUMBER;'
              '        msaida varchar(200);'
              ''
              '    mchave_id integer;'
              '    mchave_tabela varchar2(50);'
              ''
              ''
              '        mVarTipoPed VARCHAR2(100);'
              '        mUsrLogado VARCHAR2(3000);'
              '        mQtdDupExist NUMBER;'
              '        mQtdDupGer NUMBER;'
              '        mIncluirReg VARCHAR2(01);'
              '        mOperDup VARCHAR2(01);'
              '        mExisteDup NUMBER;'
              '        mExisteNSai NUMBER;'
              '        mTotal_Temp NUMBER;'
              '        mTotal_FPAG NUMBER;'
              '        mNumeroDup NUMBER;'
              '        mErro NUMBER;'
              ''
              '        mDtEmis DATE;'
              '        mDtPag DATE;'
              '        mDtPag_NOV DATE;'
              '        mValorPag NUMBER;'
              '        mNR INTEGER;'
              '        mLoteBX Integer;'
              '        mCodFPCRDup Integer;'
              '        mCodFPCR Integer;'
              '        mCodChqCli Integer;'
              ''
              '        mPJurm NUMBER;'
              '        mPDescM NUMBER;'
              '        mPMulta NUMBER;'
              '        mQtdDM NUMBER;'
              '        mUsrBX INTEGER;'
              '        mCodLDR INTEGER;'
              '        mIdLdrNew INTEGER;'
              '        mCodEmp_Chave Integer;'
              '        mGerarFPCR Integer;'
              ''
              '        mSerie VARCHAR2(03);'
              '        mMOdelo VARCHAR2(03);'
              '        mBaixarDuplic NUMBER;'
              '        mDup NUMBER;'
              '        mCusBco NUMBER;'
              '        CURSOR c_Cadp01v IS'
              ''
              ''
              '        Select P1VORDEM,'
              '               P1VSEQ,'
              
                '               CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  COMISPA' +
                'RC ELSE P1VVALOR END  AS P1VVALOR,'
              '               P1VCHAVE_NIVEL,'
              '               P1VCODEMP,'
              '               P1VLOTSEQ,'
              '               P1VCHAVE,'
              '               P1VID_PED01_NEW,'
              '               P1VDATAV,'
              '               P1VVDESCF'
              '               ,P1VDTDESCF'
              ''
              '               ,P1VVINC02'
              '               ,P1VNOMFPGTO'
              '               ,P1VCODFP'
              '               ,P1VPFPGTO'
              '               ,P1VEMITENTE'
              '               ,P1VNUMDOC'
              '               ,P1VBANCO'
              '               ,P1VSERIE'
              '               ,P1VCOMP'
              '               ,P1VCPF'
              '               ,P1VRG'
              '               ,P1VCC'
              '               ,P1VDTNAS'
              '               ,pfpdev_codemp'
              '               ,pfpdev_codecf'
              '               ,pfpdev_numero'
              '               ,pfpdev_desd'
              '               ,pfpdev_dup'
              '               ,PFPDEV_DTEMIS'
              '               ,PFPDEV_DUP_CHAVE_ID_ANO'
              '               ,PFPDEV_DUP_CHAVE_ID'
              '               ,CREXCLUSIVOPARA'
              '               ,VALCOMIS'
              '               ,PFPQTDPARC'
              #9#9#9'   FROM ('
              ''
              ''
              ''
              ''
              '        SELECT'
              
                '        TRUNC(VALCOMIS/CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTD' +
                'PARC END,2)'
              
                '        +CASE WHEN P1VSEQ=1 THEN  VALCOMIS - TRUNC( (TRUNC(  (VA' +
                'LCOMIS/CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTDPARC END) ,2) * ' +
                'CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTDPARC END),2) ELSE 0 END'
              '        AS COMISPARC'
              '        ,T1.* FROM ('
              ''
              ''
              '        Select max(ROWNUM) AS P1VORDEM,'
              '               PFPSEQ  AS P1VSEQ,'
              
                '               sum(CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  PFP' +
                'VALOR-PFPVALOR_SERVICO ELSE PFPVALOR END ) AS P1VVALOR,'
              '               max(PFPCHAVE_NIVEL) AS P1VCHAVE_NIVEL,'
              '               PFPCODEMP as P1VCODEMP,'
              '               PFPLOTSEQ as P1VLOTSEQ,'
              '               PFPCHAVE as P1VCHAVE,'
              '               PFPID_PED01_NEW as P1VID_PED01_NEW,'
              '               PFPDATA as P1VDATAV,'
              
                '               sum(CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  NVL' +
                '(PFPVDESCF,0)-NVL(PFPVDESCF_SERV,0) ELSE NVL(PFPVDESCF,0) END ) ' +
                'AS P1VVDESCF'
              '               ,max(PFPDTDESCF)  as P1VDTDESCF'
              ''
              '               ,NVL(PFPVINCULO,0) as P1VVINC02'
              '               ,NVL(PFPNOMFOR,'#39'DINHEIRO'#39') as P1VNOMFPGTO'
              '               ,NVL(PFPFORMA,0) AS  P1VCODFP'
              '               ,PFPFPGTO AS P1VPFPGTO'
              '               ,PFPEMITENTE AS P1VEMITENTE'
              '               ,PFPNUMDOC AS P1VNUMDOC'
              '               ,PFPBANCO AS P1VBANCO'
              '               ,PFPSERIE AS P1VSERIE'
              '               ,PFPCOMP AS P1VCOMP'
              '               ,PFPCNPF AS P1VCPF'
              '               ,PFPRG AS P1VRG'
              '               ,PFPCC AS P1VCC'
              '               ,PFPDTNAS AS P1VDTNAS'
              '               ,pfpdev_codemp'
              '               ,pfpdev_codecf'
              '               ,pfpdev_numero'
              '               ,pfpdev_desd'
              '               ,pfpdev_dup'
              '               ,PFPDEV_DTEMIS'
              '               ,PFPDEV_DUP_CHAVE_ID_ANO'
              '               ,PFPDEV_DUP_CHAVE_ID'
              
                '               ,CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  1 ELSE' +
                ' 0 end AS CREXCLUSIVOPARA'
              
                '               ,(SELECT SUM(P2VCOMIS) FROM CADP02 WHERE P2CHAVE=' +
                'PFPCHAVE AND P2LOTSEQ=PFPLOTSEQ AND P2CODEMP=PFPCODEMP) AS VALCO' +
                'MIS'
              '               ,MAX(PFPQTDPARC) as PFPQTDPARC'
              '               from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              '               and  PFPCHAVE  =:NEW.P1CHAVE'
              '               group by'
              '               PFPSEQ,'
              '               PFPCODEMP,'
              '               PFPCHAVE,'
              '               PFPID_PED01_NEW,'#9#9#9'   '
              '               PFPLOTSEQ,'
              '                PFPDATA'
              '               ,PFPVINCULO'
              '               ,PFPNOMFOR'
              '               ,PFPFORMA'
              '               ,PFPFPGTO'
              '               ,PFPEMITENTE'
              '               ,PFPNUMDOC'
              '               ,PFPBANCO'
              '               ,PFPSERIE'
              '               ,PFPCOMP'
              '               ,PFPCNPF'
              '               ,PFPRG'
              '               ,PFPCC'
              '               ,PFPDTNAS'
              '               ,pfpdev_codemp'
              '               ,pfpdev_codecf'
              '               ,pfpdev_numero'
              '               ,pfpdev_desd'
              '               ,pfpdev_dup'
              '               ,PFPDEV_DTEMIS'
              '               ,PFPDEV_DUP_CHAVE_ID_ANO'
              ''
              '               ,PFPDEV_DUP_CHAVE_ID'
              
                '               ,CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  1 ELSE' +
                ' 0 END'
              ''
              #9#9#9'   having'
              
                '               sum(CASE WHEN :NEW.P1TITSEP_PROD_SERV=1 THEN  PFP' +
                'VALOR-PFPVALOR_SERVICO ELSE PFPVALOR END )>0'
              '               ) T1'
              #9'union all'
              ''
              '        SELECT'
              
                '        TRUNC(VALCOMIS/CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTD' +
                'PARC END,2)'
              
                '        +CASE WHEN P1VSEQ=1 THEN  VALCOMIS - TRUNC( (TRUNC(  (VA' +
                'LCOMIS/CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTDPARC END) ,2) * ' +
                'CASE WHEN PFPQTDPARC=0 THEN 1 ELSE PFPQTDPARC END),2) ELSE 0 END'
              '        AS COMISPARC'
              '        ,T1.* FROM ('
              ''
              ''
              '        Select max(ROWNUM) AS P1VORDEM,'
              '               PFPSEQ+32  AS P1VSEQ,'
              '               sum(PFPVALOR_SERVICO) AS P1VVALOR,'
              '               max(PFPCHAVE_NIVEL) AS P1VCHAVE_NIVEL,'
              '               PFPCODEMP as P1VCODEMP,'
              '               PFPLOTSEQ as P1VLOTSEQ,'
              '               PFPCHAVE as P1VCHAVE,'
              '               PFPID_PED01_NEW AS PFPID_PED01_NEW,'
              '               PFPDATA as P1VDATAV'
              '               ,max(NVL(PFPVDESCF_SERV,0)) as P1VVDESCF'
              '               ,max(PFPDTDESCF)  as P1VDTDESCF'
              ''
              '               ,NVL(PFPVINCULO,0) as P1VVINC02'
              '               ,NVL(PFPNOMFOR,'#39'DINHEIRO'#39') as P1VNOMFPGTO'
              '               ,NVL(PFPFORMA,0) AS  P1VCODFP'
              '               ,PFPFPGTO AS P1VPFPGTO'
              '               ,PFPEMITENTE AS P1VEMITENTE'
              '               ,PFPNUMDOC AS P1VNUMDOC'
              '               ,PFPBANCO AS P1VBANCO'
              '               ,PFPSERIE AS P1VSERIE'
              '               ,PFPCOMP AS P1VCOMP'
              '               ,PFPCNPF AS P1VCPF'
              '               ,PFPRG AS P1VRG'
              '               ,PFPCC AS P1VCC'
              '               ,PFPDTNAS AS P1VDTNAS'
              '               ,pfpdev_codemp'
              '               ,pfpdev_codecf'
              '               ,pfpdev_numero'
              '               ,pfpdev_desd'
              '               ,pfpdev_dup'
              '               ,PFPDEV_DTEMIS'
              '               ,PFPDEV_DUP_CHAVE_ID_ANO'
              '               ,PFPDEV_DUP_CHAVE_ID'
              ''
              '               ,1 AS CREXCLUSIVOPARA'
              ''
              
                '               ,(SELECT SUM(P2SVCOMIS) FROM CADP02S WHERE P2SCHA' +
                'VE=PFPCHAVE AND P2SLOTSEQ=PFPLOTSEQ AND P2SCODEMP=PFPCODEMP) AS ' +
                'VALCOMIS'
              '               ,MAX(PFPQTDPARC) as PFPQTDPARC'
              ''
              '               from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              '               and  PFPCHAVE  =:NEW.P1CHAVE'
              
                #9'       and :NEW.P1TITSEP_PROD_SERV=1 '#9#9'   AND PFPVALOR_SERVICO ' +
                '> 0'
              '               group by'
              '               PFPSEQ,'
              '               PFPCODEMP,'
              '               PFPCHAVE,'
              '               PFPID_PED01_NEW,'
              '               PFPCHAVE,'
              '               PFPLOTSEQ,'
              '                PFPDATA'
              '               ,PFPVINCULO'
              '               ,PFPNOMFOR'
              '               ,PFPFORMA'
              '               ,PFPFPGTO'
              '               ,PFPEMITENTE'
              '               ,PFPNUMDOC'
              '               ,PFPBANCO'
              '               ,PFPSERIE'
              '               ,PFPCOMP'
              '               ,PFPCNPF'
              '               ,PFPRG'
              '               ,PFPCC'
              '               ,PFPDTNAS'
              '               ,pfpdev_codemp'
              '               ,pfpdev_codecf'
              '               ,pfpdev_numero'
              '               ,pfpdev_desd'
              '               ,pfpdev_dup'
              '               ,PFPDEV_DTEMIS'
              '               ,PFPDEV_DUP_CHAVE_ID_ANO'
              '               ,PFPDEV_DUP_CHAVE_ID'
              ''
              ''
              '               order by  P1VDATAV'
              '               ) T1'
              '               ) T2'
              '               ;'
              ''
              ''
              ''
              '        CURSOR c_CadUsr_logado IS'
              ''
              '        Select  CL_TERMINAL,'
              '                CLDATHOR_INI,'
              '                CLCODUSR,'
              '                CLNOMUSR,'
              '                CLSESSAO,'
              '                CLORIGEM_INFO'
              '                from CADUSR_LOG'
              '               where CL_TERMINAL=userenv('#39'TERMINAL'#39')'
              '               and CLDATHOR_FEC is null;'
              ''
              ''
              'BEGIN'
              ''
              ''
              'IF (UPDATING) OR (INSERTING)   THEN'
              '   if :NEW.P1SERIE is null or :NEW.P1SERIE='#39' '#39' then'
              '      mSerie:='#39'1'#39';'
              '   else'
              '      mSerie:=:NEW.P1SERIE;'
              '   end if;'
              ''
              '   if :NEW.P1MODELO is null or :NEW.P1MODELO='#39' '#39' then'
              '      mModelo:='#39'1'#39';'
              '   else'
              '      mModelo:=:NEW.P1MODELO;'
              '   end if;'
              ''
              '   mCriarDup_Eve:='#39'N'#39';'
              '   mCriardup:='#39'N'#39';'
              '    -- mVarTipoPed:='#39'max(PDUPTIP'#39'|| to_char(:NEW.P1TIPO)||'#39')'#39';'
              
                '   -- execute immediate '#39'select mvartipoped from PARGER'#39' into mG' +
                'erarDuplic;'
              ''
              ''
              '   if NVL(:NEW.P1TIPO,0)<1 OR :NEW.P1TIPO>29 then'
              
                '      mVarTipoPed:='#39'select max(PDUPTIP'#39'|| 1||'#39'),max(PPEDFPGTO) f' +
                'rom PARGER '#39';'
              '   else'
              
                '      mVarTipoPed:='#39'select max(PDUPTIP'#39'|| to_char(NVL(:NEW.P1TIP' +
                'O,0))||'#39'),max(PPEDFPGTO) from PARGER '#39';'
              '   end if;'
              ''
              ''
              
                '   execute immediate mvartipoped into mGerarDuplic,mBaixarDuplic' +
                ';'
              ''
              '   if mgerarduplic=0 then'
              '      mCriardup:='#39'S'#39';'
              '   end IF;'
              ''
              '   if :NEW.P1CODEMP>100 then'
              '      mCodEmp_Chave:=:NEW.P1CODEMP-100;'
              '   else'
              '      mCodEmp_Chave:=:NEW.P1CODEMP;'
              '   end if;'
              ''
              ''
              
                '--  RAISE_APPLICATION_ERROR(-20000, '#39'EMIDOC '#39' || :NEW.P1EMIDOC |' +
                '|   '#39' NUMCF '#39' || :NEW.P1NUMCF    ||'#39' NUMNF '#39' || :NEW.P1NUMNF   |' +
                '| '#39' NUM SERV '#39' || :NEW.P1NUMNF_SERV );'
              ''
              '   if  (  (INSERTING) and (:NEW.P1EMIDOC=1) and'
              '            ('
              '                 (nvl(:NEW.P1NUMCF,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF,0)<>0) or'
              '                 (nvl(:NEW.P1NFCE_NUMERO,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF_SERV,0)<>0)'
              '               ) )'
              '            or ( (UPDATING) and (:NEW.P1EMIDOC=1) and'
              '              (  (nvl(:NEW.P1NUMCF,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF,0)<>0) or'
              '                 (nvl(:NEW.P1NFCE_NUMERO,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF_SERV,0)<>0)'
              '               ) and  ('
              '                      (:NEW.P1EMIDOC<>:OLD.P1EMIDOC) or'
              '                         ('
              '                             (:NEW.P1NUMCF<>:OLD.P1NUMCF) or'
              
                '                             (:NEW.P1NFCE_NUMERO<>:OLD.P1NFCE_NU' +
                'MERO) or'
              '                             (:NEW.P1NUMNF<>:OLD.P1NUMNF) or'
              
                '                             (nvl(:NEW.P1NUMNF_SERV,0)<>nvl(:OLD' +
                '.P1NUMNF_SERV,0))'
              '                          ) or'
              '                       mtotaldup<>:NEW.P1TOTALL'
              '                       )  )'
              ''
              '                        then'
              ''
              '      if :NEW.P1STATUS<7 then'
              '         mCriardup_Eve:='#39'S'#39';'
              '      else'
              '         mCriardup_Eve:='#39'N'#39';'
              ''
              '      END IF;'
              ''
              '   else'
              '      mcriardup_Eve:='#39'N'#39';'
              '   END IF;'
              ''
              '   if  mcriardup='#39'S'#39' and mcriardup_eve='#39'N'#39' then'
              '       mcriardup:='#39'N'#39';'
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              '   if mcriardup='#39'S'#39' then'
              '      if :NEW.P1NUMCF>0 then'
              '         mNumeroDup:=:NEW.P1NUMCF;'
              '         mDtEmis   :=:NEW.P1DATACF;'
              '      elsif nvl(:NEW.P1NUMNF_SERV,0)>0 then'
              '         mNumeroDup      :=nvl(:NEW.P1NUMNF_SERV,0);'
              '         mDtemis         :=:NEW.P1DATANF_SERV;'
              '      elsif :NEW.P1NUMNF>0 then'
              '         mNumeroDup:=:NEW.P1NUMNF;'
              '         mDtEmis   :=:NEW.P1DATANF;'
              '      elsif nvl(:NEW.P1NFCE_NUMERO,0)>0 then'
              '         mNumeroDup      :=nvl(:NEW.P1NFCE_NUMERO,0);'
              '         mDtemis         :=:NEW.P1NFCE_DATA;'
              ''
              '      end if;'
              ''
              ''
              '      Select sum(PFPVALOR) into mTotal_FPAG'
              '               from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPCHAVE  =:NEW.P1CHAVE;'
              ''
              '      if mtotal_FPAG is null then'
              '         mTotal_FPAG:=0;'
              '      end if;'
              '      if round(mTotal_FPAG,2)< round(:NEW.P1TOTALL,2) then'
              '         delete from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPCHAVE  =:NEW.P1CHAVE;'
              '         mtotal_FPAG:=0;'
              '      end if;'
              ''
              '      mtotal_temp:=:NEW.P1TOTALL;'
              '      if mTotal_FPAG=0 then'
              '         Select sum(P1VVALOR) into mTotal_Temp'
              '              from CADP01V'
              '               where P1VCODEMP=:NEW.P1CODEMP'
              '               and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '               and  P1VCHAVE  =:NEW.P1CHAVE'
              '               and  P1VORDEM  =:NEW.P1ORDEM;'
              '         if mtotal_temp is null then'
              '            mTotal_temp:=0;'
              '         end if;'
              ''
              '      end if;'
              
                '--    RAISE_APPLICATION_ERROR(-20000, '#39'Entrou noa funcao lindoma' +
                'r ANTES CADP01 '#39' ||  mTotal_temp || '#39' TOTALL '#39' || :NEW.P1TOTALL ' +
                ');'
              ''
              '      if mTotal_temp<:NEW.P1TOTALL then'
              '            delete from CADP01V'
              '               where P1VCODEMP=:NEW.P1CODEMP'
              '               and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '               and  P1VCHAVE  =:NEW.P1CHAVE'
              '               and  P1VORDEM  =:NEW.P1ORDEM;'
              '            mtotal_temp:=0;'
              '            mtotal_fpag:=:NEW.P1TOTALL;'
              '      end if;'
              ''
              
                '--   RAISE_APPLICATION_ERROR(-20000, '#39'Total FP '#39'+to_char(mtotal_' +
                'fpag)+'#39' temp: '#39'+to_char(mtotal_temp)+'#39' titulo '#39'+to_char(:new.p1t' +
                'otall));'
              ''
              ''
              ''
              ''
              'if mtotal_fpag=0 then  -- cria-se um titulo com valor a vista'
              '-- inicio cadpfp'
              
                '   MERGE INTO CADPFP USING (Select  '#39'N'#39', cadp01v.p1vchave,cadp01' +
                'v.p1vid_ped01_new, cadp01v.p1vchave_nivel, cadp01v.p1vcodemp, ca' +
                'dp01v.p1vdatav, cadp01v.p1vdtdescf,'
              
                '   cadp01v.p1vvalor, cadp01v.p1vcodfp, cadp01v.p1vpfpgto, cadp01' +
                'v.p1vlotseq, cadp01v.p1vnomfpgto, cadp01v.p1vordem, P1VDATAV-:NE' +
                'W.P1DATDOC as prazo,                              (select count(' +
                '*) from CADP01V'
              '                             where P1VCODEMP=:NEW.P1CODEMP'
              '                             and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '                             and  P1VCHAVE  =:NEW.P1CHAVE'
              '                             and  P1VORDEM  =:NEW.P1ORDEM)'
              
                '    as qtdparc, cadp01v.p1vseq, cadp01v.p1vdescf, cadp01v.p1vvin' +
                'c02 from CADP01V  where P1VCODEMP=:NEW.P1CODEMP'
              '                             and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '                             and  P1VCHAVE  =:NEW.P1CHAVE'
              '                             and  P1VORDEM  =:NEW.P1ORDEM'
              
                ') CADP01V  on ( CADPFP.PFPCHAVE = cadp01v.p1vchave and  CADPFP.P' +
                'FPCODEMP = cadp01v.p1vcodemp)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' PFPBAIXA='#39'N'#39
              ', PFPCHAVE_NIVEL=cadp01v.p1vchave_nivel'
              ', PFPDATA=cadp01v.p1vdatav'
              ', PFPDTDESCF=cadp01v.p1vdtdescf'
              ', PFPDUPLIC=cadp01v.p1vvalor'
              ', PFPFORMA=cadp01v.p1vcodfp'
              ', PFPFPGTO=cadp01v.p1vpfpgto'
              ', PFPNOMFOR=cadp01v.p1vnomfpgto'
              ', PFPPRAZO=prazo'
              ', PFPQTDPARC=qtdparc'
              ', PFPVALOR=cadp01v.p1vvalor'
              ', PFPVDESCF=cadp01v.p1vdescf'
              ', PFPVINCULO=cadp01v.p1vvinc02'
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' PFPBAIXA'
              ', PFPCHAVE'
              ', PFPID_NEW'
              ', PFPID_PED01_NEW'
              ', PFPCHAVE_NIVEL'
              ', PFPCODEMP'
              ', PFPDATA'
              ', PFPDTDESCF'
              ', PFPDUPLIC'
              ', PFPFORMA'
              ', PFPFPGTO'
              ', PFPLOTSEQ'
              ', PFPNOMFOR'
              ', PFPORDEM'
              ', PFPPRAZO'
              ', PFPQTDPARC'
              ', PFPSEQ'
              ', PFPVALOR'
              ', PFPVDESCF'
              ', PFPVINCULO'
              ' ) values  ('
              #39'N'#39
              ',cadp01v.p1vchave'
              ',CADPFP_SEQ.NEXTVAL'
              ',cadp01v.p1vid_ped01_new '
              ',cadp01v.p1vchave_nivel'
              ',cadp01v.p1vcodemp'
              ',cadp01v.p1vdatav'
              ',cadp01v.p1vdtdescf'
              ',cadp01v.p1vvalor'
              ',cadp01v.p1vcodfp'
              ',cadp01v.p1vpfpgto'
              ',cadp01v.p1vlotseq'
              ',cadp01v.p1vnomfpgto'
              ',cadp01v.p1vordem'
              ',prazo'
              ',qtdparc'
              ',cadp01v.p1vseq'
              ',cadp01v.p1vvalor'
              ',cadp01v.p1vdescf'
              ',cadp01v.p1vvinc02'
              ');'
              ''
              '-- TERMINO CADPFP'
              '      end if;'
              ''
              ''
              '      if mtotal_temp=0 then'
              '        delete from CADP01V'
              '        where P1VCODEMP=:NEW.P1CODEMP'
              '               and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '               and  P1VCHAVE  =:NEW.P1CHAVE'
              '               and  P1VORDEM  =:NEW.P1ORDEM;'
              ''
              '-- inicio cadpfp'
              ''
              ''
              ''
              ''
              ''
              
                'MERGE INTO CADPFP USING (Select  '#39'N'#39' as dPFPBAIXA, :NEW.P1CHAVE ' +
                'as dPFPCHAVE,'
              '  :NEW.P1ID_NEW AS dPFPID_PED01_NEW,'
              ' :NEW.P1CODEMP as dPFPCODEMP, mdtemis as dPFPDATA, mdtemis'
              
                ' as dPFPDTDESCF, :NEW.P1TOTALL as dPFPDUPLIC, (select max(fpcodi' +
                'go) '
              
                ' from cadfp where  fpcodigo = ( select min(fpcodigo) from cadfp)' +
                ') as dPFPFORMA,'
              
                ' 100 as dPFPFPGTO, 0 as dPFPLOTSEQ, (select max(fpdesc) from cad' +
                'fp where  fpcodigo = ( select min(fpcodigo)  '
              ' from cadfp)) as dPFPNOMFOR, 1 as dPFPORDEM,'
              
                ' 0 as dPFPPRAZO, 1 as dPFPQTDPARC, 1 as dPFPSEQ, :NEW.P1TOTALL a' +
                's dPFPVALOR, :NEW.P1DESCFIN as dPFPVDESCF from dual'
              
                ') d  on ( CADPFP.PFPCHAVE = dPFPCHAVE and  CADPFP.PFPCODEMP = dP' +
                'FPCODEMP and  CADPFP.PFPLOTSEQ = dPFPLOTSEQ and  CADPFP.PFPORDEM' +
                ' = dPFPORDEM'
              'and  CADPFP.PFPSEQ = dPFPSEQ)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' PFPBAIXA=d.dPFPBAIXA'
              ', PFPDATA=d.dPFPDATA'
              ', PFPDTDESCF=d.dPFPDTDESCF'
              ', PFPDUPLIC=d.dPFPDUPLIC'
              ', PFPFORMA=d.dPFPFORMA'
              ', PFPFPGTO=d.dPFPFPGTO'
              ', PFPNOMFOR=d.dPFPNOMFOR'
              ', PFPPRAZO=d.dPFPPRAZO'
              ', PFPQTDPARC=d.dPFPQTDPARC'
              ', PFPVALOR=d.dPFPVALOR'
              ', PFPVDESCF=d.dPFPVDESCF'
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' PFPBAIXA'
              ', PFPCHAVE'
              ', PFPID_NEW'
              ', PFPID_PED01_NEW'
              ', PFPCODEMP'
              ', PFPDATA'
              ', PFPDTDESCF'
              ', PFPDUPLIC'
              ', PFPFORMA'
              ', PFPFPGTO'
              ', PFPLOTSEQ'
              ', PFPNOMFOR'
              ', PFPORDEM'
              ', PFPPRAZO'
              ', PFPQTDPARC'
              ', PFPSEQ'
              ', PFPVALOR'
              ', PFPVDESCF'
              ' ) values  ('
              'd.dPFPBAIXA'
              ',d.dPFPCHAVE'
              ',CADPFP_SEQ.NEXTVAL'
              ',d.dPFPID_PED01_NEW'
              ',d.dPFPCODEMP'
              ',d.dPFPDATA'
              ',d.dPFPDTDESCF'
              ',d.dPFPDUPLIC'
              ',d.dPFPFORMA'
              ',d.dPFPFPGTO'
              ',d.dPFPLOTSEQ'
              ',d.dPFPNOMFOR'
              ',d.dPFPORDEM'
              ',d.dPFPPRAZO'
              ',d.dPFPQTDPARC'
              ',d.dPFPSEQ'
              ',d.dPFPVALOR'
              ',d.dPFPVDESCF'
              ');'
              ''
              ''
              '-- termino cadpfp'
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              '   mtotaldup:=0;'
              '   mQtdDupGer:=0;'
              '   mQtdDupExist:=0;'
              '   mOperDup:='#39'I'#39';'
              '   mUsrBx:=0;'
              '   mCodLDR:=0;'
              '   mIdLdrNew :=0;'
              '   mValorPag:=0;'
              ''
              '   mNR:=0;'
              '   mCusBco:=0;'
              ''
              '   if :NEW.P1TIPO_ENTSAI=1 then'
              '      mDup:=5;'
              '   else'
              '      mDup:=0;'
              '   end if;'
              '   mDtPag_NOV:=null;'
              ''
              ''
              '   if mCriarDup='#39'S'#39' then'
              
                '      select sum(CRVALOR),count(*),max(CRDTPAG) into mtotaldup,m' +
                'QtdDupExist,mdtpag_NOV from CADDAR where CRCODEMP=:NEW.P1CODEMP'
              
                '             and CRNPED=:NEW.P1CHAVE and CRORDEM=:NEW.P1ORDEM an' +
                'd CRLOTSEQ_CP=:NEW.P1LOTSEQ;'
              '      if mtotaldup is null then'
              '         mtotaldup:=0;'
              '         mQtdDupExist:=0;'
              '      end IF;'
              '   end IF;'
              
                '--    RAISE_APPLICATION_ERROR(-20000, '#39'Totaldup '#39' || mtotaldup |' +
                '| '#39'qtd dup '#39' || mqtddupexist  || '#39'dup exist '#39' ||  mExisteDup || ' +
                #39' CRIADUP '#39' || mcriardup );'
              ''
              ''
              ''
              '   if mCriarDup='#39'S'#39' then'
              
                '      select count(*) into mQtdDupGer from CADPFP where PFPCODEM' +
                'P=:NEW.P1CODEMP'
              
                '             and PFPCHAVE=:NEW.P1CHAVE       and  (PFPORDEM =:NE' +
                'W.P1ORDEM or PFPORDEM is null )'
              '             and PFPLOTSEQ=:NEW.P1LOTSEQ;'
              '      if mQtdDupGer is null then'
              '         mQtdDupGer:=0;'
              '      end IF;'
              '   end IF;'
              ''
              ''
              ''
              '   if mCriarDup='#39'S'#39' then'
              ''
              
                '      Select max(PJURM),max(PDESCM),max(PMULTA),max(PQTDDM) into' +
                ' mPJurm,mPDescM,mPMulta,mQtdDM from CADPAR where PCODEMP=:NEW.P1' +
                'CODEMP'
              '              and PCODSEQ=1;'
              '      if mPJurm is null then'
              
                '         Select max(PJURM),max(PDESCM),max(PMULTA),max(PQTDDM) i' +
                'nto mPJurm,mPDescM,mPMulta,mQtdDM from CADPAR where PCODSEQ=1;'
              '      end if;'
              ''
              ''
              '      pldr_codcai:=:NEW.P1CX_CODCAI;'
              '      if pldr_codcai=0 or pldr_codcai is null then'
              '         pldr_codcai:=1;'
              '      end IF;'
              
                '      select max(BCBANCO) into pldr_nombco from CADBCO where BCC' +
                'ODEMP=:NEW.P1CODEMP and BCCODBCO=pldr_codcai;'
              '      if trim(pldr_nombco)='#39#39' or pldr_nombco is null then'
              
                '         select max(BCBANCO) into pldr_nombco from CADBCO where ' +
                ' BCCODBCO=pldr_codcai;'
              '      end IF;'
              ''
              '      if trim(pldr_nombco)='#39#39' then'
              '         pldr_nombco:='#39'NAO ENCONTRADO '#39'+to_char(pldr_codcai);'
              '      end IF;'
              '      pldr_doc:='#39'CADDAR0'#39';'
              '      if :NEW.P1TIPO_ENTSAI=1 then'
              '         pldr_doc:='#39'CADDARD'#39';'
              '         BEGIN'
              '           Select max('
              '            CASE WHEN LENGTH(CNOMCCD)>1 THEN CNOMCCD else'
              
                '            ( Select max(NOME) from PARLDR where CDOC=pldr_doc) ' +
                'end'
              '             )'
              '            ,max('
              '            CASE WHEN LENGTH(CCODCCD)>1 THEN CCODCCD else'
              
                '            ( Select max(CODCC) from PARLDR where CDOC=pldr_doc)' +
                ' end'
              '             )'
              '            ,max('
              '            CASE WHEN LENGTH(CCODDEPD)>1 THEN CCODDEPD else'
              
                '            ( Select max(CODDEP) from PARLDR where CDOC=pldr_doc' +
                ') end'
              
                '             ) into pldr_descmov,pldr_codccu,pldr_coddep from CA' +
                'DCLI where CCODCLI=:NEW.P1CODCLI;'
              ''
              '         EXCEPTION'
              '             WHEN OTHERS THEN'
              '             pldr_descmov:=null;'
              '             RAISE;'
              '         END;'
              '      END IF;'
              ''
              ''
              '      if pldr_descmov is null then'
              '         BEGIN'
              ''
              '         Select max('
              '            CASE WHEN LENGTH(CNOMCCC)>1 THEN CNOMCCC else'
              
                '            ( Select max(NOME) from PARLDR where CDOC=pldr_doc) ' +
                'end'
              '             )'
              '            ,max('
              '            CASE WHEN LENGTH(CCODCCC)>1 THEN CCODCCC else'
              
                '            ( Select max(CODCC) from PARLDR where CDOC=pldr_doc)' +
                ' end'
              '             )'
              '            ,max('
              '            CASE WHEN LENGTH(CCODDEPC)>1 THEN CCODDEPC else'
              
                '            ( Select max(CODDEP) from PARLDR where CDOC=pldr_doc' +
                ') end'
              
                '             ) into pldr_descmov,pldr_codccu,pldr_coddep from CA' +
                'DCLI where CCODCLI=:NEW.P1CODCLI;'
              ''
              '         EXCEPTION'
              '          WHEN OTHERS THEN'
              '          pldr_descmov:='#39'NAO ACHADO'#39';'
              '          pldr_codccu:=null;'
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'ATRIBUIU NULO'#39' ||  m' +
                'ExisteDup );'
              '          RAISE;'
              '          END;'
              '      end IF;'
              ''
              
                '--   RAISE_APPLICATION_ERROR(-20000, '#39'Total FP '#39'|| mtotal_fpag  ' +
                '|| '#39' temp: '#39' || mtotal_temp || '#39' titulo '#39' || :new.p1totall);'
              ''
              ''
              ''
              '      if not pldr_codccu is null then'
              '         BEGIN'
              
                '         Select max(CCNOME),max(CCNAT) into pldr_nomccu,pldr_nat' +
                'dc from CADCCU where CCCODEMP=mCodEmp_Chave'
              '           and CCCODCCU=pldr_codccu;'
              '         EXCEPTION'
              '          WHEN OTHERS THEN'
              '          pldr_nomccu:=null;'
              '          RAISE;'
              ''
              '         END;'
              '      END IF;'
              ''
              '      if pldr_nomccu is null then'
              '         BEGIN'
              
                '         Select max(CCNOME) into pldr_nomccu from CADCCU where C' +
                'CCODCCU=pldr_codccu;'
              '         EXCEPTION'
              '          WHEN OTHERS THEN'
              '          pldr_nomccu:='#39'NAO ENCONTRADO'#39';'
              '          RAISE;'
              '         END;'
              '      end IF;'
              
                '--   RAISE_APPLICATION_ERROR(-20000, '#39'Total FP '#39'|| mtotal_fpag  ' +
                '|| '#39' temp: '#39' || mtotal_temp || '#39' titulo '#39' || :new.p1totall  || '#39 +
                'CODDEP '#39'||pldr_coddep);'
              ''
              ''
              '     if not pldr_coddep is null then'
              '        BEGIN'
              
                '        Select nvl( max(DNOME), '#39'NAO ENC'#39') into pldr_nomdep from' +
                ' CADDEP where DCODEMP=mCodEmp_Chave'
              '           and DCODDEP=pldr_coddep;'
              '         EXCEPTION'
              '          WHEN OTHERS THEN'
              '          pldr_nomdep:='#39'NAOENC'#39';'
              '          RAISE;'
              ''
              '         END;'
              ''
              '        if pldr_nomdep is null then'
              '           BEGIN'
              
                '           Select max(DNOME) into pldr_nomdep from CADDEP where ' +
                'DCODDEP=pldr_coddep;'
              '         EXCEPTION'
              '          WHEN OTHERS THEN'
              '          pldr_nomdep:='#39'NAO ENCONTRADO'#39';'
              '          RAISE;'
              ''
              '         END;'
              ''
              '        end IF;'
              '     end IF;'
              ''
              ''
              ''
              '     if mQtdDupExist=0 then'
              '        mOperDup:='#39'I'#39';'
              '--     elsif mQtdDupExist>mQtdDupGer then'
              '     else'
              
                '--        insert into evento (local) values ('#39'vai deletar caddar' +
                ' 621'#39');'
              '        Delete from CADDAR where'
              
                '           CRNPED=:NEW.P1CHAVE and CRORDEM=:NEW.P1ORDEM and CRCO' +
                'DEMP=:NEW.P1CODEMP'
              '           and CRLOTSEQ_cp=:NEW.P1LOTSEQ;'
              '        mOperDup:='#39'S'#39';'
              '--     else'
              '--        mOperDup:='#39'S'#39';'
              '     end IF;'
              ''
              
                '--   RAISE_APPLICATION_ERROR(-20000, '#39'Total FP '#39'|| mtotal_fpag  ' +
                '|| '#39' temp: '#39' || mtotal_temp || '#39' titulo '#39' || :new.p1totall);'
              ''
              
                '--    RAISE_APPLICATION_ERROR(-20000, '#39'Totaldup '#39' || mtotaldup |' +
                '| '#39'qtd dup '#39' || mqtddupexist  || '#39'dup exist '#39' ||  mExisteDup || ' +
                #39' CRIADUP '#39' || mcriardup  || '#39' mOPERDUP '#39' || mOperdup  );'
              ''
              ''
              
                '--     insert into evento (local) values ('#39'chave vai pro loop 62' +
                '1'#39');'
              ''
              ''
              '     FOR v_Cadp01v in c_Cadp01v LOOP'
              ''
              
                '--        insert into evento (local) values ('#39'denro do  loop 622' +
                '6'#39');'
              '        mLoteBx:=0;'
              ''
              '        mValorPag:=0;'
              '        mnr      :=0;'
              '        mExisteDup:=0;'
              ''
              
                '--           select count(*),max(CRCODLDR) as CRCODLDR,max(CRLOT' +
                'E) as CRLOTE,sum(CRVALPAG),max(crdtpag),max(CRNR)'
              
                '--               into mExisteDup,mCodLDR,mLoteBX,mValorPag,mDtPa' +
                'g,mNr from CADDAR where'
              '--               CRCODECF=:NEW.P1CODECF'
              '--                and CRNUMERO=mNumeroDup'
              '--                and CRDESD=CHR(64+v_Cadp01v.P1VSEQ)'
              '--                and CRDUP=mDup'
              '--              and CRSEQ=0'
              '--              and CRDTEMIS=TO_DATE(mDtemis)'
              '--              and CRCODEMP=:NEW.P1CODEMP;'
              '--'
              '--           mDtPag   :=SYSDATE;'
              ''
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'LOTE BX '#39' || MLOTEBX ' +
                '|| '#39' CODLDR '#39' || MCODLDR || '#39'Totaldup '#39' || mtotaldup || '#39'qtd dup' +
                ' '#39' || mqtddupexist  || '#39'dup exist '#39' ||  mExisteDup || '#39' CRIADUP ' +
                #39' || mcriardup || '#39' QTDUPGER '#39' || mqtddupger  || '#39' moperdup '#39' ||' +
                ' mOperdup || '#39' codldr '#39' || mcodldr );'
              ''
              
                '--     insert into evento (local) values  ('#39'codecf '#39' || :NEW.P1C' +
                'ODECF || '#39' numdup '#39' || mNumeroDup || '#39' desd '#39' || CHR(64+v_Cadp01' +
                'v.P1VSEQ) || mDup || '#39' dtemis '#39' || TO_DATE(mDtemis) || '#39' codemp ' +
                #39' || :NEW.P1CODEMP );'
              ''
              
                '--     insert into evento (local) values  ('#39'quantidade 647 '#39' || ' +
                'mexistedup );'
              ''
              '        if mcodldr is null then'
              '           mcodldr:=0;'
              '        end if;'
              ''
              '        if mExisteDup is null then'
              '           mExisteDup:=0;'
              '        end if;'
              '        if mExisteDup>0 then'
              '           delete from CADDAR where CRCODECF=:NEW.P1CODECF'
              '           and CRNUMERO=mNumeroDup'
              '           and CRDESD=CHR(64+v_Cadp01v.P1VSEQ)'
              '           and CRDUP=mDup'
              '           and CRSEQ=0'
              '           and CRDTEMIS=TO_DATE(mDtemis)'
              '           and CRCODEMP=:NEW.P1CODEMP;'
              '        end if;'
              ''
              '        if mLoteBx is null then'
              '           mLoteBx:=0;'
              '        end if;'
              '        if mnr is null then'
              '           mNr:=0;'
              '        end if;'
              '        if mNr<>0 and mCodLdr=0 then'
              
                '           SELECT max(FPCODLDR) into mCodLdr FROM FPCRDUP,FPCR W' +
                'HERE FPCRDUP.FPCODEMP=:NEW.P1CODEMP'
              
                '           AND FPCRDUP.FPCODECF=:NEW.P1CODECF AND FPCRDUP.FPNUME' +
                'RO=mNumeroDup'
              
                '           AND FPDESD=CHR(64+v_Cadp01v.P1VSEQ) AND FPCR.FPCODEMP' +
                '=FPCRDUP.FPCODEMP AND FPCR.FPLOTE=FPCRDUP.FPLOTE;'
              '           if mCodLdr is null then'
              '              mCodLdr:=0;'
              '           end if;'
              '        end if;'
              '        SELECT  CADLDR_SEQ.NEXTVAL into mIdLdrNew from dual;'
              ''
              '        if mloteBx=0 then'
              '           mGerarFPCR:=0;'
              '        else'
              '           mGerarFPCR:=1;'
              '        end if;'
              ''
              ''
              
                '--        RAISE_APPLICATION_ERROR(-20000,'#39'CUPOM '#39' || :NEW.P1CUPO' +
                'M || '#39'NUMCF '#39' || :NEW.P1NUMCF ||'#39' VINC '#39' ||  v_Cadp01v.P1VVINC02' +
                ' || '#39'LOTE BX '#39' || MLOTEBX || '#39' CODLDR '#39' || MCODLDR || '#39'Totaldup ' +
                #39' || mtotaldup || '#39'qtd dup '#39' || mqtddupexist  || '#39'dup exist '#39' ||' +
                '  mExisteDup || '#39' CRIADUP '#39' || mcriardup || '#39' QTDUPGER '#39' || mqtd' +
                'dupger  || '#39' moperdup '#39' || mOperdup || '#39' codldr '#39' || mcodldr );'
              ''
              '        mValorPag:=0;'
              ''
              
                '        if :NEW.P1CUPOM>0 and (:NEW.P1NUMCF>0 or :NEW.P1NFCE_NUM' +
                'ERO>0) and v_Cadp01v.P1VVINC02<>8  and mLoteBx=0  and (mBaixarDu' +
                'plic<>4) then'
              ''
              '           mValorPag:=v_Cadp01v.P1VVALOR;'
              '           if mDtPag_NOV is null then'
              '              mDtPag   :=:NEW.P1DATDOC;'
              '              mnr      :=TO_CHAR(mdtpag,'#39'DDMMYYYY'#39');'
              '           else'
              '              mdtpag   :=mDtPag_NOV;'
              '              mnr      :=TO_CHAR(mdtpag,'#39'DDMMYYYY'#39');'
              '           end if;'
              '           BEGIN'
              
                '           select PLOTBCR,PCFPCRDUP,PCODFPCR into mLoteBx,mCodFP' +
                'CRDup,mCodFPCR from CADpar where pcodemp=mCodEmp_Chave and PCODS' +
                'EQ=1;'
              
                '           Update CADPAR set PLOTBCR=PLOTBCR+1,PCFPCRDUP=PCFPCRD' +
                'UP+1,PCODFPCR=PCODFPCR+1 where pcodemp=mCodEmp_Chave and PCODSEQ' +
                '=1;'
              '           EXCEPTION'
              '            WHEN OTHERS THEN'
              '            mLoteBx  :=0;'
              '            mCodFPCRDup :=0;'
              '            mCodFPCR :=0;'
              '            RAISE;'
              '           END;'
              '        END IF;'
              ''
              ''
              '        if mcodldr=0 then'
              ''
              
                '           select PCODLDR into mcODLDR from CADpar where pcodemp' +
                '=mCodEmp_Chave and PCODSEQ=1;'
              
                '           Update CADPAR set PCODLDR=PCODLDR+1 where pcodemp=mCo' +
                'dEmp_Chave and PCODSEQ=1;'
              ''
              '-- INICIO'
              ''
              ''
              'SELECT'
              'CASE WHEN CCODCLI=1 THEN'
              
                ' nvl( (SELECT MAX(CFRAZAO) FROM CADCSF WHERE CFLOTSEQ=0 AND CFCH' +
                'AVEP=:NEW.P1CHAVE) , CRAZAO )'
              'else'
              '  CRAZAO END'
              ' into pldr_nome'
              ' FROM CADCLI WHERE CCODCLI=:NEW.P1CODCLI;'
              ''
              ''
              ''
              ''
              
                'MERGE INTO CADLDR USING (Select nvl(pldr_nome,'#39'nulo'#39') as dNOME, ' +
                ' pldr_codcai as dCODBCO, pldr_codccu as dCODCC, pldr_coddep as d' +
                'CODDEP, :NEW.P1CODECF as dCODECF, :NEW.P1CODEMP as dCODEMP,'
              
                ':NEW.P1CODCLI as dCODIGO, mcodldr as dCODLDR, :NEW.P1CODUSR as d' +
                'CODUSR_CX, 1 as dCOMPENS, TO_DATE(v_Cadp01v.P1VDATAV) as dDATADP'
              
                ', case when mValorPag<=0 then null else TO_DATE(mDtPag) end as d' +
                'DATAREAL,'
              
                'TO_DATE(mDtemis) as dDATAREF, TO_DATE(SYSDATE) as dDATLAN, pldr_' +
                'descmov as dDESCMV, TO_DATE(SYSDATE) as dDTSALDO, '#39' '#39' as dFC_OBS' +
                'FIN, 0 as dLEMAT, 2 as dLOCDEP,'
              'pldr_nomccu as dNomccu,pldr_nomdep as dNOmDep,'
              ''
              
                '0 as dLOTMOV, 0 as dLOTSEQ, pldr_natdc as dNATDC, pldr_nombco as' +
                ' dNOMBCO, TO_CHAR(mNumeroDup) as dNUMDOC, '#39'DINHEIRO'#39' as dNUMDOC2' +
                ', 0 as dORIGEM, 0 as dSTATUS,'
              
                ' '#39'CL'#39' as dTIPO, v_Cadp01v.P1VVALOR as dVALORP, mValorPag as dVAL' +
                'ORR, 0 as dVINCULO from dual'
              ') d  on ( CADLDR.CODEMP = dCODEMP and  CADLDR.CODLDR = dCODLDR)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' NOME=d.dNOME'
              ', CODBCO=d.dCODBCO'
              ', CODCC=d.dCODCC'
              ', CODDEP=d.dCODDEP'
              ', CODECF=d.dCODECF'
              ', CODIGO=d.dCODIGO'
              ', CODUSR_CX=d.dCODUSR_CX'
              ', COMPENS=d.dCOMPENS'
              ', DATADP=d.dDATADP'
              ', DATAREAL=d.dDATAREAL'
              ', DATAREF=d.dDATAREF'
              ', DATLAN=d.dDATLAN'
              ', DESCMV=d.dDESCMV'
              ', DTSALDO=d.dDTSALDO'
              ', FC_OBSFIN=d.dFC_OBSFIN'
              ', LEMAT=d.dLEMAT'
              ', LOCDEP=d.dLOCDEP'
              ', LOTMOV=d.dLOTMOV'
              ', LOTSEQ=d.dLOTSEQ'
              ', NATDC=d.dNATDC'
              ', NOMBCO=d.dNOMBCO'
              ', NUMDOC=d.dNUMDOC'
              ', NUMDOC2=d.dNUMDOC2'
              ', ORIGEM=d.dORIGEM'
              ', STATUS=d.dSTATUS'
              ', TIPO=d.dTIPO'
              ', VALORP=d.dVALORP'
              ', VALORR=d.dVALORR'
              ', VINCULO=d.dVINCULO'
              ', NOMDEP=d.dNOMDEP'
              ' ,NOMCCU=d.dNomccu'
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' NOME'
              ', LDR_ID_NEW'
              ', CODBCO'
              ', CODCC'
              ', CODDEP'
              ', CODECF'
              ', CODEMP'
              ', CODIGO'
              ', CODLDR'
              ', CODUSR_CX'
              ', COMPENS'
              ', DATADP'
              ', DATAREAL'
              ', DATAREF'
              ', DATLAN'
              ', DESCMV'
              ', DTSALDO'
              ', FC_OBSFIN'
              ', LEMAT'
              ', LOCDEP'
              ', LOTMOV'
              ', LOTSEQ'
              ', NATDC'
              ', NOMBCO'
              ', NUMDOC'
              ', NUMDOC2'
              ', ORIGEM'
              ', STATUS'
              ', TIPO'
              ', VALORP'
              ', VALORR'
              ', VINCULO'
              ',NOMCCU'
              ',NOMDEP'
              ''
              ' ) values  ('
              ' d.dNOME'
              ',mIdLdrNew'
              ',d.dCODBCO'
              ',d.dCODCC'
              ',d.dCODDEP'
              ',d.dCODECF'
              ',d.dCODEMP'
              ',d.dCODIGO'
              ',d.dCODLDR'
              ',d.dCODUSR_CX'
              ',d.dCOMPENS'
              ',d.dDATADP'
              ',d.dDATAREAL'
              ',d.dDATAREF'
              ',d.dDATLAN'
              ',d.dDESCMV'
              ',d.dDTSALDO'
              ',d.dFC_OBSFIN'
              ',d.dLEMAT'
              ',d.dLOCDEP'
              ',d.dLOTMOV'
              ',d.dLOTSEQ'
              ',d.dNATDC'
              ',d.dNOMBCO'
              ',d.dNUMDOC'
              ',d.dNUMDOC2'
              ',d.dORIGEM'
              ',d.dSTATUS'
              ',d.dTIPO'
              ',d.dVALORP'
              ',d.dVALORR'
              ',d.dVINCULO'
              ',d.dNomccu'
              ',d.dNomdep'
              ''
              ');'
              ''
              ''
              '-- TERMINO'
              ''
              ''
              '        end if;'
              '        if mLoteBx>0 then'
              ''
              ''
              
                '           if (mCodFPCRDUP is NULL) or (mcodFPCRDUP=0) or (:OLD.' +
                'P1CODEMP<>:NEW.P1CODEMP) then'
              '              BEGIN'
              
                '              select MAX(PCFPCRDUP) into mCodFPCRDUP from CADpar' +
                ' where pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
                '              Update CADPAR set PCFPCRDUP=PCFPCRDUP+1 where pcod' +
                'emp=mCodEmp_Chave and PCODSEQ=1;'
              '              EXCEPTION'
              '               WHEN OTHERS THEN'
              '               mCodFPCRDUP :=0;'
              '               RAISE;'
              '             END;'
              '           end if;'
              ''
              '           if mGerarFPCR<>1 then'
              '              BEGIN'
              ''
              '-- INICIO FPCRDUP'
              
                'MERGE INTO FPCRDUP USING (Select  pldr_codcai as dFPCAIXA, :NEW.' +
                'P1CODCLI as dFPCODCLI, :NEW.P1CODECF as dFPCODECF, :NEW.P1CODEMP' +
                ' as dFPCODEMP, :NEW.P1CODUSR as dFPCODUSR, :NEW.P1CODVEN as dFPC' +
                'ODVEN,'
              
                ' case when mValorPag<=0 then null else  TO_DATE(mDtPag) end  as ' +
                'dFPDATPAG, 0 as dFPDESC, CHR(64+v_Cadp01v.P1VSEQ) as dFPDESD, 0 ' +
                'as dFPDEVOL,'
              
                '  case when mValorPag<=0 then null else  TO_DATE(mDtPag) end  as' +
                ' dFPDTBX, TO_DATE(mDtemis) as dFPDTEMIS, TO_DATE(v_Cadp01v.P1VDA' +
                'TAV) as dFPDTVCTO, :NEW.P1CODEMP as dFPDUP_CODEMP, 0 as dFPJUROS' +
                ', 0 as dFPLEMAT, mLoteBx as dFPLOTE, 0 as dFPLOTSEQ, mNr as dFPN' +
                'R, mNumeroDup as dFPNUMERO, mCodFPCRDUP as dFPSEQ, mdup as dFPTI' +
                'PO, v_Cadp01v.P1VVALOR as dFPVALDUP, v_Cadp01v.P1VVALOR as dFPVA' +
                'LOR, 0 as dFPVLRIPI, 0 as dFPVLRST from dual'
              
                ') d  on ( FPCRDUP.FPLOTE = dFPLOTE and  FPCRDUP.FPLOTSEQ = dFPLO' +
                'TSEQ and  FPCRDUP.FPSEQ = dFPSEQ)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' FPCAIXA=d.dFPCAIXA'
              ', FPCODCLI=d.dFPCODCLI'
              ', FPCODECF=d.dFPCODECF'
              ', FPCODEMP=d.dFPCODEMP'
              ', FPCODUSR=d.dFPCODUSR'
              ', FPCODVEN=d.dFPCODVEN'
              ', FPDATPAG=d.dFPDATPAG'
              ', FPDESC=d.dFPDESC'
              ', FPDESD=d.dFPDESD'
              ', FPDEVOL=d.dFPDEVOL'
              ', FPDTBX=d.dFPDTBX'
              ', FPDTEMIS=d.dFPDTEMIS'
              ', FPDTVCTO=d.dFPDTVCTO'
              ', FPDUP_CODEMP=d.dFPDUP_CODEMP'
              ', FPJUROS=d.dFPJUROS'
              ', FPLEMAT=d.dFPLEMAT'
              ', FPNR=d.dFPNR'
              ', FPNUMERO=d.dFPNUMERO'
              ', FPTIPO=d.dFPTIPO'
              ', FPVALDUP=d.dFPVALDUP'
              ', FPVALOR=d.dFPVALOR'
              ', FPVLRIPI=d.dFPVLRIPI'
              ', FPVLRST=d.dFPVLRST'
              ', FPDUP_CHAVE_ID=mchave_id'
              ', FPDUP_CHAVE_ID_ANO=EXTRACT(year FROM sysdate)'
              ''
              ' WHEN NOT MATCHED THEN '
              ' INSERT ( '
              ' FPCAIXA'
              ', FPID_NEW'
              ', FPCODCLI'
              ', FPCODECF'
              ', FPCODEMP'
              ', FPCODUSR'
              ', FPCODVEN'
              ', FPDATPAG'
              ', FPDESC'
              ', FPDESD'
              ', FPDEVOL'
              ', FPDTBX'
              ', FPDTEMIS'
              ', FPDTVCTO'
              ', FPDUP_CODEMP'
              ', FPJUROS'
              ', FPLEMAT'
              ', FPLOTE'
              ', FPLOTSEQ'
              ', FPNR'
              ', FPNUMERO'
              ', FPSEQ'
              ', FPTIPO'
              ', FPVALDUP'
              ', FPVALOR'
              ', FPVLRIPI'
              ', FPVLRST'
              ', FPDUP_CHAVE_ID'
              ', FPDUP_CHAVE_ID_ANO'
              ''
              ' ) values  ( '
              'd.dFPCAIXA'
              ',FPCRDUP_SEQ.NEXTVAL'
              ',d.dFPCODCLI'
              ',d.dFPCODECF'
              ',d.dFPCODEMP'
              ',d.dFPCODUSR'
              ',d.dFPCODVEN'
              ',d.dFPDATPAG'
              ',d.dFPDESC'
              ',d.dFPDESD'
              ',d.dFPDEVOL'
              ',d.dFPDTBX'
              ',d.dFPDTEMIS'
              ',d.dFPDTVCTO'
              ',d.dFPDUP_CODEMP'
              ',d.dFPJUROS'
              ',d.dFPLEMAT'
              ',d.dFPLOTE'
              ',d.dFPLOTSEQ'
              ',d.dFPNR'
              ',d.dFPNUMERO'
              ',d.dFPSEQ'
              ',d.dFPTIPO'
              ',d.dFPVALDUP'
              ',d.dFPVALOR'
              ',d.dFPVLRIPI'
              ',d.dFPVLRST'
              ',mchave_id'
              ',EXTRACT(year FROM sysdate)'
              ''
              ');'
              '           END;   '
              ''
              '-- TERMINO FPCRDUP'
              ''
              ''
              ''
              ''
              
                '              if (mCodFPCR is NULL) or (mCodFPCR=0) or (:OLD.P1C' +
                'ODEMP<>:NEW.P1CODEMP) then'
              ''
              '                 BEGIN'
              
                '                 select MAX(PCODFPCR) into mCodFPCR from CADpar ' +
                'where pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
                '                 Update CADPAR set PCODFPCR=PCODFPCR+1 where pco' +
                'demp=mCodEmp_Chave and PCODSEQ=1;'
              '                 EXCEPTION'
              '                  WHEN OTHERS THEN'
              '                  mCodFPCR :=0;'
              '                  RAISE;'
              '                END;'
              '              end if;'
              '              BEGIN'
              '-- inicio fpcr'
              ''
              
                'MERGE INTO FPCR USING (Select  0 as dFPBANCO, pldr_codcai as dFP' +
                'CAIXA, 0 as dFPCC, :NEW.P1CODCLI as dFPCODCLI, :NEW.P1CODEMP as ' +
                'dFPCODEMP'
              ', mCodLDR as dFPCODLDR, :NEW.P1CODUSR as dFPCODUSR_CX'
              
                ',  case when mValorPag<=0 then null else  TO_DATE(mDtPag) end  a' +
                's dFPDATA, null as dFPDATDEP'
              ', v_Cadp01v.pfpdev_codecf as dFPDEV_CODECF'
              ', v_Cadp01v.pfpdev_codemp as dFPDEV_CODEMP'
              ', v_Cadp01v.pfpdev_desd as dFPDEV_DESD'
              ', v_Cadp01v.pfpdev_dtemis as dFPDEV_DTEMIS'
              ', v_Cadp01v.pfpdev_dup as dFPDEV_DUP'
              ', v_Cadp01v.PFPDEV_DUP_CHAVE_ID_ANO as dFPDEV_DUP_CHAVE_ID_ANO'
              ', v_Cadp01v.PFPDEV_DUP_CHAVE_ID as dFPDEV_DUP_CHAVE_ID'
              ', v_Cadp01v.pfpdev_numero as dFPDEV_NUMERO'
              ''
              ''
              ''
              
                ', v_Cadp01v.P1VCODFP as dFPFORMA, 0 as dFPLEMAT, mLoteBx as dFPL' +
                'OTE, 0 as dFPLOTSEQ, 0 as dFPLOTSEQ_FC, 0 as dFPNATUREZA, mNr as' +
                ' dFPNR'
              
                ', 0 as dFPNUMERO, mCodFPCR as dFPSEQ, '#39' '#39' as dFPSERIE, 0 as dFPT' +
                'IPO, v_Cadp01v.P1VVALOR as dFPVALOR, v_Cadp01v.P1VVINC02 as dFPV' +
                'INCULO from dual'
              
                ') d  on ( FPCR.FPCODEMP = dFPCODEMP and  FPCR.FPLOTSEQ = dFPLOTS' +
                'EQ and  FPCR.FPSEQ = dFPSEQ)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' FPBANCO=d.dFPBANCO'
              ', FPCAIXA=d.dFPCAIXA'
              ', FPCC=d.dFPCC'
              ', FPCODCLI=d.dFPCODCLI'
              ', FPCODLDR=d.dFPCODLDR'
              ', FPCODUSR_CX=d.dFPCODUSR_CX'
              ', FPDATA=d.dFPDATA'
              ', FPDATDEP=d.dFPDATDEP'
              ', FPDEV_CODECF=d.dFPDEV_CODECF'
              ', FPDEV_CODEMP=d.dFPDEV_CODEMP'
              ', FPDEV_DESD=d.dFPDEV_DESD'
              ', FPDEV_DTEMIS=d.dFPDEV_DTEMIS'
              ', FPDEV_DUP=d.dFPDEV_DUP'
              ', FPDEV_NUMERO=d.dFPDEV_NUMERO'
              ', FPDEV_DUP_CHAVE_ID_ANO=d.dFPDEV_DUP_CHAVE_ID_ANO'
              ', FPDEV_DUP_CHAVE_ID=d.dFPDEV_DUP_CHAVE_ID'
              ''
              ', FPFORMA=d.dFPFORMA'
              ', FPLEMAT=d.dFPLEMAT'
              ', FPLOTE=d.dFPLOTE'
              ', FPLOTSEQ_FC=d.dFPLOTSEQ_FC'
              ', FPNATUREZA=d.dFPNATUREZA'
              ', FPNR=d.dFPNR'
              ', FPNUMERO=d.dFPNUMERO'
              ', FPSERIE=d.dFPSERIE'
              ', FPTIPO=d.dFPTIPO'
              ', FPVALOR=d.dFPVALOR'
              ', FPVINCULO=d.dFPVINCULO'
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' FPBANCO'
              ', FPID_NEW'
              ', FPCAIXA'
              ', FPCC'
              ', FPCODCLI'
              ', FPCODEMP'
              ', FPCODLDR'
              ', FPCODUSR_CX'
              ', FPDATA'
              ', FPDATDEP'
              ', FPDEV_CODECF'
              ', FPDEV_CODEMP'
              ', FPDEV_DESD'
              ', FPDEV_DTEMIS'
              ', FPDEV_DUP'
              ', FPDEV_NUMERO'
              ', FPDEV_DUP_CHAVE_ID_ANO'
              ', FPDEV_DUP_CHAVE_ID'
              ''
              ', FPFORMA'
              ', FPLEMAT'
              ', FPLOTE'
              ', FPLOTSEQ'
              ', FPLOTSEQ_FC'
              ', FPNATUREZA'
              ', FPNR'
              ', FPNUMERO'
              ', FPSEQ'
              ', FPSERIE'
              ', FPTIPO'
              ', FPVALOR'
              ', FPVINCULO'
              ' ) values  ('
              'd.dFPBANCO'
              ',FPCR_SEQ.NEXTVAL'
              ',d.dFPCAIXA'
              ',d.dFPCC'
              ',d.dFPCODCLI'
              ',d.dFPCODEMP'
              ',d.dFPCODLDR'
              ',d.dFPCODUSR_CX'
              ',d.dFPDATA'
              ',d.dFPDATDEP'
              ',d.dFPDEV_CODECF'
              ',d.dFPDEV_CODEMP'
              ',d.dFPDEV_DESD'
              ',d.dFPDEV_DTEMIS'
              ',d.dFPDEV_DUP'
              ',d.dFPDEV_NUMERO'
              ',d.dFPDEV_DUP_CHAVE_ID_ANO'
              ',d.dFPDEV_DUP_CHAVE_ID'
              ''
              ',d.dFPFORMA'
              ',d.dFPLEMAT'
              ',d.dFPLOTE'
              ',d.dFPLOTSEQ'
              ',d.dFPLOTSEQ_FC'
              ',d.dFPNATUREZA'
              ',d.dFPNR'
              ',d.dFPNUMERO'
              ',d.dFPSEQ'
              ',d.dFPSERIE'
              ',d.dFPTIPO'
              ',d.dFPVALOR'
              ',d.dFPVINCULO'
              ');'
              ''
              '-- baixar nota de credito caso tenha inicio'
              ''
              ''
              'if (v_Cadp01v.pfpdev_numero>0) and (v_Cadp01v.pfpdev_dup=5) then'
              '    FBAIXARTITULO(v_Cadp01v.pfpdev_numero'
              '                  ,v_Cadp01v.pfpdev_dup'
              '                  ,v_Cadp01v.pfpdev_codemp'
              '                  ,v_Cadp01v.PFPDEV_DTEMIS'
              '                  ,v_Cadp01v.pfpdev_codecf'
              '                  ,v_Cadp01v.pfpdev_desd'
              '                  ,pldr_codcai'
              '                  ,:NEW.P1CODUSR'
              '                  ,mDtPag'
              '                  ,sysdate'
              '                  ,v_Cadp01v.P1VVALOR'
              '                  ,0,0,msaida);'
              'end if;'
              ''
              ''
              '-- baixar nota de credito caso tenha termino'
              ''
              ''
              '-- termino fpcf'
              '                END;'
              ''
              
                '           if (v_Cadp01v.P1VVINC02=14 or v_Cadp01v.P1VVINC02=1) ' +
                'AND (:NEW.P1NUMCF=0 OR :NEW.P1NUMNF=0 OR :NEW.P1NFCE_NUMERO=0)  ' +
                'then'
              
                '              select MAX(PCODCHQCLI) into mCodChqCli from CADpar' +
                ' where pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
                '              Update CADPAR set PCODCHQCLI=PCODCHQCLI+1 where pc' +
                'odemp=mCodEmp_Chave and PCODSEQ=1;'
              '              delete from CADCHQ WHERE CHSEQ=mCodChqCli'
              '              AND CHCODEMP=:NEW.P1CODEMP;'
              '-- INICIO CADCHQ'
              ''
              
                'MERGE INTO CADCHQ USING (Select  9 as dCHAGENCIA, v_Cadp01v.P1VB' +
                'ANCO as dCHBANCO, pldr_codcai as dCHCAIXA,'
              ' v_Cadp01v.P1VCC as dCHCC, pldr_codccu as dCHCODCC,'
              
                ' :NEW.P1CODCLI as dCHCODCLI, pldr_codcai as dCHCODCTA, pldr_codd' +
                'ep as dCHCODDEP, :NEW.P1CODEMP as dCHCODEMP,'
              
                ' v_Cadp01v.P1VCODFP as dCHCODFPGTO, mcodldr as dCHCODLDR, :NEW.P' +
                '1CODUSR as dCHCODUSR, v_Cadp01v.P1VCOMP as dCHCOMP,'
              
                ' v_Cadp01v.P1VCPF as dCHCPF, pldr_descmov as dCHDESCMV, TO_DATE(' +
                'v_Cadp01v.P1VDATAV) as dCHDTDEP, TO_DATE(mDtemis) as dCHDTEMIS,'
              
                ' v_Cadp01v.P1VEMITENTE as dCHEMIT, 0 as dCHLEMAT, mLoteBx as dCH' +
                'LOTE, 0 as dCHLOTEBX, 0 as dCHLOTSEQ, 0 as dCHLOTSEQ_FC,'
              ' mCodChqCli as dCHSEQ from dual '
              
                ') d  on ( CADCHQ.CHCODEMP = dCHCODEMP and  CADCHQ.CHSEQ = dCHSEQ' +
                ')'
              ' WHEN MATCHED THEN '
              ' UPDATE SET'
              ' CHAGENCIA=d.dCHAGENCIA'
              ', CHBANCO=d.dCHBANCO'
              ', CHCAIXA=d.dCHCAIXA'
              ', CHCC=d.dCHCC'
              ', CHCODCC=d.dCHCODCC'
              ', CHCODCLI=d.dCHCODCLI'
              ', CHCODCTA=d.dCHCODCTA'
              ', CHCODDEP=d.dCHCODDEP'
              ', CHCODFPGTO=d.dCHCODFPGTO'
              ', CHCODLDR=d.dCHCODLDR'
              ', CHCODUSR=d.dCHCODUSR'
              ', CHCOMP=d.dCHCOMP'
              ', CHCPF=d.dCHCPF'
              ', CHDESCMV=d.dCHDESCMV'
              ', CHDTDEP=d.dCHDTDEP'
              ', CHDTEMIS=d.dCHDTEMIS'
              ', CHEMIT=d.dCHEMIT'
              ', CHLEMAT=d.dCHLEMAT'
              ', CHLOTE=d.dCHLOTE'
              ', CHLOTEBX=d.dCHLOTEBX'
              ', CHLOTSEQ=d.dCHLOTSEQ'
              ', CHLOTSEQ_FC=d.dCHLOTSEQ_FC'
              ' WHEN NOT MATCHED THEN '
              ' INSERT ( '
              ' CHAGENCIA'
              ',CHID_NEW'
              ', CHBANCO'
              ', CHCAIXA'
              ', CHCC'
              ', CHCODCC'
              ', CHCODCLI'
              ', CHCODCTA'
              ', CHCODDEP'
              ', CHCODEMP'
              ', CHCODFPGTO'
              ', CHCODLDR'
              ', CHCODUSR'
              ', CHCOMP'
              ', CHCPF'
              ', CHDESCMV'
              ', CHDTDEP'
              ', CHDTEMIS'
              ', CHEMIT'
              ', CHLEMAT'
              ', CHLOTE'
              ', CHLOTEBX'
              ', CHLOTSEQ'
              ', CHLOTSEQ_FC'
              ', CHSEQ'
              ' ) values  ( '
              'd.dCHAGENCIA'
              ',CADCHQ_SEQ.NEXTVAL'
              ',d.dCHBANCO'
              ',d.dCHCAIXA'
              ',d.dCHCC'
              ',d.dCHCODCC'
              ',d.dCHCODCLI'
              ',d.dCHCODCTA'
              ',d.dCHCODDEP'
              ',d.dCHCODEMP'
              ',d.dCHCODFPGTO'
              ',d.dCHCODLDR'
              ',d.dCHCODUSR'
              ',d.dCHCOMP'
              ',d.dCHCPF'
              ',d.dCHDESCMV'
              ',d.dCHDTDEP'
              ',d.dCHDTEMIS'
              ',d.dCHEMIT'
              ',d.dCHLEMAT'
              ',d.dCHLOTE'
              ',d.dCHLOTEBX'
              ',d.dCHLOTSEQ'
              ',d.dCHLOTSEQ_FC'
              ',d.dCHSEQ'
              ');'
              ''
              '-- TERMINO CADCHQ'
              ''
              '           end if;'
              ''
              '           end if;'
              '        end if;'
              ''
              ''
              '-- INICIO CADDAR'
              'mchave_tabela:='#39'CADDAR_'#39'||EXTRACT(year FROM sysdate);'
              'pbuscaretestarid_oracle(mchave_tabela,mchave_id);'
              ''
              
                'MERGE INTO CADDAR USING (Select  :NEW.P1BANCO as dCRCODBCO, pldr' +
                '_codccu as dCRCODCC, :NEW.P1CODCLI as dCRCODCLI, pldr_codcai as ' +
                'dCRCODCTA,'
              
                ':NEW.P1CODCV as dCRCODCV, pldr_coddep as dCRCODDEP, :NEW.P1CODEC' +
                'F as dCRCODECF, :NEW.P1CODEMP as dCRCODEMP, v_Cadp01v.P1VCODFP a' +
                's dCRCODFPGTO,'
              
                ' mCodLDR as dCRCODLDR, :NEW.P1TIPO as dCRCODORI, :NEW.P1CODPV as' +
                ' dCRCODPV, :NEW.P1CODTLV as dCRCODTLV, :NEW.P1CODUSR as dCRCODUS' +
                'R,'
              
                ':NEW.P1CODVEN as dCRCODVEN, :NEW.P1CODV02 as dCRCODV02, :NEW.P1C' +
                'ODV03 as dCRCODV03, :NEW.P1CODV04 as dCRCODV04, 0 as dCRCOMIS_EX' +
                'TRA,'
              
                'to_date('#39'01/'#39' || to_char(mDtemis, '#39'MM/YYYY'#39')) AS  dCRCOMPETENCIA' +
                '_DTINICIO, 0 as dCRCOMPETENCIA_TIPO, round( (:NEW.P1COMIST*v_Cad' +
                'p01v.P1VPFPGTO/100) , 2) as dCRCOMTEL,'
              
                ' mCusBco as dCRCUSBCO, TO_DATE(:NEW.P1DATACF) as dCRDATCUP, TO_D' +
                'ATE(:NEW.P1DATAP) as dCRDATPED, 0 as dCRDESC,'
              
                'round( ((v_Cadp01v.P1VVALOR*mPDescM/100)/30),2) as dCRDESCD, v_C' +
                'adp01v.P1VVDESCF as dCRDESCF, pldr_descmov as dCRDESCMV, CHR(64+' +
                'v_Cadp01v.P1VSEQ) as dCRDESD,'
              
                ' case when mValorPag<=0 then null else  TO_DATE(mDtPag) end  as ' +
                'dCRDTBX, v_Cadp01v.P1VDTDESCF as dCRDTDESCF, TO_DATE(mDtemis) as' +
                ' dCRDTEMIS,'
              ' mchave_id as dCRCHAVE_ID,'
              
                '  case when mValorPag<=0 then null else  TO_DATE(mDtPag) end  as' +
                ' dCRDTPAG,'
              
                'TO_DATE(v_Cadp01v.P1VDATAV) as dCRDTVCTO, mdup as dCRDUP, round(' +
                ' ((v_Cadp01v.P1VVALOR*mPjurm/100)/30),2) as dCRJURD, mLoteBx as ' +
                'dCRLOTE,'
              
                ':NEW.P1LOTSEQ as dCRLOTSEQ_CP, round( ((v_Cadp01v.P1VVALOR*mPMul' +
                'ta/100)),2) as dCRMULTA, pldr_natdc as dCRNATDC, TO_CHAR(mNumero' +
                'Dup) as dCRNFACUM,'
              
                ' pldr_nomccu as dCRNOMCC, pldr_nombco as dCRNOMCTA, pldr_nomdep ' +
                'as dCRNOMDEP, v_Cadp01v.P1VNOMFPGTO as dCRNOMFPGTO, :NEW.P1CHAVE' +
                ' as dCRNPED,'
              
                ' :NEW.P1CHAVE_NIVEL as dCRNPED_NIVEL, mNR as dCRNR, :NEW.P1NUMCF' +
                ' as dCRNUMCUP, mNumeroDup as dCRNUMERO, v_Cadp01V.P1VSEQ as dCRN' +
                'UMPARC,'
              
                ':NEW.P1ORDEM as dCRORDEM, v_Cadp01v.P1VPFPGTO as dCRPFPGTO, mQtd' +
                'DM as dCRQTDDM, mQtdDupGer as dCRQTDPARC, :NEW.P1CUPOM as dCRREC' +
                'FRENTE,'
              
                '0 as dCRSEQ, case when mlotebx>0 then 2 else 0 end as dCRSTATUS,' +
                ' :NEW.P1TABPV as dCRTABPV, :NEW.P1TOTALL as dCRTOTNF, mUsrBX as ' +
                'dCRUSRBX,'
              
                'v_Cadp01v.P1VVALOR as dCRVALOR, mValorPag as dCRVALPAG, v_Cadp01' +
                'v.P1VVINC02 as dCRVINC02'
              ',v_Cadp01v.CREXCLUSIVOPARA as dCREXCLUSIVOPARA'
              ' from dual'
              
                ') d  on ( CADDAR.CRCODECF = dCRCODECF and  CADDAR.CRDESD = dCRDE' +
                'SD and  CADDAR.CRDTEMIS = dCRDTEMIS'
              
                ' and  CADDAR.CRDUP = dCRDUP and  CADDAR.CRNPED = dCRNPED and  CA' +
                'DDAR.CRNUMERO = dCRNUMERO  and  CADDAR.CRCHAVE_ID = dCRCHAVE_ID ' +
                ')'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' CRCODBCO=d.dCRCODBCO'
              ', CRCODCC=d.dCRCODCC'
              ', CRCODCLI=d.dCRCODCLI'
              ', CRCODCTA=d.dCRCODCTA'
              ', CRCODCV=d.dCRCODCV'
              ', CRCODDEP=d.dCRCODDEP'
              ', CRCODEMP=d.dCRCODEMP'
              ', CRCODFPGTO=d.dCRCODFPGTO'
              ', CRCODLDR=d.dCRCODLDR'
              ', CRCODORI=d.dCRCODORI'
              ', CRCODPV=d.dCRCODPV'
              ', CRCODTLV=d.dCRCODTLV'
              ', CRCODUSR=d.dCRCODUSR'
              ', CRCODVEN=d.dCRCODVEN'
              ', CRCODV02=d.dCRCODV02'
              ', CRCODV03=d.dCRCODV03'
              ', CRCODV04=d.dCRCODV04'
              ', CRCOMIS_EXTRA=d.dCRCOMIS_EXTRA'
              ', CRCOMPETENCIA_DTINICIO=d.dCRCOMPETENCIA_DTINICIO'
              ', CRCOMPETENCIA_TIPO=d.dCRCOMPETENCIA_TIPO'
              ', CRCOMTEL=d.dCRCOMTEL'
              ', CRCUSBCO=d.dCRCUSBCO'
              ', CRDATCUP=d.dCRDATCUP'
              ', CRDATPED=d.dCRDATPED'
              ', CRDESC=d.dCRDESC'
              ', CRDESCD=d.dCRDESCD'
              ', CRDESCF=d.dCRDESCF'
              ', CRDESCMV=d.dCRDESCMV'
              ', CRDTBX=d.dCRDTBX'
              ', CRDTDESCF=d.dCRDTDESCF'
              ', CRDTPAG=d.dCRDTPAG'
              ', CRDTVCTO=d.dCRDTVCTO'
              ', CRJURD=d.dCRJURD'
              ', CRLOTE=d.dCRLOTE'
              ', CRLOTSEQ_CP=d.dCRLOTSEQ_CP'
              ', CRMULTA=d.dCRMULTA'
              ', CRNATDC=d.dCRNATDC'
              ', CRNFACUM=d.dCRNFACUM'
              ', CRNOMCC=d.dCRNOMCC'
              ', CRNOMCTA=d.dCRNOMCTA'
              ', CRNOMDEP=d.dCRNOMDEP'
              ', CRNOMFPGTO=d.dCRNOMFPGTO'
              ', CRNPED_NIVEL=d.dCRNPED_NIVEL'
              ', CRNR=d.dCRNR'
              ', CRNUMCUP=d.dCRNUMCUP'
              ', CRNUMPARC=d.dCRNUMPARC'
              ', CRORDEM=d.dCRORDEM'
              ', CRPFPGTO=d.dCRPFPGTO'
              ', CRQTDDM=d.dCRQTDDM'
              ', CRQTDPARC=d.dCRQTDPARC'
              ', CRRECFRENTE=d.dCRRECFRENTE'
              ', CRSEQ=d.dCRSEQ'
              ', CRSTATUS=d.dCRSTATUS'
              ', CRTABPV=d.dCRTABPV'
              ', CRTOTNF=d.dCRTOTNF'
              ', CRUSRBX=d.dCRUSRBX'
              ', CRVALOR=d.dCRVALOR'
              ', CRVALPAG=d.dCRVALPAG'
              ', CRVINC02=d.dCRVINC02'
              ', CRDATAINCLUSAO=sysdate'
              ', CREXCLUSIVOPARA=d.dCREXCLUSIVOPARA'
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' CRCODBCO'
              ', CRID_NEW'
              ', CRID_PED01_NEW '
              ', CRID_LDR_NEW '
              ', CRCODCC'
              ', CRCODCLI'
              ', CRCODCTA'
              ', CRCODCV'
              ', CRCODDEP'
              ', CRCODECF'
              ', CRCODEMP'
              ', CRCODFPGTO'
              ', CRCODLDR'
              ', CRCODORI'
              ', CRCODPV'
              ', CRCODTLV'
              ', CRCODUSR'
              ', CRCODVEN'
              ', CRCODV02'
              ', CRCODV03'
              ', CRCODV04'
              ', CRCOMIS_EXTRA'
              ', CRCOMPETENCIA_DTINICIO'
              ', CRCOMPETENCIA_TIPO'
              ', CRCOMTEL'
              ', CRCUSBCO'
              ', CRDATCUP'
              ', CRDATPED'
              ', CRDESC'
              ', CRDESCD'
              ', CRDESCF'
              ', CRDESCMV'
              ', CRDESD'
              ', CRDTBX'
              ', CRDTDESCF'
              ', CRDTEMIS'
              ', CRDTPAG'
              ', CRDTVCTO'
              ', CRDUP'
              ', CRJURD'
              ', CRLOTE'
              ', CRLOTSEQ_CP'
              ', CRMULTA'
              ', CRNATDC'
              ', CRNFACUM'
              ', CRNOMCC'
              ', CRNOMCTA'
              ', CRNOMDEP'
              ', CRNOMFPGTO'
              ', CRNPED'
              ', CRNPED_NIVEL'
              ', CRNR'
              ', CRNUMCUP'
              ', CRNUMERO'
              ', CRNUMPARC'
              ', CRORDEM'
              ', CRPFPGTO'
              ', CRQTDDM'
              ', CRQTDPARC'
              ', CRRECFRENTE'
              ', CRSEQ'
              ', CRSTATUS'
              ', CRTABPV'
              ', CRTOTNF'
              ', CRUSRBX'
              ', CRVALOR'
              ', CRVALPAG'
              ', CRVINC02'
              ', CRCHAVE_ID'
              ', CRCHAVE_ID_ANO'
              ', CREXCLUSIVOPARA'
              ''
              ''
              ' ) values  ('
              'd.dCRCODBCO'
              ', CADDAR_SEQ.NEXTVAL'
              ', :NEW.P1ID_NEW'
              ', mIdLdrNew '
              ',d.dCRCODCC'
              ',d.dCRCODCLI'
              ',d.dCRCODCTA'
              ',d.dCRCODCV'
              ',d.dCRCODDEP'
              ',d.dCRCODECF'
              ',d.dCRCODEMP'
              ',d.dCRCODFPGTO'
              ',d.dCRCODLDR'
              ',d.dCRCODORI'
              ',d.dCRCODPV'
              ',d.dCRCODTLV'
              ',d.dCRCODUSR'
              ',d.dCRCODVEN'
              ',d.dCRCODV02'
              ',d.dCRCODV03'
              ',d.dCRCODV04'
              ',d.dCRCOMIS_EXTRA'
              ',d.dCRCOMPETENCIA_DTINICIO'
              ',d.dCRCOMPETENCIA_TIPO'
              ',d.dCRCOMTEL'
              ',d.dCRCUSBCO'
              ',d.dCRDATCUP'
              ',d.dCRDATPED'
              ',d.dCRDESC'
              ',d.dCRDESCD'
              ',d.dCRDESCF'
              ',d.dCRDESCMV'
              ',d.dCRDESD'
              ',d.dCRDTBX'
              ',d.dCRDTDESCF'
              ',d.dCRDTEMIS'
              ',d.dCRDTPAG'
              ',d.dCRDTVCTO'
              ',d.dCRDUP'
              ',d.dCRJURD'
              ',d.dCRLOTE'
              ',d.dCRLOTSEQ_CP'
              ',d.dCRMULTA'
              ',d.dCRNATDC'
              ',d.dCRNFACUM'
              ',d.dCRNOMCC'
              ',d.dCRNOMCTA'
              ',d.dCRNOMDEP'
              ',d.dCRNOMFPGTO'
              ',d.dCRNPED'
              ',d.dCRNPED_NIVEL'
              ',d.dCRNR'
              ',d.dCRNUMCUP'
              ',d.dCRNUMERO'
              ',d.dCRNUMPARC'
              ',d.dCRORDEM'
              ',d.dCRPFPGTO'
              ',d.dCRQTDDM'
              ',d.dCRQTDPARC'
              ',d.dCRRECFRENTE'
              ',d.dCRSEQ'
              ',d.dCRSTATUS'
              ',d.dCRTABPV'
              ',d.dCRTOTNF'
              ',d.dCRUSRBX'
              ',d.dCRVALOR'
              ',d.dCRVALPAG'
              ',d.dCRVINC02'
              ',mchave_id'
              ',EXTRACT(year FROM sysdate)'
              ', d.dCREXCLUSIVOPARA'
              ''
              ''
              ');'
              ''
              '-- TERMINO CADDAR'
              ''
              '-- TERMINO TRY'
              ''
              ''
              '        mcodldr:=0;'
              '     end loop;'
              ''
              
                '--  select count(*) into mExisteNSai from CADNS where (NSCODEMP=' +
                ':NEW.P1CODEMP'
              
                '--         and NSCHAVEP=:NEW.P1CHAVE and NSORDEMP=:NEW.P1ORDEM a' +
                'nd NSLOTSEQ_CP=:NEW.P1LOTSEQ)'
              
                '--         or (NSNUMERO=:NEW.P1NUMNF and NSNUMCUP=:NEW.P1NUMCF a' +
                'nd NSCODECF=:NEW.P1CODECF and'
              
                '--            NSSERIE=mSerie and NSMODELO=mModelo and NSDTEMIS=:' +
                'NEW.P1DATANF and'
              
                '--            NSTIPO=:NEW.P1TIPO_ENTSAI AND NSCODEMP=:NEW.P1CODE' +
                'MP);'
              ''
              ''
              '--  if mExisteNSai=2 then'
              '--    delete from CADNS where (NSCODEMP=:NEW.P1CODEMP'
              
                '--         and NSCHAVEP=:NEW.P1CHAVE and NSORDEMP=:NEW.P1ORDEM a' +
                'nd NSLOTSEQ_CP=:NEW.P1LOTSEQ)'
              
                '--         or (NSNUMERO=:NEW.P1NUMNF and NSNUMCUP=:NEW.P1NUMCF a' +
                'nd NSCODECF=:NEW.P1CODECF and'
              
                '--            NSSERIE=mSerie and NSMODELO=mModelo and NSDTEMIS=:' +
                'NEW.P1DATANF and'
              
                '--            NSTIPO=:NEW.P1TIPO_ENTSAI AND NSCODEMP=:NEW.P1CODE' +
                'MP);'
              '--    mExisteNSai:=0;'
              '--    end if;'
              ''
              ''
              ''
              '-- INICIO CADNS'
              
                'MERGE INTO CADNS USING (Select  0 as dNSALIQ, 0 as dNSALIQ2, CAS' +
                'E WHEN :NEW.P1TABPV='#39'AV'#39' THEN 0 ELSE 1 END as dNSAVAP, :NEW.P1BA' +
                'SEN as dNSBASEN,'
              
                ':NEW.P1BASENI as dNSBASENI, :NEW.P1BASENN as dNSBASENN, :NEW.P1B' +
                'ASENP as dNSBASENP, :NEW.P1BASENRI as dNSBASENRI, :NEW.P1BASENRN' +
                ' as dNSBASENRN,'
              
                ':NEW.P1BASENRP as dNSBASENRP, :NEW.P1BASERI as dNSBASERI, :NEW.P' +
                '1BASERN as dNSBASERN, :NEW.P1BASERP as dNSBASERP, :NEW.P1BCISSQN' +
                ' as dNSBCINSS,'
              
                ':NEW.P1BCIRRF as dNSBCIRRF, :NEW.P1BCISSQN as dNSBCISSQN, :NEW.P' +
                '1CFOSER as dNSCFOSER, :NEW.P1CFO1 as dNSCFO1, :NEW.P1CFO2 as dNS' +
                'CFO2,'
              
                ':NEW.P1CHAVE as dNSCHAVEP, :NEW.P1CHAVE_NIVEL as dNSCHAVEP_NIVEL' +
                ', :NEW.P1CODCLI as dNSCODCLI, :NEW.P1CODECF as dNSCODECF, :NEW.P' +
                '1CODEMP as dNSCODEMP,'
              
                ' :NEW.P1CODUSR as dNSCODUSR, :NEW.P1CUPACRE as dNSCUPACRE, :NEW.' +
                'P1CUPDES as dNSCUPDES, :NEW.P1DATACF as dNSDATCUP, :NEW.P1DATANF' +
                ' as dNSDTEMIS,'
              
                ':NEW.P1EMITENTE as dNSEMITENTE, :NEW.P1VALFRE as dNSFRETE, :NEW.' +
                'P1FRETEPC as dNSFRETEPC, :NEW.P1ICMS_ALFRE as dNSICMS_ALFRE,'
              
                ' :NEW.P1ICMS_ALIPI as dNSICMS_ALIPI, :NEW.P1ICMS_ALOUTD as dNSIC' +
                'MS_ALOUTD, :NEW.P1ICMS_ALSEG as dNSICMS_ALSEG, :NEW.P1ICMS_BCFRE' +
                ' as dNSICMS_BCFRE,'
              
                ' :NEW.P1ICMS_BCIPI as dNSICMS_BCIPI, :NEW.P1ICMS_BCOUTD as dNSIC' +
                'MS_BCOUTD, :NEW.P1ICMS_BCSEG as dNSICMS_BCSEG, :NEW.P1ICMSN as d' +
                'NSICMSN,'
              
                ':NEW.P1ICMSNI as dNSICMSNI, :NEW.P1ICMSNN as dNSICMSNN, :NEW.P1I' +
                'CMSNP as dNSICMSNP, :NEW.P1ICMSNRI as dNSICMSNRI, :NEW.P1ICMSNRN' +
                ' as dNSICMSNRN,'
              
                ':NEW.P1ICMSNRP as dNSICMSNRP, :NEW.P1ICMSRI as dNSICMSRI, :NEW.P' +
                '1ICMSRN as dNSICMSRN, :NEW.P1ICMSRP as dNSICMSRP, :NEW.P1ICMS_VL' +
                'FRE as dNSICMS_VLFRE,'
              
                ' :NEW.P1ICMS_VLIPI as dNSICMS_VLIPI, :NEW.P1ICMS_VLOUTD as dNSIC' +
                'MS_VLOUTD, :NEW.P1ICMS_VLSEG as dNSICMS_VLSEG, :NEW.P1IPIINA as ' +
                'dNSIPII,'
              
                ':NEW.P1IPINEG as dNSIPIN, :NEW.P1IPIPOS as dNSIPIP, 0 as dNSLEMA' +
                'T, :NEW.P1LOTSEQ as dNSLOTSEQ_CP, '#39'2D'#39' as dNSMODECF, mModelo as ' +
                'dNSMODELO,'
              
                ' CASE WHEN :NEW.P1NUMNF>0 THEN 0 WHEN :NEW.P1NFCE_NUMERO>0 THEN ' +
                '2 ELSE 1 END as dNSNFCF,'
              ' :NEW.P1NUMCF as dNSNUMCUP, :NEW.P1NUMNF as dNSNUMERO,'
              ' :NEW.P1ORDEM as dNSORDEMP,'
              
                ':NEW.P1RED_BCINSS as dNSRED_BCINSS, :NEW.P1RED_BCIRRF as dNSRED_' +
                'BCIRRF, :NEW.P1RED_BCISSQN as dNSRED_BCISSQN, mSerie as dNSSERIE' +
                ','
              
                ':NEW.P1ECF_SERIE as dNSSERIEECF, 0 as dNSSITCUP, 0 as dNSSTATUS,' +
                ' '#39' '#39' as dNSSUBSER, :NEW.P1TARBAN as dNSTARBAN, CASE WHEN :NEW.P1' +
                'TOTSERLIQ>0 THEN 2 ELSE  :NEW.P1TIPO_ENTSAI END as dNSTIPO,'
              
                ':NEW.P1TOTISE as dNSTOTISEN, :NEW.P1TOTTRI as dNSTOTNOR, (:NEW.P' +
                '1TOTALL-:NEW.P1TOTSERLIQ) as dNSTOTNOTA, :NEW.P1TOTOUT as dNSTOT' +
                'OUT,'
              
                ' :NEW.P1TOTINA as dNSTOTPROI, :NEW.P1TOTNEG as dNSTOTPRON, :NEW.' +
                'P1TOTNEG as dNSTOTPROP, :NEW.P1TOTRET as dNSTOTRET, :NEW.P1VINSS' +
                ' as dNSVINSS,'
              ':NEW.P1VIRRF as dNSVIRRF, :NEW.P1VISSQN as dNSVISSQN'
              ''
              ''
              ',:NEW.P1NFCE_DATA as       dNSNFCE_DATA'
              ',:NEW.P1NFCE_NUMERO as     dNSNFCE_NUMERO'
              ',:NEW.P1NFCE_CHV_ACESSO as dNSNFCE_CHV_ACESSO'
              ',:NEW.P1NFCE_SERIE as      dNSNFCE_SERIE'
              ',:NEW.P1NFCE_MODELO as     dNSNFCE_MODELO'
              ',:NEW.P1NFCE_NPROT as      dNSNFCE_NPROT'
              ''
              ''
              ''
              ''
              'from dual'
              ') d  on ( CADNS.NSCODEMP= dNSCODEMP'
              
                '         and CADNS.NSCHAVEP=dNSCHAVEP and CADNS.NSORDEMP=dNSORDE' +
                'MP and CADNS.NSLOTSEQ_CP=dNSLOTSEQ_CP)'
              ' WHEN MATCHED THEN'
              ' UPDATE SET'
              ' NSALIQ=d.dNSALIQ'
              ', NSALIQ2=d.dNSALIQ2'
              ''
              ', NSNUMERO=d.dNSNUMERO'
              ', NSMODELO=d.dNSMODELO'
              ', NSSERIE=d.dNSSERIE'
              ', NSAVAP=d.dNSAVAP'
              ', NSBASEN=d.dNSBASEN'
              ', NSBASENI=d.dNSBASENI'
              ', NSBASENN=d.dNSBASENN'
              ', NSBASENP=d.dNSBASENP'
              ', NSBASENRI=d.dNSBASENRI'
              ', NSBASENRN=d.dNSBASENRN'
              ', NSBASENRP=d.dNSBASENRP'
              ', NSBASERI=d.dNSBASERI'
              ', NSBASERN=d.dNSBASERN'
              ', NSBASERP=d.dNSBASERP'
              ', NSBCINSS=d.dNSBCINSS'
              ', NSBCIRRF=d.dNSBCIRRF'
              ', NSBCISSQN=d.dNSBCISSQN'
              ', NSCFOSER=d.dNSCFOSER'
              ', NSCFO1=d.dNSCFO1'
              ', NSCFO2=d.dNSCFO2'
              ', NSCHAVEP_NIVEL=d.dNSCHAVEP_NIVEL'
              ', NSCODCLI=d.dNSCODCLI'
              '-- , NSCODEMP=d.dNSCODEMP'
              ', NSCODUSR=d.dNSCODUSR'
              ', NSCUPACRE=d.dNSCUPACRE'
              ', NSCUPDES=d.dNSCUPDES'
              ', NSDATCUP=d.dNSDATCUP'
              ', NSEMITENTE=d.dNSEMITENTE'
              ', NSFRETE=d.dNSFRETE'
              ', NSFRETEPC=d.dNSFRETEPC'
              ', NSICMS_ALFRE=d.dNSICMS_ALFRE'
              ', NSICMS_ALIPI=d.dNSICMS_ALIPI'
              ', NSICMS_ALOUTD=d.dNSICMS_ALOUTD'
              ', NSICMS_ALSEG=d.dNSICMS_ALSEG'
              ', NSICMS_BCFRE=d.dNSICMS_BCFRE'
              ', NSICMS_BCIPI=d.dNSICMS_BCIPI'
              ', NSICMS_BCOUTD=d.dNSICMS_BCOUTD'
              ', NSICMS_BCSEG=d.dNSICMS_BCSEG'
              ', NSICMSN=d.dNSICMSN'
              ', NSICMSNI=d.dNSICMSNI'
              ', NSICMSNN=d.dNSICMSNN'
              ', NSICMSNP=d.dNSICMSNP'
              ', NSICMSNRI=d.dNSICMSNRI'
              ', NSICMSNRN=d.dNSICMSNRN'
              ', NSICMSNRP=d.dNSICMSNRP'
              ', NSICMSRI=d.dNSICMSRI'
              ', NSICMSRN=d.dNSICMSRN'
              ', NSICMSRP=d.dNSICMSRP'
              ', NSICMS_VLFRE=d.dNSICMS_VLFRE'
              ', NSICMS_VLIPI=d.dNSICMS_VLIPI'
              ', NSICMS_VLOUTD=d.dNSICMS_VLOUTD'
              ', NSICMS_VLSEG=d.dNSICMS_VLSEG'
              ', NSIPII=d.dNSIPII'
              ', NSIPIN=d.dNSIPIN'
              ', NSIPIP=d.dNSIPIP'
              ', NSLEMAT=d.dNSLEMAT'
              '-- , NSLOTSEQ_CP=d.dNSLOTSEQ_CP'
              ', NSMODECF=d.dNSMODECF'
              ', NSNFCF=d.dNSNFCF'
              '-- , NSORDEMP=d.dNSORDEMP'
              ', NSRED_BCINSS=d.dNSRED_BCINSS'
              ', NSRED_BCIRRF=d.dNSRED_BCIRRF'
              ', NSRED_BCISSQN=d.dNSRED_BCISSQN'
              ', NSSERIEECF=d.dNSSERIEECF'
              ', NSSITCUP=d.dNSSITCUP'
              ', NSSTATUS=d.dNSSTATUS'
              ', NSSUBSER=d.dNSSUBSER'
              ', NSTARBAN=d.dNSTARBAN'
              ', NSTOTISEN=d.dNSTOTISEN'
              ', NSTOTNOR=d.dNSTOTNOR'
              ', NSTOTNOTA=d.dNSTOTNOTA'
              ', NSTOTOUT=d.dNSTOTOUT'
              ', NSTOTPROI=d.dNSTOTPROI'
              ', NSTOTPRON=d.dNSTOTPRON'
              ', NSTOTPROP=d.dNSTOTPROP'
              ', NSTOTRET=d.dNSTOTRET'
              ', NSVINSS=d.dNSVINSS'
              ', NSVIRRF=d.dNSVIRRF'
              ', NSVISSQN=d.dNSVISSQN'
              ''
              ''
              ',NSNFCE_DATA  = d.dNSNFCE_DATA'
              ',NSNFCE_NUMERO = d.dNSNFCE_NUMERO'
              ',NSNFCE_CHV_ACESSO = d.dNSNFCE_CHV_ACESSO'
              ',NSNFCE_SERIE = d.dNSNFCE_SERIE'
              ',NSNFCE_MODELO = d.dNSNFCE_MODELO'
              ',NSNFCE_NPROT = d.dNSNFCE_NPROT'
              ''
              ''
              ''
              ' WHEN NOT MATCHED THEN'
              ' INSERT ('
              ' NSALIQ'
              ' ,NSID_NEW'
              ' ,NSID_PED01_NEW'
              ', NSALIQ2'
              ', NSAVAP'
              ', NSBASEN'
              ', NSBASENI'
              ', NSBASENN'
              ', NSBASENP'
              ', NSBASENRI'
              ', NSBASENRN'
              ', NSBASENRP'
              ', NSBASERI'
              ', NSBASERN'
              ', NSBASERP'
              ', NSBCINSS'
              ', NSBCIRRF'
              ', NSBCISSQN'
              ', NSCFOSER'
              ', NSCFO1'
              ', NSCFO2'
              ', NSCHAVEP'
              ', NSCHAVEP_NIVEL'
              ', NSCODCLI'
              ', NSCODECF'
              ', NSCODEMP'
              ', NSCODUSR'
              ', NSCUPACRE'
              ', NSCUPDES'
              ', NSDATCUP'
              ', NSDTEMIS'
              ', NSEMITENTE'
              ', NSFRETE'
              ', NSFRETEPC'
              ', NSICMS_ALFRE'
              ', NSICMS_ALIPI'
              ', NSICMS_ALOUTD'
              ', NSICMS_ALSEG'
              ', NSICMS_BCFRE'
              ', NSICMS_BCIPI'
              ', NSICMS_BCOUTD'
              ', NSICMS_BCSEG'
              ', NSICMSN'
              ', NSICMSNI'
              ', NSICMSNN'
              ', NSICMSNP'
              ', NSICMSNRI'
              ', NSICMSNRN'
              ', NSICMSNRP'
              ', NSICMSRI'
              ', NSICMSRN'
              ', NSICMSRP'
              ', NSICMS_VLFRE'
              ', NSICMS_VLIPI'
              ', NSICMS_VLOUTD'
              ', NSICMS_VLSEG'
              ', NSIPII'
              ', NSIPIN'
              ', NSIPIP'
              ', NSLEMAT'
              ', NSLOTSEQ_CP'
              ', NSMODECF'
              ', NSMODELO'
              ', NSNFCF'
              ', NSNUMCUP'
              ', NSNUMERO'
              ', NSORDEMP'
              ', NSRED_BCINSS'
              ', NSRED_BCIRRF'
              ', NSRED_BCISSQN'
              ', NSSERIE'
              ', NSSERIEECF'
              ', NSSITCUP'
              ', NSSTATUS'
              ', NSSUBSER'
              ', NSTARBAN'
              ', NSTIPO'
              ', NSTOTISEN'
              ', NSTOTNOR'
              ', NSTOTNOTA'
              ', NSTOTOUT'
              ', NSTOTPROI'
              ', NSTOTPRON'
              ', NSTOTPROP'
              ', NSTOTRET'
              ', NSVINSS'
              ', NSVIRRF'
              ', NSVISSQN'
              ''
              ',NSNFCE_DATA'
              ',NSNFCE_NUMERO'
              ',NSNFCE_CHV_ACESSO'
              ',NSNFCE_SERIE'
              ',NSNFCE_MODELO'
              ',NSNFCE_NPROT'
              ''
              ' ) values  ('
              'd.dNSALIQ'
              ', CADNS_SEQ.NEXTVAL'
              ', :NEW.P1ID_NEW'
              ',d.dNSALIQ2'
              ',d.dNSAVAP'
              ',d.dNSBASEN'
              ',d.dNSBASENI'
              ',d.dNSBASENN'
              ',d.dNSBASENP'
              ',d.dNSBASENRI'
              ',d.dNSBASENRN'
              ',d.dNSBASENRP'
              ',d.dNSBASERI'
              ',d.dNSBASERN'
              ',d.dNSBASERP'
              ',d.dNSBCINSS'
              ',d.dNSBCIRRF'
              ',d.dNSBCISSQN'
              ',d.dNSCFOSER'
              ',d.dNSCFO1'
              ',d.dNSCFO2'
              ',d.dNSCHAVEP'
              ',d.dNSCHAVEP_NIVEL'
              ',d.dNSCODCLI'
              ',d.dNSCODECF'
              ',d.dNSCODEMP'
              ',d.dNSCODUSR'
              ',d.dNSCUPACRE'
              ',d.dNSCUPDES'
              ',d.dNSDATCUP'
              ',d.dNSDTEMIS'
              ',d.dNSEMITENTE'
              ',d.dNSFRETE'
              ',d.dNSFRETEPC'
              ',d.dNSICMS_ALFRE'
              ',d.dNSICMS_ALIPI'
              ',d.dNSICMS_ALOUTD'
              ',d.dNSICMS_ALSEG'
              ',d.dNSICMS_BCFRE'
              ',d.dNSICMS_BCIPI'
              ',d.dNSICMS_BCOUTD'
              ',d.dNSICMS_BCSEG'
              ',d.dNSICMSN'
              ',d.dNSICMSNI'
              ',d.dNSICMSNN'
              ',d.dNSICMSNP'
              ',d.dNSICMSNRI'
              ',d.dNSICMSNRN'
              ',d.dNSICMSNRP'
              ',d.dNSICMSRI'
              ',d.dNSICMSRN'
              ',d.dNSICMSRP'
              ',d.dNSICMS_VLFRE'
              ',d.dNSICMS_VLIPI'
              ',d.dNSICMS_VLOUTD'
              ',d.dNSICMS_VLSEG'
              ',d.dNSIPII'
              ',d.dNSIPIN'
              ',d.dNSIPIP'
              ',d.dNSLEMAT'
              ',d.dNSLOTSEQ_CP'
              ',d.dNSMODECF'
              ',d.dNSMODELO'
              ',d.dNSNFCF'
              ',d.dNSNUMCUP'
              ',d.dNSNUMERO'
              ',d.dNSORDEMP'
              ',d.dNSRED_BCINSS'
              ',d.dNSRED_BCIRRF'
              ',d.dNSRED_BCISSQN'
              ',d.dNSSERIE'
              ',d.dNSSERIEECF'
              ',d.dNSSITCUP'
              ',d.dNSSTATUS'
              ',d.dNSSUBSER'
              ',d.dNSTARBAN'
              ',d.dNSTIPO'
              ',d.dNSTOTISEN'
              ',d.dNSTOTNOR'
              ',d.dNSTOTNOTA'
              ',d.dNSTOTOUT'
              ',d.dNSTOTPROI'
              ',d.dNSTOTPRON'
              ',d.dNSTOTPROP'
              ',d.dNSTOTRET'
              ',d.dNSVINSS'
              ',d.dNSVIRRF'
              ',d.dNSVISSQN'
              ''
              ',d.dNSNFCE_DATA'
              ',d.dNSNFCE_NUMERO'
              ',d.dNSNFCE_CHV_ACESSO'
              ',d.dNSNFCE_SERIE'
              ',d.dNSNFCE_MODELO'
              ',d.dNSNFCE_NPROT'
              ''
              ');'
              ''
              '-- TERMINO CADNS'
              '  end IF;'
              
                '  Update CADCLI set CDTPCPR=CASE WHEN CDTPCPR is null or CDTPCPR' +
                '<'#39'01/01/1901'#39' then :NEW.P1DATDOC else CDTPCPR end'
              
                '                  , CDTUCPR=CASE WHEN CDTUCPR is null or CDTUCPR' +
                '<:NEW.P1DATDOC then :NEW.P1DATDOC else CDTUCPR end'
              '                  where CCODCLI=:NEW.P1CODCLI;'
              
                '  IF (UPDATING) AND ((:OLD.P1STATUS<>:NEW.P1STATUS) OR (:OLD.P1E' +
                'MIDOC<>:NEW.P1EMIDOC) ) THEN'
              ''
              '      mUsrLogado:='#39#39';'
              ''
              '      FOR v_CadUsr in c_CadUsr_logado LOOP'
              
                '         mUsrLogado:=v_CadUsr.CLCODUSR || '#39'|'#39' || v_CadUsr.CLNOMU' +
                'SR || '#39'|'#39'  || v_CadUsr.CLDATHOR_INI || '#39'|'#39'  || v_CadUsr.CLORIGEM' +
                '_INFO || '#39'|'#39' ||  v_CadUsr.CLSESSAO || '#39'|'#39';'
              ''
              '      end loop;'
              ''
              '      if (mUsrLogado='#39#39') THEN'
              '         mUsrLogado:='#39'0000|N'#227'o ha usuario logado no momento|'#39';'
              '      end if;'
              '      Insert into CADUPDATE ('
              '                     CUDATHOR'
              '                    ,CUTERMINAL'
              '                    ,CUCODUSR_LOGADO'
              '                    ,CUORIGEM_INFO'
              '                    ,CUCOMANDO'
              '                    ,CURESULTADO'
              '                    ,CUCHAVE'
              '                    ) values ('
              '                     SYSDATE'
              '                    , userenv('#39'TERMINAL'#39')'
              '                    ,mUsrLogado'
              '                    ,'#39'TRIGGER CADP01'#39
              
                '                    ,'#39'Status ant: '#39' || :OLD.P1STATUS || '#39' novo: ' +
                #39' || :NEW.P1STATUS || '#39'|'#39
              
                '                     || '#39' Emidoc Ant: '#39'  || :OLD.P1EMIDOC || '#39' n' +
                'ovo: '#39' || :NEW.P1EMIDOC || '#39'|'#39
              
                '                     || '#39' NumNF Ant: '#39'  || :OLD.P1NUMNF || '#39' nov' +
                'o: '#39' || :NEW.P1NUMNF || '#39'|'#39
              
                '                     || '#39' DatNF Ant: '#39'  || :OLD.P1DATANF || '#39' no' +
                'vo: '#39' || :NEW.P1DATANF || '#39'|'#39
              ''
              
                '                     || '#39' NumCF Ant: '#39'  || :OLD.P1NUMCF || '#39' nov' +
                'o: '#39' || :NEW.P1NUMCF || '#39'|'#39
              
                '                     || '#39' DatCF Ant: '#39'  || :OLD.P1DATACF || '#39' no' +
                'vo: '#39' || :NEW.P1DATACF || '#39'|'#39
              
                '                     || '#39' DatDoc Ant: '#39'  || :OLD.P1DATDOC || '#39' n' +
                'ovo: '#39' || :NEW.P1DATDOC || '#39'|'#39
              ''
              
                '                     || '#39' Tipo Ant Ant: '#39'  || :OLD.P1TIPO || '#39' n' +
                'ovo: '#39' || :NEW.P1TIPO || '#39'|'#39
              ''
              '                    ,'#39' '#39
              '                    ,:NEW.P1CHAVE'
              '                    );'
              '   end if;'
              ''
              'end IF;'
              ''
              ''
              ''
              'end;'
              ''
              ''
              '')
            TabOrder = 0
            WordWrap = False
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Gerar Fechar Dia'
          ImageIndex = 4
          object Memo_Triggers_cadfdia: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADFDIA_TRIGGER01 AFTER INSERT ON CADF' +
                'DIA'
              'FOR EACH ROW'
              'declare mMesNovo VARCHAR2(02);'
              '        mAnoNovo VARCHAR2(04);'
              '        mDia_Fechar VARCHAR2(02);'
              '        mMes_Fechar VARCHAR2(02);'
              '        mAno_Fechar VARCHAR2(04);'
              ''
              ''
              '        mComandoFechar VARCHAR2(3000);'
              ''
              '        pldr_codcai NUMBER;'
              '        mDtEmis DATE;'
              '        mNR INTEGER;'
              'BEGIN'
              ''
              ''
              'IF (INSERTING) THEN'
              '   UPDATE CADLGC SET CLCODEMP=CLCODEMP-100 WHERE CLCODEMP>100;'
              
                '   UPDATE CADLGC SET CLFILIAL=1 WHERE (CLFILIAL<1) OR (CLFILIAL ' +
                'IS NULL);'
              '   UPDATE CADPRO SET PDCODEMP=PDCODEMP-100 WHERE PDCODEMP>100;'
              
                '   UPDATE CADEST SET CEFILIAL=1 WHERE (CEFILIAL<1) or (CEFILIAL ' +
                'is null);'
              '   UPDATE CADEST SET CECODEMP=CECODEMP-100 WHERE CECODEMP>100;'
              
                '   UPDATE CADEDIA SET CED_CODEMP=CED_CODEMP-100 WHERE CED_CODEMP' +
                '>100;'
              
                '   UPDATE CADEGD SET CED_CODEMP=CED_CODEMP-100 WHERE CED_CODEMP>' +
                '100;'
              '   mMesNovo:=TO_CHAR(:NEW.FD_DATAFEC,'#39'MM'#39');'
              '   mAnoNovo:=TO_CHAR(:NEW.FD_DATAFEC,'#39'YYYY'#39');'
              ''
              '   mDia_Fechar:=TO_CHAR(:NEW.FD_DATAMOV,'#39'DD'#39');'
              '   mMes_Fechar:=TO_CHAR(:NEW.FD_DATAMOV,'#39'MM'#39');'
              '   mAno_Fechar:=TO_CHAR(:NEW.FD_DATAMOV,'#39'YYYY'#39');'
              ''
              ''
              '   Insert into CADEDIA ('
              '    CED_CODEMP,'
              '   CED_MES,'
              '   CED_ANO,'
              '   CED_CODPRO,'
              '   CED_FILIAL,'
              '   CED_NIVEL,'
              '   CED_PRECO1,'
              '   CED_PRECO2,'
              '   CED_PRECO3,'
              '   CED_PCUSTO,'
              '   CED_PCOMEDC,'
              '   CED_PCOMAXC,'
              '   CED_UCPR,'
              '   CED_PCOFAB,'
              '   CED_SIT,'
              '   CED_CODTIP'
              '   )'
              ''
              '   SELECT'
              '    CECODEMP,'
              '   mMesNovo,'
              '   mAnoNovo,'
              '   CECODPRO,'
              '   CEFILIAL,'
              '   PDNIVEL,'
              ''
              '   PDPRECO1,'
              '   PDPRECO2,'
              '   PDPRECO3,'
              '   PDPRECOC,'
              '   PDPCOMC,'
              '   PDPMC,'
              '   PDUCPR,'
              '   PDPCOFAB,'
              '   PDSIT,'
              '   PDCODTIP'
              '   from CADEST,'
              '   CADPRO  where'
              '   not exists'
              '   (select CED_CODPRO'
              
                '   FROM CADEDIA where CED_CODPRO=CECODPRO and CED_FILIAL=CEFILIA' +
                'L'
              '   and CED_ANO=mAnoNovo and CED_MES=mMesNovo )'
              '   AND PDCODEMP=CECODEMP AND PDCODPRO=CECODPRO;'
              ''
              ''
              ''
              '   Insert into CADEGD ('
              '    CED_CODEMP,'
              '   CED_MES,'
              '   CED_ANO,'
              '   CED_CODPRO,'
              '   CED_FILIAL,'
              '   CED_GRADE,'
              '   CED_DTVCTO,'
              '   CED_NIVEL,'
              ''
              '   CED_PRECO1,'
              '   CED_PRECO2,'
              '   CED_PRECO3,'
              '   CED_PCUSTO,'
              '   CED_PCOMEDC,'
              '   CED_PCOMAXC,'
              '   CED_UCPR,'
              '   CED_PCOFAB,'
              '   CED_SIT,'
              '   CED_CODTIP'
              '   ) Select'
              '    CLCODEMP,'
              '   mMesNovo,'
              '   mAnoNovo,'
              '   CLCODPRO,'
              '   CLFILIAL,'
              '   CLNUMERO,'
              '   CLDTVCTO,'
              '   PDNIVEL,'
              '   CLPRECO1,'
              '   CLPRECO2,'
              '   CLPRECO3,'
              '   PDPRECOC,'
              '   PDPCOMC,'
              '   PDPMC,'
              '   PDUCPR,'
              '   PDPCOFAB,'
              '   PDSIT,'
              '   PDCODTIP'
              ''
              '   from CADLGC,'
              '   CADPRO,CADEST  where'
              '   not exists'
              '   (select CED_CODPRO'
              '   FROM CADEGD where CED_CODPRO=CECODPRO and CED_FILIAL=CEFILIAL'
              '   and CED_ANO=mAnoNovo and CED_MES=mMesNovo'
              
                '   and NVL(CED_GRADE,'#39#39')=NVL(CLNUMERO,'#39#39') and NVL(CED_DTVCTO,SYS' +
                'DATE)=NVL(CLDTVCTO,SYSDATE)'
              '   )'
              '   AND PDCODPRO=CLCODPRO AND PDCODEMP=CLCODEMP'
              
                '   AND CECODPRO=CLCODPRO AND CECODEMP=CLCODEMP AND CEFILIAL=CLFI' +
                'LIAL;'
              ''
              ''
              ''
              ''
              ''
              
                '   mComandoFechar:='#39'UPDATE CADEDIA SET  (CED_QTDDIA'#39'|| mdia_fech' +
                'ar ||'
              '             '#39', CED_QTDDIAC'#39'|| mdia_fechar ||'
              '             '#39', CED_QTDDIAR'#39'|| mdia_fechar ||'
              '             '#39', CED_QTDDIAT'#39'|| mdia_fechar ||'
              '             '#39', CED_PRECO1_D'#39'|| mdia_fechar ||'
              '             '#39', CED_PCOCUS_D'#39'|| mdia_fechar ||'
              
                '             '#39', CED_PCOFAB_D'#39'|| mdia_fechar || '#39' )  = (  SELECT ' +
                ' CESALDO, '#39
              
                '             || '#39'   CESALDOC,   CESALDOR,   CESALDOT,   PDPRECO1' +
                ',   PDPRECOC,   PDPCOFAB FROM '#39
              
                '             || '#39'   CADEST,CADPRO WHERE PDCODPRO=CECODPRO AND PD' +
                'CODEMP=CECODEMP AND '#39
              
                '             || '#39'    CECODPRO=CED_CODPRO  AND CEFILIAL=CED_FILIA' +
                'L  '#39
              
                '             || '#39' and CED_ANO='#39'|| mano_fechar || '#39' and CED_MES='#39 +
                '|| mmes_fechar || '#39') '#39';'
              ''
              '   execute immediate mComandoFechar;'
              ''
              ''
              ''
              
                '   mComandoFechar:='#39'UPDATE CADEGD SET  (CED_QTDDIA'#39'|| mdia_fecha' +
                'r ||'
              '             '#39', CED_QTDDIAC'#39'|| mdia_fechar ||'
              '             '#39', CED_QTDDIAR'#39'|| mdia_fechar ||'
              
                '             '#39', CED_QTDDIAT'#39'|| mdia_fechar || '#39' )  = (  SELECT  ' +
                'CESALDO, '#39
              '             || '#39'   CESALDOC,   CESALDOR,   CESALDOT FROM '#39
              
                '             || '#39'   CADEST,CADPRO WHERE PDCODPRO=CECODPRO AND PD' +
                'CODEMP=CECODEMP AND '#39
              
                '             || '#39'    CECODPRO=CED_CODPRO  AND CEFILIAL=CED_FILIA' +
                'L  '#39
              
                '             || '#39' and CED_ANO='#39'|| mano_fechar || '#39' and CED_MES='#39 +
                '|| mmes_fechar || '#39') '#39';'
              ''
              '   execute immediate mComandoFechar;'
              ''
              '-- os dados abaixo para fechamento mensal'
              '   if :new.FD_ENCMES=2 then'
              '      UPDATE CADEDIA SET  ('
              ''
              '                     CED_NIVEL,'
              '                     CED_FILIAL,'
              '                      CED_ESTFIN,'
              '                      CED_PRECO1,'
              '                      CED_PRECO2,'
              '                      CED_PRECO3,'
              '                      CED_PCUSTO,'
              '                      CED_PCOMEDC,'
              '                      CED_PCOMAXC,'
              '                      CED_SIT,'
              '                      CED_CODTIP'
              '      )  = (  SELECT'
              '      PDNIVEL,'
              '      CEFILIAL,'
              '      CESALDO,'
              '      PDPRECO1,'
              '      PDPRECO2,'
              '      PDPRECO3,'
              '      PDPRECOC,'
              '      PDPCOMC,'
              '      PDPMC,'
              '      PDSIT,'
              '      PDCODTIP'
              '      from CADEST,CADPRO'
              '      where PDCODEMP=CECODEMP and PDCODPRO=CECODPRO'
              
                '      and  CECODPRO=CED_CODPRO AND CECODEMP=CED_CODEMP AND CEFIL' +
                'IAL=CED_FILIAL'
              '      )'
              '      where CED_ANO=mAno_Fechar and CED_MES=mMes_Fechar;'
              '   end if;'
              ''
              ''
              '-- termino do fechamento mensal'
              ''
              'end IF;'
              ''
              ''
              'end;')
            TabOrder = 0
            WordWrap = False
          end
        end
        object tsRatearCupom: TTabSheet
          Caption = 'tsRatearCupom'
          ImageIndex = 5
          object Memo_Triggers_ratearcupom: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADECF_CAT52_CAB_TRIG01 AFTER UPDATE O' +
                'N CADECF_CAT52_CAB'
              ''
              'FOR EACH ROW'
              ''
              'declare mDescRat NUMBER;'
              ''
              'mTotDesc NUMBER;'
              ''
              'mMaiorItem NUMBER;'
              'CURSOR c_cadecf_grupo_aliq IS'
              ''
              'select * from '
              '( '
              ''
              
                'SELECT TOTLIQ,TRUNC( ((TOTLIQ*mdescrat)/100),2) AS VALPRE_RAT , ' +
                'ALIQ,NUMCF, VALRAT '
              '     , (select MAX(CT52I_ITEM) FROM '
              
                '       CADECF_CAT52_ITENS  WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF ' +
                'AND  CT52I_ALIQ=ALIQ '
              '       and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              '       and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              '       and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              '       and NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39
              
                '       AND CT52I_TOTLIQ=(select MAX(CT52I_TOTLIQ) FROM CADECF_CA' +
                'T52_ITENS '
              
                '       WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF AND  CT52I_ALIQ=ALIQ' +
                ' '
              '       and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              '       and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              '       and NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39
              '       and CT52I_CODEMP=:NEW.CT52CAB_CODECF )'
              ''
              '       )  as ITEMMAIOR '
              '       FROM ( '
              
                '       SELECT SUM(CT52I_TOTLIQ) AS TOTLIQ,SUM(CT52I_VALDES_GER) ' +
                'AS VALRAT,'
              '              CT52I_ALIQ AS ALIQ, MAX(CT52I_NUMCF) AS NUMCF '
              '              FROM CADECF_CAT52_ITENS '
              '              WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF'
              '              and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              '              and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              '              and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              '              and NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39
              
                '              GROUP BY CT52I_ALIQ) order by TOTLIQ DESC, ITEMMAI' +
                'OR'
              ');'
              ''
              'begin'
              ''
              ''
              ''
              ''
              ''
              ''
              'IF NVL(:NEW.CT52CAB_DESC_VALOR,0)>0 then '
              '   if :NEW.CT52CAB_STATUS=1 then'
              '      mMaiorItem:=0;'
              '      if :NEW.CT52CAB_IMPRESSORA='#39'BEMATECH'#39' then '
              
                '          mDescRat:=trunc( (:NEW.CT52CAB_DESC_VALOR*100 /  :NEW.' +
                'CT52CAB_SUBTOT) ,2);'
              '          Update CADECF_CAT52_ITENS set CT52I_VALACRE_GER=0, '
              
                '                          CT52I_VALDES_GER=TRUNC( ((CT52I_TOTLIQ' +
                '*mDescRat)/100),2) '
              
                '                         , CT52I_ARRED=0,CT52I_PADESCRAT=mDescRa' +
                't '
              '                          where CT52I_NUMCF=:NEW.CT52CAB_NUMCF '
              '                          and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              '                          and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              '                          and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              '                          and NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39';'
              '                          '
              '         FOR v_cadecf_grupo_aliq in c_cadecf_grupo_aliq LOOP'
              ''
              '            if mMaiorItem=0 then'
              ''
              '               mMaiorItem:=v_cadecf_grupo_aliq.ITEMMAIOR;       '
              ''
              '            end if;'
              ''
              ''
              
                '            if v_cadecf_grupo_aliq.VALPRE_RAT<>v_cadecf_grupo_al' +
                'iq.VALRAT then'
              ''
              
                '               mDescRat:=v_cadecf_grupo_aliq.VALPRE_RAT-v_cadecf' +
                '_grupo_aliq.VALRAT;'
              ''
              ''
              
                '               Update CADECF_CAT52_ITENS set CT52I_VALDES_GER=CT' +
                '52I_VALDES_GER+mDescRat '
              ''
              '                       ,CT52I_ARRED=CT52I_ARRED+mDescRat'
              ''
              '                       WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF'
              ''
              '                       and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              ''
              '                       and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              ''
              '                       and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              ''
              
                '                       and CT52I_ITEM=v_cadecf_grupo_aliq.ITEMMA' +
                'IOR;'
              
                '--                   RAISE_APPLICATION_ERROR(-20000, '#39'entrou no ' +
                'loop com a nota  '#39' || :NEW.CT52CAB_NUMCF || '#39' diferenca '#39' || mde' +
                'scrat || '#39' Maior Item  '#39' || v_cadecf_grupo_aliq.ITEMMAIOR || '#39'TE' +
                'RMINOU'#39' || MMaiorItem);'
              ''
              ''
              '            end if;              '
              ''
              '        end loop;                 '
              ''
              '     end if;   '
              ''
              '        '
              ''
              
                '     Select sum(CT52I_VALDES_GER) into mTotDesc from CADECF_CAT5' +
                '2_ITENS  '
              ''
              '                 WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF'
              ''
              '                 and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              ''
              '                 and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              ''
              '                 and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              ''
              '                 and NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39';'
              ''
              '     mDescRat:=:NEW.CT52CAB_DESC_VALOR-mTotDesc;'
              ''
              ''
              ''
              '     if mDescRat<>0 then'
              ''
              
                '        Update CADECF_CAT52_ITENS set CT52I_VALDES_GER=CT52I_VAL' +
                'DES_GER+mDescRat'
              ''
              '                    ,CT52I_ARRED=CT52I_ARRED+mDescRat'
              ''
              '                    WHERE CT52I_NUMCF=:NEW.CT52CAB_NUMCF'
              ''
              '                    and CT52I_DATACF=:NEW.CT52CAB_DATACF'
              ''
              '                    and CT52I_CODECF=:NEW.CT52CAB_CODECF'
              ''
              '                    and CT52I_CODEMP=:NEW.CT52CAB_CODEMP'
              ''
              '                    and CT52I_ITEM=mMaiorItem; '
              ''
              '     end if;              '
              ''
              '   end if;  '
              ''
              'end if;'
              ''
              'end;')
            TabOrder = 0
            WordWrap = False
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Movimento do Estoque'
          ImageIndex = 6
          object memo_movest: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace trigger cadmov_prod_t001 before insert on cadm' +
                'ov_prod for each row'
              ''
              'begin'
              ''
              'declare mEst_Nor_filial NUMBER; mEst_Reservado_Filial NUMBER;'
              
                '        mEst_Nor_Filial_grupo NUMBER; mEst_Reservado_Filial_Grup' +
                'o NUMBER;'
              '        mEst_Nor_Geral NUMBER; mEst_Reservado_Geral NUMBER;'
              ''
              ''
              'mQtdView Integer;'
              'mComando varchar2(200);'
              'mChave_Id Integer;'
              ''
              ''
              ''
              ''
              'mCodEmp Integer;'
              'mQtdReg integer;'
              'msg varchar2(255);'
              'mGrupo String(100);'
              ''
              'begin'
              'if nvl(:NEW.CMP_ID,0)=0 then'
              ''
              '   if :NEW.CMP_QTDDEC_QTD is null then'
              ''
              '      :NEW.CMP_QTDDEC_QTD:=3;'
              ''
              '    end if;'
              ''
              ''
              ''
              '   if :NEW.CMP_CODEMP>100 then'
              ''
              '      mCodEmp:=:NEW.CMP_CODEMP-100;'
              ''
              '   else'
              ''
              '      mCodEmp:=:NEW.CMP_CODEMP;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   if :NEW.CMP_TIPOPROD=3 then'
              ''
              '      if  (:NEW.CMP_LOTE is null) then'
              ''
              '         mGrupo:='#39' '#39';'
              ''
              '      else'
              ''
              '         mGrupo:=:NEW.CMP_LOTE;'
              ''
              '      end if;'
              ''
              ''
              ''
              '      Select'
              ''
              
                '       sum(case when CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,'#39 +
                ' '#39')=mGrupo then 1 else 0 end)'
              ''
              
                '      ,sum(case when  CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,' +
                #39' '#39')=mGrupo then CLQTD else 0 end)'
              ''
              
                '      ,SUM(case when  CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,' +
                #39' '#39')=mGrupo then CLQTD_RESERVADO else 0 end)'
              ''
              
                '      ,sum(case when  CLFILIAL=:NEW.CMP_FILIAL then CLQTD else 0' +
                ' end)'
              ''
              
                '      ,SUM(case when  CLFILIAL=:NEW.CMP_FILIAL then CLQTD_RESERV' +
                'ADO else 0 end)'
              ''
              '      ,sum(CLQTD)'
              ''
              '      ,SUM(CLQTD_RESERVADO)'
              ''
              '       into'
              ''
              '       mQtdReg'
              ''
              '       ,mEst_Nor_filial_Grupo'
              ''
              '       ,mEst_Reservado_Filial_Grupo'
              ''
              '       ,mEst_Nor_filial'
              ''
              '       ,mEst_Reservado_Filial'
              ''
              '       ,mEst_Nor_Geral'
              ''
              '       ,mEst_Reservado_Geral'
              ''
              
                '       from CADLGC LEFT JOIN CADTID ON (TINOME = '#39'CADEST'#39') where' +
                '  CLCODPRO=:NEW.CMP_CODPRO'
              '       AND ( (TIQTD=0) OR CLCODEMP=mCodEmp) ;'
              ''
              ''
              '      IF(mQtdReg IS NULL) THEN'
              ''
              '         mQtdReg:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Nor_Filial_Grupo IS NULL) THEN'
              ''
              '         mEst_Nor_Filial_Grupo:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Filial_Grupo IS NULL) THEN'
              ''
              '         mEst_Reservado_Filial_Grupo:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '      IF(mEst_Nor_Filial IS NULL) THEN'
              ''
              '         mEst_Nor_Filial:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Filial IS NULL) THEN'
              ''
              '         mEst_Reservado_Filial:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              '      IF(mEst_Nor_Geral IS NULL) THEN'
              ''
              '         mEst_Nor_Geral:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Geral IS NULL) THEN'
              ''
              '         mEst_Reservado_Geral:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              
                '      mEst_Nor_filial_Grupo      :=ROUND(mEst_Nor_filial_Grupo,:' +
                'NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Filial_Grupo:=ROUND(mEst_Reservado_Filial_G' +
                'rupo,:NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Nor_filial            :=ROUND(mEst_Nor_filial,:NEW.CM' +
                'P_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Filial      :=ROUND(mEst_Reservado_Filial,:' +
                'NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Nor_Geral             :=ROUND(mEst_Nor_Geral,:NEW.CMP' +
                '_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Geral       :=ROUND(mEst_Reservado_Geral,:N' +
                'EW.CMP_QTDDEC_QTD);'
              ''
              ''
              ''
              ''
              ''
              '      if mQtdReg=0 then'
              ''
              '         insert into CADLGC'
              ''
              '         ('
              ''
              '         CLCODEMP'
              ''
              '        ,CLFILIAL'
              ''
              '        ,CLCODPRO'
              ''
              '        ,CLDTVCTO'
              '        ,CLDTFAB'
              ''
              '        ,CLNUMERO'
              ''
              '        ,CLQTD'
              ''
              '        ,CLQTD_RESERVADO'
              ''
              '        ,CLQTD_ANALISE'
              ''
              '         ) values ('
              ''
              '        mCodEmp'
              ''
              '        ,:NEW.CMP_FILIAL'
              ''
              '        ,:NEW.CMP_CODPRO'
              ''
              '        ,:NEW.CMP_DTVCTO'
              '        ,:NEW.CMP_DTFAB'
              ''
              '        ,mGrupo'
              ''
              
                '        ,mEst_Nor_Filial_Grupo+(Case when :NEW.CMP_ESTNOR='#39'E'#39' th' +
                'en :NEW.CMP_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '        :NEW.CMP_QTD*-1'
              ''
              '         else 0 end)'
              ''
              
                '        ,mEst_Reservado_Filial_Grupo+(Case when :NEW.CMP_ESTRESE' +
                'RVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '        :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '        :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '        ,0'
              ''
              '        );'
              ''
              '     else'
              ''
              '        Update CADLGC set'
              '                CLDTFAB = :NEW.CMP_DTFAB,'
              
                '        CLQTD=mEst_Nor_filial_Grupo+(Case when :NEW.CMP_ESTNOR='#39 +
                'E'#39' then :NEW.CMP_QTD'
              ''
              
                '          when :NEW.CMP_ESTNOR='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 e' +
                'nd)'
              ''
              '        , CLQTD_RESERVADO=mEst_Reservado_Filial_Grupo+(Case when'
              ''
              '        :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '        :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 en' +
                'd)'
              ''
              '        where CLCODPRO=:NEW.CMP_CODPRO'
              ''
              '        and NVL(CLNUMERO,'#39' '#39')=mGrupo'
              ''
              '        and CLFILIAL=:NEW.CMP_FILIAL'
              
                '        AND ( (SELECT COUNT(*) FROM CADTID WHERE TINOME='#39'CADEST'#39 +
                ' AND TIQTD=0)=1 OR CLCODEMP=mCodEmp);'
              ''
              '     end if;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   if :NEW.CMP_TIPOPROD=4 then'
              ''
              '      if trim(:NEW.CMP_SERIE)='#39#39' then'
              ''
              '         mGrupo:='#39' '#39';'
              ''
              '      else'
              ''
              '         mGrupo:=trim(:NEW.CMP_SERIE);'
              ''
              '      end if;'
              ''
              ''
              ''
              '      select'
              ''
              
                '       sum(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,' +
                #39' '#39')=mGrupo then 1 else 0 end)'
              ''
              
                '      ,sum(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,' +
                #39' '#39')=mGrupo then SP_QTD else 0 end)'
              ''
              
                '      ,SUM(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,' +
                #39' '#39')=mGrupo then SP_QTD_RESERVADO else 0 end)'
              ''
              
                '      ,sum(case when SP_FILIAL=:NEW.CMP_FILIAL then SP_QTD else ' +
                '0 end)'
              ''
              
                '      ,SUM(case when SP_FILIAL=:NEW.CMP_FILIAL then SP_QTD_RESER' +
                'VADO else 0 end)'
              ''
              '      ,sum(SP_QTD)'
              ''
              '      ,SUM(SP_QTD_RESERVADO)'
              ''
              '       into'
              ''
              '       mQtdReg'
              ''
              '      , mEst_Nor_filial_Grupo'
              ''
              '       ,mEst_Reservado_Filial_Grupo'
              ''
              '       ,mEst_Nor_filial'
              ''
              '       ,mEst_Reservado_Filial'
              ''
              '       ,mEst_Nor_Geral'
              ''
              '       ,mEst_Reservado_Geral'
              ''
              '       from CADPRO_SERIE'
              ''
              '                                 where SP_CODEMP=mCodEmp'
              ''
              '                                 and SP_CODPRO=:NEW.CMP_CODPRO;'
              ''
              ''
              ''
              '      IF(mQtdReg IS NULL) THEN'
              ''
              '         mQtdReg:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Nor_Filial_Grupo IS NULL) THEN'
              ''
              '         mEst_Nor_Filial_Grupo:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Filial_Grupo IS NULL) THEN'
              ''
              '         mEst_Reservado_Filial_Grupo:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '      IF(mEst_Nor_Filial IS NULL) THEN'
              ''
              '         mEst_Nor_Filial:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Filial IS NULL) THEN'
              ''
              '         mEst_Reservado_Filial:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              '      IF(mEst_Nor_Geral IS NULL) THEN'
              ''
              '         mEst_Nor_Geral:=0;'
              ''
              '      end if;'
              ''
              '      IF(mEst_Reservado_Geral IS NULL) THEN'
              ''
              '         mEst_Reservado_Geral:=0;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              
                '      mEst_Nor_filial_Grupo      :=ROUND(mEst_Nor_filial_Grupo,:' +
                'NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Filial_Grupo:=ROUND(mEst_Reservado_Filial_G' +
                'rupo,:NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Nor_filial            :=ROUND(mEst_Nor_filial,:NEW.CM' +
                'P_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Filial      :=ROUND(mEst_Reservado_Filial,:' +
                'NEW.CMP_QTDDEC_QTD);'
              ''
              
                '      mEst_Nor_Geral             :=ROUND(mEst_Nor_Geral,:NEW.CMP' +
                '_QTDDEC_QTD);'
              ''
              
                '      mEst_Reservado_Geral       :=ROUND(mEst_Reservado_Geral,:N' +
                'EW.CMP_QTDDEC_QTD);'
              ''
              ''
              ''
              ''
              ''
              '      if mQtdReg=0 then'
              ''
              '         insert into CADPRO_SERIE'
              ''
              '         ('
              ''
              '         SP_CODEMP'
              ''
              '         ,SP_CODPRO'
              ''
              '         ,SP_FILIAL'
              ''
              '         ,SP_SERIE'
              ''
              '         ,SP_QTD'
              ''
              '         ,SP_QTD_RESERVADO'
              ''
              '         ) values ('
              ''
              '         mCodEmp'
              ''
              '         ,:NEW.CMP_CODPRO'
              ''
              '         ,:NEW.CMP_FILIAL'
              ''
              '         ,mGrupo'
              ''
              
                '         ,mEst_Nor_Filial_Grupo+(Case when :NEW.CMP_ESTNOR='#39'E'#39' t' +
                'hen :NEW.CMP_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '         :NEW.CMP_QTD*-1'
              ''
              '         else 0 end)'
              ''
              
                '         ,mEst_Reservado_Filial_Grupo+(Case when :NEW.CMP_ESTRES' +
                'ERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '         :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '         :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '         );'
              ''
              '      else'
              ''
              
                '         Update CADPRO_SERIE set SP_QTD=mEst_Nor_Filial_Grupo+(C' +
                'ase when :NEW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD'
              ''
              '         when'
              ''
              
                '                                           :NEW.CMP_ESTNOR='#39'S'#39' t' +
                'hen :NEW.CMP_QTD*-1 else 0 end)'
              ''
              
                '         , SP_QTD_RESERVADO=mEst_Reservado_Filial_Grupo+(Case wh' +
                'en'
              ''
              '         :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '         :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 e' +
                'nd)'
              ''
              '         where SP_CODEMP=mCodEmp'
              ''
              '         and SP_CODPRO=:NEW.CMP_CODPRO'
              ''
              '         and NVL(SP_SERIE,'#39' '#39')=mGrupo;'
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              ''
              '   if (:NEW.CMP_TIPOPROD=4) or (:NEW.CMP_TIPOPROD=3) then'
              ''
              
                '      Select sum(case when CEFILIAL=:NEW.CMP_FILIAL then 1 else ' +
                '0 end)'
              ''
              '      into mQtdReg'
              ''
              '      from CADEST   LEFT JOIN CADTID ON (TINOME = '#39'CADEST'#39')'
              ''
              '      where CECODPRO=:NEW.CMP_CODPRO'
              '      AND ( (TIQTD=0) OR CECODEMP=mCodEmp) ;'
              ''
              ''
              ''
              '   else'
              ''
              
                '      Select sum(case when CEFILIAL=:NEW.CMP_FILIAL then 1 else ' +
                '0 end)'
              ''
              
                '            ,sum(case when CEFILIAL=:NEW.CMP_FILIAL then cesaldo' +
                ' else 0 end)'
              ''
              
                '            ,SUM(case when CEFILIAL=:NEW.CMP_FILIAL then CESALDO' +
                '_RESERVADO else 0 end)'
              ''
              '            ,sum(NVL(cesaldo,0)),SUM(NVL(CESALDO_RESERVADO,0))'
              ''
              '            into mQtdReg'
              ''
              '            ,mEst_Nor_Filial, mEst_Reservado_Filial'
              ''
              '            ,mEst_Nor_Geral, mEst_Reservado_Geral'
              ''
              '          from CADEST   LEFT JOIN CADTID ON (TINOME = '#39'CADEST'#39')'
              '          where CECODPRO=:NEW.CMP_CODPRO'
              '          AND ( (TIQTD=0) OR CECODEMP=mCodEmp) ;'
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              '   IF(mQtdReg IS NULL) THEN'
              ''
              '      mQtdReg:=0;'
              ''
              '   end if;'
              ''
              ''
              ''
              '   IF(mEst_Nor_Geral IS NULL) THEN'
              ''
              '      mEst_Nor_Geral:=0;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              '   IF(mEst_Reservado_Geral is null) THEN'
              ''
              '      mEst_Reservado_Geral:=0;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              
                '   mEst_Nor_filial_Grupo      :=ROUND(mEst_Nor_filial_Grupo,:NEW' +
                '.CMP_QTDDEC_QTD);'
              ''
              
                '   mEst_Reservado_Filial_Grupo:=ROUND(mEst_Reservado_Filial_Grup' +
                'o,:NEW.CMP_QTDDEC_QTD);'
              ''
              
                '   mEst_Nor_filial            :=ROUND(mEst_Nor_filial,:NEW.CMP_Q' +
                'TDDEC_QTD);'
              ''
              
                '   mEst_Reservado_Filial      :=ROUND(mEst_Reservado_Filial,:NEW' +
                '.CMP_QTDDEC_QTD);'
              ''
              
                '   mEst_Nor_Geral             :=ROUND(mEst_Nor_Geral,:NEW.CMP_QT' +
                'DDEC_QTD);'
              ''
              
                '   mEst_Reservado_Geral       :=ROUND(mEst_Reservado_Geral,:NEW.' +
                'CMP_QTDDEC_QTD);'
              ''
              ''
              ''
              '   if mQtdReg=0 then'
              ''
              '      insert into CADEST'
              ''
              '      ('
              ''
              '      CECODEMP'
              ''
              '      ,CEFILIAL'
              ''
              '      ,CECODPRO'
              ''
              '      ,CESALDO'
              ''
              '      ,CESALDO_RESERVADO'
              ''
              '      ) values ('
              ''
              '       mCodEmp'
              ''
              '      ,:NEW.CMP_FILIAL'
              ''
              '      ,:NEW.CMP_CODPRO'
              ''
              
                '      ,mEst_Nor_Filial+(Case when :NEW.CMP_ESTNOR='#39'E'#39' then :NEW.' +
                'CMP_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '      :NEW.CMP_QTD*-1'
              ''
              '      else 0 end)'
              ''
              
                '      ,mEst_Reservado_Filial+(Case when :NEW.CMP_ESTRESERVADO='#39'E' +
                #39' then :NEW.CMP_QTD when'
              ''
              '      :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '      :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '      );'
              ''
              '   else'
              ''
              
                '     Update CADEST set CESALDO=NVL(mEst_Nor_Filial,0)+(Case when' +
                ' :NEW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '                                              :NEW.CMP_ESTNOR='#39'S' +
                #39' then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              
                '      , CESALDO_RESERVADO=NVL(mEst_Reservado_Filial,0)+(Case whe' +
                'n'
              ''
              '      :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '       :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end' +
                ')'
              ''
              '         where CEFILIAL=:NEW.CMP_FILIAL'
              ''
              '           and CECODPRO=:NEW.CMP_CODPRO'
              ''
              
                '           AND ( (SELECT COUNT(*) FROM CADTID WHERE TINOME='#39'CADE' +
                'ST'#39' AND TIQTD=0)=1 OR CECODEMP=mCodEmp);'
              ''
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              
                '   Update CADPRO set PDSALDO=NVL(mEst_Nor_Geral,0)+(Case when :N' +
                'EW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD'
              '     when :NEW.CMP_ESTNOR='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end)'
              '     , PDDTULTSAI=(Case when :NEW.CMP_ESTNOR='#39'E'#39' then PDDTULTSAI'
              '     when :NEW.CMP_ESTNOR='#39'S'#39' then SYSDATE else PDDTULTSAI end)'
              '     , PDDTULTENT=(Case when :NEW.CMP_ESTNOR='#39'E'#39' then SYSDATE'
              
                '     when :NEW.CMP_ESTNOR='#39'S'#39' then PDDTULTENT else PDDTULTSAI en' +
                'd)'
              ''
              ''
              
                '          ,PDVENDA_PEND= mEst_Reservado_Geral+(Case when :NEW.CM' +
                'P_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              
                '             :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else' +
                ' 0 end) where PDCODPRO=:NEW.CMP_CODPRO'
              
                '                     AND ( (SELECT COUNT(*) FROM CADTID WHERE TI' +
                'NOME='#39'CADPRO'#39' AND TIQTD=0)=1 OR PDCODEMP=mCodEmp);'
              ''
              '   :NEW.CMP_SALDO_ANT:=NVL(mEst_Nor_filial,0);'
              ''
              
                '   :NEW.CMP_SALDO_ATU:=NVL(mEst_Nor_filial,0)+(Case when :NEW.CM' +
                'P_ESTNOR='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '   :NEW.CMP_ESTNOR='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end);'
              ''
              '   :NEW.CMP_RESERVADO_ANT:=NVL(mEst_Reservado_Filial,0);'
              ''
              
                '   :NEW.CMP_RESERVADO_ATU:=NVL(mEst_Reservado_Filial,0)+(Case wh' +
                'en :NEW.CMP_ESTRESERVADO='#39'E'#39' then'
              ''
              
                '   :NEW.CMP_QTD when :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD' +
                '*-1 else 0 end);'
              ''
              ''
              ''
              '   mComando:='#39'SELECT CADMOV_PROD_SEQ.NEXTVAL FROM DUAL'#39';'
              ''
              '   execute immediate mComando into mChave_id;'
              ''
              '   :NEW.CMP_ID:=mchave_id;'
              ''
              '   :NEW.cmp_id_ano:=TO_NUMBER( TO_CHAR(SYSDATE,'#39'yyyy'#39'));'
              ''
              ''
              ''
              
                '   delete from CADLGC where nvl(CLQTD,0)=0 and nvl(CLQTD_ANALISE' +
                ',0)=0 and nvl(CLQTD_RESERVADO,0)=0;'
              '   end if;'
              'end;'
              ''
              ''
              'end;')
            TabOrder = 0
            WordWrap = False
          end
        end
        object tsCadp02_NR: TTabSheet
          Caption = 'CADP02_NR'
          ImageIndex = 7
          object Memo_cadp02_nr: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              ''
              ''
              
                'CREATE OR REPLACE TRIGGER CADP02_PRE_TEMP_TRIG01 AFTER INSERT ON' +
                ' CADP02_PRE_TEMP'
              ''
              'FOR EACH ROW'
              ''
              ''
              ''
              'declare mDiferSaldo NUMBER;'
              ''
              ''
              ''
              ' mimp_VII NUMBER;'
              ''
              ' mimp_VPIS NUMBER;'
              ''
              ' mimp_VCOFINS NUMBER;'
              ''
              ' mimp_VIPI NUMBER;'
              ''
              ' mimp_VICMS NUMBER;'
              ''
              ''
              ''
              ''
              ''
              ' mTotalPed NUMBER;'
              ''
              ' mTotalout NUMBER;'
              ''
              ' mIcmsRetido NUMBER;'
              ''
              ' mTotIPI NUMBER;'
              ''
              ' mTotalDesc_Prod NUMBER;'
              ''
              ' mTotalDesc_Serv NUMBER;'
              ''
              ' mTotalDescRat_Prod NUMBER;'
              ''
              ' mTotalDescRat_Serv  NUMBER;'
              ''
              ' mValorTemp NUMBER;'
              ''
              ' mDifTemp NUMBER;'
              ''
              ' mQtdProc NUMBER;'
              ''
              ''
              ''
              'mTot_pItem_DescCab NUMBER;'
              ''
              'mTot_pItem_TotDescRat NUMBER;'
              ''
              'mTot_pItem_DespAces NUMBER;'
              ''
              'mTot_pItem_ValSeg NUMBER;'
              ''
              'mTot_pItem_TotDes NUMBER;'
              ''
              'mTot_pItem_ValRepas NUMBER;'
              ''
              'mTot_pItem_Basen NUMBER;'
              ''
              'mTot_PItem_Icmsn NUMBER;'
              ''
              'mTot_PItem_Icmsr NUMBER;'
              ''
              'mTot_pItem_Baser NUMBER;'
              ''
              'mTot_PItem_ValIPI NUMBER;'
              ''
              'mTot_PItem_ICMS_SN NUMBER;'
              ''
              'mTot_pItem_TotAcrecRat NUMBER;'
              ''
              ''
              ''
              'mTot_Ped02_DescCab  NUMBER;'
              ''
              'mTot_ped02_TotDescRat NUMBER;'
              ''
              'mTot_ped02_TotAcrecRat NUMBER;'
              ''
              'mTot_ped02_DespAces NUMBER;'
              ''
              'mTot_ped02_ValSeg NUMBER;'
              ''
              'mTot_ped02_TotDes NUMBER;'
              ''
              'mTot_ped02_ValRepas NUMBER;'
              ''
              'mTot_ped02_Basen NUMBER;'
              ''
              'mTot_ped02_Icmsn NUMBER;'
              ''
              'mTot_ped02_Icmsr NUMBER;'
              ''
              'mTot_ped02_Baser NUMBER;'
              ''
              'mTot_ped02_ValIPI NUMBER;'
              ''
              'mTot_ped02_ICMS_SN NUMBER;'
              ''
              ''
              ''
              'mTot_Dif_DescCab  NUMBER;'
              ''
              'mTot_Dif_TotDescRat NUMBER;'
              ''
              'mTot_Dif_TotAcrecRat NUMBER;'
              ''
              'mTot_Dif_DespAces NUMBER;'
              ''
              'mTot_Dif_ValSeg NUMBER;'
              ''
              'mTot_Dif_TotDes NUMBER;'
              ''
              'mTot_Dif_ValRepas NUMBER;'
              ''
              'mTot_Dif_Basen NUMBER;'
              ''
              'mTot_Dif_Icmsn NUMBER;'
              ''
              'mTot_Dif_Icmsr NUMBER;'
              ''
              'mTot_Dif_Baser NUMBER;'
              ''
              'mTot_Dif_ValIPI NUMBER;'
              ''
              'mTot_Dif_ICMS_SN NUMBER;'
              ''
              ''
              ''
              ''
              ''
              ' mTotalBCIcms NUMBER;'
              ''
              ' mTotalBCST NUMBER;'
              ''
              ' mTotalICMSR NUMBER;'
              ''
              ' mTotalCOMIS NUMBER;'
              ''
              ''
              'mTotalIRRF NUMBER;'
              ''
              'mTotalCSLL NUMBER;'
              ''
              ''
              ' mTotalIcms NUMBER;'
              ''
              ' mTotalIcmsDes NUMBER;'
              ''
              ' mTotalValAproxTrib NUMBER;'
              ''
              ' mTotalPIS NUMBER;'
              ''
              ' mTotalCOFINS NUMBER;'
              ''
              ' mTotMer NUMBER;'
              ''
              ' mTotSer NUMBER;'
              ''
              ' mQtdxPreco NUMBER;'
              ''
              ' mPercRat NUMBER;'
              ''
              ' mValorDup NUMBER;'
              ''
              ' mDifDup NUMBER;'
              ''
              ' mItemPed NUMBER;'
              ''
              ' pos_ini NUMBER;'
              ''
              ' namelength NUMBER;'
              ''
              ' l_loop INTEGER;'
              ''
              ' mOper_estnor VARCHAR2(01);'
              ''
              ' mOper_estreservado VARCHAR2(01);'
              ''
              ' mQtdProdEst NUMBER;'
              ''
              ' mCodEmpPad NUMBER;'
              ''
              ''
              ''
              ' mnv_tamprz INTEGER;'
              ''
              ' mnv_vAcum VARCHAR2(100);'
              ''
              ' mnv_Prazo INTEGER;'
              ''
              ' mnv_PrazoDESCFIN INTEGER;'
              ''
              ' mNv_Tipo VARCHAR2(1);'
              ''
              ' mNv_valor NUMBER;'
              ''
              ' mNv_valor_servico NUMBER;'
              ''
              ''
              ' mNv_qtdcampos integer;'
              ''
              ''
              ''
              ' mTotDescFin_prod NUMBER;'
              ''
              ' mTotDescFin_serv NUMBER;'
              ''
              ''
              ''
              ' mNv_CodFP Integer;'
              ''
              ' mNv_NomFP VARCHAR2(30);'
              ''
              ' mNv_Baixa VARCHAR2(1);'
              ''
              
                ' mNv_ParcDif Integer; -- parcela onde pode aplicar a diferenca d' +
                'e arredondamentos'
              ''
              ' mNv_Campo Integer;'
              ''
              ' mNv_ValFixo Number;'
              ''
              ' mNv_QtdDupRat Integer;'
              ''
              ' mNv_Parcela Integer;'
              ''
              ' mNv_QtdParc Integer;'
              ''
              ''
              ''
              'mNv_CodBco_Cob integer;'
              ''
              'mNv_CodCx_Rec integer;'
              ''
              'mNv_CodUsr_Rec integer;'
              ''
              'mNv_Vago10 integer;'
              ''
              'mNv_Vago11 integer;'
              ''
              'mNv_Vago12 integer;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ' mNv_QtdParcDiv Integer;'
              ''
              ''
              ''
              ' mtamprz Integer;'
              ''
              ''
              ''
              'begin'
              ''
              ''
              ''
              'mNv_qtdcampos:=12;'
              ''
              ''
              ''
              ''
              ''
              ' mimp_VII:=0;'
              ''
              ' mimp_VPIS:=0;'
              ''
              ' mimp_VCOFINS:=0;'
              ''
              ' mimp_VIPI:=0;'
              ''
              ' mimp_VICMS:=0;'
              ''
              ''
              ''
              'mDiferSaldo:=0;'
              ''
              'mTotalPed:=0;'
              ''
              'mIcmsRetido:=0;'
              ''
              ''
              ''
              'mTotalBCIcms:=0;'
              ''
              'mTotalBCST:=0;'
              ''
              'mTotalICMSR:=0;'
              ''
              'mTotalCOMIS:=0;'
              ''
              'mTotalIRRF :=0;'
              ''
              'mTotalCSLL :=0;'
              ''
              ''
              'mTotalPIS:=0;'
              ''
              'mTotalCOFINS:=0;'
              ''
              'mTotalIcms:=0;'
              ''
              'mTotalIcmsDes:=0;'
              ''
              'mTotalValAproxTrib:=0;'
              ''
              'mTotMer:=0;'
              ''
              'mTotSer:=0;'
              ''
              'mQtdxPreco:=0;'
              ''
              'mPercRat:=0;'
              ''
              'mValorDup:=0;'
              ''
              'mDifDup:=0;'
              ''
              'mItemPed:=0;'
              ''
              'pos_ini:=1;'
              ''
              'namelength:=0;'
              ''
              'l_loop:=0;'
              ''
              'if :NEW.P2T_CODEMP>100 then'
              ''
              '   mCodEmpPad:=:NEW.P2T_CODEMP-100;'
              ''
              'else'
              ''
              '   mCodEmpPad:=:NEW.P2T_CODEMP;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO=0 then'
              ''
              '    if :NEW.P2T_PROD_SERV=0 then'
              ''
              '       Insert into CADP02'
              ''
              '                          ('
              ''
              '                          P2CODEMP'
              ''
              '                          ,P2CHAVE'
              '                          ,P2ID_NEW'
              '                          ,P2ID_PED01_NEW'
              ''
              ''
              '                          ,P2ORDEM'
              ''
              '                          ,P2LOTSEQ'
              ''
              '                          ,P2ITEM'
              ''
              '                          ,P2CODPRO'
              ''
              '                          ,P2NRECEITUARIO'
              ''
              ''
              ''
              '                          ,P2NOMPRO_ORI'
              ''
              '                          ,P2UND'
              ''
              '                          ,P2QTD'
              ''
              '                          ,P2VALDES'
              ''
              '                          ,P2DESC1'
              ''
              '                          ,P2DESC2'
              ''
              '                          ,P2DESC3'
              ''
              '                          ,P2DESCPR'
              ''
              '                          ,P2PCOFPG'
              ''
              '                          ,P2PRECO'
              ''
              '                          ,P2PCOMIS'
              ''
              '                          ,P2SIT'
              ''
              '                          ,P2CBENEF'
              ''
              '                          ,P2CODVEN'
              ''
              '                          ,P2IRRF_PERC'
              ''
              '                          ,P2CSLL_PERC'
              ''
              '                          ,P2CSOSN'
              ''
              '                          ,P2CSOSN_ORI'
              ''
              '                          ,P2REDUTICM'
              ''
              '                          ,P2MODBCST'
              ''
              '                          ,P2ST_IVA'
              ''
              '                          ,P2ST_REDUT'
              ''
              '                          ,P2ST_ICMCRED'
              ''
              '                          ,P2ST_ICMDEB'
              ''
              '                          ,P2PCOTAB'
              ''
              '                          ,P2UCPR'
              ''
              '                          ,P2PCOCUS'
              ''
              '                          ,P2PCOMAX'
              ''
              '                          ,P2ALIPI'
              ''
              '                          ,P2ALIQ'
              ''
              '                          ,P2ALIQICMSDES'
              ''
              '                          ,P2ALIQAPROXTRIB'
              ''
              '                          ,P2CFO'
              ''
              '                          ,P2CFOSUBECF'
              ''
              '                          ,P2PDESCF'
              ''
              '                          ,P2ALPIS'
              ''
              '                          ,P2CST_PIS'
              ''
              '                          ,P2ALCOFINS'
              ''
              '                          ,P2CST_COFINS'
              ''
              '                          ,P2COMPLEMENTO'
              ''
              '                          ,P2PCRED_SN'
              ''
              '                          ,P2PCREDSN'
              ''
              '                          ,P2SITUACAO'
              ''
              '                          ,P2ESTNOR'
              ''
              '                          ,P2ESTCONS'
              ''
              '                          ,P2ESTTERC'
              ''
              '                          ,P2ESTREV'
              ''
              '                          ,P2PROMOCAO'
              ''
              '                          ,P2DESC_CAB'
              ''
              '                          ,P2CONTESP'
              ''
              '                          ,P2TIPOPROD'
              ''
              '                          ,P2AMBIENTE'
              ''
              '                          ,P2CONS_PROPRIO'
              ''
              '                          ,P2TIPO_PCO'
              ''
              '                          ,P2ICMS_ALIPI'
              ''
              '                          ,P2COMPRA_XPED'
              ''
              '                          ,P2COMPRA_NITEMPED'
              ''
              '                          ,P2IMP_IMP_ALIQ'
              ''
              '                          ,P2IMP_IMP_VALOR'
              ''
              '                          ,P2IMP_IMP_VDESDPADU'
              ''
              '                          ,P2IMP_IMP_VII'
              ''
              '                          ,P2IMP_IMP_VIOF'
              ''
              '                          ,P2IMP_IMP_VBC'
              ''
              '                          ,P2IMP_TPVIATRANSP'
              ''
              '                          ,P2IMP_VAFRMM'
              ''
              '                          ,P2IMP_TPINTERMEDIARIO'
              ''
              '                          ,P2IMP_CNPJ'
              ''
              '                          ,P2IMP_UFTERCEIRO'
              ''
              '                          ,P2IMP_NDRAW'
              ''
              '                          ,P2EXP_NDRAW'
              ''
              '                          ,P2EXP_NRE'
              ''
              '                          ,P2EXP_CHNFE'
              ''
              '                          ,P2EXP_QEXPORT'
              ''
              '                          ,P2IMP_PU_DOLLAR'
              ''
              '                          ,P2PISCOFINS_VBC_IMP'
              ''
              ''
              ''
              '                             ,P2CEST'
              ''
              '                             ,P2CPUFDEST'
              ''
              '                             ,P2ICMSUFDEST'
              ''
              '                             ,P2ICMSINTER'
              ''
              '                             ,P2ICMSINTERPART'
              ''
              '                             ,P2PERCDESC_AUT'
              '                             ,P2PERCDESC_AUT_CODUSR'
              '                             ,P2PERCDESC_AUT_DATHOR'
              '                             ,P2MOTIVODESONERACAO'
              #9#9#9#9#9#9#9' ,P2CBS_CST'
              #9#9#9#9#9#9#9' ,P2CODCLASSTRIB'
              #9#9#9#9#9#9#9' ,P2CBS_ALIQ'
              #9#9#9#9#9#9#9' ,P2IBS_UF_ALIQ'
              #9#9#9#9#9#9#9' ,P2IBS_MUN_ALIQ'
              ''
              ''
              ''
              ''
              '                          ) values ('
              ''
              '                          :NEW.P2T_CODEMP'
              ''
              '                          , :NEW.P2T_CHAVE'
              ''
              '                          , :NEW.P2T_ID_PED02_NEW'
              ''
              '                          , :NEW.P2T_ID_PED01_NEW'
              ''
              '                          , 01'
              ''
              '                          , :NEW.P2T_CHAVE_ANO'
              ''
              '                          , :NEW.P2T_ITEM'
              ''
              '                          , :NEW.P2T_CODPRO'
              ''
              '                          , :NEW.P2T_NRECEITUARIO'
              ''
              '                          , :NEW.P2T_NOMPRO_ORI'
              ''
              '                          , :NEW.P2T_UND'
              ''
              '                          , :NEW.P2T_QTD'
              ''
              '                          , :NEW.P2T_DESC_VALOR'
              ''
              '                          , :NEW.P2T_DESC_PERC01'
              ''
              '                          , :NEW.P2T_DESC_PERC02'
              ''
              '                          , :NEW.P2T_DESC_PERC03'
              ''
              '                          , :NEW.P2T_DESC_PPR'
              ''
              '                          , :NEW.P2T_PRECO_FPGTO'
              ''
              '                          , :NEW.P2T_PRECO'
              ''
              '                          , :NEW.P2T_COMISV01_PERC'
              ''
              '                          , :NEW.P2T_CST'
              ''
              '                          , :NEW.P2T_CBENEF'
              ''
              '                          , :NEW.P2T_CODVEN'
              ''
              ''
              '                          , :NEW.P2T_IRRF_PERC'
              ''
              '                          , :NEW.P2T_CSLL_PERC'
              ''
              ''
              ''
              '                          , :NEW.P2T_CSOSN'
              ''
              '                          , :NEW.P2T_CSOSN_ORI'
              ''
              '                          , :NEW.P2T_ICMS_PRED'
              ''
              '                          , :NEW.P2T_MODBCST'
              ''
              '                          , :NEW.P2T_ST_IVA'
              ''
              '                          , :NEW.P2T_ST_PREDUT'
              ''
              '                          , :NEW.P2T_ST_ICMSCRED'
              ''
              '                          , :NEW.P2T_ST_ICMSDEB'
              ''
              '                          , :NEW.P2T_PRECO_TAB'
              ''
              '                          , :NEW.P2T_PRECO_UCPR'
              ''
              '                          , :NEW.P2T_PRECO_CUS'
              ''
              '                          , :NEW.P2T_PRECO_MAXCONS'
              ''
              '                          , :NEW.P2T_IPI_PERC'
              ''
              '                          , :NEW.P2T_ICMS_PERC'
              ''
              '                          , :NEW.P2T_ICMS_DES'
              ''
              '                          , :NEW.P2T_ALIQAPROXTRIB'
              ''
              '                          , :NEW.P2T_CFOP'
              ''
              '                          , :NEW.P2T_CFOP_SUBECF'
              ''
              '                          , :NEW.P2T_DESCFIN_PERC'
              ''
              '                          , :NEW.P2T_PIS_PERC'
              ''
              '                          , :NEW.P2T_PIS_CST'
              ''
              '                          , :NEW.P2T_COFINS_PERC'
              ''
              '                          , :NEW.P2T_COFINS_CST'
              ''
              '                          , :NEW.P2T_DESCCOMPL'
              ''
              '                          , :NEW.P2T_ICMSSN_PERC'
              ''
              '                          , :NEW.P2T_ICMSSN_PERC'
              ''
              '                          , :NEW.P2T_SITUACAO'
              ''
              '                          , :NEW.P2T_ESTNOR'
              ''
              '                          , :NEW.P2T_ESTCONS'
              ''
              '                          , :NEW.P2T_ESTTERC'
              ''
              '                          , :NEW.P2T_ESTREV'
              ''
              '                          , :NEW.P2T_PROMOCAO'
              ''
              '                          , :NEW.P2T_DESC_CAB'
              ''
              '                          , :NEW.P2T_CONTESP'
              ''
              '                          , :NEW.P2T_TIPOPROD'
              ''
              '                          , :NEW.P2T_AMBIENTE'
              ''
              '                          , :NEW.P2T_CONS_PROPRIO'
              ''
              '                          , :NEW.P2T_TPPCO_ITEM'
              ''
              '                          , :NEW.P2T_ICMS_ALIPI'
              ''
              '                          , :NEW.P2T_COMPRA_XPED'
              ''
              '                          , :NEW.P2T_COMPRA_NITEMPED'
              ''
              '                          ,:NEW.P2T_IMP_IMP_ALIQ'
              ''
              '                          ,:NEW.P2T_IMP_IMP_VALOR'
              ''
              '                          ,:NEW.P2T_IMP_IMP_VDESDPADU'
              ''
              '                          ,:NEW.P2T_IMP_IMP_VII'
              ''
              '                          ,:NEW.P2T_IMP_IMP_VIOF'
              ''
              '                          ,:NEW.P2T_IMP_IMP_VBC'
              ''
              ''
              ''
              '                          ,:NEW.P2T_IMP_TPVIATRANSP'
              ''
              '                          ,:NEW.P2T_IMP_VAFRMM'
              ''
              '                          ,:NEW.P2T_IMP_TPINTERMEDIARIO'
              ''
              '                          ,:NEW.P2T_IMP_CNPJ'
              ''
              '                          ,:NEW.P2T_IMP_UFTERCEIRO'
              ''
              '                          ,:NEW.P2T_IMP_NDRAW'
              ''
              '                          ,:NEW.P2T_EXP_NDRAW'
              ''
              '                          ,:NEW.P2T_EXP_NRE'
              ''
              '                          ,:NEW.P2T_EXP_CHNFE'
              ''
              '                          ,:NEW.P2T_EXP_QEXPORT'
              ''
              '                          ,:NEW.P2T_IMP_PU_DOLLAR'
              ''
              '                          ,:NEW.P2T_PISCOFINS_VBC_IMP'
              ''
              ''
              ''
              '                             ,:NEW.P2T_CEST'
              ''
              '                             ,:NEW.P2T_CPUFDEST'
              ''
              '                             ,:NEW.P2T_ICMSUFDEST'
              ''
              '                             ,:NEW.P2T_ICMSINTER'
              ''
              '                             ,:NEW.P2T_ICMSINTERPART'
              '                             ,:NEW.P2T_PERCDESC_AUT'
              '                             ,:NEW.P2T_PERCDESC_AUT_CODUSR'
              '                             ,:NEW.P2T_PERCDESC_AUT_DATHOR'
              '                             ,:NEW.P2T_MOTIVODESONERACAO'
              ''
              #9#9#9#9#9#9#9' ,:NEW.P2T_CBS_CST'
              #9#9#9#9#9#9#9' ,:NEW.P2T_CODCLASSTRIB'
              #9#9#9#9#9#9#9' ,:NEW.P2T_CBS_ALIQ'
              #9#9#9#9#9#9#9' ,:NEW.P2T_IBS_UF_ALIQ'
              #9#9#9#9#9#9#9' ,:NEW.P2T_IBS_MUN_ALIQ'
              ''
              ''
              ''
              ''
              '                          );'
              ''
              '   else'
              ''
              '     Insert into CADP02S'
              ''
              '                          ('
              ''
              '                           P2SCODEMP'
              ''
              '                          ,P2SCHAVE'
              ''
              '                          , P2SID_NEW'
              ''
              '                          , P2SID_PED01_NEW'
              ''
              '                          ,P2SORDEM'
              ''
              '                          ,P2SLOTSEQ'
              ''
              '                          ,P2SITEM'
              ''
              '                          ,P2SCODPRO'
              ''
              '                          ,P2SQTD'
              ''
              '                          ,P2SDESC1'
              ''
              '                          ,P2SDESC2'
              ''
              '                          ,P2SDESC3'
              ''
              '                          ,P2SPRECO'
              ''
              '                          ,P2SSIT'
              ''
              '                          ,P2SCSOSN'
              ''
              '                          ,P2SCSOSN_ORI'
              ''
              '                          ,P2SVALDES'
              ''
              '                          ,P2SCODFAB'
              ''
              '                          ,P2SSTATUS'
              ''
              '                          ,P2SPCOTAB'
              ''
              '                          ,P2SPCOCUS'
              ''
              '                          ,P2SALIQ'
              ''
              '                          ,P2SCFO'
              ''
              '                          ,P2SPDESCF'
              ''
              '                          ,P2SCODFUN'
              ''
              '                          ,P2SREDINSS'
              ''
              '                          ,P2SALIQINSS'
              ''
              '                          ,P2SREDIRRF'
              ''
              '                          ,P2SALIQIRRF'
              ''
              '                          ,P2SDESC_CAB'
              ''
              '                          ,P2SESTNOR'
              ''
              '                          ,P2SESTCONS'
              ''
              '                          ,P2SESTTERC'
              ''
              '                          ,P2SESTREV'
              ''
              '                          ,P2SPROMOCAO'
              ''
              '                          ,P2SDESC_COMP'
              ''
              '                          ,P2SSITUACAO'
              ''
              '                          ,P2SPCOMIS'
              ''
              '                          ,P2SCBS_CST'
              '                          ,p2SCODCLASSTRIB'
              '                          ,P2SCBS_ALIQ'
              '                          ,P2SIBS_UF_ALIQ'
              '                          ,P2SIBS_MUN_ALIQ'
              '                          ,P2SINDOP_IBSCBS'
              '                          ,P2SCST_PIS'
              ''
              '                          ,P2SCODTRIB_MUN'
              '                          ,P2SCODTRIB_NAC'
              '                          ,P2SCODNBS'
              ''
              '                          ,P2SPCSLL'
              '                          ,P2SPISSQN'
              '                          ,P2SPIR'
              '                          ,P2SPCOFINS'
              ''
              '                          ) values ('
              ''
              ''
              '                          :NEW.P2T_CODEMP'
              ''
              '                          , :NEW.P2T_CHAVE'
              ''
              '                          , :NEW.P2T_ID_PED02_NEW'
              ''
              '                          , :NEW.P2T_ID_PED01_NEW'
              ''
              ''
              '                          , 01'
              ''
              '                          , :NEW.P2T_CHAVE_ANO'
              ''
              '                          , :NEW.P2T_ITEM'
              ''
              '                          , :NEW.P2T_CODPRO'
              ''
              '                          ,:NEW.P2T_QTD'
              ''
              '                          ,:NEW.P2T_DESC_PERC01'
              ''
              '                          ,:NEW.P2T_DESC_PERC02'
              ''
              '                          ,:NEW.P2T_DESC_PERC03'
              ''
              '                          ,:NEW.P2T_PRECO'
              ''
              '                          ,:NEW.P2T_CST'
              ''
              ''
              ''
              '                          ,:NEW.P2T_CSOSN'
              ''
              '                          ,:NEW.P2T_CSOSN_ORI'
              ''
              '                          ,:NEW.P2T_DESC_VALOR'
              ''
              '                          ,0'
              ''
              '                          ,:NEW.P2T_SITUACAO'
              ''
              '                          ,:NEW.P2T_PRECO_TAB'
              ''
              '                          ,:NEW.P2T_PRECO_CUS'
              ''
              '                          ,:NEW.P2T_PISSQN'
              ''
              '                          ,:NEW.P2T_CFOP'
              ''
              '                          ,:NEW.P2T_DESCFIN_PERC'
              ''
              ''
              ''
              '                          ,:NEW.P2T_CODUSR'
              ''
              '                          ,:NEW.P2T_INSS_PRED'
              ''
              '                          ,:NEW.P2T_INSS_ALIQ'
              ''
              '                          ,:NEW.P2T_IRRF_PRED'
              ''
              '                          ,:NEW.P2T_IRRF_ALIQ'
              ''
              '                          ,:NEW.P2T_DESC_CAB'
              ''
              '                          ,:NEW.P2T_ESTNOR'
              ''
              '                          ,:NEW.P2T_ESTCONS'
              ''
              '                          ,:NEW.P2T_ESTTERC'
              ''
              '                          ,:NEW.P2T_ESTREV'
              ''
              '                          ,:NEW.P2T_PROMOCAO'
              ''
              '                          ,:NEW.P2T_DESCCOMPL'
              ''
              '                          ,:NEW.P2T_SITUACAO'
              ''
              '                          ,:NEW.P2T_COMISV01_PERC'
              ''
              '                          ,:NEW.P2T_CBS_CST'
              '                          ,:NEW.P2T_CODCLASSTRIB'
              '                          ,:NEW.P2T_CBS_ALIQ'
              '                          ,:NEW.P2T_IBS_UF_ALIQ'
              '                          ,:NEW.P2T_IBS_MUN_ALIQ'
              '                          ,:NEW.P2T_INDOP_IBSCBS'
              '                          ,:NEW.P2T_PIS_CST'
              ''
              '                          ,:NEW.P2T_CODTRIB_MUN'
              '                          ,:NEW.P2T_CODTRIB_NAC'
              '                          ,:NEW.P2T_CODNBS'
              '                          ,:NEW.P2T_PCSLL'
              '                          ,:NEW.P2T_PISSQN'
              '                          ,:NEW.P2T_PIR'
              '                          ,:NEW.P2T_PCOFINS'
              ''
              '                          );'
              ''
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   if  (:NEW.P2T_TIPOPROD<>3) AND'
              ''
              '    ((:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39')) or'
              ''
              
                '                             ((:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:' +
                'NEW.P2T_EST_RESERVADO='#39'E'#39')) then'
              ''
              ''
              ''
              ''
              ''
              '--     RAISE_APPLICATION_ERROR(-20000, '#39'IRA INSERIR'#39');'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '      insert into CADMOV_PROD ('
              ''
              '       CMP_CODEMP'
              ''
              '      ,CMP_FILIAL'
              ''
              '      ,CMP_ID_NEW'
              ''
              '      ,CMP_ID_DOC_NEW'
              ''
              '      ,CMP_CHAVE'
              ''
              '      ,CMP_CHAVE_ANO'
              ''
              '      ,CMP_ITEM'
              ''
              '      ,CMP_DOCORI'
              ''
              '      ,CMP_CODPRO'
              ''
              '      ,CMP_DATHOR'
              ''
              '      ,CMP_QTD'
              ''
              '      ,CMP_ESTNOR'
              ''
              '      ,CMP_ESTRESERVADO'
              ''
              '      ,CMP_CODUSR'
              ''
              '      ,CMP_CONTESP'
              ''
              '      ,CMP_TIPOPROD'
              ''
              '      ) values ('
              ''
              '       :NEW.P2T_CODEMP'
              ''
              '      ,:NEW.P2T_FILIAL'
              ''
              '      ,CADMOV_PROD_SEQ.NEXTVAL'
              ''
              '      ,:NEW.P2T_ID_PED01_NEW'
              ''
              ''
              '      ,:NEW.P2T_CHAVE'
              ''
              '      ,:NEW.P2T_CHAVE_ANO'
              ''
              '      ,:NEW.P2T_ITEM'
              ''
              '      ,00 -- pedido de vendas'
              ''
              '      ,:NEW.P2T_CODPRO'
              ''
              '      ,sysdate'
              ''
              '      ,:NEW.P2T_QTD'
              ''
              '      ,:NEW.P2T_ESTNOR'
              ''
              '      ,:NEW.P2T_EST_RESERVADO'
              ''
              '      ,:NEW.P2T_CODUSR'
              ''
              '      ,:NEW.P2T_CONTESP'
              ''
              '      ,:NEW.P2T_TIPOPROD'
              ''
              '      );'
              ''
              ''
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO=1 then'
              ''
              '   if :NEW.P2T_PROD_SERV=0 then'
              ''
              '      Update CADP02 set    P2CODPRO=:NEW.P2T_CODPRO'
              ''
              '                       ,P2NOMPRO_ORI=:NEW.P2T_NOMPRO_ORI'
              ''
              '                       ,P2NRECEITUARIO=:NEW.P2T_NRECEITUARIO'
              ''
              ''
              '                       ,P2UND=:NEW.P2T_UND'
              ''
              '                       ,P2QTD=:NEW.P2T_QTD'
              ''
              '                       ,P2VALDES=:NEW.P2T_DESC_VALOR'
              ''
              '                       ,P2DESC1=:NEW.P2T_DESC_PERC01'
              ''
              '                       ,P2DESC2=:NEW.P2T_DESC_PERC02'
              ''
              '                       ,P2DESC3=:NEW.P2T_DESC_PERC03'
              ''
              '                       ,P2DESCPR=:NEW.P2T_DESC_PPR'
              ''
              '                       ,P2PRECO=:NEW.P2T_PRECO'
              ''
              '                       ,P2PCOFPG=:NEW.P2T_PRECO_FPGTO'
              ''
              '                       ,P2PCOMIS=:NEW.P2T_COMISV01_PERC'
              ''
              '                       ,P2SIT=:NEW.P2T_CST'
              ''
              ''
              '                       ,P2CBENEF=:NEW.P2T_CBENEF'
              ''
              '                       ,P2IRRF_PERC=:NEW.P2T_IRRF_PERC'
              ''
              '                       ,P2CSLL_PERC=:NEW.P2T_CSLL_PERC'
              ''
              '                       ,P2CSOSN=:NEW.P2T_CSOSN'
              ''
              '                       ,P2CSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              ''
              '                       ,P2CODVEN=:NEW.P2T_CODVEN'
              ''
              '                       ,P2REDUTICM=:NEW.P2T_ICMS_PRED'
              ''
              '                       ,P2MODBCST=:NEW.P2T_MODBCST'
              ''
              '                       ,P2ST_IVA=:NEW.P2T_ST_IVA'
              ''
              '                       ,P2ST_REDUT=:NEW.P2T_ST_PREDUT'
              ''
              '                       ,P2ST_ICMCRED=:NEW.P2T_ST_ICMSCRED'
              ''
              '                       ,P2ST_ICMDEB=:NEW.P2T_ST_ICMSDEB'
              ''
              '                       ,P2PCOTAB=:NEW.P2T_PRECO_TAB'
              ''
              '                       ,P2UCPR=:NEW.P2T_PRECO_UCPR'
              ''
              '                       ,P2PCOCUS=:NEW.P2T_PRECO_CUS'
              ''
              '                       ,P2PCOMAX=:NEW.P2T_PRECO_MAXCONS'
              ''
              '                       ,P2ALIPI=:NEW.P2T_IPI_PERC'
              ''
              '                       ,P2ALIQ=:NEW.P2T_ICMS_PERC'
              ''
              '                       ,P2ALIQICMSDES=:NEW.P2T_ICMS_DES'
              ''
              '                       ,P2ALIQAPROXTRIB=:NEW.P2T_ALIQAPROXTRIB'
              ''
              '                       ,P2CFO=:NEW.P2T_CFOP'
              ''
              '                       ,P2CFOSUBECF=:NEW.P2T_CFOP_SUBECF'
              ''
              '                       ,P2PDESCF=:NEW.P2T_DESCFIN_PERC'
              ''
              '                       ,P2ALPIS=:NEW.P2T_PIS_PERC'
              ''
              '                       ,P2CST_PIS=:NEW.P2T_PIS_CST'
              ''
              '                       ,P2ALCOFINS=:NEW.P2T_COFINS_PERC'
              ''
              '                       ,P2CST_COFINS=:NEW.P2T_COFINS_CST'
              ''
              '                       ,P2COMPLEMENTO=:NEW.P2T_DESCCOMPL'
              ''
              '                       ,P2PCRED_SN=:NEW.P2T_ICMSSN_PERC'
              ''
              '                       ,P2PCREDSN=:NEW.P2T_ICMSSN_PERC'
              ''
              '                       ,P2SITUACAO=:NEW.P2T_SITUACAO'
              ''
              '                       ,P2ESTNOR=:NEW.P2T_ESTNOR'
              ''
              '                       ,P2ESTCONS=:NEW.P2T_ESTCONS'
              ''
              '                       ,P2ESTTERC=:NEW.P2T_ESTTERC'
              ''
              '                       ,P2ESTREV=:NEW.P2T_ESTREV'
              ''
              '                       ,P2PROMOCAO=:NEW.P2T_PROMOCAO'
              ''
              '                       ,P2DESC_CAB=:NEW.P2T_DESC_CAB'
              ''
              '                       ,P2CONTESP=:NEW.P2T_CONTESP'
              ''
              '                       ,P2TIPOPROD=:NEW.P2T_TIPOPROD'
              ''
              '                       ,P2AMBIENTE=:NEW.P2T_AMBIENTE'
              ''
              '                       ,P2CONS_PROPRIO=:NEW.P2T_CONS_PROPRIO'
              ''
              '                       ,P2TIPO_PCO=:NEW.P2T_TPPCO_ITEM'
              ''
              '                       ,P2ICMS_ALIPI=:NEW.P2T_ICMS_ALIPI'
              ''
              '                       ,P2COMPRA_XPED=:NEW.P2T_COMPRA_XPED'
              ''
              
                '                       ,P2COMPRA_NITEMPED=:NEW.P2T_COMPRA_NITEMP' +
                'ED'
              ''
              '                          ,P2IMP_IMP_ALIQ=:NEW.P2T_IMP_IMP_ALIQ'
              ''
              
                '                          ,P2IMP_IMP_VALOR=:NEW.P2T_IMP_IMP_VALO' +
                'R'
              ''
              
                '                          ,P2IMP_IMP_VDESDPADU=:NEW.P2T_IMP_IMP_' +
                'VDESDPADU'
              ''
              '                          ,P2IMP_IMP_VII=:NEW.P2T_IMP_IMP_VII'
              ''
              '                          ,P2IMP_IMP_VIOF=:NEW.P2T_IMP_IMP_VIOF'
              ''
              '                          ,P2IMP_IMP_VBC=:NEW.P2T_IMP_IMP_VBC'
              ''
              ''
              ''
              
                '                          ,P2IMP_TPVIATRANSP=:NEW.P2T_IMP_TPVIAT' +
                'RANSP'
              ''
              '                          ,P2IMP_VAFRMM=:NEW.P2T_IMP_VAFRMM'
              ''
              
                '                          ,P2IMP_TPINTERMEDIARIO=:NEW.P2T_IMP_TP' +
                'INTERMEDIARIO'
              ''
              '                          ,P2IMP_CNPJ=:NEW.P2T_IMP_CNPJ'
              ''
              
                '                          ,P2IMP_UFTERCEIRO=:NEW.P2T_IMP_UFTERCE' +
                'IRO'
              ''
              '                          ,P2IMP_NDRAW=:NEW.P2T_IMP_NDRAW'
              ''
              '                          ,P2EXP_NDRAW=:NEW.P2T_EXP_NDRAW'
              ''
              '                          ,P2EXP_NRE=:NEW.P2T_EXP_NRE'
              ''
              '                          ,P2EXP_CHNFE=:NEW.P2T_EXP_CHNFE'
              ''
              '                          ,P2EXP_QEXPORT=:NEW.P2T_EXP_QEXPORT'
              ''
              
                '                          ,P2IMP_PU_DOLLAR=:NEW.P2T_IMP_PU_DOLLA' +
                'R'
              ''
              
                '                          ,P2PISCOFINS_VBC_IMP=:NEW.P2T_PISCOFIN' +
                'S_VBC_IMP'
              ''
              ''
              ''
              '                             ,P2CEST =:NEW.P2T_CEST'
              ''
              '                             ,P2CPUFDEST=:NEW.P2T_CPUFDEST'
              ''
              '                             ,P2ICMSUFDEST=:NEW.P2T_ICMSUFDEST'
              ''
              '                             ,P2ICMSINTER=:NEW.P2T_ICMSINTER'
              ''
              
                '                             ,P2ICMSINTERPART=:NEW.P2T_ICMSINTER' +
                'PART'
              ''
              
                '                             ,P2PERCDESC_AUT =:NEW.P2T_PERCDESC_' +
                'AUT'
              
                '                             ,P2PERCDESC_AUT_CODUSR =:NEW.P2T_PE' +
                'RCDESC_AUT_CODUSR'
              
                '                             ,P2PERCDESC_AUT_DATHOR =:NEW.P2T_PE' +
                'RCDESC_AUT_DATHOR'
              
                '                             ,P2MOTIVODESONERACAO =:NEW.P2T_MOTI' +
                'VODESONERACAO'
              
                '                             ,P2CODCLASSTRIB = :NEW.P2T_CODCLASS' +
                'TRIB'
              '                             ,P2CBS_ALIQ = :NEW.P2T_CBS_ALIQ '
              
                '                             ,P2IBS_UF_ALIQ = :NEW.P2T_IBS_UF_AL' +
                'IQ'
              
                '                             ,P2IBS_MUN_ALIQ = :NEW.P2T_IBS_MUN_' +
                'ALIQ'
              ''
              ''
              ''
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                       and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                       and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '                       and P2ITEM=:NEW.P2T_ITEM'
              ''
              '                       and P2CODPRO=:NEW.P2T_CODPRO_ANT;'
              ''
              '   else'
              ''
              '      Update CADP02S set      P2SCODPRO=:NEW.P2T_CODPRO'
              ''
              '                          ,P2SQTD=:NEW.P2T_QTD'
              ''
              '                          ,P2SDESC1=:NEW.P2T_DESC_PERC01'
              ''
              '                          ,P2SDESC2=:NEW.P2T_DESC_PERC02'
              ''
              '                          ,P2SDESC3=:NEW.P2T_DESC_PERC03'
              ''
              '                          ,P2SPRECO=:NEW.P2T_PRECO'
              ''
              '                          ,P2SSIT=:NEW.P2T_CST'
              ''
              '                          ,P2SCSOSN=:NEW.P2T_CSOSN'
              ''
              '                          ,P2SCSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              ''
              '                          ,P2SVALDES=:NEW.P2T_DESC_VALOR'
              ''
              '                          ,P2SCODFAB=0'
              ''
              '                          ,P2SSTATUS=:NEW.P2T_SITUACAO'
              ''
              '                          ,P2SPCOTAB=:NEW.P2T_PRECO_TAB'
              ''
              '                          ,P2SPCOCUS=:NEW.P2T_PRECO_CUS'
              ''
              '                          ,P2SALIQ=:NEW.P2T_PISSQN'
              ''
              '                          ,P2SCFO=:NEW.P2T_CFOP'
              ''
              '                          ,P2SPDESCF=:NEW.P2T_DESCFIN_PERC'
              ''
              '                          ,P2SCODFUN=:NEW.P2T_CODUSR'
              ''
              '                          ,P2SREDINSS=:NEW.P2T_INSS_PRED'
              ''
              '                          ,P2SALIQINSS=:NEW.P2T_INSS_ALIQ'
              ''
              '                          ,P2SREDIRRF=:NEW.P2T_IRRF_PRED'
              ''
              '                          ,P2SALIQIRRF=:NEW.P2T_IRRF_ALIQ'
              ''
              '                          ,P2SDESC_CAB=:NEW.P2T_DESC_CAB'
              ''
              '                          ,P2SESTNOR=:NEW.P2T_ESTNOR'
              ''
              '                          ,P2SESTCONS=:NEW.P2T_ESTCONS'
              ''
              '                          ,P2SESTTERC=:NEW.P2T_ESTTERC'
              ''
              '                          ,P2SESTREV=:NEW.P2T_ESTREV'
              ''
              '                          ,P2SPROMOCAO=:NEW.P2T_PROMOCAO'
              ''
              '                          ,P2SDESC_COMP=:NEW.P2T_DESCCOMPL'
              ''
              '                          ,P2SSITUACAO=:NEW.P2T_SITUACAO'
              ''
              '                          ,P2SPCOMIS=  :NEW.P2T_COMISV01_PERC'
              '                          ,P2SCBS_CST = :NEW.P2T_CBS_CST'
              
                '                          ,P2SCODCLASSTRIB = :NEW.P2T_CODCLASSTR' +
                'IB'
              '                          ,P2SCBS_ALIQ = :NEW.P2T_CBS_ALIQ'
              '                          ,P2SIBS_UF_ALIQ = :NEW.P2T_IBS_UF_ALIQ'
              
                '                          ,P2SIBS_MUN_ALIQ = :NEW.P2T_IBS_MUN_AL' +
                'IQ'
              
                '                          ,P2SINDOP_IBSCBS = :NEW.P2T_INDOP_IBSC' +
                'BS'
              '                          ,P2SCST_PIS      = :NEW.P2T_PIS_CST'
              ''
              '                          ,P2SCODTRIB_MUN = :NEW.P2T_CODTRIB_MUN'
              '                          ,P2SCODTRIB_NAC = :NEW.P2T_CODTRIB_NAC'
              '                          ,P2SCODNBS = :NEW.P2T_CODNBS'
              '                          ,P2SPCSLL = :NEW.P2T_PCSLL'
              '                          ,P2SPISSQN = :NEW.P2T_PISSQN'
              '                          ,P2SPIR = :NEW.P2T_PIR'
              '                          ,P2SPCOFINS = :NEW.P2T_PCOFINS'
              ''
              ''
              ''
              ''
              '                          WHERE'
              ''
              '                           P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                           and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '                           and P2SORDEM=01'
              ''
              '                           and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '                           and P2SITEM=:NEW.P2T_ITEM'
              ''
              '                           and P2SCODPRO=:NEW.P2T_CODPRO_ANT;'
              ''
              ''
              ''
              '   end if;'
              ''
              '   if (:NEW.P2T_TIPOPROD<>3) AND'
              ''
              '       ('
              ''
              '      (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39')) or'
              ''
              
                '      (:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:NEW.P2T_EST_RESERVADO='#39'E' +
                #39')   then'
              ''
              '      if :NEW.P2T_CODPRO<>:NEW.P2T_CODPRO_ANT then'
              ''
              '         insert into CADMOV_PROD ('
              ''
              '          CMP_CODEMP'
              ''
              '         ,CMP_FILIAL'
              ''
              '      ,CMP_ID_NEW'
              ''
              '      ,CMP_ID_DOC_NEW'
              ''
              '         ,CMP_CHAVE'
              ''
              '         ,CMP_CHAVE_ANO'
              ''
              '         ,CMP_ITEM'
              ''
              '         ,CMP_DOCORI'
              ''
              '         ,CMP_CODPRO'
              ''
              '         ,CMP_DATHOR'
              ''
              '         ,CMP_QTD'
              ''
              '         ,CMP_ESTNOR'
              ''
              '         ,CMP_ESTRESERVADO'
              ''
              '         ,CMP_CODUSR'
              ''
              '         ,CMP_CONTESP'
              ''
              '         ,CMP_TIPOPROD'
              ''
              '         ) values ('
              ''
              '          :NEW.P2T_CODEMP'
              ''
              '         ,:NEW.P2T_FILIAL'
              ''
              '         ,CADMOV_PROD_SEQ.NEXTVAL'
              ''
              '         ,:NEW.P2T_ID_PED01_NEW'
              ''
              ''
              '         ,:NEW.P2T_CHAVE'
              ''
              ''
              '         ,:NEW.P2T_CHAVE_ANO'
              ''
              '         ,:NEW.P2T_ITEM'
              ''
              '         ,00 -- pedido de vendas'
              ''
              '         ,:NEW.P2T_CODPRO'
              ''
              '         ,sysdate'
              ''
              '         ,:NEW.P2T_QTD'
              ''
              '         ,:NEW.P2T_ESTNOR'
              ''
              '         ,:NEW.P2T_EST_RESERVADO'
              ''
              '         ,:NEW.P2T_CODUSR'
              ''
              '         ,:NEW.P2T_CONTESP'
              ''
              '         ,:NEW.P2T_TIPOPROD'
              ''
              '         );'
              ''
              '         mOper_estnor:='#39'N'#39';'
              ''
              '         mOper_estreservado:='#39'N'#39';'
              ''
              '         if :NEW.P2T_ESTNOR='#39'E'#39' then'
              ''
              '            mOper_estnor:='#39'S'#39';'
              ''
              '         elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              ''
              '            mOper_estnor:='#39'E'#39';'
              ''
              '         end if;'
              ''
              '         if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              ''
              '            mOper_estreservado:='#39'S'#39';'
              ''
              '         elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              ''
              '            mOper_estreservado:='#39'E'#39';'
              ''
              '         end if;'
              ''
              '         insert into CADMOV_PROD ('
              ''
              '          CMP_CODEMP'
              ''
              '         ,CMP_FILIAL'
              ''
              '      ,CMP_ID_NEW'
              ''
              '      ,CMP_ID_DOC_NEW'
              ''
              '         ,CMP_CHAVE'
              ''
              '         ,CMP_CHAVE_ANO'
              ''
              '         ,CMP_ITEM'
              ''
              '         ,CMP_DOCORI'
              ''
              '         ,CMP_CODPRO'
              ''
              '         ,CMP_DATHOR'
              ''
              '         ,CMP_QTD'
              ''
              '         ,CMP_ESTNOR'
              ''
              '         ,CMP_ESTRESERVADO'
              ''
              '         ,CMP_CODUSR'
              ''
              '         ,CMP_CONTESP'
              ''
              '         ,CMP_TIPOPROD'
              ''
              '         ) values ('
              ''
              '          :NEW.P2T_CODEMP'
              ''
              '         ,:NEW.P2T_FILIAL'
              ''
              '      ,CADMOV_PROD_SEQ.NEXTVAL'
              ''
              '      ,:NEW.P2T_ID_PED01_NEW'
              ''
              '         ,:NEW.P2T_CHAVE'
              ''
              '         ,:NEW.P2T_CHAVE_ANO'
              ''
              '         ,:NEW.P2T_ITEM'
              ''
              '         ,00 -- pedido de vendas'
              ''
              '         ,:NEW.P2T_CODPRO_ANT'
              ''
              '         ,sysdate'
              ''
              '         ,:NEW.P2T_QTD_ANT'
              ''
              '         ,mOper_estnor'
              ''
              '         ,mOper_estreservado'
              ''
              '         ,:NEW.P2T_CODUSR'
              ''
              '         ,:NEW.P2T_CONTESP'
              ''
              '         ,:NEW.P2T_TIPOPROD'
              ''
              '         );'
              ''
              '      else'
              ''
              '         mQtdProc:=:NEW.P2T_QTD-:NEW.P2T_QTD_ANT;'
              ''
              '         mOper_estnor:=:NEW.P2T_ESTNOR;'
              ''
              '         mOper_estreservado:=:NEW.P2T_EST_RESERVADO;'
              ''
              '         if mqtdproc<0 then'
              ''
              '            if :NEW.P2T_ESTNOR='#39'E'#39' then'
              ''
              '               mOper_estnor:='#39'S'#39';'
              ''
              '            elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              ''
              '               mOper_estnor:='#39'E'#39';'
              ''
              '            end if;'
              ''
              '            if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              ''
              '               mOper_estreservado:='#39'S'#39';'
              ''
              '            elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              ''
              '               mOper_estreservado:='#39'E'#39';'
              ''
              '            end if;'
              ''
              '            mQtdProc:=mQtdProc*-1;'
              ''
              '         end if;'
              ''
              '         insert into CADMOV_PROD ('
              ''
              '          CMP_CODEMP'
              ''
              '         ,CMP_FILIAL'
              ''
              '      ,CMP_ID_NEW'
              ''
              '      ,CMP_ID_DOC_NEW'
              ''
              '         ,CMP_CHAVE'
              ''
              '         ,CMP_CHAVE_ANO'
              ''
              '         ,CMP_ITEM'
              ''
              '         ,CMP_DOCORI'
              ''
              '         ,CMP_CODPRO'
              ''
              '         ,CMP_DATHOR'
              ''
              '         ,CMP_QTD'
              ''
              '         ,CMP_ESTNOR'
              ''
              '         ,CMP_ESTRESERVADO'
              ''
              '         ,CMP_CODUSR'
              ''
              '         ,CMP_CONTESP'
              ''
              '         ,CMP_TIPOPROD'
              ''
              '         ) values ('
              ''
              '          :NEW.P2T_CODEMP'
              ''
              '         ,:NEW.P2T_FILIAL'
              ''
              '      ,CADMOV_PROD_SEQ.NEXTVAL'
              ''
              '      ,:NEW.P2T_ID_PED01_NEW'
              ''
              '         ,:NEW.P2T_CHAVE'
              ''
              '         ,:NEW.P2T_CHAVE_ANO'
              ''
              '         ,:NEW.P2T_ITEM'
              ''
              '         ,00 -- pedido de vendas'
              ''
              '         ,:NEW.P2T_CODPRO_ANT'
              ''
              '         ,sysdate'
              ''
              '         ,mQtdProc'
              ''
              '         ,mOper_estnor'
              ''
              '         ,mOper_estreservado'
              ''
              '         ,:NEW.P2T_CODUSR'
              ''
              '         ,:NEW.P2T_CONTESP'
              ''
              '         ,:NEW.P2T_TIPOPROD'
              ''
              '         );'
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO =2 then'
              ''
              '   if :NEW.P2T_PROD_SERV=0 then'
              ''
              '     delete from CADP02 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '                and P2ITEM=:NEW.P2T_ITEM'
              ''
              '                and P2CODPRO=:NEW.P2T_CODPRO;'
              ''
              '   ELSE'
              ''
              '      delete from CADP02S where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '                and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '                and P2SITEM=:NEW.P2T_ITEM'
              ''
              '                and P2SCODPRO=:NEW.P2T_CODPRO;'
              ''
              '   end if;'
              ''
              ''
              ''
              '   if (:NEW.P2T_TIPOPROD<>3) AND'
              ''
              ''
              ''
              '      ((:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39')) or'
              ''
              
                '                ((:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:NEW.P2T_EST_R' +
                'ESERVADO='#39'E'#39')) then'
              ''
              ''
              ''
              '      if :NEW.P2T_ESTNOR='#39'E'#39' then'
              ''
              '         mOper_estnor:='#39'S'#39';'
              ''
              '      elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              ''
              '         mOper_estnor:='#39'E'#39';'
              ''
              '      end if;'
              ''
              '      if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              ''
              '         mOper_estreservado:='#39'S'#39';'
              ''
              '      elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              ''
              '         mOper_estreservado:='#39'E'#39';'
              ''
              '      end if;'
              ''
              '      insert into CADMOV_PROD ('
              ''
              '       CMP_CODEMP'
              ''
              '      ,CMP_FILIAL'
              '      ,CMP_ID_NEW'
              ''
              '      ,CMP_ID_DOC_NEW'
              ''
              ''
              '      ,CMP_CHAVE'
              ''
              '      ,CMP_CHAVE_ANO'
              ''
              '      ,CMP_ITEM'
              ''
              '      ,CMP_DOCORI'
              ''
              '      ,CMP_CODPRO'
              ''
              '      ,CMP_DATHOR'
              ''
              '      ,CMP_QTD'
              ''
              '      ,CMP_ESTNOR'
              ''
              '      ,CMP_ESTRESERVADO'
              ''
              '      ,CMP_CODUSR'
              ''
              '      ,CMP_CONTESP'
              ''
              '      ,CMP_TIPOPROD'
              ''
              '      ) values ('
              ''
              '       :NEW.P2T_CODEMP'
              ''
              '      ,:NEW.P2T_FILIAL'
              ''
              '      ,CADMOV_PROD_SEQ.NEXTVAL'
              '      ,:NEW.P2T_ID_PED01_NEW'
              ''
              ''
              '      ,:NEW.P2T_CHAVE'
              ''
              '      ,:NEW.P2T_CHAVE_ANO'
              ''
              '      ,:NEW.P2T_ITEM'
              ''
              '      ,00 -- pedido de vendas'
              ''
              '      ,:NEW.P2T_CODPRO'
              ''
              '      ,sysdate'
              ''
              '      ,:NEW.P2T_QTD'
              ''
              '      ,mOper_estnor'
              ''
              '      ,mOper_estreservado'
              ''
              '      ,:NEW.P2T_CODUSR'
              ''
              '      ,:NEW.P2T_CONTESP'
              ''
              '      ,:NEW.P2T_TIPOPROD'
              ''
              '      );'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                '-- if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              ''
              
                '--   :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT O' +
                'R'
              ''
              
                '--   :NEW.P2T_PED1_DESC_PERC03!= :NEW.P2T_PED1_DESC_PERC03_ANT T' +
                'HEN'
              ''
              '   Update CADP02 set P2DESC_CAB='
              ''
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              '   TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                   +TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              ''
              
                '                     -((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              '   else -- ira arredondar'
              ''
              '   ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                   +ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              ''
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              ''
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              '                     ,P2TOTLIQ='
              ''
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              
                '                     NVL( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES' +
                ',0))-(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0)) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              ''
              
                '                     +TRUNC((((((TRUNC(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              ''
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)+T' +
                'RUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              ''
              
                '                     -((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              ''
              
                '                     +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              ''
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2)'
              ''
              '                     ,TRUNC(P2QTD*P2PRECO,2))'
              ''
              '   else -- ira arredondar'
              ''
              
                '                     NVL( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES' +
                ',0))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0)) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              ''
              
                '                     +ROUND((((((round(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              ''
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)+R' +
                'OUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              ''
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              ''
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              ''
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              ''
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2)'
              ''
              '                     ,round(P2QTD*P2PRECO,2))'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                '                     where P2CODEMP=:NEW.P2T_CODEMP and P2CHAVE=' +
                ':NEW.P2T_CHAVE  and'
              ''
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              
                '   UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) whe' +
                're P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              ''
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              '   Update CADP02S set P2SDESC_CAB='
              ''
              ''
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              '   TRUNC(  ((( (P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                   +TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '(((P2SQTD*P2SPRECO))'
              ''
              
                '                     -((TRUNC(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              '   else -- ira arredondar'
              ''
              '   ROUND(  ((( (P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                   +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              ''
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              ''
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              '                     ,P2STOTLIQ='
              ''
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              
                '                     (P2SQTD*P2SPRECO)-(TRUNC(  ((( (P2SQTD*P2SP' +
                'RECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                     +TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '(((P2SQTD*P2SPRECO))'
              ''
              
                '                     -((TRUNC(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2))'
              ''
              '   else -- ira arredondar'
              ''
              
                '                     (P2SQTD*P2SPRECO)-(ROUND(  ((( (P2SQTD*P2SP' +
                'RECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                     +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              ''
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              ''
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              ''
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2))'
              ''
              ''
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              
                '                     where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHA' +
                'VE=:NEW.P2T_CHAVE  and'
              ''
              '   P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              '-- end if;'
              ''
              ''
              ''
              
                '   update cadp02 set P2CSLL_VALOR = ROUND( (CASE WHEN  P2CSLL_PE' +
                'RC=0 THEN 0 ELSE P2TOTLIQ*P2CSLL_PERC/100 END),2) where'
              
                '       P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and' +
                '  P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              
                '   update cadp02 set P2IRRF_VALOR = ROUND( (CASE WHEN  P2IRRF_PE' +
                'RC=0 THEN 0 ELSE P2TOTLIQ*P2IRRF_PERC/100 END),2) where'
              
                '   P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and  P2' +
                'LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES='
              ''
              ''
              ''
              'case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              'CASE WHEN'
              ''
              'P2SDESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END +  TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              ''
              'THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +TRUNC(((((P2SQT' +
                'D*P2SPRECO))-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END  )'
              ''
              ''
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +TRUNC( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              ''
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((TRUNC(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              ''
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              ''
              
                ' +(TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                ' (TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              ''
              '   else -- ira arredondar'
              ''
              'CASE WHEN'
              ''
              'P2SDESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              ''
              'THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END  )'
              ''
              ''
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              ''
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              ''
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              ''
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ',P2STOTLIQ='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              ''
              'END)-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                ' * P2SDESC1) / 100) , 2)+TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END)-(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              ''
              'NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              ''
              
                '+TRUNC( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                '((TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END ) * P2SDESC1) / 100) , 2))+(TRUNC(((((P2SQTD*P2SPRECO)-CASE'
              ''
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              ''
              '   else -- ira arredondar'
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              ''
              'END)-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              ''
              'NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              ''
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              ''
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              ''
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              
                '   UPDATE CADP02S SET P2SVCOMIS=round(P2STOTLIQ*P2SPCOMIS/100,2)' +
                ' where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  a' +
                'nd'
              ''
              '   P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              
                'Update CADP02 set P2DESCRAT=0,P2ACRERAT=0,P2VDESPACESRAT=0,P2VFR' +
                'ERAT=0 ,P2VSEGRAT=0'
              ''
              ',P2VDESPACESRAT_BCICMS=0,P2VFRERAT_BCICMS=0 ,P2VSEGRAT_BCICMS=0'
              ''
              ',P2TOTDES='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              'NVL(P2VALDES,0)+ CASE WHEN'
              ''
              'P2DESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2DESC_CAB END +  TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2DESC_CAB END )  * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 E' +
                'LSE P2DESC1 END) / 100) , 2) +TRUNC((((((P2QTD*P2PRECO)-NVL(P2VA' +
                'LDES,0)))-'
              ''
              
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END  )'
              ''
              ''
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2) +TRUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE'
              ''
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((TRUNC(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              ''
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100) , 2)' +
                ')'
              ''
              
                ' +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                ' (TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              ''
              '   else -- ira arredondar'
              ''
              'NVL(P2VALDES,0)+ CASE WHEN'
              ''
              'P2DESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2DESC_CAB END +  ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2DESC_CAB END )  * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 E' +
                'LSE P2DESC1 END) / 100) , 2) +ROUND((((((P2QTD*P2PRECO)-NVL(P2VA' +
                'LDES,0)))-'
              ''
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END  )'
              ''
              ''
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2) +ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE'
              ''
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((ROUND(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              ''
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100) , 2)' +
                ')'
              ''
              
                ' +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                ' (ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ',P2TOTLIQ='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              'NVL('
              ''
              
                '(((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB' +
                ' IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                ' * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100' +
                ') , 2)+TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DE' +
                'SC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2DESC_CAB END)-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2' +
                'VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2DESC_CAB END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 TH' +
                'EN 0 ELSE P2DESC1 END) / 100) , 2)))*P2DESC2/100),2)'
              ''
              
                '+TRUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB'
              ''
              
                'END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) ' +
                '/ 100) , 2))+(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE'
              ''
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2))'
              ''
              ',TRUNC(P2QTD*P2PRECO,2))'
              ''
              '   else -- ira arredondar'
              ''
              'NVL('
              ''
              
                '(((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB' +
                ' IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                ' * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100' +
                ') , 2)+ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DE' +
                'SC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2DESC_CAB END)-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2' +
                'VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2DESC_CAB END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 TH' +
                'EN 0 ELSE P2DESC1 END) / 100) , 2)))*P2DESC2/100),2)'
              ''
              
                '+ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB'
              ''
              
                'END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) ' +
                '/ 100) , 2))+(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE'
              ''
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              ''
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2))'
              ''
              ',round(P2QTD*P2PRECO,2))'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ',P2VFCPUDEST = ROUND( (P2TOTLIQ *  P2CPUFDEST / 100) ,2)'
              ''
              ',P2VBCUFDEST = P2TOTLIQ'
              ''
              ''
              ''
              
                ',P2VICMSUFREMET  = (((P2ICMSUFDEST - P2ICMSINTER) * P2TOTLIQ)/10' +
                '0) * (100 - P2ICMSINTERPART) /100'
              ''
              
                ',P2VICMSUFDEST =  (((P2ICMSUFDEST - P2ICMSINTER) * P2TOTLIQ)/100' +
                ') -'
              ''
              
                '                   (((P2ICMSUFDEST - P2ICMSINTER) * P2TOTLIQ)/10' +
                '0) * (100 - P2ICMSINTERPART) /100'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              ''
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2),'
              ''
              
                '        P2VALAPROXTRIB = round(CASE NVL(P2ALIQAPROXTRIB,0) WHEN ' +
                '0 THEN 0'
              ''
              
                '                        ELSE P2TOTLIQ * NVL(P2ALIQAPROXTRIB,0)/1' +
                '00 END,2)'
              ''
              ''
              ''
              ' where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              ''
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              ''
              ''
              'CASE WHEN'
              ''
              'P2SDESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END +  TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              ''
              'THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +TRUNC(((((P2SQT' +
                'D*P2SPRECO))-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +TRUNC( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              ''
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((TRUNC(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              ''
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              ''
              
                ' +(TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                ' (TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              ''
              '   else -- ira arredondar'
              ''
              'CASE WHEN'
              ''
              'P2SDESC_CAB IS NULL THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              ''
              'THEN 0'
              ''
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              ''
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              ''
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              ''
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              ''
              ''
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              ',P2STOTLIQ='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              ''
              'END)-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                ' * P2SDESC1) / 100) , 2)+TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END)-(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              ''
              'NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              ''
              
                '+TRUNC( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                '((TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END ) * P2SDESC1) / 100) , 2))+(TRUNC(((((P2SQTD*P2SPRECO)-CASE'
              ''
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              ''
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              ''
              '   else -- ira arredondar'
              ''
              ''
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              ''
              'END)-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              ''
              'NULL'
              ''
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              ''
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              ''
              'END)-'
              ''
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              ''
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              ''
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              ''
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              ''
              'END )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              ''
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ''
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              ''
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                'Select sum(NVL(P2TOTLIQ,round(P2QTD*P2PRECO,2))) into  mTotMer f' +
                'rom CADP02 WHERE'
              ''
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'mTotalPed :=0;'
              ''
              'Select sum(P2STOTLIQ) into mTotSer from CADP02S WHERE'
              ''
              '                                  P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              ''
              ''
              ''
              'if mTotMer is null then'
              ''
              '   mTotMer:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'if mTotSer is null then'
              ''
              '   mTotSer:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              'if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              ''
              '   if mTotMer>0 then'
              ''
              '      mTotalPed := mtotalPed + mTotMer;'
              ''
              '   end if;'
              ''
              '   if mTotSer>0 then'
              ''
              '      mTotalPed := mtotalPed + mTotSer;'
              ''
              '   end if;'
              ''
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'TOTALPED '#39' || mtotal' +
                'ped || '#39' totmer '#39' || mtotmer || '#39' totser '#39' || mtotser || '#39' tipo ' +
                #39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz)' +
                ';'
              ''
              ''
              ''
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 THEN'
              ''
              
                '      mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/(case when nvl(mTota' +
                'lPed,0)=0 then 1 else mTotalPed end );'
              ''
              ''
              ''
              '      if mTotMer>0 then'
              ''
              '         Update CADP02 set P2DESCRAT='
              ''
              
                '                                 TRUNC(((P2TOTLIQ*mPercRat)/100)' +
                ',2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      end if;'
              ''
              '      if mTotSer>0 then'
              ''
              '         Update CADP02S set P2SDESCRAT='
              ''
              
                '                                 TRUNC(((P2STOTLIQ*mPercRat)/100' +
                '),2)'
              ''
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              ''
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              ''
              '      end if;'
              ''
              '      mQtdxPreco := 0;'
              ''
              '      mDifDup := 0;'
              ''
              ''
              ''
              '      if mTotMer>0 then'
              ''
              '         Select sum(P2DESCRAT) into mQtdxPreco from CADP02'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              ''
              '      end if;'
              ''
              '      if mQtdxPreco>0 then'
              ''
              '         mdifdup:=mdifdup+mQtdxPreco;'
              ''
              '      end if;'
              ''
              '      mQtdxPreco := 0;'
              ''
              '      if mTotSer>0 then'
              ''
              '         Select sum(P2SDESCRAT) into mQtdxPreco from CADP02S'
              ''
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              ''
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              ''
              '      end if;'
              ''
              '      if mQtdxPreco>0 then'
              ''
              '         mdifdup:=mdifdup+mQtdxPreco;'
              ''
              '      end if;'
              ''
              '      mDifDup:=:NEW.P2T_PED1_DESCRAT-mDifDup;'
              ''
              '      if mDifDup!=0 then'
              ''
              '         if mTotMer>0 then'
              ''
              
                '            SELECT P2ITEM into mItemPed FROM (select p2item from' +
                ' CADP02'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              ''
              '            order by P2TOTLIQ DESC'
              ''
              '            ) WHERE ROWNUM <2;'
              ''
              '            Update CADP02 set P2DESCRAT=P2DESCRAT+mDifDup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '            mDifDup:=0;'
              ''
              '         elsif mtotSer>0 then'
              ''
              
                '            select P2SITEM into mItemPed FROM (select p2sitem fr' +
                'om CADP02S'
              ''
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null)'
              ''
              '            order by P2STOTLIQ DESC'
              ''
              '            ) where ROWNUM<2 ;'
              ''
              '            Update CADP02S set P2SDESCRAT=P2SDESCRAT+mDifDup'
              ''
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2SITEM=mItemPed'
              ''
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              ''
              '            mDifDup:=0;'
              ''
              '         end if;'
              ''
              '      end if;'
              ''
              '      Update CADP02 set  P2TOTDES=P2TOTDES+P2DESCRAT'
              ''
              
                '                                    ,P2TOTLIQ=P2TOTLIQ-nvl(P2DES' +
                'CRAT,0)'
              ''
              
                '                                    ,P2VCOMIS=ROUND(P2TOTLIQ*P2P' +
                'COMIS/100,2)'
              ''
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '      and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '      and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '      and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '      Update CADP02S set P2STOTDES=P2STOTDES+P2SDESCRAT'
              ''
              
                '                                    , P2STOTLIQ=P2STOTLIQ-P2SDES' +
                'CRAT'
              ''
              '      where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '      and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '      and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '      and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              ''
              '   ELSE'
              ''
              '      if :NEW.P2T_PED1_ACRERAT>0 THEN'
              ''
              
                '         mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/(case when nvl(mT' +
                'otalPed,0)=0 then 1 else mTotalPed end );'
              ''
              '         Update CADP02 set P2ACRERAT='
              ''
              
                '                                TRUNC(((P2TOTLIQ*mPercRat)/100),' +
                '2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              ''
              ''
              '         Select sum(P2ACRERAT) into mDifDup from CADP02'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '         mDifDup:=:NEW.P2T_PED1_ACRERAT-mDifDup;'
              ''
              '         if mDifDup!=0 THEN'
              ''
              
                '            Select P2ITEM into mItemPed FROM ( select p2item fro' +
                'm CADP02'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              ''
              '            order by P2TOTLIQ DESC'
              ''
              '            ) where ROWNUM<2;'
              ''
              '            Update CADP02 set P2ACRERAT=P2ACRERAT+mDifDup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '            mDifDup:=0;'
              ''
              '         end if;'
              ''
              '         Update CADP02 set P2TOTLIQ=P2TOTLIQ+nvl(P2ACRERAT,0)'
              ''
              
                '                                  ,P2VCOMIS=ROUND(P2TOTLIQ*P2PCO' +
                'MIS/100,2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      END IF;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'if :NEW.P2T_PED1_VALSEG>0 then'
              ''
              '   if mTotMer>0 then'
              ''
              '      mPercRat:=(:NEW.P2T_PED1_VALSEG*100)/mTotMer;'
              ''
              '      if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              ''
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              ''
              
                '                          ,P2VSEGRAT_BCICMS=  TRUNC(((P2TOTLIQ*m' +
                'PercRat)/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      else'
              ''
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      end if;'
              ''
              '      mQtdxPreco := 0;'
              ''
              '      mDifDup := 0;'
              ''
              ''
              ''
              '      Select sum(nvl(P2VSEGRAT,0)) into mQtdxPreco from CADP02'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              ''
              '      if mQtdxPreco>0 then'
              ''
              '         mdifdup:=mdifdup+mQtdxPreco;'
              ''
              '      end if;'
              ''
              '      mDifDup:=:NEW.P2T_PED1_VALSEG-mDifDup;'
              ''
              '      if mDifDup!=0 then'
              ''
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              ''
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              ''
              '         order by P2TOTLIQ DESC'
              ''
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              ''
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              ''
              '            ,P2VSEGRAT_BCICMS=P2VSEGRAT_BCICMS+mDifDup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '         else'
              ''
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '         end if;'
              ''
              '         mDifDup:=0;'
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              'if :NEW.P2T_PED1_VALFRE>0 then'
              ''
              '   if mTotMer>0 then'
              ''
              '      mPercRat:=(:NEW.P2T_PED1_VALFRE*100)/mTotMer;'
              ''
              '      if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              ''
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              ''
              
                '                             ,P2VFRERAT_BCICMS=  TRUNC(((P2TOTLI' +
                'Q*mPercRat)/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      else'
              ''
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      end if;'
              ''
              '      mQtdxPreco := 0;'
              ''
              '      mDifDup := 0;'
              ''
              ''
              ''
              '      Select sum(nvl(P2VFRERAT,0)) into mQtdxPreco from CADP02'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              ''
              '      if mQtdxPreco>0 then'
              ''
              '         mdifdup:=mdifdup+mQtdxPreco;'
              ''
              '      end if;'
              ''
              '      mDifDup:=:NEW.P2T_PED1_VALFRE-mDifDup;'
              ''
              '      if mDifDup!=0 then'
              ''
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              ''
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              ''
              '         order by P2TOTLIQ DESC'
              ''
              '         ) WHERE ROWNUM <2;'
              ''
              ''
              ''
              '         if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              ''
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              ''
              '               ,P2VFRERAT_BCICMS=P2VFRERAT_BCICMS+mDifDup'
              ''
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '               and P2ITEM=mItemPed'
              ''
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '         else'
              ''
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              ''
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '               and P2ITEM=mItemPed'
              ''
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '         end if;'
              ''
              ''
              ''
              '        mDifDup:=0;'
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ' mTotalout:=:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN;'
              ''
              '-- mTotalout:=:NEW.P2T_PED1_DESPACES;'
              ''
              ''
              ''
              'if :NEW.P2T_NF_IMP='#39'S'#39' then'
              ''
              
                '   mTotalout:=:NEW.P2T_RECDA+:NEW.P2T_RECHONORARIOS+:NEW.P2T_REC' +
                'ARMAZENAGEM;'
              ''
              '   end if;'
              ''
              ''
              ''
              'if mtotalout>0 then'
              ''
              '   if mTotMer>0 then'
              ''
              '      mPercRat:=(mtotalout*100)/mTotMer;'
              ''
              '      if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              ''
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              ''
              
                '                          ,P2VDESPACESRAT_BCICMS=  TRUNC(((P2TOT' +
                'LIQ*mPercRat)/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      else'
              ''
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '      end if;'
              ''
              '      mQtdxPreco := 0;'
              ''
              '      mDifDup := 0;'
              ''
              ''
              ''
              
                '      Select sum(nvl(P2VDESPACESRAT,0)) into mQtdxPreco from CAD' +
                'P02'
              ''
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              ''
              '      if mQtdxPreco>0 then'
              ''
              '         mdifdup:=mdifdup+mQtdxPreco;'
              ''
              '      end if;'
              ''
              '      mDifDup:=(mtotalout)-mDifDup;'
              ''
              '      if mDifDup!=0 then'
              ''
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              ''
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              ''
              '         order by P2TOTLIQ DESC'
              ''
              '         ) WHERE ROWNUM <2;'
              ''
              ''
              ''
              '         if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              ''
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              ''
              '            ,P2VDESPACESRAT_BCICMS=P2VDESPACESRAT_BCICMS+mDifDup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '         else'
              ''
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              ''
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2ITEM=mItemPed'
              ''
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              ''
              '          end if;'
              ''
              '          mDifDup:=0;'
              ''
              ''
              ''
              ''
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02S SET'
              ''
              'P2SBCISSQN=P2STOTLIQ,'
              ''
              'P2SVISSQN=round( ((P2STOTLIQ*P2SALIQ)/100),2) ,'
              ''
              'P2SVCOMIS=round( ((P2STOTLIQ*P2SPCOMIS)/100),2) ,'
              ''
              'P2SVDESCF=round( ((P2STOTLIQ*P2SPDESCF)/100),2) ,'
              ''
              'P2SBCINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              ''
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100),2) END ,'
              ''
              'P2SVINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100) *P2SALIQINS' +
                'S/100),2) END,'
              ''
              ''
              ''
              'P2SBCIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              ''
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100),2) END ,'
              ''
              'P2SVIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100) *P2SALIQIRR' +
                'F/100),2) END'
              ''
              'where P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              'and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              'and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              ''
              ''
              ''
              'P2VICMSDES = CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              ''
              'P2TOTDES = P2TOTDES + CASE nvl(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              ''
              'P2TOTLIQ = P2TOTLIQ - CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END'
              ''
              ''
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              ''
              
                'P2IMP_IMP_VII=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISC' +
                'OFINS_VBC_IMP * P2IMP_IMP_ALIQ / 100) ,2) else P2IMP_IMP_VII end'
              ''
              
                ',P2VALPIS=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISCOFIN' +
                'S_VBC_IMP * P2ALPIS / 100) ,2) else'
              'round( (('
              
                ' (P2TOTLIQ - CASE WHEN :NEW.P2T_DEDUZIR_ICMS_BC_PIS_COFINS = 0 T' +
                'HEN 0 ELSE P2ICMSN END)'
              ' *P2ALPIS)/100),2) end'
              ''
              
                ',P2COFINS=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISCOFIN' +
                'S_VBC_IMP * P2ALCOFINS / 100) ,2) else round( (('
              
                '(P2TOTLIQ - CASE WHEN :NEW.P2T_DEDUZIR_ICMS_BC_PIS_COFINS = 0 TH' +
                'EN 0 ELSE P2ICMSN END)'
              '*P2ALCOFINS)/100),2) end'
              ''
              
                ',P2PIS_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then P2PISCOFINS_VBC_IM' +
                'P  else'
              
                '( P2TOTLIQ - CASE WHEN :NEW.P2T_DEDUZIR_ICMS_BC_PIS_COFINS = 0 T' +
                'HEN 0 ELSE P2ICMSN END)'
              ' END'
              ''
              
                ',P2COFINS_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then P2PISCOFINS_VBC' +
                '_IMP  else'
              
                ' (P2TOTLIQ - CASE WHEN :NEW.P2T_DEDUZIR_ICMS_BC_PIS_COFINS = 0 T' +
                'HEN 0 ELSE P2ICMSN END)'
              ' END'
              ',P2IPI_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then'
              ''
              
                '          P2PISCOFINS_VBC_IMP +round( (P2PISCOFINS_VBC_IMP * P2I' +
                'MP_IMP_ALIQ / 100) ,2)'
              ''
              '           else ROUND((P2PRECO*P2QTD),2) end'
              ''
              ''
              ''
              ',P2VALIPI=round( (case when :NEW.P2T_NF_IMP='#39'S'#39' then'
              ''
              
                '          (P2PISCOFINS_VBC_IMP +round( (P2PISCOFINS_VBC_IMP * P2' +
                'IMP_IMP_ALIQ / 100) ,2))*P2ALIPI/100'
              ''
              '           else ROUND((P2PRECO*P2QTD),2)*P2ALIPI/100 end),2)'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ',P2VDESCF=round( ((P2TOTLIQ*P2PDESCF)/100),2) ,'
              ''
              'P2TOTOUT=CASE P2ALIQ WHEN 0 THEN 0'
              ''
              'ELSE ROUND( ((P2TOTLIQ*P2REDUTICM)/100),2) END ,'
              ''
              'P2BASEN= CASE P2ALIQ WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+' +
                'P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)'
              
                '-( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFRERAT_BC' +
                'ICMS)  *P2REDUTICM)/100),2) END ,'
              ''
              ''
              ''
              ''
              ''
              'P2ICMSN=CASE P2ALIQ WHEN 0 THEN 0'
              ''
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)-('
              
                '(P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFRERAT_BCICM' +
                'S)  * P2REDUTICM)/100) *P2ALIQ/100),2) END,'
              ''
              ''
              ''
              'P2VLRICMS_SN=CASE P2PCRED_SN WHEN 0 THEN 0 ELSE'
              ''
              
                'ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFR' +
                'ERAT_BCICMS)  *P2PCRED_SN)/100),2) END ,'
              ''
              
                'P2BASER=  case when (p2st_icmcred+p2st_icmdeb) <=0 then 0 else C' +
                'ASE P2MODBCST WHEN  4 THEN'
              ''
              
                '   ROUND(  ((CASE WHEN :NEW.P2T_ICMSR_SOBLIQ='#39'S'#39' THEN P2TOTLIQ E' +
                'LSE P2TOTLIQ+P2TOTDES END)+((P2TOTLIQ*P2ALIPI)/100))'
              ''
              
                '    * ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_IVA)/1' +
                '00)'
              ''
              
                '  * ( (CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST_REDUT)/' +
                '100) , 2)  WHEN 0'
              ''
              '   THEN ROUND( (P2QTD*P2PCOMAX)'
              ''
              
                '   *((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST_REDUT)/1' +
                '00),2)'
              ''
              '   ELSE 0 END  end'
              ''
              '   , P2ICMSR= CASE WHEN (ROUND((P2ST_ICMDEB *(  (    ('
              
                '   (CASE WHEN :NEW.P2T_ICMSR_SOBLIQ='#39'S'#39' THEN P2TOTLIQ ELSE P2TOT' +
                'LIQ+P2TOTDES END)'
              '   '
              '   +((P2TOTLIQ*P2ALIPI)/100))'
              ''
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              ''
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              ''
              
                '         -ROUND( ((   (P2TOTLIQ -ROUND( (P2TOTLIQ*P2REDUTICM/100' +
                '),2)) * P2ST_ICMCRED) / 100) ,2)) <=0 THEN 0'
              ''
              '         ELSE'
              ''
              '         (ROUND((P2ST_ICMDEB *(  (    ('
              
                #9#9' (CASE WHEN :NEW.P2T_ICMSR_SOBLIQ='#39'S'#39' THEN P2TOTLIQ ELSE P2TOT' +
                'LIQ+P2TOTDES END)'
              #9#9' +((P2TOTLIQ*P2ALIPI)/100))'
              ''
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              ''
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              ''
              
                '         -ROUND( (((P2TOTLIQ -ROUND( (P2TOTLIQ*P2REDUTICM/100),2' +
                ')) * P2ST_ICMCRED) / 100) ,2)) END'
              ''
              ''
              ''
              
                '--  , P2TOTLIQ= P2TOTLIQ + CASE WHEN ROUND((((nvl(P2ST_ICMDEB,0)' +
                ' *((nvl(P2TOTLIQ,0)+nvl(P2TOTDES,0)+((nvl(P2TOTLIQ,0)*nvl(P2ALIP' +
                'I,0))/100))'
              ''
              
                '--         *  ((CASE nvl(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 EN' +
                'D + nvl(P2ST_IVA,0))/100)'
              ''
              
                '--         *   ((CASE nvl(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100' +
                ' END-nvl(P2ST_REDUT,0))/100) )) / 100 )) ,2)'
              ''
              
                '--         -ROUND( ((nvl(P2TOTLIQ,0) * nvl(P2ST_ICMCRED,0)) / 10' +
                '0) ,2) <= 0 THEN 0'
              ''
              
                '--         ELSE ROUND((((nvl(P2ST_ICMDEB,0) *((nvl(P2TOTLIQ,0)+n' +
                'vl(P2TOTDES,0)+((nvl(P2TOTLIQ,0)*nvl(P2ALIPI,0))/100))'
              ''
              
                '--         *  ((CASE nvl(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 EN' +
                'D + nvl(P2ST_IVA,0))/100)'
              ''
              
                '--         *   ((CASE nvl(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100' +
                ' END-nvl(P2ST_REDUT,0))/100) )) / 100 )) ,2)'
              ''
              
                '--         -ROUND( ((nvl(P2TOTLIQ,0) * nvl(P2ST_ICMCRED,0)) / 10' +
                '0) ,2) END'
              ''
              ''
              
                ',P2CBS_BC=CASE WHEN P2CBS_ALIQ>0 OR P2IBS_UF_ALIQ>0 OR P2IBS_MUN' +
                '_ALIQ>0  THEN '
              
                '         ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCI' +
                'CMS+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)),2)'
              '   ELSE 0 END'
              ''
              ',P2CBS_VALOR=CASE WHEN P2CBS_ALIQ>0   THEN '
              
                '         ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCI' +
                'CMS+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)*P2CBS_ALIQ/100),2)'
              'ELSE 0 END'
              ''
              ',P2IBS_MUN_VALOR=CASE WHEN P2IBS_MUN_ALIQ>0   THEN '
              
                '         ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCI' +
                'CMS+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)*P2IBS_MUN_ALIQ/100),2)'
              'ELSE 0 END'
              ''
              ',P2IBS_UF_VALOR=CASE WHEN P2IBS_UF_ALIQ>0   THEN'
              'CASE WHEN'
              
                '         ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCI' +
                'CMS+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)*P2IBS_UF_ALIQ/100),2) >0 THEN'
              
                '         ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCI' +
                'CMS+P2VFRERAT_BCICMS)'
              
                '+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((ROUND((P2PRECO*P2QTD),2)' +
                '*P2ALIPI)/100),2) ELSE 0 END)*P2IBS_UF_ALIQ/100),2)'
              'ELSE 0.01 END'
              ''
              ''
              'ELSE 0 END'
              ''
              ''
              ''
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              '-- lindomais'
              ''
              'if :NEW.P2T_NF_IMP='#39'S'#39' then'
              ''
              '   UPDATE CADP02 SET'
              ''
              ' --  P2VDESPACESRAT=P2VDESPACESRAT+'
              ''
              '--             P2IMP_IMP_VII'
              ''
              '--             +P2VALPIS'
              ''
              '--             +P2COFINS,'
              ''
              '         P2BASEN=ROUND( (P2PISCOFINS_VBC_IMP+'
              ''
              '                  P2VDESPACESRAT'
              ''
              '                  +P2IMP_IMP_VII'
              ''
              '                  +P2VALPIS'
              ''
              '                  +P2COFINS'
              ''
              '                 +P2VALIPI)/(1 -  (P2ALIQ/100)) ,2)'
              ''
              ''
              ''
              '         ,P2ICMSN=ROUND( ( ROUND( (P2PISCOFINS_VBC_IMP+'
              ''
              '                  (P2VDESPACESRAT)'
              ''
              '                  +P2IMP_IMP_VII'
              ''
              '                  +P2VALPIS'
              ''
              '                  +P2COFINS'
              ''
              
                '                 +P2VALIPI)/(1 -  (P2ALIQ/100)),2)*P2ALIQ/100) ,' +
                '2)'
              ''
              ''
              ''
              ''
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) where ' +
                'P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              ''
              '        P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              'if (:NEW.P2T_ST_ICMSDEB=0) THEN'
              ''
              '   UPDATE CADP02 SET P2BASER=0,P2ICMSR=0'
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '   and P2ITEM=:NEW.P2T_ITEM;'
              ''
              '   END IF;'
              ''
              ''
              ''
              ''
              ''
              'mTotalPed := 0;'
              ''
              'mTotalBCIcms:=0;'
              ''
              'mTotalBCST:=0;'
              ''
              'mTotalPIS:=0;'
              ''
              'mTotalCOFINS:=0;'
              ''
              'mTotalICMSR:=0;'
              ''
              'mTotalCOMIS:=0;'
              ''
              'mTotalIRRF :=0;'
              'mTotalCSLL :=0;'
              ''
              ''
              'mTotalIcms:=0;'
              ''
              'mTotalIcmsDes:=0;'
              ''
              'mTotalValAproxTrib:=0;'
              ''
              ''
              ''
              'mTotalDesc_Prod:=0;'
              ''
              'mTotalDesc_Serv:=0;'
              ''
              'mTotalDescRat_Prod:=0;'
              ''
              'mTotalDescRat_Serv:=0;'
              ''
              'mTotDescFin_prod:=0;'
              ''
              'mTotDescFin_serv:=0;'
              ''
              'mTotIPI:=0;'
              ''
              'Select'
              'nvl(sum(P2IRRF_VALOR),0), nvl(SUM(P2CSLL_valor),0),'
              ''
              ''
              ''
              
                'sum(P2VALPIS), sum(P2COFINS),  sum(NVL(P2TOTLIQ,round(P2QTD*P2PR' +
                'ECO,2))),sum(P2VCOMIS),sum(P2QTD*P2PRECO)'
              ''
              
                ',sum(P2VICMSDES),sum(P2VALAPROXTRIB),sum(P2BASEN),sum(P2BASER),s' +
                'um(P2ICMSR),sum(P2ICMSN),sum(P2TOTDES)'
              ''
              ',sum(P2VALIPI),sum(P2DESCRAT)'
              ''
              ',sum(NVL(P2VDESCF,0))'
              ''
              ',sum(NVL(P2IMP_IMP_VII,0))'
              ''
              ''
              ''
              ',sum(NVL(P2VALPIS,0))'
              ''
              ',sum(NVL(P2COFINS,0))'
              ''
              ',sum(NVL(P2VALIPI,0))'
              ''
              ',sum(NVL(P2ICMSN,0))'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ' into'
              ' mTotalIRRF,mTotalCSLL,'
              ''
              ''
              
                'mTotalPIS,mTotalCOFINS,mQtdxPreco,mTotalCOMIS,mTotMer,mTotalIcms' +
                'Des,mTotalValAproxTrib,mTotalBCIcms,mTotalBCST'
              ''
              
                ',mTotalICMSR,MtotalICMS,mTotalDesc_Prod,mTotIPI,mTotalDescRat_Pr' +
                'od'
              ''
              ',mTotDescFin_prod'
              ''
              ', mimp_VII'
              ''
              ', mimp_VPIS'
              ''
              ', mimp_VCOFINS'
              ''
              ', mimp_VIPI'
              ''
              ', mimp_VICMS'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ' from CADP02 WHERE'
              ''
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              ''
              ''
              'if mTotMer>0 then'
              ''
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              ''
              'end if;'
              ''
              ''
              ''
              'if NVL(:NEW.P2T_NF_IMP,'#39'N'#39')<>'#39'S'#39' then'
              ''
              '   mimp_VII:=0;'
              ''
              '   mimp_VPIS:=0;'
              ''
              '   mimp_VCOFINS:=0;'
              ''
              '   mimp_VIPI   :=0;'
              ''
              '   mimp_VICMS  :=0;'
              ''
              ''
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              'if mTotDescFin_prod is null then'
              ''
              '   mTotDescFin_prod:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              
                'Select sum(P2STOTLIQ),sum(P2SQTD*P2SPRECO),sum(P2STOTDES),sum(P2' +
                'SDESCRAT),sum(NVL(P2SVDESCF,0)) into'
              ''
              
                '  mQtdxPreco,mTotSer,mTotalDesc_Serv,mTotalDescRat_Serv,mTotDesc' +
                'Fin_serv'
              ''
              '      from CADP02S'
              ''
              '  WHERE P2SCODEMP=:NEW.P2T_CODEMP'
              ''
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              ''
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              ''
              'if mTotSer>0 then'
              ''
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              ''
              'end if;'
              ''
              ''
              ''
              '         if mvalordup is null then'
              ''
              '            mvalordup:=0;'
              ''
              '            end if;'
              ''
              ''
              ''
              'mTotDescFin_prod:=mTotDescFin_prod+NVL(mTotDescFin_serv,0);'
              ''
              ''
              ''
              'if mTotDescFin_prod is null then'
              ''
              '   mTotDescFin_prod:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'if MTOTSER is null then'
              ''
              '   MTOTSER:=0;'
              ''
              'end if;'
              ''
              'if MTOTMER is null then'
              ''
              '   MTOTMER:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'if mTotalDesc_Prod is null then'
              ''
              '   mTotalDesc_Prod:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'if mTotalDesc_Serv is null then'
              ''
              '   mTotalDesc_Serv:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              'if mTotalDescRat_Serv is null then'
              ''
              '   mTotalDescRat_Serv:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'if mTotalDescRat_Prod is null then'
              ''
              '   mTotalDescRat_Prod:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              '/* INICIO DO CONTROLE ESPECIAL */'
              ''
              ''
              ''
              'if :NEW.P2T_CONTESP=1 THEN'
              ''
              
                '   Select sum(P2VSEGRAT), sum(P2VDESPACESRAT),sum(P2DESC_CAB),su' +
                'm(P2DESCRAT),sum(P2DESCRAT) ,sum(P2TOTDES),sum(P2REPAS),sum'
              ''
              
                '(P2BASEN),sum(P2ICMSN),sum(P2BASER),sum(P2ICMSR),sum(P2VALIPI),s' +
                'um(P2VLRICMS_SN)'
              ''
              '  into'
              ''
              
                'mTot_ped02_ValSeg,mTot_ped02_DespAces,mTot_Ped02_DescCab,mTot_Pe' +
                'd02_TotDescRat,mTot_ped02_TotAcrecRat,mTot_Ped02_Totdes'
              ''
              ',mTot_Ped02_ValRepas,mTot_ped02_Basen,'
              ''
              
                '    mTot_Ped02_Icmsn,mTot_Ped02_Baser,mTot_Ped02_Icmsr,mTot_Ped0' +
                '2_ValIPI,mTot_Ped02_ICMS_SN from CADP02'
              ''
              '       where P2CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '          P2ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              ''
              ''
              
                '   update CADP02_CMET set P2CM_PITEM_DESC1=:NEW.P2T_DESC_PERC01,' +
                'P2CM_PITEM_DESC2=:NEW.P2T_DESC_PERC02'
              ''
              '                         ,P2CM_PITEM_DESC3=:NEW.P2T_DESC_PERC03'
              ''
              '                         ,P2CM_PITEM_PALIQ=:NEW.P2T_ICMS_PERC'
              ''
              '                         ,P2CM_PITEM_REDUTICM=:NEW.P2T_ICMS_PRED'
              ''
              '                         ,P2CM_PITEM_PREPAS=:NEW.P2T_ICMS_PRED'
              ''
              '                         ,P2CM_PITEM_PALIPI=:NEW.P2T_IPI_PERC'
              ''
              '                         ,P2CM_PITEM_PALPIS=:NEW.P2T_PIS_PERC'
              ''
              
                '                         ,P2CM_PITEM_PDESCF=:NEW.P2T_DESCFIN_PER' +
                'C'
              ''
              '                         ,P2CM_PITEM_ST_REDUT=:NEW.P2T_ST_PREDUT'
              ''
              
                '                         ,P2CM_PITEM_ST_ICMCRED=:NEW.P2T_ST_ICMS' +
                'CRED'
              ''
              
                '                         ,P2CM_PITEM_ST_ICMDEB=:NEW.P2T_ST_ICMSD' +
                'EB'
              ''
              '                         ,P2CM_PITEM_MODBCST=:NEW.P2T_MODBCST'
              ''
              '                         ,P2CM_PITEM_ST_IVA=:NEW.P2T_ST_IVA'
              ''
              
                '                         ,P2CM_PITEM_PCREDSN=:NEW.P2T_ICMSSN_PER' +
                'C'
              ''
              '                         ,P2CM_PITEM_CFOP=:NEW.P2T_CFOP'
              ''
              
                '                         ,P2CM_PITEM_CSOSN_ORI=:NEW.P2T_CSOSN_OR' +
                'I'
              ''
              '                         ,P2CM_PITEM_CSOSN=:NEW.P2T_CSOSN'
              ''
              '                         ,P2CM_PITEM_CST_ICMS=:NEW.P2T_CST'
              ''
              '                         ,P2CM_PITEM_CST_PIS=:NEW.P2T_PIS_CST'
              ''
              
                '                         ,P2CM_PITEM_CST_COFINS=:NEW.P2T_COFINS_' +
                'CST'
              ''
              
                '                         ,P2CM_PITEM_PALCOFINS=:NEW.P2T_COFINS_P' +
                'ERC'
              ''
              '                         ,P2CM_PITEM_CST_IPI=:NEW.P2T_IPI_CST'
              ''
              
                '                         ,P2CM_PITEM_PERCITEM=(P2CM_QTD_KG*100) ' +
                '/ case when :NEW.P2T_QTD =0 then 1 else :NEW.P2T_QTD end'
              ''
              
                '                         ,P2CM_PITEM_PCOMAX=:NEW.P2T_PRECO_MAXCO' +
                'NS'
              ''
              '                         ,P2CM_PITEM_TOTDES=0'
              ''
              '                         ,P2CM_PITEM_VALDES=0'
              ''
              '                         ,P2CM_PITEM_BASEN=0'
              ''
              '                         ,P2CM_PITEM_ICMSN=0'
              ''
              '                         ,P2CM_PITEM_VREPAS=0'
              ''
              '                         ,P2CM_PITEM_BASER=0'
              ''
              '                         ,P2CM_PITEM_ICMSR=0'
              ''
              '                         ,P2CM_PITEM_VALIPI=0'
              ''
              '                         ,P2CM_PITEM_VLRICMS_SN=0'
              ''
              ''
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              
                '   SELECT P2CM_CODIGO into mItemPed FROM (select P2CM_CODIGO fro' +
                'm CADP02_CMET'
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '   and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '   and P2CM_ITEM=:NEW.P2T_ITEM'
              ''
              '   order by (P2CM_QTD_KG*P2CM_PITEM_PRECO) DESC'
              ''
              '   ) WHERE ROWNUM <2;'
              ''
              ''
              ''
              '   if :NEW.P2T_DESC_VALOR<>0 then'
              ''
              
                '      update CADP02_CMET set P2CM_PITEM_VALDES=ROUND( (P2CM_PITE' +
                'M_PERCITEM*:NEW.P2T_DESC_VALOR/100) , 2)'
              ''
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              '      Select sum(P2CM_PITEM_VALDES) into  mValorTemp'
              ''
              '         from CADP02_CMET'
              ''
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      if mValorTemp<>:NEW.P2T_DESC_VALOR then'
              ''
              '         mDifTemp:=:NEW.P2T_DESC_VALOR-mValorTemp;'
              ''
              
                '         Update CADP02_CMET set P2CM_PITEM_VALDES=P2CM_PITEM_VAL' +
                'DES+mDifTemp'
              ''
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2CM_CODIGO=mItemPed'
              ''
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '         end if;'
              ''
              ''
              ''
              ''
              ''
              '      end if;'
              ''
              ''
              ''
              
                '   if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              ''
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT ' +
                'OR'
              ''
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC03_ANT ' +
                'THEN'
              ''
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=ROUND(  ((( ((P' +
                '2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                      +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-' +
                'NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              ''
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              ''
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              ''
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              ''
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              ''
              
                '                        *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2),'
              ''
              
                '                        P2CM_PITEM_TOTLIQ= ((P2CM_QTD_KG*P2CM_PI' +
                'TEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-(ROUND(  ((('
              ''
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              ''
              
                '                        +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO' +
                ')-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              ''
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              ''
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              ''
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              ''
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)) ) *'
              ''
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              ''
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2))'
              ''
              
                '                        where P2CM_CODEMP=:NEW.P2T_CODEMP  and P' +
                '2CM_CHAVE=:NEW.P2T_CHAVE  and'
              ''
              
                '      P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO AND P2CM_ITEM=:NEW.P2T_ITEM' +
                ';'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                '      Select sum(P2CM_PITEM_DESC_CAB) into mValorTemp from CADP0' +
                '2_CMET'
              ''
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      if mValorTemp<>mTot_Ped02_TotDescRat then'
              ''
              '         mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              ''
              
                '         Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_D' +
                'ESC_CAB+mDifTemp'
              ''
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '            and P2CM_CODIGO=mItemPed'
              ''
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '         end if;'
              ''
              '      end if;'
              ''
              ''
              ''
              
                '   Update CADP02_CMET set P2CM_PITEM_DESCRAT=0,P2CM_PITEM_ACRECR' +
                'AT=0 ,P2CM_PITEM_TOTDES=NVL(P2CM_PITEM_VALDES,0)+ CASE'
              ''
              'WHEN'
              ''
              '   P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              ''
              
                '   ELSE P2CM_PITEM_DESC_CAB END +  ROUND(  ((( ((P2CM_QTD_KG*P2C' +
                'M_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              ''
              'P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              ''
              
                '   ELSE P2CM_PITEM_DESC_CAB END )  * P2CM_PITEM_DESC1) / 100) , ' +
                '2) +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0)))-'
              ''
              
                '  (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END  )'
              ''
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2) +R' +
                'OUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0))-'
              ''
              'CASE'
              ''
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              ''
              '(P2CM_PITEM_VALDES,0))-'
              ''
              
                '    CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM' +
                '_DESC_CAB END ) * P2CM_PITEM_DESC1) / 100) , 2))'
              ''
              
                '    +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END)-'
              ''
              
                '    (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END )'
              ''
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2)'
              ''
              
                '   ,P2CM_PITEM_TOTLIQ=(((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_' +
                'PITEM_VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL'
              ''
              'THEN'
              ''
              '0 ELSE P2CM_PITEM_DESC_CAB END)-'
              ''
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END )'
              ''
              
                '    * P2CM_PITEM_DESC1) / 100) , 2)+ROUND((((((P2CM_QTD_KG*P2CM_' +
                'PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              ''
              'P2CM_PITEM_DESC_CAB IS NULL'
              ''
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END)-(ROUND(  ((( ((P2CM_QTD_' +
                'KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              ''
              'P2CM_PITEM_DESC_CAB IS NULL'
              ''
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END ) * P2CM_PITEM_DESC1) / 1' +
                '00) , 2)))*P2CM_PITEM_DESC2/100),2)'
              ''
              
                '   +ROUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VAL' +
                'DES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END)-'
              ''
              
                '   ((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB'
              ''
              
                '   END ) * P2CM_PITEM_DESC1) / 100) , 2))+(ROUND((((((P2CM_QTD_K' +
                'G*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE'
              ''
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-'
              ''
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              ''
              'P2CM_PITEM_DESC_CAB END )'
              ''
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2))'
              ''
              
                '   where P2CM_CODEMP=:NEW.P2T_CODEMP  and P2CM_CHAVE=:NEW.P2T_CH' +
                'AVE  and'
              ''
              '   P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              
                '   Select sum(P2CM_PITEM_TOTDES) into mValorTemp from CADP02_CME' +
                'T'
              ''
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '   if mValorTemp<>mTot_Ped02_TotDes then'
              ''
              '      mDifTemp:=mTot_Ped02_TotDes-mValorTemp;'
              ''
              
                '      Update CADP02_CMET set P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES' +
                '+mDifTemp'
              ''
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '         and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '         and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '         and P2CM_CODIGO=mItemPed'
              ''
              '         and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              ''
              '      if mTot_ped02_TotDescRat>0 then'
              ''
              
                '         update CADP02_CMET set P2CM_PITEM_DESCRAT=ROUND( (P2CM_' +
                'PITEM_PERCITEM*mTot_Ped02_TotDescRat/100) , 2)'
              ''
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              
                '         Select sum(P2CM_PITEM_DESCRAT) into  mValorTemp from CA' +
                'DP02_CMET'
              ''
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '         if mValorTemp<>mTot_Ped02_TotDescRat then'
              ''
              '            mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              ''
              
                '            Update CADP02_CMET set P2CM_PITEM_DESCRAT=P2CM_PITEM' +
                '_DESCRAT+mTot_Ped02_TotDescRat'
              ''
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '               and P2CM_CODIGO=mItemPed'
              ''
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '            end if;'
              ''
              '         end if;'
              ''
              ''
              ''
              '      if mTot_ped02_TotAcrecRat>0 then'
              ''
              
                '         update CADP02_CMET set P2CM_PITEM_ACRECRAT=ROUND( (P2CM' +
                '_PITEM_PERCITEM*mTot_Ped02_TotAcrecRat/100) , 2)'
              ''
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              
                '         Select sum(P2CM_PITEM_ACRECRAT) into  mValorTemp FROM C' +
                'ADP02_CMET'
              ''
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '         if mValorTemp<>mTot_Ped02_TotAcrecRat then'
              ''
              '            mDifTemp:=mTot_Ped02_TotAcrecRat-mValorTemp;'
              ''
              
                '            Update CADP02_CMET set P2CM_PITEM_ACRECRAT=P2CM_PITE' +
                'M_ACRECRAT+mTot_Ped02_TotAcrecRat'
              ''
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '               and P2CM_CODIGO=mItemPed'
              ''
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '            end if;'
              ''
              '         end if;'
              ''
              ''
              ''
              
                '      Update CADP02_CMET set  P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDE' +
                'S+P2CM_PITEM_DESCRAT'
              ''
              
                '                                    , P2CM_PITEM_TOTLIQ=P2CM_PIT' +
                'EM_TOTLIQ-P2CM_PITEM_DESCRAT+P2CM_PITEM_ACRECRAT'
              ''
              ''
              ''
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '      and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '      and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              ''
              '      and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   UPDATE CADP02_CMET SET'
              ''
              
                '   P2CM_PITEM_COFINS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALCO' +
                'FINS)/100),2) ,'
              ''
              
                '   P2CM_PITEM_VALIPI=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALIP' +
                'I)/100),2) ,'
              ''
              
                '   P2CM_PITEM_VALPIS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALPI' +
                'S)/100),2) ,'
              ''
              
                '   P2CM_PITEM_VDESCF=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PDESC' +
                'F)/100),2) ,'
              ''
              '   P2CM_PITEM_TOTOUT=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              ''
              
                '   ELSE ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_REDUTICM)/100),2) ' +
                'END ,'
              ''
              '   P2CM_PITEM_BASEN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              ''
              
                '   ELSE ROUND( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITEM_' +
                'REDUTICM)/100),2) END ,'
              ''
              ''
              ''
              '   P2CM_PITEM_ICMSN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              ''
              
                '   ELSE ROUND( ( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITE' +
                'M_REDUTICM)/100) *P2CM_PITEM_PALIQ/100),2) END,'
              ''
              ''
              ''
              
                '   P2CM_PITEM_VLRICMS_SN=CASE P2CM_PITEM_PCREDSN WHEN 0 THEN 0 E' +
                'LSE'
              ''
              '   ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PCREDSN)/100),2) END ,'
              ''
              ''
              ''
              '   P2CM_PITEM_BASER= CASE P2CM_PITEM_MODBCST WHEN  4 THEN'
              ''
              '      ROUND(  (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              ''
              
                '       * ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100 END +' +
                ' P2CM_PITEM_ST_IVA)/100)'
              ''
              
                '     * ( (CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-' +
                'P2CM_PITEM_ST_REDUT)/100) , 2)  WHEN 0'
              ''
              '   THEN ROUND( (P2CM_QTD_KG*P2CM_PITEM_PCOMAX)'
              ''
              
                '   *((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2CM' +
                '_PITEM_ST_REDUT)/100),2)'
              ''
              '   ELSE 0 END'
              ''
              
                '   , P2CM_PITEM_ICMSR=ROUND((P2CM_PITEM_ST_ICMDEB *(  (    (P2CM' +
                '_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              ''
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              ''
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 ),2)'
              ''
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              ''
              ''
              
                '   , P2CM_PITEM_TOTLIQ=ROUND(  (P2CM_PITEM_TOTLIQ+((P2CM_PITEM_S' +
                'T_ICMDEB *(    (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              ''
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              ''
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 )) ,2)'
              ''
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              ''
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              ''
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              ''
              '   and P2CM_LOTSEQ=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   if mtot_ped02_valseg<>0 then'
              ''
              '      Update CADP02_CMET set P2CM_PITEM_VALSEG ='
              ''
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_ValSeg' +
                '/100) , 2)'
              ''
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              ''
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              ''
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              ''
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '   if mtot_ped02_despaces<>0 then'
              ''
              '      Update CADP02_CMET set P2CM_PITEM_DESPACES ='
              ''
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_DespAc' +
                'es/100) , 2)'
              ''
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              ''
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              ''
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              ''
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      end if;'
              ''
              ''
              ''
              
                '   Select sum(P2CM_PITEM_VALSEG), sum(P2CM_PITEM_DESPACES),sum(P' +
                '2CM_PITEM_DESC_CAB),sum(P2CM_PITEM_DESCRAT)'
              ''
              
                '   ,sum(P2CM_PITEM_ACRECRAT) ,sum(P2CM_PITEM_TOTDES) ,sum(P2CM_P' +
                'ITEM_PREPAS),sum(P2CM_PITEM_BASEN),sum(P2CM_PITEM_ICMSN)'
              ''
              
                '   ,sum(P2CM_PITEM_BASER),sum(P2CM_PITEM_ICMSR),sum(P2CM_PITEM_V' +
                'ALIPI),sum(P2CM_PITEM_VLRICMS_SN)'
              ''
              
                '    into  mTot_pitem_ValSeg       ,mTot_pitem_DespAces    ,mTot_' +
                'pItem_DescCab      ,mTot_pItem_TotDescRat,mTot_pItem_TotAcrecRat'
              ''
              ',mTot_pItem_Totdes'
              ''
              
                '  ,mTot_pItem_ValRepas   ,mTot_pItem_Basen     ,mTot_pItem_Icmsn' +
                '     ,mTot_pItem_Baser     ,mTot_pItem_Icmsr     ,mTot_pItem_Val' +
                'IPI'
              ''
              ',mTot_pItem_ICMS_SN from CADP02_CMET'
              ''
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '          P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                '   mTot_Dif_DescCab    := mTot_Ped02_DescCab    -mTot_pItem_Desc' +
                'Cab;'
              ''
              
                '   mTot_Dif_TotDescRat := mTot_Ped02_TotDescRat -mTot_pItem_TotD' +
                'escRat;'
              ''
              
                '   mTot_Dif_TotAcrecRat:= mTot_Ped02_TotAcrecRat-mTot_pItem_TotA' +
                'crecRat;'
              ''
              
                '   mTot_Dif_DespAces   := mTot_Ped02_DespAces   - mTot_pItem_Des' +
                'pAces;'
              ''
              
                '   mTot_Dif_ValSeg     := mTot_Ped02_ValSeg     - mTot_pItem_Val' +
                'Seg;'
              ''
              
                '   mTot_Dif_TotDes     := mTot_Ped02_TotDes     - mTot_pItem_Tot' +
                'Des;'
              ''
              
                '   mTot_Dif_ValRepas   := mTot_Ped02_ValRepas   - mTot_pItem_Val' +
                'Repas;'
              ''
              
                '   mTot_Dif_Basen      := mTot_Ped02_Basen      - mTot_pItem_Bas' +
                'en;'
              ''
              
                '   mTot_Dif_Icmsn      := mTot_Ped02_Icmsn      - mTot_pItem_Icm' +
                'sn;'
              ''
              
                '   mTot_Dif_Icmsr      := mTot_Ped02_Icmsr      - mTot_pItem_Icm' +
                'sr;'
              ''
              
                '   mTot_Dif_Baser      := mTot_Ped02_Baser      - mTot_pItem_Bas' +
                'er;'
              ''
              
                '   mTot_Dif_ValIPI     := mTot_Ped02_ValIPI     - mTot_pItem_Val' +
                'IPI;'
              ''
              
                '   mTot_Dif_ICMS_SN    := mTot_Ped02_ICMS_SN    - mTot_pItem_ICM' +
                'S_SN;'
              ''
              ''
              ''
              '   if (mTot_Dif_DescCab<>0) or (mTot_Dif_TotDescRat<>0) or'
              ''
              '      (mTot_Dif_TotAcrecRat<>0) or (mTot_Dif_DespAces<>0) or'
              ''
              '      (mTot_Dif_ValSeg<>0) or (mTot_Dif_TotDes<>0) or'
              ''
              '      (mTot_Dif_ValRepas<>0) or (mTot_Dif_Basen<>0) or'
              ''
              '      (mTot_Dif_Icmsn<>0) or (mTot_Dif_Icmsr<>0) or'
              ''
              '      (mTot_Dif_Baser<>0) or (mTot_Dif_ValIPI<>0) or'
              ''
              '      (mTot_Dif_ICMS_SN<>0)  then'
              ''
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_DESC' +
                '_CAB+mTot_Dif_DescCab'
              ''
              
                '                          ,P2CM_PITEM_DESCRAT=P2CM_PITEM_DESCRAT' +
                '+mTot_Dif_TotDescRat'
              ''
              
                '                          ,P2CM_PITEM_DESPACES=P2CM_PITEM_DESPAC' +
                'ES+mTot_Dif_DespAces'
              ''
              
                '                          ,P2CM_PITEM_VALSEG=P2CM_PITEM_VALSEG+m' +
                'Tot_Dif_ValSeg'
              ''
              
                '                          ,P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES+m' +
                'Tot_Dif_TotDes'
              ''
              
                '                          ,P2CM_PITEM_PREPAS=P2CM_PITEM_PREPAS+m' +
                'Tot_Dif_ValRepas'
              ''
              
                '                          ,P2CM_PITEM_BASEN=P2CM_PITEM_BASEN+mTo' +
                't_Dif_Basen'
              ''
              
                '                          ,P2CM_PITEM_ICMSN=P2CM_PITEM_ICMSN+mTo' +
                't_Dif_Icmsn'
              ''
              
                '                          ,P2CM_PITEM_ICMSR=P2CM_PITEM_ICMSR+mTo' +
                't_Dif_Icmsr'
              ''
              
                '                          ,P2CM_PITEM_BASER=P2CM_PITEM_BASER+mTo' +
                't_Dif_Baser'
              ''
              
                '                          ,P2CM_PITEM_VALIPI=P2CM_PITEM_VALIPI+m' +
                'Tot_Dif_ValIPI'
              ''
              
                '                          ,P2CM_PITEM_VLRICMS_SN=P2CM_PITEM_VLRI' +
                'CMS_SN+mTot_Dif_ICMS_SN'
              ''
              
                '                          ,P2CM_PITEM_ACRECRAT=P2CM_PITEM_ACRECR' +
                'AT+mTot_Dif_TotAcrecRat'
              ''
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              ''
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              ''
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              ''
              '          P2CM_ITEM=:NEW.P2T_ITEM'
              ''
              '          and P2CM_CODIGO=mItemPed;'
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '/* TERMINO DO CONTROLE ESPECIAL CMET */'
              ''
              ''
              ''
              ''
              ''
              'Select sum(P2VCOMIS) into mTotalCOMIS'
              ''
              'from CADP02'
              ''
              'WHERE P2CODEMP=:NEW.P2T_CODEMP'
              ''
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              ''
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              'update CADP01 set P1TOTALL='
              ''
              
                '                  nvl(:NEW.P2T_PED1_VALSEG,0)+nvl(:NEW.P2T_PED1_' +
                'TARBAN,0)'
              ''
              
                '                  +nvl(:NEW.P2T_PED1_VALFRE,0)+nvl(:NEW.P2T_PED1' +
                '_DESPACES,0)'
              ''
              '                  +nvl(mTotalPed,0)+nvl(mTotIPI,0)'
              ''
              '                  +nvl(mimp_VII,0)'
              ''
              '                  +nvl(mimp_VPIS,0)'
              ''
              '                  +nvl(mimp_VCOFINS,0)'
              ''
              '--                  +nvl(mimp_VIPI,0)'
              ''
              '                  +nvl(mimp_VICMS,0)'
              ''
              ''
              ''
              '                  +NVL(mTotalICMSR,0)'
              ''
              '                  ,P1TOTALB=nvl(mTOTMER,0)+nvl(MTOTSER,0)'
              ''
              ''
              ''
              '                ,P1TOTSERLIQ=nvl(MTOTSER,0)'
              ''
              '                ,P1TOTVICMSDES=mTotalIcmsDes'
              ''
              '                ,P1TOTVALAPROXTRIB=mTotalValAproxTrib'
              ''
              '                ,P1COMIS=mTotalCOMIS'
              ''
              ''
              '                ,P1IRRF=mTotalIRRF'
              '                ,P1CSLL=mTotalCsll'
              ''
              
                '                ,P1BASEN=mTotalBCICMS,p1ICMSN=mTotalICMS,P1TOTDE' +
                'S=mTotalDesc_Prod+mTotalDesc_Serv'
              ''
              '                ,P1BASER=mTotalBCST'
              ''
              '                ,P1TOTPIS=mTotalPIS'
              ''
              '                ,P1TOTCOFINS=mTotalCOFINS'
              ''
              '                ,P1DATHOR_UEVE=SYSDATE'
              ''
              '                ,P1ICMSR=NVL(mTotalICMSR,0)'
              ''
              '                ,P1VLRDES=mTotalDescRat_Prod+mTotalDescRat_Serv'
              ''
              '                ,P1IPIINA=mtotipi'
              ''
              '                ,P1VALSEG=:NEW.P2T_PED1_VALSEG'
              ''
              '                ,P1TARBAN=:NEW.P2T_PED1_TARBAN'
              ''
              '                ,P1DESPACES=:NEW.P2T_PED1_DESPACES'
              ''
              '                ,P1VALFRE=:NEW.P2T_PED1_VALFRE'
              ''
              '                ,P1ICMS_ALFRE=:NEW.P2T_PED1_ICMS_VALFRE_ALIQ'
              ''
              '                ,P1ICMS_ALSEG=:NEW.P2T_PED1_ICMS_VALSEG_ALIQ'
              ''
              '                ,P1ICMS_ALOUTD=:NEW.P2T_PED1_ICMS_OUTDESP_ALIQ'
              ''
              '                ,P1TRUNCARREND=:NEW.P2T_ARRED'
              ''
              
                '                ,P1COMIST=Round( (nvl((mTOTMER-mTotalDesc_Prod),' +
                '0)*:NEW.P2T_PCOMTEL/100) ,2)'
              ''
              '                ,P1IMP_COT_DOLLAR=:NEW.P2T_IMP_COT_DOLLAR'
              ''
              '                ,P1NF_IMP=:NEW.P2T_NF_IMP'
              ''
              '                ,P1DESCFIN=mTotDescFin_prod'
              ''
              ''
              ''
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              ''
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'BEGIN'
              ''
              '        update CADP01 SET P1PCOMIS=round(nvl(P1COMIS,0)/'
              ''
              
                '        CASE WHEN P1TOTALL IS NULL THEN 1 WHEN P1TOTALL = 0 THEN' +
                ' 1 ELSE P1TOTALL END*100,2)'
              ''
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              ''
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'EXCEPTION'
              ''
              '  WHEN OTHERS THEN'
              ''
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'ATRIBUIU NULO P1PCOM' +
                'IS'#39' );'
              ''
              '          RAISE;'
              ''
              '      END;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'mNv_QtdParcDiv:=0;'
              ''
              ''
              ''
              
                '-- RAISE_APPLICATION_ERROR(-20000, '#39'valor dup '#39' || mvalordup || ' +
                #39' mtotalped '#39'  || mtotalped || '#39' altdup '#39' || :NEW.P2T_ALTDUP || ' +
                #39' qtdup '#39' || :NEW.P2T_QTDDUP || '#39' tamprz '#39' || mtamprz || '#39' TESTE' +
                ' '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.P' +
                'T2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              '-- RETIRADO DO CALCULO +P2VDESPACESRAT'
              ''
              ''
              'Update CADP02 set'
              ''
              ''
              
                'P2VFCPUDEST = ROUND( ( (P2TOTLIQ+P2VFRERAT+P2VALIPI+P2VSEGRAT)  ' +
                '*  P2CPUFDEST / 100) ,2)'
              ''
              ',P2VBCUFDEST = (P2TOTLIQ+P2VFRERAT+P2VALIPI+P2VSEGRAT)'
              ''
              ''
              ''
              
                ',P2VICMSUFREMET  = (((P2ICMSUFDEST - P2ICMSINTER) * (P2TOTLIQ+P2' +
                'VFRERAT+P2VALIPI+P2VSEGRAT))/100) * (100 - P2ICMSINTERPART) /100'
              ''
              
                ',P2VICMSUFDEST =  (((P2ICMSUFDEST - P2ICMSINTER) * (P2TOTLIQ+P2V' +
                'FRERAT+P2VALIPI+P2VSEGRAT))/100) -'
              ''
              
                '                   (((P2ICMSUFDEST - P2ICMSINTER) * (P2TOTLIQ+P2' +
                'VFRERAT+P2VALIPI+P2VSEGRAT))/100) * (100 - P2ICMSINTERPART) /100'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              ''
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'IF :NEW.P2T_ALTDUP<>'#39'N'#39' then'
              ''
              ''
              ''
              '   if :NEW.P2T_QTDDUP>0 then'
              ''
              ''
              ''
              
                '     Select sum(P1TOTALL-P1ICMSR),sum(P1ICMSR),nvl(max(P1PVDIASD' +
                'ESCF),0) into mTotalPed,mTotalIcmsR, mnv_PrazoDESCFIN'
              ''
              '                                  FROM CADP01'
              ''
              '                                 WHERE P1CODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and P1CHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and P1LOTSEQ=:NEW.P2T_CHAVE_ANO' +
                ';'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '      if mTotalIcmsR is null then'
              ''
              '         mTotalIcmsR:=0;'
              ''
              '         end if;'
              ''
              ''
              ''
              '     mtotalped:=mtotalped+mTotalIcmsR;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '     if :NEW.P2T_ICMSR_PRIMPARC=0 then'
              ''
              '        mTotalIcmsR:=0;'
              ''
              '     else'
              ''
              '        mtotalped:=mtotalped-mTotalIcmsR;'
              ''
              '     end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '      if mtotalped>0 then'
              ''
              '         mValorDup := trunc( (mTotalPed / :NEW.P2T_QTDDUP) ,2);'
              ''
              '         mDifDup := mTotalPed - (mValorDup * :NEW.P2T_QTDDUP);'
              ''
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '      if mvalordup is null then'
              ''
              '         mvalordup:=0;'
              ''
              '         end if;'
              ''
              ''
              ''
              ''
              ''
              '      if :NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT THEN'
              ''
              '         delete from CADPFP where PFPCODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              ''
              '                                 and PFPSEQ>=:NEW.P2T_QTDDUP;'
              ''
              '      end if;'
              ''
              '      if (mvalordup<>0) and (mtotalped<>0) then'
              ''
              '         mtamprz:=length(:NEW.PT2_PRZNOVOS);'
              ''
              '         l_loop:=0;'
              ''
              '-- testando se ha valores fixo'
              ''
              '         mNv_ValFixo:=0;'
              ''
              '         mNv_QtdDupRat:=0;'
              ''
              ''
              ''
              '         mNv_QtdParc :=0;'
              ''
              ''
              ''
              '         mNv_ParcDif:=0;'
              ''
              '         mNv_Campo:=0;'
              ''
              '         mNv_Vacum:='#39#39';'
              ''
              ''
              ''
              '         mNv_Tipo:='#39#39';'
              ''
              ''
              ''
              '         While l_loop < mtamprz loop'
              ''
              ''
              ''
              '            l_loop := l_loop +  1;'
              ''
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'vai tenta' +
                'r prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tip' +
                'o '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtampr' +
                'z || '#39' TESTE '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || s' +
                'ubstr(:NEW.PT2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              ''
              ''
              '            BEGIN'
              ''
              '            if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39'|'#39' then'
              ''
              ''
              ''
              '               if  length(mNv_vAcum)>0 then'
              ''
              
                '--                   RAISE_APPLICATION_ERROR(-20000, '#39'NV ACUM '#39' ' +
                '|| MnV_VaCUM || '#39' mnv_campo '#39' || mNv_Campo || '#39' tipo '#39' || mNv_Ti' +
                'po || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz || '#39' TESTE ' +
                #39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.PT' +
                '2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              ''
              ''
              '                  if mNv_campo=0 then'
              ''
              '                     mNv_Tipo:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=1 then'
              ''
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=2 then'
              ''
              '                     mNv_valor:=round( TO_NUMBER(mnv_vAcum) ,2);'
              ''
              '                  elsif mNv_Campo=3 then'
              ''
              '                     mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=4 then'
              ''
              '                     mNv_NomFP:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=5 then'
              ''
              '                     mNv_Baixa:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=6 then'
              ''
              '                     mNv_CodBco_cob:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=7 then'
              ''
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=8 then'
              ''
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=9 then'
              ''
              '                     mNv_vago10:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=10 then'
              ''
              '                     mNv_vago11:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=11 then'
              ''
              '                     mNv_vago12:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  end if;'
              ''
              '               end if;'
              ''
              ''
              ''
              ''
              ''
              '               mNv_Campo:=mNv_Campo+1;'
              ''
              '               mNv_vAcum:='#39#39';'
              ''
              ''
              ''
              
                '--               RAISE_APPLICATION_ERROR(-20000, '#39'LIMPOU PRIMEIR' +
                'O prazo '#39' || mnv_prazo ||  '#39'2618 campo '#39' || mNv_Campo || '#39' przno' +
                'vos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || ' +
                'mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              ''
              ''
              ''
              '               if mNv_Campo>(mNv_qtdcampos-1) then'
              ''
              ''
              ''
              '                  if mNv_tipo<>'#39'V'#39' and mNv_ParcDif=0 then'
              ''
              '                     mNv_ParcDif:=mNv_QtdParc+1;'
              ''
              '                  end if;'
              ''
              ''
              ''
              ''
              ''
              '                  mNv_Campo:=0;'
              ''
              '                  mNv_QtdParc:=mNv_QtdParc+1;'
              ''
              '                  if mNv_tipo='#39'V'#39' and mNv_Valor<>0 then'
              ''
              
                '                     mnv_ValFixo:=mNv_ValFixo+ round(mNv_Valor,2' +
                ');'
              ''
              '                  else mNv_QtdParcDiv:=mNv_QtdParcDiv+1;'
              ''
              '                  end if;'
              ''
              '                  if mNv_Tipo<>'#39'V'#39' then'
              ''
              '                     mNv_QtdDupRat:=mNv_QtdDupRat+1;'
              ''
              '                  end if;'
              ''
              '               end if;'
              ''
              '            else'
              ''
              
                '               mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,' +
                'l_loop,1);'
              ''
              ''
              ''
              '            end if;'
              ''
              '   EXCEPTION'
              ''
              '     WHEN OTHERS THEN'
              ''
              
                '--          RAISE_APPLICATION_ERROR(-20000, '#39'TRY campo '#39' || mNv_' +
                'Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop' +
                ' || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' ' +
                '|| mtamprz);'
              ''
              '             RAISE;'
              ''
              '         END;'
              ''
              ''
              ''
              '         end loop;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '   -- fim dos testes para valores fixos'
              ''
              ''
              ''
              ''
              ''
              '     if mNv_QtdParc<1 then'
              ''
              '        mNv_QtdParc:=1;'
              ''
              '     end if;'
              ''
              ''
              ''
              '     if mNv_QtdParcDiv<1 then'
              ''
              '        mNv_QtdParcDiv:=1;'
              ''
              '     end if;'
              ''
              ''
              ''
              ''
              ''
              
                '--       RAISE_APPLICATION_ERROR(-20000, '#39'parc difer  '#39' || mValo' +
                'rDup ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup ||' +
                ' '#39' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mN' +
                'v_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VAL' +
                'FIXO: '#39' || mNv_ValFixo);'
              ''
              ''
              ''
              
                '        mValorDup := trunc( ((mTotalPed-mNv_ValFixo) / mNv_QtdPa' +
                'rcDiv) ,2);'
              ''
              
                '        mDifDup := (mTotalPed-mNv_ValFixo) - (mValorDup * mNv_Qt' +
                'dParcDiv);'
              ''
              ''
              ''
              ''
              ''
              
                '--      RAISE_APPLICATION_ERROR(-20000, '#39'Parc dif '#39' || mNv_ParcD' +
                'if ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup || '#39 +
                ' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mNv_' +
                'Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VALFI' +
                'XO: '#39' || mNv_ValFixo);'
              ''
              ''
              ''
              '        if mvalordup is null then'
              ''
              '           mvalordup:=0;'
              ''
              '        end if;'
              ''
              ''
              ''
              '        if mDifDup is null then'
              ''
              '           mDifDup:=0;'
              ''
              '        end if;'
              ''
              ''
              ''
              ''
              ''
              '        mNv_Campo:=0;'
              ''
              '        mNv_Valor:=0;'
              ''
              '        mNv_Vacum:='#39#39';'
              ''
              ''
              ''
              '        mNv_Parcela:=0;'
              ''
              '        mNv_CodFP:=-1;'
              ''
              '        mNv_NomFP:='#39#39';'
              ''
              '        mNv_Prazo:=0;'
              ''
              ''
              ''
              '        l_loop:=0;'
              ''
              ''
              ''
              ''
              ''
              '        While l_loop < mtamprz loop'
              ''
              '           l_loop := l_loop +  1;'
              ''
              '           if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39'|'#39' then'
              ''
              ''
              ''
              '              if  length(mNv_vAcum)>0 then'
              ''
              '                  if mNv_campo=0 then'
              ''
              '                     mNv_Tipo:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=1 then'
              ''
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=2 then'
              ''
              '                     mNv_valor:=round(TO_NUMBER(mnv_vAcum),2);'
              ''
              '                  elsif mNv_Campo=3 then'
              ''
              '                     mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=4 then'
              ''
              '                     mNv_NomFP:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=5 then'
              ''
              '                     mNv_Baixa:=mnv_vAcum;'
              ''
              '                  elsif mNv_Campo=6 then'
              ''
              '                     mNv_CodBco_cob:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=7 then'
              ''
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=8 then'
              ''
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=9 then'
              ''
              '                     mNv_vago10:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=10 then'
              ''
              '                     mNv_vago11:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  elsif mNv_Campo=11 then'
              ''
              '                     mNv_vago12:=TO_NUMBER(mnv_vAcum);'
              ''
              '                  end if;'
              ''
              '              end if;'
              ''
              ''
              ''
              ''
              ''
              '              mnv_vAcum:='#39#39';'
              ''
              '              mNv_Campo:=mNv_Campo+1;'
              ''
              '              if mNv_Campo>(mNv_qtdcampos-1) then'
              ''
              '                 if mNv_Valor=0 then'
              ''
              '                    mNv_Valor:=round(mValordup,2);'
              ''
              '                 end if;'
              ''
              ''
              ''
              '                 mNv_Parcela:=mNv_Parcela+1;'
              ''
              '                 mNv_Campo:=0;'
              ''
              ''
              ''
              '                 if mDifDup<>0 and mNv_parcela= mNv_ParcDif then'
              ''
              '                    mNv_Valor:=mNv_Valor+mDifDup;'
              ''
              '                 end if;'
              ''
              '                 if mNv_CodFP=-1 then'
              ''
              '                    mNv_CodFP:=:NEW.P2T_CODFP;'
              ''
              '                 end if;'
              ''
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'nomfp '#39' |' +
                '| mNv_NomFP || '#39' tamanho '#39' || length(mnv_nomfp) || '#39' LOOP '#39' || l' +
                '_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamp' +
                'rz '#39' || mtamprz);'
              ''
              ''
              ''
              '                 if trim(mNv_NomFP)='#39#39' or mNv_NomFP is null then'
              ''
              '                    mNv_NomFP:=:NEW.P2T_NOMFP;'
              ''
              '                 end if;'
              ''
              '                 select count(*) into mvalortemp from CADPFP'
              ''
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              ''
              '                                 and PFPORDEM=01'
              ''
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              ''
              ''
              ''
              ''
              
                '                 if (:NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT) and (' +
                'mValorTemp<1) THEN'
              ''
              
                '   --                  RAISE_APPLICATION_ERROR(-20000, '#39'QTDDUP D' +
                'IFER campo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS |' +
                '| '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_' +
                'vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              ''
              
                '                    insert into CADPFP (PFPCODEMP,PFPCHAVE,PFPOR' +
                'DEM,PFPLOTSEQ'
              ''
              '                          ,PFPSEQ'
              ''
              '                          ,PFPID_NEW'
              ''
              '                          ,PFPID_PED01_NEW'
              ''
              '                          ,PFPQTDPARC'
              ''
              '                         ,PFPFORMA'
              ''
              '                         ,PFPVALOR'
              ''
              '                         ,PFPBAIXA'
              ''
              '                         ,PFPNOMFOR'
              ''
              '                         ,PFPPRAZO'
              ''
              '                         ,PFPDATA'
              ''
              '                         ,PFPFPGTO'
              ''
              '                         ,PFPVINCULO'
              ''
              '                         ,PFPVDESCF'
              ''
              '                         ,PFPDTDESCF'
              ''
              '                         ,PFPVDESCF_SERV'
              ''
              '                         ,PFPVALOR_SERVICO'
              ''
              ''
              ''
              ''
              '                         ) values ('
              ''
              '                          :NEW.P2T_CODEMP,:NEW.P2T_CHAVE,01'
              #9#9#9#9#9#9'  '
              ''
              #9#9#9#9#9#9'  '
              #9#9#9#9#9#9'  ,:NEW.P2T_CHAVE_ANO'
              ''
              '                         ,mNv_Parcela'
              ''
              '                          , CADPFP_SEQ.NEXTVAL'
              ''
              '                          , :NEW.P2T_ID_PED01_NEW'
              '                         '
              '                         ,mNv_QtdDupRat'
              ''
              '                         ,mNv_CodFP'
              ''
              '                         ,mNv_valor+mTotalIcmsR'
              ''
              '                         ,mNv_baixa'
              ''
              '                         ,mNv_NomFP'
              ''
              '                         ,mNv_Prazo'
              ''
              '                         ,:NEW.P2T_DATAPED+mNv_Prazo'
              ''
              
                '                         ,mNv_Valor*100 / case when nvl(mTotalPe' +
                'd,0)=0 then 1 else mTotalPed end'
              ''
              
                '                         ,(select MAX(fpvinculo) from cadfp wher' +
                'e fpcodigo=mNv_CodFP)'
              ''
              
                '                         ,round( ((mNv_Valor*100 / (case when nv' +
                'l(mTotalPed,0)=0 then 1 else mTotalPed end ) ) * mTotDescFin_pro' +
                'd /100) ,2)'
              ''
              
                '                         ,:NEW.P2T_DATAPED+ case when mnv_PrazoD' +
                'ESCFIN=0 then  mNv_Prazo else mnv_PrazoDESCFIN end'
              ''
              ''
              
                '                         ,   trunc( (mTotDescFin_serv / case whe' +
                'n nvl(mNv_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat end ),2)'
              '                         +      case when mNv_Parcela = 1 then'
              
                '                              mtotDescFin_serv -  trunc( (trunc(' +
                ' (mTotDescFin_serv / case when nvl(mNv_QtdDupRat,0)=0 then 1 els' +
                'e mNv_QtdDupRat end),2)'
              
                '                              * case when nvl(mNv_QtdDupRat,0)=0' +
                ' then 1 else mNv_QtdDupRat end),2) else 0 end'
              ''
              
                '                         ,   trunc( (mTotSer / case when nvl(mNv' +
                '_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat end),2)'
              '                          +   case when mNv_Parcela = 1 then'
              
                '                              mTotSer -  trunc( (trunc( (mTotSer' +
                ' / case when nvl(mNv_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat en' +
                'd),2) *'
              
                '                              case when nvl(mNv_QtdDupRat,0)=0 t' +
                'hen 1 else mNv_QtdDupRat end),2) else 0 end'
              ''
              '                         );'
              ''
              ''
              ''
              '                 else'
              ''
              
                '   --                 RAISE_APPLICATION_ERROR(-20000, '#39'UPDATE ca' +
                'mpo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOO' +
                'P '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum |' +
                '| '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              ''
              
                '                    Update CADPFP set PFPFORMA=mNv_CodFP,PFPVALO' +
                'R=mNv_valor+mTotalIcmsR,'
              ''
              
                '                                    PFPBAIXA=mNv_baixa,PFPNOMFOR' +
                '=mNv_NomFP,'
              ''
              
                '                                    PFPPRAZO=mNv_Prazo,PFPDATA=:' +
                'NEW.P2T_DATAPED+mNv_Prazo,'
              ''
              
                '                                    PFPFPGTO=mNv_Valor*100 / (ca' +
                'se when nvl(mTotalPed,0)=0 then 1 else mTotalPed end )'
              ''
              
                '                                   ,PFPVINCULO=(select MAX(fpvin' +
                'culo) from cadfp where fpcodigo=mNv_CodFP)'
              ''
              
                '                                   ,PFPVDESCF=round( ((mNv_Valor' +
                '*100 / (case when nvl(mTotalPed,0)=0 then 1 else mTotalPed end )' +
                ') * mTotDescFin_prod /100) ,2)'
              ''
              
                '                                   ,PFPDTDESCF=:NEW.P2T_DATAPED+' +
                'case when mnv_PrazoDESCFIN=0 then  mNv_Prazo else mnv_PrazoDESCF' +
                'IN end'
              ''
              ''
              
                '                                   , PFPVDESCF_SERV =  trunc( (m' +
                'TotDescFin_serv /case when nvl(mNv_QtdDupRat,0)=0 then 1 else mN' +
                'v_QtdDupRat end),2) +'
              '                          case when mNv_Parcela = 1 then'
              '                              mtotDescFin_serv -'
              
                #9#9#9#9#9#9#9' trunc( (trunc( (mTotDescFin_serv / case when nvl(mNv_Qtd' +
                'DupRat,0)=0 then 1 else mNv_QtdDupRat end),2)'
              
                '                                                         * case ' +
                'when nvl(mNv_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat end),2) el' +
                'se 0 end'
              ''
              
                '                         ,   PFPVALOR_SERVICO =  trunc( (mTotSer' +
                ' / case when nvl(mNv_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat en' +
                'd),2) +'
              '                          case when mNv_Parcela = 1 then'
              
                '                              mTotSer -  trunc( (trunc( (mTotSer' +
                ' / case when nvl(mNv_QtdDupRat,0)=0 then 1 else mNv_QtdDupRat en' +
                'd),2)'
              
                '                              * case when nvl(mNv_QtdDupRat,0)=0' +
                ' then 1 else mNv_QtdDupRat end),2) else 0 end'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              ''
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              ''
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              ''
              '                                 and PFPORDEM=01'
              ''
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              ''
              ''
              '                 end if;'
              ''
              ''
              ''
              '                 mnv_Prazo:=0;'
              ''
              '                 mNv_Tipo:='#39#39';'
              ''
              '                 mNv_valor:=0;'
              ''
              '                 mNv_CodFP:=-1;'
              ''
              '                 mNv_NomFP:='#39#39';'
              ''
              '                 mNv_Baixa:='#39#39';'
              ''
              '                 mTotalIcmsR:=0;'
              ''
              ''
              ''
              ''
              ''
              '              end if;'
              ''
              '           else'
              ''
              
                '              mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,l' +
                '_loop,1);'
              ''
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'2778 campo '#39' || mNv_C' +
                'ampo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop ' +
                '|| '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' |' +
                '| mtamprz);'
              ''
              ''
              ''
              '           end if;'
              ''
              '        end loop;'
              ''
              ''
              ''
              '      end if;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              'end;')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'TabSheet6'
          ImageIndex = 8
          object Memo3: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                '                                 CREATE OR REPLACE TRIGGER CADMO' +
                'V_PROD_TRIG01 BEFORE INSERT ON CADMOV_PROD'
              ' FOR EACH ROW'
              'declare mQtdView Integer;'
              '      mComando varchar2(200);'
              '      mChave_Id Integer;'
              '     CURSOR c_chave_id IS'
              '     select count(*) into mqtdview from user_objects'
              '     where object_type='#39'SEQUENCE'#39
              '     and OBJECT_NAME='#39'MOVPRO_'#39' || TO_CHAR(SYSDATE,'#39'yyyy'#39');'
              ''
              '      '
              'begin'
              ''
              ''
              
                'mComando:='#39'SELECT '#39'+'#39'MOVPRO_'#39' || TO_CHAR(SYSDATE,'#39'yyyy'#39')+'#39'.NEXTV' +
                'AL FROM DUAL'#39';'
              'execute immediate mComando into mChave_id;'
              ''
              '  '
              ':NEW.CMP_ID:=mchave_id;'
              ':NEW.cmp_id_ano:=TO_CHAR(SYSDATE,'#39'yyyy'#39');'
              ''
              ''
              'END;')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object tsCadpf1: TTabSheet
          Caption = 'cadpf1'
          ImageIndex = 9
          object Memo_Triggers_CADPF1_Duplic: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADPF1_TRIG01_DUPLIC AFTER UPDATE ON C' +
                'ADPF1'
              'FOR EACH ROW'
              'declare'
              ''
              '        CURSOR c_CadUsr_logado IS'
              ''
              '        Select  CL_TERMINAL,'
              '                CLDATHOR_INI,'
              '                CLCODUSR,'
              '                CLNOMUSR,'
              '                CLSESSAO,'
              '                CLORIGEM_INFO'
              '                from CADUSR_LOG'
              '               where CL_TERMINAL=userenv('#39'TERMINAL'#39')'
              '               and CLDATHOR_FEC is null;'
              ''
              '        mUsrLogado VARCHAR2(3000);'
              ''
              ''
              'BEGIN'
              ''
              ''
              '  IF (UPDATING) AND (:OLD.PF1STATUS<>:NEW.PF1STATUS)  THEN'
              ''
              '      mUsrLogado:='#39#39';'
              ''
              '      FOR v_CadUsr in c_CadUsr_logado LOOP'
              
                '         mUsrLogado:=mUsrLogado || v_CadUsr.CLCODUSR || '#39'|'#39' || v' +
                '_CadUsr.CLNOMUSR || '#39'|'#39'  || v_CadUsr.CLDATHOR_INI || '#39'|'#39'  || v_C' +
                'adUsr.CLORIGEM_INFO || '#39'|'#39' ||  v_CadUsr.CLSESSAO || '#39'|'#39';'
              ''
              '      end loop;'
              ''
              '      if (mUsrLogado='#39#39') THEN'
              '         mUsrLogado:='#39'0000|N'#227'o ha usuario logado no momento|'#39';'
              '      end if;'
              '      Insert into CADUPDATE ('
              '                     CUDATHOR'
              '                    ,CUTERMINAL'
              '                    ,CUCODUSR_LOGADO'
              '                    ,CUORIGEM_INFO'
              '                    ,CUCOMANDO'
              '                    ,CURESULTADO'
              '                    ,CUCHAVE'
              '                    ) values ('
              '                     SYSDATE'
              '                    , userenv('#39'TERMINAL'#39')'
              '                    ,mUsrLogado'
              '                    ,'#39'TRIGGER CADPF1'#39
              
                '                    ,'#39'Status ant: '#39' || :OLD.PF1STATUS || '#39' novo:' +
                ' '#39' || :NEW.PF1STATUS || '#39'|'#39
              
                '                     || '#39' NumNF Ant: '#39'  || :OLD.PF1NUMNF || '#39' no' +
                'vo: '#39' || :NEW.PF1NUMNF || '#39'|'#39
              
                '                     || '#39' DatNF Ant: '#39'  || :OLD.PF1DATANF || '#39' n' +
                'ovo: '#39' || :NEW.PF1DATANF || '#39'|'#39
              '                    ,'#39' '#39
              '                    ,:NEW.PF1CHAVE'
              '                    );'
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              'end;')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'CADP01 VALIDAR'
          ImageIndex = 10
          object memo_trigger01_validar: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADP01_TRIG01_VALIDAR BEFORE UPDATE ON' +
                ' CADP01'
              'FOR EACH ROW'
              ''
              ''
              'declare  mQtdDupExist NUMBER;'
              ''
              'BEGIN'
              ''
              
                'if (:NEW.P1EMIDOC=0) and (:OLD.P1EMIDOC=1) and (:OLD.P1NUMCF>0) ' +
                'then'
              
                '      select count(*) into mQtdDupExist from CADDAR where CRCODE' +
                'MP=:NEW.P1CODEMP'
              
                '             and CRNPED=:NEW.P1CHAVE and CRORDEM=:NEW.P1ORDEM an' +
                'd CRLOTSEQ_CP=:NEW.P1LOTSEQ;'
              '      if mQtddupExist is null then'
              '         mQtdDupExist:=0;'
              '      end IF;'
              '   if (mQtdDupExist>0) then'
              '      :NEW.P1EMIDOC := :OLD.P1EMIDOC;'
              '      :NEW.P1NUMCF  := :OLD.P1NUMCF;'
              '      :NEW.P1CUPOM  := :OLD.P1CUPOM;'
              '      :NEW.P1DATACF := :OLD.P1DATACF;'
              '      :NEW.P1ECF_SERIE := :OLD.P1ECF_SERIE;'
              '      :NEW.P1CODECF := :OLD.P1CODECF;'
              '      :NEW.P1CX_CODCAI := :OLD.P1CX_CODCAI;'
              '   end IF;'
              ''
              
                'if (:NEW.P1DATACF>'#39'01/01/2000'#39' AND :NEW.P1DATDOC<:NEW.P1DATACF) ' +
                'THEN'
              '    :NEW.P1DATDOC := :NEW.P1DATACF;'
              '    IF :NEW.P1CX_CODCAI=0 AND :OLD.P1CX_CODCAI<>0 THEN'
              '      :NEW.P1CX_CODCAI := :OLD.P1CX_CODCAI;'
              '   end IF;'
              'end IF;'
              ''
              ''
              'end if;'
              ''
              'IF (:NEW.P1NPEDORI>0) THEN'
              '    if :NEW.P1STATUS>7 THEN'
              
                '       update expcadp01 set P1STATUS=3,P1MOTIVO_EXCLUSAO=:NEW.P1' +
                'MOTIVO where P1CHAVE=:NEW.P1NPEDORI;'
              '    elsif  (:NEW.P1EMIDOC=1) then'
              
                '       update expcadp01 set P1STATUS=2 where P1CHAVE=:NEW.P1NPED' +
                'ORI;'
              '   end if;'
              'end if;'
              ''
              'end;')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object tsValorExtenso: TTabSheet
          Caption = 'Valor por Extenso oracle monetario'
          ImageIndex = 11
          object Memo_extenso_monetario: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                '    create or replace function extenso_monetario ( valor number ' +
                ') return varchar2 IS'
              '    valor_string varchar2( 256 );'
              '    valor_conv VARCHAR2(25);'
              '    ind NUMBER;'
              '    tres_digitos VARCHAR2(3);'
              '    texto_string varchar2(256);'
              '    begin'
              
                '      valor_conv := to_char( trunc((abs(valor) * 100),0) , '#39'0999' +
                '999999999999999'#39' );'
              
                '      valor_conv := substr( valor_conv , 1 , 18 ) || '#39'0'#39' || subs' +
                'tr( valor_conv , 19, 2 );'
              '      if to_number( valor_conv ) = 0 then'
              '        return( '#39'Zero '#39' );'
              '      end if;'
              '      for ind in 1..7 loop'
              
                '        tres_digitos := substr( valor_conv , (((ind-1)*3)+1) , 3' +
                ' );'
              '        texto_string := '#39#39' ;'
              '        -- Extenso para Centena'
              '        if substr(tres_digitos,1,1) = '#39'2'#39' then'
              '          texto_string := texto_string || '#39'Duzentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'3'#39' then'
              '          texto_string := texto_string || '#39'Trezentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'4'#39' then'
              '          texto_string := texto_string || '#39'Quatrocentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'5'#39' then'
              '          texto_string := texto_string || '#39'Quinhentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'6'#39' then'
              '          texto_string := texto_string || '#39'Seiscentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'7'#39' then'
              '          texto_string := texto_string || '#39'Setecentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'8'#39' then'
              '          texto_string := texto_string || '#39'Oitocentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'9'#39' then'
              '          texto_string := texto_string || '#39'Novecentos '#39' ;'
              '        end if;'
              '        if substr(tres_digitos,1,1) = '#39'1'#39' then'
              '          if substr(tres_digitos,2,2) = '#39'00'#39' then'
              '            texto_string := texto_string || '#39'Cem '#39' ;'
              '          else'
              '            texto_string := texto_string || '#39'Cento '#39' ;'
              '          end if;'
              '        end if;'
              '        -- Extenso para Dezena'
              
                '        if substr(tres_digitos,2,1) <> '#39'0'#39' and texto_string is n' +
                'ot null then'
              '          texto_string := texto_string || '#39'e '#39';'
              '        end if;'
              '        if substr(tres_digitos,2,1) = '#39'2'#39' then'
              '          texto_string := texto_string ||'#39'Vinte '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'3'#39' then'
              '          texto_string := texto_string ||'#39'Trinta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'4'#39' then'
              '          texto_string := texto_string ||'#39'Quarenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'5'#39' then'
              '          texto_string := texto_string ||'#39'Cinquenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'6'#39' then'
              '          texto_string := texto_string ||'#39'Sessenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'7'#39' then'
              '          texto_string := texto_string ||'#39'Setenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'8'#39' then'
              '          texto_string := texto_string ||'#39'Oitenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'9'#39' then'
              '          texto_string := texto_string ||'#39'Noventa '#39';'
              '        end if;'
              '        if substr(tres_digitos,2,1) = '#39'1'#39' then'
              '          if substr(tres_digitos,3,1) <> '#39'0'#39' then'
              '            if substr(tres_digitos,3,1) = '#39'1'#39' then'
              '              texto_string := texto_string ||'#39'Onze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'2'#39' then'
              '              texto_string := texto_string ||'#39'Doze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'3'#39' then'
              '              texto_string := texto_string ||'#39'Treze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'4'#39' then'
              '              texto_string := texto_string ||'#39'Catorze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'5'#39' then'
              '              texto_string := texto_string ||'#39'Quinze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'6'#39' then'
              '              texto_string := texto_string ||'#39'Dezesseis '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'7'#39' then'
              '              texto_string := texto_string ||'#39'Dezessete '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'8'#39' then'
              '              texto_string := texto_string ||'#39'Dezoito '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'9'#39' then'
              '              texto_string := texto_string ||'#39'Dezenove '#39';'
              '            end if;'
              '          else'
              '            texto_string := texto_string ||'#39'Dez '#39' ;'
              '          end if;'
              '        else'
              '        -- Extenso para Unidade'
              
                '          if substr(tres_digitos,3,1) <> '#39'0'#39' and texto_string is' +
                ' not null then'
              '            texto_string := texto_string || '#39'e '#39';'
              '          end if;'
              '          if substr(tres_digitos,3,1) = '#39'1'#39' then'
              '            texto_string := texto_string ||'#39'Um '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'2'#39' then'
              '            texto_string := texto_string ||'#39'Dois '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'3'#39' then'
              '            texto_string := texto_string ||'#39'Tres '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'4'#39' then'
              '            texto_string := texto_string ||'#39'Quatro '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'5'#39' then'
              '            texto_string := texto_string ||'#39'Cinco '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'6'#39' then'
              '            texto_string := texto_string ||'#39'Seis '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'7'#39' then'
              '            texto_string := texto_string ||'#39'Sete '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'8'#39' then'
              '            texto_string := texto_string ||'#39'Oito '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'9'#39' then'
              '            texto_string := texto_string ||'#39'Nove '#39';'
              '          end if;'
              '        end if;'
              '        if to_number( tres_digitos ) > 0 then'
              '          if to_number( tres_digitos ) = 1 then'
              '            if ind = 1 then'
              '              texto_string := texto_string || '#39'Quatrilh'#227'o '#39' ;'
              '            elsif ind = 2 then'
              '              texto_string := texto_string || '#39'Trilh'#227'o '#39' ;'
              '            elsif ind = 3 then'
              '              texto_string := texto_string || '#39'Bilh'#227'o '#39' ;'
              '            elsif ind = 4 then'
              '              texto_string := texto_string || '#39'Milh'#227'o '#39' ;'
              '            elsif ind = 5 then'
              '              texto_string := texto_string || '#39'Mil '#39' ;'
              '            end if;'
              '          else'
              '            if ind = 1 then'
              '              texto_string := texto_string || '#39'Quatrilh'#245'es '#39' ;'
              '            elsif ind = 2 then'
              '              texto_string := texto_string || '#39'Trilh'#245'es '#39' ;'
              '            elsif ind = 3 then'
              '              texto_string := texto_string || '#39'Bilh'#245'es '#39' ;'
              '            elsif ind = 4 then'
              '              texto_string := texto_string || '#39'Milh'#245'es '#39' ;'
              '            elsif ind = 5 then'
              '              texto_string := texto_string || '#39'Mil '#39' ;'
              '            end if;'
              '          end if;'
              '        end if;'
              '        valor_string := valor_string || texto_string;'
              '        -- Escrita da Moeda Corrente'
              '        if ind = 5 then'
              
                '          if to_number( substr( valor_conv , 16 , 3 )) > 0 and v' +
                'alor_string is'
              '              not null then'
              '            valor_string := rtrim(valor_string) || '#39', '#39';'
              '          end if;'
              '        else'
              '          if ind < 5 and valor_string is not null then'
              '            valor_string := rtrim(valor_string) || '#39', '#39';'
              '          end if;'
              '        end if;'
              '        if ind = 6 then'
              '          if to_number( substr( valor_conv , 1 , 18 ) ) > 1 then'
              '            valor_string := valor_string || '#39'Reais '#39';'
              
                '          elsif to_number( substr( valor_conv , 1 , 18 ) ) = 1 t' +
                'hen'
              '            valor_string := valor_string || '#39'Real '#39';'
              '          end if;'
              '         '
              '          if to_number( substr( valor_conv , 20 , 2 ) ) > 0 and'
              '               length(valor_string) > 0  then'
              '            valor_string := valor_string || '#39'e '#39';'
              '          end if;'
              '        end if;'
              '        -- Escrita para Centavos'
              '        if ind = 7 then'
              '          if to_number( substr( valor_conv , 20 , 2 ) ) > 1 then'
              '            valor_string := valor_string  || '#39'Centavos '#39';'
              
                '          elsif to_number( substr( valor_conv , 20 , 2 ) ) = 1 t' +
                'hen'
              '            valor_string := valor_string  || '#39'Centavo '#39';'
              '          end if;'
              '        end if;'
              '      end loop;'
              '      return( rtrim(valor_string) );'
              '    exception'
              '      when others then'
              '        return( '#39'*** VALOR INVALIDO ***'#39' );'
              '    end;')
            TabOrder = 0
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Valor por Extenso'
          ImageIndex = 12
          object Memo_extenso: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              ''
              ''
              ''
              
                '    create or replace function extenso ( valor number ) return v' +
                'archar2 IS'
              '    valor_string varchar2( 256 );'
              '    valor_conv VARCHAR2(25);'
              '    ind NUMBER;'
              '    tres_digitos VARCHAR2(3);'
              '    texto_string varchar2(256);'
              '    begin'
              
                '      valor_conv := to_char( trunc((abs(valor) * 100),0) , '#39'0999' +
                '999999999999999'#39' );'
              
                '      valor_conv := substr( valor_conv , 1 , 18 ) || '#39'0'#39' || subs' +
                'tr( valor_conv , 19, 2 );'
              '      if to_number( valor_conv ) = 0 then'
              '        return( '#39'Zero '#39' );'
              '      end if;'
              '      for ind in 1..7 loop'
              
                '        tres_digitos := substr( valor_conv , (((ind-1)*3)+1) , 3' +
                ' );'
              '        texto_string := '#39#39' ;'
              '        -- Extenso para Centena'
              '        if substr(tres_digitos,1,1) = '#39'2'#39' then'
              '          texto_string := texto_string || '#39'Duzentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'3'#39' then'
              '          texto_string := texto_string || '#39'Trezentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'4'#39' then'
              '          texto_string := texto_string || '#39'Quatrocentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'5'#39' then'
              '          texto_string := texto_string || '#39'Quinhentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'6'#39' then'
              '          texto_string := texto_string || '#39'Seiscentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'7'#39' then'
              '          texto_string := texto_string || '#39'Setecentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'8'#39' then'
              '          texto_string := texto_string || '#39'Oitocentos '#39' ;'
              '        elsif substr(tres_digitos,1,1) = '#39'9'#39' then'
              '          texto_string := texto_string || '#39'Novecentos '#39' ;'
              '        end if;'
              '        if substr(tres_digitos,1,1) = '#39'1'#39' then'
              '          if substr(tres_digitos,2,2) = '#39'00'#39' then'
              '            texto_string := texto_string || '#39'Cem '#39' ;'
              '          else'
              '            texto_string := texto_string || '#39'Cento '#39' ;'
              '          end if;'
              '        end if;'
              '        -- Extenso para Dezena'
              
                '        if substr(tres_digitos,2,1) <> '#39'0'#39' and texto_string is n' +
                'ot null then'
              '          texto_string := texto_string || '#39'e '#39';'
              '        end if;'
              '        if substr(tres_digitos,2,1) = '#39'2'#39' then'
              '          texto_string := texto_string ||'#39'Vinte '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'3'#39' then'
              '          texto_string := texto_string ||'#39'Trinta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'4'#39' then'
              '          texto_string := texto_string ||'#39'Quarenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'5'#39' then'
              '          texto_string := texto_string ||'#39'Cinquenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'6'#39' then'
              '          texto_string := texto_string ||'#39'Sessenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'7'#39' then'
              '          texto_string := texto_string ||'#39'Setenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'8'#39' then'
              '          texto_string := texto_string ||'#39'Oitenta '#39';'
              '        elsif substr(tres_digitos,2,1) = '#39'9'#39' then'
              '          texto_string := texto_string ||'#39'Noventa '#39';'
              '        end if;'
              '        if substr(tres_digitos,2,1) = '#39'1'#39' then'
              '          if substr(tres_digitos,3,1) <> '#39'0'#39' then'
              '            if substr(tres_digitos,3,1) = '#39'1'#39' then'
              '              texto_string := texto_string ||'#39'Onze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'2'#39' then'
              '              texto_string := texto_string ||'#39'Doze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'3'#39' then'
              '              texto_string := texto_string ||'#39'Treze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'4'#39' then'
              '              texto_string := texto_string ||'#39'Catorze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'5'#39' then'
              '              texto_string := texto_string ||'#39'Quinze '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'6'#39' then'
              '              texto_string := texto_string ||'#39'Dezesseis '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'7'#39' then'
              '              texto_string := texto_string ||'#39'Dezessete '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'8'#39' then'
              '              texto_string := texto_string ||'#39'Dezoito '#39';'
              '            elsif substr(tres_digitos,3,1) = '#39'9'#39' then'
              '              texto_string := texto_string ||'#39'Dezenove '#39';'
              '            end if;'
              '          else'
              '            texto_string := texto_string ||'#39'Dez '#39' ;'
              '          end if;'
              '        else'
              '        -- Extenso para Unidade'
              
                '          if substr(tres_digitos,3,1) <> '#39'0'#39' and texto_string is' +
                ' not null then'
              '            texto_string := texto_string || '#39'e '#39';'
              '          end if;'
              '          if substr(tres_digitos,3,1) = '#39'1'#39' then'
              '            texto_string := texto_string ||'#39'Um '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'2'#39' then'
              '            texto_string := texto_string ||'#39'Dois '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'3'#39' then'
              '            texto_string := texto_string ||'#39'Tres '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'4'#39' then'
              '            texto_string := texto_string ||'#39'Quatro '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'5'#39' then'
              '            texto_string := texto_string ||'#39'Cinco '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'6'#39' then'
              '            texto_string := texto_string ||'#39'Seis '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'7'#39' then'
              '            texto_string := texto_string ||'#39'Sete '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'8'#39' then'
              '            texto_string := texto_string ||'#39'Oito '#39';'
              '          elsif substr(tres_digitos,3,1) = '#39'9'#39' then'
              '            texto_string := texto_string ||'#39'Nove '#39';'
              '          end if;'
              '        end if;'
              '        if to_number( tres_digitos ) > 0 then'
              '          if to_number( tres_digitos ) = 1 then'
              '            if ind = 1 then'
              '              texto_string := texto_string || '#39'Quatrilh'#227'o '#39' ;'
              '            elsif ind = 2 then'
              '              texto_string := texto_string || '#39'Trilh'#227'o '#39' ;'
              '            elsif ind = 3 then'
              '              texto_string := texto_string || '#39'Bilh'#227'o '#39' ;'
              '            elsif ind = 4 then'
              '              texto_string := texto_string || '#39'Milh'#227'o '#39' ;'
              '            elsif ind = 5 then'
              '              texto_string := texto_string || '#39'Mil '#39' ;'
              '            end if;'
              '          else'
              '            if ind = 1 then'
              '              texto_string := texto_string || '#39'Quatrilh'#245'es '#39' ;'
              '            elsif ind = 2 then'
              '              texto_string := texto_string || '#39'Trilh'#245'es '#39' ;'
              '            elsif ind = 3 then'
              '              texto_string := texto_string || '#39'Bilh'#245'es '#39' ;'
              '            elsif ind = 4 then'
              '              texto_string := texto_string || '#39'Milh'#245'es '#39' ;'
              '            elsif ind = 5 then'
              '              texto_string := texto_string || '#39'Mil '#39' ;'
              '            end if;'
              '          end if;'
              '        end if;'
              '        valor_string := valor_string || texto_string;'
              '        -- Escrita da Moeda Corrente'
              '        if ind = 5 then'
              
                '          if to_number( substr( valor_conv , 16 , 3 )) > 0 and v' +
                'alor_string is'
              '              not null then'
              '            valor_string := rtrim(valor_string) || '#39', '#39';'
              '          end if;'
              '        else'
              '          if ind < 5 and valor_string is not null then'
              '            valor_string := rtrim(valor_string) || '#39', '#39';'
              '          end if;'
              '        end if;'
              '        if ind = 6 then'
              '          if to_number( substr( valor_conv , 1 , 18 ) ) > 1 then'
              '            valor_string := valor_string || '#39#39';'
              
                '          elsif to_number( substr( valor_conv , 1 , 18 ) ) = 1 t' +
                'hen'
              '            valor_string := valor_string || '#39#39';'
              '          end if;'
              '         '
              '          if to_number( substr( valor_conv , 20 , 2 ) ) > 0 and'
              '               length(valor_string) > 0  then'
              '            valor_string := valor_string || '#39'e '#39';'
              '          end if;'
              '        end if;'
              '        -- Escrita para Centavos'
              '      end loop;'
              '      return( rtrim(valor_string) );'
              '    exception'
              '      when others then'
              '        return( '#39'*** VALOR INVALIDO ***'#39' );'
              '    end;'
              '')
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Exemplo  Procedure Oracle'
          ImageIndex = 13
          object memo_exemplo_procedure: TMemo
            Left = 866
            Top = 0
            Width = 242
            Height = 165
            Align = alRight
            Lines.Strings = (
              'SEQUENCIA FEITA'
              ''
              ''
              ''
              ''
              'CREATE GLOBAL TEMPORARY TABLE '
              'tempop_01'
              '(codpro number,p2l_lote varchar2(20)'
              ' ,p2l_dtvcto date,qtd_ant number(15,3)'
              ' ,qtdped number(15,3)'
              ' ,tipo_prod number(1)'
              ' , qtd_estoque number(15,3)'
              ' ,linha number)'
              ''
              ''
              ''
              ''
              ''
              ''
              ' CREATE GLOBAL TEMPORARY TABLE '
              'tempop_03'
              '(codpro number,lote varchar2(20),dtvcto date,qtd '
              'number(15,3),tipo number(1))'
              ''
              ''
              ''
              ''
              'SELECT CPORDEM,CPCODMAT'
              ',NVL(CPTIPO,0) AS TIPO'
              ',CASE WHEN NVL(CPTIPO,0)=0 THEN'
              '    CASE WHEN CPPERCENT_REST=0 THEN '
              'CPPERCENT ELSE CPPERCENT_REST END'
              'ELSE 0 END  AS PORCENTO'
              ''
              ',CASE WHEN NVL(CPTIPO,0)=1 THEN'
              '    CPQUANT'
              'ELSE 0 END  AS QTDPOR_EMB'
              ''
              ',CASE WHEN NVL(CPTIPO,0)=2 THEN'
              '    CPQUANT'
              'ELSE 0 END  AS QTDPOR_CXFECHADA'
              ''
              'FROM CADCOMP'
              '     WHERE CPCODPRO=9997'
              'ORDER BY TIPO'
              ''
              ''
              ''
              '// inserir registros'
              ''
              '      insert into tempop_01 '
              '(codpro,p2l_lote,p2l_dtvcto,qtd_ant, '
              'qtdped,tipo_prod,qtd_estoque,linha)'
              '         select codpro,p2l_lote,p2l_dtvcto'
              '            ,sum(qtd_ant) as qtd_ant'
              '            ,10 as qtdped'
              '            ,0 as tipo_prod'
              '            ,sum(qtd_estoque) as qtd_estoque'
              '            ,ROW_NUMBER() OVER(PARTITION BY '
              #39's'#39' ORDER BY p2l_dtvcto,p2l_lote) LINHA'
              '            from ('
              ''
              '            select CLCODPRO as codpro'
              '                ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
              '                ,CLDTVCTO as p2l_dtvcto'
              '                ,0 as qtd_ant'
              '                , CLQTD as qtd_estoque'
              '                from CADLGC where '
              'CLCODPRO=5444'
              '                and CLCODEMP=1'
              ''
              '                union all'
              ''
              '                select 1 as codpro'
              '                ,'#39'X'#39' as p2l_lote'
              '                ,null  as p2l_dtvcto'
              '                ,0 as qtd_ant'
              '                ,  9999999999 as qtd_estoque'
              '                from dual'
              '                ) g4'
              '             group by codpro,p2l_dtvcto,p2l_lote'
              '             order by p2l_dtvcto,p2l_lote;'
              ''
              ''
              ''
              ' CREATE GLOBAL TEMPORARY TABLE '
              'tempop_03'
              '(codpro number,lote varchar2(20),dtvcto date,qtd '
              'number(15,3),tipo_prod number(1))'
              '             '
              ''
              ''
              'insert into tempop_03'
              '(codpro,lote,dtvcto,tipo_prod,qtd)'
              ''
              ' select codpro,p2l_lote,p2l_dtvcto,tipo_prod, '
              'qtd_estoque+case when restante>0 then 0 else '
              'restante end as qtd_nova from ('
              '      select '
              'tipo_prod,qtdped,codpro,p2l_lote,p2l_dtvcto,qtd_'
              'ant,qtd_estoque'
              ''
              '      ,(select fora.qtdped-sum(dentro.qtd_estoque) '
              'from tempop_01 dentro where '
              'dentro.linha<=fora.linha) as restante'
              '      from tempop_02 fora'
              ''
              '      ) teste'
              '     where qtd_estoque+restante>0 or qtd_ant>0;'
              ''
              'insert into tempop_03'
              '(codpro,lote,dtvcto,tipo_prod,qtd)'
              ''
              ' select codpro,p2l_lote,p2l_dtvcto,tipo_prod, '
              'qtd_estoque+case when restante>0 then 0 else '
              'restante end as qtd_nova from ('
              '      select '
              'tipo_prod,qtdped,codpro,p2l_lote,p2l_dtvcto,qtd_'
              'ant,qtd_estoque'
              '              '
              '      ,(select fora.qtdped-sum(dentro.qtd_estoque) '
              'from tempop_01 dentro where '
              'dentro.linha<=fora.linha) as restante'
              '      from tempop_02 fora'
              ''
              '      ) teste'
              '     where qtd_estoque+restante>0 or qtd_ant>0;'
              ''
              ''
              ''
              ' 8400   0.05'
              '14206   0.08'
              ' 4448  77.5'
              '16920  22.50'
              '10898                1'
              ' 3344                        1'
              ''
              ''
              'TERMINO SEQUENCIA FEITA'
              ''
              ''
              ''
              'projeto pronto daqui para baixo'
              ''
              ''
              'CREATE or replace  PROCEDURE dadosop'
              '   ( p_codpro IN number,'
              '     p_codemp_filial IN number,'
              '     p_qtd IN number,'
              '     p_cursor OUT sys_refcursor)'
              '   IS'
              ''
              'BEGIN'
              ''
              'DECLARE'
              'vCODMAT number := 0;'
              'vTIPO integer := 0;'
              'vPORCENTO number := 0;'
              'vQTDPOR_EMB number := 0;'
              'vQTDPOR_CXFECHADA number := 0;'
              ''
              ''
              'CURSOR cadcomp_cursor'
              '    IS'
              '    SELECT CPCODMAT'
              '         ,NVL(CPTIPO,0) AS TIPO'
              '         ,CASE WHEN NVL(CPTIPO,0)=0 THEN'
              '               CASE WHEN CPPERCENT_REST=0 '
              'THEN CPPERCENT ELSE CPPERCENT_REST '
              'END'
              '                    ELSE 0 END  AS PORCENTO'
              '         ,CASE WHEN NVL(CPTIPO,0)=1 THEN '
              'CPQUANT'
              '               ELSE 0 END  AS QTDPOR_EMB'
              '         ,CASE WHEN NVL(CPTIPO,0)=2 THEN '
              'CPQUANT'
              '               ELSE 0 END  AS '
              'QTDPOR_CXFECHADA'
              '         FROM CADCOMP  WHERE '
              'CPCODPRO=p_codpro'
              '         ORDER BY TIPO;'
              'BEGIN'
              ''
              ''
              'OPEN cadcomp_cursor;'
              '   delete from tempop_01;'
              '   delete from tempop_02;'
              '   delete from tempop_03;'
              '   LOOP'
              '   FETCH cadcomp_cursor INTO '
              'vCODMAT,vTIPO,vPORCENTO,vQTDPOR_EM'
              'B,vQTDPOR_CXFECHADA;'
              '      EXIT WHEN cadcomp_cursor%NOTFOUND;'
              '-- carregar temporarias'
              ''
              ''
              '      insert into tempop_01 '
              '(codpro,p2l_lote,p2l_dtvcto,qtd_ant, '
              'qtdped,tipo_prod,qtd_estoque,linha)'
              '         select codpro,p2l_lote,p2l_dtvcto'
              '            ,sum(qtd_ant) as qtd_ant'
              '            ,p_qtd as qtdped'
              '            ,vTIPO as tipo_prod'
              '            ,sum(qtd_estoque) as qtd_estoque'
              '            ,ROW_NUMBER() OVER(PARTITION BY '
              #39's'#39' ORDER BY p2l_dtvcto,p2l_lote) LINHA'
              '            from ('
              ''
              '            select CLCODPRO as codpro'
              '                ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
              '                ,CLDTVCTO as p2l_dtvcto'
              '                ,0 as qtd_ant'
              '                , CLQTD as qtd_estoque'
              '                from CADLGC where '
              'CLCODPRO=VCODMAT'
              '                and CLFILIAL=p_codemp_filial'
              ''
              '                union all'
              ''
              '                select VCODMAT as codpro'
              '                ,'#39'X'#39' as p2l_lote'
              '                ,null  as p2l_dtvcto'
              '                ,0 as qtd_ant'
              '                ,  9999999999 as qtd_estoque'
              '                from dual'
              '                ) g4'
              '             group by codpro,p2l_dtvcto,p2l_lote'
              '             order by p2l_dtvcto,p2l_lote;'
              ''
              ''
              '      insert into tempop_03 '
              '(codpro,lote,dtvcto,tipo_prod,qtd)'
              '      select codpro,p2l_lote,p2l_dtvcto,tipo_prod, '
              'qtd_estoque+case when restante>0 then 0 else '
              'restante end as qtd_nova from ('
              '      select '
              'tipo_prod,qtdped,codpro,p2l_lote,p2l_dtvcto,qtd_'
              'ant,qtd_estoque'
              '      ,(select fora.qtdped-sum(dentro.qtd_estoque) '
              'from tempop_01 dentro where '
              'dentro.linha<=fora.linha and '
              'dentro.codpro=fora.codpro ) as restante'
              '      from tempop_02 fora where '
              'codpro=VCODMAT'
              '      ) teste'
              '     where qtd_estoque+restante>0 or qtd_ant>0;'
              ''
              '-- termino carregamento da temporaria'
              ''
              '   END LOOP;'
              'CLOSE cadcomp_cursor;'
              ''
              'OPEN p_cursor FOR'
              '   SELECT '
              'tempop_03.*,PDNOME,PDUND,PDMARCA '
              'FROM TEMPOP_03,CADPRO'
              '   WHERE PDCODPRO=CODPRO;'
              'EXCEPTION'
              '    WHEN NO_DATA_FOUND THEN'
              '        NULL;'
              'END;'
              'END; -- Procedure'
              ''
              '// alterando'
              ''
              'CREATE or replace  PROCEDURE '
              'PROC_USUARIO'
              '   ( p_nuusuario IN varchar2,'
              '     p_cursor OUT sys_refcursor)'
              '   IS'
              'BEGIN'
              '    OPEN p_cursor FOR'
              '        SELECT * FROM CADLOC'
              '        WHERE'
              '        LNOME LIKE p_nuusuario||'#39'%'#39';'
              'EXCEPTION'
              '    WHEN NO_DATA_FOUND THEN'
              '        NULL;'
              'END; -- Procedure'
              ''
              ''
              'procedure TForm1.BitBtn9Click(Sender: TObject);'
              'var'
              '  cds: TClientDataSet;'
              '  dsp: TDataSetProvider;'
              '  strProc: TSQLStoredProc;'
              'begin'
              'if not SQLConnection1.Connected=true then'
              '   SQLConnection1.Open;'
              '   if SQLConnection1.Connected=false then'
              '      MessageDlg('#39'erro noa coinctado'#39', mtError,'
              '[mbOk],0);'
              ''
              ''
              '  strProc := TSQLStoredProc.Create(self);'
              '  try'
              '    strProc.MaxBlobSize := -1;'
              '    strProc.SQLConnection:= '
              'SQLConnection1;//TSQLConnection'
              ''
              '    dsp := TDataSetProvider.Create(self);'
              '    try'
              '      dsp.ResolveToDataSet := True;'
              '      dsp.Exported := False;'
              '      dsp.DataSet := strProc;'
              '      cds := TClientDataSet.Create(self);'
              '      if SQLConnection1.Connected=false then'
              '         messagedlg('#39'nao conectado!'#39',mtWarning,'
              '[mbOK],0);'
              '      try'
              '        cds.DisableStringTrim := True;'
              '        cds.ReadOnly := True;'
              '        cds.SetProvider(dsp);'
              ''
              '        strProc.Close;'
              '        strProc.StoredProcName:= '
              #39'PROC_USUARIO'#39';'
              ''
              '//        strProc.ParamCheck:= true;'
              '//        strProc.Params.CreateParam'
              '(ftString,'#39'p_nuusuario'#39',ptInput);'
              '//        strProc.Params.CreateParam'
              '(ftCursor,'#39'ac'#39',ptInputOutput);'
              '//        strProc.ParamByName'
              '('#39'p_nuusuario'#39').AsString:= '#39'GO'#39';'
              '        strProc.Params[0].AsString:= Edit1.Text;'
              ''
              '        strProc.Open; //<--Error: Parameter '#39'Abbr'#39' '
              'not found.'
              ''
              '        cds.Open;'
              '        DataSource1.DataSet:=cds;'
              '      finally'
              '//        FreeAndNil(cds);'
              '      end;'
              '    finally'
              '//      FreeAndNil(dsp);'
              '    end;'
              '  finally'
              '//    FreeAndNil(strProc);'
              '  end;'
              ''
              'end;'
              ''
              ''
              ''
              '// **** TERMINO'
              ''
              ''
              ''
              ''
              '  select teste.*, qtd_estoque+case when '
              'restante>0 then 0 else restante end as qtd_nova '
              'from ('
              '      select  '
              'qtdped,codpro,p2l_lote,p2l_dtvcto,qtd_ant,qtd_es'
              'toque'
              '      ,(select fora.qtdped-sum(dentro.qtd_estoque) '
              'from tempop_01 dentro where '
              'dentro.linha<=fora.linha) as restante'
              '      from tempop_02 fora'
              ''
              '      ) teste'
              '     where qtd_estoque+restante>0 or qtd_ant>0;'
              ''
              'select * from tempop_01'
              'select * from tempop_02'
              ''
              'CREATE GLOBAL TEMPORARY TABLE '
              'tempop_02'
              '(codpro number,p2l_lote varchar2(20)'
              ' ,p2l_dtvcto date,qtd_ant number(15,3)'
              ' ,qtdped number(15,3)'
              ' , qtd_estoque number(15,3)'
              ' ,linha number)'
              ''
              'CREATE GLOBAL TEMPORARY TABLE '
              'tempop_01'
              '(codpro number,p2l_lote varchar2(20)'
              ' ,p2l_dtvcto date,qtd_ant number(15,3)'
              ' ,qtdped number(15,3)'
              ' , qtd_estoque number(15,3)'
              ' ,linha number)'
              ''
              ''
              'drop table tempop_01;'
              'drop table tempop_02;'
              ''
              ''
              ''
              ''
              'insert into tempop_01 '
              '(codpro,p2l_lote,p2l_dtvcto,qtd_ant,qtdped, '
              'qtd_estoque,linha)'
              'select codpro,p2l_lote,p2l_dtvcto'
              '      ,sum(qtd_ant) as qtd_ant'
              '      ,60 as qtdped'
              '      ,sum(qtd_estoque) as qtd_estoque'
              '      ,ROW_NUMBER() OVER(PARTITION BY '#39's'#39' '
              'ORDER BY p2l_dtvcto,p2l_lote) LINHA'
              ''
              '       from ('
              '       select CLCODPRO as codpro'
              '             ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
              '             ,CLDTVCTO as p2l_dtvcto'
              '             ,0 as qtd_ant'
              '             , CLQTD as qtd_estoque'
              '             from CADLGC where CLCODPRO=48'
              '             and CLCODEMP=1'
              ''
              '             union all'
              '             select 1 as codpro'
              '             ,'#39'X'#39' as p2l_lote'
              '             ,null  as p2l_dtvcto'
              '              ,0 as qtd_ant'
              '             ,  9999999999 as qtd_estoque'
              '                  from dual'
              ''
              '                  ) g4'
              'group by codpro,p2l_dtvcto,p2l_lote'
              ''
              'order by p2l_dtvcto,p2l_lote'
              ''
              ''
              ''
              ''
              'insert into tempop_02 '
              '(codpro,p2l_lote,p2l_dtvcto,qtd_ant,qtdped, '
              'qtd_estoque,linha)'
              'select codpro,p2l_lote,p2l_dtvcto'
              '      ,sum(qtd_ant) as qtd_ant'
              '      ,60 as qtdped'
              '      ,sum(qtd_estoque) as qtd_estoque'
              '      ,ROW_NUMBER() OVER(PARTITION BY '#39's'#39' '
              'ORDER BY p2l_dtvcto,p2l_lote) LINHA'
              '      '
              '       from ('
              '       select CLCODPRO as codpro'
              '             ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
              '             ,CLDTVCTO as p2l_dtvcto'
              '             ,0 as qtd_ant'
              '             , CLQTD as qtd_estoque'
              '             from CADLGC where CLCODPRO=48'
              '             and CLCODEMP=1'
              '             '
              '             union all'
              '             select 1 as codpro'
              '             ,'#39'X'#39' as p2l_lote'
              '             ,null  as p2l_dtvcto'
              '              ,0 as qtd_ant'
              '             ,  9999999999 as qtd_estoque'
              '                  from dual'
              ''
              '                  ) g4'
              'group by codpro,p2l_dtvcto,p2l_lote'
              ''
              'order by p2l_dtvcto,p2l_lote                  '
              ''
              ''
              ''
              '**************************'
              ''
              'CREATE or replace  PROCEDURE '
              'PROC_USUARIO'
              '   ( p_nuusuario IN varchar2,'
              '     p_cursor OUT sys_refcursor)'
              '   IS'
              'BEGIN'
              '    OPEN p_cursor FOR'
              '        SELECT * FROM CADLOC'
              '        WHERE'
              '        LNOME LIKE p_nuusuario||'#39'%'#39';'
              'EXCEPTION'
              '    WHEN NO_DATA_FOUND THEN'
              '        NULL;'
              'END; -- Procedure'
              ''
              ''
              '***********************************************************'
              '*********************'
              ''
              'procedure TForm1.BitBtn9Click(Sender: TObject);'
              'var'
              '  cds: TClientDataSet;'
              '  dsp: TDataSetProvider;'
              '  strProc: TSQLStoredProc;'
              'begin'
              'if not SQLConnection1.Connected=true then'
              '   SQLConnection1.Open;'
              '   if SQLConnection1.Connected=false then'
              '      MessageDlg('#39'erro noa coinctado'#39', mtError,'
              '[mbOk],0);'
              ''
              ''
              '  strProc := TSQLStoredProc.Create(self);'
              '  try'
              '    strProc.MaxBlobSize := -1;'
              '    strProc.SQLConnection:= '
              'SQLConnection1;//TSQLConnection'
              ''
              '    dsp := TDataSetProvider.Create(self);'
              '    try'
              '      dsp.ResolveToDataSet := True;'
              '      dsp.Exported := False;'
              '      dsp.DataSet := strProc;'
              '      cds := TClientDataSet.Create(self);'
              '      if SQLConnection1.Connected=false then'
              '         messagedlg('#39'nao conectado!'#39',mtWarning,'
              '[mbOK],0);'
              '      try'
              '        cds.DisableStringTrim := True;'
              '        cds.ReadOnly := True;'
              '        cds.SetProvider(dsp);'
              ''
              '        strProc.Close;'
              '        strProc.StoredProcName:= '
              #39'PROC_USUARIO'#39';'
              ''
              '//        strProc.ParamCheck:= true;'
              '//        strProc.Params.CreateParam'
              '(ftString,'#39'p_nuusuario'#39',ptInput);'
              '//        strProc.Params.CreateParam'
              '(ftCursor,'#39'ac'#39',ptInputOutput);'
              '//        strProc.ParamByName'
              '('#39'p_nuusuario'#39').AsString:= '#39'GO'#39';'
              '        strProc.Params[0].AsString:= Edit1.Text;'
              ''
              '        strProc.Open; //<--Error: Parameter '#39'Abbr'#39' '
              'not found.'
              ''
              '        cds.Open;'
              '        DataSource1.DataSet:=cds;'
              '      finally'
              '//        FreeAndNil(cds);'
              '      end;'
              '    finally'
              '//      FreeAndNil(dsp);'
              '    end;'
              '  finally'
              '//    FreeAndNil(strProc);'
              '  end;'
              ''
              'end;')
            TabOrder = 0
          end
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 866
            Height = 165
            ActivePage = tsMemo_pbuscaretestarid
            Align = alClient
            TabOrder = 1
            object tsdadosop: TTabSheet
              Caption = 'dadosop'
              object memo_procedure_dadosop: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  '       CREATE OR REPLACE PROCEDURE dadosop'
                  '   ( p_codpro IN NUMBER,'
                  '     p_codemp_filial IN number,'
                  '     p_qtd IN number,'
                  '     p_chave_op IN number,'
                  '     p_lotseq_op IN number,'
                  '     p_cursor OUT sys_refcursor)'
                  '   IS'
                  ''
                  'BEGIN'
                  ''
                  'DECLARE'
                  'vCODMAT number := 0;'
                  'vTIPO number := 0;'
                  'vQTD number := 0;'
                  ''
                  ''
                  'CURSOR cadcomp_cursor'
                  '    IS'
                  '    SELECT CPCODMAT'
                  '         ,NVL(CPTIPO,0) AS TIPO'
                  '         ,round(( CASE WHEN NVL(CPTIPO,0)=0 THEN'
                  '               CASE WHEN CPPERCENT_REST=0 THEN CPPERCENT '
                  'ELSE CPPERCENT_REST END * p_qtd / 100'
                  '               WHEN NVL(CPTIPO,0)=1 THEN CPQUANT * p_qtd'
                  '               WHEN NVL(CPTIPO,0)=2 THEN p_qtd / CPQUANT'
                  '               ELSE 0'
                  '          END),2) as QTD'
                  '         FROM CADCOMP  WHERE CPCODPRO=p_codpro'
                  '         ORDER BY TIPO;'
                  'BEGIN'
                  ''
                  'delete from tempop_01;'
                  'delete from tempop_03;'
                  ''
                  ''
                  'if p_chave_op>0 then'
                  '   insert into tempop_03 '
                  '(codpro,lote,dtvcto,tipo_prod,qtd,OP3_PU,OP3_SITMP)'
                  ''
                  '               select OP3_CODMAT as codpro'
                  '                   ,NVL(OP3_LOTE,'#39'X'#39') as p2l_lote'
                  '                   ,OP3_DTVCTO as p2l_dtvcto'
                  '                   ,CPTIPO as tipo_prod'
                  '                   , OP3_QTDPREV as qtd_ped'
                  '                   , OP3_PU'
                  '                   , OP3_SITMP'
                  ''
                  '                   from CADOP03,CADCOMP where '
                  'OP3_CODIGO=p_chave_op'
                  '                   and OP3_LOTSEQ=p_lotseq_op'
                  '                    and CPCODEMP=OP3_CODEMP'
                  '                    and CPCODMAT=OP3_CODMAT'
                  '                    and CPCODPRO=p_codpro'
                  '   ORDER BY CPTIPO,OP3_DTVCTO,NVL(OP3_LOTE,'#39'X'#39');'
                  'else'
                  '   OPEN cadcomp_cursor;'
                  '   LOOP'
                  '   FETCH cadcomp_cursor INTO vCODMAT,vTIPO,vQTD;'
                  '      EXIT WHEN cadcomp_cursor%NOTFOUND;'
                  '-- carregar temporarias'
                  ''
                  ''
                  
                    '      insert into tempop_01 (codpro,p2l_lote,p2l_dtvcto,qtd_ant,' +
                    ' '
                  'qtdped,tipo_prod,qtd_estoque,linha)'
                  '         select codpro,p2l_lote,p2l_dtvcto'
                  '            ,sum(qtd_ant) as qtd_ant'
                  '            ,vQTD as qtdped'
                  '            ,vTIPO as tipo_prod'
                  '            ,sum(qtd_estoque) as qtd_estoque'
                  '            ,ROW_NUMBER() OVER(PARTITION BY '#39's'#39' ORDER BY '
                  'p2l_dtvcto,p2l_lote) LINHA'
                  '            from ('
                  ''
                  '            select CLCODPRO as codpro'
                  '                ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
                  '                ,CLDTVCTO as p2l_dtvcto'
                  '                ,0 as qtd_ant'
                  '                , CLQTD as qtd_estoque'
                  '                from CADLGC where CLCODPRO=VCODMAT'
                  '                and CLFILIAL=p_codemp_filial'
                  '                and CLQTD>0'
                  ''
                  '                union all'
                  ''
                  '                select VCODMAT as codpro'
                  '                ,'#39'X'#39' as p2l_lote'
                  '                ,null  as p2l_dtvcto'
                  '                ,0 as qtd_ant'
                  '                ,  9999999999 as qtd_estoque'
                  '                from dual'
                  '                ) g4'
                  '             group by codpro,p2l_dtvcto,p2l_lote'
                  '             order by p2l_dtvcto,p2l_lote;'
                  ''
                  ''
                  '      insert into tempop_03 (codpro,lote,dtvcto,tipo_prod,qtd)'
                  
                    '      select codpro,p2l_lote,p2l_dtvcto,tipo_prod, qtd_estoque+c' +
                    'ase when '
                  'restante>0'
                  '      then 0 else restante end as qtd_nova from ('
                  '      select '
                  'tipo_prod,qtdped,codpro,p2l_lote,p2l_dtvcto,qtd_ant,qtd_estoque'
                  
                    '      ,(select fora.qtdped-sum(dentro.qtd_estoque) from tempop_0' +
                    '1'
                  '      dentro where dentro.linha<=fora.linha and'
                  '          dentro.codpro=fora.codpro ) as restante'
                  '      from tempop_01 fora where codpro=vCODMAT'
                  '      ) teste'
                  '     where qtd_estoque+restante>0 or qtd_ant>0;'
                  ''
                  '-- termino carregamento da temporaria'
                  ''
                  '   END LOOP;'
                  '   CLOSE cadcomp_cursor;'
                  'end if;'
                  'if p_chave_op>0 then'
                  '   OPEN p_cursor FOR'
                  '   SELECT tempop_03.*,case when tipo_prod=2 then '#39'Caixa de '
                  'Embargue'#39
                  '                           when tipo_prod=1 then '#39'Embalagem'#39
                  
                    '                           else '#39'Materia Prima'#39' end as tipo_prod' +
                    'uto,'
                  '                           PDNOME,PDUND,PDMARCA FROM '
                  'TEMPOP_03,CADPRO'
                  '   WHERE PDCODPRO=CODPRO;'
                  'else'
                  '   OPEN p_cursor FOR'
                  '   SELECT CODPRO,LOTE,DTVCTO,QTD,TIPO_PROD,CASE WHEN '
                  'PDPCOFAB>0 THEN PDPCOFAB'
                  
                    '                                                   WHEN PDPRECOC' +
                    '>0 THEN '
                  'PDPRECOC'
                  
                    '                                                   ELSE PDPRECO1' +
                    ' END as OP3_PU,0 '
                  'as OP3_SITMP'
                  '              ,case when tipo_prod=2 then '#39'Caixa de Embargue'#39
                  '                           when tipo_prod=1 then '#39'Embalagem'#39
                  
                    '                           else '#39'Materia Prima'#39' end as tipo_prod' +
                    'uto,'
                  '                           PDNOME,PDUND,PDMARCA FROM '
                  'TEMPOP_03,CADPRO'
                  '      WHERE PDCODPRO=CODPRO;'
                  'end if;'
                  ''
                  '  EXCEPTION'
                  '    WHEN NO_DATA_FOUND THEN'
                  '        NULL;'
                  ''
                  'END;'
                  'END; -- Procedure')
                TabOrder = 0
              end
            end
            object tsContasporCompetencia: TTabSheet
              Caption = 'Contas por Competencia'
              ImageIndex = 1
              object Memo_ContasporCompetencia: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'CREATE OR REPLACE PROCEDURE titulos_por_competencia'
                  '   ( pCondicoes_pagar in varchar2,'
                  '     pCampoGrupo_pagar in varchar2,'
                  '     pCondicoes_receber in varchar2,'
                  '     pCampoGrupo_receber in varchar2,'
                  '     pOrdem in varchar2,'
                  '     p_cursor OUT sys_refcursor)'
                  '   IS'
                  ''
                  'BEGIN'
                  ''
                  'DECLARE'
                  'mQtdReg number := 0;'
                  ''
                  'SQL_Text varchar2(32760);'
                  ''
                  'BEGIN'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com01reg_normal;'
                  'if mQtdReg<>01 then'
                  '   delete from com01reg_normal;'
                  
                    '   insert into com01reg_normal select rownum from cadloc where r' +
                    'ownum<2;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com02reg_bimestral;'
                  'if mQtdReg<>02 then'
                  '   delete from com02reg_bimestral;'
                  
                    '   insert into com02reg_bimestral select rownum from cadloc wher' +
                    'e rownum<3;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com03reg_trimestral;'
                  'if mQtdReg<>03 then'
                  '   delete from com03reg_trimestral;'
                  
                    '   insert into com03reg_trimestral select rownum from cadloc whe' +
                    're rownum<4;'
                  'end if;'
                  ''
                  'select count(*) into mQtdreg from  com06reg_semestral;'
                  'if mQtdReg<>06 then'
                  '   delete from com06reg_semestral;'
                  
                    '   insert into com06reg_semestral select rownum from cadloc wher' +
                    'e rownum<7;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com12reg_anual;'
                  'if mQtdReg<>12 then'
                  '   delete from com12reg_anual;'
                  
                    '   insert into com12reg_anual select rownum from cadloc where ro' +
                    'wnum<13;'
                  'end if;'
                  ''
                  ''
                  
                    'SQL_Text := '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LI' +
                    'NHA-1),'#39#39'MM/YYYY'#39#39')  AS DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS'
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com12reg_anual '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=1 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text || '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text  ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCI' +
                    'A_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com02reg_bimestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=2 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA' +
                    '_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com03reg_trimestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=3 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text || '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA_' +
                    'DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com06reg_semestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=4 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA' +
                    '_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text || '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com01reg_normal '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND nvl(CACOMPETENCIA_TIPO,0)=0 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  ''
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com12reg_anual '#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=1 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com02reg_bimestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=2 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com03reg_trimestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=3 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com06reg_semestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=4 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com01reg_normal'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND nvl(CRCOMPETENCIA_TIPO,0)=0 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  'if length(nvl(pordem,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text  || '#39' order by GRUPO,'#39' || pordem;'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39' order by GRUPO, DATACOMP,VALOR'#39';'
                  ''
                  'end if;'
                  ''
                  ''
                  ''
                  'open p_cursor for SQL_Text;'
                  'EXCEPTION'
                  '   WHEN NO_DATA_FOUND THEN'
                  '   NULL;'
                  'END;'
                  'END; -- Procedure')
                TabOrder = 0
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Exemplo Gerar TXT Oracle'
              ImageIndex = 2
              object Memo4: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  ''
                  'select'
                  'SYS_CONTEXT('#39'USERENV'#39','#39'SERVER_HOST'#39'),userenv('#39'TERMINAL'#39'),'
                  
                    ' case when upper(SYS_CONTEXT('#39'USERENV'#39','#39'SERVER_HOST'#39'))=upper(use' +
                    'renv('#39'TERMINAL'#39'))'
                  
                    ' then (select DIRECTORY_PATH from All_Directories where DIRECTOR' +
                    'Y_NAME='#39'SGE_TEMP'#39')'
                  
                    'else '#39'\\'#39' || UTL_INADDR.get_host_address || '#39'\SGE_TEMP'#39' end as p' +
                    'asta'
                  'from dual'
                  ''
                  ''
                  ''
                  
                    'select userenv('#39'TERMINAL'#39') from dual; nome do computador NOME DO' +
                    ' COMPUTADOR LOCAL'
                  ''
                  'SELECT UTL_INADDR.get_host_address from dual; // IP do servidor'
                  ''
                  ''
                  'SELECT  host_name FROM    v$instance // nome do servidor'
                  ''
                  ''
                  ''
                  'CREATE GLOBAL TEMPORARY TABLE'
                  'tablet_temp02(status NUMBER(02) ,descricao varchar2(500))'
                  ''
                  ''
                  
                    '                                        SELECT * FROM All_Direct' +
                    'ories;'
                  ''
                  'select count(*) from cadcli'
                  ''
                  'SELECT * FROM v$parameter WHERE name='#39'utl_file_dir'#39';'
                  ''
                  'show parameter utl_file_dir'
                  ''
                  '    create or replace directory alert_dir as '#39'C:\temp'#39';'
                  ''
                  'SELECT *'
                  '  FROM V$PARAMETER'
                  '  WHERE NAME = '#39'utl_file_dir'#39
                  ''
                  ''
                  ''
                  'call gerartxt('#39'1'#39')'
                  ''
                  'create or replace directory temp_dir as '#39'C:\temp'#39
                  'grant read, write on directory temp_dir to system'
                  ''
                  'create or replace directory SGE_TEMP as '#39'C:\SGE\TEMP\'#39';'
                  ''
                  ''
                  ''
                  ''
                  'CREATE OR REPLACE PROCEDURE gerartxt(pcodcli in varchar2)'
                  '   IS'
                  ''
                  'BEGIN'
                  ''
                  ''
                  'DECLARE'
                  '    arquivo_saida                    UTL_File.File_Type;'
                  ''
                  
                    '    Cursor Cur_Linha is select CRAZAO || CCIDADE || CUF  || '#39'qtd' +
                    ' '#39' || rownum as linha from CADCLI;'
                  '    '
                  'BEGIN'
                  '    Dbms_Output.Put_Line('#39'item 01'#39');'
                  'BEGIN    '
                  
                    '    arquivo_saida := UTL_File.Fopen('#39'SGE_TEMP'#39','#39'CADCLI.TXT'#39', '#39'w'#39 +
                    ');'
                  '    Dbms_Output.Put_Line('#39'item 02'#39');'
                  '    For Reg_Linha in Cur_linha Loop'
                  '        UTL_File.Put_Line(arquivo_saida, Reg_linha.linha);'
                  '    End Loop;'
                  '    Dbms_Output.Put_Line('#39'item 05'#39');'
                  '    '
                  '    UTL_File.Fclose(arquivo_saida);'
                  '    Dbms_Output.Put_Line('#39'item 05'#39');'
                  '    '
                  '    Dbms_Output.Put_Line('#39'Arquivo gerado com sucesso.'#39');'
                  'EXCEPTION'
                  '      WHEN UTL_FILE.INVALID_OPERATION THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Opera'#231#227'o inv'#225'lida no arquiv' +
                    'o.'#39');'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.WRITE_ERROR THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Erro de grava'#231#227'o no arquivo' +
                    '.'#39');'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.INVALID_PATH THEN'
                  '               Dbms_Output.Put_Line('#39'Diret'#243'rio inv'#225'lido.'#39');'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.INVALID_MODE THEN'
                  '               Dbms_Output.Put_Line('#39'Modo de acesso inv'#225'lido.'#39');'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN Others THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Problemas na gera'#231#227'o do arq' +
                    'uivo.'#39');'
                  '               UTL_File.Fclose(arquivo_saida);'
                  'END;'
                  'END;'
                  'END;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet12: TTabSheet
              Caption = 'pGerarCSV'
              ImageIndex = 3
              object Memo_pgerarcsv: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'CREATE OR REPLACE PROCEDURE gerarcsv(pcomando in varchar2, pnome' +
                    'tabela in varchar2, p_cursor OUT sys_refcursor)'
                  'IS'
                  'BEGIN'
                  ''
                  'DECLARE'
                  '    arquivo_saida                    UTL_File.File_Type;'
                  ''
                  '    mcodret int;'
                  '    mtexto_retorno varchar2(100);'
                  '    mtabela varchar2(100);'
                  '    mpastasaida varchar2(100);'
                  ''
                  '    SQL_Text varchar2(32760);'
                  '    Cursor Cur_Linha is select linha from tablet_temp;'
                  '    temp_cursor sys_refcursor;'
                  ''
                  'BEGIN'
                  ''
                  'BEGIN'
                  '    Dbms_Output.Put_Line('#39'item 01'#39');'
                  ''
                  '    mtabela:=pNomeTabela;'
                  ''
                  
                    '    select case when upper(SYS_CONTEXT('#39'USERENV'#39','#39'SERVER_HOST'#39'))' +
                    '=upper(userenv('#39'TERMINAL'#39')) then (select DIRECTORY_PATH from All' +
                    '_Directories where'
                  
                    '      DIRECTORY_NAME='#39'SGE_TEMP'#39')     else '#39'\\'#39' || UTL_INADDR.get' +
                    '_host_address || '#39'\C\SGE\TEMP\'#39' end as pasta into mpastasaida  f' +
                    'rom dual;'
                  ''
                  '--   select DIRECTORY_PATH into mpastasaida from All_Directories'
                  '--   where  DIRECTORY_NAME='#39'SGE_TEMP'#39';'
                  ''
                  ''
                  '    mpastasaida:=mpastasaida||mtabela;'
                  ''
                  '    SQL_Text :='#39'insert into tablet_temp (linha) '#39' || pcomando;'
                  
                    '--    SQL_Text :='#39'insert into tablet_temp (linha) select LNOME |' +
                    '| LUF FROM CADLOC '#39';'
                  '    Dbms_Output.Put_Line('#39'item 11'#39');'
                  '    execute immediate SQL_Text;'
                  '--    execute temp_cursor for SQL_Text;'
                  '    Dbms_Output.Put_Line('#39'item 12'#39');'
                  ''
                  ''
                  ''
                  ''
                  '    arquivo_saida := UTL_File.Fopen('#39'SGE_TEMP'#39',mtabela, '#39'w'#39');'
                  '    Dbms_Output.Put_Line('#39'item 02'#39');'
                  '    For Reg_Linha in Cur_linha Loop'
                  '        UTL_File.Put_Line(arquivo_saida, Reg_linha.linha);'
                  '    End Loop;'
                  '    Dbms_Output.Put_Line('#39'item 05'#39');'
                  ''
                  
                    '    OPEN p_cursor FOR select 01 as status   ,mtabela || '#39' gerada' +
                    ' com sussesso!  '#39' as descricao, mpastasaida as pastasaida from d' +
                    'ual;'
                  ''
                  ''
                  '    UTL_File.Fclose(arquivo_saida);'
                  '    Dbms_Output.Put_Line('#39'item 05'#39');'
                  ''
                  ''
                  ''
                  '    Dbms_Output.Put_Line('#39'Arquivo gerado com sucesso.'#39');'
                  ''
                  ''
                  ''
                  'EXCEPTION'
                  ''
                  '      WHEN UTL_FILE.INVALID_OPERATION THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Opera'#231#227'o inv'#225'lida no arquiv' +
                    'o.'#39');'
                  
                    '              OPEN p_cursor FOR select 02 as status   ,mtabela |' +
                    '| '#39' Opera'#231#227'o inv'#225'lida no arquivo  '#39' as descricao, mpastasaida as' +
                    ' pastasaida  from dual;'
                  ''
                  ''
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.WRITE_ERROR THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Erro de grava'#231#227'o no arquivo' +
                    '.'#39');'
                  
                    '              OPEN p_cursor FOR select 02 as status   ,mtabela |' +
                    '| '#39' Opera'#231#227'o inv'#225'lida no arquivo  '#39' as descricao, mpastasaida as' +
                    ' pastasaida  from dual;'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.INVALID_PATH THEN'
                  '               Dbms_Output.Put_Line('#39'Diret'#243'rio inv'#225'lido.'#39');'
                  
                    '              OPEN p_cursor FOR select 02 as status   ,mtabela |' +
                    '| '#39' Opera'#231#227'o inv'#225'lida no arquivo  '#39' as descricao, mpastasaida as' +
                    ' pastasaida  from dual;'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN UTL_FILE.INVALID_MODE THEN'
                  '               Dbms_Output.Put_Line('#39'Modo de acesso inv'#225'lido.'#39');'
                  
                    '              OPEN p_cursor FOR select 02 as status   ,mtabela |' +
                    '| '#39' Opera'#231#227'o inv'#225'lida no arquivo  '#39' as descricao, mpastasaida as' +
                    ' pastasaida  from dual;'
                  '               UTL_File.Fclose(arquivo_saida);'
                  '      WHEN Others THEN'
                  
                    '               Dbms_Output.Put_Line('#39'Problemas na gera'#231#227'o do arq' +
                    'uivo.'#39');'
                  
                    '              OPEN p_cursor FOR select 02 as status   ,mtabela |' +
                    '| '#39' Opera'#231#227'o inv'#225'lida no arquivo  '#39' as descricao, mpastasaida as' +
                    ' pastasaida  from dual;'
                  '               UTL_File.Fclose(arquivo_saida);'
                  ''
                  'END;'
                  '-- SQL_Text :='#39'select * from tablet_temp02'#39';'
                  ''
                  ''
                  ''
                  'end;'
                  'END;'
                  ''
                  '')
                TabOrder = 0
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'fgetlong1(converter memo em string)'
              ImageIndex = 4
              object Memo_fgetlong: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fgetlong1(ptabela in varchar2,pcampo ' +
                    'in varchar2, p_rowid in varchar2)'
                  'return varchar2'
                  '  as'
                  '         '
                  '  begin'
                  '       declare msql varchar2(32760);'
                  '       temp_cursor sys_refcursor;'
                  '       l_data long;'
                  '       begin'
                  
                    '       msql :=  '#39'select '#39' || pcampo || '#39' from '#39' || ptabela || '#39' ' +
                    'where rowid = '#39#39#39' ||  p_rowid || '#39#39#39#39'   ;'
                  '       open temp_cursor for msql;'
                  ''
                  '       FETCH temp_cursor'
                  '       INTO  l_data;'
                  ''
                  '--       msql := msql || '#39' into l_data '#39';'
                  '--       execute immediate msql;'
                  '       return substr( l_data, 1, 4000 );'
                  '--       return msql;'
                  '       end;'
                  '  end;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet14: TTabSheet
              Caption = 'Remessa Bancaria'
              ImageIndex = 5
              object Memo5: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'CREATE OR REPLACE PROCEDURE titulos_por_competencia'
                  '   ( pCondicoes_pagar in varchar2,'
                  '     pCampoGrupo_pagar in varchar2,'
                  '     pCondicoes_receber in varchar2,'
                  '     pCampoGrupo_receber in varchar2,'
                  '     pOrdem in varchar2,'
                  '     p_cursor OUT sys_refcursor)'
                  '   IS'
                  ''
                  'BEGIN'
                  ''
                  'DECLARE'
                  'mQtdReg number := 0;'
                  ''
                  'SQL_Text varchar2(32760);'
                  ''
                  'BEGIN'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com01reg_normal;'
                  'if mQtdReg<>01 then'
                  '   delete from com01reg_normal;'
                  
                    '   insert into com01reg_normal select rownum from cadloc where r' +
                    'ownum<2;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com02reg_bimestral;'
                  'if mQtdReg<>02 then'
                  '   delete from com02reg_bimestral;'
                  
                    '   insert into com02reg_bimestral select rownum from cadloc wher' +
                    'e rownum<3;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com03reg_trimestral;'
                  'if mQtdReg<>03 then'
                  '   delete from com03reg_trimestral;'
                  
                    '   insert into com03reg_trimestral select rownum from cadloc whe' +
                    're rownum<4;'
                  'end if;'
                  ''
                  'select count(*) into mQtdreg from  com06reg_semestral;'
                  'if mQtdReg<>06 then'
                  '   delete from com06reg_semestral;'
                  
                    '   insert into com06reg_semestral select rownum from cadloc wher' +
                    'e rownum<7;'
                  'end if;'
                  ''
                  ''
                  'select count(*) into mQtdreg from  com12reg_anual;'
                  'if mQtdReg<>12 then'
                  '   delete from com12reg_anual;'
                  
                    '   insert into com12reg_anual select rownum from cadloc where ro' +
                    'wnum<13;'
                  'end if;'
                  ''
                  ''
                  
                    'SQL_Text := '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LI' +
                    'NHA-1),'#39#39'MM/YYYY'#39#39')  AS DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS'
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com12reg_anual '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=1 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text || '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text  ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCI' +
                    'A_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com02reg_bimestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=2 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA' +
                    '_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com03reg_trimestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=3 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text || '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA_' +
                    'DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com06reg_semestral '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND CACOMPETENCIA_TIPO=4 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39';'
                  ''
                  
                    'SQL_Text :=SQL_Text ||  '#39'select TO_CHAR(ADD_MONTHS(CACOMPETENCIA' +
                    '_DTINICIO,LINHA-1),'#39#39'MM/YYYY'#39#39')  AS '
                  'DATACOMP'#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CACOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'    ,TRUNC((CAVALOR/12),2) + CASE WHEN LINHA=1 THEN CAVALOR ' +
                    '- (TRUNC((CAVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  
                    '|| '#39'    ,FRAZAO AS NOMSAC    ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || ' +
                    'TO_CHAR(12,'#39#39'00'#39#39') AS PARC '#39
                  
                    '|| '#39'    , CANUMERO AS NUMDOC,CADESD AS DESDOB,CADTEMIS AS DTEMIS' +
                    ',CACODFOR AS CODSAC, '#39#39'F'#39#39' as TIPOSAC '#39
                  ''
                  
                    '|| '#39'    ,CADTVCTO AS DTVCTO,CAVALOR AS VALTIT,CAVALDES AS VALDES' +
                    ' '#39
                  '|| '#39'    ,CAJUROS AS JUROS,CADTBX AS DTBX,CADTPAG AS DTPAG '#39
                  
                    '|| '#39'    ,CANOMDEP AS NOMDEP,CACODDEP AS CODDEP,CADESCMV AS DESCM' +
                    'V '#39
                  '|| '#39'    ,CACODCC AS CODCC'#39
                  '|| '#39'    ,CANOMCC AS NOMCC '#39';'
                  'if length(nvl(pCampoGrupo_pagar,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_pagar  ||  '#39' AS ' +
                    'GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text || '#39'    ,LINHA '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN TRUNC((CAVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CAVALOR - (TRUNC'
                  '((CAVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CANATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CAVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CAVALOR - '
                  '(TRUNC((CAVALOR/12),2) * 12) ELSE 0 END END AS VALCRED '#39
                  '|| '#39'    FROM CADDAP,CADFOR,com01reg_normal '#39
                  '|| '#39'    WHERE FCODFOR=CACODFOR '#39
                  '|| '#39'    AND nvl(CACOMPETENCIA_TIPO,0)=0 '#39';'
                  ''
                  'if length(nvl(pcondicoes_pagar,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_pagar;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  ''
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com12reg_anual '#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=1 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com02reg_bimestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=2 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com03reg_trimestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=3 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com06reg_semestral'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND CRCOMPETENCIA_TIPO=4 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  'SQL_Text := SQL_Text || '#39'    UNION ALL '#39
                  '|| '#39'   select '#39
                  
                    '|| '#39'    TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'MM/' +
                    'YYYY'#39#39')  AS DATACOMP  '#39
                  
                    '|| '#39', TO_CHAR(ADD_MONTHS(CRCOMPETENCIA_DTINICIO,LINHA-1),'#39#39'YYYY/' +
                    'MM'#39#39')  AS ANOMES'#39
                  
                    '|| '#39'   ,TRUNC((CRVALOR/12),2) + CASE WHEN LINHA=1 THEN CRVALOR -' +
                    ' (TRUNC((CRVALOR/12),2) * 12) ELSE 0 END AS '
                  'VALOR '#39
                  '|| '#39'   ,CRAZAO AS NOMSAC '#39
                  
                    '|| '#39'   ,TO_CHAR(LINHA,'#39#39'00'#39#39') || '#39#39'/'#39#39' || TO_CHAR(12,'#39#39'00'#39#39') AS ' +
                    'PARC '#39
                  
                    '|| '#39'   , CRNUMERO AS NUMDOC,CRDESD AS DESDOB,CRDTEMIS AS DTEMIS,' +
                    'CRCODCLI AS CODSAC , '#39#39'C'#39#39' as TIPOSAC '#39
                  '|| '#39'   ,CRDTVCTO AS DTVCTO,CRVALOR AS VALTIT,CRDESC AS VALDES '#39
                  '|| '#39'   ,CRJUROS AS JUROS,CRDTBX AS DTBX,CRDTPAG AS DTPAG '#39
                  
                    '|| '#39'   ,CRNOMDEP AS NOMDEP,CRCODDEP AS CODDEP,CRDESCMV AS DESCMV' +
                    ' '#39
                  '|| '#39'   ,CRCODCC AS CODCC '#39
                  '|| '#39'   ,CRNOMCC AS NOMCC '#39';'
                  ''
                  'if length(nvl(pCampoGrupo_receber,'#39#39'))>0 then'
                  
                    '   SQL_Text := SQL_Text  || '#39', '#39' || pCampoGrupo_receber  ||  '#39' A' +
                    'S GRUPO'#39';'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39','#39' || '#39#39#39'    '#39#39#39'  ||  '#39' AS GRUPO'#39';'
                  'end if;'
                  'SQL_Text := SQL_Text'
                  ''
                  '|| '#39'   ,LINHA '#39
                  ''
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN TRUNC((CRVALOR/12),2) + CASE ' +
                    'WHEN LINHA=1 THEN CRVALOR - (TRUNC'
                  '((CRVALOR/12),2) * 12) ELSE 0 END ELSE 0 END AS VALDEB '#39
                  
                    '|| '#39', CASE WHEN CRNATDC='#39#39'D'#39#39' THEN 0 ELSE TRUNC((CRVALOR/12),2) ' +
                    '+ CASE WHEN LINHA=1 THEN CRVALOR - '
                  '(TRUNC((CRVALOR/12),2) * 12) ELSE 0 END  END AS VALCRED '#39
                  ''
                  ''
                  ''
                  '|| '#39'   FROM CADDAR,CADCLI,com01reg_normal'#39
                  '|| '#39'   WHERE CCODCLI=CRCODCLI '#39
                  '|| '#39'   AND nvl(CRCOMPETENCIA_TIPO,0)=0 '#39';'
                  ''
                  'if length(nvl(pcondicoes_receber,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text ||  '#39' and '#39' || pcondicoes_receber;'
                  'end if;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  'if length(nvl(pordem,'#39#39'))>0 then'
                  '   SQL_Text := SQL_Text  || '#39' order by GRUPO,'#39' || pordem;'
                  'else'
                  '   SQL_Text := SQL_Text  || '#39' order by GRUPO, DATACOMP,VALOR'#39';'
                  ''
                  'end if;'
                  ''
                  ''
                  ''
                  'open p_cursor for SQL_Text;'
                  'EXCEPTION'
                  '   WHEN NO_DATA_FOUND THEN'
                  '   NULL;'
                  'END;'
                  'END; -- Procedure')
                TabOrder = 0
              end
            end
            object TabSheet15: TTabSheet
              Caption = 'String para Numero'
              ImageIndex = 6
              object memo_stringtonumber: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fStringtoNumber(pValorEntra in varcha' +
                    'r2,pFatorDivisao in Integer)'
                  'return number'
                  '  as'
                  '         '
                  '  begin'
                  '       declare mValorRetorno real;'
                  '       begin  '
                  
                    '       mValorRetorno := LTRIM(translate(pValorEntra, translate(p' +
                    'ValorEntra, '#39'1234567890'#39', '#39' '#39') , '#39' '#39'))'
                  '       /case when pFatorDivisao<1 then 1 else pFatorDivisao end;'
                  '       return mValorRetorno;'
                  '       end;'
                  ' end;')
                TabOrder = 0
              end
            end
            object TabSheet16: TTabSheet
              Caption = 'String to date ddmmyyyy'
              ImageIndex = 7
              object Memo_fStringtodateddmmyyyy: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fStringtodateddmmyyyy(pValorEntra in ' +
                    'varchar2)'
                  'return date'
                  '  as'
                  '         '
                  '  begin'
                  '       declare mValorRetorno varchar(40);'
                  '       begin  '
                  '       '
                  
                    '       mValorRetorno := LTRIM(translate(pValorEntra, translate(p' +
                    'ValorEntra, '#39'1234567890'#39', '#39' '#39') , '#39' '#39'));'
                  
                    '       mValorRetorno := substr(mValorRetorno,1,2) || '#39'/'#39' || subs' +
                    'tr(mValorRetorno,3,2) || substr(mValorRetorno,5,4);'
                  '       return to_date(mValorRetorno);'
                  '          EXCEPTION     '
                  '       WHEN OTHERS THEN RETURN null; '
                  '       end;'
                  ' end;')
                TabOrder = 0
              end
            end
            object TabSheet17: TTabSheet
              Caption = 'String to date ddmmyy'
              ImageIndex = 8
              object Memo_fStringtodateddmmyy: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fStringtodateddmmyy(pValorEntra in va' +
                    'rchar2)'
                  'return date'
                  '  as'
                  ''
                  '  begin'
                  '       declare mValorRetorno varchar(40);'
                  '       begin'
                  ''
                  
                    '       mValorRetorno := LTRIM(translate(pValorEntra, translate(p' +
                    'ValorEntra, '#39'1234567890'#39', '#39' '#39') , '#39' '#39'));'
                  
                    '       mValorRetorno := substr(mValorRetorno,1,2) || '#39'/'#39' || subs' +
                    'tr(mValorRetorno,3,2) || substr(mValorRetorno,5,2);'
                  '       return to_date(mValorRetorno);'
                  '          EXCEPTION     '
                  '       WHEN OTHERS THEN RETURN null; '
                  '       end;'
                  ' end;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet18: TTabSheet
              Caption = 'TabSheet18'
              ImageIndex = 9
              object memo_cadlgcigualcadest: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'CREATE OR REPLACE PROCEDURE cadlgcigualcadest'
                  '   ( p_codpro IN NUMBER,p_filial in number,'
                  '     p_cursor OUT sys_refcursor)'
                  '   IS'
                  ''
                  'BEGIN'
                  ''
                  'DECLARE'
                  'SQL_TXT varchar2(32760);'
                  'mcodpro real;'
                  'mcodemp real;'
                  'mfilial real;'
                  'mcesaldo real;'
                  'mclsaldo real;'
                  'mqtdresta real;'
                  'mqtdproc real;'
                  'mlgc_numero varchar2(20);'
                  'mlgc_saldo real;'
                  ''
                  ''
                  'cursor cadest_cadlgc_cursor'
                  '    IS'
                  
                    '    SELECT CECODPRO,CECODEMP,CEFILIAL,CESALDO,CLSALDO FROM CADES' +
                    'T_CADLGC_TEMP;'
                  ''
                  'cursor cadlgc_cursor is '
                  '   select CLNUMERO,CLQTD from cadlgc where CLCODPRO=mcodpro'
                  '   and CLCODEMP=mcodemp and CLFILIAL=mfilial;'
                  ''
                  'BEGIN'
                  ''
                  '   delete from CADEST_CADLGC_TEMP;'
                  ''
                  ''
                  
                    '   SQL_TXT := '#39'INSERT INTO CADEST_CADLGC_TEMP (CECODPRO,CECODEMP' +
                    ',CEFILIAL,CESALDO,CLSALDO)'#39
                  
                    '           || '#39'select CECODPRO,CECODEMP,CEFILIAL,CESALDO,SUM(NVL' +
                    '(CLQTD,0)) AS CLSALDO '#39
                  
                    '           || '#39' from CADEST,CADLGC where CLCODEMP=CECODEMP AND C' +
                    'LCODPRO=CECODPRO '#39
                  '           || '#39' AND CLFILIAL=CEFILIAL '#39';'
                  ''
                  '   if p_codpro<>0 then '
                  '      SQL_TXT := SQL_TXT || '#39' and CLCODPRO='#39' || p_codpro ;'
                  '   end if; '
                  
                    '   SQL_TXT := SQL_TXT || '#39'  GROUP BY CECODPRO,CECODEMP,CEFILIAL,' +
                    'CESALDO  HAVING SUM(NVL(CLQTD,0))<>CESALDO '#39';'
                  ''
                  ''
                  '   EXECUTE IMMEDIATE SQL_TXT;'
                  ''
                  '   OPEN cadest_cadlgc_cursor;'
                  '   LOOP'
                  
                    '   FETCH cadest_cadlgc_cursor INTO mcodpro,mcodemp,mfilial,mcesa' +
                    'ldo,mclsaldo;'
                  '      EXIT WHEN cadest_cadlgc_cursor%NOTFOUND;'
                  '   if mclsaldo<mcesaldo then '
                  '      mqtdresta:=mclsaldo-mcesaldo;'
                  '      OPEN cadlgc_cursor;'
                  '      LOOP'
                  '      FETCH cadlgc_cursor INTO mlgc_numero,mlgc_saldo;'
                  '         EXIT WHEN cadlgc_cursor%NOTFOUND;'
                  '      if mlgc_saldo>mqtdresta then '
                  '         mqtdproc:=mqtdresta;'
                  '      else'
                  '         mqtdproc:=mlgc_saldo;'
                  '      end if;'
                  
                    '      update cadlgc set clqtd=clqtd-mqtdproc where clcodpro=mcod' +
                    'pro and clcodemp=mcodemp and clfilial=mfilial and clnumero=mlgc_' +
                    'numero;'
                  '      mqtdresta:=mqtdresta-mqtdproc;'
                  '      if mqtdresta<=0 then  '
                  '         exit;'
                  '      end if;  '
                  ''
                  '      END LOOP;'
                  '      CLOSE cadlgc_cursor;'
                  ''
                  '      '
                  '   end if;'
                  ''
                  '   END LOOP;'
                  '   CLOSE cadest_cadlgc_cursor;'
                  ''
                  ''
                  '   SQL_TXT := '#39'SELECT * FROM CADEST_CADLGC_TEMP'#39';'
                  '   open p_cursor for SQL_TXT;'
                  '   EXCEPTION'
                  '      WHEN NO_DATA_FOUND THEN'
                  '      NULL;'
                  'END;'
                  'END; -- Procedure real;')
                TabOrder = 0
              end
            end
            object ts_fBuscarCustoProduto: TTabSheet
              Caption = 'ts_fBuscarCustoProduto'
              ImageIndex = 10
              object Memo_fBuscarCustoProduto: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fBuscarCustoProduto(pSoFormula IN var' +
                    'char2, pCodPro in real)'
                  'return real'
                  '  as'
                  '         '
                  '  begin'
                  '       declare '
                  '       mValortemp real;'
                  '       mValorAcumulado real;'
                  '       begin  '
                  '       mValorAcumulado:=0;'
                  '       '
                  
                    '       Select SUM (CASE WHEN CPTIPO=0 THEN CPQTD_PAD ELSE CPQUAN' +
                    'T END *CASE WHEN PDPRECOC>0 THEN PDPRECOC  '
                  
                    '                                        WHEN PDPCOFAB>0 THEN PDP' +
                    'COFAB ELSE PDPRECO1 END) AS TOTAL into mValortemp'
                  
                    '                                        from CADCOMP,CADPRO wher' +
                    'e PDCODPRO=CPCODMAT AND CPCODPRO=pcodpro;'
                  '       mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  ''
                  '       if pSoformula<>'#39'S'#39' then '
                  
                    '          SELECT SUM(CASE WHEN PTIPO=1 THEN CUVALOR ELSE  (mValo' +
                    'rAcumulado*CUPERC)/100 END) AS TOTCALC into mValorTemp'
                  
                    '          FROM CADCUS,CADPCUS WHERE CUCODIGO=pcodpro and PCCODIG' +
                    'O=CUCODPCU and CUOPCIO=0;'
                  '          mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  ''
                  
                    '         SELECT SUM(CASE WHEN PTIPO=1 THEN CUVALOR ELSE  (mValor' +
                    'Acumulado*CUPERC)/100 END) AS TOTCALC into mValorTemp'
                  
                    '         FROM CADCUS,CADPCUS WHERE CUCODIGO=pcodpro and PCCODIGO' +
                    '=CUCODPCU and CUOPCIO=1;'
                  '         mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  ''
                  
                    '         SELECT SUM(CASE WHEN PTIPO=1 THEN CUVALOR ELSE  (mValor' +
                    'Acumulado*CUPERC)/100 END) AS TOTCALC into mValorTemp'
                  
                    '         FROM CADCUS,CADPCUS WHERE CUCODIGO=pcodpro and PCCODIGO' +
                    '=CUCODPCU and CUOPCIO=2;'
                  '         mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  ''
                  
                    '         SELECT SUM(CASE WHEN PTIPO=1 THEN CUVALOR ELSE  (mValor' +
                    'Acumulado*CUPERC)/100 END) AS TOTCALC into mValorTemp'
                  
                    '         FROM CADCUS,CADPCUS WHERE CUCODIGO=pcodpro and PCCODIGO' +
                    '=CUCODPCU and CUOPCIO=3;'
                  '         mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  ''
                  
                    '         SELECT SUM(CASE WHEN PTIPO=1 THEN CUVALOR ELSE  (mValor' +
                    'Acumulado*CUPERC)/100 END) AS TOTCALC into mValorTemp'
                  
                    '         FROM CADCUS,CADPCUS WHERE CUCODIGO=pcodpro and PCCODIGO' +
                    '=CUCODPCU and CUOPCIO=4;'
                  '         mValorAcumulado:=mValorAcumulado+nvl(mValortemp,0);'
                  '      end if;   '
                  ''
                  '   return mvaloracumulado;'
                  '   end;'
                  'end;'
                  ''
                  '')
                TabOrder = 0
              end
            end
            object tsMemo_pbuscaretestarid: TTabSheet
              Caption = 'Buscar testar'
              ImageIndex = 12
              object Memo_pbuscaretestarid: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  ''
                  
                    'CREATE OR REPLACE PROCEDURE pbuscaretestarid_oracle(partabela in' +
                    ' varchar2, presultado out integer)'
                  ''
                  'is'
                  ''
                  ''
                  ''
                  'begin'
                  ''
                  'declare'
                  ''
                  'mid integer;'
                  ''
                  'mqtdtent number;'
                  ''
                  'mqtdsai number;'
                  ''
                  'mano varchar2(04);'
                  ''
                  'mtabela varchar2(50);'
                  ''
                  'mErro number;'
                  ''
                  '   begin'
                  ''
                  '       begin'
                  ''
                  '   mtabela:=lower(partabela);'
                  ''
                  '   mano:=EXTRACT(year FROM sysdate);'
                  ''
                  '   mqtdtent:=1;'
                  ''
                  '   mqtdsai :=0;'
                  ''
                  ''
                  ''
                  '      LOOP'
                  ''
                  '         mErro:=0;'
                  ''
                  '         begin'
                  ''
                  '         MERGE INTO buscaretestarid t1'
                  ''
                  '           USING (SELECT mtabela as PTABELA'
                  ''
                  '                    FROM dual) ss'
                  ''
                  
                    '              ON (t1.ptabela = ss.PTABELA) -- whatever the key i' +
                    's'
                  ''
                  '            WHEN MATCHED THEN'
                  ''
                  '              UPDATE SET pid=pid+1'
                  ''
                  '            WHEN NOT MATCHED THEN'
                  ''
                  '              INSERT( ptabela,pid )'
                  ''
                  '               VALUES(ss.ptabela,1);'
                  ''
                  '         exception'
                  ''
                  '             when no_data_found then'
                  ''
                  '             mid:=999;'
                  ''
                  '             when others then'
                  ''
                  '             mid:=888;'
                  ''
                  '             end;'
                  ''
                  ''
                  ''
                  
                    '         select pid into mid from buscaretestarid  where PTABELA' +
                    '=mtabela; '
                  ''
                  '             '
                  ''
                  '         if  mtabela='#39'cadpessoa'#39' then'
                  ''
                  
                    '            select count(*) into mqtdsai from cadcli where  ccod' +
                    'cli=mid;'
                  '    elsif  mtabela='#39'cadlic'#39' then'
                  ''
                  
                    '            select count(*) into mqtdsai from cadlc1 where  lc1_' +
                    'lotseq=mano and lc1_chave=mid;'
                  
                    '    elsif  length(mtabela)>7 and  substr(mtabela,1,6) ='#39'caddar'#39' ' +
                    'then'
                  
                    '        select count(*) into mqtdsai from caddar where  crchave_' +
                    'id_ano=mano and crchave_id=mid;'
                  ''
                  '         end if;'
                  ''
                  '     '
                  '         if nvl(mqtdsai,0)<1 then'
                  ''
                  '            exit;'
                  ''
                  '         end if;'
                  ''
                  '         if mqtdtent>1000 then'
                  ''
                  '            mqtdtent:=mqtdtent+1000;'
                  ''
                  '         elsif  mqtdtent>100 then'
                  ''
                  '            mqtdtent:=mqtdtent+100;'
                  ''
                  '         elsif  mqtdtent>10 then'
                  ''
                  '            mqtdtent:=mqtdtent+10;'
                  ''
                  '         else'
                  ''
                  '           mqtdtent:=mqtdtent+1;'
                  ''
                  '         end if;'
                  ''
                  '         if mErro=1 then'
                  ''
                  '            exit;'
                  ''
                  '         end if;'
                  ''
                  '      END LOOP;'
                  ''
                  '         exception'
                  ''
                  '             when no_data_found then'
                  ''
                  '             mid:=999;'
                  ''
                  '             when others then'
                  ''
                  '             mid:=888;'
                  ''
                  '       end;      '
                  ''
                  '       '
                  ''
                  '   presultado:=mid;'
                  ''
                  '   end;'
                  ''
                  '   '
                  ''
                  'end;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  '')
                TabOrder = 0
              end
            end
            object tsfMaskCNPJCPF: TTabSheet
              Caption = 'fMaskCNPJCPF'
              ImageIndex = 12
              object Memo_fMaskCNPJCPF: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'create or replace function fMaskCNPJCPF(pCNPJ IN varchar2)'
                  'return varchar2'
                  'as'
                  'begin'
                  'declare'
                  'mcnpj varchar2(30);'
                  'begin'
                  
                    'mcnpj := LTRIM(translate(pcnpj, translate(pcnpj, '#39'1234567890'#39', '#39 +
                    ' '#39') , '#39' '#39'));'
                  'if length(mcnpj)>11 then'
                  '   mcnpj := LPAD(pCNPJ,14,'#39'0'#39');'
                  
                    '   mcnpj := substr(mcnpj,1,2) || '#39'.'#39' || substr(mcnpj,3,3) || '#39'.'#39 +
                    ' || substr(mcnpj,6,3) || '#39'/'#39' || substr(mcnpj,9,4) || '#39'-'#39' || subs' +
                    'tr(mcnpj, 13,2);'
                  'else'
                  '   mcnpj := LPAD(pCNPJ,11,'#39'0'#39');'
                  
                    '   mcnpj := substr(mcnpj,1,3) || '#39'.'#39' || substr(mcnpj,4,3) || '#39'.'#39 +
                    ' || substr(mcnpj,7,3) || '#39'-'#39' || substr(mcnpj,10,2);'
                  'end if;'
                  'return mcnpj;'
                  'end;'
                  'end;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet19: TTabSheet
              Caption = 'Buscar Pco Fab'
              ImageIndex = 13
              object Memo_fretpcoucpr: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fretpcoucpr(pchaveped in number, pcod' +
                    'emp in number, plotseq in number, pcodpro in number) return numb' +
                    'er is'
                  'begin'
                  'declare mdataped date;'
                  '        mpreco number;'
                  'begin        '
                  
                    'select max(p1datap) into mdataped from cadp01 where p1chave=pcha' +
                    'veped and p1codemp=pcodemp and p1lotseq=plotseq;'
                  ''
                  'select PDPCOFAB into mpreco '
                  
                    '   from (select PDPCOFAB,PDDTALT from OLD_CADPRO where PDCODPRO=' +
                    'pcodpro and PDDTALT<mdataped order by PDDTALT DESC) where PDPCOF' +
                    'AB>0 AND rownum '
                  '<2;'
                  'if nvl(mpreco,0)<=0 then'
                  '  select PDPCOFAB into mpreco'
                  
                    '   from (select PDPCOFAB,PDDTALT from OLD_CADPRO where PDCODPRO=' +
                    'pcodpro and PDDTALT>=mdataped order by PDDTALT) where PDPCOFAB>0' +
                    ' AND rownum <2;'
                  ''
                  'end if;'
                  ''
                  'if nvl(mpreco,0)<=0 then'
                  '  select PDPCOFAB into mpreco'
                  
                    '   from (select PDPCOFAB,PDDTALT from CADPRO where PDCODPRO=pcod' +
                    'pro ) where PDPCOFAB>0 AND rownum <2;'
                  ''
                  'end if;   '
                  ''
                  'return mpreco;   '
                  'end;'
                  ''
                  'end;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet20: TTabSheet
              Caption = 'Funcao fSaiCSTCSOSN'
              ImageIndex = 14
              object Memo_fSaiCSTCSOSN: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fSaiCSTCSOSN(pCRT_For in integer,pCon' +
                    'sFinal in varchar2,'
                  ' pCST in varchar2, pCSOSN in varchar2,pSaidaCST in varchar2)'
                  ''
                  'return varchar2'
                  ' IS'
                  ''
                  'begin'
                  ''
                  'declare'
                  'mSaida varchar2(30);'
                  'mCST varchar2(30);'
                  'mCSOSN varchar2(30);'
                  'begin'
                  ''
                  'if length(pCST)>2 then'
                  '   mCST:=substr(pCST,2,2);'
                  'else'
                  '   mCST:=pCST;'
                  'end if;'
                  'mCSOSN:=pCSOSN;'
                  ''
                  ''
                  'mSaida:='#39'erro'#39';'
                  'if pCRT_For<>3 then'
                  '   if pSaidaCST='#39'S'#39' then'
                  '      if mCSOSN='#39'500'#39' then'
                  '         mSaida:='#39'10'#39';'
                  '      elsif (mCSOSN='#39'101'#39') or (mCSOSN='#39'102'#39') then'
                  '        mSaida:='#39'00'#39';'
                  '      elsif (mCSOSN)='#39'900'#39' then'
                  '         mSaida:='#39'90'#39';'
                  '      else'
                  '         msaida:='#39'00'#39';'
                  '      end if;'
                  '   elsif mCSOSN='#39'101'#39' then'
                  '      if pConsFinal='#39'S'#39' then'
                  '         mSaida:='#39'102'#39';'
                  '      else'
                  '         mSaida:='#39'101'#39';'
                  '      end if;'
                  '   elsif mCSOSN='#39'201'#39' then'
                  '        mSaida:='#39'500'#39';'
                  '   elsif mCSOSN='#39'900'#39' then'
                  '      if pConsFinal='#39'S'#39' then'
                  '         mSaida:='#39'102'#39';'
                  '      else'
                  '         mSaida:='#39'900'#39';'
                  '      end if;'
                  '   else'
                  '      msaida:=mCSOSN;'
                  '   end if;'
                  'elsif length(mCST)>1 then'
                  '   if pSaidaCST='#39'S'#39' then'
                  '      if mCST='#39'20'#39' then'
                  '         msaida:='#39'00'#39';'
                  '      else'
                  '         msaida:=mCST;'
                  '      end if;'
                  '   elsif mCST='#39'10'#39' then'
                  '        mSaida:='#39'500'#39';'
                  '   elsif (mCSOSN='#39'00'#39') or (mCSOSN='#39'20'#39') then'
                  '      if pConsFinal='#39'S'#39' then'
                  '         mSaida:='#39'102'#39';'
                  '      else'
                  '         mSaida:='#39'101'#39';'
                  '      end if;'
                  '   elsif (mCSOSN='#39'90'#39') then'
                  '      if pConsFinal='#39'S'#39' then'
                  '         mSaida:='#39'102'#39';'
                  '      else'
                  '         mSaida:='#39'900'#39';'
                  '      end if;'
                  '   else   '
                  '      msaida:=mCSOSN;'
                  '   end if;'
                  'end if;'
                  'return msaida;'
                  ''
                  'END;'
                  'END;'
                  '')
                TabOrder = 0
              end
            end
            object tsLongParaMemo: TTabSheet
              Caption = 'Converte long em texto'
              ImageIndex = 15
              object memo_fgetlong_condicao: TMemo
                Left = 0
                Top = 0
                Width = 576
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fgetlong_condicao(ptabela in varchar2' +
                    ',pcampo in varchar2, pcondicao in varchar2)'
                  'return varchar2'
                  '  as'
                  ''
                  '  begin'
                  '       declare msql varchar2(32760);'
                  '       temp_cursor sys_refcursor;'
                  '       l_data long;'
                  '       begin'
                  
                    '       msql :=  '#39'select '#39' || pcampo || '#39' from '#39' || ptabela || pc' +
                    'ondicao ;'
                  '       open temp_cursor for msql;'
                  ''
                  '       FETCH temp_cursor'
                  '       INTO  l_data;'
                  ''
                  '--       return TRIM(substr( l_data, 1, 4000 ));'
                  ''
                  
                    '       return trim(translate(substr( l_data, 1, 4000 ),chr(10) |' +
                    '| chr(13),'#39' '#39'));'
                  '--       return rtrim(return,'#39' '#39');'
                  '--       return msql;'
                  '       end;'
                  '  end;'
                  ''
                  '')
                TabOrder = 0
              end
              object Memo6: TMemo
                Left = 576
                Top = 0
                Width = 282
                Height = 137
                Align = alRight
                Lines.Strings = (
                  'SELECT  * FROM USER_TAB_COLUMNS WHERE '
                  'TABLE_NAME='#39'CADCHQ'#39
                  'select data_default from USER_TAB_COLUMNS where '
                  'TABLE_NAME=  '#39'CADCHQ'#39' and column_name= '
                  #39'CHBANCO'#39)
                TabOrder = 1
              end
            end
            object TabSheet23: TTabSheet
              Caption = 'Proxima Sequencia com Sigla'
              ImageIndex = 16
              object memo_fproximasequenciaalfa: TMemo
                Left = 0
                Top = 0
                Width = 576
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fproximasequenciaalfa(ptabela in varc' +
                    'har2, pcampo in varchar2,psigla in varchar2)'
                  'return varchar2  as'
                  ''
                  'begin'
                  'declare'
                  ''
                  'mVarTipoPed varchar2(300);'
                  'mcampo_encontrado varchar2(30);'
                  'mcampo_sufixo_valor varchar2(30);'
                  ''
                  'mcampo_sufixo_tamanho integer;'
                  'mcampo_proximo_id integer;'
                  ''
                  'begin'
                  
                    'mVarTipoPed:='#39'select max('#39' || pcampo || '#39') from '#39' || ptabela || ' +
                    #39' where '#39'|| pcampo || '#39' like '#39#39#39' || psigla || '#39'%'#39#39'  order by len' +
                    'gth( '#39' ||  pcampo  || '#39' ) ,  '#39' || pcampo  ;'
                  ''
                  ''
                  ''
                  'execute immediate mvartipoped into mcampo_encontrado;'
                  'if mcampo_encontrado is null then'
                  '   return psigla || '#39'1'#39';'
                  'else'
                  
                    '   mcampo_sufixo_valor := substr(mcampo_encontrado, length(psigl' +
                    'a)+1,length(mcampo_encontrado)-length(psigla));'
                  '   mcampo_sufixo_tamanho := length( mcampo_sufixo_valor );'
                  '   mcampo_proximo_id:=to_number(mcampo_sufixo_valor)+1;'
                  
                    '   return psigla || lpad(mcampo_proximo_id,mcampo_sufixo_tamanho' +
                    ','#39'0'#39');'
                  '--   return psigla || mcampo_proximo_id;'
                  ''
                  
                    '--   return psigla || '#39' mcampo_procimo id  '#39' || mcampo_proximo_i' +
                    'd || '#39' mcampo sufixo_tamanho '#39' || mcampo_sufixo_tamanho;'
                  'end if;'
                  ''
                  'end;'
                  'end;'
                  '')
                TabOrder = 0
                WordWrap = False
              end
              object memo_fproximasequenciaalfa_exemplo: TMemo
                Left = 576
                Top = 0
                Width = 282
                Height = 137
                Align = alRight
                Lines.Strings = (
                  'SELECT  * FROM USER_TAB_COLUMNS WHERE '
                  'TABLE_NAME='#39'CADCHQ'#39
                  'select data_default from USER_TAB_COLUMNS where '
                  'TABLE_NAME=  '#39'CADCHQ'#39' and column_name= '
                  #39'CHBANCO'#39)
                TabOrder = 1
              end
            end
            object TabSheet24: TTabSheet
              Caption = 
                'Primeria sequencia alfanumerica ue falta(memo_fPrimeirasequencia' +
                'alfa)'
              ImageIndex = 17
              object memo_fPrimeirasequenciaalfa: TMemo
                Left = 0
                Top = 0
                Width = 576
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fPrimeirasequenciaalfa(ptabela in var' +
                    'char2, pcampo in varchar2,psigla in varchar2)'
                  'return varchar2  as'
                  ''
                  'begin'
                  'declare'
                  ''
                  'mVarTipoPed varchar2(300);'
                  'mcampo_encontrado varchar2(30);'
                  'mcampo_sufixo_valor varchar2(30);'
                  ''
                  'mcampo_sufixo_tamanho integer;'
                  'mcampo_antes_id integer;'
                  'mcampo_proximo_id integer;'
                  ''
                  'begin'
                  ''
                  ''
                  
                    'mVarTipoPed:='#39'select max('#39' || pcampo || '#39') from '#39' || ptabela || ' +
                    #39' where '#39'|| pcampo || '#39' like '#39#39#39' || psigla || '#39'%'#39#39'  order by len' +
                    'gth( '#39' ||  pcampo  || '#39' ) ,  '#39' || pcampo  ;'
                  ''
                  ''
                  ''
                  ''
                  'execute immediate mvartipoped into mcampo_encontrado;'
                  
                    'if (mcampo_encontrado is null) OR (length(mcampo_encontrado)<1) ' +
                    ' OR (length(mcampo_encontrado)=length(psigla)) then'
                  '   return psigla || '#39'1'#39';'
                  'else'
                  
                    '   mcampo_sufixo_valor := substr(mcampo_encontrado, length(psigl' +
                    'a)+1,length(mcampo_encontrado)-length(psigla));'
                  '   mcampo_sufixo_tamanho := length( mcampo_sufixo_valor );'
                  ''
                  '   mVarTipoPed:='#39' select * from ('#39';'
                  
                    '   mVarTipoPed:=mVarTipoPed || '#39'select substr('#39'  || pcampo || '#39',' +
                    ' '#39' ||  length(psigla) || '#39'+1 , '#39' || mcampo_sufixo_tamanho || '#39') ' +
                    'as seqexiste '#39';'
                  
                    '   mVarTipoPed:=mVarTipoPed || '#39', rownum as seqnova  from '#39' || p' +
                    'tabela || '#39' where '#39'|| pcampo || '#39' like '#39#39#39' || psigla || '#39'%'#39#39#39';'
                  '   mVarTipoPed:=mVarTipoPed || '#39' order by seqexiste '#39';'
                  
                    '   mVarTipoPed:=mVarTipoPed || '#39' ) where seqexiste<>seqnova and ' +
                    'rownum<2 '#39';'
                  ''
                  '--   return mVarTipoPed;'
                  ''
                  
                    '   execute immediate mvartipoped into mcampo_antes_id,mcampo_pro' +
                    'ximo_id;'
                  ''
                  '   if mcampo_proximo_id is null then'
                  '     return fproximasequenciaalfa(ptabela,pcampo,psigla);'
                  '   else'
                  
                    '      return psigla || lpad(mcampo_proximo_id,mcampo_sufixo_tama' +
                    'nho,'#39'0'#39');'
                  '   end if;'
                  ''
                  '--   return psigla || mcampo_proximo_id;'
                  ''
                  
                    '--   return psigla || '#39' mcampo_procimo id  '#39' || mcampo_proximo_i' +
                    'd || '#39' mcampo sufixo_tamanho '#39' || mcampo_sufixo_tamanho;'
                  'end if;'
                  ''
                  'end;'
                  'end;')
                TabOrder = 0
                WordWrap = False
              end
              object memo_fPrimeirasequenciaalfa_exemplo: TMemo
                Left = 576
                Top = 0
                Width = 282
                Height = 137
                Align = alRight
                Lines.Strings = (
                  'SELECT  * FROM USER_TAB_COLUMNS WHERE '
                  'TABLE_NAME='#39'CADCHQ'#39
                  'select data_default from USER_TAB_COLUMNS where '
                  'TABLE_NAME=  '#39'CADCHQ'#39' and column_name= '
                  #39'CHBANCO'#39)
                TabOrder = 1
              end
            end
            object tsPCrirSeqence: TTabSheet
              Caption = 'Procedure pCriarequence'
              ImageIndex = 18
              object Memo_pcriarsequence: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'CREATE OR REPLACE PROCEDURE pcriarsequence'
                  '   ( pTabela IN VARCHAR2)'
                  '   IS'
                  'BEGIN'
                  'DECLARE'
                  'vAno integer;'
                  'mcomando varchar2(500);'
                  ''
                  'CURSOR caddar_ano'
                  '    IS'
                  'SELECT ANO FROM ('
                  '   SELECT EXTRACT(YEAR FROM CRDTEMIS) as ano FROM CADDAR'
                  '   GROUP BY EXTRACT(YEAR FROM CRDTEMIS)'
                  'union all'
                  '   SELECT EXTRACT(YEAR FROM CADTEMIS) as ano FROM CADDAP'
                  '   GROUP BY EXTRACT(YEAR FROM CADTEMIS)'
                  ') GROUP BY ANO'
                  ''
                  'ORDER BY ANO;'
                  ''
                  'BEGIN'
                  ''
                  'OPEN caddar_ano;'
                  ''
                  'LOOP'
                  ''
                  'FETCH caddar_ano INTO vAno;'
                  '   EXIT WHEN caddar_ano%NOTFOUND;'
                  
                    '   mComando:='#39'create sequence '#39' || ptabela || vAno || '#39'start wit' +
                    'h 1 increment by 1 nocache'#39';'
                  '   execute immediate mComando;'
                  'END LOOP;'
                  'CLOSE caddar_ano;'
                  'END;'
                  'END; -- Procedure'
                  '')
                TabOrder = 0
                WordWrap = False
              end
            end
            object tsEstoqueAnterior: TTabSheet
              Caption = 'TsEstoqueAnterior'
              ImageIndex = 19
              object Memo_EstoqueAnterior: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fSaldoAnterior(pDataAnt in date, pCod' +
                    'pro in number, pFilial in number)'
                  ''
                  'return number'
                  ''
                  '  as'
                  ''
                  ''
                  ''
                  '  begin'
                  ''
                  '       declare mSaldoPro number;'
                  '       cursor saldo_filial is'
                  '       SELECT CMP_SALDO_ATU FROM'
                  '            ('
                  
                    '              SELECT CMP_DATHOR-SYSDATE, CMP_SALDO_ATU,CMP_DATHO' +
                    'R,CMP_ID,CMP_ID_ANO FROM CADMOV_PROD where CMP_CODPRO=pCodpro'
                  '              AND CMP_DATHOR<=pDataAnt and CMP_FILIAL=pfilial'
                  
                    '                ORDER BY CMP_DATHOR DESC, CMP_ID_ANO DESC, CMP_I' +
                    'D DESC'
                  '                ) WHERE ROWNUM<2;'
                  ''
                  'cursor saldo_geral is'
                  ''
                  'SELECT sum(CMP_SALDO_ATU) FROM ('
                  ''
                  ' SELECT'
                  
                    '      ROW_NUMBER() over (partition by cmp_filial order by cmp_fi' +
                    'lial) filial,'
                  '     cmp_filial,'
                  '      chave,'
                  '      CMP_SALDO_ATU'
                  '    FROM'
                  '    ('
                  ''
                  
                    'SELECT CMP_FILIAL, LPAD(CMP_ID_ANO,4,'#39'0'#39') || LPAD(CMP_ID,8,'#39'0'#39') ' +
                    'AS CHAVE,CMP_SALDO_ATU'
                  ''
                  'FROM CADMOV_PROD'
                  'where CMP_CODPRO=pcodpro AND CMP_DATHOR<=pDataAnt '
                  ''
                  '                ORDER BY CHAVE DESC'
                  '                )'
                  ''
                  ') WHERE FILIAL=1;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  '       begin'
                  ''
                  '     if pfilial=-1 then'
                  '        open saldo_geral;'
                  '        FETCH saldo_geral INTO mSaldoPro;'
                  '        if mSaldoPro is null then'
                  '           mSaldoPro:=0;'
                  '        end if;'
                  '        return mSaldoPro;'
                  '     else'
                  '        OPEN saldo_filial;'
                  '        FETCH saldo_filial INTO mSaldoPro;'
                  '        if mSaldoPro is null then'
                  '           mSaldoPro:=0;'
                  '        end if;'
                  '        return mSaldoPro;'
                  '     end if;'
                  ''
                  '    end;'
                  ''
                  ' end;'
                  ''
                  '')
                TabOrder = 0
                WordWrap = False
              end
            end
            object ts_pcriarestruturas_oracle: TTabSheet
              Caption = 'ts_pcriarestruturas_oracle'
              ImageIndex = 20
              object Memo_pcriarestruturas_oracle: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'CREATE OR REPLACE PROCEDURE pcriarestruturas_oracle(pId_Projeto ' +
                    'in  integer, pDatabase in varchar2 )'
                  'is'
                  'BEGIN'
                  'declare mNome_Tabela varchar2(100);'
                  '        mNomeCampo varchar2(100);'
                  '        mdadoscampo_cliente varchar2(30000);'
                  '        mdadoscampo_base varchar2(30000);'
                  '        mqtdtab integer(10);'
                  '        mordem int;'
                  ''
                  ' mtipotab integer default 0;'
                  ' mposicaotab integer default 0;'
                  ' mqtdtent integer default 0;'
                  ' morigem varchar2(100);'
                  ' mtabela varchar2(100);'
                  ' mindice varchar2(100);'
                  ' mcriar_cliente varchar2(30000);'
                  ' mdrop_cliente01 varchar2(30000);'
                  ' mdrop_cliente02 varchar2(30000);'
                  ' mcriar_base varchar2(30000);'
                  ' mErro varchar2(30000);'
                  ' pComando  varchar2(30000);'
                  ' mcomando varchar2(30000);'
                  ' mtabant varchar2(30000);'
                  ''
                  ''
                  ' pretorno varchar2(30000);'
                  'CURSOR cursor_campos_tabelas  IS'
                  ''
                  ''
                  ''
                  ''
                  'select * from  ('
                  ''
                  ''
                  '    select t3.*,'
                  ' case when  ('
                  
                    ' select count(*) from colunas where colunas.nome_tabela=t3.nome_' +
                    'tabela) >0 then 1'
                  'else 0 end as qtdtab from ('
                  ''
                  
                    '    select  t2.nome_tabela,nomecampo,max(nvl(dadoscampo,'#39#39')) as ' +
                    'dadoscampo_cliente,'
                  ' max(dadoscampos_base) as dadoscampos_base'
                  '    ,max(ordem) as ordem'
                  ' from ('
                  ''
                  
                    '    select '#39'cliente'#39' as origem, nome_tabela,nomecampo,dadoscampo' +
                    ','#39' '#39' as dadoscampos_base, 0 as ordem from colunas'
                  ' union all'
                  ''
                  
                    ' select '#39'base'#39' as origem, cec_nome_tabela as nome_tabela,cec_nom' +
                    'ecampo as nomecampo,'#39' '#39' as dadoscampo_cliente'
                  
                    ',cec_dadoscampo as dadoscampos_base,  cec_id as ordem from  c_es' +
                    't_campos'
                  ''
                  '    ) t2'
                  ''
                  'group by nome_tabela,nomecampo'
                  '    ) t3'
                  ''
                  
                    '     where nvl(dadoscampo_cliente,'#39' '#39')<>nvl(dadoscampos_base,'#39' '#39 +
                    ')'
                  ''
                  '   and nvl(dadoscampos_base,'#39' '#39')<>'#39' '#39
                  ') t4'
                  'where nvl(qtdtab,0)=mtipotab'
                  ''
                  'order by dadoscampos_base, ordem;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  'CURSOR cursor_indices  IS'
                  ''
                  ''
                  ''
                  
                    'select t7.origem,t7.tabela,t7.indice,t7.criar_cliente,t7.drop_cl' +
                    'iente01,t7.drop_cliente02,t7.criar_base'
                  'from ('
                  ''
                  ''
                  'select t6.* from ('
                  
                    'select max(origem) as origem,tabela,indice,max(criar_cliente) as' +
                    ' criar_cliente'
                  ',max(drop_cliente01) as drop_cliente01'
                  ',max(drop_cliente02) as drop_cliente02'
                  ',max(criar_base) as criar_base'
                  ',max(chave_primaria_base) as chave_primaria_base'
                  ''
                  'from ('
                  ''
                  'select '#39'cliente'#39' as origem, tabela as tabela, indice as indice'
                  ','
                  'case when chave_primaria='#39'P'#39' then'
                  ''
                  
                    '      '#39'alter table '#39' || tabela || '#39' modify '#39' || campos || '#39' '#39' ||' +
                    ' tipo || '#39' PRIMARY KEY '#39' || case when auto_increment='#39'S'#39' then  '#39 +
                    ' AUTO_INCREMENT '#39' else '#39' '#39' end || '#39';'#39
                  ''
                  'else'
                  
                    '      '#39'create '#39' ||  case when chave_primaria='#39'U'#39' then '#39' unique '#39 +
                    ' else '#39' '#39' end  ||  '#39' index '#39'  ||  indice ||  '#39' on '#39' || tabela ||' +
                    ' '#39' ('#39' || campos ||'#39') '#39
                  
                    '      || case when chave_primaria='#39'P'#39' then  '#39' PRIMARY KEY'#39' else ' +
                    #39' '#39' end'
                  
                    '      || case when auto_increment='#39'S'#39' then  '#39' AUTO_INCREMENT '#39' e' +
                    'lse '#39' '#39' end'
                  '      || '#39';'#39
                  'end'
                  ''
                  ' as criar_cliente'
                  ''
                  
                    ',case when chave_primaria='#39'P'#39' then '#39'ALTER TABLE '#39' || tabela || '#39 +
                    ' MODIFY '#39' || campos || '#39' '#39' || tipo|| '#39';'#39
                  
                    'else '#39'drop index '#39' || indice || '#39' on '#39' || tabela || '#39';'#39' end as d' +
                    'rop_cliente01'
                  ''
                  
                    ', case when chave_primaria='#39'P'#39' then '#39'alter table '#39' || tabela || ' +
                    #39'  DROP PRIMARY KEY;'#39
                  'else '#39' '#39' end as drop_cliente02'
                  ', '#39' '#39' as chave_primaria_base'
                  ','#39' '#39' as criar_base'
                  ''
                  ''
                  ''
                  'from ('
                  ''
                  
                    'select tabela,indice,max(chave_primaria) as chave_primaria,max(a' +
                    'uto_increment) as auto_increment'
                  ',max(tipo) as tipo'
                  ', max(nvl(campo01,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo02,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo02,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo03,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo03,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo04,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo04,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo05,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo05,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo06,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo06,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo07,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo07,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo08,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo08,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo09,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo09,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo10,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo10,'#39' '#39'))'
                  ''
                  
                    '|| case when max(nvl(campo11,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo11,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo12,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo12,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo13,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo13,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo14,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo14,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo15,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo15,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo16,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo16,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo17,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo17,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo18,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo18,'#39' '#39'))'
                  
                    '|| case when max(nvl(campo19,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, ma' +
                    'x(nvl(campo19,'#39' '#39'))'
                  
                    '||case when max(nvl(campo20,'#39' '#39'))='#39' '#39' then '#39' '#39' else '#39','#39' end, max' +
                    '(nvl(campo20,'#39' '#39'))'
                  ' as campos'
                  'from ('
                  ''
                  'select  table_name as tabela, index_name as indice,'
                  ''
                  'chave_primaria'
                  ''
                  ', tipo ||'
                  '          case WHEN tamanho>0 then'
                  
                    '             '#39'('#39' || tamanho || case when qtddec>0 then '#39','#39' || qt' +
                    'ddec  else '#39' '#39' end   ||'#39')'#39
                  '       else '#39' '#39' end'
                  '|| '#39' '#39
                  '|| case when notnull='#39'S'#39' then  '#39'NOT NULL '#39' else '#39' '#39' end'
                  '  as tipo'
                  ''
                  ',autoincrement as auto_increment'
                  
                    ',case when COLUMN_POSITION=1 then lower(column_name) else '#39' '#39' en' +
                    'd as campo01'
                  
                    ',case when COLUMN_POSITION=2 then lower(column_name) else '#39' '#39' en' +
                    'd as campo02'
                  
                    ',case when COLUMN_POSITION=3 then lower(column_name) else '#39' '#39' en' +
                    'd as campo03'
                  
                    ',case when COLUMN_POSITION=4 then lower(column_name) else '#39' '#39' en' +
                    'd as campo04'
                  
                    ',case when COLUMN_POSITION=5 then lower(column_name) else '#39' '#39' en' +
                    'd as campo05'
                  
                    ',case when COLUMN_POSITION=6 then lower(column_name) else '#39' '#39' en' +
                    'd as campo06'
                  
                    ',case when COLUMN_POSITION=7 then lower(column_name) else '#39' '#39' en' +
                    'd as campo07'
                  
                    ',case when COLUMN_POSITION=8 then lower(column_name) else '#39' '#39' en' +
                    'd as campo08'
                  
                    ',case when COLUMN_POSITION=9 then lower(column_name) else '#39' '#39' en' +
                    'd as campo09'
                  
                    ',case when COLUMN_POSITION=10 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo10'
                  ''
                  
                    ',case when COLUMN_POSITION=11 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo11'
                  
                    ',case when COLUMN_POSITION=12 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo12'
                  
                    ',case when COLUMN_POSITION=13 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo13'
                  
                    ',case when COLUMN_POSITION=14 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo14'
                  
                    ',case when COLUMN_POSITION=15 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo15'
                  
                    ',case when COLUMN_POSITION=16 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo16'
                  
                    ',case when COLUMN_POSITION=17 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo17'
                  
                    ',case when COLUMN_POSITION=18 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo18'
                  
                    ',case when COLUMN_POSITION=19 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo19'
                  
                    ',case when COLUMN_POSITION=20 then lower(column_name) else '#39' '#39' e' +
                    'nd as campo20'
                  ''
                  ''
                  ''
                  ''
                  'from  ALL_IND_COLUMNS ind_columns,colunas where'
                  'nome_tabela=table_name'
                  'and nomecampo=column_name'
                  'and table_owner=pDatabase'
                  ''
                  ') t1'
                  'group by  tabela,indice'
                  ') t2'
                  ''
                  ''
                  ''
                  'union all'
                  ''
                  ''
                  'select '#39'base'#39' as origem, cei_nome_tabela AS tabela'
                  ''
                  
                    ',case when cei_chave_primaria='#39'P'#39' then '#39'PRIMARY'#39' else  cei_nomei' +
                    'ndice  end as indice'
                  ''
                  ','#39' '#39' as criar_cliente,'
                  '  '#39'  '#39' as drop_cliente01'
                  ', '#39'  '#39' as drop_cliente02'
                  ',cei_chave_primaria as chave_primaria_base'
                  ',cei_criar as criar_base'
                  'from c_est_indices'
                  ''
                  ''
                  ') t5 group by tabela,indice'
                  ''
                  ') t6'
                  'where  criar_cliente<>criar_base'
                  'and length(nvl(criar_base,'#39' '#39'))>1'
                  ''
                  ') t7;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  '-- ******************** coluns  nao colocar procedimentos'
                  ''
                  'begin'
                  ''
                  ''
                  ''
                  ''
                  'pComando := '#39' drop table indices'#39';'
                  ''
                  ''
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  
                    'pComando := '#39'create table indices as select * from information_s' +
                    'chema.statistics estatistica where  estatistica.table_schema=pda' +
                    'tabase'#39';'
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  
                    'pComando := '#39'create index indices_chave on indices (table_schema' +
                    ',table_name,column_name,seq_in_index)'#39';'
                  ''
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  'pComando := '#39' drop table colunas '#39';'
                  ''
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  ''
                  '-- case when chave_primaria='#39'P'#39' then '#39' PRIMARY KEY'#39' else '#39#39' end'
                  ''
                  ''
                  
                    'pComando :='#39'create table colunas as select  NOMECAMPO || '#39#39' '#39#39' |' +
                    '| COLUMN_TYPE ||  CASE WHEN NOTNULL='#39#39'N'#39#39' THEN '#39#39' NOT NULL '#39#39' EL' +
                    'SE '#39#39' '#39#39' END'
                  '    || CASE WHEN NOT VALOR_default IS NULL THEN '#39#39'DEFAULT '#39#39' ||'
                  
                    '    CASE WHEN SUBSTR(VALOR_DEFAULT,1,1)='#39#39#39#39' THEN VALOR_DEFAULT ' +
                    'ELSE '#39#39#39#39' || RTRIM(VALOR_DEFAULT) || '#39#39#39#39' END'
                  '     ELSE '#39#39' '#39#39' END as dadoscampo ,'
                  'T4.*'
                  'FROM  ('
                  
                    'SELECT NOME_TABELA,TIPO || CASE WHEN QTDDEC > 0 THEN '#39#39'('#39#39' || TA' +
                    'MANHO ||'#39#39','#39#39' || QTDDEC || '#39#39')'#39#39
                  
                    '                        WHEN TAMANHO>0 THEN  '#39#39'('#39#39' || TAMANHO ||' +
                    ' '#39#39')'#39#39
                  '                        ELSE '#39#39#39#39' END AS COLUMN_TYPE'
                  
                    '    ,NOMECAMPO,TIPO,TAMANHO,QTDDEC,RTRIM(VALOR_DEFAULT,'#39#39' '#39#39') AS' +
                    ' VALOR_DEFAULT'
                  '    ,NOTNULL,AUTOINCREMENT,PRIMARY_KEY as chave_primaria'
                  '   FROM'
                  '(SELECT tab_columns.TABLE_NAME AS  NOME_TABELA'
                  ',tab_columns.DATA_TYPE AS TIPO'
                  ',tab_columns.COLUMN_NAME AS NOMECAMPO'
                  
                    ',case when DATA_TYPE='#39#39'NUMBER'#39#39' or DATA_TYPE='#39#39'DECIMAL'#39#39' then  c' +
                    'ase when  nvl(DATA_PRECISION ,0)>0 THEN DATA_PRECISION'
                  '                                         else 0 end'
                  
                    '      when DATA_TYPE='#39#39'LONG'#39#39' or DATA_TYPE='#39#39'LONG ROW'#39#39' or DATA_' +
                    'TYPE='#39#39'DATE'#39#39' then 0'
                  '      else DATA_LENGTH END as TAMANHO'
                  ',nvl(DATA_SCALE,0) AS QTDDEC'
                  ',case when data_default is null then '#39#39' '#39#39' else'
                  
                    'fgetlong_condicao('#39#39'user_tab_columns'#39#39','#39#39'data_default'#39#39','#39#39' where' +
                    ' table_name='#39#39' || '#39#39#39#39#39#39#39#39' ||  tab_columns.TABLE_NAME || '#39#39#39#39#39#39#39 +
                    #39'  || '#39#39' and COLUMN_NAME='#39#39' || '#39#39#39#39#39#39#39#39' || tab_columns.COLUMN_NA' +
                    'ME || '#39#39#39#39#39#39#39#39' )'
                  ' end'
                  ' AS VALOR_DEFAULT'
                  ',CASE WHEN NULLABLE='#39#39'Y'#39#39' THEN '#39#39'S'#39#39' ELSE '#39#39'S'#39#39' END AS NOTNULL'
                  ','#39#39'N'#39#39' AS AUTOINCREMENT'
                  
                    ',case when nvl(UNIQUENESS,'#39#39' '#39#39')='#39#39'UNIQUE'#39#39' then '#39#39'U'#39#39' else '#39#39'N'#39 +
                    #39' end as primary_key'
                  ' FROM USER_TAB_COLUMNS tab_columns'
                  ' ,ALL_IND_COLUMNS ind_columns'
                  ' ,ALL_INDEXES all_index'
                  ' where  ind_columns.table_name(+)=tab_columns.table_name'
                  '    and ind_columns.column_name(+)=tab_columns.column_name'
                  '    and ind_columns.index_owner(+)='#39#39'SGE_CORFEL'#39#39
                  '    and all_index.INDEX_NAME(+)=ind_columns.INDEX_NAME'
                  '    and all_index.table_owner(+)=ind_columns.index_owner'
                  '    and all_index.table_name(+)=ind_columns.table_name'
                  ') t3'
                  ') T4'
                  #39';'
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  '-- ********************************colunas'
                  ''
                  ''
                  
                    'pComando:='#39'create index colunas_chave on colunas (nome_tabela,no' +
                    'mecampo)'#39';'
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  ''
                  
                    'pComando:='#39'create index coluna_nome_tabela on colunas  (nome_tab' +
                    'ela)'#39';'
                  ''
                  'BEGIN'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 18 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  'BEGIN'
                  '    pcomando:='#39'drop temporary table if exists comando_temp'#39';'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 333 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  ''
                  'BEGIN'
                  
                    '    pcomando:='#39'create temporary table comando_temp(mid int prima' +
                    'ry key auto_increment ,mcomando longtext)'#39';'
                  '    execute immediate pComando;'
                  'EXCEPTION'
                  '    WHEN OTHERS THEN'
                  '    mErro := '#39'erro 342 ao executar comando '#39' || pcomando;'
                  '    RAISE;'
                  'END;'
                  ''
                  ''
                  ''
                  '-- leitura apenas das que nao possui tabela criadas'
                  ''
                  'mtipotab:=0;'
                  'open cursor_campos_tabelas;'
                  'mcomando:='#39#39';'
                  'mtabant:='#39#39';'
                  'pretorno:='#39#39';'
                  'loop'
                  
                    '    fetch cursor_campos_tabelas into mNome_Tabela,mNomeCampo,mda' +
                    'doscampo_cliente,mdadoscampo_base,mqtdtab,mordem;'
                  '    EXIT WHEN cursor_campos_tabelas%NOTFOUND;'
                  '    if mtabant<>mNome_Tabela then'
                  '       if mtabant<>'#39#39' then'
                  '          mcomando:=mcomando|| '#39')'#39';'
                  '          BEGIN'
                  
                    '             pcomando:='#39'insert into  comando_temp(mcomando) valu' +
                    'es (mcomando)'#39';'
                  '             execute immediate pComando;'
                  '          EXCEPTION'
                  '             WHEN OTHERS THEN'
                  
                    '             mErro := '#39'erro 410 ao executar comando '#39' || pcomand' +
                    'o;'
                  '             RAISE;'
                  '          END;'
                  #9#9#9'  '
                  '       end if;'
                  
                    '       mcomando:='#39'create table '#39' || mnome_tabela || '#39' ('#39' || mdad' +
                    'oscampo_base;'
                  '       mtabant:=mnome_tabela;'
                  '     else'
                  '        mcomando:= mcomando ||  '#39','#39' || mdadoscampo_base;'
                  '     end if;'
                  'end loop;'
                  ''
                  'if mcomando<>'#39#39' then'
                  '   mcomando:=mcomando || '#39')'#39';'
                  '   '
                  '   BEGIN'
                  '       pcomando:=mcomando;'
                  '       execute immediate pComando;'
                  '  EXCEPTION'
                  '       WHEN OTHERS THEN'
                  '       mErro := '#39'erro 430 ao executar comando '#39' || pcomando;'
                  '       RAISE;'
                  '   END;'
                  'end if;'
                  'close cursor_campos_tabelas;'
                  ''
                  '-- quando ja existir tabela'
                  ''
                  'mqtdtent:=0;'
                  ''
                  'mtipotab:=1;'
                  'open cursor_campos_tabelas;'
                  'mcomando:='#39#39';'
                  'mtabant:='#39#39';'
                  'pretorno:='#39#39';'
                  'mqtdtent:=0;'
                  ''
                  ' '
                  'LOOP'
                  
                    '    FETCH cursor_campos_tabelas into mNome_Tabela,mNomeCampo,mda' +
                    'doscampo_cliente,mdadoscampo_base,mqtdtab,mordem;'
                  '    mqtdtent:=mqtdtent+1;'
                  #9'EXIT WHEN cursor_campos_tabelas%NOTFOUND;'
                  '    if nvl(mdadoscampo_cliente,'#39' '#39')='#39' '#39' then'
                  
                    '       mcomando:='#39'alter table  '#39' || nvl(mNome_tabela,'#39'nometabela' +
                    'null'#39') || '#39' add '#39' || '#39' '#39' || nvl(mdadoscampo_base,'#39'camposbase nul' +
                    'l'#39');'
                  '    else'
                  
                    '       mcomando:='#39'alter table  '#39' || nvl(mNome_tabela,'#39'nometabela' +
                    'null'#39') || '#39' modify '#39' || '#39' '#39' ||  nvl(mdadoscampo_base,'#39'camposbase' +
                    ' null'#39');'
                  '    end if;'
                  '    BEGIN'
                  '       pcomando:=mcomando;'
                  '       execute immediate pComando;'
                  '    EXCEPTION'
                  '       WHEN OTHERS THEN'
                  '       mErro := '#39'erro 430 ao executar comando '#39' || pcomando;'
                  '       RAISE;'
                  #9'END;   '
                  ''
                  ''
                  'end loop;'
                  ''
                  'close cursor_campos_tabelas;'
                  ''
                  '-- termino'
                  '-- indices'
                  ''
                  ''
                  'open cursor_indices;'
                  ''
                  'mcomando:='#39#39';'
                  'loop'
                  
                    '    fetch cursor_indices into morigem,mtabela,mindice,mcriar_cli' +
                    'ente,mdrop_cliente01,mdrop_cliente02,mcriar_base;'
                  #9'mqtdtent:=mqtdtent+1;'
                  '    EXIT WHEN cursor_indices%NOTFOUND;'#9
                  '    mcomando:='#39#39';'
                  '    if length( nvl(mcriar_base,'#39' '#39'))>4 then'
                  '       if length( nvl(mdrop_cliente01,'#39' '#39'))>4 then'
                  '          mcomando:=mdrop_cliente01;'
                  '          BEGIN'
                  '             pcomando:=mcomando;'
                  '          execute immediate pComando;'
                  '             EXCEPTION'
                  '             WHEN OTHERS THEN'
                  
                    '             mErro := '#39'erro 491 ao executar comando '#39' || pcomand' +
                    'o;'
                  '             RAISE;'
                  #9#9'  END; '#9' '
                  '       end if;'
                  '    if length( nvl(mdrop_cliente02,'#39' '#39'))>4 then'
                  '       mcomando:=mdrop_cliente02;'
                  '       BEGIN'
                  '          pcomando:=mcomando;'
                  '       execute immediate pComando;'
                  '          EXCEPTION'
                  '          WHEN OTHERS THEN'
                  '          mErro := '#39'erro 491 ao executar comando '#39' || pcomando;'
                  '          RAISE;'
                  #9#9'END;  '
                  ''
                  '     end if;'
                  ' if length( nvl(mcriar_base,'#39' '#39'))>4 then'
                  '    mcomando:=mcriar_base;'
                  '    BEGIN'
                  '       pcomando:=mcomando;'
                  '    execute immediate pComando;'
                  '       EXCEPTION'
                  '       WHEN OTHERS THEN'
                  '       mErro := '#39'erro 512 ao executar comando '#39' || pcomando;'
                  '       RAISE;'
                  #9'END;   '
                  '  end if;'
                  '  end if;'
                  ''
                  ''
                  'end loop;'
                  ''
                  ''
                  ''
                  '-- termino indices'
                  ''
                  '-- select pretorno as retorno from dual;'
                  ''
                  ''
                  ''
                  ''
                  'end;'
                  'end;')
                TabOrder = 0
                WordWrap = False
              end
            end
            object ts_fTratarDefault: TTabSheet
              Caption = 'ts_fTratarDefault'
              ImageIndex = 21
              object Memo_fTratarDefault: TMemo
                Left = 0
                Top = 0
                Width = 858
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fTratarDefault ( pdata_type varchar2,' +
                    ' pvalor varchar2 ) return varchar2 IS'
                  ''
                  '    begin'
                  '    declare mvalor varchar2(1000);'
                  '    begin'
                  ''
                  '    mvalor := trim(translate(pvalor,'#39#39#39#39','#39' '#39'));'
                  '    if mvalor is null then'
                  '         mvalor:='#39#39';'
                  '      elsif pdata_type='#39'VARCHAR2'#39' then'
                  '         mvalor := '#39#39#39#39' ||  mvalor ||  '#39#39#39#39';'
                  '      end if;'
                  '    if mvalor is null then'
                  '       return '#39' '#39';'
                  '    else  '
                  '       return '#39' default '#39' ||  mvalor;'
                  '    end if;  '
                  ''
                  '    end;'
                  'end;'
                  '')
                TabOrder = 0
                WordWrap = False
              end
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Tabela Temporaria'
          ImageIndex = 14
          object memo_tabela_temporaria: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              'CREATE GLOBAL TEMPORARY TABLE temp01'
              '(codpro number,p2l_lote varchar2(20)'
              ' ,p2l_dtvcto date,qtd_ant number(15,3)'
              ' , qtd_estqoue number(15,3)'
              ' ,linha number)'
              ''
              ''
              ''
              
                'insert into temp01 (codpro,p2l_lote,p2l_dtvcto,qtd_ant, qtd_estq' +
                'oue,linha)'
              'select codpro,p2l_lote,p2l_dtvcto'
              '      ,sum(qtd_ant) as qtd_ant   '
              '      ,sum(qtd_estoque) as qtd_estoque'
              
                '      ,ROW_NUMBER() OVER(PARTITION BY '#39's'#39' ORDER BY p2l_dtvcto,p2' +
                'l_lote) LINHA'
              '      '
              '       from ('
              '       select CLCODPRO as codpro'
              '             ,NVL(CLNUMERO,'#39'X'#39') as p2l_lote'
              '             ,CLDTVCTO as p2l_dtvcto'
              '             ,0 as qtd_ant'
              '             , CLQTD as qtd_estoque'
              '             from CADLGC where CLCODPRO=48'
              '             and CLCODEMP=1'
              '             '
              '             union all'
              '             select 1 as codpro'
              '             ,'#39'X'#39' as p2l_lote'
              '             ,null  as p2l_dtvcto'
              '              ,0 as qtd_ant'
              '             ,  9999999999 as qtd_estoque'
              '                  from dual'
              ''
              '                  ) g4'
              'group by codpro,p2l_dtvcto,p2l_lote'
              ''
              'order by p2l_dtvcto,p2l_lote                  '
              ''
              ''
              ''
              ''
              ''
              '')
            TabOrder = 0
          end
        end
        object tsNovasTriggers: TTabSheet
          Caption = 'Novas Triggers'
          ImageIndex = 15
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            ActivePage = tsCaddar
            Align = alClient
            TabOrder = 0
            object tsCaddar: TTabSheet
              Caption = 'Trigger Caddar'
              object Memo_trigger_caddar_desativada: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'CREATE OR REPLACE TRIGGER CADDAR_TRIG_EVE01 BEFORE DELETE OR INS' +
                    'ERT ON CADDAR'
                  'FOR EACH ROW'
                  'BEGIN'
                  'DECLARE mCodNov integer;'
                  ''
                  'BEGIN'
                  'IF DELETING THEN'
                  ''
                  
                    'CREATE OR REPLACE TRIGGER CADDAR_TRIG_EVE01 AFTER DELETE  ON CAD' +
                    'DAR  FOR EACH ROW'
                  '      BEGIN'
                  
                    '      IF DELETING THEN    insert into CADDAR_EVE       ( CRCODEM' +
                    'P        ,CRDATHOR_EVE        ,CRLOCAL    ,CRCHAVEP'
                  
                    '           ,CRORDEMP        ,CRLOTSEQ        ,CRNUMERO        ,C' +
                    'RDESD    ,CRDUP        ,CRDTEMIS'
                  
                    '           ,CRNOMEPCLOGADO    ,CRNOMEUSRLOGADO    ,CRCHAVE_ID   ' +
                    ' ,CRCHAVE_ID_ANO'
                  '           ,CRPROGRAMAORIGEM    ) values'
                  
                    '           (       :OLD.CRCODEMP       ,SYSDATE       ,'#39'TRIGGER'#39 +
                    '      ,:OLD.CRNPED    ,:OLD.CRORDEM'
                  
                    '           ,:OLD.CRLOTSEQ_CP       ,:OLD.CRNUMERO       ,:OLD.CR' +
                    'DESD    ,:OLD.CRDUP'
                  
                    '           ,:OLD.CRDTEMIS    ,sys_context('#39'USERENV'#39','#39'SESSION_USE' +
                    'R'#39')'
                  
                    '           ,(select userenv('#39'TERMINAL'#39') from dual)    ,:OLD.CRCH' +
                    'AVE_ID'
                  '           ,:OLD.CRCHAVE_ID_ANO    ,'#39' '#39'    );'
                  '           END IF;'
                  '           END;'
                  '   );'
                  'END IF;'
                  '   BEGIN'
                  '      IF INSERTING THEN'
                  '         select   SEQ_CADDAR.NEXTVAL into mcodNov from dual;'
                  '         :NEW.CRSEQ:=mCodNov;'
                  '      END IF;'
                  '   END;'
                  'END;'
                  'END;'
                  ''
                  '')
                TabOrder = 0
              end
            end
            object tsCaddap: TTabSheet
              Caption = 'Caddap'
              ImageIndex = 1
              object Memo_trigger_caddap_desativada: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'CREATE OR REPLACE TRIGGER CADDAP_TRIG_EVE01 BEFORE INSERT ON CAD' +
                    'DAP'
                  'FOR EACH ROW'
                  'BEGIN'
                  'DECLARE mCodNov integer;'
                  ''
                  'BEGIN'
                  '   BEGIN'
                  '      IF INSERTING THEN'
                  '         select   SEQ_CADDAP.NEXTVAL into mcodNov from dual;'
                  '         :NEW.CPSEQ:=mCodNov;'
                  '      END IF;'
                  '   END;'
                  'END;'
                  'END;')
                TabOrder = 0
              end
            end
            object TabSheet28: TTabSheet
              Caption = 'Cadldr'
              ImageIndex = 2
              object Memo_trigger_cadldr: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  'CREATE OR REPLACE TRIGGER CADLDR_TRIG01 BEFORE UPDATE OR DELETE'
                  ''
                  'ON CADLDR'
                  ''
                  'FOR EACH ROW'
                  'DECLARE ALTERANDO NUMBER DEFAULT 1;'
                  ''
                  'BEGIN'
                  '   IF UPDATING THEN'
                  '      ALTERANDO:=1;'
                  '   END IF;'
                  ''
                  '   BEGIN'
                  ''
                  '         INSERT INTO CADLDR_EVENTOS ('
                  '                   CODEMP'
                  '                   ,CE_ID_NEW'
                  '                   ,CE_ID_LDR_NEW'
                  '                  ,DATADP'
                  '                  ,LOTSEQ'
                  '                  ,CODLDR'
                  '                  ,DATAREAL'
                  '                  ,DATAREF'
                  '                  ,VALORP'
                  '                  ,VALORR'
                  '                  ,CODBCO'
                  '                  ,CODCC'
                  '                  ,CODDEP'
                  '                  ,NATDC'
                  '                  ,DESCMV'
                  '                  ,NUMDOC'
                  '                  ,NUMDOC2'
                  '                  ,STATUS'
                  '                  ,ORIGEM'
                  '                  ,LOCDEP'
                  '                  ,TIPO'
                  '                  ,CODIGO'
                  '                  ,USRALT'
                  '                  ,DTALT'
                  '                  ,DATLAN'
                  '                  ,HRALT'
                  '                  ,COMPENS'
                  '                  ,USREXC'
                  '                  ,DTHREXC'
                  '                  ,NOMDEP'
                  '                  ,NOMBCO'
                  '                  ,NOMCCU'
                  '                  ,NOME'
                  '                  ,DTCOMP'
                  '                  ,LOTMOV'
                  '                  ,LEMAT'
                  '                  ,VINCULO'
                  '                  ,CODECF'
                  '                  ,DTSALDO'
                  '                  ,FC_OBSFIN'
                  '                  ,CODUSR_CX'
                  '                  ,DATCONC'
                  '                  ,FC_COMPETENCIA_TIPO'
                  '                  ,FC_COMPETENCIA_DTINICIO'
                  '                  ,FC_COMPETENCIA_CH_CONTRATO'
                  '                  ,FC_DATA_HORA_EVENTO'
                  '                  ,FC_TIPO_DO_EVENTO'
                  '                  ) values ('
                  '                   :OLD.CODEMP'
                  '                   ,CADLDR_EVENTOS_SEQ.NEXTVAL'
                  '                   ,:OLD.LDR_ID_NEW'
                  '                  ,:OLD.DATADP'
                  '                  ,:OLD.LOTSEQ'
                  '                  ,:OLD.CODLDR'
                  '                  ,:OLD.DATAREAL'
                  '                  ,:OLD.DATAREF'
                  '                  ,:OLD.VALORP'
                  '                  ,:OLD.VALORR'
                  '                  ,:OLD.CODBCO'
                  '                  ,:OLD.CODCC'
                  '                  ,:OLD.CODDEP'
                  '                  ,:OLD.NATDC'
                  '                  ,:OLD.DESCMV'
                  '                  ,:OLD.NUMDOC'
                  '                  ,:OLD.NUMDOC2'
                  '                  ,:OLD.STATUS'
                  '                  ,:OLD.ORIGEM'
                  '                  ,:OLD.LOCDEP'
                  '                  ,:OLD.TIPO'
                  '                  ,:OLD.CODIGO'
                  '                  ,:OLD.USRALT'
                  '                  ,:OLD.DTALT'
                  '                  ,:OLD.DATLAN'
                  '                  ,:OLD.HRALT'
                  '                  ,:OLD.COMPENS'
                  '                  ,:OLD.USREXC'
                  '                  ,:OLD.DTHREXC'
                  '                  ,:OLD.NOMDEP'
                  '                  ,:OLD.NOMBCO'
                  '                  ,:OLD.NOMCCU'
                  '                  ,:OLD.NOME'
                  '                  ,:OLD.DTCOMP'
                  '                  ,:OLD.LOTMOV'
                  '                  ,:OLD.LEMAT'
                  '                  ,:OLD.VINCULO'
                  '                  ,:OLD.CODECF'
                  '                  ,:OLD.DTSALDO'
                  '                  ,:OLD.FC_OBSFIN'
                  '                  ,:OLD.CODUSR_CX'
                  '                  ,:OLD.DATCONC'
                  '                  ,:OLD.FC_COMPETENCIA_TIPO'
                  '                  ,:OLD.FC_COMPETENCIA_DTINICIO'
                  '                  ,:OLD.FC_COMPETENCIA_CH_CONTRATO'
                  '                  ,SYSDATE'
                  
                    '                  ,CASE WHEN ALTERANDO=1 THEN '#39'Alteracao Novos: ' +
                    ' Valor Real '#39
                  '                           || to_char(:NEW.VALORR)'
                  '                           || '#39' Data Real '#39
                  
                    '                           || to_char(:NEW.datareal, '#39'DD/MM/YYYY' +
                    #39')'
                  '                           || '#39' banco '#39' || to_char(:NEW.codbco)'
                  
                    '                        ELSE '#39'****EXCLUSAO DE REGISTRO*******'#39' e' +
                    'nd'
                  '                  );'
                  ''
                  ''
                  '   END;'
                  ''
                  'END;'
                  ''
                  ''
                  ''
                  ''
                  ''
                  '')
                TabOrder = 0
              end
            end
            object tsTriggerCadPf: TTabSheet
              Caption = 'CADPF1 (cadpf_eve)'
              ImageIndex = 3
              object Memo_trigger_cadpf_eve: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    '                          CREATE OR REPLACE TRIGGER CADPF_EVE_TR' +
                    'IG_EVE01 AFTER DELETE  ON CADPF1  FOR EACH ROW '
                  'BEGIN IF DELETING THEN    '
                  '    insert into CADPF_EVE       ('
                  '   PFID,'
                  '  PFCODEMP,'
                  '  PFDATHOR_EVE,'
                  '  PFLOCAL,'
                  '  PFCHAVEP,'
                  '  PFCODEMPP,'
                  '  PFLOTSEQP,'
                  '  PFNOMEPCLOGADO,'
                  '  PFNOMEUSRLOGADO,'
                  '  PFPROGRAMAORIGEM)'
                  ''
                  ' values (       '
                  ' CADPF_EVE_SEQ.NEXTVAL'
                  ' ,:OLD.PF1CODEMP'
                  ' ,SYSDATE       '
                  ' ,'#39'TRIGGER'#39'      '
                  ' ,:OLD.PF1CHAVE'
                  ' ,:OLD.PF1CODEMP'
                  ' ,:OLD.PF1LOTSEQ'
                  ' ,'#39'TRIGGER'#39
                  ' ,sys_context('#39'USERENV'#39','#39'SESSION_USER'#39')    '
                  ' ,(select userenv('#39'TERMINAL'#39') from dual)  );    '
                  ' END IF; '
                  ' END;'
                  '')
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet21: TTabSheet
          Caption = 'Novos comandos recmed'
          ImageIndex = 16
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            ActivePage = tsEstatisticas
            Align = alClient
            TabOrder = 0
            object tsEstatisticas: TTabSheet
              Caption = 'Trigger Caddar'
              object Memo_Estatistica: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  ''
                  ''
                  'SELECT SUM(venda_total) AS venda_total'
                  ''
                  '   ,round(SUM(venda_mes_atual),2) AS venda_mes_atual'
                  '   ,sum(comis_mes_atual) as comis_mes_atual'
                  '   ,sum(qtdped_atual) as qtdped_atual'
                  ''
                  
                    '   ,round( (sum(venda_mes_atual) / (sum(qtdped_atual))),2) as  t' +
                    'icket_medio_atual'
                  '   '
                  
                    '   ,fqtdclimes(to_char(ADD_MONTHS(sysdate,-1), '#39'mm/yyyy'#39'),248) a' +
                    's qtdcli_atual'
                  
                    '   ,fqtdVendaPromMesAtual(to_char(ADD_MONTHS(sysdate,-1), '#39'mm/yy' +
                    'yy'#39'),248)  as qtdpro_atual'
                  '   '
                  ''
                  '   ,round(SUM(venda_mes_anterior),2) AS venda_mes_anterior  '
                  '   ,sum(comis_mes_anterior) as comis_mes_anterior'
                  '  '
                  '   ,sum(qtdped_anterior) as qtdped_anterior'
                  
                    '   ,round( (sum(venda_mes_anterior) / (sum(qtdped_anterior))),2)' +
                    ' as  ticket_medio_anterior'
                  ''
                  
                    '   ,fqtdclimes(to_char(ADD_MONTHS(sysdate,-1), '#39'mm/yyyy'#39'),248) a' +
                    's qtdcli_anterior'
                  
                    '   ,fqtdVendaPromMesAtual(to_char(ADD_MONTHS(sysdate,-1), '#39'mm/yy' +
                    'yy'#39'),248)  as qtdpro_anterior'
                  ''
                  ''
                  ''
                  ''
                  '   '
                  
                    '   ,round(SUM(vdaprim_sexta),2) AS vdaprim_sexta       ,round(SU' +
                    'M(vdaprim_quinta),2) AS vdaprim_quinta    '
                  
                    '   ,round(SUM(vdaprim_quarta),2) AS vdaprim_quarta       ,round(' +
                    'SUM(vdaprim_terca),2) AS vdaprim_terca    '
                  
                    '   ,round(SUM(vdaprim_segunda),2) AS vdaprim_segunda       ,roun' +
                    'd(SUM(vdaprim_domingo),2) AS vdaprim_domingo     '
                  
                    '   ,round(SUM(vdaprim_sabado),2) AS vdaprim_sabado       ,round(' +
                    'SUM(vdaseg_domingo),2) AS vdaseg_domingo   '
                  
                    '   ,round(SUM(vdaseg_sexta),2) AS vdaseg_sexta       ,round(SUM(' +
                    'vdaseg_quinta),2) AS vdaseg_quinta'
                  
                    '   ,round(SUM(vdaseg_quarta),2) AS vdaseg_quarta       ,round(SU' +
                    'M(vdaseg_terca),2) AS vdaseg_terca    '
                  
                    '   ,round(SUM(vdaseg_segunda),2) AS vdaseg_segunda       ,round(' +
                    'SUM(vdaseg_sabado),2) AS vdaseg_sabado  '
                  
                    '   ,round(SUM(COMISSAO_TOTAL),2) AS COMISSAO_TOTAL       ,round(' +
                    'SUM(comissao_mes_atual),2) AS comissao_mes_atual'
                  
                    '   ,round(SUM(comissao_mes_anterior),2) AS comissao_mes_anterior' +
                    '       ,round(SUM(comprim_sexta),2) AS comprim_sexta'
                  
                    '   ,round(SUM(comprim_quinta),2) AS comprim_quinta       ,round(' +
                    'SUM(comprim_quarta),2) AS comprim_quarta      '
                  
                    '   ,round(SUM(comprim_terca),2) AS comprim_terca       ,round(SU' +
                    'M(comprim_segunda),2) AS comprim_segunda     '
                  
                    '   ,round(SUM(comprim_domingo),2) AS comprim_domingo       ,roun' +
                    'd(SUM(comprim_sabado),2) AS comprim_sabado     '
                  
                    '   ,round(SUM(comseg_sexta),2) AS comseg_sexta       ,round(SUM(' +
                    'comseg_quinta),2) AS comseg_quinta       ,round(SUM(comseg_quart' +
                    'a),2) AS comseg_quarta    '
                  
                    '   ,round(SUM(comseg_terca),2) AS comseg_terca       ,round(SUM(' +
                    'comseg_segunda),2) AS comseg_segunda       ,round(SUM(comseg_dom' +
                    'ingo),2) AS comseg_domingo   '
                  '   ,round(SUM(comseg_sabado),2) AS comseg_sabado FROM'
                  '   ('
                  '     SELECT NVL(SUM(P1TOTNOT),0) AS VENDA_TOTAL'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN P1TOTNOT else 0 end),0) as venda_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN P1TOTCOM else 0 end),0) as comis_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN 1 else 0 end),0) as qtdped_atual'
                  ''
                  ''
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTNOT else 0 end),0) as venda_mes_ant' +
                    'erior'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN 1 else 0 end),0) as qtdped_anterior   '
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTCOM else 0 end),0) as comis_mes_ant' +
                    'erior'
                  ''
                  '   '
                  '   '
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))) then P1TOTNOT else 0 end),0) as vdaprim_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-1) then P1TOTNOT else 0 end),0) as vdaprim_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-2) then P1TOTNOT else 0 end),0) as vdaprim_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-3) then P1TOTNOT else 0 end),0) as vdaprim_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-4) then P1TOTNOT else 0 end),0) as vdaprim_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-5) then P1TOTNOT else 0 end),0) as vdaprim_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-6) then P1TOTNOT else 0 end),0) as vdaprim_sabado'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-7) then P1TOTNOT else 0 end),0) as vdaseg_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-8) then P1TOTNOT else 0 end),0) as vdaseg_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-9) then P1TOTNOT else 0 end),0) as vdaseg_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-10) then P1TOTNOT else 0 end),0) as vdaseg_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-11) then P1TOTNOT else 0 end),0) as vdaseg_segunda'
                  
                    '  , NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-12) then P1TOTNOT else 0 end),0) as vdaseg_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-13) then P1TOTNOT else 0 end),0) as vdaseg_sabado'
                  
                    '   ,NVL(SUM(P1TOTNOT),0) AS COMISSAO_TOTAL,NVL(sum(case when TO_' +
                    'CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'MM'#39') THEN P1TOTNOT else 0 ' +
                    'end),0) as comissao_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTNOT else 0 end),0) as comissao_mes_' +
                    'anterior'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))) then P1TOTNOT else 0 end),0) as comprim_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-1) then P1TOTNOT else 0 end),0) as comprim_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-2) then P1TOTNOT else 0 end),0) as comprim_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-3) then P1TOTNOT else 0 end),0) as comprim_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-4) then P1TOTNOT else 0 end),0) as comprim_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-5) then P1TOTNOT else 0 end),0) as comprim_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-6) then P1TOTNOT else 0 end),0) as comprim_sabado'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-7) then P1TOTNOT else 0 end),0) as comseg_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-8) then P1TOTNOT else 0 end),0) as comseg_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-9) then P1TOTNOT else 0 end),0) as comseg_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-10) then P1TOTNOT else 0 end),0) as comseg_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-11) then P1TOTNOT else 0 end),0) as comseg_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-12) then P1TOTNOT else 0 end),0) as comseg_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-13) then P1TOTNOT else 0 end),0) as comseg_sabado '
                  '   from ped01  pedido01'
                  
                    '   where P1DTEMIS>=TO_DATE('#39'01/'#39' || TO_CHAR( ADD_MONTHS(SYSDATE,' +
                    '-1), '#39'MM/YYYY'#39')) and P1CODVEN=248 AND P1VDORD='#39'N'#39' UNION ALL '
                  '   SELECT NVL(SUM(P1TOTNOT),0) AS VENDA_TOTAL'
                  ''
                  ''
                  ''
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN P1TOTNOT else 0 end),0) as venda_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN P1TOTCOM else 0 end),0) as comis_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'M' +
                    'M'#39') THEN 1 else 0 end),0) as qtdped_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTNOT else 0 end),0) as venda_mes_ant' +
                    'erior'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN 1 else 0 end),0) as qtdped_anterior   '
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTCOM else 0 end),0) as comis_mes_ant' +
                    'erior'
                  ''
                  '   '
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))) then P1TOTNOT else 0 end),0) as vdaprim_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-1) then P1TOTNOT else 0 end),0) as vdaprim_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-2) then P1TOTNOT else 0 end),0) as vdaprim_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-3) then P1TOTNOT else 0 end),0) as vdaprim_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-4) then P1TOTNOT else 0 end),0) as vdaprim_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-5) then P1TOTNOT else 0 end),0) as vdaprim_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-6) then P1TOTNOT else 0 end),0) as vdaprim_sabado'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-12) then P1TOTNOT else 0 end),0) as vdaseg_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-7) then P1TOTNOT else 0 end),0) as vdaseg_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-8) then P1TOTNOT else 0 end),0) as vdaseg_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-9) then P1TOTNOT else 0 end),0) as vdaseg_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-10) then P1TOTNOT else 0 end),0) as vdaseg_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-11) then P1TOTNOT else 0 end),0) as vdaseg_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-13) then P1TOTNOT else 0 end),0) as vdaseg_sabado'
                  
                    '   ,NVL(SUM(P1TOTNOT),0) AS COMISSAO_TOTAL,NVL(sum(case when TO_' +
                    'CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(SYSDATE,'#39'MM'#39') THEN P1TOTNOT else 0 ' +
                    'end),0) as comissao_mes_atual'
                  
                    '   ,NVL(sum(case when TO_CHAR(P1DTEMIS, '#39'MM'#39')=TO_CHAR(ADD_MONTHS' +
                    '(SYSDATE,-1),'#39'MM'#39') THEN P1TOTNOT else 0 end),0) as comissao_mes_' +
                    'anterior'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))) then P1TOTNOT else 0 end),0) as comprim_sexta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-1) then P1TOTNOT else 0 end),0) as comprim_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-2) then P1TOTNOT else 0 end),0) as comprim_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-3) then P1TOTNOT else 0 end),0) as comprim_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-4) then P1TOTNOT else 0 end),0) as comprim_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-5) then P1TOTNOT else 0 end),0) as comprim_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-6) then P1TOTNOT else 0 end),0) as comprim_sabado'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-7) then P1TOTNOT else 0 end),0) as comseg_sexta'
                  
                    '   ,NVL(SUM(CASE    WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SY' +
                    'SDATE, '#39'd'#39')))-8) then P1TOTNOT else 0 end),0) as comseg_quinta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-9) then P1TOTNOT else 0 end),0) as comseg_quarta'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-10) then P1TOTNOT else 0 end),0) as comseg_terca'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-11) then P1TOTNOT else 0 end),0) as comseg_segunda'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-12) then P1TOTNOT else 0 end),0) as comseg_domingo'
                  
                    '   ,NVL(SUM(CASE WHEN P1DTEMIS=(TO_DATE(SYSDATE+(6-TO_CHAR(SYSDA' +
                    'TE, '#39'd'#39')))-13) then P1TOTNOT else 0 end),0) as comseg_sabado '
                  '   from recmed_bsb.ped01 pedido01 where P1DTEMIS>=TO_DATE('#39'01/'#39
                  
                    '   || TO_CHAR( ADD_MONTHS(SYSDATE,-1), '#39'MM/YYYY'#39')) AND P1CODVEN=' +
                    '248 AND P1VDORD='#39'N'#39' )'
                  '   '
                  '   '
                  '   '
                  '')
                TabOrder = 0
              end
            end
            object ts_function_fqtdcli: TTabSheet
              Caption = 'Funcion fqtdcli'
              ImageIndex = 1
              object Memo_function_fqtdcli: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fqtdclimes(pmesano varchar2, pcodven ' +
                    'number) return integer is'
                  'begin'
                  'declare mqtdcli integer;'
                  'begin'
                  'select sum(qtdcli) into mqtdcli from ('
                  
                    'select count(unique p1codcli) as qtdcli from ped01 where P1VDORD' +
                    '='#39'N'#39' and P1CODVEN=pcodven'
                  'and P1DTEMIS>=TO_DATE('#39'01/'#39' || pmesano)'
                  'and P1DTEMIS<=ADD_MONTHS( TO_DATE('#39'01/'#39' || pmesano),1)-1'
                  'union all'
                  
                    'select count(unique p1codcli) as qtdcli from recmed_bsb.ped01 wh' +
                    'ere P1VDORD='#39'N'#39' and P1CODVEN=pcodven'
                  'and P1DTEMIS>=TO_DATE('#39'01/'#39' || pmesano)'
                  'and P1DTEMIS<=ADD_MONTHS( TO_DATE('#39'01/'#39' || pmesano),1)-1'
                  ');'
                  'return mqtdcli;'
                  'end;'
                  'end;')
                TabOrder = 0
              end
            end
            object tsFunction_fQtdPro: TTabSheet
              Caption = 'tsFunction_fQtdPro'
              ImageIndex = 2
              object memo_function_fqtdpro: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'create or replace function fqtdVendaPromMesAtual(pmesano varchar' +
                    '2, pcodven number) return integer is'
                  'begin'
                  'declare mqtdpro integer;'
                  'begin'
                  'select  sum(qtdpro) into mqtdpro  from ('
                  
                    'select count(unique P2CODPRO) as qtdpro from ped01,ped02 where p' +
                    '2numero=p1numero and p2ordem=p1ordem and P1VDORD='#39'N'#39' and P1CODVE' +
                    'N=pcodven'
                  'and P1DTEMIS>=TO_DATE('#39'01/'#39' || pmesano)'
                  'and P1DTEMIS<=ADD_MONTHS( TO_DATE('#39'01/'#39' || pmesano),1)-1'
                  'union all'
                  
                    'select count(unique P2CODPRO) as qtdpro from recmed_bsb.ped01,re' +
                    'cmed_bsb.ped02 where p2numero=p1numero and p2ordem=p1ordem and P' +
                    '1VDORD='#39'N'#39' and P1CODVEN=pcodven'
                  'and P1DTEMIS>=TO_DATE('#39'01/'#39' || pmesano)'
                  'and P1DTEMIS<=ADD_MONTHS( TO_DATE('#39'01/'#39' || pmesano),1)-1'
                  ');'
                  'return mqtdpro;'
                  'end;'
                  'end;'
                  '')
                TabOrder = 0
              end
            end
            object TabSheet22: TTabSheet
              Caption = 'Estoque de Produtos'
              ImageIndex = 3
              object Memo_Estoque: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'select PDCODPRO,max(PDNOME) AS PDNOME,MAX(PDMARCA) AS PDMARCA,MA' +
                    'X(PDUND) AS PDUND,SUM(PDSALDOL) AS PDSALDOL'
                  'FROM ('
                  
                    'select PDCODPRO,PDNOME,PDMARCA,PDUND,NVL(PDSALDOL,0) PDSALDOL fr' +
                    'om cadpro'
                  'WHERE PDULTENT>SYSDATE-4'
                  'UNION ALL '
                  
                    'select PDCODPRO,PDNOME,PDMARCA,PDUND,NVL(PDSALDOL,0) AS PDSALDOL' +
                    ' from RECMED_BSB.cadpro'
                  'WHERE PDULTENT>SYSDATE-4'
                  ')'
                  'GROUP BY PDCODPRO'
                  'ORDER BY PDNOME')
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet25: TTabSheet
          Caption = 'Procedures de Baixar Duplicatas'
          ImageIndex = 17
          object PageControl5: TPageControl
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            ActivePage = ts_FBAIXARTITULO
            Align = alClient
            TabOrder = 0
            object ts_FBAIXARTITULO: TTabSheet
              Caption = 'Procedure FBAIXARTITULO'
              object Memo_FBAIXARTITULO: TMemo
                Left = 0
                Top = 0
                Width = 1100
                Height = 137
                Align = alClient
                Lines.Strings = (
                  
                    'CREATE OR REPLACE PROCEDURE FBAIXARTITULO(pNumeroDup in NUMBER, ' +
                    'pDup in number'
                  '             , pcodemp in number, pdtemis in date'
                  '       , pcodecf in number'
                  
                    '             ,pdesd in string,pcodcai in number,pcodusr in numbe' +
                    'r, pdtpag in date, pdtbx in date, pvalorpago in number'
                  '             ,pdesc in number, pjuros in number'
                  '       ,psaida out varchar)'
                  '  is'
                  'BEGIN'
                  '   declare pldr_nombco VARCHAR2(60);'
                  '        pldr_nomdep VARCHAR2(60);'
                  '        pldr_nomccu VARCHAR2(60);'
                  '        pldr_nome VARCHAR2(60);'
                  '        pldr_natdc VARCHAR2(01);'
                  '        pldr_codccu VARCHAR2(10);'
                  '        pldr_coddep VARCHAR2(10);'
                  '        pldr_descmov VARCHAR2(60);'
                  '        pldr_doc VARCHAR2(10);'
                  '        pldr_codcai NUMBER;'
                  ''
                  '   mLoteBx   number;'
                  '   mCodFPCRDup number;'
                  '   mCodFPCR number;'
                  '   mcodldr number;'
                  '   mvalortitulo number;'
                  '   mforma number;'
                  '   mvinculo number;'
                  '   mnomeforma varchar(20);'
                  ''
                  '   mdtvcto date;'
                  '   mcodcli number;'
                  '   mcodven number;'
                  '   mnr varchar(20);'
                  '   mchave number;'
                  ''
                  '   BEGIN'
                  '   psaida:='#39'entrou '#39';'
                  ''
                  '   mnomeforma:='#39'DINHEIRO'#39';'
                  '   mvinculo:=0;'
                  
                    '   select max(fpcodigo) INTO mforma from cadfp where FPDESC=mnom' +
                    'eforma;'
                  '   if mforma is null  then'
                  
                    '      select min(fpcodigo) INTO mforma from cadfp where FPVINCUL' +
                    'O=0;'
                  '   end if; '#9'  '
                  ''
                  ''
                  '   pldr_codcai:=pcodcai;'
                  '   if pldr_codcai=0 or pldr_codcai is null then'
                  '      pldr_codcai:=1;'
                  '   end IF;'
                  ''
                  '   '
                  
                    '   select MAX(CRDTVCTO),MAX(CRCODCLI),MAX(CRVALOR),MAX(CRCODVEN)' +
                    ',MAX(CRNPED) into mdtvcto,mcodcli,mvalortitulo,mcodven,mchave fr' +
                    'om caddar'
                  '   where CRNUMERO=pNumeroDup'
                  '   and CRDUP=pDup'
                  '   and CRDESD=pdesd'
                  '   AND CRCODEMP=pcodemp'
                  '   AND CRDTEMIS=pdtemis;'
                  ''
                  ''
                  ''
                  ''
                  
                    '    select max(BCBANCO) into pldr_nombco from CADBCO where BCCOD' +
                    'BCO=pldr_codcai;'
                  '    if trim(pldr_nombco)='#39#39' or pldr_nombco is null then'
                  
                    '       select max(BCBANCO) into pldr_nombco from CADBCO where  B' +
                    'CCODBCO=pldr_codcai;'
                  '    end IF;'
                  ''
                  '    if trim(pldr_nombco)='#39#39' then'
                  '        pldr_nombco:='#39'NAO ENCONTRADO '#39'+to_char(pldr_codcai);'
                  '    end IF;'
                  '    if pdup=5 then'
                  '       BEGIN'
                  '       pldr_doc:='#39'CADDARD'#39';'
                  '       Select max('
                  '       CASE WHEN LENGTH(CNOMCCD)>1 THEN CNOMCCD else'
                  '        ( Select max(NOME) from PARLDR where CDOC=pldr_doc) end'
                  '         )'
                  '           ,max('
                  '           CASE WHEN LENGTH(CCODCCD)>1 THEN CCODCCD else'
                  
                    '             ( Select max(CODCC) from PARLDR where CDOC=pldr_doc' +
                    ') end'
                  '              )'
                  '             ,max('
                  '             CASE WHEN LENGTH(CCODDEPD)>1 THEN CCODDEPD else'
                  
                    '             ( Select max(CODDEP) from PARLDR where CDOC=pldr_do' +
                    'c) end'
                  
                    '              ) into pldr_descmov,pldr_codccu,pldr_coddep from C' +
                    'ADCLI where CCODCLI=mcodcli;'
                  ''
                  '          EXCEPTION'
                  '              WHEN OTHERS THEN'
                  '              pldr_descmov:=null;'
                  '              RAISE;'
                  '         END;'
                  '      else'
                  '         BEGIN'
                  ''
                  '         Select max('
                  '            CASE WHEN LENGTH(CNOMCCC)>1 THEN CNOMCCC else'
                  
                    '            ( Select max(NOME) from PARLDR where CDOC=pldr_doc) ' +
                    'end'
                  '             )'
                  '            ,max('
                  '            CASE WHEN LENGTH(CCODCCC)>1 THEN CCODCCC else'
                  
                    '            ( Select max(CODCC) from PARLDR where CDOC=pldr_doc)' +
                    ' end'
                  '             )'
                  '            ,max('
                  '            CASE WHEN LENGTH(CCODDEPC)>1 THEN CCODDEPC else'
                  
                    '            ( Select max(CODDEP) from PARLDR where CDOC=pldr_doc' +
                    ') end'
                  
                    '             ) into pldr_descmov,pldr_codccu,pldr_coddep from CA' +
                    'DCLI where CCODCLI=mcodcli;'
                  ''
                  '         EXCEPTION'
                  '          WHEN OTHERS THEN'
                  '          pldr_descmov:='#39'NAO ACHADO'#39';'
                  '          pldr_codccu:=null;'
                  
                    '      --   RAISE_APPLICATION_ERROR(-20000, '#39'ATRIBUIU NULO'#39' ||  m' +
                    'ExisteDup );'
                  '          RAISE;'
                  '         END;'
                  '      end IF;'
                  ''
                  ''
                  ''
                  ''
                  '      if not pldr_codccu is null then'
                  '         BEGIN'
                  
                    '         Select max(CCNOME),max(CCNAT) into pldr_nomccu,pldr_nat' +
                    'dc from CADCCU where CCCODCCU=pldr_codccu;'
                  '         EXCEPTION'
                  '          WHEN OTHERS THEN'
                  '          pldr_nomccu:=null;'
                  '          RAISE;'
                  ''
                  '         END;'
                  '      END IF;'
                  ''
                  '      if pldr_nomccu is null then'
                  '         BEGIN'
                  
                    '         Select max(CCNOME) into pldr_nomccu from CADCCU where C' +
                    'CCODCCU=pldr_codccu;'
                  '         EXCEPTION'
                  '          WHEN OTHERS THEN'
                  '          pldr_nomccu:='#39'NAO ENCONTRADO'#39';'
                  '          RAISE;'
                  '         END;'
                  '      end IF;'
                  ''
                  ''
                  '      if not pldr_coddep is null then'
                  '         BEGIN'
                  
                    '         Select nvl( max(DNOME), '#39'NAO ENC'#39') into pldr_nomdep fro' +
                    'm CADDEP where DCODEMP=1'
                  '            and DCODDEP=pldr_coddep;'
                  '          EXCEPTION'
                  '           WHEN OTHERS THEN'
                  '           pldr_nomdep:='#39'NAOENC'#39';'
                  '           RAISE;'
                  ''
                  '          END;'
                  ''
                  '         if pldr_nomdep is null then'
                  '            BEGIN'
                  
                    '            Select max(DNOME) into pldr_nomdep from CADDEP where' +
                    ' DCODDEP=pldr_coddep;'
                  '            EXCEPTION'
                  '             WHEN OTHERS THEN'
                  '            pldr_nomdep:='#39'NAO ENCONTRADO'#39';'
                  '            RAISE;'
                  '            END;'
                  '         end IF;'
                  '      end IF;'
                  ''
                  ''
                  ''
                  ''
                  '      mLoteBx:=0;'
                  '    mcodldr:=0;'
                  '       '
                  ''
                  ''
                  ''
                  ''
                  ''
                  '      mnr      :=TO_CHAR(SYSDATE,'#39'DDMMYYYY'#39');'
                  '         BEGIN'
                  
                    '         select PLOTBCR,PCFPCRDUP,PCODFPCR into mLoteBx,mCodFPCR' +
                    'Dup,mCodFPCR from CADpar where pcodemp=1 and PCODSEQ=1;'
                  
                    '         Update CADPAR set PLOTBCR=PLOTBCR+1,PCFPCRDUP=PCFPCRDUP' +
                    '+1,PCODFPCR=PCODFPCR+1 where pcodemp=1 and PCODSEQ=1;'
                  '         EXCEPTION'
                  '            WHEN OTHERS THEN'
                  '            mLoteBx  :=0;'
                  '            mCodFPCRDup :=0;'
                  '            mCodFPCR :=0;'
                  '            RAISE;'
                  '         END;'
                  ''
                  '      if mcodldr=0 then'
                  
                    '         select max(PCODLDR) into mcODLDR from CADpar where pcod' +
                    'emp=1 and PCODSEQ=1;'
                  
                    '         Update CADPAR set PCODLDR=PCODLDR+1 where pcodemp=1 and' +
                    ' PCODSEQ=1;'
                  '      end if;'
                  '      -- INICIO'
                  ''
                  '      if mcodcli=1 then '
                  
                    #9'     SELECT max(CFRAZAO) into pldr_nome FROM CADCSF WHERE CFLOT' +
                    'SEQ=0 AND CFCHAVEP=mchave;'
                  #9'  end if; '#9' '
                  #9'  if pldr_nome IS null then '
                  
                    '        SELECT CRAZAO  into pldr_nome FROM CADCLI WHERE CCODCLI=' +
                    'mcodcli;'
                  #9'  end if;'#9' '
                  ''
                  ''
                  ''
                  ''
                  
                    '      MERGE INTO CADLDR USING (Select nvl(pldr_nome,'#39'nulo'#39') as d' +
                    'NOME,  pldr_codcai as dCODBCO, pldr_codccu as dCODCC, pldr_codde' +
                    'p as dCODDEP, pcodecf as dCODECF, pcodemp as dCODEMP,'
                  
                    '      mcodcli as dCODIGO, mcodldr as dCODLDR, pcodusr as dCODUSR' +
                    '_CX, 1 as dCOMPENS, mdtvcto as dDATADP, pdtpag as dDATAREAL,'
                  
                    '      pdtemis as dDATAREF, TO_DATE(SYSDATE) as dDATLAN, pldr_des' +
                    'cmov as dDESCMV, TO_DATE(SYSDATE) as dDTSALDO, '#39' '#39' as dFC_OBSFIN' +
                    ', 0 as dLEMAT, 2 as dLOCDEP,'
                  
                    '      0 as dLOTMOV, 0 as dLOTSEQ, pldr_natdc as dNATDC, pldr_nom' +
                    'bco as dNOMBCO, TO_CHAR(PNumeroDup) as dNUMDOC, '#39'DINHEIRO'#39' as dN' +
                    'UMDOC2, 0 as dORIGEM, 0 as dSTATUS,'
                  
                    '       '#39'CL'#39' as dTIPO, mvalortitulo as dVALORP, pValorPago as dVA' +
                    'LORR, 0 as dVINCULO from dual'
                  
                    '      ) d  on ( CADLDR.CODEMP = dCODEMP and  CADLDR.CODLDR = dCO' +
                    'DLDR)'
                  '       WHEN MATCHED THEN'
                  '       UPDATE SET'
                  '       NOME=d.dNOME'
                  '      , CODBCO=d.dCODBCO'
                  '      , CODCC=d.dCODCC'
                  '      , CODDEP=d.dCODDEP'
                  '      , CODECF=d.dCODECF'
                  '      , CODIGO=d.dCODIGO'
                  '      , CODUSR_CX=d.dCODUSR_CX'
                  '      , COMPENS=d.dCOMPENS'
                  '      , DATADP=d.dDATADP'
                  '      , DATAREAL=d.dDATAREAL'
                  '      , DATAREF=d.dDATAREF'
                  '      , DATLAN=d.dDATLAN'
                  '      , DESCMV=d.dDESCMV'
                  '      , DTSALDO=d.dDTSALDO'
                  '      , FC_OBSFIN=d.dFC_OBSFIN'
                  '      , LEMAT=d.dLEMAT'
                  '      , LOCDEP=d.dLOCDEP'
                  '      , LOTMOV=d.dLOTMOV'
                  '      , LOTSEQ=d.dLOTSEQ'
                  '      , NATDC=d.dNATDC'
                  '      , NOMBCO=d.dNOMBCO'
                  '      , NUMDOC=d.dNUMDOC'
                  '      , NUMDOC2=d.dNUMDOC2'
                  '      , ORIGEM=d.dORIGEM'
                  '      , STATUS=d.dSTATUS'
                  '      , TIPO=d.dTIPO'
                  '      , VALORP=d.dVALORP'
                  '      , VALORR=d.dVALORR'
                  '      , VINCULO=d.dVINCULO'
                  '       WHEN NOT MATCHED THEN'
                  '       INSERT ('
                  '       NOME'
                  '      , CODBCO'
                  '      , CODCC'
                  '      , CODDEP'
                  '      , CODECF'
                  '      , CODEMP'
                  '      , CODIGO'
                  '      , CODLDR'
                  '      , CODUSR_CX'
                  '      , COMPENS'
                  '      , DATADP'
                  '      , DATAREAL'
                  '      , DATAREF'
                  '      , DATLAN'
                  '      , DESCMV'
                  '      , DTSALDO'
                  '      , FC_OBSFIN'
                  '      , LEMAT'
                  '      , LOCDEP'
                  '      , LOTMOV'
                  '      , LOTSEQ'
                  '      , NATDC'
                  '      , NOMBCO'
                  '      , NUMDOC'
                  '      , NUMDOC2'
                  '      , ORIGEM'
                  '      , STATUS'
                  '      , TIPO'
                  '      , VALORP'
                  '      , VALORR'
                  '      , VINCULO'
                  '       ) values  ('
                  '       d.dNOME'
                  '      ,d.dCODBCO'
                  '      ,d.dCODCC'
                  '      ,d.dCODDEP'
                  '      ,d.dCODECF'
                  '      ,d.dCODEMP'
                  '      ,d.dCODIGO'
                  '      ,d.dCODLDR'
                  '      ,d.dCODUSR_CX'
                  '      ,d.dCOMPENS'
                  '      ,d.dDATADP'
                  '      ,d.dDATAREAL'
                  '      ,d.dDATAREF'
                  '      ,d.dDATLAN'
                  '      ,d.dDESCMV'
                  '      ,d.dDTSALDO'
                  '      ,d.dFC_OBSFIN'
                  '      ,d.dLEMAT'
                  '      ,d.dLOCDEP'
                  '      ,d.dLOTMOV'
                  '      ,d.dLOTSEQ'
                  '      ,d.dNATDC'
                  '      ,d.dNOMBCO'
                  '      ,d.dNUMDOC'
                  '      ,d.dNUMDOC2'
                  '      ,d.dORIGEM'
                  '      ,d.dSTATUS'
                  '      ,d.dTIPO'
                  '      ,d.dVALORP'
                  '      ,d.dVALORR'
                  '      ,d.dVINCULO'
                  '      );'
                  ''
                  ''
                  '      -- TERMINO'
                  ''
                  ''
                  '      if mLoteBx>0 then'
                  '         if (mCodFPCRDUP is NULL) or (mcodFPCRDUP=0)  then'
                  '            BEGIN'
                  
                    '               select MAX(PCFPCRDUP) into mCodFPCRDUP from CADpa' +
                    'r where PCODSEQ=1;'
                  
                    '               Update CADPAR set PCFPCRDUP=PCFPCRDUP+1 where PCO' +
                    'DSEQ=1;'
                  '            EXCEPTION'
                  '                WHEN OTHERS THEN'
                  '                mCodFPCRDUP :=0;'
                  '                RAISE;'
                  '            END;'
                  '         end if;'
                  ''
                  ''
                  '      -- INICIO FPCRDUP'
                  
                    '         MERGE INTO FPCRDUP USING (Select  pldr_codcai as dFPCAI' +
                    'XA, mcodcli as dFPCODCLI, pcodecf as dFPCODECF, pcodemp as dFPCO' +
                    'DEMP, pcodusr as dFPCODUSR, mcodven as dFPCODVEN, TO_DATE(pDtPag' +
                    ') '
                  
                    '         as dFPDATPAG, 0 as dFPDESC, pdesd as dFPDESD, 0 as dFPD' +
                    'EVOL, TO_DATE(pDtbx) as dFPDTBX, TO_DATE(pDtemis) as dFPDTEMIS, ' +
                    'TO_DATE(mdtvcto) as dFPDTVCTO, pcodemp as dFPDUP_CODEMP, 0 as '
                  
                    '         dFPJUROS, 0 as dFPLEMAT, mLoteBx as dFPLOTE, 0 as dFPLO' +
                    'TSEQ, mNr as dFPNR, PNumeroDup as dFPNUMERO, mCodFPCRDUP as dFPS' +
                    'EQ, pdup as dFPTIPO,  mvalortitulo as dFPVALDUP, pvalorpago as '
                  'dFPVALOR, '
                  '         0 as dFPVLRIPI, 0 as dFPVLRST from dual'
                  
                    '           ) d  on ( FPCRDUP.FPLOTE = dFPLOTE and  FPCRDUP.FPLOT' +
                    'SEQ = dFPLOTSEQ and  FPCRDUP.FPSEQ = dFPSEQ)'
                  '          WHEN MATCHED THEN'
                  '          UPDATE SET'
                  '          FPCAIXA=d.dFPCAIXA'
                  '         , FPCODCLI=d.dFPCODCLI'
                  '         , FPCODECF=d.dFPCODECF'
                  '         , FPCODEMP=d.dFPCODEMP'
                  '         , FPCODUSR=d.dFPCODUSR'
                  '         , FPCODVEN=d.dFPCODVEN'
                  '         , FPDATPAG=d.dFPDATPAG'
                  '         , FPDESC=d.dFPDESC'
                  '         , FPDESD=d.dFPDESD'
                  '         , FPDEVOL=d.dFPDEVOL'
                  '         , FPDTBX=d.dFPDTBX'
                  '         , FPDTEMIS=d.dFPDTEMIS'
                  '         , FPDTVCTO=d.dFPDTVCTO'
                  '         , FPDUP_CODEMP=d.dFPDUP_CODEMP'
                  '         , FPJUROS=d.dFPJUROS'
                  '         , FPLEMAT=d.dFPLEMAT'
                  '         , FPNR=d.dFPNR'
                  '         , FPNUMERO=d.dFPNUMERO'
                  '         , FPTIPO=d.dFPTIPO'
                  '         , FPVALDUP=d.dFPVALDUP'
                  '         , FPVALOR=d.dFPVALOR'
                  '         , FPVLRIPI=d.dFPVLRIPI'
                  '         , FPVLRST=d.dFPVLRST'
                  '          WHEN NOT MATCHED THEN'
                  '          INSERT ('
                  '          FPCAIXA'
                  '         , FPCODCLI'
                  '         , FPCODECF'
                  '         , FPCODEMP'
                  '         , FPCODUSR'
                  '         , FPCODVEN'
                  '         , FPDATPAG'
                  '         , FPDESC'
                  '         , FPDESD'
                  '         , FPDEVOL'
                  '         , FPDTBX'
                  '         , FPDTEMIS'
                  '         , FPDTVCTO'
                  '         , FPDUP_CODEMP'
                  '         , FPJUROS'
                  '         , FPLEMAT'
                  '         , FPLOTE'
                  '         , FPLOTSEQ'
                  '         , FPNR'
                  '         , FPNUMERO'
                  '         , FPSEQ'
                  '         , FPTIPO'
                  '         , FPVALDUP'
                  '         , FPVALOR'
                  '         , FPVLRIPI'
                  '         , FPVLRST'
                  '          ) values  ('
                  '         d.dFPCAIXA'
                  '         ,d.dFPCODCLI'
                  '         ,d.dFPCODECF'
                  '         ,d.dFPCODEMP'
                  '         ,d.dFPCODUSR'
                  '         ,d.dFPCODVEN'
                  '         ,d.dFPDATPAG'
                  '         ,d.dFPDESC'
                  '         ,d.dFPDESD'
                  '         ,d.dFPDEVOL'
                  '         ,d.dFPDTBX'
                  '         ,d.dFPDTEMIS'
                  '         ,d.dFPDTVCTO'
                  '         ,d.dFPDUP_CODEMP'
                  '         ,d.dFPJUROS'
                  '         ,d.dFPLEMAT'
                  '         ,d.dFPLOTE'
                  '         ,d.dFPLOTSEQ'
                  '         ,d.dFPNR'
                  '         ,d.dFPNUMERO'
                  '         ,d.dFPSEQ'
                  '         ,d.dFPTIPO'
                  '         ,d.dFPVALDUP'
                  '         ,d.dFPVALOR'
                  '         ,d.dFPVLRIPI'
                  '         ,d.dFPVLRST'
                  '         );'
                  '      -- TERMINO FPCRDUP'
                  ''
                  ''
                  ''
                  ''
                  '         if (mCodFPCR is NULL) or (mCodFPCR=0) then'
                  '            BEGIN'
                  
                    '            select MAX(PCODFPCR) into mCodFPCR from CADpar where' +
                    ' pcodemp=1 and PCODSEQ=1;'
                  
                    '            Update CADPAR set PCODFPCR=PCODFPCR+1 where pcodemp=' +
                    '1 and PCODSEQ=1;'
                  '            EXCEPTION'
                  '             WHEN OTHERS THEN'
                  '             mCodFPCR :=0;'
                  '             RAISE;'
                  '             END;'
                  '         end if;'
                  ''
                  '            BEGIN'
                  '      -- inicio fpcr'
                  
                    '            MERGE INTO FPCR USING (Select  0 as dFPBANCO, pldr_c' +
                    'odcai as dFPCAIXA, 0 as dFPCC, mcodcli as dFPCODCLI, pcodemp as ' +
                    'dFPCODEMP'
                  '            , mCodLDR as dFPCODLDR, pcodusr as dFPCODUSR_CX'
                  '            , pdtpag as dFPDATA, null as dFPDATDEP'
                  '            , 0 as dFPDEV_CODECF'
                  '            , 0 as dFPDEV_CODEMP'
                  '            , 0 as dFPDEV_DESD'
                  '            , null as dFPDEV_DTEMIS'
                  '            , 0 as dFPDEV_DUP'
                  '            , 0 as dFPDEV_NUMERO'
                  
                    '            , mforma as dFPFORMA, 0 as dFPLEMAT, mLoteBx as dFPL' +
                    'OTE, 0 as dFPLOTSEQ, 0 as dFPLOTSEQ_FC, 0 as dFPNATUREZA, mNr as' +
                    ' dFPNR'
                  
                    '            , 0 as dFPNUMERO, mCodFPCR as dFPSEQ, '#39' '#39' as dFPSERI' +
                    'E, 0 as dFPTIPO, pvalorpago as dFPVALOR, mvinculo as dFPVINCULO ' +
                    'from dual'
                  
                    '            ) d  on ( FPCR.FPCODEMP = dFPCODEMP and  FPCR.FPLOTS' +
                    'EQ = dFPLOTSEQ and  FPCR.FPSEQ = dFPSEQ)'
                  '             WHEN MATCHED THEN'
                  '             UPDATE SET'
                  '             FPBANCO=d.dFPBANCO'
                  '            , FPCAIXA=d.dFPCAIXA'
                  '            , FPCC=d.dFPCC'
                  '            , FPCODCLI=d.dFPCODCLI'
                  '            , FPCODLDR=d.dFPCODLDR'
                  '            , FPCODUSR_CX=d.dFPCODUSR_CX'
                  '            , FPDATA=d.dFPDATA'
                  '            , FPDATDEP=d.dFPDATDEP'
                  '            , FPDEV_CODECF=d.dFPDEV_CODECF'
                  '            , FPDEV_CODEMP=d.dFPDEV_CODEMP'
                  '            , FPDEV_DESD=d.dFPDEV_DESD'
                  '            , FPDEV_DTEMIS=d.dFPDEV_DTEMIS'
                  '            , FPDEV_DUP=d.dFPDEV_DUP'
                  '            , FPDEV_NUMERO=d.dFPDEV_NUMERO'
                  '            , FPFORMA=d.dFPFORMA'
                  '            , FPLEMAT=d.dFPLEMAT'
                  '            , FPLOTE=d.dFPLOTE'
                  '            , FPLOTSEQ_FC=d.dFPLOTSEQ_FC'
                  '            , FPNATUREZA=d.dFPNATUREZA'
                  '            , FPNR=d.dFPNR'
                  '            , FPNUMERO=d.dFPNUMERO'
                  '            , FPSERIE=d.dFPSERIE'
                  '            , FPTIPO=d.dFPTIPO'
                  '            , FPVALOR=d.dFPVALOR'
                  '            , FPVINCULO=d.dFPVINCULO'
                  '             WHEN NOT MATCHED THEN'
                  '             INSERT ('
                  '             FPBANCO'
                  '            , FPCAIXA'
                  '            , FPCC'
                  '            , FPCODCLI'
                  '            , FPCODEMP'
                  '            , FPCODLDR'
                  '            , FPCODUSR_CX'
                  '            , FPDATA'
                  '            , FPDATDEP'
                  '            , FPDEV_CODECF'
                  '            , FPDEV_CODEMP'
                  '            , FPDEV_DESD'
                  '            , FPDEV_DTEMIS'
                  '            , FPDEV_DUP'
                  '            , FPDEV_NUMERO'
                  '            , FPFORMA'
                  '            , FPLEMAT'
                  '            , FPLOTE'
                  '            , FPLOTSEQ'
                  '            , FPLOTSEQ_FC'
                  '            , FPNATUREZA'
                  '            , FPNR'
                  '            , FPNUMERO'
                  '            , FPSEQ'
                  '            , FPSERIE'
                  '            , FPTIPO'
                  '            , FPVALOR'
                  '            , FPVINCULO'
                  '             ) values  ('
                  '            d.dFPBANCO'
                  '            ,d.dFPCAIXA'
                  '            ,d.dFPCC'
                  '            ,d.dFPCODCLI'
                  '            ,d.dFPCODEMP'
                  '            ,d.dFPCODLDR'
                  '            ,d.dFPCODUSR_CX'
                  '            ,d.dFPDATA'
                  '            ,d.dFPDATDEP'
                  '            ,d.dFPDEV_CODECF'
                  '            ,d.dFPDEV_CODEMP'
                  '            ,d.dFPDEV_DESD'
                  '            ,d.dFPDEV_DTEMIS'
                  '            ,d.dFPDEV_DUP'
                  '            ,d.dFPDEV_NUMERO'
                  '            ,d.dFPFORMA'
                  '            ,d.dFPLEMAT'
                  '            ,d.dFPLOTE'
                  '            ,d.dFPLOTSEQ'
                  '            ,d.dFPLOTSEQ_FC'
                  '            ,d.dFPNATUREZA'
                  '            ,d.dFPNR'
                  '            ,d.dFPNUMERO'
                  '            ,d.dFPSEQ'
                  '            ,d.dFPSERIE'
                  '            ,d.dFPTIPO'
                  '            ,d.dFPVALOR'
                  '            ,d.dFPVINCULO'
                  '            );'
                  '            END;'
                  '      -- INICIO CADDAR'
                  ''
                  '         update CADDAR set'
                  '          CRDESCMV=pldr_descmov'
                  '         , CRDTBX=pdtbx'
                  '         , CRDTPAG=pdtpag'
                  '         , CRNATDC=pldr_natdc'
                  '         , CRNOMCC=pldr_nomccu'
                  '         , CRNOMCTA=pldr_nombco'
                  '         , CRNOMDEP=pldr_nomdep'
                  '         , CRNOMFPGTO=mnomeforma'
                  '         , CRNR=mnr'
                  
                    '         , CRSTATUS=case when ((nvl(pvalorpago,0)+nvl(crvalpag,0' +
                    ')+nvl(crdesc,0)+nvl(pdesc,0))-(nvl(crjuros,0)+nvl(pjuros,0)))>=c' +
                    'rvalor then 2 else 1 end'
                  '         , CRUSRBX=pcodusr'
                  '         , CRVALPAG=nvl(CRVALPAG,0)+nvl(pValorPago,0)'
                  '         , CRDESC=nvl(CRDESC,0)+nvl(pdesc,0)'
                  '         , CRJUROS=nvl(CRJUROS,0)+nvl(pjuros,0)'
                  '         where CRNUMERO=pNumeroDup'
                  '         and CRDUP=pDup'
                  '         and CRDESD=pdesd'
                  '         AND CRCODEMP=pcodemp'
                  '         AND CRDTEMIS=pdtemis;'
                  ''
                  '      end if;'
                  '    pSaida:='#39'ok'#39'; '#9'  '
                  '   end;'
                  'END;')
                TabOrder = 0
              end
            end
          end
        end
        object ts_FCADCONTAS_IMAGEM: TTabSheet
          Caption = 'FCADCONTAS_IMAGEM'
          ImageIndex = 18
          object Memo_FCADCONTAS_IMAGEM: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace function FCADCONTAS_IMAGEM (pchave_ano integer' +
                ',pchave integer, pcodemp integer) return varchar2 IS'
              ''
              ''
              ''
              'BEGIN'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'declare mvirg varchar(03);'
              ''
              ''
              ''
              ' msai_seq integer;'
              ''
              ''
              ''
              ' msai_obs varchar2(254);'
              ''
              ''
              ''
              ' msai_imagem_link varchar2(400);'
              ''
              ''
              ''
              ' msai_nomeori varchar2(254);'
              ''
              ''
              ''
              ' jSonRetorno varchar2(30000);'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'cursor cursor_cadcontas_imagem is'
              ''
              ''
              ''
              'select CTAI_SEQ,CTAI_OBS,CTAI_IMAGEM_LINK,CTAI_NOMARQ'
              ''
              ''
              ''
              'from CADCONTAS_IMAGEM'
              ''
              ''
              ''
              'WHERE CTAI_CHAVE=pchave and'
              ''
              '      CTAI_CHAVE_ANO=pchave_ano and CTAI_CODEMP_FILIAL=pcodemp;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'begin'
              ''
              ''
              ''
              'mvirg:='#39' '#39';'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'OPEN  cursor_cadcontas_imagem;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'jSonRetorno:='#39#39';'
              ''
              ''
              ''
              'LOOP'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              
                'FETCH  cursor_cadcontas_imagem INTO msai_seq,msai_obs,msai_image' +
                'm_link,msai_nomeori;'
              ''
              ''
              ''
              '   EXIT WHEN cursor_cadcontas_imagem%NOTFOUND;'
              ''
              ''
              ''
              '   '
              ''
              ''
              ''
              '      jSonRetorno:=jSonRetorno || mvirg || '#39'{ '#39
              ''
              ''
              ''
              #9#9#9'|| '#39' "SEQ":'#39' || '#39'"'#39' || NVL(msai_seq,0) || '#39'"'#39
              ''
              ''
              ''
              #9#9#9'|| '#39',"OBS":'#39' || '#39'"'#39' || nvl(msai_obs,'#39#39') || '#39'"'#39
              ''
              ''
              ''
              #9#9#9'|| '#39',"LINK":'#39' ||'#39'"'#39' || nvl(msai_imagem_link,'#39#39') || '#39'"'#39
              ''
              ''
              ''
              #9#9#9'|| '#39',"NOMEORI":'#39' ||'#39'"'#39' || nvl(msai_nomeori,'#39#39') || '#39'"'#39
              ''
              ''
              ''
              #9#9#9'|| '#39'}'#39';'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '    mvirg:='#39' , '#39';'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'END LOOP;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'CLOSE cursor_cadcontas_imagem;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'if jSonRetorno='#39#39' then'
              ''
              ''
              ''
              '   return jSonRetorno;'
              ''
              ''
              ''
              'else   '
              ''
              ''
              ''
              '   return '#39'['#39' || jSonRetorno || '#39']'#39';'
              ''
              ''
              ''
              'end if;'#9#9' '#9' '
              ''
              ''
              ''
              'end;'
              ''
              ''
              ''
              'end;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '')
            TabOrder = 0
          end
        end
        object ts_fcadcontas_eventos: TTabSheet
          Caption = 'ts_fcadcontas_eventos'
          ImageIndex = 19
          object memo_fcadcontas_eventos: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE or replace function FCADCONTAS_EVENTOS (pCodEmp integer, ' +
                'pchave_Id integer,pChave_id_Ano Integer) return varchar2 IS'
              'BEGIN'
              ''
              'declare mvirg varchar(03);'
              ' '
              ' '
              '  mCTAE_CODEMP        NUMBER(14);'
              '  mCTAE_CHAVE         NUMBER(22);'
              '  mCTAE_CHAVE_ANO     NUMBER(10);'
              '  mCTAE_SEQ           NUMBER(10);'
              '  mCTAE_OBS           VARCHAR2(254);'
              '  mCTAE_CHAVE_ORI     NUMBER(20);'
              '  mCTAE_CHAVE_ORI_ANO NUMBER(20);'
              '  mCTAE_VALOR         NUMBER(15,2);'
              '  mCTAE_CODEVE        NUMBER(20);'
              '  mCTAE_DATHOR_EVE    DATE;'
              ' '
              ' '
              ' jSonRetorno varchar2(30000);'
              ''
              ''
              'cursor cursor_cadcontas_eventos is'
              
                'select CTAE_CODEMP,CTAE_CHAVE,CTAE_CHAVE_ANO,CTAE_SEQ,CTAE_OBS,C' +
                'TAE_CHAVE_ORI'
              '     ,CTAE_CHAVE_ORI_ANO,CTAE_VALOR,CTAE_CODEVE,CTAE_DATHOR_EVE'
              'from CADCONTAS_EVENTOS'
              'WHERE CTAE_CHAVE=pchave_id'
              'and   CTAE_CHAVE_ANO=pchave_id_ano'
              'and   CTAE_CODEMP=pcodemp;'
              ''
              'begin'
              'mvirg:='#39' '#39';'
              ''
              ''
              ''
              ''
              'OPEN  cursor_cadcontas_eventos;'
              ''
              ''
              'jSonRetorno:='#39#39';'
              'LOOP'
              ''
              ''
              ''
              
                'FETCH  cursor_cadcontas_eventos INTO  mCTAE_CODEMP,mCTAE_CHAVE,m' +
                'CTAE_CHAVE_ANO,mCTAE_SEQ'
              
                '                                      ,mCTAE_OBS,mCTAE_CHAVE_ORI' +
                ',mCTAE_CHAVE_ORI_ANO,mCTAE_VALOR,mCTAE_CODEVE,mCTAE_DATHOR_EVE;'
              '   EXIT WHEN cursor_cadcontas_eventos%NOTFOUND;'
              '   '
              '      jSonRetorno:=jSonRetorno || mvirg || '#39'{ '#39
              '      || '#39' "SEQ":'#39' || '#39'"'#39' || NVL(mCTAE_SEQ,0) || '#39'"'#39
              '      || '#39',"OBS":'#39' || '#39'"'#39' || nvl(mCTAE_OBS,'#39#39') || '#39'"'#39
              '      || '#39',"CHAVE_ORI":'#39' ||'#39'"'#39' || nvl(mCTAE_CHAVE_ORI,0) || '#39'"'#39
              
                '      || '#39',"CHAVE_ORI_ANO":'#39' ||'#39'"'#39' || nvl(mCTAE_CHAVE_ORI_ANO,0)' +
                ' || '#39'"'#39
              '      || '#39',"VALOR":'#39' ||'#39'"'#39' || nvl(mCTAE_VALOR,0) || '#39'"'#39
              '      || '#39',"CODEVE":'#39' ||'#39'"'#39' || nvl(mCTAE_CODEVE,0) || '#39'"'#39
              ''
              '      || '#39',"DATHOR_EVE":'#39' ||'#39'"'#39' || mCTAE_DATHOR_EVE || '#39'"'#39
              '      || '#39'}'#39';'
              ''
              '    mvirg:='#39' , '#39';'
              ''
              ''
              'END LOOP;'
              ''
              'CLOSE cursor_cadcontas_eventos;'
              ''
              'if jSonRetorno='#39#39' then'
              '   return jSonRetorno;'
              'else   '
              '   return '#39'['#39' || jSonRetorno || '#39']'#39';'
              'end if;        '
              'end;'
              'end;'
              ''
              ''
              ''
              '')
            TabOrder = 0
          end
        end
        object tsfretorna_tipodoc_nome: TTabSheet
          Caption = 'tsfretorna_tipodoc_nome'
          ImageIndex = 20
          object Memo_fretorna_tipodoc_nome: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace function fretorna_tipodoc_nome ( ptipodoc numb' +
                'er ) return varchar2 IS'
              ''
              ''
              'begin'
              '   return  case when ptipodoc=8 then '#39'Boleto'#39' '
              '                      when ptipodoc=1 then '#39'Cheque Devolvido'#39' '
              '                      when ptipodoc=6 then '#39'Cheque Pre-Datado'#39' '
              '                      when ptipodoc=0 then '#39'Duplicata'#39' '
              '                      when ptipodoc=3 then '#39'Juros'#39' '
              '                      when ptipodoc=5 then '#39'Nota de Credito'#39' '
              '                      when ptipodoc=4 then '#39'Nota Promissoria'#39' '
              '                  else '#39'Duplicata'#39' end; '
              ''
              '     '
              'end;')
            TabOrder = 0
          end
        end
        object ts_fretorna_tipodoc_integer: TTabSheet
          Caption = 'ts_fretorna_tipodoc_integer'
          ImageIndex = 21
          object Memo_fretorna_tipodoc_integer: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace function fretorna_tipodoc_integer ( ptipodoc v' +
                'archar2 ) return integer IS'
              ''
              ''
              'begin'
              '   return  case when ptipodoc='#39'Boleto'#39' then 8'
              '                      when ptipodoc='#39'Cheque Devolvido'#39' then 1 '
              '                      when ptipodoc='#39'Cheque Pre-Datado'#39'  then 6 '
              '                      when ptipodoc='#39'Duplicata'#39' then 0'
              '                      when ptipodoc='#39'Juros'#39' then 3'
              '                      when ptipodoc='#39'Nota de Credito'#39' then 5 '
              '                      when ptipodoc='#39'Nota Promissoria'#39' then 4'
              '                  else 0 end; '
              ''
              '     '
              'end;'
              '')
            TabOrder = 0
          end
        end
        object TabSheet26: TTabSheet
          Caption = 'Function fValorSubMod'
          ImageIndex = 22
          object Memo_valorsubmod: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace function fvalorsubmod (psubmod varchar2, valor' +
                ' number ) return number IS'
              ''
              '    valor_string varchar2( 256 );'
              ''
              '    valor_conv VARCHAR2(25);'
              ''
              '    perc NUMBER;'
              ''
              '    ind NUMBER;'
              ''
              '    begin'
              ''
              '  valor_string:= '#39#39';'
              ''
              '    for ind in 1..3 loop'
              ''
              '       if substr(psubmod,ind,1) = '#39'S'#39' then'
              ''
              '          valor_string := valor_string || '#39'0'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'O'#39' then'
              ''
              '          valor_string := valor_string || '#39'1'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'G'#39' then'
              ''
              '          valor_string := valor_string || '#39'2'#39'; '
              ''
              '       elsif substr(psubmod,ind,1) = '#39'A'#39' then'
              ''
              '          valor_string := valor_string || '#39'3'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'V'#39' then'
              ''
              '          valor_string := valor_string || '#39'4'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'R'#39' then'
              ''
              '          valor_string := valor_string || '#39'5'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'E'#39' then'
              ''
              '          valor_string := valor_string || '#39'6'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'T'#39' then'
              ''
              '          valor_string := valor_string || '#39'7'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'N'#39' then'
              ''
              '          valor_string := valor_string || '#39'8'#39' ;'
              ''
              '       elsif substr(psubmod,ind,1) = '#39'I'#39' then'
              ''
              '          valor_string := valor_string || '#39'9'#39' ;'
              ''
              '      end if;    '
              ''
              '    end loop;'
              ''
              '  perc:=TO_NUMBER(valor_string);'
              ''
              '  if (perc=100 or perc=0) then '
              ''
              '     return valor;'
              ''
              '  else return round((valor*perc/100),2);'
              ''
              '     end if;'
              ''
              '  end;'
              '')
            TabOrder = 0
          end
        end
        object tsGerrOld: TTabSheet
          Caption = 'GerarOLd'
          ImageIndex = 23
          object Memo_Gerarold: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE PROCEDURE FGERAROLD(ptabela IN VARCHAR2, pcond' +
                'icao IN VARCHAR2'
              ',psigla IN VARCHAR2'
              ',pevento IN VARCHAR2'
              ',porigem IN VARCHAR2'
              ',pcodusr IN varchar2'
              ',pnomusr IN varchar2'
              ',pdathor IN date'
              ',pcodevento IN number'
              ',pcodnov out number)'
              ''
              '  is'
              'BEGIN'
              '   DECLARE'
              '   codnov number := 0;'
              '   mcomando_campos varchar2(30000);'
              '   mcomando_insert varchar2(30000);'
              '   mcomando_values varchar2(30000);'
              '   mcomando_executar varchar2(30000);'
              '   mvirg varchar2(01);'
              '   vNOMECAMPO varchar2(200);'
              '   vQTD number;'
              '   mAspas varchar2(5);'
              '   '
              'CURSOR campostabela_cursor  IS'
              'SELECT COLUMN_NAME,COUNT(*) AS QTD FROM ('
              'SELECT COLUMN_NAME,DATA_TYPE FROM USER_TAB_COLUMNS'
              'WHERE  TABLE_NAME=ptabela'
              '     OR TABLE_NAME='#39'OLD_'#39' || ptabela '
              'AND '
              '(DATA_TYPE<>'#39'LONG'#39' AND DATA_TYPE<>'#39'LONG ROW'#39')'
              ''
              ') GROUP BY COLUMN_NAME,DATA_TYPE'
              ' HAVING COUNT(*)>1;'
              ' '
              'BEGIN '
              'mAspas:='#39#39#39#39';'
              'mcomando_campos := '#39#39';'
              'mvirg := '#39#39';'
              ''
              'OPEN campostabela_cursor;'
              '    LOOP'
              '    FETCH campostabela_cursor INTO vNOMECAMPO,vQTD;'
              '    EXIT WHEN campostabela_cursor%NOTFOUND;'
              '     mcomando_campos := mcomando_campos || mvirg || vNOMECAMPO;'
              '  mvirg := '#39','#39';'
              '    END LOOP;'
              'CLOSE campostabela_cursor;  '
              ''
              ''
              'if length(mcomando_campos)>0 then '
              '   if (pcodevento>0) then '
              '       codnov:=pcodevento;'
              '   else   '
              
                '      mcomando_executar := '#39'select  nvl(max('#39' || psigla || '#39'CODN' +
                'OV),0)+1 as  CODNOV from OLD_'#39' || ptabela ||  '#39'  where '#39'  || pco' +
                'ndicao;'
              '      execute immediate mcomando_executar into codnov;  '
              '   end if;'
              ''
              ''
              
                '   mcomando_insert  := '#39'insert into OLD_'#39' || ptabela || '#39'( '#39' || ' +
                'mcomando_campos || '#39','#39'  || psigla || '#39'CODNOV'#39';'
              
                '   mcomando_values  := '#39' select '#39' || mcomando_campos || '#39','#39' || t' +
                'o_char(codnov) || '#39' as codnov '#39';'
              '   '
              '   '
              '   if length(pevento)>0 then '
              
                '      mcomando_insert := mcomando_insert || '#39','#39' || psigla || '#39'OL' +
                'D_EVENTO'#39';'
              
                '      mcomando_values := mcomando_values || '#39','#39' || mAspas || pev' +
                'ento || mAspas ;'
              '   end if;'
              ''
              '   if length(porigem)>0 then '
              
                '      mcomando_insert := mcomando_insert || '#39','#39' || psigla || '#39'OL' +
                'D_ORIGEM'#39';'
              
                '      mcomando_values := mcomando_values || '#39','#39' || mAspas || por' +
                'igem || mAspas ;'
              '   end if;'
              ''
              '   if length(pcodusr)>0 then '
              
                '      mcomando_insert := mcomando_insert || '#39','#39' || psigla || '#39'OL' +
                'D_CODUSR'#39';'
              
                '      mcomando_values := mcomando_values || '#39','#39' || mAspas || pco' +
                'dusr || mAspas ;'
              '   end if;'
              ''
              '   if length(pnomusr)>0 then '
              
                '      mcomando_insert := mcomando_insert || '#39','#39' || psigla || '#39'OL' +
                'D_NOMUSR'#39';'
              
                '      mcomando_values := mcomando_values || '#39','#39' || mAspas || pno' +
                'musr || mAspas ;'
              '   end if;'
              ''
              '   if not pdathor is null then '
              
                '      mcomando_insert := mcomando_insert || '#39','#39' || psigla || '#39'OL' +
                'D_DATHOR'#39';'
              
                '      mcomando_values := mcomando_values || '#39','#39' || '#39' TO_DATE( '#39' ' +
                '|| mAspas ||  pdathor || mAspas || '#39','#39' || mAspas || '#39'YYYY-MM-DD ' +
                'HH24:MI:SS'#39' || mAspas || '#39')'#39';'
              '   end if;'
              ''
              '   mcomando_insert := mcomando_insert || '#39') '#39';'
              
                '   mcomando_values := mcomando_values || '#39' from '#39' || ptabela || ' +
                #39'  where '#39'  || pcondicao;'
              ''
              
                '   mcomando_executar := mcomando_insert || '#39' '#39' || mcomando_value' +
                's;'
              '   execute immediate mcomando_executar;  '
              '                  '
              'end if;  '
              '  '
              'pcodnov := codnov; '
              'END;'
              'END;')
            TabOrder = 0
          end
        end
        object TabSheet29: TTabSheet
          Caption = 'Function Pegar Valor Tag'
          ImageIndex = 22
          object memo_pegar_valor_tag: TMemo
            Left = 0
            Top = 0
            Width = 1108
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace function fBuscarValorTag(pTag integer, pValor ' +
                'varchar2) return varchar2 IS'
              '    valor_string varchar2( 1024 );'
              ''
              ''
              '    valor_conv VARCHAR2(25);'
              '    ind NUMBER;'
              '    tres_digitos VARCHAR2(3);'
              '  ini integer;'
              '  mfinal integer;'
              '    begin'
              #9'if substr(pvalor,1,1)<>'#39'|'#39' then '
              #9'   valor_string := '#39'|'#39' || pValor;'
              #9'else'
              #9'   valor_string := pValor;'
              #9
              #9'end if ;   '
              #9'   '
              #9'if substr(valor_string,length(valor_string),1)<>'#39'|'#39' then '
              #9'   valor_string :=  valor_string || '#39'|'#39';'
              #9'end if ;   '
              '    '
              ''
              '    ini := INSTR(valor_string,'#39'|'#39', 1,ptag);'
              #9'   '
              ''
              '       mFinal :=  INSTR(valor_string,'#39'|'#39', 1,    ptag+1) ;'
              ''
              #9' '
              '     return (substr(valor_string,ini+1,(mfinal-1)-ini));'
              #9' '
              '  exception'
              '      when others then'
              
                '        return( '#39'*** ERRO ***  ini '#39'  || to_char(ini) || '#39' mfina' +
                'l '#39' || to_char(mfinal) );'
              '    end;'
              ''
              ''
              ''
              ''
              '***************************'
              '***************************'
              '***************************'
              '***************************'
              
                'select substr(valor,ini+1,(case when termino<=0 then length(valo' +
                'r)+1 else termino end)-ini-1 ) as valor,ini,termino from ('
              
                'SELECT INSTR(valor,'#39'|'#39', 1,case when substr(valor,1,1) = '#39'|'#39' then' +
                ' 0 else -1 end + ptag)  as ini'
              
                ',NVL( INSTR(valor,'#39'|'#39', 1,    case when substr(valor,1,1) = '#39'|'#39' t' +
                'hen 0 else -1 end + ptag    +1),length(valor)) as termino'
              ',valor'
              '   FROM ('
              
                'SELECT 26 as ptag,  '#39'|TA01|TAG02|TAG03|TAG04|TAG05|TAG06|TAG07|T' +
                'AG08|TAG09|TAG10|TAG11|TAG12|TAG13|LINDOMAR TAG14|TAG15|TAG16|TA' +
                'G17|TAG18|TAG19|TAG20|TAG21|TAG22|TAG23|TAG24|TAG25|TAG26'#39' '
              'as valor'
              '   FROM TESTE'
              ')   '
              ''
              '   )')
            TabOrder = 0
          end
        end
      end
      object bbTabelaCampos: TBitBtn
        Left = 16
        Top = 156
        Width = 245
        Height = 20
        Caption = 'Gerar Tabela de Campos(restrito intersys)'
        TabOrder = 3
        OnClick = bbTabelaCamposClick
      end
      object bbDelSeq: TBitBtn
        Left = 16
        Top = 180
        Width = 245
        Height = 20
        Caption = 'Deletar Sequencias(restrito intersys)'
        TabOrder = 4
        OnClick = bbDelSeqClick
      end
      object bbAjustarProdutos: TBitBtn
        Left = 16
        Top = 212
        Width = 245
        Height = 20
        Caption = 'Ajustar dados CST / PIS / COFINS produtos'
        TabOrder = 5
        OnClick = bbAjustarProdutosClick
      end
      object bbCorrigeSintegra: TBitBtn
        Left = 16
        Top = 135
        Width = 245
        Height = 20
        Caption = 'Corrigir Sintegra'
        TabOrder = 6
        OnClick = bbCorrigeSintegraClick
      end
      object bbCap02_Lotes: TBitBtn
        Left = 24
        Top = 244
        Width = 297
        Height = 20
        Caption = 'Corrigir o Arquivo CADP02_LOTES(lotes de mercadorias)'
        TabOrder = 7
        OnClick = bbCap02_LotesClick
      end
      object Memo2: TMemo
        Left = 352
        Top = 176
        Width = 313
        Height = 129
        Lines.Strings = (
          'select max(crnumero) as nummax,min(crNUMERO) AS NUMMIN,'
          'MAX(CRDESD) AS MAXDESD, MIN(CRDESD) AS '
          'MINDESD,CRNPED,CRCODEMP,CRLOTSEQ_CP,CRNUMPA'
          'RC,MAX(CRDTBX) AS DTMAX,MIN(CRDTBX) AS DTMIN, '
          'COUNT(*) FROM CADDAR'
          'GROUP BY '
          'CRNPED,CRCODEMP,CRLOTSEQ_CP,CRNUMPARC'
          'HAVING COUNT(*)>1')
        TabOrder = 8
      end
      object BitBtn12: TBitBtn
        Left = 16
        Top = 268
        Width = 245
        Height = 20
        Caption = 'Duplicidade em Relacionamento com fornecedor'
        TabOrder = 9
        OnClick = BitBtn12Click
      end
      object bbCalcularEstoque: TBitBtn
        Left = 16
        Top = 300
        Width = 245
        Height = 20
        Caption = 'Calcular Estoque'
        TabOrder = 10
        OnClick = bbCalcularEstoqueClick
      end
      object BitBtn16: TBitBtn
        Left = 920
        Top = 200
        Width = 75
        Height = 25
        Caption = 'BitBtn16'
        TabOrder = 11
      end
      object BitBtn19: TBitBtn
        Left = 832
        Top = 144
        Width = 75
        Height = 25
        Caption = 'BitBtn19'
        TabOrder = 12
        OnClick = BitBtn19Click
      end
      object bbVerTitulosExcluidos: TBitBtn
        Left = 16
        Top = 324
        Width = 245
        Height = 20
        Caption = 'Verificar Titulos Excluidos'
        TabOrder = 13
        OnClick = bbVerTitulosExcluidosClick
      end
    end
    object tsCorrecoes: TTabSheet
      Caption = 'Corre'#231'oes Diversas'
      ImageIndex = 3
      OnContextPopup = tsCorrecoesContextPopup
      object gb_abater: TGroupBox
        Left = 24
        Top = 24
        Width = 332
        Height = 129
        Caption = 'Abater Pedido no CADEDIA/CADEGD:'
        TabOrder = 0
        object Label6: TLabel
          Left = 126
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Chave:'
        end
        object Label7: TLabel
          Left = 7
          Top = 19
          Width = 44
          Height = 13
          Caption = 'Empresa:'
        end
        object lbl_dadosped: TLabel
          Left = 6
          Top = 48
          Width = 321
          Height = 53
          Alignment = taCenter
          AutoSize = False
          Color = 8454143
          ParentColor = False
          WordWrap = True
        end
        object edt_chave: TEdit
          Left = 161
          Top = 16
          Width = 60
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_chaveExit
        end
        object edt_codemp: TEdit
          Left = 61
          Top = 17
          Width = 60
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_codempExit
        end
        object bbAbater: TBitBtn
          Left = 107
          Top = 98
          Width = 95
          Height = 23
          Caption = 'Abater Agora'
          TabOrder = 2
          OnClick = bbAbaterClick
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
      object bbCadProd: TBitBtn
        Left = 38
        Top = 177
        Width = 245
        Height = 20
        Caption = 'Cadastrar Produtos apartir dos similares'
        TabOrder = 1
        OnClick = bbCadProdClick
      end
      object bb_camposfinan: TBitBtn
        Left = 38
        Top = 199
        Width = 245
        Height = 20
        Caption = 'Corrigir Campos do Financeiro'
        TabOrder = 2
        OnClick = bb_camposfinanClick
      end
      object bb_estnullos: TBitBtn
        Left = 38
        Top = 221
        Width = 245
        Height = 20
        Caption = 'Eliminar Estoque Nulo'
        TabOrder = 3
        OnClick = bb_estnullosClick
      end
      object BBAJUSTAESTO: TBitBtn
        Left = 38
        Top = 243
        Width = 245
        Height = 20
        Caption = 'IGUALAR CADPRO COM CADEST'
        TabOrder = 4
        OnClick = BBAJUSTAESTOClick
      end
      object GroupBox1: TGroupBox
        Left = 360
        Top = 24
        Width = 425
        Height = 201
        Caption = 'Corrigir Cadp02'
        TabOrder = 5
        object Label9: TLabel
          Left = 16
          Top = 16
          Width = 39
          Height = 13
          Caption = 'Usuario:'
        end
        object Label10: TLabel
          Left = 176
          Top = 14
          Width = 36
          Height = 13
          Caption = 'Tabela:'
        end
        object edt_usuario: TEdit
          Left = 64
          Top = 13
          Width = 105
          Height = 21
          TabOrder = 0
          Text = 'CADP02_REAL'
        end
        object edt_nomtab: TEdit
          Left = 222
          Top = 13
          Width = 193
          Height = 21
          TabOrder = 1
          Text = 'CADP02'
        end
        object Memo_historico: TMemo
          Left = 4
          Top = 35
          Width = 413
          Height = 134
          Lines.Strings = (
            'Memo_historico')
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 2
        end
        object bbProcessar_cadp02: TBitBtn
          Left = 68
          Top = 173
          Width = 245
          Height = 20
          Caption = 'Processar Agora'
          TabOrder = 3
          OnClick = bbProcessar_cadp02Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 360
        Top = 224
        Width = 378
        Height = 105
        Caption = ' -= Mudar Chave do Pedido =- '
        TabOrder = 6
        object Label11: TLabel
          Left = 1
          Top = 25
          Width = 77
          Height = 13
          Caption = 'Empresa Atual..:'
        end
        object Label12: TLabel
          Left = 11
          Top = 48
          Width = 67
          Height = 13
          Caption = 'Chave Atual..:'
        end
        object Label13: TLabel
          Left = 201
          Top = 49
          Width = 63
          Height = 13
          Caption = 'Chave Nova:'
        end
        object Label14: TLabel
          Left = 191
          Top = 26
          Width = 73
          Height = 13
          Caption = 'Empresa Nova:'
        end
        object bb_exec: TButton
          Left = 128
          Top = 72
          Width = 131
          Height = 25
          Caption = '&Executar'
          TabOrder = 0
          OnClick = bb_execClick
        end
        object OCODEMP: TEdit
          Left = 79
          Top = 21
          Width = 110
          Height = 21
          TabOrder = 1
        end
        object OCHAVE: TEdit
          Left = 78
          Top = 44
          Width = 110
          Height = 21
          TabOrder = 2
        end
        object NCODEMP: TEdit
          Left = 265
          Top = 22
          Width = 110
          Height = 21
          TabOrder = 3
        end
        object NCHAVE: TEdit
          Left = 265
          Top = 45
          Width = 110
          Height = 21
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 360
        Top = 328
        Width = 378
        Height = 73
        Caption = '-= Gerar CADLDR Atraves do Financeiro'
        TabOrder = 7
        object Label16: TLabel
          Left = 11
          Top = 23
          Width = 62
          Height = 13
          Caption = 'Data Inicial..:'
        end
        object Label15: TLabel
          Left = 187
          Top = 23
          Width = 57
          Height = 13
          Caption = 'Data Final..:'
        end
        object Button1: TButton
          Left = 128
          Top = 40
          Width = 131
          Height = 25
          Caption = '&Executar'
          TabOrder = 0
          OnClick = Button1Click
        end
        object DT_FINLDR_FIM: TDateEdit
          Left = 247
          Top = 19
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object DT_FINLDR_INI: TDateEdit
          Left = 81
          Top = 20
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object GroupBox4: TGroupBox
        Left = 360
        Top = 400
        Width = 378
        Height = 59
        Caption = '-= Verificar Financeiro =-'
        TabOrder = 8
        object Label17: TLabel
          Left = 14
          Top = 23
          Width = 32
          Height = 13
          Caption = 'Data..:'
        end
        object DateEdit1: TDateEdit
          Left = 49
          Top = 20
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object Button2: TButton
          Left = 138
          Top = 18
          Width = 131
          Height = 25
          Caption = '&Executar'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object BitBtn7: TBitBtn
        Left = 38
        Top = 265
        Width = 245
        Height = 20
        Caption = 'IGUALAR CADEST COM CADPRO'
        TabOrder = 9
        OnClick = BitBtn7Click
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 370
        Width = 321
        Height = 44
        Caption = 'Re-Faturar Emprestimo'
        TabOrder = 10
        object Label18: TLabel
          Left = 8
          Top = 20
          Width = 45
          Height = 13
          Caption = 'CHAVE..:'
        end
        object btn_Chave: TButton
          Left = 206
          Top = 15
          Width = 75
          Height = 25
          Caption = 'Voltar Chave'
          TabOrder = 0
          OnClick = btn_ChaveClick
        end
        object edt_chave1: TEdit
          Left = 56
          Top = 17
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 416
        Width = 353
        Height = 105
        Caption = 'Agrupar Formas de Pagamentos:'
        TabOrder = 11
        object Label19: TLabel
          Left = 8
          Top = 24
          Width = 119
          Height = 13
          Caption = 'C'#243'digo a Ser Substituido:'
        end
        object Label20: TLabel
          Left = 44
          Top = 48
          Width = 81
          Height = 13
          Caption = 'C'#243'digo a Manter:'
        end
        object edt_codfp_exc: TEdit
          Left = 130
          Top = 22
          Width = 49
          Height = 21
          TabOrder = 0
          OnExit = edt_codfp_excExit
        end
        object edt_codfp_novo: TEdit
          Left = 130
          Top = 46
          Width = 49
          Height = 21
          TabOrder = 1
          OnExit = edt_codfp_novoExit
        end
        object edt_nomfp_exc: TEdit
          Left = 178
          Top = 22
          Width = 165
          Height = 21
          TabStop = False
          Color = 15925234
          ReadOnly = True
          TabOrder = 2
        end
        object edt_nomfp_novo: TEdit
          Left = 178
          Top = 46
          Width = 165
          Height = 21
          TabStop = False
          Color = 15925234
          ReadOnly = True
          TabOrder = 3
        end
        object bbExecutarTroca: TButton
          Left = 130
          Top = 68
          Width = 131
          Height = 25
          Caption = '&Executar'
          TabOrder = 4
          OnClick = bbExecutarTrocaClick
        end
      end
      object bbItensBeleza: TBitBtn
        Left = 39
        Top = 155
        Width = 245
        Height = 20
        Caption = 'Arrumar Itens Beleza'
        TabOrder = 12
        OnClick = bbItensBelezaClick
      end
      object BitBtn13: TBitBtn
        Left = 38
        Top = 286
        Width = 245
        Height = 20
        Caption = 'Gerar Lotes CadPF2_LOTES_ORC'
        TabOrder = 13
        OnClick = BitBtn13Click
      end
      object bbgerarped01: TBitBtn
        Left = 38
        Top = 307
        Width = 245
        Height = 20
        Caption = 'Gerar Cabecalho atraves do cadp02'
        TabOrder = 14
        OnClick = bbgerarped01Click
      end
      object bbCorlotes: TBitBtn
        Left = 39
        Top = 326
        Width = 245
        Height = 20
        Caption = 'Corrigir Lotes Pedido de Vendas'
        TabOrder = 15
        OnClick = bbCorlotesClick
      end
      object bbDuplicidadePDV: TBitBtn
        Left = 823
        Top = 38
        Width = 245
        Height = 20
        Caption = 'Eliminar Dupicidade PDV'
        TabOrder = 16
        OnClick = bbDuplicidadePDVClick
      end
      object bbCorrigirPagParciais: TBitBtn
        Left = 823
        Top = 86
        Width = 245
        Height = 20
        Caption = 'Corrigir Comissoes dos Pagamentos Parciais'
        TabOrder = 17
        OnClick = bbCorrigirPagParciaisClick
      end
      object CADDAR_FPCRDUP: TBitBtn
        Left = 823
        Top = 158
        Width = 245
        Height = 20
        Caption = 'Caddar Em Aberto Pago no FPCRDup'
        TabOrder = 18
        OnClick = CADDAR_FPCRDUPClick
      end
    end
    object tsAtualizacoes: TTabSheet
      Caption = 'Atualiza'#231#245'es'
      ImageIndex = 4
      object bbatucodmun_pref: TBitBtn
        Left = 120
        Top = 200
        Width = 401
        Height = 25
        Caption = 'Atualizar o Codigo do Municipio Junto a Prefeitura '
        TabOrder = 0
        OnClick = bbatucodmun_prefClick
      end
      object GroupBox7: TGroupBox
        Left = 59
        Top = 248
        Width = 401
        Height = 169
        Caption = 'Atualizar P2PCOCUS a partir do PDPRECOC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label21: TLabel
          Left = 19
          Top = 61
          Width = 104
          Height = 13
          Caption = 'a Partir da Chave:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 11
          Top = 23
          Width = 78
          Height = 13
          Caption = 'Data Inicial..:'
        end
        object Label23: TLabel
          Left = 187
          Top = 23
          Width = 71
          Height = 13
          Caption = 'Data Final..:'
        end
        object bbatualizarp2pcocus: TBitBtn
          Left = 11
          Top = 86
          Width = 286
          Height = 20
          Caption = 'Atualizar P2PCOCUS'
          TabOrder = 0
          OnClick = bbatualizarp2pcocusClick
        end
        object edt_chave_p2pcocus: TEdit
          Left = 122
          Top = 57
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_chave_p2pcocusExit
        end
        object BitBtn17: TBitBtn
          Left = 11
          Top = 110
          Width = 286
          Height = 20
          Caption = 'Atualizar P2UCR'
          TabOrder = 2
          OnClick = BitBtn17Click
        end
        object edt_atupco_datini: TDateEdit
          Left = 81
          Top = 20
          Width = 89
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
        end
        object edt_atupco_datfin: TDateEdit
          Left = 256
          Top = 19
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object BitBtn18: TBitBtn
          Left = 11
          Top = 134
          Width = 286
          Height = 20
          Caption = 'Atualizar P2UCR atraves do CADPRO'
          TabOrder = 5
          OnClick = BitBtn18Click
        end
      end
      object bbDelProdSemMov: TBitBtn
        Left = 88
        Top = 456
        Width = 401
        Height = 25
        Caption = 'Deletar Proudtos sem Movimentos'
        TabOrder = 2
        OnClick = bbDelProdSemMovClick
      end
      object GroupBox8: TGroupBox
        Left = 568
        Top = 40
        Width = 361
        Height = 185
        Caption = 'Deletar Pedidos Duplicados'
        TabOrder = 3
        object Label24: TLabel
          Left = 11
          Top = 23
          Width = 77
          Height = 13
          Caption = 'Data do Pedido:'
        end
        object edt_dataped: TDateEdit
          Left = 129
          Top = 20
          Width = 89
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
        end
        object BitBtn20: TBitBtn
          Left = 24
          Top = 120
          Width = 300
          Height = 25
          Caption = 'Deletar Proudtos sem Movimentos'
          TabOrder = 1
          OnClick = BitBtn20Click
        end
      end
      object GroupBox9: TGroupBox
        Left = 576
        Top = 232
        Width = 361
        Height = 185
        Caption = 'Ajustar Total Cabecalho do Pedido Diferente da Soma dos itens'
        TabOrder = 4
        object Label25: TLabel
          Left = 11
          Top = 23
          Width = 77
          Height = 13
          Caption = 'Data do Pedido:'
        end
        object edt_datped_dif_itens: TDateEdit
          Left = 129
          Top = 20
          Width = 89
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
        end
        object BitBtn23: TBitBtn
          Left = 24
          Top = 120
          Width = 300
          Height = 25
          Caption = 'Ajustar Agora'
          TabOrder = 1
          OnClick = BitBtn23Click
        end
      end
      object bbExecutarProcedure: TBitBtn
        Left = 616
        Top = 456
        Width = 300
        Height = 25
        Caption = 'Testar Procedure'
        TabOrder = 5
        OnClick = bbExecutarProcedureClick
      end
      object bbUltCrpPro: TBitBtn
        Left = 87
        Top = 31
        Width = 245
        Height = 20
        Caption = 'Ajustar Informa'#231#245'es da '#218'ltima compra no Produto'
        TabOrder = 6
        OnClick = bbUltCrpProClick
      end
      object bbDatUltSai: TBitBtn
        Left = 95
        Top = 63
        Width = 245
        Height = 20
        Caption = 'Data da Ultima Venda'
        TabOrder = 7
        OnClick = bbDatUltSaiClick
      end
    end
    object TabSheet27: TTabSheet
      Caption = 'Consultas Diversas'
      ImageIndex = 5
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 1116
        Height = 105
        Align = alTop
        Caption = 'Xml do Pedido Diferente do CADNS'
        TabOrder = 0
        object Memo_xmlPedidoDifCadNs: TMemo
          Left = 2
          Top = 15
          Width = 1112
          Height = 88
          Align = alClient
          Lines.Strings = (
            
              'SELECT P1CODEMP,NSNFCE_CHV_ACESSO AS NFCE, P1NFCE_CHV_ACESSO,P1S' +
              'TATUS,NSSTATUS,P1DATAP AS CADP01, P1CHAVE FROM CADNS,CADP01 WHER' +
              'E'
            
              'LENGTH(NVL(P1NFCE_CHV_ACESSO,'#39' '#39'))>2 AND P1CHAVE=NSCHAVEP AND P1' +
              'CODEMP=NSCODEMP '
            'AND NSNFCE_CHV_ACESSO<>P1NFCE_CHV_ACESSO'
            ''
            'AND P1STATUS<>9 AND P1CODEMP=1'
            ''
            'DELETAR INDICES FILTRANTO CADNS_NFEEVE'
            'DEPOIS CRIAR INDICES CADNS_NFEEVE')
          TabOrder = 0
        end
      end
      object bbCoirrigirNfce: TBitBtn
        Left = 24
        Top = 120
        Width = 300
        Height = 25
        Caption = 'Corrigir Nfce'
        TabOrder = 1
        OnClick = bbCoirrigirNfceClick
      end
    end
  end
  object Tb_Destino: TTable
    DatabaseName = 'C:\SGE'
    TableName = 'CADP02'
    TableType = ttDBase
    Left = 72
    Top = 80
  end
  object BatchMove1: TBatchMove
    Destination = Tb_Banco
    Source = Tb_Destino
    Left = 168
    Top = 88
  end
  object Tb_Banco: TTable
    DatabaseName = 'SG_ASSOC'
    TableName = 'CADP02'
    Left = 8
    Top = 48
  end
  object Tb_Dest02: TTable
    DatabaseName = 'C:\SGE'
    TableName = 'CADPF02'
    Left = 112
    Top = 75
  end
  object Tabela_Ant: TTable
    DatabaseName = 'SG_ASSOC'
    TableName = 'CADP02'
    Left = 720
    Top = 240
  end
  object Tb_Help: TTable
    DatabaseName = 'C:\SGE'
    FieldDefs = <
      item
        Name = 'HP_CODSEG'
        DataType = ftFloat
      end
      item
        Name = 'HP_FORMULARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'HP_NOMCAM'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'HP_MAPA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'HP_CODLINK'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'CADHELP'
    Left = 720
    Top = 136
    object Tb_HelpHP_CODSEG: TFloatField
      FieldName = 'HP_CODSEG'
    end
    object Tb_HelpHP_FORMULARIO: TStringField
      FieldName = 'HP_FORMULARIO'
      Size = 30
    end
    object Tb_HelpHP_NOMCAM: TStringField
      FieldName = 'HP_NOMCAM'
      Size = 30
    end
    object Tb_HelpHP_MAPA: TStringField
      FieldName = 'HP_MAPA'
      Size = 30
    end
    object Tb_HelpHP_CODLINK: TFloatField
      FieldName = 'HP_CODLINK'
    end
  end
  object Qr_CriarTriggers: TQuery
    DatabaseName = 'SG_ASSOC'
    ParamCheck = False
    Left = 280
    Top = 48
  end
  object IdHTTP: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 272
    Top = 24
  end
  object TB_FPCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from fpcrdup, caddar where fpcodemp=crcodemp '
      ' and fpnumero=crnumero and fpdesd=crdesd and fpcodcli=crcodcli '
      ' and fpcodven=crcodven and fpdtemis=crdtemis and fpdtbx=crdtbx'
      ' and fpvaldup=crvalor ')
    Left = 484
    Top = 480
    object TB_FPCRFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTSEQ'
    end
    object TB_FPCRFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object TB_FPCRFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object TB_FPCRFPCODECF: TFloatField
      FieldName = 'FPCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODECF'
    end
    object TB_FPCRFPNR: TFloatField
      FieldName = 'FPNR'
      Origin = 'SG_ASSOC.FPCRDUP.FPNR'
    end
    object TB_FPCRFPDUP_CODEMP: TFloatField
      FieldName = 'FPDUP_CODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPDUP_CODEMP'
    end
    object TB_FPCRFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object TB_FPCRFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object TB_FPCRFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object TB_FPCRFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
    object TB_FPCRFPCODVEN: TFloatField
      FieldName = 'FPCODVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODVEN'
    end
    object TB_FPCRFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object TB_FPCRFPDTBX: TDateTimeField
      FieldName = 'FPDTBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTBX'
    end
    object TB_FPCRFPDATPAG: TDateTimeField
      FieldName = 'FPDATPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPDATPAG'
    end
    object TB_FPCRFPDTVCTO: TDateTimeField
      FieldName = 'FPDTVCTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTVCTO'
    end
    object TB_FPCRFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object TB_FPCRFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object TB_FPCRFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object TB_FPCRFPVALDUP: TFloatField
      FieldName = 'FPVALDUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALDUP'
    end
    object TB_FPCRFPDEVOL: TFloatField
      FieldName = 'FPDEVOL'
      Origin = 'SG_ASSOC.FPCRDUP.FPDEVOL'
    end
    object TB_FPCRFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object TB_FPCRFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object TB_FPCRFPVLRST: TFloatField
      FieldName = 'FPVLRST'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRST'
    end
    object TB_FPCRFPVLRIPI: TFloatField
      FieldName = 'FPVLRIPI'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRIPI'
    end
    object TB_FPCRFPLEMAT: TFloatField
      FieldName = 'FPLEMAT'
      Origin = 'SG_ASSOC.FPCRDUP.FPLEMAT'
    end
    object TB_FPCRFPPARCIAL: TFloatField
      FieldName = 'FPPARCIAL'
      Origin = 'SG_ASSOC.FPCRDUP.FPPARCIAL'
    end
    object TB_FPCRCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODECF: TFloatField
      FieldName = 'CRCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 2
    end
    object TB_FPCRCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNUMCUP: TFloatField
      FieldName = 'CRNUMCUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDATCUP: TDateTimeField
      FieldName = 'CRDATCUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTNF: TFloatField
      FieldName = 'CRTOTNF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTBX: TDateTimeField
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODVEN: TFloatField
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODASSE: TFloatField
      FieldName = 'CRCODASSE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODV02: TFloatField
      FieldName = 'CRCODV02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODV03: TFloatField
      FieldName = 'CRCODV03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODCV: TFloatField
      FieldName = 'CRCODCV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTE: TFloatField
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRICMSR: TFloatField
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCREMIDUP: TFloatField
      FieldName = 'CREMIDUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCREMIBLQ: TFloatField
      FieldName = 'CREMIBLQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALFRE: TFloatField
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNOSNUM: TStringField
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 30
    end
    object TB_FPCRCRDNOSNUM: TStringField
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 1
    end
    object TB_FPCRCRACEITE: TStringField
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 1
    end
    object TB_FPCRCRESPECIE: TStringField
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 2
    end
    object TB_FPCRCRCODBAR: TStringField
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRCODDIG: TStringField
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 100
    end
    object TB_FPCRCRTIPCOB: TFloatField
      FieldName = 'CRTIPCOB'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTALT: TDateTimeField
      FieldName = 'CRDTALT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRUSRALT: TFloatField
      FieldName = 'CRUSRALT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRUSRBX: TFloatField
      FieldName = 'CRUSRBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMV02: TFloatField
      FieldName = 'CRCOMV02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMV03: TFloatField
      FieldName = 'CRCOMV03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMTEL: TFloatField
      FieldName = 'CRCOMTEL'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMSUP: TFloatField
      FieldName = 'CRCOMSUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMASSE: TFloatField
      FieldName = 'CRCOMASSE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRSEMCOM: TFloatField
      FieldName = 'CRSEMCOM'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_FC: TFloatField
      FieldName = 'CRLOTSEQ_FC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODLDR: TFloatField
      FieldName = 'CRCODLDR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CV: TFloatField
      FieldName = 'CRLOTSEQ_CV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCV: TFloatField
      FieldName = 'CRLOTCV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CV02: TFloatField
      FieldName = 'CRLOTSEQ_CV02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCV02: TFloatField
      FieldName = 'CRLOTCV02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CV03: TFloatField
      FieldName = 'CRLOTSEQ_CV03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCV03: TFloatField
      FieldName = 'CRLOTCV03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CS: TFloatField
      FieldName = 'CRLOTSEQ_CS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCS: TFloatField
      FieldName = 'CRLOTCS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CASSE: TFloatField
      FieldName = 'CRLOTSEQ_CASSE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCASSE: TFloatField
      FieldName = 'CRLOTCASSE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODORI: TFloatField
      FieldName = 'CRCODORI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CT: TFloatField
      FieldName = 'CRLOTSEQ_CT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCT: TFloatField
      FieldName = 'CRLOTCT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODUSR: TFloatField
      FieldName = 'CRCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRHRALT: TStringField
      FieldName = 'CRHRALT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 10
    end
    object TB_FPCRCRTOTDI01: TFloatField
      FieldName = 'CRTOTDI01'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTDI02: TFloatField
      FieldName = 'CRTOTDI02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTDI03: TFloatField
      FieldName = 'CRTOTDI03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTDIVL: TFloatField
      FieldName = 'CRTOTDIVL'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALDES01: TFloatField
      FieldName = 'CRVALDES01'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALDES02: TFloatField
      FieldName = 'CRVALDES02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVLRDES: TFloatField
      FieldName = 'CRVLRDES'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLEMAT: TFloatField
      FieldName = 'CRLEMAT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRINST01: TStringField
      FieldName = 'CRINST01'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRINST02: TStringField
      FieldName = 'CRINST02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRINST03: TStringField
      FieldName = 'CRINST03'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRINST04: TStringField
      FieldName = 'CRINST04'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVALSEG: TFloatField
      FieldName = 'CRVALSEG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTBCOCOB: TFloatField
      FieldName = 'CRTBCOCOB'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTCGRU: TFloatField
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTSGRU: TFloatField
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODV04: TFloatField
      FieldName = 'CRCODV04'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNR: TFloatField
      FieldName = 'CRNR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCUSBCO: TFloatField
      FieldName = 'CRCUSBCO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMV04: TFloatField
      FieldName = 'CRCOMV04'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_CV04: TFloatField
      FieldName = 'CRLOTSEQ_CV04'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTCV04: TFloatField
      FieldName = 'CRLOTCV04'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCREMIBOR: TFloatField
      FieldName = 'CREMIBOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCHD_BANCO: TFloatField
      FieldName = 'CRCHD_BANCO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCHD_AGENCIA: TStringField
      FieldName = 'CRCHD_AGENCIA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 5
    end
    object TB_FPCRCRCHD_CC: TStringField
      FieldName = 'CRCHD_CC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 15
    end
    object TB_FPCRCRCHD_NUMERO: TFloatField
      FieldName = 'CRCHD_NUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCAUCAO: TFloatField
      FieldName = 'CRCAUCAO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRBCOCAU: TFloatField
      FieldName = 'CRBCOCAU'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDTCAU: TDateTimeField
      FieldName = 'CRDTCAU'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRSPC_DTPEN: TDateTimeField
      FieldName = 'CRSPC_DTPEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRSPC_DTNEG: TDateTimeField
      FieldName = 'CRSPC_DTNEG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRSERASA_DTNEG: TDateTimeField
      FieldName = 'CRSERASA_DTNEG'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODCTA: TFloatField
      FieldName = 'CRCODCTA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNOMCTA: TStringField
      FieldName = 'CRNOMCTA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 40
    end
    object TB_FPCRCRCODCC: TStringField
      FieldName = 'CRCODCC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 5
    end
    object TB_FPCRCRNOMCC: TStringField
      FieldName = 'CRNOMCC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 40
    end
    object TB_FPCRCRNATDC: TStringField
      FieldName = 'CRNATDC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 1
    end
    object TB_FPCRCRCODDEP: TStringField
      FieldName = 'CRCODDEP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 5
    end
    object TB_FPCRCRNOMDEP: TStringField
      FieldName = 'CRNOMDEP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 40
    end
    object TB_FPCRCRDESCMV: TStringField
      FieldName = 'CRDESCMV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 60
    end
    object TB_FPCRCRSEQ: TFloatField
      FieldName = 'CRSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDATPED: TDateTimeField
      FieldName = 'CRDATPED'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRJURDEB: TFloatField
      FieldName = 'CRJURDEB'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRJURDEB_SAC: TFloatField
      FieldName = 'CRJURDEB_SAC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCOMIS_EXTRA: TFloatField
      FieldName = 'CRCOMIS_EXTRA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCX_CODCAI: TFloatField
      FieldName = 'CRCX_CODCAI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCX_LOTMOV: TFloatField
      FieldName = 'CRCX_LOTMOV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCHD_EMITENTE: TStringField
      FieldName = 'CRCHD_EMITENTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 40
    end
    object TB_FPCRCRFIN_CODFIN: TFloatField
      FieldName = 'CRFIN_CODFIN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRPFPGTO: TFloatField
      FieldName = 'CRPFPGTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTABPV: TStringField
      FieldName = 'CRTABPV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 2
    end
    object TB_FPCRCRCODPV: TFloatField
      FieldName = 'CRCODPV'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRVINC02: TFloatField
      FieldName = 'CRVINC02'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCODFPGTO: TFloatField
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLANCFIN: TFloatField
      FieldName = 'CRLANCFIN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRRECFRENTE: TFloatField
      FieldName = 'CRRECFRENTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNOMFPGTO: TStringField
      FieldName = 'CRNOMFPGTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 40
    end
    object TB_FPCRCRCODCAR: TFloatField
      FieldName = 'CRCODCAR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTARPROT: TFloatField
      FieldName = 'CRTARPROT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRTARPROT_DATA: TDateTimeField
      FieldName = 'CRTARPROT_DATA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCUSPROT: TFloatField
      FieldName = 'CRCUSPROT'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRCUSPROT_DATA: TDateTimeField
      FieldName = 'CRCUSPROT_DATA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTSEQ_EC: TFloatField
      FieldName = 'CRLOTSEQ_EC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRLOTE_EC: TFloatField
      FieldName = 'CRLOTE_EC'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRDATHOR_REP: TDateTimeField
      FieldName = 'CRDATHOR_REP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object TB_FPCRCRNPED_NIVEL: TFloatField
      FieldName = 'CRNPED_NIVEL'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 532
    Top = 480
  end
  object Tb_Cep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from cep'
      'where cep is null')
    Left = 336
    Top = 80
    object Tb_CepCOMPL: TStringField
      FieldName = 'COMPL'
      Size = 65
    end
    object Tb_CepUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Tb_CepCID: TStringField
      FieldName = 'CID'
      Size = 25
    end
    object Tb_CepDESC02: TStringField
      FieldName = 'DESC02'
      Size = 50
    end
    object Tb_CepBAI: TStringField
      FieldName = 'BAI'
      Size = 60
    end
    object Tb_CepCEP: TStringField
      DisplayWidth = 9
      FieldName = 'CEP'
      Size = 9
    end
    object Tb_CepABREV: TStringField
      FieldName = 'ABREV'
      Size = 1
    end
    object Tb_CepDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
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
    OpcoesPreview.PaginaZebrada = False
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
    Left = 804
    Top = 328
  end
end
