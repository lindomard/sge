object Frm_Loc: TFrm_Loc
  Left = 268
  Top = 149
  Width = 647
  Height = 562
  ActiveControl = Edit1
  Caption = 'Manuten'#231#227'o Em Cadastros de Municipios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 639
    Height = 27
    Align = alTop
    TabOrder = 0
    object lbl_emp: TLabel
      Left = 594
      Top = 1
      Width = 44
      Height = 25
      Align = alRight
      Alignment = taCenter
      Caption = 'lbl_emp'
    end
    object Pesquisapor: TLabel
      Left = 6
      Top = 7
      Width = 82
      Height = 13
      Caption = '&Pesquisar por:'
      FocusControl = CAMPO
    end
    object BBnAtu: TBitBtn
      Left = 466
      Top = 2
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      TabOrder = 2
      OnClick = BBnAtuClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CAMPO: TComboBox
      Left = 93
      Top = 4
      Width = 117
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Nome'
        'C'#243'digo')
    end
    object Edit1: TMaskEdit
      Left = 212
      Top = 4
      Width = 253
      Height = 21
      AutoSelect = False
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object Panel_edit: TPanel
    Left = 0
    Top = 290
    Width = 639
    Height = 241
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 113
      Top = 8
      Width = 113
      Height = 13
      Caption = 'Nome do Municipio:'
    end
    object Label3: TLabel
      Left = 504
      Top = 8
      Width = 21
      Height = 13
      Caption = 'UF:'
    end
    object SpeedButton5: TSpeedButton
      Left = 564
      Top = 5
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
    object Label6: TLabel
      Left = 9
      Top = 28
      Width = 103
      Height = 13
      Caption = 'Codigo no (IBGE):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sb_buscacod: TSpeedButton
      Left = 192
      Top = 22
      Width = 113
      Height = 22
      Hint = 'Buscar codigo no site!!!'
      Caption = 'Buscar no site'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = sb_buscacodClick
    end
    object txt_codloc: TEdit
      Left = 54
      Top = 5
      Width = 55
      Height = 19
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      OnExit = txt_codlocExit
    end
    object txt_nomloc: TEdit
      Left = 228
      Top = 5
      Width = 273
      Height = 19
      Ctl3D = False
      MaxLength = 30
      ParentCtl3D = False
      TabOrder = 1
    end
    object txt_uf: TEdit
      Left = 529
      Top = 5
      Width = 33
      Height = 19
      Ctl3D = False
      MaxLength = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object txt_codloc_ibge: TEdit
      Left = 119
      Top = 25
      Width = 68
      Height = 19
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      OnExit = txt_codloc_ibgeExit
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 46
      Width = 637
      Height = 44
      Caption = 'Exporta'#231#227'o:'
      TabOrder = 4
      object Label10: TLabel
        Left = 8
        Top = 20
        Width = 21
        Height = 13
        Caption = 'UF:'
      end
      object Label11: TLabel
        Left = 86
        Top = 19
        Width = 37
        Height = 13
        Caption = 'Nome:'
      end
      object edt_exp_embarcacao_uf: TEdit
        Left = 33
        Top = 17
        Width = 29
        Height = 19
        Ctl3D = False
        MaxLength = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_EXP_EMBARGUE_LOCAL: TEdit
        Left = 132
        Top = 17
        Width = 299
        Height = 19
        Ctl3D = False
        MaxLength = 40
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 105
      Width = 637
      Height = 135
      Align = alBottom
      TabOrder = 5
      object GB_NFSERVICO: TGroupBox
        Left = 1
        Top = 1
        Width = 352
        Height = 133
        Align = alLeft
        Caption = 'Dados exclusivos para nota fiscal de Servi'#231'o:'
        Color = 13041587
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        object Label4: TLabel
          Left = 180
          Top = 18
          Width = 111
          Height = 13
          Caption = 'Aliquota de ISSQN:'
        end
        object Label5: TLabel
          Left = 186
          Top = 37
          Width = 100
          Height = 13
          Caption = 'Redutor da Base:'
        end
        object Label7: TLabel
          Left = 14
          Top = 36
          Width = 102
          Height = 13
          Caption = 'Aliquota de INSS:'
        end
        object Label8: TLabel
          Left = 14
          Top = 54
          Width = 102
          Height = 13
          Caption = 'Aliquota de IRRF:'
        end
        object Label9: TLabel
          Left = 186
          Top = 55
          Width = 100
          Height = 13
          Caption = 'Redutor da Base:'
        end
        object Label12: TLabel
          Left = -2
          Top = 18
          Width = 121
          Height = 13
          Caption = 'C'#243'digo na Prefeitura:'
        end
        object txt_ISSQN_ALIQ: TEdit
          Left = 295
          Top = 16
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          OnExit = txt_ISSQN_ALIQExit
        end
        object txt_INSS_Red: TEdit
          Left = 295
          Top = 34
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          OnExit = txt_INSS_RedExit
        end
        object txt_INSS_Aliq: TEdit
          Left = 122
          Top = 33
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          OnExit = txt_INSS_AliqExit
        end
        object txt_IRRF_Aliq: TEdit
          Left = 122
          Top = 51
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          OnExit = txt_IRRF_AliqExit
        end
        object txt_IRRF_Red: TEdit
          Left = 295
          Top = 52
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          OnExit = txt_IRRF_RedExit
        end
        object EDT_LCODMUN_PREF: TEdit
          Left = 122
          Top = 15
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          OnExit = EDT_LCODMUN_PREFExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 368
        Top = 0
        Width = 185
        Height = 57
        Caption = 'IBS:'
        TabOrder = 1
        object Label13: TLabel
          Left = 10
          Top = 18
          Width = 66
          Height = 13
          Caption = 'Percentual:'
        end
        object edt_LIBS_ALIQ: TEdit
          Left = 84
          Top = 15
          Width = 53
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_LIBS_ALIQExit
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 58
    Width = 639
    Height = 232
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 637
      Height = 230
      Align = alClient
      DataSource = DM1.Src_Loc
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'LCODLOC'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LNOME'
          Width = 436
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUF'
          Width = 40
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 639
    Height = 31
    ButtonHeight = 26
    Caption = 'ToolBar1'
    TabOrder = 3
    TabStop = True
    object sbnInserir: TSpeedButton
      Left = 0
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Inserir'
      Flat = True
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
      OnClick = sbnInserirClick
    end
    object sbnEditar: TSpeedButton
      Left = 79
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Alterar'
      Flat = True
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
      NumGlyphs = 2
      OnClick = sbnEditarClick
    end
    object sbnExcluir: TSpeedButton
      Left = 158
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Excluir'
      Flat = True
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
      OnClick = sbnExcluirClick
    end
    object ToolButton1: TToolButton
      Left = 237
      Top = 2
      Width = 4
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object sbnGravar: TSpeedButton
      Left = 241
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Gravar'
      Enabled = False
      Flat = True
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
      OnClick = sbnGravarClick
    end
    object ToolButton2: TToolButton
      Left = 320
      Top = 2
      Width = 4
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object sbnCancelar: TSpeedButton
      Left = 324
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Flat = True
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
      OnClick = sbnCancelarClick
    end
    object ToolButton3: TToolButton
      Left = 403
      Top = 2
      Width = 111
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sbnSair: TSpeedButton
      Left = 514
      Top = 2
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      Flat = True
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
      OnClick = sbnSairClick
    end
  end
  object Src_Loc: TDataSource
    DataSet = DM1.Tb_Loc
    OnDataChange = Src_LocDataChange
    Left = 347
    Top = 109
  end
end
