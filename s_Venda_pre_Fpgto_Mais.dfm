object Frm_Venda_pre_Fpgto_Mais: TFrm_Venda_pre_Fpgto_Mais
  Left = 276
  Top = 328
  Width = 574
  Height = 138
  Caption = 'Mais dados da Forma de Pagamento:'
  Color = 15794175
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edt_cnpf: TEdit
    Left = 78
    Top = 35
    Width = 135
    Height = 19
    AutoSize = False
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = edt_cnpfExit
  end
  object edt_emitente: TEdit
    Left = 280
    Top = 35
    Width = 267
    Height = 19
    AutoSize = False
    Ctl3D = False
    MaxLength = 60
    ParentCtl3D = False
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 1
    Width = 272
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Forma de Pagamento Selecionada'
    Color = 16777185
    ParentColor = False
    TabOrder = 2
  end
  object edt_codfp: TEdit
    Left = 9
    Top = 17
    Width = 28
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object edt_nomfp: TEdit
    Left = 36
    Top = 17
    Width = 245
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object StaticText2: TStaticText
    Left = 280
    Top = 1
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Parcela'
    Color = 16766935
    ParentColor = False
    TabOrder = 5
  end
  object edt_parc: TEdit
    Left = 280
    Top = 17
    Width = 28
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16766935
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object edt_qtdparc: TEdit
    Left = 307
    Top = 17
    Width = 28
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16766935
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 7
  end
  object StaticText3: TStaticText
    Left = 334
    Top = 1
    Width = 117
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Prazo/Vencimento'
    Color = 16777185
    ParentColor = False
    TabOrder = 8
  end
  object edt_dtvcto: TEdit
    Left = 376
    Top = 17
    Width = 75
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object edt_prazo: TEdit
    Left = 334
    Top = 17
    Width = 43
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object StaticText4: TStaticText
    Left = 450
    Top = 1
    Width = 97
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Valor'
    Color = 16766935
    ParentColor = False
    TabOrder = 11
  end
  object edt_valor: TEdit
    Left = 450
    Top = 17
    Width = 97
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16766935
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 12
  end
  object Edit3: TEdit
    Left = 9
    Top = 35
    Width = 70
    Height = 19
    TabStop = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
    Text = 'CPF/CNPJ:'
  end
  object Edit4: TEdit
    Left = 211
    Top = 35
    Width = 70
    Height = 19
    TabStop = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 14
    Text = 'Emitente:'
  end
  object Edit5: TEdit
    Left = 9
    Top = 53
    Width = 70
    Height = 19
    TabStop = False
    AutoSize = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 15
    Text = 'N'#250'mero:'
  end
  object edt_numdoc: TEdit
    Left = 78
    Top = 53
    Width = 85
    Height = 19
    AutoSize = False
    Ctl3D = False
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 16
  end
  object Edit7: TEdit
    Left = 334
    Top = 53
    Width = 58
    Height = 19
    TabStop = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 18
    Text = 'Banco:'
  end
  object edt_banco: TEdit
    Left = 391
    Top = 53
    Width = 48
    Height = 19
    AutoSize = False
    Ctl3D = False
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 19
  end
  object Edit6: TEdit
    Left = 162
    Top = 53
    Width = 102
    Height = 19
    TabStop = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 20
    Text = 'Conta Corrente:'
  end
  object edt_ctacor: TEdit
    Left = 263
    Top = 53
    Width = 72
    Height = 19
    AutoSize = False
    Ctl3D = False
    MaxLength = 20
    ParentCtl3D = False
    TabOrder = 17
  end
  object Edit8: TEdit
    Left = 438
    Top = 53
    Width = 56
    Height = 19
    TabStop = False
    Color = 16777185
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 21
    Text = 'Ag'#234'ncia:'
  end
  object edt_agencia: TEdit
    Left = 493
    Top = 53
    Width = 54
    Height = 19
    AutoSize = False
    Ctl3D = False
    MaxLength = 8
    ParentCtl3D = False
    TabOrder = 22
  end
  object btn_gravar: TBitBtn
    Left = 9
    Top = 73
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Gravar'
    TabOrder = 23
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
  object btn_cancelar: TBitBtn
    Left = 470
    Top = 73
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ca&ncelar'
    TabOrder = 24
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
end
