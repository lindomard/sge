object Frm_IndProFab: TFrm_IndProFab
  Left = 48
  Top = 160
  Width = 580
  Height = 500
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Produtos Fabricados em um determinado Per'#237'odo'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 564
    Height = 462
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Diversos'
      object lbl_cab: TLabel
        Left = 0
        Top = 0
        Width = 556
        Height = 34
        Align = alTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Produtos Fabricados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -30
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 96
        Top = 48
        Width = 68
        Height = 13
        Caption = 'Per'#237'odo  de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 282
        Top = 47
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
      object Label4: TLabel
        Left = 35
        Top = 85
        Width = 131
        Height = 13
        Caption = 'Pesquisar por Data de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 85
        Top = 66
        Width = 79
        Height = 13
        Caption = 'Chave Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 269
        Top = 67
        Width = 72
        Height = 13
        Caption = 'Chave Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 42
        Top = 106
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
      object Label7: TLabel
        Left = 116
        Top = 128
        Width = 46
        Height = 13
        Caption = 'Modelo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbSalvarPadrao: TSpeedButton
        Left = 189
        Top = 366
        Width = 150
        Height = 43
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
      object Label8: TLabel
        Left = 14
        Top = 205
        Width = 103
        Height = 13
        Caption = 'Produto Acabado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 30
        Top = 245
        Width = 87
        Height = 13
        Caption = 'Grupo Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 21
        Top = 285
        Width = 96
        Height = 13
        Caption = 'Tipo do Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 325
        Width = 113
        Height = 13
        Caption = 'Sub Grupo Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 34
        Top = 165
        Width = 82
        Height = 13
        Caption = 'Materia Prima:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MDT1: TMaskEdit
        Left = 170
        Top = 45
        Width = 81
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
        Left = 344
        Top = 45
        Width = 81
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object bbImprimir: TBitBtn
        Left = 21
        Top = 366
        Width = 150
        Height = 43
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bbsair: TBitBtn
        Left = 359
        Top = 366
        Width = 150
        Height = 43
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bbsairClick
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
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object CB_TPPESQ: TComboBox
        Left = 170
        Top = 81
        Width = 145
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Fabrica'#231#227'o'
        Items.Strings = (
          'Fabrica'#231#227'o'
          'Ordem de Produ'#231#227'o')
      end
      object CB_CONFIRMADO: TCheckBox
        Left = 344
        Top = 84
        Width = 161
        Height = 17
        Caption = 'Somente Confirmado'
        TabOrder = 5
      end
      object CHAVEI: TEdit
        Left = 170
        Top = 63
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CHAVEIExit
      end
      object CHAVEF: TEdit
        Left = 344
        Top = 63
        Width = 81
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = CHAVEFExit
      end
      object CB_ORDEM: TComboBox
        Left = 170
        Top = 102
        Width = 145
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 8
        Text = 'C'#243'digo do Produto'
        Items.Strings = (
          'C'#243'digo do Produto'
          'Descri'#231#227'o do Produto'
          'Padr'#227'o(sistema assume)')
      end
      object CB_MODELO: TComboBox
        Left = 170
        Top = 124
        Width = 145
        Height = 21
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'Modelo 01'
        Items.Strings = (
          'Modelo 01'
          'Modelo 02'
          'Modelo 03 (Separado por Lote)'
          'Modelo 04 (Sintetico Sub-Grupo)')
      end
      object CODPRO: TEdit
        Left = 117
        Top = 202
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 172
        Top = 202
        Width = 360
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 119
        Top = 222
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
      object edt_codgru: TEdit
        Left = 118
        Top = 242
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = edt_codgruExit
        OnKeyPress = edt_codgruKeyPress
      end
      object lbx_codgru: TListBox
        Left = 172
        Top = 242
        Width = 360
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 119
        Top = 261
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object edt_codtip: TEdit
        Left = 119
        Top = 282
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnExit = edt_codtipExit
        OnKeyPress = edt_codtipKeyPress
      end
      object lbx_codtip: TListBox
        Left = 172
        Top = 282
        Width = 360
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TIP: TCheckBox
        Left = 120
        Top = 302
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
      end
      object edt_codsgru: TEdit
        Left = 120
        Top = 321
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnExit = edt_codsgruExit
        OnKeyPress = edt_codsgruKeyPress
      end
      object lbx_codsgru: TListBox
        Left = 172
        Top = 321
        Width = 360
        Height = 37
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnKeyDown = lbx_codsgruKeyDown
      end
      object OMITIR_SGRU: TCheckBox
        Left = 119
        Top = 341
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
      end
      object lbx_codmat: TListBox
        Left = 172
        Top = 162
        Width = 360
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnKeyDown = lbx_codmatKeyDown
      end
      object CODMAT: TEdit
        Left = 117
        Top = 162
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnExit = CODMATExit
        OnKeyPress = CODMATKeyPress
      end
      object OMITIR_MAT: TCheckBox
        Left = 119
        Top = 181
        Width = 51
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
      end
    end
    object tsMod04: TTabSheet
      Caption = 'Modelo 004'
      ImageIndex = 1
      object rlModelo04: TRLReport
        Left = 16
        Top = 40
        Width = 794
        Height = 1123
        DataSource = Src_Mod04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBandM004_Cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 59
          BandType = btColumnHeader
          object lblmod04_nomemp: TRLLabel
            Left = 0
            Top = 0
            Width = 113
            Height = 16
            Align = faLeftTop
          end
          object lblmod04_dathor: TRLLabel
            Left = 619
            Top = 0
            Width = 99
            Height = 16
            Align = faRightTop
          end
          object RLLabel1: TRLLabel
            Left = 3
            Top = 19
            Width = 430
            Height = 16
            Caption = 'RELATORIO SINTETICO POR GRUPO DOS PRODUTOS FABRICADOS.'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 599
            Top = 19
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 681
            Top = 19
            Width = 33
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lblmod04_periodo: TRLLabel
            Left = 0
            Top = 43
            Width = 718
            Height = 16
            Align = faBottom
            Alignment = taCenter
          end
        end
        object rlmod04_cabdet: TRLBand
          Left = 38
          Top = 97
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object lblmod04cab_codsg: TRLLabel
            Left = 4
            Top = 1
            Width = 66
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Sub-Grupo'
          end
          object lblmod04cab_nomsg: TRLLabel
            Left = 71
            Top = 2
            Width = 282
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Nome'
          end
          object lblmod04cab_qtdprod: TRLLabel
            Left = 353
            Top = 1
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.Produzida'
          end
          object lblmod04cab_totfab: TRLLabel
            Left = 474
            Top = 1
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total P'#231'o Fab'
          end
          object lblmod04cab_totcus: TRLLabel
            Left = 596
            Top = 1
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Pre'#231'o Custo'
          end
        end
        object RLMod04_det: TRLBand
          Left = 38
          Top = 113
          Width = 718
          Height = 17
          AfterPrint = RLMod04_detAfterPrint
          object txtmod04cab_codsg: TRLDBText
            Left = 4
            Top = 1
            Width = 66
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RCODRAM'
            DataSource = Src_Mod04
            Holder = lblmod04cab_codsg
          end
          object txtmod04cab_nomsg: TRLDBText
            Left = 71
            Top = 1
            Width = 282
            Height = 16
            AutoSize = False
            DataField = 'RNOME'
            DataSource = Src_Mod04
            Holder = lblmod04cab_nomsg
          end
          object txtmod04cab_qtdprod: TRLDBText
            Left = 353
            Top = 1
            Width = 120
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OP2_QTDPROD'
            DataSource = Src_Mod04
            Holder = lblmod04cab_qtdprod
          end
          object txtmod04cab_totfab: TRLDBText
            Left = 474
            Top = 1
            Width = 120
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OP2_VLRFABPROD'
            DataSource = Src_Mod04
            Holder = lblmod04cab_totfab
          end
          object txtmod04cab_totcus: TRLDBText
            Left = 596
            Top = 1
            Width = 120
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'OP2_VLRCUSPROD'
            DataSource = Src_Mod04
            Holder = lblmod04cab_totcus
          end
        end
        object rlmod04_sum: TRLBand
          Left = 38
          Top = 130
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = rlmod04_sumBeforePrint
          object totmod04cab_codsg: TRLLabel
            Left = 4
            Top = 0
            Width = 66
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Sub-Grupo'
          end
          object totmod04cab_nomsg: TRLLabel
            Left = 71
            Top = 0
            Width = 282
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Nome'
          end
          object totmod04cab_qtdprod: TRLLabel
            Left = 353
            Top = 0
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.Produzida'
          end
          object totmod04cab_totfab: TRLLabel
            Left = 474
            Top = 0
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total P'#231'o Fab'
          end
          object totmod04cab_totcus: TRLLabel
            Left = 596
            Top = 0
            Width = 120
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total Pre'#231'o Custo'
          end
        end
        object rlmod04_rod: TRLBand
          Left = 38
          Top = 146
          Width = 718
          Height = 16
          BandType = btFooter
        end
      end
    end
  end
  object Qr_OP02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select sum(OP2_QTDPROD) as OP2_QTDPROD,sum(OP2_QTDPREV) as OP2_Q' +
        'TDPREV,'
      'sum(OP1_STATUS) AS OP1_STATUS'
      
        ',sum(OP2_PU*OP2_QTDPREV) as VLRPREV,        sum(OP2_PU*OP2_QTDPR' +
        'OD) as VLRPROD,'
      
        'OP2_CODPRO,OP2_NUMERO, PDNOME, OP1_LOTE, OP1_DATAVEN,PDUND,PDTEM' +
        'POFAB,PDPESOL        '
      ' ,sum(OP2_QTDPREV*PDTEMPOFAB) as TEMPOPREV'
      
        ' ,sum(DECODE(OP1_STATUS,2,(OP2_QTDPREV-OP2_QTDPROD),0)) as QTDPE' +
        'RDAS'
      ' ,sum(OP2_QTDPREV*PDPESOL) as PESOLPREV    '
      
        '           ,sum(DECODE(OP1_STATUS,1,(OP2_QTDPROD*PDTEMPOFAB),0))' +
        ' as TEMPOPROD       '
      
        ' ,sum(DECODE(OP1_STATUS,1,(OP2_QTDPROD*PDPESOL),0)) as PESOPROD ' +
        '      '
      
        '  ,sum(DECODE(OP1_STATUS,1,(OP2_QTDPREV*PDTEMPOFAB),0)) as PRODU' +
        'ZIDO    '
      
        '      ,count(*) as QUANTIDADE        from CADOP01,CADOP02,CADPRO' +
        ' '
      
        '             where  OP2_LOTSEQ=OP1_LOTSEQ  and   OP2_FABENV=OP1_' +
        'FABENV '
      
        '              and   OP2_CODIGO=OP1_CODIGO  and PDCODPRO=OP2_CODP' +
        'RO  and OP1_STATUS<9'
      ' and OP1_FABENV<>2'
      
        ' group by  OP2_CODPRO,OP2_NUMERO, PDNOME,OP1_LOTE, OP1_DATAVEN, ' +
        'PDUND,PDTEMPOFAB,PDPESOL '
      ' order by OP2_CODPRO,OP2_NUMERO')
    Left = 24
    Top = 48
    object Qr_OP02OP2_QTDPROD: TFloatField
      FieldName = 'OP2_QTDPROD'
    end
    object Qr_OP02OP2_QTDPREV: TFloatField
      FieldName = 'OP2_QTDPREV'
    end
    object Qr_OP02VLRPREV: TFloatField
      FieldName = 'VLRPREV'
    end
    object Qr_OP02VLRPROD: TFloatField
      FieldName = 'VLRPROD'
    end
    object Qr_OP02OP2_CODPRO: TFloatField
      FieldName = 'OP2_CODPRO'
    end
    object Qr_OP02OP2_NUMERO: TStringField
      FieldName = 'OP2_NUMERO'
    end
    object Qr_OP02PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_OP02PDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_OP02PDTEMPOFAB: TFloatField
      FieldName = 'PDTEMPOFAB'
    end
    object Qr_OP02PDPESOL: TFloatField
      FieldName = 'PDPESOL'
    end
    object Qr_OP02TEMPOPREV: TFloatField
      FieldName = 'TEMPOPREV'
    end
    object Qr_OP02PESOLPREV: TFloatField
      FieldName = 'PESOLPREV'
    end
    object Qr_OP02TEMPOPROD: TFloatField
      FieldName = 'TEMPOPROD'
    end
    object Qr_OP02PESOPROD: TFloatField
      FieldName = 'PESOPROD'
    end
    object Qr_OP02PRODUZIDO: TFloatField
      FieldName = 'PRODUZIDO'
    end
    object Qr_OP02QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object Qr_OP02QTDPERDAS: TFloatField
      FieldName = 'QTDPERDAS'
    end
    object Qr_OP02OP1_STATUS: TFloatField
      FieldName = 'OP1_STATUS'
    end
    object Qr_OP02OP1_LOTE: TStringField
      FieldName = 'OP1_LOTE'
    end
    object Qr_OP02OP1_DATAVEN: TDateTimeField
      FieldName = 'OP1_DATAVEN'
    end
  end
  object Qr_Mod04: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(DECODE(OP1_STATUS,2,OP2_QTDPROD,0)) as OP2_QTDPROD'
      ',sum(OP2_QTDPREV) as OP2_QTDPREV'
      ',sum(ROUND((PDPCOFAB*OP2_QTDPREV),2)) as VLRFABPREV'
      
        ',sum(DECODE(OP1_STATUS,2,ROUND( (PDPCOFAB*OP2_QTDPROD),2),0)) as' +
        ' OP2_VLRFABPROD     '
      ',sum(ROUND((PDPRECOC*OP2_QTDPREV),2)) as VLRCUSPREV'
      
        ',sum(DECODE(OP1_STATUS,2,ROUND( (PDPRECOC*OP2_QTDPROD),2),0)) as' +
        ' OP2_VLRCUSPROD     '
      ''
      ''
      ' ,count(*) as QUANTIDADE '
      ' , RCODRAM,RNOME         '
      ' '
      ' from CADOP01,CADOP02,CADOP03,CADPRO,CADRAM'
      
        '  where  OP2_LOTSEQ=OP1_LOTSEQ and OP3_LOTSEQ=OP1_LOTSEQ  and OP' +
        '2_FABENV=OP1_FABENV  and OP3_FABENV=OP1_FABENV  and OP2_CODIGO=O' +
        'P1_CODIGO and OP3_CODIGO=OP1_CODIGO  and PDCODPRO=OP2_CODPRO  an' +
        'd OP1_STATUS<9'
      '  AND RCODRAM(+)=PDCODRAM'
      ' and OP1_FABENV<>2'
      ' group by  RNOME,RCODRAM'
      ' order by RNOME,RCODRAM')
    Left = 520
    Top = 104
    object Qr_Mod04OP2_QTDPROD: TFloatField
      FieldName = 'OP2_QTDPROD'
    end
    object Qr_Mod04OP2_QTDPREV: TFloatField
      FieldName = 'OP2_QTDPREV'
    end
    object Qr_Mod04VLRFABPREV: TFloatField
      FieldName = 'VLRFABPREV'
    end
    object Qr_Mod04OP2_VLRFABPROD: TFloatField
      FieldName = 'OP2_VLRFABPROD'
    end
    object Qr_Mod04VLRCUSPREV: TFloatField
      FieldName = 'VLRCUSPREV'
    end
    object Qr_Mod04OP2_VLRCUSPROD: TFloatField
      FieldName = 'OP2_VLRCUSPROD'
    end
    object Qr_Mod04QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object Qr_Mod04RCODRAM: TFloatField
      FieldName = 'RCODRAM'
    end
    object Qr_Mod04RNOME: TStringField
      FieldName = 'RNOME'
      Size = 30
    end
  end
  object Src_Mod04: TDataSource
    DataSet = Qr_Mod04
    Left = 552
    Top = 104
  end
end
