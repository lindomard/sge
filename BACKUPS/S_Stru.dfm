object Frm_Stru: TFrm_Stru
  Left = 59
  Top = 18
  Width = 906
  Height = 655
  Caption = 'Verificar Estruturas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClick = bb_AnchietaClick
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 569
    Width = 890
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 890
    Height = 569
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Campos Padr'#245'es'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 541
        Align = alClient
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 123
          Width = 876
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
          Width = 876
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
          Top = 527
          Width = 876
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
        Top = 289
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
        Top = 308
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Arquivo de Grades/Lotes(CADLGC)'
        TabOrder = 14
        OnClick = bbAjusta_CADLGCClick
      end
      object bbCheques: TBitBtn
        Left = -1
        Top = 327
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
        Top = 346
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
        Top = 365
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Estoque Diario(CADEDIA)'
        TabOrder = 19
        OnClick = bbEstDiaClick
      end
      object bbUltCrpPro: TBitBtn
        Left = -1
        Top = 383
        Width = 245
        Height = 20
        Caption = 'Ajustar Informa'#231#245'es da '#218'ltima compra no Produto'
        TabOrder = 20
        OnClick = bbUltCrpProClick
      end
      object bbReComis: TBitBtn
        Left = 249
        Top = 174
        Width = 245
        Height = 19
        Caption = '&Recalcular Comiss'#227'o'
        TabOrder = 21
        OnClick = bbReComisClick
      end
      object bbFPCRDUP: TBitBtn
        Left = -1
        Top = 402
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade do Arquivo FPCR'
        TabOrder = 22
        OnClick = bbFPCRDUPClick
      end
      object bbCodpfor: TBitBtn
        Left = 0
        Top = 192
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do  Arquivo de CODPFOR(CODPFOR)'
        TabOrder = 23
        OnClick = bbCodpforClick
      end
      object bbSoumRel: TBitBtn
        Left = 0
        Top = 486
        Width = 245
        Height = 20
        Caption = 'Deixar So um Relacionamento CODPFOR'
        TabOrder = 24
        OnClick = bbSoumRelClick
      end
      object bbProSemRel: TBitBtn
        Left = 249
        Top = 20
        Width = 245
        Height = 20
        Caption = 'Eliminar Produtos sem Relacionamento'
        TabOrder = 25
        OnClick = bbProSemRelClick
      end
      object bbAjustarDupPV: TBitBtn
        Left = 249
        Top = 39
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. &Plano de Vendas(CADPV/CADPV2)'
        TabOrder = 26
        OnClick = bbAjustarDupPVClick
      end
      object bbAjustaDupPar: TBitBtn
        Left = 249
        Top = 59
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. Arquivo de Parametros(CADPAR)'
        TabOrder = 27
        OnClick = bbAjustaDupParClick
      end
      object bbCadMI: TBitBtn
        Left = 249
        Top = 78
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.do Mapa Resumo(CADMI01/02)'
        TabOrder = 28
        OnClick = bbCadMIClick
      end
      object bbCadCSF: TBitBtn
        Left = 249
        Top = 97
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade Consumidor Final (CADCSF)'
        TabOrder = 29
        OnClick = bbCadCSFClick
      end
      object bbAjustar_bairro: TBitBtn
        Left = 249
        Top = 117
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bairros(CADBAI)'
        TabOrder = 30
        OnClick = bbAjustar_bairroClick
      end
      object bbCadUF: TBitBtn
        Left = 249
        Top = 136
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Estados(CADUF)'
        TabOrder = 31
        OnClick = bbCadUFClick
      end
      object bbEstGrade: TBitBtn
        Left = 249
        Top = 155
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arq. Estoque Diario(Grade)(CADEGD)'
        TabOrder = 32
        OnClick = bbEstGradeClick
      end
      object bbDupProm: TBitBtn
        Left = 249
        Top = 194
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Promocoes(CADPPR)'
        TabOrder = 33
        OnClick = bbDupPromClick
      end
      object bbDarChPed: TBitBtn
        Left = 248
        Top = 232
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicatas a Receber Repetidas(CADDAR)'
        TabOrder = 34
        OnClick = bbDarChPedClick
      end
      object bbCadtp: TBitBtn
        Left = 248
        Top = 251
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de Produtos(CADTP)'
        TabOrder = 35
        OnClick = bbCadtpClick
      end
      object CHAVERET: TEdit
        Left = 547
        Top = 328
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 36
      end
      object bbBuscarAgora: TBitBtn
        Left = 626
        Top = 329
        Width = 111
        Height = 20
        Caption = 'Buscar Agora Gera Nova'
        TabOrder = 37
        OnClick = bbBuscarAgoraClick
      end
      object BitBtn3: TBitBtn
        Left = 248
        Top = 270
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades das Minutas(CADMIN2)'
        TabOrder = 38
        OnClick = BitBtn3Click
      end
      object bbCadgru: TBitBtn
        Left = 248
        Top = 289
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades Grupod de Produtos(CADGRU)'
        TabOrder = 39
        OnClick = bbCadgruClick
      end
      object bbEstPratDep: TBitBtn
        Left = 248
        Top = 346
        Width = 245
        Height = 20
        Caption = 'Ajustar Estoque(Prateleira/Deposito/Reparo)'
        TabOrder = 40
        OnClick = bbEstPratDepClick
      end
      object bbCadBal02: TBitBtn
        Left = 248
        Top = 365
        Width = 245
        Height = 20
        Caption = 'Ajustar dup. Arquivo de Balanco(CADBAL02)'
        TabOrder = 41
        OnClick = bbCadBal02Click
      end
      object bbcadpf01v: TBitBtn
        Left = 0
        Top = 269
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup. do Ped.Fornec.Vcto.(CADPF1V)'
        TabOrder = 42
        OnClick = bbcadpf01vClick
      end
      object bbigualProEst: TBitBtn
        Left = 248
        Top = 422
        Width = 245
        Height = 20
        Caption = 'Igualar CADEST/CADPRO'
        TabOrder = 43
        OnClick = bbigualProEstClick
      end
      object bbCadTra: TBitBtn
        Left = 248
        Top = 403
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bairros(CADTRA)'
        TabOrder = 44
        OnClick = bbCadTraClick
      end
      object bbReEntrada: TBitBtn
        Left = 0
        Top = 524
        Width = 245
        Height = 20
        Caption = 'Recriar lotes de Entradas'
        TabOrder = 45
      end
      object bbQtdAtendidas: TBitBtn
        Left = 496
        Top = 39
        Width = 245
        Height = 20
        Caption = 'Criar Unidades Atendidas'
        TabOrder = 46
        OnClick = bbQtdAtendidasClick
      end
      object bbAtuaFPag: TBitBtn
        Left = 496
        Top = 59
        Width = 245
        Height = 20
        Caption = 'Atualizar Prazos das Formas de Pagamentos'
        TabOrder = 47
        OnClick = bbAtuaFPagClick
      end
      object bbTestar: TBitBtn
        Left = 496
        Top = 79
        Width = 245
        Height = 20
        Caption = 'Testar Campos CADUF'
        TabOrder = 48
        OnClick = bbTestarClick
      end
      object bbBaixarDup: TBitBtn
        Left = 496
        Top = 99
        Width = 245
        Height = 20
        Caption = 'Baixar Duplicatas Sobrepostas(NAZARE)'
        TabOrder = 49
        OnClick = bbBaixarDupClick
      end
      object bbCadUF_TPPED: TBitBtn
        Left = 496
        Top = 136
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de CADUF_TPPED'
        TabOrder = 50
        OnClick = bbCadUF_TPPEDClick
      end
      object bbCorCidade: TBitBtn
        Left = 495
        Top = 155
        Width = 245
        Height = 20
        Caption = 'Corrigir Cidades no Cadastro de Clientes'
        TabOrder = 51
        OnClick = bbCorCidadeClick
      end
      object bbAjustarDatas: TBitBtn
        Left = 494
        Top = 174
        Width = 245
        Height = 20
        Caption = 'Ajustar Data do Caixa para Data Pgto(a pagar)'
        TabOrder = 52
        OnClick = bbAjustarDatasClick
      end
      object bbErroTroco: TBitBtn
        Left = 494
        Top = 194
        Width = 245
        Height = 20
        Caption = 'C'#243'rrigir erro de Troco DO SGE FRENTE'
        TabOrder = 53
        OnClick = bbErroTrocoClick
      end
      object bbcepmysql: TBitBtn
        Left = 494
        Top = 213
        Width = 245
        Height = 18
        Caption = 'Criar Insert para CEP mysql-linux'
        TabOrder = 54
        OnClick = bbcepmysqlClick
      end
      object bbDARDAPCX: TBitBtn
        Left = 493
        Top = 231
        Width = 245
        Height = 20
        Caption = 'Ajustar Dep/Centro Custo apagar/Rec c/Caixa'
        TabOrder = 55
        OnClick = bbDARDAPCXClick
      end
      object BitBtn4: TBitBtn
        Left = 493
        Top = 250
        Width = 245
        Height = 20
        Caption = 'Atualiza Terminal Service'
        TabOrder = 56
        OnClick = BitBtn4Click
      end
      object bbAjuDupCli: TBitBtn
        Left = 494
        Top = 270
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Clientes'
        TabOrder = 57
        OnClick = bbAjuDupCliClick
      end
      object bbAjustar_banco: TBitBtn
        Left = 247
        Top = 461
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Bancos(CADBCO)'
        TabOrder = 58
        OnClick = bbAjustar_bancoClick
      end
      object bbordemped: TBitBtn
        Left = 493
        Top = 289
        Width = 245
        Height = 20
        Caption = 'Ajustar Ordem/Pagina no CADP01'
        TabOrder = 59
        OnClick = bbAjuDupCliClick
      end
      object bbAbaterNegativo: TBitBtn
        Left = 493
        Top = 308
        Width = 190
        Height = 20
        Caption = 'Abater Lote Negativo Onde ha Positivo'
        TabOrder = 60
        OnClick = bbAbaterNegativoClick
      end
      object bbCabAcTab: TBitBtn
        Left = -1
        Top = 443
        Width = 245
        Height = 20
        Caption = 'Ajustar Acesso Por Tabela(CADACTAB)'
        TabOrder = 61
        OnClick = bbCabAcTabClick
      end
      object prod_old: TEdit
        Left = 304
        Top = 387
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 62
      end
      object GerarNovoPro: TBitBtn
        Left = 381
        Top = 386
        Width = 111
        Height = 20
        Caption = 'Gerar Novo'
        TabOrder = 63
        OnClick = GerarNovoProClick
      end
      object BitBtn6: TBitBtn
        Left = 492
        Top = 388
        Width = 245
        Height = 20
        Caption = 'Corrigir Aniversariantes(CADANI)'
        TabOrder = 64
        OnClick = BitBtn6Click
      end
      object BBPENPRO: TBitBtn
        Left = 491
        Top = 407
        Width = 245
        Height = 20
        Caption = 'Corrigir Pendencias CADPRO'
        TabOrder = 65
        OnClick = BBPENPROClick
      end
      object CHAVELC1: TEdit
        Left = 541
        Top = 423
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 66
      end
      object BitBtn8: TBitBtn
        Left = 625
        Top = 424
        Width = 111
        Height = 20
        Caption = 'Buscar Agora Gera Nova'
        TabOrder = 67
        OnClick = BitBtn8Click
      end
      object bbCodFor: TBitBtn
        Left = -1
        Top = 464
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Fornecedor(CADFOR)'
        TabOrder = 68
        OnClick = bbCodForClick
      end
      object bb_duptpdre: TBitBtn
        Left = 248
        Top = 442
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADTPDRE'
        TabOrder = 69
        OnClick = bb_duptpdreClick
      end
      object BBNIVPRO: TBitBtn
        Left = 495
        Top = 441
        Width = 242
        Height = 20
        Caption = 'Corrigir Nivel do Produto'
        TabOrder = 70
        OnClick = BBNIVPROClick
      end
      object bbCadCli: TBitBtn
        Left = 247
        Top = 2
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidades de Clientes (CADCLI)'
        TabOrder = 71
        OnClick = bbCadCliClick
      end
      object bbFpag: TBitBtn
        Left = 0
        Top = 504
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.das Formas de Pagamentos (CADFP)'
        TabOrder = 72
        OnClick = bbFpagClick
      end
      object bbDupEmp: TBitBtn
        Left = 493
        Top = 460
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades de Empresa (CADEMP)'
        TabOrder = 73
        OnClick = bbDupEmpClick
      end
      object BitBtn10: TBitBtn
        Left = 496
        Top = 119
        Width = 245
        Height = 20
        Caption = 'Ajustar duplicidades tipo de CADTIPPED'
        TabOrder = 74
        OnClick = BitBtn10Click
      end
      object bbfpcrduptit: TBitBtn
        Left = -1
        Top = 421
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade do Arquivo FPCRDUP TITULOS'
        TabOrder = 75
        OnClick = bbfpcrduptitClick
      end
      object bbArredonda: TBitBtn
        Left = 247
        Top = 482
        Width = 245
        Height = 20
        Caption = 'Arredondar Decimais das Quantidades'
        TabOrder = 76
        OnClick = bbArredondaClick
      end
      object bbArredondaPU: TBitBtn
        Left = 495
        Top = 483
        Width = 245
        Height = 20
        Caption = 'Arredondar Decimais das Pre'#231'os Unitarios'
        TabOrder = 77
        OnClick = bbArredondaPUClick
      end
      object bbdupCADCV: TBitBtn
        Left = 249
        Top = 213
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.Arquivo de Promocoes(CADCV)'
        TabOrder = 78
        OnClick = bbdupCADCVClick
      end
      object bbfpcp: TBitBtn
        Left = 494
        Top = 349
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade FPCP'
        TabOrder = 79
        OnClick = bbfpcpClick
      end
      object bbfpcpdup: TBitBtn
        Left = 495
        Top = 368
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade FPCPDUP'
        TabOrder = 80
        OnClick = bbfpcpdupClick
      end
      object bbcadrcli: TBitBtn
        Left = 496
        Top = 1
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADRCLI'
        TabOrder = 81
        OnClick = bbcadrcliClick
      end
      object bbcadecf_cat52_download: TBitBtn
        Left = 493
        Top = 505
        Width = 245
        Height = 20
        Caption = 'Duplicidade CADECF_CAT52_DOWNLOAD'
        TabOrder = 82
        OnClick = bbcadecf_cat52_downloadClick
      end
      object BitBtn5: TBitBtn
        Left = 494
        Top = 20
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.CADP02_LOTES'
        TabOrder = 83
        OnClick = BitBtn5Click
      end
      object BitBtn11: TBitBtn
        Left = 246
        Top = 501
        Width = 245
        Height = 20
        Caption = 'Ajustar Duplicidade CADDWORD_TAB01/02'
        TabOrder = 84
        OnClick = BitBtn11Click
      end
      object edt_codpro: TEdit
        Left = 683
        Top = 310
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 85
      end
      object BitBtn14: TBitBtn
        Left = 245
        Top = 519
        Width = 245
        Height = 20
        Caption = 'Ajustar Dup.CADPF22_LOTES_ORC'
        TabOrder = 86
        OnClick = BitBtn14Click
      end
      object BitBtn15: TBitBtn
        Left = 493
        Top = 523
        Width = 245
        Height = 20
        Caption = 'cadped di'
        TabOrder = 87
        OnClick = BitBtn15Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Outros'
      ImageIndex = 2
      object TextoTmp: TRichEdit
        Left = 0
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
        Top = 348
        Width = 882
        Height = 193
        ActivePage = tsCadp02
        Align = alBottom
        TabOrder = 2
        object tsCadp02: TTabSheet
          Caption = 'tsCadp02'
          object memo_triggers_ped02_temp: TMemo
            Left = 0
            Top = 0
            Width = 874
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADP02_PRE_TEMP_TRIG01 AFTER INSERT ON' +
                ' CADP02_PRE_TEMP'
              'FOR EACH ROW'
              ''
              'declare mDiferSaldo NUMBER;'
              ''
              ' mTotalPed NUMBER;'
              ' mIcmsRetido NUMBER;'
              ' mTotIPI NUMBER;'
              ' mTotalDesc_Prod NUMBER;'
              ' mTotalDesc_Serv NUMBER;'
              ' mTotalDescRat_Prod NUMBER;'
              ' mTotalDescRat_Serv  NUMBER;'
              ' mValorTemp NUMBER;'
              ' mDifTemp NUMBER;'
              ''
              'mTot_pItem_DescCab NUMBER;'
              'mTot_pItem_TotDescRat NUMBER;'
              'mTot_pItem_TotAcrecRat NUMBER;'
              'mTot_pItem_DespAces NUMBER;'
              'mTot_pItem_ValSeg NUMBER;'
              'mTot_pItem_TotDes NUMBER;'
              'mTot_pItem_ValRepas NUMBER;'
              'mTot_pItem_Basen NUMBER;'
              'mTot_PItem_Icmsn NUMBER;'
              'mTot_PItem_Icmsr NUMBER;'
              'mTot_pItem_Baser NUMBER;'
              'mTot_PItem_ValIPI NUMBER;'
              'mTot_PItem_ICMS_SN NUMBER;'
              ''
              'mTot_Ped02_DescCab  NUMBER;'
              'mTot_ped02_TotDescRat NUMBER;'
              'mTot_ped02_TotAcrecRat NUMBER;'
              'mTot_ped02_DespAces NUMBER;'
              'mTot_ped02_ValSeg NUMBER;'
              'mTot_ped02_TotDes NUMBER;'
              'mTot_ped02_ValRepas NUMBER;'
              'mTot_ped02_Basen NUMBER;'
              'mTot_ped02_Icmsn NUMBER;'
              'mTot_ped02_Icmsr NUMBER;'
              'mTot_ped02_Baser NUMBER;'
              'mTot_ped02_ValIPI NUMBER;'
              'mTot_ped02_ICMS_SN NUMBER;'
              ''
              'mTot_Dif_DescCab  NUMBER;'
              'mTot_Dif_TotDescRat NUMBER;'
              'mTot_Dif_TotAcrecRat NUMBER;'
              'mTot_Dif_DespAces NUMBER;'
              'mTot_Dif_ValSeg NUMBER;'
              'mTot_Dif_TotDes NUMBER;'
              'mTot_Dif_ValRepas NUMBER;'
              'mTot_Dif_Basen NUMBER;'
              'mTot_Dif_Icmsn NUMBER;'
              'mTot_Dif_Icmsr NUMBER;'
              'mTot_Dif_Baser NUMBER;'
              'mTot_Dif_ValIPI NUMBER;'
              'mTot_Dif_ICMS_SN NUMBER;'
              ''
              ''
              ' mTotalBCIcms NUMBER;'
              ' mTotalBCST NUMBER;'
              ' mTotalICMSR NUMBER;'
              ' mTotalCOMIS NUMBER;'
              ' mTotalIcms NUMBER;'
              ' mTotalPIS NUMBER;'
              ' mTotalCOFINS NUMBER;'
              ' mTotMer NUMBER;'
              ' mTotSer NUMBER;'
              ' mQtdxPreco NUMBER;'
              ' mPercRat NUMBER;'
              ' mValorDup NUMBER;'
              ' mDifDup NUMBER;'
              ' mItemPed NUMBER;'
              ' pos_ini NUMBER;'
              ' namelength NUMBER;'
              ' l_loop INTEGER;'
              ' mOper VARCHAR2(01);'
              ' mQtdProdEst NUMBER;'
              ' mCodEmpPad NUMBER;'
              ''
              ' mnv_tamprz INTEGER;'
              ' mnv_vAcum VARCHAR2(100);'
              ' mnv_Prazo INTEGER;'
              ' mNv_Tipo VARCHAR2(1);'
              ' mNv_valor NUMBER;'
              ' mNv_qtdcampos integer;'
              ''
              ' mNv_CodFP Integer;'
              ' mNv_NomFP VARCHAR2(30);'
              ' mNv_Baixa VARCHAR2(1);'
              
                ' mNv_ParcDif Integer; -- parcela onde pode aplicar a diferenca d' +
                'e arredondamentos'
              ' mNv_Campo Integer;'
              ' mNv_ValFixo Number;'
              ' mNv_QtdDupRat Integer;'
              ' mNv_Parcela Integer;'
              ' mNv_QtdParc Integer;'
              ''
              ''
              ''
              'mNv_CodBco_Cob integer;'
              'mNv_CodCx_Rec integer;'
              'mNv_CodUsr_Rec integer;'
              'mNv_Vago10 integer;'
              'mNv_Vago11 integer;'
              'mNv_Vago12 integer;'
              ''
              ''
              ' mNv_QtdParcDiv Integer;'
              ''
              ' mtamprz Integer;'
              ''
              'begin'
              ''
              'mNv_qtdcampos:=12;'
              ''
              'mDiferSaldo:=0;'
              'mTotalPed:=0;'
              'mIcmsRetido:=0;'
              ''
              'mTotalBCIcms:=0;'
              'mTotalBCST:=0;'
              'mTotalICMSR:=0;'
              'mTotalCOMIS:=0;'
              'mTotalPIS:=0;'
              'mTotalCOFINS:=0;'
              'mTotalIcms:=0;'
              'mTotMer:=0;'
              'mTotSer:=0;'
              'mQtdxPreco:=0;'
              'mPercRat:=0;'
              'mValorDup:=0;'
              'mDifDup:=0;'
              'mItemPed:=0;'
              'pos_ini:=1;'
              'namelength:=0;'
              'l_loop:=0;'
              'if :NEW.P2T_CODEMP>100 then'
              '   mCodEmpPad:=:NEW.P2T_CODEMP-100;'
              'else'
              '   mCodEmpPad:=:NEW.P2T_CODEMP;'
              'end if;'
              ''
              ''
              ''
              ''
              'IF :NEW.P2T_CODPRO<>0 then'
              
                '   select count(*) into mQtdProdEst FROM CADEST WHERE (CECODEMP=' +
                ':NEW.P2T_CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                              CECODPRO=:NEW.P2T_CODPRO and (CEFI' +
                'LIAL=:NEW.P2T_FILIAL OR CEFILIAL is null);'
              '   if mQtdProdEst=0 then'
              '      Insert into CADEST ('
              '                        CECODEMP,'
              '                        CECODPRO,'
              '                        CEFILIAL,'
              '                        CESALDO,'
              '                        CESALDO_PRAT,'
              '                        CESALDO_DEP,'
              '                        CESALDO_REP,'
              '                        CESALDOR,'
              '                        CESALDOC,'
              '                        CESALDOT,'
              '                        CEENTPEN,'
              '                        CEQTD_ANALISE'
              '                        ) Values ('
              '                        mCodEmpPad,'
              '                        :NEW.P2T_CODPRO,'
              '                        :NEW.P2T_FILIAL,'
              '                        0,'
              '                        0,'
              '                        0, -- SALDO_DEP'
              '                        0, -- SALDO_REP'
              '                        0, -- SALDOR'
              '                        0, -- SALDOC'
              '                        0, -- SALDOT'
              '                        0, -- ENTPEN'
              '                        0'
              '                        );'
              ''
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO=0 then'
              '    if :NEW.P2T_PROD_SERV=0 then'
              '       Insert into CADP02'
              '                          ('
              '                          P2CODEMP'
              '                          ,P2CHAVE'
              '                          ,P2ORDEM'
              '                          ,P2LOTSEQ'
              '                          ,P2ITEM'
              '                          ,P2CODPRO'
              '                          ,P2NOMPRO_ORI'
              '                          ,P2UND'
              '                          ,P2QTD'
              '                          ,P2VALDES'
              '                          ,P2DESC1'
              '                          ,P2DESC2'
              '                          ,P2DESC3'
              '                          ,P2DESCPR'
              '                          ,P2PCOFPG'
              '                          ,P2PRECO'
              '                          ,P2PCOMIS'
              '                          ,P2SIT'
              '                          ,P2CODVEN'
              '                          ,P2CSOSN'
              '                          ,P2CSOSN_ORI'
              '                          ,P2REDUTICM'
              '                          ,P2MODBCST'
              '                          ,P2ST_IVA'
              '                          ,P2ST_REDUT'
              '                          ,P2ST_ICMCRED'
              '                          ,P2ST_ICMDEB'
              '                          ,P2PCOTAB'
              '                          ,P2UCPR'
              '                          ,P2PCOCUS'
              '                          ,P2PCOMAX'
              '                          ,P2ALIPI'
              '                          ,P2ALIQ'
              '                          ,P2ALIQICMSDES'
              '                          ,P2ALIQAPROXTRIB'
              '                          ,P2CFO'
              '                          ,P2CFOSUBECF'
              '                          ,P2PDESCF'
              '                          ,P2ALPIS'
              '                          ,P2CST_PIS'
              '                          ,P2ALCOFINS'
              '                          ,P2CST_COFINS'
              '                          ,P2COMPLEMENTO'
              '                          ,P2PCRED_SN'
              '                          ,P2SITUACAO'
              '                          ,P2ESTNOR'
              '                          ,P2ESTCONS'
              '                          ,P2ESTTERC'
              '                          ,P2ESTREV'
              '                          ,P2PROMOCAO'
              '                          ,P2DESC_CAB'
              '                          ,P2CONTESP'
              '                          ,P2AMBIENTE'
              '                          ,P2CONS_PROPRIO'
              '                          ,P2TIPO_PCO'
              '                          ,P2ICMS_ALIPI'
              '                          ) values ('
              '                          :NEW.P2T_CODEMP'
              '                          , :NEW.P2T_CHAVE'
              '                          , 01'
              '                          , :NEW.P2T_CHAVE_ANO'
              '                          , :NEW.P2T_ITEM'
              '                          , :NEW.P2T_CODPRO'
              '                          , :NEW.P2T_NOMPRO_ORI'
              '                          , :NEW.P2T_UND'
              '                          , :NEW.P2T_QTD'
              '                          , :NEW.P2T_DESC_VALOR'
              '                          , :NEW.P2T_DESC_PERC01'
              '                          , :NEW.P2T_DESC_PERC02'
              '                          , :NEW.P2T_DESC_PERC03'
              '                          , :NEW.P2T_DESC_PPR'
              '                          , :NEW.P2T_PRECO_FPGTO'
              '                          , :NEW.P2T_PRECO'
              '                          , :NEW.P2T_COMISV01_PERC'
              '                          , :NEW.P2T_CST'
              '                          , :NEW.P2T_CODVEN'
              '                          , :NEW.P2T_CSOSN'
              '                          , :NEW.P2T_CSOSN_ORI'
              '                          , :NEW.P2T_ICMS_PRED'
              '                          , :NEW.P2T_MODBCST'
              '                          , :NEW.P2T_ST_IVA'
              '                          , :NEW.P2T_ST_PREDUT'
              '                          , :NEW.P2T_ST_ICMSCRED'
              '                          , :NEW.P2T_ST_ICMSDEB'
              '                          , :NEW.P2T_PRECO_TAB'
              '                          , :NEW.P2T_PRECO_UCPR'
              '                          , :NEW.P2T_PRECO_CUS'
              '                          , :NEW.P2T_PRECO_MAXCONS'
              '                          , :NEW.P2T_IPI_PERC'
              '                          , :NEW.P2T_ICMS_PERC'
              '                          , :NEW.P2T_ICMS_DESPERC'
              '                          , :NEW.P2T_ALIQAPROXTRIB'
              '                          , :NEW.P2T_CFOP'
              '                          , :NEW.P2T_CFOP_SUBECF'
              '                          , :NEW.P2T_DESCFIN_PERC'
              '                          , :NEW.P2T_PIS_PERC'
              '                          , :NEW.P2T_PIS_CST'
              '                          , :NEW.P2T_COFINS_PERC'
              '                          , :NEW.P2T_COFINS_CST'
              '                          , :NEW.P2T_DESCCOMPL'
              '                          , :NEW.P2T_ICMSSN_PERC'
              '                          , :NEW.P2T_SITUACAO'
              '                          , :NEW.P2T_ESTNOR'
              '                          , :NEW.P2T_ESTCONS'
              '                          , :NEW.P2T_ESTTERC'
              '                          , :NEW.P2T_ESTREV'
              '                          , :NEW.P2T_PROMOCAO'
              '                          , :NEW.P2T_DESC_CAB'
              '                          , :NEW.P2T_CONTESP'
              '                          , :NEW.P2T_AMBIENTE'
              '                          , :NEW.P2T_CONS_PROPRIO'
              '                          , :NEW.P2T_TPPCO_ITEM'
              '                          , :NEW.P2T_ICMS_ALIPI'
              '                          );'
              '   else'
              '     Insert into CADP02S'
              '                          ('
              '                           P2SCODEMP'
              '                          ,P2SCHAVE'
              '                          ,P2SORDEM'
              '                          ,P2SLOTSEQ'
              '                          ,P2SITEM'
              '                          ,P2SCODPRO'
              '                          ,P2SQTD'
              '                          ,P2SDESC1'
              '                          ,P2SDESC2'
              '                          ,P2SDESC3'
              '                          ,P2SPRECO'
              '                          ,P2SSIT'
              '                          ,P2SCSOSN'
              '                          ,P2SCSOSN_ORI'
              '                          ,P2SVALDES'
              '                          ,P2SCODFAB'
              '                          ,P2SSTATUS'
              '                          ,P2SPCOTAB'
              '                          ,P2SPCOCUS'
              '                          ,P2SALIQ'
              '                          ,P2SCFO'
              '                          ,P2SPDESCF'
              '                          ,P2SCODFUN'
              '                          ,P2SREDINSS'
              '                          ,P2SALIQINSS'
              '                          ,P2SREDIRRF'
              '                          ,P2SALIQIRRF'
              '                          ,P2SDESC_CAB'
              '                          ,P2SESTNOR'
              '                          ,P2SESTCONS'
              '                          ,P2SESTTERC'
              '                          ,P2SESTREV'
              '                          ,P2SPROMOCAO'
              '                          ,P2SDESC_COMP'
              '                          ,P2SSITUACAO'
              '                          ) values ('
              '                          :NEW.P2T_CODEMP'
              '                          , :NEW.P2T_CHAVE'
              '                          , 01'
              '                          , :NEW.P2T_CHAVE_ANO'
              '                          , :NEW.P2T_ITEM'
              '                          , :NEW.P2T_CODPRO'
              '                          ,:NEW.P2T_QTD'
              '                          ,:NEW.P2T_DESC_PERC01'
              '                          ,:NEW.P2T_DESC_PERC02'
              '                          ,:NEW.P2T_DESC_PERC03'
              '                          ,:NEW.P2T_PRECO'
              '                          ,:NEW.P2T_CST'
              '                          ,:NEW.P2T_CSOSN'
              '                          ,:NEW.P2T_CSOSN_ORI'
              '                          ,:NEW.P2T_DESC_VALOR'
              '                          ,0'
              '                          ,:NEW.P2T_SITUACAO'
              '                          ,:NEW.P2T_PRECO_TAB'
              '                          ,:NEW.P2T_PRECO_CUS'
              '                          ,:NEW.P2T_PISSQN'
              '                          ,:NEW.P2T_CFOP'
              '                          ,:NEW.P2T_DESCFIN_PERC'
              ''
              '                          ,:NEW.P2T_CODUSR'
              '                          ,:NEW.P2T_INSS_PRED'
              '                          ,:NEW.P2T_INSS_ALIQ'
              '                          ,:NEW.P2T_IRRF_PRED'
              '                          ,:NEW.P2T_IRRF_ALIQ'
              '                          ,:NEW.P2T_DESC_CAB'
              '                          ,:NEW.P2T_ESTNOR'
              '                          ,:NEW.P2T_ESTCONS'
              '                          ,:NEW.P2T_ESTTERC'
              '                          ,:NEW.P2T_ESTREV'
              '                          ,:NEW.P2T_PROMOCAO'
              '                          ,:NEW.P2T_DESCCOMPL'
              '                          ,:NEW.P2T_SITUACAO'
              '                          );'
              ''
              '   end if;'
              ''
              ''
              ''
              '   if (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2T_CODEMP,'
              '                             :NEW.P2T_CODPRO,'
              '                             :NEW.P2T_FILIAL,'
              '                             :NEW.P2T_CHAVE,'
              '                             :NEW.P2T_CHAVE_ANO,'
              '                             :NEW.P2T_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDO IS NU' +
                'LL THEN 0 ELSE CESALDO END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2T_CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                              CECODPRO=:NEW.P2T_CODPRO and (CEFI' +
                'LIAL=:NEW.P2T_FILIAL OR CEFILIAL is null)) ,'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2T_CODUSR,'
              '                             :NEW.P2T_HISTORICO,'
              '                             :NEW.P2T_ESTNOR || '#39'N'#39
              '                             );'
              '      if :NEW.P2T_ESTNOR='#39'S'#39' then'
              
                '         update CADPRO set PDDTULTSAI=SYSDATE,PDSALDO=CASE WHEN ' +
                'PDSALDO IS NULL THEN 0 ELSE PDSALDO END'
              
                '         -:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL) and'
              '         PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FILIAL ' +
                'OR CEFILIAL is null);'
              '      end if;'
              ''
              '      if :NEW.P2T_ESTNOR='#39'E'#39' then'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END'
              
                '         +:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL) and'
              '         PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FILIAL ' +
                'OR CEFILIAL is null);'
              '      end if;'
              ''
              '   end if;'
              '   if (:NEW.P2T_ESTCONS='#39'S'#39') or (:NEW.P2T_ESTCONS='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2T_CODEMP,'
              '                             :NEW.P2T_CODPRO,'
              '                             :NEW.P2T_FILIAL,'
              '                             :NEW.P2T_CHAVE,'
              '                             :NEW.P2T_CHAVE_ANO,'
              '                             :NEW.P2T_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOC IS N' +
                'ULL THEN 0 ELSE CESALDOC END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2T_CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2T_CODPRO and (CEFIL' +
                'IAL=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2T_CODUSR,'
              '                             :NEW.P2T_HISTORICO'
              '                             ,:NEW.P2T_ESTCONS  || '#39'C'#39
              '                             );'
              '      if :NEW.P2T_ESTCONS='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END'
              
                '         -:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END'
              
                '         -:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2T_ESTCONS='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END'
              
                '         +:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END'
              
                '         +:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              ''
              '   if (:NEW.P2T_ESTTERC='#39'S'#39') or (:NEW.P2T_ESTTERC='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2T_CODEMP,'
              '                             :NEW.P2T_CODPRO,'
              '                             :NEW.P2T_FILIAL,'
              '                             :NEW.P2T_CHAVE,'
              '                             :NEW.P2T_CHAVE_ANO,'
              '                             :NEW.P2T_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOT IS N' +
                'ULL THEN 0 ELSE CESALDOT END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2T_CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2T_CODPRO and (CEFIL' +
                'IAL=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2T_CODUSR,'
              '                             :NEW.P2T_HISTORICO'
              '                             ,:NEW.P2T_ESTTERC  || '#39'T'#39
              '                             );'
              '      if :NEW.P2T_ESTTERC='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END'
              
                '         -:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END'
              
                '         -:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2T_ESTTERC='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END'
              
                '         +:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END'
              
                '         +:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              '   if (:NEW.P2T_ESTREV='#39'S'#39') or (:NEW.P2T_ESTREV='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2T_CODEMP,'
              '                             :NEW.P2T_CODPRO,'
              '                             :NEW.P2T_FILIAL,'
              '                             :NEW.P2T_CHAVE,'
              '                             :NEW.P2T_CHAVE_ANO,'
              '                             :NEW.P2T_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOR IS N' +
                'ULL THEN 0 ELSE CESALDOR END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2T_CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2T_CODPRO and (CEFIL' +
                'IAL=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2T_CODUSR,'
              '                             :NEW.P2T_HISTORICO'
              '                             ,:NEW.P2T_ESTREV  || '#39'R'#39
              '                             );'
              '      if :NEW.P2T_ESTREV='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END'
              
                '         -:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END'
              
                '         -:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2T_ESTREV='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END'
              
                '         +:NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END'
              
                '         +:NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODE' +
                'MP=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_TIPO_EVENTO=1 then'
              '   if :NEW.P2T_PROD_SERV=0 then'
              '      Update CADP02 set    P2CODPRO=:NEW.P2T_CODPRO'
              '                       ,P2NOMPRO_ORI=:NEW.P2T_NOMPRO_ORI'
              '                       ,P2UND=:NEW.P2T_UND'
              '                       ,P2QTD=:NEW.P2T_QTD'
              '                       ,P2VALDES=:NEW.P2T_DESC_VALOR'
              '                       ,P2DESC1=:NEW.P2T_DESC_PERC01'
              '                       ,P2DESC2=:NEW.P2T_DESC_PERC02'
              '                       ,P2DESC3=:NEW.P2T_DESC_PERC03'
              '                       ,P2DESCPR=:NEW.P2T_DESC_PPR'
              '                       ,P2PRECO=:NEW.P2T_PRECO'
              '                       ,P2PCOFPG=:NEW.P2T_PRECO_FPGTO'
              '                       ,P2PCOMIS=:NEW.P2T_COMISV01_PERC'
              '                       ,P2SIT=:NEW.P2T_CST'
              '                       ,P2CSOSN=:NEW.P2T_CSOSN'
              '                       ,P2CSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              '                       ,P2CODVEN=:NEW.P2T_CODVEN'
              '                       ,P2REDUTICM=:NEW.P2T_ICMS_PRED'
              '                       ,P2MODBCST=:NEW.P2T_MODBCST'
              '                       ,P2ST_IVA=:NEW.P2T_ST_IVA'
              '                       ,P2ST_REDUT=:NEW.P2T_ST_PREDUT'
              '                       ,P2ST_ICMCRED=:NEW.P2T_ST_ICMSCRED'
              '                       ,P2ST_ICMDEB=:NEW.P2T_ST_ICMSDEB'
              '                       ,P2PCOTAB=:NEW.P2T_PRECO_TAB'
              '                       ,P2UCPR=:NEW.P2T_PRECO_UCPR'
              '                       ,P2PCOCUS=:NEW.P2T_PRECO_CUS'
              '                       ,P2PCOMAX=:NEW.P2T_PRECO_MAXCONS'
              '                       ,P2ALIPI=:NEW.P2T_IPI_PERC'
              '                       ,P2ALIQ=:NEW.P2T_ICMS_PERC'
              '                       ,P2ALIQICMSDES=:NEW.P2T_ICMS_DESPERC'
              '                       ,P2ALIQAPROXTRIB=:NEW.P2T_ALIQAPROXTRIB'
              '                       ,P2CFO=:NEW.P2T_CFOP'
              '                       ,P2CFOSUBECF=:NEW.P2T_CFOP_SUBECF'
              '                       ,P2PDESCF=:NEW.P2T_DESCFIN_PERC'
              '                       ,P2ALPIS=:NEW.P2T_PIS_PERC'
              '                       ,P2CST_PIS=:NEW.P2T_PIS_CST'
              '                       ,P2ALCOFINS=:NEW.P2T_COFINS_PERC'
              '                       ,P2CST_COFINS=:NEW.P2T_COFINS_CST'
              '                       ,P2COMPLEMENTO=:NEW.P2T_DESCCOMPL'
              '                       ,P2PCRED_SN=:NEW.P2T_ICMSSN_PERC'
              '                       ,P2PCREDSN=:NEW.P2T_ICMSSN_PERC'
              '                       ,P2SITUACAO=:NEW.P2T_SITUACAO'
              '                       ,P2ESTNOR=:NEW.P2T_ESTNOR'
              '                       ,P2ESTCONS=:NEW.P2T_ESTCONS'
              '                       ,P2ESTTERC=:NEW.P2T_ESTTERC'
              '                       ,P2ESTREV=:NEW.P2T_ESTREV'
              '                       ,P2PROMOCAO=:NEW.P2T_PROMOCAO'
              '                       ,P2DESC_CAB=:NEW.P2T_DESC_CAB'
              '                       ,P2CONTESP=:NEW.P2T_CONTESP'
              '                       ,P2AMBIENTE=:NEW.P2T_AMBIENTE'
              '                       ,P2CONS_PROPRIO=:NEW.P2T_CONS_PROPRIO'
              '                       ,P2TIPO_PCO=:NEW.P2T_TPPCO_ITEM'
              '                       ,P2ICMS_ALIPI=:NEW.P2T_ICMS_ALIPI'
              ''
              ''
              ''
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              '                       and P2CHAVE=:NEW.P2T_CHAVE'
              '                       and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                       and P2ITEM=:NEW.P2T_ITEM'
              '                       and P2CODPRO=:NEW.P2T_CODPRO_ANT;'
              '   else'
              '      Update CADP02S set      P2SCODPRO=:NEW.P2T_CODPRO'
              '                          ,P2SQTD=:NEW.P2T_QTD'
              '                          ,P2SDESC1=:NEW.P2T_DESC_PERC01'
              '                          ,P2SDESC2=:NEW.P2T_DESC_PERC02'
              '                          ,P2SDESC3=:NEW.P2T_DESC_PERC03'
              '                          ,P2SPRECO=:NEW.P2T_PRECO'
              '                          ,P2SSIT=:NEW.P2T_CST'
              '                          ,P2SCSOSN=:NEW.P2T_CSOSN'
              '                          ,P2SCSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              '                          ,P2SVALDES=:NEW.P2T_DESC_VALOR'
              '                          ,P2SCODFAB=0'
              '                          ,P2SSTATUS=:NEW.P2T_SITUACAO'
              '                          ,P2SPCOTAB=:NEW.P2T_PRECO_TAB'
              '                          ,P2SPCOCUS=:NEW.P2T_PRECO_CUS'
              '                          ,P2SALIQ=:NEW.P2T_PISSQN'
              '                          ,P2SCFO=:NEW.P2T_CFOP'
              '                          ,P2SPDESCF=:NEW.P2T_DESCFIN_PERC'
              '                          ,P2SCODFUN=:NEW.P2T_CODUSR'
              '                          ,P2SREDINSS=:NEW.P2T_INSS_PRED'
              '                          ,P2SALIQINSS=:NEW.P2T_INSS_ALIQ'
              '                          ,P2SREDIRRF=:NEW.P2T_IRRF_PRED'
              '                          ,P2SALIQIRRF=:NEW.P2T_IRRF_ALIQ'
              '                          ,P2SDESC_CAB=:NEW.P2T_DESC_CAB'
              '                          ,P2SESTNOR=:NEW.P2T_ESTNOR'
              '                          ,P2SESTCONS=:NEW.P2T_ESTCONS'
              '                          ,P2SESTTERC=:NEW.P2T_ESTTERC'
              '                          ,P2SESTREV=:NEW.P2T_ESTREV'
              '                          ,P2SPROMOCAO=:NEW.P2T_PROMOCAO'
              '                          ,P2SDESC_COMP=:NEW.P2T_DESCCOMPL'
              '                          ,P2SSITUACAO=:NEW.P2T_SITUACAO'
              '                          WHERE'
              '                           P2SCODEMP=:NEW.P2T_CODEMP'
              '                           and P2SCHAVE=:NEW.P2T_CHAVE'
              '                           and P2SORDEM=01'
              '                           and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                           and P2SITEM=:NEW.P2T_ITEM'
              '                           and P2SCODPRO=:NEW.P2T_CODPRO_ANT;'
              ''
              '   end if;'
              '   if :NEW.P2T_CODPRO<>:NEW.P2T_CODPRO_ANT then'
              '      if (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDO IS NULL THEN' +
                ' 0 ELSE CESALDO END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTNOR || '#39'N'#39
              '                      );'
              '         if (:NEW.P2T_ESTNOR='#39'S'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END-'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END-'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '         if (:NEW.P2T_ESTNOR='#39'E'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END+'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END+'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if :NEW.P2T_ESTNOR='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO_ANT,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2T_' +
                'CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,mOper || '#39'N'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              '      if (:NEW.P2T_ESTCONS='#39'S'#39') or (:NEW.P2T_ESTCONS='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOC IS NULL THE' +
                'N 0 ELSE CESALDOC END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTCONS || '#39'N'#39
              '                      );'
              '         if (:NEW.P2T_ESTCONS='#39'S'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END-'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END-'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '         if (:NEW.P2T_ESTCONS='#39'E'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END+'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END+'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if :NEW.P2T_ESTCONS='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO_ANT,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOC IS NULL' +
                ' THEN 0 ELSE CESALDOC END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2T_' +
                'CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,mOper || '#39'C'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              ''
              '      if (:NEW.P2T_ESTTERC='#39'S'#39') or (:NEW.P2T_ESTTERC='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTTERC || '#39'N'#39
              '                      );'
              '         if (:NEW.P2T_ESTTERC='#39'S'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END-'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END-'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '         if (:NEW.P2T_ESTTERC='#39'E'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END+'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END+'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if :NEW.P2T_ESTTERC='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO_ANT,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOT IS NULL' +
                ' THEN 0 ELSE CESALDOT END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2T_' +
                'CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,mOper || '#39'T'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '      if (:NEW.P2T_ESTREV='#39'S'#39') or (:NEW.P2T_ESTREV='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTREV || '#39'N'#39
              '                      );'
              '         if (:NEW.P2T_ESTREV='#39'S'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END-'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END-'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '         if (:NEW.P2T_ESTREV='#39'E'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END+'
              
                '            :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END+'
              
                '            :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCO' +
                'DEMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if :NEW.P2T_ESTREV='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO_ANT,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      :NEW.P2T_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOT IS NULL' +
                ' THEN 0 ELSE CESALDOT END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2T_' +
                'CODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,mOper || '#39'R'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END'
              
                '            +:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (CECODEMP=:NEW.P2T_CODEMP or' +
                ' CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2T_CODPRO_ANT and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END'
              
                '            -:NEW.P2T_QTD_ANT WHERE (PDCODEMP=:NEW.P2T_CODEMP or' +
                ' PDCODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2T_CODPRO_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              '   if :NEW.P2T_CODPRO=:NEW.P2T_CODPRO_ANT then'
              '      mDiferSaldo:=:NEW.P2T_QTD-:NEW.P2T_QTD_ANT;'
              '      if (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDO IS NULL THEN' +
                ' 0 ELSE CESALDO END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTNOR || '#39'N'#39
              '                      );'
              '         if (:NEW.P2T_ESTNOR='#39'S'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDDTULTSAI=SYSDATE,PDSALDO=CASE WH' +
                'EN PDSALDO IS NULL THEN 0 ELSE PDSALDO END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if (:NEW.P2T_ESTNOR='#39'E'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '      end if;'
              ''
              ''
              '      if (:NEW.P2T_ESTCONS='#39'S'#39') or (:NEW.P2T_ESTCONS='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOC IS NULL THE' +
                'N 0 ELSE CESALDOC END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTCONS || '#39'C'#39
              '                      );'
              '         if (:NEW.P2T_ESTCONS='#39'S'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if (:NEW.P2T_ESTCONS='#39'E'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '      end if;'
              ''
              '      if (:NEW.P2T_ESTTERC='#39'S'#39') or (:NEW.P2T_ESTTERC='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTTERC || '#39'T'#39
              '                      );'
              '         if (:NEW.P2T_ESTTERC='#39'S'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if (:NEW.P2T_ESTTERC='#39'E'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              ''
              '      end if;'
              ''
              ''
              '      if (:NEW.P2T_ESTREV='#39'S'#39') or (:NEW.P2T_ESTREV='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2T_CODEMP,'
              '                      :NEW.P2T_CODPRO,'
              '                      :NEW.P2T_FILIAL,'
              '                      :NEW.P2T_CHAVE,'
              '                      :NEW.P2T_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOR IS NULL THE' +
                'N 0 ELSE CESALDOR END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2T_CODEM' +
                'P or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NE' +
                'W.P2T_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2T_CODUSR,'
              '                      :NEW.P2T_HISTORICO'
              '                      ,:NEW.P2T_ESTREV || '#39'R'#39
              '                      );'
              '         if (:NEW.P2T_ESTREV='#39'R'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '         if (:NEW.P2T_ESTREV='#39'E'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2T_CODEMP or CECOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_' +
                'FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCOD' +
                'EMP=:NEW.P2T_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2T_CODPRO;'
              '         end if;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_TIPO_EVENTO=2 then'
              '   if :NEW.P2T_PROD_SERV=0 then'
              '     delete from CADP02 where P2CODEMP=:NEW.P2T_CODEMP'
              '                and P2CHAVE=:NEW.P2T_CHAVE'
              '                and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                and P2ITEM=:NEW.P2T_ITEM'
              '                and P2CODPRO=:NEW.P2T_CODPRO;'
              '   ELSE'
              '      delete from CADP02S where P2SCODEMP=:NEW.P2T_CODEMP'
              '                and P2SCHAVE=:NEW.P2T_CHAVE'
              '                and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                and P2SITEM=:NEW.P2T_ITEM'
              '                and P2SCODPRO=:NEW.P2T_CODPRO;'
              '   end if;'
              '   if (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39') then'
              '      if (:NEW.P2T_ESTNOR='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'N'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDDTULTSAI=SYSDATE,PDSALDO=CASE WHEN ' +
                'PDSALDO IS NULL THEN 0 ELSE PDSALDO END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2T_ESTCONS='#39'S'#39') or (:NEW.P2T_ESTCONS='#39'E'#39') then'
              '      if (:NEW.P2T_ESTCONS='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'C'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              '   if (:NEW.P2T_ESTTERC='#39'S'#39') or (:NEW.P2T_ESTTERC='#39'E'#39') then'
              '      if (:NEW.P2T_ESTTERC='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'T'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2T_ESTREV='#39'S'#39') or (:NEW.P2T_ESTREV='#39'E'#39') then'
              '      if (:NEW.P2T_ESTREV='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'R'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              'end if;'
              ''
              'if :NEW.P2T_TIPO_EVENTO=3 then'
              '   if (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39') then'
              '      if (:NEW.P2T_ESTNOR='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'N'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2T_ESTCONS='#39'S'#39') or (:NEW.P2T_ESTCONS='#39'E'#39') then'
              '      if (:NEW.P2T_ESTCONS='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'C'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              '   if (:NEW.P2T_ESTTERC='#39'S'#39') or (:NEW.P2T_ESTTERC='#39'E'#39') then'
              '      if (:NEW.P2T_ESTTERC='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              ''
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'T'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2T_ESTREV='#39'S'#39') or (:NEW.P2T_ESTREV='#39'E'#39') then'
              '      if (:NEW.P2T_ESTREV='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      else'
              '         mOper:='#39'S'#39';'
              ''
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2T_CODEMP,'
              '                         :NEW.P2T_CODPRO,'
              '                         :NEW.P2T_FILIAL,'
              '                         :NEW.P2T_CHAVE,'
              '                         :NEW.P2T_CHAVE_ANO,'
              '                         :NEW.P2T_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2T_C' +
                'ODEMP or CECODEMP=:NEW.P2T_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL' +
                '=:NEW.P2T_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2T_CODUSR,'
              '                         :NEW.P2T_HISTORICO'
              '                         ,mOper || '#39'R'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END+'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END+'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END-'
              
                '         :NEW.P2T_QTD WHERE (CECODEMP=:NEW.P2T_CODEMP or CECODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2T_CODPRO and (CEFILIAL=:NEW.P2T_FIL' +
                'IAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END-'
              
                '         :NEW.P2T_QTD WHERE (PDCODEMP=:NEW.P2T_CODEMP or PDCODEM' +
                'P=:NEW.P2T_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2T_CODPRO;'
              '      end if;'
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              
                '-- if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              
                '--   :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT O' +
                'R'
              
                '--   :NEW.P2T_PED1_DESC_PERC03!= :NEW.P2T_PED1_DESC_PERC03_ANT T' +
                'HEN'
              
                '   Update CADP02 set P2DESC_CAB=ROUND(  ((( ((P2QTD*P2PRECO)-NVL' +
                '(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC02,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC01,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2),'
              
                '                     P2TOTLIQ=NVL( ((round(P2QTD*P2PRECO,2))-NVL' +
                '(P2VALDES,0))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDE' +
                'S,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +ROUND((((((round(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)+R' +
                'OUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2)'
              '                     ,round(P2QTD*P2PRECO,2))'
              ''
              ''
              
                '                     where P2CODEMP=:NEW.P2T_CODEMP and P2CHAVE=' +
                ':NEW.P2T_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              
                '   UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) whe' +
                're P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              
                '   Update CADP02S set P2SDESC_CAB=ROUND(  ((( (P2SQTD*P2SPRECO) ' +
                ') *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2),'
              
                '                     P2STOTLIQ=(P2SQTD*P2SPRECO)-(ROUND(  ((( (P' +
                '2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2))'
              
                '                     where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHA' +
                'VE=:NEW.P2T_CHAVE  and'
              '   P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              '-- end if;'
              ''
              ''
              ''
              ''
              ''
              
                'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES=CASE WH' +
                'EN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              
                ',P2STOTLIQ=((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              
                'Update CADP02 set P2DESCRAT=0,P2ACRERAT=0,P2VDESPACESRAT=0,P2VFR' +
                'ERAT=0 ,P2VSEGRAT=0'
              ',P2VDESPACESRAT_BCICMS=0,P2VFRERAT_BCICMS=0 ,P2VSEGRAT_BCICMS=0'
              ',P2TOTDES=NVL(P2VALDES,0)+ CASE WHEN'
              'P2DESC_CAB IS NULL THEN 0'
              
                'ELSE NVL(P2DESC_CAB,0) END +  ROUND((((((P2QTD*P2PRECO)-NVL(P2VA' +
                'LDES,0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              
                'ELSE NVL(P2DESC_CAB,0) END)  * CASE WHEN :NEW.P2T_TPPCO_CAB=3 TH' +
                'EN 0 ELSE NVL(P2DESC1,0) END) / 100) , 2) +ROUND((((((P2QTD*P2PR' +
                'ECO)-NVL(P2VALDES,0)))-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0) END  )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2) +ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE'
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((ROUND(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100) , 2)' +
                ')'
              
                ' +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                ' (ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              ',P2TOTLIQ='
              'NVL('
              
                '(((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB' +
                ' IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0) END )'
              
                ' * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE NVL(P2DESC1,0) END' +
                ') / 100) , 2)+ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WH' +
                'EN P2DESC_CAB IS NULL'
              
                'THEN 0 ELSE NVL(P2DESC_CAB,0) END)-(ROUND(  ((( ((P2QTD*P2PRECO)' +
                '-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              
                'THEN 0 ELSE NVL(P2DESC_CAB,0) END ) * CASE WHEN :NEW.P2T_TPPCO_C' +
                'AB=3 THEN 0 ELSE NVL(P2DESC1,0) END) / 100) , 2)))*NVL(P2DESC2,0' +
                ')/100),2)'
              
                '+ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0) END)-'
              
                '((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0)'
              
                'END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE NVL(P2DESC1,0' +
                ') END) / 100) , 2))+(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-' +
                'CASE'
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0) END)-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE NVL(P2DESC_CAB,0) END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE NVL(P2DESC1,0) END)' +
                ' / 100) , 2)))*NVL(P2DESC2,0)/100),2)))) *NVL(P2DESC3,0)/100) ,2' +
                '))'
              ',round(P2QTD*P2PRECO,2))'
              'where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              
                'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) where ' +
                'P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              
                'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES=CASE WH' +
                'EN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              
                ',P2STOTLIQ=((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              
                'Select sum(NVL(P2TOTLIQ,round(P2QTD*P2PRECO,2))) into  mTotMer f' +
                'rom CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              ''
              ''
              'mTotalPed :=0;'
              'Select sum(P2STOTLIQ) into mTotSer from CADP02S WHERE'
              '                                  P2SCODEMP=:NEW.P2T_CODEMP'
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              ''
              'if mTotMer is null then'
              '   mTotMer:=0;'
              'end if;'
              ''
              'if mTotSer is null then'
              '   mTotSer:=0;'
              'end if;'
              ''
              ''
              'if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              '   if mTotMer>0 then'
              '      mTotalPed := mtotalPed + mTotMer;'
              '   end if;'
              '   if mTotSer>0 then'
              '      mTotalPed := mtotalPed + mTotSer;'
              '   end if;'
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'TOTALPED '#39' || mtotal' +
                'ped || '#39' totmer '#39' || mtotmer || '#39' totser '#39' || mtotser || '#39' tipo ' +
                #39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz)' +
                ';'
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 THEN'
              '      mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/mTotalPed;'
              ''
              '      if mTotMer>0 then'
              '         Update CADP02 set P2DESCRAT='
              
                '                                 TRUNC(((P2TOTLIQ*mPercRat)/100)' +
                ',2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      if mTotSer>0 then'
              '         Update CADP02S set P2SDESCRAT='
              
                '                                 TRUNC(((P2STOTLIQ*mPercRat)/100' +
                '),2)'
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      if mTotMer>0 then'
              '         Select sum(P2DESCRAT) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      if mTotSer>0 then'
              '         Select sum(P2SDESCRAT) into mQtdxPreco from CADP02S'
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_DESCRAT-mDifDup;'
              '      if mDifDup!=0 then'
              '         if mTotMer>0 then'
              ''
              
                '            select P2ITEM into mItemPed FROM (select P2ITEM,P2SI' +
                'T,P2TOTLIQ,'
              '            (select sum(P2TOTLIQ) from CADP02 tot where'
              '                TOT.P2CHAVE=PED2.P2CHAVE'
              '                AND TOT.P2LOTSEQ=PED2.P2LOTSEQ'
              '                AND TOT.P2CODEMP=PED2.P2CODEMP'
              '                AND TOT.P2SIT=PED2.P2SIT'
              
                '               and (TOT.P2SITUACAO<>1 OR TOT.P2SITUACAO is null)' +
                ') as soma'
              '                FROM CADP02 PED2'
              '               WHERE P2CHAVE=:NEW.P2ST_CHAVE'
              '               AND P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '               AND P2CODEMP=:NEW.P2ST_CODEMP'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '               )  WHERE ROWNUM<2;'
              ''
              ''
              ''
              ''
              ''
              '            Update CADP02 set P2DESCRAT=P2DESCRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         else'
              
                '            select P2SITEM into mItemPed FROM (select p2sitem fr' +
                'om CADP02S'
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null)'
              '            order by P2STOTLIQ DESC'
              '            ) where ROWNUM<2 ;'
              '            Update CADP02S set P2SDESCRAT=P2SDESCRAT+mDifDup'
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2SITEM=mItemPed'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '      end if;'
              '      Update CADP02 set  P2TOTDES=P2TOTDES+P2DESCRAT'
              
                '                                    ,P2TOTLIQ=P2TOTLIQ-nvl(P2DES' +
                'CRAT,0)'
              
                '                                    ,P2VCOMIS=ROUND(P2TOTLIQ*P2P' +
                'COMIS/100,2)'
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              '      and P2CHAVE=:NEW.P2T_CHAVE'
              '      and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '      Update CADP02S set P2STOTDES=P2STOTDES+P2SDESCRAT'
              
                '                                    , P2STOTLIQ=P2STOTLIQ-P2SDES' +
                'CRAT'
              '      where P2SCODEMP=:NEW.P2T_CODEMP'
              '      and P2SCHAVE=:NEW.P2T_CHAVE'
              '      and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '   ELSE'
              '      if :NEW.P2T_PED1_ACRERAT>0 THEN'
              '         mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/mTotalPed;'
              '         Update CADP02 set P2ACRERAT='
              
                '                                TRUNC(((P2TOTLIQ*mPercRat)/100),' +
                '2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '         Select sum(P2ACRERAT) into mDifDup from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '         mDifDup:=:NEW.P2T_PED1_ACRERAT-mDifDup;'
              '         if mDifDup!=0 THEN'
              
                '            Select P2ITEM into mItemPed FROM ( select p2item fro' +
                'm CADP02'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '            order by P2TOTLIQ DESC'
              '            ) where ROWNUM<2;'
              '            Update CADP02 set P2ACRERAT=P2ACRERAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '         Update CADP02 set P2TOTLIQ=P2TOTLIQ+nvl(P2ACRERAT,0)'
              
                '                                  ,P2VCOMIS=ROUND(P2TOTLIQ*P2PCO' +
                'MIS/100,2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      END IF;'
              '   end if;'
              'end if;'
              ''
              ''
              ''
              'if :NEW.P2T_PED1_VALSEG>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALSEG*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                          ,P2VSEGRAT_BCICMS=  TRUNC(((P2TOTLIQ*m' +
                'PercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VSEGRAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALSEG-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              '         if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            ,P2VSEGRAT_BCICMS=P2VSEGRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              '         mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_PED1_VALFRE>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALFRE*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                             ,P2VFRERAT_BCICMS=  TRUNC(((P2TOTLI' +
                'Q*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VFRERAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALFRE-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               ,P2VFRERAT_BCICMS=P2VFRERAT_BCICMS+mDifDup'
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              ''
              '        mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              'if :NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN>0 then'
              '   if mTotMer>0 then'
              
                '      mPercRat:=((:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN)*1' +
                '00)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              
                '                          ,P2VDESPACESRAT_BCICMS=  TRUNC(((P2TOT' +
                'LIQ*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              
                '      Select sum(nvl(P2VDESPACESRAT,0)) into mQtdxPreco from CAD' +
                'P02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              
                '      mDifDup:=(:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN)-mDi' +
                'fDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            ,P2VDESPACESRAT_BCICMS=P2VDESPACESRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '          end if;'
              '          mDifDup:=0;'
              ''
              ''
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              'UPDATE CADP02S SET'
              'P2SBCISSQN=P2STOTLIQ,'
              'P2SVISSQN=round( ((P2STOTLIQ*P2SALIQ)/100),2) ,'
              'P2SVCOMIS=round( ((P2STOTLIQ*P2SPCOMIS)/100),2) ,'
              'P2SVDESCF=round( ((P2STOTLIQ*P2SPDESCF)/100),2) ,'
              'P2SBCINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100),2) END ,'
              'P2SVINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100) *P2SALIQINS' +
                'S/100),2) END,'
              ''
              'P2SBCIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100),2) END ,'
              'P2SVIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100) *P2SALIQIRR' +
                'F/100),2) END'
              'where P2SCODEMP=:NEW.P2T_CODEMP'
              'and P2SCHAVE=:NEW.P2T_CHAVE'
              'and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              ''
              'P2VICMSDES = CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              'P2TOTDES = P2TOTDES + CASE nvl(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              'P2TOTLIQ = P2TOTLIQ - CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END'
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP'
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              'P2COFINS=round( ((P2TOTLIQ*P2ALCOFINS)/100),2) ,'
              'P2VALIPI=round( ((P2TOTLIQ*P2ALIPI)/100),2) ,'
              'P2VALPIS=round( ((P2TOTLIQ*P2ALPIS)/100),2) ,'
              'P2VDESCF=round( ((P2TOTLIQ*P2PDESCF)/100),2) ,'
              'P2TOTOUT=CASE P2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ((P2TOTLIQ*P2REDUTICM)/100),2) END ,'
              'P2BASEN= CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+' +
                'P2VFRERAT_BCICMS)   +CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TO' +
                'TLIQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100),2) ' +
                'END ,'
              ''
              ''
              'P2ICMSN=CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *P2AL' +
                'IQ/100),2) END,'
              ''
              'P2VLRICMS_SN=CASE P2PCRED_SN WHEN 0 THEN 0 ELSE'
              
                'ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFR' +
                'ERAT_BCICMS)  *P2PCRED_SN)/100),2) END ,'
              
                'P2BASER=  case when (p2st_icmcred+p2st_icmdeb) <=0 then 0 else C' +
                'ASE P2MODBCST WHEN  4 THEN'
              '   ROUND(  (P2TOTLIQ+P2TOTDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '    * ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_IVA)/1' +
                '00)'
              
                '  * ( (CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST_REDUT)/' +
                '100) , 2)'
              
                '    WHEN 0 THEN ROUND( (P2QTD*P2PCOMAX) *((CASE P2ST_REDUT WHEN ' +
                '0 THEN 100 ELSE 100 END-P2ST_REDUT)/100),2)'
              '    WHEN 5 THEN ROUND (P2QTD * P2PCOMAX,2)'
              '   ELSE 0 END  end'
              '   , P2ICMSR = case P2MODBCST when 5 then'
              
                '                ROUND((P2QTD * P2PCOMAX * P2ST_ICMDEB/100 - P2TO' +
                'TLIQ*P2ST_ICMCRED/100) * (1- P2ST_REDUT/100),2)'
              '        else'
              
                '           CASE WHEN (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P2TO' +
                'TDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              
                '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) <=0 THEN' +
                ' 0'
              '         ELSE'
              
                '         (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P2TOTDES+((P2TOT' +
                'LIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) END'
              '    end'
              ''
              '  , P2TOTLIQ= P2TOTLIQ + case P2MODBCST when 5 then'
              
                '                ROUND((P2QTD * P2PCOMAX * P2ST_ICMDEB/100 - P2TO' +
                'TLIQ*P2ST_ICMCRED/100) * (1- P2ST_REDUT/100),2)'
              '        else'
              
                '           CASE WHEN (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P2TO' +
                'TDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              
                '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) <=0 THEN' +
                ' 0'
              '         ELSE'
              
                '         (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P2TOTDES+((P2TOT' +
                'LIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) END'
              '    end'
              ''
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2),'
              
                '        P2VALAPROXTRIB = round(CASE NVL(P2ALIQAPROXTRIB,0) WHEN ' +
                '0 THEN 0'
              
                '                        ELSE P2TOTLIQ * NVL(P2ALIQAPROXTRIB,0)/1' +
                '00 END,2)'
              '                        '
              ' where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              '        P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              'if (:NEW.P2T_ST_ICMSDEB=0) THEN'
              '   UPDATE CADP02 SET P2BASER=0,P2ICMSR=0'
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '   and P2ITEM=:NEW.P2T_ITEM;'
              '   END IF;'
              ''
              ''
              'mTotalPed := 0;'
              'mTotalBCIcms:=0;'
              'mTotalBCST:=0;'
              'mTotalPIS:=0;'
              'mTotalCOFINS:=0;'
              'mTotalICMSR:=0;'
              'mTotalCOMIS:=0;'
              'mTotalICms:=0;'
              ''
              'mTotalDesc_Prod:=0;'
              'mTotalDesc_Serv:=0;'
              'mTotalDescRat_Prod:=0;'
              'mTotalDescRat_Serv:=0;'
              ''
              'mTotIPI:=0;'
              
                'Select sum(P2VALPIS), sum(P2COFINS),  sum(NVL(P2TOTLIQ,round(P2Q' +
                'TD*P2PRECO,2))),sum(P2VCOMIS),sum(P2QTD*P2PRECO),'
              
                'sum(P2BASEN),sum(P2BASER),sum(P2ICMSR),sum(P2ICMSN),sum(P2TOTDES' +
                ')'
              ',sum(P2VALIPI),sum(P2DESCRAT)'
              ' into'
              
                'mTotalPIS,mTotalCOFINS,mQtdxPreco,mTotalCOMIS,mTotMer,mTotalBCIc' +
                'ms,mTotalBCST,mTotalICMSR,MtotalICMS,mTotalDesc_Prod,mTotIPI,mTo' +
                'talDescRat_Prod'
              ' from CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              ''
              
                'Select sum(P2STOTLIQ),sum(P2SQTD*P2SPRECO),sum(P2STOTDES),sum(P2' +
                'SDESCRAT) into'
              '  mQtdxPreco,mTotSer,mTotalDesc_Serv,mTotalDescRat_Serv'
              '      from CADP02S'
              '  WHERE P2SCODEMP=:NEW.P2T_CODEMP'
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              'if mTotSer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              '         if mvalordup is null then'
              '            mvalordup:=0;'
              '            end if;'
              ''
              'if MTOTSER is null then'
              '   MTOTSER:=0;'
              'end if;'
              'if MTOTMER is null then'
              '   MTOTMER:=0;'
              'end if;'
              ''
              'if mTotalDesc_Prod is null then'
              '   mTotalDesc_Prod:=0;'
              'end if;'
              ''
              'if mTotalDesc_Serv is null then'
              '   mTotalDesc_Serv:=0;'
              'end if;'
              ''
              ''
              'if mTotalDescRat_Serv is null then'
              '   mTotalDescRat_Serv:=0;'
              'end if;'
              ''
              'if mTotalDescRat_Prod is null then'
              '   mTotalDescRat_Prod:=0;'
              'end if;'
              ''
              ''
              '/* INICIO DO CONTROLE ESPECIAL */'
              ''
              'if :NEW.P2T_CONTESP=1 THEN'
              
                '   Select sum(P2VSEGRAT), sum(P2VDESPACESRAT),sum(P2DESC_CAB),su' +
                'm(P2DESCRAT),sum(P2DESCRAT) ,sum(P2TOTDES),sum(P2REPAS),sum'
              
                '(P2BASEN),sum(P2ICMSN),sum(P2BASER),sum(P2ICMSR),sum(P2VALIPI),s' +
                'um(P2VLRICMS_SN)'
              '  into'
              
                'mTot_ped02_ValSeg,mTot_ped02_DespAces,mTot_Ped02_DescCab,mTot_Pe' +
                'd02_TotDescRat,mTot_ped02_TotAcrecRat,mTot_Ped02_Totdes'
              ',mTot_Ped02_ValRepas,mTot_ped02_Basen,'
              
                '    mTot_Ped02_Icmsn,mTot_Ped02_Baser,mTot_Ped02_Icmsr,mTot_Ped0' +
                '2_ValIPI,mTot_Ped02_ICMS_SN from CADP02'
              '       where P2CODEMP=:NEW.P2T_CODEMP and'
              '         P2CHAVE=:NEW.P2T_CHAVE and'
              '         P2LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              
                '   update CADP02_CMET set P2CM_PITEM_DESC1=:NEW.P2T_DESC_PERC01,' +
                'P2CM_PITEM_DESC2=:NEW.P2T_DESC_PERC02'
              '                         ,P2CM_PITEM_DESC3=:NEW.P2T_DESC_PERC03'
              '                         ,P2CM_PITEM_PALIQ=:NEW.P2T_ICMS_PERC'
              '                         ,P2CM_PITEM_REDUTICM=:NEW.P2T_ICMS_PRED'
              '                         ,P2CM_PITEM_PREPAS=:NEW.P2T_ICMS_PRED'
              '                         ,P2CM_PITEM_PALIPI=:NEW.P2T_IPI_PERC'
              '                         ,P2CM_PITEM_PALPIS=:NEW.P2T_PIS_PERC'
              
                '                         ,P2CM_PITEM_PDESCF=:NEW.P2T_DESCFIN_PER' +
                'C'
              '                         ,P2CM_PITEM_ST_REDUT=:NEW.P2T_ST_PREDUT'
              
                '                         ,P2CM_PITEM_ST_ICMCRED=:NEW.P2T_ST_ICMS' +
                'CRED'
              
                '                         ,P2CM_PITEM_ST_ICMDEB=:NEW.P2T_ST_ICMSD' +
                'EB'
              '                         ,P2CM_PITEM_MODBCST=:NEW.P2T_MODBCST'
              '                         ,P2CM_PITEM_ST_IVA=:NEW.P2T_ST_IVA'
              
                '                         ,P2CM_PITEM_PCREDSN=:NEW.P2T_ICMSSN_PER' +
                'C'
              '                         ,P2CM_PITEM_CFOP=:NEW.P2T_CFOP'
              
                '                         ,P2CM_PITEM_CSOSN_ORI=:NEW.P2T_CSOSN_OR' +
                'I'
              '                         ,P2CM_PITEM_CSOSN=:NEW.P2T_CSOSN'
              '                         ,P2CM_PITEM_CST_ICMS=:NEW.P2T_CST'
              '                         ,P2CM_PITEM_CST_PIS=:NEW.P2T_PIS_CST'
              
                '                         ,P2CM_PITEM_CST_COFINS=:NEW.P2T_COFINS_' +
                'CST'
              
                '                         ,P2CM_PITEM_PALCOFINS=:NEW.P2T_COFINS_P' +
                'ERC'
              '                         ,P2CM_PITEM_CST_IPI=:NEW.P2T_IPI_CST'
              
                '                         ,P2CM_PITEM_PERCITEM=(P2CM_QTD_KG*100) ' +
                '/ :NEW.P2T_QTD'
              
                '                         ,P2CM_PITEM_PCOMAX=:NEW.P2T_PRECO_MAXCO' +
                'NS'
              '                         ,P2CM_PITEM_TOTDES=0'
              '                         ,P2CM_PITEM_VALDES=0'
              '                         ,P2CM_PITEM_BASEN=0'
              '                         ,P2CM_PITEM_ICMSN=0'
              '                         ,P2CM_PITEM_VREPAS=0'
              '                         ,P2CM_PITEM_BASER=0'
              '                         ,P2CM_PITEM_ICMSR=0'
              '                         ,P2CM_PITEM_VALIPI=0'
              '                         ,P2CM_PITEM_VLRICMS_SN=0'
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '   SELECT P2CM_CODIGO into mItemPed FROM (select P2CM_CODIGO fro' +
                'm CADP02_CMET'
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '   and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '   and P2CM_ITEM=:NEW.P2T_ITEM'
              '   order by (P2CM_QTD_KG*P2CM_PITEM_PRECO) DESC'
              '   ) WHERE ROWNUM <2;'
              ''
              '   if :NEW.P2T_DESC_VALOR<>0 then'
              
                '      update CADP02_CMET set P2CM_PITEM_VALDES=ROUND( (P2CM_PITE' +
                'M_PERCITEM*:NEW.P2T_DESC_VALOR/100) , 2)'
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      Select sum(P2CM_PITEM_VALDES) into  mValorTemp'
              '         from CADP02_CMET'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              '      if mValorTemp<>:NEW.P2T_DESC_VALOR then'
              '         mDifTemp:=:NEW.P2T_DESC_VALOR-mValorTemp;'
              
                '         Update CADP02_CMET set P2CM_PITEM_VALDES=P2CM_PITEM_VAL' +
                'DES+mDifTemp'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2CM_CODIGO=mItemPed'
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              '         end if;'
              ''
              ''
              '      end if;'
              ''
              
                '   if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT ' +
                'OR'
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC03_ANT ' +
                'THEN'
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=ROUND(  ((( ((P' +
                '2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                      +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-' +
                'NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((( '
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((( '
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2),'
              
                '                        P2CM_PITEM_TOTLIQ= ((P2CM_QTD_KG*P2CM_PI' +
                'TEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-(ROUND(  ((( '
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                        +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO' +
                ')-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((( '
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2))'
              
                '                        where P2CM_CODEMP=:NEW.P2T_CODEMP  and P' +
                '2CM_CHAVE=:NEW.P2T_CHAVE  and'
              
                '      P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO AND P2CM_ITEM=:NEW.P2T_ITEM' +
                ';'
              ''
              ''
              ''
              ''
              
                '      Select sum(P2CM_PITEM_DESC_CAB) into mValorTemp from CADP0' +
                '2_CMET'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              '      if mValorTemp<>mTot_Ped02_TotDescRat then'
              '         mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              
                '         Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_D' +
                'ESC_CAB+mDifTemp'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2CM_CODIGO=mItemPed'
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              '         end if;'
              '      end if;'
              ''
              
                '   Update CADP02_CMET set P2CM_PITEM_DESCRAT=0,P2CM_PITEM_ACRECR' +
                'AT=0 ,P2CM_PITEM_TOTDES=NVL(P2CM_PITEM_VALDES,0)+ CASE'
              'WHEN'
              '   P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              
                '   ELSE P2CM_PITEM_DESC_CAB END +  ROUND(  ((( ((P2CM_QTD_KG*P2C' +
                'M_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN '
              'P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              
                '   ELSE P2CM_PITEM_DESC_CAB END )  * P2CM_PITEM_DESC1) / 100) , ' +
                '2) +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)))-'
              
                '  (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB END  )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2) +R' +
                'OUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0))-'
              'CASE'
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0))-'
              
                '    CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM' +
                '_DESC_CAB END ) * P2CM_PITEM_DESC1) / 100) , 2))'
              
                '    +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB END)-'
              
                '    (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB END )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2)'
              
                '   ,P2CM_PITEM_TOTLIQ=(((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_' +
                'PITEM_VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL '
              'THEN '
              '0 ELSE P2CM_PITEM_DESC_CAB END)-'
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END )'
              
                '    * P2CM_PITEM_DESC1) / 100) , 2)+ROUND((((((P2CM_QTD_KG*P2CM_' +
                'PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              'P2CM_PITEM_DESC_CAB IS NULL'
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END)-(ROUND(  ((( ((P2CM_QTD_' +
                'KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN '
              'P2CM_PITEM_DESC_CAB IS NULL'
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END ) * P2CM_PITEM_DESC1) / 1' +
                '00) , 2)))*P2CM_PITEM_DESC2/100),2)'
              
                '   +ROUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VAL' +
                'DES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB END)-'
              
                '   ((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB'
              
                '   END ) * P2CM_PITEM_DESC1) / 100) , 2))+(ROUND((((((P2CM_QTD_K' +
                'G*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE'
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-'
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE '
              'P2CM_PITEM_DESC_CAB END )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2))'
              
                '   where P2CM_CODEMP=:NEW.P2T_CODEMP  and P2CM_CHAVE=:NEW.P2T_CH' +
                'AVE  and'
              '   P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              
                '   Select sum(P2CM_PITEM_TOTDES) into mValorTemp from CADP02_CME' +
                'T'
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              '   if mValorTemp<>mTot_Ped02_TotDes then'
              '      mDifTemp:=mTot_Ped02_TotDes-mValorTemp;'
              
                '      Update CADP02_CMET set P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES' +
                '+mDifTemp'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '         and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '         and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and P2CM_CODIGO=mItemPed'
              '         and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              '      if mTot_ped02_TotDescRat>0 then'
              
                '         update CADP02_CMET set P2CM_PITEM_DESCRAT=ROUND( (P2CM_' +
                'PITEM_PERCITEM*mTot_Ped02_TotDescRat/100) , 2)'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '         Select sum(P2CM_PITEM_DESCRAT) into  mValorTemp from CA' +
                'DP02_CMET'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              '         if mValorTemp<>mTot_Ped02_TotDescRat then'
              '            mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              
                '            Update CADP02_CMET set P2CM_PITEM_DESCRAT=P2CM_PITEM' +
                '_DESCRAT+mTot_Ped02_TotDescRat'
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2CM_CODIGO=mItemPed'
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              '            end if;'
              '         end if;'
              ''
              '      if mTot_ped02_TotAcrecRat>0 then'
              
                '         update CADP02_CMET set P2CM_PITEM_ACRECRAT=ROUND( (P2CM' +
                '_PITEM_PERCITEM*mTot_Ped02_TotAcrecRat/100) , 2)'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '         Select sum(P2CM_PITEM_ACRECRAT) into  mValorTemp FROM C' +
                'ADP02_CMET'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              '         if mValorTemp<>mTot_Ped02_TotAcrecRat then'
              '            mDifTemp:=mTot_Ped02_TotAcrecRat-mValorTemp;'
              
                '            Update CADP02_CMET set P2CM_PITEM_ACRECRAT=P2CM_PITE' +
                'M_ACRECRAT+mTot_Ped02_TotAcrecRat'
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2CM_CODIGO=mItemPed'
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              '            end if;'
              '         end if;'
              ''
              
                '      Update CADP02_CMET set  P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDE' +
                'S+P2CM_PITEM_DESCRAT'
              
                '                                    , P2CM_PITEM_TOTLIQ=P2CM_PIT' +
                'EM_TOTLIQ-P2CM_PITEM_DESCRAT+P2CM_PITEM_ACRECRAT'
              ''
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '      and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '      and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              ''
              ''
              '   UPDATE CADP02_CMET SET'
              
                '   P2CM_PITEM_COFINS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALCO' +
                'FINS)/100),2) ,'
              
                '   P2CM_PITEM_VALIPI=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALIP' +
                'I)/100),2) ,'
              
                '   P2CM_PITEM_VALPIS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALPI' +
                'S)/100),2) ,'
              
                '   P2CM_PITEM_VDESCF=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PDESC' +
                'F)/100),2) ,'
              '   P2CM_PITEM_TOTOUT=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_REDUTICM)/100),2) ' +
                'END ,'
              '   P2CM_PITEM_BASEN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITEM_' +
                'REDUTICM)/100),2) END ,'
              ''
              '   P2CM_PITEM_ICMSN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( ( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITE' +
                'M_REDUTICM)/100) *P2CM_PITEM_PALIQ/100),2) END,'
              ''
              
                '   P2CM_PITEM_VLRICMS_SN=CASE P2CM_PITEM_PCREDSN WHEN 0 THEN 0 E' +
                'LSE'
              '   ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PCREDSN)/100),2) END ,'
              ''
              '   P2CM_PITEM_BASER= CASE P2CM_PITEM_MODBCST WHEN  4 THEN'
              '      ROUND(  (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '       * ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100 END +' +
                ' P2CM_PITEM_ST_IVA)/100)'
              
                '     * ( (CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-' +
                'P2CM_PITEM_ST_REDUT)/100) , 2)  WHEN 0'
              '   THEN ROUND( (P2CM_QTD_KG*P2CM_PITEM_PCOMAX)'
              
                '   *((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2CM' +
                '_PITEM_ST_REDUT)/100),2)'
              '   ELSE 0 END'
              
                '   , P2CM_PITEM_ICMSR=ROUND((P2CM_PITEM_ST_ICMDEB *(  (    (P2CM' +
                '_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 ),2)'
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              
                '   , P2CM_PITEM_TOTLIQ=ROUND(  (P2CM_PITEM_TOTLIQ+((P2CM_PITEM_S' +
                'T_ICMDEB *(    (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 )) ,2)'
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '   and P2CM_LOTSEQ=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              '   if mtot_ped02_valseg<>0 then'
              '      Update CADP02_CMET set P2CM_PITEM_VALSEG ='
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_ValSeg' +
                '/100) , 2)'
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              '   if mtot_ped02_despaces<>0 then'
              '      Update CADP02_CMET set P2CM_PITEM_DESPACES ='
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_DespAc' +
                'es/100) , 2)'
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              
                '   Select sum(P2CM_PITEM_VALSEG), sum(P2CM_PITEM_DESPACES),sum(P' +
                '2CM_PITEM_DESC_CAB),sum(P2CM_PITEM_DESCRAT)'
              
                '   ,sum(P2CM_PITEM_ACRECRAT) ,sum(P2CM_PITEM_TOTDES) ,sum(P2CM_P' +
                'ITEM_PREPAS),sum(P2CM_PITEM_BASEN),sum(P2CM_PITEM_ICMSN)'
              
                '   ,sum(P2CM_PITEM_BASER),sum(P2CM_PITEM_ICMSR),sum(P2CM_PITEM_V' +
                'ALIPI),sum(P2CM_PITEM_VLRICMS_SN)'
              
                '    into  mTot_pitem_ValSeg       ,mTot_pitem_DespAces    ,mTot_' +
                'pItem_DescCab      ,mTot_pItem_TotDescRat,mTot_pItem_TotAcrecRat' +
                '     '
              ',mTot_pItem_Totdes'
              
                '  ,mTot_pItem_ValRepas   ,mTot_pItem_Basen     ,mTot_pItem_Icmsn' +
                '     ,mTot_pItem_Baser     ,mTot_pItem_Icmsr     ,mTot_pItem_Val' +
                'IPI'
              ',mTot_pItem_ICMS_SN from CADP02_CMET'
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              
                '   mTot_Dif_DescCab    := mTot_Ped02_DescCab    -mTot_pItem_Desc' +
                'Cab;'
              
                '   mTot_Dif_TotDescRat := mTot_Ped02_TotDescRat -mTot_pItem_TotD' +
                'escRat;'
              
                '   mTot_Dif_TotAcrecRat:= mTot_Ped02_TotAcrecRat-mTot_pItem_TotA' +
                'crecRat;'
              
                '   mTot_Dif_DespAces   := mTot_Ped02_DespAces   - mTot_pItem_Des' +
                'pAces;'
              
                '   mTot_Dif_ValSeg     := mTot_Ped02_ValSeg     - mTot_pItem_Val' +
                'Seg;'
              
                '   mTot_Dif_TotDes     := mTot_Ped02_TotDes     - mTot_pItem_Tot' +
                'Des;'
              
                '   mTot_Dif_ValRepas   := mTot_Ped02_ValRepas   - mTot_pItem_Val' +
                'Repas;'
              
                '   mTot_Dif_Basen      := mTot_Ped02_Basen      - mTot_pItem_Bas' +
                'en;'
              
                '   mTot_Dif_Icmsn      := mTot_Ped02_Icmsn      - mTot_pItem_Icm' +
                'sn;'
              
                '   mTot_Dif_Icmsr      := mTot_Ped02_Icmsr      - mTot_pItem_Icm' +
                'sr;'
              
                '   mTot_Dif_Baser      := mTot_Ped02_Baser      - mTot_pItem_Bas' +
                'er;'
              
                '   mTot_Dif_ValIPI     := mTot_Ped02_ValIPI     - mTot_pItem_Val' +
                'IPI;'
              
                '   mTot_Dif_ICMS_SN    := mTot_Ped02_ICMS_SN    - mTot_pItem_ICM' +
                'S_SN;'
              ''
              '   if (mTot_Dif_DescCab<>0) or (mTot_Dif_TotDescRat<>0) or'
              '      (mTot_Dif_TotAcrecRat<>0) or (mTot_Dif_DespAces<>0) or'
              '      (mTot_Dif_ValSeg<>0) or (mTot_Dif_TotDes<>0) or'
              '      (mTot_Dif_ValRepas<>0) or (mTot_Dif_Basen<>0) or'
              '      (mTot_Dif_Icmsn<>0) or (mTot_Dif_Icmsr<>0) or'
              '      (mTot_Dif_Baser<>0) or (mTot_Dif_ValIPI<>0) or'
              '      (mTot_Dif_ICMS_SN<>0)  then'
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_DESC' +
                '_CAB+mTot_Dif_DescCab'
              
                '                          ,P2CM_PITEM_DESCRAT=P2CM_PITEM_DESCRAT' +
                '+mTot_Dif_TotDescRat'
              
                '                          ,P2CM_PITEM_DESPACES=P2CM_PITEM_DESPAC' +
                'ES+mTot_Dif_DespAces'
              
                '                          ,P2CM_PITEM_VALSEG=P2CM_PITEM_VALSEG+m' +
                'Tot_Dif_ValSeg'
              
                '                          ,P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES+m' +
                'Tot_Dif_TotDes'
              
                '                          ,P2CM_PITEM_PREPAS=P2CM_PITEM_PREPAS+m' +
                'Tot_Dif_ValRepas'
              
                '                          ,P2CM_PITEM_BASEN=P2CM_PITEM_BASEN+mTo' +
                't_Dif_Basen'
              
                '                          ,P2CM_PITEM_ICMSN=P2CM_PITEM_ICMSN+mTo' +
                't_Dif_Icmsn'
              
                '                          ,P2CM_PITEM_ICMSR=P2CM_PITEM_ICMSR+mTo' +
                't_Dif_Icmsr'
              
                '                          ,P2CM_PITEM_BASER=P2CM_PITEM_BASER+mTo' +
                't_Dif_Baser'
              
                '                          ,P2CM_PITEM_VALIPI=P2CM_PITEM_VALIPI+m' +
                'Tot_Dif_ValIPI'
              
                '                          ,P2CM_PITEM_VLRICMS_SN=P2CM_PITEM_VLRI' +
                'CMS_SN+mTot_Dif_ICMS_SN'
              
                '                          ,P2CM_PITEM_ACRECRAT=P2CM_PITEM_ACRECR' +
                'AT+mTot_Dif_TotAcrecRat'
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2CM_ITEM=:NEW.P2T_ITEM'
              '          and P2CM_CODIGO=mItemPed;'
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              ''
              '/* TERMINO DO CONTROLE ESPECIAL CMET */'
              ''
              ''
              'Select sum(P2VCOMIS) into mTotalCOMIS'
              'from CADP02'
              'WHERE P2CODEMP=:NEW.P2T_CODEMP'
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              'update CADP01 set P1TOTALL='
              
                '                  nvl(:NEW.P2T_PED1_VALSEG,0)+nvl(:NEW.P2T_PED1_' +
                'TARBAN,0)'
              
                '                  +nvl(:NEW.P2T_PED1_VALFRE,0)+nvl(:NEW.P2T_PED1' +
                '_DESPACES,0)'
              
                '                  +nvl(mTotalPed,0)+nvl(mTotIPI,0),P1TOTALB=nvl(' +
                'mTOTMER,0)+nvl(MTOTSER,0)'
              '                  ,P1TOTSERLIQ=nvl(MTOTSER,0)'
              '                ,P1COMIS=mTotalCOMIS'
              
                '                ,P1BASEN=mTotalBCICMS,p1ICMSN=mTotalICMS,P1TOTDE' +
                'S=mTotalDesc_Prod+mTotalDesc_Serv'
              '                ,P1BASER=mTotalBCST'
              '                ,P1TOTPIS=mTotalPIS'
              '                ,P1TOTCOFINS=mTotalCOFINS'
              '                ,P1DATHOR_UEVE=SYSDATE'
              '                ,P1ICMSR=NVL(mTotalICMSR,0)'
              '                ,P1VLRDES=mTotalDescRat_Prod+mTotalDescRat_Serv'
              '                ,P1IPIINA=mtotipi'
              '                ,P1VALSEG=:NEW.P2T_PED1_VALSEG'
              '                ,P1TARBAN=:NEW.P2T_PED1_TARBAN'
              '                ,P1DESPACES=:NEW.P2T_PED1_DESPACES'
              '                ,P1VALFRE=:NEW.P2T_PED1_VALFRE'
              '                ,P1ICMS_ALFRE=:NEW.P2T_PED1_ICMS_VALFRE_ALIQ'
              '                ,P1ICMS_ALSEG=:NEW.P2T_PED1_ICMS_VALSEG_ALIQ'
              '                ,P1ICMS_ALOUTD=:NEW.P2T_PED1_ICMS_OUTDESP_ALIQ'
              
                '                ,P1COMIST=Round( (nvl((mTOTMER-mTotalDesc_Prod),' +
                '0)*:NEW.P2T_PCOMTEL/100) ,2)'
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'BEGIN'
              '        update CADP01 SET P1PCOMIS=round(nvl(P1COMIS,0)/'
              
                '        CASE WHEN P1TOTALL IS NULL THEN 1 WHEN P1TOTALL = 0 THEN' +
                ' 1 ELSE P1TOTALL END*100,2)'
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              'EXCEPTION'
              '  WHEN OTHERS THEN'
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'ATRIBUIU NULO P1PCOM' +
                'IS'#39' );'
              '          RAISE;'
              '      END;'
              ''
              'mNv_QtdParcDiv:=0;'
              ''
              
                '-- RAISE_APPLICATION_ERROR(-20000, '#39'valor dup '#39' || mvalordup || ' +
                #39' mtotalped '#39'  || mtotalped || '#39' altdup '#39' || :NEW.P2T_ALTDUP || ' +
                #39' qtdup '#39' || :NEW.P2T_QTDDUP || '#39' tamprz '#39' || mtamprz || '#39' TESTE' +
                ' '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.P' +
                'T2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              'IF :NEW.P2T_ALTDUP<>'#39'N'#39' then'
              ''
              '   if :NEW.P2T_QTDDUP>0 then'
              ''
              
                '     Select sum(P1TOTALL),sum(P1ICMSR) into mTotalPed,mTotalIcms' +
                'R from CADP01'
              '                                 WHERE P1CODEMP=:NEW.P2T_CODEMP'
              '                                 and P1CHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P1LOTSEQ=:NEW.P2T_CHAVE_ANO' +
                ';'
              ''
              ''
              ''
              '      if mTotalIcmsR is null then'
              '         mTotalIcmsR:=0;'
              '         end if;'
              ''
              ''
              '     if :NEW.P2T_ICMSR_PRIMPARC=0 then'
              '        mTotalIcmsR:=0;'
              '     else'
              '        mtotalped:=mtotalped-mTotalIcmsR;'
              '     end if;'
              ''
              '      if mtotalped>0 then'
              '         mValorDup := trunc( (mTotalPed / :NEW.P2T_QTDDUP) ,2);'
              '         mDifDup := mTotalPed - (mValorDup * :NEW.P2T_QTDDUP);'
              '      end if;'
              ''
              ''
              '      if mvalordup is null then'
              '         mvalordup:=0;'
              '         end if;'
              ''
              ''
              '      if :NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT THEN'
              '         delete from CADPFP where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPSEQ>=:NEW.P2T_QTDDUP;'
              '      end if;'
              '      if (mvalordup<>0) and (mtotalped<>0) then'
              '         mtamprz:=length(:NEW.PT2_PRZNOVOS);'
              '         l_loop:=0;'
              '-- testando se ha valores fixo'
              '         mNv_ValFixo:=0;'
              '         mNv_QtdDupRat:=0;'
              ''
              '         mNv_QtdParc :=0;'
              ''
              '         mNv_ParcDif:=0;'
              '         mNv_Campo:=0;'
              '         mNv_Vacum:='#39#39';'
              ''
              '         mNv_Tipo:='#39#39';'
              ''
              '         While l_loop < mtamprz loop'
              ''
              '            l_loop := l_loop +  1;'
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'vai tenta' +
                'r prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tip' +
                'o '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtampr' +
                'z || '#39' TESTE '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || s' +
                'ubstr(:NEW.PT2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              '            BEGIN'
              '            if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39'|'#39' then'
              ''
              '               if  length(mNv_vAcum)>0 then'
              
                '--                   RAISE_APPLICATION_ERROR(-20000, '#39'NV ACUM '#39' ' +
                '|| MnV_VaCUM || '#39' mnv_campo '#39' || mNv_Campo || '#39' tipo '#39' || mNv_Ti' +
                'po || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz || '#39' TESTE ' +
                #39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.PT' +
                '2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              '                  if mNv_campo=0 then'
              '                     mNv_Tipo:=mnv_vAcum;'
              '                  elsif mNv_Campo=1 then'
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=2 then'
              '                     mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=3 then'
              '                     mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=4 then'
              '                     mNv_NomFP:=mnv_vAcum;'
              '                  elsif mNv_Campo=5 then'
              '                     mNv_Baixa:=mnv_vAcum;'
              '                  elsif mNv_Campo=6 then'
              '                     mNv_CodBco_cob:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=7 then'
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=8 then'
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=9 then'
              '                     mNv_vago10:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=10 then'
              '                     mNv_vago11:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=11 then'
              '                     mNv_vago12:=TO_NUMBER(mnv_vAcum);'
              '                  end if;'
              '               end if;'
              ''
              ''
              '               mNv_Campo:=mNv_Campo+1;'
              '               mNv_vAcum:='#39#39';'
              ''
              
                '--               RAISE_APPLICATION_ERROR(-20000, '#39'LIMPOU PRIMEIR' +
                'O prazo '#39' || mnv_prazo ||  '#39'2618 campo '#39' || mNv_Campo || '#39' przno' +
                'vos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || ' +
                'mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              '               if mNv_Campo>(mNv_qtdcampos-1) then'
              ''
              '                  if mNv_tipo<>'#39'V'#39' and mNv_ParcDif=0 then'
              '                     mNv_ParcDif:=mNv_QtdParc+1;'
              '                  end if;'
              ''
              ''
              '                  mNv_Campo:=0;'
              '                  mNv_QtdParc:=mNv_QtdParc+1;'
              '                  if mNv_tipo='#39'V'#39' and mNv_Valor<>0 then'
              '                     mnv_ValFixo:=mNv_ValFixo+mNv_Valor;'
              '                  else mNv_QtdParcDiv:=mNv_QtdParcDiv+1;'
              '                  end if;'
              '                  if mNv_Tipo<>'#39'V'#39' then'
              '                     mNv_QtdDupRat:=mNv_QtdDupRat+1;'
              '                  end if;'
              '               end if;'
              '            else'
              
                '               mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,' +
                'l_loop,1);'
              ''
              '            end if;'
              '   EXCEPTION'
              '     WHEN OTHERS THEN'
              
                '--          RAISE_APPLICATION_ERROR(-20000, '#39'TRY campo '#39' || mNv_' +
                'Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop' +
                ' || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' ' +
                '|| mtamprz);'
              '             RAISE;'
              '         END;'
              ''
              '         end loop;'
              ''
              ''
              ''
              '   -- fim dos testes para valores fixos'
              ''
              ''
              '     if mNv_QtdParc<1 then'
              '        mNv_QtdParc:=1;'
              '     end if;'
              ''
              '     if mNv_QtdParcDiv<1 then'
              '        mNv_QtdParcDiv:=1;'
              '     end if;'
              ''
              ''
              
                '--       RAISE_APPLICATION_ERROR(-20000, '#39'parc difer  '#39' || mValo' +
                'rDup ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup ||' +
                ' '#39' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mN' +
                'v_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VAL' +
                'FIXO: '#39' || mNv_ValFixo);'
              ''
              
                '        mValorDup := trunc( ((mTotalPed-mNv_ValFixo) / mNv_QtdPa' +
                'rcDiv) ,2);'
              
                '        mDifDup := (mTotalPed-mNv_ValFixo) - (mValorDup * mNv_Qt' +
                'dParcDiv);'
              ''
              ''
              
                '--      RAISE_APPLICATION_ERROR(-20000, '#39'Parc dif '#39' || mNv_ParcD' +
                'if ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup || '#39 +
                ' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mNv_' +
                'Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VALFI' +
                'XO: '#39' || mNv_ValFixo);'
              ''
              '        if mvalordup is null then'
              '           mvalordup:=0;'
              '        end if;'
              ''
              '        if mDifDup is null then'
              '           mDifDup:=0;'
              '        end if;'
              ''
              ''
              '        mNv_Campo:=0;'
              '        mNv_Valor:=0;'
              '        mNv_Vacum:='#39#39';'
              ''
              '        mNv_Parcela:=0;'
              '        mNv_CodFP:=-1;'
              '        mNv_NomFP:='#39#39';'
              '        mNv_Prazo:=0;'
              ''
              '        l_loop:=0;'
              ''
              ''
              '        While l_loop < mtamprz loop'
              '           l_loop := l_loop +  1;'
              '           if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39'|'#39' then'
              ''
              '              if  length(mNv_vAcum)>0 then'
              '                  if mNv_campo=0 then'
              '                     mNv_Tipo:=mnv_vAcum;'
              '                  elsif mNv_Campo=1 then'
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=2 then'
              '                     mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=3 then'
              '                     mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=4 then'
              '                     mNv_NomFP:=mnv_vAcum;'
              '                  elsif mNv_Campo=5 then'
              '                     mNv_Baixa:=mnv_vAcum;'
              '                  elsif mNv_Campo=6 then'
              '                     mNv_CodBco_cob:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=7 then'
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=8 then'
              '                     mNv_Codcx_Rec:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=9 then'
              '                     mNv_vago10:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=10 then'
              '                     mNv_vago11:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=11 then'
              '                     mNv_vago12:=TO_NUMBER(mnv_vAcum);'
              '                  end if;'
              '              end if;'
              ''
              ''
              '              mnv_vAcum:='#39#39';'
              '              mNv_Campo:=mNv_Campo+1;'
              '              if mNv_Campo>(mNv_qtdcampos-1) then'
              '                 if mNv_Valor=0 then'
              '                    mNv_Valor:=mValordup;'
              '                 end if;'
              ''
              '                 mNv_Parcela:=mNv_Parcela+1;'
              '                 mNv_Campo:=0;'
              ''
              '                 if mDifDup<>0 and mNv_parcela= mNv_ParcDif then'
              '                    mNv_Valor:=mNv_Valor+mDifDup;'
              '                 end if;'
              '                 if mNv_CodFP=-1 then'
              '                    mNv_CodFP:=:NEW.P2T_CODFP;'
              '                 end if;'
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'nomfp '#39' |' +
                '| mNv_NomFP || '#39' tamanho '#39' || length(mnv_nomfp) || '#39' LOOP '#39' || l' +
                '_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamp' +
                'rz '#39' || mtamprz);'
              ''
              '                 if trim(mNv_NomFP)='#39#39' or mNv_NomFP is null then'
              '                    mNv_NomFP:=:NEW.P2T_NOMFP;'
              '                 end if;'
              '                 select count(*) into mvalortemp from CADPFP'
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              ''
              
                '                 if (:NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT) and (' +
                'mValorTemp<1) THEN'
              
                '   --                  RAISE_APPLICATION_ERROR(-20000, '#39'QTDDUP D' +
                'IFER campo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS |' +
                '| '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_' +
                'vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              
                '                    insert into CADPFP (PFPCODEMP,PFPCHAVE,PFPOR' +
                'DEM,PFPLOTSEQ'
              '                          ,PFPSEQ'
              '                          ,PFPQTDPARC'
              '                         ,PFPFORMA'
              '                         ,PFPVALOR'
              '                         ,PFPBAIXA'
              '                         ,PFPNOMFOR'
              '                         ,PFPPRAZO'
              '                         ,PFPDATA'
              '                         ,PFPFPGTO'
              '                         ,PFPVINCULO'
              ''
              '                         ) values ('
              
                '                          :NEW.P2T_CODEMP,:NEW.P2T_CHAVE,01,:NEW' +
                '.P2T_CHAVE_ANO'
              '                         ,mNv_Parcela'
              '                         ,mNv_QtdDupRat'
              '                         ,mNv_CodFP'
              '                         ,mNv_valor+mTotalIcmsR'
              '                         ,mNv_baixa'
              '                         ,mNv_NomFP'
              '                         ,mNv_Prazo'
              '                         ,:NEW.P2T_DATAPED+mNv_Prazo'
              '                         ,mNv_Valor*100 / mTotalPed'
              
                '                         ,(select MAX(fpvinculo) from cadfp wher' +
                'e fpcodigo=mNv_CodFP)'
              '                         );'
              ''
              '                 else'
              
                '   --                 RAISE_APPLICATION_ERROR(-20000, '#39'UPDATE ca' +
                'mpo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOO' +
                'P '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum |' +
                '| '#39' tamprz '#39' || mtamprz);'
              ''
              
                '                    Update CADPFP set PFPFORMA=mNv_CodFP,PFPVALO' +
                'R=mNv_valor+mTotalIcmsR,'
              
                '                                    PFPBAIXA=mNv_baixa,PFPNOMFOR' +
                '=mNv_NomFP,'
              
                '                                    PFPPRAZO=mNv_Prazo,PFPDATA=:' +
                'NEW.P2T_DATAPED+mNv_Prazo,'
              
                '                                    PFPFPGTO=mNv_Valor*100 / mTo' +
                'talPed'
              
                '                                   ,PFPVINCULO=(select MAX(fpvin' +
                'culo) from cadfp where fpcodigo=mNv_CodFP)'
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              '                 end if;'
              ''
              '                 mnv_Prazo:=0;'
              '                 mNv_Tipo:='#39#39';'
              '                 mNv_valor:=0;'
              '                 mNv_CodFP:=-1;'
              '                 mNv_NomFP:='#39#39';'
              '                 mNv_Baixa:='#39#39';'
              '                 mTotalIcmsR:=0;'
              ''
              ''
              '              end if;'
              '           else'
              
                '              mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,l' +
                '_loop,1);'
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'2778 campo '#39' || mNv_C' +
                'ampo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop ' +
                '|| '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' |' +
                '| mtamprz);'
              ''
              '           end if;'
              '        end loop;'
              ''
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'end;'
              '')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object tsCadp02S: TTabSheet
          Caption = 'CADP02 S'
          ImageIndex = 1
          object memo_triggers_ped02s_naousando: TMemo
            Left = 0
            Top = 0
            Width = 874
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADP02S_PRE_TEMP_TRIG01 AFTER INSERT O' +
                'N CADP02S_PRE_TEMP'
              'FOR EACH ROW'
              ''
              ' declare mDiferSaldo NUMBER;'
              ' mIcmsRetido NUMBER;'
              ' mTotalICMSR NUMBER;'
              ''
              ' mTotalDescRat_Prod NUMBER;'
              ' mValorTemp NUMBER;'
              ' mTotalDescRat_Serv  NUMBER;'
              ''
              ' mTotIPI NUMBER;'
              ' mTotalDesc_Prod NUMBER;'
              ' mTotalDesc_Serv NUMBER;'
              ' mTotalPed NUMBER;'
              ' mTotMer NUMBER;'
              ' mTotSer NUMBER;'
              ' mQtdxPreco NUMBER;'
              ' mPercRat NUMBER;'
              ' mValorDup NUMBER;'
              ' mDifDup NUMBER;'
              ' mItemPed NUMBER;'
              ' pos_ini NUMBER;'
              ' namelength NUMBER;'
              ' l_loop NUMBER;'
              ' mOper VARCHAR2(01);'
              ''
              '  mTotalBCIcms NUMBER;'
              ' mTotalIcms NUMBER;'
              ''
              ' mnv_tamprz INTEGER;'
              ' mnv_vAcum VARCHAR2(100);'
              ' mnv_Prazo INTEGER;'
              ' mNv_Tipo VARCHAR2(1);'
              ' mNv_valor NUMBER;'
              ' mNv_CodFP Integer;'
              ' mNv_NomFP VARCHAR2(30);'
              ' mNv_Baixa VARCHAR2(1);'
              
                ' mNv_ParcDif Integer; -- parcela onde pode aplicar a diferenca d' +
                'e arredondamentos'
              ' mNv_Campo Integer;'
              ' mNv_ValFixo Number;'
              ' mNv_QtdDupRat Integer;'
              ' mNv_Parcela Integer;'
              ' mNv_QtdParc Integer;'
              ''
              ' mNv_QtdParcDiv Integer;'
              ' '
              ' mtamprz Integer;'
              ''
              ''
              'begin'
              'mDiferSaldo:=0;'
              ''
              'mDiferSaldo:=0;'
              'mTotalPed:=0;'
              'mTotMer:=0;'
              'mTotSer:=0;'
              'mQtdxPreco:=0;'
              'mPercRat:=0;'
              'mValorDup:=0;'
              'mDifDup:=0;'
              'mItemPed:=0;'
              'pos_ini:=1;'
              'namelength:=0;'
              'l_loop:=0;'
              'mTotalBCIcms:=0;'
              'mTotalIcms:=0;'
              ''
              ''
              'if :NEW.P2ST_TIPO_EVENTO=0 then'
              '   Insert into CADP02S'
              '                          ('
              '                           P2SCODEMP'
              '                          ,P2SCHAVE'
              '                          ,P2SORDEM'
              '                          ,P2SLOTSEQ'
              '                          ,P2SITEM'
              '                          ,P2SCODPRO'
              '                          ,P2SQTD'
              '                          ,P2SDESC1'
              '                          ,P2SDESC2'
              '                          ,P2SDESC3'
              '                          ,P2SPRECO'
              '                          ,P2SSIT'
              '                          ,P2SCSOSN'
              '                          ,P2SCSOSN_ORI'
              '                          ,P2SVALDES'
              '                          ,P2SCODFAB'
              '                          ,P2SSTATUS'
              '                          ,P2SPCOTAB'
              '                          ,P2SPCOCUS'
              '                          ,P2SALIQ'
              '                          ,P2SCFO'
              '                          ,P2SPDESCF'
              '                          ,P2SCODFUN'
              '                          ,P2SREDINSS'
              '                          ,P2SALIQINSS'
              '                          ,P2SREDIRRF'
              '                          ,P2SALIQIRRF'
              '                          ,P2SDESC_CAB'
              '                          ,P2SESTNOR'
              '                          ,P2SESTCONS'
              '                          ,P2SESTTERC'
              '                          ,P2SESTREV'
              '                          ,P2SPROMOCAO'
              '                          ,P2SDESC_COMP'
              '                          ,P2SSITUACAO'
              '                          ) values ('
              '                          :NEW.P2ST_CODEMP'
              '                          , :NEW.P2ST_CHAVE'
              '                          , 01'
              '                          , :NEW.P2ST_CHAVE_ANO'
              '                          , :NEW.P2ST_ITEM'
              '                          , :NEW.P2ST_CODSER'
              '                          ,:NEW.P2ST_QTD'
              '                          ,:NEW.P2ST_DESC_PERC01'
              '                          ,:NEW.P2ST_DESC_PERC02'
              '                          ,:NEW.P2ST_DESC_PERC03'
              '                          ,:NEW.P2ST_PRECO'
              '                          ,:NEW.P2ST_CST'
              '                          ,:NEW.P2ST_CSOSN'
              '                          ,:NEW.P2ST_CSOSN_ORI'
              '                          ,:NEW.P2ST_DESC_VALOR'
              '                          ,0'
              '                          ,:NEW.P2ST_SITUACAO'
              '                          ,:NEW.P2ST_PRECO_TAB'
              '                          ,:NEW.P2ST_PRECO_CUS'
              '                          ,:NEW.P2ST_PISSQN'
              '                          ,:NEW.P2ST_CFOP'
              '                          ,:NEW.P2ST_DESCFIN_PERC'
              ''
              '                          ,:NEW.P2ST_CODUSR'
              '                          ,:NEW.P2ST_INSS_PRED'
              '                          ,:NEW.P2ST_INSS_ALIQ'
              '                          ,:NEW.P2ST_IRRF_PRED'
              '                          ,:NEW.P2ST_IRRF_ALIQ'
              '                          ,:NEW.P2ST_DESC_CAB'
              '                          ,:NEW.P2ST_ESTNOR'
              '                          ,:NEW.P2ST_ESTCONS'
              '                          ,:NEW.P2ST_ESTTERC'
              '                          ,:NEW.P2ST_ESTREV'
              '                          ,:NEW.P2ST_PROMOCAO'
              '                          ,:NEW.P2ST_DESCCOMPL'
              '                          ,:NEW.P2ST_SITUACAO'
              '                          );'
              '   if (:NEW.P2ST_ESTNOR='#39'S'#39') or (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2ST_CODEMP,'
              '                             :NEW.P2ST_CODSER,'
              '                             :NEW.P2ST_FILIAL,'
              '                             :NEW.P2ST_CHAVE,'
              '                             :NEW.P2ST_CHAVE_ANO,'
              '                             :NEW.P2ST_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDO IS NU' +
                'LL THEN 0 ELSE CESALDO END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2ST_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                              CECODPRO=:NEW.P2ST_CODSER AND (CEF' +
                'ILIAL=:NEW.P2ST_FILIAL OR CEFILIAL is null)) ,'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2ST_CODUSR,'
              '                             :NEW.P2ST_HISTORICO,'
              '                             :NEW.P2ST_ESTNOR || '#39'N'#39
              '                             );'
              '      if :NEW.P2ST_ESTNOR='#39'S'#39' then'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END'
              
                '         -:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '         PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END-'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_FILIA' +
                'L OR CEFILIAL is null);'
              '      end if;'
              ''
              '      if :NEW.P2ST_ESTNOR='#39'E'#39' then'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END'
              
                '         +:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '         PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END+'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_FILIA' +
                'L OR CEFILIAL is null);'
              '      end if;'
              ''
              '   end if;'
              '   if (:NEW.P2ST_ESTCONS='#39'S'#39') or (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2ST_CODEMP,'
              '                             :NEW.P2ST_CODSER,'
              '                             :NEW.P2ST_FILIAL,'
              '                             :NEW.P2ST_CHAVE,'
              '                             :NEW.P2ST_CHAVE_ANO,'
              '                             :NEW.P2ST_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOC IS N' +
                'ULL THEN 0 ELSE CESALDOC END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2ST_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2ST_CODSER AND (CEFI' +
                'LIAL=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2ST_CODUSR,'
              '                             :NEW.P2ST_HISTORICO'
              '                             ,:NEW.P2ST_ESTCONS  || '#39'C'#39
              '                             );'
              '      if :NEW.P2ST_ESTCONS='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END'
              
                '         -:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END'
              
                '         -:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2ST_ESTCONS='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END'
              
                '         +:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END'
              
                '         +:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              ''
              '   if (:NEW.P2ST_ESTTERC='#39'S'#39') or (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2ST_CODEMP,'
              '                             :NEW.P2ST_CODSER,'
              '                             :NEW.P2ST_FILIAL,'
              '                             :NEW.P2ST_CHAVE,'
              '                             :NEW.P2ST_CHAVE_ANO,'
              '                             :NEW.P2ST_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOT IS N' +
                'ULL THEN 0 ELSE CESALDOT END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2ST_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2ST_CODSER AND (CEFI' +
                'LIAL=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2ST_CODUSR,'
              '                             :NEW.P2ST_HISTORICO'
              '                             ,:NEW.P2ST_ESTTERC  || '#39'T'#39
              '                             );'
              '      if :NEW.P2ST_ESTTERC='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END'
              
                '         -:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END'
              
                '         -:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2ST_ESTTERC='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END'
              
                '         +:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END'
              
                '         +:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              '   if (:NEW.P2ST_ESTREV='#39'S'#39') or (:NEW.P2ST_ESTREV='#39'E'#39') then'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                             ,EXT_CODPRO'
              '                             ,EXT_FILIAL'
              '                             ,EXT_CHAVE_ANO'
              '                             ,EXT_CHAVE'
              '                             ,EXT_QTD'
              '                             ,EXT_SALDO_ANT'
              '                             ,EXT_DATHOR'
              '                             ,EXT_NOME_COMP'
              '                             ,EXT_CODUSR'
              '                             ,EXT_ORIGEM'
              '                             ,EXT_TIPOMOV'
              '                             ) values ('
              '                             :NEW.P2ST_CODEMP,'
              '                             :NEW.P2ST_CODSER,'
              '                             :NEW.P2ST_FILIAL,'
              '                             :NEW.P2ST_CHAVE,'
              '                             :NEW.P2ST_CHAVE_ANO,'
              '                             :NEW.P2ST_QTD,'
              
                '                             (SELECT sum(CASE WHEN CESALDOR IS N' +
                'ULL THEN 0 ELSE CESALDOR END)'
              
                '                              FROM CADEST WHERE (CECODEMP=:NEW.P' +
                '2ST_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                             CECODPRO=:NEW.P2ST_CODSER AND (CEFI' +
                'LIAL=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                             SYSDATE,'
              '                             userenv('#39'TERMINAL'#39'),'
              '                             :NEW.P2ST_CODUSR,'
              '                             :NEW.P2ST_HISTORICO'
              '                             ,:NEW.P2ST_ESTREV  || '#39'R'#39
              '                             );'
              '      if :NEW.P2ST_ESTREV='#39'S'#39' then'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END'
              
                '         -:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END'
              
                '         -:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '      if :NEW.P2ST_ESTREV='#39'E'#39' then'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END'
              
                '         +:NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END'
              
                '         +:NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2ST_TIPO_EVENTO=1 then'
              '   Update CADP02S set      P2SCODPRO=:NEW.P2ST_CODSER'
              '                          ,P2SQTD=:NEW.P2ST_QTD'
              '                          ,P2SDESC1=:NEW.P2ST_DESC_PERC01'
              '                          ,P2SDESC2=:NEW.P2ST_DESC_PERC02'
              '                          ,P2SDESC3=:NEW.P2ST_DESC_PERC03'
              '                          ,P2SPRECO=:NEW.P2ST_PRECO'
              '                          ,P2SSIT=:NEW.P2ST_CST'
              '                          ,P2SCSOSN=:NEW.P2ST_CSOSN'
              '                          ,P2SCSOSN_ORI=:NEW.P2ST_CSOSN_ORI'
              '                          ,P2SVALDES=:NEW.P2ST_DESC_VALOR'
              '                          ,P2SCODFAB=0'
              '                          ,P2SSTATUS=:NEW.P2ST_SITUACAO'
              '                          ,P2SPCOTAB=:NEW.P2ST_PRECO_TAB'
              '                          ,P2SPCOCUS=:NEW.P2ST_PRECO_CUS'
              '                          ,P2SALIQ=:NEW.P2ST_PISSQN'
              '                          ,P2SCFO=:NEW.P2ST_CFOP'
              '                          ,P2SPDESCF=:NEW.P2ST_DESCFIN_PERC'
              '                          ,P2SCODFUN=:NEW.P2ST_CODUSR'
              '                          ,P2SREDINSS=:NEW.P2ST_INSS_PRED'
              '                          ,P2SALIQINSS=:NEW.P2ST_INSS_ALIQ'
              '                          ,P2SREDIRRF=:NEW.P2ST_IRRF_PRED'
              '                          ,P2SALIQIRRF=:NEW.P2ST_IRRF_ALIQ'
              '                          ,P2SDESC_CAB=:NEW.P2ST_DESC_CAB'
              '                          ,P2SESTNOR=:NEW.P2ST_ESTNOR'
              '                          ,P2SESTCONS=:NEW.P2ST_ESTCONS'
              '                          ,P2SESTTERC=:NEW.P2ST_ESTTERC'
              '                          ,P2SESTREV=:NEW.P2ST_ESTREV'
              '                          ,P2SPROMOCAO=:NEW.P2ST_PROMOCAO'
              '                          ,P2SDESC_COMP=:NEW.P2ST_DESCCOMPL'
              '                          ,P2SSITUACAO=:NEW.P2ST_SITUACAO'
              '                          WHERE'
              '                           P2SCODEMP=:NEW.P2ST_CODEMP'
              '                           and P2SCHAVE=:NEW.P2ST_CHAVE'
              '                           and P2SORDEM=01'
              '                           and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '                           and P2SITEM=:NEW.P2ST_ITEM'
              '                           and P2SCODPRO=:NEW.P2ST_CODSER_ANT;'
              '   if :NEW.P2ST_CODSER<>:NEW.P2ST_CODSER_ANT then'
              '      if (:NEW.P2ST_ESTNOR='#39'S'#39') or (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDO IS NULL THEN' +
                ' 0 ELSE CESALDO END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTNOR || '#39'N'#39
              '                      );'
              '         if (:NEW.P2ST_ESTNOR='#39'S'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END-'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END-'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '         if (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END+'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END+'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if :NEW.P2ST_ESTNOR='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER_ANT,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2ST' +
                '_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,mOper || '#39'N'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              '      if (:NEW.P2ST_ESTCONS='#39'S'#39') or (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOC IS NULL THE' +
                'N 0 ELSE CESALDOC END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTCONS || '#39'N'#39
              '                      );'
              '         if (:NEW.P2ST_ESTCONS='#39'S'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END-'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END-'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '         if (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END+'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END+'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if :NEW.P2ST_ESTCONS='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER_ANT,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOC IS NULL' +
                ' THEN 0 ELSE CESALDOC END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2ST' +
                '_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,mOper || '#39'C'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              ''
              '      if (:NEW.P2ST_ESTTERC='#39'S'#39') or (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTTERC || '#39'N'#39
              '                      );'
              '         if (:NEW.P2ST_ESTTERC='#39'S'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END-'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END-'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '         if (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END+'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END+'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if :NEW.P2ST_ESTTERC='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER_ANT,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOT IS NULL' +
                ' THEN 0 ELSE CESALDOT END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2ST' +
                '_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,mOper || '#39'T'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              ''
              ''
              '      if (:NEW.P2ST_ESTREV='#39'S'#39') or (:NEW.P2ST_ESTREV='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTREV || '#39'N'#39
              '                      );'
              '         if (:NEW.P2ST_ESTREV='#39'S'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END-'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END-'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '         if (:NEW.P2ST_ESTREV='#39'E'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END+'
              
                '            :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CE' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END+'
              
                '            :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PD' +
                'CODEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if :NEW.P2ST_ESTREV='#39'E'#39' then'
              '            mOper:='#39'N'#39';'
              '         else'
              '            mOper:='#39'E'#39';'
              '         end if;'
              ''
              ''
              ''
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER_ANT,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      :NEW.P2ST_QTD_ANT,'
              
                '                          (SELECT sum(CASE WHEN CESALDOT IS NULL' +
                ' THEN 0 ELSE CESALDOT END)'
              
                '                           FROM CADEST WHERE (CECODEMP=:NEW.P2ST' +
                '_CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '         CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,mOper || '#39'R'#39
              '                      );'
              '         if mOper='#39'E'#39' then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END'
              
                '            +:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              ''
              '         if mOper='#39'S'#39' then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (CECODEMP=:NEW.P2ST_CODEMP ' +
                'or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '            CECODPRO=:NEW.P2ST_CODSER_ANT AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END'
              
                '            -:NEW.P2ST_QTD_ANT WHERE (PDCODEMP=:NEW.P2ST_CODEMP ' +
                'or PDCODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              '            PDCODPRO=:NEW.P2ST_CODSER_ANT;'
              '         end if;'
              '      end if;'
              ''
              ''
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              '   if :NEW.P2ST_CODSER=:NEW.P2ST_CODSER_ANT then'
              '      mDiferSaldo:=:NEW.P2ST_QTD-:NEW.P2ST_QTD_ANT;'
              '      if (:NEW.P2ST_ESTNOR='#39'S'#39') or (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDO IS NULL THEN' +
                ' 0 ELSE CESALDO END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTNOR || '#39'N'#39
              '                      );'
              '         if (:NEW.P2ST_ESTNOR='#39'S'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              
                '            update CADEST set CESALDO=CASE WHEN CESALDO IS NULL ' +
                'THEN 0 ELSE CESALDO END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL ' +
                'THEN 0 ELSE PDSALDO END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '      end if;'
              ''
              ''
              '      if (:NEW.P2ST_ESTCONS='#39'S'#39') or (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOC IS NULL THE' +
                'N 0 ELSE CESALDOC END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTCONS || '#39'C'#39
              '                      );'
              '         if (:NEW.P2ST_ESTCONS='#39'S'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              
                '            update CADEST set CESALDOC=CASE WHEN CESALDOC IS NUL' +
                'L THEN 0 ELSE CESALDOC END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NUL' +
                'L THEN 0 ELSE PDSALDOC END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '      end if;'
              ''
              '      if (:NEW.P2ST_ESTTERC='#39'S'#39') or (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOT IS NULL THE' +
                'N 0 ELSE CESALDOT END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTTERC || '#39'T'#39
              '                      );'
              '         if (:NEW.P2ST_ESTTERC='#39'S'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              
                '            update CADEST set CESALDOT=CASE WHEN CESALDOT IS NUL' +
                'L THEN 0 ELSE CESALDOT END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NUL' +
                'L THEN 0 ELSE PDSALDOT END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              ''
              '      end if;'
              ''
              ''
              '      if (:NEW.P2ST_ESTREV='#39'S'#39') or (:NEW.P2ST_ESTREV='#39'E'#39') then'
              '         insert into CADEST_EXT (EXT_CODEMP'
              '                      ,EXT_CODPRO'
              '                      ,EXT_FILIAL'
              '                      ,EXT_CHAVE_ANO'
              '                      ,EXT_CHAVE'
              '                      ,EXT_QTD'
              '                      ,EXT_SALDO_ANT'
              '                      ,EXT_DATHOR'
              '                      ,EXT_NOME_COMP'
              '                      ,EXT_CODUSR'
              '                      ,EXT_ORIGEM'
              '                      ,EXT_TIPOMOV'
              '                      ) values ('
              '                      :NEW.P2ST_CODEMP,'
              '                      :NEW.P2ST_CODSER,'
              '                      :NEW.P2ST_FILIAL,'
              '                      :NEW.P2ST_CHAVE,'
              '                      :NEW.P2ST_CHAVE_ANO,'
              '                      mdifersaldo,'
              
                '                      (SELECT sum(CASE WHEN CESALDOR IS NULL THE' +
                'N 0 ELSE CESALDOR END)'
              
                '                      FROM CADEST WHERE (CECODEMP=:NEW.P2ST_CODE' +
                'MP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                      CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:N' +
                'EW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                      SYSDATE,'
              '                      userenv('#39'TERMINAL'#39'),'
              '                      :NEW.P2ST_CODUSR,'
              '                      :NEW.P2ST_HISTORICO'
              '                      ,:NEW.P2ST_ESTREV || '#39'R'#39
              '                      );'
              '         if (:NEW.P2ST_ESTREV='#39'R'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END-'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END-'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '         if (:NEW.P2ST_ESTREV='#39'E'#39') then'
              
                '            update CADEST set CESALDOR=CASE WHEN CESALDOR IS NUL' +
                'L THEN 0 ELSE CESALDOR END+'
              
                '            mdifersaldo WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '            and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2S' +
                'T_FILIAL OR CEFILIAL is null);'
              
                '            update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NUL' +
                'L THEN 0 ELSE PDSALDOR END+'
              
                '            mdifersaldo WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCO' +
                'DEMP=:NEW.P2ST_CODEMP_FILIAL)'
              '            and PDCODPRO=:NEW.P2ST_CODSER;'
              '         end if;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2ST_TIPO_EVENTO=2 then'
              '   delete from CADP02S where P2SCODEMP=:NEW.P2ST_CODEMP'
              '                and P2SCHAVE=:NEW.P2ST_CHAVE'
              '                and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '                and P2SITEM=:NEW.P2ST_ITEM'
              '                and P2SCODPRO=:NEW.P2ST_CODSER;'
              ''
              ''
              '   if (:NEW.P2ST_ESTNOR='#39'S'#39') or (:NEW.P2ST_ESTNOR='#39'E'#39') then'
              '      if (:NEW.P2ST_ESTNOR='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2ST_CODEMP,'
              '                         :NEW.P2ST_CODSER,'
              '                         :NEW.P2ST_FILIAL,'
              '                         :NEW.P2ST_CHAVE,'
              '                         :NEW.P2ST_CHAVE_ANO,'
              '                         :NEW.P2ST_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2ST_' +
                'CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2ST_CODSER AND (CEFILIA' +
                'L=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2ST_CODUSR,'
              '                         :NEW.P2ST_HISTORICO'
              '                         ,mOper || '#39'N'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END+'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END+'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDO=CASE WHEN CESALDO IS NULL THE' +
                'N 0 ELSE CESALDO END-'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDO=CASE WHEN PDSALDO IS NULL THE' +
                'N 0 ELSE PDSALDO END-'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2ST_ESTCONS='#39'S'#39') or (:NEW.P2ST_ESTCONS='#39'E'#39') then'
              '      if (:NEW.P2ST_ESTCONS='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2ST_CODEMP,'
              '                         :NEW.P2ST_CODSER,'
              '                         :NEW.P2ST_FILIAL,'
              '                         :NEW.P2ST_CHAVE,'
              '                         :NEW.P2ST_CHAVE_ANO,'
              '                         :NEW.P2ST_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2ST_' +
                'CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2ST_CODSER AND (CEFILIA' +
                'L=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2ST_CODUSR,'
              '                         :NEW.P2ST_HISTORICO'
              '                         ,mOper || '#39'C'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END+'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END+'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOC=CASE WHEN CESALDOC IS NULL T' +
                'HEN 0 ELSE CESALDOC END-'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOC=CASE WHEN PDSALDOC IS NULL T' +
                'HEN 0 ELSE PDSALDOC END-'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              '   end if;'
              ''
              '   if (:NEW.P2ST_ESTTERC='#39'S'#39') or (:NEW.P2ST_ESTTERC='#39'E'#39') then'
              '      if (:NEW.P2ST_ESTTERC='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2ST_CODEMP,'
              '                         :NEW.P2ST_CODSER,'
              '                         :NEW.P2ST_FILIAL,'
              '                         :NEW.P2ST_CHAVE,'
              '                         :NEW.P2ST_CHAVE_ANO,'
              '                         :NEW.P2ST_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2ST_' +
                'CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2ST_CODSER AND (CEFILIA' +
                'L=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2ST_CODUSR,'
              '                         :NEW.P2ST_HISTORICO'
              '                         ,mOper || '#39'T'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END+'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END+'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOT=CASE WHEN CESALDOT IS NULL T' +
                'HEN 0 ELSE CESALDOT END-'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOT=CASE WHEN PDSALDOT IS NULL T' +
                'HEN 0 ELSE PDSALDOT END-'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              '   end if;'
              ''
              ''
              '   if (:NEW.P2ST_ESTREV='#39'S'#39') or (:NEW.P2ST_ESTREV='#39'E'#39') then'
              '      if (:NEW.P2ST_ESTREV='#39'S'#39') then'
              '         mOper:='#39'E'#39';'
              '      end if;'
              '      insert into CADEST_EXT (EXT_CODEMP'
              '                         ,EXT_CODPRO'
              '                         ,EXT_FILIAL'
              '                         ,EXT_CHAVE_ANO'
              '                         ,EXT_CHAVE'
              '                         ,EXT_QTD'
              '                         ,EXT_SALDO_ANT'
              '                         ,EXT_DATHOR'
              '                         ,EXT_NOME_COMP'
              '                         ,EXT_CODUSR'
              '                         ,EXT_ORIGEM'
              '                         ,EXT_TIPOMOV'
              '                         ) values ('
              '                         :NEW.P2ST_CODEMP,'
              '                         :NEW.P2ST_CODSER,'
              '                         :NEW.P2ST_FILIAL,'
              '                         :NEW.P2ST_CHAVE,'
              '                         :NEW.P2ST_CHAVE_ANO,'
              '                         :NEW.P2ST_QTD,'
              
                '                         (SELECT sum(CASE WHEN CESALDO IS NULL T' +
                'HEN 0 ELSE CESALDO END)'
              
                '                          FROM CADEST WHERE (CECODEMP=:NEW.P2ST_' +
                'CODEMP or CECODEMP=:NEW.P2ST_CODEMP_FILIAL) and'
              
                '                          CECODPRO=:NEW.P2ST_CODSER AND (CEFILIA' +
                'L=:NEW.P2ST_FILIAL OR CEFILIAL is null)),'
              '                         SYSDATE,'
              '                         userenv('#39'TERMINAL'#39'),'
              '                         :NEW.P2ST_CODUSR,'
              '                         :NEW.P2ST_HISTORICO'
              '                         ,mOper || '#39'R'#39
              '                         );'
              '      if (mOper='#39'E'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END+'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END+'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              ''
              '      if (mOper='#39'S'#39') then'
              
                '         update CADEST set CESALDOR=CASE WHEN CESALDOR IS NULL T' +
                'HEN 0 ELSE CESALDOR END-'
              
                '         :NEW.P2ST_QTD WHERE (CECODEMP=:NEW.P2ST_CODEMP or CECOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              
                '         and CECODPRO=:NEW.P2ST_CODSER AND (CEFILIAL=:NEW.P2ST_F' +
                'ILIAL OR CEFILIAL is null);'
              
                '         update CADPRO set PDSALDOR=CASE WHEN PDSALDOR IS NULL T' +
                'HEN 0 ELSE PDSALDOR END-'
              
                '         :NEW.P2ST_QTD WHERE (PDCODEMP=:NEW.P2ST_CODEMP or PDCOD' +
                'EMP=:NEW.P2ST_CODEMP_FILIAL)'
              '         and PDCODPRO=:NEW.P2ST_CODSER;'
              '      end if;'
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              
                '-- if :NEW.P2ST_PED1_DESC_PERC01!= :NEW.P2ST_PED1_DESC_PERC01_AN' +
                'T OR'
              
                '--   :NEW.P2ST_PED1_DESC_PERC02!= :NEW.P2ST_PED1_DESC_PERC02_ANT' +
                ' OR'
              
                '--   :NEW.P2ST_PED1_DESC_PERC03!= :NEW.P2ST_PED1_DESC_PERC03_ANT' +
                ' THEN'
              ''
              
                '   Update CADP02 set P2DESC_CAB=ROUND(  ((( ((P2QTD*P2PRECO)-NVL' +
                '(P2VALDES,0)) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '(((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC01/100),2)))) *:NE' +
                'W.P2ST_PED1_DESC_PERC03/100) ,2),'
              
                '                     P2TOTLIQ= ((round(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0)' +
                ') ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +ROUND((((((round(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '(((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)))) *:NE' +
                'W.P2ST_PED1_DESC_PERC03/100) ,2))'
              
                '                     where P2CODEMP=:NEW.P2ST_CODEMP and P2CHAVE' +
                '=:NEW.P2ST_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              
                '   UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) whe' +
                're P2CODEMP=:NEW.P2ST_CODEMP  and P2CHAVE=:NEW.P2ST_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              
                '   Update CADP02S set P2SDESC_CAB=ROUND(  ((( (P2SQTD*P2SPRECO) ' +
                ') *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '((((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2ST_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC01/100),2)))) *:NE' +
                'W.P2ST_PED1_DESC_PERC03/100) ,2),'
              
                '                     P2STOTLIQ=(P2SQTD*P2SPRECO)-(ROUND(  ((( (P' +
                '2SQTD*P2SPRECO) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)+ROUND( ' +
                '((((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2ST_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2ST_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2ST_PED1_DESC_PERC02/100),2)))) *:NE' +
                'W.P2ST_PED1_DESC_PERC03/100) ,2))'
              
                '                     where P2SCODEMP=:NEW.P2ST_CODEMP  and P2SCH' +
                'AVE=:NEW.P2ST_CHAVE  and'
              '   P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              '-- end if;'
              ''
              ''
              ''
              ''
              ''
              
                'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES=CASE WH' +
                'EN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              
                ',P2STOTLIQ=((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              
                'where P2SCODEMP=:NEW.P2ST_CODEMP  and P2SCHAVE=:NEW.P2ST_CHAVE  ' +
                'and'
              'P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              ''
              '-- inicio do bloco retirado'
              
                'Update CADP02 set P2DESCRAT=0,P2ACRERAT=0,P2VDESPACESRAT=0 ,P2TO' +
                'TDES=NVL(P2VALDES,0)+ CASE WHEN'
              'P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END +  ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END )  * CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE' +
                ' P2DESC1 END) / 100) , 2) +ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)))-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END  )'
              ''
              
                '* CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 100) , ' +
                '2)))*P2DESC2/100),2) +ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                ')-CASE'
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((ROUND(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 100) , 2))'
              
                ' +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                ' (ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 100) , ' +
                '2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              
                ',P2TOTLIQ=(((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN ' +
                'P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                ' * CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 100) ,' +
                ' 2)+ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END)-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2' +
                'VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END ) * CASE WHEN :NEW.P2ST_TPPCO=3 THEN ' +
                '0 ELSE P2DESC1 END) / 100) , 2)))*P2DESC2/100),2)'
              
                '+ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB'
              
                'END ) * CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 1' +
                '00) , 2))+(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE'
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2ST_TPPCO=3 THEN 0 ELSE P2DESC1 END) / 100) , ' +
                '2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2))'
              
                'where P2CODEMP=:NEW.P2ST_CODEMP  and P2CHAVE=:NEW.P2ST_CHAVE  an' +
                'd'
              'P2LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              '-- termino do bloco retirado'
              ''
              
                'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) where ' +
                'P2CODEMP=:NEW.P2ST_CODEMP  and P2CHAVE=:NEW.P2ST_CHAVE  and'
              'P2LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              ''
              
                'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES=CASE WH' +
                'EN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              
                ',P2STOTLIQ=((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              
                'where P2SCODEMP=:NEW.P2ST_CODEMP  and P2SCHAVE=:NEW.P2ST_CHAVE  ' +
                'and'
              'P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              'Select sum(P2TOTLIQ) into  mTotMer from CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2ST_CODEMP'
              '                              and P2CHAVE=:NEW.P2ST_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              'mTotalPed :=0;'
              'Select sum(P2STOTLIQ) into mTotSer from CADP02S WHERE'
              '                                  P2SCODEMP=:NEW.P2ST_CODEMP'
              '                              and P2SCHAVE=:NEW.P2ST_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              ''
              ''
              ''
              'if :NEW.P2ST_PED1_DESCRAT>0 OR :NEW.P2ST_PED1_ACRERAT>0 THEN'
              '   if mTotMer>0 then'
              '      mTotalPed := mtotalPed + mTotMer;'
              '   end if;'
              '   if mTotSer>0 then'
              '      mTotalPed := mtotalPed + mTotSer;'
              '   end if;'
              '   if :NEW.P2ST_PED1_DESCRAT>0 THEN'
              '      mPercRat:=(:NEW.P2ST_PED1_DESCRAT*100)/mTotalPed;'
              '      if mTotMer>0 then'
              '         Update CADP02 set P2DESCRAT='
              
                '                                 TRUNC(((P2TOTLIQ*mPercRat)/100)' +
                ',2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      if mTotSer>0 then'
              '         Update CADP02S set P2SDESCRAT='
              
                '                                 TRUNC(((P2STOTLIQ*mPercRat)/100' +
                '),2)'
              
                '                                 where P2SCODEMP=:NEW.P2ST_CODEM' +
                'P'
              '                                 and P2SCHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2ST_CHAVE_A' +
                'NO'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      if mTotMer>0 then'
              '         Select sum(P2DESCRAT) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      if mTotSer>0 then'
              '         Select sum(P2SDESCRAT) into mQtdxPreco from CADP02S'
              
                '                                 where P2SCODEMP=:NEW.P2ST_CODEM' +
                'P'
              '                                 and P2SCHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2ST_CHAVE_A' +
                'NO'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2ST_PED1_DESCRAT-mDifDup;'
              '-- estilo bematech'
              '      if mDifDup!=0 then'
              '         if mTotMer>0 then'
              '            SELECT P2ITEM into mItemPed FROM'
              ''
              ''
              '            ('
              ''
              '            select P2ITEM,P2SIT,P2TOTLIQ,'
              '            (select sum(P2TOTLIQ) from CADP02 tot where'
              '                TOT.P2CHAVE=PED2.P2CHAVE'
              '                AND TOT.P2LOTSEQ=PED2.P2LOTSEQ'
              '                AND TOT.P2ORDEM=PED2.P2ORDEM'
              '                AND TOT.P2CODEMP=PED2.P2CODEMP'
              '                AND TOT.P2SIT=PED2.P2SIT'
              
                '               and (TOT.P2SITUACAO<>1 OR TOT.P2SITUACAO is null)' +
                ') as soma'
              '                FROM CADP02 PED2'
              '               WHERE P2CHAVE=:NEW.P2ST_CHAVE'
              '               AND P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '               AND P2ORDEM=:NEW.P2ST_ORDEM'
              '               AND P2CODEMP=:NEW.P2ST_CODEMP'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '               )  WHERE ROWNUM<2;'
              ''
              ''
              ''
              ''
              '            Update CADP02 set P2DESCRAT=P2DESCRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         else'
              
                '            select P2SITEM into mItemPed FROM (select p2sitem fr' +
                'om CADP02S'
              '            where P2SCODEMP=:NEW.P2ST_CODEMP'
              '            and P2SCHAVE=:NEW.P2ST_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null)'
              '            order by P2STOTLIQ DESC'
              '            ) where ROWNUM<2 ;'
              '            Update CADP02S set P2SDESCRAT=P2SDESCRAT+mDifDup'
              '            where P2SCODEMP=:NEW.P2ST_CODEMP'
              '            and P2SCHAVE=:NEW.P2ST_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2SITEM=mItemPed'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '      end if;'
              '      Update CADP02 set  P2TOTDES=P2TOTDES+P2DESCRAT'
              
                '                                    , P2TOTLIQ=P2TOTLIQ-P2DESCRA' +
                'T'
              '      where P2CODEMP=:NEW.P2ST_CODEMP'
              '      and P2CHAVE=:NEW.P2ST_CHAVE'
              '      and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '      and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '      Update CADP02S set P2STOTDES=P2STOTDES+P2SDESCRAT'
              
                '                                    , P2STOTLIQ=P2STOTLIQ-P2SDES' +
                'CRAT'
              '      where P2SCODEMP=:NEW.P2ST_CODEMP'
              '      and P2SCHAVE=:NEW.P2ST_CHAVE'
              '      and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '      and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '   ELSE'
              '      if :NEW.P2ST_PED1_ACRERAT>0 THEN'
              '         mPercRat:=(:NEW.P2ST_PED1_DESCRAT*100)/mTotalPed;'
              '         Update CADP02 set P2ACRERAT='
              
                '                                TRUNC(((P2TOTLIQ*mPercRat)/100),' +
                '2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '         Select sum(P2ACRERAT) into mDifDup from CADP02'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '         mDifDup:=:NEW.P2ST_PED1_ACRERAT-mDifDup;'
              '         if mDifDup!=0 THEN'
              
                '            Select P2ITEM into mItemPed FROM ( select p2item fro' +
                'm CADP02'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '            order by P2TOTLIQ DESC'
              '            ) where ROWNUM<2;'
              '            Update CADP02 set P2ACRERAT=P2ACRERAT+mDifDup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '         Update CADP02 set P2TOTLIQ=P2TOTLIQ+P2ACRERAT'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      END IF;'
              '   end if;'
              'end if;'
              ''
              '-- NOVOS RATEIOS'
              ''
              ''
              'if :NEW.P2T_PED1_VALSEG>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALSEG*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                          ,P2VSEGRAT_BCICMS=  TRUNC(((P2TOTLIQ*m' +
                'PercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VSEGRAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALSEG-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2ST_CODEMP'
              '         and P2CHAVE=:NEW.P2ST_CHAVE'
              '         and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              '         if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            ,P2VSEGRAT_BCICMS=P2VSEGRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              '         mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_PED1_VALFRE>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALFRE*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                             ,P2VFRERAT_BCICMS=  TRUNC(((P2TOTLI' +
                'Q*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VFRERAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALFRE-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2ST_CODEMP'
              '         and P2CHAVE=:NEW.P2ST_CHAVE'
              '         and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               ,P2VFRERAT_BCICMS=P2VFRERAT_BCICMS+mDifDup'
              '               where P2CODEMP=:NEW.P2ST_CODEMP'
              '               and P2CHAVE=:NEW.P2ST_CHAVE'
              '               and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               where P2CODEMP=:NEW.P2ST_CODEMP'
              '               and P2CHAVE=:NEW.P2ST_CHAVE'
              '               and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              ''
              '        mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              'if :NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN>0 then'
              '   if mTotMer>0 then'
              
                '      mPercRat:=((:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN)*1' +
                '00)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              
                '                          ,P2VDESPACESRAT_BCICMS=  TRUNC(((P2TOT' +
                'LIQ*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              
                '      Select sum(nvl(P2VDESPACESRAT,0)) into mQtdxPreco from CAD' +
                'P02'
              '                                 where P2CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P2CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P2LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              
                '      mDifDup:=(:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN)-mDi' +
                'fDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2ST_CODEMP'
              '         and P2CHAVE=:NEW.P2ST_CHAVE'
              '         and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            ,P2VDESPACESRAT_BCICMS=P2VDESPACESRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            where P2CODEMP=:NEW.P2ST_CODEMP'
              '            and P2CHAVE=:NEW.P2ST_CHAVE'
              '            and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '          end if;'
              '          mDifDup:=0;'
              ''
              ''
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              '-- TERMINO DOS NOVOS RATEIOS'
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02S SET'
              'P2SBCISSQN=P2STOTLIQ,'
              'P2SVISSQN=round( ((P2STOTLIQ*P2SALIQ)/100),2) ,'
              'P2SVCOMIS=round( ((P2STOTLIQ*P2SPCOMIS)/100),2) ,'
              'P2SVDESCF=round( ((P2STOTLIQ*P2SPDESCF)/100),2) ,'
              'P2SBCINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100),2) END ,'
              'P2SVINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100) *P2SALIQINS' +
                'S/100),2) END,'
              ''
              'P2SBCIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100),2) END ,'
              'P2SVIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100) *P2SALIQIRR' +
                'F/100),2) END'
              'where P2SCODEMP=:NEW.P2ST_CODEMP'
              'and P2SCHAVE=:NEW.P2ST_CHAVE'
              'and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              'P2COFINS=round( ((P2TOTLIQ*P2ALCOFINS)/100),2) ,'
              'P2VALIPI=round( ((P2TOTLIQ*P2ALIPI)/100),2) ,'
              'P2VALPIS=round( ((P2TOTLIQ*P2ALPIS)/100),2) ,'
              'P2VDESCF=round( ((P2TOTLIQ*P2PDESCF)/100),2) ,'
              'P2TOTOUT=CASE P2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ((P2TOTLIQ*P2REDUTICM)/100),2) END ,'
              ''
              ''
              'P2BASEN= CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+' +
                'P2VFRERAT_BCICMS)   +CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TO' +
                'TLIQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100),2) ' +
                'END ,'
              ''
              'P2ICMSN=CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *P2AL' +
                'IQ/100),2) END,'
              ''
              ''
              'P2VLRICMS_SN=CASE P2PCRED_SN WHEN 0 THEN 0 ELSE'
              
                'ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFR' +
                'ERAT_BCICMS)  *P2PCRED_SN)/100),2) END ,'
              ''
              'P2BASER= CASE P2MODBCST WHEN  4 THEN'
              '   ROUND(  (P2TOTLIQ+P2TOTDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '    * ((CASE NVL(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 END + NVL(' +
                'P2ST_IVA,0))/100)'
              
                '  * ( (CASE NVL(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100 END-NVL(P' +
                '2ST_REDUT,0))/100) , 2)  WHEN 0'
              'THEN ROUND( (P2QTD*NVL(P2PCOMAX,0))'
              
                '*((CASE NVL(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100 END-NVL(P2ST_' +
                'REDUT,0))/100),2)'
              'ELSE 0 END'
              
                ', P2ICMSR=ROUND((NVL(P2ST_ICMDEB,0) *(  (    (P2TOTLIQ+P2TOTDES+' +
                '((P2TOTLIQ*NVL(P2ALIPI,0))/100))'
              
                '         *  ((CASE NVL(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 END ' +
                '+ NVL(P2ST_IVA,0))/100)'
              
                '         *   ((CASE NVL(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100 E' +
                'ND-NVL(P2ST_REDUT,0))/100) )) / 100 ),2)'
              '         -ROUND( ((P2TOTLIQ * NVL(P2ST_ICMCRED,0)) / 100) ,2)'
              ''
              
                ', P2TOTLIQ=ROUND(  (P2TOTLIQ+((NVL(P2ST_ICMDEB,0) *(    (P2TOTLI' +
                'Q+P2TOTDES+((P2TOTLIQ*NVL(P2ALIPI,0))/100))'
              
                '         *  ((CASE NVL(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 END ' +
                '+ NVL(P2ST_IVA,0))/100)'
              
                '         *   ((CASE NVL(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100 E' +
                'ND-NVL(P2ST_REDUT,0))/100) )) / 100 )) ,2)'
              '         -ROUND( ((P2TOTLIQ * NVL(P2ST_ICMCRED,0)) / 100) ,2)'
              ''
              'where P2CODEMP=:NEW.P2ST_CODEMP'
              'and P2CHAVE=:NEW.P2ST_CHAVE'
              'and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              'mTotalPed := 0;'
              'mTotalBCIcms:=0;'
              'mTotalICms:=0;'
              ''
              'mTotalDesc_Prod:=0;'
              'mTotalDesc_Serv:=0;'
              ''
              ''
              'mTotalDescRat_Prod:=0;'
              'mTotalDescRat_Serv:=0;'
              ''
              ''
              'mTotIPI:=0;'
              
                'Select sum(P2TOTLIQ),sum(P2QTD*P2PRECO),sum(P2BASEN),sum(P2ICMSN' +
                '),sum(P2TOTDES)'
              '        ,sum(P2VALIPI),sum(P2DESCRAT) into'
              
                'mQtdxPreco,mTotMer,mTotalBCIcms,MtotalICMS,mTotalDesc_Prod,mTotI' +
                'PI,'
              'mTotalDescRat_Prod'
              ' from CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2ST_CODEMP'
              '                              and P2CHAVE=:NEW.P2ST_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2ST_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              
                'Select sum(P2STOTLIQ),sum(P2SQTD*P2SPRECO),sum(P2STOTDES),sum(P2' +
                'SDESCRAT) into'
              
                '  mQtdxPreco,mTotSer,mTotalDesc_Serv,mTotalDescRat_Serv from CAD' +
                'P02S'
              '  WHERE P2SCODEMP=:NEW.P2ST_CODEMP'
              '                              and P2SCHAVE=:NEW.P2ST_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2ST_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              'if mTotSer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              'if MTOTSER is null then'
              '   MTOTSER:=0;'
              'end if;'
              'if MTOTMER is null then'
              '   MTOTMER:=0;'
              'end if;'
              ''
              'if mTotalDesc_Prod is null then'
              '   mTotalDesc_Prod:=0;'
              'end if;'
              ''
              'if mTotalDesc_Serv is null then'
              '   mTotalDesc_Serv:=0;'
              'end if;'
              ''
              'if mTotalDescRat_Serv is null then'
              '   mTotalDescRat_Serv:=0;'
              'end if;'
              ''
              'if mTotalDescRat_Prod is null then'
              '   mTotalDescRat_Prod:=0;'
              'end if;'
              ''
              ''
              'update CADP01 set p1totall='
              
                '                   NVL(:NEW.P2T_PED1_VALSEG,0)+NVL(:NEW.P2T_PED1' +
                '_TARBAN,0)'
              
                '                  +NVL(:NEW.P2T_PED1_VALFRE,0)+NVL(:NEW.P2T_PED1' +
                '_DESPACES,0)'
              '                  +NVL(mTotalPed,0)+NVL(mTotIPI,0)'
              '                 ,P1TOTSERLIQ=mtotser,P1TOTALB=mTOTMER+MTOTSER'
              '                 ,P1DATHOR_UEVE = SYSDATE'
              
                '                ,P1BASEN=mTotalBCICMS,p1ICMSN=mTotalICMS,P1TOTDE' +
                'S=mTotalDesc_Prod+mTotalDesc_Serv'
              '                ,P1VLRDES=mTotalDescRat_Prod+mTotalDescRat_Serv'
              '                ,P1IPIINA=mtotipi'
              '                ,P1VALSEG=:NEW.P2T_PED1_VALSEG'
              '                ,P1TARBAN=:NEW.P2T_PED1_TARBAN'
              '                ,P1DESPACES=:NEW.P2T_PED1_DESPACES'
              '                ,P1VALFRE=:NEW.P2T_PED1_VALFRE'
              
                '                where P1CODEMP=:NEW.P2ST_CODEMP AND P1CHAVE=:NEW' +
                '.P2ST_CHAVE AND'
              '                P1LOTSEQ=:NEW.P2ST_CHAVE_ANO;'
              ''
              'IF :NEW.P2ST_ALTDUP<>'#39'N'#39' then'
              ''
              '    mNv_QtdParcDiv:=0;'
              '   if :NEW.P2ST_QTDDUP>0 then'
              ''
              ''
              
                '     Select sum(P1TOTALL),sum(P1ICMSR) into mTotalPed,mTotalIcms' +
                'R from CADP01'
              '                                 WHERE P1CODEMP=:NEW.P2ST_CODEMP'
              '                                 and P1CHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and P1LOTSEQ=:NEW.P2ST_CHAVE_AN' +
                'O;'
              '      if mTotalIcmsR is null then'
              '         mTotalIcmsR:=0;'
              '         end if;'
              ''
              ''
              '     if :NEW.P2ST_ICMSR_PRIMPARC=0 then'
              '        mTotalIcmsR:=0;'
              '     else'
              '        mtotalped:=mtotalped-mTotalIcmsR;'
              '     end if;'
              ''
              '      if mtotalped>0 then'
              '         mValorDup := trunc( (mTotalPed / :NEW.P2ST_QTDDUP) ,2);'
              '         mDifDup := mTotalPed - (mValorDup * :NEW.P2ST_QTDDUP);'
              '      end if;'
              ''
              ''
              '      if mvalordup is null then'
              '         mvalordup:=0;'
              '         end if;'
              ''
              '      if :NEW.P2ST_QTDDUP!=:NEW.P2ST_QTDDUP_ANT THEN'
              '         delete from CADPFP where PFPCODEMP=:NEW.P2ST_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2ST_CHAVE_A' +
                'NO'
              '                                 and PFPSEQ>=:NEW.P2ST_QTDDUP;'
              ''
              ''
              '      end if;'
              '      if (mvalordup<>0) and (mtotalped<>0) then'
              '         mtamprz:=length(:NEW.PT2S_PRZNOVOS);'
              '         l_loop:=0;'
              '-- testando se ha valores fixo'
              '         mNv_ValFixo:=0;'
              '         mNv_QtdDupRat:=0;'
              ''
              '         mNv_QtdParc :=0;'
              ''
              '         mNv_ParcDif:=0;'
              '         mNv_Campo:=0;'
              '         mNv_Vacum:='#39#39';'
              ''
              '         mNv_Tipo:='#39#39';'
              ''
              '         While l_loop < mtamprz loop'
              ''
              '            l_loop := l_loop +  1;'
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'vai tenta' +
                'r prznovos '#39' || :NEW.PT2S_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' ti' +
                'po '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamp' +
                'rz || '#39' TESTE '#39' || substr(:NEW.PT2S_PRZNOVOS,0,1)             ||' +
                ' substr(:NEW.PT2S_PRZNOVOS,1,1)  || substr(:NEW.PT2S_PRZNOVOS,2,' +
                '1));'
              ''
              '            BEGIN'
              '            if substr(:NEW.PT2S_PRZNOVOS,l_loop,1)='#39';'#39' then'
              ''
              '               if  length(mNv_vAcum)>0 then'
              
                '--                   RAISE_APPLICATION_ERROR(-20000, '#39'NV ACUM '#39' ' +
                '|| MnV_VaCUM || '#39' mnv_campo '#39' || mNv_Campo || '#39' tipo '#39' || mNv_Ti' +
                'po || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz || '#39' TESTE ' +
                #39' || substr(:NEW.PT2S_PRZNOVOS,0,1)             || substr(:NEW.P' +
                'T2S_PRZNOVOS,1,1)  || substr(:NEW.PT2S_PRZNOVOS,2,1));'
              ''
              '                  if mNv_campo=0 then'
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=1 then'
              '                     mNv_Tipo:=mnv_vAcum;'
              '                  elsif mNv_Campo=2 then'
              '                     mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=3 then'
              '                     mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=4 then'
              '                     mNv_NomFP:=mnv_vAcum;'
              '                  elsif mNv_Campo=5 then'
              '                     mNv_Baixa:=mnv_vAcum;'
              '                  end if;'
              '               end if;'
              ''
              ''
              '               mNv_Campo:=mNv_Campo+1;'
              '               mNv_vAcum:='#39#39';'
              ''
              
                '--               RAISE_APPLICATION_ERROR(-20000, '#39'LIMPOU PRIMEIR' +
                'O prazo '#39' || mnv_prazo ||  '#39'2618 campo '#39' || mNv_Campo || '#39' przno' +
                'vos '#39' || :NEW.PT2S_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tipo '#39' ||' +
                ' mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              '               if mNv_Campo>5 then'
              ''
              '                  if mNv_tipo<>'#39'V'#39' and mNv_ParcDif=0 then'
              '                     mNv_ParcDif:=mNv_QtdParc+1;'
              '                  end if;'
              ''
              ''
              '                  mNv_Campo:=0;'
              '                  mNv_QtdParc:=mNv_QtdParc+1;'
              '                  if mNv_tipo='#39'V'#39' and mNv_Valor<>0 then'
              '                     mnv_ValFixo:=mNv_ValFixo+mNv_Valor;'
              '                  else mNv_QtdParcDiv:=mNv_QtdParcDiv+1;'
              '                  end if;'
              '                  if mNv_Tipo<>'#39'V'#39' then'
              '                     mNv_QtdDupRat:=mNv_QtdDupRat+1;'
              '                  end if;'
              '               end if;'
              '            else'
              
                '               mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2S_PRZNOVOS' +
                ',l_loop,1);'
              ''
              '            end if;'
              '   EXCEPTION'
              '     WHEN OTHERS THEN'
              
                '--          RAISE_APPLICATION_ERROR(-20000, '#39'TRY campo '#39' || mNv_' +
                'Campo || '#39' prznovos '#39' || :NEW.PT2S_PRZNOVOS || '#39' LOOP '#39' || l_loo' +
                'p || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39 +
                ' || mtamprz);'
              '             RAISE;'
              '         END;'
              ''
              '         end loop;'
              ''
              ''
              ''
              '   -- fim dos testes para valores fixos'
              ''
              '     if mNv_QtdParcDiv<1 then'
              '        mNv_QtdParcDiv:=1;'
              '     end if;'
              ''
              ''
              '     if mNv_QtdParc<1 then'
              '        mNv_QtdParc:=1;'
              '     end if;'
              ''
              
                '--       RAISE_APPLICATION_ERROR(-20000, '#39'parc difer  '#39' || mValo' +
                'rDup ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup ||' +
                ' '#39' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mN' +
                'v_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VAL' +
                'FIXO: '#39' || mNv_ValFixo);'
              ''
              
                '        mValorDup := trunc( ((mTotalPed-mNv_ValFixo) / mNv_QtdPa' +
                'rcDiv) ,2);'
              
                '        mDifDup := (mTotalPed-mNv_ValFixo) - (mValorDup * mNv_Qt' +
                'dParcDiv);'
              ''
              ''
              
                '--      RAISE_APPLICATION_ERROR(-20000, '#39'Parc dif '#39' || mNv_ParcD' +
                'if ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup || '#39 +
                ' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mNv_' +
                'Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VALFI' +
                'XO: '#39' || mNv_ValFixo);'
              ''
              '        if mvalordup is null then'
              '           mvalordup:=0;'
              '        end if;'
              ''
              '        if mDifDup is null then'
              '           mDifDup:=0;'
              '        end if;'
              ''
              ''
              '        mNv_Campo:=0;'
              '        mNv_Valor:=0;'
              '        mNv_Vacum:='#39#39';'
              ''
              '        mNv_Parcela:=0;'
              '        mNv_CodFP:=-1;'
              '        mNv_NomFP:='#39#39';'
              '        mNv_Prazo:=0;'
              ''
              '        l_loop:=0;'
              ''
              ''
              '        While l_loop < mtamprz loop'
              '           l_loop := l_loop +  1;'
              '           if substr(:NEW.PT2S_PRZNOVOS,l_loop,1)='#39';'#39' then'
              ''
              '              if  length(mNv_vAcum)>0 then'
              '                 if mNv_campo=0 then'
              '                    mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                 elsif mNv_Campo=1 then'
              '                    mNv_Tipo:=mnv_vAcum;'
              '                 elsif mNv_Campo=2 then'
              '                    mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                 elsif mNv_Campo=3 then'
              '                    mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                 elsif mNv_Campo=4 then'
              '                    mNv_NomFP:=mnv_vAcum;'
              '                 elsif mNv_Campo=5 then'
              '                    mNv_Baixa:=mnv_vAcum;'
              '                 end if;'
              '              end if;'
              ''
              ''
              '              mnv_vAcum:='#39#39';'
              '              mNv_Campo:=mNv_Campo+1;'
              '              if mNv_Campo>5 then'
              '                 if mNv_Valor=0 then'
              '                    mNv_Valor:=mValordup;'
              '                 end if;'
              ''
              '                 mNv_Parcela:=mNv_Parcela+1;'
              '                 mNv_Campo:=0;'
              ''
              '                 if mDifDup<>0 and mNv_parcela= mNv_ParcDif then'
              '                    mNv_Valor:=mNv_Valor+mDifDup;'
              '                 end if;'
              ''
              '                 if mNv_CodFP=-1 then'
              '                    mNv_CodFP:=:NEW.P2ST_CODFP;'
              '                 end if;'
              ''
              ''
              '                 if trim(mNv_NomFP)='#39#39' or mNv_NomFP is null then'
              '                    mNv_NomFP:=:NEW.P2ST_NOMFP;'
              '                 end if;'
              ''
              '                 select count(*) into mvalortemp from CADPFP'
              
                '                                 where PFPCODEMP=:NEW.P2ST_CODEM' +
                'P'
              '                                 and PFPCHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2ST_CHAVE_A' +
                'NO'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              ''
              
                '                 if (:NEW.P2ST_QTDDUP!=:NEW.P2ST_QTDDUP_ANT) and' +
                ' (mValorTemp<1) THEN'
              ''
              
                '--                     RAISE_APPLICATION_ERROR(-20000, '#39'QTDDUP D' +
                'IFER campo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2S_PRZNOVOS ' +
                '|| '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv' +
                '_vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              
                '                    insert into CADPFP (PFPCODEMP,PFPCHAVE,PFPOR' +
                'DEM,PFPLOTSEQ'
              '                          ,PFPSEQ'
              '                          ,PFPQTDPARC'
              '                         ,PFPFORMA'
              '                         ,PFPVALOR'
              '                         ,PFPBAIXA'
              '                         ,PFPNOMFOR'
              '                         ,PFPPRAZO'
              '                         ,PFPDATA'
              '                         ,PFPFPGTO'
              '                         ,PFPVINCULO'
              ''
              '                         ) values ('
              
                '                          :NEW.P2ST_CODEMP,:NEW.P2ST_CHAVE,01,:N' +
                'EW.P2ST_CHAVE_ANO'
              '                         ,mNv_Parcela'
              '                         ,mNv_QtdDupRat'
              '                         ,mNv_CodFP'
              '                         ,mNv_valor+mTotalIcmsR'
              '                         ,mNv_baixa'
              '                         ,mNv_NomFP'
              '                         ,mNv_Prazo'
              '                         ,:NEW.P2ST_DATAPED+mNv_Prazo'
              '                         ,mNv_Valor*100 / mTotalPed'
              
                '                         ,(select MAX(fpvinculo) from cadfp wher' +
                'e fpcodigo=mNv_CodFP)'
              '                         );'
              ''
              '                 else'
              ''
              ''
              
                '                    Update CADPFP set PFPFORMA=mNv_CodFP,PFPVALO' +
                'R=mNv_valor+mTotalIcmsR,'
              
                '                                    PFPBAIXA=mNv_baixa,PFPNOMFOR' +
                '=mNv_NomFP,'
              
                '                                    PFPPRAZO=mNv_Prazo,PFPDATA=:' +
                'NEW.P2ST_DATAPED+mNv_Prazo,'
              
                '                                    PFPFPGTO=mNv_Valor*100 / mTo' +
                'talPed'
              
                '                                   ,PFPVINCULO=(select MAX(fpvin' +
                'culo) from cadfp where fpcodigo=mNv_CodFP)'
              
                '                                 where PFPCODEMP=:NEW.P2ST_CODEM' +
                'P'
              '                                 and PFPCHAVE=:NEW.P2ST_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2ST_CHAVE_A' +
                'NO'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'UPDATE ca' +
                'mpo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2S_PRZNOVOS || '#39' LO' +
                'OP '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum ' +
                '|| '#39' tamprz '#39' || mtamprz);'
              '                 end if;'
              ''
              '                 mnv_Prazo:=0;'
              '                 mNv_Tipo:='#39#39';'
              '                 mNv_valor:=0;'
              '                 mNv_CodFP:=-1;'
              '                 mNv_NomFP:='#39#39';'
              '                 mNv_Baixa:='#39#39';'
              '                 mTotalIcmsR:=0;'
              ''
              ''
              '              end if;'
              '           else'
              
                '              mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2S_PRZNOVOS,' +
                'l_loop,1);'
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'2778 campo '#39' || mNv_C' +
                'ampo || '#39' prznovos '#39' || :NEW.PT2S_PRZNOVOS || '#39' LOOP '#39' || l_loop' +
                ' || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' ' +
                '|| mtamprz);'
              ''
              '           end if;'
              '        end loop;'
              ''
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              'end if;'
              ''
              'end;'
              ''
              '')
            TabOrder = 0
            Visible = False
            WordWrap = False
          end
        end
        object tsCADPF: TTabSheet
          Caption = 'tsCADPF'
          ImageIndex = 2
          object memo_triggers_cadpf: TMemo
            Left = 0
            Top = 0
            Width = 874
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
              '        mTotIPI NUMBER;'
              '        mTotMer NUMBER;'
              '        mTotIcmsR NUMBER;'
              '        mTotBaseR NUMBER;'
              '        mTotIcmsN NUMBER;'
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
              'mTotIcmsR:=0;'
              'mTotBaseR:=0;'
              'mTotBaseN:=0;'
              'mTotIcmsN:=0;'
              'mTotMer:=0;'
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
              '                          ,PF2COFINSQTDUNID'
              '                          ,PF2COFINSVUNID'
              '                          ) values ('
              '                          :NEW.PF2T_CODEMP'
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
              '                          , :NEW.PF2T_COFINSQTDUNID'
              '                          , :NEW.PF2T_COFINSVUNID'
              '                          );'
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
              
                '                          ,PF2COFINSQTDUNID=:NEW.PF2T_COFINSQTDU' +
                'NID'
              '                          ,PF2COFINSVUNID=:NEW.PF2T_COFINSVUNID'
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
              '                          and PF2CODPRO=:NEW.PF2T_CODPRO;'
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
              
                '                          ,PF2FRERAT=0,PF2TOTDES=PF2VALDES + CAS' +
                'E WHEN'
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
              ',PF2TOTLIQ=round(((PF2QTDP*PF2PU) - NVL(PF2DESC_CABEC,0) )-'
              '(ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0) )'
              ' * PF2DESC01) / 100) , 2)+ROUND(((((PF2QTDP*PF2PU)-'
              
                ' NVL(PF2DESC_CABEC,0))-(ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_' +
                'CABEC,0) ) * PF2DESC01) / 100) , 2)))*PF2DESC02/100),2)'
              '+ROUND( ((((PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0))-'
              
                '((ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DESC_CABEC,0) ) * PF2DESC01' +
                ') / 100) , 2))+(ROUND(((((PF2QTDP*PF2PU)'
              
                '- NVL(PF2DESC_CABEC,0))- (ROUND(  ((( (PF2QTDP*PF2PU)-NVL(PF2DES' +
                'C_CABEC,0) )'
              
                '* PF2DESC01) / 100) , 2)))*PF2DESC02/100),2)))) * NVL(PF2DESC03,' +
                '0)/100) ,2)),2)'
              
                'where PF2CODEMP=:NEW.PF2T_CODEMP  and PF2CHAVE=:NEW.PF2T_CHAVE  ' +
                'and'
              'PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'Select sum(PF2QTDP*PF2PU) into mTotMer from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              'mTotalPed :=0;'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mTotalPed + mTotMer;'
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
              '   mPercRat:=(:NEW.PF2T_OUTDESP*100)/mTotalPed;'
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
              'ELSE (PF2TOTLIQ*PF2COFINS_PERC)/100 END) ,2)'
              ','
              'PF2IPI=round(('
              'case when NVL(PF2IPIVUNID,0)>0 then  (PF2IPIVUNID*PF2IPIQTDUNID)'
              
                'ELSE   (((PF2QTDP*PF2PU)-PF2TOTDES)) *NVL(PF2ALIPI,0)/100 END) ,' +
                '2)'
              
                '-- ELSE   (((PF2QTDP*PF2PU)-PF2TOTDES)+PF2FRERAT) *NVL(PF2ALIPI,' +
                '0)/100 END) ,2)'
              ','
              'PF2PIS_VALOR=round(('
              'case when NVL(PF2PISVUNID,0)>0 then PF2PISVUNID*PF2PISQTDUNID'
              'ELSE PF2TOTLIQ*NVL(PF2PIS_PERC,0)/100 END) ,2)'
              ','
              'PF2ICMS_RED_VLR=CASE PF2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ((PF2TOTLIQ*PF2PREDICMNOR)/100),2) END ,'
              ''
              'PF2BASEN=CASE PF2ALIQ WHEN 0 THEN 0'
              '--ELSE ROUND( (PF2TOTLIQ-(PF2TOTLIQ*PF2PREDICMNOR)/100),2) END ,'
              
                'ELSE ROUND( ((PF2QTDP*PF2PU-PF2TOTDES)-((PF2QTDP*PF2PU-PF2TOTDES' +
                ')*PF2PREDICMNOR)/100),2) END ,'
              ''
              ''
              'PF2ICMSN=CASE PF2ALIQ WHEN 0 THEN 0'
              
                '--ELSE ROUND( ( (PF2TOTLIQ-(PF2TOTLIQ*PF2PREDICMNOR)/100) *PF2AL' +
                'IQ/100),2) END,'
              
                'ELSE ROUND( ( ((PF2QTDP*PF2PU-PF2TOTDES)-((PF2QTDP*PF2PU-PF2TOTD' +
                'ES)*PF2PREDICMNOR)/100) *PF2ALIQ/100),2) END,'
              ''
              'PF2ICMSSN_VALOR=CASE PF2ICMSSN_PERC WHEN 0 THEN 0 ELSE'
              '--ROUND( ((PF2TOTLIQ*PF2ICMSSN_PERC)/100),2) END'
              'ROUND( ((PF2QTDP*PF2PU*PF2ICMSSN_PERC)/100),2) END'
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
              ''
              ''
              
                'into mTotMer, mQtdxPreco, mTotIPI,mTotDes,mTotBaseR,mTotIcmsR,mT' +
                'otBaseN,mTotIcmsN'
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
              
                '   select sum(PF2IPI),sum((((PF2QTDP*PF2PU)-PF2TOTDES))),count(*' +
                ') into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
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
                'TOTSEG,0)-nvl(mTotDes,0);'
              '--mTotalPed:=mTotalPed+mTotIPI+mValFre+;'
              '--LUIZ FERNANDO OLHAR AQUI'
              ''
              
                '--update CADPF1 set PF1BASER_IPI=:NEW.PF2T_BASER_IPI,PF1TOTLIQ=R' +
                'OUND(mTotalPed,2)+round(+mTotIcmsR,2)  ,PF1TOTMER=mTotMer,PF1IMP' +
                '_IMP_VALOR=mImp_Imp_Valor'
              
                'update CADPF1 set PF1BASER_IPI=:NEW.PF2T_BASER_IPI,PF1TOTLIQ=ROU' +
                'ND(mTotalPed,2)  ,PF1TOTMER=mTotMer,PF1IMP_IMP_VALOR=mImp_Imp_Va' +
                'lor'
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
              
                '            mCalcDiv_Difer := (mCalcDiv_Difer*100)/:NEW.PF2T_VD_' +
                'ICMS_VALOR;'
              
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
              
                '   PF2PREDICMNOR=CASE WHEN ROUND( (((PF2TOTLIQ-PF2TOTDES-PF2BASE' +
                'N)*100) / (PF2TOTLIQ-PF2TOTDES)) ,2) <0 THEN 0 ELSE  ROUND( (((P' +
                'F2TOTLIQ-PF2BASEN)*100) / PF2TOTLIQ) ,2) END'
              
                '   ,PF2ICMS_RED_VLR=CASE WHEN (PF2TOTLIQ-PF2TOTDES-PF2BASEN)<0 T' +
                'HEN 0 ELSE PF2TOTLIQ-PF2TOTDES-PF2BASEN END'
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
              
                '   select sum(PF2COFINS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES),co' +
                'unt(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHER' +
                'E'
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
              
                '         select sum(PF2COFINS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTD' +
                'ES) into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
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
              
                '      select sum(PF2COFINS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES)' +
                ',count(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 W' +
                'HERE'
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
              
                '            select sum(PF2COFINS_VALOR),sum((PF2QTDP*PF2PU)-PF2T' +
                'OTDES) into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
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
              
                '   select sum(PF2PIS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES),count' +
                '(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
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
              
                '         select sum(PF2PIS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES)' +
                ' into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
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
              
                '      select sum(PF2PIS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES),co' +
                'unt(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHER' +
                'E'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              
                '         mCalcDiv_Perc:=trunc(( (:NEW.PF2T_VD_PIS_VALOR*100)/mTo' +
                'tMer),2);'
              
                '         Update CADPF2 set PF2PIS_VALOR=TRUNC(((PF2QTDP*PF2PU)-P' +
                'F2TOTDES)* ((mCalcDiv_Perc)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              
                '         select sum(PF2PIS_VALOR),sum((PF2QTDP*PF2PU)-PF2TOTDES)' +
                ' into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              
                '                           (SELECT PF2ITEM,((PF2QTDP*PF2PU)-PF2T' +
                'OTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEMP'
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
              
                '   select sum(PF2BASER),sum((PF2QTDP*PF2PU)-PF2TOTDES),count(*) ' +
                'into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
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
              
                '         select sum(PF2BASER),sum((PF2QTDP*PF2PU)-PF2TOTDES) int' +
                'o mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              
                '                              (SELECT PF2ITEM,((PF2QTDP*PF2PU)-P' +
                'F2TOTDES) as TOTBRU  FROM CADPF2 where PF2CODEMP=:NEW.PF2T_CODEM' +
                'P'
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
              
                '      select sum(PF2BASER),sum((PF2QTDP*PF2PU)-PF2TOTDES),count(' +
                '*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '      if mCalcDiv_Qtd>0 then'
              
                '         select sum(PF2BASER),sum((PF2QTDP*PF2PU)-PF2TOTDES),cou' +
                'nt(*) into mCalcDiv_Valor,mTotMer,mCalcDiv_Qtd from CADPF2 WHERE'
              '                                  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              '         if mCalcDiv_Qtd>0 then'
              
                '            mCalcDiv_Perc:=trunc(( (:NEW.PF2T_VD_ICMSST_BASE*100' +
                ')/mTotMer),2);'
              
                '            Update CADPF2 set PF2BASER=TRUNC(((PF2QTDP*PF2PU)-PF' +
                '2TOTDES)* ((mCalcDiv_Perc)/100),2)'
              '                           WHERE  PF2CODEMP=:NEW.PF2T_CODEMP'
              '                              and PF2CHAVE=:NEW.PF2T_CHAVE'
              '                              and PF2LOTSEQ=:NEW.PF2T_CHAVE_ANO;'
              ''
              ''
              
                '            select sum(PF2BASER),sum((PF2QTDP*PF2PU)-PF2TOTDES) ' +
                'into mCalcDiv_Valor,mTotMer from CADPF2 WHERE'
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
              '            insert into CADPF1V (PF1VCODEMP,PF1VCHAVE,PF1VLOTSEQ'
              '                           ,PF1VCODIGO'
              '                           ,PF1VQTDPARC'
              '                          ,PF1VCODFP'
              '                          ,PF1VVALOR'
              '                          ,PF1VBAIXA'
              '                          ,PF1VNOMFP'
              '                          ,PF1VPRAZO'
              '                          ,PF1VDATAV'
              '                          ) values ('
              
                '                           :NEW.PF2T_CODEMP,:NEW.PF2T_CHAVE,:NEW' +
                '.PF2T_CHAVE_ANO'
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
            Width = 874
            Height = 165
            Align = alClient
            Lines.Strings = (
              
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
              '        mVarTipoPed VARCHAR2(100);'
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
              '        Select max(ROWNUM) AS P1VORDEM,'
              '               sum(PFPSEQ)  AS P1VSEQ,'
              '               sum(PFPVALOR) AS P1VVALOR,'
              '               max(PFPCHAVE_NIVEL) AS P1VCHAVE_NIVEL,'
              '               PFPCODEMP as P1VCODEMP,'
              '               PFPLOTSEQ as P1VLOTSEQ,'
              '               PFPCHAVE as P1VCHAVE,'
              '               PFPDATA as P1VDATAV'
              '               ,max(NVL(PFPVDESCF,0)) as P1VVDESCF'
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
              ''
              '               from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              '               and  PFPCHAVE  =:NEW.P1CHAVE'
              '               group by'
              '               PFPCODEMP,'
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
              '               order by  PFPDATA;'
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
              '   if :NEW.P1TIPO<1 OR :NEW.P1TIPO>25 then'
              
                '      mVarTipoPed:='#39'select max(PDUPTIP'#39'|| 1||'#39'),max(PPEDFPGTO) f' +
                'rom PARGER '#39';'
              '   else'
              
                '      mVarTipoPed:='#39'select max(PDUPTIP'#39'|| to_char(:NEW.P1TIPO)||' +
                #39'),max(PPEDFPGTO) from PARGER '#39';'
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
              '                 (nvl(:NEW.P1NUMNF_SERV,0)<>0)'
              '               ) )'
              '            or ( (UPDATING) and (:NEW.P1EMIDOC=1) and'
              '              (  (nvl(:NEW.P1NUMCF,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF,0)<>0) or'
              '                 (nvl(:NEW.P1NUMNF_SERV,0)<>0)'
              '               ) and  ('
              '                      (:NEW.P1EMIDOC<>:OLD.P1EMIDOC) or'
              '                         ('
              '                             (:NEW.P1NUMCF<>:OLD.P1NUMCF) or'
              '                             (:NEW.P1NUMNF<>:OLD.P1NUMNF) or'
              
                '                             (nvl(:NEW.P1NUMNF_SERV,0)<>nvl(:OLD' +
                '.P1NUMNF_SERV,0))'
              '                          ) or'
              '                       mtotaldup<>:NEW.P1TOTALL'
              '                       )  )'
              ''
              '                        then'
              ''
              '      if :NEW.P1STATUS<>9 then'
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
              '      if :NEW.P1NUMNF>0 then'
              '         mNumeroDup:=:NEW.P1NUMNF;'
              '         mDtEmis   :=:NEW.P1DATANF;'
              '      elsif :NEW.P1NUMCF>0 then'
              '         mNumeroDup:=:NEW.P1NUMCF;'
              '         mDtEmis   :=:NEW.P1DATACF;'
              '      elsif nvl(:NEW.P1NUMNF_SERV,0)>0 then'
              '         mNumeroDup      :=nvl(:NEW.P1NUMNF_SERV,0);'
              '         mDtemis         :=:NEW.P1DATANF_SERV;'
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
              '      if mTotal_FPAG<:NEW.P1TOTALL then'
              '         delete from CADPFP'
              '               where PFPCODEMP=:NEW.P1CODEMP'
              '               and  PFPLOTSEQ =:NEW.P1LOTSEQ'
              
                '               and  (PFPORDEM =:NEW.P1ORDEM or PFPORDEM is null ' +
                ')'
              '               and  PFPCHAVE  =:NEW.P1CHAVE;'
              '         mtotal_FPAG:=0;'
              '      end if;'
              '      '
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
              
                '      if mtotal_fpag=0 then  -- cria-se um titulo com valor a vi' +
                'sta'
              '         insert into CADPFP  ('
              '                            PFPORDEM'
              '                           ,PFPSEQ'
              '                           ,PFPVALOR'
              '                           ,PFPCHAVE_NIVEL'
              '                           ,PFPCODEMP'
              '                           ,PFPLOTSEQ'
              '                           ,PFPCHAVE'
              '                           ,PFPDATA'
              '                           ,PFPVDESCF'
              '                           ,PFPDTDESCF'
              ''
              '                           ,PFPVINCULO'
              '                           ,PFPNOMFOR'
              '                           ,PFPFORMA'
              '                           ,PFPFPGTO'
              ''
              ''
              '                           ,PFPQTDPARC'
              '                           ,PFPBAIXA'
              '                           ,PFPPRAZO'
              '                           ,PFPDUPLIC'
              ''
              '                           ) Select  P1VORDEM'
              '                             ,P1VSEQ'
              '                             ,P1VVALOR'
              '                             ,P1VCHAVE_NIVEL'
              '                             ,P1VCODEMP'
              '                             ,P1VLOTSEQ'
              '                             ,P1VCHAVE'
              '                             ,P1VDATAV'
              '                             ,P1VDESCF'
              '                             ,P1VDTDESCF'
              '                             ,P1VVINC02'
              '                             ,P1VNOMFPGTO'
              '                             ,P1VCODFP'
              '                             ,P1VPFPGTO'
              '                             ,(select count(*) from CADP01V'
              '                             where P1VCODEMP=:NEW.P1CODEMP'
              '                             and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '                             and  P1VCHAVE  =:NEW.P1CHAVE'
              '                             and  P1VORDEM  =:NEW.P1ORDEM)'
              '                             ,'#39'N'#39
              '                           ,P1VDATAV-:NEW.P1DATDOC'
              '                           ,P1VVALOR'
              ''
              ''
              '                             from CADP01V'
              '                             where P1VCODEMP=:NEW.P1CODEMP'
              '                             and  P1VLOTSEQ =:NEW.P1LOTSEQ'
              '                             and  P1VCHAVE  =:NEW.P1CHAVE'
              '                             and  P1VORDEM  =:NEW.P1ORDEM;'
              '      end if;'
              ''
              ''
              '      if mtotal_temp=0 then'
              '         insert into CADPFP  ('
              '                            PFPORDEM'
              '                           ,PFPSEQ'
              '                           ,PFPVALOR'
              '                           ,PFPCHAVE_NIVEL'
              '                           ,PFPCODEMP'
              '                           ,PFPLOTSEQ'
              '                           ,PFPCHAVE'
              '                           ,PFPDATA'
              '                           ,PFPVDESCF'
              '                           ,PFPDTDESCF'
              ''
              '                           ,PFPVINCULO'
              '                           ,PFPNOMFOR'
              '                           ,PFPFORMA'
              '                           ,PFPFPGTO'
              ''
              '                           ,PFPQTDPARC'
              '                           ,PFPBAIXA'
              '                           ,PFPPRAZO'
              '                           ,PFPDUPLIC'
              ''
              '                           ) values ('
              '                           :NEW.P1ORDEM'
              '                           ,1'
              '                           ,:NEW.P1TOTALL+:NEW.P1ICMSR'
              '                           ,:NEW.P1CHAVE_NIVEL'
              '                           ,:NEW.P1CODEMP'
              '                           ,:NEW.P1LOTSEQ'
              '                           ,:NEW.P1CHAVE'
              '                           ,mdtemis'
              '                           ,:NEW.P1DESCFIN'
              '                           ,mdtemis'
              ''
              
                '                           ,(select max(fpvinculo) from cadfp wh' +
                'ere  fpcodigo = ( select min(fpcodigo)  from cadfp))'
              
                '                           ,(select max(fpdesc) from cadfp where' +
                '  fpcodigo = ( select min(fpcodigo)  from cadfp))'
              
                '                           ,(select max(fpcodigo) from cadfp whe' +
                're  fpcodigo = ( select min(fpcodigo) from cadfp))'
              '                           ,100'
              '                           ,1'
              '                           ,'#39'N'#39
              '                           ,0'
              '                           ,:NEW.P1TOTALL+:NEW.P1ICMSR'
              '                           );'
              ''
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
              ''
              ''
              '   if mCriarDup='#39'S'#39' then'
              
                '      select sum(CRVALOR),count(*) into mtotaldup,mQtdDupExist f' +
                'rom CADDAR where CRCODEMP=:NEW.P1CODEMP'
              
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
              ''
              ''
              '     FOR v_Cadp01v in c_Cadp01v LOOP'
              ''
              '        mLoteBx:=0;'
              ''
              '        mValorPag:=0;'
              '        mDtPag   :=null;'
              '        mnr      :=0;'
              '        mExisteDup:=0;'
              
                '           select count(*),max(CRCODLDR) as CRCODLDR,max(CRLOTE)' +
                ' as CRLOTE,sum(CRVALPAG),max(crdtpag),max(CRNR)'
              
                '               into mExisteDup,mCodLDR,mLoteBX,mValorPag,mDtPag,' +
                'mNr from CADDAR where'
              '               CRCODECF=:NEW.P1CODECF'
              '                and CRNUMERO=mNumeroDup'
              '                and CRDESD=CHR(64+v_Cadp01v.P1VSEQ)'
              '                and CRDUP=mDup'
              '              and CRSEQ=0'
              '              and CRDTEMIS=TO_DATE(mDtemis)'
              '              and CRCODEMP=:NEW.P1CODEMP;'
              ''
              ''
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'LOTE BX '#39' || MLOTEBX ' +
                '|| '#39' CODLDR '#39' || MCODLDR || '#39'Totaldup '#39' || mtotaldup || '#39'qtd dup' +
                ' '#39' || mqtddupexist  || '#39'dup exist '#39' ||  mExisteDup || '#39' CRIADUP ' +
                #39' || mcriardup || '#39' QTDUPGER '#39' || mqtddupger  || '#39' moperdup '#39' ||' +
                ' mOperdup || '#39' codldr '#39' || mcodldr );'
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
              ''
              
                '        if :NEW.P1CUPOM>0 and :NEW.P1NUMCF>0 and v_Cadp01v.P1VVI' +
                'NC02<>8  and mLoteBx=0  and (mBaixarDuplic<>4) then'
              ''
              '           mValorPag:=v_Cadp01v.P1VVALOR;'
              '           mDtPag   :=SYSDATE;'
              '           mnr      :=TO_CHAR(SYSDATE,'#39'DDMMYYYY'#39');'
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
              '           Insert into CADLDR ('
              '                              CODEMP'
              '                             ,DATADP'
              '                             ,CODLDR'
              '                             ,DATAREF'
              '                             ,VALORP'
              '                             ,CODBCO'
              '                             ,CODCC'
              '                             ,CODDEP'
              '                             ,NATDC'
              '                             ,DESCMV'
              '                             ,NUMDOC'
              '                             ,NUMDOC2'
              '                             ,VINCULO'
              '                             ,STATUS'
              '                             ,ORIGEM'
              '                             ,LOCDEP'
              '                             ,TIPO'
              '                             ,CODIGO'
              '                             ,LOTSEQ'
              '                             ,NOMDEP'
              '                             ,NOMBCO'
              '                             ,NOMCCU'
              '                             ,NOME'
              '                             ,FC_OBSFIN'
              '                             ,DATLAN'
              '                             ,LOTMOV'
              '                             ,LEMAT'
              '                             ,DTSALDO'
              '                             ,CODUSR_CX'
              '                             ,CODECF'
              '                             ,DATAREAL'
              '                             ,VALORR'
              '                             ,COMPENS'
              '                             ) Values  ('
              '                              :NEW.P1CODEMP'
              '                             ,TO_DATE(v_Cadp01v.P1VDATAV)'
              '                             ,mcodldr'
              '                             ,TO_DATE(mDtemis)'
              '                             ,v_Cadp01v.P1VVALOR'
              '                             ,pldr_codcai'
              '                             ,pldr_codccu'
              '                             ,pldr_coddep'
              '                             ,pldr_natdc'
              '                             ,pldr_descmov'
              '                             ,TO_CHAR(mNumeroDup)'
              '                             ,'#39'DINHEIRO'#39
              '                             ,0 -- vinculo'
              '                             ,0 -- status'
              '                             ,0 -- origem'
              '                             ,2 -- LOCDEP'
              '                             ,'#39'CL'#39' -- tipo'
              '                             ,:NEW.P1CODCLI'
              '                             ,0  -- LOTSEQ'
              '                             ,pldr_nomdep'
              '                             ,pldr_nombco'
              '                             ,pldr_nomccu'
              
                '                             ,(SELECT max(crazao) from cadcli wh' +
                'ere CCODCLI=:NEW.P1CODCLI) -- // NOME DO CLIENTE NOME'
              '                             ,'#39#39' -- OBS FIN'
              '                             ,TO_DATE(SYSDATE)'
              '                             ,0'
              '                             ,0'
              '                             ,TO_DATE(SYSDATE)'
              '                             ,:NEW.P1CODUSR'
              '                             ,:NEW.P1CODECF'
              '                             ,TO_DATE(mDtPag)'
              '                             ,mValorPag'
              '                             ,1'
              '                             ) ;'
              ''
              '        else'
              ''
              ''
              '           Update CADLDR set'
              ''
              '                              CODEMP=:NEW.P1CODEMP'
              '                             ,DATADP=TO_DATE(v_Cadp01v.P1VDATAV)'
              '                             ,CODLDR=mcodldr'
              '                             ,DATAREF=TO_DATE(mDtemis)'
              '                             ,VALORP=v_Cadp01v.P1VVALOR'
              '                             ,CODBCO=pldr_codcai'
              '                             ,CODCC=pldr_codccu'
              '                             ,CODDEP=pldr_coddep'
              '                             ,NATDC=pldr_natdc'
              '                             ,DESCMV=pldr_descmov'
              '                             ,NUMDOC=TO_CHAR(mNumeroDup)'
              '                             ,NUMDOC2='#39'DINHEIRO'#39
              '                             ,VINCULO=0 -- vinculo'
              '                             ,STATUS=0 -- status'
              '                             ,ORIGEM=0 -- origem'
              '                             ,LOCDEP=2 -- LOCDEP'
              '                             ,TIPO='#39'CL'#39' -- tipo'
              '                             ,CODIGO=:NEW.P1CODCLI'
              '                             ,LOTSEQ=0  -- LOTSEQ'
              '                             ,NOMDEP=pldr_nomdep'
              '                             ,NOMBCO=pldr_nombco'
              '                             ,NOMCCU=pldr_nomccu'
              
                '                             ,NOME=(SELECT max(crazao) from cadc' +
                'li where CCODCLI=:NEW.P1CODCLI) -- // NOME DO CLIENTE NOME'
              '                             ,FC_OBSFIN='#39#39' -- OBS FIN'
              '                             ,DATLAN=TO_DATE(SYSDATE)'
              '                             ,LOTMOV=0'
              '                             ,LEMAT=0'
              '                             ,DTSALDO=TO_DATE(SYSDATE)'
              '                             ,CODUSR_CX=:NEW.P1CODUSR'
              '                             ,CODECF=:NEW.P1CODECF'
              '                             ,DATAREAL=TO_DATE(mDtPag)'
              '                             ,VALORR=mValorPag'
              '                              where CODEMP=:NEW.P1CODEMP'
              '                             and CODLDR=mcodldr;'
              ''
              ''
              '        end if;'
              '        if mLoteBx>0 then'
              ''
              ''
              
                '           if (mCodFPCRDUP is NULL) or (mcodFPCRDUP=0) or (:OLD.' +
                'P1CODEMP<>:NEW.P1CODEMP) then'
              '              BEGIN'
              
                '              select PCFPCRDUP into mCodFPCRDUP from CADpar wher' +
                'e pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
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
              '              Insert into FPCRDUP ('
              '              FPCODEMP'
              '              ,FPSEQ'
              '              ,FPLOTE'
              '              ,FPNR'
              '              ,FPDUP_CODEMP'
              '              ,FPNUMERO'
              '              ,FPDESD'
              '              ,FPTIPO'
              '              ,FPCODCLI'
              '              ,FPCODVEN'
              '              ,FPDTEMIS'
              '              ,FPDTBX'
              '              ,FPCAIXA'
              '              ,FPCODUSR'
              '              ,FPVALOR'
              '              ,FPJUROS'
              '              ,FPDESC'
              '              ,FPLOTSEQ'
              '              ,FPCODECF'
              '              ,FPLEMAT'
              '              ,FPVLRST'
              '              ,FPVLRIPI'
              '              ,FPVALDUP'
              '              ,FPDEVOL'
              '              ,FPDATPAG'
              '              ,FPDTVCTO'
              '              ) Values  ('
              '               :NEW.P1CODEMP'
              '              ,mCodFPCRDUP'
              '              ,mLoteBx'
              '              ,mNr'
              '              ,:NEW.P1CODEMP'
              '              ,mNumeroDup'
              '              ,CHR(64+v_Cadp01v.P1VSEQ)'
              '              ,mdup'
              '              ,:NEW.P1CODCLI'
              '              ,:NEW.P1CODVEN'
              '              ,TO_DATE(mDtemis)'
              '              ,TO_DATE(mDtPag)'
              '              ,pldr_codcai'
              '              ,:NEW.P1CODUSR'
              '              ,v_Cadp01v.P1VVALOR'
              '              ,0  -- :FPJUROS'
              '              ,0 -- :FPDESC'
              '              ,0 --:FPLOTSEQ'
              '              ,:NEW.P1CODECF'
              '              ,0  -- :0FPLEMAT'
              '              ,0  --:FPVLRST'
              '              ,0 -- :FPVLRIPI'
              '              ,v_Cadp01v.P1VVALOR  --0:FPVALDUP'
              '              ,0 --:FPDEVOL'
              '              ,TO_DATE(mDtPag) -- :FPDATPAG'
              '              ,TO_DATE(v_Cadp01v.P1VDATAV) -- :FPDTVCTO'
              '              );'
              '              EXCEPTION'
              '               WHEN OTHERS THEN'
              '                 mERRO :=0;'
              '                  RAISE;'
              '               END;'
              ''
              ''
              
                '              if (mCodFPCR is NULL) or (mCodFPCR=0) or (:OLD.P1C' +
                'ODEMP<>:NEW.P1CODEMP) then'
              ''
              '                 BEGIN'
              
                '                 select PCODFPCR into mCodFPCR from CADpar where' +
                ' pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
                '                 Update CADPAR set PCODFPCR=PCODFPCR+1 where pco' +
                'demp=mCodEmp_Chave and PCODSEQ=1;'
              '                 EXCEPTION'
              '                  WHEN OTHERS THEN'
              '                  mCodFPCR :=0;'
              '                  RAISE;'
              '                END;'
              '              end if;'
              '              BEGIN'
              '              Insert into FPCR ('
              '              FPCODEMP'
              '              ,FPSEQ'
              '              ,FPDATA'
              '              ,FPFORMA'
              '              ,FPNUMERO'
              '              ,FPBANCO'
              '              ,FPSERIE'
              '              ,FPVALOR'
              '              ,FPLOTE'
              '              ,FPCC'
              '              ,FPTIPO'
              '              ,FPCAIXA'
              '              ,FPCODLDR'
              '              ,FPLOTSEQ_FC'
              '              ,FPLOTSEQ'
              '              ,FPLEMAT'
              '              ,FPVINCULO'
              '              ,FPNATUREZA'
              '              ,FPNR'
              '              ,FPCODCLI'
              '              ,FPDATDEP'
              '              ,FPDEV_CODEMP'
              '              ,FPDEV_CODECF'
              '              ,FPDEV_NUMERO'
              '              ,FPDEV_DESD'
              '              ,FPDEV_DUP'
              '              ,FPDEV_DTEMIS'
              '              ,FPCODUSR_CX'
              '              ) Values  ('
              '              :NEW.P1CODEMP'
              '              ,mCodFPCR'
              '              ,TO_DATE(mDtPag)'
              '              ,v_Cadp01v.P1VCODFP'
              '              ,0 -- :FPNUMERO'
              '              ,0 --:FPBANCO'
              '              ,'#39' '#39' --:FPSERIE'
              '              ,v_Cadp01v.P1VVALOR  --0:FPVALDUP'
              '              ,mLoteBx --:FPLOTE'
              '              ,0 --:FPCC'
              '              ,0 -- :FPTIPO'
              '              ,pldr_codcai'
              '              ,mCodLDR   --  :FPCODLDR'
              '              ,0 -- :FPLOTSEQ_FC'
              '              ,0 -- :FPLOTSEQ'
              '              ,0 -- :FPLEMAT'
              '              ,v_Cadp01v.P1VVINC02  -- :FPVINCULO'
              '              ,0 -- :FPNATUREZA'
              '              ,mNr'
              '              ,:NEW.P1CODCLI'
              '              ,null  -- :FPDATDEP'
              '              ,0 --:FPDEV_CODEMP'
              '              ,0 --:FPDEV_CODECF'
              '              ,0 --:FPDEV_NUMERO'
              '              ,'#39' '#39' --:FPDEV_DESD'
              '              ,0 -- :FPDEV_DUP'
              '              ,null --:FPDEV_DTEMIS'
              '              ,:NEW.P1CODUSR'
              '              );'
              ''
              '                 EXCEPTION'
              '                  WHEN OTHERS THEN'
              '                  mERRO :=0;'
              '                  RAISE;'
              '                END;'
              ''
              
                '           if v_Cadp01v.P1VVINC02=14 or v_Cadp01v.P1VVINC02=1 th' +
                'en'
              
                '              select PCODCHQCLI into mCodChqCli from CADpar wher' +
                'e pcodemp=mCodEmp_Chave and PCODSEQ=1;'
              
                '              Update CADPAR set PCODCHQCLI=PCODCHQCLI+1 where pc' +
                'odemp=mCodEmp_Chave and PCODSEQ=1;'
              '              Insert into CADCHQ ('
              '              CHCODEMP'
              '              ,CHSEQ'
              '              ,CHNUMERO'
              '              ,CHBANCO'
              '              ,CHSERIE'
              '              ,CHCOMP'
              '              ,CHCODCLI'
              '              ,CHEMIT'
              '              ,CHCPF'
              '              ,CHRG'
              '              ,CHCC'
              '              ,CHDTNAS'
              '              ,CHVALOR'
              '              ,CHDTEMIS'
              '              ,CHDTDEP'
              '              ,CHAGENCIA'
              '              ,CHLOTE'
              '              ,CHLOTEBX'
              '              ,CHTIPO'
              '              ,CHSTATUS'
              '              ,CHDTBX'
              '              ,CHUSRBX'
              '              ,CHCAIXA'
              '              ,CHCODUSR'
              '              ,CHDTALT'
              '              ,CHHRALT'
              '              ,CHCODLDR'
              '              ,CHLOTSEQ'
              '              ,CHLEMAT'
              '              ,CHLOTSEQ_FC'
              '              ,CHCODCTA'
              '              ,CHCODCC'
              '              ,CHCODDEP'
              '              ,CHDESCMV'
              '              ,CHDEPOSITO'
              '              ,CHPROR_QTDP'
              '              ,CHPRO_ULTDAT'
              '              ,CHOBSL01'
              '              ,CHOBSL02'
              '              ,CHCODFPGTO'
              '              ) Values  ('
              '              :NEW.P1CODEMP'
              '              ,mCodChqCli'
              
                '              ,REGEXP_REPLACE(v_Cadp01v.P1VNUMDOC, '#39'[^0-9]+'#39', '#39#39 +
                ')'
              '              ,v_Cadp01v.P1VBANCO -- :CHBANCO'
              '              ,v_Cadp01v.P1VSERIE -- :CHSERIE'
              '              ,v_Cadp01v.P1VCOMP -- :CHCOMP'
              '              ,:NEW.P1CODCLI'
              '              ,v_Cadp01v.P1VEMITENTE'
              '              ,v_Cadp01v.P1VCPF  -- '#39#39':CHCPF'
              '              ,v_Cadp01v.P1VRG -- :CHRG'
              '              ,v_Cadp01v.P1VCC -- :CHCC'
              '              ,v_Cadp01v.P1VDTNAS  -- :CHDTNAS'
              '              ,v_Cadp01v.P1VVALOR  --0:FPVALDUP'
              '              ,TO_DATE(mDtemis)'
              '              ,TO_DATE(v_Cadp01v.P1VDATAV)-- CHDTDEP'
              '              ,9'
              '              ,mLoteBx -- :CHLOTE'
              '              ,0  -- :CHLOTEBX'
              '              ,0  -- :CHTIPO'
              '              ,0   -- :CHSTATUS'
              '              ,null  -- :CHDTBX'
              '              ,0 -- :CHUSRBX'
              '              ,pldr_codcai --:CHCAIXA'
              '              ,:NEW.P1CODUSR -- CHCODUSR'
              '              ,null   -- :CHDTALT'
              '              ,null --  :CHHRALT'
              '              ,mcodldr -- :CHCODLDR'
              '              ,0  -- :CHLOTSEQ'
              '              ,0  -- :CHLEMAT'
              '              ,0  -- :CHLOTSEQ_FC'
              '              ,pldr_codcai  -- :CHCODCTA'
              '              ,pldr_codccu -- :CHCODCC'
              '              ,pldr_coddep -- :CHCODDEP'
              '              ,pldr_descmov --:CHDESCMV'
              '              ,null -- :CHDEPOSITO'
              '              ,null -- :CHPROR_QTDP'
              '              ,null -- :CHPRO_ULTDAT'
              '              ,null -- :CHOBSL01'
              '              ,null -- :CHOBSL02'
              '              ,v_Cadp01v.P1VCODFP --:CHCODFPGTO'
              ''
              '              );'
              '           end if;'
              ''
              '           end if;'
              '        end if;'
              ''
              ''
              '        BEGIN'
              ''
              '           if mExisteDup=0 then'
              
                '--                        RAISE_APPLICATION_ERROR(-20000, '#39'Total' +
                'dup '#39' || mtotaldup || '#39'qtd dup '#39' || mqtddupexist  || '#39'dup exist ' +
                #39' ||  mExisteDup || '#39' CRIADUP '#39' || mcriardup || '#39' QTDUPGER '#39' || ' +
                'mqtddupger  || '#39' moperdup '#39' || mOperdup || '#39' codldr '#39' || mcodldr' +
                ' );'
              ''
              '-- INICIO TRY'
              ''
              ''
              ''
              '                 Insert into CADDAR ('
              '                 CRCODEMP'
              '                 ,CRSEQ'
              '                 ,CRCODECF'
              '                 ,CRNUMERO'
              '                 ,CRDESD'
              '                 ,CRDUP'
              '                 ,CRCODCLI'
              '                 ,CRNUMCUP'
              '                 ,CRDATCUP'
              '                 ,CRVALOR'
              '                 ,CRTOTNF'
              '                 ,CRDTEMIS'
              '                 ,CRDTVCTO'
              '                 ,CRLOTSEQ_FC'
              '                 ,CRLOTSEQ_CP'
              '                 ,CRNPED'
              '                 ,CRNPED_NIVEL'
              '                 ,CRORDEM'
              '                 ,CRCODVEN'
              '                 ,CRCODTLV'
              '                 ,CRCODBCO'
              '                 ,CRDESCF'
              '                 ,CRDTDESCF'
              '                 ,CRJURD'
              '                 ,CRDESCD'
              '                 ,CRMULTA'
              '                 ,CRQTDDM'
              '                 ,CRNFACUM'
              '                 ,CRTIPCOB'
              '                 ,CRCODORI'
              '                 ,CRCODUSR'
              '                 ,CRCODV02'
              '                 ,CRCODV03'
              '                 ,CRCODCV'
              '                 ,CRQTDPARC'
              '                 ,CRNUMPARC'
              '                 ,CRCODV04'
              '                 ,CRCUSBCO'
              '                 ,CRCODCC'
              '                 ,CRCODDEP'
              '                 ,CRDESCMV'
              '                 ,CRNOMCC'
              '                 ,CRNOMDEP'
              '                 ,CRCODCTA'
              '                 ,CRNOMCTA'
              '                 ,CRNATDC'
              '                 ,CRCOMIS_EXTRA'
              '                 ,CRCOMTEL'
              '                 ,CRPFPGTO'
              '                 ,CRTABPV'
              '                 ,CRCODPV'
              '                 ,CRVINC02'
              '                 ,CRCODFPGTO'
              '                 ,CRNOMFPGTO'
              '                 ,CRRECFRENTE'
              '                 ,CRDATPED'
              '                 ,CRNR'
              '                 ,CRUSRBX'
              '                 ,CRCODLDR'
              '                 ,CRLOTE'
              '                 ,CRDTPAG'
              '                 ,CRDTBX'
              '                 ,CRSTATUS'
              '                 ,CRVALPAG'
              ''
              '                 ) Values  ('
              '                  :NEW.P1CODEMP'
              '                 ,0'
              '                 ,:NEW.P1CODECF'
              '                 ,mNumeroDup'
              '                 ,CHR(64+v_Cadp01v.P1VSEQ)'
              '                 ,mdup'
              '                 ,:NEW.P1CODCLI'
              '                 ,:NEW.P1NUMCF'
              '                 ,TO_DATE(:NEW.P1DATACF)'
              '                 ,v_Cadp01v.P1VVALOR'
              '                 ,:NEW.P1TOTALL+:NEW.P1ICMSR'
              '                 ,TO_DATE(mDtemis)'
              '                 ,TO_DATE(v_Cadp01v.P1VDATAV)'
              '                 ,0  -- :CRLOTSEQ_FC'
              '                 ,:NEW.P1LOTSEQ'
              '                 ,:NEW.P1CHAVE'
              '                 ,:NEW.P1CHAVE_NIVEL'
              '                 ,:NEW.P1ORDEM'
              '                 ,:NEW.P1CODVEN'
              '                 ,:NEW.P1CODTLV'
              '                 ,:NEW.P1BANCO'
              '                 ,v_Cadp01v.P1VVDESCF'
              '                 ,v_Cadp01v.P1VDTDESCF'
              '                 ,round( ((v_Cadp01v.P1VVALOR*mPjurm/100)/30),2)'
              
                '                 ,round( ((v_Cadp01v.P1VVALOR*mPDescM/100)/30),2' +
                ')'
              '                 ,round( ((v_Cadp01v.P1VVALOR*mPMulta/100)),2)'
              '                 ,mQtdDM'
              '                 ,TO_CHAR(mNumeroDup)'
              '                 ,case when :NEW.P1BANCO > 0 THEN 1 ELSE 0 END'
              '                 ,:NEW.P1TIPO'
              '                 ,:NEW.P1CODUSR'
              '                 ,:NEW.P1CODV02'
              '                 ,:NEW.P1CODV03'
              '                 ,:NEW.P1CODCV'
              '                 ,mQtdDupGer'
              '                 ,v_Cadp01V.P1VSEQ'
              '                 ,:NEW.P1CODV04'
              '                 ,mCusBco'
              '                 ,pldr_codccu'
              '                 ,pldr_coddep'
              '                 ,pldr_descmov'
              '                 ,pldr_nomccu'
              '                 ,pldr_nomdep'
              '                 ,pldr_codcai'
              '                 ,pldr_nombco'
              '                 ,pldr_natdc'
              '                 ,0 -- CRCOMIS_EXTRA'
              
                '                 ,round( (:NEW.P1COMIST*v_Cadp01v.P1VPFPGTO/100)' +
                ' , 2)'
              '                 ,v_Cadp01v.P1VPFPGTO'
              '                 ,:NEW.P1TABPV'
              '                 ,:NEW.P1CODPV'
              '                 ,v_Cadp01v.P1VVINC02'
              '                 ,v_Cadp01v.P1VCODFP'
              '                 ,v_Cadp01v.P1VNOMFPGTO'
              '                 ,:NEW.P1CUPOM -- CRRECFRENTE'
              '                 ,TO_DATE(:NEW.P1DATAP)'
              '                 ,mNR'
              '                 ,mUsrBX'
              '                 ,mCodLDR'
              '                 ,mLoteBx'
              '                 ,TO_DATE(mDtPag)  -- data de pagamento'
              '                 ,TO_DATE(mDtPag) -- CRDTBX'
              
                '                 ,case when mlotebx>0 then 2 else 0 end -- CRSTA' +
                'TUS'
              '                 ,mValorPag'
              ''
              '                 );'
              '              else -- se existir fazer o update'
              '                 Update CADDAR set'
              '                 CRCODEMP=:NEW.P1CODEMP'
              '                 ,CRSEQ=0'
              '                 ,CRCODECF=:NEW.P1CODECF'
              '                 ,CRNUMERO=mNumeroDup'
              '                 ,CRDESD=CHR(64+v_Cadp01v.P1VSEQ)'
              '                 ,CRDUP=mdup'
              '                 ,CRCODCLI=:NEW.P1CODCLI'
              '                 ,CRNUMCUP=:NEW.P1NUMCF'
              '                 ,CRDATCUP=TO_DATE(:NEW.P1DATACF)'
              '                 ,CRVALOR=v_Cadp01v.P1VVALOR'
              '                 ,CRTOTNF=:NEW.P1TOTALL+:NEW.P1ICMSR'
              '                 ,CRDTEMIS=TO_DATE(mDtemis)'
              '                 ,CRDTVCTO=TO_DATE(v_Cadp01v.P1VDATAV)'
              '                 ,CRLOTSEQ_FC=0  -- :CRLOTSEQ_FC'
              '                 ,CRLOTSEQ_CP=:NEW.P1LOTSEQ'
              '                 ,CRNPED=:NEW.P1CHAVE'
              '                 ,CRNPED_NIVEL=:NEW.P1CHAVE_NIVEL'
              '                 ,CRORDEM=:NEW.P1ORDEM'
              '                 ,CRCODVEN=:NEW.P1CODVEN'
              '                 ,CRCODTLV=:NEW.P1CODTLV'
              '                 ,CRCODBCO=:NEW.P1BANCO'
              '                 ,CRDESCF=v_Cadp01v.P1VVDESCF'
              '                 ,CRDTDESCF=v_Cadp01v.P1VDTDESCF'
              
                '                 ,CRJURD=round( ((v_Cadp01v.P1VVALOR*mPjurm/100)' +
                '/30),2)'
              
                '                 ,CRDESCD=round( ((v_Cadp01v.P1VVALOR*mPDescM/10' +
                '0)/30),2)'
              
                '                 ,CRMULTA=round( ((v_Cadp01v.P1VVALOR*mPMulta/10' +
                '0)),2)'
              '                 ,CRQTDDM=mQtdDM'
              '                 ,CRNFACUM=TO_CHAR(mNumeroDup)'
              
                '                 ,CRTIPCOB=case when :NEW.P1BANCO > 0 THEN 1 ELS' +
                'E 0 END'
              '                 ,CRCODORI=:NEW.P1TIPO'
              '                 ,CRCODUSR=:NEW.P1CODUSR'
              '                 ,CRCODV02=:NEW.P1CODV02'
              '                 ,CRCODV03=:NEW.P1CODV03'
              '                 ,CRCODCV=:NEW.P1CODCV'
              '                 ,CRQTDPARC=mQtdDupGer'
              '                 ,CRNUMPARC=v_Cadp01V.P1VSEQ'
              '                 ,CRCODV04=:NEW.P1CODV04'
              '                 ,CRCUSBCO=mCusBco'
              '                 ,CRCODCC=pldr_codccu'
              '                 ,CRCODDEP=pldr_coddep'
              '                 ,CRDESCMV=pldr_descmov'
              '                 ,CRNOMCC=pldr_nomccu'
              '                 ,CRNOMDEP=pldr_nomdep'
              '                 ,CRCODCTA=pldr_codcai'
              '                 ,CRNOMCTA=pldr_nombco'
              '                 ,CRNATDC=pldr_natdc'
              '                 ,CRCOMIS_EXTRA=0 -- CRCOMIS_EXTRA'
              
                '                 ,CRCOMTEL=round( (:NEW.P1COMIST*v_Cadp01v.P1VPF' +
                'PGTO/100) , 2)'
              ''
              '                 ,CRPFPGTO=v_Cadp01v.P1VPFPGTO'
              '                 ,CRTABPV=:NEW.P1TABPV'
              '                 ,CRCODPV=:NEW.P1CODPV'
              '                 ,CRVINC02=v_Cadp01v.P1VVINC02'
              '                 ,CRCODFPGTO=v_Cadp01v.P1VCODFP'
              '                 ,CRNOMFPGTO=v_Cadp01v.P1VNOMFPGTO'
              '                 ,CRRECFRENTE=:NEW.P1CUPOM -- CRRECFRENTE'
              '                 ,CRDATPED=TO_DATE(:NEW.P1DATAP)'
              '                 ,CRNR=mNR'
              '                 ,CRUSRBX=mUsrBX'
              '                 ,CRCODLDR=mCodLDR'
              ''
              '                 ,CRLOTE = mLoteBx'
              '                 ,CRDTPAG = TO_DATE(mDtPag)'
              '                 ,CRDTBX = TO_DATE(mDtPag)'
              
                '                 ,CRSTATUS = case when mlotebx>0 then 2 else 0 e' +
                'nd -- CRSTATUS'
              '                 ,CRVALPAG = mValorPag'
              ''
              ''
              '                  where CRNUMPARC= v_Cadp01v.P1VSEQ'
              
                '                    and CRNPED=:NEW.P1CHAVE and CRORDEM=:NEW.P1O' +
                'RDEM and CRCODEMP=:NEW.P1CODEMP'
              '                    and CRLOTSEQ_CP=:NEW.P1LOTSEQ'
              '                    and CRCODECF=:NEW.P1CODECF;'
              ''
              '            end if;'
              '          EXCEPTION'
              '              WHEN OTHERS THEN'
              '              pldr_descmov:=pldr_descmov;'
              '              RAISE;'
              '              END;'
              ''
              '-- TERMINO TRY'
              ''
              ''
              '        mcodldr:=0;'
              '     end loop;'
              ''
              
                '  select count(*) into mExisteNSai from CADNS where (NSCODEMP=:N' +
                'EW.P1CODEMP'
              
                '         and NSCHAVEP=:NEW.P1CHAVE and NSORDEMP=:NEW.P1ORDEM and' +
                ' NSLOTSEQ_CP=:NEW.P1LOTSEQ)'
              
                '         or (NSNUMERO=:NEW.P1NUMNF and NSNUMCUP=:NEW.P1NUMCF and' +
                ' NSCODECF=:NEW.P1CODECF and'
              
                '            NSSERIE=mSerie and NSMODELO=mModelo and NSDTEMIS=:NE' +
                'W.P1DATANF and'
              
                '            NSTIPO=:NEW.P1TIPO_ENTSAI AND NSCODEMP=:NEW.P1CODEMP' +
                ');'
              ''
              ''
              '  if mExisteNSai=2 then'
              '    delete from CADNS where (NSCODEMP=:NEW.P1CODEMP'
              
                '         and NSCHAVEP=:NEW.P1CHAVE and NSORDEMP=:NEW.P1ORDEM and' +
                ' NSLOTSEQ_CP=:NEW.P1LOTSEQ)'
              
                '         or (NSNUMERO=:NEW.P1NUMNF and NSNUMCUP=:NEW.P1NUMCF and' +
                ' NSCODECF=:NEW.P1CODECF and'
              
                '            NSSERIE=mSerie and NSMODELO=mModelo and NSDTEMIS=:NE' +
                'W.P1DATANF and'
              
                '            NSTIPO=:NEW.P1TIPO_ENTSAI AND NSCODEMP=:NEW.P1CODEMP' +
                ');'
              '    mExisteNSai:=0;'
              '    end if;'
              ''
              ''
              '  if mExisteNSai=0 then'
              '     Insert into CADNS ('
              '     NSCODEMP'
              '     ,NSTIPO'
              '     ,NSNUMERO'
              '     ,NSSERIE'
              '     ,NSSUBSER'
              '     ,NSMODELO'
              '     ,NSCODCLI'
              '     ,NSDTEMIS'
              '     ,NSCFO1'
              '     ,NSCFO2'
              '     ,NSCFOSER'
              '     ,NSNUMCUP'
              '     ,NSCODECF'
              '     ,NSMODECF'
              '     ,NSSERIEECF'
              '     ,NSDATCUP'
              '     ,NSTOTNOTA'
              '     ,NSBASENI'
              '     ,NSICMSNI'
              '     ,NSBASENP'
              '     ,NSICMSNP'
              '     ,NSBASENN'
              '     ,NSICMSNN'
              '     ,NSBASERI'
              '     ,NSICMSRI'
              '     ,NSBASERP'
              '     ,NSICMSRP'
              '     ,NSBASERN'
              '     ,NSICMSRN'
              '     ,NSTOTPROI'
              '     ,NSTOTPROP'
              '     ,NSTOTPRON'
              '     ,NSBASENRI'
              '     ,NSICMSNRI'
              '     ,NSBASENRP'
              '     ,NSICMSNRP'
              '     ,NSBASENRN'
              '     ,NSICMSNRN'
              '     ,NSALIQ'
              '     ,NSALIQ2'
              '     ,NSIPII'
              '     ,NSIPIP'
              '     ,NSIPIN'
              '     ,NSFRETE'
              '     ,NSFRETEPC'
              '     ,NSTARBAN'
              '     ,NSBCISSQN'
              '     ,NSVISSQN'
              '     ,NSTOTISEN'
              '     ,NSTOTOUT'
              '     ,NSTOTNOR'
              '     ,NSTOTRET'
              '     ,NSCHAVEP'
              '     ,NSCHAVEP_NIVEL'
              '     ,NSORDEMP'
              '     ,NSSTATUS'
              '     ,NSSITCUP'
              '     ,NSBASEN'
              '     ,NSICMSN'
              '     ,NSCODUSR'
              '     ,NSLOTSEQ_CP'
              '     ,NSCUPACRE'
              '     ,NSCUPDES'
              '     ,NSLEMAT'
              '     ,NSICMS_BCFRE'
              '     ,NSICMS_ALFRE'
              '     ,NSICMS_VLFRE'
              '     ,NSICMS_BCSEG'
              '     ,NSICMS_ALSEG'
              '     ,NSICMS_VLSEG'
              '     ,NSICMS_BCOUTD'
              '     ,NSICMS_ALOUTD'
              '     ,NSICMS_VLOUTD'
              '     ,NSICMS_BCIPI'
              '     ,NSICMS_ALIPI'
              '     ,NSICMS_VLIPI'
              '     ,NSNFCF'
              '     ,NSAVAP'
              '     ,NSEMITENTE'
              '     ,NSRED_BCISSQN'
              '     ,NSBCINSS'
              '     ,NSRED_BCINSS'
              '     ,NSVINSS'
              '     ,NSBCIRRF'
              '     ,NSRED_BCIRRF'
              '     ,NSVIRRF'
              '     ) Values  ('
              '      :NEW.P1CODEMP'
              '      ,:NEW.P1TIPO_ENTSAI  -- TIPO'
              '     ,:NEW.P1NUMNF'
              '     ,mSerie'
              '     ,'#39' '#39'  -- :NSSUBSER'
              '     ,mModelo'
              '     ,:NEW.P1CODCLI'
              '     ,:NEW.P1DATANF'
              '     ,:NEW.P1CFO1'
              '     ,:NEW.P1CFO2'
              '     ,:NEW.P1CFOSER'
              '     ,:NEW.P1NUMCF'
              '     ,:NEW.P1CODECF'
              '     ,'#39'2D'#39' -- :NEW.P1MODECF'
              '     ,:NEW.P1ECF_SERIE  -- :NSSERIEECF'
              '     ,:NEW.P1DATACF'
              '     ,:NEW.P1TOTALL+:NEW.P1ICMSR'
              '     ,:NEW.P1BASENI'
              '     ,:NEW.P1ICMSNI'
              '     ,:NEW.P1BASENP'
              '     ,:NEW.P1ICMSNP'
              '     ,:NEW.P1BASENN'
              '     ,:NEW.P1ICMSNN'
              '     ,:NEW.P1BASERI'
              '     ,:NEW.P1ICMSRI'
              '     ,:NEW.P1BASERP'
              '     ,:NEW.P1ICMSRP'
              '     ,:NEW.P1BASERN'
              '     ,:NEW.P1ICMSRN'
              '     ,:NEW.P1TOTINA'
              '     ,:NEW.P1TOTPOS'
              '     ,:NEW.P1TOTNEG'
              '     ,:NEW.P1BASENRI'
              '     ,:NEW.P1ICMSNRI'
              '     ,:NEW.P1BASENRP'
              '     ,:NEW.P1ICMSNRP'
              '     ,:NEW.P1BASENRN'
              '     ,:NEW.P1ICMSNRN'
              '     ,0 -- :NSALIQ'
              '     ,0 --:NSALIQ2'
              '     ,:NEW.P1IPIINA'
              '     ,:NEW.P1IPIPOS'
              '     ,:NEW.P1IPINEG'
              '     ,:NEW.P1VALFRE'
              '     ,:NEW.P1FRETEPC'
              '     ,:NEW.P1TARBAN'
              '     ,:NEW.P1BCISSQN'
              '     ,:NEW.P1VISSQN'
              '     ,:NEW.P1TOTISE'
              '     ,:NEW.P1TOTOUT'
              '     ,:NEW.P1TOTTRI'
              '     ,:NEW.P1TOTRET'
              '     ,:NEW.P1CHAVE'
              '     ,:NEW.P1CHAVE_NIVEL'
              '     ,:NEW.P1ORDEM'
              '     ,0   -- NSSTATUS'
              '     ,0 -- NSSITCUP'
              '     ,:NEW.P1BASEN'
              '     ,:NEW.P1ICMSN'
              '     ,:NEW.P1CODUSR'
              '     ,:NEW.P1LOTSEQ'
              '     ,:NEW.P1CUPACRE'
              '     ,:NEW.P1CUPDES'
              '     ,0 -- NSLEMAT'
              '     ,:NEW.P1ICMS_BCFRE'
              '     ,:NEW.P1ICMS_ALFRE'
              '     ,:NEW.P1ICMS_VLFRE'
              '     ,:NEW.P1ICMS_BCSEG'
              '     ,:NEW.P1ICMS_ALSEG'
              '     ,:NEW.P1ICMS_VLSEG'
              '     ,:NEW.P1ICMS_BCOUTD'
              '     ,:NEW.P1ICMS_ALOUTD'
              '     ,:NEW.P1ICMS_VLOUTD'
              '     ,:NEW.P1ICMS_BCIPI'
              '     ,:NEW.P1ICMS_ALIPI'
              '     ,:NEW.P1ICMS_VLIPI'
              '     ,CASE WHEN :NEW.P1NUMNF>0 THEN 0 ELSE 1 END'
              '     ,CASE WHEN :NEW.P1TABPV='#39'AV'#39' THEN 0 ELSE 1 END'
              '     ,:NEW.P1EMITENTE'
              '     ,:NEW.P1RED_BCISSQN'
              '     ,:NEW.P1BCISSQN'
              '     ,:NEW.P1RED_BCINSS'
              '     ,:NEW.P1VINSS'
              '     ,:NEW.P1BCIRRF'
              '     ,:NEW.P1RED_BCIRRF'
              '     ,:NEW.P1VIRRF'
              '     );'
              '  else'
              '     Update CADNS set'
              '     NSTIPO=:NEW.P1TIPO_ENTSAI'
              '     ,NSNUMERO=:NEW.P1NUMNF'
              '     ,NSSERIE=mSerie'
              '     ,NSMODELO=mModelo'
              '     ,NSCODCLI=:NEW.P1CODCLI'
              '     ,NSDTEMIS=:NEW.P1DATANF'
              '     ,NSCFO1=:NEW.P1CFO1'
              '     ,NSCFO2=:NEW.P1CFO2'
              '     ,NSCFOSER=:NEW.P1CFOSER'
              '     ,NSNUMCUP=:NEW.P1NUMCF'
              '     ,NSCODECF=:NEW.P1CODECF'
              '     ,NSDATCUP=:NEW.P1DATACF'
              '     ,NSTOTNOTA=:NEW.P1TOTALL+:NEW.P1ICMSR'
              '     ,NSBASENI=:NEW.P1BASENI'
              '     ,NSICMSNI=:NEW.P1ICMSNI'
              '     ,NSBASENP=:NEW.P1BASENP'
              '     ,NSICMSNP=:NEW.P1ICMSNP'
              '     ,NSBASENN=:NEW.P1BASENN'
              '     ,NSICMSNN=:NEW.P1ICMSNN'
              '     ,NSBASERI=:NEW.P1BASERI'
              '     ,NSICMSRI=:NEW.P1ICMSRI'
              '     ,NSBASERP=:NEW.P1BASERP'
              '     ,NSICMSRP=:NEW.P1ICMSRP'
              '     ,NSBASERN=:NEW.P1BASERN'
              '     ,NSICMSRN=:NEW.P1ICMSRN'
              '     ,NSTOTPROI=:NEW.P1TOTINA'
              '     ,NSTOTPROP=:NEW.P1TOTPOS'
              '     ,NSTOTPRON=:NEW.P1TOTNEG'
              '     ,NSBASENRI=:NEW.P1BASENRI'
              '     ,NSICMSNRI=:NEW.P1ICMSNRI'
              '     ,NSBASENRP=:NEW.P1BASENRP'
              '     ,NSICMSNRP=:NEW.P1ICMSNRP'
              '     ,NSBASENRN=:NEW.P1BASENRN'
              '     ,NSICMSNRN=:NEW.P1ICMSNRN'
              '     ,NSIPII=:NEW.P1IPIINA'
              '     ,NSIPIP=:NEW.P1IPIPOS'
              '     ,NSIPIN=:NEW.P1IPINEG'
              '     ,NSFRETE=:NEW.P1VALFRE'
              '     ,NSFRETEPC=:NEW.P1FRETEPC'
              '     ,NSTARBAN=:NEW.P1TARBAN'
              '     ,NSBCISSQN=:NEW.P1BCISSQN'
              '     ,NSVISSQN=:NEW.P1VISSQN'
              '     ,NSTOTISEN=:NEW.P1TOTISE'
              '     ,NSTOTOUT=:NEW.P1TOTOUT'
              '     ,NSTOTNOR=:NEW.P1TOTTRI'
              '     ,NSTOTRET=:NEW.P1TOTRET'
              '     ,NSBASEN=:NEW.P1BASEN'
              '     ,NSICMSN=:NEW.P1ICMSN'
              '     ,NSCUPACRE=:NEW.P1CUPACRE'
              '     ,NSCUPDES=:NEW.P1CUPDES'
              '     ,NSICMS_BCFRE=:NEW.P1ICMS_BCFRE'
              '     ,NSICMS_ALFRE=:NEW.P1ICMS_ALFRE'
              '     ,NSICMS_VLFRE=:NEW.P1ICMS_VLFRE'
              '     ,NSICMS_BCSEG=:NEW.P1ICMS_BCSEG'
              '     ,NSICMS_ALSEG=:NEW.P1ICMS_ALSEG'
              '     ,NSICMS_VLSEG=:NEW.P1ICMS_VLSEG'
              '     ,NSICMS_BCOUTD=:NEW.P1ICMS_BCOUTD'
              '     ,NSICMS_ALOUTD=:NEW.P1ICMS_ALOUTD'
              '     ,NSICMS_VLOUTD=:NEW.P1ICMS_VLOUTD'
              '     ,NSICMS_BCIPI=:NEW.P1ICMS_BCIPI'
              '     ,NSICMS_ALIPI=:NEW.P1ICMS_ALIPI'
              '     ,NSICMS_VLIPI=:NEW.P1ICMS_VLIPI'
              '     ,NSAVAP=CASE WHEN :NEW.P1TABPV='#39'AV'#39' THEN 0 ELSE 1 END'
              '     ,NSRED_BCISSQN=:NEW.P1RED_BCISSQN'
              '     ,NSBCINSS=:NEW.P1BCISSQN'
              '     ,NSRED_BCINSS=:NEW.P1RED_BCINSS'
              '     ,NSVINSS=:NEW.P1VINSS'
              '     ,NSBCIRRF=:NEW.P1BCIRRF'
              '     ,NSRED_BCIRRF=:NEW.P1RED_BCIRRF'
              '     ,NSVIRRF=:NEW.P1VIRRF'
              '     where NSCODEMP=:NEW.P1CODEMP and'
              '           NSCHAVEP=:NEW.P1CHAVE and'
              '           NSORDEMP=:NEW.P1ORDEM and'
              '           NSLOTSEQ_CP=:NEW.P1LOTSEQ;'
              '  end IF;'
              '  end IF;'
              
                '  Update CADCLI set CDTPCPR=CASE WHEN CDTPCPR is null or CDTPCPR' +
                '<'#39'01/01/1901'#39' then :NEW.P1DATDOC else CDTPCPR end'
              
                '                  , CDTUCPR=CASE WHEN CDTUCPR is null or CDTUCPR' +
                '<:NEW.P1DATDOC then :NEW.P1DATDOC else CDTUCPR end'
              '                  where CCODCLI=:NEW.P1CODCLI;'
              ''
              'end IF;'
              ''
              ''
              ''
              'end;')
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
            Width = 874
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
            Width = 874
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
            Width = 874
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'create or replace trigger cadmov_prod_t001 before insert on cadm' +
                'ov_prod for each row'
              ''
              'begin'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'declare mEst_Nor_filial NUMBER; mEst_Reservado_Filial NUMBER;'
              ''
              
                '        mEst_Nor_Filial_grupo NUMBER; mEst_Reservado_Filial_Grup' +
                'o NUMBER;'
              ''
              '        mEst_Nor_Geral NUMBER; mEst_Reservado_Geral NUMBER;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              '      mQtdView Integer;'
              ''
              '      mComando varchar2(200);'
              ''
              '      mChave_Id Integer;'
              ''
              ''
              ''
              ''
              'mCodEmp Integer;'
              ''
              'mQtdReg integer;'
              ''
              'msg varchar2(255);'
              ''
              'mGrupo String(100);'
              ''
              'begin'
              ''
              'if :NEW.CMP_QTDDEC_QTD is null then'
              ''
              '   :NEW.CMP_QTDDEC_QTD:=3;'
              ''
              ' end if;'
              ''
              ''
              ''
              'if :NEW.CMP_CODEMP>100 then'
              ''
              '   mCodEmp:=:NEW.CMP_CODEMP-100;'
              ''
              'else'
              ''
              '   mCodEmp:=:NEW.CMP_CODEMP;'
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
              'if :NEW.CMP_TIPOPROD=3 then'
              ''
              '   if  (:NEW.CMP_LOTE is null) then'
              ''
              '      mGrupo:='#39' '#39';'
              ''
              '   else'
              ''
              '      mGrupo:=:NEW.CMP_LOTE;'
              ''
              '   end if;'
              ''
              ''
              ''
              '   Select'
              ''
              
                '    sum(case when CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,'#39' '#39')' +
                '=mGrupo then 1 else 0 end)'
              ''
              
                '   ,sum(case when  CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,'#39' '#39 +
                ')=mGrupo then CLQTD else 0 end)'
              ''
              
                '   ,SUM(case when  CLFILIAL=:NEW.CMP_FILIAL and NVL(CLNUMERO,'#39' '#39 +
                ')=mGrupo then CLQTD_RESERVADO else 0 end)'
              ''
              
                '   ,sum(case when  CLFILIAL=:NEW.CMP_FILIAL then CLQTD else 0 en' +
                'd)'
              ''
              
                '   ,SUM(case when  CLFILIAL=:NEW.CMP_FILIAL then CLQTD_RESERVADO' +
                ' else 0 end)'
              ''
              '   ,sum(CLQTD)'
              ''
              '   ,SUM(CLQTD_RESERVADO)'
              ''
              '    into'
              ''
              '    mQtdReg'
              ''
              '    ,mEst_Nor_filial_Grupo'
              ''
              '    ,mEst_Reservado_Filial_Grupo'
              ''
              '    ,mEst_Nor_filial'
              ''
              '    ,mEst_Reservado_Filial'
              ''
              '    ,mEst_Nor_Geral'
              ''
              '    ,mEst_Reservado_Geral'
              ''
              '    from CADLGC where CLCODEMP=mCodEmp'
              ''
              '                     and CLCODPRO=:NEW.CMP_CODPRO;'
              ''
              '   IF(mQtdReg IS NULL) THEN'
              ''
              '      mQtdReg:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Nor_Filial_Grupo IS NULL) THEN'
              ''
              '      mEst_Nor_Filial_Grupo:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Reservado_Filial_Grupo IS NULL) THEN'
              ''
              '      mEst_Reservado_Filial_Grupo:=0;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              '   IF(mEst_Nor_Filial IS NULL) THEN'
              ''
              '      mEst_Nor_Filial:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Reservado_Filial IS NULL) THEN'
              ''
              '      mEst_Reservado_Filial:=0;'
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
              '   IF(mEst_Reservado_Geral IS NULL) THEN'
              ''
              '      mEst_Reservado_Geral:=0;'
              ''
              '   end if;'
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
              ''
              ''
              '   if mQtdReg=0 then'
              ''
              '      insert into CADLGC'
              ''
              '      ('
              ''
              '      CLCODEMP'
              ''
              '     ,CLFILIAL'
              ''
              '     ,CLCODPRO'
              ''
              '     ,CLDTVCTO'
              ''
              '     ,CLNUMERO'
              ''
              '     ,CLQTD'
              ''
              '     ,CLQTD_RESERVADO'
              ''
              '     ,CLQTD_ANALISE'
              ''
              '      ) values ('
              ''
              '     mCodEmp'
              ''
              '     ,:NEW.CMP_FILIAL'
              ''
              '     ,:NEW.CMP_CODPRO'
              ''
              '     ,:NEW.CMP_DTVCTO'
              ''
              '     ,mGrupo'
              ''
              
                '     ,mEst_Nor_Filial_Grupo+(Case when :NEW.CMP_ESTNOR='#39'E'#39' then ' +
                ':NEW.CMP_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '     :NEW.CMP_QTD*-1'
              ''
              '      else 0 end)'
              ''
              
                '     ,mEst_Reservado_Filial_Grupo+(Case when :NEW.CMP_ESTRESERVA' +
                'DO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '     :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '     :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '     ,0'
              ''
              '     );'
              ''
              '  else'
              ''
              
                '     Update CADLGC set CLQTD=mEst_Nor_filial_Grupo+(Case when :N' +
                'EW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD'
              ''
              '       when :NEW.CMP_ESTNOR='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '     , CLQTD_RESERVADO=mEst_Reservado_Filial_Grupo+(Case when'
              ''
              '     :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '     :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '     where CLCODEMP=mCodEmp'
              ''
              '     and CLCODPRO=:NEW.CMP_CODPRO'
              ''
              '     and NVL(CLNUMERO,'#39' '#39')=mGrupo'
              ''
              '     and CLFILIAL=:NEW.CMP_FILIAL;'
              ''
              '  end if;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'if :NEW.CMP_TIPOPROD=4 then'
              ''
              '   if trim(:NEW.CMP_SERIE)='#39#39' then'
              ''
              '      mGrupo:='#39' '#39';'
              ''
              '   else'
              ''
              '      mGrupo:=trim(:NEW.CMP_SERIE);'
              ''
              '   end if;'
              ''
              ''
              ''
              '   select'
              ''
              
                '    sum(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,'#39' '#39 +
                ')=mGrupo then 1 else 0 end)'
              ''
              
                '   ,sum(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,'#39' '#39 +
                ')=mGrupo then SP_QTD else 0 end)'
              ''
              
                '   ,SUM(case when SP_FILIAL=:NEW.CMP_FILIAL and NVL(SP_SERIE,'#39' '#39 +
                ')=mGrupo then SP_QTD_RESERVADO else 0 end)'
              ''
              
                '   ,sum(case when SP_FILIAL=:NEW.CMP_FILIAL then SP_QTD else 0 e' +
                'nd)'
              ''
              
                '   ,SUM(case when SP_FILIAL=:NEW.CMP_FILIAL then SP_QTD_RESERVAD' +
                'O else 0 end)'
              ''
              '   ,sum(SP_QTD)'
              ''
              '   ,SUM(SP_QTD_RESERVADO)'
              ''
              '    into'
              ''
              '    mQtdReg'
              ''
              '   , mEst_Nor_filial_Grupo'
              ''
              '    ,mEst_Reservado_Filial_Grupo'
              ''
              '    ,mEst_Nor_filial'
              ''
              '    ,mEst_Reservado_Filial'
              ''
              '    ,mEst_Nor_Geral'
              ''
              '    ,mEst_Reservado_Geral'
              ''
              '    from CADPRO_SERIE'
              ''
              '                              where SP_CODEMP=mCodEmp'
              ''
              '                              and SP_CODPRO=:NEW.CMP_CODPRO;'
              ''
              ''
              ''
              '   IF(mQtdReg IS NULL) THEN'
              ''
              '      mQtdReg:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Nor_Filial_Grupo IS NULL) THEN'
              ''
              '      mEst_Nor_Filial_Grupo:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Reservado_Filial_Grupo IS NULL) THEN'
              ''
              '      mEst_Reservado_Filial_Grupo:=0;'
              ''
              '   end if;'
              ''
              ''
              ''
              ''
              ''
              '   IF(mEst_Nor_Filial IS NULL) THEN'
              ''
              '      mEst_Nor_Filial:=0;'
              ''
              '   end if;'
              ''
              '   IF(mEst_Reservado_Filial IS NULL) THEN'
              ''
              '      mEst_Reservado_Filial:=0;'
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
              '   IF(mEst_Reservado_Geral IS NULL) THEN'
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
              ''
              ''
              '   if mQtdReg=0 then'
              ''
              '      insert into CADPRO_SERIE'
              ''
              '      ('
              ''
              '      SP_CODEMP'
              ''
              '      ,SP_CODPRO'
              ''
              '      ,SP_FILIAL'
              ''
              '      ,SP_SERIE'
              ''
              '      ,SP_QTD'
              ''
              '      ,SP_QTD_RESERVADO'
              ''
              '      ) values ('
              ''
              '      mCodEmp'
              ''
              '      ,:NEW.CMP_CODPRO'
              ''
              '      ,:NEW.CMP_FILIAL'
              ''
              '      ,mGrupo'
              ''
              
                '      ,mEst_Nor_Filial_Grupo+(Case when :NEW.CMP_ESTNOR='#39'E'#39' then' +
                ' :NEW.CMP_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '      :NEW.CMP_QTD*-1'
              ''
              '      else 0 end)'
              ''
              
                '      ,mEst_Reservado_Filial_Grupo+(Case when :NEW.CMP_ESTRESERV' +
                'ADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '      :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '      :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '      );'
              ''
              '   else'
              ''
              
                '      Update CADPRO_SERIE set SP_QTD=mEst_Nor_Filial_Grupo+(Case' +
                ' when :NEW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD'
              ''
              '      when'
              ''
              
                '                                        :NEW.CMP_ESTNOR='#39'S'#39' then' +
                ' :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '      , SP_QTD_RESERVADO=mEst_Reservado_Filial_Grupo+(Case when'
              ''
              '      :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '      :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '      where SP_CODEMP=mCodEmp'
              ''
              '      and SP_CODPRO=:NEW.CMP_CODPRO'
              ''
              '      and NVL(SP_SERIE,'#39' '#39')=mGrupo;'
              ''
              '   end if;'
              ''
              'end if;'
              ''
              ''
              ''
              'if (:NEW.CMP_TIPOPROD=4) or (:NEW.CMP_TIPOPROD=3) then'
              ''
              
                '   Select sum(case when CEFILIAL=:NEW.CMP_FILIAL then 1 else 0 e' +
                'nd)'
              ''
              '   into mQtdReg'
              ''
              '   from CADEST'
              ''
              '   where CECODEMP=mCodEmp'
              ''
              '   and CECODPRO=:NEW.CMP_CODPRO;'
              ''
              'else'
              ''
              
                '   Select sum(case when CEFILIAL=:NEW.CMP_FILIAL then 1 else 0 e' +
                'nd)'
              ''
              
                '         ,sum(case when CEFILIAL=:NEW.CMP_FILIAL then cesaldo el' +
                'se 0 end)'
              ''
              
                '         ,SUM(case when CEFILIAL=:NEW.CMP_FILIAL then CESALDO_RE' +
                'SERVADO else 0 end)'
              ''
              '         ,sum(NVL(cesaldo,0)),SUM(NVL(CESALDO_RESERVADO,0))'
              ''
              '         into mQtdReg'
              ''
              '         ,mEst_Nor_Filial, mEst_Reservado_Filial'
              ''
              '         ,mEst_Nor_Geral, mEst_Reservado_Geral'
              ''
              '         from CADEST'
              ''
              '          where CECODEMP=mCodEmp'
              ''
              '          and CECODPRO=:NEW.CMP_CODPRO;'
              ''
              'end if;'
              ''
              ''
              ''
              'IF(mQtdReg IS NULL) THEN'
              ''
              '   mQtdReg:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              'IF(mEst_Nor_Geral IS NULL) THEN'
              ''
              '   mEst_Nor_Geral:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              'IF(mEst_Reservado_Geral is null) THEN'
              ''
              '   mEst_Reservado_Geral:=0;'
              ''
              'end if;'
              ''
              ''
              ''
              ''
              ''
              
                'mEst_Nor_filial_Grupo      :=ROUND(mEst_Nor_filial_Grupo,:NEW.CM' +
                'P_QTDDEC_QTD);'
              ''
              
                'mEst_Reservado_Filial_Grupo:=ROUND(mEst_Reservado_Filial_Grupo,:' +
                'NEW.CMP_QTDDEC_QTD);'
              ''
              
                'mEst_Nor_filial            :=ROUND(mEst_Nor_filial,:NEW.CMP_QTDD' +
                'EC_QTD);'
              ''
              
                'mEst_Reservado_Filial      :=ROUND(mEst_Reservado_Filial,:NEW.CM' +
                'P_QTDDEC_QTD);'
              ''
              
                'mEst_Nor_Geral             :=ROUND(mEst_Nor_Geral,:NEW.CMP_QTDDE' +
                'C_QTD);'
              ''
              
                'mEst_Reservado_Geral       :=ROUND(mEst_Reservado_Geral,:NEW.CMP' +
                '_QTDDEC_QTD);'
              ''
              ''
              ''
              'if mQtdReg=0 then'
              ''
              '   insert into CADEST'
              ''
              '   ('
              ''
              '   CECODEMP'
              ''
              '   ,CEFILIAL'
              ''
              '   ,CECODPRO'
              ''
              '   ,CESALDO'
              ''
              '   ,CESALDO_RESERVADO'
              ''
              '   ) values ('
              ''
              '    mCodEmp'
              ''
              '   ,:NEW.CMP_FILIAL'
              ''
              '   ,:NEW.CMP_CODPRO'
              ''
              
                '   ,mEst_Nor_Filial+(Case when :NEW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP' +
                '_QTD when :NEW.CMP_ESTNOR='#39'S'#39' then'
              ''
              '   :NEW.CMP_QTD*-1'
              ''
              '   else 0 end)'
              ''
              
                '   ,mEst_Reservado_Filial+(Case when :NEW.CMP_ESTRESERVADO='#39'E'#39' t' +
                'hen :NEW.CMP_QTD when'
              ''
              '   :NEW.CMP_ESTRESERVADO='#39'S'#39' then'
              ''
              '   :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '   );'
              ''
              'else'
              ''
              
                '  Update CADEST set CESALDO=NVL(mEst_Nor_Filial,0)+(Case when :N' +
                'EW.CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '                                           :NEW.CMP_ESTNOR='#39'S'#39' t' +
                'hen :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '   , CESALDO_RESERVADO=NVL(mEst_Reservado_Filial,0)+(Case when'
              ''
              '   :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              '    :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '      where CECODEMP=mCodEmp'
              ''
              '        and CEFILIAL=:NEW.CMP_FILIAL'
              ''
              '        and CECODPRO=:NEW.CMP_CODPRO;'
              ''
              ''
              ''
              'end if;'
              ''
              ''
              ''
              
                'Update CADPRO set PDSALDO=NVL(mEst_Nor_Geral,0)+(Case when :NEW.' +
                'CMP_ESTNOR='#39'E'#39' then :NEW.CMP_QTD'
              ''
              'when'
              ''
              
                '                                            :NEW.CMP_ESTNOR='#39'S'#39' ' +
                'then :NEW.CMP_QTD*-1 else 0 end)'
              ''
              '       ,PDVENDA_PEND= mEst_Reservado_Geral+(Case when'
              ''
              '           :NEW.CMP_ESTRESERVADO='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              
                '           :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1 else 0' +
                ' end)'
              ''
              '                                 where PDCODEMP=mCodEmp'
              ''
              '                                 and PDCODPRO=:NEW.CMP_CODPRO;'
              ''
              ''
              ''
              ''
              ''
              ':NEW.CMP_SALDO_ANT:=NVL(mEst_Nor_Geral,0);'
              ''
              
                ':NEW.CMP_SALDO_ATU:=NVL(mEst_Nor_Geral,0)+(Case when :NEW.CMP_ES' +
                'TNOR='#39'E'#39' then :NEW.CMP_QTD when'
              ''
              ':NEW.CMP_ESTNOR='#39'S'#39' then :NEW.CMP_QTD*-1 else 0 end);'
              ''
              ':NEW.CMP_RESERVADO_ANT:=NVL(mEst_Reservado_Geral,0);'
              ''
              
                ':NEW.CMP_RESERVADO_ATU:=NVL(mEst_Reservado_Geral,0)+(Case when :' +
                'NEW.CMP_ESTRESERVADO='#39'E'#39' then'
              ''
              
                ':NEW.CMP_QTD when :NEW.CMP_ESTRESERVADO='#39'S'#39' then :NEW.CMP_QTD*-1' +
                ' else 0 end);'
              ''
              ''
              ''
              ''
              ''
              ''
              'mComando:='#39'SELECT CADMOV_PROD_SEQ.NEXTVAL FROM DUAL'#39';'
              ''
              'execute immediate mComando into mChave_id;'
              ''
              ':NEW.CMP_ID:=mchave_id;'
              ''
              ':NEW.cmp_id_ano:=TO_NUMBER( TO_CHAR(SYSDATE,'#39'yyyy'#39'));'
              ''
              ''
              ''
              'end;'
              ''
              ''
              ''
              
                'delete from CADLGC where nvl(CLQTD,0)=0 and nvl(CLQTD_ANALISE,0)' +
                '=0 and nvl(CLQTD_RESERVADO,0)=0;'
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
            Width = 874
            Height = 165
            Align = alClient
            Lines.Strings = (
              
                'CREATE OR REPLACE TRIGGER CADP02_PRE_TEMP_TRIG01 AFTER INSERT ON' +
                ' CADP02_PRE_TEMP'
              'FOR EACH ROW'
              ''
              'declare mDiferSaldo NUMBER;'
              ''
              ' mimp_VII NUMBER;'
              ' mimp_VPIS NUMBER;'
              ' mimp_VCOFINS NUMBER;'
              ' mimp_VIPI NUMBER;'
              ' mimp_VICMS NUMBER;'
              ''
              ''
              ' mTotalPed NUMBER;'
              ' mTotalout NUMBER;'
              ' mIcmsRetido NUMBER;'
              ' mTotIPI NUMBER;'
              ' mTotalDesc_Prod NUMBER;'
              ' mTotalDesc_Serv NUMBER;'
              ' mTotalDescRat_Prod NUMBER;'
              ' mTotalDescRat_Serv  NUMBER;'
              ' mValorTemp NUMBER;'
              ' mDifTemp NUMBER;'
              ' mQtdProc NUMBER;'
              ''
              'mTot_pItem_DescCab NUMBER;'
              'mTot_pItem_TotDescRat NUMBER;'
              'mTot_pItem_DespAces NUMBER;'
              'mTot_pItem_ValSeg NUMBER;'
              'mTot_pItem_TotDes NUMBER;'
              'mTot_pItem_ValRepas NUMBER;'
              'mTot_pItem_Basen NUMBER;'
              'mTot_PItem_Icmsn NUMBER;'
              'mTot_PItem_Icmsr NUMBER;'
              'mTot_pItem_Baser NUMBER;'
              'mTot_PItem_ValIPI NUMBER;'
              'mTot_PItem_ICMS_SN NUMBER;'
              'mTot_pItem_TotAcrecRat NUMBER;'
              ''
              'mTot_Ped02_DescCab  NUMBER;'
              'mTot_ped02_TotDescRat NUMBER;'
              'mTot_ped02_TotAcrecRat NUMBER;'
              'mTot_ped02_DespAces NUMBER;'
              'mTot_ped02_ValSeg NUMBER;'
              'mTot_ped02_TotDes NUMBER;'
              'mTot_ped02_ValRepas NUMBER;'
              'mTot_ped02_Basen NUMBER;'
              'mTot_ped02_Icmsn NUMBER;'
              'mTot_ped02_Icmsr NUMBER;'
              'mTot_ped02_Baser NUMBER;'
              'mTot_ped02_ValIPI NUMBER;'
              'mTot_ped02_ICMS_SN NUMBER;'
              ''
              'mTot_Dif_DescCab  NUMBER;'
              'mTot_Dif_TotDescRat NUMBER;'
              'mTot_Dif_TotAcrecRat NUMBER;'
              'mTot_Dif_DespAces NUMBER;'
              'mTot_Dif_ValSeg NUMBER;'
              'mTot_Dif_TotDes NUMBER;'
              'mTot_Dif_ValRepas NUMBER;'
              'mTot_Dif_Basen NUMBER;'
              'mTot_Dif_Icmsn NUMBER;'
              'mTot_Dif_Icmsr NUMBER;'
              'mTot_Dif_Baser NUMBER;'
              'mTot_Dif_ValIPI NUMBER;'
              'mTot_Dif_ICMS_SN NUMBER;'
              ''
              ''
              ' mTotalBCIcms NUMBER;'
              ' mTotalBCST NUMBER;'
              ' mTotalICMSR NUMBER;'
              ' mTotalCOMIS NUMBER;'
              ' mTotalIcms NUMBER;'
              ' mTotalIcmsDes NUMBER;'
              ' mTotalValAproxTrib NUMBER;'
              ' mTotalPIS NUMBER;'
              ' mTotalCOFINS NUMBER;'
              ' mTotMer NUMBER;'
              ' mTotSer NUMBER;'
              ' mQtdxPreco NUMBER;'
              ' mPercRat NUMBER;'
              ' mValorDup NUMBER;'
              ' mDifDup NUMBER;'
              ' mItemPed NUMBER;'
              ' pos_ini NUMBER;'
              ' namelength NUMBER;'
              ' l_loop INTEGER;'
              ' mOper_estnor VARCHAR2(01);'
              ' mOper_estreservado VARCHAR2(01);'
              ' mQtdProdEst NUMBER;'
              ' mCodEmpPad NUMBER;'
              ''
              ' mnv_tamprz INTEGER;'
              ' mnv_vAcum VARCHAR2(100);'
              ' mnv_Prazo INTEGER;'
              ' mNv_Tipo VARCHAR2(1);'
              ' mNv_valor NUMBER;'
              ''
              ' mTotDescFin_prod NUMBER;'
              ' mTotDescFin_serv NUMBER;'
              ''
              ' mNv_CodFP Integer;'
              ' mNv_NomFP VARCHAR2(30);'
              ' mNv_Baixa VARCHAR2(1);'
              
                ' mNv_ParcDif Integer; -- parcela onde pode aplicar a diferenca d' +
                'e arredondamentos'
              ' mNv_Campo Integer;'
              ' mNv_ValFixo Number;'
              ' mNv_QtdDupRat Integer;'
              ' mNv_Parcela Integer;'
              ' mNv_QtdParc Integer;'
              ''
              ' mNv_QtdParcDiv Integer;'
              ''
              ' mtamprz Integer;'
              ''
              'begin'
              ''
              ''
              ' mimp_VII:=0;'
              ' mimp_VPIS:=0;'
              ' mimp_VCOFINS:=0;'
              ' mimp_VIPI:=0;'
              ' mimp_VICMS:=0;'
              ''
              'mDiferSaldo:=0;'
              'mTotalPed:=0;'
              'mIcmsRetido:=0;'
              ''
              'mTotalBCIcms:=0;'
              'mTotalBCST:=0;'
              'mTotalICMSR:=0;'
              'mTotalCOMIS:=0;'
              'mTotalPIS:=0;'
              'mTotalCOFINS:=0;'
              'mTotalIcms:=0;'
              'mTotalIcmsDes:=0;'
              'mTotalValAproxTrib:=0;'
              'mTotMer:=0;'
              'mTotSer:=0;'
              'mQtdxPreco:=0;'
              'mPercRat:=0;'
              'mValorDup:=0;'
              'mDifDup:=0;'
              'mItemPed:=0;'
              'pos_ini:=1;'
              'namelength:=0;'
              'l_loop:=0;'
              'if :NEW.P2T_CODEMP>100 then'
              '   mCodEmpPad:=:NEW.P2T_CODEMP-100;'
              'else'
              '   mCodEmpPad:=:NEW.P2T_CODEMP;'
              'end if;'
              ''
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO=0 then'
              '    if :NEW.P2T_PROD_SERV=0 then'
              '       Insert into CADP02'
              '                          ('
              '                          P2CODEMP'
              '                          ,P2CHAVE'
              '                          ,P2ORDEM'
              '                          ,P2LOTSEQ'
              '                          ,P2ITEM'
              '                          ,P2CODPRO'
              '                          ,P2NOMPRO_ORI'
              '                          ,P2UND'
              '                          ,P2QTD'
              '                          ,P2VALDES'
              '                          ,P2DESC1'
              '                          ,P2DESC2'
              '                          ,P2DESC3'
              '                          ,P2DESCPR'
              '                          ,P2PCOFPG'
              '                          ,P2PRECO'
              '                          ,P2PCOMIS'
              '                          ,P2SIT'
              '                          ,P2CODVEN'
              '                          ,P2CSOSN'
              '                          ,P2CSOSN_ORI'
              '                          ,P2REDUTICM'
              '                          ,P2MODBCST'
              '                          ,P2ST_IVA'
              '                          ,P2ST_REDUT'
              '                          ,P2ST_ICMCRED'
              '                          ,P2ST_ICMDEB'
              '                          ,P2PCOTAB'
              '                          ,P2UCPR'
              '                          ,P2PCOCUS'
              '                          ,P2PCOMAX'
              '                          ,P2ALIPI'
              '                          ,P2ALIQ'
              '                          ,P2ALIQICMSDES'
              '                          ,P2ALIQAPROXTRIB'
              '                          ,P2CFO'
              '                          ,P2CFOSUBECF'
              '                          ,P2PDESCF'
              '                          ,P2ALPIS'
              '                          ,P2CST_PIS'
              '                          ,P2ALCOFINS'
              '                          ,P2CST_COFINS'
              '                          ,P2COMPLEMENTO'
              '                          ,P2PCRED_SN'
              '                          ,P2PCREDSN'
              '                          ,P2SITUACAO'
              '                          ,P2ESTNOR'
              '                          ,P2ESTCONS'
              '                          ,P2ESTTERC'
              '                          ,P2ESTREV'
              '                          ,P2PROMOCAO'
              '                          ,P2DESC_CAB'
              '                          ,P2CONTESP'
              '                          ,P2TIPOPROD'
              '                          ,P2AMBIENTE'
              '                          ,P2CONS_PROPRIO'
              '                          ,P2TIPO_PCO'
              '                          ,P2ICMS_ALIPI'
              '                          ,P2COMPRA_XPED'
              '                          ,P2COMPRA_NITEMPED'
              '                          ,P2IMP_IMP_ALIQ'
              '                          ,P2IMP_IMP_VALOR'
              '                          ,P2IMP_IMP_VDESDPADU'
              '                          ,P2IMP_IMP_VII'
              '                          ,P2IMP_IMP_VIOF'
              '                          ,P2IMP_IMP_VBC'
              '                          ,P2IMP_TPVIATRANSP'
              '                          ,P2IMP_VAFRMM'
              '                          ,P2IMP_TPINTERMEDIARIO'
              '                          ,P2IMP_CNPJ'
              '                          ,P2IMP_UFTERCEIRO'
              '                          ,P2IMP_NDRAW'
              '                          ,P2EXP_NDRAW'
              '                          ,P2EXP_NRE'
              '                          ,P2EXP_CHNFE'
              '                          ,P2EXP_QEXPORT'
              '                          ,P2IMP_PU_DOLLAR'
              '                          ,P2PISCOFINS_VBC_IMP'
              ''
              '                          ) values ('
              '                          :NEW.P2T_CODEMP'
              '                          , :NEW.P2T_CHAVE'
              '                          , 01'
              '                          , :NEW.P2T_CHAVE_ANO'
              '                          , :NEW.P2T_ITEM'
              '                          , :NEW.P2T_CODPRO'
              '                          , :NEW.P2T_NOMPRO_ORI'
              '                          , :NEW.P2T_UND'
              '                          , :NEW.P2T_QTD'
              '                          , :NEW.P2T_DESC_VALOR'
              '                          , :NEW.P2T_DESC_PERC01'
              '                          , :NEW.P2T_DESC_PERC02'
              '                          , :NEW.P2T_DESC_PERC03'
              '                          , :NEW.P2T_DESC_PPR'
              '                          , :NEW.P2T_PRECO_FPGTO'
              '                          , :NEW.P2T_PRECO'
              '                          , :NEW.P2T_COMISV01_PERC'
              '                          , :NEW.P2T_CST'
              '                          , :NEW.P2T_CODVEN'
              '                          , :NEW.P2T_CSOSN'
              '                          , :NEW.P2T_CSOSN_ORI'
              '                          , :NEW.P2T_ICMS_PRED'
              '                          , :NEW.P2T_MODBCST'
              '                          , :NEW.P2T_ST_IVA'
              '                          , :NEW.P2T_ST_PREDUT'
              '                          , :NEW.P2T_ST_ICMSCRED'
              '                          , :NEW.P2T_ST_ICMSDEB'
              '                          , :NEW.P2T_PRECO_TAB'
              '                          , :NEW.P2T_PRECO_UCPR'
              '                          , :NEW.P2T_PRECO_CUS'
              '                          , :NEW.P2T_PRECO_MAXCONS'
              '                          , :NEW.P2T_IPI_PERC'
              '                          , :NEW.P2T_ICMS_PERC'
              '                          , :NEW.P2T_ICMS_DES'
              '                          , :NEW.P2T_ALIQAPROXTRIB'
              '                          , :NEW.P2T_CFOP'
              '                          , :NEW.P2T_CFOP_SUBECF'
              '                          , :NEW.P2T_DESCFIN_PERC'
              '                          , :NEW.P2T_PIS_PERC'
              '                          , :NEW.P2T_PIS_CST'
              '                          , :NEW.P2T_COFINS_PERC'
              '                          , :NEW.P2T_COFINS_CST'
              '                          , :NEW.P2T_DESCCOMPL'
              '                          , :NEW.P2T_ICMSSN_PERC'
              '                          , :NEW.P2T_ICMSSN_PERC'
              '                          , :NEW.P2T_SITUACAO'
              '                          , :NEW.P2T_ESTNOR'
              '                          , :NEW.P2T_ESTCONS'
              '                          , :NEW.P2T_ESTTERC'
              '                          , :NEW.P2T_ESTREV'
              '                          , :NEW.P2T_PROMOCAO'
              '                          , :NEW.P2T_DESC_CAB'
              '                          , :NEW.P2T_CONTESP'
              '                          , :NEW.P2T_TIPOPROD'
              '                          , :NEW.P2T_AMBIENTE'
              '                          , :NEW.P2T_CONS_PROPRIO'
              '                          , :NEW.P2T_TPPCO_ITEM'
              '                          , :NEW.P2T_ICMS_ALIPI'
              '                          , :NEW.P2T_COMPRA_XPED'
              '                          , :NEW.P2T_COMPRA_NITEMPED'
              '                          ,:NEW.P2T_IMP_IMP_ALIQ'
              '                          ,:NEW.P2T_IMP_IMP_VALOR'
              '                          ,:NEW.P2T_IMP_IMP_VDESDPADU'
              '                          ,:NEW.P2T_IMP_IMP_VII'
              '                          ,:NEW.P2T_IMP_IMP_VIOF'
              '                          ,:NEW.P2T_IMP_IMP_VBC'
              ''
              '                          ,:NEW.P2T_IMP_TPVIATRANSP'
              '                          ,:NEW.P2T_IMP_VAFRMM'
              '                          ,:NEW.P2T_IMP_TPINTERMEDIARIO'
              '                          ,:NEW.P2T_IMP_CNPJ'
              '                          ,:NEW.P2T_IMP_UFTERCEIRO'
              '                          ,:NEW.P2T_IMP_NDRAW'
              '                          ,:NEW.P2T_EXP_NDRAW'
              '                          ,:NEW.P2T_EXP_NRE'
              '                          ,:NEW.P2T_EXP_CHNFE'
              '                          ,:NEW.P2T_EXP_QEXPORT'
              '                          ,:NEW.P2T_IMP_PU_DOLLAR'
              '                          ,:NEW.P2T_PISCOFINS_VBC_IMP'
              ''
              '                          );'
              '   else'
              '     Insert into CADP02S'
              '                          ('
              '                           P2SCODEMP'
              '                          ,P2SCHAVE'
              '                          ,P2SORDEM'
              '                          ,P2SLOTSEQ'
              '                          ,P2SITEM'
              '                          ,P2SCODPRO'
              '                          ,P2SQTD'
              '                          ,P2SDESC1'
              '                          ,P2SDESC2'
              '                          ,P2SDESC3'
              '                          ,P2SPRECO'
              '                          ,P2SSIT'
              '                          ,P2SCSOSN'
              '                          ,P2SCSOSN_ORI'
              '                          ,P2SVALDES'
              '                          ,P2SCODFAB'
              '                          ,P2SSTATUS'
              '                          ,P2SPCOTAB'
              '                          ,P2SPCOCUS'
              '                          ,P2SALIQ'
              '                          ,P2SCFO'
              '                          ,P2SPDESCF'
              '                          ,P2SCODFUN'
              '                          ,P2SREDINSS'
              '                          ,P2SALIQINSS'
              '                          ,P2SREDIRRF'
              '                          ,P2SALIQIRRF'
              '                          ,P2SDESC_CAB'
              '                          ,P2SESTNOR'
              '                          ,P2SESTCONS'
              '                          ,P2SESTTERC'
              '                          ,P2SESTREV'
              '                          ,P2SPROMOCAO'
              '                          ,P2SDESC_COMP'
              '                          ,P2SSITUACAO'
              '                          ) values ('
              '                          :NEW.P2T_CODEMP'
              '                          , :NEW.P2T_CHAVE'
              '                          , 01'
              '                          , :NEW.P2T_CHAVE_ANO'
              '                          , :NEW.P2T_ITEM'
              '                          , :NEW.P2T_CODPRO'
              '                          ,:NEW.P2T_QTD'
              '                          ,:NEW.P2T_DESC_PERC01'
              '                          ,:NEW.P2T_DESC_PERC02'
              '                          ,:NEW.P2T_DESC_PERC03'
              '                          ,:NEW.P2T_PRECO'
              '                          ,:NEW.P2T_CST'
              '                          ,:NEW.P2T_CSOSN'
              '                          ,:NEW.P2T_CSOSN_ORI'
              '                          ,:NEW.P2T_DESC_VALOR'
              '                          ,0'
              '                          ,:NEW.P2T_SITUACAO'
              '                          ,:NEW.P2T_PRECO_TAB'
              '                          ,:NEW.P2T_PRECO_CUS'
              '                          ,:NEW.P2T_PISSQN'
              '                          ,:NEW.P2T_CFOP'
              '                          ,:NEW.P2T_DESCFIN_PERC'
              ''
              '                          ,:NEW.P2T_CODUSR'
              '                          ,:NEW.P2T_INSS_PRED'
              '                          ,:NEW.P2T_INSS_ALIQ'
              '                          ,:NEW.P2T_IRRF_PRED'
              '                          ,:NEW.P2T_IRRF_ALIQ'
              '                          ,:NEW.P2T_DESC_CAB'
              '                          ,:NEW.P2T_ESTNOR'
              '                          ,:NEW.P2T_ESTCONS'
              '                          ,:NEW.P2T_ESTTERC'
              '                          ,:NEW.P2T_ESTREV'
              '                          ,:NEW.P2T_PROMOCAO'
              '                          ,:NEW.P2T_DESCCOMPL'
              '                          ,:NEW.P2T_SITUACAO'
              '                          );'
              ''
              '   end if;'
              ''
              ''
              ''
              
                '   if  (:NEW.P2T_TIPOPROD<>3) AND   ((:NEW.P2T_ESTNOR='#39'S'#39') or (:' +
                'NEW.P2T_ESTNOR='#39'E'#39')) or'
              
                '                             ((:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:' +
                'NEW.P2T_EST_RESERVADO='#39'E'#39')) then'
              ''
              ''
              '--     RAISE_APPLICATION_ERROR(-20000, '#39'IRA INSERIR'#39');'
              ''
              ''
              ''
              '      insert into CADMOV_PROD ('
              '       CMP_CODEMP'
              '      ,CMP_FILIAL'
              '      ,CMP_CHAVE'
              '      ,CMP_CHAVE_ANO'
              '      ,CMP_ITEM'
              '      ,CMP_DOCORI'
              '      ,CMP_CODPRO'
              '      ,CMP_DATHOR'
              '      ,CMP_QTD'
              '      ,CMP_ESTNOR'
              '      ,CMP_ESTRESERVADO'
              '      ,CMP_CODUSR'
              '      ,CMP_CONTESP'
              '      ,CMP_TIPOPROD'
              '      ) values ('
              '       :NEW.P2T_CODEMP'
              '      ,:NEW.P2T_FILIAL'
              '      ,:NEW.P2T_CHAVE'
              '      ,:NEW.P2T_CHAVE_ANO'
              '      ,:NEW.P2T_ITEM'
              '      ,00 -- pedido de vendas'
              '      ,:NEW.P2T_CODPRO'
              '      ,sysdate'
              '      ,:NEW.P2T_QTD'
              '      ,:NEW.P2T_ESTNOR'
              '      ,:NEW.P2T_EST_RESERVADO'
              '      ,:NEW.P2T_CODUSR'
              '      ,:NEW.P2T_CONTESP'
              '      ,:NEW.P2T_TIPOPROD'
              '      );'
              ''
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_TIPO_EVENTO=1 then'
              '   if :NEW.P2T_PROD_SERV=0 then'
              '      Update CADP02 set    P2CODPRO=:NEW.P2T_CODPRO'
              '                       ,P2NOMPRO_ORI=:NEW.P2T_NOMPRO_ORI'
              '                       ,P2UND=:NEW.P2T_UND'
              '                       ,P2QTD=:NEW.P2T_QTD'
              '                       ,P2VALDES=:NEW.P2T_DESC_VALOR'
              '                       ,P2DESC1=:NEW.P2T_DESC_PERC01'
              '                       ,P2DESC2=:NEW.P2T_DESC_PERC02'
              '                       ,P2DESC3=:NEW.P2T_DESC_PERC03'
              '                       ,P2DESCPR=:NEW.P2T_DESC_PPR'
              '                       ,P2PRECO=:NEW.P2T_PRECO'
              '                       ,P2PCOFPG=:NEW.P2T_PRECO_FPGTO'
              '                       ,P2PCOMIS=:NEW.P2T_COMISV01_PERC'
              '                       ,P2SIT=:NEW.P2T_CST'
              '                       ,P2CSOSN=:NEW.P2T_CSOSN'
              '                       ,P2CSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              '                       ,P2CODVEN=:NEW.P2T_CODVEN'
              '                       ,P2REDUTICM=:NEW.P2T_ICMS_PRED'
              '                       ,P2MODBCST=:NEW.P2T_MODBCST'
              '                       ,P2ST_IVA=:NEW.P2T_ST_IVA'
              '                       ,P2ST_REDUT=:NEW.P2T_ST_PREDUT'
              '                       ,P2ST_ICMCRED=:NEW.P2T_ST_ICMSCRED'
              '                       ,P2ST_ICMDEB=:NEW.P2T_ST_ICMSDEB'
              '                       ,P2PCOTAB=:NEW.P2T_PRECO_TAB'
              '                       ,P2UCPR=:NEW.P2T_PRECO_UCPR'
              '                       ,P2PCOCUS=:NEW.P2T_PRECO_CUS'
              '                       ,P2PCOMAX=:NEW.P2T_PRECO_MAXCONS'
              '                       ,P2ALIPI=:NEW.P2T_IPI_PERC'
              '                       ,P2ALIQ=:NEW.P2T_ICMS_PERC'
              '                       ,P2ALIQICMSDES=:NEW.P2T_ICMS_DES'
              '                       ,P2ALIQAPROXTRIB=:NEW.P2T_ALIQAPROXTRIB'
              '                       ,P2CFO=:NEW.P2T_CFOP'
              '                       ,P2CFOSUBECF=:NEW.P2T_CFOP_SUBECF'
              '                       ,P2PDESCF=:NEW.P2T_DESCFIN_PERC'
              '                       ,P2ALPIS=:NEW.P2T_PIS_PERC'
              '                       ,P2CST_PIS=:NEW.P2T_PIS_CST'
              '                       ,P2ALCOFINS=:NEW.P2T_COFINS_PERC'
              '                       ,P2CST_COFINS=:NEW.P2T_COFINS_CST'
              '                       ,P2COMPLEMENTO=:NEW.P2T_DESCCOMPL'
              '                       ,P2PCRED_SN=:NEW.P2T_ICMSSN_PERC'
              '                       ,P2PCREDSN=:NEW.P2T_ICMSSN_PERC'
              '                       ,P2SITUACAO=:NEW.P2T_SITUACAO'
              '                       ,P2ESTNOR=:NEW.P2T_ESTNOR'
              '                       ,P2ESTCONS=:NEW.P2T_ESTCONS'
              '                       ,P2ESTTERC=:NEW.P2T_ESTTERC'
              '                       ,P2ESTREV=:NEW.P2T_ESTREV'
              '                       ,P2PROMOCAO=:NEW.P2T_PROMOCAO'
              '                       ,P2DESC_CAB=:NEW.P2T_DESC_CAB'
              '                       ,P2CONTESP=:NEW.P2T_CONTESP'
              '                       ,P2TIPOPROD=:NEW.P2T_TIPOPROD'
              '                       ,P2AMBIENTE=:NEW.P2T_AMBIENTE'
              '                       ,P2CONS_PROPRIO=:NEW.P2T_CONS_PROPRIO'
              '                       ,P2TIPO_PCO=:NEW.P2T_TPPCO_ITEM'
              '                       ,P2ICMS_ALIPI=:NEW.P2T_ICMS_ALIPI'
              '                       ,P2COMPRA_XPED=:NEW.P2T_COMPRA_XPED'
              
                '                       ,P2COMPRA_NITEMPED=:NEW.P2T_COMPRA_NITEMP' +
                'ED'
              '                          ,P2IMP_IMP_ALIQ=:NEW.P2T_IMP_IMP_ALIQ'
              
                '                          ,P2IMP_IMP_VALOR=:NEW.P2T_IMP_IMP_VALO' +
                'R'
              
                '                          ,P2IMP_IMP_VDESDPADU=:NEW.P2T_IMP_IMP_' +
                'VDESDPADU'
              '                          ,P2IMP_IMP_VII=:NEW.P2T_IMP_IMP_VII'
              '                          ,P2IMP_IMP_VIOF=:NEW.P2T_IMP_IMP_VIOF'
              '                          ,P2IMP_IMP_VBC=:NEW.P2T_IMP_IMP_VBC'
              ''
              
                '                          ,P2IMP_TPVIATRANSP=:NEW.P2T_IMP_TPVIAT' +
                'RANSP'
              '                          ,P2IMP_VAFRMM=:NEW.P2T_IMP_VAFRMM'
              
                '                          ,P2IMP_TPINTERMEDIARIO=:NEW.P2T_IMP_TP' +
                'INTERMEDIARIO'
              '                          ,P2IMP_CNPJ=:NEW.P2T_IMP_CNPJ'
              
                '                          ,P2IMP_UFTERCEIRO=:NEW.P2T_IMP_UFTERCE' +
                'IRO'
              '                          ,P2IMP_NDRAW=:NEW.P2T_IMP_NDRAW'
              '                          ,P2EXP_NDRAW=:NEW.P2T_EXP_NDRAW'
              '                          ,P2EXP_NRE=:NEW.P2T_EXP_NRE'
              '                          ,P2EXP_CHNFE=:NEW.P2T_EXP_CHNFE'
              '                          ,P2EXP_QEXPORT=:NEW.P2T_EXP_QEXPORT'
              
                '                          ,P2IMP_PU_DOLLAR=:NEW.P2T_IMP_PU_DOLLA' +
                'R'
              
                '                          ,P2PISCOFINS_VBC_IMP=:NEW.P2T_PISCOFIN' +
                'S_VBC_IMP'
              ''
              ''
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              '                       and P2CHAVE=:NEW.P2T_CHAVE'
              '                       and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                       and P2ITEM=:NEW.P2T_ITEM'
              '                       and P2CODPRO=:NEW.P2T_CODPRO_ANT;'
              '   else'
              '      Update CADP02S set      P2SCODPRO=:NEW.P2T_CODPRO'
              '                          ,P2SQTD=:NEW.P2T_QTD'
              '                          ,P2SDESC1=:NEW.P2T_DESC_PERC01'
              '                          ,P2SDESC2=:NEW.P2T_DESC_PERC02'
              '                          ,P2SDESC3=:NEW.P2T_DESC_PERC03'
              '                          ,P2SPRECO=:NEW.P2T_PRECO'
              '                          ,P2SSIT=:NEW.P2T_CST'
              '                          ,P2SCSOSN=:NEW.P2T_CSOSN'
              '                          ,P2SCSOSN_ORI=:NEW.P2T_CSOSN_ORI'
              '                          ,P2SVALDES=:NEW.P2T_DESC_VALOR'
              '                          ,P2SCODFAB=0'
              '                          ,P2SSTATUS=:NEW.P2T_SITUACAO'
              '                          ,P2SPCOTAB=:NEW.P2T_PRECO_TAB'
              '                          ,P2SPCOCUS=:NEW.P2T_PRECO_CUS'
              '                          ,P2SALIQ=:NEW.P2T_PISSQN'
              '                          ,P2SCFO=:NEW.P2T_CFOP'
              '                          ,P2SPDESCF=:NEW.P2T_DESCFIN_PERC'
              '                          ,P2SCODFUN=:NEW.P2T_CODUSR'
              '                          ,P2SREDINSS=:NEW.P2T_INSS_PRED'
              '                          ,P2SALIQINSS=:NEW.P2T_INSS_ALIQ'
              '                          ,P2SREDIRRF=:NEW.P2T_IRRF_PRED'
              '                          ,P2SALIQIRRF=:NEW.P2T_IRRF_ALIQ'
              '                          ,P2SDESC_CAB=:NEW.P2T_DESC_CAB'
              '                          ,P2SESTNOR=:NEW.P2T_ESTNOR'
              '                          ,P2SESTCONS=:NEW.P2T_ESTCONS'
              '                          ,P2SESTTERC=:NEW.P2T_ESTTERC'
              '                          ,P2SESTREV=:NEW.P2T_ESTREV'
              '                          ,P2SPROMOCAO=:NEW.P2T_PROMOCAO'
              '                          ,P2SDESC_COMP=:NEW.P2T_DESCCOMPL'
              '                          ,P2SSITUACAO=:NEW.P2T_SITUACAO'
              '                          WHERE'
              '                           P2SCODEMP=:NEW.P2T_CODEMP'
              '                           and P2SCHAVE=:NEW.P2T_CHAVE'
              '                           and P2SORDEM=01'
              '                           and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                           and P2SITEM=:NEW.P2T_ITEM'
              '                           and P2SCODPRO=:NEW.P2T_CODPRO_ANT;'
              ''
              '   end if;'
              '   if (:NEW.P2T_TIPOPROD<>3) AND   ('
              '      (:NEW.P2T_ESTNOR='#39'S'#39') or (:NEW.P2T_ESTNOR='#39'E'#39')) or'
              
                '      (:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:NEW.P2T_EST_RESERVADO='#39'E' +
                #39')   then'
              '      if :NEW.P2T_CODPRO<>:NEW.P2T_CODPRO_ANT then'
              '         insert into CADMOV_PROD ('
              '          CMP_CODEMP'
              '         ,CMP_FILIAL'
              '         ,CMP_CHAVE'
              '         ,CMP_CHAVE_ANO'
              '         ,CMP_ITEM'
              '         ,CMP_DOCORI'
              '         ,CMP_CODPRO'
              '         ,CMP_DATHOR'
              '         ,CMP_QTD'
              '         ,CMP_ESTNOR'
              '         ,CMP_ESTRESERVADO'
              '         ,CMP_CODUSR'
              '         ,CMP_CONTESP'
              '         ,CMP_TIPOPROD'
              '         ) values ('
              '          :NEW.P2T_CODEMP'
              '         ,:NEW.P2T_FILIAL'
              '         ,:NEW.P2T_CHAVE'
              '         ,:NEW.P2T_CHAVE_ANO'
              '         ,:NEW.P2T_ITEM'
              '         ,00 -- pedido de vendas'
              '         ,:NEW.P2T_CODPRO'
              '         ,sysdate'
              '         ,:NEW.P2T_QTD'
              '         ,:NEW.P2T_ESTNOR'
              '         ,:NEW.P2T_EST_RESERVADO'
              '         ,:NEW.P2T_CODUSR'
              '         ,:NEW.P2T_CONTESP'
              '         ,:NEW.P2T_TIPOPROD'
              '         );'
              '         mOper_estnor:='#39'N'#39';'
              '         mOper_estreservado:='#39'N'#39';'
              '         if :NEW.P2T_ESTNOR='#39'E'#39' then'
              '            mOper_estnor:='#39'S'#39';'
              '         elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              '            mOper_estnor:='#39'E'#39';'
              '         end if;'
              '         if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              '            mOper_estreservado:='#39'S'#39';'
              '         elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              '            mOper_estreservado:='#39'E'#39';'
              '         end if;'
              '         insert into CADMOV_PROD ('
              '          CMP_CODEMP'
              '         ,CMP_FILIAL'
              '         ,CMP_CHAVE'
              '         ,CMP_CHAVE_ANO'
              '         ,CMP_ITEM'
              '         ,CMP_DOCORI'
              '         ,CMP_CODPRO'
              '         ,CMP_DATHOR'
              '         ,CMP_QTD'
              '         ,CMP_ESTNOR'
              '         ,CMP_ESTRESERVADO'
              '         ,CMP_CODUSR'
              '         ,CMP_CONTESP'
              '         ,CMP_TIPOPROD'
              '         ) values ('
              '          :NEW.P2T_CODEMP'
              '         ,:NEW.P2T_FILIAL'
              '         ,:NEW.P2T_CHAVE'
              '         ,:NEW.P2T_CHAVE_ANO'
              '         ,:NEW.P2T_ITEM'
              '         ,00 -- pedido de vendas'
              '         ,:NEW.P2T_CODPRO_ANT'
              '         ,sysdate'
              '         ,:NEW.P2T_QTD_ANT'
              '         ,mOper_estnor'
              '         ,mOper_estreservado'
              '         ,:NEW.P2T_CODUSR'
              '         ,:NEW.P2T_CONTESP'
              '         ,:NEW.P2T_TIPOPROD'
              '         );'
              '      else'
              '         mQtdProc:=:NEW.P2T_QTD-:NEW.P2T_QTD_ANT;'
              '         mOper_estnor:=:NEW.P2T_ESTNOR;'
              '         mOper_estreservado:=:NEW.P2T_EST_RESERVADO;'
              '         if mqtdproc<0 then'
              '            if :NEW.P2T_ESTNOR='#39'E'#39' then'
              '               mOper_estnor:='#39'S'#39';'
              '            elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              '               mOper_estnor:='#39'E'#39';'
              '            end if;'
              '            if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              '               mOper_estreservado:='#39'S'#39';'
              '            elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              '               mOper_estreservado:='#39'E'#39';'
              '            end if;'
              '            mQtdProc:=mQtdProc*-1;'
              '         end if;'
              '         insert into CADMOV_PROD ('
              '          CMP_CODEMP'
              '         ,CMP_FILIAL'
              '         ,CMP_CHAVE'
              '         ,CMP_CHAVE_ANO'
              '         ,CMP_ITEM'
              '         ,CMP_DOCORI'
              '         ,CMP_CODPRO'
              '         ,CMP_DATHOR'
              '         ,CMP_QTD'
              '         ,CMP_ESTNOR'
              '         ,CMP_ESTRESERVADO'
              '         ,CMP_CODUSR'
              '         ,CMP_CONTESP'
              '         ,CMP_TIPOPROD'
              '         ) values ('
              '          :NEW.P2T_CODEMP'
              '         ,:NEW.P2T_FILIAL'
              '         ,:NEW.P2T_CHAVE'
              '         ,:NEW.P2T_CHAVE_ANO'
              '         ,:NEW.P2T_ITEM'
              '         ,00 -- pedido de vendas'
              '         ,:NEW.P2T_CODPRO_ANT'
              '         ,sysdate'
              '         ,mQtdProc'
              '         ,mOper_estnor'
              '         ,mOper_estreservado'
              '         ,:NEW.P2T_CODUSR'
              '         ,:NEW.P2T_CONTESP'
              '         ,:NEW.P2T_TIPOPROD'
              '         );'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_TIPO_EVENTO=2 then'
              '   if :NEW.P2T_PROD_SERV=0 then'
              '     delete from CADP02 where P2CODEMP=:NEW.P2T_CODEMP'
              '                and P2CHAVE=:NEW.P2T_CHAVE'
              '                and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                and P2ITEM=:NEW.P2T_ITEM'
              '                and P2CODPRO=:NEW.P2T_CODPRO;'
              '   ELSE'
              '      delete from CADP02S where P2SCODEMP=:NEW.P2T_CODEMP'
              '                and P2SCHAVE=:NEW.P2T_CHAVE'
              '                and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '                and P2SITEM=:NEW.P2T_ITEM'
              '                and P2SCODPRO=:NEW.P2T_CODPRO;'
              '   end if;'
              ''
              
                '   if (:NEW.P2T_TIPOPROD<>3) AND   ((:NEW.P2T_ESTNOR='#39'S'#39') or (:N' +
                'EW.P2T_ESTNOR='#39'E'#39')) or'
              
                '                ((:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:NEW.P2T_EST_R' +
                'ESERVADO='#39'E'#39')) then'
              ''
              '      if :NEW.P2T_ESTNOR='#39'E'#39' then'
              '         mOper_estnor:='#39'S'#39';'
              '      elsif :NEW.P2T_ESTNOR='#39'S'#39' then'
              '         mOper_estnor:='#39'E'#39';'
              '      end if;'
              '      if :NEW.P2T_EST_RESERVADO='#39'E'#39' then'
              '         mOper_estreservado:='#39'S'#39';'
              '      elsif :NEW.P2T_EST_RESERVADO='#39'S'#39' then'
              '         mOper_estreservado:='#39'E'#39';'
              '      end if;'
              '      insert into CADMOV_PROD ('
              '       CMP_CODEMP'
              '      ,CMP_FILIAL'
              '      ,CMP_CHAVE'
              '      ,CMP_CHAVE_ANO'
              '      ,CMP_ITEM'
              '      ,CMP_DOCORI'
              '      ,CMP_CODPRO'
              '      ,CMP_DATHOR'
              '      ,CMP_QTD'
              '      ,CMP_ESTNOR'
              '      ,CMP_ESTRESERVADO'
              '      ,CMP_CODUSR'
              '      ,CMP_CONTESP'
              '      ,CMP_TIPOPROD'
              '      ) values ('
              '       :NEW.P2T_CODEMP'
              '      ,:NEW.P2T_FILIAL'
              '      ,:NEW.P2T_CHAVE'
              '      ,:NEW.P2T_CHAVE_ANO'
              '      ,:NEW.P2T_ITEM'
              '      ,00 -- pedido de vendas'
              '      ,:NEW.P2T_CODPRO'
              '      ,sysdate'
              '      ,:NEW.P2T_QTD'
              '      ,mOper_estnor'
              '      ,mOper_estreservado'
              '      ,:NEW.P2T_CODUSR'
              '      ,:NEW.P2T_CONTESP'
              '      ,:NEW.P2T_TIPOPROD'
              '      );'
              '   end if;'
              'end if;'
              ''
              ''
              ''
              ''
              'if :NEW.P2T_TIPO_EVENTO=3 then'
              
                '   if (:NEW.P2T_TIPOPROD<>3) AND   ((:NEW.P2T_ESTNOR='#39'S'#39') or (:N' +
                'EW.P2T_ESTNOR='#39'E'#39')) or'
              
                '                ((:NEW.P2T_EST_RESERVADO='#39'S'#39') or (:NEW.P2T_EST_R' +
                'ESERVADO='#39'E'#39')) then'
              ''
              '      insert into CADMOV_PROD ('
              '       CMP_CODEMP'
              '      ,CMP_FILIAL'
              '      ,CMP_CHAVE'
              '      ,CMP_CHAVE_ANO'
              '      ,CMP_ITEM'
              '      ,CMP_DOCORI'
              '      ,CMP_CODPRO'
              '      ,CMP_DATHOR'
              '      ,CMP_QTD'
              '      ,CMP_ESTNOR'
              '      ,CMP_ESTRESERVADO'
              '      ,CMP_CODUSR'
              '      ,CMP_CONTESP'
              '      ,CMP_TIPOPROD'
              '      ) values ('
              '       :NEW.P2T_CODEMP'
              '      ,:NEW.P2T_FILIAL'
              '      ,:NEW.P2T_CHAVE'
              '      ,:NEW.P2T_CHAVE_ANO'
              '      ,:NEW.P2T_ITEM'
              '      ,00 -- pedido de vendas'
              '      ,:NEW.P2T_CODPRO'
              '      ,sysdate'
              '      ,:NEW.P2T_QTD'
              '      ,:NEW.P2T_ESTNOR'
              '      ,:NEW.P2T_EST_RESERVADO'
              '      ,:NEW.P2T_CODUSR'
              '      ,:NEW.P2T_CONTESP'
              '      ,:NEW.P2T_TIPOPROD'
              '      );'
              '   end if;'
              'end if;'
              ''
              ''
              
                '-- if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              
                '--   :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT O' +
                'R'
              
                '--   :NEW.P2T_PED1_DESC_PERC03!= :NEW.P2T_PED1_DESC_PERC03_ANT T' +
                'HEN'
              '   Update CADP02 set P2DESC_CAB='
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              '   TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              '   else -- ira arredondar'
              '   ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))-' +
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * :NEW.P2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              '   end -- terminou o case'
              ''
              ''
              '                     ,P2TOTLIQ='
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              
                '                     NVL( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES' +
                ',0))-(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +TRUNC((((((TRUNC(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)+T' +
                'RUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2)'
              '                     ,TRUNC(P2QTD*P2PRECO,2))'
              '   else -- ira arredondar'
              
                '                     NVL( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES' +
                ',0))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +ROUND((((((round(P2QTD*P2PRECO,2))-NVL(P2V' +
                'ALDES,0)))-(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0' +
                ')) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)+R' +
                'OUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0)))'
              
                '                     -((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDE' +
                'S,0)) ) * NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2))'
              
                '                     +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0)' +
                '))-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0)) ) *'
              '   NVL(:NEW.P2T_PED1_DESC_PERC01,0)) / 100) , 2)))'
              
                '                     *NVL(:NEW.P2T_PED1_DESC_PERC02,0)/100),2)))' +
                ') *NVL(:NEW.P2T_PED1_DESC_PERC03,0)/100) ,2)'
              '                     ,round(P2QTD*P2PRECO,2))'
              '   end -- terminou o case'
              ''
              ''
              ''
              
                '                     where P2CODEMP=:NEW.P2T_CODEMP and P2CHAVE=' +
                ':NEW.P2T_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              
                '   UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) whe' +
                're P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              '   P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              '   Update CADP02S set P2SDESC_CAB='
              ''
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              '   TRUNC(  ((( (P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((TRUNC(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              '   else -- ira arredondar'
              '   ROUND(  ((( (P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                   +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (P2' +
                'SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2)'
              ''
              '   end -- terminou o case'
              ''
              '                     ,P2STOTLIQ='
              '   case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              
                '                     (P2SQTD*P2SPRECO)-(TRUNC(  ((( (P2SQTD*P2SP' +
                'RECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+TRUNC( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((TRUNC(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(TRUNC(((((P2SQTD*P2SPRECO))-(TRUNC(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2))'
              '   else -- ira arredondar'
              
                '                     (P2SQTD*P2SPRECO)-(ROUND(  ((( (P2SQTD*P2SP' +
                'RECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                     +ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( (' +
                'P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND( (' +
                '(((P2SQTD*P2SPRECO))'
              
                '                     -((ROUND(  ((( (P2SQTD*P2SPRECO) ) * :NEW.P' +
                '2T_PED1_DESC_PERC01) / 100) , 2))'
              
                '                     +(ROUND(((((P2SQTD*P2SPRECO))-(ROUND(  ((( ' +
                '(P2SQTD*P2SPRECO) ) *'
              '   :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                     *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:NEW' +
                '.P2T_PED1_DESC_PERC03/100) ,2))'
              ''
              '   end -- terminou o case'
              ''
              ''
              
                '                     where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHA' +
                'VE=:NEW.P2T_CHAVE  and'
              '   P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              '-- end if;'
              ''
              ''
              ''
              ''
              ''
              'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES='
              ''
              'case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              'CASE WHEN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +TRUNC(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +TRUNC( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((TRUNC(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              '   else -- ira arredondar'
              'CASE WHEN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              ''
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ',P2STOTLIQ='
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              'END)-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+TRUNC( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(TRUNC(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              '   else -- ira arredondar'
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              '   end -- terminou o case'
              ''
              ''
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              
                'Update CADP02 set P2DESCRAT=0,P2ACRERAT=0,P2VDESPACESRAT=0,P2VFR' +
                'ERAT=0 ,P2VSEGRAT=0'
              ',P2VDESPACESRAT_BCICMS=0,P2VFRERAT_BCICMS=0 ,P2VSEGRAT_BCICMS=0'
              ',P2TOTDES='
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              'NVL(P2VALDES,0)+ CASE WHEN'
              'P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END +  TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END )  * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 E' +
                'LSE P2DESC1 END) / 100) , 2) +TRUNC((((((P2QTD*P2PRECO)-NVL(P2VA' +
                'LDES,0)))-'
              
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END  )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2) +TRUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE'
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((TRUNC(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100) , 2)' +
                ')'
              
                ' +(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                ' (TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              '   else -- ira arredondar'
              'NVL(P2VALDES,0)+ CASE WHEN'
              'P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END +  ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE WHEN P2DESC_CAB IS NULL THEN 0'
              
                'ELSE P2DESC_CAB END )  * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 E' +
                'LSE P2DESC1 END) / 100) , 2) +ROUND((((((P2QTD*P2PRECO)-NVL(P2VA' +
                'LDES,0)))-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END  )'
              ''
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2) +ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES' +
                ',0))-CASE'
              
                'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-((ROUND(  ((' +
                '( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-'
              
                ' CASE WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END ) * CAS' +
                'E WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100) , 2)' +
                ')'
              
                ' +(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_C' +
                'AB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                ' (ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2)'
              '   end -- terminou o case'
              ''
              ''
              ''
              ''
              ',P2TOTLIQ='
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              'NVL('
              
                '(((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB' +
                ' IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(TRUNC(  ((( ((TRUNC(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                ' * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100' +
                ') , 2)+TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DE' +
                'SC_CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END)-(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2' +
                'VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 TH' +
                'EN 0 ELSE P2DESC1 END) / 100) , 2)))*P2DESC2/100),2)'
              
                '+TRUNC( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '((TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB'
              
                'END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) ' +
                '/ 100) , 2))+(TRUNC((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE'
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(TRUNC(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2))'
              ',TRUNC(P2QTD*P2PRECO,2))'
              '   else -- ira arredondar'
              'NVL('
              
                '(((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHEN P2DESC_CAB' +
                ' IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(ROUND(  ((( ((round(P2QTD*P2PRECO,2))-NVL(P2VALDES,0))-CASE WHE' +
                'N P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                ' * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100' +
                ') , 2)+ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DE' +
                'SC_CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END)-(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2' +
                'VALDES,0))-CASE WHEN P2DESC_CAB IS NULL'
              
                'THEN 0 ELSE P2DESC_CAB END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 TH' +
                'EN 0 ELSE P2DESC1 END) / 100) , 2)))*P2DESC2/100),2)'
              
                '+ROUND( (((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_CA' +
                'B IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '((ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC' +
                '_CAB IS NULL THEN 0 ELSE P2DESC_CAB'
              
                'END ) * CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) ' +
                '/ 100) , 2))+(ROUND((((((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE'
              'WHEN P2DESC_CAB IS NULL THEN 0 ELSE P2DESC_CAB END)-'
              
                '(ROUND(  ((( ((P2QTD*P2PRECO)-NVL(P2VALDES,0))-CASE WHEN P2DESC_' +
                'CAB IS NULL THEN 0 ELSE P2DESC_CAB END )'
              
                '* CASE WHEN :NEW.P2T_TPPCO_CAB=3 THEN 0 ELSE P2DESC1 END) / 100)' +
                ' , 2)))*P2DESC2/100),2)))) *P2DESC3/100) ,2))'
              ',round(P2QTD*P2PRECO,2))'
              '   end -- terminou o case'
              ''
              ''
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2),'
              
                '        P2VALAPROXTRIB = round(CASE NVL(P2ALIQAPROXTRIB,0) WHEN ' +
                '0 THEN 0'
              
                '                        ELSE P2TOTLIQ * NVL(P2ALIQAPROXTRIB,0)/1' +
                '00 END,2)'
              ''
              ' where P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              'P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              'Update CADP02S set P2SDESCRAT=0,P2SACRECRAT=0 ,P2STOTDES='
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              ''
              'CASE WHEN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +TRUNC(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +TRUNC( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((TRUNC(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              '   else -- ira arredondar'
              'CASE WHEN'
              'P2SDESC_CAB IS NULL THEN 0'
              
                'ELSE P2SDESC_CAB END +  ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN ' +
                'P2SDESC_CAB IS NULL'
              'THEN 0'
              
                'ELSE P2SDESC_CAB END )  * P2SDESC1) / 100) , 2) +ROUND(((((P2SQT' +
                'D*P2SPRECO))-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END  )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2) +ROUND( ((((P2SQTD*P2' +
                'SPRECO)-CASE'
              
                'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-((ROUND(  ' +
                '((( (P2SQTD*P2SPRECO)-'
              
                ' CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END ) * P' +
                '2SDESC1) / 100) , 2))'
              
                ' +(ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN' +
                ' 0 ELSE P2SDESC_CAB'
              'END)-'
              
                ' (ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2)'
              ''
              '   end -- terminou o case'
              ''
              ''
              ',P2STOTLIQ='
              '    case when :NEW.P2T_ARRED=1 then  -- ira truncar tudo'
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              'END)-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+TRUNC(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+TRUNC( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(TRUNC(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(TRUNC(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              '   else -- ira arredondar'
              ''
              
                '((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2S' +
                'DESC_CAB'
              'END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                ' * P2SDESC1) / 100) , 2)+ROUND(((((P2SQTD*P2SPRECO)-CASE WHEN P2' +
                'SDESC_CAB IS NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END)-(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE' +
                ' WHEN P2SDESC_CAB IS'
              'NULL'
              
                'THEN 0 ELSE P2SDESC_CAB END ) * P2SDESC1) / 100) , 2)))*P2SDESC2' +
                '/100),2)'
              
                '+ROUND( ((((P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THEN ' +
                '0 ELSE P2SDESC_CAB'
              'END)-'
              
                '((ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL TH' +
                'EN 0 ELSE P2SDESC_CAB'
              'END ) * P2SDESC1) / 100) , 2))+(ROUND(((((P2SQTD*P2SPRECO)-CASE'
              'WHEN P2SDESC_CAB IS NULL THEN 0 ELSE P2SDESC_CAB END)-'
              
                '(ROUND(  ((( (P2SQTD*P2SPRECO)-CASE WHEN P2SDESC_CAB IS NULL THE' +
                'N 0 ELSE P2SDESC_CAB'
              'END )'
              
                '* P2SDESC1) / 100) , 2)))*P2SDESC2/100),2)))) *NVL(P2SDESC3,0)/1' +
                '00) ,2))'
              '   end -- terminou o case'
              ''
              ''
              
                'where P2SCODEMP=:NEW.P2T_CODEMP  and P2SCHAVE=:NEW.P2T_CHAVE  an' +
                'd'
              'P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              
                'Select sum(NVL(P2TOTLIQ,round(P2QTD*P2PRECO,2))) into  mTotMer f' +
                'rom CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              ''
              ''
              'mTotalPed :=0;'
              'Select sum(P2STOTLIQ) into mTotSer from CADP02S WHERE'
              '                                  P2SCODEMP=:NEW.P2T_CODEMP'
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              ''
              'if mTotMer is null then'
              '   mTotMer:=0;'
              'end if;'
              ''
              'if mTotSer is null then'
              '   mTotSer:=0;'
              'end if;'
              ''
              ''
              'if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              '   if mTotMer>0 then'
              '      mTotalPed := mtotalPed + mTotMer;'
              '   end if;'
              '   if mTotSer>0 then'
              '      mTotalPed := mtotalPed + mTotSer;'
              '   end if;'
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'TOTALPED '#39' || mtotal' +
                'ped || '#39' totmer '#39' || mtotmer || '#39' totser '#39' || mtotser || '#39' tipo ' +
                #39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz)' +
                ';'
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 THEN'
              '      mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/mTotalPed;'
              ''
              '      if mTotMer>0 then'
              '         Update CADP02 set P2DESCRAT='
              
                '                                 TRUNC(((P2TOTLIQ*mPercRat)/100)' +
                ',2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      if mTotSer>0 then'
              '         Update CADP02S set P2SDESCRAT='
              
                '                                 TRUNC(((P2STOTLIQ*mPercRat)/100' +
                '),2)'
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      if mTotMer>0 then'
              '         Select sum(P2DESCRAT) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      if mTotSer>0 then'
              '         Select sum(P2SDESCRAT) into mQtdxPreco from CADP02S'
              '                                 where P2SCODEMP=:NEW.P2T_CODEMP'
              '                                 and P2SCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P2SLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              
                '                                 and (P2SSITUACAO<>1 OR P2SSITUA' +
                'CAO is null);'
              '      end if;'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_DESCRAT-mDifDup;'
              '      if mDifDup!=0 then'
              '         if mTotMer>0 then'
              
                '            SELECT P2ITEM into mItemPed FROM (select p2item from' +
                ' CADP02'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '            order by P2TOTLIQ DESC'
              '            ) WHERE ROWNUM <2;'
              '            Update CADP02 set P2DESCRAT=P2DESCRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         else'
              
                '            select P2SITEM into mItemPed FROM (select p2sitem fr' +
                'om CADP02S'
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null)'
              '            order by P2STOTLIQ DESC'
              '            ) where ROWNUM<2 ;'
              '            Update CADP02S set P2SDESCRAT=P2SDESCRAT+mDifDup'
              '            where P2SCODEMP=:NEW.P2T_CODEMP'
              '            and P2SCHAVE=:NEW.P2T_CHAVE'
              '            and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2SITEM=mItemPed'
              '            and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '      end if;'
              '      Update CADP02 set  P2TOTDES=P2TOTDES+P2DESCRAT'
              
                '                                    ,P2TOTLIQ=P2TOTLIQ-nvl(P2DES' +
                'CRAT,0)'
              
                '                                    ,P2VCOMIS=ROUND(P2TOTLIQ*P2P' +
                'COMIS/100,2)'
              '      where P2CODEMP=:NEW.P2T_CODEMP'
              '      and P2CHAVE=:NEW.P2T_CHAVE'
              '      and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '      Update CADP02S set P2STOTDES=P2STOTDES+P2SDESCRAT'
              
                '                                    , P2STOTLIQ=P2STOTLIQ-P2SDES' +
                'CRAT'
              '      where P2SCODEMP=:NEW.P2T_CODEMP'
              '      and P2SCHAVE=:NEW.P2T_CHAVE'
              '      and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and (P2SSITUACAO<>1 OR P2SSITUACAO is null);'
              '   ELSE'
              '      if :NEW.P2T_PED1_ACRERAT>0 THEN'
              '         mPercRat:=(:NEW.P2T_PED1_DESCRAT*100)/mTotalPed;'
              '         Update CADP02 set P2ACRERAT='
              
                '                                TRUNC(((P2TOTLIQ*mPercRat)/100),' +
                '2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              ''
              '         Select sum(P2ACRERAT) into mDifDup from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '         mDifDup:=:NEW.P2T_PED1_ACRERAT-mDifDup;'
              '         if mDifDup!=0 THEN'
              
                '            Select P2ITEM into mItemPed FROM ( select p2item fro' +
                'm CADP02'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '            order by P2TOTLIQ DESC'
              '            ) where ROWNUM<2;'
              '            Update CADP02 set P2ACRERAT=P2ACRERAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '            mDifDup:=0;'
              '         end if;'
              '         Update CADP02 set P2TOTLIQ=P2TOTLIQ+nvl(P2ACRERAT,0)'
              
                '                                  ,P2VCOMIS=ROUND(P2TOTLIQ*P2PCO' +
                'MIS/100,2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      END IF;'
              '   end if;'
              'end if;'
              ''
              ''
              ''
              'if :NEW.P2T_PED1_VALSEG>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALSEG*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                          ,P2VSEGRAT_BCICMS=  TRUNC(((P2TOTLIQ*m' +
                'PercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VSEGRAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VSEGRAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALSEG-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              '         if :NEW.P2T_PED1_ICMS_VALSEG_ALIQ>0 then'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            ,P2VSEGRAT_BCICMS=P2VSEGRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VSEGRAT=P2VSEGRAT+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              '         mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'if :NEW.P2T_PED1_VALFRE>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(:NEW.P2T_PED1_VALFRE*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              
                '                             ,P2VFRERAT_BCICMS=  TRUNC(((P2TOTLI' +
                'Q*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VFRERAT=  TRUNC(((P2TOTLIQ*mPercRat' +
                ')/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              '      Select sum(nvl(P2VFRERAT,0)) into mQtdxPreco from CADP02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=:NEW.P2T_PED1_VALFRE-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_VALFRE_ALIQ>0 then'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               ,P2VFRERAT_BCICMS=P2VFRERAT_BCICMS+mDifDup'
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              '            Update CADP02 set P2VFRERAT=P2VFRERAT+mDifDup'
              '               where P2CODEMP=:NEW.P2T_CODEMP'
              '               and P2CHAVE=:NEW.P2T_CHAVE'
              '               and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2ITEM=mItemPed'
              '               and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         end if;'
              ''
              '        mDifDup:=0;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              ' mTotalout:=:NEW.P2T_PED1_DESPACES+:NEW.P2T_PED1_TARBAN;'
              '-- mTotalout:=:NEW.P2T_PED1_DESPACES;'
              ''
              'if :NEW.P2T_NF_IMP='#39'S'#39' then'
              
                '   mTotalout:=:NEW.P2T_RECDA+:NEW.P2T_RECHONORARIOS+:NEW.P2T_REC' +
                'ARMAZENAGEM;'
              '   end if;'
              ''
              'if mtotalout>0 then'
              '   if mTotMer>0 then'
              '      mPercRat:=(mtotalout*100)/mTotMer;'
              '      if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              
                '                          ,P2VDESPACESRAT_BCICMS=  TRUNC(((P2TOT' +
                'LIQ*mPercRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      else'
              
                '         Update CADP02 set P2VDESPACESRAT=  TRUNC(((P2TOTLIQ*mPe' +
                'rcRat)/100),2)'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                 and (P2SITUACAO<>1 OR P2SITUACA' +
                'O is null);'
              '      end if;'
              '      mQtdxPreco := 0;'
              '      mDifDup := 0;'
              ''
              
                '      Select sum(nvl(P2VDESPACESRAT,0)) into mQtdxPreco from CAD' +
                'P02'
              '                                 where P2CODEMP=:NEW.P2T_CODEMP'
              '                                 and P2CHAVE=:NEW.P2T_CHAVE'
              '                                 and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                                and (P2SITUACAO<>1 OR P2SITUACAO' +
                ' is null);'
              '      if mQtdxPreco>0 then'
              '         mdifdup:=mdifdup+mQtdxPreco;'
              '      end if;'
              '      mDifDup:=(mtotalout)-mDifDup;'
              '      if mDifDup!=0 then'
              
                '         SELECT P2ITEM into mItemPed FROM (select p2item from CA' +
                'DP02'
              '         where P2CODEMP=:NEW.P2T_CODEMP'
              '         and P2CHAVE=:NEW.P2T_CHAVE'
              '         and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and (P2SITUACAO<>1 OR P2SITUACAO is null)'
              '         order by P2TOTLIQ DESC'
              '         ) WHERE ROWNUM <2;'
              ''
              '         if :NEW.P2T_PED1_ICMS_OUTDESP_ALIQ>0 then'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            ,P2VDESPACESRAT_BCICMS=P2VDESPACESRAT_BCICMS+mDifDup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '         else'
              
                '            Update CADP02 set P2VDESPACESRAT=P2VDESPACESRAT+mDif' +
                'Dup'
              '            where P2CODEMP=:NEW.P2T_CODEMP'
              '            and P2CHAVE=:NEW.P2T_CHAVE'
              '            and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2ITEM=mItemPed'
              '            and (P2SITUACAO<>1 OR P2SITUACAO is null);'
              '          end if;'
              '          mDifDup:=0;'
              ''
              ''
              '      end if;'
              '   end if;'
              'end if;'
              ''
              ''
              'UPDATE CADP02S SET'
              'P2SBCISSQN=P2STOTLIQ,'
              'P2SVISSQN=round( ((P2STOTLIQ*P2SALIQ)/100),2) ,'
              'P2SVCOMIS=round( ((P2STOTLIQ*P2SPCOMIS)/100),2) ,'
              'P2SVDESCF=round( ((P2STOTLIQ*P2SPDESCF)/100),2) ,'
              'P2SBCINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100),2) END ,'
              'P2SVINSS=CASE P2SALIQINSS WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDINSS)/100) *P2SALIQINS' +
                'S/100),2) END,'
              ''
              'P2SBCIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              'ELSE ROUND( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100),2) END ,'
              'P2SVIRRF=CASE P2SALIQIRRF WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (P2STOTLIQ-(P2STOTLIQ*P2SREDIRRF)/100) *P2SALIQIRR' +
                'F/100),2) END'
              'where P2SCODEMP=:NEW.P2T_CODEMP'
              'and P2SCHAVE=:NEW.P2T_CHAVE'
              'and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              ''
              'P2VICMSDES = CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              'P2TOTDES = P2TOTDES + CASE nvl(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END,'
              'P2TOTLIQ = P2TOTLIQ - CASE NVL(P2ALIQICMSDES,0) WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *NVL(' +
                'P2ALIQICMSDES,0)/100),2) END'
              ''
              'where P2CODEMP=:NEW.P2T_CODEMP'
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              ''
              ''
              ''
              ''
              'UPDATE CADP02 SET'
              
                'P2IMP_IMP_VII=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISC' +
                'OFINS_VBC_IMP * P2IMP_IMP_ALIQ / 100) ,2) else P2IMP_IMP_VII end'
              
                ',P2VALPIS=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISCOFIN' +
                'S_VBC_IMP * P2ALPIS / 100) ,2) else round( ((P2TOTLIQ*P2ALPIS)/1' +
                '00),2) end'
              
                ',P2COFINS=case when :NEW.P2T_NF_IMP='#39'S'#39' then  round( (P2PISCOFIN' +
                'S_VBC_IMP * P2ALCOFINS / 100) ,2) else round( ((P2TOTLIQ*P2ALCOF' +
                'INS)/100),2) end'
              
                ',P2PIS_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then P2PISCOFINS_VBC_IM' +
                'P  else P2TOTLIQ end'
              
                ',P2COFINS_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then P2PISCOFINS_VBC' +
                '_IMP  else P2TOTLIQ end'
              ',P2IPI_VBC=case when :NEW.P2T_NF_IMP='#39'S'#39' then'
              
                '          P2PISCOFINS_VBC_IMP +round( (P2PISCOFINS_VBC_IMP * P2I' +
                'MP_IMP_ALIQ / 100) ,2)'
              '           else P2TOTLIQ end'
              ''
              ',P2VALIPI=round( (case when :NEW.P2T_NF_IMP='#39'S'#39' then'
              
                '          (P2PISCOFINS_VBC_IMP +round( (P2PISCOFINS_VBC_IMP * P2' +
                'IMP_IMP_ALIQ / 100) ,2))*P2ALIPI/100'
              '           else P2TOTLIQ*P2ALIPI/100 end),2)'
              ''
              ''
              ''
              ',P2VDESCF=round( ((P2TOTLIQ*P2PDESCF)/100),2) ,'
              'P2TOTOUT=CASE P2ALIQ WHEN 0 THEN 0'
              'ELSE ROUND( ((P2TOTLIQ*P2REDUTICM)/100),2) END ,'
              'P2BASEN= CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+' +
                'P2VFRERAT_BCICMS)   +CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TO' +
                'TLIQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100),2) ' +
                'END ,'
              ''
              ''
              'P2ICMSN=CASE P2ALIQ WHEN 0 THEN 0'
              
                'ELSE ROUND( ( (((P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS' +
                '+P2VFRERAT_BCICMS)+CASE WHEN P2ICMS_ALIPI>0 THEN round( ((P2TOTL' +
                'IQ*P2ALIPI)/100),2) ELSE 0 END)-(P2TOTLIQ*P2REDUTICM)/100) *P2AL' +
                'IQ/100),2) END,'
              ''
              'P2VLRICMS_SN=CASE P2PCRED_SN WHEN 0 THEN 0 ELSE'
              
                'ROUND( (( (P2TOTLIQ+P2VSEGRAT_BCICMS+P2VDESPACESRAT_BCICMS+P2VFR' +
                'ERAT_BCICMS)  *P2PCRED_SN)/100),2) END ,'
              
                'P2BASER=  case when (p2st_icmcred+p2st_icmdeb) <=0 then 0 else C' +
                'ASE P2MODBCST WHEN  4 THEN'
              '   ROUND(  (P2TOTLIQ+P2TOTDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '    * ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_IVA)/1' +
                '00)'
              
                '  * ( (CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST_REDUT)/' +
                '100) , 2)  WHEN 0'
              '   THEN ROUND( (P2QTD*P2PCOMAX)'
              
                '   *((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST_REDUT)/1' +
                '00),2)'
              '   ELSE 0 END  end'
              
                '   , P2ICMSR= CASE WHEN (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P' +
                '2TOTDES+((P2TOTLIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              
                '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) <=0 THEN' +
                ' 0'
              '         ELSE'
              
                '         (ROUND((P2ST_ICMDEB *(  (    (P2TOTLIQ+P2TOTDES+((P2TOT' +
                'LIQ*P2ALIPI)/100))'
              
                '         *  ((CASE P2ST_IVA WHEN 0 THEN 100 ELSE 100 END + P2ST_' +
                'IVA)/100)'
              
                '         *   ((CASE P2ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2ST' +
                '_REDUT)/100) )) / 100 ),2)'
              '         -ROUND( ((P2TOTLIQ * P2ST_ICMCRED) / 100) ,2)) END'
              ''
              
                '--  , P2TOTLIQ= P2TOTLIQ + CASE WHEN ROUND((((nvl(P2ST_ICMDEB,0)' +
                ' *((nvl(P2TOTLIQ,0)+nvl(P2TOTDES,0)+((nvl(P2TOTLIQ,0)*nvl(P2ALIP' +
                'I,0))/100))'
              
                '--         *  ((CASE nvl(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 EN' +
                'D + nvl(P2ST_IVA,0))/100)'
              
                '--         *   ((CASE nvl(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100' +
                ' END-nvl(P2ST_REDUT,0))/100) )) / 100 )) ,2)'
              
                '--         -ROUND( ((nvl(P2TOTLIQ,0) * nvl(P2ST_ICMCRED,0)) / 10' +
                '0) ,2) <= 0 THEN 0'
              
                '--         ELSE ROUND((((nvl(P2ST_ICMDEB,0) *((nvl(P2TOTLIQ,0)+n' +
                'vl(P2TOTDES,0)+((nvl(P2TOTLIQ,0)*nvl(P2ALIPI,0))/100))'
              
                '--         *  ((CASE nvl(P2ST_IVA,0) WHEN 0 THEN 100 ELSE 100 EN' +
                'D + nvl(P2ST_IVA,0))/100)'
              
                '--         *   ((CASE nvl(P2ST_REDUT,0) WHEN 0 THEN 100 ELSE 100' +
                ' END-nvl(P2ST_REDUT,0))/100) )) / 100 )) ,2)'
              
                '--         -ROUND( ((nvl(P2TOTLIQ,0) * nvl(P2ST_ICMCRED,0)) / 10' +
                '0) ,2) END'
              ''
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              '-- lindomais'
              'if :NEW.P2T_NF_IMP='#39'S'#39' then'
              '   UPDATE CADP02 SET'
              ' --  P2VDESPACESRAT=P2VDESPACESRAT+'
              '--             P2IMP_IMP_VII'
              '--             +P2VALPIS'
              '--             +P2COFINS,'
              '         P2BASEN=ROUND( (P2PISCOFINS_VBC_IMP+'
              '                  P2VDESPACESRAT'
              '                  +P2IMP_IMP_VII'
              '                  +P2VALPIS'
              '                  +P2COFINS'
              '                 +P2VALIPI)/(1 -  (P2ALIQ/100)) ,2)'
              ''
              '         ,P2ICMSN=ROUND( ( ROUND( (P2PISCOFINS_VBC_IMP+'
              '                  (P2VDESPACESRAT)'
              '                  +P2IMP_IMP_VII'
              '                  +P2VALPIS'
              '                  +P2COFINS'
              
                '                 +P2VALIPI)/(1 -  (P2ALIQ/100)),2)*P2ALIQ/100) ,' +
                '2)'
              ''
              ''
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              '   end if;'
              ''
              ''
              ''
              
                'UPDATE CADP02 SET P2VCOMIS=round(P2TOTLIQ*P2PCOMIS/100,2) where ' +
                'P2CODEMP=:NEW.P2T_CODEMP  and P2CHAVE=:NEW.P2T_CHAVE  and'
              '        P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              'if (:NEW.P2T_ST_ICMSDEB=0) THEN'
              '   UPDATE CADP02 SET P2BASER=0,P2ICMSR=0'
              '   where P2CODEMP=:NEW.P2T_CODEMP'
              '   and P2CHAVE=:NEW.P2T_CHAVE'
              '   and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '   and P2ITEM=:NEW.P2T_ITEM;'
              '   END IF;'
              ''
              ''
              'mTotalPed := 0;'
              'mTotalBCIcms:=0;'
              'mTotalBCST:=0;'
              'mTotalPIS:=0;'
              'mTotalCOFINS:=0;'
              'mTotalICMSR:=0;'
              'mTotalCOMIS:=0;'
              'mTotalIcms:=0;'
              'mTotalIcmsDes:=0;'
              'mTotalValAproxTrib:=0;'
              ''
              'mTotalDesc_Prod:=0;'
              'mTotalDesc_Serv:=0;'
              'mTotalDescRat_Prod:=0;'
              'mTotalDescRat_Serv:=0;'
              'mTotDescFin_prod:=0;'
              'mTotDescFin_serv:=0;'
              'mTotIPI:=0;'
              
                'Select sum(P2VALPIS), sum(P2COFINS),  sum(NVL(P2TOTLIQ,round(P2Q' +
                'TD*P2PRECO,2))),sum(P2VCOMIS),sum(P2QTD*P2PRECO)'
              
                ',sum(P2VICMSDES),sum(P2VALAPROXTRIB),sum(P2BASEN),sum(P2BASER),s' +
                'um(P2ICMSR),sum(P2ICMSN),sum(P2TOTDES)'
              ',sum(P2VALIPI),sum(P2DESCRAT)'
              ',sum(NVL(P2VDESCF,0))'
              ',sum(NVL(P2IMP_IMP_VII,0))'
              ''
              ',sum(NVL(P2VALPIS,0))'
              ',sum(NVL(P2COFINS,0))'
              ',sum(NVL(P2VALIPI,0))'
              ',sum(NVL(P2ICMSN,0))'
              ''
              ''
              ''
              ''
              ' into'
              
                'mTotalPIS,mTotalCOFINS,mQtdxPreco,mTotalCOMIS,mTotMer,mTotalIcms' +
                'Des,mTotalValAproxTrib,mTotalBCIcms,mTotalBCST'
              
                ',mTotalICMSR,MtotalICMS,mTotalDesc_Prod,mTotIPI,mTotalDescRat_Pr' +
                'od'
              ',mTotDescFin_prod'
              ', mimp_VII'
              ', mimp_VPIS'
              ', mimp_VCOFINS'
              ', mimp_VIPI'
              ', mimp_VICMS'
              ''
              ''
              ''
              ''
              ' from CADP02 WHERE'
              '                                  P2CODEMP=:NEW.P2T_CODEMP'
              '                              and P2CHAVE=:NEW.P2T_CHAVE'
              '                              and P2LOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SITUACAO<>1 OR P2SITUACAO i' +
                's null);'
              ''
              'if mTotMer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              'if NVL(:NEW.P2T_NF_IMP,'#39'N'#39')<>'#39'S'#39' then'
              '   mimp_VII:=0;'
              '   mimp_VPIS:=0;'
              '   mimp_VCOFINS:=0;'
              '   mimp_VIPI   :=0;'
              '   mimp_VICMS  :=0;'
              ''
              'end if;'
              ''
              ''
              'if mTotDescFin_prod is null then'
              '   mTotDescFin_prod:=0;'
              'end if;'
              ''
              
                'Select sum(P2STOTLIQ),sum(P2SQTD*P2SPRECO),sum(P2STOTDES),sum(P2' +
                'SDESCRAT),sum(NVL(P2SVDESCF,0)) into'
              
                '  mQtdxPreco,mTotSer,mTotalDesc_Serv,mTotalDescRat_Serv,mTotDesc' +
                'Fin_serv'
              '      from CADP02S'
              '  WHERE P2SCODEMP=:NEW.P2T_CODEMP'
              '                              and P2SCHAVE=:NEW.P2T_CHAVE'
              '                              and P2SLOTSEQ=:NEW.P2T_CHAVE_ANO'
              
                '                              and (P2SSITUACAO<>1 OR P2SSITUACAO' +
                ' is null);'
              'if mTotSer>0 then'
              '   mTotalPed := mtotalPed + mQtdxPreco;'
              'end if;'
              ''
              '         if mvalordup is null then'
              '            mvalordup:=0;'
              '            end if;'
              'mTotDescFin_prod:=mTotDescFin_prod+mTotDescFin_serv;'
              ''
              'if mTotDescFin_prod is null then'
              '   mTotDescFin_prod:=0;'
              'end if;'
              ''
              'if MTOTSER is null then'
              '   MTOTSER:=0;'
              'end if;'
              'if MTOTMER is null then'
              '   MTOTMER:=0;'
              'end if;'
              ''
              'if mTotalDesc_Prod is null then'
              '   mTotalDesc_Prod:=0;'
              'end if;'
              ''
              'if mTotalDesc_Serv is null then'
              '   mTotalDesc_Serv:=0;'
              'end if;'
              ''
              ''
              'if mTotalDescRat_Serv is null then'
              '   mTotalDescRat_Serv:=0;'
              'end if;'
              ''
              'if mTotalDescRat_Prod is null then'
              '   mTotalDescRat_Prod:=0;'
              'end if;'
              ''
              ''
              '/* INICIO DO CONTROLE ESPECIAL */'
              ''
              'if :NEW.P2T_CONTESP=1 THEN'
              
                '   Select sum(P2VSEGRAT), sum(P2VDESPACESRAT),sum(P2DESC_CAB),su' +
                'm(P2DESCRAT),sum(P2DESCRAT) ,sum(P2TOTDES),sum(P2REPAS),sum'
              
                '(P2BASEN),sum(P2ICMSN),sum(P2BASER),sum(P2ICMSR),sum(P2VALIPI),s' +
                'um(P2VLRICMS_SN)'
              '  into'
              
                'mTot_ped02_ValSeg,mTot_ped02_DespAces,mTot_Ped02_DescCab,mTot_Pe' +
                'd02_TotDescRat,mTot_ped02_TotAcrecRat,mTot_Ped02_Totdes'
              ',mTot_Ped02_ValRepas,mTot_ped02_Basen,'
              
                '    mTot_Ped02_Icmsn,mTot_Ped02_Baser,mTot_Ped02_Icmsr,mTot_Ped0' +
                '2_ValIPI,mTot_Ped02_ICMS_SN from CADP02'
              '       where P2CODEMP=:NEW.P2T_CODEMP and'
              '         P2CHAVE=:NEW.P2T_CHAVE and'
              '         P2LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              
                '   update CADP02_CMET set P2CM_PITEM_DESC1=:NEW.P2T_DESC_PERC01,' +
                'P2CM_PITEM_DESC2=:NEW.P2T_DESC_PERC02'
              '                         ,P2CM_PITEM_DESC3=:NEW.P2T_DESC_PERC03'
              '                         ,P2CM_PITEM_PALIQ=:NEW.P2T_ICMS_PERC'
              '                         ,P2CM_PITEM_REDUTICM=:NEW.P2T_ICMS_PRED'
              '                         ,P2CM_PITEM_PREPAS=:NEW.P2T_ICMS_PRED'
              '                         ,P2CM_PITEM_PALIPI=:NEW.P2T_IPI_PERC'
              '                         ,P2CM_PITEM_PALPIS=:NEW.P2T_PIS_PERC'
              
                '                         ,P2CM_PITEM_PDESCF=:NEW.P2T_DESCFIN_PER' +
                'C'
              '                         ,P2CM_PITEM_ST_REDUT=:NEW.P2T_ST_PREDUT'
              
                '                         ,P2CM_PITEM_ST_ICMCRED=:NEW.P2T_ST_ICMS' +
                'CRED'
              
                '                         ,P2CM_PITEM_ST_ICMDEB=:NEW.P2T_ST_ICMSD' +
                'EB'
              '                         ,P2CM_PITEM_MODBCST=:NEW.P2T_MODBCST'
              '                         ,P2CM_PITEM_ST_IVA=:NEW.P2T_ST_IVA'
              
                '                         ,P2CM_PITEM_PCREDSN=:NEW.P2T_ICMSSN_PER' +
                'C'
              '                         ,P2CM_PITEM_CFOP=:NEW.P2T_CFOP'
              
                '                         ,P2CM_PITEM_CSOSN_ORI=:NEW.P2T_CSOSN_OR' +
                'I'
              '                         ,P2CM_PITEM_CSOSN=:NEW.P2T_CSOSN'
              '                         ,P2CM_PITEM_CST_ICMS=:NEW.P2T_CST'
              '                         ,P2CM_PITEM_CST_PIS=:NEW.P2T_PIS_CST'
              
                '                         ,P2CM_PITEM_CST_COFINS=:NEW.P2T_COFINS_' +
                'CST'
              
                '                         ,P2CM_PITEM_PALCOFINS=:NEW.P2T_COFINS_P' +
                'ERC'
              '                         ,P2CM_PITEM_CST_IPI=:NEW.P2T_IPI_CST'
              
                '                         ,P2CM_PITEM_PERCITEM=(P2CM_QTD_KG*100) ' +
                '/ :NEW.P2T_QTD'
              
                '                         ,P2CM_PITEM_PCOMAX=:NEW.P2T_PRECO_MAXCO' +
                'NS'
              '                         ,P2CM_PITEM_TOTDES=0'
              '                         ,P2CM_PITEM_VALDES=0'
              '                         ,P2CM_PITEM_BASEN=0'
              '                         ,P2CM_PITEM_ICMSN=0'
              '                         ,P2CM_PITEM_VREPAS=0'
              '                         ,P2CM_PITEM_BASER=0'
              '                         ,P2CM_PITEM_ICMSR=0'
              '                         ,P2CM_PITEM_VALIPI=0'
              '                         ,P2CM_PITEM_VLRICMS_SN=0'
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '   SELECT P2CM_CODIGO into mItemPed FROM (select P2CM_CODIGO fro' +
                'm CADP02_CMET'
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '   and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '   and P2CM_ITEM=:NEW.P2T_ITEM'
              '   order by (P2CM_QTD_KG*P2CM_PITEM_PRECO) DESC'
              '   ) WHERE ROWNUM <2;'
              ''
              '   if :NEW.P2T_DESC_VALOR<>0 then'
              
                '      update CADP02_CMET set P2CM_PITEM_VALDES=ROUND( (P2CM_PITE' +
                'M_PERCITEM*:NEW.P2T_DESC_VALOR/100) , 2)'
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              '      Select sum(P2CM_PITEM_VALDES) into  mValorTemp'
              '         from CADP02_CMET'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              '      if mValorTemp<>:NEW.P2T_DESC_VALOR then'
              '         mDifTemp:=:NEW.P2T_DESC_VALOR-mValorTemp;'
              
                '         Update CADP02_CMET set P2CM_PITEM_VALDES=P2CM_PITEM_VAL' +
                'DES+mDifTemp'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2CM_CODIGO=mItemPed'
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              '         end if;'
              ''
              ''
              '      end if;'
              ''
              
                '   if :NEW.P2T_PED1_DESC_PERC01!= :NEW.P2T_PED1_DESC_PERC01_ANT ' +
                'OR'
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC02_ANT ' +
                'OR'
              
                '      :NEW.P2T_PED1_DESC_PERC02!= :NEW.P2T_PED1_DESC_PERC03_ANT ' +
                'THEN'
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=ROUND(  ((( ((P' +
                '2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                      +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-' +
                'NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC02) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC01/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2),'
              
                '                        P2CM_PITEM_TOTLIQ= ((P2CM_QTD_KG*P2CM_PI' +
                'TEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)'
              
                '                        +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO' +
                ')-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)+ROUND' +
                '( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0)))'
              
                '                        -((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_' +
                'PRECO)-NVL(P2CM_PITEM_VALDES,0)) ) * :NEW.P2T_PED1_DESC_PERC01) ' +
                '/ 100) , 2))'
              
                '                        +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PREC' +
                'O)-NVL(P2CM_PITEM_VALDES,0)))-(ROUND(  ((('
              '((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)) ) *'
              '      :NEW.P2T_PED1_DESC_PERC01) / 100) , 2)))'
              
                '                        *:NEW.P2T_PED1_DESC_PERC02/100),2)))) *:' +
                'NEW.P2T_PED1_DESC_PERC03/100) ,2))'
              
                '                        where P2CM_CODEMP=:NEW.P2T_CODEMP  and P' +
                '2CM_CHAVE=:NEW.P2T_CHAVE  and'
              
                '      P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO AND P2CM_ITEM=:NEW.P2T_ITEM' +
                ';'
              ''
              ''
              ''
              ''
              
                '      Select sum(P2CM_PITEM_DESC_CAB) into mValorTemp from CADP0' +
                '2_CMET'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              '      if mValorTemp<>mTot_Ped02_TotDescRat then'
              '         mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              
                '         Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_D' +
                'ESC_CAB+mDifTemp'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '            and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '            and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '            and P2CM_CODIGO=mItemPed'
              '            and P2CM_ITEM=:NEW.P2T_ITEM;'
              '         end if;'
              '      end if;'
              ''
              
                '   Update CADP02_CMET set P2CM_PITEM_DESCRAT=0,P2CM_PITEM_ACRECR' +
                'AT=0 ,P2CM_PITEM_TOTDES=NVL(P2CM_PITEM_VALDES,0)+ CASE'
              'WHEN'
              '   P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              
                '   ELSE P2CM_PITEM_DESC_CAB END +  ROUND(  ((( ((P2CM_QTD_KG*P2C' +
                'M_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              'P2CM_PITEM_DESC_CAB IS NULL THEN 0'
              
                '   ELSE P2CM_PITEM_DESC_CAB END )  * P2CM_PITEM_DESC1) / 100) , ' +
                '2) +ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0)))-'
              
                '  (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END  )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2) +R' +
                'OUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0))-'
              'CASE'
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL'
              '(P2CM_PITEM_VALDES,0))-'
              
                '    CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM' +
                '_DESC_CAB END ) * P2CM_PITEM_DESC1) / 100) , 2))'
              
                '    +(ROUND((((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VA' +
                'LDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END)-'
              
                '    (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2)'
              
                '   ,P2CM_PITEM_TOTLIQ=(((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_' +
                'PITEM_VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL'
              'THEN'
              '0 ELSE P2CM_PITEM_DESC_CAB END)-'
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END )'
              
                '    * P2CM_PITEM_DESC1) / 100) , 2)+ROUND((((((P2CM_QTD_KG*P2CM_' +
                'PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              'P2CM_PITEM_DESC_CAB IS NULL'
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END)-(ROUND(  ((( ((P2CM_QTD_' +
                'KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE WHEN'
              'P2CM_PITEM_DESC_CAB IS NULL'
              
                '   THEN 0 ELSE P2CM_PITEM_DESC_CAB END ) * P2CM_PITEM_DESC1) / 1' +
                '00) , 2)))*P2CM_PITEM_DESC2/100),2)'
              
                '   +ROUND( (((((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VAL' +
                'DES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END)-'
              
                '   ((ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_' +
                'VALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB'
              
                '   END ) * P2CM_PITEM_DESC1) / 100) , 2))+(ROUND((((((P2CM_QTD_K' +
                'G*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_VALDES,0))-CASE'
              
                '   WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE P2CM_PITEM_DESC_' +
                'CAB END)-'
              
                '   (ROUND(  ((( ((P2CM_QTD_KG*P2CM_PITEM_PRECO)-NVL(P2CM_PITEM_V' +
                'ALDES,0))-CASE WHEN P2CM_PITEM_DESC_CAB IS NULL THEN 0 ELSE'
              'P2CM_PITEM_DESC_CAB END )'
              
                '   * P2CM_PITEM_DESC1) / 100) , 2)))*P2CM_PITEM_DESC2/100),2))))' +
                ' *P2CM_PITEM_DESC3/100) ,2))'
              
                '   where P2CM_CODEMP=:NEW.P2T_CODEMP  and P2CM_CHAVE=:NEW.P2T_CH' +
                'AVE  and'
              '   P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              
                '   Select sum(P2CM_PITEM_TOTDES) into mValorTemp from CADP02_CME' +
                'T'
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '         P2CM_ITEM=:NEW.P2T_ITEM;'
              '   if mValorTemp<>mTot_Ped02_TotDes then'
              '      mDifTemp:=mTot_Ped02_TotDes-mValorTemp;'
              
                '      Update CADP02_CMET set P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES' +
                '+mDifTemp'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '         and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '         and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '         and P2CM_CODIGO=mItemPed'
              '         and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              '   if :NEW.P2T_PED1_DESCRAT>0 OR :NEW.P2T_PED1_ACRERAT>0 THEN'
              '      if mTot_ped02_TotDescRat>0 then'
              
                '         update CADP02_CMET set P2CM_PITEM_DESCRAT=ROUND( (P2CM_' +
                'PITEM_PERCITEM*mTot_Ped02_TotDescRat/100) , 2)'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '         Select sum(P2CM_PITEM_DESCRAT) into  mValorTemp from CA' +
                'DP02_CMET'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              '         if mValorTemp<>mTot_Ped02_TotDescRat then'
              '            mDifTemp:=mTot_Ped02_TotDescRat-mValorTemp;'
              
                '            Update CADP02_CMET set P2CM_PITEM_DESCRAT=P2CM_PITEM' +
                '_DESCRAT+mTot_Ped02_TotDescRat'
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2CM_CODIGO=mItemPed'
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              '            end if;'
              '         end if;'
              ''
              '      if mTot_ped02_TotAcrecRat>0 then'
              
                '         update CADP02_CMET set P2CM_PITEM_ACRECRAT=ROUND( (P2CM' +
                '_PITEM_PERCITEM*mTot_Ped02_TotAcrecRat/100) , 2)'
              '         where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '            P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '            P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '            P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              
                '         Select sum(P2CM_PITEM_ACRECRAT) into  mValorTemp FROM C' +
                'ADP02_CMET'
              '            where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '               P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '               P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '               P2CM_ITEM=:NEW.P2T_ITEM;'
              '         if mValorTemp<>mTot_Ped02_TotAcrecRat then'
              '            mDifTemp:=mTot_Ped02_TotAcrecRat-mValorTemp;'
              
                '            Update CADP02_CMET set P2CM_PITEM_ACRECRAT=P2CM_PITE' +
                'M_ACRECRAT+mTot_Ped02_TotAcrecRat'
              '               where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '               and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '               and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '               and P2CM_CODIGO=mItemPed'
              '               and P2CM_ITEM=:NEW.P2T_ITEM;'
              '            end if;'
              '         end if;'
              ''
              
                '      Update CADP02_CMET set  P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDE' +
                'S+P2CM_PITEM_DESCRAT'
              
                '                                    , P2CM_PITEM_TOTLIQ=P2CM_PIT' +
                'EM_TOTLIQ-P2CM_PITEM_DESCRAT+P2CM_PITEM_ACRECRAT'
              ''
              '      where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '      and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '      and P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO'
              '      and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              ''
              ''
              '   UPDATE CADP02_CMET SET'
              
                '   P2CM_PITEM_COFINS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALCO' +
                'FINS)/100),2) ,'
              
                '   P2CM_PITEM_VALIPI=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALIP' +
                'I)/100),2) ,'
              
                '   P2CM_PITEM_VALPIS=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PALPI' +
                'S)/100),2) ,'
              
                '   P2CM_PITEM_VDESCF=round( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PDESC' +
                'F)/100),2) ,'
              '   P2CM_PITEM_TOTOUT=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_REDUTICM)/100),2) ' +
                'END ,'
              '   P2CM_PITEM_BASEN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITEM_' +
                'REDUTICM)/100),2) END ,'
              ''
              '   P2CM_PITEM_ICMSN=CASE P2CM_PITEM_PALIQ WHEN 0 THEN 0'
              
                '   ELSE ROUND( ( (P2CM_PITEM_TOTLIQ-(P2CM_PITEM_TOTLIQ*P2CM_PITE' +
                'M_REDUTICM)/100) *P2CM_PITEM_PALIQ/100),2) END,'
              ''
              
                '   P2CM_PITEM_VLRICMS_SN=CASE P2CM_PITEM_PCREDSN WHEN 0 THEN 0 E' +
                'LSE'
              '   ROUND( ((P2CM_PITEM_TOTLIQ*P2CM_PITEM_PCREDSN)/100),2) END ,'
              ''
              '   P2CM_PITEM_BASER= CASE P2CM_PITEM_MODBCST WHEN  4 THEN'
              '      ROUND(  (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '       * ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100 END +' +
                ' P2CM_PITEM_ST_IVA)/100)'
              
                '     * ( (CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-' +
                'P2CM_PITEM_ST_REDUT)/100) , 2)  WHEN 0'
              '   THEN ROUND( (P2CM_QTD_KG*P2CM_PITEM_PCOMAX)'
              
                '   *((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE 100 END-P2CM' +
                '_PITEM_ST_REDUT)/100),2)'
              '   ELSE 0 END'
              
                '   , P2CM_PITEM_ICMSR=ROUND((P2CM_PITEM_ST_ICMDEB *(  (    (P2CM' +
                '_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 ),2)'
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              
                '   , P2CM_PITEM_TOTLIQ=ROUND(  (P2CM_PITEM_TOTLIQ+((P2CM_PITEM_S' +
                'T_ICMDEB *(    (P2CM_PITEM_TOTLIQ+P2CM_PITEM_TOTDES)'
              
                '            *  ((CASE P2CM_PITEM_ST_IVA WHEN 0 THEN 100 ELSE 100' +
                ' END + P2CM_PITEM_ST_IVA)/100)'
              
                '            *   ((CASE P2CM_PITEM_ST_REDUT WHEN 0 THEN 100 ELSE ' +
                '100 END-P2CM_PITEM_ST_REDUT)/100) )) / 100 )) ,2)'
              
                '            -ROUND( ((P2CM_PITEM_TOTLIQ * P2CM_PITEM_ST_ICMCRED)' +
                ' / 100) ,2)'
              ''
              '   where P2CM_CODEMP=:NEW.P2T_CODEMP'
              '   and P2CM_CHAVE=:NEW.P2T_CHAVE'
              '   and P2CM_LOTSEQ=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              '   if mtot_ped02_valseg<>0 then'
              '      Update CADP02_CMET set P2CM_PITEM_VALSEG ='
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_ValSeg' +
                '/100) , 2)'
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              ''
              '   if mtot_ped02_despaces<>0 then'
              '      Update CADP02_CMET set P2CM_PITEM_DESPACES ='
              
                '                   ROUND( (P2CM_PITEM_PERCITEM*mTot_Ped02_DespAc' +
                'es/100) , 2)'
              
                '                                    where P2CM_CODEMP=:NEW.P2T_C' +
                'ODEMP'
              
                '                                    and P2CM_CHAVE=:NEW.P2T_CHAV' +
                'E'
              
                '                                    and P2CM_LOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              '                                    and P2CM_ITEM=:NEW.P2T_ITEM;'
              '      end if;'
              ''
              
                '   Select sum(P2CM_PITEM_VALSEG), sum(P2CM_PITEM_DESPACES),sum(P' +
                '2CM_PITEM_DESC_CAB),sum(P2CM_PITEM_DESCRAT)'
              
                '   ,sum(P2CM_PITEM_ACRECRAT) ,sum(P2CM_PITEM_TOTDES) ,sum(P2CM_P' +
                'ITEM_PREPAS),sum(P2CM_PITEM_BASEN),sum(P2CM_PITEM_ICMSN)'
              
                '   ,sum(P2CM_PITEM_BASER),sum(P2CM_PITEM_ICMSR),sum(P2CM_PITEM_V' +
                'ALIPI),sum(P2CM_PITEM_VLRICMS_SN)'
              
                '    into  mTot_pitem_ValSeg       ,mTot_pitem_DespAces    ,mTot_' +
                'pItem_DescCab      ,mTot_pItem_TotDescRat,mTot_pItem_TotAcrecRat'
              ',mTot_pItem_Totdes'
              
                '  ,mTot_pItem_ValRepas   ,mTot_pItem_Basen     ,mTot_pItem_Icmsn' +
                '     ,mTot_pItem_Baser     ,mTot_pItem_Icmsr     ,mTot_pItem_Val' +
                'IPI'
              ',mTot_pItem_ICMS_SN from CADP02_CMET'
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2CM_ITEM=:NEW.P2T_ITEM;'
              ''
              ''
              ''
              
                '   mTot_Dif_DescCab    := mTot_Ped02_DescCab    -mTot_pItem_Desc' +
                'Cab;'
              
                '   mTot_Dif_TotDescRat := mTot_Ped02_TotDescRat -mTot_pItem_TotD' +
                'escRat;'
              
                '   mTot_Dif_TotAcrecRat:= mTot_Ped02_TotAcrecRat-mTot_pItem_TotA' +
                'crecRat;'
              
                '   mTot_Dif_DespAces   := mTot_Ped02_DespAces   - mTot_pItem_Des' +
                'pAces;'
              
                '   mTot_Dif_ValSeg     := mTot_Ped02_ValSeg     - mTot_pItem_Val' +
                'Seg;'
              
                '   mTot_Dif_TotDes     := mTot_Ped02_TotDes     - mTot_pItem_Tot' +
                'Des;'
              
                '   mTot_Dif_ValRepas   := mTot_Ped02_ValRepas   - mTot_pItem_Val' +
                'Repas;'
              
                '   mTot_Dif_Basen      := mTot_Ped02_Basen      - mTot_pItem_Bas' +
                'en;'
              
                '   mTot_Dif_Icmsn      := mTot_Ped02_Icmsn      - mTot_pItem_Icm' +
                'sn;'
              
                '   mTot_Dif_Icmsr      := mTot_Ped02_Icmsr      - mTot_pItem_Icm' +
                'sr;'
              
                '   mTot_Dif_Baser      := mTot_Ped02_Baser      - mTot_pItem_Bas' +
                'er;'
              
                '   mTot_Dif_ValIPI     := mTot_Ped02_ValIPI     - mTot_pItem_Val' +
                'IPI;'
              
                '   mTot_Dif_ICMS_SN    := mTot_Ped02_ICMS_SN    - mTot_pItem_ICM' +
                'S_SN;'
              ''
              '   if (mTot_Dif_DescCab<>0) or (mTot_Dif_TotDescRat<>0) or'
              '      (mTot_Dif_TotAcrecRat<>0) or (mTot_Dif_DespAces<>0) or'
              '      (mTot_Dif_ValSeg<>0) or (mTot_Dif_TotDes<>0) or'
              '      (mTot_Dif_ValRepas<>0) or (mTot_Dif_Basen<>0) or'
              '      (mTot_Dif_Icmsn<>0) or (mTot_Dif_Icmsr<>0) or'
              '      (mTot_Dif_Baser<>0) or (mTot_Dif_ValIPI<>0) or'
              '      (mTot_Dif_ICMS_SN<>0)  then'
              
                '      Update CADP02_CMET set P2CM_PITEM_DESC_CAB=P2CM_PITEM_DESC' +
                '_CAB+mTot_Dif_DescCab'
              
                '                          ,P2CM_PITEM_DESCRAT=P2CM_PITEM_DESCRAT' +
                '+mTot_Dif_TotDescRat'
              
                '                          ,P2CM_PITEM_DESPACES=P2CM_PITEM_DESPAC' +
                'ES+mTot_Dif_DespAces'
              
                '                          ,P2CM_PITEM_VALSEG=P2CM_PITEM_VALSEG+m' +
                'Tot_Dif_ValSeg'
              
                '                          ,P2CM_PITEM_TOTDES=P2CM_PITEM_TOTDES+m' +
                'Tot_Dif_TotDes'
              
                '                          ,P2CM_PITEM_PREPAS=P2CM_PITEM_PREPAS+m' +
                'Tot_Dif_ValRepas'
              
                '                          ,P2CM_PITEM_BASEN=P2CM_PITEM_BASEN+mTo' +
                't_Dif_Basen'
              
                '                          ,P2CM_PITEM_ICMSN=P2CM_PITEM_ICMSN+mTo' +
                't_Dif_Icmsn'
              
                '                          ,P2CM_PITEM_ICMSR=P2CM_PITEM_ICMSR+mTo' +
                't_Dif_Icmsr'
              
                '                          ,P2CM_PITEM_BASER=P2CM_PITEM_BASER+mTo' +
                't_Dif_Baser'
              
                '                          ,P2CM_PITEM_VALIPI=P2CM_PITEM_VALIPI+m' +
                'Tot_Dif_ValIPI'
              
                '                          ,P2CM_PITEM_VLRICMS_SN=P2CM_PITEM_VLRI' +
                'CMS_SN+mTot_Dif_ICMS_SN'
              
                '                          ,P2CM_PITEM_ACRECRAT=P2CM_PITEM_ACRECR' +
                'AT+mTot_Dif_TotAcrecRat'
              '       where P2CM_CODEMP=:NEW.P2T_CODEMP and'
              '         P2CM_CHAVE=:NEW.P2T_CHAVE and'
              '         P2CM_LOTSEQ=:NEW.P2T_CHAVE_ANO and'
              '          P2CM_ITEM=:NEW.P2T_ITEM'
              '          and P2CM_CODIGO=mItemPed;'
              '      end if;'
              '   end if;'
              ''
              ''
              ''
              ''
              '/* TERMINO DO CONTROLE ESPECIAL CMET */'
              ''
              ''
              'Select sum(P2VCOMIS) into mTotalCOMIS'
              'from CADP02'
              'WHERE P2CODEMP=:NEW.P2T_CODEMP'
              '  and P2CHAVE=:NEW.P2T_CHAVE'
              '  and P2LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              'update CADP01 set P1TOTALL='
              
                '                  nvl(:NEW.P2T_PED1_VALSEG,0)+nvl(:NEW.P2T_PED1_' +
                'TARBAN,0)'
              
                '                  +nvl(:NEW.P2T_PED1_VALFRE,0)+nvl(:NEW.P2T_PED1' +
                '_DESPACES,0)'
              '                  +nvl(mTotalPed,0)+nvl(mTotIPI,0)'
              '                  +nvl(mimp_VII,0)'
              '                  +nvl(mimp_VPIS,0)'
              '                  +nvl(mimp_VCOFINS,0)'
              '--                  +nvl(mimp_VIPI,0)'
              '                  +nvl(mimp_VICMS,0)'
              ''
              '--                  +NVL(mTotalICMSR,0)'
              '                  ,P1TOTALB=nvl(mTOTMER,0)+nvl(MTOTSER,0)'
              ''
              '                ,P1TOTSERLIQ=nvl(MTOTSER,0)'
              '                ,P1TOTVICMSDES=mTotalIcmsDes'
              '                ,P1TOTVALAPROXTRIB=mTotalValAproxTrib'
              '                ,P1COMIS=mTotalCOMIS'
              
                '                ,P1BASEN=mTotalBCICMS,p1ICMSN=mTotalICMS,P1TOTDE' +
                'S=mTotalDesc_Prod+mTotalDesc_Serv'
              '                ,P1BASER=mTotalBCST'
              '                ,P1TOTPIS=mTotalPIS'
              '                ,P1TOTCOFINS=mTotalCOFINS'
              '                ,P1DATHOR_UEVE=SYSDATE'
              '                ,P1ICMSR=NVL(mTotalICMSR,0)'
              '                ,P1VLRDES=mTotalDescRat_Prod+mTotalDescRat_Serv'
              '                ,P1IPIINA=mtotipi'
              '                ,P1VALSEG=:NEW.P2T_PED1_VALSEG'
              '                ,P1TARBAN=:NEW.P2T_PED1_TARBAN'
              '                ,P1DESPACES=:NEW.P2T_PED1_DESPACES'
              '                ,P1VALFRE=:NEW.P2T_PED1_VALFRE'
              '                ,P1ICMS_ALFRE=:NEW.P2T_PED1_ICMS_VALFRE_ALIQ'
              '                ,P1ICMS_ALSEG=:NEW.P2T_PED1_ICMS_VALSEG_ALIQ'
              '                ,P1ICMS_ALOUTD=:NEW.P2T_PED1_ICMS_OUTDESP_ALIQ'
              '                ,P1TRUNCARREND=:NEW.P2T_ARRED'
              
                '                ,P1COMIST=Round( (nvl((mTOTMER-mTotalDesc_Prod),' +
                '0)*:NEW.P2T_PCOMTEL/100) ,2)'
              '                ,P1IMP_COT_DOLLAR=:NEW.P2T_IMP_COT_DOLLAR'
              '                ,P1NF_IMP=:NEW.P2T_NF_IMP'
              ''
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              ''
              ''
              'BEGIN'
              '        update CADP01 SET P1PCOMIS=round(nvl(P1COMIS,0)/'
              
                '        CASE WHEN P1TOTALL IS NULL THEN 1 WHEN P1TOTALL = 0 THEN' +
                ' 1 ELSE P1TOTALL END*100,2)'
              
                '                where P1CODEMP=:NEW.P2T_CODEMP AND P1CHAVE=:NEW.' +
                'P2T_CHAVE AND'
              '                P1LOTSEQ=:NEW.P2T_CHAVE_ANO;'
              ''
              'EXCEPTION'
              '  WHEN OTHERS THEN'
              
                '--         RAISE_APPLICATION_ERROR(-20000, '#39'ATRIBUIU NULO P1PCOM' +
                'IS'#39' );'
              '          RAISE;'
              '      END;'
              ''
              ''
              ''
              ''
              'mNv_QtdParcDiv:=0;'
              ''
              
                '-- RAISE_APPLICATION_ERROR(-20000, '#39'valor dup '#39' || mvalordup || ' +
                #39' mtotalped '#39'  || mtotalped || '#39' altdup '#39' || :NEW.P2T_ALTDUP || ' +
                #39' qtdup '#39' || :NEW.P2T_QTDDUP || '#39' tamprz '#39' || mtamprz || '#39' TESTE' +
                ' '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.P' +
                'T2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              'IF :NEW.P2T_ALTDUP<>'#39'N'#39' then'
              ''
              '   if :NEW.P2T_QTDDUP>0 then'
              ''
              
                '     Select sum(P1TOTALL),sum(P1ICMSR) into mTotalPed,mTotalIcms' +
                'R from CADP01'
              '                                 WHERE P1CODEMP=:NEW.P2T_CODEMP'
              '                                 and P1CHAVE=:NEW.P2T_CHAVE'
              
                '                                 and P1LOTSEQ=:NEW.P2T_CHAVE_ANO' +
                ';'
              ''
              ''
              ''
              '      if mTotalIcmsR is null then'
              '         mTotalIcmsR:=0;'
              '         end if;'
              ''
              '     mtotalped:=mtotalped+mTotalIcmsR;'
              ''
              '     if :NEW.P2T_ICMSR_PRIMPARC=0 then'
              '        mTotalIcmsR:=0;'
              '     else'
              '        mtotalped:=mtotalped-mTotalIcmsR;'
              '     end if;'
              ''
              '      if mtotalped>0 then'
              '         mValorDup := trunc( (mTotalPed / :NEW.P2T_QTDDUP) ,2);'
              '         mDifDup := mTotalPed - (mValorDup * :NEW.P2T_QTDDUP);'
              '      end if;'
              ''
              ''
              '      if mvalordup is null then'
              '         mvalordup:=0;'
              '         end if;'
              ''
              ''
              '      if :NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT THEN'
              '         delete from CADPFP where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPSEQ>=:NEW.P2T_QTDDUP;'
              '      end if;'
              '      if (mvalordup<>0) and (mtotalped<>0) then'
              '         mtamprz:=length(:NEW.PT2_PRZNOVOS);'
              '         l_loop:=0;'
              '-- testando se ha valores fixo'
              '         mNv_ValFixo:=0;'
              '         mNv_QtdDupRat:=0;'
              ''
              '         mNv_QtdParc :=0;'
              ''
              '         mNv_ParcDif:=0;'
              '         mNv_Campo:=0;'
              '         mNv_Vacum:='#39#39';'
              ''
              '         mNv_Tipo:='#39#39';'
              ''
              '         While l_loop < mtamprz loop'
              ''
              '            l_loop := l_loop +  1;'
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'vai tenta' +
                'r prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tip' +
                'o '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtampr' +
                'z || '#39' TESTE '#39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || s' +
                'ubstr(:NEW.PT2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              '            BEGIN'
              '            if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39';'#39' then'
              ''
              '               if  length(mNv_vAcum)>0 then'
              
                '--                   RAISE_APPLICATION_ERROR(-20000, '#39'NV ACUM '#39' ' +
                '|| MnV_VaCUM || '#39' mnv_campo '#39' || mNv_Campo || '#39' tipo '#39' || mNv_Ti' +
                'po || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz || '#39' TESTE ' +
                #39' || substr(:NEW.PT2_PRZNOVOS,0,1)             || substr(:NEW.PT' +
                '2_PRZNOVOS,1,1)  || substr(:NEW.PT2_PRZNOVOS,2,1));'
              ''
              '                  if mNv_campo=0 then'
              '                     mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=1 then'
              '                     mNv_Tipo:=mnv_vAcum;'
              '                  elsif mNv_Campo=2 then'
              '                     mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                  elsif mNv_Campo=3 then'
              '                     if length(mnv_vacum)>0 then'
              '                        mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                     end if;'
              '                  elsif mNv_Campo=4 then'
              '                     mNv_NomFP:=mnv_vAcum;'
              '                  elsif mNv_Campo=5 then'
              '                     mNv_Baixa:=mnv_vAcum;'
              '                  end if;'
              '               end if;'
              ''
              ''
              '               mNv_Campo:=mNv_Campo+1;'
              '               mNv_vAcum:='#39#39';'
              ''
              
                '--               RAISE_APPLICATION_ERROR(-20000, '#39'LIMPOU PRIMEIR' +
                'O prazo '#39' || mnv_prazo ||  '#39'2618 campo '#39' || mNv_Campo || '#39' przno' +
                'vos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || ' +
                'mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              '               if mNv_Campo>5 then'
              ''
              '                  if mNv_tipo<>'#39'V'#39' and mNv_ParcDif=0 then'
              '                     mNv_ParcDif:=mNv_QtdParc+1;'
              '                  end if;'
              ''
              ''
              '                  mNv_Campo:=0;'
              '                  mNv_QtdParc:=mNv_QtdParc+1;'
              '                  if mNv_tipo='#39'V'#39' and mNv_Valor<>0 then'
              '                     mnv_ValFixo:=mNv_ValFixo+mNv_Valor;'
              '                  else mNv_QtdParcDiv:=mNv_QtdParcDiv+1;'
              '                  end if;'
              '                  if mNv_Tipo<>'#39'V'#39' then'
              '                     mNv_QtdDupRat:=mNv_QtdDupRat+1;'
              '                  end if;'
              '               end if;'
              '            else'
              
                '               mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,' +
                'l_loop,1);'
              ''
              '            end if;'
              '   EXCEPTION'
              '     WHEN OTHERS THEN'
              
                '--          RAISE_APPLICATION_ERROR(-20000, '#39'TRY campo '#39' || mNv_' +
                'Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop' +
                ' || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' ' +
                '|| mtamprz);'
              '             RAISE;'
              '         END;'
              ''
              '         end loop;'
              ''
              ''
              ''
              '   -- fim dos testes para valores fixos'
              ''
              ''
              '     if mNv_QtdParc<1 then'
              '        mNv_QtdParc:=1;'
              '     end if;'
              ''
              '     if mNv_QtdParcDiv<1 then'
              '        mNv_QtdParcDiv:=1;'
              '     end if;'
              ''
              ''
              
                '--       RAISE_APPLICATION_ERROR(-20000, '#39'parc difer  '#39' || mValo' +
                'rDup ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup ||' +
                ' '#39' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mN' +
                'v_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VAL' +
                'FIXO: '#39' || mNv_ValFixo);'
              ''
              
                '        mValorDup := trunc( ((mTotalPed-mNv_ValFixo) / mNv_QtdPa' +
                'rcDiv) ,2);'
              
                '        mDifDup := (mTotalPed-mNv_ValFixo) - (mValorDup * mNv_Qt' +
                'dParcDiv);'
              ''
              ''
              
                '--      RAISE_APPLICATION_ERROR(-20000, '#39'Parc dif '#39' || mNv_ParcD' +
                'if ||  '#39'vALOR dup  '#39' || mValorDup || '#39' mdifdup '#39' || mdifdup || '#39 +
                ' mvalordup '#39' ||  '#39'qtdparc'#39'  ||  mnv_qtdparc  ||'#39' tipo '#39' ||  mNv_' +
                'Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' || mtamprz ||'#39' VALFI' +
                'XO: '#39' || mNv_ValFixo);'
              ''
              '        if mvalordup is null then'
              '           mvalordup:=0;'
              '        end if;'
              ''
              '        if mDifDup is null then'
              '           mDifDup:=0;'
              '        end if;'
              ''
              ''
              '        mNv_Campo:=0;'
              '        mNv_Valor:=0;'
              '        mNv_Vacum:='#39#39';'
              ''
              '        mNv_Parcela:=0;'
              '        mNv_CodFP:=-1;'
              '        mNv_NomFP:='#39#39';'
              '        mNv_Prazo:=0;'
              ''
              '        l_loop:=0;'
              ''
              ''
              '        While l_loop < mtamprz loop'
              '           l_loop := l_loop +  1;'
              '           if substr(:NEW.PT2_PRZNOVOS,l_loop,1)='#39';'#39' then'
              ''
              '              if  length(mNv_vAcum)>0 then'
              '                 if mNv_campo=0 then'
              '                    mnv_Prazo:=TO_NUMBER(mnv_vAcum);'
              '                 elsif mNv_Campo=1 then'
              '                    mNv_Tipo:=mnv_vAcum;'
              '                 elsif mNv_Campo=2 then'
              '                    mNv_valor:=TO_NUMBER(mnv_vAcum);'
              '                 elsif mNv_Campo=3 then'
              '                     if length(mnv_vacum)>0 then'
              '                        mNv_CodFP:=TO_NUMBER(mnv_vAcum);'
              '                     end if;'
              '                 elsif mNv_Campo=4 then'
              '                    mNv_NomFP:=mnv_vAcum;'
              '                 elsif mNv_Campo=5 then'
              '                    mNv_Baixa:=mnv_vAcum;'
              '                 end if;'
              '              end if;'
              ''
              ''
              '              mnv_vAcum:='#39#39';'
              '              mNv_Campo:=mNv_Campo+1;'
              '              if mNv_Campo>5 then'
              '                 if mNv_Valor=0 then'
              '                    mNv_Valor:=mValordup;'
              '                 end if;'
              ''
              '                 mNv_Parcela:=mNv_Parcela+1;'
              '                 mNv_Campo:=0;'
              ''
              '                 if mDifDup<>0 and mNv_parcela= mNv_ParcDif then'
              '                    mNv_Valor:=mNv_Valor+mDifDup;'
              '                 end if;'
              '                 if mNv_CodFP=-1 then'
              '                    mNv_CodFP:=:NEW.P2T_CODFP;'
              '                 end if;'
              
                '--                    RAISE_APPLICATION_ERROR(-20000, '#39'nomfp '#39' |' +
                '| mNv_NomFP || '#39' tamanho '#39' || length(mnv_nomfp) || '#39' LOOP '#39' || l' +
                '_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamp' +
                'rz '#39' || mtamprz);'
              ''
              '                 if trim(mNv_NomFP)='#39#39' or mNv_NomFP is null then'
              '                    mNv_NomFP:=:NEW.P2T_NOMFP;'
              '                 end if;'
              '                 select count(*) into mvalortemp from CADPFP'
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              ''
              
                '                 if (:NEW.P2T_QTDDUP!=:NEW.P2T_QTDDUP_ANT) and (' +
                'mValorTemp<1) THEN'
              
                '   --                  RAISE_APPLICATION_ERROR(-20000, '#39'QTDDUP D' +
                'IFER campo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS |' +
                '| '#39' LOOP '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_' +
                'vacum || '#39' tamprz '#39' || mtamprz);'
              ''
              ''
              
                '                    insert into CADPFP (PFPCODEMP,PFPCHAVE,PFPOR' +
                'DEM,PFPLOTSEQ'
              '                          ,PFPSEQ'
              '                          ,PFPQTDPARC'
              '                         ,PFPFORMA'
              '                         ,PFPVALOR'
              '                         ,PFPBAIXA'
              '                         ,PFPNOMFOR'
              '                         ,PFPPRAZO'
              '                         ,PFPDATA'
              '                         ,PFPFPGTO'
              '                         ,PFPVINCULO'
              '                         ,PFPVDESCF'
              '                         ,PFPDTDESCF'
              ''
              ''
              '                         ) values ('
              
                '                          :NEW.P2T_CODEMP,:NEW.P2T_CHAVE,01,:NEW' +
                '.P2T_CHAVE_ANO'
              '                         ,mNv_Parcela'
              '                         ,mNv_QtdDupRat'
              '                         ,mNv_CodFP'
              '                         ,mNv_valor+mTotalIcmsR'
              '                         ,mNv_baixa'
              '                         ,mNv_NomFP'
              '                         ,mNv_Prazo'
              '                         ,:NEW.P2T_DATAPED+mNv_Prazo'
              '                         ,mNv_Valor*100 / mTotalPed'
              
                '                         ,(select MAX(fpvinculo) from cadfp wher' +
                'e fpcodigo=mNv_CodFP)'
              '                         ,mTotDescFin_prod'
              '                         ,:NEW.P2T_DATAPED+mNv_Prazo'
              '                         );'
              ''
              '                 else'
              
                '   --                 RAISE_APPLICATION_ERROR(-20000, '#39'UPDATE ca' +
                'mpo '#39' || mNv_Campo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOO' +
                'P '#39' || l_loop || '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum |' +
                '| '#39' tamprz '#39' || mtamprz);'
              ''
              
                '                    Update CADPFP set PFPFORMA=mNv_CodFP,PFPVALO' +
                'R=mNv_valor+mTotalIcmsR,'
              
                '                                    PFPBAIXA=mNv_baixa,PFPNOMFOR' +
                '=mNv_NomFP,'
              
                '                                    PFPPRAZO=mNv_Prazo,PFPDATA=:' +
                'NEW.P2T_DATAPED+mNv_Prazo,'
              
                '                                    PFPFPGTO=mNv_Valor*100 / mTo' +
                'talPed'
              '                                   ,PFPVDESCF=MTotDescFin_prod'
              
                '--                                   ,PFPVDESCF=trunc( (mTotDesc' +
                'Fin_prod * (mNv_Valor*100 / mTotalPed)),2)'
              
                '                                   ,PFPDTDESCF=:NEW.P2T_DATAPED+' +
                'mNv_Prazo'
              
                '                                   ,PFPVINCULO=(select MAX(fpvin' +
                'culo) from cadfp where fpcodigo=mNv_CodFP)'
              ''
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=mNv_Parcela;'
              ''
              '                 end if;'
              ''
              '                 mnv_Prazo:=0;'
              '                 mNv_Tipo:='#39#39';'
              '                 mNv_valor:=0;'
              '                 mNv_CodFP:=-1;'
              '                 mNv_NomFP:='#39#39';'
              '                 mNv_Baixa:='#39#39';'
              '                 mTotalIcmsR:=0;'
              ''
              ''
              '              end if;'
              '           else'
              
                '              mNv_Vacum:=mnv_vAcum || substr(:NEW.PT2_PRZNOVOS,l' +
                '_loop,1);'
              
                '--        RAISE_APPLICATION_ERROR(-20000, '#39'2778 campo '#39' || mNv_C' +
                'ampo || '#39' prznovos '#39' || :NEW.PT2_PRZNOVOS || '#39' LOOP '#39' || l_loop ' +
                '|| '#39' tipo '#39' || mNv_Tipo || '#39' acum '#39' || mnv_vacum || '#39' tamprz '#39' |' +
                '| mtamprz);'
              ''
              '           end if;'
              '        end loop;'
              '      if  mTotDescFin_prod>0  then'
              
                '          Update CADPFP set PFPVDESCF=PFPVDESCF+ (mTotDescFin_pr' +
                'od'
              
                '                                    - (select sum(nvl(PFPVDESCF,' +
                '0)) from cadpfp'
              
                '                                      where PFPCODEMP=:NEW.P2T_C' +
                'ODEMP'
              
                '                                      and PFPCHAVE=:NEW.P2T_CHAV' +
                'E'
              
                '                                      and PFPLOTSEQ=:NEW.P2T_CHA' +
                'VE_ANO'
              '                                      and PFPORDEM=01) )'
              '                                 where PFPCODEMP=:NEW.P2T_CODEMP'
              '                                 and PFPCHAVE=:NEW.P2T_CHAVE'
              
                '                                 and PFPLOTSEQ=:NEW.P2T_CHAVE_AN' +
                'O'
              '                                 and PFPORDEM=01'
              '                                 and PFPSEQ=1;'
              '      end if;'
              '      end if;'
              '   end if;'
              'end if;'
              ''
              'end;'
              ''
              '')
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
            Width = 874
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
          Left = 0
          Top = 40
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
        Top = 344
        Width = 321
        Height = 57
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
          Top = 18
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
    end
  end
  object FileListBox1: TFileListBox
    Left = 280
    Top = 128
    Width = 145
    Height = 33
    ItemHeight = 13
    TabOrder = 2
    Visible = False
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
    Left = 120
    Top = 72
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
    Left = 736
    Top = 256
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
    Left = 296
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
    Left = 60
    Top = 176
  end
  object TB_FPCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from fpcrdup, caddar where fpcodemp=crcodemp '
      ' and fpnumero=crnumero and fpdesd=crdesd and fpcodcli=crcodcli '
      ' and fpcodven=crcodven and fpdtemis=crdtemis and fpdtbx=crdtbx'
      ' and fpvaldup=crvalor ')
    Left = 388
    Top = 440
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
    object TB_FPCRCROBS: TStringField
      FieldName = 'CROBS'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
      Size = 30
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
    Left = 316
    Top = 432
  end
end
