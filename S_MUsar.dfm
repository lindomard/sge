object Frm_Musar: TFrm_Musar
  Left = 192
  Top = 104
  Width = 544
  Height = 243
  Caption = 'Imprimir Informa'#231#245'es Sobre o Produto'
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
  object Panel1: TPanel
    Left = 0
    Top = 176
    Width = 536
    Height = 33
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 303
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 381
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Limpar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 459
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 176
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 22
      Top = 17
      Width = 44
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 22
      Top = 38
      Width = 123
      Height = 13
      Caption = 'Nome do Produto.....:'
    end
    object Label3: TLabel
      Left = 21
      Top = 61
      Width = 70
      Height = 13
      Caption = 'Informa'#231#245'es'
    end
    object NOMCLI: TEdit
      Left = 147
      Top = 15
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = NOMCLIKeyPress
    end
    object MOD1: TEdit
      Left = 147
      Top = 55
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = MOD1KeyPress
    end
    object MOD2: TEdit
      Left = 147
      Top = 75
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = MOD2KeyPress
    end
    object MOD3: TEdit
      Left = 147
      Top = 96
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnKeyPress = MOD3KeyPress
    end
    object MOD4: TEdit
      Left = 147
      Top = 116
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnKeyPress = MOD4KeyPress
    end
    object MOD5: TEdit
      Left = 147
      Top = 137
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnKeyPress = MOD5KeyPress
    end
    object MOD6: TEdit
      Left = 148
      Top = 158
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnKeyPress = MOD6KeyPress
    end
    object NOMPRO: TEdit
      Left = 147
      Top = 35
      Width = 350
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = NOMPROKeyPress
    end
  end
end
