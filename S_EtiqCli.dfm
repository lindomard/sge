object Frm_EtiqCli: TFrm_EtiqCli
  Left = 73
  Top = 16
  Width = 708
  Height = 594
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Impress'#227'o de C'#243'digos de Barras diversos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 23
    Top = 309
    Width = 164
    Height = 13
    Caption = 'Imprimir a partir da etiqueta.:'
    Visible = False
  end
  object Label14: TLabel
    Left = 6
    Top = 234
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
    Left = 269
    Top = 238
    Width = 94
    Height = 13
    Alignment = taCenter
    Caption = 'Situacao Cliente'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object APARTIR: TEdit
    Left = 194
    Top = 306
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Text = '1'
    Visible = False
    OnExit = APARTIRExit
  end
  object bbEtiq2563: TBitBtn
    Left = 242
    Top = 484
    Width = 205
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir Padr'#227'o 25,4/63,5mm'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
    OnClick = bbEtiq2563Click
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
  object bbEtiq2138: TBitBtn
    Left = 241
    Top = 460
    Width = 205
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir Padr'#227'o 21,2/38,2mm'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Visible = False
    OnClick = bbEtiq2138Click
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
    Left = 482
    Top = 482
    Width = 205
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair do programa'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
  object tipo_pessoa: TCheckListBox
    Left = 5
    Top = 250
    Width = 239
    Height = 47
    Color = 16776176
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'Fisica'
      'Juridica'
      'Todos')
    ParentShowHint = False
    ShowHint = True
    Style = lbOwnerDrawFixed
    TabOrder = 1
    OnClick = tipo_pessoaClick
  end
  object situacao_cli: TCheckListBox
    Left = 268
    Top = 251
    Width = 239
    Height = 47
    Color = 16776176
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'Ativo'
      'Bloq.Temporario'
      'Bloq.Definitivo'
      'Todos')
    ParentShowHint = False
    ShowHint = True
    Style = lbOwnerDrawFixed
    TabOrder = 2
    OnClick = situacao_cliClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 700
    Height = 232
    ActivePage = TabSheet1
    Align = alTop
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Label3: TLabel
        Left = 8
        Top = 150
        Width = 135
        Height = 13
        Caption = 'C'#243'digo do Conv'#234'nio.....'
        ParentShowHint = False
        ShowHint = True
      end
      object Label2: TLabel
        Left = 8
        Top = 82
        Width = 125
        Height = 13
        Caption = 'C'#243'digo do Cliente......'
      end
      object Label1: TLabel
        Left = 7
        Top = 13
        Width = 126
        Height = 13
        Caption = 'C'#243'digo Vendedor.......'
      end
      object CODVEN: TEdit
        Left = 129
        Top = 9
        Width = 74
        Height = 21
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 129
        Top = 27
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 9
        Top = 43
        Width = 97
        Height = 17
        Hint = 'Se Marcado os Vendedores '#13#10'Selecionados Nao Serao Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODCLI: TEdit
        Left = 128
        Top = 76
        Width = 75
        Height = 21
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 129
        Top = 94
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 9
        Top = 109
        Width = 97
        Height = 17
        Hint = 'Se Marcado os Clientes'#13#10'Selecionados Nao Serao Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CODCON: TEdit
        Left = 128
        Top = 142
        Width = 75
        Height = 21
        Hint = 'Se Marcado os Conv'#234'nios'#13#10'Selecionados Nao Serao Impressos'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object lbx_codcon: TListBox
        Left = 129
        Top = 160
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 9
        Top = 176
        Width = 97
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label5: TLabel
        Left = 7
        Top = 13
        Width = 128
        Height = 13
        Caption = 'Ramo de Atividade.....'
      end
      object Label7: TLabel
        Left = 7
        Top = 74
        Width = 128
        Height = 13
        Caption = 'Cidade......................'
      end
      object CODRCLI: TEdit
        Left = 129
        Top = 9
        Width = 74
        Height = 21
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODRCLIExit
        OnKeyPress = CODRCLIKeyPress
      end
      object OMITIR_RCLI: TCheckBox
        Left = 9
        Top = 43
        Width = 97
        Height = 17
        Hint = 
          'Se Marcado os Ramos de Clientes'#13#10'Selecionados Nao Serao Impresso' +
          's'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lbx_codrcli: TListBox
        Left = 129
        Top = 27
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codrcliKeyDown
      end
      object CODLOC: TEdit
        Left = 129
        Top = 70
        Width = 74
        Height = 21
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object OMITIR_LOC: TCheckBox
        Left = 9
        Top = 104
        Width = 97
        Height = 17
        Hint = 'Se Marcado as Cidades'#13#10'Selecionados Nao Serao Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object lbx_codloc: TListBox
        Left = 129
        Top = 88
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyDown = lbx_codlocKeyDown
      end
    end
    object ts_Relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = 16
        Top = 16
        Width = 794
        Height = 1123
        DataSource = Src_Bar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 718
          Height = 84
          ColCount = 3
          ColSpacing = 1.000000000000000000
          object lbl_razsoc: TRLDBText
            Left = 0
            Top = 0
            Width = 237
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'CRAZAO'
            DataSource = Src_Bar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cnpj: TRLDBText
            Left = 0
            Top = 16
            Width = 237
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'cnpj'
            DataSource = Src_Bar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
            Visible = False
          end
          object lbl_ender: TRLDBText
            Left = 0
            Top = 32
            Width = 237
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'CLOG'
            DataSource = Src_Bar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cepcidade: TRLDBText
            Left = 0
            Top = 48
            Width = 237
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'cep_bairro'
            DataSource = Src_Bar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
          object lbl_cidadeuf: TRLDBText
            Left = 0
            Top = 64
            Width = 237
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'cidade_uf'
            DataSource = Src_Bar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            Layout = tlCenter
            ParentFont = False
          end
        end
      end
    end
  end
  object RG_ALINHAR: TRadioGroup
    Left = 515
    Top = 234
    Width = 165
    Height = 65
    Hint = 'Selecione a forma que '#13#10'a etiqueta sera alinhada'
    Caption = 'Alinhamento da Etiqueta'
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      'Centralizada'
      'A Esquerda'
      'A Direita')
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object gb_configuracao: TGroupBox
    Left = 10
    Top = 328
    Width = 591
    Height = 138
    Caption = 'Configura'#231#227'o da Etiqueta:'
    TabOrder = 8
    object Label11: TLabel
      Left = 16
      Top = 24
      Width = 137
      Height = 13
      Caption = 'Quantidade de Colunas:'
    end
    object Label10: TLabel
      Left = 246
      Top = 22
      Width = 109
      Height = 13
      Caption = 'Espa'#231'o Entre Elas:'
    end
    object Label8: TLabel
      Left = 45
      Top = 40
      Width = 107
      Height = 13
      Caption = 'Altura da Etiqueta:'
    end
    object Label9: TLabel
      Left = 8
      Top = 58
      Width = 145
      Height = 13
      Caption = 'Altura da Caixa de Texto:'
    end
    object Label12: TLabel
      Left = 244
      Top = 59
      Width = 111
      Height = 13
      Caption = 'Tamanho da Fonte:'
    end
    object sbSalvarPadrao: TSpeedButton
      Left = 441
      Top = 9
      Width = 150
      Height = 21
      Cursor = crHandPoint
      Caption = '&Salvar Padr'#227'o'
      Enabled = False
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
    object sbRestaurar: TSpeedButton
      Left = 441
      Top = 55
      Width = 150
      Height = 21
      Cursor = crHandPoint
      Caption = 'Restaurar Padr'#227'o'
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
      OnClick = sbRestaurarClick
    end
    object Label13: TLabel
      Left = 51
      Top = 76
      Width = 100
      Height = 13
      Caption = 'Margem do Topo:'
    end
    object Label15: TLabel
      Left = 236
      Top = 76
      Width = 115
      Height = 13
      Caption = 'Margem do Rodape:'
    end
    object Label16: TLabel
      Left = 61
      Top = 94
      Width = 90
      Height = 13
      Caption = 'Margem Direita:'
    end
    object Label17: TLabel
      Left = 236
      Top = 94
      Width = 106
      Height = 13
      Caption = 'Margem Esquerda:'
    end
    object Label18: TLabel
      Left = 41
      Top = 112
      Width = 111
      Height = 13
      Caption = 'Altura do Relatorio:'
    end
    object Label19: TLabel
      Left = 236
      Top = 112
      Width = 121
      Height = 13
      Caption = 'Largura do Relatorio:'
    end
    object edt_qtdcol: TEdit
      Left = 155
      Top = 19
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = '3'
      OnChange = edt_espacoColChange
      OnExit = edt_qtdcolExit
    end
    object edt_espacoCol: TEdit
      Left = 358
      Top = 18
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = '1'
      OnChange = edt_espacoColChange
      OnExit = edt_espacoColExit
    end
    object edt_altEtiq: TEdit
      Left = 155
      Top = 37
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '84'
      OnChange = edt_espacoColChange
      OnExit = edt_altEtiqExit
    end
    object edt_altcxtexto: TEdit
      Left = 155
      Top = 55
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = '18'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_tamfonte: TEdit
      Left = 359
      Top = 55
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = '-8'
      OnChange = edt_espacoColChange
      OnExit = edt_tamfonteExit
    end
    object edt_margemtop: TEdit
      Left = 155
      Top = 73
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = '10'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_margemrodape: TEdit
      Left = 359
      Top = 73
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = '10'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_margemDireita: TEdit
      Left = 155
      Top = 91
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = '10'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_margemEsquerda: TEdit
      Left = 359
      Top = 91
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      Text = '10'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_Altura_Rel: TEdit
      Left = 155
      Top = 109
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Text = '1123'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
    object edt_Largura_Rel: TEdit
      Left = 359
      Top = 109
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      Text = '794'
      OnChange = edt_espacoColChange
      OnExit = edt_altcxtextoExit
    end
  end
  object bbImprimir: TBitBtn
    Left = 17
    Top = 485
    Width = 205
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
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
  object Qr_Bar: TQuery
    OnCalcFields = Qr_BarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRAZAO,CDENOM,CLOG,CBAIRRO,'
      'CCIDADE,CUF,CCEP,CFONECOM,CFAX,'
      'CFONERES,CCELULAR,CCNPJ'
      'from CADCLI')
    Left = 656
    Top = 8
    object Qr_BarCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_BarCDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_BarCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_BarCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_BarCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_BarCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_BarCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_BarCFONECOM: TStringField
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Qr_BarCFAX: TStringField
      FieldName = 'CFAX'
      Origin = 'SG_ASSOC.CADCLI.CFAX'
      Size = 16
    end
    object Qr_BarCFONERES: TStringField
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Qr_BarCCELULAR: TStringField
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Qr_BarCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_Barcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Size = 40
      Calculated = True
    end
    object Qr_Barcep_bairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'cep_bairro'
      Size = 100
      Calculated = True
    end
    object Qr_Barcidade_uf: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade_uf'
      Size = 100
      Calculated = True
    end
  end
  object Src_Bar: TDataSource
    DataSet = Qr_Bar
    Left = 616
    Top = 8
  end
end
