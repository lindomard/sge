object Frm_LDR: TFrm_LDR
  Left = 325
  Top = 108
  Width = 992
  Height = 573
  Caption = 'Fluxo de Caixa'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_dig: TPanel
    Left = 0
    Top = 31
    Width = 984
    Height = 247
    Align = alTop
    Color = 16766935
    TabOrder = 0
    object Label3: TLabel
      Left = 13
      Top = 30
      Width = 98
      Height = 13
      Caption = 'Data Referencia:'
    end
    object Label8: TLabel
      Left = 68
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Banco:'
      FocusControl = DBE_CodBco
    end
    object Label9: TLabel
      Left = 11
      Top = 178
      Width = 98
      Height = 13
      Caption = 'N'#250'm.Documento:'
      FocusControl = DBE_NumDoc
    end
    object Label10: TLabel
      Left = 208
      Top = 179
      Width = 127
      Height = 13
      Caption = 'Documento Recebido:'
      FocusControl = DBEdit14
    end
    object Label11: TLabel
      Left = 47
      Top = 203
      Width = 62
      Height = 13
      Caption = 'Descri'#231'ao:'
      FocusControl = DBEdit15
    end
    object Label12: TLabel
      Left = 451
      Top = 1
      Width = 242
      Height = 40
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 
        'Quando Data Real  Preenchida = Lancamento Realizado, Data Real V' +
        'azia Contas a Pagar ou a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentBiDiMode = False
      ParentFont = False
      WordWrap = True
    end
    object sbn_nomdep: TSpeedButton
      Left = 554
      Top = 136
      Width = 25
      Height = 16
      Hint = 'Click aqui para ir ao Cadastro'#13#10'de Departamentos'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbn_nomdepClick
    end
    object spn_nomccu: TSpeedButton
      Left = 554
      Top = 155
      Width = 25
      Height = 19
      Hint = 'click aqui para ir ao'#13#10'cadastro de centro de custo'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      OnClick = spn_nomccuClick
    end
    object SpeedButton4: TSpeedButton
      Left = 554
      Top = 112
      Width = 25
      Height = 19
      Flat = True
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
      OnClick = SpeedButton4Click
    end
    object Label13: TLabel
      Left = 78
      Top = 93
      Width = 30
      Height = 13
      Caption = 'Tipo:'
    end
    object Label14: TLabel
      Left = 207
      Top = 92
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBE_Codigo
    end
    object SpeedButton5: TSpeedButton
      Left = 554
      Top = 89
      Width = 25
      Height = 19
      Flat = True
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
      OnClick = SpeedButton5Click
    end
    object Label15: TLabel
      Left = 25
      Top = 133
      Width = 84
      Height = 13
      Caption = 'Departamento:'
    end
    object Label1: TLabel
      Left = 27
      Top = 12
      Width = 82
      Height = 13
      Caption = 'Data Prevista:'
    end
    object Label2: TLabel
      Left = 269
      Top = 10
      Width = 62
      Height = 13
      Caption = 'Data Real:'
    end
    object Label4: TLabel
      Left = 25
      Top = 71
      Width = 84
      Height = 13
      Caption = 'Valor Previsto:'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 266
      Top = 73
      Width = 64
      Height = 13
      Caption = 'Valor Real:'
      FocusControl = DBEdit5
    end
    object Label16: TLabel
      Left = 14
      Top = 156
      Width = 96
      Height = 13
      Caption = 'Centro de Custo:'
    end
    object lbl_obs: TLabel
      Left = 584
      Top = 115
      Width = 192
      Height = 13
      Caption = '[SHIFT+TAB]Para Campo Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16711808
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 17
      Top = 224
      Width = 90
      Height = 13
      Caption = 'Obs.Financeiro:'
      FocusControl = DBEdit6
    end
    object Label17: TLabel
      Left = -3
      Top = 52
      Width = 115
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Competencia Tipo:'
    end
    object DBText1: TDBText
      Left = 299
      Top = 51
      Width = 115
      Height = 13
      Alignment = taRightJustify
      DataField = 'competencia_obs'
      DataSource = DM1.Src_Dar
    end
    object lbl_competencia_barra: TLabel
      Left = 457
      Top = 51
      Width = 7
      Height = 13
      Caption = '/'
    end
    object Label7: TLabel
      Left = 544
      Top = 54
      Width = 102
      Height = 13
      Caption = 'Data Concilia'#231#227'o:'
    end
    object DBEdit10: TDBEdit
      Left = 529
      Top = 155
      Width = 25
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Ctl3D = True
      DataField = 'NATDC'
      DataSource = DM1.Src_LDR
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object DBE_CodBco: TDBEdit
      Left = 117
      Top = 111
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'CODBCO'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnExit = DBE_CodBcoExit
      OnKeyPress = DBE_CodBcoKeyPress
    end
    object DBE_NumDoc: TDBEdit
      Left = 117
      Top = 176
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'NUMDOC'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
      OnExit = DBE_NumDocExit
    end
    object DBEdit14: TDBEdit
      Left = 335
      Top = 174
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'NUMDOC2'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
    end
    object DBEdit15: TDBEdit
      Left = 117
      Top = 198
      Width = 404
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'DESCMV'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
      OnChange = DBEdit15Change
    end
    object TIPO: TDBComboBox
      Left = 117
      Top = 89
      Width = 87
      Height = 21
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'TIPO'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      Items.Strings = (
        'CL'
        'FR'
        'TR'
        'VD'
        'US')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnEnter = TIPOEnter
      OnExit = TIPOExit
    end
    object DBE_Codigo: TDBEdit
      Left = 252
      Top = 88
      Width = 62
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'CODIGO'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      OnEnter = DBE_CodigoEnter
      OnExit = DBE_CodigoExit
      OnKeyPress = DBE_CodigoKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 314
      Top = 88
      Width = 240
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 16759773
      Ctl3D = True
      DataField = 'nome'
      DataSource = DM1.Src_LDR
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object DBE_CodDep: TDBEdit
      Left = 117
      Top = 133
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'CODDEP'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnExit = DBE_CodDepExit
    end
    object DBCB_NOMDEP: TDBComboBox
      Left = 203
      Top = 133
      Width = 351
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'NOMDEP'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      Sorted = True
      TabOrder = 14
      OnEnter = DBCB_NOMDEPEnter
      OnExit = DBCB_NOMDEPExit
    end
    object DBCb_Compens: TDBCheckBox
      Left = 251
      Top = 28
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Compensado'
      DataField = 'COMPENS'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ValueChecked = '0'
      ValueUnchecked = '1'
      OnExit = DBCb_CompensExit
    end
    object StaticText1: TStaticText
      Left = 706
      Top = 3
      Width = 77
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Chave'
      Color = 16759773
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 23
    end
    object DBEdit2: TDBEdit
      Left = 706
      Top = 22
      Width = 79
      Height = 19
      Color = 16759773
      Ctl3D = False
      DataField = 'CODLDR'
      DataSource = DM1.Src_LDR
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 117
      Top = 68
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'VALORP'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 67
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'VALORR'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      OnExit = DBEdit5Exit
      OnKeyPress = DBEdit5KeyPress
    end
    object DBE_CodCCu: TDBEdit
      Left = 117
      Top = 154
      Width = 87
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'CODCC'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
      OnExit = DBE_CodCCuExit
    end
    object DBCB_NOMCCU: TDBComboBox
      Left = 203
      Top = 154
      Width = 324
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'NOMCCU'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      Sorted = True
      TabOrder = 16
      OnEnter = DBCB_NOMCCUEnter
      OnExit = DBCB_NOMCCUExit
    end
    object DBCB_NOMBCO: TDBComboBox
      Left = 203
      Top = 111
      Width = 351
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'NOMBCO'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      Sorted = True
      TabOrder = 12
      OnEnter = DBCB_NOMBCOEnter
      OnExit = DBCB_NOMBCOExit
    end
    object DBEdit6: TDBEdit
      Left = 116
      Top = 219
      Width = 404
      Height = 21
      BevelOuter = bvNone
      BevelKind = bkSoft
      Color = 13565951
      Ctl3D = True
      DataField = 'FC_OBSFIN'
      DataSource = DM1.Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
      OnChange = DBEdit15Change
    end
    object DBEdit1: TDBDateEdit
      Left = 117
      Top = 7
      Width = 110
      Height = 21
      DataField = 'DATADP'
      DataSource = DM1.Src_LDR
      Color = 13565951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      YearDigits = dyFour
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object DATAREAL: TDBDateEdit
      Left = 335
      Top = 6
      Width = 110
      Height = 21
      DataField = 'DATAREAL'
      DataSource = Src_LDR
      Color = 13565951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      YearDigits = dyFour
      OnExit = DATAREALExit
    end
    object DBEdit3: TDBDateEdit
      Left = 117
      Top = 28
      Width = 110
      Height = 21
      DataField = 'DATAREF'
      DataSource = Src_LDR
      Color = 13565951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      YearDigits = dyFour
      OnExit = DBEdit3Exit
    end
    object GroupBox1: TGroupBox
      Left = 800
      Top = 1
      Width = 183
      Height = 245
      Align = alRight
      Caption = 'Documento Digitalizado:'
      TabOrder = 25
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 179
        Height = 194
        TabStop = False
        Align = alClient
        DataSource = src_ldr_imagem
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'LI_OBS'
            Width = 126
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 2
        Top = 209
        Width = 179
        Height = 34
        Align = alBottom
        TabOrder = 1
        TabStop = True
        object sbn_nova: TSpeedButton
          Left = 3
          Top = 0
          Width = 56
          Height = 33
          Caption = 'Novo'
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
          OnClick = sbn_novaClick
        end
        object sbn_alterar: TSpeedButton
          Left = 59
          Top = 0
          Width = 56
          Height = 33
          Caption = 'Alterar'
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
          OnClick = sbn_alterarClick
        end
        object sbn_excluir: TSpeedButton
          Left = 123
          Top = 0
          Width = 56
          Height = 33
          Caption = 'excluir'
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
          OnClick = sbn_excluirClick
        end
      end
    end
    object DB_CACOMPETENCIA_TIPO: TRxDBComboBox
      Left = 117
      Top = 48
      Width = 169
      Height = 21
      Style = csDropDownList
      Color = 13565951
      Ctl3D = False
      DataField = 'FC_COMPETENCIA_TIPO'
      DataSource = Src_LDR
      EnableValues = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      Items.Strings = (
        '0-Mensal'
        '1-Anual'
        '2-Bimestral'
        '3-trimestral'
        '4-semestral')
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6')
      OnExit = DB_CACOMPETENCIA_TIPOExit
    end
    object edt_competencia_mes: TEdit
      Left = 419
      Top = 48
      Width = 38
      Height = 19
      Color = 13565951
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'edt_competencia_mes'
      OnExit = edt_competencia_mesExit
    end
    object edt_competencia_ano: TEdit
      Left = 467
      Top = 48
      Width = 38
      Height = 19
      Color = 13565951
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = 'edt_competencia_mes'
      OnExit = edt_competencia_anoExit
    end
    object DBDateEdit1: TDBDateEdit
      Left = 661
      Top = 52
      Width = 110
      Height = 21
      DataField = 'DATCONC'
      DataSource = Src_LDR
      ReadOnly = True
      Color = 13565951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 26
      YearDigits = dyFour
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 278
    Width = 984
    Height = 223
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 982
      Height = 221
      Align = alClient
      Color = 13565951
      DataSource = Src_LDR
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DATADP'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPENS'
          Title.Alignment = taCenter
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cdatareal'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAREF'
          Title.Alignment = taCenter
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORP'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Previsto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORR'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATDC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCMV'
          Title.Alignment = taCenter
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDOC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODEMP'
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 80
      Top = 64
      Width = 15
      Height = 17
      Color = clBtnFace
      DataField = 'COMPENS'
      DataSource = Src_LDR
      ParentColor = False
      ReadOnly = True
      TabOrder = 1
      ValueChecked = '0'
      ValueUnchecked = '1'
      Visible = False
      OnClick = DBCheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 501
    Width = 984
    Height = 41
    Align = alBottom
    Color = 16766935
    TabOrder = 3
    object BBPESQ: TBitBtn
      Left = 1
      Top = 1
      Width = 197
      Height = 40
      Cursor = crHandPoint
      Caption = '&Pesquisar'
      TabOrder = 0
      OnClick = BBPESQClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
        03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
        30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
        07807F777733337F7F3707888887880808807F333333337F7F37077777778800
        08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
        33003777737777333377333080333333333333F7373333333333300803333333
        33333773733333333333088033333333333373F7F33333333333308033333333
        3333373733333333333333033333333333333373333333333333}
      NumGlyphs = 2
    end
    object BBREPETIR: TBitBtn
      Left = 197
      Top = 1
      Width = 197
      Height = 40
      Cursor = crHandPoint
      Hint = 'Inclui um novo Registro Repetindo o Valor do Item Selecionado'
      Caption = 'Incluir &Repetindo Valores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBREPETIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
        FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
        FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
        FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
        0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
        9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
        9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
        99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
        93337777FF777777733370000000073333333777777773333333}
      NumGlyphs = 2
    end
    object BBIMPR: TBitBtn
      Left = 393
      Top = 1
      Width = 197
      Height = 23
      Cursor = crHandPoint
      Caption = '&Emitir Recibo'
      TabOrder = 3
      OnClick = BBIMPRClick
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
    object BBSALDO: TBitBtn
      Left = 589
      Top = 1
      Width = 197
      Height = 40
      Cursor = crHandPoint
      Caption = '&Saldo Bancario'
      TabOrder = 2
      OnClick = BBSALDOClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cb_2x_recibo: TCheckBox
      Left = 395
      Top = 24
      Width = 192
      Height = 17
      Caption = '2 Recibos p/ Pagina'
      TabOrder = 4
      OnClick = cb_2x_reciboClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 31
    Align = alTop
    Color = 16766935
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 703
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
      Hint = 'Fechar'
      Caption = '&Sair'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object INCLUIR: TBitBtn
      Left = 1
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
      Caption = '&Incluir'
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
      NumGlyphs = 2
    end
    object ALTERAR: TBitBtn
      Left = 82
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = ALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object GRAVAR: TBitBtn
      Left = 163
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
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
      NumGlyphs = 2
    end
    object EXCLUIR: TBitBtn
      Left = 244
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 3
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
      Left = 325
      Top = 2
      Width = 82
      Height = 27
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 4
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
    object DBNavigator2: TDBNavigator
      Left = 407
      Top = 3
      Width = 296
      Height = 26
      Cursor = crHandPoint
      DataSource = DM1.Src_LDR
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Registro Posterior'
        'Ultimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      BeforeAction = DBNavigator2BeforeAction
    end
  end
  object U_TmChq: TUpdateSQL
    ModifySQL.Strings = (
      'update TMFPTAX'
      'set'
      '  CHCODEMP = :CHCODEMP,'
      '  CHSEQ = :CHSEQ,'
      '  CHNUMERO = :CHNUMERO,'
      '  CHBANCO = :CHBANCO,'
      '  CHSERIE = :CHSERIE,'
      '  CHCODASS = :CHCODASS,'
      '  CHEMIT = :CHEMIT,'
      '  CHCPF = :CHCPF,'
      '  CHRG = :CHRG,'
      '  CHCC = :CHCC,'
      '  CHDTNAS = :CHDTNAS,'
      '  CHVALOR = :CHVALOR,'
      '  CHDTEMIS = :CHDTEMIS,'
      '  CHDTDEP = :CHDTDEP,'
      '  CHAGENCIA = :CHAGENCIA,'
      '  CHFORMA = :CHFORMA,'
      '  CHCODTAX = :CHCODTAX,'
      '  CHNUMPED = :CHNUMPED,'
      '  CHCAIXA = :CHCAIXA,'
      '  CHTIPO = :CHTIPO'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    InsertSQL.Strings = (
      'insert into TMFPTAX'
      
        '  (CHCODEMP, CHSEQ, CHNUMERO, CHBANCO, CHSERIE, CHCODASS, CHEMIT' +
        ', '
      'CHCPF, '
      '   CHRG, CHCC, CHDTNAS, CHVALOR, CHDTEMIS, CHDTDEP, CHAGENCIA, '
      'CHFORMA, '
      '   CHCODTAX, CHNUMPED, CHCAIXA, CHTIPO)'
      'values'
      '  (:CHCODEMP, :CHSEQ, :CHNUMERO, :CHBANCO, :CHSERIE, :CHCODASS, '
      ':CHEMIT, '
      
        '   :CHCPF, :CHRG, :CHCC, :CHDTNAS, :CHVALOR, :CHDTEMIS, :CHDTDEP' +
        ', '
      ':CHAGENCIA, '
      '   :CHFORMA, :CHCODTAX, :CHNUMPED, :CHCAIXA, :CHTIPO)')
    DeleteSQL.Strings = (
      'delete from TMFPTAX'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHSEQ = :OLD_CHSEQ')
    Left = 648
    Top = 124
  end
  object Qr_TMChq: TQuery
    CachedUpdates = True
    OnCalcFields = Qr_TMChqCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMFPTAX where CHCODEMP=1 and '
      'CHNUMERO is null')
    UpdateObject = U_TmChq
    Left = 650
    Top = 90
    object Qr_TMChqforma: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkCalculated
      FieldName = 'forma'
      Calculated = True
    end
    object Qr_TMChqCHCODEMP: TFloatField
      DisplayLabel = 'C'#243'digo Empresa'
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.TMFPTAX.CHCODEMP'
    end
    object Qr_TMChqCHSEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'CHSEQ'
      Origin = 'SG_ASSOC.TMFPTAX.CHSEQ'
    end
    object Qr_TMChqCHNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.TMFPTAX.CHNUMERO'
    end
    object Qr_TMChqCHBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.TMFPTAX.CHBANCO'
    end
    object Qr_TMChqCHSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.TMFPTAX.CHSERIE'
    end
    object Qr_TMChqCHCODASS: TFloatField
      DisplayLabel = 'C'#243'd.Associado'
      FieldName = 'CHCODASS'
      Origin = 'SG_ASSOC.TMFPTAX.CHCODASS'
    end
    object Qr_TMChqCHEMIT: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'CHEMIT'
      Origin = 'SG_ASSOC.TMFPTAX.CHEMIT'
      Size = 40
    end
    object Qr_TMChqCHCPF: TFloatField
      DisplayLabel = 'CNPF'
      FieldName = 'CHCPF'
      Origin = 'SG_ASSOC.TMFPTAX.CHCPF'
    end
    object Qr_TMChqCHRG: TStringField
      DisplayLabel = 'Registro Geral'
      FieldName = 'CHRG'
      Origin = 'SG_ASSOC.TMFPTAX.CHRG'
      Size = 40
    end
    object Qr_TMChqCHCC: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.TMFPTAX.CHCC'
    end
    object Qr_TMChqCHDTNAS: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'CHDTNAS'
      Origin = 'SG_ASSOC.TMFPTAX.CHDTNAS'
    end
    object Qr_TMChqCHVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.TMFPTAX.CHVALOR'
    end
    object Qr_TMChqCHDTEMIS: TDateTimeField
      DisplayLabel = 'Data Emissao'
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.TMFPTAX.CHDTEMIS'
    end
    object Qr_TMChqCHDTDEP: TDateTimeField
      DisplayLabel = 'Dt.Deposito'
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.TMFPTAX.CHDTDEP'
    end
    object Qr_TMChqCHAGENCIA: TStringField
      DisplayLabel = 'Agencia'
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.TMFPTAX.CHAGENCIA'
      Size = 10
    end
    object Qr_TMChqCHFORMA: TFloatField
      DisplayLabel = 'Forma'
      FieldName = 'CHFORMA'
      Origin = 'SG_ASSOC.TMFPTAX.CHFORMA'
    end
    object Qr_TMChqCHCODTAX: TFloatField
      DisplayLabel = 'C'#243'digo Taxa'
      FieldName = 'CHCODTAX'
      Origin = 'SG_ASSOC.TMFPTAX.CHCODTAX'
    end
    object Qr_TMChqCHNUMPED: TFloatField
      DisplayLabel = 'N'#250'mero do Pedido'
      FieldName = 'CHNUMPED'
      Origin = 'SG_ASSOC.TMFPTAX.CHNUMPED'
    end
    object Qr_TMChqCHCAIXA: TFloatField
      FieldName = 'CHCAIXA'
      Origin = 'SG_ASSOC.TMFPTAX.CHCAIXA'
    end
    object Qr_TMChqCHTIPO: TStringField
      FieldName = 'CHTIPO'
      Origin = 'SG_ASSOC.TMFPTAX.CHTIPO'
      Size = 2
    end
  end
  object Src_TmChq: TDataSource
    DataSet = Qr_TMChq
    Left = 700
    Top = 108
  end
  object Qr_Chq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCHQ where CHNUMERO is null')
    Left = 684
    Top = 124
    object Qr_ChqCHCODEMP: TFloatField
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCODEMP'
    end
    object Qr_ChqCHSEQ: TFloatField
      FieldName = 'CHSEQ'
      Origin = 'SG_ASSOC.CADCHQ.CHSEQ'
    end
    object Qr_ChqCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Qr_ChqCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Qr_ChqCHSERIE: TStringField
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHQ.CHSERIE'
    end
    object Qr_ChqCHCODASS: TFloatField
      FieldName = 'CHCODASS'
      Origin = 'SG_ASSOC.CADCHQ.CHCODASS'
    end
    object Qr_ChqCHEMIT: TStringField
      FieldName = 'CHEMIT'
      Origin = 'SG_ASSOC.CADCHQ.CHEMIT'
      Size = 40
    end
    object Qr_ChqCHCPF: TFloatField
      FieldName = 'CHCPF'
      Origin = 'SG_ASSOC.CADCHQ.CHCPF'
    end
    object Qr_ChqCHRG: TStringField
      FieldName = 'CHRG'
      Origin = 'SG_ASSOC.CADCHQ.CHRG'
      Size = 40
    end
    object Qr_ChqCHCC: TStringField
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.CADCHQ.CHCC'
    end
    object Qr_ChqCHDTNAS: TDateTimeField
      FieldName = 'CHDTNAS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTNAS'
    end
    object Qr_ChqCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
    end
    object Qr_ChqCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
    end
    object Qr_ChqCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
    end
    object Qr_ChqCHAGENCIA: TStringField
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.CADCHQ.CHAGENCIA'
      Size = 10
    end
    object Qr_ChqCHLOTE: TFloatField
      FieldName = 'CHLOTE'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTE'
    end
    object Qr_ChqCHTIPO: TFloatField
      FieldName = 'CHTIPO'
      Origin = 'SG_ASSOC.CADCHQ.CHTIPO'
    end
    object Qr_ChqCHSTATUS: TFloatField
      FieldName = 'CHSTATUS'
      Origin = 'SG_ASSOC.CADCHQ.CHSTATUS'
    end
    object Qr_ChqCHDTBX: TDateTimeField
      FieldName = 'CHDTBX'
      Origin = 'SG_ASSOC.CADCHQ.CHDTBX'
    end
    object Qr_ChqCHUSRBX: TFloatField
      FieldName = 'CHUSRBX'
      Origin = 'SG_ASSOC.CADCHQ.CHUSRBX'
    end
    object Qr_ChqCHCAIXA: TFloatField
      FieldName = 'CHCAIXA'
      Origin = 'SG_ASSOC.CADCHQ.CHCAIXA'
    end
  end
  object Tb_Ldr: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  CODLDR :PDESCMV, :PNUMDOC, :PNUMDOC2'
      ' ')
    Left = 705
    Top = 174
    ParamData = <
      item
        DataType = ftString
        Name = 'PDESCMV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PNUMDOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PNUMDOC2'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object Src_LDR: TDataSource
    DataSet = DM1.Tb_LDR
    OnDataChange = Src_LDRDataChange
    Left = 656
    Top = 160
  end
  object src_ldr_imagem: TDataSource
    DataSet = Qr_Ldr_Imagem
    Left = 660
    Top = 200
  end
  object Qr_Ldr_Imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'CODEMP'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'CODLDR_LS'
        DataType = ftString
        Size = -1
        Value = ''
      end
      item
        Name = 'CODLDR'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'Select * from CADLDR_IMAGEM '
      ' where LI_CODEMP=:CODEMP '
      ' and LI_CODLDR_LS=:CODLDR_LS '
      ' and LI_CODLDR=:CODLDR '
      ' order by LI_SEQ '
      '')
    Left = 624
    Top = 199
    object Qr_Ldr_ImagemLI_CODEMP: TBCDField
      FieldName = 'LI_CODEMP'
      Precision = 10
      Size = 0
    end
    object Qr_Ldr_ImagemLI_CODLDR: TFloatField
      FieldName = 'LI_CODLDR'
    end
    object Qr_Ldr_ImagemLI_CODLDR_LS: TFloatField
      FieldName = 'LI_CODLDR_LS'
    end
    object Qr_Ldr_ImagemLI_SEQ: TBCDField
      FieldName = 'LI_SEQ'
      Precision = 32
      Size = 0
    end
    object Qr_Ldr_ImagemLI_OBS: TStringField
      DisplayLabel = 'Obervacoes'
      FieldName = 'LI_OBS'
      Size = 150
    end
    object Qr_Ldr_ImagemLI_FOTO: TBlobField
      FieldName = 'LI_FOTO'
    end
    object Qr_Ldr_ImagemLI_NOMEORI: TStringField
      FieldName = 'LI_NOMEORI'
      Size = 254
    end
  end
end
