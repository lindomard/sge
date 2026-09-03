object Frm_RelVendaComis: TFrm_RelVendaComis
  Left = 71
  Top = 131
  Width = 789
  Height = 475
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatorio Sintetico das Vendas com as Cotas dos Vendedores'
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
    Left = 47
    Top = 311
    Width = 49
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 229
    Top = 309
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 31
    Top = 369
    Width = 67
    Height = 13
    Caption = 'Separado por:'
    Visible = False
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 328
    Top = 392
    Width = 140
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
    Left = 492
    Top = 309
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 331
    Width = 88
    Height = 13
    Caption = 'Calcular comiss'#227'o:'
  end
  object Label6: TLabel
    Left = 14
    Top = 352
    Width = 115
    Height = 13
    Caption = 'Calcular comiss'#227'o Extra:'
  end
  object CB_SEMBORDA: TCheckBox
    Left = 495
    Top = 326
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
  object cb_agrupar: TComboBox
    Left = 102
    Top = 366
    Width = 246
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    TabOrder = 5
    Text = 'M'#234's da Emiss'#227'o'
    Visible = False
    OnClick = cb_agruparClick
    Items.Strings = (
      'Ano'
      'Mes'
      'Cidade'
      'Cliente'
      'Convenio'
      'Estado'
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
    Width = 781
    Height = 300
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object StaticText4: TStaticText
        Left = 6
        Top = 2
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente'
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
        Left = 95
        Top = 0
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 96
        Top = 22
        Width = 50
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codcli: TListBox
        Left = 148
        Top = 1
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codcliKeyDown
      end
      object StaticText5: TStaticText
        Left = 7
        Top = 43
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 13
      end
      object CODVEN: TEdit
        Left = 95
        Top = 39
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 98
        Top = 61
        Width = 45
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object lbx_codven: TListBox
        Left = 148
        Top = 39
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codvenKeyDown
      end
      object StaticText1: TStaticText
        Left = 8
        Top = 76
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Televendas'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 14
      end
      object CODTEL: TEdit
        Left = 95
        Top = 77
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object OMITIR_TEL: TCheckBox
        Left = 98
        Top = 98
        Width = 47
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbx_codtel: TListBox
        Left = 148
        Top = 77
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 99
        Top = 136
        Width = 47
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object lbx_codsup: TListBox
        Left = 148
        Top = 115
        Width = 440
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codsupKeyDown
      end
      object StaticText3: TStaticText
        Left = 9
        Top = 117
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supervisor'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 15
      end
      object CODSUP: TEdit
        Left = 95
        Top = 115
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object StaticText11: TStaticText
        Left = -8
        Top = 156
        Width = 95
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Origem do Pedido:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 16
      end
      object CODORI_PED: TEdit
        Left = 93
        Top = 156
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        OnExit = CODORI_PEDExit
        OnKeyPress = CODORI_PEDKeyPress
      end
      object lbx_oriped: TListBox
        Left = 148
        Top = 156
        Width = 441
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnKeyDown = lbx_oripedKeyDown
      end
      object OMITIR_ORIPED: TCheckBox
        Left = 94
        Top = 181
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object sbn_coddep: TSpeedButton
        Left = 134
        Top = 78
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
      object StaticText7: TStaticText
        Left = 6
        Top = 0
        Width = 85
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rede de Clientes'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
      end
      object lbx_codred: TListBox
        Left = 158
        Top = 1
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codredKeyDown
      end
      object OMITIR_RED: TCheckBox
        Left = 93
        Top = 19
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODRED: TEdit
        Left = 93
        Top = 1
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODREDExit
        OnKeyPress = CODREDKeyPress
      end
      object CODCV: TEdit
        Left = 93
        Top = 39
        Width = 67
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODCVExit
        OnKeyPress = CODCVKeyPress
      end
      object OMITIR_CV: TCheckBox
        Left = 93
        Top = 58
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object StaticText8: TStaticText
        Left = 6
        Top = 42
        Width = 85
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Conv'#234'nio'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 6
      end
      object lbx_codcv: TListBox
        Left = 158
        Top = 39
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
        OnKeyDown = lbx_codcvKeyDown
      end
      object StaticText6: TStaticText
        Left = 6
        Top = 118
        Width = 85
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 8
      end
      object CODLOC: TEdit
        Left = 93
        Top = 115
        Width = 66
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object OMITIR_LOC: TCheckBox
        Left = 93
        Top = 137
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object lbx_codloc: TListBox
        Left = 158
        Top = 115
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnKeyDown = lbx_codlocKeyDown
      end
      object StaticText9: TStaticText
        Left = 6
        Top = 77
        Width = 85
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Estado'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 9
      end
      object CODUF: TEdit
        Left = 93
        Top = 77
        Width = 41
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BorderStyle = bsNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnExit = CODUFExit
      end
      object OMITIR_UF: TCheckBox
        Left = 93
        Top = 98
        Width = 52
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object lbx_coduf: TListBox
        Left = 158
        Top = 77
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = lbx_codufKeyDown
      end
      object CB_FORCAR: TCheckBox
        Left = 10
        Top = 177
        Width = 215
        Height = 17
        Caption = 'For'#231'ar todos Registros'
        TabOrder = 16
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 735
        Height = 292
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
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
        Left = -9
        Top = 41
        Width = 794
        Height = 945
        DataSource = Src_LDR
        DefaultFilter = Matricial
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
        BeforePrint = RLReport1BeforePrint
        object RLBand1: TRLBand
          Left = 38
          Top = 11
          Width = 718
          Height = 91
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 135
            Height = 13
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 573
            Top = 1
            Width = 28
            Height = 13
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
            Width = 143
            Height = 13
            Caption = 'Relat'#243'rio Comiss'#227'o Vendedor'
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
            Width = 40
            Height = 13
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
            Left = -2
            Top = 53
            Width = 870
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = 'Relat'#243'rio Comiss'#227'o de Vendas Por Vendedor'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
          object lbl_cabcodven: TRLLabel
            Left = 2
            Top = 70
            Width = 41
            Height = 13
            AutoSize = False
            Caption = 'Cod.Vend'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cabnomven: TRLLabel
            Left = 43
            Top = 70
            Width = 144
            Height = 12
            AutoSize = False
            Caption = 'Nome Vendedor'
            Layout = tlCenter
          end
          object lbl_cadcd: TRLLabel
            Left = 187
            Top = 70
            Width = 26
            Height = 12
            AutoSize = False
            Caption = 'C/D'
            Layout = tlCenter
          end
          object lbl_cabped: TRLLabel
            Left = 212
            Top = 70
            Width = 27
            Height = 12
            AutoSize = False
            Caption = 'Ped'
            Layout = tlCenter
          end
          object lbl_cabsdesc: TRLLabel
            Left = 238
            Top = 70
            Width = 67
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vlr.S/Desc'
            Layout = tlCenter
          end
          object lbl_cabtotal: TRLLabel
            Left = 306
            Top = 70
            Width = 64
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vrl.Total'
            Layout = tlCenter
          end
          object lbl_cabcomis: TRLLabel
            Left = 492
            Top = 70
            Width = 64
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vlr.Comis'
            Layout = tlCenter
          end
          object RLLabel10: TRLLabel
            Left = -1
            Top = 81
            Width = 717
            Height = 9
            AutoSize = False
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '-----------------------------------------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_cadquota: TRLLabel
            Left = 624
            Top = 69
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quota'
            Layout = tlCenter
          end
          object lbl_PQuota: TRLLabel
            Left = 681
            Top = 70
            Width = 34
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = '%'
            Layout = tlCenter
          end
          object lbl_cabtotdev: TRLLabel
            Left = 370
            Top = 70
            Width = 57
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Tot devol'
            Layout = tlCenter
          end
          object lbl_cabVdaDev: TRLLabel
            Left = 429
            Top = 70
            Width = 64
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vda-Devol.'
            Layout = tlCenter
          end
          object lbl_comisExtra: TRLLabel
            Left = 558
            Top = 70
            Width = 64
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'V.Com.Extra'
            Layout = tlCenter
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 124
          Width = 718
          Height = 30
          DataFields = 'NOMEVEN'
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand2BeforePrint
            object RLDBText2: TRLDBText
              Left = 2
              Top = 0
              Width = 41
              Height = 16
              AutoSize = False
              DataField = 'CODVEN'
              DataSource = Src_LDR
              Holder = lbl_cabcodven
              Layout = tlCenter
            end
            object RLDBText3: TRLDBText
              Left = 43
              Top = 0
              Width = 144
              Height = 16
              AutoSize = False
              DataField = 'NOMEVEN'
              DataSource = Src_LDR
              Holder = lbl_cabnomven
              Layout = tlCenter
            end
            object RLDBText4: TRLDBText
              Left = 492
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valorcomisliq'
              DataSource = Src_LDR
              Holder = lbl_cabcomis
              Layout = tlCenter
            end
            object RLDBText6: TRLDBText
              Left = 238
              Top = 0
              Width = 67
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VALORSDESC'
              DataSource = Src_LDR
              Holder = lbl_cabsdesc
              Layout = tlCenter
            end
            object RLDBText7: TRLDBText
              Left = 306
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLRTOTAL'
              DataSource = Src_LDR
              Holder = lbl_cabtotal
              Layout = tlCenter
            end
            object RLDBText8: TRLDBText
              Left = 212
              Top = 0
              Width = 27
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'qtdped'
              DataSource = Src_LDR
              Holder = lbl_cabped
              Layout = tlCenter
            end
            object RLDBText9: TRLDBText
              Left = 370
              Top = 0
              Width = 57
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VLRTOTAL_DEV'
              DataSource = Src_LDR
              Holder = lbl_cabtotdev
              Layout = tlCenter
            end
            object RLDBText10: TRLDBText
              Left = 187
              Top = 0
              Width = 26
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'qtddev'
              DataSource = Src_LDR
              Holder = lbl_cadcd
              Layout = tlCenter
            end
            object lbl_VdaDev: TRLDBText
              Left = 429
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'totalliq'
              DataSource = Src_LDR
              Holder = lbl_cabVdaDev
              Layout = tlCenter
            end
            object db_quota: TRLDBText
              Left = 624
              Top = 0
              Width = 57
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'quotaperiodo'
              DataSource = Src_LDR
              Holder = lbl_cadquota
              Layout = tlCenter
            end
            object db_PQuota: TRLDBText
              Left = 681
              Top = 0
              Width = 34
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'percentual'
              DataSource = Src_LDR
              Holder = lbl_PQuota
              Layout = tlCenter
            end
            object RLDBText5: TRLDBText
              Left = 558
              Top = 2
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'valorcomisextra'
              DataSource = Src_LDR
              Holder = lbl_comisExtra
              Layout = tlCenter
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 170
          Width = 718
          Height = 32
          BandType = btFooter
          object RLLabel23: TRLLabel
            Left = 0
            Top = 0
            Width = 718
            Height = 12
            Align = faTop
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 452
            Top = 13
            Width = 264
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            Info = itFullDate
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 154
          Width = 718
          Height = 16
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand4BeforePrint
          object RLLabel2: TRLLabel
            Left = 5
            Top = 1
            Width = 84
            Height = 10
            Caption = 'Total Geral......................'
            Layout = tlCenter
          end
          object lbl_totpedDev: TRLLabel
            Left = 187
            Top = 0
            Width = 26
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cadcd
            Layout = tlCenter
          end
          object lbl_totPed: TRLLabel
            Left = 212
            Top = 0
            Width = 27
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabped
            Layout = tlCenter
          end
          object lbl_totdes: TRLLabel
            Left = 238
            Top = 0
            Width = 67
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabsdesc
            Layout = tlCenter
          end
          object lbl_totliq: TRLLabel
            Left = 306
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabtotal
            Layout = tlCenter
          end
          object lbl_totdev: TRLLabel
            Left = 370
            Top = 0
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabtotdev
            Layout = tlCenter
          end
          object lbl_totcomis: TRLLabel
            Left = 492
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabcomis
            Layout = tlCenter
          end
          object lbl_TotVdaDev: TRLLabel
            Left = 429
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cabVdaDev
            Layout = tlCenter
          end
          object lbl_totcadquota: TRLLabel
            Left = 624
            Top = 0
            Width = 57
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_cadquota
            Layout = tlCenter
          end
          object lbl_totPQuota: TRLLabel
            Left = 681
            Top = 0
            Width = 34
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_PQuota
            Layout = tlCenter
          end
          object lbl_totcomisextra: TRLLabel
            Left = 558
            Top = 0
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Holder = lbl_comisExtra
            Layout = tlCenter
          end
        end
        object RLBand5: TRLBand
          Left = 38
          Top = 102
          Width = 718
          Height = 22
          BandType = btColumnHeader
          object filtros: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 102
    Top = 307
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
  end
  object MDT2: TMaskEdit
    Left = 267
    Top = 307
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
  end
  object bbImprimir: TBitBtn
    Left = 9
    Top = 392
    Width = 140
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 12
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
    Left = 629
    Top = 394
    Width = 140
    Height = 40
    Caption = '&Sair'
    TabOrder = 13
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
    Left = 495
    Top = 341
    Width = 132
    Height = 17
    Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
    Caption = 'Impress'#227'o Matricial'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 9
    OnClick = CB_MATRICIALClick
  end
  object CB_VISREL: TCheckBox
    Left = 495
    Top = 358
    Width = 225
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
    Left = 358
    Top = 308
    Width = 108
    Height = 51
    Caption = 'Emitir Somente:'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      '&Pendentes'
      '&Emitidos'
      '&Todos')
    ParentCtl3D = False
    TabOrder = 6
  end
  object CB_TIPOPESQ: TComboBox
    Left = 574
    Top = 307
    Width = 132
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_ICMSRET: TCheckBox
    Left = 495
    Top = 374
    Width = 207
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    Enabled = False
    TabOrder = 11
  end
  object CB_ORICOMIS: TComboBox
    Left = 131
    Top = 327
    Width = 217
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Padr'#227'o(ja Calculada)'
    OnClick = cb_agruparClick
    Items.Strings = (
      'Padr'#227'o(ja Calculada)'
      'Calcular do Cadastro de Vendedor'
      'Calcular do Cadastro de Produtos'
      'Calcular do Cadastro de Fornecedor')
  end
  object CB_ORICOMISEXTRA: TComboBox
    Left = 131
    Top = 346
    Width = 217
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'Padr'#227'o(ja Calculada)'
    OnClick = cb_agruparClick
    Items.Strings = (
      'Padr'#227'o(ja Calculada)'
      'Calcular do Cadastro de Vendedor'
      'Calcular do Cadastro de Produtos'
      'Calcular do Cadastro de Fornecedor')
  end
  object Qr_LDR: TQuery
    OnCalcFields = Qr_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select p1codven as codven,vnome as nomeven,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,p2vcomis)'
      '       ) as VlrComissao,'
      ' Sum(decode(p1tipo'
      '       ,8,p2vcomis'
      '       ,12,p2vcomis'
      '       ,13,p2vcomis'
      '       ,19,p2vcomis'
      '       ,0)'
      '       ) as VlrComissao_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,P2VCOMIS_EXTRA)'
      '        ) as VlrComissao_extra,'
      ' Sum(decode(p1tipo'
      '       ,8,P2VCOMIS_EXTRA'
      '       ,12,P2VCOMIS_EXTRA'
      '       ,13,P2VCOMIS_EXTRA'
      '       ,19,P2VCOMIS_EXTRA'
      '       ,0)'
      '       ) as VlrComissao_extra_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,  (( (P2QTD*P2PRECO)-P2TOTDES) *p2Pcomis/100)'
      '                   )'
      '       )  as VCalcComissao,'
      ' Sum(decode(p1tipo'
      '       ,8,  (( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,0)'
      '       ) as VCalcComissao_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       , (( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       )'
      '       ) as VCalcComissao_extra,'
      'Sum(decode(p1tipo'
      '       ,8,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,0)'
      '       ) as VCalcComissao_dev_extra,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,(p2qtd*p2preco) )'
      '       )  as valorsdesc,'
      ' Sum(decode(p1tipo'
      '       ,8,(p2qtd*p2preco)'
      '       ,12,(p2qtd*p2preco)'
      '       ,13,(p2qtd*p2preco)'
      '       ,19,(p2qtd*p2preco)'
      '       ,0 )'
      '       )  as valorsdesc_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,(p2totliq-p2descrat) )'
      '       ) as vlrtotal,'
      'Sum(decode(p1tipo'
      '       ,8,(p2totliq-p2descrat)'
      '       ,12,(p2totliq-p2descrat)'
      '       ,13,(p2totliq-p2descrat)'
      '       ,19,(p2totliq-p2descrat)'
      '       ,0 )'
      '       ) as vlrtotal_dev,'
      'Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,1  )'
      '       ) as ped,'
      ' Sum(decode(p1tipo'
      '       ,8,1'
      '       ,12,1'
      '       ,13,1'
      '       ,19,1'
      '       ,0  )'
      '       ) as ped_dev'
      ' from cadp01,cadp02,cadven where'
      'p2codemp = p1codemp and'
      'p2lotseq = p1lotseq and'
      'p2chave  = p1chave  and'
      'vcodven  = p1codven and'
      'p1codven = 106 and'
      'p1status > 0 and'
      'p1status < 9 and'
      'p1datap >= '#39'21/02/2007'#39' and'
      'p1datap <= '#39'28/02/2007'#39' '
      'group by p1codven,vnome')
    Left = 536
    Top = 14
    object Qr_LDRCODVEN: TFloatField
      FieldName = 'CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_LDRNOMEVEN: TStringField
      FieldName = 'NOMEVEN'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_LDRVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Qr_LDRVALORSDESC: TFloatField
      FieldName = 'VALORSDESC'
    end
    object Qr_LDRVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object Qr_LDRPED: TFloatField
      FieldName = 'PED'
    end
    object Qr_LDRVLRCOMISSAO_DEV: TFloatField
      FieldName = 'VLRCOMISSAO_DEV'
    end
    object Qr_LDRVALORSDESC_DEV: TFloatField
      FieldName = 'VALORSDESC_DEV'
    end
    object Qr_LDRVLRTOTAL_DEV: TFloatField
      FieldName = 'VLRTOTAL_DEV'
    end
    object Qr_LDRPED_DEV: TFloatField
      FieldName = 'PED_DEV'
    end
    object Qr_LDRVLRCOMISSAO_EXTRA: TFloatField
      FieldName = 'VLRCOMISSAO_EXTRA'
    end
    object Qr_LDRVLRCOMISSAO_EXTRA_DEV: TFloatField
      FieldName = 'VLRCOMISSAO_EXTRA_DEV'
    end
    object Qr_LDRVCALCCOMISSAO: TFloatField
      FieldName = 'VCALCCOMISSAO'
    end
    object Qr_LDRVCALCCOMISSAO_DEV: TFloatField
      FieldName = 'VCALCCOMISSAO_DEV'
    end
    object Qr_LDRVCALCCOMISSAO_EXTRA: TFloatField
      FieldName = 'VCALCCOMISSAO_EXTRA'
    end
    object Qr_LDRVCALCCOMISSAO_DEV_EXTRA: TFloatField
      FieldName = 'VCALCCOMISSAO_DEV_EXTRA'
    end
    object Qr_LDRvalorcomisliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorcomisliq'
      Calculated = True
    end
    object Qr_LDRqtdped: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdped'
      Calculated = True
    end
    object Qr_LDRqtddev: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtddev'
      Calculated = True
    end
    object Qr_LDRtotalliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Qr_LDRquotaperiodo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'quotaperiodo'
      Calculated = True
    end
    object Qr_LDRpercentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentual'
      Calculated = True
    end
    object Qr_LDRvalorcomisextra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valorcomisextra'
      Calculated = True
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 600
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 488
    Top = 16
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 696
    Top = 240
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
    Top = 40
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 504
    Top = 256
  end
end
