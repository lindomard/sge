object Frm_DM_Importar: TFrm_DM_Importar
  Left = 3
  Top = 54
  Width = 741
  Height = 467
  Caption = 'Importar os Dados de Um Dispositivo Movel'
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 725
    Height = 159
    Align = alTop
    Caption = 'Cabe'#231'alho do arquivo:'
    TabOrder = 0
    object lbl_codven: TLabel
      Left = 10
      Top = 18
      Width = 103
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 36
      Width = 103
      Height = 13
      Caption = 'Lote de Remessa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 114
      Top = 52
      Width = 330
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ao Receber Pedidos Faturar Como'
      Color = 16766421
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sb_SalvarPadrao: TSpeedButton
      Left = 575
      Top = 130
      Width = 150
      Height = 25
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 233
      Top = 36
      Width = 141
      Height = 13
      Caption = 'Origem das Informa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 115
      Top = 94
      Width = 301
      Height = 13
      Caption = 'Se o Pedido for Brinde Faturar c/o Plano de Vendas:'
    end
    object CODVEN: TEdit
      Left = 114
      Top = 15
      Width = 101
      Height = 19
      TabStop = False
      Color = 16756952
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object NOMVEN: TEdit
      Left = 214
      Top = 15
      Width = 450
      Height = 19
      TabStop = False
      Color = 16756952
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object NUMLOT: TEdit
      Left = 114
      Top = 33
      Width = 101
      Height = 19
      TabStop = False
      Color = 16756952
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object CB_BUSCA: TCheckBox
      Left = 12
      Top = 136
      Width = 193
      Height = 17
      Caption = 'Buscar automaticamente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = CB_BUSCAClick
    end
    object bbIniciar: TBitBtn
      Left = 226
      Top = 129
      Width = 150
      Height = 25
      Caption = '&Iniciar as Buscas'
      Enabled = False
      TabOrder = 10
      OnClick = bbIniciarClick
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
    end
    object TIPO: TEdit
      Left = 800
      Top = 15
      Width = 30
      Height = 19
      Color = 16756952
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object CB_TIPO: TComboBox
      Left = 114
      Top = 66
      Width = 329
      Height = 21
      BevelKind = bkSoft
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 2
      ParentCtl3D = False
      Sorted = True
      TabOrder = 4
      Text = 'Or'#231'amento'
      Items.Strings = (
        'Emprestimo de Mercadorias'
        'Nota Complementar'
        'Or'#231'amento'
        'Simples Remessa'
        'Venda Normal')
    end
    object ORIGEM_INFO: TEdit
      Left = 391
      Top = 33
      Width = 94
      Height = 19
      TabStop = False
      Color = 16756952
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object CB_TABPV: TComboBox
      Left = 116
      Top = 108
      Width = 42
      Height = 21
      BevelKind = bkSoft
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
      Text = 'AP'
      OnExit = CB_TABPVExit
      Items.Strings = (
        ''
        'AV'
        'AP'
        'PP')
    end
    object CODPV: TEdit
      Left = 158
      Top = 110
      Width = 36
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = CODPVExit
    end
    object NOMPV: TEdit
      Left = 193
      Top = 110
      Width = 250
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
      Text = 'Padrao(o que vier)'
    end
    object NOME_ORIGEM: TEdit
      Left = 484
      Top = 33
      Width = 180
      Height = 19
      TabStop = False
      Color = 14211247
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object FileListBox1: TFileListBox
      Left = 488
      Top = 72
      Width = 145
      Height = 97
      ItemHeight = 13
      Mask = '*.xml'
      TabOrder = 12
      Visible = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 159
    Width = 725
    Height = 41
    Align = alTop
    Caption = 'Nome do Arquivo a ser lido:'
    TabOrder = 1
    object sb_Pasta: TSpeedButton
      Left = 808
      Top = 15
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      Visible = False
    end
    object sbnProcurar: TSpeedButton
      Left = 705
      Top = 14
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = sbnProcurarClick
    end
    object NOMARQ: TEdit
      Left = 3
      Top = 15
      Width = 706
      Height = 21
      Enabled = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 725
    Height = 28
    Align = alBottom
    TabOrder = 2
    object bbImportar: TBitBtn
      Left = -24
      Top = 2
      Width = 145
      Height = 25
      Caption = '&Importar'
      TabOrder = 0
      OnClick = bbImportarClick
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
    end
    object bbSair: TBitBtn
      Left = 591
      Top = 0
      Width = 145
      Height = 25
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
      NumGlyphs = 2
    end
    object bbLimpar: TBitBtn
      Left = 252
      Top = 0
      Width = 145
      Height = 25
      Caption = '&Limpar Historico'
      TabOrder = 2
      OnClick = bbLimparClick
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
    end
  end
  object gb_grafico: TGroupBox
    Left = 0
    Top = 367
    Width = 725
    Height = 34
    Align = alBottom
    Caption = 'Progresso do  Processamento do Arquivo:'
    TabOrder = 3
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 721
      Height = 17
      Align = alClient
      Progress = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 200
    Width = 725
    Height = 167
    ActivePage = tsEventos
    Align = alClient
    TabOrder = 4
    object tsEventos: TTabSheet
      Caption = 'Eventos'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 139
        Align = alClient
        Caption = 'Evento do Sistema'
        TabOrder = 0
        object DBGrid_eventos: TDBGrid
          Left = 2
          Top = 15
          Width = 713
          Height = 122
          Align = alClient
          DataSource = Src_Evento
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPO_EVENTO'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_EVENTO'
              Width = 654
              Visible = True
            end>
        end
      end
    end
    object tsTextoXML: TTabSheet
      Caption = 'TextoXML'
      ImageIndex = 1
      object RichTextXML: TRichEdit
        Left = 0
        Top = 0
        Width = 717
        Height = 139
        Align = alClient
        Lines.Strings = (
          'RichTextXML')
        TabOrder = 0
      end
    end
    object TsConfiguracao: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 2
      object GB_DM: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 73
        Align = alTop
        Caption = 
          'Configura'#231#245'es de Portas de Comunica'#231#227'o para Dispositivos Moveis ' +
          'e Pedidos Eletronicos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label104: TLabel
          Left = 9
          Top = 17
          Width = 244
          Height = 13
          Caption = 'Endere'#231'o IP do Servidor Conex'#227'o Externa:'
        end
        object Label105: TLabel
          Left = 576
          Top = 16
          Width = 97
          Height = 13
          Caption = 'Porta do Modem:'
        end
        object Label106: TLabel
          Left = 9
          Top = 35
          Width = 241
          Height = 13
          Caption = 'Endere'#231'o IP do Servidor Conex'#227'o Interna:'
        end
        object G_DM: TSpeedButton
          Left = 266
          Top = 51
          Width = 189
          Height = 22
          Hint = 'Click aqui para Salvar'
          Caption = 'Salvar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = G_DMClick
        end
        object MENDIP: TEdit
          Left = 257
          Top = 13
          Width = 312
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = MENDIPChange
        end
        object PORTA: TEdit
          Left = 673
          Top = 13
          Width = 96
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnChange = PORTAChange
        end
        object MENDIP_INTERNO: TEdit
          Left = 257
          Top = 31
          Width = 312
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnChange = MENDIP_INTERNOChange
        end
      end
    end
  end
  object Timer_importar: TTimer
    Enabled = False
    OnTimer = Timer_importarTimer
    Left = 539
    Top = 208
  end
  object mem_eventos: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TIPO_EVENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESC_EVENTO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CHAVE_FAT'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE_ORI'
        DataType = ftFloat
      end
      item
        Name = 'CODEVE'
        DataType = ftFloat
      end>
    Left = 512
    Top = 88
    object mem_eventosTIPO_EVENTO: TStringField
      DisplayLabel = 'Tipo do Evento'
      FieldName = 'TIPO_EVENTO'
      Size = 40
    end
    object mem_eventosCHAVE_FAT: TFloatField
      FieldName = 'CHAVE_FAT'
    end
    object mem_eventosCHAVE_ORI: TFloatField
      FieldName = 'CHAVE_ORI'
    end
    object mem_eventosDESC_EVENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Evento'
      FieldName = 'DESC_EVENTO'
      Size = 200
    end
    object mem_eventosCODEVE: TFloatField
      FieldName = 'CODEVE'
    end
  end
  object Src_Evento: TDataSource
    DataSet = mem_eventos
    Left = 648
    Top = 96
  end
  object XMLDocument1: TXMLDocument
    Left = 688
    Top = 40
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.ZIP'
    Filter = '*.ZIP|*.zip'
    Left = 560
    Top = 24
  end
  object mem_erros: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODEVE'
        DataType = ftFloat
      end
      item
        Name = 'DESC_EVENTO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CHAVE_FAT'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE_ORI'
        DataType = ftFloat
      end>
    Left = 464
    Top = 80
    object mem_errosDESC_EVENTO: TStringField
      FieldName = 'DESC_EVENTO'
      Size = 200
    end
    object mem_errosCHAVE_FAT: TFloatField
      FieldName = 'CHAVE_FAT'
    end
    object mem_errosCHAVE_ORI: TFloatField
      FieldName = 'CHAVE_ORI'
    end
    object mem_errosCODEVE: TFloatField
      FieldName = 'CODEVE'
    end
  end
  object mem_eventos_lote: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TIPO_EVENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESC_EVENTO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CHAVE_FAT'
        DataType = ftFloat
      end
      item
        Name = 'CHAVE_ORI'
        DataType = ftFloat
      end
      item
        Name = 'CODEVE'
        DataType = ftFloat
      end>
    Left = 544
    Top = 88
    object mem_eventos_loteTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
      Size = 40
    end
    object mem_eventos_loteDESC_EVENTO: TStringField
      FieldName = 'DESC_EVENTO'
      Size = 200
    end
    object mem_eventos_loteCHAVE_FAT: TFloatField
      FieldName = 'CHAVE_FAT'
    end
    object mem_eventos_loteCHAVE_ORI: TFloatField
      FieldName = 'CHAVE_ORI'
    end
    object mem_eventos_loteCODEVE: TFloatField
      FieldName = 'CODEVE'
    end
  end
end
