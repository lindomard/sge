object Frm_RPed: TFrm_RPed
  Left = 470
  Top = 142
  Width = 702
  Height = 535
  Caption = 'Relatorio de Vendas Analitico por Convenio'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 504
    Align = alClient
    TabOrder = 0
    object Label6: TLabel
      Left = 45
      Top = 372
      Width = 79
      Height = 13
      Caption = 'Observa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 43
      Top = 331
      Width = 81
      Height = 13
      Caption = 'Separado por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbSalvarPadrao: TSpeedButton
      Left = 314
      Top = 410
      Width = 148
      Height = 36
      Cursor = crHandPoint
      Caption = '&Salvar Padr'#227'o'
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
    object Label10: TLabel
      Left = 5
      Top = 352
      Width = 120
      Height = 13
      Caption = 'Ordem de Impress'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbImprimir: TBitBtn
      Left = 5
      Top = 410
      Width = 148
      Height = 36
      Cursor = crHandPoint
      Caption = '&Imprimir'
      TabOrder = 3
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
      Left = 465
      Top = 410
      Width = 148
      Height = 36
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 4
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
    object OBS: TEdit
      Left = 126
      Top = 370
      Width = 308
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object RG_FILTRO: TRadioGroup
      Left = 440
      Top = 323
      Width = 93
      Height = 55
      Caption = 'Listar Pedidos:'
      Ctl3D = False
      ItemIndex = 3
      Items.Strings = (
        '&Pendentes'
        '&Emitidos NFe'
        'Emitidos NFCe'
        '&Todos')
      ParentCtl3D = False
      TabOrder = 2
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 692
      Height = 320
      ActivePage = tsFiltros
      Align = alTop
      TabOrder = 0
      object tsFiltros: TTabSheet
        Caption = 'Filtros'
        object Label1: TLabel
          Left = 23
          Top = 1
          Width = 66
          Height = 13
          Caption = 'Periodo de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 199
          Top = 3
          Width = 8
          Height = 13
          Caption = #224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 20
          Width = 82
          Height = 13
          Caption = 'Pedido Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 167
          Top = 19
          Width = 75
          Height = 13
          Caption = 'Pedido Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 326
          Top = 4
          Width = 67
          Height = 13
          Caption = 'Pesquisar por:'
        end
        object Label9: TLabel
          Left = 7
          Top = 241
          Width = 260
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo do Relatorio'
          Color = 2978303
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 72
          Top = 114
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label11: TLabel
          Left = 55
          Top = 150
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object MDT1: TMaskEdit
          Left = 95
          Top = 0
          Width = 66
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 248
          Top = 0
          Width = 66
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object MPEDI: TEdit
          Left = 95
          Top = 18
          Width = 66
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = MPEDIExit
        end
        object MPEDF: TEdit
          Left = 248
          Top = 18
          Width = 66
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnExit = MPEDFExit
        end
        object CB_TIPOPESQ: TComboBox
          Left = 402
          Top = 1
          Width = 99
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 2
          Text = 'Data da Nota'
          OnExit = CB_TIPOPESQExit
          Items.Strings = (
            'Data da Nota'
            'Data do Pedido')
        end
        object StaticText4: TStaticText
          Left = 21
          Top = 39
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cliente:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object CODCLI: TEdit
          Left = 95
          Top = 36
          Width = 66
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 160
          Top = 36
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 100
          Top = 58
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object StaticText5: TStaticText
          Left = -7
          Top = 77
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
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
        object CODVEN: TEdit
          Left = 95
          Top = 74
          Width = 66
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 160
          Top = 74
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 100
          Top = 96
          Width = 48
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object cb_canhoto: TCheckBox
          Left = 7
          Top = 223
          Width = 162
          Height = 17
          Caption = 'Somente com canhotos'
          TabOrder = 13
        end
        object CB_TIPOREL: TComboBox
          Left = 7
          Top = 256
          Width = 261
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          Text = 'Normal Sem Comparar'
          OnChange = CB_TIPORELChange
          OnDropDown = CB_TIPORELDropDown
          OnSelect = CB_TIPORELSelect
          Items.Strings = (
            'Normal Sem Comparar'
            'Comparar Preco Tabela em Relacao ao Preco de Venda'
            
              'Comparar Preco Custo(Hora do Pedido) em Relacao ao Preco de Vend' +
              'a'
            
              'Comparar Preco de Compra(Hora do Pedido) em Relacao ao Preco Ven' +
              'da'
            
              'Comparar Preco Custo(Atual Cadastro) em Relacao ao Preco de Vend' +
              'a'
            
              'Comparar Preco de Compra(Atual Cadastro) em Relacao ao Preco Ven' +
              'da'
            
              'Comparar Preco Medio de Compra (Atual Cadastro) em Relacao ao Pr' +
              'eco de Venda')
        end
        object CB_PAGOS: TCheckBox
          Left = 7
          Top = 278
          Width = 221
          Height = 17
          Caption = 'Filtrar Somente em Abertos(N'#227'o Pagos)'
          TabOrder = 15
          OnClick = CB_PAGOSClick
        end
        object CB_CONSIG: TCheckBox
          Left = 286
          Top = 191
          Width = 176
          Height = 17
          Caption = 'Nao Calcular Consignado'
          Checked = True
          State = cbChecked
          TabOrder = 16
        end
        object CB_CONSUMIDOR: TCheckBox
          Left = 286
          Top = 205
          Width = 230
          Height = 17
          Hint = 
            'N'#227'o Emitir as Bordas Para'#13#10'Impress'#227'o mais r'#225'pida em'#13#10'impressora ' +
            'matricial'
          Caption = 'Se Consumidor Procurar Nome'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object CB_ORC: TCheckBox
          Left = 7
          Top = 206
          Width = 180
          Height = 17
          Caption = 'Listar Tamb'#233'm os Or'#231'amentos'
          TabOrder = 18
        end
        object cb_obsped: TCheckBox
          Left = 286
          Top = 219
          Width = 230
          Height = 17
          Hint = 'Imprimir campo observa'#231#227'o do Pedido Linha 01'
          Caption = 'Imprimir Observa'#231#227'o do Pedido'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
        end
        object CB_INIBIR_DEVOL: TCheckBox
          Left = 286
          Top = 232
          Width = 328
          Height = 17
          Hint = 
            'Se Marcado os pedidos que foram devolvido as'#13#10'mercadorias n'#227'o ir' +
            'am aparecer no relatorio'
          Caption = 'Inibir os Pedidos que Possui Devolu'#231#227'o(mesmo que seja Parcial)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
        end
        object CODUF: TEdit
          Left = 95
          Top = 112
          Width = 66
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object lbx_coduf: TListBox
          Left = 160
          Top = 112
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
          OnKeyDown = lbx_codufKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 95
          Top = 131
          Width = 57
          Height = 20
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
        end
        object CODLOC: TEdit
          Left = 95
          Top = 149
          Width = 66
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 24
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 160
          Top = 150
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          OnKeyDown = lbx_codlocKeyDown
        end
        object OMITIR_LOC: TCheckBox
          Left = 96
          Top = 169
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
        end
        object cb_com_tra: TCheckBox
          Left = 7
          Top = 190
          Width = 180
          Height = 17
          Caption = 'Somente com Transportadora'
          TabOrder = 27
        end
        object CB_SOMERC: TCheckBox
          Left = 286
          Top = 246
          Width = 362
          Height = 17
          Hint = 
            'No corpo do Relatorio Imprimir somente valor das mercadorias/ser' +
            'vicos'
          Caption = 
            'No corpo do Relatorio Imprimir somente valor das mercadorias/ser' +
            'vicos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 28
        end
        object CB_LISTARPEDORIEMP: TCheckBox
          Left = 287
          Top = 261
          Width = 362
          Height = 17
          Hint = 
            'No corpo do Relatorio Imprimir somente valor das mercadorias/ser' +
            'vicos'
          Caption = 
            'Listar dos Pedidos de Origem no Caso de Faturamento de Emprestim' +
            'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 29
        end
        object cb_vped_v_adic: TCheckBox
          Left = 288
          Top = 278
          Width = 282
          Height = 17
          Caption = 'Substituir Valor do Pedido Pelo Valor Adicional'
          TabOrder = 30
        end
      end
      object tsOutrosFiltros: TTabSheet
        Caption = 'Outros Filtros'
        ImageIndex = 2
        object Label3: TLabel
          Left = 29
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Conv'#234'nio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 38
          Top = 197
          Width = 59
          Height = 13
          Caption = 'Usuario/Cx.:'
        end
        object StaticText1: TStaticText
          Left = -3
          Top = 48
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Assessor:'
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
        object CODASSE: TEdit
          Left = 99
          Top = 44
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CODASSEExit
          OnKeyPress = CODASSEKeyPress
        end
        object lbx_codass: TListBox
          Left = 160
          Top = 45
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codassKeyDown
        end
        object OMITIR_ASS: TCheckBox
          Left = 104
          Top = 67
          Width = 48
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object StaticText2: TStaticText
          Left = -3
          Top = 85
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Banco/Caixa:'
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
        object OMITIR_BCO: TCheckBox
          Left = 104
          Top = 104
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object lbx_codbco: TListBox
          Left = 160
          Top = 83
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
          OnKeyDown = lbx_codbcoKeyDown
        end
        object CODBCO: TEdit
          Left = 99
          Top = 83
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelKind = bkSoft
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object CODCON: TEdit
          Left = 95
          Top = 7
          Width = 66
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object lbx_codcv: TListBox
          Left = 160
          Top = 7
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyDown = lbx_codcvKeyDown
        end
        object OMITIR_CON: TCheckBox
          Left = 104
          Top = 27
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object StaticText3: TStaticText
          Left = -2
          Top = 122
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Regi'#227'o:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object edt_codreg: TEdit
          Left = 99
          Top = 120
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelKind = bkSoft
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          OnExit = edt_codregExit
          OnKeyPress = edt_codregKeyPress
        end
        object lbx_codreg: TListBox
          Left = 160
          Top = 120
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnKeyDown = lbx_codregKeyDown
        end
        object OMITIR_REG: TCheckBox
          Left = 104
          Top = 141
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
        object StaticText6: TStaticText
          Left = -2
          Top = 160
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Televendas:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object CODTLV: TEdit
          Left = 99
          Top = 158
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelKind = bkSoft
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          OnExit = CODTLVExit
          OnKeyPress = CODTLVKeyPress
        end
        object lbx_codtlv: TListBox
          Left = 160
          Top = 158
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnKeyDown = lbx_codtlvKeyDown
        end
        object OMITIR_TLV: TCheckBox
          Left = 104
          Top = 179
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object edt_codusr_cx: TEdit
          Left = 100
          Top = 196
          Width = 61
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnExit = edt_codusr_cxExit
          OnKeyPress = edt_codusr_cxKeyPress
        end
        object lbx_codusr_cx: TListBox
          Left = 160
          Top = 196
          Width = 345
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnKeyDown = lbx_codusr_cxKeyDown
        end
        object OMITIR_USR_CX: TCheckBox
          Left = 101
          Top = 215
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
        end
        object RG_ANALISE: TRadioGroup
          Left = 510
          Top = 2
          Width = 131
          Height = 104
          Caption = 'Projetos em Analises'
          Ctl3D = False
          ItemIndex = 2
          Items.Strings = (
            '&Somente em Analise'
            '&Inibir em Analise'
            '&Todos')
          ParentCtl3D = False
          TabOrder = 22
        end
        object StaticText7: TStaticText
          Left = -1
          Top = 234
          Width = 98
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Transportadora:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object edt_codtra: TEdit
          Left = 100
          Top = 232
          Width = 63
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelKind = bkSoft
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 24
          OnExit = edt_codtraExit
          OnKeyPress = edt_codtraKeyPress
        end
        object lbx_codtra: TListBox
          Left = 161
          Top = 232
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          OnKeyDown = lbx_codtraKeyDown
        end
        object OMITIR_TRA: TCheckBox
          Left = 105
          Top = 253
          Width = 53
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
        end
      end
      object tsPedidos: TTabSheet
        Caption = 'Pedidos'
        ImageIndex = 2
        object RG_TIPOPED: TCheckListBox
          Left = 0
          Top = 0
          Width = 684
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
        end
      end
      object Ts_Rel_Layser: TTabSheet
        Caption = 'Modelo Laser'
        ImageIndex = 3
        TabVisible = False
        object RLReport1: TRLReport
          Left = 16
          Top = -24
          Width = 794
          Height = 1123
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataSource = Src_Ped
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ShowProgress = False
          object RLBand1: TRLBand
            Left = 39
            Top = 39
            Width = 716
            Height = 128
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object rlb_chave: TRLLabel
              Left = 82
              Top = 111
              Width = 84
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CHAVE'
            end
            object rlb_cliente: TRLLabel
              Left = 165
              Top = 111
              Width = 326
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CLIENTE'
            end
            object rlb_vliquido: TRLLabel
              Left = 605
              Top = 111
              Width = 112
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'VLR. LIQUIDO'
            end
            object rlb_data: TRLLabel
              Left = 1
              Top = 111
              Width = 82
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'DATA'
            end
            object RLB_vbruto: TRLLabel
              Left = 490
              Top = 111
              Width = 116
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'VLR. BRUTO'
            end
            object RLLabel4: TRLLabel
              Left = 1
              Top = 1
              Width = 81
              Height = 16
              Caption = 'EMPRESA..:'
            end
            object RLLabel5: TRLLabel
              Left = 0
              Top = 17
              Width = 89
              Height = 16
              Caption = 'ENDERE'#199'O..:'
            end
            object RLLabel6: TRLLabel
              Left = 0
              Top = 33
              Width = 84
              Height = 16
              Caption = 'TELEFONE..:'
            end
            object RLLabel7: TRLLabel
              Left = 179
              Top = 57
              Width = 338
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'RELAT'#211'RIO DE PEDIDO DE VENDA / OR'#199'AMENTOS'
            end
            object RLSystemInfo2: TRLSystemInfo
              Left = 659
              Top = 1
              Width = 25
              Height = 16
              AutoSize = False
              Info = itPageNumber
            end
            object RLSystemInfo3: TRLSystemInfo
              Left = 692
              Top = 1
              Width = 25
              Height = 16
              AutoSize = False
              Info = itLastPageNumber
            end
            object RLLabel8: TRLLabel
              Left = 684
              Top = 1
              Width = 8
              Height = 16
              AutoSize = False
              Caption = '/'
            end
            object RLDBText1: TRLDBText
              Left = 82
              Top = 1
              Width = 81
              Height = 16
              DataField = 'RAZAO'
              DataSource = DM1.Src_Emp
            end
            object RLDBText2: TRLDBText
              Left = 89
              Top = 17
              Width = 36
              Height = 16
              DataField = 'ender'
              DataSource = DM1.Src_Emp
            end
            object RLDBText3: TRLDBText
              Left = 84
              Top = 33
              Width = 126
              Height = 16
              DataField = 'FONE'
              DataSource = DM1.Src_Emp
            end
            object rl_periodo: TRLLabel
              Left = 179
              Top = 81
              Width = 338
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'DE 01/01/1900 '#224' 31/01/1900'
            end
          end
          object RLBand2: TRLBand
            Left = 39
            Top = 167
            Width = 716
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            AfterPrint = RLBand2AfterPrint
            object RLD_VLIQUIDO: TRLDBText
              Left = 605
              Top = 0
              Width = 112
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P1TOTALL'
              DataSource = Src_Ped
              Holder = rlb_vliquido
            end
            object RLD_CHAVE: TRLDBText
              Left = 82
              Top = 0
              Width = 84
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1CHAVE'
              DataSource = Src_Ped
              Holder = rlb_chave
            end
            object RLD_CLIENTE: TRLDBText
              Left = 165
              Top = 0
              Width = 326
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CODNOMCLI'
              DataSource = Src_Ped
              Holder = rlb_cliente
            end
            object RLD_DATA: TRLDBText
              Left = 1
              Top = 0
              Width = 82
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1DATAP'
              DataSource = Src_Ped
              Holder = rlb_data
            end
            object RLD_VBRUTO: TRLDBText
              Left = 490
              Top = 0
              Width = 116
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1TOTALB'
              DataSource = Src_Ped
              Holder = RLB_vbruto
            end
          end
          object RLBand3: TRLBand
            Left = 39
            Top = 183
            Width = 716
            Height = 34
            BandType = btFooter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            BeforePrint = RLBand3BeforePrint
            object RLLabel1: TRLLabel
              Left = 446
              Top = 1
              Width = 121
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TOTAL BRUTO..:'
            end
            object RLLabel3: TRLLabel
              Left = 446
              Top = 17
              Width = 121
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'TOTAL LIQUIDO..:'
            end
            object RLTOTALB: TRLLabel
              Left = 567
              Top = 1
              Width = 149
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
            end
            object RLTOTALL: TRLLabel
              Left = 567
              Top = 17
              Width = 149
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
            end
          end
          object RLBand4: TRLBand
            Left = 39
            Top = 217
            Width = 716
            Height = 21
            BandType = btFooter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = 16776176
            Degrade.OppositeColor = 10930928
            ParentColor = False
            Transparent = False
            BeforePrint = RLBand4BeforePrint
            object lbl_patrocinio: TRLLabel
              Left = 4
              Top = 1
              Width = 590
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object RLSystemInfo4: TRLSystemInfo
              Left = 593
              Top = 1
              Width = 63
              Height = 19
              AutoSize = False
              Transparent = False
            end
            object RLSystemInfo5: TRLSystemInfo
              Left = 656
              Top = 1
              Width = 61
              Height = 19
              AutoSize = False
              Info = itHour
              Transparent = False
            end
          end
        end
      end
      object tsMaisFiltros: TTabSheet
        Caption = 'Mais Filtros'
        ImageIndex = 4
        object StaticText8: TStaticText
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
          TabOrder = 2
          OnKeyDown = lbx_codramKeyDown
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
          TabOrder = 3
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
      end
    end
    object bb_exportar: TBitBtn
      Left = 159
      Top = 410
      Width = 148
      Height = 36
      Caption = '&Exportar Relatorio'
      TabOrder = 5
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
    object rg_modelo: TRadioGroup
      Left = 536
      Top = 326
      Width = 80
      Height = 51
      Caption = 'Modelo'
      ItemIndex = 1
      Items.Strings = (
        'Laser '
        'Matricial')
      TabOrder = 6
    end
    object cb_separado: TComboBox
      Left = 126
      Top = 328
      Width = 311
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 5
      TabOrder = 7
      Text = 'Sem Separar'
      Items.Strings = (
        'Assessor'
        'Cidade'
        'Cliente'
        'Convenio'
        'Estado'
        'Sem Separar'
        'Vendedor'
        'Origem'
        'Transportadora')
    end
    object CB_ORDEM: TComboBox
      Left = 126
      Top = 349
      Width = 311
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      Sorted = True
      TabOrder = 8
      Text = 'Chave do Pedido'
      Items.Strings = (
        'Chave do Pedido'
        'Data do Pedido'
        'Nome do Cliente'
        'Valor Crescente'
        'Valor Decrescente')
    end
    object CB_EMPFAT: TCheckBox
      Left = 126
      Top = 388
      Width = 267
      Height = 17
      Hint = 
        'Se Marcado sera listado apenas os pedidos '#13#10'que eram emprestimos' +
        ' e foram faturados'
      Caption = 'Listar Somente Emprestimos Ja Faturados'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
  end
  object Qr_Ped: TQuery
    OnCalcFields = Qr_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,'
      '          P1CODCLI,P1TOTALB,P1TOTALL,P1VALFRE,'
      '         P1ACRECONV,P1ACREGER,'
      '         P1DATAP,P1DATDOC,CVRAZAO,P1CODCV,'
      '         P1ICMSR,P1IPIINA,P1IPIPOS,P1IPINEG,'
      ' P1NAUT,CRAZAO,CCIDADE,CUF,'
      ' P1TOTALL AS TOTAPAG,'
      ' P1TOTALL AS TOTPCOTAB,'
      ' P1NAUT AS NOMGRU'
      ' ,P1OBS1 AS OBS01'
      ' ,P1TIPO_ENTSAI'
      ' from CADP01, CADCLI, CADCV'
      ' Where P1CODEMP=1'
      ' and CVCODEMP=P1CODEMP'
      ' and CVCODCV =P1CODCON'
      ' and CCODEMP=P1CODEMP'
      ' and CCODCLI=P1CODCLI '
      ' and P1CHAVE IS null')
    Left = 326
    Top = 164
    object Qr_PedP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_PedP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedP1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_PedP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedP1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_PedP1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_PedP1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_PedP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedP1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_PedP1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_PedCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_PedCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_PedCVRAZAO: TStringField
      FieldName = 'CVRAZAO'
      Origin = 'SG_ASSOC.CADCV.CVRAZAO'
      Size = 30
    end
    object Qr_PedTOTAPAG: TFloatField
      FieldName = 'TOTAPAG'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedP1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_PedTOTPCOTAB: TFloatField
      FieldName = 'TOTPCOTAB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_PedNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_PedP1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_PedP1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_PedP1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Qr_PedP1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Qr_PedP1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Qr_PedCODNOMCLI: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODNOMCLI'
      Size = 120
      Calculated = True
    end
    object Qr_PedOBS01: TMemoField
      FieldName = 'OBS01'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_PedP1VDESPACESRAT: TFloatField
      FieldName = 'P1VDESPACESRAT'
    end
    object Qr_PedCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 254
    end
  end
  object Qr_Inibir_Devol: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 437
    Top = 145
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 389
    Top = 137
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 533
    Top = 65
  end
end
