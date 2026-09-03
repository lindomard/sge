object Frm_CABC: TFrm_CABC
  Left = 2
  Top = 2
  Width = 791
  Height = 551
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ABC de Clientes'
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
  object Label3: TLabel
    Left = 12
    Top = 311
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label4: TLabel
    Left = 160
    Top = 309
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 369
    Top = 313
    Width = 67
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object Label6: TLabel
    Left = 336
    Top = 333
    Width = 100
    Height = 13
    Caption = 'Ordem de Impress'#227'o:'
  end
  object Label7: TLabel
    Left = 370
    Top = 355
    Width = 67
    Height = 13
    Caption = 'Separado por:'
  end
  object lbl_prodserv: TLabel
    Left = 408
    Top = 377
    Width = 30
    Height = 13
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 783
    Height = 302
    ActivePage = tsTipoPed
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 293
        Align = alTop
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 17
          Width = 100
          Height = 13
          Caption = 'C'#243'digo do Vendedor:'
        end
        object Label5: TLabel
          Left = 20
          Top = 56
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
        end
        object Label13: TLabel
          Left = 544
          Top = 26
          Width = 159
          Height = 13
          Alignment = taCenter
          Caption = 'Documento Receita Federal'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object CODVEN: TEdit
          Left = 108
          Top = 14
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Vendedor ou'#13#10'digite o nome p/ Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object OMITIR_VEN: TCheckBox
          Left = 108
          Top = 36
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnMouseMove = OMITIR_VENMouseMove
        end
        object lbx_codven: TListBox
          Left = 166
          Top = 14
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codvenKeyDown
        end
        object CODCLI: TEdit
          Left = 108
          Top = 55
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object OMITIR_CLI: TCheckBox
          Left = 108
          Top = 77
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnMouseMove = OMITIR_CLIMouseMove
        end
        object lbx_codcli: TListBox
          Left = 166
          Top = 55
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codcliKeyDown
        end
        object StaticText7: TStaticText
          Left = 7
          Top = 96
          Width = 102
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rede de Clientes:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
        end
        object CODRED: TEdit
          Left = 108
          Top = 97
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = CODREDExit
          OnKeyPress = CODREDKeyPress
        end
        object lbx_codred: TListBox
          Left = 166
          Top = 96
          Width = 350
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
        object OMITIR_RED: TCheckBox
          Left = 108
          Top = 118
          Width = 51
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object StaticText2: TStaticText
          Left = 3
          Top = 134
          Width = 107
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grupo de Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object CODGFOR: TEdit
          Left = 108
          Top = 134
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnExit = CODGFORExit
          OnKeyPress = CODGFORKeyPress
        end
        object lbx_codgfor: TListBox
          Left = 166
          Top = 134
          Width = 350
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnKeyDown = lbx_codgforKeyDown
        end
        object OMITIR_GFOR: TCheckBox
          Left = 108
          Top = 153
          Width = 51
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object StaticText10: TStaticText
          Left = 8
          Top = 172
          Width = 97
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object CODFOR: TEdit
          Left = 108
          Top = 172
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 15
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 166
          Top = 172
          Width = 350
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 108
          Top = 193
          Width = 51
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object StaticText11: TStaticText
          Left = 9
          Top = 211
          Width = 95
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Origem do Pedido:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 18
        end
        object CODORI_PED: TEdit
          Left = 108
          Top = 210
          Width = 59
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 19
          OnExit = CODORI_PEDExit
          OnKeyPress = CODORI_PEDKeyPress
        end
        object lbx_oriped: TListBox
          Left = 166
          Top = 210
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnKeyDown = lbx_oripedKeyDown
        end
        object OMITIR_ORIPED: TCheckBox
          Left = 108
          Top = 235
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
        end
        object RG_IE: TRadioGroup
          Left = 24
          Top = 254
          Width = 401
          Height = 39
          Caption = 'Sobre Inscri'#231#227'o Estadual'
          Columns = 3
          ItemIndex = 2
          Items.Strings = (
            'Com Inscri'#231#227'o '
            'Sem Inscri'#231#227'o '
            'Todos')
          TabOrder = 22
        end
        object CLBDocRecFederal: TCheckListBox
          Left = 547
          Top = 46
          Width = 162
          Height = 69
          Color = 16776176
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            'CPF'
            'CNPJ'
            'Sem CPF e CNPJ'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 23
          OnClick = CLBDocRecFederalClick
        end
      end
    end
    object tsTipoPed: TTabSheet
      Caption = 'Tipos de Pedidos'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 18
        Width = 750
        Height = 168
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
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
        OnExit = RG_TIPOPEDExit
      end
    end
    object tsOutros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 281
        Align = alTop
        Caption = 'Filtrar:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label10: TLabel
          Left = 61
          Top = 136
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label11: TLabel
          Left = 43
          Top = 15
          Width = 53
          Height = 13
          Caption = 'Supervisor:'
        end
        object Label12: TLabel
          Left = 76
          Top = 76
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object CODLOC: TEdit
          Left = 99
          Top = 132
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 172
          Top = 132
          Width = 559
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codlocKeyDown
        end
        object OMITIR_LOC: TCheckBox
          Left = 100
          Top = 155
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object CODSUP: TEdit
          Left = 99
          Top = 10
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODSUPExit
          OnKeyPress = CODSUPKeyPress
        end
        object lbx_codsup: TListBox
          Left = 172
          Top = 10
          Width = 559
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codsupKeyDown
        end
        object OMITIR_SUP: TCheckBox
          Left = 99
          Top = 38
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODUF: TEdit
          Left = 99
          Top = 72
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          CharCase = ecUpperCase
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object lbx_coduf: TListBox
          Left = 172
          Top = 71
          Width = 559
          Height = 62
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 99
          Top = 100
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object StaticText4: TStaticText
          Left = 33
          Top = 197
          Width = 63
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
          TabOrder = 9
        end
        object EDT_CODREG: TEdit
          Left = 99
          Top = 193
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = EDT_CODREGExit
          OnKeyPress = EDT_CODREGKeyPress
        end
        object lbx_CODREG: TListBox
          Left = 172
          Top = 193
          Width = 559
          Height = 43
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_CODREGKeyDown
        end
        object OMITIR_CODREG: TCheckBox
          Left = 119
          Top = 220
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 72
    Top = 307
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 176
    Top = 307
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CB_EmiDoc: TCheckBox
    Left = 229
    Top = 415
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 9
    OnClick = CB_EmiDocClick
  end
  object mais_dados: TCheckBox
    Left = 13
    Top = 416
    Width = 207
    Height = 17
    Caption = 'Imprimir Mais Dados do Cliente'
    TabOrder = 5
  end
  object bbImprimir: TBitBtn
    Left = 13
    Top = 475
    Width = 148
    Height = 35
    Hint = 'Imprimir'
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
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
    Left = 623
    Top = 475
    Width = 148
    Height = 35
    Hint = 'Sair'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
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
  object CB_TIPOPESQ: TComboBox
    Left = 443
    Top = 307
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 10
    Text = 'Data da Nota'
    OnExit = CB_TIPOPESQExit
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_ORDEM: TComboBox
    Left = 443
    Top = 330
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 11
    Text = 'Nome Cliente'
    OnExit = CB_TIPOPESQExit
    Items.Strings = (
      'Nome Cliente'
      'C'#243'digo Cliente'
      'Valor Crescente'
      'Valor Decrescente')
  end
  object CB_FORCAR: TCheckBox
    Left = 13
    Top = 433
    Width = 183
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 6
  end
  object CB_ICMSRET: TCheckBox
    Left = 230
    Top = 431
    Width = 165
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 7
  end
  object CB_SEPARADO: TComboBox
    Left = 444
    Top = 352
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 10
    Sorted = True
    TabOrder = 12
    Text = 'Sem Separar'
    Items.Strings = (
      'Bairro'
      'Cidade'
      'Cliente'
      'Estado'
      'Fornecedor'
      'Grupo de Produtos'
      'Marca'
      'Mes/Ano'
      'Ramo/Sub-Grupo'
      'Rede de Cliente'
      'Sem Separar'
      'Tipo de Controle'
      'Vendedor')
  end
  object CB_AVANCPAG: TCheckBox
    Left = 627
    Top = 351
    Width = 101
    Height = 17
    Caption = 'Avan'#231'ar P'#225'gina'
    TabOrder = 14
  end
  object CB_REDDESCFIN: TCheckBox
    Left = 13
    Top = 453
    Width = 295
    Height = 17
    Caption = 'Reduzir Descontos Financeiros Pr'#233'-Fixados no Pedido'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = CB_EmiDocClick
  end
  object CB_SEMMOV: TCheckBox
    Left = 555
    Top = 375
    Width = 194
    Height = 17
    Caption = 'Emitir sem Movimento'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object CB_COMPARAR: TCheckBox
    Left = 15
    Top = 327
    Width = 207
    Height = 17
    Caption = 'Comparar Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = CB_COMPARARClick
  end
  object GB_COMPARADO: TGroupBox
    Left = 12
    Top = 349
    Width = 265
    Height = 62
    Caption = 'Per'#237'odo a Ser Comparado:'
    Color = 8454016
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    object Label8: TLabel
      Left = 12
      Top = 18
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label9: TLabel
      Left = 160
      Top = 22
      Width = 6
      Height = 13
      Caption = #224
    end
    object MDT1_COMP: TMaskEdit
      Left = 72
      Top = 16
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1_COMPExit
    end
    object MDT2_COMP: TMaskEdit
      Left = 176
      Top = 16
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2_COMPExit
    end
    object CB_COMP_QTD: TCheckBox
      Left = 15
      Top = 41
      Width = 207
      Height = 17
      Caption = 'Comparar Quantidades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CB_COMPARARClick
    end
  end
  object CB_PRODSERV: TComboBox
    Left = 445
    Top = 373
    Width = 107
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 17
    Text = 'Produtos'
    Visible = False
    Items.Strings = (
      'Produtos'
      'Servi'#231'os'
      'Todos')
  end
  object bb_exportar: TBitBtn
    Left = 298
    Top = 475
    Width = 148
    Height = 36
    Caption = '&Exportar Relatorio'
    TabOrder = 18
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
  object GroupBox3: TGroupBox
    Left = 444
    Top = 397
    Width = 321
    Height = 47
    Caption = 'Clientes Incluso:'
    TabOrder = 19
    object Label14: TLabel
      Left = 8
      Top = 16
      Width = 12
      Height = 13
      Caption = 'de'
    end
    object Label15: TLabel
      Left = 152
      Top = 19
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object edt_datinc_ini: TDateEdit
      Left = 28
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datinc_fin: TDateEdit
      Left = 181
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object Qr_Ven: TQuery
    OnCalcFields = Qr_VenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select CRAZAO AS NOME ,P1CODCLI AS CODIGO, sum(p1totall) as tota' +
        'l,'
      'sum(p1semcom) as total_qtd'
      ', sum(p1totall) as total_vlr_segper'
      ', sum(p1semcom) as total_qtd_segper'
      ', max(CLOG) as CLOG'
      ', max(CLOG) as GRUPO'
      ', max(CCIDADE) as CCIDADE'
      ', max(CUF) as CCUF'
      ', max(CBAIRRO) as CBAIRRO'
      ', max(CCEP)  as CCEP'
      ', max(CFONE01) as CFONE01'
      ', max(CFONE02) as CFONE02'
      ', max(CFONE03) as CFONE03'
      ', max(CFONERES) as CFONERES'
      ', max(CFONECOM) as CFONECOM'
      ', max(CDTUCPR) as DTULTCPR'
      ', max(P1TOTALL) as VALORUCPR'
      'from CADP01,CADCLI where'
      'P1CODEMP=0 and'
      'CCODCLI=P1CODCLI'
      'group by CRAZAO,P1CODCLI')
    Left = 456
    Top = 24
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_VenCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_VenTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_VenTOTAL_QTD: TFloatField
      FieldName = 'TOTAL_QTD'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_VenCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_VenCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_VenCCUF: TStringField
      FieldName = 'CCUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_VenCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_VenCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_VenCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_VenGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_VenCFONE02: TStringField
      FieldName = 'CFONE02'
      Origin = 'SG_ASSOC.CADCLI.CFONE02'
      Size = 16
    end
    object Qr_VenCFONE03: TStringField
      FieldName = 'CFONE03'
      Origin = 'SG_ASSOC.CADCLI.CFONE03'
      Size = 16
    end
    object Qr_VenCFONERES: TStringField
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Qr_VenCFONECOM: TStringField
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Qr_VenDTULTCPR: TDateTimeField
      FieldName = 'DTULTCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTUCPR'
    end
    object Qr_VenVALORUCPR: TFloatField
      FieldName = 'VALORUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Vendata_ucpr: TDateField
      FieldKind = fkCalculated
      FieldName = 'data_ucpr'
      Calculated = True
    end
    object Qr_Venvalor_ucpr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_ucpr'
      Calculated = True
    end
    object Qr_VenTOTAL_VLR_SEGPER: TFloatField
      FieldName = 'TOTAL_VLR_SEGPER'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_VenTOTAL_QTD_SEGPER: TFloatField
      FieldName = 'TOTAL_QTD_SEGPER'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_VenCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 254
    end
  end
  object Src_Ven: TDataSource
    DataSet = Qr_Ven
    Left = 511
    Top = 44
  end
end
