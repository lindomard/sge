object Frm_Receber_Lev: TFrm_Receber_Lev
  Left = 229
  Top = 143
  Width = 486
  Height = 250
  Caption = 'Levantamento di'#225'rio do Contas a Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 113
      Top = 11
      Width = 87
      Height = 13
      Caption = 'Informe a data:'
    end
    object MDT1: TMaskEdit
      Left = 206
      Top = 9
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object bbAtualizar: TBitBtn
      Left = 352
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 1
      OnClick = bbAtualizarClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 478
    Height = 137
    Align = alClient
    Caption = 'Resumo:'
    TabOrder = 1
    object Label2: TLabel
      Left = 115
      Top = 13
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo Anterior:'
    end
    object Label3: TLabel
      Left = 68
      Top = 29
      Width = 132
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inclus'#245'es Autom'#225'ticas:'
    end
    object Label4: TLabel
      Left = 84
      Top = 45
      Width = 116
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inclus'#245'es Digitadas:'
    end
    object lbl_exclusoes: TLabel
      Left = 138
      Top = 61
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Exclus'#245'es:'
    end
    object Label5: TLabel
      Left = 125
      Top = 77
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Baixa do dia:'
    end
    object Label6: TLabel
      Left = 130
      Top = 93
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo Atual:'
    end
    object st_saldo_ant: TStaticText
      Left = 206
      Top = 10
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16765650
      ParentColor = False
      TabOrder = 0
    end
    object st_inc_autom: TStaticText
      Left = 206
      Top = 26
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16765650
      ParentColor = False
      TabOrder = 1
    end
    object st_inc_manual: TStaticText
      Left = 206
      Top = 42
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16765650
      ParentColor = False
      TabOrder = 2
    end
    object st_excl: TStaticText
      Left = 206
      Top = 58
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 3
    end
    object st_baixadia: TStaticText
      Left = 206
      Top = 74
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 4
    end
    object st_saldo: TStaticText
      Left = 206
      Top = 90
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16765650
      ParentColor = False
      TabOrder = 5
    end
    object CB_CARTEIRA: TCheckBox
      Left = 149
      Top = 115
      Width = 168
      Height = 17
      Hint = 'Se Marcado a impress'#227'o'#13#10'padr'#227'o sera para impressora'#13#10'matricial'
      Caption = 'Somente para Carteira'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object st_saldo_calculado: TStaticText
      Left = 288
      Top = 90
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Color = 16765650
      ParentColor = False
      TabOrder = 7
    end
    object rg_documentos: TRadioGroup
      Left = 344
      Top = 8
      Width = 127
      Height = 81
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'T'#237'tulos'
        'Cheques')
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 178
    Width = 478
    Height = 41
    Align = alBottom
    TabOrder = 2
    object sb_SalvarPadrao: TSpeedButton
      Left = 155
      Top = 2
      Width = 141
      Height = 33
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object bbImprimir: TBitBtn
      Left = 3
      Top = 2
      Width = 141
      Height = 33
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
      Left = 307
      Top = 2
      Width = 141
      Height = 33
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
end
