object Frm_Liberar: TFrm_Liberar
  Left = 97
  Top = 137
  Width = 702
  Height = 443
  Caption = 'Libera'#231#227'o de Acessos ou Pedidos Bloqueados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 694
    Height = 173
    Align = alTop
    Caption = 'Solicita'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 690
      Height = 156
      Align = alClient
      DataSource = DM4.Src_LSen
      FixedColor = 14079661
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMUSR'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LSITENSBLOQ'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LSSTATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LSCODTAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LSCODUSRSOL'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LSDATASOL'
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 694
    Height = 101
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 339
      Top = 1
      Width = 354
      Height = 99
      Align = alClient
      Caption = 'Oberva'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBMemo2: TDBMemo
        Left = 2
        Top = 15
        Width = 350
        Height = 82
        Align = alClient
        DataField = 'LSTEXTOOBS'
        DataSource = DM4.Src_LSen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 338
      Height = 99
      Align = alLeft
      Caption = 'Motivos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 334
        Height = 82
        Align = alClient
        DataField = 'LSTEXTOMOT'
        DataSource = DM4.Src_LSen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 274
    Width = 694
    Height = 52
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 275
      Top = 7
      Width = 48
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 281
      Top = 28
      Width = 41
      Height = 13
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbSitCred: TBitBtn
      Left = 4
      Top = 2
      Width = 268
      Height = 25
      Hint = 
        'Mostra a Situa'#231#227'o de Cr'#233'dito'#13#10'do Cliente Caso Seja Bloqueio'#13#10'de ' +
        'Vendas'
      Caption = 'Situa'#231#227'o de Credito do Cliente Caso Seja Bloqueio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbSitCredClick
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
    end
    object MCODUSR: TEdit
      Left = 325
      Top = 4
      Width = 61
      Height = 19
      Hint = 
        'Digite o C'#243'digo do Usu'#225'rio que '#13#10'vai liberar o acesso, ou pressi' +
        'one'#13#10'uma tecla para consultar o nome'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = MCODUSRExit
      OnKeyPress = MCODUSRKeyPress
    end
    object NOMUSR: TEdit
      Left = 385
      Top = 4
      Width = 301
      Height = 19
      Color = 16762081
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object SENHA: TEdit
      Left = 325
      Top = 22
      Width = 159
      Height = 19
      Hint = 
        'Digite a Senha do Usu'#225'rio'#13#10'Cadastrada para Liberar '#13#10'esse tipo d' +
        'e Acesso.'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 3
    end
    object bbAtualizar: TBitBtn
      Left = 5
      Top = 26
      Width = 268
      Height = 25
      Hint = 'Atualiza todos os Pedidos'#13#10'de Libera'#231#245'es Pendentes'
      Caption = 'Atualizar Informa'#231#245'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbAtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
    end
    object cb_manter_senha: TCheckBox
      Left = 488
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Manter Senha'
      TabOrder = 5
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 326
    Width = 366
    Height = 86
    Align = alLeft
    Caption = 'Observa'#231#245'es Resposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Memo_Resp: TMemo
      Left = 2
      Top = 15
      Width = 362
      Height = 69
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = Memo_RespExit
    end
  end
  object Panel3: TPanel
    Left = 366
    Top = 326
    Width = 328
    Height = 86
    Align = alClient
    TabOrder = 4
    object bbAutorizar: TBitBtn
      Left = 142
      Top = 6
      Width = 180
      Height = 25
      Hint = 'Autoriza a Libera'#231#227'o do Bloqueio'
      Caption = '&Autorizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbAutorizarClick
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
    object bbBloqueia: TBitBtn
      Left = 142
      Top = 30
      Width = 180
      Height = 25
      Hint = 'N'#227'o Autoriza a Libera'#231#227'o do Bloqueio'
      Caption = '&Bloqueia(N'#227'o Autoriza)'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbBloqueiaClick
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
    object bbSair: TBitBtn
      Left = 142
      Top = 55
      Width = 180
      Height = 25
      Hint = '&Fecha Esta Janela'
      Caption = '&Sair do Programa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object cb_manter_resp: TCheckBox
      Left = 5
      Top = 7
      Width = 115
      Height = 17
      Caption = 'Manter Resposta'
      TabOrder = 3
    end
  end
end
