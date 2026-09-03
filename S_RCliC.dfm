object Frm_RCliC: TFrm_RCliC
  Left = 436
  Top = 138
  Width = 716
  Height = 517
  Caption = 'Relat'#243'rio de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 282
    Width = 708
    Height = 204
    Cursor = crHandPoint
    Align = alClient
    TabOrder = 0
    object Label14: TLabel
      Left = 1
      Top = 20
      Width = 89
      Height = 13
      Alignment = taCenter
      Caption = 'Tipo de Pessoa'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 101
      Top = 23
      Width = 112
      Height = 13
      Alignment = taCenter
      Caption = 'Situacao do Cliente'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 124
      Width = 67
      Height = 13
      Caption = 'Separado por:'
    end
    object Label3: TLabel
      Left = 328
      Top = 23
      Width = 43
      Height = 13
      Alignment = taCenter
      Caption = 'Statuss'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 163
      Width = 40
      Height = 13
      Caption = 'Ordem..:'
    end
    object tipo_pessoa: TCheckListBox
      Left = 1
      Top = 34
      Width = 97
      Height = 47
      Color = 16776176
      Columns = 2
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Fisica'
        'Juridica'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 0
      OnClick = tipo_pessoaClick
    end
    object situacao_cli: TCheckListBox
      Left = 101
      Top = 37
      Width = 226
      Height = 82
      Color = 16776176
      Columns = 2
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        '0-Ativo'
        '1-Bloq.Temporario'
        '2-Bloq.Definitivo'
        '3-Novo'
        '4-'
        '5-'
        '6-'
        '7-'
        '8-Observacao'
        '9-'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 1
      OnClick = situacao_cliClick
    end
    object cb_separado: TComboBox
      Left = 81
      Top = 121
      Width = 336
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 7
      TabOrder = 2
      Text = 'Sem Separar'
      Items.Strings = (
        'Assessor'
        'Bairro'
        'Cidade'
        'Convenio'
        'Estado'
        'Ramo de Cliente'
        'Rede de Clientes'
        'Sem Separar'
        'Vendedor'
        'Regi'#227'o'
        'Regime Tributario')
    end
    object bbImprimir: TBitBtn
      Left = 426
      Top = 127
      Width = 114
      Height = 27
      Cursor = crHandPoint
      Caption = '&Imprimir'
      TabOrder = 5
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
      Left = 572
      Top = 127
      Width = 114
      Height = 28
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
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
    object RG_TIPOREL: TRadioGroup
      Left = 421
      Top = 23
      Width = 105
      Height = 97
      Caption = 'Tipo Relat'#243'rio:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Resumido'
        'Detalhado')
      ParentCtl3D = False
      TabOrder = 4
    end
    object CB_AVANCPAG: TCheckBox
      Left = 82
      Top = 144
      Width = 183
      Height = 17
      Caption = 'Avan'#231'ar Pagina'
      TabOrder = 3
    end
    object status: TCheckListBox
      Left = 328
      Top = 37
      Width = 91
      Height = 83
      Color = 16776176
      Columns = 2
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        '0-'
        '1-'
        '2-'
        '3-'
        '4-'
        '5-'
        '6-'
        '7-'
        '8-'
        '9-'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 7
      OnClick = statusClick
    end
    object rg_email: TRadioGroup
      Left = 529
      Top = 23
      Width = 136
      Height = 97
      Caption = 'E-mail'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'Somente com e-mail'
        'Somente sem e-mail'
        'Todos')
      ParentCtl3D = False
      TabOrder = 8
    end
    object cb_ordem: TComboBox
      Left = 80
      Top = 160
      Width = 337
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'Codigo do Cliente'
      Items.Strings = (
        'Codigo do Cliente'
        'Raz'#227'o Social'
        'Nome Fantasia')
    end
    object cb_omitir: TCheckBox
      Left = 424
      Top = 160
      Width = 97
      Height = 17
      Caption = 'Omitir Criterios'
      TabOrder = 10
    end
    object CB_HOME_PAGE: TCheckBox
      Left = 6
      Top = 4
      Width = 187
      Height = 17
      Caption = 'Imprimir Home Page do cliente'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object bb_exportar: TBitBtn
      Left = 530
      Top = 160
      Width = 114
      Height = 27
      Caption = '&Exportar Relatorio'
      TabOrder = 12
      OnClick = bb_exportarClick
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
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 282
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 700
        Height = 254
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object lbl_codven: TLabel
          Left = 91
          Top = 15
          Width = 59
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_codcli: TLabel
          Left = 106
          Top = 57
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
        object Label1: TLabel
          Left = 92
          Top = 96
          Width = 58
          Height = 13
          Caption = 'Convenio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_loc: TLabel
          Left = 106
          Top = 136
          Width = 44
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 84
          Top = 180
          Width = 66
          Height = 13
          Caption = 'Estado/UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CODVEN: TEdit
          Left = 154
          Top = 13
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 215
          Top = 13
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 156
          Top = 34
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnMouseMove = OMITIR_VENMouseMove
        end
        object CODCLI: TEdit
          Left = 154
          Top = 54
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 215
          Top = 54
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 154
          Top = 79
          Width = 50
          Height = 13
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object lbx_codloc: TListBox
          Left = 215
          Top = 136
          Width = 478
          Height = 42
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
        object CODLOC: TEdit
          Left = 154
          Top = 136
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object OMITIR_LOC: TCheckBox
          Left = 154
          Top = 159
          Width = 57
          Height = 17
          Caption = 'Omitir'
          TabOrder = 11
          OnMouseMove = OMITIR_CONMouseMove
        end
        object CODUF: TEdit
          Left = 154
          Top = 177
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object lbx_coduf: TListBox
          Left = 215
          Top = 177
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 161
          Top = 202
          Width = 45
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object CODCON: TEdit
          Left = 154
          Top = 94
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object OMITIR_CON: TCheckBox
          Left = 157
          Top = 117
          Width = 53
          Height = 17
          Caption = 'Omitir'
          TabOrder = 6
          OnMouseMove = OMITIR_CONMouseMove
        end
        object lbx_codcon: TListBox
          Left = 215
          Top = 95
          Width = 478
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codconKeyDown
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 220
          Width = 146
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Clientes come'#231'ado com:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
          Transparent = False
        end
        object PALAVRA: TEdit
          Left = 154
          Top = 218
          Width = 103
          Height = 19
          Hint = 'Digite a Palavra Desejada'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros'
      ImageIndex = 1
      object StaticText1: TStaticText
        Left = 31
        Top = 6
        Width = 109
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ramo de Clientes:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object edt_CODRAM: TEdit
        Left = 142
        Top = 7
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = edt_CODRAMExit
        OnKeyPress = edt_CODRAMKeyPress
      end
      object OMITIR_RAM: TCheckBox
        Left = 143
        Top = 27
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object lbx_codram: TListBox
        Left = 197
        Top = 6
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codramKeyDown
      end
      object lbl_codred: TStaticText
        Left = 36
        Top = 46
        Width = 102
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rede de Clientes:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object edt_CODRED: TEdit
        Left = 142
        Top = 44
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = edt_CODREDExit
        OnKeyPress = edt_CODREDKeyPress
      end
      object lbx_codred: TListBox
        Left = 197
        Top = 44
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codredKeyDown
      end
      object OMITIR_RED: TCheckBox
        Left = 143
        Top = 64
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object lbl_codbar: TStaticText
        Left = 36
        Top = 84
        Width = 102
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bairros'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object CODBAR: TEdit
        Left = 142
        Top = 82
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = CODBARExit
        OnKeyPress = CODBARKeyPress
      end
      object lbx_codbar: TListBox
        Left = 197
        Top = 82
        Width = 345
        Height = 43
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codbarKeyDown
      end
      object OMITIR_BAR: TCheckBox
        Left = 143
        Top = 106
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object StaticText4: TStaticText
        Left = -1
        Top = 126
        Width = 138
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Regiao'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object EDT_CODREG: TEdit
        Left = 142
        Top = 124
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = EDT_CODREGExit
        OnKeyPress = EDT_CODREGKeyPress
      end
      object lbx_CODREG: TListBox
        Left = 197
        Top = 124
        Width = 345
        Height = 43
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_CODREGKeyDown
      end
      object OMITIR_CODREG: TCheckBox
        Left = 143
        Top = 148
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object StaticText6: TStaticText
        Left = 4
        Top = 171
        Width = 138
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Assessores:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
      end
      object edt_codassessor: TEdit
        Left = 142
        Top = 166
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnExit = edt_codassessorExit
        OnKeyPress = edt_codassessorKeyPress
      end
      object lbx_assessor: TListBox
        Left = 197
        Top = 166
        Width = 345
        Height = 45
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 17
        OnKeyDown = lbx_assessorKeyDown
      end
      object OMITIR_ACESS: TCheckBox
        Left = 144
        Top = 192
        Width = 51
        Height = 17
        Caption = 'Omitir'
        TabOrder = 18
      end
      object RG_IE: TRadioGroup
        Left = 144
        Top = 216
        Width = 401
        Height = 39
        Caption = 'Sobre Inscri'#231#227'o Estadual'
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          'Com Inscri'#231#227'o '
          'Sem Inscri'#231#227'o '
          'Todos')
        TabOrder = 20
      end
    end
    object tsFiltrosData: TTabSheet
      Caption = 'Filtros de datas'
      ImageIndex = 2
      object Label6: TLabel
        Left = 8
        Top = 16
        Width = 72
        Height = 13
        Caption = 'Incluidos entre:'
      end
      object Label7: TLabel
        Left = 216
        Top = 19
        Width = 6
        Height = 13
        Caption = #224
      end
      object edt_datinc_ini: TDateEdit
        Left = 88
        Top = 14
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object edt_datinc_fin: TDateEdit
        Left = 232
        Top = 14
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object StaticText2: TStaticText
        Left = 478
        Top = 2
        Width = 142
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Regime Tributario'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object clb_crt: TCheckListBox
        Left = 477
        Top = 22
        Width = 143
        Height = 122
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'Indefinido'
          'Simples Nacional'
          'Simples Nacional Excesso de sublimite de receita bruta'
          'Regime Normal'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 3
        OnClick = clb_crtClick
      end
    end
  end
  object Qr_Cli: TQuery
    OnCalcFields = Qr_CliCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRAZAO'
      '     ,CCODCLI'
      '      ,CDENOM'
      '      ,CLOG'
      '      ,CBAIRRO'
      '      ,CCIDADE'
      '      ,CUF'
      '      ,CCEP'
      '      ,CCNPJ'
      '      ,CIE'
      '      ,CRG'
      '      ,CCPF'
      '      ,CFONE01'
      '      ,CFONE02'
      '      ,CFONE03'
      '      ,CFAX'
      '      ,CCODVEN'
      '      ,COBS01'
      '      ,COBS02'
      '      ,COBS03'
      '      ,COBS04'
      '      ,COBS05'
      '      ,CROTA'
      '      ,CNOMROTA'
      '      ,CRAZAO AS NOMGRU'
      '      ,CNUM,CCOMPL'
      '      ,CFONCON,CNOMCON,CEMAIL'
      '      ,CHOME'
      '     , CSUPERMICRO'
      '       from CADCLI'
      '      where CCODEMP is null')
    Left = 424
    Top = 21
    object Qr_CliCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CliCDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_CliCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_CliCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_CliCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CliCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CliCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_CliCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_CliCIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_CliCRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_CliCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_CliCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_CliCFONE02: TStringField
      FieldName = 'CFONE02'
      Origin = 'SG_ASSOC.CADCLI.CFONE02'
      Size = 16
    end
    object Qr_CliCFONE03: TStringField
      FieldName = 'CFONE03'
      Origin = 'SG_ASSOC.CADCLI.CFONE03'
      Size = 16
    end
    object Qr_CliCCODVEN: TFloatField
      FieldName = 'CCODVEN'
      Origin = 'SG_ASSOC.CADCLI.CCODVEN'
    end
    object Qr_CliCOBS01: TStringField
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Qr_CliCOBS02: TStringField
      FieldName = 'COBS02'
      Origin = 'SG_ASSOC.CADCLI.COBS02'
      Size = 60
    end
    object Qr_CliCOBS03: TStringField
      FieldName = 'COBS03'
      Origin = 'SG_ASSOC.CADCLI.COBS03'
      Size = 60
    end
    object Qr_CliCOBS04: TStringField
      FieldName = 'COBS04'
      Origin = 'SG_ASSOC.CADCLI.COBS04'
      Size = 60
    end
    object Qr_CliCOBS05: TStringField
      FieldName = 'COBS05'
      Origin = 'SG_ASSOC.CADCLI.COBS05'
      Size = 60
    end
    object Qr_CliNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CliCCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
    object Qr_Cliender_compl: TStringField
      FieldKind = fkCalculated
      FieldName = 'ender_compl'
      Size = 100
      Calculated = True
    end
    object Qr_CliCNUM: TStringField
      FieldName = 'CNUM'
      Origin = 'SG_ASSOC.CADCLI.CNUM'
      Size = 10
    end
    object Qr_CliCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Origin = 'SG_ASSOC.CADCLI.CCOMPL'
      Size = 30
    end
    object Qr_CliCFONCON: TStringField
      FieldName = 'CFONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Qr_CliCNOMCON: TStringField
      FieldName = 'CNOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Qr_CliCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
    end
    object Qr_CliCFAX: TStringField
      FieldName = 'CFAX'
      Origin = 'SG_ASSOC.CADCLI.CFAX'
      Size = 16
    end
    object Qr_CliCROTA: TFloatField
      FieldName = 'CROTA'
      Origin = 'SG_ASSOC.CADCLI.CROTA'
    end
    object Qr_CliCNOMROTA: TStringField
      FieldName = 'CNOMROTA'
      Origin = 'SG_ASSOC.CADCLI.CNOMROTA'
      Size = 40
    end
    object Qr_CliCHOME: TStringField
      FieldName = 'CHOME'
      Origin = 'SG_ASSOC.CADCLI.CHOME'
      Size = 50
    end
    object Qr_CliCSUPERMICRO: TFloatField
      FieldName = 'CSUPERMICRO'
      Origin = 'SG_ASSOC.CADCLI.CSUPERMICRO'
    end
  end
  object src_cli: TDataSource
    DataSet = Qr_Cli
    Left = 468
    Top = 24
  end
end
