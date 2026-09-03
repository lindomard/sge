object Frm_DadCli: TFrm_DadCli
  Left = 192
  Top = 124
  Width = 562
  Height = 431
  ActiveControl = CEP
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dados do Cliente'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 9
    Top = 89
    Width = 76
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label3: TLabel
    Left = 154
    Top = 50
    Width = 32
    Height = 13
    Caption = 'CNPJ'
  end
  object Label4: TLabel
    Left = 385
    Top = 50
    Width = 24
    Height = 13
    Caption = 'CPF'
  end
  object Label5: TLabel
    Left = 385
    Top = 88
    Width = 51
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 9
    Top = 129
    Width = 103
    Height = 13
    Caption = 'Nome de Fantasia'
  end
  object Label7: TLabel
    Left = 386
    Top = 128
    Width = 21
    Height = 13
    Caption = 'Fax'
  end
  object Label8: TLabel
    Left = 9
    Top = 170
    Width = 55
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label9: TLabel
    Left = 387
    Top = 171
    Width = 34
    Height = 13
    Caption = 'Bairro'
  end
  object Label10: TLabel
    Left = 8
    Top = 208
    Width = 40
    Height = 13
    Caption = 'Cidade'
  end
  object Label11: TLabel
    Left = 307
    Top = 208
    Width = 17
    Height = 13
    Caption = 'UF'
  end
  object Label13: TLabel
    Left = 8
    Top = 248
    Width = 61
    Height = 13
    Caption = 'Identidade'
  end
  object Label14: TLabel
    Left = 312
    Top = 248
    Width = 106
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual'
  end
  object lbl_codconv: TLabel
    Left = 8
    Top = 291
    Width = 97
    Height = 13
    Caption = 'C'#243'digo Conv'#234'nio'
  end
  object lbl_nomconv: TLabel
    Left = 150
    Top = 291
    Width = 108
    Height = 13
    Caption = 'Nome do Conv'#234'nio'
  end
  object Label12: TLabel
    Left = 11
    Top = 50
    Width = 25
    Height = 13
    Caption = 'CEP'
  end
  object RAZSOC: TEdit
    Left = 8
    Top = 103
    Width = 328
    Height = 21
    TabOrder = 3
  end
  object CNPF: TEdit
    Left = 385
    Top = 64
    Width = 144
    Height = 21
    TabOrder = 2
    OnExit = CNPFExit
  end
  object DENOM: TEdit
    Left = 8
    Top = 143
    Width = 328
    Height = 21
    TabOrder = 5
  end
  object ENDERECO: TEdit
    Left = 8
    Top = 184
    Width = 328
    Height = 21
    TabOrder = 7
  end
  object BAIRRO: TEdit
    Left = 385
    Top = 185
    Width = 144
    Height = 21
    TabOrder = 8
  end
  object CIDADE: TEdit
    Left = 7
    Top = 222
    Width = 290
    Height = 21
    TabOrder = 9
  end
  object UF: TEdit
    Left = 299
    Top = 222
    Width = 36
    Height = 21
    TabOrder = 10
  end
  object CNPJ: TMaskEdit
    Left = 152
    Top = 64
    Width = 188
    Height = 21
    TabOrder = 1
    Text = 'CNPJ'
    OnExit = CNPJExit
  end
  object RG: TEdit
    Left = 7
    Top = 262
    Width = 218
    Height = 21
    TabOrder = 11
  end
  object IE: TEdit
    Left = 311
    Top = 262
    Width = 218
    Height = 21
    TabOrder = 12
  end
  object bbConfSai: TBitBtn
    Left = 7
    Top = 339
    Width = 201
    Height = 33
    Caption = '&Confirmar'
    TabOrder = 13
    OnClick = bbConfSaiClick
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
  object BitBtn1: TBitBtn
    Left = 326
    Top = 339
    Width = 201
    Height = 33
    Caption = 'Cance&lar'
    TabOrder = 14
    OnClick = BitBtn1Click
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
  object txt_codconv: TEdit
    Left = 8
    Top = 305
    Width = 121
    Height = 21
    TabOrder = 15
    OnExit = txt_codconvExit
  end
  object txt_nomconv: TMaskEdit
    Left = 147
    Top = 305
    Width = 382
    Height = 21
    Color = clGray
    TabOrder = 16
  end
  object CEP: TMaskEdit
    Left = 10
    Top = 63
    Width = 140
    Height = 21
    EditMask = '00000\-999;1; '
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
    OnExit = CEPExit
  end
  object TELEFONE: TEdit
    Left = 384
    Top = 103
    Width = 144
    Height = 21
    TabOrder = 4
    OnExit = TELEFONEExit
  end
  object FAX: TEdit
    Left = 386
    Top = 142
    Width = 144
    Height = 21
    TabOrder = 6
    OnExit = FAXExit
  end
end
