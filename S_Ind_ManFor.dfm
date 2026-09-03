object Frm_Ind_ManFor: TFrm_Ind_ManFor
  Left = 68
  Top = 34
  Width = 774
  Height = 458
  ActiveControl = CODPRO
  Caption = 'Manipula'#231#227'o das Formulas dos Produtos'
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
    Top = 0
    Width = 758
    Height = 55
    Align = alTop
    TabOrder = 0
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 40
      Top = 12
      Width = 76
      Height = 13
      Caption = 'C'#243'digo Produto:'
    end
    object Label6: TLabel
      Left = 7
      Top = 30
      Width = 110
      Height = 13
      Caption = 'Medida em Litros/Kilos:'
    end
    object CODPRO: TEdit
      Left = 119
      Top = 8
      Width = 101
      Height = 19
      Hint = 
        'C'#243'digo do Produto Interm'#233'diario/Em Produ'#231#227'o'#13#10'ou seja o Codigo do' +
        ' Produto Bruto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = CODPROChange
      OnEnter = CODPROEnter
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 219
      Top = 8
      Width = 301
      Height = 19
      Color = 12582911
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object bbMetodos: TBitBtn
      Left = 622
      Top = 3
      Width = 70
      Height = 25
      Hint = 'Click aqui para Atualizar os'#13#10'm'#233'todos de Produ'#231#227'o do'#13#10'Produto'
      Caption = 'M'#233'todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbMetodosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbFechar: TBitBtn
      Left = 692
      Top = 3
      Width = 70
      Height = 25
      Hint = 'Click aqui para Sair desta Op'#231#227'o'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbFecharClick
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
    object UNDMED: TEdit
      Left = 119
      Top = 26
      Width = 52
      Height = 19
      Hint = 
        'digite aqui a medida do '#13#10'produto em kilos ou gramas'#13#10'Exemplo p/' +
        '50 gramas 0,050'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnChange = UNDMEDChange
      OnExit = UNDMEDExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 379
    Width = 758
    Height = 41
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 672
      Height = 39
      DataSource = Src_Comp
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro'
        'Inserir'
        'Excluir'
        'Alterar'
        'Gravar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object bbImprmir: TBitBtn
      Left = 672
      Top = 1
      Width = 92
      Height = 39
      Hint = 'Click Aqui para Imprimir'#13#10'a Formula do Produto'
      Caption = 'Imprimir Formula'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbImprmirClick
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 758
    Height = 252
    Align = alClient
    DataSource = Src_Comp
    Enabled = False
    FixedColor = 12582911
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColExit = DBGrid1ColExit
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CPCODMAT'
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPCODPRO_ACAB'
        Title.Alignment = taCenter
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 241
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPQUANT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPPERCENT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPPERCENT_REST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'observacao'
        Visible = True
      end>
  end
  object Panel5: TPanel
    Left = 0
    Top = 55
    Width = 758
    Height = 27
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 129
      Top = 7
      Width = 101
      Height = 13
      Caption = 'Totais: Unidades:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 319
      Top = 7
      Width = 33
      Height = 13
      Caption = #205'tens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 587
      Top = 7
      Width = 82
      Height = 13
      Caption = 'Total Formula:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 412
      Top = 7
      Width = 75
      Height = 13
      Caption = 'Icms Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SbAtualizaMatPrim: TSpeedButton
      Left = 6
      Top = 3
      Width = 108
      Height = 22
      Hint = 'Atualiza os Pre'#231'os das'#13#10'Mat'#233'rias Primas'
      Caption = '&Atualizar Pre'#231'os'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SbAtualizaMatPrimClick
    end
    object QTDU: TEdit
      Left = 233
      Top = 3
      Width = 82
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 0
    end
    object QTDIT: TEdit
      Left = 354
      Top = 3
      Width = 55
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
    end
    object TOTAL: TEdit
      Left = 672
      Top = 3
      Width = 92
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
    end
    object TOTICMSCRED: TEdit
      Left = 491
      Top = 3
      Width = 92
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
    end
  end
  object RLReport1: TRLReport
    Left = -20
    Top = 425
    Width = 794
    Height = 945
    DataSource = Src_Formula
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 3.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 250.000000000000000000
    Visible = False
    BeforePrint = RLReport1BeforePrint
    object RLBand3: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 20
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object lbl_rodape: TRLLabel
        Left = 692
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 61
      Width = 718
      Height = 116
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataFields = 'CPCODPRO'
      object band_cab: TRLBand
        Left = 1
        Top = 16
        Width = 716
        Height = 26
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object lbl_cabdat: TRLMemo
          Left = 1
          Top = 0
          Width = 58
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            'C'#243'digo')
          ParentFont = False
        end
        object lbl_cabdesc: TRLMemo
          Left = 58
          Top = 1
          Width = 328
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            'Descri'#231#227'o')
          ParentFont = False
        end
        object lbl_cabQtd: TRLMemo
          Left = 442
          Top = 1
          Width = 70
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            'Quantidade')
          ParentFont = False
        end
        object lbl_cabPerc: TRLMemo
          Left = 510
          Top = 1
          Width = 70
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            '%')
          ParentFont = False
        end
        object lbl_cabPu: TRLMemo
          Left = 578
          Top = 1
          Width = 70
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            'Pre'#231'o'
            'Unit'#225'rio')
          ParentFont = False
        end
        object lbl_cabacum: TRLMemo
          Left = 647
          Top = 1
          Width = 70
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
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            'Valor '
            'Total')
          ParentFont = False
        end
        object lbl_cabUnd: TRLMemo
          Left = 387
          Top = 1
          Width = 54
          Height = 24
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Lines.Strings = (
            ''
            'Und')
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 1
        Top = 42
        Width = 716
        Height = 10
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand4BeforePrint
        object db_datpesq: TRLDBText
          Left = 1
          Top = 0
          Width = 58
          Height = 10
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CPCODMAT'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabdat
          ParentFont = False
        end
        object db_descmv: TRLDBText
          Left = 58
          Top = 0
          Width = 328
          Height = 10
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'nome_mp'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabdesc
          ParentFont = False
        end
        object db_numdoc: TRLDBText
          Left = 442
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'qtd_mp'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabQtd
          ParentFont = False
        end
        object db_deb: TRLDBText
          Left = 510
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CPPERCENT_REST'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabPerc
          ParentFont = False
        end
        object db_cred: TRLDBText
          Left = 578
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CPPU'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabPu
          ParentFont = False
        end
        object db_codigo: TRLDBText
          Left = 387
          Top = 0
          Width = 54
          Height = 10
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'und_mp'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabUnd
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 647
          Top = -1
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'total_mp'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lbl_cabacum
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 1
        Top = 52
        Width = 716
        Height = 11
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand6BeforePrint
        object lbl_espaco05: TRLLabel
          Left = 1
          Top = 0
          Width = 58
          Height = 13
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabdat
          ParentFont = False
        end
        object lbl_total: TRLLabel
          Left = 58
          Top = 0
          Width = 328
          Height = 10
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 
            'Total...........................................................' +
            '.........................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabdesc
          ParentFont = False
        end
        object lbl_quantidade: TRLLabel
          Left = 442
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = '   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabQtd
          ParentFont = False
        end
        object lbl_totperc: TRLLabel
          Left = 510
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabPerc
          ParentFont = False
        end
        object lbl_totcred_gru: TRLLabel
          Left = 578
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabPu
          ParentFont = False
        end
        object lbl_totalmp: TRLLabel
          Left = 647
          Top = 0
          Width = 70
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabacum
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 387
          Top = 1
          Width = 54
          Height = 9
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = '   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Holder = lbl_cabUnd
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 1
        Top = 0
        Width = 716
        Height = 16
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel2: TRLLabel
          Left = 9
          Top = 0
          Width = 51
          Height = 16
          Caption = 'Formula'
        end
        object RLDBText2: TRLDBText
          Left = 65
          Top = 0
          Width = 78
          Height = 16
          DataField = 'CPCODPRO'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 146
          Top = 0
          Width = 81
          Height = 16
          DataField = 'nomformula'
          DataSource = Src_Formula
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object rl_proced: TRLBand
        Left = 1
        Top = 63
        Width = 716
        Height = 19
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object lbl_nomproc: TRLLabel
          Left = 5
          Top = 0
          Width = 97
          Height = 16
          Caption = 'Procedimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 1
        Top = 82
        Width = 716
        Height = 20
        AutoSize = True
        BandType = btSummary
        object texto: TRLRichText
          Left = 0
          Top = 0
          Width = 716
          Height = 20
          Align = faBottom
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 11
      Width = 718
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
        Left = 573
        Top = 1
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 632
        Top = 0
        Width = 84
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
      object lbl_titulo02: TRLLabel
        Left = 0
        Top = 17
        Width = 118
        Height = 16
        Caption = 'Fomula do Produto.'
      end
      object lbl_periodo: TRLLabel
        Left = 161
        Top = 17
        Width = 392
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel3: TRLLabel
        Left = 572
        Top = 18
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 632
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
        Caption = 'Formula de Produto'
        Color = 16766935
        ParentColor = False
        Transparent = False
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 334
    Width = 758
    Height = 45
    Align = alBottom
    Caption = 'Produto a Ser Envasado:'
    TabOrder = 5
    object DBE_codpro: TDBEdit
      Left = 10
      Top = 17
      Width = 121
      Height = 19
      Color = 14342838
      Ctl3D = False
      DataField = 'CPCODPRO_ACAB'
      DataSource = Src_Comp
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 130
      Top = 17
      Width = 615
      Height = 19
      Color = 14342838
      Ctl3D = False
      DataField = 'prodenvase'
      DataSource = Src_Comp
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Src_Comp: TDataSource
    DataSet = Tb_Comp
    Left = 285
    Top = 169
  end
  object U_Comp: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      
        '  (CPCODEMP, CPORDEM, CPCODPRO, CPNUMERO, CPCODMAT, CPCODPRO_ACA' +
        'B, CPMPNUM, '
      
        '   CPQUANT, CPPU, CPVLRINC, CPALIQORI, CPALICMSCRED, CPICMSCRED,' +
        ' CPTIPO, '
      '   CPQTD_PAD, CPPERCENT, CPPERCENT_REST)'
      'values'
      
        '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPNUMERO, :CPCODMAT, :CPCODP' +
        'RO_ACAB, '
      
        '   :CPMPNUM, :CPQUANT, :CPPU, :CPVLRINC, :CPALIQORI, :CPALICMSCR' +
        'ED, :CPICMSCRED, '
      '   :CPTIPO, :CPQTD_PAD, :CPPERCENT, :CPPERCENT_REST)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT')
    Left = 315
    Top = 169
  end
  object Qr_Formula: TQuery
    OnCalcFields = Qr_FormulaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,CPORDEM,CPCODPRO,'
      'CPCODMAT,CPQUANT,CPPU,CPNUMERO,CPMPNUM,'
      'CPCODPRO_ACAB,CPALICMSCRED,CPICMSCRED,'
      'CPVLRINC,CPALIQORI,CPPERCENT,CPPERCENT_REST'
      'from CADCOMP'
      'where CPCODEMP like :CODEMP'
      'and     CPCODPRO like :CODPRO'
      'and     CPCODPRO_ACAB like :CODPRO_ACAB')
    Left = 408
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO_ACAB'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_FormulaCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Qr_FormulaCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Qr_FormulaCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Qr_FormulaCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Qr_FormulaCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Qr_FormulaCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Qr_FormulaCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Qr_FormulaCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Qr_FormulaCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Qr_FormulaCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Qr_FormulaCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Qr_FormulaCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Qr_FormulaCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Qr_FormulaCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Qr_FormulaCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Qr_Formulanomformula: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomformula'
      Size = 53
      Calculated = True
    end
    object Qr_Formulanome_mp: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome_mp'
      Size = 53
      Calculated = True
    end
    object Qr_Formulaund_mp: TStringField
      FieldKind = fkCalculated
      FieldName = 'und_mp'
      Size = 3
      Calculated = True
    end
    object Qr_Formulaqtd_mp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtd_mp'
      Calculated = True
    end
    object Qr_Formulatotal_mp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_mp'
      Calculated = True
    end
  end
  object Src_Formula: TDataSource
    DataSet = Qr_Formula
    Left = 456
    Top = 168
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 712
    Top = 188
  end
  object RLDraftFilter1: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 560
    Top = 152
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 632
    Top = 176
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 640
    Top = 184
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 696
    Top = 160
  end
  object Tb_Comp: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CompAfterInsert
    BeforeEdit = Tb_CompBeforeEdit
    AfterEdit = Tb_CompAfterEdit
    BeforePost = Tb_CompBeforePost
    AfterPost = c
    AfterCancel = Tb_CompAfterCancel
    BeforeDelete = Tb_CompBeforeDelete
    AfterDelete = c
    OnCalcFields = Tb_CompCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPNUMERO,'
      '       CPCODMAT,'
      '       CPCODPRO_ACAB,'
      '       CPMPNUM,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       PDNOME,'
      '       PDUND'
      ' from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPCODPRO like :CODPRO'
      'AND PDCODPRO=CPCODPRO')
    UpdateObject = U_Comp
    Left = 256
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODPRO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CompCPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_CompCPORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_CompCPCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produzir'
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_CompCPCODMAT: TFloatField
      DisplayLabel = 'Cod.M'#225't.Prima'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_CompCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_CompCPPU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_CompCPNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_CompCPMPNUM: TStringField
      DisplayLabel = 'N'#250'mero MP'
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_CompCPCODPRO_ACAB: TFloatField
      DisplayLabel = 'C'#243'd.Acabado'
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_CompCPALICMSCRED: TFloatField
      DisplayLabel = 'Aliq.Icms'
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_CompCPICMSCRED: TFloatField
      DisplayLabel = 'Icms Credito'
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_CompCPVLRINC: TFloatField
      DisplayLabel = 'Vlr.Inc.'
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_CompCPALIQORI: TFloatField
      DisplayLabel = 'Aliq.Origem'
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comptotal: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comptotalliq: TFloatField
      DisplayLabel = 'Total Liq'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Tb_CompCPPERCENT: TFloatField
      DisplayLabel = '%'
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_CompCPPERCENT_REST: TFloatField
      DisplayLabel = '% Restante'
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_CompCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_CompCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_CompPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_CompPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Compobservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacao'
      Calculated = True
    end
    object Tb_Compprodenvase: TStringField
      FieldKind = fkCalculated
      FieldName = 'prodenvase'
      Size = 53
      Calculated = True
    end
  end
end
