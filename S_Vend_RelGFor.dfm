object Frm_Vend_RelGFor: TFrm_Vend_RelGFor
  Left = 2
  Top = 0
  Width = 786
  Height = 494
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Rela'#231#227'o das Vendas por Grupo de Fornecedor'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 73
    Top = 328
    Width = 49
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 299
    Top = 326
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 41
    Top = 352
    Width = 81
    Height = 13
    Caption = 'Separado por:'
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 546
    Top = 417
    Width = 110
    Height = 26
    Cursor = crHandPoint
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
    Top = 374
    Width = 72
    Height = 13
    Caption = 'Somado por:'
  end
  object Label3: TLabel
    Left = 3
    Top = 395
    Width = 120
    Height = 13
    Caption = 'Ordem de Impress'#227'o:'
  end
  object CB_SEMBORDA: TCheckBox
    Left = 596
    Top = 320
    Width = 90
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Sem Bordas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = CB_SEMBORDAClick
  end
  object CB_SEPAR: TComboBox
    Left = 127
    Top = 346
    Width = 329
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 8
    TabOrder = 3
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
    Width = 778
    Height = 318
    ActivePage = TabSheet1
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object StaticText4: TStaticText
        Left = 8
        Top = 115
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Cliente'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
      end
      object CODCLI: TEdit
        Left = 8
        Top = 131
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object OMITIR_CLI: TCheckBox
        Left = 83
        Top = 133
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object lbx_codcli: TListBox
        Left = 142
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
        TabOrder = 11
        OnKeyDown = lbx_codcliKeyDown
      end
      object StaticText5: TStaticText
        Left = 8
        Top = 153
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Vendedor'
        Color = 16772332
        ParentColor = False
        TabOrder = 22
      end
      object CODVEN: TEdit
        Left = 8
        Top = 169
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object OMITIR_VEN: TCheckBox
        Left = 85
        Top = 173
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
      end
      object lbx_codven: TListBox
        Left = 142
        Top = 153
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codvenKeyDown
      end
      object StaticText1: TStaticText
        Left = 8
        Top = 191
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Televendas'
        Color = 16772332
        ParentColor = False
        TabOrder = 23
      end
      object CODTEL: TEdit
        Left = 8
        Top = 207
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        OnExit = CODTELExit
        OnKeyPress = CODTELKeyPress
      end
      object OMITIR_TEL: TCheckBox
        Left = 86
        Top = 210
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object lbx_codtel: TListBox
        Left = 142
        Top = 191
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_codtelKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 84
        Top = 248
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object lbx_codsup: TListBox
        Left = 142
        Top = 229
        Width = 440
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_codsupKeyDown
      end
      object StaticText3: TStaticText
        Left = 8
        Top = 229
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Supervisor'
        Color = 16772332
        ParentColor = False
        TabOrder = 24
      end
      object CODSUP: TEdit
        Left = 8
        Top = 245
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object StaticText2: TStaticText
        Left = 8
        Top = 1
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Grupo de Fornecedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 25
      end
      object CODGFOR: TEdit
        Left = 8
        Top = 17
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODGFORExit
        OnKeyPress = CODGFORKeyPress
      end
      object OMITIR_GFOR: TCheckBox
        Left = 86
        Top = 20
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codgfor: TListBox
        Left = 142
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
        OnKeyDown = lbx_codgforKeyDown
      end
      object lbx_codfor: TListBox
        Left = 142
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
        OnKeyDown = lbx_codforKeyDown
      end
      object StaticText10: TStaticText
        Left = 8
        Top = 39
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Fornecedor'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
      end
      object OMITIR_FOR: TCheckBox
        Left = 86
        Top = 58
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object CODFOR: TEdit
        Left = 8
        Top = 55
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object CODRED: TEdit
        Left = 8
        Top = 92
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODREDExit
        OnKeyPress = CODREDKeyPress
      end
      object OMITIR_RED: TCheckBox
        Left = 85
        Top = 95
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbx_codred: TListBox
        Left = 142
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
        OnKeyDown = lbx_codredKeyDown
      end
      object StaticText7: TStaticText
        Left = 8
        Top = 77
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Rede de Clientes'
        Color = 16772332
        ParentColor = False
        TabOrder = 27
      end
      object GB_DESVIO: TGroupBox
        Left = 595
        Top = 189
        Width = 171
        Height = 82
        Caption = '% de desvio p/relatorio'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 28
        Visible = False
        object PERCDESV: TEdit
          Left = 25
          Top = 24
          Width = 121
          Height = 19
          TabOrder = 0
          OnExit = PERCDESVExit
        end
        object CB_DIMINUIR: TCheckBox
          Left = 27
          Top = 56
          Width = 97
          Height = 17
          Caption = 'Diminuir'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object sbn_coduf: TSpeedButton
        Left = 51
        Top = 55
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
      object CODCV: TEdit
        Left = 8
        Top = 17
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODCVExit
        OnKeyPress = CODCVKeyPress
      end
      object OMITIR_CV: TCheckBox
        Left = 86
        Top = 24
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object StaticText8: TStaticText
        Left = 8
        Top = 1
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Conv'#234'nio'
        Color = 16772332
        ParentColor = False
        TabOrder = 3
      end
      object lbx_codcv: TListBox
        Left = 141
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
        OnKeyDown = lbx_codcvKeyDown
      end
      object StaticText6: TStaticText
        Left = 8
        Top = 77
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Cidade'
        Color = 16772332
        ParentColor = False
        TabOrder = 10
      end
      object CODLOC: TEdit
        Left = 8
        Top = 93
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object OMITIR_LOC: TCheckBox
        Left = 86
        Top = 97
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object lbx_codloc: TListBox
        Left = 141
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
        TabOrder = 9
        OnKeyDown = lbx_codlocKeyDown
      end
      object StaticText9: TStaticText
        Left = 9
        Top = 39
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Estado'
        Color = 16772332
        ParentColor = False
        TabOrder = 11
      end
      object CODUF: TEdit
        Left = 9
        Top = 55
        Width = 43
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 87
        Top = 58
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lbx_coduf: TListBox
        Left = 141
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
        TabOrder = 6
        OnKeyDown = lbx_codufKeyDown
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 2
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 770
        Height = 287
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
    object TabSheet3: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -33
        Top = 16
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
            Left = 586
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
            Width = 289
            Height = 16
            Caption = 'Relat'#243'rio de Vendas Por Grupo de Fornecedores.'
          end
          object lbl_periodo: TRLLabel
            Left = 292
            Top = 16
            Width = 281
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel3: TRLLabel
            Left = 585
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
            Caption = 'Relat'#243'rio de Vendas Por Grupo de Fornecedores.'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 61
          Width = 718
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
            Width = 716
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
              Width = 716
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
            Width = 716
            Height = 32
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object lbl_cabcodigo: TRLMemo
              Left = 2
              Top = 0
              Width = 44
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'C'#243'digo')
              ParentFont = False
            end
            object lbl_cabNome: TRLMemo
              Left = 47
              Top = 0
              Width = 208
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '01')
              ParentFont = False
            end
            object lbl_cabTotal01: TRLMemo
              Left = 254
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '02')
              ParentFont = False
            end
            object lbl_cabTotal02: TRLMemo
              Left = 320
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '03')
              ParentFont = False
            end
            object lbl_cabTotal03: TRLMemo
              Left = 386
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '04')
              ParentFont = False
            end
            object lbl_cabTotal04: TRLMemo
              Left = 452
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '05')
              ParentFont = False
            end
            object lbl_cabTotal05: TRLMemo
              Left = 518
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '06')
              ParentFont = False
            end
            object lbl_cabTotal06: TRLMemo
              Left = 584
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Total'
                '07')
              ParentFont = False
            end
            object lbl_cabTotal: TRLMemo
              Left = 650
              Top = 0
              Width = 66
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'TOTAL')
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 1
            Top = 47
            Width = 716
            Height = 15
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            BeforePrint = RLBand4BeforePrint
            object lbl_codigo: TRLDBText
              Left = 2
              Top = 0
              Width = 44
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CODIGO'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabcodigo
              ParentFont = False
            end
            object lbl_nome: TRLDBText
              Left = 47
              Top = 1
              Width = 208
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMSOM'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabNome
              ParentFont = False
            end
            object lbl_total01: TRLDBText
              Left = 254
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal01
              ParentFont = False
            end
            object lbl_total02: TRLDBText
              Left = 320
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal02
              ParentFont = False
            end
            object lbl_total03: TRLDBText
              Left = 386
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal03
              ParentFont = False
            end
            object lbl_total04: TRLDBText
              Left = 452
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal04
              ParentFont = False
            end
            object lbl_total05: TRLDBText
              Left = 518
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal05
              ParentFont = False
            end
            object lbl_total06: TRLDBText
              Left = 584
              Top = 1
              Width = 66
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal06
              ParentFont = False
            end
            object lbl_total: TRLDBText
              Left = 650
              Top = 1
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'TOTGER'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabTotal
              ParentFont = False
            end
          end
          object band6: TRLBand
            Left = 1
            Top = 62
            Width = 716
            Height = 15
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = band6BeforePrint
            object lblg_codigo: TRLLabel
              Left = 2
              Top = 0
              Width = 44
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '  '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabcodigo
              ParentFont = False
            end
            object lblg_nome: TRLLabel
              Left = 47
              Top = 0
              Width = 208
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'Total...........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabNome
              ParentFont = False
            end
            object lblg_total01: TRLLabel
              Left = 254
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal01
              ParentFont = False
            end
            object lblg_total02: TRLLabel
              Left = 320
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal02
              ParentFont = False
            end
            object lblg_total03: TRLLabel
              Left = 386
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal03
              ParentFont = False
            end
            object lblg_total04: TRLLabel
              Left = 452
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal04
              ParentFont = False
            end
            object lblg_total05: TRLLabel
              Left = 518
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal05
              ParentFont = False
            end
            object lblg_total06: TRLLabel
              Left = 584
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal06
              ParentFont = False
            end
            object lblg_total: TRLLabel
              Left = 650
              Top = 0
              Width = 66
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabTotal
              ParentFont = False
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 176
          Width = 718
          Height = 9
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
        object rlTotalGer: TRLBand
          Left = 38
          Top = 185
          Width = 718
          Height = 32
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = rlTotalGerBeforePrint
          object lblt_data: TRLLabel
            Left = 3
            Top = 0
            Width = 44
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabcodigo
            ParentFont = False
          end
          object lblt_nome: TRLLabel
            Left = 48
            Top = 0
            Width = 208
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = 'Total.............................'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabNome
            ParentFont = False
          end
          object lblt_total01: TRLLabel
            Left = 255
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal01
            ParentFont = False
          end
          object lblt_total02: TRLLabel
            Left = 321
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal02
            ParentFont = False
          end
          object lblt_total03: TRLLabel
            Left = 387
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal03
            ParentFont = False
          end
          object lblt_total04: TRLLabel
            Left = 453
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal04
            ParentFont = False
          end
          object lblt_total05: TRLLabel
            Left = 519
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal05
            ParentFont = False
          end
          object lblt_total06: TRLLabel
            Left = 585
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal06
            ParentFont = False
          end
          object lblt_total: TRLLabel
            Left = 651
            Top = 0
            Width = 66
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Holder = lbl_cabTotal
            ParentFont = False
          end
          object lbl_desvio: TRLLabel
            Left = 7
            Top = 16
            Width = 23
            Height = 14
            Caption = '*****'
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Itens a Serem Listados'
      ImageIndex = 4
      object StaticText11: TStaticText
        Left = 8
        Top = 1
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Grupo de Fornecedor'
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
      object CODGFOR_LST: TEdit
        Left = 8
        Top = 17
        Width = 74
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODGFOR_LSTExit
        OnKeyPress = CODGFOR_LSTKeyPress
      end
      object OMITIR_GFOR_LST: TCheckBox
        Left = 86
        Top = 20
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codgfor_lst: TListBox
        Left = 142
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
        TabOrder = 3
        OnKeyDown = lbx_codgfor_lstKeyDown
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 127
    Top = 324
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
    Left = 373
    Top = 324
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
    Left = 433
    Top = 417
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
    TabOrder = 11
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
    Left = 659
    Top = 417
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 12
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
    Left = 596
    Top = 335
    Width = 132
    Height = 17
    Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
    Caption = 'Impress'#227'o Matricial'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 8
    OnClick = CB_MATRICIALClick
  end
  object CB_VISREL: TCheckBox
    Left = 596
    Top = 353
    Width = 179
    Height = 17
    Hint = 'Se Marcado mostra o '#13#10'relat'#243'rio antes de imprimir'
    Caption = 'Visualizar Antes de Imprimir'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 9
  end
  object RG_FILTRO: TRadioGroup
    Left = 458
    Top = 317
    Width = 117
    Height = 50
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
  object CB_SOMADO: TComboBox
    Left = 127
    Top = 368
    Width = 328
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 4
    Text = 'Cliente'
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
    Top = 389
    Width = 328
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Padr'#227'o'
    OnClick = CB_SEPARClick
    Items.Strings = (
      'Padr'#227'o'
      'Valor '
      'Valor Decrescente')
  end
  object CB_FORCAR: TCheckBox
    Left = 596
    Top = 372
    Width = 174
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object Qr_LDR: TQuery
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
      '   6017,PFPVALOR,0)) AS TOTGER'
      ', sum(DECODE(PFPFORMA,'
      '      1001,0,'
      '      7000,0,'
      '      4000,0,'
      '      6030,0,'
      '      6010,0,'
      '      6010,0,'
      '      6010,0,'
      '      6010,0,'
      '      PFPVALOR)) AS OUTROS'
      ', max(PFPNOMFOR) AS NOMSEP'
      ', max(PFPNOMFOR) AS NOMSOM'
      ',max(PFPNOMFOR) AS CODIGO'
      'From cadpfp'
      'group by PFPDATA'
      '')
    Left = 560
    Top = 14
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
    object Qr_LDROUTROS: TFloatField
      FieldName = 'OUTROS'
    end
    object Qr_LDRTOTGER: TFloatField
      FieldName = 'TOTGER'
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
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 592
    Top = 16
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 48
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 672
    Top = 168
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
    Left = 632
    Top = 56
  end
end
