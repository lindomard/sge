object Frm_MFor01_Cons: TFrm_MFor01_Cons
  Left = 46
  Top = 21
  Width = 696
  Height = 480
  Caption = 'Atualizar Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PcFiltros: TPageControl
    Left = 0
    Top = 0
    Width = 680
    Height = 223
    ActivePage = TabSheet1
    Align = alTop
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Label1: TLabel
        Left = 1
        Top = 3
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'd. Produto'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 48
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#243'd. For.'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 1
        Top = 90
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Grupo'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 134
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tipo Produto'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CODPRO: TEdit
        Left = 1
        Top = 20
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = CODPROEnter
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object Lbx_Codpro: TListBox
        Left = 83
        Top = 2
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = CODPROEnter
        OnKeyDown = Lbx_CodproKeyDown
      end
      object CODFOR: TEdit
        Left = 1
        Top = 66
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnEnter = CODPROEnter
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object Lbx_CodFor: TListBox
        Left = 83
        Top = 46
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnEnter = CODPROEnter
        OnKeyDown = Lbx_CodForKeyDown
      end
      object CODGRU: TEdit
        Left = 1
        Top = 109
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnEnter = CODPROEnter
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object Lbx_CodGru: TListBox
        Left = 83
        Top = 90
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnEnter = CODPROEnter
        OnKeyDown = Lbx_CodGruKeyDown
      end
      object CODTIP: TEdit
        Left = 1
        Top = 155
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnEnter = CODPROEnter
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
      end
      object Lbx_CodTPro: TListBox
        Left = 83
        Top = 132
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnEnter = CODPROEnter
        OnKeyDown = Lbx_CodTProKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 536
        Top = 2
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnEnter = CODPROEnter
      end
      object OMITIR_FOR: TCheckBox
        Left = 536
        Top = 45
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnEnter = CODPROEnter
      end
      object OMITIR_GRU: TCheckBox
        Left = 536
        Top = 90
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnEnter = CODPROEnter
      end
      object OMITIR_TPRO: TCheckBox
        Left = 536
        Top = 135
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnEnter = CODPROEnter
      end
      object CB_EXPFORM: TCheckBox
        Left = 2
        Top = 175
        Width = 351
        Height = 17
        Hint = 'Se Marcado Exporta Tambem as Formulas '#13#10'de Fabria'#231#227'o'
        Caption = 'Exportar Tamb'#233'm as Formulas de Fabrica'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object Label7: TLabel
        Left = 1
        Top = 4
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tipo Controle'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 2
        Top = 46
        Width = 80
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ramo'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CODCON: TEdit
        Left = 1
        Top = 23
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
      end
      object Lbx_CodCon: TListBox
        Left = 83
        Top = 1
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = Lbx_CodConKeyDown
      end
      object CODRAM: TEdit
        Left = 1
        Top = 68
        Width = 80
        Height = 19
        Hint = 'Informe Codigo ou Pressione'#13#10'Uma Tecla P/ Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object Lbx_CodRam: TListBox
        Left = 83
        Top = 46
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = Lbx_CodRamKeyDown
      end
      object OMITIR_TCON: TCheckBox
        Left = 536
        Top = 0
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object OMITIR_RPRO: TCheckBox
        Left = 536
        Top = 45
        Width = 54
        Height = 17
        Hint = 
          'Omitir Marcado - Todos os C'#243'digos '#13#10'Selecionados N'#227'o Ser'#227'o Impre' +
          'ssos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 223
    Width = 680
    Height = 47
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object bbAplicar: TBitBtn
      Left = 0
      Top = 1
      Width = 141
      Height = 40
      Hint = 'Seleciona os '#205'tens a Serem Efetivados'
      Caption = 'Aplicar Sele'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbAplicarClick
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
    object bbExecutar: TBitBtn
      Left = 268
      Top = 1
      Width = 141
      Height = 40
      Caption = '&Executar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbExecutarClick
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
    object bbSair: TBitBtn
      Left = 541
      Top = 1
      Width = 141
      Height = 40
      Hint = 'Fechar Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 270
    Width = 680
    Height = 172
    Align = alClient
    Caption = 'Itens Selecionados:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 676
      Height = 155
      Align = alClient
      DataSource = DM2.Src_Pro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'OK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Wingdings 2'
          Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMGRU'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMTIP'
          Width = 141
          Visible = True
        end>
    end
  end
end
