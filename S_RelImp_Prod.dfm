object Frm_RelImp_Prod: TFrm_RelImp_Prod
  Left = 41
  Top = 59
  Width = 742
  Height = 242
  VertScrollBar.Visible = False
  Caption = 'Relatorio de Precos/Produtos Importados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Fornecedor.........'
    end
    object Label2: TLabel
      Left = 17
      Top = 29
      Width = 79
      Height = 13
      Caption = 'N'#250'mero do Lote:'
    end
    object CODFOR: TEdit
      Left = 97
      Top = 5
      Width = 60
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 154
      Top = 5
      Width = 294
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Color = 13696509
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object DATALOT: TEdit
      Left = 154
      Top = 22
      Width = 294
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Color = 13696509
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NUMLOT: TEdit
      Left = 97
      Top = 22
      Width = 60
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NUMLOTExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 734
    Height = 113
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 354
      Top = 6
      Width = 110
      Height = 13
      Caption = 'Ind'#237'ce Maior ou Igual a'
    end
    object Label4: TLabel
      Left = 539
      Top = 9
      Width = 114
      Height = 13
      Caption = 'Ind'#237'ce Menor ou Igual a'
    end
    object RGTIPO: TRadioGroup
      Left = 6
      Top = 2
      Width = 147
      Height = 107
      Caption = 'Listar Somente:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Produtos Ajustados'
        'Produtos Nao Ajustados'
        'Todos')
      ParentCtl3D = False
      TabOrder = 0
    end
    object RGTIPOALT: TRadioGroup
      Left = 152
      Top = 2
      Width = 101
      Height = 107
      Caption = 'Tipo de Altera'#231#227'o'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'So Ajustados'
        'So Inclus'#227'o'
        'Todos')
      ParentCtl3D = False
      TabOrder = 1
    end
    object RGPRECOS: TRadioGroup
      Left = 252
      Top = 2
      Width = 94
      Height = 106
      Caption = 'Tipo de Pre'#231'os'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        'So Aumento'
        'So Baixou'
        'Todos')
      ParentCtl3D = False
      TabOrder = 2
    end
    object INDINI: TEdit
      Left = 468
      Top = 2
      Width = 60
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      OnExit = INDINIExit
      OnKeyPress = INDINIKeyPress
    end
    object INDFIN: TEdit
      Left = 658
      Top = 3
      Width = 60
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 4
      OnExit = INDFINExit
      OnKeyPress = INDINIKeyPress
    end
    object RGORDEM: TRadioGroup
      Left = 353
      Top = 38
      Width = 365
      Height = 68
      Caption = 'Ordem de Impress'#227'o'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Descri'#231#227'o'
        'C'#243'digo Prod.Fornecedor'
        'C'#243'digo Produto Local'
        'Indice Aumento Crescente'
        'Indice Aumento Descrescente'
        'Nome Fabricante+Descri'#231#227'o')
      ParentCtl3D = False
      TabOrder = 6
    end
    object CB_TIPIND: TCheckBox
      Left = 355
      Top = 23
      Width = 170
      Height = 17
      Alignment = taLeftJustify
      Caption = #205'ndice do Pre'#231'o de F'#225'brica'
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 162
    Width = 734
    Height = 41
    Align = alTop
    TabOrder = 2
    object bbImprimir: TBitBtn
      Left = 4
      Top = 2
      Width = 177
      Height = 37
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
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 543
      Top = 2
      Width = 177
      Height = 37
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
  end
  object RLReport1: TRLReport
    Left = -1
    Top = 208
    Width = 1123
    Height = 794
    DataSource = Src_CadAjPco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 73
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Degrade.Direction = ddVertical
      Degrade.OppositeColor = clOlive
      object lbl_razao: TRLLabel
        Left = 1
        Top = 1
        Width = 85
        Height = 23
        Align = faLeftTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 860
        Top = 1
        Width = 72
        Height = 23
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 932
        Top = 1
        Width = 51
        Height = 23
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 983
        Top = 1
        Width = 12
        Height = 23
        Alignment = taRightJustify
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 995
        Top = 1
        Width = 50
        Height = 23
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 25
        Width = 410
        Height = 23
        AutoSize = False
        Caption = 'Relat'#243'rio de Importa'#231#227'o de Produtos/Pre'#231'os.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data: TRLLabel
        Left = 860
        Top = 25
        Width = 186
        Height = 23
        AutoSize = False
        Caption = 'Data: 13/06/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_fornec: TRLLabel
        Left = 1
        Top = 48
        Width = 612
        Height = 23
        AutoSize = False
        Caption = 'Fornecedor: 0000-1234567890123456789012345678901234567890'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_lote: TRLLabel
        Left = 727
        Top = 48
        Width = 318
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = 'Lote 0020 - Data: 20/06/2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 111
      Width = 1047
      Height = 25
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLMemo1: TRLMemo
        Left = 2
        Top = 0
        Width = 66
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'C'#243'digo Produto'
          'no Fornecedor')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 69
        Top = 0
        Width = 66
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'C'#243'digo Produto'
          'Local')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 136
        Top = 0
        Width = 200
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ''
          'Descri'#231#227'o do Produto')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 337
        Top = 0
        Width = 162
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ''
          'Nome do Fabricante')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 500
        Top = 0
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o de F'#225'brica'
          'Anterior')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 574
        Top = 0
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o de F'#225'brica'
          'Atual')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 648
        Top = 0
        Width = 34
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '%'
          'Aum/Bx')
        ParentFont = False
      end
      object RLMemo8: TRLMemo
        Left = 681
        Top = 0
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o M'#225'ximo'
          'Anterior')
        ParentFont = False
      end
      object RLMemo9: TRLMemo
        Left = 755
        Top = 0
        Width = 72
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o M'#225'ximo'
          'Atual')
        ParentFont = False
      end
      object RLMemo10: TRLMemo
        Left = 827
        Top = 0
        Width = 36
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '%'
          'Aum/Bx')
        ParentFont = False
      end
      object RLMemo11: TRLMemo
        Left = 862
        Top = 0
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o M'#225'ximo'
          'Caixa Anterior')
        ParentFont = False
      end
      object RLMemo12: TRLMemo
        Left = 936
        Top = 0
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedRight = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pre'#231'o M'#225'ximo'
          'Caixa Atual')
        ParentFont = False
      end
      object RLMemo13: TRLMemo
        Left = 1010
        Top = 0
        Width = 34
        Height = 24
        Alignment = taCenter
        AutoSize = False
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
        Lines.Strings = (
          '%'
          'Aum/Bx')
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 136
      Width = 1047
      Height = 11
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object RLDBText1: TRLDBText
        Left = 2
        Top = 0
        Width = 66
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APCODPRO_FOR'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 69
        Top = -1
        Width = 66
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APCODPRO_LOCAL'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 136
        Top = 0
        Width = 200
        Height = 12
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APNOME'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 337
        Top = 0
        Width = 162
        Height = 12
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'nomfor_cod'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 501
        Top = 0
        Width = 73
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOFAB_ANT'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 575
        Top = 0
        Width = 73
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOFAB'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 649
        Top = 0
        Width = 33
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPERC_PCOFAB'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 682
        Top = 0
        Width = 73
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOMAX_ANT'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 755
        Top = 0
        Width = 72
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOMAX'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 829
        Top = 0
        Width = 33
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPERC_PCOMAX'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 862
        Top = 0
        Width = 74
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOMAX_CX_ANT'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 936
        Top = 0
        Width = 74
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'APPCOMAX_CX'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 1010
        Top = 0
        Width = 34
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'APPERC_PCOMAX_CX'
        DataSource = Src_CadAjPco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 147
      Width = 1047
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
    end
  end
  object Qr_CadAjPco: TQuery
    OnCalcFields = Qr_CadAjPcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADAJPCO')
    Left = 520
    Top = 16
    object Qr_CadAjPcoAPCODEMP: TFloatField
      FieldName = 'APCODEMP'
      Origin = 'SG_ASSOC.CADAJPCO.APCODEMP'
    end
    object Qr_CadAjPcoAPCODFOR: TFloatField
      FieldName = 'APCODFOR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFOR'
    end
    object Qr_CadAjPcoAPLOTE: TFloatField
      FieldName = 'APLOTE'
      Origin = 'SG_ASSOC.CADAJPCO.APLOTE'
    end
    object Qr_CadAjPcoAPDATA: TDateTimeField
      FieldName = 'APDATA'
      Origin = 'SG_ASSOC.CADAJPCO.APDATA'
    end
    object Qr_CadAjPcoAPCODPRO_FOR: TFloatField
      FieldName = 'APCODPRO_FOR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODPRO_FOR'
    end
    object Qr_CadAjPcoAPCODBAR: TFloatField
      FieldName = 'APCODBAR'
      Origin = 'SG_ASSOC.CADAJPCO.APCODBAR'
    end
    object Qr_CadAjPcoAPCODPRO_LOCAL: TFloatField
      FieldName = 'APCODPRO_LOCAL'
      Origin = 'SG_ASSOC.CADAJPCO.APCODPRO_LOCAL'
    end
    object Qr_CadAjPcoAPNOME: TStringField
      FieldName = 'APNOME'
      Origin = 'SG_ASSOC.CADAJPCO.APNOME'
      Size = 53
    end
    object Qr_CadAjPcoAPAPRES: TStringField
      FieldName = 'APAPRES'
      Origin = 'SG_ASSOC.CADAJPCO.APAPRES'
      Size = 45
    end
    object Qr_CadAjPcoAPCODFAB: TFloatField
      FieldName = 'APCODFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFAB'
    end
    object Qr_CadAjPcoAPNOMFAB: TStringField
      FieldName = 'APNOMFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMFAB'
      Size = 45
    end
    object Qr_CadAjPcoAPUND: TStringField
      FieldName = 'APUND'
      Origin = 'SG_ASSOC.CADAJPCO.APUND'
      Size = 3
    end
    object Qr_CadAjPcoAPEMBMUL: TFloatField
      FieldName = 'APEMBMUL'
      Origin = 'SG_ASSOC.CADAJPCO.APEMBMUL'
    end
    object Qr_CadAjPcoAPPCOFAB: TFloatField
      FieldName = 'APPCOFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB'
    end
    object Qr_CadAjPcoAPPCOMAX: TFloatField
      FieldName = 'APPCOMAX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX'
    end
    object Qr_CadAjPcoAPPCOVDA: TFloatField
      FieldName = 'APPCOVDA'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOVDA'
    end
    object Qr_CadAjPcoAPPCOFAB_CX: TFloatField
      FieldName = 'APPCOFAB_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_CX'
    end
    object Qr_CadAjPcoAPPCOMAX_CX: TFloatField
      FieldName = 'APPCOMAX_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_CX'
    end
    object Qr_CadAjPcoAPDTVIG: TDateTimeField
      FieldName = 'APDTVIG'
      Origin = 'SG_ASSOC.CADAJPCO.APDTVIG'
    end
    object Qr_CadAjPcoAPPERC_PCOFAB: TFloatField
      FieldName = 'APPERC_PCOFAB'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOFAB'
    end
    object Qr_CadAjPcoAPPERC_PCOMAX: TFloatField
      FieldName = 'APPERC_PCOMAX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOMAX'
    end
    object Qr_CadAjPcoAPPERC_PCOVDA: TFloatField
      FieldName = 'APPERC_PCOVDA'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOVDA'
    end
    object Qr_CadAjPcoAPPERC_PCOFAB_CX: TFloatField
      FieldName = 'APPERC_PCOFAB_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOFAB_CX'
    end
    object Qr_CadAjPcoAPPERC_PCOMAX_CX: TFloatField
      FieldName = 'APPERC_PCOMAX_CX'
      Origin = 'SG_ASSOC.CADAJPCO.APPERC_PCOMAX_CX'
    end
    object Qr_CadAjPcoAPCODGRU: TFloatField
      FieldName = 'APCODGRU'
      Origin = 'SG_ASSOC.CADAJPCO.APCODGRU'
    end
    object Qr_CadAjPcoAPNOMGRU: TStringField
      FieldName = 'APNOMGRU'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMGRU'
      Size = 30
    end
    object Qr_CadAjPcoAPCODCON: TFloatField
      FieldName = 'APCODCON'
      Origin = 'SG_ASSOC.CADAJPCO.APCODCON'
    end
    object Qr_CadAjPcoAPNOMCON: TStringField
      FieldName = 'APNOMCON'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMCON'
      Size = 30
    end
    object Qr_CadAjPcoAPCODRAM: TFloatField
      FieldName = 'APCODRAM'
      Origin = 'SG_ASSOC.CADAJPCO.APCODRAM'
    end
    object Qr_CadAjPcoAPNOMRAM: TStringField
      FieldName = 'APNOMRAM'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMRAM'
      Size = 30
    end
    object Qr_CadAjPcoAPCODTIP: TFloatField
      FieldName = 'APCODTIP'
      Origin = 'SG_ASSOC.CADAJPCO.APCODTIP'
    end
    object Qr_CadAjPcoAPNOMTIP: TStringField
      FieldName = 'APNOMTIP'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMTIP'
      Size = 30
    end
    object Qr_CadAjPcoAPLISTA: TFloatField
      FieldName = 'APLISTA'
      Origin = 'SG_ASSOC.CADAJPCO.APLISTA'
    end
    object Qr_CadAjPcoAPIPI: TFloatField
      FieldName = 'APIPI'
      Origin = 'SG_ASSOC.CADAJPCO.APIPI'
    end
    object Qr_CadAjPcoAPREGMS: TStringField
      FieldName = 'APREGMS'
      Origin = 'SG_ASSOC.CADAJPCO.APREGMS'
    end
    object Qr_CadAjPcoAPCLAS: TStringField
      FieldName = 'APCLAS'
      Origin = 'SG_ASSOC.CADAJPCO.APCLAS'
    end
    object Qr_CadAjPcoAPCODBAR_ANT: TFloatField
      FieldName = 'APCODBAR_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODBAR_ANT'
    end
    object Qr_CadAjPcoAPNOME_ANT: TStringField
      FieldName = 'APNOME_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOME_ANT'
      Size = 93
    end
    object Qr_CadAjPcoAPCODFAB_ANT: TFloatField
      FieldName = 'APCODFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODFAB_ANT'
    end
    object Qr_CadAjPcoAPNOMFAB_ANT: TStringField
      FieldName = 'APNOMFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMFAB_ANT'
      Size = 45
    end
    object Qr_CadAjPcoAPUND_ANT: TStringField
      FieldName = 'APUND_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APUND_ANT'
      Size = 3
    end
    object Qr_CadAjPcoAPEMBMUL_ANT: TFloatField
      FieldName = 'APEMBMUL_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APEMBMUL_ANT'
    end
    object Qr_CadAjPcoAPPCOFAB_ANT: TFloatField
      FieldName = 'APPCOFAB_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_ANT'
    end
    object Qr_CadAjPcoAPPCOMAX_ANT: TFloatField
      FieldName = 'APPCOMAX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_ANT'
    end
    object Qr_CadAjPcoAPPCOFAB_CX_ANT: TFloatField
      FieldName = 'APPCOFAB_CX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOFAB_CX_ANT'
    end
    object Qr_CadAjPcoAPCODGRU_ANT: TFloatField
      FieldName = 'APCODGRU_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODGRU_ANT'
    end
    object Qr_CadAjPcoAPNOMGRU_ANT: TStringField
      FieldName = 'APNOMGRU_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMGRU_ANT'
      Size = 30
    end
    object Qr_CadAjPcoAPCODCON_ANT: TFloatField
      FieldName = 'APCODCON_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODCON_ANT'
    end
    object Qr_CadAjPcoAPNOMCON_ANT: TStringField
      FieldName = 'APNOMCON_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMCON_ANT'
      Size = 30
    end
    object Qr_CadAjPcoAPCODRAM_ANT: TFloatField
      FieldName = 'APCODRAM_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODRAM_ANT'
    end
    object Qr_CadAjPcoAPNOMRAM_ANT: TStringField
      FieldName = 'APNOMRAM_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMRAM_ANT'
      Size = 30
    end
    object Qr_CadAjPcoAPCODTIP_ANT: TFloatField
      FieldName = 'APCODTIP_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCODTIP_ANT'
    end
    object Qr_CadAjPcoAPNOMTIP_ANT: TStringField
      FieldName = 'APNOMTIP_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMTIP_ANT'
      Size = 30
    end
    object Qr_CadAjPcoAPLISTA_ANT: TFloatField
      FieldName = 'APLISTA_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APLISTA_ANT'
    end
    object Qr_CadAjPcoAPIPI_ANT: TFloatField
      FieldName = 'APIPI_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APIPI_ANT'
    end
    object Qr_CadAjPcoAPREGMS_ANT: TStringField
      FieldName = 'APREGMS_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APREGMS_ANT'
    end
    object Qr_CadAjPcoAPCLAS_ANT: TStringField
      FieldName = 'APCLAS_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APCLAS_ANT'
    end
    object Qr_CadAjPcoAPSTATUS: TFloatField
      FieldName = 'APSTATUS'
      Origin = 'SG_ASSOC.CADAJPCO.APSTATUS'
    end
    object Qr_CadAjPcoAPNOMECOMP: TStringField
      FieldName = 'APNOMECOMP'
      Origin = 'SG_ASSOC.CADAJPCO.APNOMECOMP'
      Size = 53
    end
    object Qr_CadAjPcoAPPCOVDA_ANT: TFloatField
      FieldName = 'APPCOVDA_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOVDA_ANT'
    end
    object Qr_CadAjPconomfor_cod: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfor_cod'
      Size = 40
      Calculated = True
    end
    object Qr_CadAjPcoAPPCOMAX_CX_ANT: TFloatField
      FieldName = 'APPCOMAX_CX_ANT'
      Origin = 'SG_ASSOC.CADAJPCO.APPCOMAX_CX_ANT'
    end
    object Qr_CadAjPcoAPSITUACAO: TFloatField
      FieldName = 'APSITUACAO'
      Origin = 'SG_ASSOC.CADAJPCO.APSITUACAO'
    end
  end
  object Src_CadAjPco: TDataSource
    DataSet = Qr_CadAjPco
    Left = 552
    Top = 16
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 208
    Top = 240
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 352
    Top = 32
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 448
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 488
    Top = 24
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 472
    Top = 24
  end
end
