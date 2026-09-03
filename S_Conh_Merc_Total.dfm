object Frm_Conh_Merc_Total: TFrm_Conh_Merc_Total
  Left = 0
  Top = 63
  Width = 786
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Conhecimento de Mercadorias total'
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
  object GBTOTAIS: TGroupBox
    Left = 0
    Top = 291
    Width = 778
    Height = 53
    Align = alBottom
    Caption = 'Totais:'
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 32
      Top = 14
      Width = 57
      Height = 13
      Caption = 'Qtd.'#205'tens:'
    end
    object Label8: TLabel
      Left = 618
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Qtd.M3:'
    end
    object Label9: TLabel
      Left = 348
      Top = 14
      Width = 67
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label10: TLabel
      Left = 23
      Top = 32
      Width = 67
      Height = 13
      Caption = 'Valor Total:'
    end
    object Label11: TLabel
      Left = 273
      Top = 33
      Width = 145
      Height = 13
      Caption = 'Valor do Frete Calculado:'
    end
    object Label12: TLabel
      Left = 532
      Top = 34
      Width = 134
      Height = 13
      Caption = 'Valor do Frete digitado:'
    end
    object QTDITENS: TStaticText
      Left = 93
      Top = 12
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 0
    end
    object VLRTOTAL: TStaticText
      Left = 93
      Top = 28
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 1
    end
    object PESOB: TStaticText
      Left = 420
      Top = 12
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 2
    end
    object VLRFRETE: TStaticText
      Left = 420
      Top = 28
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 3
    end
    object QTDM3: TStaticText
      Left = 668
      Top = 12
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 4
    end
    object VLRFRETE_DIG: TStaticText
      Left = 668
      Top = 28
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16752029
      ParentColor = False
      TabOrder = 5
    end
  end
  object GB_ITENS: TGroupBox
    Left = 0
    Top = 125
    Width = 778
    Height = 166
    Align = alClient
    Caption = 'Mercadorias do Pedido:'
    TabOrder = 2
    object dbg_prod: TDBGrid
      Left = 2
      Top = 46
      Width = 774
      Height = 118
      Hint = 'Para excluir um item'#13#10'pressione  [CTRL DEL]'
      Align = alClient
      Color = 14811105
      Ctl3D = False
      DataSource = DM6.Src_Con03
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'C03CODPRO'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03LOTE'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDVEND'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03QTDENT'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 319
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C03VALFRE_DIG'
          Width = 56
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 774
      Height = 31
      Align = alTop
      TabOrder = 1
      object st_codpro: TStaticText
        Left = 0
        Top = 2
        Width = 93
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo do Produto'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object st_nompro: TStaticText
        Left = 264
        Top = 2
        Width = 321
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descri'#231#227'o das Mercadorias'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object st_qtdent: TStaticText
        Left = 136
        Top = 2
        Width = 65
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade  Vendida'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object st_qtdpen: TStaticText
        Left = 200
        Top = 2
        Width = 65
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Quantidade a Entregar'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object st_valfre_calc: TStaticText
        Left = 617
        Top = 2
        Width = 80
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Calculado'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object st_valfre_dig: TStaticText
        Left = 696
        Top = 2
        Width = 58
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Frete Digitado'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object st_und: TStaticText
        Left = 584
        Top = 2
        Width = 34
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'UND'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object StaticText1: TStaticText
        Left = 92
        Top = 2
        Width = 45
        Height = 30
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Lote Detalhe'
        Color = 16769505
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 125
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 33
      Top = 83
      Width = 99
      Height = 13
      Caption = 'Transportador(a):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 72
      Top = 52
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 87
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 394
      Top = 14
      Width = 93
      Height = 13
      Caption = 'Data do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbConsultar: TSpeedButton
      Left = 208
      Top = 12
      Width = 80
      Height = 19
      Hint = 'Pesquisar '#13#10'Conhecimentos'#13#10'Existentes'
      Caption = 'Pesquisa&r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbConsultarClick
    end
    object Label1: TLabel
      Left = 29
      Top = 16
      Width = 102
      Height = 13
      Caption = 'Chave do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Top = 103
      Width = 128
      Height = 13
      Caption = 'C'#243'digo Conhecimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NOMTRA: TEdit
      Left = 205
      Top = 81
      Width = 373
      Height = 19
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object CODTRA: TEdit
      Left = 136
      Top = 81
      Width = 70
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = CODTRAExit
      OnKeyPress = CODTRAKeyPress
    end
    object endereco: TMemo
      Left = 136
      Top = 48
      Width = 442
      Height = 34
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
    end
    object CODCLI: TEdit
      Left = 136
      Top = 30
      Width = 70
      Height = 19
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object MNOMCLI: TEdit
      Left = 205
      Top = 30
      Width = 373
      Height = 19
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object MDATAP: TEdit
      Left = 495
      Top = 12
      Width = 83
      Height = 19
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object CHAVE: TEdit
      Left = 136
      Top = 12
      Width = 70
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CHAVEExit
    end
    object BBINCLUIR: TBitBtn
      Left = 617
      Top = 3
      Width = 154
      Height = 40
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Pedidos'
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBINCLUIRClick
      OnExit = BBINCLUIRExit
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
    object bbImprimir: TBitBtn
      Left = 617
      Top = 42
      Width = 154
      Height = 40
      Cursor = crHandPoint
      Hint = 'Imprimir o Conhecimento'
      Caption = 'Im&primir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object BBSAIR: TBitBtn
      Left = 617
      Top = 81
      Width = 154
      Height = 40
      Cursor = crHandPoint
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    object CODCON: TEdit
      Left = 136
      Top = 99
      Width = 70
      Height = 19
      Color = 14994379
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 10
    end
  end
end
