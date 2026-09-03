object Frm_VlrPres: TFrm_VlrPres
  Left = 192
  Top = 104
  Width = 570
  Height = 172
  Caption = 'Calcula o valor de uma presta'#231#227'o em um determinado financiamento'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 104
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 12
      Width = 100
      Height = 13
      Caption = '&Valor Financiado:'
      FocusControl = VALOR
    end
    object Label2: TLabel
      Left = 15
      Top = 37
      Width = 113
      Height = 13
      Caption = 'Taxa de Juros/m'#234's:'
    end
    object Label3: TLabel
      Left = 15
      Top = 60
      Width = 141
      Height = 13
      Caption = 'Quantidade de Parcelas:'
    end
    object Label5: TLabel
      Left = 15
      Top = 80
      Width = 113
      Height = 13
      Caption = 'Valor da Presta'#231#227'o:'
    end
    object Label6: TLabel
      Left = 271
      Top = 83
      Width = 164
      Height = 13
      Caption = 'Valor total do financiamento:'
    end
    object VALOR: TEdit
      Left = 160
      Top = 11
      Width = 105
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = VALORExit
      OnKeyPress = VALORKeyPress
    end
    object TAXA: TEdit
      Left = 160
      Top = 33
      Width = 105
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = TAXAExit
      OnKeyPress = VALORKeyPress
    end
    object PARC: TEdit
      Left = 160
      Top = 55
      Width = 105
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = PARCKeyPress
    end
    object VALORP: TEdit
      Left = 160
      Top = 78
      Width = 105
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
    end
    object TOTFIN: TEdit
      Left = 440
      Top = 78
      Width = 105
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 562
    Height = 34
    Align = alClient
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 59
      Top = 7
      Width = 150
      Height = 25
      Caption = '&Calcular'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 266
      Top = 10
      Width = 150
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
