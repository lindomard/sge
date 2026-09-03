object Frm_Ind_Comp02: TFrm_Ind_Comp02
  Left = 254
  Top = 2
  Width = 795
  Height = 570
  Caption = 'Manuten'#231#227'o no Cadastro dos m'#233'todos de Produ'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 62
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 109
      Height = 13
      Caption = 'Produto Produzido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 25
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
    object Label7: TLabel
      Left = 185
      Top = 45
      Width = 134
      Height = 13
      Caption = 'Medida em Litros/Kilos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 116
      Top = 6
      Width = 70
      Height = 19
      Ctl3D = False
      DataField = 'CP_CODPRO_EMPRO'
      DataSource = Src_Comp02
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 185
      Top = 6
      Width = 344
      Height = 19
      Color = 10930928
      Ctl3D = False
      DataField = 'nompro_empro'
      DataSource = Src_Comp02
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 116
      Top = 24
      Width = 70
      Height = 19
      Ctl3D = False
      DataField = 'CP_CODPRO'
      DataSource = Src_Comp02
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 185
      Top = 24
      Width = 344
      Height = 19
      Color = 10930928
      Ctl3D = False
      DataField = 'nompro'
      DataSource = Src_Comp02
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object bbFechar: TBitBtn
      Left = 661
      Top = 4
      Width = 122
      Height = 40
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object bbSalvarTextos: TBitBtn
      Left = 530
      Top = 4
      Width = 122
      Height = 40
      Caption = '&Salvar Textos'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = bbSalvarTextosClick
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
    object UNDMED: TEdit
      Left = 326
      Top = 42
      Width = 52
      Height = 19
      Hint = 
        'digite aqui a medida do '#13#10'produto em kilos ou gramas'#13#10'Exemplo p/' +
        '50 gramas 0,050'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnChange = UNDMEDChange
      OnExit = UNDMEDExit
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 516
    Width = 787
    Height = 23
    DataSource = Src_Comp02
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
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
    TabOrder = 1
    BeforeAction = DBNavigator1BeforeAction
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 413
    Width = 787
    Height = 36
    Align = alBottom
    DataSource = DM3.Src_CQ
    PanelHeight = 18
    PanelWidth = 770
    TabOrder = 2
    RowCount = 2
    Visible = False
    object DBMemo2: TDBMemo
      Left = 4
      Top = 2
      Width = 217
      Height = 44
      Alignment = taCenter
      Color = 12123134
      DataField = 'CQ_TESTE'
      DataSource = DM3.Src_CQ
      TabOrder = 0
    end
    object DBMemo3: TDBMemo
      Left = 265
      Top = 2
      Width = 217
      Height = 44
      Alignment = taCenter
      Color = 12123134
      DataField = 'CQ_ESP'
      DataSource = DM3.Src_CQ
      TabOrder = 1
    end
    object DBMemo4: TDBMemo
      Left = 527
      Top = 2
      Width = 217
      Height = 44
      Alignment = taCenter
      Color = 12123134
      DataField = 'CQ_MET'
      DataSource = DM3.Src_CQ
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 449
    Width = 787
    Height = 67
    Align = alBottom
    TabOrder = 3
    object Label15: TLabel
      Left = 2
      Top = 3
      Width = 155
      Height = 13
      Caption = 'Envasa Quantas Unidades:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 235
      Top = 4
      Width = 66
      Height = 13
      Caption = 'P/Unidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 406
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Ordem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbImprimirOP: TSpeedButton
      Left = 1
      Top = 23
      Width = 181
      Height = 22
      Hint = 'Imprimir a Ordem de Produ'#231#227'o'
      Caption = '&Imprimir Ordem Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbImprimirOPClick
    end
    object sbImprimir_Envase: TSpeedButton
      Left = 181
      Top = 23
      Width = 181
      Height = 22
      Hint = 'Imprimir Ordem de Envase'
      Caption = '&Imprimir Ordem de Envase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbImprimir_EnvaseClick
    end
    object SbImprimirComp: TSpeedButton
      Left = 361
      Top = 23
      Width = 181
      Height = 22
      Hint = 'Imprime a Composi'#231#227'o da '#13#10'Formula para o Determinado '#13#10'Produto'
      Caption = '&Imprimir Composi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SbImprimirCompClick
    end
    object sbnPadrao: TSpeedButton
      Left = 596
      Top = 10
      Width = 180
      Height = 32
      Hint = 'Click aqui para salvar os textos'#13#10'e os anexos como padr'#227'o'
      Caption = '&Salvar os Texto Padr'#227'o'
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
      OnClick = sbnPadraoClick
    end
    object DBEdit5: TDBEdit
      Left = 158
      Top = 2
      Width = 74
      Height = 19
      Ctl3D = False
      DataField = 'CP_MEDUND'
      DataSource = Src_Comp02
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 303
      Top = 2
      Width = 99
      Height = 19
      Ctl3D = False
      DataField = 'porund'
      DataSource = Src_Comp02
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 44
      Width = 785
      Height = 22
      DataSource = DM3.Src_CQ
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
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
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 448
      Top = 2
      Width = 44
      Height = 19
      Ctl3D = False
      DataField = 'CQ_CODIGO'
      DataSource = DM3.Src_CQ
      ParentCtl3D = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 378
    Width = 787
    Height = 35
    Align = alBottom
    TabOrder = 4
    Visible = False
    object Label3: TLabel
      Left = 5
      Top = 3
      Width = 215
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'Testes (m'#225'ximo 32 carcteres por linha)'
      Color = 12123134
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 266
      Top = 3
      Width = 209
      Height = 26
      Alignment = taCenter
      Caption = 'Especifica'#231#227'o (m'#225'ximo 32 carcteres por linha)'
      Color = 12123134
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 527
      Top = 3
      Width = 217
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'M'#233'todo (m'#225'ximo 32 carcteres por linha)'
      Color = 12123134
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 170
    Width = 787
    Height = 208
    ActivePage = ts_Texto04
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 5
    OnChange = PageControl1Change
    object Ts_Texto_Cab: TTabSheet
      Caption = 'Texto_Cabecalho'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonteCab: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonteCabClick
        end
        object sbCorFundoCab: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundoCabClick
        end
        object Label8: TLabel
          Left = 264
          Top = 5
          Width = 194
          Height = 13
          Caption = 'Descri'#231#227'o do Texto do Cabe'#231'alho'
        end
        object cb_imprime_texto_cab: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object TextoCab: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Texto')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnChange = TextoCabChange
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = TextoCabSelectionChange
      end
    end
    object ts_Texto01: TTabSheet
      Caption = 'Texto 01'
      object panel_t01: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte01: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte01Click
        end
        object sbCorFundo01: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo01Click
        end
        object Label9: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 01'
        end
        object cb_imprime_texto01: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto01: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Texto')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnChange = Texto01Change
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto01SelectionChange
      end
    end
    object ts_Texto02: TTabSheet
      Caption = 'Texto 02'
      ImageIndex = 1
      object panel_t02: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte02: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte02Click
        end
        object sbCorFundo02: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo02Click
        end
        object Label10: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 02'
        end
        object cb_imprime_texto02: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto02: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Texto')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto02SelectionChange
      end
    end
    object ts_Texto03: TTabSheet
      Caption = 'Texto 03'
      ImageIndex = 2
      object panel_t03: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte03: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte03Click
        end
        object sbCorFundo03: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo03Click
        end
        object Label11: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 03'
        end
        object cb_imprime_texto03: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto03: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Lines.Strings = (
          'Texto')
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto03SelectionChange
      end
    end
    object ts_Texto04: TTabSheet
      Caption = 'Texto 04'
      ImageIndex = 3
      object panel_t04: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte04: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte04Click
        end
        object sbCorFundo04: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo04Click
        end
        object Label12: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 04'
        end
        object cb_imprime_texto04: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto04: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Lines.Strings = (
          'Texto')
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto04SelectionChange
      end
    end
    object ts_texto05: TTabSheet
      Caption = 'Texto 05'
      ImageIndex = 4
      object panel_t05: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte05: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte05Click
        end
        object sbCorFundo05: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo01Click
        end
        object Label13: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 04'
        end
        object cb_imprime_texto05: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto05: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Lines.Strings = (
          'Texto')
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto05SelectionChange
      end
    end
    object ts_Texto06: TTabSheet
      Caption = 'Texto 06'
      ImageIndex = 5
      object panel_t06: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 23
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object sbFonte06: TSpeedButton
          Left = 9
          Top = 0
          Width = 146
          Height = 22
          Hint = 'Seleciona a fonte'
          Caption = 'Ajustar Fonte'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbFonte06Click
        end
        object sbCorFundo06: TSpeedButton
          Left = 632
          Top = 0
          Width = 146
          Height = 22
          Hint = 'seleciona a cor de fundo do texto'
          Caption = 'Cor de Fundo'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbCorFundo06Click
        end
        object Label14: TLabel
          Left = 280
          Top = 5
          Width = 130
          Height = 13
          Caption = 'Descri'#231#227'o do Texto 06'
        end
        object cb_imprime_texto06: TCheckBox
          Left = 528
          Top = 4
          Width = 97
          Height = 17
          Hint = 'Se marcado esta '#13#10'pagina sera impressa '#13#10'na ordem de produ'#231#227'o'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cb_imprime_texto06Click
        end
      end
      object Texto06: TRichEdit
        Left = 0
        Top = 23
        Width = 779
        Height = 153
        Align = alClient
        Color = 12123134
        Lines.Strings = (
          'Texto')
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = Texto01KeyPress
        OnSelectionChange = Texto06SelectionChange
      end
    end
    object ts_OPQuickReport: TTabSheet
      Caption = 'Relatorio Quick Report'
      ImageIndex = 6
    end
    object Ts_QuickReportEnvase: TTabSheet
      Caption = 'Ts_QuickReportEnvase'
      ImageIndex = 7
    end
    object ts_quickreportFichaPesagem: TTabSheet
      Caption = 'ts_quickreportFichaPesagem'
      ImageIndex = 8
    end
    object Ts_ProdFortes: TTabSheet
      Caption = 'Producao Fortes'
      ImageIndex = 9
      object RLReport_op: TRLReport
        Left = 5
        Top = -257
        Width = 794
        Height = 1058
        DataSource = Src_ProdFab
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Courier New'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        NextReport = RLReport_Ficha_Pesagem
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 280.000000000000000000
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 38
          Top = 11
          Width = 718
          Height = 38
          BandType = btTitle
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 80
            Top = 20
            Width = 410
            Height = 18
            Caption = 'ORDEM DE PRODU'#199#195'O - FICHA DE FABRICA'#199#195'O '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDB_NUMOP: TRLDBText
            Left = 497
            Top = 20
            Width = 80
            Height = 18
            DataField = 'CHAVEOP'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 49
          Width = 718
          Height = 178
          BandType = btTitle
          object RLLabel2: TRLLabel
            Left = 0
            Top = 2
            Width = 90
            Height = 18
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 86
            Top = 2
            Width = 94
            Height = 16
            AutoSize = False
            DataField = 'CODPRO'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 193
            Top = 2
            Width = 519
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 0
            Top = 18
            Width = 140
            Height = 18
            Caption = 'Apresenta'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 135
            Top = 20
            Width = 575
            Height = 16
            AutoSize = False
            DataField = 'PDAPRES'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 0
            Top = 39
            Width = 60
            Height = 18
            Caption = 'Lote:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 129
            Top = 38
            Width = 73
            Height = 16
            AutoSize = False
            DataField = 'LOTE'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 522
            Top = 39
            Width = 100
            Height = 18
            Caption = 'Validade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 610
            Top = 39
            Width = 98
            Height = 16
            AutoSize = False
            DataField = 'PRZVAL'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 0
            Top = 58
            Width = 170
            Height = 18
            Caption = 'Data de Emiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 164
            Top = 58
            Width = 91
            Height = 16
            AutoSize = False
            DataField = 'DATAEMI'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 411
            Top = 58
            Width = 200
            Height = 18
            Caption = 'Data de Fabrica'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 0
            Top = 77
            Width = 200
            Height = 18
            Caption = 'Quantidade Te'#243'rica:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 198
            Top = 77
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'QTDTEORICA'
            DataSource = Src_ProdFab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 318
            Top = 77
            Width = 130
            Height = 18
            Caption = 'LITROS/KILOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 0
            Top = 95
            Width = 440
            Height = 18
            Caption = 'Quantidade Real Obitida:___________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 451
            Top = 92
            Width = 260
            Height = 18
            Caption = 'L/Kg:_________________ CX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 0
            Top = 114
            Width = 720
            Height = 18
            Caption = 
              'Rendimento Final:_______________________________________________' +
              '___ (%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 0
            Top = 133
            Width = 710
            Height = 18
            Caption = 
              'Garantia de Qualidade:____________________________ Data:____/___' +
              '_/____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = -2
            Top = 155
            Width = 720
            Height = 18
            Caption = 
              '----------------------------------------------------------------' +
              '-------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail1: TRLSubDetail
          Left = 38
          Top = 244
          Width = 718
          Height = 77
          DataSource = Src_Comp_MP
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 17
            BandType = btColumnHeader
            object RLLabel15: TRLLabel
              Left = 304
              Top = -1
              Width = 144
              Height = 17
              Caption = 'MAT'#201'RIAS PRIMAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 17
            Width = 718
            Height = 34
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object lbl_CabOP_CodPro: TRLMemo
              Left = 2
              Top = 0
              Width = 54
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                ''
                'C'#243'digo')
              ParentFont = False
            end
            object lbl_cabOp_NomPro: TRLMemo
              Left = 57
              Top = 0
              Width = 254
              Height = 33
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                ''
                'Nome')
              ParentFont = False
            end
            object lbl_opForCent: TRLMemo
              Left = 310
              Top = 0
              Width = 94
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                'Formula'
                'Centesimal')
              ParentFont = False
            end
            object lbl_opForPad: TRLMemo
              Left = 406
              Top = 0
              Width = 84
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                'Form.Pad.'
                '(Kg/L)')
              ParentFont = False
            end
            object lbl_CabOp_QtdUtil: TRLMemo
              Left = 571
              Top = 0
              Width = 80
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                'Qtd.Util.'
                '(Kg/L)')
              ParentFont = False
            end
            object lbl_CabLoteRe: TRLMemo
              Left = 652
              Top = 0
              Width = 64
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                'Lote (RE)')
              ParentFont = False
            end
            object lbl_opLote: TRLMemo
              Left = 495
              Top = 1
              Width = 72
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                'Lote')
              ParentFont = False
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 51
            Width = 718
            Height = 17
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object Text_CabOP_CodPro: TRLDBText
              Left = 2
              Top = 0
              Width = 54
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CPCODMAT'
              DataSource = Src_Comp_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_CabOP_CodPro
              ParentFont = False
            end
            object Text_cabOp_NomPro: TRLDBText
              Left = 57
              Top = 0
              Width = 254
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMPRO'
              DataSource = Src_Comp_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_cabOp_NomPro
              ParentFont = False
            end
            object Text_opForCent: TRLDBText
              Left = 310
              Top = 0
              Width = 94
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'Observacao'
              DataSource = Src_Comp_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_opForCent
              ParentFont = False
            end
            object text_opForPad: TRLDBText
              Left = 406
              Top = 0
              Width = 84
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'QTDFORM'
              DataSource = Src_Comp_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_opForPad
              ParentFont = False
            end
            object Text_CabOp_QtdUtil: TRLLabel
              Left = 571
              Top = 0
              Width = 80
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_CabOp_QtdUtil
              ParentFont = False
            end
            object text_CabLoteRe: TRLLabel
              Left = 652
              Top = 0
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_CabLoteRe
              ParentFont = False
            end
            object RLDBText25: TRLDBText
              Left = 495
              Top = 0
              Width = 72
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CPNUMERO'
              DataSource = Src_Comp_MP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_opLote
              ParentFont = False
            end
          end
        end
        object rlSubDet_Texto01: TRLSubDetail
          Left = 38
          Top = 321
          Width = 718
          Height = 36
          DataSource = Src_ProdFab
          BeforePrint = rlSubDet_Texto01BeforePrint
          object RLBand_Texto01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 26
            AlignToBottom = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            IntegralHeight = False
            ParentFont = False
            object rlRichTexto01: TRLRichText
              Left = 0
              Top = 0
              Width = 718
              Height = 18
              Align = faTop
            end
          end
        end
        object rlSubDet_Texto02: TRLSubDetail
          Left = 38
          Top = 357
          Width = 718
          Height = 72
          DataSource = Src_ProdFab
          BeforePrint = rlSubDet_Texto02BeforePrint
          object RLBand_Texto02: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            object rlRichTexto02: TRLRichText
              Left = 0
              Top = 0
              Width = 718
              Height = 18
              Align = faTop
              AfterPrint = bbFecharClick
            end
          end
        end
        object RLBand6: TRLBand
          Left = 38
          Top = 243
          Width = 718
          Height = 1
        end
        object RLBand7: TRLBand
          Left = 38
          Top = 227
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object RLLabel16: TRLLabel
            Left = 551
            Top = -1
            Width = 80
            Height = 18
            Caption = 'Pagina:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 631
            Top = -1
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            Info = itPageNumber
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 666
            Top = 0
            Width = 20
            Height = 18
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 677
            Top = 0
            Width = 31
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            Info = itLastPageNumber
            ParentFont = False
          end
        end
      end
    end
    object ts_FichaPesagem_Fortes: TTabSheet
      Caption = 'FichaPesagem Fortes'
      ImageIndex = 10
      object RLReport_Ficha_Pesagem: TRLReport
        Left = 32
        Top = -56
        Width = 794
        Height = 1123
        DataSource = Src_FichaPesagem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Courier New'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 718
          Height = 180
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          ColCount = 2
          ColSpacing = 2.000000000000000000
          object RLLabel18: TRLLabel
            Left = 1
            Top = 1
            Width = 353
            Height = 18
            Align = faClientTop
            Alignment = taCenter
            Caption = 'Etiqueta de Pesagem Mat'#233'ria Prima'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 2
            Top = 22
            Width = 48
            Height = 17
            Caption = 'Data:'
          end
          object RLDBText9: TRLDBText
            Left = 56
            Top = 22
            Width = 64
            Height = 17
            DataField = 'DATADOC'
            DataSource = Src_FichaPesagem
          end
          object RLLabel20: TRLLabel
            Left = 2
            Top = 42
            Width = 72
            Height = 17
            Caption = 'Produto:'
          end
          object RLDBText10: TRLDBText
            Left = 77
            Top = 42
            Width = 56
            Height = 17
            DataField = 'NOMPRO'
            DataSource = Src_FichaPesagem
          end
          object RLLabel21: TRLLabel
            Left = 2
            Top = 60
            Width = 48
            Height = 17
            Caption = 'Lote:'
          end
          object RLDBText11: TRLDBText
            Left = 57
            Top = 60
            Width = 40
            Height = 17
            DataField = 'LOTE'
            DataSource = Src_FichaPesagem
          end
          object RLLabel22: TRLLabel
            Left = 240
            Top = 60
            Width = 56
            Height = 17
            Caption = 'No.RE:'
          end
          object RLDBText12: TRLDBText
            Left = 294
            Top = 60
            Width = 48
            Height = 17
            DataField = 'QUANT'
            DataSource = Src_FichaPesagem
          end
          object RLLabel23: TRLLabel
            Left = 2
            Top = 79
            Width = 120
            Height = 17
            Caption = 'Mat'#233'ria Prima:'
          end
          object RLDBText13: TRLDBText
            Left = 125
            Top = 79
            Width = 56
            Height = 17
            DataField = 'NOMMAT'
            DataSource = Src_FichaPesagem
          end
          object RLLabel24: TRLLabel
            Left = 2
            Top = 98
            Width = 216
            Height = 17
            Caption = 'Quantidade Pesada/Medida::'
          end
          object RLLabel25: TRLLabel
            Left = 2
            Top = 115
            Width = 352
            Height = 17
            Caption = 'Pesada Por:________________________________'
          end
          object RLLabel26: TRLLabel
            Left = 2
            Top = 134
            Width = 352
            Height = 17
            Caption = 'Conferida por:_____________________________'
          end
          object RLLabel27: TRLLabel
            Left = 1
            Top = 158
            Width = 352
            Height = 17
            Caption = '-------------------------------------------'
          end
        end
      end
    end
    object ts_Envase_Fortes: TTabSheet
      Caption = 'Envase Fortes'
      ImageIndex = 11
      object RLReport_envase: TRLReport
        Left = 9
        Top = -108
        Width = 794
        Height = 1058
        DataSource = Src_ProdFab
        DefaultFilter = matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Courier New'
        Font.Style = []
        Margins.LeftMargin = 5.000000000000000000
        Margins.TopMargin = 3.000000000000000000
        Margins.RightMargin = 5.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 280.000000000000000000
        ShowProgress = False
        object RLBand8: TRLBand
          Left = 19
          Top = 11
          Width = 756
          Height = 38
          BandType = btTitle
          object RLDBText14: TRLDBText
            Left = 0
            Top = 0
            Width = 756
            Height = 17
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel28: TRLLabel
            Left = 126
            Top = 20
            Width = 296
            Height = 17
            Caption = 'ORDEM DE PRODU'#199#195'O - ORDEM DE ENVASE:'
          end
          object RLDBText15: TRLDBText
            Left = 497
            Top = 20
            Width = 64
            Height = 17
            DataField = 'CHAVEOP'
            DataSource = Src_ProdFab
          end
        end
        object RLBand9: TRLBand
          Left = 19
          Top = 49
          Width = 756
          Height = 156
          BandType = btTitle
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          object RLLabel29: TRLLabel
            Left = 0
            Top = 2
            Width = 63
            Height = 15
            Caption = 'Produto:'
          end
          object RLDBText16: TRLDBText
            Left = 86
            Top = 2
            Width = 94
            Height = 16
            AutoSize = False
            DataField = 'CODPRO'
            DataSource = Src_ProdFab
          end
          object RLDBText17: TRLDBText
            Left = 193
            Top = 2
            Width = 519
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_ProdFab
          end
          object RLLabel30: TRLLabel
            Left = 0
            Top = 18
            Width = 98
            Height = 15
            Caption = 'Apresenta'#231#227'o:'
          end
          object RLDBText18: TRLDBText
            Left = 131
            Top = 20
            Width = 575
            Height = 16
            AutoSize = False
            DataField = 'PDAPRES'
            DataSource = Src_ProdFab
          end
          object RLLabel31: TRLLabel
            Left = 0
            Top = 39
            Width = 42
            Height = 15
            Caption = 'Lote:'
          end
          object RLDBText19: TRLDBText
            Left = 120
            Top = 39
            Width = 73
            Height = 16
            AutoSize = False
            DataField = 'LOTE'
            DataSource = Src_ProdFab
          end
          object RLLabel32: TRLLabel
            Left = 522
            Top = 39
            Width = 70
            Height = 15
            Caption = 'Validade:'
          end
          object RLDBText20: TRLDBText
            Left = 612
            Top = 39
            Width = 100
            Height = 16
            AutoSize = False
            DataField = 'PRZVAL'
            DataSource = Src_ProdFab
          end
          object RLLabel33: TRLLabel
            Left = 0
            Top = 58
            Width = 119
            Height = 15
            Caption = 'Data de Emiss'#227'o:'
          end
          object RLDBText21: TRLDBText
            Left = 160
            Top = 58
            Width = 91
            Height = 16
            AutoSize = False
            DataField = 'DATAEMI'
            DataSource = Src_ProdFab
          end
          object RLLabel34: TRLLabel
            Left = 433
            Top = 58
            Width = 140
            Height = 15
            Caption = 'Data de Fabrica'#231#227'o:'
          end
          object RLLabel35: TRLLabel
            Left = 0
            Top = 77
            Width = 140
            Height = 15
            Caption = 'Quantidade Te'#243'rica:'
          end
          object RLDBText22: TRLDBText
            Left = 176
            Top = 77
            Width = 116
            Height = 16
            AutoSize = False
            DataField = 'QTDTEORICA'
            DataSource = Src_ProdFab
          end
          object RLLabel36: TRLLabel
            Left = 291
            Top = 77
            Width = 21
            Height = 15
            Caption = 'CX'
          end
          object RLLabel41: TRLLabel
            Left = -2
            Top = 133
            Width = 765
            Height = 17
            Caption = 
              '----------------------------------------------------------------' +
              '--------------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 142
            Top = 97
            Width = 462
            Height = 15
            Caption = 
              'AP'#211'S A LIBERA'#199#195'O PELO CONTROLE DE QUALIDADE, ENCAMINHAR O PRODUT' +
              'O'
          end
          object RLLabel38: TRLLabel
            Left = 234
            Top = 116
            Width = 259
            Height = 15
            Caption = ' AO SETOR DE ENVASE OU FRACIONAMENTO'
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 19
          Top = 222
          Width = 756
          Height = 77
          DataSource = Src_Comp_MP
          object RLBand10: TRLBand
            Left = 0
            Top = 0
            Width = 756
            Height = 17
            BandType = btColumnHeader
            object RLLabel42: TRLLabel
              Left = 304
              Top = -1
              Width = 184
              Height = 17
              Caption = 'MATERIAIS DE EMBALAGEM'
            end
          end
          object RLBand11: TRLBand
            Left = 0
            Top = 17
            Width = 756
            Height = 33
            BandType = btColumnHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object RLMemo1: TRLMemo
              Left = 2
              Top = 0
              Width = 76
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'C'#243'digo')
            end
            object RLMemo2: TRLMemo
              Left = 77
              Top = 0
              Width = 392
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                ''
                'Nome')
            end
            object RLMemo4: TRLMemo
              Left = 471
              Top = 0
              Width = 114
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Formula'
                'Padr'#227'o(UN)')
            end
            object RLMemo5: TRLMemo
              Left = 585
              Top = 0
              Width = 98
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Lines.Strings = (
                'Quantidade'
                'Utilizada(UN)')
            end
            object RLMemo6: TRLMemo
              Left = 684
              Top = 0
              Width = 70
              Height = 32
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Lote (RE)')
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 50
            Width = 756
            Height = 17
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            object RLDBText23: TRLDBText
              Left = 2
              Top = 0
              Width = 76
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CPCODMAT'
              DataSource = Src_Comp_MP
              Holder = RLMemo1
            end
            object RLDBText24: TRLDBText
              Left = 77
              Top = 0
              Width = 392
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMPRO'
              DataSource = Src_Comp_MP
              Holder = RLMemo2
            end
            object RLDBText26: TRLDBText
              Left = 471
              Top = 0
              Width = 114
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'QTDFORM'
              DataSource = Src_Comp_MP
              Holder = RLMemo4
            end
            object RLLabel43: TRLLabel
              Left = 585
              Top = 0
              Width = 98
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = '______________'
              Holder = RLMemo5
            end
            object RLLabel44: TRLLabel
              Left = 684
              Top = 0
              Width = 70
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = '____________'
              Holder = RLMemo6
            end
          end
        end
        object RLSubDetail_EnvT01: TRLSubDetail
          Left = 19
          Top = 299
          Width = 756
          Height = 36
          DataSource = Src_ProdFab
          BeforePrint = RLSubDetail_EnvT01BeforePrint
          object RLBand13: TRLBand
            Left = 0
            Top = 0
            Width = 756
            Height = 26
            AlignToBottom = True
            IntegralHeight = False
            object RLenv_Texto01: TRLRichText
              Left = 0
              Top = 0
              Width = 756
              Height = 18
              Align = faTop
            end
          end
        end
        object RLSubDetail_EnvT02: TRLSubDetail
          Left = 19
          Top = 335
          Width = 756
          Height = 72
          DataSource = Src_ProdFab
          BeforePrint = RLSubDetail_EnvT02BeforePrint
          object RLBand14: TRLBand
            Left = 0
            Top = 0
            Width = 756
            Height = 23
            object rlEnv_Texto02: TRLRichText
              Left = 0
              Top = 0
              Width = 756
              Height = 18
              Align = faTop
              AfterPrint = bbFecharClick
            end
          end
        end
        object RLBand15: TRLBand
          Left = 19
          Top = 221
          Width = 756
          Height = 1
        end
        object RLBand16: TRLBand
          Left = 19
          Top = 205
          Width = 756
          Height = 16
          BandType = btColumnHeader
          object RLLabel45: TRLLabel
            Left = 551
            Top = -1
            Width = 64
            Height = 17
            Caption = 'Pagina:'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 631
            Top = -1
            Width = 39
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel46: TRLLabel
            Left = 666
            Top = 0
            Width = 16
            Height = 17
            Caption = '/'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 677
            Top = 0
            Width = 31
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
          end
        end
      end
    end
    object TsTextoTmp: TTabSheet
      Caption = 'TsTextoTmp'
      ImageIndex = 12
      object TextoTmp: TRichEdit
        Left = 0
        Top = 0
        Width = 779
        Height = 176
        Align = alClient
        Color = 12123134
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Texto')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object RG_MPPAD: TGroupBox
    Left = 0
    Top = 62
    Width = 787
    Height = 108
    Align = alTop
    Caption = 'Material de Embalagem de Embarque(Caixa Padr'#227'o)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Panel_mppad: TPanel
      Left = 2
      Top = 85
      Width = 783
      Height = 21
      Align = alBottom
      TabOrder = 0
      object sb_mppad_incluir: TSpeedButton
        Left = 0
        Top = 1
        Width = 115
        Height = 19
        Hint = 
          'Click aqui para incluir uma nova '#13#10'Mat'#233'ria Prima(embalagem de em' +
          'barque)'
        Caption = 'Incluir'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_mppad_incluirClick
      end
      object sb_mppad_excluir: TSpeedButton
        Left = 119
        Top = 1
        Width = 115
        Height = 19
        Hint = 
          'Click aqui para excluir Mat'#233'ria'#13#10'Prima(Embalagem de embarque)'#13#10's' +
          'elecionada'
        Caption = 'Excluir'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_mppad_excluirClick
      end
      object lbl_poscursor: TLabel
        Left = 303
        Top = 4
        Width = 76
        Height = 13
        Caption = 'lbl_poscursor'
      end
    end
    object DBGrid_mppad: TDBGrid
      Left = 2
      Top = 15
      Width = 783
      Height = 70
      Hint = 
        'lan'#231'amento do material'#13#10'utilizado na embalagem '#13#10'da caixa padr'#227'o' +
        '(embarque)'#13#10'do produto.'
      Align = alClient
      DataSource = Src_Comp_MP_Pad
      FixedColor = 12910591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid_mppadColExit
      OnExit = DBGrid_mppadExit
      OnKeyPress = DBGrid_mppadKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CPCODMAT'
          Title.Alignment = taCenter
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPQTD_PAD'
          Title.Alignment = taCenter
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNDPRO'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMPRO'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 467
          Visible = True
        end>
    end
  end
  object Src_Comp02: TDataSource
    DataSet = DM3.Tb_Comp02
    OnDataChange = Src_Comp02DataChange
    Left = 424
    Top = 20
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 208
    Top = 120
  end
  object ColorDialog1: TColorDialog
    Left = 240
    Top = 120
  end
  object Tb_Comp_MP_Pad: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Comp_MP_PadBeforeInsert
    AfterInsert = Tb_Comp_MP_PadAfterInsert
    AfterEdit = Tb_Comp_MP_PadAfterEdit
    BeforePost = Tb_Comp_MP_PadBeforePost
    AfterPost = C
    AfterCancel = Tb_Comp_MP_PadAfterCancel
    AfterDelete = C
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPCODMAT,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPNUMERO,'
      '       CPMPNUM,'
      '       CPCODPRO_ACAB,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPQTD_PAD as QTDFORM,'
      '       CPQTD_PAD as PCOUNIFORM,'
      '       PDNOME as NOMPRO,'
      '       PDUND as UNDPRO from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPTIPO = 2'
      'and     CPCODPRO like :CODPRO'
      'and     PDCODPRO = CPCODMAT'
      '')
    UpdateObject = U_Comp_MP_Pad
    Left = 401
    Top = 106
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
    object Tb_Comp_MP_PadCPCODEMP: TFloatField
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_Comp_MP_PadCPORDEM: TFloatField
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Comp_MP_PadCPCODPRO: TFloatField
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Comp_MP_PadCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Comp_MP_PadCPQUANT: TFloatField
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Comp_MP_PadCPPU: TFloatField
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Comp_MP_PadCPNUMERO: TStringField
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Comp_MP_PadCPMPNUM: TStringField
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Comp_MP_PadCPCODPRO_ACAB: TFloatField
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Comp_MP_PadCPALICMSCRED: TFloatField
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Comp_MP_PadCPICMSCRED: TFloatField
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comp_MP_PadCPVLRINC: TFloatField
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Comp_MP_PadCPALIQORI: TFloatField
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comp_MP_PadCPPERCENT: TFloatField
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Comp_MP_PadCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Comp_MP_PadCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Comp_MP_PadCPQTD_PAD: TFloatField
      DisplayLabel = 'N'#250'mero Unidades'
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_MP_PadNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Comp_MP_PadUNDPRO: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNDPRO'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
  end
  object Src_Comp_MP_Pad: TDataSource
    DataSet = Tb_Comp_MP_Pad
    Left = 429
    Top = 106
  end
  object U_Comp_MP_Pad: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCOMP'
      'set'
      '  CPCODEMP = :CPCODEMP,'
      '  CPORDEM = :CPORDEM,'
      '  CPCODPRO = :CPCODPRO,'
      '  CPCODMAT = :CPCODMAT,'
      '  CPQUANT = :CPQUANT,'
      '  CPPU = :CPPU,'
      '  CPNUMERO = :CPNUMERO,'
      '  CPMPNUM = :CPMPNUM,'
      '  CPCODPRO_ACAB = :CPCODPRO_ACAB,'
      '  CPALICMSCRED = :CPALICMSCRED,'
      '  CPICMSCRED = :CPICMSCRED,'
      '  CPVLRINC = :CPVLRINC,'
      '  CPALIQORI = :CPALIQORI,'
      '  CPPERCENT = :CPPERCENT,'
      '  CPPERCENT_REST = :CPPERCENT_REST,'
      '  CPTIPO = :CPTIPO,'
      '  CPQTD_PAD = :CPQTD_PAD'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    InsertSQL.Strings = (
      'insert into CADCOMP'
      '  (CPCODEMP, CPORDEM, CPCODPRO, CPCODMAT, CPQUANT, CPPU, '
      'CPNUMERO, CPMPNUM, '
      
        '   CPCODPRO_ACAB, CPALICMSCRED, CPICMSCRED, CPVLRINC, CPALIQORI,' +
        ' '
      'CPPERCENT, '
      '   CPPERCENT_REST, CPTIPO, CPQTD_PAD)'
      'values'
      '  (:CPCODEMP, :CPORDEM, :CPCODPRO, :CPCODMAT, :CPQUANT, :CPPU, '
      ':CPNUMERO, '
      
        '   :CPMPNUM, :CPCODPRO_ACAB, :CPALICMSCRED, :CPICMSCRED, :CPVLRI' +
        'NC, '
      ':CPALIQORI, '
      '   :CPPERCENT, :CPPERCENT_REST, :CPTIPO, :CPQTD_PAD)')
    DeleteSQL.Strings = (
      'delete from CADCOMP'
      'where'
      '  CPCODEMP = :OLD_CPCODEMP and'
      '  CPORDEM = :OLD_CPORDEM and'
      '  CPCODPRO = :OLD_CPCODPRO and'
      '  CPCODMAT = :OLD_CPCODMAT and'
      '  CPTIPO = :OLD_CPTIPO')
    Left = 463
    Top = 103
  end
  object Qr_ProdFab: TQuery
    OnCalcFields = Qr_ProdFabCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO AS CODPRO, PDNOME,PDAPRES,PDQTDGRML,'
      'PDMARCA AS LOTE,'
      'PDUND AS UND,'
      'TO_DATE('#39'01/01/2010'#39') AS DATADOC,'
      'TO_DATE('#39'01/01/2010'#39') AS DATAEMI,'
      'TO_DATE('#39'01/01/2010'#39') AS DATAVEN,'
      'PDSALDO-PDSALDO AS QTDTEORICA,'
      'PDSALDO-PDSALDO AS QTDREAL,'
      'PDMARCA AS COORD_PROD,'
      'PDSALDO-PDSALDO AS RENDIMENTO,'
      'PDMARCA AS COORD_PROD_REND,'
      'PDMARCA AS GARANTIA_QUAL,'
      'TO_DATE('#39'01/01/2010'#39') AS DATAQUAL,'
      'PDSALDO-PDSALDO AS QTDPREV,'
      'PDSALDO-PDSALDO AS CHAVEOP,'
      'PDPRZVAL AS PRZVAL,'
      'PDPRZVAL AS OP1_STATUS'
      'FROM CADPRO')
    Left = 584
    Top = 135
    object Qr_ProdFabPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_ProdFabPDAPRES: TStringField
      FieldName = 'PDAPRES'
      Size = 30
    end
    object Qr_ProdFabPDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
    end
    object Qr_ProdFabLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_ProdFabUND: TStringField
      FieldName = 'UND'
      Size = 3
    end
    object Qr_ProdFabDATADOC: TDateTimeField
      FieldName = 'DATADOC'
    end
    object Qr_ProdFabDATAEMI: TDateTimeField
      FieldName = 'DATAEMI'
    end
    object Qr_ProdFabQTDTEORICA: TFloatField
      FieldName = 'QTDTEORICA'
    end
    object Qr_ProdFabQTDREAL: TFloatField
      FieldName = 'QTDREAL'
    end
    object Qr_ProdFabCOORD_PROD: TStringField
      FieldName = 'COORD_PROD'
    end
    object Qr_ProdFabRENDIMENTO: TFloatField
      FieldName = 'RENDIMENTO'
    end
    object Qr_ProdFabCOORD_PROD_REND: TStringField
      FieldName = 'COORD_PROD_REND'
    end
    object Qr_ProdFabGARANTIA_QUAL: TStringField
      FieldName = 'GARANTIA_QUAL'
    end
    object Qr_ProdFabDATAQUAL: TDateTimeField
      FieldName = 'DATAQUAL'
    end
    object Qr_ProdFabQTDPREV: TFloatField
      FieldName = 'QTDPREV'
    end
    object Qr_ProdFabundmed: TStringField
      FieldKind = fkCalculated
      FieldName = 'undmed'
      Calculated = True
    end
    object Qr_ProdFabundemb: TStringField
      FieldKind = fkCalculated
      FieldName = 'undemb'
      Calculated = True
    end
    object Qr_ProdFabPRZVAL: TFloatField
      FieldName = 'PRZVAL'
    end
    object Qr_ProdFabundmed_ltkg: TStringField
      FieldKind = fkCalculated
      FieldName = 'undmed_ltkg'
      Calculated = True
    end
    object Qr_ProdFabCHAVEOP: TFloatField
      FieldName = 'CHAVEOP'
    end
    object Qr_ProdFabCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_ProdFabDATAVEN: TDateTimeField
      FieldName = 'DATAVEN'
    end
    object Qr_ProdFabOP1_STATUS: TFloatField
      FieldName = 'OP1_STATUS'
    end
    object Qr_ProdFabrendimento_calc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'rendimento_calc'
      Calculated = True
    end
  end
  object Tb_Comp_MP: TQuery
    CachedUpdates = True
    AfterPost = C
    AfterDelete = C
    OnCalcFields = Tb_Comp_MPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CPCODEMP,'
      '       CPORDEM,'
      '       CPCODPRO,'
      '       CPCODMAT,'
      '       CPQUANT,'
      '       CPPU,'
      '       CPNUMERO,'
      '       CPMPNUM,'
      '       CPCODPRO_ACAB,'
      '       CPALICMSCRED,'
      '       CPICMSCRED,'
      '       CPVLRINC,'
      '       CPALIQORI,'
      '       CPPERCENT,'
      '       CPPERCENT_REST,'
      '       CPTIPO,'
      '       CPQTD_PAD,'
      '       CPQTD_PAD as QTDFORM,'
      '       CPQTD_PAD as PCOUNIFORM,'
      '       PDNOME as NOMPRO,'
      '       PDUND as UNDPRO from CADCOMP,CADPRO'
      'where CPCODEMP like :CODEMP'
      'and     CPTIPO = 0'
      'and     CPCODPRO like :CODPRO'
      'and     PDCODPRO = CPCODMAT'
      '')
    Left = 632
    Top = 87
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
    object Tb_Comp_MPCPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CPCODEMP'
      Origin = 'SG_ASSOC.CADCOMP.CPCODEMP'
    end
    object Tb_Comp_MPCPORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CPORDEM'
      Origin = 'SG_ASSOC.CADCOMP.CPORDEM'
    end
    object Tb_Comp_MPCPCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produzir'
      FieldName = 'CPCODPRO'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO'
    end
    object Tb_Comp_MPCPCODMAT: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CPCODMAT'
      Origin = 'SG_ASSOC.CADCOMP.CPCODMAT'
    end
    object Tb_Comp_MPCPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CPQUANT'
      Origin = 'SG_ASSOC.CADCOMP.CPQUANT'
    end
    object Tb_Comp_MPCPPU: TFloatField
      DisplayLabel = 'P'#231'o Unit'#225'rio'
      FieldName = 'CPPU'
      Origin = 'SG_ASSOC.CADCOMP.CPPU'
    end
    object Tb_Comp_MPCPNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CPNUMERO'
      Origin = 'SG_ASSOC.CADCOMP.CPNUMERO'
    end
    object Tb_Comp_MPCPCODPRO_ACAB: TFloatField
      DisplayLabel = 'C'#243'd.Acabado'
      FieldName = 'CPCODPRO_ACAB'
      Origin = 'SG_ASSOC.CADCOMP.CPCODPRO_ACAB'
    end
    object Tb_Comp_MPCPMPNUM: TStringField
      DisplayLabel = 'N'#250'mero MP'
      FieldName = 'CPMPNUM'
      Origin = 'SG_ASSOC.CADCOMP.CPMPNUM'
    end
    object Tb_Comp_MPCPALICMSCRED: TFloatField
      DisplayLabel = 'Aliq.Icms'
      FieldName = 'CPALICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPALICMSCRED'
    end
    object Tb_Comp_MPCPICMSCRED: TFloatField
      DisplayLabel = 'Icms Credito'
      FieldName = 'CPICMSCRED'
      Origin = 'SG_ASSOC.CADCOMP.CPICMSCRED'
    end
    object Tb_Comp_MPCPVLRINC: TFloatField
      DisplayLabel = 'Vlr.Inc.'
      FieldName = 'CPVLRINC'
      Origin = 'SG_ASSOC.CADCOMP.CPVLRINC'
    end
    object Tb_Comp_MPCPALIQORI: TFloatField
      DisplayLabel = 'Aliq.Origem'
      FieldName = 'CPALIQORI'
      Origin = 'SG_ASSOC.CADCOMP.CPALIQORI'
    end
    object Tb_Comp_MPtotal: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Tb_Comp_MPtotalliq: TFloatField
      DisplayLabel = 'Total Liq'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
    object Tb_Comp_MPCPPERCENT: TFloatField
      DisplayLabel = '%'
      FieldName = 'CPPERCENT'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT'
    end
    object Tb_Comp_MPCPPERCENT_REST: TFloatField
      FieldName = 'CPPERCENT_REST'
      Origin = 'SG_ASSOC.CADCOMP.CPPERCENT_REST'
    end
    object Tb_Comp_MPCPTIPO: TFloatField
      FieldName = 'CPTIPO'
      Origin = 'SG_ASSOC.CADCOMP.CPTIPO'
    end
    object Tb_Comp_MPObservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Observacao'
      Calculated = True
    end
    object Tb_Comp_MPCPQTD_PAD: TFloatField
      FieldName = 'CPQTD_PAD'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_MPNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_Comp_MPUNDPRO: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UNDPRO'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_Comp_MPQTDFORM: TFloatField
      FieldName = 'QTDFORM'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
    object Tb_Comp_MPPCOUNIFORM: TFloatField
      FieldName = 'PCOUNIFORM'
      Origin = 'SG_ASSOC.CADCOMP.CPQTD_PAD'
    end
  end
  object Tb_FichaPesagem: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_Comp_MP_PadBeforeInsert
    AfterInsert = Tb_Comp_MP_PadAfterInsert
    AfterEdit = Tb_Comp_MP_PadAfterEdit
    BeforePost = Tb_Comp_MP_PadBeforePost
    AfterPost = C
    AfterCancel = Tb_Comp_MP_PadAfterCancel
    AfterDelete = C
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39'NOME DO PRODUTO '#39' AS NOMPRO,'
      '       '#39'LOTE '#39' AS LOTERE,'
      '       '#39'LOTE '#39' AS LOTE,'
      '        TO_DATE('#39'01/01/2006'#39') AS DATADOC,'
      '        CPCODMAT AS CODMAT,'
      '        CPQUANT AS QUANT,'
      '        CPPU    AS PCOUNI,'
      '        PDNOME  AS NOMMAT,'
      '        PDUND   AS NOMUND '
      '  from CADCOMP,CADPRO '
      ' where  CPCODEMP=1 and '
      ' (CPTIPO=0 or CPTIPO is null) '
      ' and CPCODPRO=0'
      ' and CPCODPRO_ACAB=0'
      ' and PDCODEMP=CPCODEMP'
      'and PDCODPRO=CPCODMAT '
      ' ORDER BY CPTIPO,CPORDEM '
      '')
    Left = 705
    Top = 82
    object Tb_FichaPesagemNOMPRO: TStringField
      FieldName = 'NOMPRO'
      FixedChar = True
      Size = 16
    end
    object Tb_FichaPesagemLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 5
    end
    object Tb_FichaPesagemDATADOC: TDateTimeField
      FieldName = 'DATADOC'
    end
    object Tb_FichaPesagemCODMAT: TFloatField
      FieldName = 'CODMAT'
    end
    object Tb_FichaPesagemQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object Tb_FichaPesagemPCOUNI: TFloatField
      FieldName = 'PCOUNI'
    end
    object Tb_FichaPesagemNOMMAT: TStringField
      FieldName = 'NOMMAT'
      Size = 53
    end
    object Tb_FichaPesagemNOMUND: TStringField
      FieldName = 'NOMUND'
      Size = 3
    end
    object Tb_FichaPesagemLOTERE: TStringField
      FieldName = 'LOTERE'
      FixedChar = True
      Size = 5
    end
  end
  object Src_ProdFab: TDataSource
    DataSet = Qr_ProdFab
    Left = 624
    Top = 136
  end
  object Src_Comp_MP: TDataSource
    DataSet = Tb_Comp_MP
    Left = 600
    Top = 88
  end
  object Src_FichaPesagem: TDataSource
    DataSet = Tb_FichaPesagem
    Left = 678
    Top = 83
  end
  object matricial: TRLDraftFilter
    Left = 544
    Top = 40
  end
end
