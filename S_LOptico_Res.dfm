object Frm_LOptico_Res: TFrm_LOptico_Res
  Left = 192
  Top = 97
  Width = 544
  Height = 473
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resultado da Leitura Serial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 536
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Conteudo Lido'
  end
  object Label6: TLabel
    Left = 53
    Top = 100
    Width = 39
    Height = 13
    Caption = 'Camera:'
  end
  object Label10: TLabel
    Left = 58
    Top = 118
    Width = 34
    Height = 13
    Caption = 'Banco:'
  end
  object Label11: TLabel
    Left = 50
    Top = 136
    Width = 42
    Height = 13
    Caption = 'Ag'#234'ncia:'
  end
  object Label12: TLabel
    Left = 21
    Top = 155
    Width = 71
    Height = 13
    Caption = 'Compensa'#231#227'o:'
  end
  object Label13: TLabel
    Left = 12
    Top = 172
    Width = 80
    Height = 13
    Caption = 'N'#250'mero Cheque:'
  end
  object Label14: TLabel
    Left = 61
    Top = 190
    Width = 31
    Height = 13
    Caption = 'Conta:'
  end
  object Label59: TLabel
    Left = 5
    Top = 209
    Width = 87
    Height = 13
    Caption = 'C'#243'digo da Moeda:'
  end
  object Label60: TLabel
    Left = 33
    Top = 226
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
  end
  object Label61: TLabel
    Left = 65
    Top = 245
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label62: TLabel
    Left = 19
    Top = 263
    Width = 73
    Height = 13
    Caption = 'Nosso N'#250'mero:'
  end
  object Label66: TLabel
    Left = 13
    Top = 281
    Width = 79
    Height = 13
    Caption = 'C'#243'digo Cedente:'
  end
  object Label67: TLabel
    Left = 2
    Top = 299
    Width = 90
    Height = 13
    Caption = 'C'#243'digo da Carteira:'
  end
  object Label68: TLabel
    Left = 35
    Top = 317
    Width = 57
    Height = 13
    Caption = 'N'#250'mero NF:'
  end
  object Label69: TLabel
    Left = 14
    Top = 336
    Width = 78
    Height = 13
    Caption = 'Mes Referencia:'
  end
  object Label70: TLabel
    Left = 15
    Top = 354
    Width = 77
    Height = 13
    Caption = 'Ano Referencia:'
  end
  object Label71: TLabel
    Left = 8
    Top = 371
    Width = 84
    Height = 13
    Caption = 'N'#250'mero Diversos:'
  end
  object CONTEUDO: TEdit
    Left = 4
    Top = 27
    Width = 529
    Height = 22
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    Text = 'CONTEUDO'
  end
  object CAMERA: TEdit
    Left = 96
    Top = 98
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
    Text = 'CONTEUDO'
  end
  object BANCO: TEdit
    Left = 96
    Top = 116
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
    Text = 'CONTEUDO'
  end
  object COMPENSACAO: TEdit
    Left = 96
    Top = 152
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    Text = 'CONTEUDO'
  end
  object AGENCIA: TEdit
    Left = 96
    Top = 134
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 4
    Text = 'CONTEUDO'
  end
  object VCTO: TEdit
    Left = 96
    Top = 224
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'CONTEUDO'
  end
  object MOEDA: TEdit
    Left = 96
    Top = 206
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 6
    Text = 'CONTEUDO'
  end
  object CONTA: TEdit
    Left = 96
    Top = 188
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 7
    Text = 'CONTEUDO'
  end
  object NUMCHQ: TEdit
    Left = 96
    Top = 170
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 8
    Text = 'CONTEUDO'
  end
  object CODCAR: TEdit
    Left = 96
    Top = 296
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 9
    Text = 'CONTEUDO'
  end
  object CODCED: TEdit
    Left = 96
    Top = 278
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 10
    Text = 'CONTEUDO'
  end
  object NOSNUM: TEdit
    Left = 96
    Top = 260
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 11
    Text = 'CONTEUDO'
  end
  object VALOR: TEdit
    Left = 96
    Top = 242
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 12
    Text = 'CONTEUDO'
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 395
    Width = 116
    Height = 25
    TabOrder = 13
    Kind = bkOK
  end
  object NUMDIV: TEdit
    Left = 96
    Top = 367
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 14
    Text = 'CONTEUDO'
  end
  object ANOREF: TEdit
    Left = 96
    Top = 350
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 15
    Text = 'CONTEUDO'
  end
  object MESREF: TEdit
    Left = 96
    Top = 332
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 16
    Text = 'CONTEUDO'
  end
  object NUMNF: TEdit
    Left = 96
    Top = 314
    Width = 433
    Height = 19
    Cursor = crArrow
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 17
    Text = 'CONTEUDO'
  end
  object Edit1: TEdit
    Left = 4
    Top = 50
    Width = 529
    Height = 22
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 18
    Text = 
      '1234567890123456789012345678901234567890123456789012345678901234' +
      '5678901234567890'
  end
  object Edit2: TEdit
    Left = 4
    Top = 72
    Width = 529
    Height = 22
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 19
    Text = 
      '        10        20        30        40         50        60   ' +
      '     70'
  end
end
