object Frm_IndEnv_Fab_Etapas: TFrm_IndEnv_Fab_Etapas
  Left = 192
  Top = 124
  Width = 998
  Height = 480
  Caption = 'Manuten'#231#227'o Em Ordem de Produ'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 26
    Align = alTop
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 1
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Ordem de Produ'#231#227'o'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBINCLUIRClick
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
    object BBLOCALIZAR: TBitBtn
      Left = 79
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Localizar Outras Chaves'
      Caption = 'Locali&zar'
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 157
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Alterar o Registro Selecionado'
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 235
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Gravar o registro que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object BBLIMPAR: TBitBtn
      Left = 313
      Top = 0
      Width = 93
      Height = 26
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BBIMPRIMIR: TBitBtn
      Left = 406
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Visualizar Ordem de Produ'#231#227'o'
      Caption = 'Visualiza'
      Enabled = False
      TabOrder = 5
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
    object BBCONFIRMAR: TBitBtn
      Left = 484
      Top = 0
      Width = 80
      Height = 26
      Cursor = crHandPoint
      Hint = 'Confirmar a Produ'#231#227'o '
      Caption = '&Confirmar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 564
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Excluir Ordem de Produ'#231#227'o ja existentes'
      Caption = 'Excl&uir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
    end
    object BBSAIR: TBitBtn
      Left = 642
      Top = 0
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object bb_materia_prima: TBitBtn
      Left = 721
      Top = 2
      Width = 142
      Height = 24
      Cursor = crHandPoint
      Hint = 'Baixar Material'
      Caption = '&Baixar Material'
      DragCursor = crHelp
      Enabled = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 9
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000555
        55555555008880055555555088CCC880555555508C888C8055555508CCCCCCC8
        05555508CECCCCC805555508CEECCCC8055555508C444C805555555088FFF880
        5555555508FFF80555555555508F805555555555508F805555555555508F8055
        55555555508F8055555555550888880555555555500000555555}
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 408
    Width = 990
    Height = 41
    Align = alBottom
    TabOrder = 1
    object StaticText10: TStaticText
      Left = 3
      Top = 1
      Width = 171
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Totais: Mat'#233'rias Primas: Und:'
      Color = 8454016
      ParentColor = False
      TabOrder = 0
    end
    object st_totmpund: TStaticText
      Left = 174
      Top = 1
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 8454016
      ParentColor = False
      TabOrder = 1
    end
    object StaticText11: TStaticText
      Left = 250
      Top = 1
      Width = 23
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Vlr:'
      Color = 8454016
      ParentColor = False
      TabOrder = 2
    end
    object st_totmpvlr: TStaticText
      Left = 274
      Top = 1
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 8454016
      ParentColor = False
      TabOrder = 3
    end
    object StaticText12: TStaticText
      Left = 375
      Top = 2
      Width = 121
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Mat'#233'rial Embalagem:'
      Color = 7124735
      ParentColor = False
      TabOrder = 4
    end
    object st_totmeund: TStaticText
      Left = 499
      Top = 2
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 7124735
      ParentColor = False
      TabOrder = 5
    end
    object StaticText14: TStaticText
      Left = 577
      Top = 2
      Width = 23
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Vlr:'
      Color = 7124735
      ParentColor = False
      TabOrder = 6
    end
    object st_totmevlr: TStaticText
      Left = 601
      Top = 2
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 7124735
      ParentColor = False
      TabOrder = 7
    end
    object StaticText13: TStaticText
      Left = 175
      Top = 21
      Width = 171
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Totais: Mat'#233'rias Primas: Und:'
      Color = 16744448
      ParentColor = False
      TabOrder = 8
    end
    object st_totgerund: TStaticText
      Left = 346
      Top = 21
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16744448
      ParentColor = False
      TabOrder = 9
    end
    object StaticText16: TStaticText
      Left = 422
      Top = 21
      Width = 23
      Height = 17
      BorderStyle = sbsSunken
      Caption = 'Vlr:'
      Color = 16744448
      ParentColor = False
      TabOrder = 10
    end
    object st_totgervlr: TStaticText
      Left = 446
      Top = 21
      Width = 76
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16744448
      ParentColor = False
      TabOrder = 11
    end
  end
  object Panel_chave: TPanel
    Left = 0
    Top = 26
    Width = 990
    Height = 47
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 79
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Chave:'
    end
    object Label2: TLabel
      Left = 259
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 109
      Height = 13
      Caption = 'N'#250'mero de Etapas:'
    end
    object Label4: TLabel
      Left = 219
      Top = 27
      Width = 71
      Height = 13
      Caption = 'Etapa Ativa:'
    end
    object edt_chave: TEdit
      Left = 126
      Top = 7
      Width = 83
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object status: TStaticText
      Left = 440
      Top = 6
      Width = 305
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object edt_datfab: TDateEdit
      Left = 296
      Top = 5
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object cb_qtdetapas: TSpinEdit
      Left = 126
      Top = 25
      Width = 43
      Height = 22
      Ctl3D = False
      MaxValue = 50
      MinValue = 1
      ParentCtl3D = False
      TabOrder = 3
      Value = 1
      OnExit = cb_qtdetapasExit
    end
    object CB_ETAPA_ATIVA: TComboBox
      Left = 296
      Top = 24
      Width = 273
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Etapa 01'
      OnClick = CB_ETAPA_ATIVAClick
      Items.Strings = (
        'Etapa 01'
        'Etapa 02'
        'Etapa 03'
        'Etapa 04'
        'Etapa 05'
        'Etapa 06'
        'Etapa 07'
        'Etapa 08'
        'Etapa 09'
        'Etapa 10'
        'Etapa 11'
        'Etapa 12'
        'Etapa 13'
        'Etapa 14'
        'Etapa 15'
        'Etapa 16'
        'Etapa 17'
        'Etapa 18'
        'Etapa 19'
        'Etapa 20'
        'Etapa 21'
        'Etapa 22'
        'Etapa 23'
        'Etapa 24'
        'Etapa 25'
        'Etapa 26'
        'Etapa 27'
        'Etapa 28'
        'Etapa 29'
        'Etapa 30'
        'Etapa 31'
        'Etapa 32'
        'Etapa 33'
        'Etapa 34'
        'Etapa 35'
        'Etapa 36'
        'Etapa 37'
        'Etapa 38'
        'Etapa 39'
        'Etapa 40'
        'Etapa 41'
        'Etapa 42'
        'Etapa 43'
        'Etapa 44'
        'Etapa 45'
        'Etapa 46'
        'Etapa 47'
        'Etapa 48'
        'Etapa 49'
        'Etapa 50')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 159
    Width = 990
    Height = 249
    ActivePage = ts_mp
    Align = alClient
    TabOrder = 3
    object ts_mp: TTabSheet
      Caption = 'Mat'#233'rias Primas'
      object DBGrid_mp: TDBGrid
        Left = 0
        Top = 0
        Width = 982
        Height = 221
        Align = alClient
        DataSource = Src_Op03_MP
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'OP3_CODMAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_QTDPREV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_QTDUTIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_PU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_DTVCTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OP3_LOTE_RE'
            Visible = True
          end>
      end
    end
    object tsEmb: TTabSheet
      Caption = 'Materias de Embalagens'
      ImageIndex = 1
    end
    object tsProcessos: TTabSheet
      Caption = 'Prtocessos Gerais'
      ImageIndex = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 990
    Height = 86
    Align = alTop
    Color = 8454016
    TabOrder = 4
    object lbl_etapa: TLabel
      Left = 1
      Top = 1
      Width = 988
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'ETAPA 01'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 68
      Top = 25
      Width = 49
      Height = 13
      Caption = 'Produto:'
    end
    object Label7: TLabel
      Left = 5
      Top = 43
      Width = 117
      Height = 13
      Caption = 'Quantidade Teorica:'
    end
    object Label8: TLabel
      Left = 354
      Top = 43
      Width = 130
      Height = 13
      Caption = 'Quantidade Produzida:'
    end
    object Label9: TLabel
      Left = 70
      Top = 64
      Width = 54
      Height = 13
      Caption = 'Validade:'
    end
    object Label10: TLabel
      Left = 171
      Top = 64
      Width = 42
      Height = 13
      Caption = 'm'#234's/es'
    end
    object Label11: TLabel
      Left = 223
      Top = 64
      Width = 95
      Height = 13
      Caption = 'N'#250'mero do Lote:'
    end
    object Label12: TLabel
      Left = 415
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
    end
    object edt_CODPRO: TEdit
      Left = 126
      Top = 20
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_CODPROExit
    end
    object CB_NOMPRO: TComboBox
      Left = 208
      Top = 20
      Width = 487
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Color = 12582911
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 1
      TabStop = False
      Text = 'CB_NOMPRO'
    end
    object edt_QTDPREV: TEdit
      Left = 126
      Top = 40
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edt_QTDPROD: TEdit
      Left = 489
      Top = 40
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object edt_PRAZOVAL: TEdit
      Left = 126
      Top = 60
      Width = 39
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_PRAZOVALExit
    end
    object edt_MNUMLOT: TEdit
      Left = 320
      Top = 60
      Width = 83
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object edt_dtvcto: TDateEdit
      Left = 489
      Top = 60
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
  end
  object src_mp: TDataSource
    DataSet = mem_op03_mp
    Left = 540
    Top = 153
  end
  object Qr_Comp_MP: TQuery
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
      '       max(PDNOME) as PDNOME,'
      '       max(PDNOME2) as PDNOME2,'
      '       max(PDUND) as PDUND'
      '       ,sum(OP3_QTDPREV) as OP3_QTDPREV'
      '       ,sum(OP3_QTDUTIL) as OP3_QTDUTIL'
      '       ,max(OP3_PU)      as OP3_PU'
      '       ,max(OP3_LOTE)    as OP3_LOTE'
      '       ,max(OP3_DTVCTO)  as OP3_DTVCTO'
      '      ,max(OP3_LOTE_RE) as OP3_LOTE_RE'
      '       from CADCOMP,CADPRO,CADOP03 where'
      '            CPCODEMP=01 and PDCODEMP=CPCODEMP and'
      '            PDCODPRO=CPCODMAT and (CPTIPO=0 or CPTIPO is null)'
      '            and CPCODPRO=01'
      '            and OP3_CODMAT=CPCODPRO'
      '       Group by CPCODEMP,'
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
      '       CPPERCENT_REST'
      '       ORDER BY CPCODPRO_ACAB,CPORDEM'
      '')
    Left = 254
    Top = 109
    object Qr_Comp_MPCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Qr_Comp_MPCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Qr_Comp_MPCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Qr_Comp_MPCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Qr_Comp_MPCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Qr_Comp_MPCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Qr_Comp_MPCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Qr_Comp_MPCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Qr_Comp_MPCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Qr_Comp_MPCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Qr_Comp_MPCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Qr_Comp_MPCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Qr_Comp_MPCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Qr_Comp_MPCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Qr_Comp_MPCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Qr_Comp_MPCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Qr_Comp_MPCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Qr_Comp_MPPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_Comp_MPPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Comp_MPPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Qr_Comp_MPOP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Qr_Comp_MPOP3_QTDUTIL: TFloatField
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Qr_Comp_MPOP3_PU: TFloatField
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Qr_Comp_MPOP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Qr_Comp_MPOP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Qr_Comp_MPOP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
  end
  object mem_op03_mp: TRxMemoryData
    FieldDefs = <>
    Left = 656
    Top = 121
    object mem_op03_mpMP_CODEMP: TIntegerField
      FieldName = 'MP_CODEMP'
    end
    object mem_op03_mpMP_NUMERO: TStringField
      FieldName = 'MP_NUMERO'
    end
    object mem_op03_mpMP_CODPRO: TStringField
      FieldName = 'MP_CODPRO'
    end
    object mem_op03_mpMP_CODMAT: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MP_CODMAT'
    end
    object mem_op03_mpMP_CODPRO_ACAB: TStringField
      FieldName = 'MP_CODPRO_ACAB'
    end
    object mem_op03_mpMP_MPNUM: TStringField
      FieldName = 'MP_MPNUM'
    end
    object mem_op03_mpMP_QUANT: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'MP_QUANT'
    end
    object mem_op03_mpMP_PU: TFloatField
      DisplayLabel = 'P'#231'o. Unit'#225'rio'
      FieldName = 'MP_PU'
    end
    object mem_op03_mpMP_VLRINC: TFloatField
      FieldName = 'MP_VLRINC'
    end
    object mem_op03_mpMP_ALIQORI: TFloatField
      FieldName = 'MP_ALIQORI'
    end
    object mem_op03_mpMP_ALICMSCRED: TFloatField
      FieldName = 'MP_ALICMSCRED'
    end
    object mem_op03_mpMP_VLR_ICMSCRED: TFloatField
      FieldName = 'MP_VLR_ICMSCRED'
    end
    object mem_op03_mpMP_TIPO: TFloatField
      FieldName = 'MP_TIPO'
    end
    object mem_op03_mpMP_QTD_PAD: TFloatField
      FieldName = 'MP_QTD_PAD'
    end
    object mem_op03_mpMP_CPPERCENT: TFloatField
      FieldName = 'MP_CPPERCENT'
    end
    object mem_op03_mpMP_CPPERCENT_REST: TFloatField
      FieldName = 'MP_CPPERCENT_REST'
    end
    object mem_op03_mpMP_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MP_NOME'
      Size = 63
    end
    object mem_op03_mpMP_UND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'MP_UND'
      Size = 3
    end
    object mem_op03_mpMP_NOME2: TStringField
      FieldName = 'MP_NOME2'
      Size = 63
    end
    object mem_op03_mpMP_QTDPREV: TFloatField
      DisplayLabel = 'Qtd. Prevista'
      FieldName = 'MP_QTDPREV'
    end
    object mem_op03_mpMP_QTDUTIL: TFloatField
      DisplayLabel = 'Qtd. Utilizada'
      FieldName = 'MP_QTDUTIL'
    end
    object mem_op03_mpMP_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'MP_LOTE'
    end
    object mem_op03_mpMP_DTVCTO: TDateField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'MP_DTVCTO'
    end
    object mem_op03_mpMP_LOTE_RE: TFloatField
      DisplayLabel = 'Lote RE'
      FieldName = 'MP_LOTE_RE'
    end
    object mem_op03_mpMP_ORDEM: TIntegerField
      FieldName = 'MP_ORDEM'
    end
    object mem_op03_mpMP_CODIGO: TIntegerField
      FieldName = 'MP_CODIGO'
    end
    object mem_op03_mpMP_SEQ: TIntegerField
      FieldName = 'MP_SEQ'
    end
    object mem_op03_mpMP_LOTSEQ: TIntegerField
      FieldName = 'MP_LOTSEQ'
    end
    object mem_op03_mpMP_FABENV: TIntegerField
      FieldName = 'MP_FABENV'
    end
    object mem_op03_mpMP_SITMP: TIntegerField
      FieldName = 'MP_SITMP'
    end
    object mem_op03_mpMP_ORIGEM: TIntegerField
      FieldName = 'MP_ORIGEM'
    end
    object mem_op03_mpMP_CODGRU: TIntegerField
      FieldName = 'MP_CODGRU'
    end
    object mem_op03_mpMP_NOMGRU: TStringField
      FieldName = 'MP_NOMGRU'
      Size = 60
    end
    object mem_op03_mpMP_MARCA: TStringField
      FieldName = 'MP_MARCA'
      Size = 40
    end
  end
  object Tb_Op03_MP: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP3_CODEMP ,'
      '  OP3_CODIGO,'
      '  OP3_SEQ,'
      '  OP3_CODMAT,'
      '  OP3_NUMERO,'
      '  OP3_QTDPREV,'
      '  OP3_QTDUTIL,'
      '  OP3_PU,'
      '  OP3_LOTSEQ,'
      '  OP3_FABENV,'
      '  OP3_LOTE,'
      '  OP3_LOTE_RE,'
      '  OP3_DTVCTO,'
      '  OP3_SITMP,'
      '  OP3_ORIGEM'
      '  ,PDCODPRO'
      '  ,PDNOME'
      '  ,PDUND'
      '  ,PDNOME2'
      ' ,PDCODGRU AS CODGRU'
      ' ,PDNOMGRU AS NOMGRU'
      ' ,PDMARCA'
      ' ,CPORDEM'
      ' ,CPCODPRO'
      ' ,CPNUMERO'
      ' ,CPCODMAT'
      ' ,CPCODPRO_ACAB'
      ' ,CPMPNUM'
      ' ,CPQUANT'
      ' ,CPPU'
      ' ,CPVLRINC'
      ' ,CPALIQORI'
      ' ,CPALICMSCRED'
      ' ,CPICMSCRED'
      ' ,CPTIPO'
      ' ,CPQTD_PAD'
      ' ,CPPERCENT'
      ' ,CPPERCENT_REST'
      '   from CADOP03,CADPRO,CADCOMP'
      '  where PDCODPRO=OP3_CODMAT'
      '    and CPCODEMP=PDCODEMP and PDCODEMP=CPCODEMP and'
      '     CPCODMAT=PDCODPRO and (CPTIPO=1)'
      '     and CPCODPRO=OP3_CODMAT'
      '  and PDCODPRO is null'
      ''
      '')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op03_MP
    Left = 361
    Top = 182
    object Tb_Op03_MPOP3_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP3_CODEMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODEMP'
    end
    object Tb_Op03_MPOP3_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP3_CODIGO'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODIGO'
    end
    object Tb_Op03_MPOP3_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP3_SEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_SEQ'
    end
    object Tb_Op03_MPOP3_CODMAT: TFloatField
      DisplayLabel = 'C'#243'digo Mat'#233'ria Prima'
      FieldName = 'OP3_CODMAT'
      Origin = 'SG_ASSOC.CADOP03.OP3_CODMAT'
    end
    object Tb_Op03_MPOP3_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero/Grade/Cor Materia Prima'
      FieldName = 'OP3_NUMERO'
      Origin = 'SG_ASSOC.CADOP03.OP3_NUMERO'
    end
    object Tb_Op03_MPOP3_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDPREV'
    end
    object Tb_Op03_MPOP3_QTDUTIL: TFloatField
      DisplayLabel = 'Quantidade Utilizada'
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP03.OP3_QTDUTIL'
    end
    object Tb_Op03_MPOP3_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP03.OP3_PU'
    end
    object Tb_Op03_MPOP3_LOTSEQ: TFloatField
      FieldName = 'OP3_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTSEQ'
    end
    object Tb_Op03_MPOP3_FABENV: TFloatField
      FieldName = 'OP3_FABENV'
      Origin = 'SG_ASSOC.CADOP03.OP3_FABENV'
    end
    object Tb_Op03_MPOP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP03.OP3_DTVCTO'
    end
    object Tb_Op03_MPOP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE'
    end
    object Tb_Op03_MPOP3_SITMP: TFloatField
      FieldName = 'OP3_SITMP'
      Origin = 'SG_ASSOC.CADOP03.OP3_SITMP'
    end
    object Tb_Op03_MPOP3_ORIGEM: TFloatField
      FieldName = 'OP3_ORIGEM'
      Origin = 'SG_ASSOC.CADOP03.OP3_ORIGEM'
    end
    object Tb_Op03_MPPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_Op03_MPPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op03_MPPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op03_MPPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_Op03_MPCODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op03_MPNOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op03_MPPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_Op03_MPCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Op03_MPCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Op03_MPCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Op03_MPCPCODMAT: TFloatField
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Op03_MPCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Op03_MPCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Op03_MPCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Op03_MPCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Op03_MPCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Op03_MPCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Op03_MPCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Op03_MPCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Op03_MPCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Op03_MPCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Op03_MPCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Op03_MPCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Op03_MPobservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacao'
      Size = 10
      Calculated = True
    end
    object Tb_Op03_MPOP3_LOTE_RE: TStringField
      FieldName = 'OP3_LOTE_RE'
      Origin = 'SG_ASSOC.CADOP03.OP3_LOTE_RE'
    end
  end
  object U_Op03_MP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP03'
      'set'
      '  OP3_CODEMP = :OP3_CODEMP,'
      '  OP3_CODIGO = :OP3_CODIGO,'
      '  OP3_SEQ = :OP3_SEQ,'
      '  OP3_CODMAT = :OP3_CODMAT,'
      '  OP3_NUMERO = :OP3_NUMERO,'
      '  OP3_QTDPREV = :OP3_QTDPREV,'
      '  OP3_QTDUTIL = :OP3_QTDUTIL,'
      '  OP3_PU = :OP3_PU,'
      '  OP3_LOTSEQ = :OP3_LOTSEQ,'
      '  OP3_FABENV = :OP3_FABENV,'
      '  OP3_LOTE = :OP3_LOTE,'
      '  OP3_LOTE_RE = :OP3_LOTE_RE,'
      '  OP3_DTVCTO = :OP3_DTVCTO,'
      '  OP3_SITMP = :OP3_SITMP,'
      '  OP3_ORIGEM = :OP3_ORIGEM,'
      '  PDCODPRO = :PDCODPRO,'
      '  PDNOME = :PDNOME,'
      '  PDUND = :PDUND,'
      '  PDNOME2 = :PDNOME2'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    InsertSQL.Strings = (
      'insert into CADOP03'
      '  (OP3_CODEMP, OP3_CODIGO, OP3_SEQ, OP3_CODMAT, OP3_NUMERO, '
      'OP3_QTDPREV, '
      '   OP3_QTDUTIL, OP3_PU, OP3_LOTSEQ, OP3_FABENV, OP3_LOTE, '
      'OP3_LOTE_RE, '
      '   OP3_DTVCTO, OP3_SITMP, OP3_ORIGEM, PDCODPRO, PDNOME, PDUND, '
      'PDNOME2)'
      'values'
      
        '  (:OP3_CODEMP, :OP3_CODIGO, :OP3_SEQ, :OP3_CODMAT, :OP3_NUMERO,' +
        ' '
      ':OP3_QTDPREV, '
      '   :OP3_QTDUTIL, :OP3_PU, :OP3_LOTSEQ, :OP3_FABENV, :OP3_LOTE, '
      ':OP3_LOTE_RE, '
      
        '   :OP3_DTVCTO, :OP3_SITMP, :OP3_ORIGEM, :PDCODPRO, :PDNOME, :PD' +
        'UND, '
      ':PDNOME2)')
    DeleteSQL.Strings = (
      'delete from CADOP03'
      'where'
      '  OP3_CODEMP = :OLD_OP3_CODEMP and'
      '  OP3_CODIGO = :OLD_OP3_CODIGO and'
      '  OP3_SEQ = :OLD_OP3_SEQ and'
      '  OP3_CODMAT = :OLD_OP3_CODMAT and'
      '  OP3_NUMERO = :OLD_OP3_NUMERO and'
      '  OP3_LOTE = :OLD_OP3_LOTE and'
      '  OP3_DTVCTO = :OLD_OP3_DTVCTO')
    Left = 391
    Top = 182
  end
  object Src_Op03_MP: TDataSource
    DataSet = Tb_Op03_MP
    Left = 420
    Top = 183
  end
  object Tb_Op01: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADOP01 where OP1_CODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_OP01
    Left = 368
    Top = 64
    object Tb_Op01OP1_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP1_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODEMP'
    end
    object Tb_Op01OP1_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Tb_Op01OP1_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Tb_Op01OP1_DATAPREV: TDateTimeField
      DisplayLabel = 'Data Prevista'
      FieldName = 'OP1_DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Tb_Op01OP1_LOTE: TStringField
      DisplayLabel = 'Lote de Fabrica'#231#227'o'
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Tb_Op01OP1_DATAVEN: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'OP1_DATAVEN'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAVEN'
    end
    object Tb_Op01OP1_TMPPREV: TFloatField
      DisplayLabel = 'Valor Previsto em Mat'#233'ria Prima'
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
    end
    object Tb_Op01OP1_TMPUTIL: TFloatField
      DisplayLabel = 'Valor Utilizado em Mat'#233'ria Prima'
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
    end
    object Tb_Op01OP1_TOTPREV: TFloatField
      DisplayLabel = 'Total em Reais Previsto a ser Produzido'
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
    end
    object Tb_Op01OP1_TOTPROD: TFloatField
      DisplayLabel = 'Total Em Reais Produzido'
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
    end
    object Tb_Op01OP1_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Tb_Op01OP1_OBS01: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 01'
      FieldName = 'OP1_OBS01'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS01'
      Size = 60
    end
    object Tb_Op01OP1_OBS02: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 02'
      FieldName = 'OP1_OBS02'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS02'
      Size = 60
    end
    object Tb_Op01OP1_OBS03: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 03'
      FieldName = 'OP1_OBS03'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS03'
      Size = 60
    end
    object Tb_Op01OP1_OBS04: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 04'
      FieldName = 'OP1_OBS04'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS04'
      Size = 60
    end
    object Tb_Op01OP1_OBS05: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 05'
      FieldName = 'OP1_OBS05'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS05'
      Size = 60
    end
    object Tb_Op01OP1_OBS06: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 06'
      FieldName = 'OP1_OBS06'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS06'
      Size = 60
    end
    object Tb_Op01OP1_OBS07: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 07'
      FieldName = 'OP1_OBS07'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS07'
      Size = 60
    end
    object Tb_Op01OP1_OBS08: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 08'
      FieldName = 'OP1_OBS08'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS08'
      Size = 60
    end
    object Tb_Op01OP1_OBS09: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 09'
      FieldName = 'OP1_OBS09'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS09'
      Size = 60
    end
    object Tb_Op01OP1_OBS10: TStringField
      DisplayLabel = 'Observa'#231#245'es Linha 10'
      FieldName = 'OP1_OBS10'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS10'
      Size = 60
    end
    object Tb_Op01OP1_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Tb_Op01OP1_LOTSEQ: TFloatField
      FieldName = 'OP1_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTSEQ'
    end
    object Tb_Op01OP1_FABENV: TFloatField
      FieldName = 'OP1_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_FABENV'
    end
    object Tb_Op01OP1_ORIGEM: TFloatField
      FieldName = 'OP1_ORIGEM'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Tb_Op01OP1_SITMP: TFloatField
      FieldName = 'OP1_SITMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITMP'
    end
    object Tb_Op01OP1_SITACAB: TFloatField
      FieldName = 'OP1_SITACAB'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITACAB'
    end
    object Tb_Op01OP1_SITUACAO: TFloatField
      FieldName = 'OP1_SITUACAO'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITUACAO'
    end
    object Tb_Op01OP1_QTDMAN: TFloatField
      FieldName = 'OP1_QTDMAN'
      Origin = 'SG_ASSOC.CADOP01.OP1_QTDMAN'
    end
  end
  object U_OP01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP01'
      'set'
      '  OP1_CODEMP = :OP1_CODEMP,'
      '  OP1_CODIGO = :OP1_CODIGO,'
      '  OP1_DATA = :OP1_DATA,'
      '  OP1_DATAPREV = :OP1_DATAPREV,'
      '  OP1_LOTE = :OP1_LOTE,'
      '  OP1_DATAVEN = :OP1_DATAVEN,'
      '  OP1_TMPPREV = :OP1_TMPPREV,'
      '  OP1_TMPUTIL = :OP1_TMPUTIL,'
      '  OP1_TOTPREV = :OP1_TOTPREV,'
      '  OP1_TOTPROD = :OP1_TOTPROD,'
      '  OP1_STATUS = :OP1_STATUS,'
      '  OP1_OBS01 = :OP1_OBS01,'
      '  OP1_OBS02 = :OP1_OBS02,'
      '  OP1_OBS03 = :OP1_OBS03,'
      '  OP1_OBS04 = :OP1_OBS04,'
      '  OP1_OBS05 = :OP1_OBS05,'
      '  OP1_OBS06 = :OP1_OBS06,'
      '  OP1_OBS07 = :OP1_OBS07,'
      '  OP1_OBS08 = :OP1_OBS08,'
      '  OP1_OBS09 = :OP1_OBS09,'
      '  OP1_OBS10 = :OP1_OBS10,'
      '  OP1_NOME = :OP1_NOME,'
      '  OP1_LOTSEQ = :OP1_LOTSEQ,'
      '  OP1_FABENV = :OP1_FABENV,'
      '  OP1_ORIGEM = :OP1_ORIGEM,'
      '  OP1_SITMP = :OP1_SITMP,'
      '  OP1_SITACAB = :OP1_SITACAB,'
      '  OP1_SITUACAO = :OP1_SITUACAO,'
      '  OP1_QTDMAN = :OP1_QTDMAN'
      'where'
      '  OP1_CODEMP = :OLD_OP1_CODEMP and'
      '  OP1_CODIGO = :OLD_OP1_CODIGO and'
      '  OP1_LOTSEQ = :OLD_OP1_LOTSEQ and'
      '  OP1_FABENV = :OLD_OP1_FABENV')
    InsertSQL.Strings = (
      'insert into CADOP01'
      '  (OP1_CODEMP, OP1_CODIGO, OP1_DATA, OP1_DATAPREV, OP1_LOTE, '
      'OP1_DATAVEN, '
      '   OP1_TMPPREV, OP1_TMPUTIL, OP1_TOTPREV, OP1_TOTPROD, '
      'OP1_STATUS, OP1_OBS01, '
      
        '   OP1_OBS02, OP1_OBS03, OP1_OBS04, OP1_OBS05, OP1_OBS06, OP1_OB' +
        'S07, '
      'OP1_OBS08, '
      '   OP1_OBS09, OP1_OBS10, OP1_NOME, OP1_LOTSEQ, OP1_FABENV, '
      'OP1_ORIGEM, '
      '   OP1_SITMP, OP1_SITACAB, OP1_SITUACAO, OP1_QTDMAN)'
      'values'
      
        '  (:OP1_CODEMP, :OP1_CODIGO, :OP1_DATA, :OP1_DATAPREV, :OP1_LOTE' +
        ', '
      ':OP1_DATAVEN, '
      '   :OP1_TMPPREV, :OP1_TMPUTIL, :OP1_TOTPREV, :OP1_TOTPROD, '
      ':OP1_STATUS, '
      '   :OP1_OBS01, :OP1_OBS02, :OP1_OBS03, :OP1_OBS04, :OP1_OBS05, '
      ':OP1_OBS06, '
      '   :OP1_OBS07, :OP1_OBS08, :OP1_OBS09, :OP1_OBS10, :OP1_NOME, '
      ':OP1_LOTSEQ, '
      
        '   :OP1_FABENV, :OP1_ORIGEM, :OP1_SITMP, :OP1_SITACAB, :OP1_SITU' +
        'ACAO, '
      ':OP1_QTDMAN)')
    DeleteSQL.Strings = (
      'delete from CADOP01'
      'where'
      '  OP1_CODEMP = :OLD_OP1_CODEMP and'
      '  OP1_CODIGO = :OLD_OP1_CODIGO and'
      '  OP1_LOTSEQ = :OLD_OP1_LOTSEQ and'
      '  OP1_FABENV = :OLD_OP1_FABENV')
    Left = 396
    Top = 64
  end
  object Src_Op01: TDataSource
    DataSet = Tb_Op01
    Left = 424
    Top = 65
  end
  object Tb_Op02: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select OP2_CODEMP,'
      '       OP2_CODIGO,'
      '       OP2_SEQ,'
      '       OP2_CODPRO,'
      '       OP2_NUMERO,'
      '       OP2_QTDPREV,'
      '       OP2_QTDPROD,'
      '       OP2_PU,'
      '       OP2_LOTSEQ,'
      '       OP2_FABENV,'
      '       OP2_DTVCTO,'
      '       OP2_FAB_CHORI,'
      '       OP2_FAB_CODIGO,'
      '       OP2_FAB_LOTE,'
      '       OP2_FAB_VCTO,'
      '       OP2_FAB_DTFAB,'
      '       OP2_FAB_QTD,'
      '       OP2_FAB_PU,'
      '       OP2_SITACAB,'
      '       OP2_ORIGEM,'
      '       PDNOME'
      '       ,PDMARCA'
      '       ,PDUND'
      '       ,PDQTDGRML'
      '       ,PDPRZVAL'
      '       ,PDREGMS'
      '       ,PDCODGRU AS CODGRU'
      '       ,PDNOMGRU AS NOMGRU'
      'from CADOP02,CADPRO'
      'where OP2_CODEMP is null'
      'and PDCODPRO=OP2_CODPRO')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Op02
    Left = 368
    Top = 135
    object Tb_Op02OP2_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP2_CODEMP'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODEMP'
    end
    object Tb_Op02OP2_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP2_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODIGO'
    end
    object Tb_Op02OP2_SEQ: TFloatField
      DisplayLabel = 'Sequencia'
      FieldName = 'OP2_SEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_SEQ'
    end
    object Tb_Op02OP2_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'OP2_CODPRO'
      Origin = 'SG_ASSOC.CADOP02.OP2_CODPRO'
    end
    object Tb_Op02OP2_NUMERO: TStringField
      DisplayLabel = 'Grade do Produto'
      FieldName = 'OP2_NUMERO'
      Origin = 'SG_ASSOC.CADOP02.OP2_NUMERO'
    end
    object Tb_Op02OP2_QTDPREV: TFloatField
      DisplayLabel = 'Quantidade Prevista'
      FieldName = 'OP2_QTDPREV'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPREV'
    end
    object Tb_Op02OP2_QTDPROD: TFloatField
      DisplayLabel = 'Quantidade Produzida'
      FieldName = 'OP2_QTDPROD'
      Origin = 'SG_ASSOC.CADOP02.OP2_QTDPROD'
    end
    object Tb_Op02OP2_PU: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'OP2_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_PU'
    end
    object Tb_Op02OP2_LOTSEQ: TFloatField
      FieldName = 'OP2_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP02.OP2_LOTSEQ'
    end
    object Tb_Op02OP2_FABENV: TFloatField
      FieldName = 'OP2_FABENV'
      Origin = 'SG_ASSOC.CADOP02.OP2_FABENV'
    end
    object Tb_Op02OP2_DTVCTO: TDateTimeField
      FieldName = 'OP2_DTVCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_DTVCTO'
    end
    object Tb_Op02OP2_FAB_CHORI: TFloatField
      FieldName = 'OP2_FAB_CHORI'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CHORI'
    end
    object Tb_Op02OP2_FAB_CODIGO: TFloatField
      FieldName = 'OP2_FAB_CODIGO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_CODIGO'
    end
    object Tb_Op02OP2_FAB_VCTO: TDateTimeField
      FieldName = 'OP2_FAB_VCTO'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_VCTO'
    end
    object Tb_Op02OP2_FAB_QTD: TFloatField
      FieldName = 'OP2_FAB_QTD'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_QTD'
    end
    object Tb_Op02OP2_FAB_LOTE: TStringField
      FieldName = 'OP2_FAB_LOTE'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_LOTE'
    end
    object Tb_Op02OP2_FAB_DTFAB: TDateTimeField
      FieldName = 'OP2_FAB_DTFAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_DTFAB'
    end
    object Tb_Op02OP2_FAB_PU: TFloatField
      FieldName = 'OP2_FAB_PU'
      Origin = 'SG_ASSOC.CADOP02.OP2_FAB_PU'
    end
    object Tb_Op02OP2_ORIGEM: TFloatField
      FieldName = 'OP2_ORIGEM'
      Origin = 'SG_ASSOC.CADOP02.OP2_ORIGEM'
    end
    object Tb_Op02OP2_SITACAB: TFloatField
      FieldName = 'OP2_SITACAB'
      Origin = 'SG_ASSOC.CADOP02.OP2_SITACAB'
    end
    object Tb_Op02PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Op02PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Op02PDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object Tb_Op02PDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
      Origin = 'SG_ASSOC.CADPRO.PDPRZVAL'
    end
    object Tb_Op02PDREGMS: TStringField
      FieldName = 'PDREGMS'
      Origin = 'SG_ASSOC.CADPRO.PDREGMS'
    end
    object Tb_Op02CODGRU: TFloatField
      FieldName = 'CODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_Op02NOMGRU: TStringField
      FieldName = 'NOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Op02PDMARCA: TStringField
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
  end
  object U_Op02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADOP02'
      'set'
      '  OP2_CODEMP = :OP2_CODEMP,'
      '  OP2_CODIGO = :OP2_CODIGO,'
      '  OP2_SEQ = :OP2_SEQ,'
      '  OP2_CODPRO = :OP2_CODPRO,'
      '  OP2_NUMERO = :OP2_NUMERO,'
      '  OP2_QTDPREV = :OP2_QTDPREV,'
      '  OP2_QTDPROD = :OP2_QTDPROD,'
      '  OP2_PU = :OP2_PU,'
      '  OP2_LOTSEQ = :OP2_LOTSEQ,'
      '  OP2_FABENV = :OP2_FABENV,'
      '  OP2_DTVCTO = :OP2_DTVCTO,'
      '  OP2_FAB_CHORI = :OP2_FAB_CHORI,'
      '  OP2_FAB_CODIGO = :OP2_FAB_CODIGO,'
      '  OP2_FAB_LOTE = :OP2_FAB_LOTE,'
      '  OP2_FAB_VCTO = :OP2_FAB_VCTO,'
      '  OP2_FAB_DTFAB = :OP2_FAB_DTFAB,'
      '  OP2_FAB_QTD = :OP2_FAB_QTD,'
      '  OP2_FAB_PU = :OP2_FAB_PU,'
      '  OP2_SITACAB = :OP2_SITACAB,'
      '  OP2_ORIGEM = :OP2_ORIGEM'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    InsertSQL.Strings = (
      'insert into CADOP02'
      '  (OP2_CODEMP, OP2_CODIGO, OP2_SEQ, OP2_CODPRO, OP2_NUMERO, '
      'OP2_QTDPREV, '
      '   OP2_QTDPROD, OP2_PU, OP2_LOTSEQ, OP2_FABENV, OP2_DTVCTO, '
      'OP2_FAB_CHORI, '
      '   OP2_FAB_CODIGO, OP2_FAB_LOTE, OP2_FAB_VCTO, OP2_FAB_DTFAB, '
      'OP2_FAB_QTD, '
      '   OP2_FAB_PU, OP2_SITACAB, OP2_ORIGEM)'
      'values'
      
        '  (:OP2_CODEMP, :OP2_CODIGO, :OP2_SEQ, :OP2_CODPRO, :OP2_NUMERO,' +
        ' '
      ':OP2_QTDPREV, '
      
        '   :OP2_QTDPROD, :OP2_PU, :OP2_LOTSEQ, :OP2_FABENV, :OP2_DTVCTO,' +
        ' '
      ':OP2_FAB_CHORI, '
      
        '   :OP2_FAB_CODIGO, :OP2_FAB_LOTE, :OP2_FAB_VCTO, :OP2_FAB_DTFAB' +
        ', '
      ':OP2_FAB_QTD, '
      '   :OP2_FAB_PU, :OP2_SITACAB, :OP2_ORIGEM)')
    DeleteSQL.Strings = (
      'delete from CADOP02'
      'where'
      '  OP2_CODEMP = :OLD_OP2_CODEMP and'
      '  OP2_CODIGO = :OLD_OP2_CODIGO and'
      '  OP2_SEQ = :OLD_OP2_SEQ')
    Left = 398
    Top = 136
  end
  object Src_Op02: TDataSource
    DataSet = Tb_Op02
    Left = 426
    Top = 136
  end
end
