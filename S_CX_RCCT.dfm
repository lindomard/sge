object Frm_CX_RCCT: TFrm_CX_RCCT
  Left = 146
  Top = 81
  Width = 739
  Height = 377
  Caption = 'Relat'#243'rio resumido por departamento e centro de custo'
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
  object Panel2: TPanel
    Left = 0
    Top = 305
    Width = 731
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbSair: TBitBtn
      Left = 388
      Top = 1
      Width = 150
      Height = 40
      Caption = '&Sair'
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbImprimir: TBitBtn
      Left = -6
      Top = 1
      Width = 150
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 731
    Height = 305
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label7: TLabel
        Left = 66
        Top = 2
        Width = 37
        Height = 13
        Caption = 'Banco'
      end
      object Label1: TLabel
        Left = 24
        Top = 42
        Width = 80
        Height = 13
        Caption = 'Departamento'
      end
      object SP1: TSpeedButton
        Left = 148
        Top = 43
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
        OnClick = SP1Click
      end
      object Label2: TLabel
        Left = 9
        Top = 87
        Width = 92
        Height = 13
        Caption = 'Centro de Custo'
      end
      object SP2: TSpeedButton
        Left = 148
        Top = 84
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
        OnClick = SP2Click
      end
      object Label5: TLabel
        Left = 27
        Top = 129
        Width = 75
        Height = 13
        Caption = 'Tipo/C'#243'digo:'
      end
      object Label6: TLabel
        Left = 23
        Top = 170
        Width = 80
        Height = 13
        Caption = 'Mes/Ano Ref:'
      end
      object Label3: TLabel
        Left = 77
        Top = 195
        Width = 122
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Natureza'
        Color = 16777158
        ParentColor = False
      end
      object Label4: TLabel
        Left = 213
        Top = 196
        Width = 152
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Estado dos Lan'#231'amentos'
        Color = 16777158
        ParentColor = False
      end
      object Label8: TLabel
        Left = 1
        Top = 145
        Width = 103
        Height = 13
        Caption = 'Tipo do Relatorio:'
      end
      object CODBCO: TEdit
        Left = 106
        Top = 1
        Width = 68
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object OMITIR_BCO: TCheckBox
        Left = 106
        Top = 22
        Width = 55
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os Registros'#13#10'Selecionados N'#227'o Ser'#227'o Impr' +
          'essos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codbco: TListBox
        Left = 173
        Top = 1
        Width = 429
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codbcoKeyDown
      end
      object CODDEP: TEdit
        Left = 106
        Top = 43
        Width = 39
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODDEPExit
      end
      object OMITIR_DEP: TCheckBox
        Left = 106
        Top = 66
        Width = 61
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os Registros'#13#10'Selecionados N'#227'o Ser'#227'o Impr' +
          'essos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object lbx_coddep: TListBox
        Left = 173
        Top = 42
        Width = 429
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_coddepKeyDown
      end
      object CODCCU: TEdit
        Left = 106
        Top = 83
        Width = 39
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODCCUExit
      end
      object OMITIR_CCU: TCheckBox
        Left = 106
        Top = 105
        Width = 56
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os Registros'#13#10'Selecionados N'#227'o Ser'#227'o Impr' +
          'essos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbx_codccu: TListBox
        Left = 173
        Top = 83
        Width = 429
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyDown = lbx_codccuKeyDown
      end
      object CB_TIPO: TComboBox
        Left = 106
        Top = 122
        Width = 41
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'Todos'
        Items.Strings = (
          'Todos'
          'FR'
          'CL'
          'TR'
          'VD')
      end
      object CODIGO: TEdit
        Left = 147
        Top = 124
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnExit = CODIGOExit
        OnKeyPress = CODIGOKeyPress
      end
      object NOME: TEdit
        Left = 208
        Top = 124
        Width = 394
        Height = 19
        Color = 16763620
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 11
        Text = 'Todos...'
      end
      object mesref: TEdit
        Left = 106
        Top = 165
        Width = 24
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = mesrefExit
      end
      object anoref: TEdit
        Left = 131
        Top = 165
        Width = 34
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = anorefExit
      end
      object nome_meses: TEdit
        Left = 167
        Top = 165
        Width = 435
        Height = 19
        TabStop = False
        Color = 16763620
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object CB_NAT: TComboBox
        Left = 76
        Top = 208
        Width = 124
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 15
        Text = 'Todas'
        Items.Strings = (
          'Todas'
          'D'#233'bitos'
          'Cr'#233'ditos')
      end
      object CB_ESTADO: TComboBox
        Left = 215
        Top = 210
        Width = 146
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 16
        Text = 'Realizados'
        Items.Strings = (
          'Realizados'
          'Previstos'
          'Todos')
      end
      object CB_SEMMOV: TCheckBox
        Left = 367
        Top = 209
        Width = 212
        Height = 17
        Caption = 'Listar Historico Sem Movimento'
        TabOrder = 18
        Visible = False
      end
      object CB_TIPOREL: TComboBox
        Left = 106
        Top = 142
        Width = 263
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 17
        Text = 'Trimestral(Matricial)'
        Items.Strings = (
          'Anual (Impress'#227'o Laser/Jato de Tinta)'
          'Trimestral(Matricial) - Modelo 01'
          'Trimestral(Laser/Jato) - Modelo 01')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object rlRel12Colunas: TRLReport
        Left = -355
        Top = -23
        Width = 1123
        Height = 794
        DataSource = Src_Relatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 3.000000000000000000
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        Visible = False
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
        object RLBand3: TRLBand
          Left = 38
          Top = 201
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
          Top = 210
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
            Width = 62
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
            Left = 65
            Top = 0
            Width = 198
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
            Left = 262
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
            Left = 318
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
            Left = 374
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
            Left = 430
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
            Left = 486
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
            Left = 542
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
          object lblt_total07: TRLLabel
            Left = 598
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
          object lblt_total11: TRLLabel
            Left = 822
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
            Holder = lbl_cabTotal11
            Layout = tlCenter
          end
          object lblt_total12: TRLLabel
            Left = 878
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
            Holder = lbl_cabTotal12
            Layout = tlCenter
          end
          object lblt_totMedia: TRLLabel
            Left = 934
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
            Holder = lbl_cabMedia
            Layout = tlCenter
          end
          object lblt_total08: TRLLabel
            Left = 654
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
            Left = 710
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
            Left = 766
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
          object lblt_totTotal: TRLLabel
            Left = 990
            Top = 1
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
            Holder = lbl_cabtotal
            Layout = tlCenter
          end
        end
        object RLBand4: TRLBand
          Left = 38
          Top = 88
          Width = 1047
          Height = 22
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object filtros: TRLMemo
            Left = 1
            Top = 0
            Width = 1045
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object rlGrupo01: TRLGroup
          Left = 38
          Top = 110
          Width = 1047
          Height = 91
          DataFields = 'CODGRU'
          object RLBand2: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object RLDBText2: TRLDBText
              Left = 1
              Top = 0
              Width = 1045
              Height = 15
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMGRU'
              DataSource = Src_Relatorio
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
          object RLGroup1: TRLGroup
            Left = 0
            Top = 16
            Width = 1047
            Height = 115
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataFields = 'CODSUBGRU'
            object RLBand5: TRLBand
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
                DataField = 'NOMSUBGRU'
                DataSource = Src_Relatorio
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
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              object lbl_cabcodigo: TRLMemo
                Left = 2
                Top = 0
                Width = 62
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
                Left = 64
                Top = 0
                Width = 198
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
                Left = 261
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
                Left = 317
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
                Left = 373
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
                Left = 429
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
                Left = 485
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
                Left = 541
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
              object lbl_cabTotal07: TRLMemo
                Left = 597
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
              object lbl_cabTotal11: TRLMemo
                Left = 821
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
                  '11')
              end
              object lbl_cabTotal12: TRLMemo
                Left = 877
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
                  'Total '
                  '12')
              end
              object lbl_cabMedia: TRLMemo
                Left = 933
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
                  'Media')
              end
              object lbl_cabTotal08: TRLMemo
                Left = 653
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
                Left = 709
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
                Left = 765
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
              object lbl_cabtotal: TRLMemo
                Left = 989
                Top = 1
                Width = 56
                Height = 30
                Alignment = taCenter
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                Lines.Strings = (
                  'Total'
                  'Geral')
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
                Width = 62
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'CODIGO'
                DataSource = Src_Relatorio
                Holder = lbl_cabcodigo
                Layout = tlCenter
              end
              object lbl_nome: TRLDBText
                Left = 64
                Top = 1
                Width = 198
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'NOMITEM'
                DataSource = Src_Relatorio
                Holder = lbl_cabNome
                Layout = tlCenter
              end
              object lbl_total01: TRLDBText
                Left = 261
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal01
                Layout = tlCenter
              end
              object lbl_total02: TRLDBText
                Left = 317
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal02
                Layout = tlCenter
              end
              object lbl_total03: TRLDBText
                Left = 373
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal03
                Layout = tlCenter
              end
              object lbl_total04: TRLDBText
                Left = 429
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal04
                Layout = tlCenter
              end
              object lbl_total05: TRLDBText
                Left = 485
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal05
                Layout = tlCenter
              end
              object lbl_total06: TRLDBText
                Left = 541
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal06
                Layout = tlCenter
              end
              object lbl_total07: TRLDBText
                Left = 597
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal07
                Layout = tlCenter
              end
              object lbl_total11: TRLDBText
                Left = 821
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
                DataField = 'VALOR11'
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal11
                Layout = tlCenter
              end
              object lbl_total12: TRLDBText
                Left = 877
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
                DataField = 'VALOR12'
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal12
                Layout = tlCenter
              end
              object lbl_totMedia: TRLDBText
                Left = 933
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
                DataField = 'media'
                DataSource = Src_Relatorio
                Holder = lbl_cabMedia
                Layout = tlCenter
              end
              object lbl_total08: TRLDBText
                Left = 653
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal08
                Layout = tlCenter
              end
              object lbl_total09: TRLDBText
                Left = 709
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal09
                Layout = tlCenter
              end
              object lbl_total10: TRLDBText
                Left = 765
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
                DataSource = Src_Relatorio
                Holder = lbl_cabTotal10
                Layout = tlCenter
              end
              object lbl_totTotal: TRLDBText
                Left = 989
                Top = 1
                Width = 56
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'totger'
                DataSource = Src_Relatorio
                Holder = lbl_cabtotal
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
                Width = 62
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
                Left = 64
                Top = 0
                Width = 198
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
                Left = 261
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
                Left = 317
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
                Left = 373
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
                Left = 429
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
                Left = 485
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
                Left = 541
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
              object lblg_total07: TRLLabel
                Left = 597
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
              object lblg_total11: TRLLabel
                Left = 821
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
                Holder = lbl_cabTotal11
                Layout = tlCenter
              end
              object lblg_total12: TRLLabel
                Left = 877
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
                Holder = lbl_cabTotal12
                Layout = tlCenter
              end
              object lblg_totMedia: TRLLabel
                Left = 933
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
                Holder = lbl_cabMedia
                Layout = tlCenter
              end
              object lblg_total08: TRLLabel
                Left = 653
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
                Left = 709
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
                Left = 765
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
              object lblg_totTotal: TRLLabel
                Left = 989
                Top = 1
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
                Holder = lbl_cabtotal
                Layout = tlCenter
              end
            end
          end
        end
      end
    end
    object ts_TrimMod02: TTabSheet
      Caption = 'Trimestral Modelo 02'
      ImageIndex = 2
      object rlTrimMod02: TRLReport
        Left = 5
        Top = 25
        Width = 794
        Height = 1123
        DataSource = Src_Temp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 3.000000000000000000
        ShowProgress = False
        Visible = False
        object RLBand6: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 50
          BandType = btColumnHeader
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = 6619057
          object RLDBText3: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel2: TRLLabel
            Left = 584
            Top = 1
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 630
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
          end
          object RLLabel4: TRLLabel
            Left = 0
            Top = 17
            Width = 157
            Height = 16
            Caption = 'Fluxo de Caixa (trimestral)'
          end
          object lblltm02_periodo: TRLLabel
            Left = 292
            Top = 16
            Width = 288
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLLabel6: TRLLabel
            Left = 583
            Top = 18
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 633
            Top = 17
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel7: TRLLabel
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
        object RLBand7: TRLBand
          Left = 38
          Top = 211
          Width = 718
          Height = 9
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel8: TRLLabel
            Left = 694
            Top = 1
            Width = 24
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
        object RLGroup2: TRLGroup
          Left = 38
          Top = 120
          Width = 718
          Height = 91
          DataFields = 'codgru'
          object RLBand10: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object RLDBText4: TRLDBText
              Left = 1
              Top = 0
              Width = 716
              Height = 15
              Align = faClient
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              DataField = 'NOMGRU'
              DataSource = Src_Relatorio
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
          object RLGroup3: TRLGroup
            Left = 0
            Top = 16
            Width = 718
            Height = 115
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataFields = 'CODDEP'
            object RLBand11: TRLBand
              Left = 1
              Top = 0
              Width = 716
              Height = 15
              BandType = btColumnHeader
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Degrade.Direction = ddVertical
              Degrade.OppositeColor = 8421440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -10
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              BeforePrint = RLBand11BeforePrint
              object RLDBText5: TRLDBText
                Left = 1
                Top = 0
                Width = 66
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'CODDEP'
                DataSource = Src_Temp
                Holder = lbl_tm2Codigo
                Layout = tlCenter
              end
              object RLDBText11: TRLDBText
                Left = 69
                Top = 0
                Width = 204
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'NOMDEP'
                DataSource = Src_Temp
                Holder = lbl_tm2Descr
                Layout = tlCenter
              end
              object lbltm2_totalg01: TRLLabel
                Left = 273
                Top = 0
                Width = 90
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Holder = lbl_tm2Tot01
              end
              object lbltm2_totalg02: TRLLabel
                Left = 363
                Top = 0
                Width = 90
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Holder = lbl_tm2Tot02
              end
              object lbltm2_totalg03: TRLLabel
                Left = 454
                Top = 0
                Width = 90
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Holder = lbl_tm2Cod03
              end
              object lbltm2_totalger: TRLLabel
                Left = 544
                Top = 0
                Width = 90
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                Holder = lbl_tm2Total
              end
              object lbltm2_totalgmed: TRLLabel
                Left = 634
                Top = 0
                Width = 82
                Height = 12
                Alignment = taRightJustify
                AutoSize = False
                Holder = lbl_tm2Media
              end
            end
            object RLBand13: TRLBand
              Left = 1
              Top = 15
              Width = 716
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
              object RLDBText6: TRLDBText
                Left = 1
                Top = 0
                Width = 66
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'CODCCU'
                DataSource = Src_Temp
                Holder = lbl_tm2Codigo
                Layout = tlCenter
              end
              object RLDBText7: TRLDBText
                Left = 69
                Top = 1
                Width = 204
                Height = 14
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'NOMCCU'
                DataSource = Src_Temp
                Holder = lbl_tm2Descr
                Layout = tlCenter
              end
              object RLDBText8: TRLDBText
                Left = 273
                Top = 1
                Width = 90
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'DC1'
                DataSource = Src_Temp
                Holder = lbl_tm2Tot01
                Layout = tlCenter
              end
              object RLDBText9: TRLDBText
                Left = 363
                Top = 1
                Width = 90
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'DC2'
                DataSource = Src_Temp
                Holder = lbl_tm2Tot02
                Layout = tlCenter
              end
              object RLDBText10: TRLDBText
                Left = 454
                Top = 1
                Width = 90
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'DC3'
                DataSource = Src_Temp
                Holder = lbl_tm2Cod03
                Layout = tlCenter
              end
              object RLDBText17: TRLDBText
                Left = 634
                Top = 1
                Width = 82
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = False
                Borders.DrawBottom = False
                DataField = 'media'
                DataSource = Src_Temp
                Holder = lbl_tm2Media
                Layout = tlCenter
              end
              object RLDBText21: TRLDBText
                Left = 544
                Top = 1
                Width = 90
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Borders.Sides = sdCustom
                Borders.DrawLeft = False
                Borders.DrawTop = False
                Borders.DrawRight = True
                Borders.DrawBottom = False
                DataField = 'total_tri'
                DataSource = Src_Temp
                Holder = lbl_tm2Total
                Layout = tlCenter
              end
            end
          end
        end
        object RLBand12: TRLBand
          Left = 38
          Top = 88
          Width = 718
          Height = 32
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_tm2Codigo: TRLMemo
            Left = 2
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
            Lines.Strings = (
              'C'#243'digo')
          end
          object lbl_tm2Descr: TRLMemo
            Left = 70
            Top = 0
            Width = 204
            Height = 30
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Lines.Strings = (
              'Descricao')
          end
          object lbl_tm2Tot01: TRLMemo
            Left = 274
            Top = 0
            Width = 90
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
          object lbl_tm2Tot02: TRLMemo
            Left = 364
            Top = 0
            Width = 90
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
          object lbl_tm2Cod03: TRLMemo
            Left = 455
            Top = 0
            Width = 90
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
          object lbl_tm2Media: TRLMemo
            Left = 635
            Top = 1
            Width = 82
            Height = 30
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Lines.Strings = (
              ''
              'Media')
          end
          object lbl_tm2Total: TRLMemo
            Left = 545
            Top = 1
            Width = 90
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
              'Geral')
          end
        end
      end
    end
  end
  object TEMP: TQuery
    OnCalcFields = TEMPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select NOMDEP,NOMCCU,CODDEP,CODCC AS CODCCU, NATDC, '#39'03/2008'#39' AS' +
        ' MES1,  sum(  decode(  TO_CHAR(DATAREAL, '#39'YYYYMM'#39'),'#39'200803'#39',VALO' +
        'RR,0)) AS DC1, '#39'04/2008'#39' AS MES2,  sum(  decode(  TO_CHAR(DATARE' +
        'AL, '#39'YYYYMM'#39'),'#39'200804'#39',VALORR,0)) AS DC2, '#39'05/2008'#39' AS MES3,  su' +
        'm(  decode(  TO_CHAR(DATAREAL, '#39'YYYYMM'#39'),'#39'200805'#39',VALORR,0)) AS ' +
        'DC3  FROM CADLDR where ((CODEMP=1))         and        STATUS<>9' +
        ' '
      ' and DATAREAL>='#39'01/03/2008'#39
      ' and DATAREAL<='#39'31/05/2008'#39
      ' GROUP BY NOMDEP,NOMCCU,CODDEP,CODCC,NATDC ')
    Left = 440
    Top = 72
    object TEMPNOMDEP: TStringField
      FieldName = 'NOMDEP'
      Size = 40
    end
    object TEMPNOMCCU: TStringField
      FieldName = 'NOMCCU'
      Size = 40
    end
    object TEMPCODDEP: TStringField
      FieldName = 'CODDEP'
      Size = 6
    end
    object TEMPCODCCU: TStringField
      FieldName = 'CODCCU'
      Size = 6
    end
    object TEMPNATDC: TStringField
      FieldName = 'NATDC'
      Size = 1
    end
    object TEMPMES1: TStringField
      FieldName = 'MES1'
      FixedChar = True
      Size = 7
    end
    object TEMPDC1: TFloatField
      FieldName = 'DC1'
    end
    object TEMPMES2: TStringField
      FieldName = 'MES2'
      FixedChar = True
      Size = 7
    end
    object TEMPDC2: TFloatField
      FieldName = 'DC2'
    end
    object TEMPMES3: TStringField
      FieldName = 'MES3'
      FixedChar = True
      Size = 7
    end
    object TEMPDC3: TFloatField
      FieldName = 'DC3'
    end
    object TEMPcodgru: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codgru'
      Calculated = True
    end
    object TEMPtotal_tri: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_tri'
      Calculated = True
    end
    object TEMPmedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'media'
      Calculated = True
    end
  end
  object Qr_Relatorio: TQuery
    OnCalcFields = Qr_RelatorioCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  codcc as codigo,'
      'codcc as codgru,'
      'codcc as codsubgru,'
      'nome as nomgru,'
      'nome as nomsubgru,'
      'NATDC,'
      'nome as nomitem'
      ',VALORP AS VALOR01'
      ',VALORP AS VALOR02'
      ',VALORP AS VALOR03'
      ',VALORP AS VALOR04'
      ',VALORP AS VALOR05'
      ',VALORP AS VALOR06'
      ',VALORP AS VALOR07'
      ',VALORP AS VALOR08'
      ',VALORP AS VALOR09'
      ',VALORP AS VALOR10'
      ',VALORP AS VALOR11'
      ',VALORP AS VALOR12'
      ' from cadldr')
    Left = 440
    Top = 24
    object Qr_RelatorioNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Qr_RelatorioNOMSUBGRU: TStringField
      FieldName = 'NOMSUBGRU'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Qr_RelatorioNOMITEM: TStringField
      FieldName = 'NOMITEM'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
    object Qr_RelatorioVALOR01: TFloatField
      FieldName = 'VALOR01'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR02: TFloatField
      FieldName = 'VALOR02'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR03: TFloatField
      FieldName = 'VALOR03'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR04: TFloatField
      FieldName = 'VALOR04'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR05: TFloatField
      FieldName = 'VALOR05'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR06: TFloatField
      FieldName = 'VALOR06'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR07: TFloatField
      FieldName = 'VALOR07'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR08: TFloatField
      FieldName = 'VALOR08'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR09: TFloatField
      FieldName = 'VALOR09'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR10: TFloatField
      FieldName = 'VALOR10'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR11: TFloatField
      FieldName = 'VALOR11'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioVALOR12: TFloatField
      FieldName = 'VALOR12'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_RelatorioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_Relatoriomedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'media'
      Calculated = True
    end
    object Qr_Relatoriototger: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totger'
      Calculated = True
    end
    object Qr_RelatorioCODGRU: TStringField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_RelatorioCODSUBGRU: TStringField
      FieldName = 'CODSUBGRU'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_RelatorioNATDC: TStringField
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
  end
  object Src_Relatorio: TDataSource
    DataSet = Qr_Relatorio
    Left = 479
    Top = 79
  end
  object Src_Temp: TDataSource
    DataSet = TEMP
    Left = 476
    Top = 32
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 524
    Top = 48
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 532
    Top = 96
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato (Word)RichText'
    Left = 488
    Top = 88
  end
end
