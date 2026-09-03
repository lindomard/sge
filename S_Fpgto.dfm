object Frm_Fpgto: TFrm_Fpgto
  Left = 33
  Top = 0
  Width = 766
  Height = 562
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Formas de Pagamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 750
    Height = 64
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Formas de Pagamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 65
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 750
    Height = 251
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object Bevel1: TBevel
      Left = -1
      Top = 70
      Width = 722
      Height = 2
    end
    object Label2: TLabel
      Left = 52
      Top = -1
      Width = 71
      Height = 24
      Caption = 'Formas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 475
      Top = -1
      Width = 67
      Height = 24
      Caption = 'Valor $'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = -1
      Top = 22
      Width = 721
      Height = 2
    end
    object Bevel7: TBevel
      Left = 0
      Top = 46
      Width = 721
      Height = 2
    end
    object Label6: TLabel
      Left = 6
      Top = 226
      Width = 79
      Height = 13
      Caption = 'Total Liquido:'
    end
    object Label7: TLabel
      Left = 211
      Top = 226
      Width = 150
      Height = 13
      Caption = 'Valor ja Informado p/pgto:'
    end
    object Label8: TLabel
      Left = 493
      Top = 225
      Width = 56
      Height = 13
      Caption = 'Restante:'
    end
    object Bevel2: TBevel
      Left = -1
      Top = 96
      Width = 721
      Height = 2
    end
    object Bevel4: TBevel
      Left = -1
      Top = 121
      Width = 722
      Height = 2
    end
    object Bevel5: TBevel
      Left = -1
      Top = 147
      Width = 721
      Height = 2
    end
    object Bevel6: TBevel
      Left = -1
      Top = 172
      Width = 722
      Height = 2
    end
    object Bevel8: TBevel
      Left = 0
      Top = 198
      Width = 720
      Height = 2
    end
    object Bevel9: TBevel
      Left = 0
      Top = 218
      Width = 721
      Height = 2
    end
    object CB_DIN: TCheckBox
      Left = 50
      Top = 27
      Width = 424
      Height = 17
      Caption = '&0-Dinheiro....................................................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CB_DINExit
      OnExit = CB_DINExit
    end
    object VALDIN: TEdit
      Left = 479
      Top = 24
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = VALDINExit
      OnKeyPress = TOTDESKeyPress
    end
    object VALCHAV: TEdit
      Left = 479
      Top = 48
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = VALCHAVExit
      OnKeyPress = TOTDESKeyPress
    end
    object CB_CHAV: TCheckBox
      Left = 50
      Top = 52
      Width = 424
      Height = 17
      Caption = '&1-Cheque A vista..........................................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CB_CHAVExit
      OnExit = CB_CHAVExit
    end
    object CB_CHPD: TCheckBox
      Left = 50
      Top = 77
      Width = 424
      Height = 17
      Caption = '&2-Cheque(s) Pr'#233'-datado(s)..........................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CB_CHPDExit
      OnExit = CB_CHPDExit
    end
    object VALCHPD: TEdit
      Left = 479
      Top = 72
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnExit = VALCHPDExit
      OnKeyPress = TOTDESKeyPress
    end
    object CB_CARDEB: TCheckBox
      Left = 50
      Top = 99
      Width = 424
      Height = 17
      Caption = '&3-Cart'#245'es D'#233'bitos........................................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CB_CARDEBExit
      OnExit = CB_CARDEBExit
    end
    object VALDEB: TEdit
      Left = 479
      Top = 99
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnExit = VALDEBExit
      OnKeyPress = TOTDESKeyPress
    end
    object VALVIS: TEdit
      Left = 479
      Top = 124
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnExit = VALVISExit
      OnKeyPress = TOTDESKeyPress
    end
    object CB_CARVIS: TCheckBox
      Left = 50
      Top = 125
      Width = 423
      Height = 17
      Caption = '&4-Cart'#245'es Cr'#233'ditos VISA..............................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = CB_CARVISExit
      OnExit = CB_CARVISExit
    end
    object TOTPED: TEdit
      Left = 85
      Top = 224
      Width = 121
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 16
    end
    object TOTREC: TEdit
      Left = 361
      Top = 224
      Width = 122
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 15
    end
    object TOTRES: TEdit
      Left = 554
      Top = 223
      Width = 121
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 17
    end
    object CB_AREC: TCheckBox
      Left = 50
      Top = 200
      Width = 428
      Height = 17
      Caption = '&7-A Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = CB_ARECClick
    end
    object CB_CARMAS: TCheckBox
      Left = 50
      Top = 151
      Width = 426
      Height = 17
      Caption = '&5-Cart'#245'es Cr'#233'ditos MASTERCARD..............'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = CB_CARMASClick
      OnExit = CB_CARMASClick
    end
    object CB_CARAME: TCheckBox
      Left = 50
      Top = 176
      Width = 426
      Height = 17
      Caption = '&6-Cart'#245'es Cr'#233'ditos AMERICAN-EXPRESS...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = CB_CARAMEExit
      OnExit = CB_CARAMEExit
    end
    object VALMAS: TEdit
      Left = 479
      Top = 149
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnExit = VALMASExit
      OnKeyPress = TOTDESKeyPress
    end
    object VALAME: TEdit
      Left = 479
      Top = 175
      Width = 121
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      OnExit = VALAMEExit
      OnKeyPress = TOTDESKeyPress
    end
  end
  object bbConfirmar: TBitBtn
    Left = 1
    Top = 496
    Width = 190
    Height = 28
    Caption = '&Confirmar'
    TabOrder = 2
    OnClick = bbConfirmarClick
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
  object bbSair: TBitBtn
    Left = 531
    Top = 494
    Width = 190
    Height = 30
    Caption = '&Sair/Voltar para os Itens'
    TabOrder = 3
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 198
    Width = 750
    Height = 43
    Align = alTop
    Caption = 'Finalizando Cupom Fiscal:'
    TabOrder = 0
    object Label4: TLabel
      Left = 5
      Top = 21
      Width = 76
      Height = 13
      Caption = 'Total Cupom:'
    end
    object Label5: TLabel
      Left = 197
      Top = 20
      Width = 63
      Height = 13
      Caption = 'Desconto.:'
    end
    object Label9: TLabel
      Left = 565
      Top = 17
      Width = 79
      Height = 13
      Caption = 'Total Liquido:'
    end
    object Label10: TLabel
      Left = 377
      Top = 17
      Width = 69
      Height = 13
      Caption = 'Acr'#233'scimos:'
    end
    object TOTCUP: TEdit
      Left = 83
      Top = 16
      Width = 110
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object TOTDES: TEdit
      Left = 262
      Top = 13
      Width = 110
      Height = 21
      TabOrder = 1
      OnExit = TOTDESExit
      OnKeyPress = TOTDESKeyPress
    end
    object TOTLIQ: TEdit
      Left = 646
      Top = 13
      Width = 110
      Height = 21
      Ctl3D = True
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object TOTACRE: TEdit
      Left = 450
      Top = 13
      Width = 110
      Height = 21
      TabOrder = 3
      OnExit = TOTACREExit
      OnKeyPress = TOTDESKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 64
    Width = 750
    Height = 134
    Align = alTop
    Caption = 'Dados do Cliente:'
    TabOrder = 4
    object Label11: TLabel
      Left = 11
      Top = 47
      Width = 52
      Height = 13
      Caption = 'Cliente..:'
    end
    object Label12: TLabel
      Left = 11
      Top = 69
      Width = 63
      Height = 13
      Caption = 'Endere'#231'o.:'
    end
    object lbl_fantasia: TLabel
      Left = 414
      Top = 47
      Width = 57
      Height = 13
      Caption = 'Fantasia.:'
    end
    object Label14: TLabel
      Left = 431
      Top = 69
      Width = 38
      Height = 13
      Caption = 'Bairro:'
    end
    object Label15: TLabel
      Left = 11
      Top = 89
      Width = 48
      Height = 13
      Caption = 'Cidade.:'
    end
    object Label16: TLabel
      Left = 351
      Top = 89
      Width = 25
      Height = 13
      Caption = 'UF.:'
    end
    object Label17: TLabel
      Left = 433
      Top = 89
      Width = 33
      Height = 13
      Caption = 'CEP.:'
    end
    object lbl_cnpj: TLabel
      Left = 11
      Top = 110
      Width = 78
      Height = 13
      Caption = 'CNPJ/CNPF.:'
    end
    object lbl_ie: TLabel
      Left = 257
      Top = 109
      Width = 79
      Height = 13
      Caption = 'Incri'#231#227'o/RG.:'
    end
    object Label20: TLabel
      Left = 519
      Top = 108
      Width = 59
      Height = 13
      Caption = 'Telefone.:'
    end
    object CODCLI: TEdit
      Left = 97
      Top = 45
      Width = 63
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'CODCLI'
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object RAZSOC: TEdit
      Left = 162
      Top = 45
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Text = 'RAZSOC'
    end
    object FANTASIA: TEdit
      Left = 480
      Top = 44
      Width = 238
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'FANTASIA'
    end
    object ENDERECO: TEdit
      Left = 97
      Top = 66
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'ENDERECO'
    end
    object BAIRRO: TEdit
      Left = 480
      Top = 65
      Width = 238
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'BAIRRO'
    end
    object CIDADE: TEdit
      Left = 97
      Top = 86
      Width = 245
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = 'CIDADE'
    end
    object UF: TEdit
      Left = 379
      Top = 86
      Width = 25
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = 'UF'
    end
    object CEP: TMaskEdit
      Left = 480
      Top = 86
      Width = 77
      Height = 19
      Ctl3D = False
      EditMask = '99999-999;1; '
      MaxLength = 9
      ParentCtl3D = False
      TabOrder = 8
      Text = '     -   '
    end
    object IE: TEdit
      Left = 343
      Top = 106
      Width = 136
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      Text = 'IE'
    end
    object FONE: TMaskEdit
      Left = 588
      Top = 105
      Width = 123
      Height = 19
      Ctl3D = False
      EditMask = '!(999) 9999-9999;1; '
      MaxLength = 15
      ParentCtl3D = False
      TabOrder = 11
      Text = '(   )     -    '
    end
    object RG_TPPESSOA: TRadioGroup
      Left = 97
      Top = 8
      Width = 312
      Height = 30
      Caption = 'Tipo de Pessoa:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 0
      OnClick = RG_TPPESSOAExit
      OnExit = RG_TPPESSOAExit
    end
    object CNPJ: TMaskEdit
      Left = 97
      Top = 107
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnExit = CNPJExit
    end
  end
  object bbCancelar: TBitBtn
    Left = 255
    Top = 494
    Width = 190
    Height = 30
    Caption = '&Cancelar Cupom'
    TabOrder = 5
    Visible = False
    OnClick = bbCancelarClick
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
end
