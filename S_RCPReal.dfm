object Frm_RCPReal: TFrm_RCPReal
  Left = 292
  Top = 160
  Width = 824
  Height = 535
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Caixa Previsto e Realizado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 12
    Top = 230
    Width = 49
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 153
    Top = 230
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 250
    Top = 233
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object lbl_ordem: TLabel
    Left = 11
    Top = 311
    Width = 114
    Height = 13
    Caption = 'Ordem do Relatorio:'
  end
  object Label2: TLabel
    Left = 20
    Top = 334
    Width = 103
    Height = 13
    Caption = 'Tipo do Relatorio:'
    Visible = False
  end
  object Label10: TLabel
    Left = 27
    Top = 358
    Width = 92
    Height = 13
    Caption = 'Estado Lan'#231'am:'
  end
  object sbt_expexcel: TSpeedButton
    Left = 166
    Top = 400
    Width = 155
    Height = 40
    Caption = '&Exportar para Excel'
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      08000000000000040000C40E0000C40E00000001000000010000000000000368
      03000E5F1400091E18001C771D000C271E00203A260012342800194C29002541
      2C00096C2F00194432000E6B32003187340011733600204E38001B6B39001979
      3B00217E3F002B6541002C8746003F93460039724B004A964C00348C4E00395E
      5000489B530038975400407A5600425E5800568259003E9E590054A459004680
      5C00569A5D0044A35E004A6A5F004C876100609963005BAA640050756500548E
      660063AC680057966A0067B06E005E9B71006CB6740062B2750065A076006BA6
      7B0072BB7B006B977D0070AA800072BA830075AF85007BC1850075A0860081AA
      8D0081BC900088C792008AB7950094C79C009DD0A700A8C2A800AAD6B200BADE
      C000C4E5CA00CDDACD00D2E4D200CCE9D200D5E5D500D8E7D800D9E8D900DAE9
      DA00DCEADB00DEEBDE00DFECDF00E0EEE000E3EBE300E2EEE300E4EFE400E6F0
      E600E8F1E800EAF2E900EBF3EB00EDF5ED00EFF6EF00F1F7F100F3F8F300F5F9
      F500F6FAF500F6FAF600F8FAF800F9FBFA00FAFDFA00FBFEFB00FDFEFD00FEFF
      FE00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000626262626262
      6262626262626262626262626262626262626262626262626262626262626262
      626262626262626262626262626262626262626262626262626262621C0F0F0F
      0F0F0F0B0B0B0B0B0B070707070707050505050503030303626262621C272323
      23231F1F1F1B1B1B181814141412121211110E0E0E0C0A03626262621C273328
      282828282828242424242424241D1D1D1D1D1D1D1D1D0C0362626262212F3352
      5251504F4F4D4C4B4A4A49484747464646444444441D0E0362626262212F3353
      525251504F4F4D4C4B4A4A494847474646464444441D0E0562626262212F3354
      53525251504F4F4D4C4B4A4A4948474746464644441D0E056262626225353355
      5453525251504F4F4D4C4B4A4A49484747464646441D11056262626225353355
      555453525251504F4F4D4C402609060606060606461D11056262626225373856
      1709090909090909090908020D0D0E1013131906461D120562626262293A3857
      170E0E1010131319191901043B2E141412120147461D120762626262293B3858
      49172E32322E2C272001153E2E15181414013D47471D120762626262293D3858
      5849172E32322A2001153E2C1A1A151801083F4847241407626262622B3D3859
      585849172E2C2001153E2E20201A1A011412024948241407626262622B3E395A
      595858491720011540322020202001161E291E4A49241407626262622D3E395B
      5A595858490415403727272020163F4F4D4C4B4A4A241807626262622D40395C
      5B5A59583D17413B2A2A27201E01434F4F4D4C4B4A24180B626262622D40395D
      5C5B5A3D1A413D2E2C2A271E221E01434F4F4D4C4B241B0B626262623040395E
      5D5C3D20423D32322E2A1E2C2E201E01434F4F4D4C281B0B626262623041395E
      5E3D27423B3737322C1E2C32322E201E01434F4F4D281B0B6262626231413C5F
      3D2C423E3B373732263F262E32322E201E01434F4F281F0B6262626231413C60
      2E423E3B3B3B3526475843262E32322E201E01504F281F0B6262626231423C61
      2E2E2C2A2A26264E59585843262626291E1E1E5150281F0F6262626234423C62
      61605F5E5E5D5C5B5A59585857565555545352525128230F6262626234423C62
      6261605F5E5E5D5C5B5A595858575655555453525228230F6262626234453C62
      626261605F5E5E5D5C5B5A5958585756555554535228230F626262623645393C
      3C3C3C3C3C3C39393939393838383838383333333333230F6262626236454545
      4242424141414040403E3E3D3D3B3A3735352F2F2F27270F6262626236363634
      34343131313030302D2D2D2B2929292525252121211C1C1C6262626262626262
      6262626262626262626262626262626262626262626262626262626262626262
      6262626262626262626262626262626262626262626262626262}
    OnClick = sbt_expexcelClick
  end
  object Label11: TLabel
    Left = 10
    Top = 289
    Width = 81
    Height = 13
    Caption = 'Agrupado por:'
  end
  object Label12: TLabel
    Left = 2
    Top = 381
    Width = 121
    Height = 13
    Caption = 'Sobre Conciliamento:'
  end
  object MDT1: TMaskEdit
    Left = 68
    Top = 226
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
    Left = 165
    Top = 226
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
  object CB_SALDO: TCheckBox
    Left = 542
    Top = 340
    Width = 109
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Saldo no Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = CB_SEMBORDAClick
  end
  object cb_ordem: TComboBox
    Left = 128
    Top = 308
    Width = 351
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    TabOrder = 15
    Text = 'Sequencia Lan'#231'amento'
    OnExit = cb_agruparExit
    Items.Strings = (
      'Banco+Centro de custo'
      'Banco+Data Prevista'
      'Banco+Data Real'
      'Banco+Sacado'
      'Banco+Departamento'
      'Centro de Custo+Data Prevista'
      'Centro de Custo+Data Real'
      'Data Prevista'
      'Data Real'
      'Data Referencia'
      'Departamento+Centro de custo+Data Prevista'
      'Departamento+Centro de custo+Data Real'
      'Departamento+Data Prevista'
      'Departamento+Data Real'
      'Sequencia Lan'#231'amento'
      'Sacado+Data Prevista'
      'Sacado+Data Real'
      'Natureza'
      'Valor Crescente'
      'Valor decrescente'
      'Data Real+Documento2+Seq_lanc')
  end
  object RG_NAT: TRadioGroup
    Left = 9
    Top = 251
    Width = 225
    Height = 29
    Caption = 'Natureza:'
    Columns = 3
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '&Todas'
      '&D'#233'bitos'
      '&Cr'#233'ditos')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object RG_ESTADO: TRadioGroup
    Left = 245
    Top = 251
    Width = 290
    Height = 29
    Caption = 'Estado dos lan'#231'amentos:'
    Columns = 3
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '&Realizados'
      '&Previstos'
      '&Todos')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnClick = RG_ESTADOClick
  end
  object bbImprimir: TBitBtn
    Left = 9
    Top = 400
    Width = 155
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 24
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
    Left = 573
    Top = 400
    Width = 155
    Height = 40
    Caption = '&Sair'
    TabOrder = 26
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
  object CB_AGRUSAC: TCheckBox
    Left = 542
    Top = 312
    Width = 182
    Height = 12
    Hint = 'se marcado agrupa o nome do'#13#10'sacado a descri'#231#227'o do movimento'
    Caption = 'Agrupar Sacado na Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object CB_ENTRELINHA: TCheckBox
    Left = 542
    Top = 325
    Width = 106
    Height = 17
    Hint = 
      'Se Marcado para Impress'#227'o'#13#10'Matricial imprimir 6 linhas por '#13#10'pol' +
      'egada(tamanho pad'#227'o)'
    Caption = 'Entrelinha 1/6'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 8
    Visible = False
    OnClick = CB_ENTRELINHAClick
  end
  object bbSalvarPadrao: TBitBtn
    Left = 414
    Top = 400
    Width = 155
    Height = 40
    Caption = 'Salvar Padr'#227'o'
    TabOrder = 25
    OnClick = bbSalvarPadraoClick
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
  object CB_SACADO: TCheckBox
    Left = 542
    Top = 294
    Width = 182
    Height = 17
    Caption = 'Imprimir Nome do Sacado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object CB_CCU: TCheckBox
    Left = 542
    Top = 278
    Width = 182
    Height = 17
    Caption = 'Imprimir Nome Centro de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object CB_DEPTO: TCheckBox
    Left = 542
    Top = 236
    Width = 182
    Height = 17
    Caption = 'Imprimir Nome Departamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object CB_BANCO: TCheckBox
    Left = 542
    Top = 220
    Width = 182
    Height = 17
    Caption = 'Imprimir Nome do Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object CB_SEMBORDA: TCheckBox
    Left = 374
    Top = 340
    Width = 85
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Sem Bordas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = CB_SEMBORDAClick
  end
  object cb_agrupar: TComboBox
    Left = 128
    Top = 285
    Width = 351
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 6
    TabOrder = 6
    Text = 'Sem Grupo'
    OnChange = cb_agruparChange
    OnClick = cb_agruparClick
    OnExit = cb_agruparExit
    Items.Strings = (
      'Banco'
      'Centro de Custo'
      'Data'
      'Departamento'
      'Departamento+Centro de Custo'
      'Nome Sacado'
      'Sem Grupo')
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 816
    Height = 217
    ActivePage = TabSheet1
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object sbn_coddep: TSpeedButton
        Left = 60
        Top = 67
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
        OnClick = sbn_coddepClick
      end
      object sbn_codccu: TSpeedButton
        Left = 60
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
        OnClick = sbn_codccuClick
      end
      object StaticText2: TStaticText
        Left = 7
        Top = 5
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Banco'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CODBCO: TEdit
        Left = 7
        Top = 22
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 1
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object OMITIR_BCO: TCheckBox
        Left = 85
        Top = 25
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codbco: TListBox
        Left = 143
        Top = 4
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codbcoKeyDown
      end
      object StaticText1: TStaticText
        Left = 7
        Top = 47
        Width = 133
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Departamento'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object CODDEP: TEdit
        Left = 7
        Top = 67
        Width = 56
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 5
        OnExit = CODDEPExit
      end
      object OMITIR_DEP: TCheckBox
        Left = 86
        Top = 70
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object lbx_coddep: TListBox
        Left = 143
        Top = 47
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_coddepKeyDown
      end
      object StaticText3: TStaticText
        Left = 7
        Top = 92
        Width = 133
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Centro de Custo'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object CODCCU: TEdit
        Left = 7
        Top = 112
        Width = 56
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 9
        OnExit = CODCCUExit
      end
      object OMITIR_CCU: TCheckBox
        Left = 86
        Top = 115
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object lbx_codccu: TListBox
        Left = 143
        Top = 92
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codccuKeyDown
      end
      object CODFOR: TEdit
        Left = 7
        Top = 154
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 12
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object StaticText6: TStaticText
        Left = 7
        Top = 136
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Fornecedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
      end
      object OMITIR_FOR: TCheckBox
        Left = 85
        Top = 155
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codfor: TListBox
        Left = 144
        Top = 135
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codforKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object StaticText5: TStaticText
        Left = 7
        Top = 6
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Vendedor'
        Color = 16772332
        ParentColor = False
        TabOrder = 0
      end
      object CODVEN: TEdit
        Left = 7
        Top = 24
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 1
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 85
        Top = 25
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codven: TListBox
        Left = 144
        Top = 5
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codvenKeyDown
      end
      object StaticText7: TStaticText
        Left = 7
        Top = 52
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Transportadora'
        Color = 16772332
        ParentColor = False
        TabOrder = 4
      end
      object lbx_codtra: TListBox
        Left = 144
        Top = 51
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codtraKeyDown
      end
      object OMITIR_TRA: TCheckBox
        Left = 85
        Top = 71
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object CODTRA: TEdit
        Left = 7
        Top = 70
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 7
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object MCODUSR: TEdit
        Left = 8
        Top = 112
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 8
        OnExit = MCODUSRExit
        OnKeyPress = MCODUSRKeyPress
      end
      object OMITIR_USR: TCheckBox
        Left = 86
        Top = 113
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object StaticText8: TStaticText
        Left = 8
        Top = 94
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Funcionario'
        Color = 16772332
        ParentColor = False
        TabOrder = 10
      end
      object lbx_codusr: TListBox
        Left = 145
        Top = 93
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codusrKeyDown
      end
      object StaticText4: TStaticText
        Left = 6
        Top = 141
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cliente'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object CODCLI: TEdit
        Left = 6
        Top = 158
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 13
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 84
        Top = 161
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codcli: TListBox
        Left = 143
        Top = 140
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codcliKeyDown
      end
    end
    object tsMaisFiltros: TTabSheet
      Caption = 'Mais Filtros'
      ImageIndex = 2
      object StaticText9: TStaticText
        Left = 7
        Top = 6
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Usu'#225'rio Caixa'
        Color = 16772332
        ParentColor = False
        TabOrder = 0
      end
      object edt_codusr_cx: TEdit
        Left = 7
        Top = 24
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 1
        OnExit = edt_codusr_cxExit
        OnKeyPress = edt_codusr_cxKeyPress
      end
      object OMITIR_USR_CX: TCheckBox
        Left = 85
        Top = 25
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codusr_cx: TListBox
        Left = 144
        Top = 5
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codusr_cxKeyDown
      end
    end
    object ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 25
        Top = -127
        Width = 794
        Height = 945
        DataSource = Src_LDR
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        PageSetup.ForceEmulation = True
        ShowProgress = False
        Visible = False
        BeforePrint = RLReport1BeforePrint
        object RLBand_CAB: TRLBand
          Left = 38
          Top = 11
          Width = 718
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
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object lbl_titulo02: TRLLabel
            Left = 0
            Top = 17
            Width = 95
            Height = 16
            Caption = 'Fluxo de Caixa.'
          end
          object lbl_periodo: TRLLabel
            Left = 161
            Top = 17
            Width = 392
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 632
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
            Width = 718
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Previsto e Realizados'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 61
          Width = 718
          Height = 267
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'grupo'
          BeforePrint = RLGroup1BeforePrint
          object RLBand2: TRLBand
            Left = 1
            Top = 0
            Width = 716
            Height = 29
            BandType = btColumnHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 16743805
            BeforePrint = RLBand2BeforePrint
            object lblG_saldoant: TRLLabel
              Left = 640
              Top = 18
              Width = 76
              Height = 9
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabacum
              ParentFont = False
            end
            object rlGSaldo_ant: TRLLabel
              Left = 3
              Top = 17
              Width = 284
              Height = 10
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 
                'Saldo Anterior..................................................' +
                '................................................................' +
                '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lbl_grupo: TRLLabel
              Left = 0
              Top = 0
              Width = 716
              Height = 18
              Align = faTop
              Alignment = taCenter
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object band_cab: TRLBand
            Left = 1
            Top = 29
            Width = 716
            Height = 26
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_cabdat: TRLMemo
              Left = 1
              Top = 0
              Width = 58
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Data'
                'Realizada')
            end
            object lbl_cabdesc: TRLMemo
              Left = 59
              Top = 1
              Width = 310
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Descri'#231#227'o do Movimento')
            end
            object lbl_cabnumdoc: TRLMemo
              Left = 422
              Top = 1
              Width = 68
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'N'#250'mero do '
                'Documento')
            end
            object lbl_cabdeb: TRLMemo
              Left = 490
              Top = 1
              Width = 74
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'D'#233'bito')
            end
            object lbl_cabcred: TRLMemo
              Left = 564
              Top = 1
              Width = 78
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Cr'#233'dito')
            end
            object lbl_cabacum: TRLMemo
              Left = 640
              Top = 1
              Width = 76
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Acumulado')
            end
            object lbl_cabcodigo: TRLMemo
              Left = 368
              Top = 1
              Width = 54
              Height = 24
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'C'#243'digo')
            end
          end
          object RLBand_det: TRLBand
            Left = 1
            Top = 55
            Width = 716
            Height = 15
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand_detBeforePrint
            object db_datpesq: TRLDBText
              Left = 1
              Top = 0
              Width = 58
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'datapesq'
              DataSource = Src_LDR
              Holder = lbl_cabdat
              Layout = tlCenter
            end
            object db_descmv: TRLDBText
              Left = 59
              Top = 0
              Width = 310
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'DESCMV'
              DataSource = Src_LDR
              Holder = lbl_cabdesc
              Layout = tlCenter
            end
            object db_numdoc: TRLDBText
              Left = 422
              Top = 0
              Width = 68
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NUMDOC'
              DataSource = Src_LDR
              Holder = lbl_cabnumdoc
              Layout = tlCenter
            end
            object lbl_acum: TRLLabel
              Left = 640
              Top = 0
              Width = 76
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabacum
              Layout = tlCenter
            end
            object db_codigo: TRLDBText
              Left = 368
              Top = 0
              Width = 54
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CODLDR'
              DataSource = Src_LDR
              Holder = lbl_cabcodigo
              Layout = tlCenter
            end
            object lbl_credbco: TRLLabel
              Left = 564
              Top = 0
              Width = 78
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabcred
              Layout = tlCenter
            end
            object lbl_debbco: TRLLabel
              Left = 490
              Top = 0
              Width = 74
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Holder = lbl_cabdeb
              Layout = tlCenter
            end
          end
          object rlb_banco: TRLBand
            Left = 1
            Top = 70
            Width = 716
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_espaco: TRLLabel
              Left = 1
              Top = 0
              Width = 58
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdat
              ParentFont = False
            end
            object dbBanco: TRLDBText
              Left = 59
              Top = 0
              Width = 310
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'banco'
              DataSource = Src_LDR
              Holder = lbl_cabdesc
            end
          end
          object rlb_depto: TRLBand
            Left = 1
            Top = 80
            Width = 716
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_espaco02: TRLLabel
              Left = 1
              Top = 0
              Width = 58
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdat
              ParentFont = False
            end
            object db_depart: TRLDBText
              Left = 59
              Top = 0
              Width = 310
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'departamento'
              DataSource = Src_LDR
              Holder = lbl_cabdesc
            end
          end
          object rlb_ccu: TRLBand
            Left = 1
            Top = 90
            Width = 716
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_espaco03: TRLLabel
              Left = 1
              Top = 0
              Width = 58
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdat
              ParentFont = False
            end
            object db_centrocusto: TRLDBText
              Left = 59
              Top = 0
              Width = 310
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'centrocusto'
              DataSource = Src_LDR
              Holder = lbl_cabdesc
            end
          end
          object rlb_sacado: TRLBand
            Left = 1
            Top = 100
            Width = 716
            Height = 10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_espaco04: TRLLabel
              Left = 1
              Top = 0
              Width = 58
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdat
              ParentFont = False
            end
            object db_sacado: TRLDBText
              Left = 59
              Top = 0
              Width = 310
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'sacado'
              DataSource = Src_LDR
              Holder = lbl_cabdesc
            end
          end
          object RLBand6: TRLBand
            Left = 1
            Top = 110
            Width = 716
            Height = 17
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand6BeforePrint
            object lbl_espaco05: TRLLabel
              Left = 1
              Top = 0
              Width = 58
              Height = 13
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabdat
              ParentColor = False
              ParentFont = False
            end
            object lbl_total: TRLLabel
              Left = 59
              Top = 0
              Width = 310
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 
                'Total...........................................................' +
                '.........................................'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabdesc
              ParentColor = False
              ParentFont = False
            end
            object RLLabel9: TRLLabel
              Left = 422
              Top = 0
              Width = 68
              Height = 10
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '   '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabnumdoc
              ParentColor = False
              ParentFont = False
            end
            object lbl_totdeb_gru: TRLLabel
              Left = 490
              Top = 0
              Width = 74
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabdeb
              ParentColor = False
              ParentFont = False
            end
            object lbl_totcred_gru: TRLLabel
              Left = 564
              Top = 0
              Width = 78
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = ' '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabcred
              ParentColor = False
              ParentFont = False
            end
            object lbl_totacum_gru: TRLLabel
              Left = 640
              Top = 0
              Width = 76
              Height = 10
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = ' '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabacum
              ParentColor = False
              ParentFont = False
            end
            object RLLabel4: TRLLabel
              Left = 368
              Top = 1
              Width = 54
              Height = 9
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '   '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabcodigo
              ParentColor = False
              ParentFont = False
            end
          end
          object rl_resumobanco: TRLBand
            Left = 1
            Top = 143
            Width = 716
            Height = 104
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 7037716
            AfterPrint = rl_resumobancoAfterPrint
            BeforePrint = rl_resumobancoBeforePrint
            object RLLabel16: TRLLabel
              Left = 210
              Top = 4
              Width = 250
              Height = 11
              Alignment = taCenter
              AutoSize = False
              Caption = 'Resumo Geral da Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel17: TRLLabel
              Left = 210
              Top = 17
              Width = 143
              Height = 14
              AutoSize = False
              Caption = 'Saldo Anterior:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RLLabel18: TRLLabel
              Left = 210
              Top = 32
              Width = 143
              Height = 13
              AutoSize = False
              Caption = 'Total dos D'#233'bitos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel17
              ParentFont = False
            end
            object RLLabel19: TRLLabel
              Left = 210
              Top = 46
              Width = 143
              Height = 13
              AutoSize = False
              Caption = 'Total dos Cr'#233'ditos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel17
              ParentFont = False
            end
            object lblrc_text_saldoatu: TRLLabel
              Left = 210
              Top = 60
              Width = 143
              Height = 13
              AutoSize = False
              Caption = 'Saldo Atual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel17
              ParentFont = False
            end
            object lbl_limite: TRLLabel
              Left = 210
              Top = 74
              Width = 143
              Height = 13
              AutoSize = False
              Caption = 'Limite de Cr'#233'dito:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel17
              ParentFont = False
            end
            object lblrc_text_dispon: TRLLabel
              Left = 210
              Top = 88
              Width = 143
              Height = 14
              AutoSize = False
              Caption = 'Disponivel:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = RLLabel17
              ParentFont = False
            end
            object lblrc_saldoant: TRLLabel
              Left = 353
              Top = 17
              Width = 107
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblrc_totdeb: TRLLabel
              Left = 353
              Top = 32
              Width = 107
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lblrc_saldoant
              ParentFont = False
            end
            object lblrc_totcre: TRLLabel
              Left = 353
              Top = 46
              Width = 107
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lblrc_saldoant
              ParentFont = False
            end
            object lblrc_saldoatu: TRLLabel
              Left = 353
              Top = 60
              Width = 107
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lblrc_saldoant
              ParentFont = False
            end
            object lblrc_limcred: TRLLabel
              Left = 353
              Top = 74
              Width = 107
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lblrc_saldoant
              ParentFont = False
            end
            object lblrc_dispon: TRLLabel
              Left = 353
              Top = 88
              Width = 107
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '   '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lblrc_saldoant
              ParentFont = False
            end
          end
          object RLBand_ticket_medio: TRLBand
            Left = 1
            Top = 127
            Width = 716
            Height = 16
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            BeforePrint = RLBand_ticket_medioBeforePrint
            object lbl_ticket_medio: TRLLabel
              Left = 0
              Top = 1
              Width = 716
              Height = 15
              Align = faClient
              Alignment = taCenter
              Layout = tlCenter
            end
          end
        end
        object RLBand_finalpag: TRLBand
          Left = 38
          Top = 328
          Width = 718
          Height = 15
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_rodape: TRLLabel
            Left = 692
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
        object RLBand_finalger: TRLBand
          Left = 38
          Top = 343
          Width = 718
          Height = 30
          BandType = btSummary
          BeforePrint = RLBand_finalgerBeforePrint
          object lbl_totalger: TRLLabel
            Left = 60
            Top = 0
            Width = 310
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Total Geral.....................................................' +
              '.....................................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabdesc
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 369
            Top = 1
            Width = 54
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabcodigo
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 423
            Top = 1
            Width = 68
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabnumdoc
            ParentFont = False
          end
          object lbl_totdeb_ger: TRLLabel
            Left = 491
            Top = 1
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabdeb
            ParentFont = False
          end
          object lbl_totcred_ger: TRLLabel
            Left = 565
            Top = 1
            Width = 78
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabcred
            ParentFont = False
          end
          object lbl_totacum_ger: TRLLabel
            Left = 641
            Top = 1
            Width = 76
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabacum
            ParentFont = False
          end
          object lbl_saldoger: TRLLabel
            Left = 60
            Top = 15
            Width = 310
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 
              'Saldo Acumulado.................................................' +
              '.............................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabdesc
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 369
            Top = 16
            Width = 54
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabcodigo
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 423
            Top = 16
            Width = 68
            Height = 12
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '   '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabnumdoc
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 491
            Top = 16
            Width = 74
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabdeb
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 565
            Top = 16
            Width = 78
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabcred
            ParentFont = False
          end
          object lbl_saldoacum_ger: TRLLabel
            Left = 641
            Top = 16
            Width = 76
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabacum
            ParentFont = False
          end
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 373
          Width = 718
          Height = 19
          BandType = btSummary
          object rlCriterito: TRLMemo
            Left = 8
            Top = 0
            Width = 682
            Height = 16
            Alignment = taCenter
          end
        end
      end
    end
    object ts_resumoSaldo: TTabSheet
      Caption = 'Resumo dos Saldos'
      ImageIndex = 3
      object RLReport_saldoBancario: TRLReport
        Left = -16
        Top = 39
        Width = 794
        Height = 945
        DataSource = Src_SaldoBancario
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        Visible = False
        BeforePrint = RLReport_saldoBancarioBeforePrint
        object RLBand3: TRLBand
          Left = 38
          Top = 11
          Width = 718
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText2: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel6: TRLLabel
            Left = 573
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 632
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLLabel12: TRLLabel
            Left = 0
            Top = 17
            Width = 92
            Height = 16
            Caption = 'Saldo Banc'#225'rio'
          end
          object RLLabel13: TRLLabel
            Left = 161
            Top = 17
            Width = 392
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel14: TRLLabel
            Left = 572
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 632
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel15: TRLLabel
            Left = 0
            Top = 34
            Width = 718
            Height = 16
            Align = faClientBottom
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Previsto e Realizados'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand_cabsaldo: TRLBand
          Left = 38
          Top = 61
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object rlcabsaldo_codigo: TRLLabel
            Left = 5
            Top = 0
            Width = 65
            Height = 16
            Alignment = taJustify
            AutoSize = False
            Caption = 'C'#243'digo'
          end
          object rlcabsaldo_nome: TRLLabel
            Left = 72
            Top = 0
            Width = 339
            Height = 16
            AutoSize = False
            Caption = 'Banco/Caixa'
          end
          object rlcabsaldo_saldo: TRLLabel
            Left = 412
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Saldo'
          end
          object rlcabsaldo_limite: TRLLabel
            Left = 513
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Limite'
          end
          object rlcabsaldo_disponivel: TRLLabel
            Left = 615
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Disponivel'
          end
        end
        object rldetail_saldo: TRLBand
          Left = 38
          Top = 77
          Width = 718
          Height = 16
          BeforePrint = rldetail_saldoBeforePrint
          object RLDBText3: TRLDBText
            Left = 5
            Top = 0
            Width = 65
            Height = 16
            AutoSize = False
            DataField = 'BCCODBCO'
            DataSource = Src_SaldoBancario
            Holder = rlcabsaldo_codigo
          end
          object RLDBText4: TRLDBText
            Left = 72
            Top = 0
            Width = 339
            Height = 16
            AutoSize = False
            DataField = 'BCBANCO'
            DataSource = Src_SaldoBancario
            Holder = rlcabsaldo_nome
          end
          object RLDBText5: TRLDBText
            Left = 412
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'saldo'
            DataSource = Src_SaldoBancario
            Holder = rlcabsaldo_saldo
          end
          object RLDBText6: TRLDBText
            Left = 513
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'BCLIMITE'
            DataSource = Src_SaldoBancario
            Holder = rlcabsaldo_limite
          end
          object RLDBText7: TRLDBText
            Left = 615
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'disponivel'
            DataSource = Src_SaldoBancario
            Holder = rlcabsaldo_disponivel
          end
        end
        object rlsaldo_rodape: TRLBand
          Left = 38
          Top = 93
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = rlsaldo_rodapeBeforePrint
          object rlRodsaldo_nome: TRLLabel
            Left = 72
            Top = 0
            Width = 339
            Height = 16
            AutoSize = False
            Caption = '-Total........................................................'
            Holder = rlcabsaldo_nome
          end
          object rlRodsaldo_saldo: TRLLabel
            Left = 412
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = rlcabsaldo_saldo
          end
          object rlRodsaldo_limite: TRLLabel
            Left = 513
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = rlcabsaldo_limite
          end
          object rlRodsaldo_disponivel: TRLLabel
            Left = 615
            Top = 0
            Width = 100
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = rlcabsaldo_disponivel
          end
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'tsConfiguracao'
      ImageIndex = 4
      object Label3: TLabel
        Left = 22
        Top = 7
        Width = 228
        Height = 13
        Caption = 'Configura'#231#227'o dos Tamanhos das Fontes'
      end
      object Label6: TLabel
        Left = 24
        Top = 24
        Width = 65
        Height = 13
        Caption = 'Cabe'#231'alho:'
      end
      object Label7: TLabel
        Left = 24
        Top = 42
        Width = 94
        Height = 13
        Caption = 'Corpo/Detalhes:'
      end
      object Label8: TLabel
        Left = 167
        Top = 21
        Width = 38
        Height = 13
        Caption = 'Altura:'
      end
      object Label9: TLabel
        Left = 166
        Top = 40
        Width = 38
        Height = 13
        Caption = 'Altura:'
      end
      object TAMCAB: TEdit
        Left = 120
        Top = 20
        Width = 37
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '-13'
        OnExit = TAMCABExit
      end
      object TAMDET: TEdit
        Left = 120
        Top = 38
        Width = 37
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Text = '-8'
        OnExit = TAMDETExit
      end
      object ALTCAB: TEdit
        Left = 210
        Top = 20
        Width = 37
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '16'
        OnExit = ALTCABExit
      end
      object ALTDET: TEdit
        Left = 210
        Top = 38
        Width = 37
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = '14'
        OnExit = ALTDETExit
      end
      object CB_DESCSAC: TCheckBox
        Left = 24
        Top = 82
        Width = 257
        Height = 17
        Caption = 'Substituir Descricao por Sacado'
        TabOrder = 5
        OnExit = CB_DESCSACExit
      end
      object CB_OBSFINSAC: TCheckBox
        Left = 24
        Top = 64
        Width = 377
        Height = 17
        Caption = 'Ao Inves de Descricao Imprimir Observacoes do Financeiro'
        TabOrder = 4
        OnExit = CB_OBSFINSACExit
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Integra'#231#245'es(Exporta'#231#245'es)'
      ImageIndex = 6
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 449
        Height = 186
        Align = alLeft
        Caption = 'Integra'#231#227'o Dominio:'
        TabOrder = 0
        object Label13: TLabel
          Left = 1
          Top = 41
          Width = 160
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tipo Lancamento:'
        end
        object Label14: TLabel
          Left = 1
          Top = 20
          Width = 160
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'dio da Filial:'
        end
        object cb_tipolancameno: TComboBox
          Left = 167
          Top = 38
          Width = 258
          Height = 21
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 2
          ParentCtl3D = False
          TabOrder = 0
          Text = 'X=Um d'#233'bito para um cr'#233'dito'
          Items.Strings = (
            'D=Um d'#233'bito para v'#225'rios cr'#233'ditos'
            'C=Um cr'#233'dito para v'#225'rios d'#233'bitos'
            'X=Um d'#233'bito para um cr'#233'dito'
            'V=V'#225'rios d'#233'bitos para v'#225'rios cr'#233'ditos')
        end
        object edt_codfil: TEdit
          Left = 166
          Top = 17
          Width = 97
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object bbexpdom_salvarpadrao: TBitBtn
          Left = 286
          Top = 106
          Width = 155
          Height = 40
          Caption = 'Salvar Padr'#227'o'
          TabOrder = 2
          OnClick = bbexpdom_salvarpadraoClick
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
        object bbdom_exportar: TBitBtn
          Left = 9
          Top = 106
          Width = 155
          Height = 40
          Caption = 'Exporar agora'
          TabOrder = 3
          OnClick = bbdom_exportarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object cb_dom_exportacc: TCheckBox
          Left = 10
          Top = 61
          Width = 170
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Exportar Centro de Custo'
          TabOrder = 4
        end
      end
    end
  end
  object CB_MODELO: TComboBox
    Left = 128
    Top = 333
    Width = 107
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 17
    Text = 'Modelo 01'
    Visible = False
    OnClick = cb_agruparClick
    OnExit = cb_agruparExit
    Items.Strings = (
      'Modelo 01'
      'Modelo 02')
  end
  object CB_LINHA_LQ: TCheckBox
    Left = 374
    Top = 356
    Width = 131
    Height = 17
    Caption = 'Impressora Linha LQ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object CB_COMPENS: TComboBox
    Left = 128
    Top = 357
    Width = 137
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 18
    Text = 'Todos'
    Items.Strings = (
      'Todos'
      'Compensados'
      'N'#227'o Compensados')
  end
  object CB_PROVISAO: TCheckBox
    Left = 542
    Top = 250
    Width = 182
    Height = 17
    Caption = 'Imprimir Provisao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
  object cb_compra: TCheckBox
    Left = 542
    Top = 263
    Width = 182
    Height = 17
    Caption = 'Imprimir Pedido Cpr Previstas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    Visible = False
  end
  object cb_quebra_agrupa: TCheckBox
    Left = 542
    Top = 355
    Width = 195
    Height = 17
    Hint = 'Quebra folha ao Agrupar'
    Caption = 'Quebra de Pagina no Agrupamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = CB_SEMBORDAClick
  end
  object CB_TPPESQ: TComboBox
    Left = 336
    Top = 229
    Width = 193
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 3
    Text = 'Realizada'
    Items.Strings = (
      'Referencia'
      'Prevista'
      'Realizada'
      'Concilia'#231#227'o')
  end
  object CB_CONCILIAMENTO: TComboBox
    Left = 127
    Top = 378
    Width = 137
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    TabOrder = 20
    Text = 'Todos'
    Items.Strings = (
      'Todos'
      'Conciliados'
      'N'#227'o Conciliados')
  end
  object CB_TICKET_MEDIO: TCheckBox
    Left = 544
    Top = 373
    Width = 161
    Height = 17
    Caption = 'Apresentar Ticket M'#233'dio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
  end
  object Qr_LDR: TQuery
    OnCalcFields = Qr_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select DATADP as DATAPESQ,'
      '       VALORP as VALORSEL,'
      '       CODLDR,'
      '       CODBCO,'
      '       NOMBCO,'
      '       CODCC,'
      '       NOMCCU,'
      '       NATDC,'
      '       DESCMV,'
      '       NUMDOC,'
      '       NUMDOC2,'
      '       CODDEP,'
      '       NOMDEP,'
      '       TIPO,'
      '       CODIGO,'
      '       COMPENS,'
      '       NOME,'
      '       NOME as GRUPO,'
      '       CODEMP'
      '       ,rownum as registro'
      '       ,'#39'CADLDR'#39' as origem'
      '        from CADLDR where CODEMP is null')
    Left = 568
    Top = 39
    object Qr_LDRsacado: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'sacado'
      Size = 60
      Calculated = True
    end
    object Qr_LDRdebito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'debito'
      Calculated = True
    end
    object Qr_LDRcredito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'credito'
      Calculated = True
    end
    object Qr_LDRbanco: TStringField
      FieldKind = fkCalculated
      FieldName = 'banco'
      Size = 60
      Calculated = True
    end
    object Qr_LDRdepartamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'departamento'
      Size = 60
      Calculated = True
    end
    object Qr_LDRcentrocusto: TStringField
      FieldKind = fkCalculated
      FieldName = 'centrocusto'
      Size = 60
      Calculated = True
    end
    object Qr_LDRDATAPESQ: TDateTimeField
      FieldName = 'DATAPESQ'
      Origin = 'SG_ASSOC.CADLDR.DATADP'
    end
    object Qr_LDRVALORSEL: TFloatField
      FieldName = 'VALORSEL'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LDRCODBCO: TFloatField
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADLDR.CODBCO'
    end
    object Qr_LDRNOMBCO: TStringField
      FieldName = 'NOMBCO'
      Origin = 'SG_ASSOC.CADLDR.NOMBCO'
      Size = 40
    end
    object Qr_LDRCODCC: TStringField
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_LDRNOMCCU: TStringField
      FieldName = 'NOMCCU'
      Origin = 'SG_ASSOC.CADLDR.NOMCCU'
      Size = 40
    end
    object Qr_LDRNATDC: TStringField
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object Qr_LDRDESCMV: TStringField
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 50
    end
    object Qr_LDRNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object Qr_LDRNUMDOC2: TStringField
      FieldName = 'NUMDOC2'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC2'
      Size = 15
    end
    object Qr_LDRCODDEP: TStringField
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.CADLDR.CODDEP'
      Size = 6
    end
    object Qr_LDRNOMDEP: TStringField
      FieldName = 'NOMDEP'
      Origin = 'SG_ASSOC.CADLDR.NOMDEP'
      Size = 40
    end
    object Qr_LDRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'SG_ASSOC.CADLDR.TIPO'
      Size = 2
    end
    object Qr_LDRCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODIGO'
    end
    object Qr_LDRCOMPENS: TFloatField
      FieldName = 'COMPENS'
      Origin = 'SG_ASSOC.CADLDR.COMPENS'
    end
    object Qr_LDRNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Qr_LDRCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADLDR.CODEMP'
    end
    object Qr_LDRGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Qr_LDRcredbco: TStringField
      FieldKind = fkCalculated
      FieldName = 'credbco'
      Size = 14
      Calculated = True
    end
    object Qr_LDRdebbco: TStringField
      FieldKind = fkCalculated
      FieldName = 'debbco'
      Calculated = True
    end
    object Qr_LDRCODLDR: TFloatField
      FieldName = 'CODLDR'
      Origin = 'SG_ASSOC.CADLDR.CODLDR'
    end
    object Qr_LDRREGISTRO: TFloatField
      FieldName = 'REGISTRO'
    end
    object Qr_LDRORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 6
    end
    object Qr_LDRCCEXP_CODCTA_CRED: TStringField
      FieldName = 'CCEXP_CODCTA_CRED'
      Size = 30
    end
    object Qr_LDRCCEXP_CODCTA_DEB: TStringField
      FieldName = 'CCEXP_CODCTA_DEB'
      Size = 30
    end
    object Qr_LDRCCEXP_CODCCU_CRED: TStringField
      FieldName = 'CCEXP_CODCCU_CRED'
      Size = 30
    end
    object Qr_LDRCCEXP_CODCCU_DEB: TStringField
      FieldName = 'CCEXP_CODCCU_DEB'
      Size = 30
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 600
    Top = 25
  end
  object matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 113
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 624
    Top = 153
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 587
    Top = 139
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 679
    Top = 125
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 27
  end
  object Qr_SaldoBancario: TQuery
    OnCalcFields = Qr_SaldoBancarioCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select BCCODBCO,bcbanco,bclimite,BCSALDOI,'
      'SUM(DECODE(NATDC,'#39'D'#39',VALORP,0)) AS DEBITO,'
      'SUM(DECODE(NATDC,'#39'D'#39',0,VALORP)) AS CREDITO'
      'from cadbco,CADLDR'
      'WHERE CODBCO=BCCODBCO'
      'AND STATUS<9'
      'GROUP BY bcbanco,BCCODBCO,bclimite,BCSALDOI')
    Left = 448
    Top = 33
    object Qr_SaldoBancarioBCCODBCO: TFloatField
      FieldName = 'BCCODBCO'
    end
    object Qr_SaldoBancarioBCBANCO: TStringField
      FieldName = 'BCBANCO'
      Size = 40
    end
    object Qr_SaldoBancarioBCLIMITE: TFloatField
      FieldName = 'BCLIMITE'
    end
    object Qr_SaldoBancarioBCSALDOI: TFloatField
      FieldName = 'BCSALDOI'
    end
    object Qr_SaldoBancarioDEBITO: TFloatField
      FieldName = 'DEBITO'
    end
    object Qr_SaldoBancarioCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object Qr_SaldoBancariosaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      Calculated = True
    end
    object Qr_SaldoBancariodisponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'disponivel'
      Calculated = True
    end
  end
  object Src_SaldoBancario: TDataSource
    DataSet = Qr_SaldoBancario
    Left = 440
    Top = 72
  end
  object mem_excel: TRxMemoryData
    FieldDefs = <
      item
        Name = 'datadoc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'descmv'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'codldr'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'numdoc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'debito'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'credito'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'saldo'
        DataType = ftString
        Size = 20
      end>
    Left = 676
    Top = 187
    object mem_exceldatadoc: TStringField
      FieldName = 'datadoc'
      Size = 10
    end
    object mem_exceldescmv: TStringField
      FieldName = 'descmv'
      Size = 60
    end
    object mem_excelcodldr: TStringField
      FieldName = 'codldr'
      Size = 10
    end
    object mem_excelnumdoc: TStringField
      FieldName = 'numdoc'
    end
    object mem_exceldebito: TStringField
      FieldName = 'debito'
    end
    object mem_excelcredito: TStringField
      FieldName = 'credito'
    end
    object mem_excelsaldo: TStringField
      FieldName = 'saldo'
    end
  end
  object Src_Excel: TDataSource
    DataSet = mem_excel
    Left = 644
    Top = 195
  end
  object Qr_SaldoGeral: TQuery
    OnCalcFields = Qr_SaldoBancarioCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select BCCODBCO,bcbanco,bclimite,BCSALDOI,'
      'SUM(DECODE(NATDC,'#39'D'#39',VALORP,0)) AS DEBITO,'
      'SUM(DECODE(NATDC,'#39'D'#39',0,VALORP)) AS CREDITO'
      'from cadbco,CADLDR'
      'WHERE CODBCO=BCCODBCO'
      'AND STATUS<9'
      'GROUP BY bcbanco,BCCODBCO,bclimite,BCSALDOI')
    Left = 744
    Top = 89
    object Qr_SaldoGeralCODBCO: TFloatField
      FieldName = 'CODBCO'
    end
    object Qr_SaldoGeralVALOR_DEB: TFloatField
      FieldName = 'VALOR_DEB'
    end
    object Qr_SaldoGeralVALOR_CRED: TFloatField
      FieldName = 'VALOR_CRED'
    end
    object Qr_SaldoGeralSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object Qr_SaldoGeralBCLIMITE: TFloatField
      FieldName = 'BCLIMITE'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 828
    Top = 171
  end
end
