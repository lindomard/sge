object frm_compras_orc_impxml: Tfrm_compras_orc_impxml
  Left = 41
  Top = 202
  Width = 923
  Height = 463
  Caption = 'Gerar Pedido de Compra Atrav'#233's de um Arquivo XML'
  Color = 15663069
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 135
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 913
      Height = 67
      Align = alTop
      Caption = 'Informe o Caminho e Nome do Arquivo a Ser lido:'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 648
        Top = 16
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
        OnClick = SpeedButton1Click
      end
      object edt_nomarq: TEdit
        Left = 7
        Top = 16
        Width = 635
        Height = 21
        TabOrder = 0
        Text = 'C:\SGE\NFE3.xml'
      end
      object bbLer: TBitBtn
        Left = 256
        Top = 36
        Width = 159
        Height = 25
        Caption = 'Ler Agora'
        TabOrder = 1
        OnClick = bbLerClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
      end
      object gb_soma: TGroupBox
        Left = 688
        Top = 15
        Width = 223
        Height = 50
        Align = alRight
        Caption = 'Soma do Xml:'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 53
          Height = 13
          Caption = 'Total Prod:'
        end
        object Label2: TLabel
          Left = 8
          Top = 33
          Width = 54
          Height = 13
          Caption = 'Total Desc:'
        end
        object st_totprod: TStaticText
          Left = 88
          Top = 11
          Width = 87
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0.00'
          TabOrder = 0
        end
        object st_totdes: TStaticText
          Left = 88
          Top = 30
          Width = 87
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0.00'
          TabOrder = 1
        end
      end
      object bbLerEmail: TBitBtn
        Left = 483
        Top = 40
        Width = 159
        Height = 25
        Caption = 'Ler Xml do Email'
        TabOrder = 3
        OnClick = bbLerEmailClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 68
      Width = 913
      Height = 58
      Align = alTop
      Caption = 'Buscar no Site Atrav'#233's da Chave de Acesso:'
      Color = 15663069
      ParentColor = False
      TabOrder = 1
      object bbBuscar: TBitBtn
        Left = 512
        Top = 16
        Width = 159
        Height = 25
        Caption = 'Buscar Agora'
        TabOrder = 1
        OnClick = bbBuscarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
      end
      object edt_chaveacesso: TMaskEdit
        Left = 3
        Top = 19
        Width = 506
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object GroupBox6: TGroupBox
        Left = 726
        Top = 15
        Width = 185
        Height = 41
        Align = alRight
        Caption = 'Ajustar Pedido Anterior:'
        TabOrder = 2
        object sbn_ok: TSpeedButton
          Left = 120
          Top = 16
          Width = 41
          Height = 22
          Caption = 'Ok'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          OnClick = sbn_okClick
        end
        object Edit30: TEdit
          Left = 5
          Top = 18
          Width = 44
          Height = 19
          TabStop = False
          Color = 16763283
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'Chave:'
        end
        object edt_chave_ant: TEdit
          Left = 48
          Top = 18
          Width = 68
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_chave_antExit
        end
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 135
    Width = 915
    Height = 256
    ActivePage = tsItensPed
    Align = alClient
    TabOrder = 1
    object tsDadosPed: TTabSheet
      Caption = 'Dados Gerais do Pedido'
      object Edit3: TEdit
        Left = 1
        Top = 1
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'CNPJ:'
      end
      object edt_cnpj: TEdit
        Left = 99
        Top = 1
        Width = 137
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'edt_chave'
      end
      object edt_razsoc: TEdit
        Left = 99
        Top = 19
        Width = 371
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        Text = 'edt_chave'
      end
      object Edit1: TEdit
        Left = 719
        Top = 1
        Width = 60
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = 'C'#243'digo:'
      end
      object edt_codfor: TEdit
        Left = 779
        Top = 1
        Width = 119
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = 'edt_chave'
      end
      object Edit2: TEdit
        Left = 1
        Top = 104
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = 'Total Produtos e Servi'#231'os:'
      end
      object Edit19: TEdit
        Left = 1
        Top = 122
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Text = 'Descontos dos Itens:'
      end
      object Edit22: TEdit
        Left = 1
        Top = 140
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = 'Tarifa Bancaria:'
      end
      object Edit20: TEdit
        Left = 1
        Top = 158
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        Text = 'Valor do Seguro'
      end
      object edt_valseg: TEdit
        Left = 151
        Top = 158
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Text = 'edt_valseg'
      end
      object edt_tarban: TEdit
        Left = 151
        Top = 140
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 10
        Text = 'edt_chave'
      end
      object edt_descItens: TEdit
        Left = 151
        Top = 122
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 11
        Text = 'edt_chave'
      end
      object edt_TotProdServ: TEdit
        Left = 151
        Top = 104
        Width = 80
        Height = 19
        TabStop = False
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
        Text = 'edt_chave'
      end
      object Edit33: TEdit
        Left = 1
        Top = 176
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Text = 'Outras Despesas:'
      end
      object edt_outdesp: TEdit
        Left = 151
        Top = 176
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        Text = 'edt_chave'
      end
      object edt_totipi: TEdit
        Left = 151
        Top = 194
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 15
        Text = 'edt_chave'
      end
      object Edit26: TEdit
        Left = 1
        Top = 194
        Width = 151
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        Text = 'IPI:'
      end
      object Edit28: TEdit
        Left = 236
        Top = 104
        Width = 119
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
        Text = 'Frete:'
      end
      object edt_percfrete: TEdit
        Left = 354
        Top = 104
        Width = 59
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 18
        Text = 'edt_chave'
      end
      object edt_valfre: TEdit
        Left = 412
        Top = 104
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 19
        Text = 'edt_chave'
      end
      object edt_vlricmsst: TEdit
        Left = 412
        Top = 122
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 20
        Text = 'edt_chave'
      end
      object edt_vlricms: TEdit
        Left = 412
        Top = 140
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 21
        Text = 'edt_chave'
      end
      object edt_vlrPIS: TEdit
        Left = 412
        Top = 158
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 22
        Text = 'edt_chave'
      end
      object edt_vlrCOFINS: TEdit
        Left = 412
        Top = 176
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 23
        Text = 'edt_chave'
      end
      object edt_totliq: TEdit
        Left = 412
        Top = 192
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 24
        Text = 'edt_chave'
      end
      object Edit41: TEdit
        Left = 236
        Top = 192
        Width = 177
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 25
        Text = 'Total Liquido:'
      end
      object Edit11: TEdit
        Left = 379
        Top = 176
        Width = 34
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
        Text = 'VLR:'
      end
      object Edit9: TEdit
        Left = 379
        Top = 158
        Width = 34
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
        Text = 'VLR:'
      end
      object Edit40: TEdit
        Left = 379
        Top = 140
        Width = 34
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 28
        Text = 'VLR:'
      end
      object Edit39: TEdit
        Left = 379
        Top = 122
        Width = 34
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 29
        Text = 'VLR:'
      end
      object edt_bcicmsst: TEdit
        Left = 300
        Top = 122
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 30
        Text = 'edt_chave'
      end
      object edt_bcicms: TEdit
        Left = 300
        Top = 140
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 31
        Text = 'edt_chave'
      end
      object edt_bcPIS: TEdit
        Left = 300
        Top = 158
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 32
        Text = 'edt_chave'
      end
      object edt_bcCOFINS: TEdit
        Left = 300
        Top = 176
        Width = 80
        Height = 19
        Color = clInactiveCaption
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 33
        Text = 'edt_chave'
      end
      object Edit8: TEdit
        Left = 236
        Top = 176
        Width = 65
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 34
        Text = 'COFINS BC:'
      end
      object Edit7: TEdit
        Left = 236
        Top = 158
        Width = 65
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 35
        Text = 'PIS BC:'
      end
      object Edit36: TEdit
        Left = 236
        Top = 140
        Width = 65
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 36
        Text = 'ICMS BC:'
      end
      object Edit24: TEdit
        Left = 236
        Top = 122
        Width = 65
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 37
        Text = 'ICMS ST BC:'
      end
      object Edit5: TEdit
        Left = 235
        Top = 1
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 38
        Text = 'Inscri'#231#227'o:'
      end
      object edt_ie: TEdit
        Left = 333
        Top = 1
        Width = 137
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 39
        Text = 'edt_chave'
      end
      object Edit6: TEdit
        Left = 437
        Top = 55
        Width = 56
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 40
        Text = 'Cidade:'
      end
      object edt_cidade: TEdit
        Left = 492
        Top = 55
        Width = 176
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 41
        Text = 'edt_chave'
      end
      object Edit10: TEdit
        Left = 667
        Top = 55
        Width = 24
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 42
        Text = 'UF:'
      end
      object edt_uf: TEdit
        Left = 690
        Top = 55
        Width = 26
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 43
        Text = 'edt_chave'
      end
      object GroupBox5: TGroupBox
        Left = 498
        Top = 97
        Width = 401
        Height = 117
        Caption = 'Vencimentos:'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 44
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 397
          Height = 100
          Align = alClient
          DataSource = src_vcto
          ParentColor = True
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PF1VDATAV'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF1VVALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF1VPARCELA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF1VPRAZO'
              Visible = True
            end>
        end
      end
      object Edit4: TEdit
        Left = 469
        Top = 1
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 45
        Text = 'Telefone:'
      end
      object edt_fone: TEdit
        Left = 568
        Top = 1
        Width = 137
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 46
        Text = 'edt_chave'
      end
      object Edit12: TEdit
        Left = 1
        Top = 19
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 47
        Text = 'Raz'#227'o Social:'
      end
      object Edit13: TEdit
        Left = 469
        Top = 19
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 48
        Text = 'Fantasia:'
      end
      object edt_fantasia: TEdit
        Left = 568
        Top = 19
        Width = 217
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 49
        Text = 'edt_chave'
      end
      object Edit14: TEdit
        Left = 1
        Top = 37
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 50
        Text = 'Logradouro:'
      end
      object edt_logradouro: TEdit
        Left = 100
        Top = 37
        Width = 212
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 51
        Text = 'edt_chave'
      end
      object Edit15: TEdit
        Left = 311
        Top = 37
        Width = 55
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 52
        Text = 'N'#250'mero:'
      end
      object edt_nro: TEdit
        Left = 364
        Top = 37
        Width = 75
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 53
        Text = 'edt_chave'
      end
      object Edit16: TEdit
        Left = 438
        Top = 37
        Width = 95
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 54
        Text = 'Complemento:'
      end
      object edt_cpl: TEdit
        Left = 532
        Top = 37
        Width = 75
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 55
        Text = 'edt_chave'
      end
      object Edit17: TEdit
        Left = 606
        Top = 37
        Width = 62
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 56
        Text = 'Bairro:'
      end
      object edt_bairro: TEdit
        Left = 667
        Top = 37
        Width = 231
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 57
        Text = 'edt_chave'
      end
      object Edit18: TEdit
        Left = 778
        Top = 19
        Width = 44
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 58
        Text = 'CEP:'
      end
      object edt_cep: TEdit
        Left = 821
        Top = 19
        Width = 77
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 59
        Text = 'edt_chave'
      end
      object Edit21: TEdit
        Left = 1
        Top = 55
        Width = 100
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 60
        Text = 'Insc. Municipal:'
      end
      object edt_inscmun: TEdit
        Left = 100
        Top = 55
        Width = 212
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 61
        Text = 'edt_chave'
      end
      object Edit23: TEdit
        Left = 311
        Top = 55
        Width = 54
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 62
        Text = 'CNAE:'
      end
      object edt_cnae: TEdit
        Left = 364
        Top = 55
        Width = 75
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 63
        Text = 'edt_chave'
      end
      object CB_CRT: TComboBox
        Left = 720
        Top = 55
        Width = 177
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 64
        Text = '2'#8211'S Nac '#8211' excesso sublimite receita bruta'
        Items.Strings = (
          '1'#8211'Simples Nacional'
          '2'#8211'S Nac '#8211' excesso sublimite receita bruta'
          '3'#8211'Regime Normal. (v2.0).')
      end
      object bbCadFor: TBitBtn
        Left = 327
        Top = 75
        Width = 159
        Height = 25
        Caption = 'Cadastrar o Fornecedor'
        TabOrder = 65
        OnClick = bbCadForClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
    end
    object tsXML: TTabSheet
      Caption = 'Arquivo XML'
      ImageIndex = 1
      object RichEdit1: TRichEdit
        Left = 0
        Top = 0
        Width = 907
        Height = 228
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'RichEdit1')
        ParentFont = False
        TabOrder = 0
      end
    end
    object tsItensPed: TTabSheet
      Caption = 'Itens do Pedido'
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 907
        Height = 136
        Align = alClient
        Caption = 'Dados do Produto no Fornecedor:'
        TabOrder = 0
        object DBGrid_prod: TDBGrid
          Left = 2
          Top = 15
          Width = 657
          Height = 119
          Align = alClient
          DataSource = Src_Pfor02_orc
          ParentColor = True
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid_prodDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'PF2CODPRO'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMPRO_FOR'
              Width = 224
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNDPRO_FOR'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ITEM'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2QTDP'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2QTDPED_INT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PU'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PU_INT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_TOTDES'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2TOTLIQ'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2SIT'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CSOSN'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CFO'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_COMPL'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CSOSN_ORI'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMS_PRED'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2MODBCST'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_IVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_PERCRED'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_ICMSCRED'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_ICMSDEB'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PRECO_MAXCONS'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IPI_PERC'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMS_PERC'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2COFINS_PERC'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PIS_PERC'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMSSN_PERC'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IPI_CST'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PIS_CST'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2COFINS_CST'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IPI_VALOR'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_PERC01'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_BASE'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_PERC02'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_PERC03'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ST_ICMS'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMS_BASE'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMS_VALOR'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMS_RED_VLR'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_CABEC'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2PIS_VALOR'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ICMSSN_VALOR'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2COFINS_VALOR'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CODBAR'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2DESC_VALOR'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2FRERAT'
              Title.Caption = 'Frete Ratiado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CBS_BC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CBS_CST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CBS_ALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CBS_VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pf2IBS_MUN_VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pf2IBS_UF_ALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pf2CBS_DEV_TRIB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IBS_UF_VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2IBS_MUN_ALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2CODCLASSTRIB'
              Visible = True
            end>
        end
        object DBGrid_lotes: TDBGrid
          Left = 659
          Top = 15
          Width = 246
          Height = 119
          Align = alRight
          DataSource = Src_PF2_Lotes
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PF2L_LOTE'
              Title.Alignment = taCenter
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2L_DTVCTO'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2L_QTD'
              Title.Alignment = taCenter
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2L_DTFAB'
              Title.Alignment = taCenter
              Width = 61
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 136
        Width = 907
        Height = 92
        Align = alBottom
        Caption = 'Dados do Produto Interno:'
        TabOrder = 1
        OnExit = GroupBox3Exit
        object lbl_semrel: TLabel
          Left = 12
          Top = 58
          Width = 140
          Height = 13
          Caption = 'Produto Sem Relacionamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object StaticText1: TStaticText
          Left = 9
          Top = 17
          Width = 72
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'C'#243'd.Produto'
          Color = 13565902
          ParentColor = False
          TabOrder = 0
          Transparent = False
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 33
          Width = 72
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PF2CODPRO_INT'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          TabOrder = 1
          OnExit = DBEdit1Exit
          OnKeyDown = DBEdit1KeyDown
          OnKeyPress = DBEdit1KeyPress
        end
        object StaticText2: TStaticText
          Left = 79
          Top = 17
          Width = 26
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Und'
          Color = 13565902
          ParentColor = False
          TabOrder = 2
          Transparent = False
        end
        object DBEdit2: TDBEdit
          Left = 79
          Top = 33
          Width = 26
          Height = 19
          Color = 16758747
          Ctl3D = False
          DataField = 'UNDPRO_INT'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          TabOrder = 3
        end
        object StaticText3: TStaticText
          Left = 104
          Top = 17
          Width = 55
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade'
          Color = 13565902
          ParentColor = False
          TabOrder = 4
          Transparent = False
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 33
          Width = 55
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PF2QTDPED_INT'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          TabOrder = 5
        end
        object StaticText4: TStaticText
          Left = 158
          Top = 17
          Width = 228
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o do Produto '
          Color = 13565902
          ParentColor = False
          TabOrder = 6
          Transparent = False
        end
        object DBEdit4: TDBEdit
          Left = 158
          Top = 33
          Width = 228
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'NOMPRO_INT'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object StaticText5: TStaticText
          Left = 455
          Top = 17
          Width = 72
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Pre'#231'o Unit'#225'rio'
          Color = 13565902
          ParentColor = False
          TabOrder = 8
          Transparent = False
        end
        object DBEdit5: TDBEdit
          Left = 455
          Top = 33
          Width = 72
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PF2PU_INT'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object StaticText6: TStaticText
          Left = 525
          Top = 17
          Width = 80
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Total Descontos'
          Color = 13565902
          ParentColor = False
          TabOrder = 10
          Transparent = False
        end
        object DBEdit6: TDBEdit
          Left = 525
          Top = 33
          Width = 81
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PF2DESC_TOTDES'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object StaticText7: TStaticText
          Left = 604
          Top = 17
          Width = 80
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor Total'
          Color = 13565902
          ParentColor = False
          TabOrder = 12
          Transparent = False
        end
        object DBEdit7: TDBEdit
          Left = 603
          Top = 33
          Width = 81
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PF2TOTLIQ'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object bbVerSemRel: TBitBtn
          Left = 687
          Top = 13
          Width = 159
          Height = 23
          Caption = 'Produtos Sem Relacionamento'
          TabOrder = 15
          TabStop = False
          OnClick = bbVerSemRelClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
        end
        object DBEdit8: TDBEdit
          Left = 353
          Top = 51
          Width = 332
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'desc_conv'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object bbCadastrar: TBitBtn
          Left = 687
          Top = 35
          Width = 159
          Height = 23
          Caption = 'Cadastrar Produto'
          TabOrder = 16
          TabStop = False
          OnClick = bbCadastrarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
        end
        object bbCadTodosProd: TBitBtn
          Left = 687
          Top = 57
          Width = 159
          Height = 23
          Caption = 'Cadastrar Todos Produtos'
          TabOrder = 17
          TabStop = False
          OnClick = bbCadTodosProdClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
            777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
            79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
            777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
            79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
            CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
          NumGlyphs = 2
        end
        object StaticText8: TStaticText
          Left = 385
          Top = 17
          Width = 71
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Marca'
          Color = 13565902
          ParentColor = False
          TabOrder = 18
          Transparent = False
        end
        object DBEdit9: TDBEdit
          Left = 385
          Top = 33
          Width = 71
          Height = 19
          TabStop = False
          Color = 16758747
          Ctl3D = False
          DataField = 'PDMARCA'
          DataSource = Src_Pfor02_orc
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 19
        end
        object CB_NAOCODBAR: TCheckBox
          Left = 456
          Top = 72
          Width = 185
          Height = 17
          Caption = 'Nao Verificar C'#243'digo de Barras'
          TabOrder = 20
        end
      end
    end
    object tsOcorrencias: TTabSheet
      Caption = 'Ocorrencias'
      ImageIndex = 3
      object Memo_ocorrencias: TMemo
        Left = 0
        Top = 0
        Width = 907
        Height = 228
        Align = alClient
        Lines.Strings = (
          'Memo_ocorrencias')
        TabOrder = 0
      end
    end
    object tsDadosNF: TTabSheet
      Caption = 'Dados da Nota'
      ImageIndex = 4
      object Edit25: TEdit
        Left = 1
        Top = 1
        Width = 121
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'Chave de Acesso:'
      end
      object Edit27: TEdit
        Left = 519
        Top = 2
        Width = 64
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Tipo Frete:'
      end
      object RGFRETEPC: TComboBox
        Left = 582
        Top = 1
        Width = 302
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 2
        Text = 'Destinatario (FOB)'
        Items.Strings = (
          '0- Por conta do emitente;'
          '1- Por conta do destinat'#225'rio/remetente;'
          '2- Por conta de terceiros;'
          '9- Sem frete. (V2.0')
      end
      object edt_nfe_chave: TMaskEdit
        Left = 122
        Top = 1
        Width = 384
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object Edit37: TEdit
        Left = 1
        Top = 19
        Width = 121
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = 'Num. NFE:'
      end
      object edt_numnf: TEdit
        Left = 121
        Top = 19
        Width = 79
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        Text = 'edt_chave'
      end
      object Edit35: TEdit
        Left = 230
        Top = 19
        Width = 42
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Text = 'S'#233'rie:'
      end
      object edt_serie: TEdit
        Left = 271
        Top = 19
        Width = 33
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Text = 'edt_chave'
      end
      object Edit42: TEdit
        Left = 323
        Top = 19
        Width = 86
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        Text = 'Data NFE:'
      end
      object edt_datanf: TDateEdit
        Left = 408
        Top = 19
        Width = 98
        Height = 19
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 9
      end
      object Edit38: TEdit
        Left = 519
        Top = 19
        Width = 51
        Height = 19
        TabStop = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        Text = 'Modelo:'
      end
      object CB_MODELONF: TComboBox
        Left = 569
        Top = 18
        Width = 315
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Items.Strings = (
          '01-Nota Fiscal '#9'[1/1A]'
          '1B-Nota Fiscal Avulsa '#9'[-]'
          '02-Nota Fiscal de Venda a Consumidor '#9'[2]'
          '2D-Cupom Fiscal '#9'-'
          '2E-Cupom Fiscal Bilhete de Passagem '#9'[-]'
          '04-Nota Fiscal de Produtor '#9'[4]'
          '06-Nota Fiscal/Conta de Energia El'#233'trica '#9'[6]'
          '07-Nota Fiscal de Servi'#231'o de Transporte '#9'[7]'
          '08-Conhecimento de Transporte Rodovi'#225'rio de Cargas '#9'[8]'
          '8B-Conhecimento de Transporte de Cargas Avulso '#9'[-]'
          '09-Conhecimento de Transporte Aquavi'#225'rio de Cargas '#9'[9]'
          '10-Conhecimento A'#233'reo '#9'[10]'
          '11-Conhecimento de Transporte Ferrovi'#225'rio de Cargas '#9'[11]'
          '13-Bilhete de Passagem Rodovi'#225'rio '#9'[13]'
          '14-Bilhete de Passagem Aquavi'#225'rio '#9'[14]'
          '15-Bilhete de Passagem e Nota de Bagagem '#9'[15]'
          '17-Despacho de Transporte '#9'[17]'
          '16-Bilhete de Passagem Ferrovi'#225'rio '#9'[16]'
          '18-Resumo de Movimento Di'#225'rio '#9'[18]'
          '20-Ordem de Coleta de Cargas '#9'[20]'
          '21-Nota Fiscal de Servi'#231'o de Comunica'#231#227'o '#9'[21]'
          '22-Nota Fiscal de Servi'#231'o de Telecomunica'#231#227'o '#9'[22]'
          '23-GNRE '#9'[23]'
          '24-Autoriza'#231#227'o de Carregamento e Transporte '#9'[24]'
          '25-Manifesto de Carga '#9'[25]'
          '26-Conhecimento de Transporte Multimodal de Cargas '#9'[26]'
          '27-Nota Fiscal De Transporte Ferrovi'#225'rio De Carga '#9'[-]'
          '28-Nota Fiscal/Conta de Fornecimento de G'#225's Canalizado '#9'[-]'
          '29-Nota Fiscal/Conta De Fornecimento D'#39#225'gua Canalizada '#9'[-]'
          '55-Nota Fiscal Eletr'#244'nica '#9' ')
      end
      object Edit29: TEdit
        Left = 1
        Top = 37
        Width = 121
        Height = 19
        TabStop = False
        AutoSize = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        Text = 'Transportadora:'
      end
      object edt_tra_cnpjtra: TEdit
        Left = 121
        Top = 37
        Width = 151
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        Text = 'edt_chave'
      end
      object edt_nomtra: TEdit
        Left = 271
        Top = 37
        Width = 491
        Height = 19
        TabStop = False
        Color = 13092834
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
        Text = 'edt_chave'
      end
      object Edit31: TEdit
        Left = 1
        Top = 55
        Width = 121
        Height = 19
        TabStop = False
        AutoSize = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        Text = 'Inscri'#231#227'o Est:'
      end
      object edt_tra_inscest: TEdit
        Left = 121
        Top = 55
        Width = 151
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        Text = 'edt_chave'
      end
      object edt_tra_codtra: TEdit
        Left = 762
        Top = 37
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        Text = 'edt_chave'
      end
      object Edit32: TEdit
        Left = 323
        Top = 55
        Width = 86
        Height = 19
        TabStop = False
        AutoSize = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        Text = 'Endere'#231'o:'
      end
      object edt_tra_ender: TEdit
        Left = 408
        Top = 55
        Width = 475
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        Text = 'edt_chave'
      end
      object Edit34: TEdit
        Left = 1
        Top = 73
        Width = 121
        Height = 19
        TabStop = False
        AutoSize = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
        Text = 'Cidade:'
      end
      object edt_tra_cidade: TEdit
        Left = 120
        Top = 73
        Width = 449
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        Text = 'edt_chave'
      end
      object Edit43: TEdit
        Left = 799
        Top = 73
        Width = 33
        Height = 19
        TabStop = False
        AutoSize = False
        Color = 16763283
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
        Text = 'UF:'
      end
      object edt_tra_uf: TEdit
        Left = 831
        Top = 73
        Width = 51
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
        Text = 'edt_chave'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 391
    Width = 915
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbInserir: TBitBtn
      Left = 122
      Top = 8
      Width = 159
      Height = 25
      Caption = 'Sair Incluindo o Pedido'
      TabOrder = 0
      TabStop = False
      OnClick = bbInserirClick
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
    end
    object bbSairSemGravar: TBitBtn
      Left = 640
      Top = 8
      Width = 159
      Height = 25
      Caption = 'Sair e Cancelar Opera'#231#227'o'
      TabOrder = 1
      TabStop = False
      OnClick = bbSairSemGravarClick
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
  end
  object opd1: TOpenDialog
    Filter = 'Arquivos xml|*.xml'
    Left = 256
    Top = 72
  end
  object Src_Pfor02_orc: TDataSource
    DataSet = Tb_Pfor02_Orc
    OnDataChange = Src_Pfor02_orcDataChange
    Left = 528
    Top = 104
  end
  object src_vcto: TDataSource
    DataSet = tb_vcto
    Left = 816
    Top = 8
  end
  object tb_vcto: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT PF1VCODEMP,PF1VCHAVE,PF1VLOTSEQ,'
      'PF1VDATAV'
      ',PF1VVALOR'
      ',PF1VCODIGO'
      ',0 AS PF1VPRAZO'
      
        ',0 AS PF1VCODFP,'#39'DINHEIRO '#39' AS PF1VNOMFP,0 AS PF1VQTDPARC,'#39'N'#39' AS' +
        ' PF1VBAIXA'
      ',PF1VDESCF,PF1VDTDESCF'
      ',RPAD('#39' '#39',10) AS NUMDUP'
      'FROM CADPF1V')
    UpdateObject = u_vcto
    Left = 681
    Top = 20
    object tb_vctoPF1VCODEMP: TFloatField
      FieldName = 'PF1VCODEMP'
    end
    object tb_vctoPF1VCHAVE: TFloatField
      FieldName = 'PF1VCHAVE'
    end
    object tb_vctoPF1VLOTSEQ: TFloatField
      FieldName = 'PF1VLOTSEQ'
    end
    object tb_vctoPF1VDATAV: TDateTimeField
      FieldName = 'PF1VDATAV'
    end
    object tb_vctoPF1VVALOR: TFloatField
      FieldName = 'PF1VVALOR'
    end
    object tb_vctoPF1VCODIGO: TFloatField
      FieldName = 'PF1VCODIGO'
    end
    object tb_vctoPF1VPRAZO: TFloatField
      FieldName = 'PF1VPRAZO'
    end
    object tb_vctoPF1VCODFP: TFloatField
      FieldName = 'PF1VCODFP'
    end
    object tb_vctoPF1VNOMFP: TStringField
      FieldName = 'PF1VNOMFP'
      FixedChar = True
      Size = 9
    end
    object tb_vctoPF1VQTDPARC: TFloatField
      FieldName = 'PF1VQTDPARC'
    end
    object tb_vctoPF1VBAIXA: TStringField
      FieldName = 'PF1VBAIXA'
      FixedChar = True
      Size = 1
    end
    object tb_vctoPF1VDESCF: TFloatField
      FieldName = 'PF1VDESCF'
    end
    object tb_vctoPF1VDTDESCF: TDateTimeField
      FieldName = 'PF1VDTDESCF'
    end
    object tb_vctoNUMDUP: TStringField
      FieldName = 'NUMDUP'
      Size = 10
    end
  end
  object Tb_Pfor02_Orc: TQuery
    CachedUpdates = True
    AfterEdit = Tb_Pfor02_OrcAfterEdit
    BeforePost = Tb_Pfor02_OrcBeforePost
    OnCalcFields = Tb_Pfor02_OrcCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select PF2ITEM,PF2QTDP'
      '                     ,PF2DESC01 AS PF2DESC_PERC01 '
      '                     ,PF2DESC02 AS PF2DESC_PERC02 '
      '                     ,PF2CODPRO, PF2FRERAT,'
      '                     PF2DESC03 AS PF2DESC_PERC03 '
      '                     ,PF2PU ,PF2SIT, PF2CSOSN '
      
        '                     ,PF2CFO, Pf2DESC_COMPL, PF2QTDP*PF2PU AS VA' +
        'LOR_TOTAL '
      
        '                     ,PF2CSOSN_ORI, PF2PREDICMNOR AS PF2ICMS_PRE' +
        'D, '
      
        '                      PF2MODBCST, PF2ST_IVA,  PF2ST_PERCRED, PF2' +
        'ST_ICMSCRED, PF2ST_ICMSDEB,'
      
        '                      PF2PMC AS PF2PRECO_MAXCONS , PF2ALIPI AS P' +
        'F2IPI_PERC'
      '                     ,PF2ALIQ AS PF2ICMS_PERC, PF2COFINS_PERC'
      '                     ,PF2IPI_CST, PF2PIS_CST, PF2COFINS_CST'
      '                     ,PF2IPI AS PF2PIS_PERC,0 AS PF2ICMSSN_PERC'
      '                     ,PF2IPI AS PF2IPI_BASE'
      
        '                     ,PF2BASER AS PF2ST_BASE,PF2ST_ICMS,PF2BASEN' +
        ' AS  PF2ICMS_BASE'
      '                     ,PF2ICMSN AS PF2ICMS_VALOR'
      
        '                     ,PF2ICMS_RED_VLR,PF2DESCRAT AS PF2DESC_CABE' +
        'C,'
      
        '                     PF2TOTDES AS PF2DESC_TOTDES, PF2PIS_VALOR,P' +
        'F2TOTLIQ '
      
        '                     ,PF2ICMSSN_VALOR,PF2COFINS_VALOR,PF2VALDES ' +
        'AS  PF2DESC_VALOR, '
      
        '                     PDNOME AS NOMPRO_FOR,PDNOME AS UNDPRO_FOR,P' +
        'DNOME AS NOMPRO_INT'
      
        '                     ,PDUND AS UNDPRO_INT,PF2CODPRO AS PF2CODBAR' +
        ' '
      
        '                     ,PF2CODPRO AS PF2CODPRO_INT ,PF2QTDP AS PF2' +
        'QTDPED_INT'
      '                     ,PF2PU AS PF2PU_INT'
      '                     ,PDCODNCM AS CODNCM'
      '                     ,PDMARCA,PDSTATUS'
      '                       FROM CADPF2'
      '                     left join CADPRO  on (PDCODPRO =PF2CODPRO'
      '                               and PDCODEMP=PF2CODEMP)'
      '                      where PF2CODEMP=-9999')
    UpdateObject = U_Pfor02_Orc
    Left = 409
    Top = 116
    object Tb_Pfor02_OrcPF2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PF2ITEM'
    end
    object Tb_Pfor02_OrcPF2QTDP: TFloatField
      DisplayLabel = 'Qtd.Ped'
      FieldName = 'PF2QTDP'
    end
    object Tb_Pfor02_OrcPF2DESC_PERC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'PF2DESC_PERC01'
    end
    object Tb_Pfor02_OrcPF2DESC_PERC02: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'PF2DESC_PERC02'
    end
    object Tb_Pfor02_OrcPF2DESC_PERC03: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'PF2DESC_PERC03'
    end
    object Tb_Pfor02_OrcPF2PU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'PF2PU'
    end
    object Tb_Pfor02_OrcPF2SIT: TStringField
      DisplayLabel = 'CST'
      FieldName = 'PF2SIT'
      Size = 4
    end
    object Tb_Pfor02_OrcPF2CSOSN: TStringField
      DisplayLabel = 'CSOSN'
      FieldName = 'PF2CSOSN'
      Size = 3
    end
    object Tb_Pfor02_OrcPF2CFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'PF2CFO'
    end
    object Tb_Pfor02_OrcPF2DESC_COMPL: TMemoField
      DisplayLabel = 'Desc.Compl'
      FieldName = 'PF2DESC_COMPL'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_Pfor02_OrcVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
    end
    object Tb_Pfor02_OrcPF2CSOSN_ORI: TFloatField
      DisplayLabel = 'Origem'
      FieldName = 'PF2CSOSN_ORI'
    end
    object Tb_Pfor02_OrcPF2ICMS_PRED: TFloatField
      DisplayLabel = '%Red.ICMS'
      FieldName = 'PF2ICMS_PRED'
    end
    object Tb_Pfor02_OrcPF2MODBCST: TFloatField
      DisplayLabel = 'Mod.BC ST'
      FieldName = 'PF2MODBCST'
    end
    object Tb_Pfor02_OrcPF2ST_IVA: TFloatField
      DisplayLabel = 'IVA'
      FieldName = 'PF2ST_IVA'
    end
    object Tb_Pfor02_OrcPF2ST_PERCRED: TFloatField
      DisplayLabel = '% Red Icms ST'
      FieldName = 'PF2ST_PERCRED'
    end
    object Tb_Pfor02_OrcPF2ST_ICMSCRED: TFloatField
      DisplayLabel = '% ICMS Cred'
      FieldName = 'PF2ST_ICMSCRED'
    end
    object Tb_Pfor02_OrcPF2ST_ICMSDEB: TFloatField
      DisplayLabel = '% Icms Deb'
      FieldName = 'PF2ST_ICMSDEB'
    end
    object Tb_Pfor02_OrcPF2PRECO_MAXCONS: TFloatField
      DisplayLabel = 'PMC(p'#231'o Max)'
      FieldName = 'PF2PRECO_MAXCONS'
    end
    object Tb_Pfor02_OrcPF2IPI_PERC: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PF2IPI_PERC'
    end
    object Tb_Pfor02_OrcPF2ICMS_PERC: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'PF2ICMS_PERC'
    end
    object Tb_Pfor02_OrcPF2COFINS_PERC: TFloatField
      DisplayLabel = '% Cofins'
      FieldName = 'PF2COFINS_PERC'
    end
    object Tb_Pfor02_OrcPF2PIS_PERC: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'PF2PIS_PERC'
    end
    object Tb_Pfor02_OrcPF2ICMSSN_PERC: TFloatField
      DisplayLabel = 'ICMS SN'
      FieldName = 'PF2ICMSSN_PERC'
    end
    object Tb_Pfor02_OrcPF2IPI_CST: TStringField
      DisplayLabel = 'CST IPI'
      FieldName = 'PF2IPI_CST'
      Size = 2
    end
    object Tb_Pfor02_OrcPF2PIS_CST: TStringField
      DisplayLabel = 'CST PIS'
      FieldName = 'PF2PIS_CST'
      Size = 2
    end
    object Tb_Pfor02_OrcPF2COFINS_CST: TStringField
      DisplayLabel = 'CST Cofins'
      FieldName = 'PF2COFINS_CST'
      Size = 2
    end
    object Tb_Pfor02_OrcPF2IPI_VALOR: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'PF2IPI_VALOR'
    end
    object Tb_Pfor02_OrcPF2ST_BASE: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'PF2ST_BASE'
    end
    object Tb_Pfor02_OrcPF2ST_ICMS: TFloatField
      DisplayLabel = 'Vlr Icms ST'
      FieldName = 'PF2ST_ICMS'
    end
    object Tb_Pfor02_OrcPF2ICMS_BASE: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'PF2ICMS_BASE'
    end
    object Tb_Pfor02_OrcPF2ICMS_VALOR: TFloatField
      DisplayLabel = 'Valor do ICMS'
      FieldName = 'PF2ICMS_VALOR'
    end
    object Tb_Pfor02_OrcPF2ICMS_RED_VLR: TFloatField
      DisplayLabel = '% Red ICMS'
      FieldName = 'PF2ICMS_RED_VLR'
    end
    object Tb_Pfor02_OrcPF2DESC_CABEC: TFloatField
      DisplayLabel = 'Desc.Cab'
      FieldName = 'PF2DESC_CABEC'
    end
    object Tb_Pfor02_OrcPF2DESC_TOTDES: TFloatField
      DisplayLabel = 'Total Descontos'
      FieldName = 'PF2DESC_TOTDES'
    end
    object Tb_Pfor02_OrcPF2PIS_VALOR: TFloatField
      DisplayLabel = 'Valor PIS'
      FieldName = 'PF2PIS_VALOR'
    end
    object Tb_Pfor02_OrcPF2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'PF2TOTLIQ'
    end
    object Tb_Pfor02_OrcPF2ICMSSN_VALOR: TFloatField
      DisplayLabel = 'Vaor Icms  SN'
      FieldName = 'PF2ICMSSN_VALOR'
    end
    object Tb_Pfor02_OrcPF2COFINS_VALOR: TFloatField
      DisplayLabel = 'Valor Cofins'
      FieldName = 'PF2COFINS_VALOR'
    end
    object Tb_Pfor02_OrcPF2DESC_VALOR: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'PF2DESC_VALOR'
    end
    object Tb_Pfor02_OrcNOMPRO_FOR: TStringField
      DisplayLabel = 'Nome Produto no Fornecedor'
      FieldName = 'NOMPRO_FOR'
      Size = 120
    end
    object Tb_Pfor02_OrcUNDPRO_FOR: TStringField
      DisplayLabel = 'Und Fornec'
      FieldName = 'UNDPRO_FOR'
      Size = 120
    end
    object Tb_Pfor02_OrcNOMPRO_INT: TStringField
      DisplayLabel = 'Nome do Produto interno'
      FieldName = 'NOMPRO_INT'
      Size = 120
    end
    object Tb_Pfor02_OrcUNDPRO_INT: TStringField
      DisplayLabel = 'Und. Int'
      FieldName = 'UNDPRO_INT'
      Size = 3
    end
    object Tb_Pfor02_OrcPF2CODBAR: TFloatField
      DisplayLabel = 'c'#243'd Barras'
      FieldName = 'PF2CODBAR'
    end
    object Tb_Pfor02_OrcPF2CODPRO_INT: TFloatField
      DisplayLabel = 'c'#243'digo Prod'
      FieldName = 'PF2CODPRO_INT'
    end
    object Tb_Pfor02_OrcPF2QTDPED_INT: TFloatField
      DisplayLabel = 'Qtd.Ped.Conv'
      FieldName = 'PF2QTDPED_INT'
    end
    object Tb_Pfor02_Orcfator_conv: TFloatField
      DisplayLabel = 'Fator Conversao'
      FieldKind = fkCalculated
      FieldName = 'fator_conv'
      Calculated = True
    end
    object Tb_Pfor02_Orcpcouni_int: TFloatField
      DisplayLabel = 'P'#231'o.Uni Conv'
      FieldKind = fkCalculated
      FieldName = 'pcouni_int'
      Calculated = True
    end
    object Tb_Pfor02_Orcdesc_conv: TStringField
      DisplayLabel = 'Descri'#231#227'o Conversao'
      FieldKind = fkCalculated
      FieldName = 'desc_conv'
      Size = 300
      Calculated = True
    end
    object Tb_Pfor02_OrcPF2PU_INT: TFloatField
      DisplayLabel = 'P'#231'o. Unitario'
      FieldName = 'PF2PU_INT'
    end
    object Tb_Pfor02_OrcCODNCM: TStringField
      DisplayLabel = 'C'#243'd. NCM'
      FieldName = 'CODNCM'
      Size = 10
    end
    object Tb_Pfor02_OrcPF2CODPRO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PF2CODPRO'
    end
    object Tb_Pfor02_OrcPF2IPIVUNID: TFloatField
      FieldName = 'PF2IPIVUNID'
    end
    object Tb_Pfor02_OrcPF2IPIQTDUNID: TFloatField
      FieldName = 'PF2IPIQTDUNID'
    end
    object Tb_Pfor02_OrcPF2PISQTDUNID: TFloatField
      FieldName = 'PF2PISQTDUNID'
    end
    object Tb_Pfor02_OrcPF2PISVUNID: TFloatField
      FieldName = 'PF2PISVUNID'
    end
    object Tb_Pfor02_OrcPF2COFINSQTDUNID: TFloatField
      FieldName = 'PF2COFINSQTDUNID'
    end
    object Tb_Pfor02_OrcPF2COFINSVUNID: TFloatField
      FieldName = 'PF2COFINSVUNID'
    end
    object Tb_Pfor02_OrcPF2FRERAT: TFloatField
      FieldName = 'PF2FRERAT'
    end
    object Tb_Pfor02_OrcPF2IPI_BASE: TFloatField
      FieldName = 'PF2IPI_BASE'
    end
    object Tb_Pfor02_OrcPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Tb_Pfor02_OrcPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
    end
    object Tb_Pfor02_OrcPF2CEST: TStringField
      FieldName = 'PF2CEST'
      Size = 10
    end
    object Tb_Pfor02_OrcPF2VICMSDESON: TFloatField
      FieldName = 'PF2VICMSDESON'
    end
    object Tb_Pfor02_OrcPF2IPI_PRED: TFloatField
      FieldName = 'PF2IPI_PRED'
    end
    object Tb_Pfor02_OrcPF2CBENEF: TStringField
      FieldName = 'PF2CBENEF'
      Size = 10
    end
    object Tb_Pfor02_OrcPF2CBS_CST: TStringField
      FieldName = 'PF2CBS_CST'
      Size = 3
    end
    object Tb_Pfor02_OrcPF2CODCLASSTRIB: TStringField
      FieldName = 'PF2CODCLASSTRIB'
      Size = 6
    end
    object Tb_Pfor02_OrcPF2CBS_ALIQ: TFloatField
      FieldName = 'PF2CBS_ALIQ'
    end
    object Tb_Pfor02_OrcPF2CBS_VALOR: TFloatField
      FieldName = 'PF2CBS_VALOR'
    end
    object Tb_Pfor02_OrcPf2IBS_MUN_VALOR: TFloatField
      FieldName = 'Pf2IBS_MUN_VALOR'
    end
    object Tb_Pfor02_OrcPf2CBS_DEV_TRIB: TFloatField
      FieldName = 'Pf2CBS_DEV_TRIB'
    end
    object Tb_Pfor02_OrcPf2IBS_UF_ALIQ: TFloatField
      FieldName = 'Pf2IBS_UF_ALIQ'
    end
    object Tb_Pfor02_OrcPF2IBS_UF_VALOR: TFloatField
      FieldName = 'PF2IBS_UF_VALOR'
    end
    object Tb_Pfor02_OrcPF2IBS_MUN_ALIQ: TFloatField
      FieldName = 'PF2IBS_MUN_ALIQ'
    end
    object Tb_Pfor02_OrcPF2CBS_BC: TFloatField
      FieldName = 'PF2CBS_BC'
    end
    object Tb_Pfor02_OrcPF2DESONERACAO_DEDUZ: TFloatField
      FieldName = 'PF2DESONERACAO_DEDUZ'
    end
    object Tb_Pfor02_OrcPF2DESONERACAO_MOTIVO: TFloatField
      FieldName = 'PF2DESONERACAO_MOTIVO'
    end
  end
  object U_Pfor02_Orc: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF2'
      'set'
      '  PF2ITEM = :PF2ITEM,'
      '  PF2QTDP = :PF2QTDP,'
      '  PF2DESC_PERC01 = :PF2DESC_PERC01,'
      '  PF2DESC_PERC02 = :PF2DESC_PERC02,'
      '  PF2CODPRO = :PF2CODPRO,'
      '  PF2FRERAT = :PF2FRERAT,'
      '  PF2DESC_PERC03 = :PF2DESC_PERC03,'
      '  PF2PU = :PF2PU,'
      '  PF2SIT = :PF2SIT,'
      '  PF2CSOSN = :PF2CSOSN,'
      '  PF2CFO = :PF2CFO,'
      '  PF2DESC_COMPL = :PF2DESC_COMPL,'
      '  VALOR_TOTAL = :VALOR_TOTAL,'
      '  PF2CSOSN_ORI = :PF2CSOSN_ORI,'
      '  PF2ICMS_PRED = :PF2ICMS_PRED,'
      '  PF2MODBCST = :PF2MODBCST,'
      '  PF2ST_IVA = :PF2ST_IVA,'
      '  PF2ST_PERCRED = :PF2ST_PERCRED,'
      '  PF2ST_ICMSCRED = :PF2ST_ICMSCRED,'
      '  PF2ST_ICMSDEB = :PF2ST_ICMSDEB,'
      '  PF2PRECO_MAXCONS = :PF2PRECO_MAXCONS,'
      '  PF2IPI_PERC = :PF2IPI_PERC,'
      '  PF2ICMS_PERC = :PF2ICMS_PERC,'
      '  PF2COFINS_PERC = :PF2COFINS_PERC,'
      '  PF2PIS_PERC = :PF2PIS_PERC,'
      '  PF2ICMSSN_PERC = :PF2ICMSSN_PERC,'
      '  PF2IPI_CST = :PF2IPI_CST,'
      '  PF2PIS_CST = :PF2PIS_CST,'
      '  PF2COFINS_CST = :PF2COFINS_CST,'
      '  PF2IPI_VALOR = :PF2IPI_VALOR,'
      '  PF2ST_BASE = :PF2ST_BASE,'
      '  PF2ST_ICMS = :PF2ST_ICMS,'
      '  PF2ICMS_BASE = :PF2ICMS_BASE,'
      '  PF2ICMS_VALOR = :PF2ICMS_VALOR,'
      '  PF2ICMS_RED_VLR = :PF2ICMS_RED_VLR,'
      '  PF2DESC_CABEC = :PF2DESC_CABEC,'
      '  PF2DESC_TOTDES = :PF2DESC_TOTDES,'
      '  PF2PIS_VALOR = :PF2PIS_VALOR,'
      '  PF2TOTLIQ = :PF2TOTLIQ,'
      '  PF2ICMSSN_VALOR = :PF2ICMSSN_VALOR,'
      '  PF2COFINS_VALOR = :PF2COFINS_VALOR,'
      '  PF2DESC_VALOR = :PF2DESC_VALOR,'
      '  NOMPRO_FOR = :NOMPRO_FOR,'
      '  UNDPRO_FOR = :UNDPRO_FOR,'
      '  NOMPRO_INT = :NOMPRO_INT,'
      '  UNDPRO_INT = :UNDPRO_INT,'
      '  PF2CODBAR = :PF2CODBAR,'
      '  PF2CODPRO_INT = :PF2CODPRO_INT,'
      '  PF2QTDPED_INT = :PF2QTDPED_INT,'
      '  PF2PU_INT = :PF2PU_INT,'
      '  PF2CBENEF = :PF2CBENEF,'
      '  ,PF2DESONERACAO_DEDUZ = :PF2DESONERACAO_DEDUZ'
      '  ,PF2DESONERACAO_MOTIVO = :PF2DESONERACAO_MOTIVO'
      'where'
      '  PF2ITEM = :OLD_PF2ITEM and'
      '  PF2CODPRO = :OLD_PF2CODPRO')
    InsertSQL.Strings = (
      'insert into CADPF2'
      '  (PF2ITEM, PF2QTDP, PF2DESC_PERC01, PF2DESC_PERC02, PF2CODPRO, '
      'PF2FRERAT, '
      
        '   PF2DESC_PERC03, PF2PU, PF2SIT, PF2CSOSN, PF2CFO, PF2DESC_COMP' +
        'L, '
      'VALOR_TOTAL, '
      '   PF2CSOSN_ORI, PF2ICMS_PRED, PF2MODBCST, PF2ST_IVA, '
      'PF2ST_PERCRED, PF2ST_ICMSCRED, '
      '   PF2ST_ICMSDEB, PF2PRECO_MAXCONS, PF2IPI_PERC, PF2ICMS_PERC, '
      'PF2COFINS_PERC, '
      
        '   PF2PIS_PERC, PF2ICMSSN_PERC, PF2IPI_CST, PF2PIS_CST, PF2COFIN' +
        'S_CST, '
      
        '   PF2IPI_VALOR, PF2ST_BASE, PF2ST_ICMS, PF2ICMS_BASE, PF2ICMS_V' +
        'ALOR, '
      'PF2ICMS_RED_VLR, '
      '   PF2DESC_CABEC, PF2DESC_TOTDES, PF2PIS_VALOR, PF2TOTLIQ, '
      'PF2ICMSSN_VALOR, '
      '   PF2COFINS_VALOR, PF2DESC_VALOR, NOMPRO_FOR, UNDPRO_FOR, '
      'NOMPRO_INT, '
      
        '   UNDPRO_INT, PF2CODBAR, PF2CODPRO_INT, PF2QTDPED_INT, PF2PU_IN' +
        'T'
      '   ,PF2CBENEF'
      '   ,PF2DESONERACAO_DEDUZ,PF2DESONERACAO_MOTIVO'
      '   )'
      'values'
      
        '  (:PF2ITEM, :PF2QTDP, :PF2DESC_PERC01, :PF2DESC_PERC02, :PF2COD' +
        'PRO,'
      ':PF2FRERAT,'
      '   :PF2DESC_PERC03, :PF2PU, :PF2SIT, :PF2CSOSN, :PF2CFO,'
      ':PF2DESC_COMPL,'
      '   :VALOR_TOTAL, :PF2CSOSN_ORI, :PF2ICMS_PRED, :PF2MODBCST,'
      ':PF2ST_IVA,'
      '   :PF2ST_PERCRED, :PF2ST_ICMSCRED, :PF2ST_ICMSDEB,'
      ':PF2PRECO_MAXCONS,'
      '   :PF2IPI_PERC, :PF2ICMS_PERC, :PF2COFINS_PERC, :PF2PIS_PERC,'
      ':PF2ICMSSN_PERC,'
      
        '   :PF2IPI_CST, :PF2PIS_CST, :PF2COFINS_CST, :PF2IPI_VALOR, :PF2' +
        'ST_BASE,'
      '   :PF2ST_ICMS, :PF2ICMS_BASE, :PF2ICMS_VALOR, :PF2ICMS_RED_VLR,'
      ':PF2DESC_CABEC,'
      '   :PF2DESC_TOTDES, :PF2PIS_VALOR, :PF2TOTLIQ, :PF2ICMSSN_VALOR,'
      ':PF2COFINS_VALOR,'
      '   :PF2DESC_VALOR, :NOMPRO_FOR, :UNDPRO_FOR, :NOMPRO_INT,'
      ':UNDPRO_INT,'
      
        '   :PF2CODBAR, :PF2CODPRO_INT, :PF2QTDPED_INT, :PF2PU_INT, :PF2C' +
        'BENEF'
      '   , :PF2DESONERACAO_DEDUZ, :PF2DESONERACAO_MOTIVO)')
    DeleteSQL.Strings = (
      'delete from CADPF2'
      'where'
      '  PF2ITEM = :OLD_PF2ITEM and'
      '  PF2CODPRO = :OLD_PF2CODPRO')
    Left = 441
    Top = 116
  end
  object u_vcto: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF1V'
      'set'
      '  PF1VCODEMP = :PF1VCODEMP,'
      '  PF1VCHAVE = :PF1VCHAVE,'
      '  PF1VLOTSEQ = :PF1VLOTSEQ,'
      '  PF1VDATAV = :PF1VDATAV,'
      '  PF1VVALOR = :PF1VVALOR,'
      '  PF1VCODIGO = :PF1VCODIGO,'
      '  PF1VPRAZO = :PF1VPRAZO,'
      '  PF1VCODFP = :PF1VCODFP,'
      '  PF1VNOMFP = :PF1VNOMFP,'
      '  PF1VQTDPARC = :PF1VQTDPARC,'
      '  PF1VBAIXA = :PF1VBAIXA,'
      '  PF1VDESCF = :PF1VDESCF,'
      '  PF1VDTDESCF = :PF1VDTDESCF'
      'where'
      '  PF1VCODEMP = :OLD_PF1VCODEMP and'
      '  PF1VCHAVE = :OLD_PF1VCHAVE and'
      '  PF1VLOTSEQ = :OLD_PF1VLOTSEQ')
    InsertSQL.Strings = (
      'insert into CADPF1V'
      '  (PF1VCODEMP, PF1VCHAVE, PF1VLOTSEQ, PF1VDATAV, PF1VVALOR, '
      'PF1VCODIGO, '
      '   PF1VPRAZO, PF1VCODFP, PF1VNOMFP, PF1VQTDPARC, PF1VBAIXA, '
      'PF1VDESCF, '
      '   PF1VDTDESCF)'
      'values'
      
        '  (:PF1VCODEMP, :PF1VCHAVE, :PF1VLOTSEQ, :PF1VDATAV, :PF1VVALOR,' +
        ' '
      ':PF1VCODIGO, '
      
        '   :PF1VPRAZO, :PF1VCODFP, :PF1VNOMFP, :PF1VQTDPARC, :PF1VBAIXA,' +
        ' '
      ':PF1VDESCF, '
      '   :PF1VDTDESCF)')
    DeleteSQL.Strings = (
      'delete from CADPF1V'
      'where'
      '  PF1VCODEMP = :OLD_PF1VCODEMP and'
      '  PF1VCHAVE = :OLD_PF1VCHAVE and'
      '  PF1VLOTSEQ = :OLD_PF1VLOTSEQ')
    Left = 761
    Top = 20
  end
  object Tb_PF2_Lotes: TQuery
    CachedUpdates = True
    BeforePost = Tb_PF2_LotesBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2L_ITEM,PF2L_LOTE,PF2L_DTFAB'
      '       ,PF2L_DTVCTO,PF2L_QTD'
      '       ,PF2L_QTD as PF2L_QTDFOR from CADPF2_LOTES_ORC')
    UpdateObject = U_Pf2_Lotes
    Left = 446
    Top = 8
    object Tb_PF2_LotesPF2L_ITEM: TFloatField
      FieldName = 'PF2L_ITEM'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_ITEM'
    end
    object Tb_PF2_LotesPF2L_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PF2L_LOTE'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_LOTE'
    end
    object Tb_PF2_LotesPF2L_DTFAB: TDateTimeField
      DisplayLabel = 'Dt Fab'
      FieldName = 'PF2L_DTFAB'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_DTFAB'
    end
    object Tb_PF2_LotesPF2L_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'PF2L_DTVCTO'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_DTVCTO'
    end
    object Tb_PF2_LotesPF2L_QTD: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PF2L_QTD'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_QTD'
    end
    object Tb_PF2_LotesPF2L_QTDFOR: TFloatField
      FieldName = 'PF2L_QTDFOR'
      Origin = 'SG_ASSOC.CADPF2_LOTES_ORC.PF2L_QTD'
    end
  end
  object Src_PF2_Lotes: TDataSource
    DataSet = Tb_PF2_Lotes
    OnDataChange = Src_PF2_LotesDataChange
    Left = 480
    Top = 8
  end
  object U_Pf2_Lotes: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF2_LOTES_ORC'
      'set'
      '  PF2L_CHAVE = :PF2L_CHAVE,'
      '  PF2L_LOTSEQ = :PF2L_LOTSEQ,'
      '  PF2L_ITEM = :PF2L_ITEM,'
      '  PF2L_LOTE = :PF2L_LOTE,'
      '  PF2L_DTFAB = :PF2L_DTFAB,'
      '  PF2L_DTVCTO = :PF2L_DTVCTO,'
      '  PF2L_QTD = :PF2L_QTD,'
      '  PF2L_QTDFOR = :PF2L_QTDFOR'
      'where'
      '  PF2L_ITEM = :OLD_PF2L_ITEM and'
      '  PF2L_LOTE = :OLD_PF2L_LOTE')
    InsertSQL.Strings = (
      'insert into CADPF2_LOTES_ORC'
      '  (PF2L_CHAVE, PF2L_LOTSEQ, PF2L_ITEM, PF2L_LOTE, PF2L_DTFAB, '
      'PF2L_DTVCTO, '
      '   PF2L_QTD, PF2L_QTDFOR)'
      'values'
      
        '  (:PF2L_CHAVE, :PF2L_LOTSEQ, :PF2L_ITEM, :PF2L_LOTE, :PF2L_DTFA' +
        'B, '
      ':PF2L_DTVCTO, '
      '   :PF2L_QTD, :PF2L_QTDFOR)')
    DeleteSQL.Strings = (
      'delete from CADPF2_LOTES_ORC'
      'where'
      '  PF2L_ITEM = :OLD_PF2L_ITEM and'
      '  PF2L_LOTE = :OLD_PF2L_LOTE')
    Left = 510
    Top = 7
  end
end
