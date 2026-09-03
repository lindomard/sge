object frm_ped_02: Tfrm_ped_02
  Left = 1
  Top = 3
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o do Cadastro de Pedidos'
  ClientHeight = 410
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 672
    Top = 240
    Width = 23
    Height = 22
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 381
    Width = 622
    Height = 29
    Align = alBottom
    ButtonHeight = 25
    Caption = 'ToolBar1'
    TabOrder = 6
    object btn_email: TSpeedButton
      Left = 0
      Top = 2
      Width = 71
      Height = 25
      Cursor = crHandPoint
      Caption = 'e-mail'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        0000777777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
        77F07F773FF3333F77370FFF77FFFF77FFF07F33773FFF7733370FFFFF0000FF
        FFF07F333F77773FF3370FFF70EEEE07FFF07F3F773333773FF70F707FFFFFF7
        07F07F77333333337737007EEEEEEEEEE70077FFFFFFFFFFFF77077777777777
        77707777777777777777307EEEEEEEEEE7033773FF333333F77333707FFFFFF7
        0733333773FF33F773333333707EE707333333333773F7733333333333700733
        3333333333377333333333333333333333333333333333333333}
      NumGlyphs = 2
      Spacing = 2
      OnClick = btn_emailClick
    end
    object CB_MARCAPRO: TCheckBox
      Left = 71
      Top = 2
      Width = 81
      Height = 25
      Caption = 'Exibir Marca'
      TabOrder = 3
      OnClick = CB_MARCAPROClick
    end
    object sbt_contrato: TSpeedButton
      Left = 152
      Top = 2
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = 'Contrato'
      Flat = True
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
      Spacing = 2
      OnClick = sbt_contratoClick
    end
    object sbt_emitirecibo: TSpeedButton
      Left = 240
      Top = 2
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Emitir Recibo'
      Flat = True
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
      Spacing = 2
      OnClick = sbt_emitireciboClick
    end
    object btn_nota: TSpeedButton
      Left = 330
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = 'Emitir Nota'
      Flat = True
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
      Spacing = 2
      OnClick = btn_notaClick
    end
    object sBn_Docop: TSpeedButton
      Left = 425
      Top = 2
      Width = 112
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir DOCOP'
      Flat = True
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
      Spacing = 2
      OnClick = sBn_DocopClick
    end
    object btn_imprimir: TSpeedButton
      Left = 537
      Top = 2
      Width = 69
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Flat = True
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
      Spacing = 2
      OnClick = btn_imprimirClick
    end
    object bbVendaRapida: TBitBtn
      Left = 606
      Top = 2
      Width = 94
      Height = 25
      Caption = 'Venda R'#225'pida'
      Enabled = False
      TabOrder = 1
      OnClick = bbVendaRapidaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbInutNFE: TBitBtn
      Left = 700
      Top = 2
      Width = 89
      Height = 25
      Caption = 'Inutilizar NFE'
      TabOrder = 4
      OnClick = bbInutNFEClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbIncluirXML: TBitBtn
      Left = 789
      Top = 2
      Width = 86
      Height = 25
      Caption = 'Incluir de XML'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = bbIncluirXMLClick
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
    object BitBtn1: TBitBtn
      Left = 875
      Top = 2
      Width = 44
      Height = 25
      Caption = 'Queda'
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 3
    Align = alTop
    Color = clActiveCaption
    TabOrder = 2
  end
  object Panel_cabecalho: TPanel
    Left = 0
    Top = 3
    Width = 622
    Height = 25
    Align = alTop
    TabOrder = 0
    OnEnter = Panel_cabecalhoEnter
    object btn_incluir: TBitBtn
      Left = 3
      Top = 1
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = btn_incluirClick
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
    object btn_localizar: TBitBtn
      Left = 91
      Top = 1
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = btn_localizarClick
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
    object btn_alterar: TBitBtn
      Left = 179
      Top = 1
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Caption = '&Alterar'
      TabOrder = 3
      OnClick = btn_alterarClick
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
    end
    object btn_gravar: TBitBtn
      Left = 256
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 4
      OnClick = btn_gravarClick
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
    object btn_faturar: TBitBtn
      Left = 331
      Top = 0
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Caption = '&Faturar'
      TabOrder = 5
      OnClick = btn_faturarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_calcular: TBitBtn
      Left = 406
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Calcular'
      TabOrder = 6
      OnClick = btn_calcularClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object btn_excluir: TBitBtn
      Left = 481
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Excluir'
      TabOrder = 7
      OnClick = btn_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btn_arredondar: TBitBtn
      Left = 557
      Top = 1
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = 'A&rredondar'
      TabOrder = 8
      OnClick = btn_arredondarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
        77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
        07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btn_cancelar: TBitBtn
      Left = 636
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ca&ncelar'
      TabOrder = 0
      TabStop = False
      OnClick = btn_cancelarClick
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
    object btn_sair: TBitBtn
      Left = 711
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 9
      OnClick = btn_sairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object gb_totais: TGroupBox
    Left = 0
    Top = 328
    Width = 622
    Height = 53
    Align = alBottom
    Caption = 'Totais'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 5
    object StaticText19: TStaticText
      Left = 3
      Top = 15
      Width = 48
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Qtd.Itens:'
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object edt_qtdeitem: TStaticText
      Left = 52
      Top = 15
      Width = 30
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 16744576
      ParentColor = False
      TabOrder = 1
    end
    object StaticText21: TStaticText
      Left = 115
      Top = 15
      Width = 59
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total Und.:'
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object edt_totalitem: TStaticText
      Left = 172
      Top = 15
      Width = 58
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 16744576
      ParentColor = False
      TabOrder = 3
    end
    object StaticText28: TStaticText
      Left = 231
      Top = 15
      Width = 65
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'IPI:'
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object st_frete: TStaticText
      Left = 533
      Top = 15
      Width = 61
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '&Frete:'
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object st_icmsretido: TStaticText
      Left = 728
      Top = 14
      Width = 57
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 13238163
      ParentColor = False
      TabOrder = 6
    end
    object StaticText22: TStaticText
      Left = 660
      Top = 14
      Width = 69
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Retido'
      Color = 13238163
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object StaticText26: TStaticText
      Left = 533
      Top = 32
      Width = 127
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total Liquido:'
      Color = 16744576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object st_totliquido: TStaticText
      Left = 660
      Top = 32
      Width = 123
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 16744576
      ParentColor = False
      TabOrder = 9
    end
    object edt_valorfrete: TCurrencyEdit
      Left = 597
      Top = 15
      Width = 62
      Height = 19
      AutoSize = False
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edt_valorfreteExit
      OnKeyPress = edt_valorfreteKeyPress
    end
    object edt_valoipi: TCurrencyEdit
      Left = 296
      Top = 14
      Width = 93
      Height = 19
      AutoSize = False
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      TabOrder = 11
      OnExit = edt_valoipiExit
      OnKeyPress = edt_valoipiKeyPress
    end
    object edt_qtdeServ: TStaticText
      Left = 82
      Top = 16
      Width = 30
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 16744576
      ParentColor = False
      TabOrder = 12
    end
    object st_descontos: TStaticText
      Left = 231
      Top = 32
      Width = 159
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 10921727
      ParentColor = False
      TabOrder = 13
    end
    object StaticText99: TStaticText
      Left = 2
      Top = 33
      Width = 104
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total Bruto:'
      Color = 16744576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object st_totalbruto: TStaticText
      Left = 107
      Top = 34
      Width = 123
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00 '
      Color = 16744576
      ParentColor = False
      TabOrder = 15
    end
    object BitBtn2: TBitBtn
      Left = 592
      Top = 16
      Width = 41
      Height = 33
      Caption = 'BitBtn2'
      TabOrder = 16
      Visible = False
      OnClick = BitBtn2Click
    end
    object StaticText102: TStaticText
      Left = 414
      Top = 14
      Width = 101
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '&Outras Despesas'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 17
    end
    object edt_outdesp: TCurrencyEdit
      Left = 414
      Top = 31
      Width = 100
      Height = 19
      AutoSize = False
      Color = clActiveCaption
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 18
      OnExit = edt_valorfreteExit
      OnKeyPress = edt_valorfreteKeyPress
    end
  end
  object Button1: TButton
    Left = 488
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
  object pnl_pedido: TPanel
    Left = 0
    Top = 28
    Width = 622
    Height = 199
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    TabStop = True
    object pgc_capapedido: TPageControl
      Left = 2
      Top = 4
      Width = 618
      Height = 193
      ActivePage = tbs_principal
      Align = alBottom
      Style = tsFlatButtons
      TabOrder = 0
      TabStop = False
      object tbs_principal: TTabSheet
        Caption = '&Dados Principais'
        object Bevel1: TBevel
          Left = 0
          Top = -2
          Width = 610
          Height = 164
          Align = alBottom
          Shape = bsFrame
          Style = bsRaised
        end
        object Label21: TLabel
          Left = 4
          Top = 99
          Width = 78
          Height = 13
          Caption = 'Obs Nota Fiscal:'
        end
        object lbl_cfop_ger: TLabel
          Left = 332
          Top = 80
          Width = 76
          Height = 13
          Caption = 'Cfop do Pedido:'
        end
        object lbl_fpgto: TLabel
          Left = 433
          Top = 141
          Width = 124
          Height = 13
          Caption = 'Forma de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421440
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_valpro: TLabel
          Left = 431
          Top = 122
          Width = 126
          Height = 13
          Caption = 'Validade da Proposta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421440
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_prazoent: TLabel
          Left = 454
          Top = 100
          Width = 103
          Height = 13
          Caption = 'Prazo de Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421440
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 23
          Top = 117
          Width = 58
          Height = 13
          Caption = 'Obs Pedido:'
        end
        object lbl_tpp: TLabel
          Left = 2
          Top = 82
          Width = 82
          Height = 13
          Caption = 'Preco Padrao:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bb_extra: TSpeedButton
          Left = 381
          Top = 123
          Width = 44
          Height = 36
          Caption = '&Extra'
          OnClick = bb_extraClick
        end
        object StaticText2: TStaticText
          Left = 2
          Top = 1
          Width = 55
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Chave'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object StaticText7: TStaticText
          Left = 282
          Top = 1
          Width = 68
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object StaticText12: TStaticText
          Left = 349
          Top = 1
          Width = 235
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cliente'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object lbl_codven: TStaticText
          Left = 582
          Top = 1
          Width = 191
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object ST_NOMPV: TStaticText
          Left = 2
          Top = 41
          Width = 206
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Plano de Vendas'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
        object edt_chave: TEdit
          Left = 2
          Top = 18
          Width = 54
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object edt_datapedido: TMaskEdit
          Left = 282
          Top = 18
          Width = 67
          Height = 21
          Ctl3D = True
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          Text = '  /  /    '
          OnEnter = edt_datapedidoEnter
          OnExit = edt_datapedidoExit
        end
        object edt_codcliente: TEdit
          Left = 351
          Top = 18
          Width = 55
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = edt_codclienteEnter
          OnExit = edt_codclienteExit
          OnKeyPress = edt_codclienteKeyPress
        end
        object edt_nomecliente: TEdit
          Left = 405
          Top = 18
          Width = 177
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_codvendedor: TEdit
          Left = 583
          Top = 18
          Width = 41
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 5
          OnEnter = edt_codvendedorEnter
          OnExit = edt_codvendedorExit
          OnKeyPress = edt_codvendedorKeyPress
        end
        object edt_nomevendedor: TEdit
          Left = 623
          Top = 18
          Width = 149
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object cb_tabelavenda: TComboBox
          Left = 2
          Top = 60
          Width = 42
          Height = 21
          Ctl3D = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 6
          Text = 'AP'
          OnEnter = cb_tabelavendaEnter
          OnExit = cb_tabelavendaExit
          OnKeyDown = cb_tabelavendaKeyDown
          Items.Strings = (
            'AV'
            'AP'
            'PP'
            'CV'
            'PO')
        end
        object edt_codvenda: TEdit
          Left = 43
          Top = 59
          Width = 36
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 7
          OnEnter = edt_codvendaEnter
          OnExit = edt_codvendaExit
          OnKeyDown = edt_codvendaKeyDown
          OnKeyPress = edt_codvendaKeyPress
        end
        object edt_nomevenda: TEdit
          Left = 78
          Top = 59
          Width = 130
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 9
        end
        object edt_codbanco: TEdit
          Left = 209
          Top = 58
          Width = 34
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 10
          OnExit = edt_codbancoExit
          OnKeyPress = edt_codbancoKeyPress
        end
        object edt_codbanco2: TEdit
          Left = 242
          Top = 58
          Width = 34
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 11
          Visible = False
          OnExit = edt_codbanco2Exit
          OnKeyPress = edt_codbanco2KeyPress
        end
        object edt_nomebanco: TEdit
          Left = 242
          Top = 58
          Width = 194
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
          Text = 'Carteira'
        end
        object edt_obs1: TEdit
          Left = 83
          Top = 102
          Width = 342
          Height = 20
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 120
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
        end
        object edt_obs2: TEdit
          Left = 83
          Top = 121
          Width = 298
          Height = 20
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 120
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
        end
        object edt_obs3: TEdit
          Left = 83
          Top = 139
          Width = 298
          Height = 20
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 120
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
        end
        object chk_orcamento: TCheckBox
          Left = 478
          Top = 79
          Width = 73
          Height = 17
          TabStop = False
          Caption = '&Orcamento'
          TabOrder = 30
          OnEnter = chk_orcamentoEnter
          OnExit = chk_orcamentoExit
        end
        object cb_leitor: TCheckBox
          Left = 668
          Top = 82
          Width = 88
          Height = 17
          TabStop = False
          Caption = 'Leitor Optico'
          TabOrder = 26
          OnEnter = cb_leitorEnter
          OnExit = cb_leitorExit
        end
        object StaticText30: TStaticText
          Left = 58
          Top = 1
          Width = 224
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tipo do Pedido'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
        end
        object cb_tipopedido: TComboBox
          Left = 58
          Top = 18
          Width = 223
          Height = 21
          AutoDropDown = True
          Style = csDropDownList
          Ctl3D = True
          Enabled = False
          ItemHeight = 13
          ParentCtl3D = False
          Sorted = True
          TabOrder = 1
          OnEnter = cb_tipopedidoEnter
          OnExit = cb_tipopedidoExit
          Items.Strings = (
            'Dev. a Fornecedor'
            'Dev. Cliente(Entrada)'
            'Emprestimo de Mercadorias'
            'Nota Complementar')
        end
        object StaticText1: TStaticText
          Left = 208
          Top = 41
          Width = 230
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Cobran'#231'a'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 28
        end
        object Static_origem: TStaticText
          Left = 437
          Top = 41
          Width = 146
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Origem do Pedido'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
        end
        object CB_ORIGEM: TComboBox
          Left = 437
          Top = 58
          Width = 146
          Height = 21
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          Text = 'Vendedor'
          OnClick = CB_ORIGEMClick
          Items.Strings = (
            'Vendedor'
            'Televendas'
            'Internet'
            'Disp.M'#243'vel'
            'Outros')
        end
        object ST_CODTLV: TStaticText
          Left = 583
          Top = 41
          Width = 187
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Televendas'
          Color = 7105536
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          Visible = False
        end
        object CODTLV: TEdit
          Left = 584
          Top = 59
          Width = 47
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 15
          Visible = False
          OnExit = CODTLVExit
          OnKeyPress = CODTLVKeyPress
        end
        object NOMTLV: TEdit
          Left = 631
          Top = 59
          Width = 139
          Height = 21
          TabStop = False
          Color = 16769520
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
          Visible = False
        end
        object CB_ACEITAPRM: TCheckBox
          Left = 554
          Top = 80
          Width = 112
          Height = 18
          TabStop = False
          Caption = 'Aceitar Promo'#231#245'es'
          Checked = True
          State = cbChecked
          TabOrder = 31
        end
        object txt_prazoent: TEdit
          Left = 559
          Top = 102
          Width = 212
          Height = 20
          Color = 13828050
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 50
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
        end
        object txt_valpro: TEdit
          Left = 559
          Top = 121
          Width = 212
          Height = 20
          Color = 13828050
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 50
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 33
        end
        object txt_fpgto: TEdit
          Left = 559
          Top = 139
          Width = 212
          Height = 20
          Color = 13828050
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 20
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
        end
        object CB_TPP: TComboBox
          Left = 83
          Top = 81
          Width = 246
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          TabOrder = 17
          Text = 'Pre'#231'o 1'
          OnExit = CB_TPPExit
          Items.Strings = (
            'Pre'#231'o 1'
            'Pre'#231'o 2'
            'Pre'#231'o 3')
        end
        object GB_MAISINFOPROD: TGroupBox
          Left = 4
          Top = 115
          Width = 775
          Height = 57
          Caption = 'mais informa'#231#245'es do produto acima:'
          Color = 8454016
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 35
          Visible = False
          OnExit = GB_MAISINFOPRODExit
          object DBEItem_promocao: TDBEdit
            Left = 2
            Top = 29
            Width = 98
            Height = 19
            DataField = 'P2PROMOCAO'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 0
          end
          object DBEItem_CST: TDBEdit
            Left = 99
            Top = 29
            Width = 38
            Height = 19
            DataField = 'P2SIT'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 1
          end
          object StaticText87: TStaticText
            Left = 2
            Top = 14
            Width = 98
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Promo'#231#227'o'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object StaticText88: TStaticText
            Left = 99
            Top = 14
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'CST'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText89: TStaticText
            Left = 136
            Top = 14
            Width = 33
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'CFOP'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object DBEItem_CFOP: TDBEdit
            Left = 136
            Top = 29
            Width = 33
            Height = 19
            DataField = 'P2CFOSUBECF'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 5
          end
          object StaticText90: TStaticText
            Left = 168
            Top = 14
            Width = 75
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Base ICMS'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEItem_baseicms: TDBEdit
            Left = 168
            Top = 29
            Width = 75
            Height = 19
            DataField = 'baseicms'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 7
          end
          object StaticText91: TStaticText
            Left = 242
            Top = 14
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Aliq'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object DBEItem_AliqIcms: TDBEdit
            Left = 242
            Top = 29
            Width = 34
            Height = 19
            DataField = 'aliq'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 9
          end
          object StaticText92: TStaticText
            Left = 275
            Top = 14
            Width = 79
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor do Icms'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object DBEItem_IcmsNormal: TDBEdit
            Left = 275
            Top = 29
            Width = 79
            Height = 19
            DataField = 'icmsnormal'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 11
          end
          object StaticText93: TStaticText
            Left = 353
            Top = 14
            Width = 79
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Base Retido'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object DBEItem_BaseRetido: TDBEdit
            Left = 353
            Top = 29
            Width = 79
            Height = 19
            DataField = 'P2BASER'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 13
          end
          object StaticText94: TStaticText
            Left = 431
            Top = 14
            Width = 89
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor Retido'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 14
          end
          object DBEItem_Icmsr: TDBEdit
            Left = 431
            Top = 29
            Width = 89
            Height = 19
            DataField = 'P2ICMSR'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 15
          end
          object StaticText95: TStaticText
            Left = 519
            Top = 14
            Width = 89
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Valor da Comiss'#227'o'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 16
          end
          object DBEItem_VCOMIS: TDBEdit
            Left = 519
            Top = 29
            Width = 89
            Height = 19
            DataField = 'P2VCOMIS'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 17
          end
          object StaticText96: TStaticText
            Left = 607
            Top = 14
            Width = 91
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Perc.M'#233'dio Desc'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 18
          end
          object DBEItem_PercMedio: TDBEdit
            Left = 607
            Top = 29
            Width = 91
            Height = 19
            DataField = 'P2DESCM'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 19
          end
          object StaticText97: TStaticText
            Left = 697
            Top = 14
            Width = 78
            Height = 16
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Tipo de Pre'#231'o'
            Color = 16737023
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 20
          end
          object DBEdit1: TDBEdit
            Left = 697
            Top = 29
            Width = 78
            Height = 19
            DataField = 'tipo_preco'
            DataSource = Ds_Itens
            ReadOnly = True
            TabOrder = 21
          end
        end
        object pnl_extra: TPanel
          Left = 148
          Top = 119
          Width = 505
          Height = 129
          TabOrder = 36
          Visible = False
          object m_obs: TMemo
            Left = 1
            Top = 1
            Width = 503
            Height = 100
            Align = alTop
            MaxLength = 3000
            ScrollBars = ssVertical
            TabOrder = 0
            OnExit = m_obsExit
          end
          object btn_fecha: TButton
            Left = 153
            Top = 102
            Width = 209
            Height = 25
            Caption = '&Gravar e Sair'
            TabOrder = 1
            OnClick = btn_fechaClick
          end
        end
      end
      object tbs_outrosdados: TTabSheet
        Caption = '&Outros Dados'
        ImageIndex = 1
        object Bevel4: TBevel
          Left = 0
          Top = 0
          Width = 610
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object Label81: TLabel
          Left = 6
          Top = 90
          Width = 90
          Height = 13
          Caption = 'Local Mercadorias:'
        end
        object StaticText31: TStaticText
          Left = 2
          Top = 3
          Width = 280
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tipo de Pre'#231'o'
          Color = 14811135
          ParentColor = False
          TabOrder = 1
        end
        object cb_tipopreco: TComboBox
          Left = 2
          Top = 22
          Width = 280
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Padr'#227'o'
          OnClick = cb_tipoprecoClick
          OnEnter = cb_tipoprecoEnter
          OnExit = cb_tipoprecoExit
          Items.Strings = (
            'Padr'#227'o'
            'Anterior'
            'Extra'
            'Liquido'
            'Sem P'#231'o=0'
            'Outros'
            'P'#231'o.Compra'
            'Liquido/Extra'
            'P'#231'o.Custo')
        end
        object st_Desc01: TStaticText
          Left = 3
          Top = 47
          Width = 83
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '% Desconto'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object st_desc02: TStaticText
          Left = 85
          Top = 48
          Width = 83
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '% Desconto'
          Color = 14155735
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object chk_materpreco: TCheckBox
          Left = 625
          Top = 49
          Width = 99
          Height = 17
          Caption = 'Manter P'#231'o Fixo'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          Visible = False
        end
        object StaticText32: TStaticText
          Left = 449
          Top = 48
          Width = 142
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Autoriza'#231#227'o'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object edt_autorizacao: TEdit
          Left = 448
          Top = 66
          Width = 144
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
        end
        object edt_nomeconvenio: TEdit
          Left = 312
          Top = 66
          Width = 138
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object StaticText63: TStaticText
          Left = 261
          Top = 48
          Width = 187
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Conv'#234'nio:'
          Color = 14155735
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object st_descvlr: TStaticText
          Left = 168
          Top = 48
          Width = 94
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Em Valor'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object edt_valordesconto: TEdit
          Left = 168
          Top = 66
          Width = 94
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = edt_valordescontoEnter
          OnExit = edt_valordescontoExit
          OnKeyPress = edt_valordescontoKeyPress
        end
        object edt_desconto02: TEdit
          Left = 85
          Top = 66
          Width = 84
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnEnter = edt_desconto02Enter
          OnExit = edt_desconto02Exit
          OnKeyPress = edt_desconto02KeyPress
        end
        object edt_desconto01: TEdit
          Left = 3
          Top = 66
          Width = 83
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = edt_desconto01Enter
          OnExit = edt_desconto01Exit
          OnKeyPress = edt_desconto01KeyPress
        end
        object edt_codconvenio: TEdit
          Left = 261
          Top = 66
          Width = 52
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = edt_codconvenioExit
          OnKeyPress = edt_codconvenioKeyPress
        end
        object cb_local: TComboBox
          Left = 115
          Top = 84
          Width = 199
          Height = 21
          BevelKind = bkSoft
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = 'Prateleira'
          OnEnter = cb_localEnter
          OnExit = cb_localExit
          Items.Strings = (
            'Prateleira'
            'Deposito'
            'Em Reparo')
        end
        object CB_SEPAMB: TCheckBox
          Left = 625
          Top = 66
          Width = 126
          Height = 17
          Caption = 'Separar por Ambiente'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
          OnClick = CB_SEPAMBClick
        end
        object cb_tipo2: TComboBox
          Left = 334
          Top = 94
          Width = 145
          Height = 21
          BevelKind = bkSoft
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          Text = 'cb_tipo2'
          Visible = False
        end
        object btn_emprestimo: TBitBtn
          Left = 4
          Top = 120
          Width = 129
          Height = 39
          Caption = '&Simular Emprestimo'
          TabOrder = 18
          OnClick = btn_emprestimoClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3620066B161
            00CCAF5F00CCAC5E00CCAA5C00CCA85B00CCA55900CCA35700CCA05500CC974F
            00CC8D4900CC864400CC81410066804000008040000080400000B86500C3F7CB
            6BF8FFD472FFFFD573FFFFD472FFFED16FFFFCCD6AFFFBC865FFFBD68EFFFAD6
            91FFFAD896FFEBB452F88A4700C4884600008846000043380000C06C01B4FCCD
            6AFFFAC15BFFFBC35DFFFBC45EFFFAC35DFFFEC862FFFCD386FF3F4FB6FF0761
            DBFF49B8F4FFFADA9CFF985100B5964F000025360000002B0000CA7301A7FBC8
            65FFFBEAD0FFFAD185FFF5DCA9FFF0D6A3FFFFCB65FFFED68AFF405CC3FF1074
            E4FF55C4F4FFFBDC9EFFA95D00AA293C0000002E0000002B0000D47B02A0F8C3
            5FFFF8BE58FFFBC35DFFFEC761FFFFCB65FFFFCC66FFFFCB65FFFED88DFFFCD6
            90FFFBD695FFF8C35FFF805901EC003400CC002F00CC002C0066DC83039FF6BE
            59FFF5B852FFF8BE58FFFBC35DFFFEC761FFFFCB65FFFFCC66FFCDCDCDFFD3D3
            D3FFDADADAFFFBC865FFB79338FF96CA96FF6EAF6EF8003200C4E38703A5F5BA
            54FFF3B24CFFF5B852FFF8BE58FFFBC35DFFFEC761FFFFCB65FFCDCDCDFFD3D3
            D3FFDADADAFFFCCD6AFF938C58FF07A0FFFF8EC68EFF003C00B5E78B03B0F3B8
            52FFF1AD47FFF3B24CFFF5B852FFF8BE58FFFBC35DFFFEC761FFFFCB65FFFFCC
            66FFFFCB65FFFED16FFFD87B12FFC25C29FF87C487FF004800AAE88C03BBF5BC
            52F7F3B852FFF5BA54FFF6BE59FFF8C35FFFFBC865FFFCCD6AFFFED16EFFFFD4
            72FFFFD573FFF8D16FFFCB9826FF82C282FF70BA70FF015301A2E88C035FE88C
            03BDE88C03BDC08703E6C29418FFC29418FFC3951AFFC5961BFFC6971CFFC698
            1DFFC6981DFFDD9934FFD5B280FFD6D6D6FF60B560FF025D02A3E88C0300E88C
            0300AF860300037203A550A550FF4CA14CFF52A752FF58AD58FF5DB25DFF61B6
            61FF65BA65FFBDBDBDFFC9C9C9FFD6D6D6FF66BB66FF026602AAE88C0300AF87
            030003750300037503B04DA24DFF479C47FF4CA14CFF52A752FF58AD58FF5DB2
            5DFF61B661FF65BA65FF66BB66FF65BA65FF6ABF6AFF026D02B3768103000376
            030003760300037603BB4BA34BF74DA24DFF50A550FF55AA55FF5AAF5AFF60B5
            60FF66BB66FF6ABF6AFF6EC36EFF6FC46FFF68C068F7037103BD037603000376
            0300037603000376035F037603BD037603BD037603BD037603BD037603BD0376
            03BD037603BD037603BD037603BD037603BD037603BD03740360FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
        object btn_analise: TBitBtn
          Left = 135
          Top = 120
          Width = 150
          Height = 39
          Caption = '&Analise de Projeto'
          TabOrder = 19
          OnClick = btn_analiseClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FF4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49
            49494949494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494949
            49525249494949494949494949494949494949494949FFFFFFFFFFFFFF494949
            A49B5B5252524949494949494949494949494949494949FFFFFFFFFF49499B52
            A4F6070707070808070707F7F7F7A4A4A4A4F7A4A4524949FFFFFFFFFF49F7F6
            F7F6F60708F6F6F6F6F6F6F6F6F6F6F6080808F6F6F75249FFFFFFFFFF49A408
            F7F6F60807070707F608070707080707070707F6F6F7A449FFFFFFFFFF49A408
            A4F6F6F6F60808080808080807070808070708F6F6F75B49FFFFFFFFFF499B08
            A4F6080707070707080707070708F7070708F6F6F6A44949FFFFFFFFFF495208
            A4F6F6070707080807070707080807070808F6F6075B4949FFFFFFFFFF494907
            A4080707070708080707F70707F707070708F608075249FFFFFFFFFFFF494907
            A408080808080808070707070807070707080808F75249FFFFFFFFFFFF4949F7
            A40807F707070707F70707F7F7F7070707080808A44949FFFFFFFFFFFF4949A4
            A408080708070807070707070707070707070808A44949FFFFFFFFFFFFFF49A4
            A40707070707070807070707070707F707070707A44949FFFFFFFFFFFFFF49A4
            A40707ADA40707070707070707F7A4A4A4F7F707A44949FFFFFFFFFFFFFF49A4
            A407F707F7070707F7F7F7ADA4F707F7F707F7079B4949FFFFFFFFFFFFFF49A4
            A407F7F70707A5070707070707F707F7F707F7075B49FFFFFFFFFFFFFFFF495B
            A40707A407F70707A45B9B0707F7F707F707F7075249FFFFFFFFFFFFFFFF4952
            A4070707A40707070707070707F7F7F70707F7F74949FFFFFFFFFFFFFFFF4952
            A40707070707070707070707ADF7070707F7ADA54949FFFFFFFFFFFFFFFF4952
            A4070707070707079B5B070707A407F707F7ADA44949FFFFFFFFFFFFFF494952
            ADF7F7F7F707F7AD5BF7A40707F7A4F7ADA5F79B49FFFFFFFFFFFFFFFF494952
            F7ADA5F7F70707F75BA4A407F7F7F7A4A4F7F75B49FFFFFFFFFFFFFF49495253
            F7F7F7F7A4ADF7F75BA49BF7F7A4ADA4A4A4A55B49FFFFFFFFFFFFFF52495B9B
            F7ADA4A5F7F7F7F75BA45BF7F7F7A452529BA45B49FFFFFFFFFFFFFF52525BAD
            F7F7F7F7F7F7F7F75BA49BF7F7F79B07ADA4A45249FFFFFFFFFFFFFF52495208
            F79BA4070707F7F75BA4F7F7F7F79B0708085B4949FFFFFFFFFFFFFFFF5252A4
            9B5B5B5B9BF7F7079BF707F7F7F75B08089B4949FFFFFFFFFFFFFFFFFF52525B
            52494949494A49495B52A4F7F707F7075B4949FFFFFFFFFFFFFFFFFFFF525252
            49FFFFFF4949494952A49B49494949494949FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF004949494949FFFFFFFFFFFFFFFFFFFF}
        end
        object StaticText98: TStaticText
          Left = 284
          Top = 3
          Width = 280
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Quantidade de Casas Decimais Para Pre'#231'os Unit'#225'rios'
          Color = 14811135
          ParentColor = False
          TabOrder = 20
        end
        object CB_CASASD: TComboBox
          Left = 285
          Top = 21
          Width = 279
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 3
          Text = 'Padrao(default do Sistema)'
          OnClick = CB_CASASDClick
          Items.Strings = (
            'Padrao(default do Sistema)'
            '2 duas'
            '3 tres'
            '4 quatro'
            '5 cinco'
            '6 seis')
        end
        object gb_imp: TGroupBox
          Left = 568
          Top = 118
          Width = 206
          Height = 43
          Align = alCustom
          Caption = '-= Importar Produtos de Outro Pedido =-'
          Color = clYellow
          ParentColor = False
          TabOrder = 21
          object bb_merc_imp: TButton
            Left = 24
            Top = 14
            Width = 161
            Height = 25
            Caption = '&Buscar Mercadorias'
            TabOrder = 0
            OnClick = bb_merc_impClick
          end
        end
        object CB_MODORCAM: TCheckBox
          Left = 502
          Top = 90
          Width = 154
          Height = 23
          Caption = 'Decri'#231#227'o do Sobre(produto)'
          TabOrder = 22
          Visible = False
        end
        object btn_outinf: TBitBtn
          Left = 288
          Top = 120
          Width = 131
          Height = 39
          Caption = 'Outras Informa'#231#245'es'
          TabOrder = 23
          OnClick = btn_outinfClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
            0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
            005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
            0555557575757575755555505050505055555557575757575555}
          NumGlyphs = 2
        end
        object btn_Custo: TBitBtn
          Left = 432
          Top = 120
          Width = 131
          Height = 39
          Caption = 'A&nalise de Custos'
          TabOrder = 24
          OnClick = btn_CustoClick
          NumGlyphs = 2
        end
      end
      object tbs_situacao: TTabSheet
        Caption = 'Situa'#231#227'o'
        ImageIndex = 2
        object Bevel5: TBevel
          Left = 0
          Top = 0
          Width = 610
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object Label23: TLabel
          Left = 541
          Top = 46
          Width = 78
          Height = 13
          Caption = 'Forma Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GB_VISTO: TGroupBox
          Left = 3
          Top = 86
          Width = 385
          Height = 41
          Caption = 'Sobre o Visto da Vigil'#226'ncia Sant.'
          TabOrder = 0
          object edt_datavis: TMaskEdit
            Left = 34
            Top = 15
            Width = 63
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 0
            Text = '  /  /    '
            OnEnter = edt_datavisEnter
            OnExit = edt_datavisExit
          end
          object edt_numvis: TEdit
            Left = 129
            Top = 15
            Width = 91
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnExit = edt_numvisExit
          end
          object StaticText50: TStaticText
            Left = 4
            Top = 16
            Width = 29
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Data:'
            Color = 14811135
            ParentColor = False
            TabOrder = 2
          end
          object StaticText51: TStaticText
            Left = 98
            Top = 16
            Width = 28
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'N'#250'm:'
            Color = 14811135
            ParentColor = False
            TabOrder = 3
          end
        end
        object cb_emitente: TCheckBox
          Left = 10
          Top = 19
          Width = 149
          Height = 17
          Caption = 'Nota Fiscal de Terceiros'
          TabOrder = 1
          OnClick = cb_emitenteClick
        end
        object StaticText53: TStaticText
          Left = 189
          Top = 4
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Numero NF'
          Color = 14811135
          ParentColor = False
          TabOrder = 2
        end
        object edt_numnf: TEdit
          Left = 189
          Top = 21
          Width = 70
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnExit = edt_numnfExit
        end
        object edt_datanf: TMaskEdit
          Left = 261
          Top = 21
          Width = 65
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          Text = '  /  /    '
          OnExit = edt_datanfExit
        end
        object StaticText54: TStaticText
          Left = 261
          Top = 4
          Width = 65
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data NF'
          Color = 14811135
          ParentColor = False
          TabOrder = 5
        end
        object edt_serienf: TEdit
          Left = 328
          Top = 21
          Width = 35
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          OnExit = edt_serienfExit
        end
        object StaticText55: TStaticText
          Left = 328
          Top = 4
          Width = 35
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'S'#233'rie'
          Color = 14811135
          ParentColor = False
          TabOrder = 7
        end
        object edt_subser: TEdit
          Left = 364
          Top = 21
          Width = 43
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
          OnExit = edt_subserExit
        end
        object StaticText56: TStaticText
          Left = 364
          Top = 4
          Width = 43
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Sub-S'#233'r'
          Color = 14811135
          ParentColor = False
          TabOrder = 9
        end
        object edt_modelo: TEdit
          Left = 408
          Top = 21
          Width = 35
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
          OnExit = edt_modeloExit
        end
        object StaticText57: TStaticText
          Left = 408
          Top = 4
          Width = 35
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Mod'
          Color = 14811135
          ParentColor = False
          TabOrder = 11
        end
        object edt_submod: TEdit
          Left = 445
          Top = 21
          Width = 50
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          OnEnter = edt_submodEnter
          OnExit = edt_submodExit
        end
        object st_submod: TStaticText
          Left = 445
          Top = 4
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Sub-Mod.'
          Color = 14811135
          ParentColor = False
          TabOrder = 13
        end
        object edt_numcf: TEdit
          Left = 497
          Top = 22
          Width = 70
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object StaticText60: TStaticText
          Left = 497
          Top = 4
          Width = 69
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'N'#250'mero CF'
          Color = 14811135
          ParentColor = False
          TabOrder = 15
        end
        object StaticText59: TStaticText
          Left = 566
          Top = 4
          Width = 64
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data CF'
          Color = 14811135
          ParentColor = False
          TabOrder = 16
        end
        object edt_datacf: TMaskEdit
          Left = 566
          Top = 22
          Width = 65
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
          Text = '  /  /    '
        end
        object StaticText36: TStaticText
          Left = 3
          Top = 44
          Width = 178
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor 02'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object edt_codvendedor02: TEdit
          Left = 4
          Top = 62
          Width = 49
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 19
          OnEnter = edt_codvendedor02Enter
          OnExit = edt_codvendedor02Exit
          OnKeyPress = edt_codvendedor02KeyPress
        end
        object edt_nomevendedor2: TEdit
          Left = 52
          Top = 62
          Width = 129
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 20
        end
        object edt_codvendedor03: TEdit
          Left = 184
          Top = 62
          Width = 49
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
          OnEnter = edt_codvendedor03Enter
          OnExit = edt_codvendedor03Exit
          OnKeyPress = edt_codvendedor03KeyPress
        end
        object StaticText37: TStaticText
          Left = 183
          Top = 44
          Width = 178
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor 03'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object edt_nomevendedor3: TEdit
          Left = 233
          Top = 62
          Width = 131
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 23
        end
        object edt_assessor: TEdit
          Left = 363
          Top = 62
          Width = 50
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 24
          OnEnter = edt_assessorEnter
          OnExit = edt_assessorExit
          OnKeyPress = edt_assessorKeyPress
        end
        object StaticText38: TStaticText
          Left = 363
          Top = 44
          Width = 178
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Assessor'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
        object edt_nomeacessor: TEdit
          Left = 412
          Top = 62
          Width = 129
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 26
        end
        object cb_formace: TComboBox
          Left = 542
          Top = 61
          Width = 132
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 27
          Text = 'Quantidade'
          OnExit = cb_formaceExit
          Items.Strings = (
            'Quantidade'
            'Preco Unitario')
        end
        object StaticText39: TStaticText
          Left = 390
          Top = 88
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '% Comiss'#227'o'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 28
        end
        object edt_pcomis: TEdit
          Left = 391
          Top = 107
          Width = 70
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 29
          OnExit = edt_pcomisExit
        end
        object StaticText100: TStaticText
          Left = 471
          Top = 88
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '%Acrescimo'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 30
        end
        object edt_acres: TCurrencyEdit
          Left = 471
          Top = 107
          Width = 69
          Height = 19
          AutoSize = False
          Ctl3D = False
          DisplayFormat = ' ,0.00;- ,0.00'
          ParentCtl3D = False
          TabOrder = 31
          OnEnter = edt_acresEnter
          OnExit = edt_acresExit
        end
      end
      object TsAddExt: TTabSheet
        Caption = 'Valor Adicional'
        ImageIndex = 3
        OnExit = TsAddExtExit
        object Label15: TLabel
          Left = 4
          Top = 3
          Width = 57
          Height = 13
          Caption = 'Descri'#231#227'o..:'
        end
        object Label17: TLabel
          Left = 419
          Top = 3
          Width = 33
          Height = 13
          Caption = 'Valor..:'
        end
        object Label18: TLabel
          Left = 544
          Top = 53
          Width = 61
          Height = 13
          Caption = 'Totalizador..:'
        end
        object sbt_Imprimir2: TSpeedButton
          Left = 569
          Top = 106
          Width = 136
          Height = 25
          Cursor = crHandPoint
          Caption = 'Imprimir'
          Enabled = False
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
          Spacing = 2
          OnClick = sbt_Imprimir2Click
        end
        object edt_descaddext: TEdit
          Left = 64
          Top = -1
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object ce_valaddext: TCurrencyEdit
          Left = 453
          Top = -1
          Width = 84
          Height = 21
          AutoSize = False
          TabOrder = 1
        end
        object dbg_Add: TDBGrid
          Left = 0
          Top = 24
          Width = 537
          Height = 120
          DataSource = srcAddExtra
          PopupMenu = ppAddExtra
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCADDEXT'
              Title.Alignment = taCenter
              Title.Caption = 'DESCRI'#199#195'O DO VALOR ADICIONAL'
              Width = 397
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VALADDEXT'
              Title.Alignment = taCenter
              Title.Caption = 'VALOR'
              Width = 105
              Visible = True
            end>
        end
        object btn_gravAddExtra: TButton
          Left = 568
          Top = 16
          Width = 137
          Height = 25
          Caption = '&Gravar'
          TabOrder = 2
          OnClick = btn_gravAddExtraClick
        end
        object ce_TotAddExt: TCurrencyEdit
          Left = 607
          Top = 49
          Width = 100
          Height = 21
          AutoSize = False
          ReadOnly = True
          TabOrder = 4
        end
        object btn_ValoresAdicionais: TButton
          Left = 568
          Top = 80
          Width = 137
          Height = 25
          Caption = 'Ratear Valores Adicional'
          TabOrder = 5
          OnClick = btn_ValoresAdicionaisClick
        end
      end
      object tbs_cobranca: TTabSheet
        Caption = 'Sobre Entrega/Cobran'#231'a'
        ImageIndex = 3
        object Bevel6: TBevel
          Left = 0
          Top = 0
          Width = 610
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object Label16: TLabel
          Left = 4
          Top = 85
          Width = 99
          Height = 13
          Caption = 'Endere'#231'o do Cliente:'
        end
        object Label10: TLabel
          Left = 8
          Top = 115
          Width = 37
          Height = 13
          Alignment = taCenter
          Caption = 'Contato'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 240
          Top = 115
          Width = 99
          Height = 13
          Alignment = taCenter
          Caption = 'Extorno na Comiss'#227'o'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object StaticText40: TStaticText
          Left = 3
          Top = 4
          Width = 259
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Transportadora'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object StaticText41: TStaticText
          Left = 262
          Top = 5
          Width = 76
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Minuta Entrega'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object edt_minuta: TEdit
          Left = 262
          Top = 22
          Width = 77
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = edt_minutaExit
        end
        object edt_nometrans: TEdit
          Left = 44
          Top = 22
          Width = 219
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object edt_codtra: TEdit
          Left = 3
          Top = 22
          Width = 42
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = edt_codtraEnter
          OnExit = edt_codtraExit
          OnKeyPress = edt_codtraKeyPress
        end
        object StaticText42: TStaticText
          Left = 2
          Top = 46
          Width = 69
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Placa Ve'#237'culo'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object edt_placav: TEdit
          Left = 2
          Top = 63
          Width = 70
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
          OnExit = edt_placavExit
        end
        object edt_ufpv: TEdit
          Left = 71
          Top = 63
          Width = 25
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = edt_ufpvExit
        end
        object StaticText46: TStaticText
          Left = 71
          Top = 46
          Width = 24
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'UF'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object StaticText43: TStaticText
          Left = 95
          Top = 46
          Width = 66
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Qtd.Volumes'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object edt_qtdvol: TEdit
          Left = 95
          Top = 63
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 10
          OnExit = edt_qtdvolExit
        end
        object edt_especie: TEdit
          Left = 161
          Top = 63
          Width = 52
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnExit = edt_especieExit
        end
        object StaticText47: TStaticText
          Left = 162
          Top = 46
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Esp'#233'cie'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object edt_pesob: TEdit
          Left = 212
          Top = 63
          Width = 64
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = edt_pesobExit
        end
        object StaticText48: TStaticText
          Left = 212
          Top = 46
          Width = 63
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Peso Bruto'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object StaticText49: TStaticText
          Left = 275
          Top = 46
          Width = 67
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Peso L'#237'quido'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object edt_pesol: TEdit
          Left = 275
          Top = 63
          Width = 68
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          OnExit = edt_pesolExit
        end
        object edt_valseg: TEdit
          Left = 342
          Top = 63
          Width = 72
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 17
          OnExit = edt_valsegExit
        end
        object StaticText72: TStaticText
          Left = 343
          Top = 46
          Width = 70
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Valor Seguro'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object m_endereco: TMemo
          Left = 113
          Top = 81
          Width = 559
          Height = 32
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 19
        end
        object cb_tipoentrada: TComboBox
          Left = 417
          Top = 61
          Width = 145
          Height = 21
          BevelKind = bkSoft
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
          Text = 'A Retirar'
          OnExit = cb_tipoentradaExit
          Items.Strings = (
            'A Retirar'
            'Destin.c/Fr'
            'Destin.s/Fr'
            'Conv'#234'nio')
        end
        object StaticText44: TStaticText
          Left = 417
          Top = 44
          Width = 143
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Local da entrega'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object edt_prevent: TMaskEdit
          Left = 566
          Top = 63
          Width = 60
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 22
          Text = '  /  /    '
          OnExit = edt_preventExit
        end
        object edt_hprevent: TMaskEdit
          Left = 625
          Top = 63
          Width = 47
          Height = 19
          Ctl3D = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 23
          Text = '  :  :  '
          OnExit = edt_hpreventExit
        end
        object StaticText45: TStaticText
          Left = 566
          Top = 47
          Width = 105
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data/Hora Entrega'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object RGFRETEPC: TRadioGroup
          Left = 417
          Top = 2
          Width = 254
          Height = 42
          Caption = 'Frete Por Conta do:'
          Columns = 2
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -3
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            '&Emitente (CIF)'
            '&Dest (FOB)')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 25
        end
        object edt_contato: TEdit
          Left = 8
          Top = 129
          Width = 146
          Height = 21
          TabOrder = 26
        end
        object ExtPerc: TCurrencyEdit
          Left = 186
          Top = 128
          Width = 103
          Height = 21
          TabStop = False
          AutoSize = False
          Ctl3D = False
          DisplayFormat = '% ,0.00;-% ,0.00'
          ParentCtl3D = False
          TabOrder = 27
          OnExit = ExtPercExit
        end
        object TOTEXTCOM: TCurrencyEdit
          Left = 288
          Top = 128
          Width = 103
          Height = 21
          TabStop = False
          AutoSize = False
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 28
          OnExit = TOTEXTCOMExit
        end
      end
      object tbs_origem: TTabSheet
        Caption = 'Observa'#231#245'es/Origem'
        ImageIndex = 4
        object Bevel7: TBevel
          Left = 0
          Top = 0
          Width = 775
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object sbOrigens: TSpeedButton
          Left = 680
          Top = 32
          Width = 23
          Height = 22
          Hint = 'Click aqui para ver '#13#10'todos Pedidos'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = sbOrigensClick
        end
        object StaticText52: TStaticText
          Left = 216
          Top = 8
          Width = 459
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Pedido de Origem'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object edt_pedori1: TEdit
          Left = 216
          Top = 26
          Width = 460
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_pedori1Exit
          OnKeyPress = edt_pedori1KeyPress
        end
        object edt_pedori2: TEdit
          Left = 216
          Top = 44
          Width = 460
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = edt_pedori2Exit
          OnKeyPress = edt_pedori2KeyPress
        end
        object StaticText58: TStaticText
          Left = 216
          Top = 68
          Width = 170
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Total dos Produtos em Promocao:'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object ST_TOTPROM: TStaticText
          Left = 387
          Top = 67
          Width = 116
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Color = 16744576
          ParentColor = False
          TabOrder = 4
          Visible = False
        end
        object lbl_prazomedio: TStaticText
          Left = 216
          Top = 87
          Width = 170
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Prazo Medio do Pedido:'
          Color = 14811135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
        object ST_PZOMEDIO: TStaticText
          Left = 387
          Top = 86
          Width = 49
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '120 DIAS'
          Color = 16744576
          ParentColor = False
          TabOrder = 6
          Visible = False
        end
        object ST_VCTOMED: TStaticText
          Left = 439
          Top = 86
          Width = 63
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '10/09/2007'
          Color = 16744576
          ParentColor = False
          TabOrder = 7
          Visible = False
        end
        object StaticText66: TStaticText
          Left = 216
          Top = 118
          Width = 69
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Disp.M'#243'vel:'
          TabOrder = 8
        end
        object LOTEDM: TEdit
          Left = 285
          Top = 117
          Width = 66
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 9
        end
        object StaticText67: TStaticText
          Left = 354
          Top = 118
          Width = 79
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Pedido Origem:'
          TabOrder = 10
        end
        object NPEDORI: TEdit
          Left = 434
          Top = 117
          Width = 78
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 11
        end
        object gb_vcto: TGroupBox
          Left = 4
          Top = 4
          Width = 209
          Height = 150
          Caption = 'Valor/Vencimentos:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          object DBG_VCTO: TDBGrid
            Left = 2
            Top = 13
            Width = 205
            Height = 135
            DataSource = DM4.Src_Ped01V
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P1VDATAV'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1VVALOR'
                Width = 104
                Visible = True
              end>
          end
        end
      end
      object Ts_Encomendas: TTabSheet
        Caption = 'Encomendas'
        ImageIndex = 5
        object Label13: TLabel
          Left = 0
          Top = 8
          Width = 104
          Height = 13
          Caption = 'Adquirir Encomenda..:'
        end
        object ce_encomenda: TCurrencyEdit
          Left = 104
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DisplayFormat = '000000'
          TabOrder = 0
        end
        object BBBUSCAENC: TButton
          Left = 168
          Top = 2
          Width = 129
          Height = 25
          Caption = '&Buscar Encomenda'
          TabOrder = 1
          OnClick = BBBUSCAENCClick
        end
      end
      object tbs_processos: TTabSheet
        Caption = 'Processos'
        ImageIndex = 6
        object Bevel12: TBevel
          Left = 0
          Top = 0
          Width = 775
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object StaticText61: TStaticText
          Left = 2
          Top = 3
          Width = 113
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Data/Hora Chegada:'
          TabOrder = 0
        end
        object StaticText62: TStaticText
          Left = 2
          Top = 21
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Digitado Por:'
          TabOrder = 1
        end
        object edt_datachegada: TMaskEdit
          Left = 116
          Top = 2
          Width = 77
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          Text = '  /  /    '
          OnExit = edt_datachegadaExit
        end
        object edt_horachegada: TMaskEdit
          Left = 192
          Top = 2
          Width = 44
          Height = 19
          Ctl3D = False
          EditMask = '!90:00;1; '
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 3
          Text = '  :  '
          OnExit = edt_horachegadaExit
        end
        object StaticText68: TStaticText
          Left = 342
          Top = 5
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Alterado Por:'
          TabOrder = 4
        end
        object StaticText64: TStaticText
          Left = 342
          Top = 22
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Entregue por:'
          TabOrder = 5
        end
        object StaticText65: TStaticText
          Left = 342
          Top = 40
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Conferido Por:'
          TabOrder = 6
        end
        object CODCON: TEdit
          Left = 414
          Top = 39
          Width = 44
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
        end
        object CODENT: TEdit
          Left = 414
          Top = 21
          Width = 44
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 8
        end
        object USRMOD: TEdit
          Left = 414
          Top = 3
          Width = 44
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 9
        end
        object NOMUSRM: TEdit
          Left = 457
          Top = 3
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object NOMENT: TEdit
          Left = 457
          Top = 21
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object NOMCON: TEdit
          Left = 457
          Top = 39
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object DATCON: TMaskEdit
          Left = 552
          Top = 39
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 13
          Text = '  /  /    '
        end
        object DATENT: TMaskEdit
          Left = 552
          Top = 21
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 14
          Text = '  /  /    '
        end
        object DTMOD: TMaskEdit
          Left = 552
          Top = 3
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 15
          Text = '  /  /    '
        end
        object HRMOD: TEdit
          Left = 611
          Top = 3
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 16
        end
        object HORENT: TMaskEdit
          Left = 611
          Top = 21
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 17
          Text = '  :  :  '
        end
        object HORCON: TMaskEdit
          Left = 611
          Top = 39
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 18
          Text = '  :  :  '
        end
        object HOREMB: TMaskEdit
          Left = 270
          Top = 56
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 19
          Text = '  :  :  '
        end
        object edt_horasep: TMaskEdit
          Left = 270
          Top = 38
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 20
          Text = '  :  :  '
        end
        object edt_horadigitacao: TMaskEdit
          Left = 270
          Top = 20
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!00:00:00;1; '
          MaxLength = 8
          ParentCtl3D = False
          TabOrder = 21
          Text = '  :  :  '
        end
        object edt_datadigitacao: TMaskEdit
          Left = 211
          Top = 20
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 22
          Text = '  /  /    '
        end
        object edt_nomedigitador: TEdit
          Left = 116
          Top = 20
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 23
        end
        object edt_codigodigitador: TEdit
          Left = 73
          Top = 20
          Width = 44
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 24
        end
        object StaticText69: TStaticText
          Left = 2
          Top = 39
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Separado Por:'
          TabOrder = 25
        end
        object edt_codsep: TEdit
          Left = 73
          Top = 38
          Width = 44
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 26
          OnExit = edt_codsepExit
          OnKeyPress = edt_codsepKeyPress
        end
        object edt_nomesep: TEdit
          Left = 116
          Top = 38
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 27
        end
        object edt_datasep: TMaskEdit
          Left = 211
          Top = 38
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 28
          Text = '  /  /    '
        end
        object DATEMB: TMaskEdit
          Left = 211
          Top = 56
          Width = 60
          Height = 19
          Color = 16769520
          Ctl3D = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 29
          Text = '  /  /    '
        end
        object NOMEMB: TEdit
          Left = 116
          Top = 56
          Width = 96
          Height = 19
          TabStop = False
          Color = 16769520
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 30
        end
        object CODEMB: TEdit
          Left = 73
          Top = 56
          Width = 44
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 31
        end
        object StaticText70: TStaticText
          Left = 2
          Top = 57
          Width = 70
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Embalado Por:'
          TabOrder = 32
        end
        object cb_conf: TCheckBox
          Left = 2
          Top = 76
          Width = 158
          Height = 17
          Caption = 'Feito Conferencia Eletronica'
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 33
        end
        object cb_canhoto: TCheckBox
          Left = 176
          Top = 76
          Width = 147
          Height = 17
          Caption = 'Recebeu Canhoto NF'
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 34
        end
        object cb_etivol: TCheckBox
          Left = 343
          Top = 76
          Width = 173
          Height = 17
          Caption = 'Emitiu Etiquetas de volumes'
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 35
        end
      end
      object tbs_condicao: TTabSheet
        Caption = 'Condi'#231#245'es'
        ImageIndex = 7
        object Bevel11: TBevel
          Left = 0
          Top = 0
          Width = 775
          Height = 162
          Align = alClient
          Shape = bsFrame
          Style = bsRaised
        end
        object memo_condicoes: TMemo
          Left = 2
          Top = 3
          Width = 770
          Height = 151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object tbs_devolucao: TTabSheet
        Caption = 'Origem das Devolu'#231#245'es'
        ImageIndex = 8
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 226
          Height = 162
          Align = alLeft
          Caption = 'Pedidos de Origem da Devolu'#231#227'o:'
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object panel_rodape: TPanel
            Left = 2
            Top = 141
            Width = 222
            Height = 19
            Align = alBottom
            TabOrder = 0
            object CB_PEDORI: TCheckBox
              Left = 0
              Top = 1
              Width = 176
              Height = 17
              Caption = 'N'#227'o Verificar Chave de Origem'
              TabOrder = 0
            end
          end
          object panel_ctrl: TPanel
            Left = 2
            Top = 121
            Width = 222
            Height = 20
            Align = alBottom
            TabOrder = 1
            object sbn_oridev: TSpeedButton
              Left = 0
              Top = 3
              Width = 65
              Height = 17
              Hint = 'Click aqui para excluir'#13#10'o item selecionado'
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
              OnClick = sbn_oridevClick
            end
          end
          object DBGrid_OriDev: TDBGrid
            Left = 2
            Top = 48
            Width = 222
            Height = 73
            Align = alClient
            Ctl3D = False
            DataSource = Src_OriDev
            Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P1DCODEMP_OR'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1DLS_OR'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1DCH_OR'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1DDATAP'
                Width = 61
                Visible = True
              end>
          end
          object panel_cab: TPanel
            Left = 2
            Top = 15
            Width = 222
            Height = 33
            Align = alTop
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 3
            object lblDev_Emp: TStaticText
              Left = 0
              Top = 1
              Width = 47
              Height = 15
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Empresa'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object lblDev_LotSeq: TStaticText
              Left = 46
              Top = 1
              Width = 47
              Height = 15
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Lote Seq'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object lblDev_Chave: TStaticText
              Left = 92
              Top = 1
              Width = 47
              Height = 15
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Chave'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object StaticText3: TStaticText
              Left = 138
              Top = 1
              Width = 63
              Height = 15
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Data Pedido'
              Color = 16769505
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object edt_ddata: TMaskEdit
              Left = 138
              Top = 15
              Width = 63
              Height = 19
              Ctl3D = False
              Enabled = False
              EditMask = '!99/99/9999;1; '
              MaxLength = 10
              ParentColor = True
              ParentCtl3D = False
              TabOrder = 6
              Text = '  /  /    '
            end
            object edt_dchave: TEdit
              Left = 92
              Top = 15
              Width = 47
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 7
              OnExit = edt_dchaveExit
            end
            object edt_dlotseq: TEdit
              Left = 46
              Top = 15
              Width = 47
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 5
              Visible = False
              OnExit = edt_dlotseqExit
            end
            object edt_dcodemp: TEdit
              Left = 0
              Top = 15
              Width = 47
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnExit = edt_dcodempExit
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 226
          Top = 0
          Width = 549
          Height = 162
          Align = alClient
          Caption = #205'tens Comprados:'
          TabOrder = 1
          object dbg_DevCli: TDBGrid
            Left = 2
            Top = 15
            Width = 545
            Height = 119
            Align = alClient
            DataSource = Src_dev
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbg_DevCliDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'P2CODPRO'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTD'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTDDEV'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2PRECO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2TOTDES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDNOME'
                Width = 244
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDUND'
                Width = 24
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2TOTLIQ'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ITEM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2LOTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOLIQDEV'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1TOTALL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1TOTDES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'precodev'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2DESC3'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2PCOMIS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2VALDES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2PCOMAX'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P1ALIQDEB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ST_IVA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ST_REDUT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ST_ICMCRED'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ST_ICMDEB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2REDUTICM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2SIT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ALIQ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2ALIQNR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 2
            Top = 134
            Width = 545
            Height = 26
            Align = alBottom
            TabOrder = 1
            object bbDevTotal: TBitBtn
              Left = 192
              Top = 4
              Width = 170
              Height = 20
              Hint = 'click aqui para Selecionar Todos os '#205'tens'
              Caption = 'Devolu'#231#227'o Total'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbDevTotalClick
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
        end
      end
      object tsTotais: TTabSheet
        Caption = 'Totalizacoes'
        ImageIndex = 10
        object Label3: TLabel
          Left = 232
          Top = 112
          Width = 471
          Height = 13
          Caption = 
            '***TODOS OS PERCENTUAIS S'#195'O CALCULADOS COM BASE NO PRE'#199'O LIQUIDO' +
            ' DA VENDA.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object StaticText27: TStaticText
          Left = 2
          Top = 1
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Total P'#231'o.Tab'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object st_totaltabela: TStaticText
          Left = 106
          Top = 1
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 1
        end
        object StaticText20: TStaticText
          Left = 2
          Top = 37
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descontos'
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object st_totaldesconto: TStaticText
          Left = 106
          Top = 37
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object st_precdesc: TStaticText
          Left = 175
          Top = 37
          Width = 51
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00% '
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object lbl_repas: TStaticText
          Left = 2
          Top = 55
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rep.Icms'
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object st_icms: TStaticText
          Left = 106
          Top = 55
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 4342527
          ParentColor = False
          TabOrder = 6
        end
        object ST_TEXT_VALLUC: TStaticText
          Left = 2
          Top = 73
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Margem'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object st_valorlucro: TStaticText
          Left = 106
          Top = 73
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 8
        end
        object st_perclucro: TStaticText
          Left = 175
          Top = 73
          Width = 51
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00% '
          Color = 16754856
          ParentColor = False
          TabOrder = 9
        end
        object StaticText25: TStaticText
          Left = 2
          Top = 91
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Acr'#233's'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object st_acrescimo: TStaticText
          Left = 106
          Top = 91
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 11
        end
        object ST_DESCFIN: TStaticText
          Left = 2
          Top = 109
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Des.Fin.'
          Color = 4342527
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object st_descontofinanceiro: TStaticText
          Left = 106
          Top = 109
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 4342527
          ParentColor = False
          TabOrder = 13
        end
        object StaticText23: TStaticText
          Left = 2
          Top = 19
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Outras Despesas:'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object edt_outrasdespesas: TStaticText
          Left = 106
          Top = 19
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 15
        end
        object st_total: TStaticText
          Left = 106
          Top = 127
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 16
        end
        object TOTLIQ_SEMICM: TStaticText
          Left = 334
          Top = 1
          Width = 70
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '0,00 '
          Color = 16754856
          ParentColor = False
          TabOrder = 17
        end
        object StaticText4: TStaticText
          Left = 2
          Top = 127
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Total Bruto'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object StaticText5: TStaticText
          Left = 230
          Top = 1
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Total S/Icms Ret'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object StaticText6: TStaticText
          Left = 230
          Top = 19
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Base de Icms:'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object StaticText8: TStaticText
          Left = 230
          Top = 37
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Base Icms ST:'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object StaticText9: TStaticText
          Left = 230
          Top = 55
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Base de ISSQN:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object StaticText10: TStaticText
          Left = 230
          Top = 73
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Base de INSS:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object StaticText11: TStaticText
          Left = 230
          Top = 91
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Base de IRRF:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object txt_BCIcms: TCurrencyEdit
          Left = 334
          Top = 19
          Width = 70
          Height = 19
          AutoSize = False
          Color = 16754856
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 25
        end
        object txt_bcicmsst: TCurrencyEdit
          Left = 334
          Top = 37
          Width = 70
          Height = 19
          AutoSize = False
          Color = 16754856
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 26
        end
        object txt_BCISSQN: TCurrencyEdit
          Left = 334
          Top = 55
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 27
        end
        object txt_BCINSS: TCurrencyEdit
          Left = 334
          Top = 73
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 28
        end
        object txt_BCIRRF: TCurrencyEdit
          Left = 334
          Top = 91
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 29
        end
        object StaticText14: TStaticText
          Left = 403
          Top = 19
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor ICMS:'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 30
        end
        object txt_vlicms: TCurrencyEdit
          Left = 507
          Top = 19
          Width = 70
          Height = 19
          AutoSize = False
          Color = 16754856
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 31
        end
        object StaticText15: TStaticText
          Left = 403
          Top = 37
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor ICMS ST:'
          Color = 16754856
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 32
        end
        object txt_vlcicmsst: TCurrencyEdit
          Left = 507
          Top = 37
          Width = 70
          Height = 19
          AutoSize = False
          Color = 16754856
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 33
        end
        object StaticText16: TStaticText
          Left = 403
          Top = 55
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Redutor:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 34
        end
        object txt_VRed_ISSQN: TCurrencyEdit
          Left = 507
          Top = 55
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 35
        end
        object StaticText82: TStaticText
          Left = 576
          Top = 55
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor ISSQN:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 36
        end
        object txt_VLISSQN: TCurrencyEdit
          Left = 680
          Top = 55
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 37
        end
        object StaticText83: TStaticText
          Left = 403
          Top = 73
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Redutor:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 38
        end
        object txt_VRed_INS: TCurrencyEdit
          Left = 507
          Top = 73
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 39
        end
        object StaticText84: TStaticText
          Left = 576
          Top = 73
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor INSS:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 40
        end
        object txt_VLINSS: TCurrencyEdit
          Left = 680
          Top = 73
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 41
        end
        object StaticText85: TStaticText
          Left = 403
          Top = 91
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Redutor:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 42
        end
        object txt_VRed_IRRF: TCurrencyEdit
          Left = 507
          Top = 91
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 43
        end
        object StaticText86: TStaticText
          Left = 576
          Top = 91
          Width = 105
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor IRRF:'
          Color = 13355928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 44
        end
        object txt_VLIRRF: TCurrencyEdit
          Left = 680
          Top = 91
          Width = 70
          Height = 19
          AutoSize = False
          Color = 13355928
          Ctl3D = False
          DisplayFormat = ',0.00;,0.00'
          ParentCtl3D = False
          TabOrder = 45
        end
      end
      object TsPendencias: TTabSheet
        Caption = 'Pendencias'
        ImageIndex = 9
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 775
          Height = 41
          Align = alTop
          Caption = 'Panel5'
          TabOrder = 0
        end
        object DBGrid_Pen: TDBGrid
          Left = 0
          Top = 41
          Width = 775
          Height = 121
          Align = alClient
          DataSource = Src_Pen
          PopupMenu = pop_delpen
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PECODPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEGRADE'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEQTDPED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCAPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNDPRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEQTDENV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEQTDPEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEDESC01'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEDESC02'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEDESC03'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEVALDES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PEPRECO'
              Visible = True
            end>
        end
      end
      object TsConfiguracao: TTabSheet
        Caption = 'Configura'#231#245'es(Somente Master)'
        ImageIndex = 10
        OnExit = TsConfiguracaoExit
        object Label1: TLabel
          Left = 540
          Top = 12
          Width = 127
          Height = 13
          Caption = 'Foco do Produto ao Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 333
          Top = 144
          Width = 51
          Height = 16
          Caption = 'Escala..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GBDADOSGER: TGroupBox
          Left = 0
          Top = 0
          Width = 134
          Height = 162
          Align = alLeft
          Caption = 'Campos Obrigatorios:'
          TabOrder = 0
          object CB_RCLI_RAZSOC: TCheckBox
            Left = 11
            Top = 13
            Width = 97
            Height = 17
            Caption = 'Razao Social'
            TabOrder = 0
          end
          object CB_RCLI_END: TCheckBox
            Left = 11
            Top = 28
            Width = 97
            Height = 17
            Caption = 'Endereco'
            TabOrder = 1
          end
          object CB_RCLI_BAI: TCheckBox
            Left = 11
            Top = 42
            Width = 97
            Height = 17
            Caption = 'Bairro'
            TabOrder = 2
          end
          object CB_RCLI_CEP: TCheckBox
            Left = 11
            Top = 56
            Width = 97
            Height = 17
            Caption = 'CEP'
            TabOrder = 3
          end
          object CB_RCLI_CID: TCheckBox
            Left = 11
            Top = 69
            Width = 97
            Height = 17
            Caption = 'Cidade'
            TabOrder = 4
          end
          object CB_RCLI_UF: TCheckBox
            Left = 11
            Top = 83
            Width = 97
            Height = 17
            Caption = 'UF'
            TabOrder = 5
          end
          object CB_RCLI_FONE: TCheckBox
            Left = 11
            Top = 98
            Width = 97
            Height = 17
            Caption = 'Telefone'
            TabOrder = 6
          end
          object CB_RCLI_CNPJ: TCheckBox
            Left = 11
            Top = 112
            Width = 118
            Height = 17
            Caption = 'CNPJ/CPF e IE/RG'
            TabOrder = 7
          end
          object CB_RCLI_ASSESSOR: TCheckBox
            Left = 11
            Top = 127
            Width = 97
            Height = 17
            Caption = 'Assessor'
            TabOrder = 8
          end
        end
        object GB_DADPRZ: TGroupBox
          Left = 134
          Top = 0
          Width = 185
          Height = 162
          Align = alLeft
          Caption = 'Obrigatorios Quando a Prazo:'
          TabOrder = 1
          object CB_RCLI_INFCOMP: TCheckBox
            Left = 11
            Top = 13
            Width = 171
            Height = 17
            Caption = 'Informacoes Complementares'
            TabOrder = 0
          end
          object CB_RCLI_INFPES: TCheckBox
            Left = 11
            Top = 28
            Width = 158
            Height = 17
            Caption = 'Informacoes Pessoais'
            TabOrder = 1
          end
          object CB_RCLI_DADCHQ: TCheckBox
            Left = 11
            Top = 42
            Width = 168
            Height = 17
            Caption = 'Dados Cheques(observacoes)'
            TabOrder = 2
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 80
            Width = 181
            Height = 41
            Caption = '-= Modelo  Industrial =- '
            TabOrder = 3
            object cb_mod_rel: TComboBox
              Left = 2
              Top = 15
              Width = 177
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              Items.Strings = (
                '( Nenhum )'
                'Modelo 01'
                'Modelo 02 ( Loja de mov'#233'is )'
                'Modelo 03 ( Separado por Produto Mestre )'
                'Modelo 04 ( Linhas em branco )'
                'Modelo 05 (Sem Valores)')
            end
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 122
            Width = 181
            Height = 39
            Caption = '-= Modelo  Financeiro=- '
            TabOrder = 4
            object cb_mod_finan: TComboBox
              Left = 3
              Top = 14
              Width = 175
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = '( Nenhum )'
              Items.Strings = (
                '( Nenhum )'
                'Modelo 01'
                'Modelo 02  '
                'Modelo 03')
            end
          end
          object cb_leitor_padrao: TCheckBox
            Left = 11
            Top = 57
            Width = 168
            Height = 17
            Caption = 'Leitor Optico Padr'#227'o'
            TabOrder = 5
          end
        end
        object RG_FRETE_PAD: TRadioGroup
          Left = 534
          Top = 122
          Width = 240
          Height = 40
          Caption = 'Frete Padr'#227'o'
          Columns = 2
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -3
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            '&Emitente (CIF)'
            '&Dest (FOB)')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object CB_CFG_FOCARITEM: TComboBox
          Left = 671
          Top = 9
          Width = 95
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 2
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Pre'#231'o de Venda'
            'Quantidade')
        end
        object cb_Man_ConsProprio: TCheckBox
          Left = 538
          Top = 29
          Width = 248
          Height = 17
          Caption = 'Permitir Manipular Consumo Proprio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object CB_UTIL_REFER: TCheckBox
          Left = 538
          Top = 42
          Width = 248
          Height = 17
          Caption = 'Utilizar Referencia Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object CB_DESC_COMPL: TCheckBox
          Left = 538
          Top = 54
          Width = 248
          Height = 17
          Caption = 'Utilizar Descri'#231#227'o Complementar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object CB_FOCOCLI: TCheckBox
          Left = 538
          Top = 77
          Width = 240
          Height = 17
          Caption = 'Foco em Cliente ao Alterar Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object CB_EXIBE_SECAO: TCheckBox
          Left = 538
          Top = 66
          Width = 248
          Height = 14
          Caption = 'Exibir o Campo de Se'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object cb_ListaParc: TCheckBox
          Left = 325
          Top = 8
          Width = 196
          Height = 17
          Caption = 'Lista de Separa'#231#227'o Parcial.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object cb_venlog: TCheckBox
          Left = 325
          Top = 21
          Width = 196
          Height = 17
          Caption = 'Consulta com vendedor logado.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object cb_ValidaFaturamento: TCheckBox
          Left = 325
          Top = 35
          Width = 196
          Height = 17
          Caption = 'Validar Estoque ao Faturar.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object cb_desc2: TCheckBox
          Left = 325
          Top = 49
          Width = 204
          Height = 17
          Caption = 'Utiliza-se descricao manipulada.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object cb_recalcula_periodo: TCheckBox
          Left = 325
          Top = 62
          Width = 204
          Height = 17
          Caption = 'ReCalcular data FP para Emitir.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object cb_BloqDtPed: TCheckBox
          Left = 326
          Top = 76
          Width = 204
          Height = 17
          Caption = 'Bloquear Data do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object cb_desc03: TCheckBox
          Left = 326
          Top = 90
          Width = 204
          Height = 17
          Caption = 'Desconto 03 em Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cb_cobra_st_1parc: TCheckBox
          Left = 326
          Top = 104
          Width = 204
          Height = 17
          Caption = 'Cobrar ST na 1'#186' Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object CB_IMPNAOLIMPA: TCheckBox
          Left = 538
          Top = 90
          Width = 240
          Height = 17
          Caption = 'Ao Imprimir manter o pedido na tela.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object CB_USA_ENCOMENDA: TCheckBox
          Left = 326
          Top = 116
          Width = 204
          Height = 17
          Caption = 'Utiliza sistema de Encomendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object CB_PRAZOESPECIAL: TCheckBox
          Left = 326
          Top = 128
          Width = 204
          Height = 17
          Caption = 'Prazo de Entrega Especial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object cb_extcom_serv: TCheckBox
          Left = 538
          Top = 103
          Width = 240
          Height = 17
          Caption = 'Extornar Comissao sobre Servi'#231'os.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object c_escala: TCurrencyEdit
          Left = 384
          Top = 142
          Width = 73
          Height = 18
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0000'
          TabOrder = 21
        end
      end
      object TsDescAlter: TTabSheet
        Caption = 'Descri'#231#227'o Alteranada'
        ImageIndex = 11
        object DESCALTER: TMemo
          Left = 0
          Top = 0
          Width = 553
          Height = 158
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Lines.Strings = (
            '123456789012345678901234567890123456789012345678901234567890'
            '         1         2         3         4         5         6')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object pc_prodServ: TPageControl
    Left = 0
    Top = 227
    Width = 622
    Height = 73
    ActivePage = tsFpgto
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 3
    TabStop = False
    OnChange = pc_prodServChange
    object tbs_mercadoria: TTabSheet
      Caption = 'Digita'#231#227'o de Produtos/Mercadorias'
      object Bevel2: TBevel
        Left = 0
        Top = 47
        Width = 614
        Height = 94
        Align = alClient
        Shape = bsFrame
        Style = bsRaised
      end
      object Grid_Iten: TDBGrid
        Left = 0
        Top = 47
        Width = 614
        Height = 94
        Hint = 
          'Para alterar de um Click Duplo Sobre o Produto, '#13#10'para excluir c' +
          'lick com o bot'#227'o direito do mouse '#13#10'ou pressione a tecla DEL'
        Align = alClient
        Ctl3D = False
        DataSource = Ds_Itens
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = pop_grid
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = Grid_ItenDrawColumnCell
        OnDblClick = Grid_ItenDblClick
        OnKeyDown = Grid_ItenKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'REFER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CODPRO'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2LOTE'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DTVCTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCALTER2'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCAPRO'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2AMBIENTE'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2UND'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECAOPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2QTD'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC1'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC2'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2DESC3'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PDESCF'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PCOMIS'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2TIPO_PCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2PRECO'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cons_proprio'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CFO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_total'
            Width = 71
            Visible = True
          end>
      end
      object bbGravarItem: TBitBtn
        Left = 400
        Top = 20
        Width = 75
        Height = 25
        Caption = 'bbGravarItem'
        TabOrder = 2
        Visible = False
        OnClick = bbGravarItemClick
      end
      object panel_digprod: TPanel
        Left = 0
        Top = 0
        Width = 614
        Height = 47
        Align = alTop
        TabOrder = 0
        OnExit = panel_digprodExit
        object edt_dtvcto: TMaskEdit
          Left = 81
          Top = 29
          Width = 32
          Height = 19
          TabStop = False
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 6
          Text = '  /  /    '
          Visible = False
          OnExit = edt_dtvctoExit
          OnKeyDown = edt_loteKeyDown
        end
        object lbl_dtvcto: TStaticText
          Left = 81
          Top = 0
          Width = 32
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Dt.Vcto'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
        object lbl_codpro: TStaticText
          Left = 0
          Top = 0
          Width = 37
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'C'#243'digo Produto'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnDblClick = lbl_codproDblClick
        end
        object edt_codproduto: TComboEdit
          Left = 0
          Top = 29
          Width = 37
          Height = 19
          Alignment = taRightJustify
          Ctl3D = False
          GlyphKind = gkEllipsis
          ButtonWidth = 0
          NumGlyphs = 1
          ParentCtl3D = False
          TabOrder = 2
          Text = 'edt_codproduto'
          OnDblClick = edt_codprodutoDblClick
          OnEnter = edt_codprodutoEnter
          OnExit = edt_codprodutoExit
          OnKeyDown = edt_codprodutoKeyDown
          OnKeyPress = edt_codprodutoKeyPress
        end
        object lbl_lote: TStaticText
          Left = 36
          Top = 0
          Width = 29
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Lote'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          OnDblClick = lbl_loteDblClick
        end
        object edt_lote: TComboEdit
          Left = 36
          Top = 29
          Width = 29
          Height = 19
          Hint = 'Digite o Valor ou Pressione [F3]- p/Consultar'
          Ctl3D = False
          GlyphKind = gkEllipsis
          ButtonWidth = 0
          NumGlyphs = 1
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = 'edt_lote'
          OnExit = edt_loteExit
          OnKeyDown = edt_loteKeyDown
        end
        object lbl_descricao: TStaticText
          Left = 64
          Top = 0
          Width = 62
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          OnDblClick = lbl_descricaoDblClick
        end
        object edt_descricao: TEdit
          Left = 64
          Top = 29
          Width = 62
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = 'edt_descricao'
          OnDblClick = edt_descricaoDblClick
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_marca: TStaticText
          Left = 302
          Top = 0
          Width = 51
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Marca'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
          OnDblClick = lbl_marcaDblClick
        end
        object edt_marca: TEdit
          Left = 302
          Top = 29
          Width = 51
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          Text = 'edt_marca'
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_und: TStaticText
          Left = 352
          Top = 0
          Width = 25
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Und'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          OnDblClick = lbl_undDblClick
        end
        object edt_und: TEdit
          Left = 352
          Top = 29
          Width = 25
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          Text = 'edt_unidade'
        end
        object lbl_quantidade: TStaticText
          Left = 376
          Top = 0
          Width = 54
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
          OnDblClick = lbl_quantidadeDblClick
        end
        object edt_quantidade: TCurrencyEdit
          Left = 376
          Top = 29
          Width = 54
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 17
          OnExit = edt_quantidadeExit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_precounitario: TStaticText
          Left = 557
          Top = 0
          Width = 51
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Pre'#231'o Unit'#225'rio'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          OnDblClick = lbl_precounitarioDblClick
        end
        object edt_precounitario: TCurrencyEdit
          Left = 557
          Top = 29
          Width = 51
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DecimalPlaces = 0
          ParentCtl3D = False
          TabOrder = 30
          ZeroEmpty = False
          OnExit = edt_precounitarioExit
        end
        object lbl_desc1: TStaticText
          Left = 429
          Top = 0
          Width = 27
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Desc 01%'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
          OnDblClick = lbl_desc1DblClick
        end
        object edt_desc1: TCurrencyEdit
          Left = 429
          Top = 29
          Width = 27
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 19
          OnExit = edt_desc1Exit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_desc2: TStaticText
          Left = 455
          Top = 0
          Width = 27
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Desc 02%'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          OnDblClick = lbl_desc2DblClick
        end
        object edt_desc2: TCurrencyEdit
          Left = 455
          Top = 29
          Width = 27
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 21
          OnExit = edt_desc1Exit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_desc3: TStaticText
          Left = 481
          Top = 0
          Width = 27
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Desc 03%'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          OnDblClick = lbl_desc3DblClick
        end
        object edt_desc3: TCurrencyEdit
          Left = 481
          Top = 29
          Width = 27
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 23
          OnExit = edt_desc1Exit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_descfin: TStaticText
          Left = 507
          Top = 0
          Width = 25
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Desc Fin.'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 24
          OnDblClick = lbl_descfinDblClick
        end
        object edt_descfin: TCurrencyEdit
          Left = 507
          Top = 29
          Width = 25
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 25
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_comissao: TStaticText
          Left = 531
          Top = 0
          Width = 27
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '% Comis'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          OnDblClick = lbl_comissaoDblClick
        end
        object edt_comissao: TCurrencyEdit
          Left = 531
          Top = 29
          Width = 27
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 28
          OnExit = edt_comissaoExit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_total: TStaticText
          Left = 671
          Top = 0
          Width = 53
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor Total'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 32
          OnDblClick = lbl_totalDblClick
        end
        object edt_total: TCurrencyEdit
          Left = 671
          Top = 29
          Width = 53
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 33
          OnEnter = edt_totalEnter
        end
        object lbl_status: TStaticText
          Left = 740
          Top = 14
          Width = 19
          Height = 16
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'ST'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 34
        end
        object edt_status: TStaticText
          Left = 740
          Top = 29
          Width = 20
          Height = 19
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 35
        end
        object lbl_ambiente: TStaticText
          Left = 204
          Top = 0
          Width = 55
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Ambiente'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          Visible = False
          OnDblClick = lbl_ambienteDblClick
        end
        object edt_ambiente: TEdit
          Left = 253
          Top = 29
          Width = 50
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          Visible = False
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_ConsProprio: TStaticText
          Left = 607
          Top = 0
          Width = 39
          Height = 30
          Hint = 'Mercadoria'#13#10'para Revenda'#13#10'ou Consumo Proprio'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Re- venda'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 36
          Visible = False
        end
        object cb_ConsProprio: TCheckBox
          Left = 618
          Top = 30
          Width = 18
          Height = 18
          Checked = True
          State = cbChecked
          TabOrder = 31
          Visible = False
          OnClick = cb_ConsProprioClick
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_tipopco: TStaticText
          Left = 723
          Top = 0
          Width = 18
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Pco'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 37
          Visible = False
          OnDblClick = lbl_tipopcoDblClick
        end
        object edt_tipopco: TCurrencyEdit
          Left = 723
          Top = 29
          Width = 18
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = '0'
          ParentCtl3D = False
          TabOrder = 27
          Visible = False
          OnExit = edt_tipopcoExit
          OnKeyDown = edt_descricaoKeyDown
        end
        object st_maisinfo: TStaticText
          Left = 740
          Top = 0
          Width = 19
          Height = 15
          Hint = 'Click aqui para mais informa'#231#245'es'#13#10'sobre o produto selecionado'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '+'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 38
          OnDblClick = st_maisinfoDblClick
        end
        object lbl_refer: TStaticText
          Left = 159
          Top = 0
          Width = 46
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Referencia'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 39
          Visible = False
          OnDblClick = lbl_referDblClick
        end
        object edt_refer: TEdit
          Left = 159
          Top = 29
          Width = 46
          Height = 19
          Color = cl3DLight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnExit = edt_referExit
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_Complemento: TStaticText
          Left = 253
          Top = 0
          Width = 50
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o Complemento'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 40
          Visible = False
          OnDblClick = lbl_ComplementoDblClick
        end
        object edt_complemento: TEdit
          Left = 204
          Top = 29
          Width = 50
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 40
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnDblClick = edt_complementoDblClick
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_cfop: TStaticText
          Left = 645
          Top = 0
          Width = 27
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CFOP'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 41
          OnDblClick = lbl_cfopDblClick
        end
        object edt_cfop: TEdit
          Left = 645
          Top = 29
          Width = 27
          Height = 19
          TabStop = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 42
          Visible = False
          OnKeyDown = edt_descricaoKeyDown
        end
        object lbl_secao: TStaticText
          Left = 125
          Top = 0
          Width = 35
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Se'#231#227'o'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 43
          OnDblClick = lbl_secaoDblClick
        end
        object edt_secao: TEdit
          Left = 125
          Top = 29
          Width = 35
          Height = 19
          TabStop = False
          Color = cl3DLight
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 30
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 44
          OnExit = edt_referExit
          OnKeyDown = edt_descricaoKeyDown
        end
        object UpDown1: TUpDown
          Left = 48
          Top = 14
          Width = 46
          Height = 17
          Min = 10
          Max = 1024
          Orientation = udHorizontal
          Position = 10
          TabOrder = 45
          TabStop = True
          Visible = False
          OnClick = UpDown1Click
        end
        object edt_codven: TStaticText
          Left = 760
          Top = 29
          Width = 20
          Height = 19
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 46
          Visible = False
        end
        object StaticText101: TStaticText
          Left = 759
          Top = 14
          Width = 19
          Height = 16
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CV'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 47
          Visible = False
        end
      end
    end
    object Ts_Servico: TTabSheet
      Caption = 'Digita'#231#227'o de Servi'#231'os'
      ImageIndex = 1
      object panel_digserv: TPanel
        Left = 0
        Top = 0
        Width = 614
        Height = 47
        Align = alTop
        TabOrder = 0
        object lbls_codpro: TStaticText
          Left = 0
          Top = 0
          Width = 47
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'C'#243'digo Servi'#231'o'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object txts_codpro: TEdit
          Left = 0
          Top = 29
          Width = 47
          Height = 19
          AutoSize = False
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnEnter = txts_codproEnter
          OnExit = txts_codproExit
          OnKeyDown = txts_codproKeyDown
          OnKeyPress = txts_codproKeyPress
        end
        object lbls_nomser: TStaticText
          Left = 46
          Top = 0
          Width = 240
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o do Servi'#231'o'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object txts_descricao: TEdit
          Left = 46
          Top = 29
          Width = 240
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnExit = txt_fpcodfpExit
        end
        object lbls_und: TStaticText
          Left = 285
          Top = 0
          Width = 32
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Und'
          Color = 9240518
          ParentColor = False
          TabOrder = 13
        end
        object txts_quant: TCurrencyEdit
          Left = 316
          Top = 29
          Width = 61
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 3
          OnExit = txts_quantExit
        end
        object lbls_quantidade: TStaticText
          Left = 316
          Top = 0
          Width = 61
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Quantidade'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object lbls_PcoUnit: TStaticText
          Left = 376
          Top = 0
          Width = 67
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Pre'#231'o Unit'#225'rio'
          Color = 9240518
          ParentColor = False
          TabOrder = 15
        end
        object lbls_desc01: TStaticText
          Left = 442
          Top = 0
          Width = 49
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '%Desc.01'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object txts_und: TEdit
          Left = 285
          Top = 29
          Width = 32
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnExit = txt_fpnumdocExit
        end
        object lbls_desc02: TStaticText
          Left = 490
          Top = 0
          Width = 49
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '%Desc.02'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object lbls_desfin: TStaticText
          Left = 586
          Top = 0
          Width = 49
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '%Des.Fin'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object lbls_comis: TStaticText
          Left = 634
          Top = 0
          Width = 49
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '%Com'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object lbls_vltotal: TStaticText
          Left = 682
          Top = 0
          Width = 66
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor Total'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object lbls_desc03: TStaticText
          Left = 538
          Top = 0
          Width = 49
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = '%Desc.03'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object txts_pcouni: TCurrencyEdit
          Left = 376
          Top = 29
          Width = 67
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 4
          OnExit = txts_pcouniExit
        end
        object txts_desci01: TCurrencyEdit
          Left = 442
          Top = 29
          Width = 49
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 5
        end
        object txts_desci02: TCurrencyEdit
          Left = 490
          Top = 29
          Width = 49
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 6
        end
        object txts_desci03: TCurrencyEdit
          Left = 538
          Top = 29
          Width = 49
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 7
        end
        object txts_descfin: TCurrencyEdit
          Left = 586
          Top = 29
          Width = 49
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 8
        end
        object txts_comis: TCurrencyEdit
          Left = 634
          Top = 29
          Width = 49
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 9
        end
        object txts_vltotal: TCurrencyEdit
          Left = 682
          Top = 29
          Width = 66
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 10
          OnExit = txts_vltotalExit
        end
        object lbls_status: TStaticText
          Left = 747
          Top = 0
          Width = 20
          Height = 30
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'ST'
          Color = 9240518
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object edts_status: TStaticText
          Left = 747
          Top = 28
          Width = 20
          Height = 19
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
      end
      object DBGrid_Serv: TDBGrid
        Left = 0
        Top = 47
        Width = 614
        Height = 94
        Hint = 
          'Para alterar de um Click Duplo Sobre o Produto, '#13#10'para excluir c' +
          'lick com o bot'#227'o direito do mouse '#13#10'ou pressione a tecla DEL'
        TabStop = False
        Align = alClient
        Ctl3D = False
        DataSource = Ds_Servicos
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentShowHint = False
        PopupMenu = pop_gridServ
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid_ServDblClick
        OnExit = DBGrid_ServExit
        OnKeyDown = DBGrid_ServKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'P2SCODPRO'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMESERV'
            Width = 238
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNDSER'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SQTD'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SPRECO'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SDESC1'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SDESC2'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SDESC3'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SPDESCF'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2SPCOMIS'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_bru'
            Visible = True
          end>
      end
      object bbGravarServ: TBitBtn
        Left = 608
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Gravar Servi'#231'o'
        TabOrder = 2
        Visible = False
        OnClick = bbGravarServClick
      end
    end
    object tsFpgto: TTabSheet
      Caption = 'Forma de Pagamento/Prazos'
      ImageIndex = 2
      object Bevel13: TBevel
        Left = 0
        Top = 47
        Width = 614
        Height = 74
        Align = alClient
        Shape = bsFrame
        Style = bsRaised
      end
      object Panel_manfpgto: TPanel
        Left = 0
        Top = 22
        Width = 614
        Height = 20
        Align = alBottom
        TabOrder = 0
        object sbnfp_alterar: TSpeedButton
          Left = 0
          Top = -2
          Width = 65
          Height = 22
          Hint = 'Click aqui para excluir'#13#10'a forma de pagamento'#13#10'selecionada'
          Caption = 'Alterar'
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
          OnClick = sbnfp_alterarClick
        end
        object sbnfp_gravar: TSpeedButton
          Left = 295
          Top = -2
          Width = 70
          Height = 22
          Hint = 'Click aqui para excluir'#13#10'a forma de pagamento'#13#10'selecionada'
          Caption = 'Gravar'
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
          Visible = False
          OnClick = sbnfp_gravarClick
        end
        object sbigualfpgto: TSpeedButton
          Left = 197
          Top = -2
          Width = 102
          Height = 22
          Hint = 
            'Click aqui para '#13#10'atualizar todas as'#13#10'formas dos pagamentos'#13#10'com' +
            ' os dados da primeira'
          Caption = 'Aplicar em todos'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
            000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
            99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
            0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
            FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
            0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
            000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
            00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
            00FF3777773333F77733333333333000033F3333333337777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbigualfpgtoClick
        end
        object sbnfp_excluir: TSpeedButton
          Left = 65
          Top = -2
          Width = 65
          Height = 22
          Hint = 'Click aqui para excluir'#13#10'a forma de pagamento'#13#10'selecionada'
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
          OnClick = sbnfp_excluirClick
        end
        object sbnCancelar: TSpeedButton
          Left = 131
          Top = -2
          Width = 65
          Height = 22
          Hint = 'Click aqui para Cancelar a edi'#231#227'o do Registro'
          Caption = 'Cancelar'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbnCancelarClick
        end
        object StaticText35: TStaticText
          Left = 369
          Top = 2
          Width = 60
          Height = 17
          Caption = 'Pz.M'#233'dio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object FPPRAZOMED: TStaticText
          Left = 431
          Top = 1
          Width = 42
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvLowered
          BorderStyle = sbsSunken
          Caption = '0'
          TabOrder = 1
        end
        object StaticText13: TStaticText
          Left = 476
          Top = 2
          Width = 54
          Height = 17
          Caption = 'Tot.Rec:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object FPTOTLIQ: TStaticText
          Left = 536
          Top = 2
          Width = 80
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvLowered
          BorderStyle = sbsSunken
          Caption = '0.00'
          TabOrder = 3
        end
        object StaticText17: TStaticText
          Left = 623
          Top = 2
          Width = 59
          Height = 17
          Caption = 'Restante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object FPRESTANTE: TStaticText
          Left = 684
          Top = 2
          Width = 75
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvLowered
          BorderStyle = sbsSunken
          Caption = '0.00'
          TabOrder = 5
        end
      end
      object Panel_fpgto: TPanel
        Left = 0
        Top = 0
        Width = 614
        Height = 47
        Align = alTop
        TabOrder = 1
        object StaticText75: TStaticText
          Left = 0
          Top = 0
          Width = 47
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Parcela'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object txt_fpparcela: TEdit
          Left = 0
          Top = 29
          Width = 47
          Height = 19
          AutoSize = False
          Ctl3D = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object StaticText73: TStaticText
          Left = 46
          Top = 0
          Width = 38
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'C'#243'digo'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object txt_fpcodfp: TEdit
          Left = 46
          Top = 29
          Width = 38
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = txt_fpcodfpEnter
          OnExit = txt_fpcodfpExit
        end
        object StaticText18: TStaticText
          Left = 83
          Top = 0
          Width = 111
          Height = 30
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Forma de Pagamento'
          Color = 16769505
          ParentColor = False
          TabOrder = 14
        end
        object cb_fpforma: TComboBox
          Left = 83
          Top = 29
          Width = 112
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 2
          OnExit = cb_fpformaExit
        end
        object StaticText34: TStaticText
          Left = 193
          Top = 0
          Width = 86
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Valor'
          Color = 16769505
          ParentColor = False
          TabOrder = 15
        end
        object edt_fpvalor: TCurrencyEdit
          Left = 193
          Top = 29
          Width = 86
          Height = 19
          AutoSize = False
          CheckOnExit = True
          Ctl3D = False
          DisplayFormat = ',0.00;-,0.00'
          ParentCtl3D = False
          TabOrder = 3
        end
        object StaticText74: TStaticText
          Left = 278
          Top = 0
          Width = 44
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Prazo'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object txt_fpprazo: TEdit
          Left = 278
          Top = 29
          Width = 44
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          OnExit = txt_fpprazoExit
        end
        object StaticText24: TStaticText
          Left = 321
          Top = 0
          Width = 67
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Data Vencimento'
          Color = 16769505
          ParentColor = False
          TabOrder = 17
        end
        object txt_fpdata: TMaskEdit
          Left = 321
          Top = 29
          Width = 67
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 5
          Text = '  /  /    '
          OnExit = txt_fpdataExit
        end
        object st_chave: TStaticText
          Left = 387
          Top = 0
          Width = 59
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Numero do Documento'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object txt_fpnumdoc: TEdit
          Left = 387
          Top = 29
          Width = 59
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 6
          OnExit = txt_fpnumdocExit
        end
        object StaticText29: TStaticText
          Left = 445
          Top = 0
          Width = 33
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Banco'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object txt_fpbanco: TEdit
          Left = 445
          Top = 29
          Width = 33
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 7
        end
        object StaticText33: TStaticText
          Left = 509
          Top = 0
          Width = 45
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Agencia'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object txt_fpagencia: TEdit
          Left = 509
          Top = 29
          Width = 45
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 9
        end
        object StaticText71: TStaticText
          Left = 553
          Top = 0
          Width = 59
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'N'#250'mero da Conta'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object txt_fpnumcon: TEdit
          Left = 553
          Top = 29
          Width = 59
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 10
        end
        object StaticText76: TStaticText
          Left = 611
          Top = 0
          Width = 44
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Compen sa'#231#227'o'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object txt_fpcomp: TEdit
          Left = 611
          Top = 29
          Width = 44
          Height = 19
          Ctl3D = False
          MaxLength = 4
          ParentCtl3D = False
          TabOrder = 11
          OnExit = txt_fpcompExit
        end
        object StaticText77: TStaticText
          Left = 477
          Top = 0
          Width = 33
          Height = 30
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'S'#233'rie'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object txt_fpserie: TEdit
          Left = 477
          Top = 29
          Width = 33
          Height = 19
          Ctl3D = False
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 8
        end
        object lblfp_status: TStaticText
          Left = 654
          Top = 0
          Width = 20
          Height = 30
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'ST'
          Color = 16769505
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object edtfp_status: TStaticText
          Left = 654
          Top = 29
          Width = 20
          Height = 19
          Hint = 'Status do Item '#13#10'I-Incluindo'#13#10'A-Alterando'
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 47
        Width = 614
        Height = 74
        Align = alClient
        Ctl3D = False
        DataSource = Src_Men_CADPFP
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PFPSEQ'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPFORMA'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPNOMFOR'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPVALOR'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPPRAZO'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPDATA'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPNUMDOC'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPBANCO'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPSERIE'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPAGENCIA'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPCC'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PFPCOMP'
            Width = 42
            Visible = True
          end>
      end
      object gb_fpmaisdados: TGroupBox
        Left = 87
        Top = 44
        Width = 594
        Height = 66
        Caption = 'Mais Dados da Forma de Pagamento:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Visible = False
        OnExit = gb_fpmaisdadosExit
        object StaticText78: TStaticText
          Left = 3
          Top = 17
          Width = 267
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Nome do Emitente'
          Color = 16769505
          ParentColor = False
          TabOrder = 0
        end
        object txt_fpemitente: TEdit
          Left = 3
          Top = 31
          Width = 267
          Height = 19
          Ctl3D = False
          MaxLength = 40
          ParentCtl3D = False
          TabOrder = 1
        end
        object StaticText79: TStaticText
          Left = 269
          Top = 17
          Width = 128
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CGC/CPF'
          Color = 16769505
          ParentColor = False
          TabOrder = 2
        end
        object txt_fpcnpj: TEdit
          Left = 269
          Top = 31
          Width = 128
          Height = 19
          Ctl3D = False
          MaxLength = 20
          ParentCtl3D = False
          TabOrder = 3
          OnExit = txt_fpcnpjExit
        end
        object StaticText80: TStaticText
          Left = 396
          Top = 17
          Width = 128
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Incri'#231#227'o/RG(identidade)'
          Color = 16769505
          ParentColor = False
          TabOrder = 4
        end
        object txt_fpie: TEdit
          Left = 396
          Top = 31
          Width = 128
          Height = 19
          Ctl3D = False
          MaxLength = 40
          ParentCtl3D = False
          TabOrder = 5
        end
        object StaticText81: TStaticText
          Left = 523
          Top = 17
          Width = 67
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Dt.Nascim'
          Color = 16769505
          ParentColor = False
          TabOrder = 6
        end
        object txt_fpdtnas: TMaskEdit
          Left = 523
          Top = 31
          Width = 67
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 7
          Text = '  /  /    '
          OnExit = txt_fpdtnasExit
        end
      end
    end
  end
  object panel_obsnf: TPanel
    Left = 0
    Top = 300
    Width = 622
    Height = 28
    Align = alBottom
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194432
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    object lbs_obsnf: TLabel
      Left = 5
      Top = 4
      Width = 762
      Height = 16
      AutoSize = False
      Caption = 'Lembre-se voc'#234' esta emitindo nota no Ambiente Nacional(SCAN)'
    end
  end
  object pnl_out_inf: TPanel
    Left = 168
    Top = 296
    Width = 557
    Height = 75
    TabOrder = 8
    Visible = False
    OnExit = pnl_out_infExit
    object Label4: TLabel
      Left = 31
      Top = 7
      Width = 33
      Height = 13
      Caption = 'Letra..:'
    end
    object Label5: TLabel
      Left = 25
      Top = 29
      Width = 39
      Height = 13
      Caption = 'Fundo..:'
    end
    object Label6: TLabel
      Left = 10
      Top = 51
      Width = 54
      Height = 13
      Caption = 'Tamanho..:'
    end
    object Label7: TLabel
      Left = 202
      Top = 9
      Width = 43
      Height = 13
      Caption = 'Tubete..:'
    end
    object Label8: TLabel
      Left = 209
      Top = 29
      Width = 36
      Height = 13
      Caption = 'Papel..:'
    end
    object Label9: TLabel
      Left = 379
      Top = 29
      Width = 50
      Height = 13
      Caption = 'MT Rolo..:'
    end
    object Label11: TLabel
      Left = 372
      Top = 8
      Width = 57
      Height = 13
      Caption = 'QTD Rolo..:'
    end
    object edt_pnl_letra: TEdit
      Left = 66
      Top = 4
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_pnl_fundo: TEdit
      Left = 66
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt_pnl_tamanho: TEdit
      Left = 66
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt_pnl_tabute: TEdit
      Left = 247
      Top = 5
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt_pnl_papel: TEdit
      Left = 247
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt_pnl_mtrolo: TEdit
      Left = 431
      Top = 25
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edt_pnl_rolo: TEdit
      Left = 431
      Top = 4
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btn_close_pnl: TButton
      Left = 317
      Top = 45
      Width = 172
      Height = 25
      Caption = '&Fechar'
      TabOrder = 7
      OnClick = btn_close_pnlClick
    end
  end
  object QryItem_Nota: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTESEQ'
        DataType = ftFloat
      end
      item
        Name = 'P2ORDEM'
        DataType = ftFloat
      end
      item
        Name = 'P2ITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2CODANT'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDDEV'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2PROMOCAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2DTVCTO'
        DataType = ftDate
      end
      item
        Name = 'P2DESC1'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC2'
        DataType = ftFloat
      end
      item
        Name = 'P2VALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2SIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2CODFAB'
        DataType = ftFloat
      end
      item
        Name = 'P2BASEN'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSN'
        DataType = ftFloat
      end
      item
        Name = 'P2REPAS'
        DataType = ftFloat
      end
      item
        Name = 'P2BASER'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSR'
        DataType = ftFloat
      end
      item
        Name = 'P2LISTA'
        DataType = ftFloat
      end
      item
        Name = 'P2STATUS'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOTAB'
        DataType = ftFloat
      end
      item
        Name = 'P2UCPR'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOCUS'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMAX'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTDES'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCRAT'
        DataType = ftFloat
      end
      item
        Name = 'P2TABELA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2ALIPI'
        DataType = ftFloat
      end
      item
        Name = 'P2VALIPI'
        DataType = ftFloat
      end
      item
        Name = 'P2BCINR'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSNR'
        DataType = ftFloat
      end
      item
        Name = 'P2ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTOUT'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQNR'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM02'
        DataType = ftFloat
      end
      item
        Name = 'Tb_Ped02P2VCOM03'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCM'
        DataType = ftFloat
      end
      item
        Name = 'P2CFO'
        DataType = ftFloat
      end
      item
        Name = 'P2SEMCOM'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTLIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2PDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2VDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRECONV'
        DataType = ftFloat
      end
      item
        Name = 'P2ACREGER'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC3'
        DataType = ftFloat
      end
      item
        Name = 'P2CODGRU'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM04'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRERAT'
        DataType = ftFloat
      end
      item
        Name = 'vlr_total'
        DataType = ftFloat
      end
      item
        Name = 'NOMEPRO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MARCAPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMEPRO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SECAOPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCALTER'
        DataType = ftMemo
      end
      item
        Name = 'BAIXADO'
        DataType = ftInteger
      end
      item
        Name = 'Descontos'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2AMBIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P2QTD_ENTREGUE'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGANDO'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_EXTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMIS_EXTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOFPG'
        DataType = ftFloat
      end
      item
        Name = 'P2CFOSUBECF'
        DataType = ftFloat
      end
      item
        Name = 'P2CONSIG'
        DataType = ftFloat
      end
      item
        Name = 'P2CODAGRU'
        DataType = ftFloat
      end
      item
        Name = 'nomproagru'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOM02'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOM03'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_IVA'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_REDUT'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMCRED'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMDEB'
        DataType = ftFloat
      end
      item
        Name = 'P2REDUTICM'
        DataType = ftFloat
      end
      item
        Name = 'P2PRAZO'
        DataType = ftFloat
      end
      item
        Name = 'total_liq'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'P2QTD_101'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDDEV_101'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE_101'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2PROMOCAO_101'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2VALDES_101'
        DataType = ftDateTime
      end
      item
        Name = 'P2BASEN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2REPAS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2BASER_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTDES_101'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCRAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VALIPI_101'
        DataType = ftFloat
      end
      item
        Name = 'P2BCINR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSNR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ISENTAS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTOUT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQ_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQNR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM02_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM03_101'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SEMCOM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTLIQ_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VDESCF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRECONV_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACREGER_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM04_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRERAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2PRECO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2CFO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGUE_101'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGANDO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_EXTRA_101'
        DataType = ftFloat
      end
      item
        Name = 'P2CFOSUBECF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_IVA_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_REDUT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMCRED_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMDEB_101'
        DataType = ftFloat
      end
      item
        Name = 'P2REDUTICM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SCODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2DTVCTO_101'
        DataType = ftDateTime
      end
      item
        Name = 'P2VCOM03'
        DataType = ftFloat
      end
      item
        Name = 'P2NOMEPRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P2ALIPI_101'
        DataType = ftFloat
      end
      item
        Name = 'PLOCAL'
        DataType = ftInteger
      end
      item
        Name = 'P2TIPO_PCO'
        DataType = ftFloat
      end
      item
        Name = 'P2CONS_PROPRIO'
        DataType = ftFloat
      end
      item
        Name = 'REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2COMPLEMENTO'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'P2CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'P2CHAVE_NIVEL'
        DataType = ftFloat
      end
      item
        Name = 'P2PCREDSN'
        DataType = ftFloat
      end
      item
        Name = 'P2UND'
        DataType = ftString
        Size = 2
      end>
    OnCalcFields = QryItem_NotaCalcFields
    Left = 388
    Top = 320
    object QryItem_NotaP2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2DESC1: TFloatField
      FieldName = 'P2DESC1'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2DESC2: TFloatField
      FieldName = 'P2DESC2'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2DESC3: TFloatField
      FieldName = 'P2DESC3'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object QryItem_NotaP2LOTESEQ: TFloatField
      FieldName = 'P2LOTESEQ'
    end
    object QryItem_NotaP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object QryItem_NotaP2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object QryItem_Notavlr_total: TCurrencyField
      FieldName = 'vlr_total'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object QryItem_NotaP2UND: TStringField
      FieldName = 'P2UND'
      Size = 2
    end
    object QryItem_NotaP2CODANT: TFloatField
      FieldName = 'P2CODANT'
    end
    object QryItem_NotaP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object QryItem_NotaP2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
    end
    object QryItem_NotaP2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object QryItem_NotaP2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
    end
    object QryItem_NotaP2DTVCTO: TDateField
      FieldName = 'P2DTVCTO'
    end
    object QryItem_NotaP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object QryItem_NotaP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object QryItem_NotaP2SIT: TStringField
      FieldName = 'P2SIT'
    end
    object QryItem_NotaP2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
    end
    object QryItem_NotaP2BASEN: TFloatField
      FieldName = 'P2BASEN'
    end
    object QryItem_NotaP2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
    end
    object QryItem_NotaP2REPAS: TFloatField
      FieldName = 'P2REPAS'
    end
    object QryItem_NotaP2BASER: TFloatField
      FieldName = 'P2BASER'
    end
    object QryItem_NotaP2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
    end
    object QryItem_NotaP2LISTA: TFloatField
      FieldName = 'P2LISTA'
    end
    object QryItem_NotaP2STATUS: TFloatField
      FieldName = 'P2STATUS'
    end
    object QryItem_NotaP2UCPR: TFloatField
      FieldName = 'P2UCPR'
    end
    object QryItem_NotaP2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
    end
    object QryItem_NotaP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
    end
    object QryItem_NotaP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object QryItem_NotaP2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
    end
    object QryItem_NotaP2TABELA: TStringField
      FieldName = 'P2TABELA'
    end
    object QryItem_NotaP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
    end
    object QryItem_NotaP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
    end
    object QryItem_NotaP2BCINR: TFloatField
      FieldName = 'P2BCINR'
    end
    object QryItem_NotaP2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
    end
    object QryItem_NotaP2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
    end
    object QryItem_NotaP2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
    end
    object QryItem_NotaP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object QryItem_NotaP2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
    end
    object QryItem_NotaP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object QryItem_NotaP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object QryItem_NotaP2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
    end
    object QryItem_NotaTb_Ped02P2VCOM03: TFloatField
      FieldName = 'Tb_Ped02P2VCOM03'
    end
    object QryItem_NotaP2DESCM: TFloatField
      FieldName = 'P2DESCM'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QryItem_NotaP2CFO: TFloatField
      FieldName = 'P2CFO'
    end
    object QryItem_NotaP2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
    end
    object QryItem_NotaP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object QryItem_NotaP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object QryItem_NotaP2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
    end
    object QryItem_NotaP2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
    end
    object QryItem_NotaP2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
    end
    object QryItem_NotaP2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
    end
    object QryItem_NotaP2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
    end
    object QryItem_NotaNOMEPRO: TStringField
      DisplayWidth = 80
      FieldName = 'NOMEPRO'
      Size = 80
    end
    object QryItem_NotaMARCAPRO: TStringField
      FieldName = 'MARCAPRO'
    end
    object QryItem_NotaNOMEPRO2: TStringField
      FieldName = 'NOMEPRO2'
    end
    object QryItem_NotaSECAOPRO: TStringField
      FieldName = 'SECAOPRO'
    end
    object QryItem_NotaDESCALTER: TMemoField
      FieldName = 'DESCALTER'
      BlobType = ftMemo
    end
    object QryItem_NotaBAIXADO: TIntegerField
      FieldName = 'BAIXADO'
    end
    object QryItem_NotaDescontos: TStringField
      FieldName = 'Descontos'
    end
    object QryItem_NotaP2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
    end
    object QryItem_NotaP2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
    end
    object QryItem_NotaP2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
    end
    object QryItem_NotaP2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
    end
    object QryItem_NotaP2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
    end
    object QryItem_NotaP2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
    end
    object QryItem_NotaP2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
    end
    object QryItem_NotaP2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
    end
    object QryItem_Notanomproagru: TFloatField
      FieldName = 'nomproagru'
    end
    object QryItem_NotaP2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
    end
    object QryItem_NotaP2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
    end
    object QryItem_NotaP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object QryItem_NotaP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object QryItem_NotaP2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
    end
    object QryItem_NotaP2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
    end
    object QryItem_NotaP2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
    end
    object QryItem_NotaP2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
    end
    object QryItem_Notatotal_liq: TFloatField
      FieldName = 'total_liq'
    end
    object QryItem_NotaP2QTD_101: TFloatField
      FieldName = 'P2QTD_101'
    end
    object QryItem_NotaP2QTDDEV_101: TFloatField
      FieldName = 'P2QTDDEV_101'
    end
    object QryItem_NotaP2LOTE_101: TStringField
      FieldName = 'P2LOTE_101'
    end
    object QryItem_NotaP2PROMOCAO_101: TStringField
      FieldName = 'P2PROMOCAO_101'
    end
    object QryItem_NotaP2VALDES_101: TDateTimeField
      FieldName = 'P2VALDES_101'
    end
    object QryItem_NotaP2BASEN_101: TFloatField
      FieldName = 'P2BASEN_101'
    end
    object QryItem_NotaP2ICMSN_101: TFloatField
      FieldName = 'P2ICMSN_101'
    end
    object QryItem_NotaP2REPAS_101: TFloatField
      FieldName = 'P2REPAS_101'
    end
    object QryItem_NotaP2BASER_101: TFloatField
      FieldName = 'P2BASER_101'
    end
    object QryItem_NotaP2ICMSR_101: TFloatField
      FieldName = 'P2ICMSR_101'
    end
    object QryItem_NotaP2TOTDES_101: TFloatField
      FieldName = 'P2TOTDES_101'
    end
    object QryItem_NotaP2DESCRAT_101: TFloatField
      FieldName = 'P2DESCRAT_101'
    end
    object QryItem_NotaP2VALIPI_101: TFloatField
      FieldName = 'P2VALIPI_101'
    end
    object QryItem_NotaP2BCINR_101: TFloatField
      FieldName = 'P2BCINR_101'
    end
    object QryItem_NotaP2ICMSNR_101: TFloatField
      FieldName = 'P2ICMSNR_101'
    end
    object QryItem_NotaP2ISENTAS_101: TFloatField
      FieldName = 'P2ISENTAS_101'
    end
    object QryItem_NotaP2TOTOUT_101: TFloatField
      FieldName = 'P2TOTOUT_101'
    end
    object QryItem_NotaP2ALIQ_101: TFloatField
      FieldName = 'P2ALIQ_101'
    end
    object QryItem_NotaP2ALIQNR_101: TFloatField
      FieldName = 'P2ALIQNR_101'
    end
    object QryItem_NotaP2VCOMIS_101: TFloatField
      FieldName = 'P2VCOMIS_101'
    end
    object QryItem_NotaP2VCOM02_101: TFloatField
      FieldName = 'P2VCOM02_101'
    end
    object QryItem_NotaP2VCOM03_101: TFloatField
      FieldName = 'P2VCOM03_101'
    end
    object QryItem_NotaP2DESCM_101: TFloatField
      FieldName = 'P2DESCM_101'
    end
    object QryItem_NotaP2SEMCOM_101: TFloatField
      FieldName = 'P2SEMCOM_101'
    end
    object QryItem_NotaP2TOTLIQ_101: TFloatField
      FieldName = 'P2TOTLIQ_101'
    end
    object QryItem_NotaP2VDESCF_101: TFloatField
      FieldName = 'P2VDESCF_101'
    end
    object QryItem_NotaP2ACRECONV_101: TFloatField
      FieldName = 'P2ACRECONV_101'
    end
    object QryItem_NotaP2ACREGER_101: TFloatField
      FieldName = 'P2ACREGER_101'
    end
    object QryItem_NotaP2VCOM04_101: TFloatField
      FieldName = 'P2VCOM04_101'
    end
    object QryItem_NotaP2ACRERAT_101: TFloatField
      FieldName = 'P2ACRERAT_101'
    end
    object QryItem_NotaP2PRECO_101: TFloatField
      FieldName = 'P2PRECO_101'
    end
    object QryItem_NotaP2CFO_101: TFloatField
      FieldName = 'P2CFO_101'
    end
    object QryItem_NotaP2QTD_ENTREGUE_101: TFloatField
      FieldName = 'P2QTD_ENTREGUE_101'
    end
    object QryItem_NotaP2QTD_ENTREGANDO_101: TFloatField
      FieldName = 'P2QTD_ENTREGANDO_101'
    end
    object QryItem_NotaP2VCOMIS_EXTRA_101: TFloatField
      FieldName = 'P2VCOMIS_EXTRA_101'
    end
    object QryItem_NotaP2CFOSUBECF_101: TFloatField
      FieldName = 'P2CFOSUBECF_101'
    end
    object QryItem_NotaP2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object QryItem_NotaP2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object QryItem_NotaP2ST_ICMCRED_101: TFloatField
      FieldName = 'P2ST_ICMCRED_101'
    end
    object QryItem_NotaP2ST_ICMDEB_101: TFloatField
      FieldName = 'P2ST_ICMDEB_101'
    end
    object QryItem_NotaP2REDUTICM_101: TFloatField
      FieldName = 'P2REDUTICM_101'
    end
    object QryItem_NotaP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
    end
    object QryItem_NotaP2DTVCTO_101: TDateTimeField
      FieldName = 'P2DTVCTO_101'
    end
    object QryItem_NotaP2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
    end
    object QryItem_NotaP2NOMEPRO: TStringField
      FieldName = 'P2NOMEPRO'
      Size = 30
    end
    object QryItem_NotaP2ALIPI_101: TFloatField
      FieldName = 'P2ALIPI_101'
    end
    object QryItem_NotaP2PDESCF_101: TFloatField
      FieldName = 'P2PDESCF_101'
    end
    object QryItem_NotaPDRESTPRO: TFloatField
      FieldName = 'PDRESTPRO'
    end
    object QryItem_NotaPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
    end
    object QryItem_NotaPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
    end
    object QryItem_NotaPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
    end
    object QryItem_NotaPLOCAL: TIntegerField
      FieldName = 'PLOCAL'
    end
    object QryItem_NotaP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Size = 30
    end
    object QryItem_NotaP2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
    end
    object QryItem_NotaP2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
    end
    object QryItem_Notacons_proprio: TStringField
      FieldKind = fkCalculated
      FieldName = 'cons_proprio'
      Size = 10
      Calculated = True
    end
    object QryItem_Notabaseicms: TFloatField
      FieldKind = fkCalculated
      FieldName = 'baseicms'
      Calculated = True
    end
    object QryItem_Notaaliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq'
      Calculated = True
    end
    object QryItem_Notaicmsnormal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'icmsnormal'
      Calculated = True
    end
    object QryItem_Notatipo_preco: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_preco'
      Size = 10
      Calculated = True
    end
    object QryItem_NotaREFER: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFER'
    end
    object QryItem_NotaP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object QryItem_NotaP2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
    end
    object QryItem_NotaP2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
    end
    object QryItem_NotaDESCALTER2: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCALTER2'
      Size = 60
      Calculated = True
    end
    object QryItem_NotaP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object QryItem_NotaP2COMPLEMENTO: TStringField
      FieldName = 'P2COMPLEMENTO'
      Size = 500
    end
    object QryItem_NotaP2KIT_PRO: TStringField
      FieldName = 'P2KIT_PRO'
      Size = 1
    end
    object QryItem_NotaP2CSOSN_ORI: TStringField
      FieldName = 'P2CSOSN_ORI'
      Size = 1
    end
    object QryItem_NotaP2CSOSN: TStringField
      FieldName = 'P2CSOSN'
      Size = 3
    end
    object QryItem_NotaP2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object QryItem_NotaP2DESCPR_101: TFloatField
      FieldName = 'P2DESCPR_101'
    end
  end
  object Tb_DevCli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select max(P1TOTALL) AS P1TOTALL, max(P1TOTDES) AS P1TOTDES, max' +
        '(P1ALIQDEB) as P1ALIQDEB,'
      
        'P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2QTD,P2QTDDEV,P2ITEM,P2LOTE,P' +
        '2DTVCTO,P2QTD_ENTREGUE,P2QTD_ENTREGANDO,'
      '(P2TOTLIQ-P2TOTDES) AS P2TOTLIQ,max(P2CODVEN) as P2CODVEN,'
      '(P2TOTLIQ-P2TOTDES)/P2QTD AS PcoLiqDev,'
      'max(p2nompro_ori) AS P2NOMPRO_ORI,'
      'min(P2PRECO) AS P2PRECO,'
      'min(P2DESC1) AS P2DESC1,'
      'min(P2DESC2) AS P2DESC2,'
      'min(P2DESC3) AS P2DESC3,'
      'min(P2PDESCF) AS P2PDESCF,'
      'min(P2PCOMIS) AS P2PCOMIS,'
      'min(P2PCOM02) AS P2PCOM02,'
      'min(P2PCOM03) AS P2PCOM03,'
      'min(P2VALDES) AS P2VALDES,'
      'min(P2PCOMAX) AS P2PCOMAX,'
      'min(P2ST_IVA) AS P2ST_IVA,'
      'min(P2ST_REDUT) AS P2ST_REDUT,'
      'min(P2ST_ICMCRED) AS P2ST_ICMCRED,'
      'min(P2ST_ICMDEB) AS P2ST_ICMDEB,'
      'min(P2REDUTICM) AS P2REDUTICM,'
      'min(P2SIT)      AS P2SIT,'
      'min(P2ALIQ)     AS P2ALIQ,'
      'min(P2ALIPI)     AS P2ALIPI,'
      'min(P2ALIQNR)     AS P2ALIQNR,'
      'P2TOTDES,P2CODPRO,PDNOME,PDUND,PDMARCA,'
      #39'P'#39' as TIPO'
      'from'
      'CADP02,CADP01,CADPRO'
      'where P2CODEMP=0'
      'AND P2LOTSEQ=0'
      'AND P2CHAVE=0'
      'AND PDCODPRO=P2CODPRO'
      'AND P1CODEMP=P2CODEMP'
      'AND P1LOTSEQ=P2LOTSEQ'
      'AND P1CHAVE=P2CHAVE'
      
        'GROUP BY P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2QTD,P2QTDDEV,P2ITEM' +
        ',P2LOTE,P2DTVCTO,P2QTD_ENTREGUE,P2QTD_ENTREGANDO,'
      'P2TOTLIQ,P2TOTDES,'
      'P2CODPRO,PDNOME,PDUND,PDMARCA'
      '')
    Left = 559
    Top = 204
    object Tb_DevCliP1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
    end
    object Tb_DevCliP1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
    end
    object Tb_DevCliP1ALIQDEB: TFloatField
      FieldName = 'P1ALIQDEB'
    end
    object Tb_DevCliP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Tb_DevCliP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Tb_DevCliP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object Tb_DevCliP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Tb_DevCliP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Tb_DevCliP2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
    end
    object Tb_DevCliP2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Tb_DevCliP2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object Tb_DevCliP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
    end
    object Tb_DevCliP2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
    end
    object Tb_DevCliP2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
    end
    object Tb_DevCliP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object Tb_DevCliP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object Tb_DevCliPCOLIQDEV: TFloatField
      FieldName = 'PCOLIQDEV'
    end
    object Tb_DevCliP2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Size = 200
    end
    object Tb_DevCliP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Tb_DevCliP2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object Tb_DevCliP2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object Tb_DevCliP2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object Tb_DevCliP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object Tb_DevCliP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object Tb_DevCliP2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
    end
    object Tb_DevCliP2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
    end
    object Tb_DevCliP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object Tb_DevCliP2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
    end
    object Tb_DevCliP2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object Tb_DevCliP2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object Tb_DevCliP2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
    end
    object Tb_DevCliP2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
    end
    object Tb_DevCliP2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
    end
    object Tb_DevCliP2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Tb_DevCliP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Tb_DevCliP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
    end
    object Tb_DevCliP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Tb_DevCliP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Tb_DevCliP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Tb_DevCliPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Tb_DevCliPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Tb_DevCliPDMARCA: TStringField
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Tb_DevCliTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object Ds_Itens: TDataSource
    DataSet = QryItem_Nota
    Left = 174
    Top = 151
  end
  object pop_grid: TPopupMenu
    Left = 535
    Top = 296
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
  object U_PedFP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPFP'
      'set'
      '  PFPCODEMP = :PFPCODEMP,'
      '  PFPLOTSEQ = :PFPLOTSEQ,'
      '  PFPCHAVE = :PFPCHAVE,'
      '  PFPSEQ = :PFPSEQ,'
      '  PFPVINCULO = :PFPVINCULO,'
      '  PFPFORMA = :PFPFORMA,'
      '  PFPNOMFOR = :PFPNOMFOR,'
      '  PFPDATA = :PFPDATA,'
      '  PFPNUMDOC = :PFPNUMDOC,'
      '  PFPBANCO = :PFPBANCO,'
      '  PFPSERIE = :PFPSERIE,'
      '  PFPVALOR = :PFPVALOR,'
      '  PFPCC = :PFPCC,'
      '  PFPCOMP = :PFPCOMP,'
      '  PFPAGENCIA = :PFPAGENCIA,'
      '  PFPEMITENTE = :PFPEMITENTE,'
      '  PFPCNPF = :PFPCNPF,'
      '  PFPRG = :PFPRG,'
      '  PFPDTNAS = :PFPDTNAS,'
      '  PFPFPGTO = :PFPFPGTO,'
      '  PFPDEV_CODEMP = :PFPDEV_CODEMP,'
      '  PFPDEV_CODECF = :PFPDEV_CODECF,'
      '  PFPDEV_NUMERO = :PFPDEV_NUMERO,'
      '  PFPDEV_DESD = :PFPDEV_DESD,'
      '  PFPDEV_DUP = :PFPDEV_DUP,'
      '  PFPDEV_DTEMIS = :PFPDEV_DTEMIS,'
      '  PFPPRAZO = :PFPPRAZO'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    InsertSQL.Strings = (
      'insert into CADPFP'
      
        '  (PFPCODEMP, PFPLOTSEQ, PFPCHAVE, PFPSEQ, PFPVINCULO, PFPFORMA,' +
        ' '
      'PFPNOMFOR, '
      '   PFPDATA, PFPNUMDOC, PFPBANCO, PFPSERIE, PFPVALOR, PFPCC, '
      'PFPCOMP, PFPAGENCIA, '
      
        '   PFPEMITENTE, PFPCNPF, PFPRG, PFPDTNAS, PFPFPGTO, PFPDEV_CODEM' +
        'P, '
      'PFPDEV_CODECF, '
      '   PFPDEV_NUMERO, PFPDEV_DESD, PFPDEV_DUP, PFPDEV_DTEMIS, '
      'PFPPRAZO)'
      'values'
      '  (:PFPCODEMP, :PFPLOTSEQ, :PFPCHAVE, :PFPSEQ, :PFPVINCULO, '
      ':PFPFORMA, '
      
        '   :PFPNOMFOR, :PFPDATA, :PFPNUMDOC, :PFPBANCO, :PFPSERIE, :PFPV' +
        'ALOR, '
      ':PFPCC, '
      
        '   :PFPCOMP, :PFPAGENCIA, :PFPEMITENTE, :PFPCNPF, :PFPRG, :PFPDT' +
        'NAS, '
      ':PFPFPGTO, '
      
        '   :PFPDEV_CODEMP, :PFPDEV_CODECF, :PFPDEV_NUMERO, :PFPDEV_DESD,' +
        ' '
      ':PFPDEV_DUP, '
      '   :PFPDEV_DTEMIS, :PFPPRAZO)')
    DeleteSQL.Strings = (
      'delete from CADPFP'
      'where'
      '  PFPCODEMP = :OLD_PFPCODEMP and'
      '  PFPLOTSEQ = :OLD_PFPLOTSEQ and'
      '  PFPCHAVE = :OLD_PFPCHAVE and'
      '  PFPSEQ = :OLD_PFPSEQ')
    Left = 720
    Top = 183
  end
  object mem_cadpfp: TRxMemoryData
    FieldDefs = <
      item
        Name = 'PFPCODEMP'
        DataType = ftFloat
      end
      item
        Name = 'PFPLOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'PFPCHAVE'
        DataType = ftFloat
      end
      item
        Name = 'PFPSEQ'
        DataType = ftFloat
      end
      item
        Name = 'PFPFORMA'
        DataType = ftFloat
      end
      item
        Name = 'PFPNUMDOC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PFPBANCO'
        DataType = ftFloat
      end
      item
        Name = 'PFPSERIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PFPVALOR'
        DataType = ftFloat
      end
      item
        Name = 'PFPCC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PFPCOMP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PFPAGENCIA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PFPEMITENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PFPDATA'
        DataType = ftDateTime
      end
      item
        Name = 'PFPNOMFOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PFPVINCULO'
        DataType = ftFloat
      end
      item
        Name = 'PFPCNPF'
        DataType = ftFloat
      end
      item
        Name = 'PFPRG'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PFPDTNAS'
        DataType = ftDateTime
      end
      item
        Name = 'PFPFPGTO'
        DataType = ftFloat
      end
      item
        Name = 'PFPDEV_CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'PFPDEV_CODECF'
        DataType = ftFloat
      end
      item
        Name = 'PFPDEV_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'PFPDEV_DESD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PFPDEV_DUP'
        DataType = ftFloat
      end
      item
        Name = 'PFPDEV_DTEMIS'
        DataType = ftDateTime
      end
      item
        Name = 'PFPPRAZO'
        DataType = ftFloat
      end>
    BeforePost = mem_cadpfpBeforePost
    Left = 632
    Top = 223
    object mem_cadpfpPFPCODEMP: TFloatField
      FieldName = 'PFPCODEMP'
    end
    object mem_cadpfpPFPLOTSEQ: TFloatField
      FieldName = 'PFPLOTSEQ'
    end
    object mem_cadpfpPFPCHAVE: TFloatField
      FieldName = 'PFPCHAVE'
    end
    object mem_cadpfpPFPSEQ: TFloatField
      FieldName = 'PFPSEQ'
    end
    object mem_cadpfpPFPFORMA: TFloatField
      FieldName = 'PFPFORMA'
    end
    object mem_cadpfpPFPNUMDOC: TStringField
      FieldName = 'PFPNUMDOC'
    end
    object mem_cadpfpPFPBANCO: TFloatField
      FieldName = 'PFPBANCO'
    end
    object mem_cadpfpPFPSERIE: TStringField
      FieldName = 'PFPSERIE'
    end
    object mem_cadpfpPFPVALOR: TFloatField
      FieldName = 'PFPVALOR'
    end
    object mem_cadpfpPFPCC: TStringField
      FieldName = 'PFPCC'
    end
    object mem_cadpfpPFPCOMP: TStringField
      FieldName = 'PFPCOMP'
      Size = 5
    end
    object mem_cadpfpPFPAGENCIA: TStringField
      FieldName = 'PFPAGENCIA'
      Size = 8
    end
    object mem_cadpfpPFPEMITENTE: TStringField
      FieldName = 'PFPEMITENTE'
      Size = 40
    end
    object mem_cadpfpPFPDATA: TDateTimeField
      FieldName = 'PFPDATA'
    end
    object mem_cadpfpPFPNOMFOR: TStringField
      FieldName = 'PFPNOMFOR'
    end
    object mem_cadpfpPFPVINCULO: TFloatField
      FieldName = 'PFPVINCULO'
    end
    object mem_cadpfpPFPCNPF: TFloatField
      FieldName = 'PFPCNPF'
    end
    object mem_cadpfpPFPRG: TStringField
      FieldName = 'PFPRG'
      Size = 50
    end
    object mem_cadpfpPFPDTNAS: TDateTimeField
      FieldName = 'PFPDTNAS'
    end
    object mem_cadpfpPFPFPGTO: TFloatField
      FieldName = 'PFPFPGTO'
    end
    object mem_cadpfpPFPDEV_CODEMP: TFloatField
      FieldName = 'PFPDEV_CODEMP'
    end
    object mem_cadpfpPFPDEV_CODECF: TFloatField
      FieldName = 'PFPDEV_CODECF'
    end
    object mem_cadpfpPFPDEV_NUMERO: TFloatField
      FieldName = 'PFPDEV_NUMERO'
    end
    object mem_cadpfpPFPDEV_DESD: TStringField
      FieldName = 'PFPDEV_DESD'
      Size = 2
    end
    object mem_cadpfpPFPDEV_DUP: TFloatField
      FieldName = 'PFPDEV_DUP'
    end
    object mem_cadpfpPFPDEV_DTEMIS: TDateTimeField
      FieldName = 'PFPDEV_DTEMIS'
    end
    object mem_cadpfpPFPPRAZO: TFloatField
      FieldName = 'PFPPRAZO'
    end
  end
  object Src_Men_CADPFP: TDataSource
    DataSet = mem_cadpfp
    Left = 659
    Top = 159
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 454
    Top = 78
  end
  object QryServico_Nota: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2SCODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2SCHAVE'
        DataType = ftFloat
      end
      item
        Name = 'P2SORDEM'
        DataType = ftFloat
      end
      item
        Name = 'P2SITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2SCODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2SQTD'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC1'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC2'
        DataType = ftFloat
      end
      item
        Name = 'P2SVALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2SPRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2SSIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'P2SCODFAB'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCISSQN'
        DataType = ftFloat
      end
      item
        Name = 'P2SVISSQN'
        DataType = ftFloat
      end
      item
        Name = 'P2SLISTA'
        DataType = ftFloat
      end
      item
        Name = 'P2SSTATUS'
        DataType = ftFloat
      end
      item
        Name = 'P2SPCOTAB'
        DataType = ftFloat
      end
      item
        Name = 'P2STOTDES'
        DataType = ftFloat
      end
      item
        Name = 'P2STABELA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'P2SISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2SPCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESCM'
        DataType = ftFloat
      end
      item
        Name = 'P2SCFO'
        DataType = ftFloat
      end
      item
        Name = 'P2SSEMCOM'
        DataType = ftFloat
      end
      item
        Name = 'P2SPDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2SVDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESCRAT'
        DataType = ftFloat
      end
      item
        Name = 'P2SLOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'P2SPCOCUS'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOM02'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOM03'
        DataType = ftFloat
      end
      item
        Name = 'P2SQTDDEV'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC3'
        DataType = ftFloat
      end
      item
        Name = 'P2SACRECRAT'
        DataType = ftFloat
      end
      item
        Name = 'P2SVALDES_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCISSQN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVISSQN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2STOTDES_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SISENTAS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQ_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOMIS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESCM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SCFO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SSEMCOM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVDESCF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESCRAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOM02_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVCOM03_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SQTDDEV_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SACRECRAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SQTD_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SPRECO_101'
        DataType = ftFloat
      end
      item
        Name = 'DESCALTER'
        DataType = ftMemo
      end
      item
        Name = 'NOMESERV'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'UNDSER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'P2SBAIXADO'
        DataType = ftFloat
      end
      item
        Name = 'P2SCODFUN'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCINSS'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCINSS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SREDINSS'
        DataType = ftFloat
      end
      item
        Name = 'P2SREDINSS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVINSS'
        DataType = ftFloat
      end
      item
        Name = 'P2SVINSS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQINSS'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQINSS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SREDIRRF'
        DataType = ftFloat
      end
      item
        Name = 'P2SREDIRRF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCIRRF'
        DataType = ftFloat
      end
      item
        Name = 'P2SBCIRRF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SVIRRF'
        DataType = ftFloat
      end
      item
        Name = 'P2SVIRRF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQIRRF'
        DataType = ftFloat
      end
      item
        Name = 'P2SALIQIRRF_101'
        DataType = ftFloat
      end
      item
        Name = 'PLOCAL'
        DataType = ftFloat
      end
      item
        Name = 'total_liq'
        DataType = ftFloat
      end
      item
        Name = 'PDRESTPRO'
        DataType = ftFloat
      end
      item
        Name = 'PDRESTCON'
        DataType = ftFloat
      end
      item
        Name = 'PDRESTFOR'
        DataType = ftFloat
      end
      item
        Name = 'PDFRACAO'
        DataType = ftFloat
      end
      item
        Name = 'total_bru'
        DataType = ftFloat
      end
      item
        Name = 'total_liq_101'
        DataType = ftFloat
      end
      item
        Name = 'total_brr_101'
        DataType = ftFloat
      end>
    Left = 436
    Top = 319
    object QryServico_NotaP2SCODEMP: TFloatField
      FieldName = 'P2SCODEMP'
    end
    object QryServico_NotaP2SCHAVE: TFloatField
      FieldName = 'P2SCHAVE'
    end
    object QryServico_NotaP2SORDEM: TFloatField
      FieldName = 'P2SORDEM'
    end
    object QryServico_NotaP2SITEM: TFloatField
      FieldName = 'P2SITEM'
    end
    object QryServico_NotaP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
    end
    object QryServico_NotaP2SQTD: TFloatField
      FieldName = 'P2SQTD'
    end
    object QryServico_NotaP2SDESC1: TFloatField
      FieldName = 'P2SDESC1'
    end
    object QryServico_NotaP2SDESC2: TFloatField
      FieldName = 'P2SDESC2'
    end
    object QryServico_NotaP2SVALDES: TFloatField
      FieldName = 'P2SVALDES'
    end
    object QryServico_NotaP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
    end
    object QryServico_NotaP2SSIT: TStringField
      FieldName = 'P2SSIT'
      Size = 3
    end
    object QryServico_NotaP2SCODFAB: TFloatField
      FieldName = 'P2SCODFAB'
    end
    object QryServico_NotaP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
    end
    object QryServico_NotaP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
    end
    object QryServico_NotaP2SLISTA: TFloatField
      FieldName = 'P2SLISTA'
    end
    object QryServico_NotaP2SSTATUS: TFloatField
      FieldName = 'P2SSTATUS'
    end
    object QryServico_NotaP2SPCOTAB: TFloatField
      FieldName = 'P2SPCOTAB'
    end
    object QryServico_NotaP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
    end
    object QryServico_NotaP2STABELA: TStringField
      FieldName = 'P2STABELA'
      Size = 2
    end
    object QryServico_NotaP2SISENTAS: TFloatField
      FieldName = 'P2SISENTAS'
    end
    object QryServico_NotaP2SALIQ: TFloatField
      FieldName = 'P2SALIQ'
    end
    object QryServico_NotaP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
    end
    object QryServico_NotaP2SVCOMIS: TFloatField
      FieldName = 'P2SVCOMIS'
    end
    object QryServico_NotaP2SDESCM: TFloatField
      FieldName = 'P2SDESCM'
    end
    object QryServico_NotaP2SCFO: TFloatField
      FieldName = 'P2SCFO'
    end
    object QryServico_NotaP2SSEMCOM: TFloatField
      FieldName = 'P2SSEMCOM'
    end
    object QryServico_NotaP2SPDESCF: TFloatField
      FieldName = 'P2SPDESCF'
    end
    object QryServico_NotaP2SVDESCF: TFloatField
      FieldName = 'P2SVDESCF'
    end
    object QryServico_NotaP2SDESCRAT: TFloatField
      FieldName = 'P2SDESCRAT'
    end
    object QryServico_NotaP2SLOTSEQ: TFloatField
      FieldName = 'P2SLOTSEQ'
    end
    object QryServico_NotaP2SPCOCUS: TFloatField
      FieldName = 'P2SPCOCUS'
    end
    object QryServico_NotaP2SVCOM02: TFloatField
      FieldName = 'P2SVCOM02'
    end
    object QryServico_NotaP2SVCOM03: TFloatField
      FieldName = 'P2SVCOM03'
    end
    object QryServico_NotaP2SQTDDEV: TFloatField
      FieldName = 'P2SQTDDEV'
    end
    object QryServico_NotaP2SDESC3: TFloatField
      FieldName = 'P2SDESC3'
    end
    object QryServico_NotaP2SACRECRAT: TFloatField
      FieldName = 'P2SACRECRAT'
    end
    object QryServico_NotaP2SVALDES_101: TFloatField
      FieldName = 'P2SVALDES_101'
    end
    object QryServico_NotaP2SBCISSQN_101: TFloatField
      FieldName = 'P2SBCISSQN_101'
    end
    object QryServico_NotaP2SVISSQN_101: TFloatField
      FieldName = 'P2SVISSQN_101'
    end
    object QryServico_NotaP2STOTDES_101: TFloatField
      FieldName = 'P2STOTDES_101'
    end
    object QryServico_NotaP2SISENTAS_101: TFloatField
      FieldName = 'P2SISENTAS_101'
    end
    object QryServico_NotaP2SALIQ_101: TFloatField
      FieldName = 'P2SALIQ_101'
    end
    object QryServico_NotaP2SVCOMIS_101: TFloatField
      FieldName = 'P2SVCOMIS_101'
    end
    object QryServico_NotaP2SDESCM_101: TFloatField
      FieldName = 'P2SDESCM_101'
    end
    object QryServico_NotaP2SCFO_101: TFloatField
      FieldName = 'P2SCFO_101'
    end
    object QryServico_NotaP2SSEMCOM_101: TFloatField
      FieldName = 'P2SSEMCOM_101'
    end
    object QryServico_NotaP2SVDESCF_101: TFloatField
      FieldName = 'P2SVDESCF_101'
    end
    object QryServico_NotaP2SDESCRAT_101: TFloatField
      FieldName = 'P2SDESCRAT_101'
    end
    object QryServico_NotaP2SVCOM02_101: TFloatField
      FieldName = 'P2SVCOM02_101'
    end
    object QryServico_NotaP2SVCOM03_101: TFloatField
      FieldName = 'P2SVCOM03_101'
    end
    object QryServico_NotaP2SQTDDEV_101: TFloatField
      FieldName = 'P2SQTDDEV_101'
    end
    object QryServico_NotaP2SACRECRAT_101: TFloatField
      FieldName = 'P2SACRECRAT_101'
    end
    object QryServico_NotaP2SQTD_101: TFloatField
      FieldName = 'P2SQTD_101'
    end
    object QryServico_NotaP2SPRECO_101: TFloatField
      FieldName = 'P2SPRECO_101'
    end
    object QryServico_NotaDESCALTER: TMemoField
      FieldName = 'DESCALTER'
      BlobType = ftMemo
    end
    object QryServico_NotaNOMESERV: TStringField
      FieldName = 'NOMESERV'
      Size = 53
    end
    object QryServico_NotaUNDSER: TStringField
      FieldName = 'UNDSER'
      Size = 3
    end
    object QryServico_NotaP2SBAIXADO: TFloatField
      FieldName = 'P2SBAIXADO'
    end
    object QryServico_NotaP2SCODFUN: TFloatField
      FieldName = 'P2SCODFUN'
    end
    object QryServico_NotaP2SBCINSS: TFloatField
      FieldName = 'P2SBCINSS'
    end
    object QryServico_NotaP2SBCINSS_101: TFloatField
      FieldName = 'P2SBCINSS_101'
    end
    object QryServico_NotaP2SREDINSS: TFloatField
      FieldName = 'P2SREDINSS'
    end
    object QryServico_NotaP2SREDINSS_101: TFloatField
      FieldName = 'P2SREDINSS_101'
    end
    object QryServico_NotaP2SVINSS: TFloatField
      FieldName = 'P2SVINSS'
    end
    object QryServico_NotaP2SVINSS_101: TFloatField
      FieldName = 'P2SVINSS_101'
    end
    object QryServico_NotaP2SALIQINSS: TFloatField
      FieldName = 'P2SALIQINSS'
    end
    object QryServico_NotaP2SALIQINSS_101: TFloatField
      FieldName = 'P2SALIQINSS_101'
    end
    object QryServico_NotaP2SREDIRRF: TFloatField
      FieldName = 'P2SREDIRRF'
    end
    object QryServico_NotaP2SREDIRRF_101: TFloatField
      FieldName = 'P2SREDIRRF_101'
    end
    object QryServico_NotaP2SBCIRRF: TFloatField
      FieldName = 'P2SBCIRRF'
    end
    object QryServico_NotaP2SBCIRRF_101: TFloatField
      FieldName = 'P2SBCIRRF_101'
    end
    object QryServico_NotaP2SVIRRF: TFloatField
      FieldName = 'P2SVIRRF'
    end
    object QryServico_NotaP2SVIRRF_101: TFloatField
      FieldName = 'P2SVIRRF_101'
    end
    object QryServico_NotaP2SALIQIRRF: TFloatField
      FieldName = 'P2SALIQIRRF'
    end
    object QryServico_NotaP2SALIQIRRF_101: TFloatField
      FieldName = 'P2SALIQIRRF_101'
    end
    object QryServico_NotaPLOCAL: TFloatField
      FieldName = 'PLOCAL'
    end
    object QryServico_Notatotal_liq: TFloatField
      FieldName = 'total_liq'
    end
    object QryServico_NotaPDRESTPRO: TFloatField
      FieldName = 'PDRESTPRO'
    end
    object QryServico_NotaPDRESTCON: TFloatField
      FieldName = 'PDRESTCON'
    end
    object QryServico_NotaPDRESTFOR: TFloatField
      FieldName = 'PDRESTFOR'
    end
    object QryServico_NotaPDFRACAO: TFloatField
      FieldName = 'PDFRACAO'
    end
    object QryServico_Notatotal_bru: TFloatField
      FieldName = 'total_bru'
    end
    object QryServico_Notatotal_liq_101: TFloatField
      FieldName = 'total_liq_101'
    end
    object QryServico_Notatotal_brr_101: TFloatField
      FieldName = 'total_brr_101'
    end
    object QryServico_NotaP2SCSOSN: TStringField
      FieldName = 'P2SCSOSN'
      Size = 3
    end
    object QryServico_NotaP2SCSOSN_ORI: TStringField
      FieldKind = fkCalculated
      FieldName = 'P2SCSOSN_ORI'
      Size = 1
      Calculated = True
    end
  end
  object mem_CADPEN: TRxMemoryData
    FieldDefs = <
      item
        Name = 'PECODEMP'
        DataType = ftFloat
      end
      item
        Name = 'PELOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'PECHAVE'
        DataType = ftFloat
      end
      item
        Name = 'PECODCLI'
        DataType = ftFloat
      end
      item
        Name = 'PECODVEN'
        DataType = ftFloat
      end
      item
        Name = 'PEDATA'
        DataType = ftDateTime
      end
      item
        Name = 'PEITEM'
        DataType = ftFloat
      end
      item
        Name = 'PECODPRO'
        DataType = ftFloat
      end
      item
        Name = 'PEQTDPED'
        DataType = ftFloat
      end
      item
        Name = 'PEQTDENV'
        DataType = ftFloat
      end
      item
        Name = 'PEQTDPEN'
        DataType = ftFloat
      end
      item
        Name = 'PEDESC01'
        DataType = ftFloat
      end
      item
        Name = 'PEDESC02'
        DataType = ftFloat
      end
      item
        Name = 'PEDESC03'
        DataType = ftFloat
      end
      item
        Name = 'PEVALDES'
        DataType = ftFloat
      end
      item
        Name = 'PEPRECO'
        DataType = ftFloat
      end
      item
        Name = 'PEGRADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'UNDPRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARCAPRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PEDESCF'
        DataType = ftFloat
      end
      item
        Name = 'PEPCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'PEUND'
        DataType = ftString
        Size = 2
      end>
    Left = 686
    Top = 223
    object mem_CADPENPECODEMP: TFloatField
      FieldName = 'PECODEMP'
    end
    object mem_CADPENPELOTSEQ: TFloatField
      FieldName = 'PELOTSEQ'
    end
    object mem_CADPENPECHAVE: TFloatField
      FieldName = 'PECHAVE'
    end
    object mem_CADPENPECODCLI: TFloatField
      FieldName = 'PECODCLI'
    end
    object mem_CADPENPECODVEN: TFloatField
      FieldName = 'PECODVEN'
    end
    object mem_CADPENPEDATA: TDateTimeField
      FieldName = 'PEDATA'
    end
    object mem_CADPENPEITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'PEITEM'
    end
    object mem_CADPENPECODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PECODPRO'
    end
    object mem_CADPENPEQTDPED: TFloatField
      DisplayLabel = 'Qtd.Pedida'
      FieldName = 'PEQTDPED'
    end
    object mem_CADPENPEQTDENV: TFloatField
      DisplayLabel = 'Qtd.Atendida'
      FieldName = 'PEQTDENV'
    end
    object mem_CADPENPEQTDPEN: TFloatField
      DisplayLabel = 'Qtd.Pendente'
      FieldName = 'PEQTDPEN'
    end
    object mem_CADPENPEDESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'PEDESC01'
    end
    object mem_CADPENPEDESC02: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'PEDESC02'
    end
    object mem_CADPENPEDESC03: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'PEDESC03'
    end
    object mem_CADPENPEVALDES: TFloatField
      DisplayLabel = 'Valor Desc.'
      FieldName = 'PEVALDES'
    end
    object mem_CADPENPEPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PEPRECO'
    end
    object mem_CADPENPEGRADE: TStringField
      DisplayLabel = 'Grade'
      FieldName = 'PEGRADE'
    end
    object mem_CADPENNOMPRO: TStringField
      DisplayLabel = 'Descricao dos Produtos'
      FieldName = 'NOMPRO'
      Size = 53
    end
    object mem_CADPENMARCAPRO: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCAPRO'
    end
    object mem_CADPENPEDESCF: TFloatField
      FieldName = 'PEDESCF'
    end
    object mem_CADPENPEPCOMIS: TFloatField
      FieldName = 'PEPCOMIS'
    end
    object mem_CADPENPEUND: TStringField
      FieldName = 'PEUND'
      Size = 2
    end
  end
  object mem_CADP01D: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P1DCODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P1DLOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'P1DCHAVE'
        DataType = ftFloat
      end
      item
        Name = 'P1DORDEM'
        DataType = ftFloat
      end
      item
        Name = 'P1DCODEMP_OR'
        DataType = ftFloat
      end
      item
        Name = 'P1DLS_OR'
        DataType = ftFloat
      end
      item
        Name = 'P1DCH_OR'
        DataType = ftFloat
      end
      item
        Name = 'P1DOR_OR'
        DataType = ftFloat
      end
      item
        Name = 'P1DDATAP'
        DataType = ftDateTime
      end>
    Left = 598
    Top = 159
    object mem_CADP01DP1DCODEMP: TFloatField
      FieldName = 'P1DCODEMP'
    end
    object mem_CADP01DP1DLOTSEQ: TFloatField
      FieldName = 'P1DLOTSEQ'
    end
    object mem_CADP01DP1DCHAVE: TFloatField
      FieldName = 'P1DCHAVE'
    end
    object mem_CADP01DP1DORDEM: TFloatField
      FieldName = 'P1DORDEM'
    end
    object mem_CADP01DP1DCODEMP_OR: TFloatField
      FieldName = 'P1DCODEMP_OR'
    end
    object mem_CADP01DP1DLS_OR: TFloatField
      FieldName = 'P1DLS_OR'
    end
    object mem_CADP01DP1DCH_OR: TFloatField
      FieldName = 'P1DCH_OR'
    end
    object mem_CADP01DP1DOR_OR: TFloatField
      FieldName = 'P1DOR_OR'
    end
    object mem_CADP01DP1DDATAP: TDateTimeField
      FieldName = 'P1DDATAP'
    end
  end
  object Src_OriDev: TDataSource
    DataSet = mem_CADP01D
    Left = 687
    Top = 196
  end
  object Src_dev: TDataSource
    DataSet = Tb_DevCli
    Left = 615
    Top = 303
  end
  object Src_Pen: TDataSource
    DataSet = mem_CADPEN
    Left = 736
    Top = 212
  end
  object Ds_Servicos: TDataSource
    DataSet = QryServico_Nota
    Left = 182
    Top = 191
  end
  object pop_gridServ: TPopupMenu
    Left = 591
    Top = 289
    object ExcluirServico: TMenuItem
      Caption = 'Exluir Servi'#231'o'
      OnClick = ExcluirServicoClick
    end
  end
  object mem_fatura_prod: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2DTVCTO'
        DataType = ftDate
      end
      item
        Name = 'P2DESC1'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC2'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC3'
        DataType = ftFloat
      end
      item
        Name = 'P2VALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2PDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2VDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE_101'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2DTVCTO_101'
        DataType = ftDateTime
      end
      item
        Name = 'P2TIPO_PCO'
        DataType = ftFloat
      end
      item
        Name = 'P2CONS_PROPRIO'
        DataType = ftFloat
      end
      item
        Name = 'P2AMBIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2COMPLEMENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'P2UND'
        DataType = ftString
        Size = 2
      end>
    Left = 116
    Top = 176
    object mem_fatura_prodP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object mem_fatura_prodP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object mem_fatura_prodP2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object mem_fatura_prodP2DTVCTO: TDateField
      FieldName = 'P2DTVCTO'
    end
    object mem_fatura_prodP2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object mem_fatura_prodP2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object mem_fatura_prodP2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object mem_fatura_prodP2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object mem_fatura_prodP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object mem_fatura_prodP2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object mem_fatura_prodP2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object mem_fatura_prodP2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
    end
    object mem_fatura_prodP2LOTE_101: TStringField
      FieldName = 'P2LOTE_101'
    end
    object mem_fatura_prodP2DTVCTO_101: TDateTimeField
      FieldName = 'P2DTVCTO_101'
    end
    object mem_fatura_prodP2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
    end
    object mem_fatura_prodP2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
    end
    object mem_fatura_prodP2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
    end
    object mem_fatura_prodP2COMPLEMENTO: TStringField
      FieldName = 'P2COMPLEMENTO'
      Size = 40
    end
    object mem_fatura_prodP2UND: TStringField
      FieldName = 'P2UND'
      Size = 2
    end
    object mem_fatura_prodP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object mem_fatura_prodDESCALTER: TMemoField
      FieldName = 'DESCALTER'
      BlobType = ftMemo
    end
  end
  object mem_fatura_servico: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2SCODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2SQTD'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC1'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC2'
        DataType = ftFloat
      end
      item
        Name = 'P2SVALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2SPRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2SPCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2SPDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2SDESC3'
        DataType = ftFloat
      end>
    Left = 140
    Top = 151
    object mem_fatura_servicoP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
    end
    object mem_fatura_servicoP2SQTD: TFloatField
      FieldName = 'P2SQTD'
    end
    object mem_fatura_servicoP2SDESC1: TFloatField
      FieldName = 'P2SDESC1'
    end
    object mem_fatura_servicoP2SDESC2: TFloatField
      FieldName = 'P2SDESC2'
    end
    object mem_fatura_servicoP2SDESC3: TFloatField
      FieldName = 'P2SDESC3'
    end
    object mem_fatura_servicoP2SVALDES: TFloatField
      FieldName = 'P2SVALDES'
    end
    object mem_fatura_servicoP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
    end
    object mem_fatura_servicoP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
    end
    object mem_fatura_servicoP2SPDESCF: TFloatField
      FieldName = 'P2SPDESCF'
    end
  end
  object mem_cadp02_mp: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2MP_CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTDSOL'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_LOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTDDEVOL'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_DATA_SOL'
        DataType = ftDateTime
      end
      item
        Name = 'TOTALBRU'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_HORA_SOL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MP_NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'MP_UNDPRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MP_MARCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MPLOCAL'
        DataType = ftInteger
      end
      item
        Name = 'P2MP_QTD_SOBRA'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_QUEBRA'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_OUTRET'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_CODPRO_ORI'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2MP_LOTE_ORI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2MP_DTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'P2MP_DTVCTO_ORI'
        DataType = ftDateTime
      end
      item
        Name = 'P2MP_PCOCUS'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_PCOCOMPRA'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_PRECO_ORI'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_ORI'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_NOME2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P2MP_OUTINF'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P2MP_COMPLEMENTO'
        DataType = ftString
        Size = 20
      end>
    OnCalcFields = mem_cadp02_mpCalcFields
    OnFilterRecord = mem_cadp02_mpFilterRecord
    Left = 492
    Top = 231
    object mem_cadp02_mpP2MP_CODEMP: TFloatField
      FieldName = 'P2MP_CODEMP'
    end
    object mem_cadp02_mpP2MP_CHAVE: TFloatField
      FieldName = 'P2MP_CHAVE'
    end
    object mem_cadp02_mpP2MP_ITEM: TFloatField
      FieldName = 'P2MP_ITEM'
    end
    object mem_cadp02_mpP2MP_CODPRO: TFloatField
      FieldName = 'P2MP_CODPRO'
    end
    object mem_cadp02_mpP2MP_QTDSOL: TFloatField
      FieldName = 'P2MP_QTDSOL'
    end
    object mem_cadp02_mpP2MP_QTDDEVOL: TFloatField
      FieldName = 'P2MP_QTDDEVOL'
    end
    object mem_cadp02_mpP2MP_PRECO: TFloatField
      FieldName = 'P2MP_PRECO'
    end
    object mem_cadp02_mpTOTALBRU: TFloatField
      FieldName = 'TOTALBRU'
    end
    object mem_cadp02_mpP2MP_DATA_SOL: TDateTimeField
      FieldName = 'P2MP_DATA_SOL'
    end
    object mem_cadp02_mpP2MP_HORA_SOL: TStringField
      FieldName = 'P2MP_HORA_SOL'
      Size = 10
    end
    object mem_cadp02_mpP2MP_LOTSEQ: TFloatField
      FieldName = 'P2MP_LOTSEQ'
    end
    object mem_cadp02_mpMP_NOMPRO: TStringField
      FieldName = 'MP_NOMPRO'
      Size = 53
    end
    object mem_cadp02_mpMP_UNDPRO: TStringField
      FieldName = 'MP_UNDPRO'
      Size = 3
    end
    object mem_cadp02_mpMP_MARCA: TStringField
      FieldName = 'MP_MARCA'
    end
    object mem_cadp02_mpMPLOCAL: TIntegerField
      FieldName = 'MPLOCAL'
    end
    object mem_cadp02_mpP2MP_QTD_SOBRA: TFloatField
      FieldName = 'P2MP_QTD_SOBRA'
    end
    object mem_cadp02_mpP2MP_QTD_QUEBRA: TFloatField
      FieldName = 'P2MP_QTD_QUEBRA'
    end
    object mem_cadp02_mpP2MP_QTD_OUTRET: TFloatField
      FieldName = 'P2MP_QTD_OUTRET'
    end
    object mem_cadp02_mpP2MP_CODPRO_ORI: TFloatField
      FieldName = 'P2MP_CODPRO_ORI'
    end
    object mem_cadp02_mpP2MP_LOTE: TStringField
      FieldName = 'P2MP_LOTE'
    end
    object mem_cadp02_mpP2MP_LOTE_ORI: TStringField
      FieldName = 'P2MP_LOTE_ORI'
    end
    object mem_cadp02_mpP2MP_DTVCTO: TDateTimeField
      FieldName = 'P2MP_DTVCTO'
    end
    object mem_cadp02_mpP2MP_DTVCTO_ORI: TDateTimeField
      FieldName = 'P2MP_DTVCTO_ORI'
    end
    object mem_cadp02_mpP2MP_PCOCUS: TFloatField
      FieldName = 'P2MP_PCOCUS'
    end
    object mem_cadp02_mpP2MP_PCOCOMPRA: TFloatField
      FieldName = 'P2MP_PCOCOMPRA'
    end
    object mem_cadp02_mpP2MP_PRECO_ORI: TFloatField
      FieldName = 'P2MP_PRECO_ORI'
    end
    object mem_cadp02_mpP2MP_QTD_ORI: TFloatField
      FieldName = 'P2MP_QTD_ORI'
    end
    object mem_cadp02_mpP2MP_NOME2: TStringField
      FieldName = 'P2MP_NOME2'
      Size = 30
    end
    object mem_cadp02_mpP2MP_OUTINF: TStringField
      FieldName = 'P2MP_OUTINF'
      Size = 30
    end
    object mem_cadp02_mpoutras_saidas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'outras_saidas'
      Calculated = True
    end
    object mem_cadp02_mpP2MP_COMPLEMENTO_ORI: TStringField
      FieldName = 'P2MP_COMPLEMENTO_ORI'
    end
  end
  object src_cadp02_mp: TDataSource
    DataSet = mem_cadp02_mp
    Left = 614
    Top = 143
  end
  object popup_mp: TPopupMenu
    Left = 648
    Top = 304
    object ExcluirMP: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExcluirMPClick
    end
  end
  object pop_delpen: TPopupMenu
    Left = 639
    Top = 167
    object MenuItem1: TMenuItem
      Caption = 'Exluir Pendencia'
      OnClick = MenuItem1Click
    end
  end
  object mem_fatura_mp: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2MP_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTDSOL'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_DEVOL'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_SOBRA'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_QUEBRA'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_QTD_OUTRET'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_DATAHORA_SOL'
        DataType = ftDateTime
      end
      item
        Name = 'P2MP_LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2MP_DTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'P2MP_CODPRO_ORI'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_LOTE_ORI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2MP_DTVCTO_ORI'
        DataType = ftDateTime
      end
      item
        Name = 'P2MP_QTD_ORI'
        DataType = ftFloat
      end
      item
        Name = 'P2MP_COMPLEMENTO_ORI'
        DataType = ftString
        Size = 40
      end>
    Left = 454
    Top = 223
    object mem_fatura_mpP2MP_ITEM: TFloatField
      FieldName = 'P2MP_ITEM'
    end
    object mem_fatura_mpP2MP_CODPRO: TFloatField
      FieldName = 'P2MP_CODPRO'
    end
    object mem_fatura_mpP2MP_QTDSOL: TFloatField
      FieldName = 'P2MP_QTDSOL'
    end
    object mem_fatura_mpP2MP_QTD_DEVOL: TFloatField
      FieldName = 'P2MP_QTD_DEVOL'
    end
    object mem_fatura_mpP2MP_QTD_SOBRA: TFloatField
      FieldName = 'P2MP_QTD_SOBRA'
    end
    object mem_fatura_mpP2MP_QTD_QUEBRA: TFloatField
      FieldName = 'P2MP_QTD_QUEBRA'
    end
    object mem_fatura_mpP2MP_QTD_OUTRET: TFloatField
      FieldName = 'P2MP_QTD_OUTRET'
    end
    object mem_fatura_mpP2MP_PRECO: TFloatField
      FieldName = 'P2MP_PRECO'
    end
    object mem_fatura_mpP2MP_LOTE: TStringField
      FieldName = 'P2MP_LOTE'
    end
    object mem_fatura_mpP2MP_DATAHORA_SOL: TDateTimeField
      FieldName = 'P2MP_DATAHORA_SOL'
    end
    object mem_fatura_mpP2MP_CODPRO_ORI: TFloatField
      FieldName = 'P2MP_CODPRO_ORI'
    end
    object mem_fatura_mpP2MP_LOTE_ORI: TStringField
      FieldName = 'P2MP_LOTE_ORI'
    end
    object mem_fatura_mpP2MP_DTVCTO_ORI: TDateTimeField
      FieldName = 'P2MP_DTVCTO_ORI'
    end
    object mem_fatura_mpP2MP_QTD_ORI: TFloatField
      FieldName = 'P2MP_QTD_ORI'
    end
    object mem_fatura_mpP2MP_PRECO_ORI: TFloatField
      FieldName = 'P2MP_PRECO_ORI'
    end
    object mem_fatura_mpP2MP_DTVCTO: TDateTimeField
      FieldName = 'P2MP_DTVCTO'
    end
    object mem_fatura_mpP2MP_COMPLEMENTO_ORI: TStringField
      FieldName = 'P2MP_COMPLEMENTO_ORI'
      Size = 40
    end
  end
  object Qr_Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP01 where P1CHAVE is null')
    Left = 24
    Top = 404
    object Qr_Ped01P1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_Ped01P1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_Ped01P1CODV02: TFloatField
      FieldName = 'P1CODV02'
      Origin = 'SG_ASSOC.CADP01.P1CODV02'
    end
    object Qr_Ped01P1CODV03: TFloatField
      FieldName = 'P1CODV03'
      Origin = 'SG_ASSOC.CADP01.P1CODV03'
    end
    object Qr_Ped01P1BLQPRM: TFloatField
      FieldName = 'P1BLQPRM'
      Origin = 'SG_ASSOC.CADP01.P1BLQPRM'
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_Ped01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_Ped01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_Ped01P1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Qr_Ped01P1SUBSER: TStringField
      FieldName = 'P1SUBSER'
      Origin = 'SG_ASSOC.CADP01.P1SUBSER'
      Size = 3
    end
    object Qr_Ped01P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object Qr_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Qr_Ped01P1FORMACE: TFloatField
      FieldName = 'P1FORMACE'
      Origin = 'SG_ASSOC.CADP01.P1FORMACE'
    end
    object Qr_Ped01P1OBS1: TStringField
      FieldName = 'P1OBS1'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 120
    end
    object Qr_Ped01P1OBS2: TStringField
      FieldName = 'P1OBS2'
      Origin = 'SG_ASSOC.CADP01.P1OBS2'
      Size = 120
    end
    object Qr_Ped01P1OBS3: TStringField
      FieldName = 'P1OBS3'
      Origin = 'SG_ASSOC.CADP01.P1OBS3'
      Size = 120
    end
    object Qr_Ped01P1STATUS: TFloatField
      FieldName = 'P1STATUS'
      Origin = 'SG_ASSOC.CADP01.P1STATUS'
    end
    object Qr_Ped01P1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_Ped01P1PEDORI: TFloatField
      FieldName = 'P1PEDORI'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI'
    end
    object Qr_Ped01P1SITPED: TFloatField
      FieldName = 'P1SITPED'
      Origin = 'SG_ASSOC.CADP01.P1SITPED'
    end
    object Qr_Ped01P1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Ped01P1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_Ped01P1HORADIG: TStringField
      FieldName = 'P1HORADIG'
      Origin = 'SG_ASSOC.CADP01.P1HORADIG'
      Size = 10
    end
    object Qr_Ped01P1DTMOD: TDateTimeField
      FieldName = 'P1DTMOD'
      Origin = 'SG_ASSOC.CADP01.P1DTMOD'
    end
    object Qr_Ped01P1HRMOD: TStringField
      FieldName = 'P1HRMOD'
      Origin = 'SG_ASSOC.CADP01.P1HRMOD'
      Size = 10
    end
    object Qr_Ped01P1USRMOD: TFloatField
      FieldName = 'P1USRMOD'
      Origin = 'SG_ASSOC.CADP01.P1USRMOD'
    end
    object Qr_Ped01P1CONF: TStringField
      FieldName = 'P1CONF'
      Origin = 'SG_ASSOC.CADP01.P1CONF'
      Size = 1
    end
    object Qr_Ped01P1CODCON: TFloatField
      FieldName = 'P1CODCON'
      Origin = 'SG_ASSOC.CADP01.P1CODCON'
    end
    object Qr_Ped01P1DATCON: TDateTimeField
      FieldName = 'P1DATCON'
      Origin = 'SG_ASSOC.CADP01.P1DATCON'
    end
    object Qr_Ped01P1HORCON: TStringField
      FieldName = 'P1HORCON'
      Origin = 'SG_ASSOC.CADP01.P1HORCON'
      Size = 10
    end
    object Qr_Ped01P1TIPENT: TFloatField
      FieldName = 'P1TIPENT'
      Origin = 'SG_ASSOC.CADP01.P1TIPENT'
    end
    object Qr_Ped01P1PREVENT: TDateTimeField
      FieldName = 'P1PREVENT'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Qr_Ped01P1HPREVENT: TStringField
      FieldName = 'P1HPREVENT'
      Origin = 'SG_ASSOC.CADP01.P1HPREVENT'
      Size = 10
    end
    object Qr_Ped01P1CODENT: TFloatField
      FieldName = 'P1CODENT'
      Origin = 'SG_ASSOC.CADP01.P1CODENT'
    end
    object Qr_Ped01P1PRAZO: TFloatField
      FieldName = 'P1PRAZO'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO'
    end
    object Qr_Ped01P1DATENT: TDateTimeField
      FieldName = 'P1DATENT'
      Origin = 'SG_ASSOC.CADP01.P1DATENT'
    end
    object Qr_Ped01P1HORENT: TStringField
      FieldName = 'P1HORENT'
      Origin = 'SG_ASSOC.CADP01.P1HORENT'
      Size = 10
    end
    object Qr_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_Ped01P1CUPOM: TFloatField
      FieldName = 'P1CUPOM'
      Origin = 'SG_ASSOC.CADP01.P1CUPOM'
    end
    object Qr_Ped01P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Qr_Ped01P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Qr_Ped01P1REPAS: TFloatField
      FieldName = 'P1REPAS'
      Origin = 'SG_ASSOC.CADP01.P1REPAS'
    end
    object Qr_Ped01P1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Qr_Ped01P1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_Ped01P1BASENP: TFloatField
      FieldName = 'P1BASENP'
      Origin = 'SG_ASSOC.CADP01.P1BASENP'
    end
    object Qr_Ped01P1BASENN: TFloatField
      FieldName = 'P1BASENN'
      Origin = 'SG_ASSOC.CADP01.P1BASENN'
    end
    object Qr_Ped01P1BASENI: TFloatField
      FieldName = 'P1BASENI'
      Origin = 'SG_ASSOC.CADP01.P1BASENI'
    end
    object Qr_Ped01P1ICMSNP: TFloatField
      FieldName = 'P1ICMSNP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNP'
    end
    object Qr_Ped01P1ICMSNN: TFloatField
      FieldName = 'P1ICMSNN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNN'
    end
    object Qr_Ped01P1ICMSNI: TFloatField
      FieldName = 'P1ICMSNI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNI'
    end
    object Qr_Ped01P1BASERP: TFloatField
      FieldName = 'P1BASERP'
      Origin = 'SG_ASSOC.CADP01.P1BASERP'
    end
    object Qr_Ped01P1BASERN: TFloatField
      FieldName = 'P1BASERN'
      Origin = 'SG_ASSOC.CADP01.P1BASERN'
    end
    object Qr_Ped01P1BASERI: TFloatField
      FieldName = 'P1BASERI'
      Origin = 'SG_ASSOC.CADP01.P1BASERI'
    end
    object Qr_Ped01P1ICMSRP: TFloatField
      FieldName = 'P1ICMSRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRP'
    end
    object Qr_Ped01P1ICMSRN: TFloatField
      FieldName = 'P1ICMSRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRN'
    end
    object Qr_Ped01P1ICMSRI: TFloatField
      FieldName = 'P1ICMSRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSRI'
    end
    object Qr_Ped01P1BASENRI: TFloatField
      FieldName = 'P1BASENRI'
      Origin = 'SG_ASSOC.CADP01.P1BASENRI'
    end
    object Qr_Ped01P1ICMSNRI: TFloatField
      FieldName = 'P1ICMSNRI'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRI'
    end
    object Qr_Ped01P1BASENRP: TFloatField
      FieldName = 'P1BASENRP'
      Origin = 'SG_ASSOC.CADP01.P1BASENRP'
    end
    object Qr_Ped01P1ICMSNRP: TFloatField
      FieldName = 'P1ICMSNRP'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRP'
    end
    object Qr_Ped01P1BASENRN: TFloatField
      FieldName = 'P1BASENRN'
      Origin = 'SG_ASSOC.CADP01.P1BASENRN'
    end
    object Qr_Ped01P1ICMSNRN: TFloatField
      FieldName = 'P1ICMSNRN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSNRN'
    end
    object Qr_Ped01P1IPIINA: TFloatField
      FieldName = 'P1IPIINA'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_Ped01P1IPIPOS: TFloatField
      FieldName = 'P1IPIPOS'
      Origin = 'SG_ASSOC.CADP01.P1IPIPOS'
    end
    object Qr_Ped01P1IPINEG: TFloatField
      FieldName = 'P1IPINEG'
      Origin = 'SG_ASSOC.CADP01.P1IPINEG'
    end
    object Qr_Ped01P1TOTTRI: TFloatField
      FieldName = 'P1TOTTRI'
      Origin = 'SG_ASSOC.CADP01.P1TOTTRI'
    end
    object Qr_Ped01P1TOTRET: TFloatField
      FieldName = 'P1TOTRET'
      Origin = 'SG_ASSOC.CADP01.P1TOTRET'
    end
    object Qr_Ped01P1TOTISE: TFloatField
      FieldName = 'P1TOTISE'
      Origin = 'SG_ASSOC.CADP01.P1TOTISE'
    end
    object Qr_Ped01P1TOTOUT: TFloatField
      FieldName = 'P1TOTOUT'
      Origin = 'SG_ASSOC.CADP01.P1TOTOUT'
    end
    object Qr_Ped01P1TARBAN: TFloatField
      FieldName = 'P1TARBAN'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Qr_Ped01P1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Qr_Ped01P1TOTPOS: TFloatField
      FieldName = 'P1TOTPOS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPOS'
    end
    object Qr_Ped01P1TOTNEG: TFloatField
      FieldName = 'P1TOTNEG'
      Origin = 'SG_ASSOC.CADP01.P1TOTNEG'
    end
    object Qr_Ped01P1TOTINA: TFloatField
      FieldName = 'P1TOTINA'
      Origin = 'SG_ASSOC.CADP01.P1TOTINA'
    end
    object Qr_Ped01P1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Qr_Ped01P1TOTDI01: TFloatField
      FieldName = 'P1TOTDI01'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI01'
    end
    object Qr_Ped01P1TOTDI02: TFloatField
      FieldName = 'P1TOTDI02'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI02'
    end
    object Qr_Ped01P1TOTDI03: TFloatField
      FieldName = 'P1TOTDI03'
      Origin = 'SG_ASSOC.CADP01.P1TOTDI03'
    end
    object Qr_Ped01P1VALDES01: TFloatField
      FieldName = 'P1VALDES01'
      Origin = 'SG_ASSOC.CADP01.P1VALDES01'
    end
    object Qr_Ped01P1VALDES02: TFloatField
      FieldName = 'P1VALDES02'
      Origin = 'SG_ASSOC.CADP01.P1VALDES02'
    end
    object Qr_Ped01P1TOTDIVL: TFloatField
      FieldName = 'P1TOTDIVL'
      Origin = 'SG_ASSOC.CADP01.P1TOTDIVL'
    end
    object Qr_Ped01P1TOTUCPR: TFloatField
      FieldName = 'P1TOTUCPR'
      Origin = 'SG_ASSOC.CADP01.P1TOTUCPR'
    end
    object Qr_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Qr_Ped01P1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Qr_Ped01P1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Qr_Ped01P1PAVDES: TFloatField
      FieldName = 'P1PAVDES'
      Origin = 'SG_ASSOC.CADP01.P1PAVDES'
    end
    object Qr_Ped01P1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
      Origin = 'SG_ASSOC.CADP01.P1CODTRA'
    end
    object Qr_Ped01P1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_Ped01P1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_Ped01P1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_Ped01P1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_Ped01P1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_Ped01P1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Qr_Ped01P1CODSER: TFloatField
      FieldName = 'P1CODSER'
      Origin = 'SG_ASSOC.CADP01.P1CODSER'
    end
    object Qr_Ped01P1CODLDR: TFloatField
      FieldName = 'P1CODLDR'
      Origin = 'SG_ASSOC.CADP01.P1CODLDR'
    end
    object Qr_Ped01P1PCOMIS: TFloatField
      FieldName = 'P1PCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PCOMIS'
    end
    object Qr_Ped01P1CODCV: TFloatField
      FieldName = 'P1CODCV'
      Origin = 'SG_ASSOC.CADP01.P1CODCV'
    end
    object Qr_Ped01P1LOTEDM: TFloatField
      FieldName = 'P1LOTEDM'
      Origin = 'SG_ASSOC.CADP01.P1LOTEDM'
    end
    object Qr_Ped01P1MINUTA: TFloatField
      FieldName = 'P1MINUTA'
      Origin = 'SG_ASSOC.CADP01.P1MINUTA'
    end
    object Qr_Ped01P1COMIS: TFloatField
      FieldName = 'P1COMIS'
      Origin = 'SG_ASSOC.CADP01.P1COMIS'
    end
    object Qr_Ped01P1COMV02: TFloatField
      FieldName = 'P1COMV02'
      Origin = 'SG_ASSOC.CADP01.P1COMV02'
    end
    object Qr_Ped01P1COMV03: TFloatField
      FieldName = 'P1COMV03'
      Origin = 'SG_ASSOC.CADP01.P1COMV03'
    end
    object Qr_Ped01P1COMIST: TFloatField
      FieldName = 'P1COMIST'
      Origin = 'SG_ASSOC.CADP01.P1COMIST'
    end
    object Qr_Ped01P1COMISS: TFloatField
      FieldName = 'P1COMISS'
      Origin = 'SG_ASSOC.CADP01.P1COMISS'
    end
    object Qr_Ped01P1ORIGEM: TFloatField
      FieldName = 'P1ORIGEM'
      Origin = 'SG_ASSOC.CADP01.P1ORIGEM'
    end
    object Qr_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_Ped01P1CODTLV: TFloatField
      FieldName = 'P1CODTLV'
      Origin = 'SG_ASSOC.CADP01.P1CODTLV'
    end
    object Qr_Ped01P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object Qr_Ped01P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object Qr_Ped01P1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_Ped01P1CODSEP: TFloatField
      FieldName = 'P1CODSEP'
      Origin = 'SG_ASSOC.CADP01.P1CODSEP'
    end
    object Qr_Ped01P1DATASEP: TDateTimeField
      FieldName = 'P1DATASEP'
      Origin = 'SG_ASSOC.CADP01.P1DATASEP'
    end
    object Qr_Ped01P1HORSEP: TStringField
      FieldName = 'P1HORSEP'
      Origin = 'SG_ASSOC.CADP01.P1HORSEP'
      Size = 10
    end
    object Qr_Ped01P1CODEMB: TFloatField
      FieldName = 'P1CODEMB'
      Origin = 'SG_ASSOC.CADP01.P1CODEMB'
    end
    object Qr_Ped01P1DATAEMB: TDateTimeField
      FieldName = 'P1DATAEMB'
      Origin = 'SG_ASSOC.CADP01.P1DATAEMB'
    end
    object Qr_Ped01P1HOREMB: TStringField
      FieldName = 'P1HOREMB'
      Origin = 'SG_ASSOC.CADP01.P1HOREMB'
      Size = 10
    end
    object Qr_Ped01P1NUMCF: TFloatField
      FieldName = 'P1NUMCF'
      Origin = 'SG_ASSOC.CADP01.P1NUMCF'
    end
    object Qr_Ped01P1CODECF: TFloatField
      FieldName = 'P1CODECF'
      Origin = 'SG_ASSOC.CADP01.P1CODECF'
    end
    object Qr_Ped01P1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Qr_Ped01P1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Qr_Ped01P1SEMCOM: TFloatField
      FieldName = 'P1SEMCOM'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOM'
    end
    object Qr_Ped01P1DESCFIN: TFloatField
      FieldName = 'P1DESCFIN'
      Origin = 'SG_ASSOC.CADP01.P1DESCFIN'
    end
    object Qr_Ped01P1LOTCV: TFloatField
      FieldName = 'P1LOTCV'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV'
    end
    object Qr_Ped01P1LOTCV02: TFloatField
      FieldName = 'P1LOTCV02'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV02'
    end
    object Qr_Ped01P1LOTCV03: TFloatField
      FieldName = 'P1LOTCV03'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV03'
    end
    object Qr_Ped01P1LOTCS: TFloatField
      FieldName = 'P1LOTCS'
      Origin = 'SG_ASSOC.CADP01.P1LOTCS'
    end
    object Qr_Ped01P1LOTCT: TFloatField
      FieldName = 'P1LOTCT'
      Origin = 'SG_ASSOC.CADP01.P1LOTCT'
    end
    object Qr_Ped01P1PVTC: TFloatField
      FieldName = 'P1PVTC'
      Origin = 'SG_ASSOC.CADP01.P1PVTC'
    end
    object Qr_Ped01P1PVCOM: TFloatField
      FieldName = 'P1PVCOM'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM'
    end
    object Qr_Ped01P1PVCOM02: TFloatField
      FieldName = 'P1PVCOM02'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM02'
    end
    object Qr_Ped01P1PVCOM03: TFloatField
      FieldName = 'P1PVCOM03'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM03'
    end
    object Qr_Ped01P1PVACTD: TFloatField
      FieldName = 'P1PVACTD'
      Origin = 'SG_ASSOC.CADP01.P1PVACTD'
    end
    object Qr_Ped01P1PVACT00: TFloatField
      FieldName = 'P1PVACT00'
      Origin = 'SG_ASSOC.CADP01.P1PVACT00'
    end
    object Qr_Ped01P1PVACT01: TFloatField
      FieldName = 'P1PVACT01'
      Origin = 'SG_ASSOC.CADP01.P1PVACT01'
    end
    object Qr_Ped01P1PVACT99: TFloatField
      FieldName = 'P1PVACT99'
      Origin = 'SG_ASSOC.CADP01.P1PVACT99'
    end
    object Qr_Ped01P1PVTDC: TFloatField
      FieldName = 'P1PVTDC'
      Origin = 'SG_ASSOC.CADP01.P1PVTDC'
    end
    object Qr_Ped01P1PVDES: TFloatField
      FieldName = 'P1PVDES'
      Origin = 'SG_ASSOC.CADP01.P1PVDES'
    end
    object Qr_Ped01P1PVTPD1: TFloatField
      FieldName = 'P1PVTPD1'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD1'
    end
    object Qr_Ped01P1PVDES1: TFloatField
      FieldName = 'P1PVDES1'
      Origin = 'SG_ASSOC.CADP01.P1PVDES1'
    end
    object Qr_Ped01P1PVTPD2: TFloatField
      FieldName = 'P1PVTPD2'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD2'
    end
    object Qr_Ped01P1PVDES2: TFloatField
      FieldName = 'P1PVDES2'
      Origin = 'SG_ASSOC.CADP01.P1PVDES2'
    end
    object Qr_Ped01P1PVTPD3: TFloatField
      FieldName = 'P1PVTPD3'
      Origin = 'SG_ASSOC.CADP01.P1PVTPD3'
    end
    object Qr_Ped01P1PVDES3: TFloatField
      FieldName = 'P1PVDES3'
      Origin = 'SG_ASSOC.CADP01.P1PVDES3'
    end
    object Qr_Ped01P1PVTPDESF: TFloatField
      FieldName = 'P1PVTPDESF'
      Origin = 'SG_ASSOC.CADP01.P1PVTPDESF'
    end
    object Qr_Ped01P1PVDESCF: TFloatField
      FieldName = 'P1PVDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDESCF'
    end
    object Qr_Ped01P1PVDIASDESCF: TFloatField
      FieldName = 'P1PVDIASDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDIASDESCF'
    end
    object Qr_Ped01P1PVDDESCF: TFloatField
      FieldName = 'P1PVDDESCF'
      Origin = 'SG_ASSOC.CADP01.P1PVDDESCF'
    end
    object Qr_Ped01P1TPP: TFloatField
      FieldName = 'P1TPP'
      Origin = 'SG_ASSOC.CADP01.P1TPP'
    end
    object Qr_Ped01P1SITAC: TFloatField
      FieldName = 'P1SITAC'
      Origin = 'SG_ASSOC.CADP01.P1SITAC'
    end
    object Qr_Ped01P1SITCPR: TFloatField
      FieldName = 'P1SITCPR'
      Origin = 'SG_ASSOC.CADP01.P1SITCPR'
    end
    object Qr_Ped01P1VLRACRE: TFloatField
      FieldName = 'P1VLRACRE'
      Origin = 'SG_ASSOC.CADP01.P1VLRACRE'
    end
    object Qr_Ped01P1PEDORI1: TStringField
      FieldName = 'P1PEDORI1'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI1'
      Size = 60
    end
    object Qr_Ped01P1PEDORI2: TStringField
      FieldName = 'P1PEDORI2'
      Origin = 'SG_ASSOC.CADP01.P1PEDORI2'
      Size = 60
    end
    object Qr_Ped01P1MOTIVO: TStringField
      FieldName = 'P1MOTIVO'
      Origin = 'SG_ASSOC.CADP01.P1MOTIVO'
      Size = 60
    end
    object Qr_Ped01P1NUMVIS: TStringField
      FieldName = 'P1NUMVIS'
      Origin = 'SG_ASSOC.CADP01.P1NUMVIS'
    end
    object Qr_Ped01P1DATVIS: TDateTimeField
      FieldName = 'P1DATVIS'
      Origin = 'SG_ASSOC.CADP01.P1DATVIS'
    end
    object Qr_Ped01P1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
      Origin = 'SG_ASSOC.CADP01.P1DATDOC'
    end
    object Qr_Ped01P1EMIDOC: TFloatField
      FieldName = 'P1EMIDOC'
      Origin = 'SG_ASSOC.CADP01.P1EMIDOC'
    end
    object Qr_Ped01P1ACRECONV: TFloatField
      FieldName = 'P1ACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1ACRECONV'
    end
    object Qr_Ped01P1ACREGER: TFloatField
      FieldName = 'P1ACREGER'
      Origin = 'SG_ASSOC.CADP01.P1ACREGER'
    end
    object Qr_Ped01P1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Qr_Ped01P1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Qr_Ped01P1CODDEP: TFloatField
      FieldName = 'P1CODDEP'
      Origin = 'SG_ASSOC.CADP01.P1CODDEP'
    end
    object Qr_Ped01P1NAUT: TStringField
      FieldName = 'P1NAUT'
      Origin = 'SG_ASSOC.CADP01.P1NAUT'
      Size = 40
    end
    object Qr_Ped01P1CFO1: TStringField
      FieldName = 'P1CFO1'
      Origin = 'SG_ASSOC.CADP01.P1CFO1'
      Size = 4
    end
    object Qr_Ped01P1CFO2: TStringField
      FieldName = 'P1CFO2'
      Origin = 'SG_ASSOC.CADP01.P1CFO2'
      Size = 4
    end
    object Qr_Ped01P1CFOSER: TStringField
      FieldName = 'P1CFOSER'
      Origin = 'SG_ASSOC.CADP01.P1CFOSER'
      Size = 4
    end
    object Qr_Ped01P1PDESCLIB: TFloatField
      FieldName = 'P1PDESCLIB'
      Origin = 'SG_ASSOC.CADP01.P1PDESCLIB'
    end
    object Qr_Ped01P1PDESCL_USR: TFloatField
      FieldName = 'P1PDESCL_USR'
      Origin = 'SG_ASSOC.CADP01.P1PDESCL_USR'
    end
    object Qr_Ped01P1PROCESSO: TStringField
      FieldName = 'P1PROCESSO'
      Origin = 'SG_ASSOC.CADP01.P1PROCESSO'
      Size = 15
    end
    object Qr_Ped01P1CUPACRE: TFloatField
      FieldName = 'P1CUPACRE'
      Origin = 'SG_ASSOC.CADP01.P1CUPACRE'
    end
    object Qr_Ped01P1CUPDES: TFloatField
      FieldName = 'P1CUPDES'
      Origin = 'SG_ASSOC.CADP01.P1CUPDES'
    end
    object Qr_Ped01P1LEMAT: TFloatField
      FieldName = 'P1LEMAT'
      Origin = 'SG_ASSOC.CADP01.P1LEMAT'
    end
    object Qr_Ped01P1DTACERTO: TDateTimeField
      FieldName = 'P1DTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1DTACERTO'
    end
    object Qr_Ped01P1LTACERTO: TFloatField
      FieldName = 'P1LTACERTO'
      Origin = 'SG_ASSOC.CADP01.P1LTACERTO'
    end
    object Qr_Ped01P1CODASSE: TFloatField
      FieldName = 'P1CODASSE'
      Origin = 'SG_ASSOC.CADP01.P1CODASSE'
    end
    object Qr_Ped01P1COMASSE: TFloatField
      FieldName = 'P1COMASSE'
      Origin = 'SG_ASSOC.CADP01.P1COMASSE'
    end
    object Qr_Ped01P1LOTCASSE: TFloatField
      FieldName = 'P1LOTCASSE'
      Origin = 'SG_ASSOC.CADP01.P1LOTCASSE'
    end
    object Qr_Ped01P1QTDMAN: TFloatField
      FieldName = 'P1QTDMAN'
      Origin = 'SG_ASSOC.CADP01.P1QTDMAN'
    end
    object Qr_Ped01P1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Qr_Ped01P1CODV04: TFloatField
      FieldName = 'P1CODV04'
      Origin = 'SG_ASSOC.CADP01.P1CODV04'
    end
    object Qr_Ped01P1PROMOCAO: TStringField
      FieldName = 'P1PROMOCAO'
      Origin = 'SG_ASSOC.CADP01.P1PROMOCAO'
      Size = 10
    end
    object Qr_Ped01P1CANHOTO: TFloatField
      FieldName = 'P1CANHOTO'
      Origin = 'SG_ASSOC.CADP01.P1CANHOTO'
    end
    object Qr_Ped01P1ICMS_BCFRE: TFloatField
      FieldName = 'P1ICMS_BCFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCFRE'
    end
    object Qr_Ped01P1ICMS_ALFRE: TFloatField
      FieldName = 'P1ICMS_ALFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALFRE'
    end
    object Qr_Ped01P1ICMS_VLFRE: TFloatField
      FieldName = 'P1ICMS_VLFRE'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLFRE'
    end
    object Qr_Ped01P1ICMS_BCSEG: TFloatField
      FieldName = 'P1ICMS_BCSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCSEG'
    end
    object Qr_Ped01P1ICMS_ALSEG: TFloatField
      FieldName = 'P1ICMS_ALSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALSEG'
    end
    object Qr_Ped01P1ICMS_VLSEG: TFloatField
      FieldName = 'P1ICMS_VLSEG'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLSEG'
    end
    object Qr_Ped01P1ICMS_BCOUTD: TFloatField
      FieldName = 'P1ICMS_BCOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCOUTD'
    end
    object Qr_Ped01P1ICMS_ALOUTD: TFloatField
      FieldName = 'P1ICMS_ALOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALOUTD'
    end
    object Qr_Ped01P1ICMS_VLOUTD: TFloatField
      FieldName = 'P1ICMS_VLOUTD'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLOUTD'
    end
    object Qr_Ped01P1ICMS_BCIPI: TFloatField
      FieldName = 'P1ICMS_BCIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_BCIPI'
    end
    object Qr_Ped01P1ICMS_ALIPI: TFloatField
      FieldName = 'P1ICMS_ALIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_ALIPI'
    end
    object Qr_Ped01P1ICMS_VLIPI: TFloatField
      FieldName = 'P1ICMS_VLIPI'
      Origin = 'SG_ASSOC.CADP01.P1ICMS_VLIPI'
    end
    object Qr_Ped01P1ALIQDEB: TFloatField
      FieldName = 'P1ALIQDEB'
      Origin = 'SG_ASSOC.CADP01.P1ALIQDEB'
    end
    object Qr_Ped01P1COMV04: TFloatField
      FieldName = 'P1COMV04'
      Origin = 'SG_ASSOC.CADP01.P1COMV04'
    end
    object Qr_Ped01P1LOTCV04: TFloatField
      FieldName = 'P1LOTCV04'
      Origin = 'SG_ASSOC.CADP01.P1LOTCV04'
    end
    object Qr_Ped01P1PVCOM04: TFloatField
      FieldName = 'P1PVCOM04'
      Origin = 'SG_ASSOC.CADP01.P1PVCOM04'
    end
    object Qr_Ped01P1TOTCGRU: TFloatField
      FieldName = 'P1TOTCGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTCGRU'
    end
    object Qr_Ped01P1TOTSGRU: TFloatField
      FieldName = 'P1TOTSGRU'
      Origin = 'SG_ASSOC.CADP01.P1TOTSGRU'
    end
    object Qr_Ped01P1CODPRIOR: TFloatField
      FieldName = 'P1CODPRIOR'
      Origin = 'SG_ASSOC.CADP01.P1CODPRIOR'
    end
    object Qr_Ped01P1DTHRCHEG: TDateTimeField
      FieldName = 'P1DTHRCHEG'
      Origin = 'SG_ASSOC.CADP01.P1DTHRCHEG'
    end
    object Qr_Ped01P1CODBLOQ: TStringField
      FieldName = 'P1CODBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ'
      Size = 30
    end
    object Qr_Ped01P1CODUSR_LBLOQ: TFloatField
      FieldName = 'P1CODUSR_LBLOQ'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_LBLOQ'
    end
    object Qr_Ped01P1TOTSERLIQ: TFloatField
      FieldName = 'P1TOTSERLIQ'
      Origin = 'SG_ASSOC.CADP01.P1TOTSERLIQ'
    end
    object Qr_Ped01P1VALENT: TFloatField
      FieldName = 'P1VALENT'
      Origin = 'SG_ASSOC.CADP01.P1VALENT'
    end
    object Qr_Ped01P1PRAZO_ENT: TFloatField
      FieldName = 'P1PRAZO_ENT'
      Origin = 'SG_ASSOC.CADP01.P1PRAZO_ENT'
    end
    object Qr_Ped01P1QTDM3: TFloatField
      FieldName = 'P1QTDM3'
      Origin = 'SG_ASSOC.CADP01.P1QTDM3'
    end
    object Qr_Ped01P1VFRE_CUSENT: TFloatField
      FieldName = 'P1VFRE_CUSENT'
      Origin = 'SG_ASSOC.CADP01.P1VFRE_CUSENT'
    end
    object Qr_Ped01P1COMIS_EXTRA: TFloatField
      FieldName = 'P1COMIS_EXTRA'
      Origin = 'SG_ASSOC.CADP01.P1COMIS_EXTRA'
    end
    object Qr_Ped01P1SEPAMB: TFloatField
      FieldName = 'P1SEPAMB'
      Origin = 'SG_ASSOC.CADP01.P1SEPAMB'
    end
    object Qr_Ped01P1LOCAL: TFloatField
      FieldName = 'P1LOCAL'
      Origin = 'SG_ASSOC.CADP01.P1LOCAL'
    end
    object Qr_Ped01P1TIPO_ENTSAI: TFloatField
      FieldName = 'P1TIPO_ENTSAI'
      Origin = 'SG_ASSOC.CADP01.P1TIPO_ENTSAI'
    end
    object Qr_Ped01P1TOTPROM: TFloatField
      FieldName = 'P1TOTPROM'
      Origin = 'SG_ASSOC.CADP01.P1TOTPROM'
    end
    object Qr_Ped01P1NOMEREC: TStringField
      FieldName = 'P1NOMEREC'
      Origin = 'SG_ASSOC.CADP01.P1NOMEREC'
      Size = 40
    end
    object Qr_Ped01P1DATHORREC: TDateTimeField
      FieldName = 'P1DATHORREC'
      Origin = 'SG_ASSOC.CADP01.P1DATHORREC'
    end
    object Qr_Ped01P1TOTPIS: TFloatField
      FieldName = 'P1TOTPIS'
      Origin = 'SG_ASSOC.CADP01.P1TOTPIS'
    end
    object Qr_Ped01P1TOTCOFINS: TFloatField
      FieldName = 'P1TOTCOFINS'
      Origin = 'SG_ASSOC.CADP01.P1TOTCOFINS'
    end
    object Qr_Ped01P1INCTB: TFloatField
      FieldName = 'P1INCTB'
      Origin = 'SG_ASSOC.CADP01.P1INCTB'
    end
    object Qr_Ped01P1RED_BCISSQN: TFloatField
      FieldName = 'P1RED_BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCISSQN'
    end
    object Qr_Ped01P1BCINSS: TFloatField
      FieldName = 'P1BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1BCINSS'
    end
    object Qr_Ped01P1RED_BCINSS: TFloatField
      FieldName = 'P1RED_BCINSS'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCINSS'
    end
    object Qr_Ped01P1VINSS: TFloatField
      FieldName = 'P1VINSS'
      Origin = 'SG_ASSOC.CADP01.P1VINSS'
    end
    object Qr_Ped01P1BCIRRF: TFloatField
      FieldName = 'P1BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1BCIRRF'
    end
    object Qr_Ped01P1RED_BCIRRF: TFloatField
      FieldName = 'P1RED_BCIRRF'
      Origin = 'SG_ASSOC.CADP01.P1RED_BCIRRF'
    end
    object Qr_Ped01P1VIRRF: TFloatField
      FieldName = 'P1VIRRF'
      Origin = 'SG_ASSOC.CADP01.P1VIRRF'
    end
    object Qr_Ped01P1ECF_SERIE: TStringField
      FieldName = 'P1ECF_SERIE'
      Origin = 'SG_ASSOC.CADP01.P1ECF_SERIE'
    end
    object Qr_Ped01P1CX_CODCAI: TFloatField
      FieldName = 'P1CX_CODCAI'
      Origin = 'SG_ASSOC.CADP01.P1CX_CODCAI'
    end
    object Qr_Ped01P1CX_LOTMOV: TFloatField
      FieldName = 'P1CX_LOTMOV'
      Origin = 'SG_ASSOC.CADP01.P1CX_LOTMOV'
    end
    object Qr_Ped01P1PZOLIB: TFloatField
      FieldName = 'P1PZOLIB'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB'
    end
    object Qr_Ped01P1PZOLIB_USR: TFloatField
      FieldName = 'P1PZOLIB_USR'
      Origin = 'SG_ASSOC.CADP01.P1PZOLIB_USR'
    end
    object Qr_Ped01P1CODBLOQ_LIB: TStringField
      FieldName = 'P1CODBLOQ_LIB'
      Origin = 'SG_ASSOC.CADP01.P1CODBLOQ_LIB'
      Size = 30
    end
    object Qr_Ped01P1BLOQPEND: TFloatField
      FieldName = 'P1BLOQPEND'
      Origin = 'SG_ASSOC.CADP01.P1BLOQPEND'
    end
    object Qr_Ped01P1DUP_PROD: TFloatField
      FieldName = 'P1DUP_PROD'
      Origin = 'SG_ASSOC.CADP01.P1DUP_PROD'
    end
    object Qr_Ped01P1DUP_SERV: TFloatField
      FieldName = 'P1DUP_SERV'
      Origin = 'SG_ASSOC.CADP01.P1DUP_SERV'
    end
    object Qr_Ped01P1EMITENTE: TStringField
      FieldName = 'P1EMITENTE'
      Origin = 'SG_ASSOC.CADP01.P1EMITENTE'
      Size = 1
    end
    object Qr_Ped01P1PVACREDESREG: TFloatField
      FieldName = 'P1PVACREDESREG'
      Origin = 'SG_ASSOC.CADP01.P1PVACREDESREG'
    end
    object Qr_Ped01P1PVAJCOMIS: TFloatField
      FieldName = 'P1PVAJCOMIS'
      Origin = 'SG_ASSOC.CADP01.P1PVAJCOMIS'
    end
    object Qr_Ped01P1NFE_ENVXML: TFloatField
      FieldName = 'P1NFE_ENVXML'
      Origin = 'SG_ASSOC.CADP01.P1NFE_ENVXML'
    end
    object Qr_Ped01P1CHAVE_NIVEL: TFloatField
      FieldName = 'P1CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE_NIVEL'
    end
    object Qr_Ped01P1DATHOR_ULTEVE: TDateTimeField
      FieldName = 'P1DATHOR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_ULTEVE'
    end
    object Qr_Ped01P1CODUSR_ULTEVE: TFloatField
      FieldName = 'P1CODUSR_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR_ULTEVE'
    end
    object Qr_Ped01P1COMP_ULTEVE: TStringField
      FieldName = 'P1COMP_ULTEVE'
      Origin = 'SG_ASSOC.CADP01.P1COMP_ULTEVE'
      Size = 30
    end
    object Qr_Ped01P1TPEMIS: TFloatField
      FieldName = 'P1TPEMIS'
      Origin = 'SG_ASSOC.CADP01.P1TPEMIS'
    end
    object Qr_Ped01P1QTDDECPU: TFloatField
      FieldName = 'P1QTDDECPU'
      Origin = 'SG_ASSOC.CADP01.P1QTDDECPU'
    end
    object Qr_Ped01P1DATHOR_REP: TDateTimeField
      FieldName = 'P1DATHOR_REP'
      Origin = 'SG_ASSOC.CADP01.P1DATHOR_REP'
    end
    object Qr_Ped01P1TOTEXTCOM: TFloatField
      FieldName = 'P1TOTEXTCOM'
      Origin = 'SG_ASSOC.CADP01.P1TOTEXTCOM'
    end
    object Qr_Ped01SUBMOD: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SUBMOD'
      Calculated = True
    end
    object Qr_Ped01P1ANALISE: TFloatField
      FieldName = 'P1ANALISE'
      Origin = 'SG_ASSOC.CADP01.P1ANALISE'
    end
    object Qr_Ped01P1ACRESCIMO: TFloatField
      FieldName = 'P1ACRESCIMO'
      Origin = 'SG_ASSOC.CADP01.P1ACRESCIMO'
    end
    object Qr_Ped01P1SEMCOMP: TStringField
      FieldName = 'P1SEMCOMP'
      Origin = 'SG_ASSOC.CADP01.P1SEMCOMP'
    end
  end
  object timer_obs: TTimer
    Enabled = False
    Interval = 100
    OnTimer = timer_obsTimer
    Left = 540
    Top = 184
  end
  object Qr_EncCab: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM ENCVOENCCAB')
    Left = 286
    Top = 115
    object Qr_EncCabENC_CODEMP: TFloatField
      FieldName = 'ENC_CODEMP'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_CODEMP'
    end
    object Qr_EncCabENC_CODCLI: TFloatField
      FieldName = 'ENC_CODCLI'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_CODCLI'
    end
    object Qr_EncCabENC_TOTENT: TFloatField
      FieldName = 'ENC_TOTENT'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_TOTENT'
    end
    object Qr_EncCabENC_TOTENC: TFloatField
      FieldName = 'ENC_TOTENC'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_TOTENC'
    end
    object Qr_EncCabENC_DATPED: TDateTimeField
      FieldName = 'ENC_DATPED'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_DATPED'
    end
    object Qr_EncCabENC_DATENT: TDateTimeField
      FieldName = 'ENC_DATENT'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_DATENT'
    end
    object Qr_EncCabENC_HORENT: TStringField
      FieldName = 'ENC_HORENT'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_HORENT'
      Size = 8
    end
    object Qr_EncCabENC_NOMCLI: TStringField
      FieldName = 'ENC_NOMCLI'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_NOMCLI'
      Size = 60
    end
    object Qr_EncCabENC_ENDERCLI: TStringField
      FieldName = 'ENC_ENDERCLI'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_ENDERCLI'
      Size = 60
    end
    object Qr_EncCabENC_BAIRROCLI: TStringField
      FieldName = 'ENC_BAIRROCLI'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_BAIRROCLI'
      Size = 60
    end
    object Qr_EncCabENC_NOMLOC: TStringField
      FieldName = 'ENC_NOMLOC'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_NOMLOC'
      Size = 60
    end
    object Qr_EncCabENC_UF: TStringField
      FieldName = 'ENC_UF'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_UF'
      Size = 2
    end
    object Qr_EncCabENC_DATINC: TDateTimeField
      FieldName = 'ENC_DATINC'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_DATINC'
    end
    object Qr_EncCabENC_USRINC: TFloatField
      FieldName = 'ENC_USRINC'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_USRINC'
    end
    object Qr_EncCabENC_DATALT: TDateTimeField
      FieldName = 'ENC_DATALT'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_DATALT'
    end
    object Qr_EncCabENC_USRALT: TFloatField
      FieldName = 'ENC_USRALT'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_USRALT'
    end
    object Qr_EncCabENC_CHAVE: TFloatField
      FieldName = 'ENC_CHAVE'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_CHAVE'
    end
    object Qr_EncCabENC_STATUS: TFloatField
      FieldName = 'ENC_STATUS'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_STATUS'
    end
    object Qr_EncCabENC_CODTRA: TFloatField
      FieldName = 'ENC_CODTRA'
      Origin = 'SG_ASSOC.ENCVOENCCAB.ENC_CODTRA'
    end
  end
  object Qr_EncDet: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM ENCVOENCDET')
    Left = 278
    Top = 155
    object Qr_EncDetENCD_CODEMP: TFloatField
      FieldName = 'ENCD_CODEMP'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_CODEMP'
    end
    object Qr_EncDetENCD_CHAVE: TFloatField
      FieldName = 'ENCD_CHAVE'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_CHAVE'
    end
    object Qr_EncDetENCD_CODPRO: TFloatField
      FieldName = 'ENCD_CODPRO'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_CODPRO'
    end
    object Qr_EncDetENCD_NOME: TStringField
      FieldName = 'ENCD_NOME'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_NOME'
      Size = 60
    end
    object Qr_EncDetENCD_QUANTIDADE: TFloatField
      FieldName = 'ENCD_QUANTIDADE'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_QUANTIDADE'
    end
    object Qr_EncDetENCD_PCOUNI: TFloatField
      FieldName = 'ENCD_PCOUNI'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_PCOUNI'
    end
    object Qr_EncDetENCD_TOTAL: TFloatField
      FieldName = 'ENCD_TOTAL'
      Origin = 'SG_ASSOC.ENCVOENCDET.ENCD_TOTAL'
    end
  end
  object cdsAddExtra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterEdit = cdsAddExtraAfterEdit
    AfterPost = cdsAddExtraAfterPost
    BeforeDelete = cdsAddExtraBeforeDelete
    Left = 662
    Top = 67
    Data = {
      4B0000009619E0BD0100000018000000020000000000030000004B000A444553
      434144444558540100490000000100055749445448020002003C000956414C41
      444445585408000400000000000000}
    object cdsAddExtraDESCADDEXT: TStringField
      FieldName = 'DESCADDEXT'
      Size = 60
    end
    object cdsAddExtraVALADDEXT: TFloatField
      FieldName = 'VALADDEXT'
      DisplayFormat = '#,##0.00'
    end
  end
  object srcAddExtra: TDataSource
    DataSet = cdsAddExtra
    Left = 454
    Top = 155
  end
  object ppAddExtra: TPopupMenu
    Left = 350
    Top = 91
    object Alterar1: TMenuItem
      Caption = '&Alterar'
      OnClick = Alterar1Click
    end
    object Excluir1: TMenuItem
      Caption = '&Excluir'
      OnClick = Excluir1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = QryItem_Nota
    Left = 36
    Top = 318
  end
  object Qr_P01_ADDEXT: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 422
    Top = 155
  end
end
