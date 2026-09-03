object Frm_Sen_Int: TFrm_Sen_Int
  Left = 209
  Top = 144
  Width = 751
  Height = 566
  Caption = 'Senhas Internas do Sistema'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PC01: TPageControl
    Left = 0
    Top = 61
    Width = 743
    Height = 474
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 1
    OnEnter = PC01Enter
    object TabSheet1: TTabSheet
      Caption = 'Senhas Relacionadas ao Faturamento'
      object Label2: TLabel
        Left = 16
        Top = 2
        Width = 396
        Height = 13
        Caption = 
          'Senha para Alterar Pedido depois de faturado....................' +
          '..............'
      end
      object G01: TSpeedButton
        Left = 629
        Top = -1
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G01Click
      end
      object Label3: TLabel
        Left = 16
        Top = 42
        Width = 397
        Height = 13
        Caption = 
          'Senha para Liberar desconto  Maior que o permitido ou Preco Meno' +
          'r..'
      end
      object G02: TSpeedButton
        Left = 629
        Top = 41
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G02Click
      end
      object Label4: TLabel
        Left = 16
        Top = 82
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Excluir Pedido antes de emitir.......................' +
          '................'
      end
      object G03: TSpeedButton
        Left = 629
        Top = 80
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G03Click
      end
      object Label5: TLabel
        Left = 16
        Top = 102
        Width = 395
        Height = 13
        Caption = 
          'Senha  para Excluir Pedido Apos ter emitido nota................' +
          '.............'
      end
      object G04: TSpeedButton
        Left = 629
        Top = 100
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G04Click
      end
      object Label19: TLabel
        Left = 16
        Top = 183
        Width = 392
        Height = 13
        Caption = 
          'Senha para Cancelar Confirma'#231#227'o de Entrega......................' +
          '...........'
      end
      object G13: TSpeedButton
        Left = 629
        Top = 182
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G13Click
      end
      object Label23: TLabel
        Left = 16
        Top = 204
        Width = 398
        Height = 13
        Caption = 
          'Senha para Liberar Limite de Cr'#233'dito Ultrapassado...............' +
          '.............'
      end
      object G17: TSpeedButton
        Left = 629
        Top = 203
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G17Click
      end
      object Label8: TLabel
        Left = 16
        Top = 226
        Width = 399
        Height = 13
        Caption = 
          'Senha Para Alterar o Tipo de Pre'#231'o Padr'#227'o do Faturamento........' +
          '.......'
      end
      object G21: TSpeedButton
        Left = 629
        Top = 223
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G21Click
      end
      object Label9: TLabel
        Left = 15
        Top = 248
        Width = 397
        Height = 13
        Caption = 
          'Senha Para Alterar o Tipo do Pedido Padr'#227'o do Faturamento.......' +
          '......'
      end
      object G22: TSpeedButton
        Left = 629
        Top = 243
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G22Click
      end
      object Label31: TLabel
        Left = 16
        Top = 348
        Width = 397
        Height = 13
        Caption = 
          'Senha para Permitir devolu'#231#227'o sem Pedido de Origem..............' +
          '.........'
      end
      object G30: TSpeedButton
        Left = 629
        Top = 340
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G30Click
      end
      object Label33: TLabel
        Left = 15
        Top = 266
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Alterar o Plano de Vendas Padr'#227'o do Faturamento......' +
          '....'
      end
      object G32: TSpeedButton
        Left = 629
        Top = 261
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G32Click
      end
      object Label34: TLabel
        Left = 16
        Top = 286
        Width = 397
        Height = 13
        Caption = 
          'Senha Para Alterar a Transportadora Padr'#227'o do Faturamento.......' +
          '......'
      end
      object G33: TSpeedButton
        Left = 629
        Top = 281
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G33Click
      end
      object Label35: TLabel
        Left = 16
        Top = 306
        Width = 387
        Height = 13
        Caption = 
          'Senha Para Alterar o Tipo de Frete Padr'#227'o do Faturamento........' +
          '.....'
      end
      object G34: TSpeedButton
        Left = 629
        Top = 300
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G34Click
      end
      object Label36: TLabel
        Left = 16
        Top = 326
        Width = 398
        Height = 13
        Caption = 
          'Senha Para Alterar o Codigo do Vendedor Padr'#227'o do Faturamento...' +
          '...'
      end
      object G35: TSpeedButton
        Left = 629
        Top = 318
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G35Click
      end
      object Label48: TLabel
        Left = 16
        Top = 368
        Width = 395
        Height = 13
        Caption = 
          'Senha para Trocar Local Movimento Prat/Dep e Vice-Versa.........' +
          '.....'
      end
      object G46: TSpeedButton
        Left = 629
        Top = 360
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G46Click
      end
      object Label49: TLabel
        Left = 17
        Top = 62
        Width = 398
        Height = 13
        Caption = 
          'Senha para Liberar Pre'#231'o Menor que o Pre'#231'os da Promo'#231#227'o.........' +
          '.... '
      end
      object G47: TSpeedButton
        Left = 629
        Top = 61
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G47Click
      end
      object Label54: TLabel
        Left = 16
        Top = 125
        Width = 393
        Height = 13
        Caption = 
          'Senha  para Incluir item depois de Faturado.....................' +
          '...............'
      end
      object G62: TSpeedButton
        Left = 629
        Top = 120
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G62Click
      end
      object Label55: TLabel
        Left = 16
        Top = 145
        Width = 390
        Height = 13
        Caption = 
          'Senha  para Alterar Pre'#231'o do  item depois de Faturado...........' +
          '.........'
      end
      object G63: TSpeedButton
        Left = 629
        Top = 140
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G63Click
      end
      object Label56: TLabel
        Left = 17
        Top = 166
        Width = 392
        Height = 13
        Caption = 
          'Senha  para Vender Produto com Pre'#231'o Maior que PMC..............' +
          '.....'
      end
      object G54: TSpeedButton
        Left = 629
        Top = 160
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G54Click
      end
      object G55: TSpeedButton
        Left = 629
        Top = 380
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G55Click
      end
      object Label57: TLabel
        Left = 16
        Top = 388
        Width = 399
        Height = 13
        Caption = 
          'Senha Para Alterar a Data do Pedido ............................' +
          '..................'
      end
      object Label64: TLabel
        Left = 16
        Top = 23
        Width = 397
        Height = 13
        Caption = 
          'Senha para Alterar Pedido antes de faturar (Or'#231'amento)..........' +
          '..........'
      end
      object G64: TSpeedButton
        Left = 629
        Top = 20
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G64Click
      end
      object PS01: TCheckBox
        Left = 414
        Top = 2
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS01Click
      end
      object S01: TEdit
        Left = 450
        Top = 0
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 1
        OnChange = S01Change
      end
      object C01: TEdit
        Left = 533
        Top = 0
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object PS02: TCheckBox
        Left = 414
        Top = 42
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS02Click
      end
      object S02: TEdit
        Left = 450
        Top = 42
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 4
        OnChange = S02Change
      end
      object C02: TEdit
        Left = 533
        Top = 42
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 5
      end
      object PS03: TCheckBox
        Left = 414
        Top = 82
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS03Click
      end
      object S03: TEdit
        Left = 450
        Top = 82
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 7
        OnChange = S03Change
      end
      object C03: TEdit
        Left = 533
        Top = 82
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 8
      end
      object PS04: TCheckBox
        Left = 414
        Top = 101
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = PS04Click
      end
      object S04: TEdit
        Left = 450
        Top = 102
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 10
        OnChange = S04Change
      end
      object C04: TEdit
        Left = 533
        Top = 102
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 11
      end
      object PS13: TCheckBox
        Left = 414
        Top = 184
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS13Click
      end
      object S13: TEdit
        Left = 450
        Top = 182
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 13
        OnChange = S13Change
      end
      object C13: TEdit
        Left = 533
        Top = 182
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 14
      end
      object PS17: TCheckBox
        Left = 414
        Top = 204
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = PS17Click
      end
      object S17: TEdit
        Left = 450
        Top = 202
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 16
        OnChange = S17Change
      end
      object C17: TEdit
        Left = 533
        Top = 202
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 17
      end
      object PS21: TCheckBox
        Left = 414
        Top = 224
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = PS21Click
      end
      object S21: TEdit
        Left = 450
        Top = 222
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 19
        OnChange = S21Change
      end
      object C21: TEdit
        Left = 533
        Top = 222
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 20
      end
      object PS22: TCheckBox
        Left = 414
        Top = 244
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnClick = PS22Click
      end
      object S22: TEdit
        Left = 450
        Top = 242
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 22
        OnChange = S22Change
      end
      object C22: TEdit
        Left = 533
        Top = 242
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 23
      end
      object PS30: TCheckBox
        Left = 414
        Top = 345
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 36
        OnClick = PS30Click
      end
      object S30: TEdit
        Left = 450
        Top = 342
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 37
        OnChange = S30Change
      end
      object C30: TEdit
        Left = 533
        Top = 342
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 38
      end
      object PS32: TCheckBox
        Left = 414
        Top = 261
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnClick = PS32Click
      end
      object S32: TEdit
        Left = 450
        Top = 262
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 25
        OnChange = S32Change
      end
      object C32: TEdit
        Left = 533
        Top = 262
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 26
      end
      object C33: TEdit
        Left = 533
        Top = 282
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 28
      end
      object S33: TEdit
        Left = 450
        Top = 282
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 29
        OnChange = S33Change
      end
      object PS33: TCheckBox
        Left = 414
        Top = 283
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        OnClick = PS33Click
      end
      object PS34: TCheckBox
        Left = 414
        Top = 303
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
        OnClick = PS34Click
      end
      object S34: TEdit
        Left = 450
        Top = 302
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 31
        OnChange = S34Change
      end
      object C34: TEdit
        Left = 533
        Top = 302
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 32
      end
      object PS35: TCheckBox
        Left = 414
        Top = 323
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
        OnClick = PS35Click
      end
      object S35: TEdit
        Left = 450
        Top = 322
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 34
        OnChange = S35Change
      end
      object C35: TEdit
        Left = 533
        Top = 322
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 35
      end
      object PS46: TCheckBox
        Left = 414
        Top = 365
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 39
        OnClick = PS46Click
      end
      object S46: TEdit
        Left = 450
        Top = 362
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 40
        OnChange = S46Change
      end
      object C46: TEdit
        Left = 533
        Top = 362
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 41
      end
      object PS47: TCheckBox
        Left = 414
        Top = 61
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 42
        OnClick = PS47Click
      end
      object S47: TEdit
        Left = 450
        Top = 62
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 43
        OnChange = S47Change
      end
      object C47: TEdit
        Left = 533
        Top = 62
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 44
      end
      object PS62: TCheckBox
        Left = 414
        Top = 123
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 45
        OnClick = PS62Click
      end
      object S62: TEdit
        Left = 450
        Top = 122
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 46
        OnChange = S62Change
      end
      object C62: TEdit
        Left = 533
        Top = 122
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 47
      end
      object PS63: TCheckBox
        Left = 414
        Top = 144
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 48
        OnClick = PS63Click
      end
      object S63: TEdit
        Left = 450
        Top = 142
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 49
        OnChange = S63Change
      end
      object C63: TEdit
        Left = 533
        Top = 142
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 50
      end
      object PS54: TCheckBox
        Left = 414
        Top = 165
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 51
        OnClick = PS54Click
      end
      object S54: TEdit
        Left = 450
        Top = 162
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 52
        OnChange = S54Change
      end
      object C54: TEdit
        Left = 533
        Top = 162
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 53
      end
      object C55: TEdit
        Left = 533
        Top = 382
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 54
      end
      object S55: TEdit
        Left = 450
        Top = 382
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 55
        OnChange = S55Change
      end
      object PS55: TCheckBox
        Left = 414
        Top = 385
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 56
        OnClick = PS55Click
      end
      object PS64: TCheckBox
        Left = 414
        Top = 23
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 57
        OnClick = PS64Click
      end
      object S64: TEdit
        Left = 450
        Top = 21
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 58
        OnChange = S64Change
      end
      object C64: TEdit
        Left = 533
        Top = 21
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 59
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Senha Relacionadas ao Faturamento (Cont.)'
      ImageIndex = 1
      object Label58: TLabel
        Left = 16
        Top = 2
        Width = 396
        Height = 13
        Caption = 
          'Senha para alterar lote do produto no pedido....................' +
          '..............:'
      end
      object G56: TSpeedButton
        Left = 629
        Top = -1
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G56Click
      end
      object Label59: TLabel
        Left = 16
        Top = 23
        Width = 396
        Height = 13
        Caption = 
          'Senha para alterar pedido em analise............................' +
          '.................:'
      end
      object G57: TSpeedButton
        Left = 629
        Top = 20
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G57Click
      end
      object Label62: TLabel
        Left = 16
        Top = 44
        Width = 398
        Height = 13
        Caption = 
          'Senha para alterar Tipo de Pre'#231'o Licita'#231#227'o......................' +
          '...............:'
      end
      object G58: TSpeedButton
        Left = 629
        Top = 41
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G58Click
      end
      object Label63: TLabel
        Left = 16
        Top = 65
        Width = 396
        Height = 13
        Caption = 
          'Senha para alterar Pre'#231'o menor que minimo Licita'#231#227'o.............' +
          '.........:'
      end
      object G59: TSpeedButton
        Left = 629
        Top = 62
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G59Click
      end
      object Label65: TLabel
        Left = 16
        Top = 85
        Width = 193
        Height = 13
        Caption = 'Senha para alterar licita'#231#227'o ap'#243's '
      end
      object G66: TSpeedButton
        Left = 629
        Top = 83
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G66Click
      end
      object Label66: TLabel
        Left = 242
        Top = 83
        Width = 169
        Height = 13
        Caption = 'dias corridos.......................:'
      end
      object Label67: TLabel
        Left = 16
        Top = 107
        Width = 393
        Height = 13
        Caption = 
          'Senha para Emitir Nota Fiscal ..................................' +
          '....................:'
      end
      object G67: TSpeedButton
        Left = 629
        Top = 104
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G67Click
      end
      object Label69: TLabel
        Left = 17
        Top = 128
        Width = 389
        Height = 13
        Caption = 
          'Senha para Alterar Emprestimo de Mercadorias Emitidos ..........' +
          '......:'
      end
      object G69: TSpeedButton
        Left = 628
        Top = 125
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G69Click
      end
      object Label73: TLabel
        Left = 18
        Top = 149
        Width = 394
        Height = 13
        Caption = 
          'Senha para Alterar Pedido ap'#243's Conferencia Eletronica...........' +
          '.......::'
      end
      object G73: TSpeedButton
        Left = 629
        Top = 146
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G73Click
      end
      object Label74: TLabel
        Left = 18
        Top = 171
        Width = 394
        Height = 13
        Caption = 
          'Senha para Alterar o Tipo da Entrega do Pedido..................' +
          '...........:'
      end
      object G74: TSpeedButton
        Left = 629
        Top = 168
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G74Click
      end
      object Label75: TLabel
        Left = 17
        Top = 192
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Notificar Venda com Estoque Minimo...................' +
          '.........:'
      end
      object G75: TSpeedButton
        Left = 629
        Top = 189
        Width = 20
        Height = 20
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G75Click
      end
      object PS56: TCheckBox
        Left = 414
        Top = 2
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS56Click
      end
      object S56: TEdit
        Left = 450
        Top = 0
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 1
        OnChange = S56Change
      end
      object C56: TEdit
        Left = 533
        Top = 0
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object PS57: TCheckBox
        Left = 414
        Top = 21
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS57Click
      end
      object S57: TEdit
        Left = 450
        Top = 21
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 4
        OnChange = S57Change
      end
      object C57: TEdit
        Left = 533
        Top = 21
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 5
      end
      object PS58: TCheckBox
        Left = 414
        Top = 42
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS58Click
      end
      object S58: TEdit
        Left = 450
        Top = 42
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 7
        OnChange = S58Change
      end
      object C58: TEdit
        Left = 533
        Top = 42
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 8
      end
      object PS59: TCheckBox
        Left = 414
        Top = 63
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = PS59Click
      end
      object S59: TEdit
        Left = 450
        Top = 63
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 10
        OnChange = S59Change
      end
      object C59: TEdit
        Left = 533
        Top = 63
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 11
      end
      object PS66: TCheckBox
        Left = 414
        Top = 84
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS66Click
      end
      object S66: TEdit
        Left = 450
        Top = 84
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 13
        OnChange = S66Change
      end
      object C66: TEdit
        Left = 533
        Top = 84
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 14
      end
      object cDiasBlqLic: TCurrencyEdit
        Left = 208
        Top = 80
        Width = 33
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = ' ,0;- ,0'
        TabOrder = 15
        OnExit = cDiasBlqLicExit
      end
      object PS67: TCheckBox
        Left = 414
        Top = 105
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnClick = PS67Click
      end
      object s67: TEdit
        Left = 450
        Top = 105
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 17
        OnChange = s67Change
      end
      object C67: TEdit
        Left = 533
        Top = 105
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 18
      end
      object PS69: TCheckBox
        Left = 415
        Top = 126
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnClick = PS69Click
      end
      object s69: TEdit
        Left = 451
        Top = 126
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 20
        OnChange = s69Change
      end
      object C69: TEdit
        Left = 534
        Top = 126
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 21
      end
      object PS73: TCheckBox
        Left = 416
        Top = 147
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
        OnClick = PS73Click
      end
      object S73: TEdit
        Left = 452
        Top = 147
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 23
        OnChange = S73Change
      end
      object C73: TEdit
        Left = 535
        Top = 147
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 24
      end
      object PS74: TCheckBox
        Left = 416
        Top = 169
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        OnClick = PS74Click
      end
      object S74: TEdit
        Left = 452
        Top = 169
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 26
        OnChange = S74Change
      end
      object C74: TEdit
        Left = 535
        Top = 169
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 27
      end
      object PS75: TCheckBox
        Left = 416
        Top = 190
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
        OnClick = PS75Click
      end
      object S75: TEdit
        Left = 452
        Top = 190
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 29
        OnChange = S75Change
      end
      object C75: TEdit
        Left = 535
        Top = 190
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 30
      end
    end
    object TsSenhasFrente: TTabSheet
      Caption = 'Senhas do SGE-FRENTE'
      ImageIndex = 1
      object Label14: TLabel
        Left = 16
        Top = 17
        Width = 405
        Height = 13
        Caption = 
          'Senha Para Emitir/Reemitir o NFCE...............................' +
          '....................'
      end
      object G08: TSpeedButton
        Left = 629
        Top = 17
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G08Click
      end
      object Label10: TLabel
        Left = 15
        Top = 44
        Width = 401
        Height = 13
        Caption = 
          'Senha para Excluir '#205'tem do Cupom Fiscal.........................' +
          '.................'
      end
      object G23: TSpeedButton
        Left = 629
        Top = 38
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G23Click
      end
      object Label11: TLabel
        Left = 15
        Top = 68
        Width = 399
        Height = 13
        Caption = 
          'Senha para Excluir Cupom Fiscal.................................' +
          '....................'
      end
      object G24: TSpeedButton
        Left = 629
        Top = 62
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G24Click
      end
      object Label50: TLabel
        Left = 15
        Top = 96
        Width = 398
        Height = 13
        Caption = 
          'Senha para Excluir '#205'tem da Comanda..............................' +
          '.................'
      end
      object G48: TSpeedButton
        Left = 629
        Top = 90
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G48Click
      end
      object Label51: TLabel
        Left = 16
        Top = 119
        Width = 396
        Height = 13
        Caption = 
          'Senha para Excluir Comanda......................................' +
          '....................'
      end
      object G49: TSpeedButton
        Left = 630
        Top = 113
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G49Click
      end
      object Label60: TLabel
        Left = 16
        Top = 142
        Width = 408
        Height = 13
        Caption = 
          'Senha para Efetuar Venda a Clientes Com mais de 29 dias s/Acerta' +
          'r.....'
      end
      object G65: TSpeedButton
        Left = 630
        Top = 136
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G65Click
      end
      object Label70: TLabel
        Left = 15
        Top = 164
        Width = 402
        Height = 13
        Caption = 
          'Senha Para Aceitar Click de Cancelamento do Pedido..............' +
          '..........'
      end
      object G70: TSpeedButton
        Left = 630
        Top = 160
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G70Click
      end
      object PS08: TCheckBox
        Left = 414
        Top = 14
        Width = 16
        Height = 21
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS08Click
      end
      object S08: TEdit
        Left = 450
        Top = 16
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 1
        OnChange = S08Change
      end
      object C08: TEdit
        Left = 533
        Top = 17
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object PS23: TCheckBox
        Left = 414
        Top = 42
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS23Click
      end
      object S23: TEdit
        Left = 450
        Top = 40
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 4
        OnChange = S23Change
      end
      object C23: TEdit
        Left = 533
        Top = 41
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 5
      end
      object PS24: TCheckBox
        Left = 414
        Top = 67
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS24Click
      end
      object S24: TEdit
        Left = 450
        Top = 64
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 7
        OnChange = S24Change
      end
      object C24: TEdit
        Left = 533
        Top = 64
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 8
      end
      object PS48: TCheckBox
        Left = 414
        Top = 94
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = PS48Click
      end
      object S48: TEdit
        Left = 450
        Top = 92
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 10
        OnChange = S48Change
      end
      object C48: TEdit
        Left = 533
        Top = 93
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 11
      end
      object PS49: TCheckBox
        Left = 415
        Top = 117
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS49Click
      end
      object S49: TEdit
        Left = 451
        Top = 115
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 13
        OnChange = S49Change
      end
      object C49: TEdit
        Left = 534
        Top = 116
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 14
      end
      object PS65: TCheckBox
        Left = 415
        Top = 140
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = PS65Click
      end
      object S65: TEdit
        Left = 451
        Top = 138
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 16
        OnChange = S65Change
      end
      object C65: TEdit
        Left = 534
        Top = 139
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 17
      end
      object PS70: TCheckBox
        Left = 416
        Top = 159
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = PS70Click
      end
      object S70: TEdit
        Left = 452
        Top = 161
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 19
        OnChange = S70Change
      end
      object C70: TEdit
        Left = 535
        Top = 162
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 20
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Senhas Relacionadas ao Financeiro'
      ImageIndex = 1
      object Label20: TLabel
        Left = 16
        Top = 9
        Width = 392
        Height = 13
        Caption = 
          'Senha para Baixar Duplicatas a Pagar/Cheques....................' +
          '..........'
      end
      object G14: TSpeedButton
        Left = 624
        Top = -1
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G14Click
      end
      object Label24: TLabel
        Left = 16
        Top = 31
        Width = 398
        Height = 13
        Caption = 
          'Senha para Ajustar o Caixa de Acordo com o Centro de Custo......' +
          '......'
      end
      object G18: TSpeedButton
        Left = 624
        Top = 22
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G18Click
      end
      object Label12: TLabel
        Left = 16
        Top = 53
        Width = 399
        Height = 13
        Caption = 
          'Senha para Realizar Contas por Sele'#231#227'o..........................' +
          '................'
      end
      object G25: TSpeedButton
        Left = 624
        Top = 46
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G25Click
      end
      object Label27: TLabel
        Left = 17
        Top = 76
        Width = 399
        Height = 13
        Caption = 
          'Senha para Transferir Lan'#231'amentos entre Contas..................' +
          '............'
      end
      object G26: TSpeedButton
        Left = 624
        Top = 68
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G26Click
      end
      object Label28: TLabel
        Left = 17
        Top = 97
        Width = 396
        Height = 13
        Caption = 
          'Senha para Acessar o Programa de Compensa'#231#227'o direto.............' +
          '......'
      end
      object G27: TSpeedButton
        Left = 624
        Top = 89
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G27Click
      end
      object Label45: TLabel
        Left = 18
        Top = 119
        Width = 407
        Height = 13
        Caption = 
          'Senha para Baixar Duplicatas a Receber/Cheques..................' +
          '............'
      end
      object G44: TSpeedButton
        Left = 624
        Top = 110
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G44Click
      end
      object Label47: TLabel
        Left = 17
        Top = 142
        Width = 403
        Height = 13
        Caption = 
          'Senha para Gerar Titulos Inexistentes Atrav'#233's do Pedido.........' +
          '...........'
      end
      object G45: TSpeedButton
        Left = 624
        Top = 131
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G45Click
      end
      object Label1: TLabel
        Left = 17
        Top = 161
        Width = 401
        Height = 13
        Caption = 
          'Senha p/Excluir Contas a Pagar/Receber mesmo que seja automatico' +
          '.'
      end
      object G50: TSpeedButton
        Left = 624
        Top = 153
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G50Click
      end
      object Label46: TLabel
        Left = 19
        Top = 182
        Width = 404
        Height = 13
        Caption = 
          'Senha para Excluir Lancamentos do Fluxo de Caixa................' +
          '............'
      end
      object G51: TSpeedButton
        Left = 624
        Top = 176
        Width = 23
        Height = 21
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G51Click
      end
      object Label52: TLabel
        Left = 19
        Top = 202
        Width = 397
        Height = 13
        Caption = 
          'Senha para Exportar Cheques / Financeiro e Finaceiro / Cheques..' +
          '....'
      end
      object G52: TSpeedButton
        Left = 624
        Top = 200
        Width = 23
        Height = 21
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G52Click
      end
      object G61: TSpeedButton
        Left = 624
        Top = 222
        Width = 23
        Height = 21
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G61Click
      end
      object Label61: TLabel
        Left = 19
        Top = 224
        Width = 398
        Height = 13
        Caption = 
          'Senha para Desbloquear Lan'#231'amentos Retroativos no Caixa.........' +
          '.....'
      end
      object Label71: TLabel
        Left = 19
        Top = 247
        Width = 401
        Height = 13
        Caption = 
          'Senha para apresentar saldo bancario............................' +
          '..................'
      end
      object G71: TSpeedButton
        Left = 624
        Top = 240
        Width = 23
        Height = 21
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G71Click
      end
      object PS14: TCheckBox
        Left = 414
        Top = 5
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS14Click
      end
      object S14: TEdit
        Left = 454
        Top = 3
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 1
        OnChange = S14Change
      end
      object C14: TEdit
        Left = 535
        Top = 3
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 2
      end
      object PS18: TCheckBox
        Left = 414
        Top = 27
        Width = 19
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS18Click
      end
      object S18: TEdit
        Left = 454
        Top = 25
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 4
        OnChange = S18Change
      end
      object C18: TEdit
        Left = 535
        Top = 25
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 5
      end
      object PS25: TCheckBox
        Left = 414
        Top = 49
        Width = 19
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS25Click
      end
      object S25: TEdit
        Left = 454
        Top = 47
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 7
        OnChange = S25Change
      end
      object C25: TEdit
        Left = 535
        Top = 47
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 8
      end
      object C26: TEdit
        Left = 536
        Top = 70
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 9
      end
      object S26: TEdit
        Left = 455
        Top = 70
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 10
        OnChange = S26Change
      end
      object PS26: TCheckBox
        Left = 415
        Top = 72
        Width = 19
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = PS26Click
      end
      object PS27: TCheckBox
        Left = 415
        Top = 93
        Width = 19
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS27Click
      end
      object S27: TEdit
        Left = 455
        Top = 91
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 13
        OnChange = S27Change
      end
      object C27: TEdit
        Left = 536
        Top = 91
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 14
      end
      object PS44: TCheckBox
        Left = 416
        Top = 115
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = PS44Click
      end
      object S44: TEdit
        Left = 456
        Top = 113
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 16
        OnChange = S44Change
      end
      object C44: TEdit
        Left = 537
        Top = 113
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 17
      end
      object PS45: TCheckBox
        Left = 416
        Top = 136
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = PS45Click
      end
      object S45: TEdit
        Left = 456
        Top = 134
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 19
        OnChange = S45Change
      end
      object C45: TEdit
        Left = 537
        Top = 134
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 20
      end
      object PS50: TCheckBox
        Left = 417
        Top = 158
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnClick = PS50Click
      end
      object S50: TEdit
        Left = 456
        Top = 155
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 22
        OnChange = S50Change
      end
      object C50: TEdit
        Left = 538
        Top = 156
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 23
      end
      object PS51: TCheckBox
        Left = 416
        Top = 179
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnClick = PS51Click
      end
      object S51: TEdit
        Left = 456
        Top = 176
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 25
        OnChange = S51Change
      end
      object C51: TEdit
        Left = 538
        Top = 177
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 26
      end
      object PS52: TCheckBox
        Left = 417
        Top = 199
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        OnClick = PS52Click
      end
      object S52: TEdit
        Left = 456
        Top = 197
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 28
        OnChange = S52Change
      end
      object C52: TEdit
        Left = 538
        Top = 198
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 29
      end
      object C61: TEdit
        Left = 538
        Top = 220
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 31
      end
      object S61: TEdit
        Left = 456
        Top = 219
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 30
        OnChange = S61Change
      end
      object PS61: TCheckBox
        Left = 417
        Top = 221
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 32
        OnClick = PS61Click
      end
      object PS71: TCheckBox
        Left = 416
        Top = 243
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
        OnClick = PS71Click
      end
      object S71: TEdit
        Left = 456
        Top = 240
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 34
        OnChange = S71Change
      end
      object C71: TEdit
        Left = 538
        Top = 241
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 35
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Senhas Diversas'
      ImageIndex = 2
      object Label7: TLabel
        Left = 16
        Top = 23
        Width = 403
        Height = 13
        Caption = 
          'Senha Para Ajustar Estoque de Mercadorias.......................' +
          '...............'
      end
      object Label6: TLabel
        Left = 16
        Top = 1
        Width = 396
        Height = 13
        Caption = 
          'Senha para Alterar Parametros do Sistema........................' +
          '...............'
      end
      object G05: TSpeedButton
        Left = 606
        Top = -3
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G05Click
      end
      object G06: TSpeedButton
        Left = 606
        Top = 21
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G06Click
      end
      object Label13: TLabel
        Left = 16
        Top = 46
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Restaurar Backups....................................' +
          '..................'
      end
      object G07: TSpeedButton
        Left = 607
        Top = 45
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G07Click
      end
      object Label15: TLabel
        Left = 16
        Top = 68
        Width = 397
        Height = 13
        Caption = 
          'Senha para Zerar o Estoque de Produtos..........................' +
          '...............'
      end
      object G09: TSpeedButton
        Left = 607
        Top = 68
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G09Click
      end
      object Label16: TLabel
        Left = 16
        Top = 92
        Width = 390
        Height = 13
        Caption = 
          'Para acessar o controle de Acessos dos Usu'#225'rios.................' +
          '..........'
      end
      object G10: TSpeedButton
        Left = 608
        Top = 90
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G10Click
      end
      object Label25: TLabel
        Left = 16
        Top = 119
        Width = 399
        Height = 13
        Caption = 
          'Senha Para Emitir Relat'#243'rios Gerenciais.........................' +
          '..................'
      end
      object G19: TSpeedButton
        Left = 608
        Top = 113
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G19Click
      end
      object Label26: TLabel
        Left = 15
        Top = 161
        Width = 402
        Height = 13
        Caption = 
          'Senha Para Realizar Fechamento Mensal...........................' +
          '...............'
      end
      object G20: TSpeedButton
        Left = 608
        Top = 157
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G20Click
      end
      object Label29: TLabel
        Left = 16
        Top = 183
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Mudar C'#243'digos de Produtos............................' +
          '..............'
      end
      object G28: TSpeedButton
        Left = 607
        Top = 177
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G28Click
      end
      object Label30: TLabel
        Left = 16
        Top = 140
        Width = 397
        Height = 13
        Caption = 
          'Senha Para Realizar Fechamento di'#225'rio...........................' +
          '................'
      end
      object G29: TSpeedButton
        Left = 608
        Top = 135
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G29Click
      end
      object Label32: TLabel
        Left = 16
        Top = 204
        Width = 393
        Height = 13
        Caption = 
          'Senha Para Excluir Giros/Rotas..................................' +
          '...................'
      end
      object G31: TSpeedButton
        Left = 608
        Top = 198
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G31Click
      end
      object Label38: TLabel
        Left = 17
        Top = 227
        Width = 397
        Height = 13
        Caption = 
          'Senha para Confirmar Trocas de Mercadorias......................' +
          '.............'
      end
      object G37: TSpeedButton
        Left = 608
        Top = 220
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G37Click
      end
      object Label39: TLabel
        Left = 19
        Top = 249
        Width = 395
        Height = 13
        Caption = 
          'Senha Para Excluir Trocas de Mercadorias........................' +
          '..............'
      end
      object G38: TSpeedButton
        Left = 608
        Top = 243
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G38Click
      end
      object Label40: TLabel
        Left = 19
        Top = 271
        Width = 394
        Height = 13
        Caption = 
          'Senha Para Alterar Data de Validade do Cadastro.................' +
          '...........'
      end
      object G39: TSpeedButton
        Left = 609
        Top = 265
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G39Click
      end
      object Label41: TLabel
        Left = 19
        Top = 292
        Width = 396
        Height = 13
        Caption = 
          'Senha Para Excluir Controle de Produ'#231#227'o.........................' +
          '...............'
      end
      object G40: TSpeedButton
        Left = 610
        Top = 286
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G40Click
      end
      object Label42: TLabel
        Left = 19
        Top = 313
        Width = 393
        Height = 13
        Caption = 
          'Senha Para Excluir dados do Sistema.............................' +
          '................'
      end
      object G41: TSpeedButton
        Left = 610
        Top = 307
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G41Click
      end
      object Label43: TLabel
        Left = 19
        Top = 334
        Width = 392
        Height = 13
        Caption = 
          'Senha Para Importar Al'#237'quotas de D'#233'bitos........................' +
          '..............'
      end
      object G42: TSpeedButton
        Left = 610
        Top = 328
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G42Click
      end
      object Label44: TLabel
        Left = 20
        Top = 354
        Width = 393
        Height = 13
        Caption = 
          'Senha Para Alterar Campos do Banco Direto(Atualizar Dados)......' +
          '.....'
      end
      object G43: TSpeedButton
        Left = 609
        Top = 349
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G43Click
      end
      object Label53: TLabel
        Left = 21
        Top = 374
        Width = 393
        Height = 13
        Caption = 
          'Senha para Transferir Estoque Prat/Dep/Rep e vice-versa.........' +
          '......'
      end
      object G53: TSpeedButton
        Left = 610
        Top = 370
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G53Click
      end
      object Label76: TLabel
        Left = 21
        Top = 394
        Width = 394
        Height = 13
        Caption = 
          'Senha para Liberar Documentos de Clientes Vencidos..............' +
          '........'
      end
      object G76: TSpeedButton
        Left = 610
        Top = 390
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G76Click
      end
      object PS05: TCheckBox
        Left = 414
        Top = 2
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS05Click
      end
      object PS06: TCheckBox
        Left = 414
        Top = 25
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS06Click
      end
      object S06: TEdit
        Left = 451
        Top = 25
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 4
        OnChange = S06Change
      end
      object S05: TEdit
        Left = 451
        Top = 3
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 1
        OnChange = S05Change
      end
      object C05: TEdit
        Left = 533
        Top = 3
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object C06: TEdit
        Left = 533
        Top = 25
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 5
      end
      object PS07: TCheckBox
        Left = 414
        Top = 46
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS07Click
      end
      object S07: TEdit
        Left = 451
        Top = 47
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 7
        OnChange = S07Change
      end
      object C07: TEdit
        Left = 533
        Top = 47
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 8
      end
      object PS09: TCheckBox
        Left = 414
        Top = 68
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = PS09Click
      end
      object S09: TEdit
        Left = 451
        Top = 69
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 10
        OnChange = S09Change
      end
      object C09: TEdit
        Left = 533
        Top = 69
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 11
      end
      object PS10: TCheckBox
        Left = 414
        Top = 93
        Width = 18
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS10Click
      end
      object S10: TEdit
        Left = 451
        Top = 91
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 13
        OnChange = S10Change
      end
      object C10: TEdit
        Left = 533
        Top = 91
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 14
      end
      object PS19: TCheckBox
        Left = 414
        Top = 115
        Width = 17
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = PS19Click
      end
      object S19: TEdit
        Left = 451
        Top = 113
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 19
        OnChange = S19Change
      end
      object C19: TEdit
        Left = 533
        Top = 113
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 20
      end
      object PS20: TCheckBox
        Left = 415
        Top = 159
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnClick = PS20Click
      end
      object S20: TEdit
        Left = 451
        Top = 155
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 22
        OnChange = S20Change
      end
      object C20: TEdit
        Left = 533
        Top = 155
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 23
      end
      object PS28: TCheckBox
        Left = 416
        Top = 181
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnClick = PS28Click
      end
      object S28: TEdit
        Left = 452
        Top = 177
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 25
        OnChange = S28Change
      end
      object C28: TEdit
        Left = 534
        Top = 177
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 26
      end
      object C29: TEdit
        Left = 534
        Top = 134
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 18
      end
      object S29: TEdit
        Left = 452
        Top = 134
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 16
        OnChange = S29Change
      end
      object PS29: TCheckBox
        Left = 414
        Top = 138
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = PS29Click
      end
      object PS31: TCheckBox
        Left = 416
        Top = 202
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        OnClick = PS31Click
      end
      object S31: TEdit
        Left = 452
        Top = 198
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 28
        OnChange = S31Change
      end
      object C31: TEdit
        Left = 534
        Top = 198
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 29
      end
      object PS37: TCheckBox
        Left = 415
        Top = 222
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
        OnClick = PS37Click
      end
      object S37: TEdit
        Left = 452
        Top = 221
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 31
        OnChange = S37Change
      end
      object C37: TEdit
        Left = 533
        Top = 220
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 32
      end
      object PS38: TCheckBox
        Left = 416
        Top = 246
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 33
        OnClick = PS38Click
      end
      object S38: TEdit
        Left = 453
        Top = 245
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 34
        OnChange = S38Change
      end
      object C38: TEdit
        Left = 533
        Top = 244
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 35
      end
      object PS39: TCheckBox
        Left = 416
        Top = 268
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 36
        OnClick = PS39Click
      end
      object S39: TEdit
        Left = 453
        Top = 267
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 37
        OnChange = S39Change
      end
      object C39: TEdit
        Left = 533
        Top = 266
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 38
      end
      object PS40: TCheckBox
        Left = 418
        Top = 289
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 39
        OnClick = PS40Click
      end
      object S40: TEdit
        Left = 453
        Top = 288
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 40
        OnChange = S40Change
      end
      object C40: TEdit
        Left = 533
        Top = 287
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 41
      end
      object PS41: TCheckBox
        Left = 418
        Top = 310
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 42
        OnClick = PS41Click
      end
      object S41: TEdit
        Left = 453
        Top = 309
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 43
        OnChange = S41Change
      end
      object C41: TEdit
        Left = 533
        Top = 308
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 44
      end
      object PS42: TCheckBox
        Left = 418
        Top = 331
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 45
        OnClick = PS42Click
      end
      object S42: TEdit
        Left = 453
        Top = 330
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 46
        OnChange = S42Change
      end
      object C42: TEdit
        Left = 533
        Top = 329
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 47
      end
      object PS43: TCheckBox
        Left = 418
        Top = 351
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 48
        OnClick = PS43Click
      end
      object S43: TEdit
        Left = 453
        Top = 350
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 49
        OnChange = S43Change
      end
      object C43: TEdit
        Left = 534
        Top = 349
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 50
      end
      object PS53: TCheckBox
        Left = 418
        Top = 371
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 51
        OnClick = PS53Click
      end
      object S53: TEdit
        Left = 453
        Top = 370
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 52
        OnChange = S53Change
      end
      object C53: TEdit
        Left = 534
        Top = 369
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 53
      end
      object PS76: TCheckBox
        Left = 418
        Top = 391
        Width = 17
        Height = 15
        Hint = 'Pede Senha se Marcado'#13#10'Caso Contrario n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 54
        OnClick = PS76Click
      end
      object S76: TEdit
        Left = 453
        Top = 390
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 55
        OnChange = S76Change
      end
      object C76: TEdit
        Left = 534
        Top = 389
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 56
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Senha Para Cadastros e Outros'
      ImageIndex = 3
      object Label17: TLabel
        Left = 18
        Top = 7
        Width = 398
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha para Alterar Pedido de Compra.............................' +
          '.................'
      end
      object G11: TSpeedButton
        Left = 627
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G11Click
      end
      object Label18: TLabel
        Left = 18
        Top = 32
        Width = 396
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha Para Excluir Pedido de Compra.............................' +
          '................'
      end
      object G12: TSpeedButton
        Left = 627
        Top = 25
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G12Click
      end
      object Label21: TLabel
        Left = 18
        Top = 56
        Width = 395
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha para Alterar/Excluir Cadastros Clientes/Fornec/Conv. Etc..' +
          '.....'
      end
      object G15: TSpeedButton
        Left = 627
        Top = 48
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G15Click
      end
      object Label22: TLabel
        Left = 18
        Top = 79
        Width = 397
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha Excluir altera'#231#245'es de Pre'#231'os de produtos ja Confirmados...' +
          '......'
      end
      object G16: TSpeedButton
        Left = 628
        Top = 69
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G16Click
      end
      object Label37: TLabel
        Left = 18
        Top = 102
        Width = 394
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha Para Fazer Manuten'#231#227'o no Cadastro de Empresa..............' +
          '.....'
      end
      object G36: TSpeedButton
        Left = 629
        Top = 94
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G36Click
      end
      object Label68: TLabel
        Left = 18
        Top = 124
        Width = 395
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha para Alterar o Status do Cliente..........................' +
          '..................'
      end
      object G68: TSpeedButton
        Left = 630
        Top = 116
        Width = 23
        Height = 22
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G68Click
      end
      object Label72: TLabel
        Left = 18
        Top = 149
        Width = 395
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'Senha Para Confirmar Pedido de Compra...........................' +
          '.............:'
      end
      object G72: TSpeedButton
        Left = 630
        Top = 144
        Width = 23
        Height = 19
        Hint = 'Gravar a Senha'#13#10'Digitada'
        Enabled = False
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
        OnClick = G72Click
      end
      object PS11: TCheckBox
        Left = 414
        Top = 7
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = PS11Click
      end
      object S11: TEdit
        Left = 448
        Top = 7
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 1
        OnChange = S11Change
      end
      object C11: TEdit
        Left = 534
        Top = 7
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 2
      end
      object PS12: TCheckBox
        Left = 414
        Top = 31
        Width = 16
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = PS12Click
      end
      object S12: TEdit
        Left = 448
        Top = 29
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 4
        OnChange = S12Change
      end
      object C12: TEdit
        Left = 534
        Top = 29
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 5
      end
      object PS15: TCheckBox
        Left = 414
        Top = 52
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = PS15Click
      end
      object S15: TEdit
        Left = 448
        Top = 50
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 7
        OnChange = S15Change
      end
      object C15: TEdit
        Left = 534
        Top = 50
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 8
      end
      object PS16: TCheckBox
        Left = 414
        Top = 75
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = PS16Click
      end
      object S16: TEdit
        Left = 448
        Top = 73
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 10
        OnChange = S16Change
      end
      object C16: TEdit
        Left = 534
        Top = 72
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 11
      end
      object PS36: TCheckBox
        Left = 414
        Top = 97
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PS36Click
      end
      object S36: TEdit
        Left = 447
        Top = 95
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 13
        OnChange = S36Change
      end
      object C36: TEdit
        Left = 534
        Top = 95
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 14
      end
      object PS68: TCheckBox
        Left = 415
        Top = 119
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = PS68Click
      end
      object S68: TEdit
        Left = 448
        Top = 117
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 16
        OnChange = S68Change
      end
      object C68: TEdit
        Left = 535
        Top = 117
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 17
      end
      object PS72: TCheckBox
        Left = 415
        Top = 144
        Width = 15
        Height = 17
        Hint = 'Pede Senha se Marcado'#13#10'Desmarcado n'#227'o Pede'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = PS72Click
      end
      object S72: TEdit
        Left = 448
        Top = 142
        Width = 70
        Height = 19
        Hint = 'Senha para Liberar/Acessar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 19
        OnChange = S72Change
      end
      object C72: TEdit
        Left = 535
        Top = 142
        Width = 70
        Height = 19
        Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = True
        TabOrder = 20
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 44
    Align = alTop
    TabOrder = 0
    object lbl_senMaster: TLabel
      Left = 16
      Top = 21
      Width = 172
      Height = 13
      Caption = 'Senha (MESTRE) libera tudo.:'
    end
    object G00: TSpeedButton
      Left = 626
      Top = 24
      Width = 23
      Height = 19
      Hint = 'Gravar a Senha'#13#10'Digitada'
      Enabled = False
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
      OnClick = G00Click
    end
    object lbl_usuario: TLabel
      Left = 17
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SB_AplicarTodos: TSpeedButton
      Left = 451
      Top = 3
      Width = 150
      Height = 19
      Hint = 'Manter a Mesma senha para'#13#10'Todos os '#205'tens'
      Caption = '&Aplicar em todos'
      Enabled = False
      Flat = True
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
      OnClick = SB_AplicarTodosClick
    end
    object S00: TEdit
      Left = 451
      Top = 21
      Width = 69
      Height = 19
      Hint = 'Senha para Liberar/Acessar'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 2
      OnChange = S00Change
      OnEnter = PC01Enter
    end
    object C00: TEdit
      Left = 531
      Top = 21
      Width = 70
      Height = 19
      Hint = 'Confirma'#231#227'o da '#13#10'Senha Digitada'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 3
      OnEnter = PC01Enter
    end
    object MCODUSR: TEdit
      Left = 72
      Top = 1
      Width = 64
      Height = 19
      Hint = 
        'Digite o C'#243'digo do Usu'#225'rio que '#13#10'vai liberar o acesso, ou pressi' +
        'one'#13#10'uma tecla para consultar o nome'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = MCODUSRExit
      OnKeyPress = MCODUSRKeyPress
    end
    object NOMUSR: TEdit
      Left = 135
      Top = 1
      Width = 317
      Height = 19
      TabStop = False
      Color = 16762081
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 44
    Width = 743
    Height = 17
    Sections = <
      item
        ImageIndex = -1
        Text = 'Senha a Alterar'
        Width = 400
      end
      item
        ImageIndex = -1
        Text = 'Critica'
        Width = 50
      end
      item
        ImageIndex = -1
        Text = '  Nova  '
        Width = 80
      end
      item
        ImageIndex = -1
        Text = 'Confirma'#231#227'o'
        Width = 85
      end
      item
        ImageIndex = -1
        Text = 'Gravar'
        Width = 55
      end>
  end
end
