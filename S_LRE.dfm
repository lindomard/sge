object Frm_LRE: TFrm_LRE
  Left = 59
  Top = 128
  Width = 750
  Height = 497
  Caption = 'Livro Registro de Entradas'
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
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 742
    Height = 209
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel4: TPanel
      Left = 641
      Top = 0
      Width = 101
      Height = 209
      Align = alRight
      TabOrder = 0
      object BBnFechar: TBitBtn
        Left = 4
        Top = 103
        Width = 93
        Height = 25
        Caption = '&Fechar'
        TabOrder = 2
        OnClick = BBnFecharClick
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
      object BImprimir: TBitBtn
        Left = 4
        Top = 78
        Width = 93
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 1
        OnClick = BImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
          808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
          000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
          08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
          080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
          0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
          08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
          008888888777777777F888888888888888888888888888888888}
        NumGlyphs = 2
      end
      object bVisualizar: TBitBtn
        Left = 4
        Top = 53
        Width = 93
        Height = 25
        Caption = '&Visualizar'
        TabOrder = 0
        Visible = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          033333777777777773333330777777703333333773F333773333333330888033
          33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
          FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
          8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
          8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
          8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
          8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
          FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
        NumGlyphs = 2
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 641
      Height = 209
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 3
        Top = 40
        Width = 83
        Height = 13
        Caption = 'Sigla do Estado..:'
      end
      object Label2: TLabel
        Left = 4
        Top = 63
        Width = 83
        Height = 13
        Caption = 'Data Inicial.........:'
      end
      object Label3: TLabel
        Left = 4
        Top = 83
        Width = 84
        Height = 13
        Caption = 'Data Final...........:'
      end
      object Label4: TLabel
        Left = 280
        Top = 40
        Width = 75
        Height = 13
        Caption = 'Livro N'#250'mero...:'
      end
      object Label6: TLabel
        Left = 144
        Top = 40
        Width = 92
        Height = 13
        Caption = 'em branco = Todos'
      end
      object Label5: TLabel
        Left = 5
        Top = 104
        Width = 74
        Height = 13
        Caption = 'N'#250'm.P'#225'g.Inicial'
      end
      object Label9: TLabel
        Left = 6
        Top = 124
        Width = 81
        Height = 13
        Caption = 'Dt. Termo Abert: '
      end
      object Label10: TLabel
        Left = 168
        Top = 126
        Width = 140
        Height = 13
        Caption = 'Dt. Termo de Encerramento:  '
      end
      object Label12: TLabel
        Left = 5
        Top = 145
        Width = 128
        Height = 13
        Caption = 'Total P'#225'gina para Termos: '
      end
      object Label13: TLabel
        Left = 393
        Top = 127
        Width = 26
        Height = 13
        Caption = 'Nota:'
      end
      object Label7: TLabel
        Left = 520
        Top = 129
        Width = 31
        Height = 13
        Caption = 'CFOP:'
      end
      object Label8: TLabel
        Left = 433
        Top = 42
        Width = 43
        Height = 13
        Caption = 'Listar por'
      end
      object Label11: TLabel
        Left = 8
        Top = 168
        Width = 56
        Height = 13
        Caption = 'Grupo Forn.'
      end
      object MDT2: TMaskEdit
        Left = 89
        Top = 80
        Width = 75
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object MDT1: TMaskEdit
        Left = 89
        Top = 59
        Width = 75
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 3
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object UF: TComboBox
        Left = 89
        Top = 36
        Width = 51
        Height = 21
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = UFKeyPress
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'CE'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SP'
          'TO')
      end
      object LN: TEdit
        Left = 358
        Top = 36
        Width = 55
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = '001'
        OnExit = LNExit
        OnKeyPress = LNKeyPress
      end
      object TIPO: TRadioGroup
        Left = 296
        Top = 59
        Width = 79
        Height = 61
        Caption = 'Tipo Relat'#243'rio'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          '&Geral'
          '&Normal'
          '&Resumo')
        ParentCtl3D = False
        TabOrder = 6
      end
      object TERMO: TRadioGroup
        Left = 378
        Top = 60
        Width = 81
        Height = 61
        Caption = 'Emitir Termos'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          '&Sim'
          '&N'#227'o')
        ParentCtl3D = False
        TabOrder = 7
      end
      object PGI: TEdit
        Left = 89
        Top = 101
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        Text = '01'
        OnKeyPress = PGIKeyPress
      end
      object DTTERM1: TMaskEdit
        Left = 89
        Top = 122
        Width = 75
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 9
        Text = '  /  /    '
      end
      object DTTERM2: TMaskEdit
        Left = 309
        Top = 123
        Width = 75
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 10
        Text = '  /  /    '
      end
      object Cbx_TERABER: TCheckBox
        Left = 279
        Top = 145
        Width = 203
        Height = 17
        Caption = '&Termos de Abertura com P'#225'gina: 0001'
        TabOrder = 11
      end
      object TPGTERM: TEdit
        Left = 135
        Top = 143
        Width = 105
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        Text = '0'
      end
      object cb_antigo: TCheckBox
        Left = 523
        Top = 146
        Width = 67
        Height = 17
        Caption = 'Antigo'
        TabOrder = 13
      end
      object rg_oper: TRadioGroup
        Left = 6
        Top = 0
        Width = 333
        Height = 34
        Caption = 'Tipo de Opera'#231#227'o:'
        Columns = 3
        Ctl3D = False
        ItemIndex = 2
        Items.Strings = (
          'Estaduais'
          'Interestaduais'
          'Ambas')
        ParentCtl3D = False
        TabOrder = 0
      end
      object NUMNF: TEdit
        Left = 431
        Top = 124
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        OnExit = NUMNFExit
      end
      object rg_conhec: TRadioGroup
        Left = 462
        Top = 60
        Width = 169
        Height = 61
        Caption = 'Tipo Relat'#243'rio'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          '&Geral'
          '&Notas Fiscais Mercadorias'
          '&Notas Frete(Conhecimento)')
        ParentCtl3D = False
        TabOrder = 15
      end
      object CB_IPIICMS: TCheckBox
        Left = 392
        Top = 8
        Width = 209
        Height = 17
        Caption = 'Inv'#233's de IPI Escrever ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = CB_IPIICMSClick
      end
      object MCFOP: TEdit
        Left = 559
        Top = 124
        Width = 72
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnExit = MCFOPExit
      end
      object cb_listarpor: TComboBox
        Left = 485
        Top = 35
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 3
        TabOrder = 17
        Text = 'TODOS'
        Items.Strings = (
          'CFOP'
          'DATA'
          'NUMERO'
          'TODOS')
      end
      object CODGFOR: TEdit
        Left = 68
        Top = 165
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        OnExit = CODGFORExit
        OnKeyPress = CODGFORKeyPress
      end
      object lbx_codgfor: TListBox
        Left = 129
        Top = 165
        Width = 443
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyDown = lbx_codgforKeyDown
      end
      object OMITIR_GFOR: TCheckBox
        Left = 69
        Top = 187
        Width = 57
        Height = 17
        Caption = 'Omitir'
        TabOrder = 20
      end
      object cb_csv: TCheckBox
        Left = 579
        Top = 146
        Width = 67
        Height = 17
        Caption = 'CSV'
        TabOrder = 21
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 257
    Align = alClient
    BorderWidth = 3
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 734
      Height = 249
      Align = alClient
      DataSource = Src_RE
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'cgc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NENUMERO'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NESERIE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NECFO'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEDTENT'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEDTEMIS'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NESUBSER'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEBASEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEICMSN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEBASER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEICMSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEFRETE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NESEG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEOUTRAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTMER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTNOT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTDES'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTPOS'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTNEG'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTINA'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEALIQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEMODELO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inscricao'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIE'
          Width = 64
          Visible = True
        end>
    end
  end
  object Src_RE: TDataSource
    DataSet = DM5.Qr_Ne
    Left = 128
    Top = 60
  end
  object SaveDialog1: TSaveDialog
    Left = 424
    Top = 266
  end
end
