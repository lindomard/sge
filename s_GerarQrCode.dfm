object Frm_GerarQrCode: TFrm_GerarQrCode
  Left = 192
  Top = 113
  Width = 1125
  Height = 470
  ActiveControl = cb_tipo_chave
  Caption = 'Gerador de QrCode Para PIX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 21
    Height = 13
    Caption = 'Text'
    Visible = False
  end
  object Label3: TLabel
    Left = 184
    Top = 69
    Width = 51
    Height = 13
    Caption = 'Quiet zone'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 45
    Height = 13
    Caption = 'Encoding'
    Visible = False
  end
  object PaintBox1: TPaintBox
    Left = 608
    Top = 8
    Width = 249
    Height = 225
    Visible = False
    OnPaint = PaintBox1Paint
  end
  object Image1_ant: TImage
    Left = 778
    Top = 108
    Width = 345
    Height = 321
    Stretch = True
  end
  object Label4: TLabel
    Left = 16
    Top = 160
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tipo da Chave:'
  end
  object Label5: TLabel
    Left = 17
    Top = 185
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Chave:'
  end
  object Label6: TLabel
    Left = 17
    Top = 215
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor:'
  end
  object Label7: TLabel
    Left = 17
    Top = 242
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Nome do Beneficiario:'
  end
  object Label8: TLabel
    Left = 17
    Top = 271
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cidade do Beneficiario:'
  end
  object Label9: TLabel
    Left = 17
    Top = 298
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Descri'#231#227'o Opcional:'
  end
  object Label10: TLabel
    Left = 408
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object edtText: TEdit
    Left = 8
    Top = 32
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'Hello world'
    Visible = False
  end
  object cmbEncoding: TComboBox
    Left = 8
    Top = 88
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'Auto'
    Visible = False
    OnClick = cmbEncodingClick
    Items.Strings = (
      'Auto'
      'Numeric'
      'Alphanumeric'
      'ISO-8859-1'
      'UTF-8 without BOM'
      'UTF-8 with BOM')
  end
  object edtQuietZone: TEdit
    Left = 184
    Top = 88
    Width = 89
    Height = 21
    TabOrder = 2
    Text = '4'
    Visible = False
    OnClick = edtQuietZoneClick
  end
  object cb_tipo_chave: TComboBox
    Left = 184
    Top = 160
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 3
    Text = 'CPF'
    OnClick = cb_tipo_chaveClick
    Items.Strings = (
      'Aleatoria'
      'CPF'
      'CNPJ'
      'E-mail'
      'Telefone')
  end
  object edt_nome_beneficiario: TEdit
    Left = 184
    Top = 241
    Width = 409
    Height = 21
    MaxLength = 25
    TabOrder = 6
    Text = 'lindomar divino cordeiro'
  end
  object edt_cidade: TEdit
    Left = 184
    Top = 270
    Width = 409
    Height = 21
    MaxLength = 15
    TabOrder = 7
    Text = 'goiania'
  end
  object bbGerarCodigo: TBitBtn
    Left = 64
    Top = 328
    Width = 145
    Height = 25
    Caption = 'Gerar Qr-Code'
    TabOrder = 9
    OnClick = bbGerarCodigoClick
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
  object bbSalvarImagem: TBitBtn
    Left = 248
    Top = 328
    Width = 145
    Height = 25
    Caption = 'Salvar Imagem'
    Enabled = False
    TabOrder = 10
    OnClick = bbSalvarImagemClick
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
  object bbSair: TBitBtn
    Left = 666
    Top = 328
    Width = 145
    Height = 25
    Caption = 'Sair'
    TabOrder = 12
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
  object bbLimpar: TBitBtn
    Left = 432
    Top = 328
    Width = 145
    Height = 25
    Caption = 'Limpar'
    TabOrder = 11
    OnClick = bbLimparClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
  end
  object Memo_descricao: TEdit
    Left = 184
    Top = 294
    Width = 409
    Height = 21
    MaxLength = 25
    TabOrder = 8
    Text = 'teste'
  end
  object edt_chave_pix: TMaskEdit
    Left = 184
    Top = 184
    Width = 217
    Height = 21
    TabOrder = 4
    Text = '469.562.121-53'
    OnExit = edt_chave_pixExit
  end
  object edt_valor: TCurrencyEdit
    Left = 184
    Top = 211
    Width = 215
    Height = 23
    AutoSize = False
    Ctl3D = True
    DisplayFormat = ',0.00;-,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    Value = 1.000000000000000000
  end
  object edt_tamanho: TSpinEdit
    Left = 465
    Top = 52
    Width = 72
    Height = 22
    Ctl3D = False
    MaxValue = 0
    MinValue = 0
    ParentCtl3D = False
    TabOrder = 13
    Value = 400
    OnChange = edt_tamanhoChange
  end
  object edt_chave: TEdit
    Left = 56
    Top = 358
    Width = 961
    Height = 21
    TabOrder = 14
    Text = 
      '00020104141234567890123426580014 BR.GOV.BCB.PIX0136123e4567-e12b' +
      '-12d1-a456-42665544000027300012 BR.COM.OUTRO01100123456789520400' +
      '005303986'
    Visible = False
  end
  object bbdoTexto: TBitBtn
    Left = 696
    Top = 496
    Width = 145
    Height = 25
    Caption = 'do texto'
    TabOrder = 15
    Visible = False
    OnClick = bbdoTextoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
  end
  object edt_pre_fixada: TMemo
    Left = 24
    Top = 392
    Width = 809
    Height = 89
    Lines.Strings = (
      
        '00020104141234567890123426580014 BR.GOV.BCB.PIX0136123e4567-e12b' +
        '-12d1-a456-'
      '42665544000027300012BR.COM.OUTRO01100123456789520400005303986')
    TabOrder = 16
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 696
    Top = 520
    Width = 145
    Height = 25
    Caption = 'Gerar Exa'
    TabOrder = 17
    Visible = False
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
  end
  object edt_hexa: TEdit
    Left = 552
    Top = 536
    Width = 121
    Height = 21
    TabOrder = 18
    Text = 'edt_hexa'
    Visible = False
  end
  object SaveDialog1: TSaveDialog
    Left = 232
    Top = 128
  end
end
