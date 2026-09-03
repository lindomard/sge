object frm_Pagar_Sint: Tfrm_Pagar_Sint
  Left = 192
  Top = 124
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Relatorio Sintetico de Contas a Pagar'
  ClientHeight = 407
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 12
    Top = 258
    Width = 47
    Height = 13
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label5: TLabel
    Left = 153
    Top = 282
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 251
    Top = 285
    Width = 109
    Height = 13
    Caption = 'Agrupado/somado por:'
  end
  object Label2: TLabel
    Left = 264
    Top = 258
    Width = 67
    Height = 13
    Caption = 'Separado por:'
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 400
    Top = 367
    Width = 138
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
  object cb_separado: TComboBox
    Left = 335
    Top = 254
    Width = 278
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 11
    TabOrder = 0
    Text = 'Sem Separar'
    Items.Strings = (
      'Ano da Emiss'#227'o'
      'Ano do Vencimento'
      'Banco'
      'Cidade'
      'Fornecedor'
      'Data de Emiss'#227'o'
      'Data de Pagamento'
      'Data de Vencimento'
      'Estado'
      'M'#234's da Emiss'#227'o'
      'M'#234's do Vencimento'
      'Sem Separar')
  end
  object CB_LASER: TCheckBox
    Left = 435
    Top = 336
    Width = 99
    Height = 17
    Hint = 
      'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'laser ou ja' +
      'to de tinta'
    Caption = 'Imp.Laser'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object CB_SEMBORDA: TCheckBox
    Left = 314
    Top = 336
    Width = 88
    Height = 17
    Hint = 
      'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
      'matricial'
    Caption = 'Sem Bordas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object cb_agrupar: TComboBox
    Left = 368
    Top = 282
    Width = 245
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 11
    TabOrder = 3
    Text = 'Sem Separar'
    Items.Strings = (
      'Ano da Emiss'#227'o'
      'Ano do Vencimento'
      'Banco'
      'Cidade'
      'Fornecedor'
      'Data de Emiss'#227'o'
      'Data de Pagamento'
      'Data de Vencimento'
      'Estado'
      'M'#234's da Emiss'#227'o'
      'M'#234's do Vencimento'
      'Sem Separar')
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 689
    Height = 245
    ActivePage = TabSheet1
    Align = alTop
    Style = tsButtons
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object sbn_coddep: TSpeedButton
        Left = 54
        Top = 71
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
      object StaticText2: TStaticText
        Left = 7
        Top = 164
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
        TabOrder = 3
      end
      object CODBCO: TEdit
        Left = 7
        Top = 183
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 4
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object OMITIR_BCO: TCheckBox
        Left = 85
        Top = 187
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object lbx_codbco: TListBox
        Left = 146
        Top = 161
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codbcoKeyDown
      end
      object StaticText4: TStaticText
        Left = 6
        Top = 2
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
        TabOrder = 7
      end
      object CODFOR: TEdit
        Left = 6
        Top = 19
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object OMITIR_FOR: TCheckBox
        Left = 84
        Top = 22
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codfor: TListBox
        Left = 143
        Top = 1
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
      object StaticText9: TStaticText
        Left = 7
        Top = 52
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Estado'
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
      object lbx_coduf: TListBox
        Left = 144
        Top = 51
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codufKeyDown
      end
      object lbx_codloc: TListBox
        Left = 143
        Top = 102
        Width = 440
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 84
        Top = 122
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODLOC: TEdit
        Left = 6
        Top = 121
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 12
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object StaticText6: TStaticText
        Left = 6
        Top = 103
        Width = 135
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cidade'
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
      object CODUF: TEdit
        Left = 7
        Top = 70
        Width = 43
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        TabOrder = 14
        OnExit = CODUFExit
      end
      object OMITIR_UF: TCheckBox
        Left = 85
        Top = 71
        Width = 56
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -137
        Top = -8
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
            Width = 114
            Height = 16
            Caption = 'Relat'#243'rio Sint'#233'tico.'
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
            Caption = 'Relat'#243'rio Sint'#233'tico.'
            Color = 16766935
            ParentColor = False
            Transparent = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 61
          Width = 718
          Height = 68
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataFields = 'GRUPO'
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
              DataField = 'GRUPO'
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
            Height = 15
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object lbl_cabdesc: TRLMemo
              Left = 5
              Top = 0
              Width = 586
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Nome')
              ParentFont = False
            end
            object lbl_cabacum: TRLMemo
              Left = 591
              Top = 0
              Width = 126
              Height = 14
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                'Valor')
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 1
            Top = 30
            Width = 716
            Height = 15
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            object db_descmv: TRLDBText
              Left = 5
              Top = 0
              Width = 586
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMSINT'
              DataSource = Src_LDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_cabdesc
              ParentFont = False
            end
            object db_valordup: TRLDBText
              Left = 591
              Top = 0
              Width = 126
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'VALORDUP'
              DataSource = Src_LDR
              Holder = lbl_cabacum
            end
          end
          object RLBand6: TRLBand
            Left = 1
            Top = 45
            Width = 716
            Height = 15
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
            object lbl_total: TRLLabel
              Left = 5
              Top = 0
              Width = 586
              Height = 14
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 
                'Total...........................................................' +
                '.........................................'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabdesc
              ParentFont = False
            end
            object lbl_totacum_gru: TRLLabel
              Left = 591
              Top = 0
              Width = 126
              Height = 14
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
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Holder = lbl_cabacum
              ParentFont = False
            end
          end
        end
        object RLBand3: TRLBand
          Left = 38
          Top = 129
          Width = 718
          Height = 16
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
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 68
    Top = 254
    Width = 79
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
    TabOrder = 5
    Text = '  /  /    '
  end
  object MDT2: TMaskEdit
    Left = 165
    Top = 254
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
    TabOrder = 6
    Text = '  /  /    '
  end
  object bbImprimir: TBitBtn
    Left = 249
    Top = 367
    Width = 140
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 7
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
    Left = 548
    Top = 367
    Width = 140
    Height = 40
    Caption = '&Sair'
    TabOrder = 8
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
  object RGTD: TRadioGroup
    Left = 124
    Top = 278
    Width = 116
    Height = 117
    Hint = 'Filtra duplicatas Pagas, em aberta '#13#10'ou lista todas'
    Caption = 'Listar duplicatas:'
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 2
    Items.Strings = (
      '&Todas'
      '&Pagas'
      '&N'#227'o Pagas')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object RGTPP: TRadioGroup
    Left = 4
    Top = 278
    Width = 115
    Height = 116
    Hint = 
      'Esta op'#231#227'o que define qual o tipo da '#13#10'data sera pesquisada. Exe' +
      'mpo se vc'#13#10'marcou data de emiss'#227'o ent'#227'o o '#13#10'sistema ira listar t' +
      'odos os tipos cujo a '#13#10'data de emiss'#227'o esteja dentro da data ini' +
      'cial'#13#10'e final digitada acima...'
    Caption = 'Tipo de Pesquisa:'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '&Vencimento'
      '&Emiss'#227'o'
      '&Data da Baixa'
      'Data do &pgto')
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  object Qr_LDR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FRAZAO as NOMSINT '
      ',FRAZAO as GRUPO '
      ',SUM(CAVALOR) AS VALORDUP '
      ',SUM(CAVALPAG) AS VALORREC '
      ',SUM(CAVALOR-CAVALPAG) AS VALORABR '
      
        '        from CADDAP  ,CADFOR              where ((CACODEMP=1))  ' +
        'and        FCODFOR(+)=CACODFOR and  CASTATUS<9 '
      ' and CASTATUS<2'
      'Group by '
      'FRAZAO,'
      'FRAZAO '
      'Order by '
      'FRAZAO,'
      'FRAZAO ')
    Left = 360
    Top = 110
    object Qr_LDRNOMSINT: TStringField
      FieldName = 'NOMSINT'
      Size = 60
    end
    object Qr_LDRGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 60
    end
    object Qr_LDRVALORDUP: TFloatField
      FieldName = 'VALORDUP'
    end
    object Qr_LDRVALORREC: TFloatField
      FieldName = 'VALORREC'
    end
    object Qr_LDRVALORABR: TFloatField
      FieldName = 'VALORABR'
    end
  end
  object Src_LDR: TDataSource
    DataSet = Qr_LDR
    Left = 400
    Top = 112
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
    Left = 624
    Top = 104
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
