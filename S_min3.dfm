object Frm_min3: TFrm_min3
  Left = 59
  Top = 7
  Width = 731
  Height = 467
  ActiveControl = BBLOCALIZAR
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Minuta de Entrega de Mercadorias'
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
    Width = 591
    Height = 429
    Align = alLeft
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 401
      Width = 589
      Height = 27
      Align = alBottom
      TabOrder = 0
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 2
        Width = 224
        Height = 21
        DataSource = Src_min3
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object bbitens_alter: TBitBtn
        Left = 230
        Top = 2
        Width = 110
        Height = 21
        Caption = 'Altera&r Itens'
        TabOrder = 1
        OnClick = bbitens_alterClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object bbiten_excluir: TBitBtn
        Left = 341
        Top = 2
        Width = 110
        Height = 21
        Hint = 'Excluir Pedidos ja existentes'
        Caption = 'E&xcluir Itens'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbiten_excluirClick
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
      object BitBtn3: TBitBtn
        Left = 452
        Top = 2
        Width = 110
        Height = 21
        Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
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
    end
    object Panel_cab: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 118
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 112
        Height = 13
        Caption = 'Chave..........................:'
      end
      object Label2: TLabel
        Left = 235
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Data Inicial.:'
      end
      object Label3: TLabel
        Left = 9
        Top = 28
        Width = 113
        Height = 13
        Caption = 'Nome do Entregador....:'
      end
      object Label4: TLabel
        Left = 9
        Top = 51
        Width = 115
        Height = 13
        Caption = 'CNPF............................:'
      end
      object Label5: TLabel
        Left = 8
        Top = 74
        Width = 116
        Height = 13
        Caption = 'Identidade.....................:'
      end
      object Label7: TLabel
        Left = 395
        Top = 6
        Width = 57
        Height = 13
        Caption = 'Data Final..:'
      end
      object Label6: TLabel
        Left = 9
        Top = 98
        Width = 112
        Height = 13
        Caption = 'C'#243'd.Entreg/Transp......:'
      end
      object CHAVE: TEdit
        Left = 151
        Top = 2
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CHAVEExit
      end
      object MDATA: TMaskEdit
        Left = 303
        Top = 3
        Width = 84
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDATAExit
      end
      object NOMENT: TEdit
        Left = 151
        Top = 24
        Width = 388
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object CNPF: TEdit
        Left = 151
        Top = 47
        Width = 389
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object RG: TEdit
        Left = 151
        Top = 70
        Width = 389
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object MDATAF: TMaskEdit
        Left = 455
        Top = 3
        Width = 84
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 2
        Text = '  /  /    '
        OnExit = MDATAFExit
      end
      object empresa_aux: TEdit
        Left = 552
        Top = 16
        Width = 31
        Height = 21
        TabOrder = 8
        Visible = False
      end
      object CODTRA: TEdit
        Left = 151
        Top = 92
        Width = 57
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = CODTRAExit
        OnKeyPress = CODTRAKeyPress
      end
      object NOMTRA: TEdit
        Left = 211
        Top = 92
        Width = 328
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 7
      end
      object bbConsulta: TBitBtn
        Left = 208
        Top = 2
        Width = 21
        Height = 19
        Enabled = False
        TabOrder = 9
        OnClick = bbConsultaClick
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
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 119
      Width = 589
      Height = 282
      Align = alClient
      Ctl3D = False
      DataSource = Src_min3
      ParentCtl3D = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnEnter = DBGrid1Enter
      OnExit = DBGrid1Exit
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CM2NUMERO'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMCLI'
          ReadOnly = True
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2QTDVOL'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2PESOB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CM2VALOR'
          Width = 57
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 208
      Top = 200
      Width = 219
      Height = 136
      TabOrder = 3
      Visible = False
      object comp_simpl: TRadioGroup
        Left = 1
        Top = 1
        Width = 217
        Height = 104
        Align = alTop
        Caption = 'Op'#231#227'o de Impressao'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Impressao Completa'
          'Impressao Simples')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn6: TBitBtn
        Left = 66
        Top = 108
        Width = 87
        Height = 25
        Caption = 'Impress'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn6Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 591
    Top = 0
    Width = 124
    Height = 429
    Align = alClient
    TabOrder = 1
    object BBINCLUIR: TBitBtn
      Left = 3
      Top = 4
      Width = 126
      Height = 40
      Hint = 'Inclus'#227'o de Novos Pedidos'
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
      Left = 3
      Top = 44
      Width = 126
      Height = 40
      Caption = '&Localizar'
      TabOrder = 1
      OnClick = BBLOCALIZARClick
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
      Left = 3
      Top = 84
      Width = 126
      Height = 40
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 2
      OnClick = BBALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 3
      Top = 124
      Width = 126
      Height = 40
      Hint = 'Excluir Pedidos ja existentes'
      Caption = '&Excluir Todos'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBEXCLUIRClick
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
    object BBGRAVAR: TBitBtn
      Left = 3
      Top = 164
      Width = 126
      Height = 40
      Hint = 'Gravar pedido que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BBGRAVARClick
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
    object BBLIMPAR: TBitBtn
      Left = 3
      Top = 205
      Width = 126
      Height = 40
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBLIMPARClick
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
      Left = 4
      Top = 305
      Width = 126
      Height = 40
      Hint = 'Imprimir Pedido'
      Caption = '&Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BBIMPRIMIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 4
      Top = 344
      Width = 126
      Height = 40
      Caption = '&Consulta Pedido'
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object RadioGroup1: TRadioGroup
      Left = 3
      Top = 246
      Width = 127
      Height = 58
      Caption = 'Tipo Impressao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Mesmo Cliente 1 Vez'
        'Mesmo Cliente 2 Vezes')
      ParentFont = False
      TabOrder = 9
    end
    object BBSAIR: TBitBtn
      Left = 4
      Top = 383
      Width = 126
      Height = 40
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBSAIRClick
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
  object Tb_min3: TQuery
    CachedUpdates = True
    AfterInsert = Tb_min3AfterInsert
    BeforePost = Tb_min3BeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CM2CODEMP'
      ',CM2LOTSEQ'
      ',CM2CODMIN'
      ',CM2SEQ'
      ',CM2TIPO'
      ',CM2LOTSEQ_CP'
      ',CM2NUMERO'
      ',CM2CLIFOR'
      ',CM2CODIGO'
      ',CM2TIPDOC'
      ',CM2NUMDOC'
      ',CM2QTDVOL'
      ',CM2PESOB'
      ',CM2PESOL'
      ',CM2VALOR'
      ',CM2OBS01'
      ',CM2OBS02'
      ',CM2OBS03'
      ',CM2DTCONF'
      ',CM2USRCONF'
      ',CM2PED_CODEMP'
      ',CM2QTDITENS'
      ',CM2QTDUND'
      ',CM2TIPOPED'
      ',CM2CODCLI'
      ',CM2VALFRE'
      ',CM2QTDPAG'
      ',CM2CODBCO'
      ',CM2DATANF'
      ',CRAZAO AS NOMCLI from CADMIN2, CADCLI'
      'where CM2CODEMP=0'
      'AND CM2LOTSEQ=0'
      'AND CM2CODMIN=0'
      'AND CCODCLI=CM2CODCLI')
    UpdateObject = U_min3
    Left = 68
    Top = 160
    object Tb_min3CM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADmin3.CM2CODEMP'
    end
    object Tb_min3CM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
      Origin = 'SG_ASSOC.CADmin3.CM2CODMIN'
    end
    object Tb_min3CM2SEQ: TFloatField
      FieldName = 'CM2SEQ'
      Origin = 'SG_ASSOC.CADmin3.CM2SEQ'
    end
    object Tb_min3CM2TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CM2TIPO'
      Origin = 'SG_ASSOC.CADmin3.CM2TIPO'
      Size = 2
    end
    object Tb_min3CM2NUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'CM2NUMERO'
      Origin = 'SG_ASSOC.CADmin3.CM2NUMERO'
    end
    object Tb_min3CM2VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CM2VALOR'
      Origin = 'SG_ASSOC.CADmin3.CM2VALOR'
      currency = True
    end
    object Tb_min3CM2DTCONF: TDateTimeField
      FieldName = 'CM2DTCONF'
      Origin = 'SG_ASSOC.CADmin3.CM2DTCONF'
    end
    object Tb_min3CM2USRCONF: TFloatField
      FieldName = 'CM2USRCONF'
      Origin = 'SG_ASSOC.CADmin3.CM2USRCONF'
    end
    object Tb_min3CM2CLIFOR: TStringField
      FieldName = 'CM2CLIFOR'
      Origin = 'SG_ASSOC.CADmin3.CM2CLIFOR'
      Size = 2
    end
    object Tb_min3CM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
      Origin = 'SG_ASSOC.CADmin3.CM2CODIGO'
    end
    object Tb_min3CM2TIPDOC: TStringField
      FieldName = 'CM2TIPDOC'
      Origin = 'SG_ASSOC.CADmin3.CM2TIPDOC'
      Size = 2
    end
    object Tb_min3CM2NUMDOC: TFloatField
      FieldName = 'CM2NUMDOC'
      Origin = 'SG_ASSOC.CADmin3.CM2NUMDOC'
    end
    object Tb_min3CM2OBS01: TStringField
      FieldName = 'CM2OBS01'
      Origin = 'SG_ASSOC.CADmin3.CM2OBS01'
      Size = 60
    end
    object Tb_min3CM2OBS02: TStringField
      FieldName = 'CM2OBS02'
      Origin = 'SG_ASSOC.CADmin3.CM2OBS02'
      Size = 60
    end
    object Tb_min3CM2OBS03: TStringField
      FieldName = 'CM2OBS03'
      Origin = 'SG_ASSOC.CADmin3.CM2OBS03'
      Size = 60
    end
    object Tb_min3CM2LOTSEQ: TFloatField
      FieldName = 'CM2LOTSEQ'
      Origin = 'SG_ASSOC.CADmin3.CM2LOTSEQ'
    end
    object Tb_min3CM2LOTSEQ_CP: TFloatField
      FieldName = 'CM2LOTSEQ_CP'
      Origin = 'SG_ASSOC.CADmin3.CM2LOTSEQ_CP'
    end
    object Tb_min3CM2QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Vol'
      FieldName = 'CM2QTDVOL'
      Origin = 'SG_ASSOC.CADmin3.CM2QTDVOL'
      DisplayFormat = '###'
    end
    object Tb_min3CM2PESOB: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'CM2PESOB'
      Origin = 'SG_ASSOC.CADmin3.CM2PESOB'
      DisplayFormat = '###0.000'
    end
    object Tb_min3CM2PESOL: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'CM2PESOL'
      Origin = 'SG_ASSOC.CADmin3.CM2PESOL'
      DisplayFormat = '##0.000'
    end
    object Tb_min3CM2PED_CODEMP: TFloatField
      FieldName = 'CM2PED_CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2PED_CODEMP'
    end
    object Tb_min3CM2QTDITENS: TFloatField
      FieldName = 'CM2QTDITENS'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDITENS'
    end
    object Tb_min3CM2QTDUND: TFloatField
      FieldName = 'CM2QTDUND'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDUND'
    end
    object Tb_min3CM2TIPOPED: TFloatField
      FieldName = 'CM2TIPOPED'
      Origin = 'SG_ASSOC.CADMIN2.CM2TIPOPED'
    end
    object Tb_min3CM2CODCLI: TFloatField
      FieldName = 'CM2CODCLI'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODCLI'
    end
    object Tb_min3CM2VALFRE: TFloatField
      FieldName = 'CM2VALFRE'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALFRE'
    end
    object Tb_min3CM2QTDPAG: TFloatField
      FieldName = 'CM2QTDPAG'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDPAG'
    end
    object Tb_min3CM2DATANF: TDateTimeField
      FieldName = 'CM2DATANF'
      Origin = 'SG_ASSOC.CADMIN2.CM2DATANF'
    end
    object Tb_min3CM2CODBCO: TFloatField
      FieldName = 'CM2CODBCO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODBCO'
    end
    object Tb_min3NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NOMCLI'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
  end
  object Src_min3: TDataSource
    DataSet = Tb_min3
    Left = 116
    Top = 160
  end
  object U_min3: TUpdateSQL
    ModifySQL.Strings = (
      'update CADmin2'
      'set'
      '  CM2CODEMP = :CM2CODEMP,'
      '  CM2LOTSEQ = :CM2LOTSEQ,'
      '  CM2CODMIN = :CM2CODMIN,'
      '  CM2SEQ = :CM2SEQ,'
      '  CM2TIPO = :CM2TIPO,'
      '  CM2LOTSEQ_CP = :CM2LOTSEQ_CP,'
      '  CM2NUMERO = :CM2NUMERO,'
      '  CM2CLIFOR = :CM2CLIFOR,'
      '  CM2CODIGO = :CM2CODIGO,'
      '  CM2TIPDOC = :CM2TIPDOC,'
      '  CM2NUMDOC = :CM2NUMDOC,'
      '  CM2VALOR = :CM2VALOR,'
      '  CM2OBS01 = :CM2OBS01,'
      '  CM2OBS02 = :CM2OBS02,'
      '  CM2OBS03 = :CM2OBS03,'
      '  CM2DTCONF = :CM2DTCONF,'
      '  CM2USRCONF = :CM2USRCONF,'
      '  CM2QTDVOL = :CM2QTDVOL,'
      '  CM2PESOB = :CM2PESOB,'
      '  CM2PESOL = :CM2PESOL,'
      '  CM2PED_CODEMP = :CM2PED_CODEMP,'
      '  CM2QTDITENS = :CM2QTDITENS,'
      '  CM2QTDUND = :CM2QTDUND,'
      '  CM2TIPOPED = :CM2TIPOPED,'
      '  CM2CODCLI = :CM2CODCLI,'
      '  CM2VALFRE = :CM2VALFRE,'
      '  CM2QTDPAG = :CM2QTDPAG,'
      '  CM2DATANF = :CM2DATANF,'
      '  CM2CODBCO = :CM2CODBCO'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP')
    InsertSQL.Strings = (
      'insert into CADmin2'
      '  (CM2CODEMP, CM2LOTSEQ, CM2CODMIN, CM2SEQ, CM2TIPO, '
      'CM2LOTSEQ_CP, CM2NUMERO, '
      '   CM2CLIFOR, CM2CODIGO, CM2TIPDOC, CM2NUMDOC, CM2VALOR, '
      'CM2OBS01, CM2OBS02, '
      '   CM2OBS03, CM2DTCONF, CM2USRCONF, CM2QTDVOL, CM2PESOB, '
      'CM2PESOL, CM2PED_CODEMP, '
      '   CM2QTDITENS, CM2QTDUND, CM2TIPOPED, CM2CODCLI, CM2VALFRE, '
      'CM2QTDPAG, '
      '   CM2DATANF, CM2CODBCO)'
      'values'
      '  (:CM2CODEMP, :CM2LOTSEQ, :CM2CODMIN, :CM2SEQ, :CM2TIPO, '
      ':CM2LOTSEQ_CP, '
      '   :CM2NUMERO, :CM2CLIFOR, :CM2CODIGO, :CM2TIPDOC, :CM2NUMDOC, '
      ':CM2VALOR, '
      '   :CM2OBS01, :CM2OBS02, :CM2OBS03, :CM2DTCONF, :CM2USRCONF, '
      ':CM2QTDVOL, '
      
        '   :CM2PESOB, :CM2PESOL, :CM2PED_CODEMP, :CM2QTDITENS, :CM2QTDUN' +
        'D, '
      ':CM2TIPOPED, '
      '   :CM2CODCLI, :CM2VALFRE, :CM2QTDPAG, :CM2DATANF, :CM2CODBCO)')
    DeleteSQL.Strings = (
      'delete from CADmin2'
      'where'
      '  CM2CODEMP = :OLD_CM2CODEMP')
    Left = 162
    Top = 160
  end
  object val_acum: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select cm2codemp,cm2codmin,cm2codigo,sum(cm2valor)valor,sum(cm2q' +
        'tdvol)qtdvol,sum(cm2pesob)pesob,sum(cm2pesol)pesol'
      ' From CADmin2'
      ' where cm2codemp = 1 and'
      '       cm2codmin =  7 and'
      '       cm2codigo = 6084'
      ' group by cm2codemp,cm2codmin,cm2codigo')
    Left = 120
    Top = 224
    object val_acumCM2CODEMP: TFloatField
      FieldName = 'CM2CODEMP'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODEMP'
    end
    object val_acumCM2CODMIN: TFloatField
      FieldName = 'CM2CODMIN'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODMIN'
    end
    object val_acumCM2CODIGO: TFloatField
      FieldName = 'CM2CODIGO'
      Origin = 'SG_ASSOC.CADMIN2.CM2CODIGO'
    end
    object val_acumVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'SG_ASSOC.CADMIN2.CM2VALOR'
    end
    object val_acumQTDVOL: TFloatField
      FieldName = 'QTDVOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2QTDVOL'
    end
    object val_acumPESOB: TFloatField
      FieldName = 'PESOB'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOB'
    end
    object val_acumPESOL: TFloatField
      FieldName = 'PESOL'
      Origin = 'SG_ASSOC.CADMIN2.CM2PESOL'
    end
  end
  object temp: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 56
    Top = 224
  end
  object val_acum1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select cm2codemp,cm2codmin,cm2codigo,sum(cm2valor)valorl'
      ' From CADmin2'
      ' where cm2codemp = 1 and'
      '       cm2codmin =  7 and'
      '       cm2codigo = 6084'
      ' group by cm2codemp,cm2codmin,cm2codigo')
    Left = 176
    Top = 224
  end
end
