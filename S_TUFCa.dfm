object Frm_TUFCa: TFrm_TUFCa
  Left = 86
  Top = 35
  Width = 709
  Height = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 260
    Align = alTop
    Caption = '1'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 41
      Height = 13
      Caption = 'Linha....:'
    end
    object Label2: TLabel
      Left = 147
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Coluna...:'
    end
    object Label3: TLabel
      Left = 176
      Top = 63
      Width = 54
      Height = 13
      Caption = 'Campo......:'
    end
    object Label4: TLabel
      Left = 176
      Top = 90
      Width = 55
      Height = 13
      Caption = 'Mensagem:'
    end
    object Label6: TLabel
      Left = 10
      Top = 212
      Width = 103
      Height = 13
      Caption = 'Condicao: Se Campo:'
    end
    object Label7: TLabel
      Left = 248
      Top = 214
      Width = 15
      Height = 13
      Caption = 'For'
    end
    object Label8: TLabel
      Left = 384
      Top = 212
      Width = 29
      Height = 13
      Caption = 'a/que'
    end
    object Label9: TLabel
      Left = 177
      Top = 110
      Width = 55
      Height = 13
      Caption = 'Sistema.....:'
    end
    object Label10: TLabel
      Left = 178
      Top = 129
      Width = 55
      Height = 13
      Caption = 'Caractere..:'
    end
    object Label11: TLabel
      Left = 280
      Top = 128
      Width = 135
      Height = 13
      Caption = 'Digitar Somente um Caracter'
    end
    object Label12: TLabel
      Left = 217
      Top = 152
      Width = 116
      Height = 13
      Caption = 'Tamanho/Qdt.Caracter.:'
    end
    object Label5: TLabel
      Left = 408
      Top = 152
      Width = 50
      Height = 13
      Caption = 'Formato...:'
    end
    object Label13: TLabel
      Left = 95
      Top = 9
      Width = 38
      Height = 13
      Caption = 'Label13'
    end
    object RGFONTE: TRadioGroup
      Left = 287
      Top = 2
      Width = 229
      Height = 55
      Caption = 'Fonte:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '1&0cpp Normal'
        '1&2cpp '
        '1&7cpp'
        '2&0cpp'
        '&Negrito'
        '&Expandido')
      TabOrder = 2
    end
    object RGTREG: TRadioGroup
      Left = 13
      Top = 56
      Width = 145
      Height = 88
      Caption = 'Tipo do Registro:'
      ItemIndex = 0
      Items.Strings = (
        '&Campo'
        '&Mensagens'
        '&Sistema'
        '&Repetir Caractere')
      TabOrder = 3
      OnClick = RGTREGClick
      OnExit = RGTREGExit
    end
    object LINHA: TEdit
      Left = 50
      Top = 7
      Width = 38
      Height = 21
      TabOrder = 0
      OnKeyPress = LINHAKeyPress
    end
    object COLUNA: TEdit
      Left = 202
      Top = 8
      Width = 41
      Height = 21
      TabOrder = 1
      OnKeyPress = LINHAKeyPress
    end
    object MENSAGEM: TEdit
      Left = 240
      Top = 83
      Width = 290
      Height = 21
      TabOrder = 5
      OnExit = MENSAGEMExit
    end
    object CONDICAO: TComboBox
      Left = 266
      Top = 211
      Width = 107
      Height = 21
      ItemHeight = 13
      TabOrder = 13
      Items.Strings = (
        '= Igual'
        '< Menor'
        '> Maior'
        '>= Maior ou Igual'
        '<= Menor ou Igual'
        '<> Diferente')
    end
    object CAMPO1: TComboBox
      Left = 115
      Top = 210
      Width = 129
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 12
      OnExit = CAMPO1Exit
    end
    object CAMPO2: TComboBox
      Left = 418
      Top = 212
      Width = 145
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 14
      OnExit = CAMPO2Exit
    end
    object CAMPO: TComboBox
      Left = 241
      Top = 61
      Width = 290
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      OnExit = CAMPOExit
    end
    object SISTEMA: TComboBox
      Left = 240
      Top = 104
      Width = 290
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      OnExit = SISTEMAExit
      Items.Strings = (
        'Data'
        'Hora'
        'Pagina')
    end
    object CARACTER: TEdit
      Left = 241
      Top = 125
      Width = 30
      Height = 21
      TabOrder = 7
      OnKeyPress = CARACTERKeyPress
    end
    object TAMANHO: TEdit
      Left = 342
      Top = 149
      Width = 55
      Height = 21
      TabOrder = 9
    end
    object RGTIPOC: TRadioGroup
      Left = 13
      Top = 144
      Width = 185
      Height = 59
      Caption = 'Tipo de Campo:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&Caractere'
        '&Numerico'
        '&Data'
        '&Hora')
      TabOrder = 8
    end
    object RGALINHAR: TRadioGroup
      Left = 217
      Top = 170
      Width = 244
      Height = 34
      Caption = 'Alinhar:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Esquerda'
        '&Direira'
        '&Centralizar')
      TabOrder = 11
    end
    object FORMATO: TComboBox
      Left = 465
      Top = 147
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        '00000-000'
        '000"."000"."000"."000"-"00'
        '00"."000"."000"/"0000"-"00'
        'dd/mm/yyyy'
        'dd/mm/yy'
        'dd/mm/yyyy hh:nn:ss'
        'hh:nn:ss'
        '###,##0.00'
        '0000')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 260
    Width = 701
    Height = 127
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 699
      Height = 125
      Align = alClient
      DataSource = Src_TDV
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = CARACTERKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'TLOCAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TLIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TFONTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TDCAMPO'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCAMPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTIPOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TTAM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TFORMATO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TDOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TALINHAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDT1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOND01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCONDT2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TCOND02'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 387
    Width = 701
    Height = 41
    Align = alBottom
    TabOrder = 2
    object PRIMEIRO: TYusoftGradientButton
      Left = 4
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Primeiro Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      GrayedInactive = True
      Caption = '&Primeiro'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = PRIMEIROClick
      ShowHint = True
    end
    object ULTIMO: TYusoftGradientButton
      Left = 74
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = #218'ltimo Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      GrayedInactive = True
      Caption = '&'#218'ltimo'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = ULTIMOClick
      ShowHint = True
    end
    object PROXIMO: TYusoftGradientButton
      Left = 144
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Proximo Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      GrayedInactive = True
      Caption = 'P&roximo'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = PROXIMOClick
      ShowHint = True
    end
    object ANTERIOR: TYusoftGradientButton
      Left = 214
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Registro Anterior'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      GrayedInactive = True
      Caption = '&Anterior'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = ANTERIORClick
      ShowHint = True
    end
    object INCLUIR: TYusoftGradientButton
      Left = 284
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Incluir'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Incluir'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = INCLUIRClick
      ShowHint = True
    end
    object ALTERAR: TYusoftGradientButton
      Left = 354
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = '&Alterar Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = 'A&lterar'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = ALTERARClick
      ShowHint = True
    end
    object GRAVAR: TYusoftGradientButton
      Left = 424
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Gravar Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Gravar'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      Enabled = False
      OnClick = GRAVARClick
      ShowHint = True
    end
    object EXCLUIR: TYusoftGradientButton
      Left = 494
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = '&Excluir Registro'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Excluir'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = EXCLUIRClick
      ShowHint = True
    end
    object CANCELAR: TYusoftGradientButton
      Left = 564
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Cancelar a Opera'#231'ao'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Cancelar'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = CANCELARClick
      ShowHint = True
    end
    object SAIR: TYusoftGradientButton
      Left = 631
      Top = -4
      Width = 70
      Height = 45
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      LightColor = clBtnHighlight
      ShadowColor = clBtnShadow
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
      GrayedInactive = True
      Caption = '&Sair'
      Layout = blGlyphTop
      BevelWidth = 5
      GroupIndex = 0
      Flat = True
      Vertical = False
      WindowCaption = False
      OnClick = SAIRClick
      ShowHint = True
    end
  end
  object Src_TDV: TDataSource
    OnDataChange = Src_TDVDataChange
    Left = 160
    Top = 24
  end
end
