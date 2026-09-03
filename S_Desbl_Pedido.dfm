object Frm_Desbl_Pedido: TFrm_Desbl_Pedido
  Left = 192
  Top = 107
  Width = 652
  Height = 266
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Desbloquear Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 636
    Height = 44
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Este Programa desbloquea o pedido, '#233' usada quando esta se fazend' +
      'o uma altera'#231#227'o no pedido e ha queda de energia antes da altera'#231 +
      #227'o ser concluida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object bbDesbloquear: TBitBtn
    Left = 2
    Top = 157
    Width = 148
    Height = 43
    Caption = '&Desbloquear'
    TabOrder = 0
    OnClick = bbDesbloquearClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
      333333333F777773FF333333008888800333333377333F3773F3333077870787
      7033333733337F33373F3308888707888803337F33337F33337F330777880887
      7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
      7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
      0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
      03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
      033333337F73FF737F33B33B778000877333333373F777337333333B30888880
      33333333373FFFF73333333B3300000333333333337777733333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 421
    Top = 158
    Width = 148
    Height = 43
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
  object PC1: TPageControl
    Left = 0
    Top = 44
    Width = 636
    Height = 86
    ActivePage = ts_pedVda
    Align = alTop
    TabOrder = 2
    TabStop = False
    object ts_pedVda: TTabSheet
      Caption = 'Pedido de Vendas'
      object Label2: TLabel
        Left = 8
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label3: TLabel
        Left = 206
        Top = 2
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label4: TLabel
        Left = 395
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label5: TLabel
        Left = 22
        Top = 27
        Width = 38
        Height = 13
        Caption = 'Cliente.:'
      end
      object CHAVEPED: TEdit
        Left = 99
        Top = 1
        Width = 79
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = CHAVEPEDEnter
        OnExit = CHAVEPEDExit
      end
      object DATAP: TEdit
        Left = 290
        Top = 0
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object VALOR: TEdit
        Left = 431
        Top = -1
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object CLIENTE: TEdit
        Left = 71
        Top = 22
        Width = 466
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
    end
    object tsPedCpr: TTabSheet
      Caption = 'Pedido de Compra'
      ImageIndex = 1
      object Label6: TLabel
        Left = 8
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label7: TLabel
        Left = 206
        Top = 2
        Width = 77
        Height = 13
        Caption = 'Data do Pedido:'
      end
      object Label8: TLabel
        Left = 395
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label9: TLabel
        Left = 8
        Top = 27
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object PFOR_CHAVEPED: TEdit
        Left = 99
        Top = 1
        Width = 79
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = PFOR_CHAVEPEDEnter
        OnExit = PFOR_CHAVEPEDExit
      end
      object PFOR_DATAP: TEdit
        Left = 290
        Top = 0
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object PFOR_VALOR: TEdit
        Left = 431
        Top = -1
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object PFOR_RAZAO: TEdit
        Left = 71
        Top = 22
        Width = 466
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
    end
    object tsConhecimento: TTabSheet
      Caption = 'Conhecimento de Mercadorias'
      ImageIndex = 2
      object Label10: TLabel
        Left = 8
        Top = 4
        Width = 89
        Height = 13
        Caption = 'C'#243'digo Conhecim.:'
      end
      object Label11: TLabel
        Left = 206
        Top = 2
        Width = 26
        Height = 13
        Caption = 'Data:'
      end
      object Label12: TLabel
        Left = 395
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Valor:'
      end
      object Label13: TLabel
        Left = 10
        Top = 27
        Width = 81
        Height = 13
        Caption = 'Transportador(a):'
      end
      object CODCON: TEdit
        Left = 99
        Top = 1
        Width = 79
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = CODCONEnter
        OnExit = CODCONExit
      end
      object DATCON: TEdit
        Left = 290
        Top = 0
        Width = 92
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object VALCON: TEdit
        Left = 431
        Top = -1
        Width = 105
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
      end
      object NOMTRA: TEdit
        Left = 98
        Top = 22
        Width = 439
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 3
      end
    end
  end
end
