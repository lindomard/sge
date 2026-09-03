object Frm_Vend_RelVendGFor: TFrm_Vend_RelVendGFor
  Left = 0
  Top = 0
  Width = 800
  Height = 544
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Rela'#231#227'o das Vendas com as Cotas por Grupo de Fornecedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 73
    Top = 356
    Width = 49
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 249
    Top = 354
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 41
    Top = 380
    Width = 67
    Height = 13
    Caption = 'Separado por:'
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 535
    Top = 463
    Width = 120
    Height = 40
    Caption = 'Salvar Padr'#227'o'
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
    OnClick = sbSalvarPadraoClick
  end
  object Label1: TLabel
    Left = 51
    Top = 402
    Width = 60
    Height = 13
    Caption = 'Somado por:'
  end
  object Label3: TLabel
    Left = 3
    Top = 423
    Width = 100
    Height = 13
    Caption = 'Ordem de Impress'#227'o:'
  end
  object Label7: TLabel
    Left = 429
    Top = 353
    Width = 67
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object CB_SEMBORDA: TCheckBox
    Left = 45
    Top = 441
    Width = 90
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Sem Bordas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = CB_SEMBORDAClick
  end
  object CB_SEPAR: TComboBox
    Left = 127
    Top = 374
    Width = 272
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 8
    TabOrder = 4
    Text = 'Sem Separar'
    OnClick = CB_SEPARClick
    Items.Strings = (
      'Ano'
      'Bairro'
      'Cidade'
      'Convenio'
      'Estado'
      'Fornecedor'
      'M'#234's'
      'Rede de Clientes'
      'Sem Separar'
      'Supervisor'
      'Televendas'
      'Tipo de Pedido'
      'Vendedor')
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 345
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 765
        Height = 337
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label6: TLabel
          Left = 513
          Top = 19
          Width = 249
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Grupos a Serem Listados'
          Color = 16777088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SbnLimparGFor: TSpeedButton
          Left = 472
          Top = 16
          Width = 37
          Height = 39
          Caption = 'Limpar'
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
          OnClick = SbnLimparGForClick
        end
        object SbnFiltrar: TSpeedButton
          Left = 511
          Top = 288
          Width = 250
          Height = 28
          Caption = 'Filtrar Grupos Selecionados'
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
          NumGlyphs = 2
          OnClick = SbnFiltrarClick
        end
        object StaticText2: TStaticText
          Left = 1
          Top = 17
          Width = 107
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grupo de Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object CODGFOR: TEdit
          Left = 109
          Top = 17
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CODGFORExit
          OnKeyPress = CODGFORKeyPress
        end
        object OMITIR_GFOR: TCheckBox
          Left = 108
          Top = 36
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object lbx_codgfor: TListBox
          Left = 164
          Top = 17
          Width = 307
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codgforKeyDown
        end
        object StaticText10: TStaticText
          Left = 6
          Top = 55
          Width = 97
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object CODFOR: TEdit
          Left = 109
          Top = 56
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object OMITIR_FOR: TCheckBox
          Left = 110
          Top = 76
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object lbx_codfor: TListBox
          Left = 164
          Top = 55
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codforKeyDown
        end
        object CODRED: TEdit
          Left = 109
          Top = 94
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = CODREDExit
          OnKeyPress = CODREDKeyPress
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 93
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rede de Clientes:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 9
        end
        object OMITIR_RED: TCheckBox
          Left = 110
          Top = 115
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object lbx_codred: TListBox
          Left = 164
          Top = 93
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_codredKeyDown
        end
        object StaticText4: TStaticText
          Left = 9
          Top = 131
          Width = 92
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cliente:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object CODCLI: TEdit
          Left = 109
          Top = 131
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object OMITIR_CLI: TCheckBox
          Left = 109
          Top = 151
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object lbx_codcli: TListBox
          Left = 164
          Top = 131
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnKeyDown = lbx_codcliKeyDown
        end
        object StaticText5: TStaticText
          Left = 7
          Top = 169
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 16
        end
        object CODVEN: TEdit
          Left = 109
          Top = 169
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object OMITIR_VEN: TCheckBox
          Left = 109
          Top = 189
          Width = 48
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object lbx_codven: TListBox
          Left = 164
          Top = 169
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnKeyDown = lbx_codvenKeyDown
        end
        object StaticText1: TStaticText
          Left = 15
          Top = 207
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Televendas:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 20
        end
        object CODTEL: TEdit
          Left = 109
          Top = 207
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
          OnExit = CODTELExit
          OnKeyPress = CODTELKeyPress
        end
        object OMITIR_TEL: TCheckBox
          Left = 110
          Top = 227
          Width = 47
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
        end
        object lbx_codtel: TListBox
          Left = 164
          Top = 207
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
          OnKeyDown = lbx_codtelKeyDown
        end
        object StaticText3: TStaticText
          Left = 8
          Top = 245
          Width = 95
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supervisor:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 24
        end
        object CODSUP: TEdit
          Left = 109
          Top = 245
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 25
          OnExit = CODSUPExit
          OnKeyPress = CODSUPKeyPress
        end
        object OMITIR_SUP: TCheckBox
          Left = 110
          Top = 266
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
        end
        object lbx_codsup: TListBox
          Left = 164
          Top = 245
          Width = 345
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 27
          OnKeyDown = lbx_codsupKeyDown
        end
        object RG_CODGRU: TCheckListBox
          Left = 511
          Top = 33
          Width = 251
          Height = 253
          Cursor = crHandPoint
          Hint = 'Emitir Somente Os Selecionados'
          Color = 16777088
          Columns = 2
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'A1'
            'A2'
            'A3'
            'B1'
            'B2'
            'B3')
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style = lbOwnerDrawFixed
          TabOrder = 28
          OnClick = RG_CODGRUClick
        end
        object StaticText11: TStaticText
          Left = 8
          Top = 286
          Width = 95
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Origem do Pedido:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 29
        end
        object CODORI_PED: TEdit
          Left = 109
          Top = 286
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 30
          OnExit = CODORI_PEDExit
          OnKeyPress = CODORI_PEDKeyPress
        end
        object lbx_oriped: TListBox
          Left = 164
          Top = 286
          Width = 345
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 31
          OnKeyDown = lbx_oripedKeyDown
        end
        object OMITIR_ORIPED: TCheckBox
          Left = 110
          Top = 307
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 32
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros 2o.'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 765
        Height = 337
        Align = alClient
        Caption = 'Filtros Secund'#225'rios:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object sbn_coduf: TSpeedButton
          Left = 117
          Top = 64
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
          OnClick = sbn_codufClick
        end
        object StaticText8: TStaticText
          Left = 8
          Top = 25
          Width = 71
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Conv'#234'nio:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
        end
        object CODCV: TEdit
          Left = 87
          Top = 25
          Width = 55
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CODCVExit
          OnKeyPress = CODCVKeyPress
        end
        object OMITIR_CV: TCheckBox
          Left = 87
          Top = 44
          Width = 48
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object lbx_codcv: TListBox
          Left = 141
          Top = 25
          Width = 440
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyDown = lbx_codcvKeyDown
        end
        object StaticText9: TStaticText
          Left = 9
          Top = 62
          Width = 71
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Estado:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 4
        end
        object CODUF: TEdit
          Left = 87
          Top = 63
          Width = 32
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 87
          Top = 84
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object lbx_coduf: TListBox
          Left = 141
          Top = 63
          Width = 440
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codufKeyDown
        end
        object StaticText6: TStaticText
          Left = 7
          Top = 101
          Width = 73
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cidade:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 8
        end
        object CODLOC: TEdit
          Left = 87
          Top = 101
          Width = 55
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 9
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object OMITIR_LOC: TCheckBox
          Left = 87
          Top = 121
          Width = 56
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object lbx_codloc: TListBox
          Left = 141
          Top = 101
          Width = 440
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_codlocKeyDown
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 765
        Height = 337
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -289
        Top = 8
        Width = 1123
        Height = 794
        DataSource = Src_LDR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 3.000000000000000000
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        Visible = False
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 915
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 961
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 289
            Height = 16
            Caption = 'Relat'#243'rio de Vendas Por Grupo de Fornecedores.'
          end
          object lbl_periodo: TRLLabel
            Left = 292
            Top = 16
            Width = 621
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 914
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 964
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object lbl_titulo: TRLLabel
            Left = 0
            Top = 34
            Width = 1047
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio de Vendas Por Grupo de Fornecedores.'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 110
          Width = 1047
          Height = 115
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'NOMSEP'
          object RLBand2: TRLBand
            Left = 1
            Top = 0
            Width = 1045
            Height = 15
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object db_grupo: TRLDBText
              Left = 0
              Top = 0
              Width = 1045
              Height = 14
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMSEP'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
          object band_cab: TRLBand
            Left = 1
            Top = 15
            Width = 1045
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_cabcodigo: TRLMemo
              Left = 2
              Top = 0
              Width = 28
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'C'#243'digo')
            end
            object lbl_cabNome: TRLMemo
              Left = 30
              Top = 0
              Width = 124
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '01')
            end
            object lbl_cabTotal01: TRLMemo
              Left = 212
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '01')
            end
            object lbl_cabTotal02: TRLMemo
              Left = 268
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '02')
            end
            object lbl_cabTotal03: TRLMemo
              Left = 324
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '03')
            end
            object lbl_cabTotal04: TRLMemo
              Left = 382
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '04')
            end
            object lbl_cabTotal05: TRLMemo
              Left = 438
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '05')
            end
            object lbl_cabTotal06: TRLMemo
              Left = 494
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '06')
            end
            object lbl_cabdev: TRLMemo
              Left = 989
              Top = 0
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Devolu'#231#227'o')
            end
            object lbl_cabVdaDia: TRLMemo
              Left = 156
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'VENDA'
                '31/06/2007')
            end
            object lbl_cabTotal07: TRLMemo
              Left = 551
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '07')
            end
            object lbl_cabTotOut: TRLMemo
              Left = 777
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                'Outros')
            end
            object lbl_cabacum: TRLMemo
              Left = 834
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Acumulado')
            end
            object lbl_cabquota: TRLMemo
              Left = 890
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Quota')
            end
            object lbl_cabconc: TRLMemo
              Left = 946
              Top = 1
              Width = 40
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                '%'
                'Conc')
            end
            object lbl_cabTotal08: TRLMemo
              Left = 608
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '08')
            end
            object lbl_cabTotal09: TRLMemo
              Left = 665
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '09')
            end
            object lbl_cabTotal10: TRLMemo
              Left = 721
              Top = 1
              Width = 56
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Total'
                '10')
            end
          end
          object RL_detalhes: TRLBand
            Left = 1
            Top = 47
            Width = 1045
            Height = 15
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RL_detalhesBeforePrint
            object lbl_codigo: TRLDBText
              Left = 2
              Top = 0
              Width = 28
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CODIGO'
              DataSource = Src_LDR
              Holder = lbl_cabcodigo
              Layout = tlCenter
            end
            object lbl_nome: TRLDBText
              Left = 30
              Top = 1
              Width = 124
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMSOM'
              DataSource = Src_LDR
              Holder = lbl_cabNome
              Layout = tlCenter
            end
            object lbl_total01: TRLDBText
              Left = 212
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR01'
              DataSource = Src_LDR
              Holder = lbl_cabTotal01
              Layout = tlCenter
            end
            object lbl_total02: TRLDBText
              Left = 268
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR02'
              DataSource = Src_LDR
              Holder = lbl_cabTotal02
              Layout = tlCenter
            end
            object lbl_total03: TRLDBText
              Left = 324
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR03'
              DataSource = Src_LDR
              Holder = lbl_cabTotal03
              Layout = tlCenter
            end
            object lbl_total04: TRLDBText
              Left = 382
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR04'
              DataSource = Src_LDR
              Holder = lbl_cabTotal04
              Layout = tlCenter
            end
            object lbl_total05: TRLDBText
              Left = 438
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR05'
              DataSource = Src_LDR
              Holder = lbl_cabTotal05
              Layout = tlCenter
            end
            object lbl_total06: TRLDBText
              Left = 494
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR06'
              DataSource = Src_LDR
              Holder = lbl_cabTotal06
              Layout = tlCenter
            end
            object lbl_totdev: TRLDBText
              Left = 989
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALDEV'
              DataSource = Src_LDR
              Holder = lbl_cabdev
              Layout = tlCenter
            end
            object lbl_vdadia: TRLDBText
              Left = 156
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALDIA'
              DataSource = Src_LDR
              Holder = lbl_cabVdaDia
              Layout = tlCenter
            end
            object lbl_total07: TRLDBText
              Left = 551
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR07'
              DataSource = Src_LDR
              Holder = lbl_cabTotal07
              Layout = tlCenter
            end
            object lbl_totout: TRLDBText
              Left = 777
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOUT'
              DataSource = Src_LDR
              Holder = lbl_cabTotOut
              Layout = tlCenter
            end
            object lbl_totacum: TRLDBText
              Left = 834
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALACUM'
              DataSource = Src_LDR
              Holder = lbl_cabacum
              Layout = tlCenter
            end
            object lbl_totquota: TRLDBText
              Left = 890
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'quotaperiodo'
              DataSource = Src_LDR
              Holder = lbl_cabquota
              Layout = tlCenter
            end
            object lbl_totconc: TRLDBText
              Left = 946
              Top = 1
              Width = 40
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'percconc'
              DataSource = Src_LDR
              Holder = lbl_cabconc
              Layout = tlCenter
            end
            object lbl_total08: TRLDBText
              Left = 608
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR08'
              DataSource = Src_LDR
              Holder = lbl_cabTotal08
              Layout = tlCenter
            end
            object lbl_total09: TRLDBText
              Left = 665
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR09'
              DataSource = Src_LDR
              Holder = lbl_cabTotal09
              Layout = tlCenter
            end
            object lbl_total10: TRLDBText
              Left = 721
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'VALOR10'
              DataSource = Src_LDR
              Holder = lbl_cabTotal10
              Layout = tlCenter
            end
          end
          object band6: TRLBand
            Left = 1
            Top = 62
            Width = 1045
            Height = 15
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = band6BeforePrint
            object lblg_codigo: TRLLabel
              Left = 2
              Top = 0
              Width = 28
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '  '
              Holder = lbl_cabcodigo
              Layout = tlCenter
            end
            object lblg_nome: TRLLabel
              Left = 30
              Top = 0
              Width = 124
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total...........'
              Holder = lbl_cabNome
              Layout = tlCenter
            end
            object lblg_total01: TRLLabel
              Left = 212
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal01
              Layout = tlCenter
            end
            object lblg_total02: TRLLabel
              Left = 268
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal02
              Layout = tlCenter
            end
            object lblg_total03: TRLLabel
              Left = 324
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal03
              Layout = tlCenter
            end
            object lblg_total04: TRLLabel
              Left = 382
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal04
              Layout = tlCenter
            end
            object lblg_total05: TRLLabel
              Left = 438
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal05
              Layout = tlCenter
            end
            object lblg_total06: TRLLabel
              Left = 494
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal06
              Layout = tlCenter
            end
            object lblg_totdev: TRLLabel
              Left = 989
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabdev
              Layout = tlCenter
            end
            object lblg_vdadia: TRLLabel
              Left = 156
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabVdaDia
              Layout = tlCenter
            end
            object lblg_total07: TRLLabel
              Left = 551
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal07
              Layout = tlCenter
            end
            object lblg_totout: TRLLabel
              Left = 777
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotOut
              Layout = tlCenter
            end
            object lblg_totacum: TRLLabel
              Left = 834
              Top = 0
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabacum
              Layout = tlCenter
            end
            object lblg_totquota: TRLLabel
              Left = 890
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabquota
              Layout = tlCenter
            end
            object lblg_totconc: TRLLabel
              Left = 946
              Top = 1
              Width = 40
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabconc
              Layout = tlCenter
            end
            object lblg_total08: TRLLabel
              Left = 608
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal08
              Layout = tlCenter
            end
            object lblg_total09: TRLLabel
              Left = 665
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal09
              Layout = tlCenter
            end
            object lblg_total10: TRLLabel
              Left = 721
              Top = 1
              Width = 56
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Holder = lbl_cabTotal10
              Layout = tlCenter
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 225
          Width = 1047
          Height = 9
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_rodape: TRLLabel
            Left = 1021
            Top = 1
            Width = 26
            Height = 6
            Align = faRightTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -5
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object rlTotalGer: TRLBand
          Left = 38
          Top = 234
          Width = 1047
          Height = 32
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = rlTotalGerBeforePrint
          object lblt_data: TRLLabel
            Left = 3
            Top = 0
            Width = 28
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = ' '
            Holder = lbl_cabcodigo
            Layout = tlCenter
          end
          object lblt_nome: TRLLabel
            Left = 31
            Top = 0
            Width = 124
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'Total.............................'
            Holder = lbl_cabNome
            Layout = tlCenter
          end
          object lblt_total01: TRLLabel
            Left = 213
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal01
            Layout = tlCenter
          end
          object lblt_total02: TRLLabel
            Left = 269
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal02
            Layout = tlCenter
          end
          object lblt_total03: TRLLabel
            Left = 325
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal03
            Layout = tlCenter
          end
          object lblt_total04: TRLLabel
            Left = 383
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal04
            Layout = tlCenter
          end
          object lblt_total05: TRLLabel
            Left = 439
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal05
            Layout = tlCenter
          end
          object lblt_total06: TRLLabel
            Left = 495
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal06
            Layout = tlCenter
          end
          object lblt_totdev: TRLLabel
            Left = 990
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabdev
            Layout = tlCenter
          end
          object lblt_vdadia: TRLLabel
            Left = 157
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabVdaDia
            Layout = tlCenter
          end
          object lblt_total07: TRLLabel
            Left = 552
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal07
            Layout = tlCenter
          end
          object lblt_totout: TRLLabel
            Left = 778
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotOut
            Layout = tlCenter
          end
          object lblt_totacum: TRLLabel
            Left = 835
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabacum
            Layout = tlCenter
          end
          object lblt_totquota: TRLLabel
            Left = 891
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabquota
            Layout = tlCenter
          end
          object lblt_totconc: TRLLabel
            Left = 947
            Top = 0
            Width = 40
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabconc
            Layout = tlCenter
          end
          object lblt_total08: TRLLabel
            Left = 609
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal08
            Layout = tlCenter
          end
          object lblt_total09: TRLLabel
            Left = 666
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal09
            Layout = tlCenter
          end
          object lblt_total10: TRLLabel
            Left = 722
            Top = 0
            Width = 56
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Holder = lbl_cabTotal10
            Layout = tlCenter
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 88
          Width = 1047
          Height = 22
          BandType = btColumnHeader
          object filtros: TRLMemo
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 127
    Top = 352
    Width = 80
    Height = 21
    Hint = 
      'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
      #13#10'digite a mesma.'
    BevelOuter = bvNone
    BevelKind = bkSoft
    Ctl3D = True
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 319
    Top = 352
    Width = 81
    Height = 21
    Hint = 
      'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
      '.'
    BevelOuter = bvNone
    BevelKind = bkSoft
    Ctl3D = True
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbImprimir: TBitBtn
    Left = 406
    Top = 463
    Width = 120
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 14
    OnClick = bbImprimirClick
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
  object bbSair: TBitBtn
    Left = 665
    Top = 463
    Width = 120
    Height = 40
    Caption = '&Sair'
    TabOrder = 15
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
  object CB_MATRICIAL: TCheckBox
    Left = 45
    Top = 457
    Width = 118
    Height = 17
    Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
    Caption = 'Impress'#227'o Matricial'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Visible = False
    OnClick = CB_MATRICIALClick
  end
  object CB_VISREL: TCheckBox
    Left = 220
    Top = 441
    Width = 160
    Height = 17
    Hint = 'Se Marcado mostra o '#13#10'relat'#243'rio antes de imprimir'
    Caption = 'Visualizar Antes de Imprimir'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 10
  end
  object RG_FILTRO: TRadioGroup
    Left = 402
    Top = 374
    Width = 98
    Height = 65
    Caption = 'Emitir Somente:'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      '&Pendentes'
      '&Emitidos'
      '&Todos')
    ParentCtl3D = False
    TabOrder = 7
    OnClick = RG_FILTROClick
  end
  object CB_SOMADO: TComboBox
    Left = 127
    Top = 396
    Width = 272
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 12
    TabOrder = 5
    Text = 'Vendedor'
    OnClick = CB_SEPARClick
    Items.Strings = (
      'Ano'
      'Bairro'
      'Cliente'
      'Cidade'
      'Convenio'
      'Estado'
      'Fornecedor'
      'M'#234's'
      'Rede de Clientes'
      'Supervisor'
      'Televendas'
      'Tipo de Pedido'
      'Vendedor')
  end
  object CB_ORDEM: TComboBox
    Left = 127
    Top = 417
    Width = 273
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'Padr'#227'o'
    OnClick = CB_SEPARClick
    Items.Strings = (
      'Padr'#227'o'
      'Valor '
      'Valor Decrescente')
  end
  object CB_FORCAR: TCheckBox
    Left = 220
    Top = 457
    Width = 160
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 11
  end
  object RG_MODELO: TRadioGroup
    Left = 501
    Top = 374
    Width = 220
    Height = 64
    Caption = 'Mod.Relatorio:'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      'Modelo 01(09 counas Matricial)'
      'Modelo 02(11 Colunas Laser)')
    ParentCtl3D = False
    TabOrder = 12
  end
  object CB_ICMSRET: TCheckBox
    Left = 45
    Top = 473
    Width = 165
    Height = 18
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 13
  end
  object CB_TIPOPESQ: TComboBox
    Left = 503
    Top = 346
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_REDDESCFIN: TCheckBox
    Left = 45
    Top = 488
    Width = 295
    Height = 17
    Caption = 'Reduzir Descontos Financeiros Pr'#233'-Fixados no Pedido'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object CB_DIMDEV: TCheckBox
    Left = 220
    Top = 474
    Width = 160
    Height = 17
    Caption = 'Diminuir Devolucao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object Qr_LDR: TQuery
    OnCalcFields = Qr_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select'
      'sum(DECODE(PFPFORMA,'
      '   1001,PFPVALOR,0)) AS VALOR01'
      ',sum(DECODE(PFPFORMA,'
      '   7000,PFPVALOR,0)) AS VALOR02'
      ',sum(DECODE(PFPFORMA,'
      '   4000,PFPVALOR,0)) AS VALOR03'
      ',sum(DECODE(PFPFORMA,'
      '   6030,PFPVALOR,0)) AS VALOR04'
      ',sum(DECODE(PFPFORMA,'
      '   6010,PFPVALOR,0)) AS VALOR05'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALOR06'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALOR07'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALOR08'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALOR09'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALOR10'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALACUM'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALDIA'
      ',sum(DECODE(PFPFORMA,'
      '   6016,PFPVALOR,0)) AS VALDEV'
      ', sum(DECODE(PFPFORMA,'
      '      1001,0,'
      '      7000,0,'
      '      4000,0,'
      '      6030,0,'
      '      6010,0,'
      '      6010,0,'
      '      6010,0,'
      '      6010,0,'
      '      PFPVALOR)) AS VALOUT'
      ', max(PFPNOMFOR) AS NOMSEP'
      ', max(PFPNOMFOR) AS NOMSOM'
      ',max(PFPNOMFOR) AS CODIGO'
      'From cadpfp'
      'group by PFPDATA'
      '')
    Left = 560
    Top = 65534
    object Qr_LDRVALOR01: TFloatField
      FieldName = 'VALOR01'
    end
    object Qr_LDRVALOR02: TFloatField
      FieldName = 'VALOR02'
    end
    object Qr_LDRVALOR03: TFloatField
      FieldName = 'VALOR03'
    end
    object Qr_LDRVALOR04: TFloatField
      FieldName = 'VALOR04'
    end
    object Qr_LDRVALOR05: TFloatField
      FieldName = 'VALOR05'
    end
    object Qr_LDRVALOR06: TFloatField
      FieldName = 'VALOR06'
    end
    object Qr_LDRNOMSEP: TStringField
      FieldName = 'NOMSEP'
    end
    object Qr_LDRNOMSOM: TStringField
      FieldName = 'NOMSOM'
    end
    object Qr_LDRCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object Qr_LDRVALOR07: TFloatField
      FieldName = 'VALOR07'
    end
    object Qr_LDRVALOUT: TFloatField
      FieldName = 'VALOUT'
    end
    object Qr_LDRVALACUM: TFloatField
      FieldName = 'VALACUM'
    end
    object Qr_LDRVALDIA: TFloatField
      FieldName = 'VALDIA'
    end
    object Qr_LDRVALDEV: TFloatField
      FieldName = 'VALDEV'
    end
    object Qr_LDRpercconc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percconc'
      Calculated = True
    end
    object Qr_LDRquotaperiodo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'quotaperiodo'
      Calculated = True
    end
    object Qr_LDRVALOR08: TFloatField
      FieldName = 'VALOR08'
    end
    object Qr_LDRVALOR09: TFloatField
      FieldName = 'VALOR09'
    end
    object Qr_LDRVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 592
    Top = 65520
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 8
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 65528
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 672
    Top = 168
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 8
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
    UsaGerenciadorImpr = True
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
    Left = 432
  end
end
