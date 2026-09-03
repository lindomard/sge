object Frm_Fig_TelaCheia: TFrm_Fig_TelaCheia
  Left = 0
  Top = 114
  Width = 812
  Height = 501
  Caption = 'Visualizando imagens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClick = FormClick
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 444
    Width = 804
    Height = 26
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 320
      Top = 3
      Width = 39
      Height = 13
      Caption = 'Col Esq:'
    end
    object Label2: TLabel
      Left = 408
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Linha Superior:'
    end
    object Label3: TLabel
      Left = 528
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Col Direita:'
    end
    object Label4: TLabel
      Left = 629
      Top = 3
      Width = 64
      Height = 13
      Caption = 'Linha Inferior:'
    end
    object sbnPadrao: TSpeedButton
      Left = 750
      Top = -2
      Width = 38
      Height = 22
      Caption = 'Padr'#227'o'
      OnClick = sbnPadraoClick
    end
    object CB_TAMORI: TCheckBox
      Left = 8
      Top = 7
      Width = 209
      Height = 17
      Caption = 'Tamanho Original'
      TabOrder = 0
      OnClick = CB_TAMORIClick
    end
    object bbFechar: TBitBtn
      Left = 888
      Top = 2
      Width = 122
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bbFecharClick
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
    object bbImpProposta: TBitBtn
      Left = 183
      Top = 4
      Width = 121
      Height = 20
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbImpPropostaClick
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
    object edt_col_esquerda: TEdit
      Left = 363
      Top = 1
      Width = 40
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = '10'
    end
    object edt_linha_Superior: TEdit
      Left = 484
      Top = 1
      Width = 40
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = '10'
    end
    object edt_col_Direita: TEdit
      Left = 582
      Top = 1
      Width = 40
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = '100'
    end
    object edt_linha_inferior: TEdit
      Left = 708
      Top = 1
      Width = 40
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = '100'
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 804
    Height = 444
    Align = alClient
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 800
      Height = 440
      Align = alClient
      AutoSize = True
      Stretch = True
    end
  end
  object PrintDialog: TPrintDialog
    Left = 528
    Top = 320
  end
end
