object Frm_NFE_Inutilizar: TFrm_NFE_Inutilizar
  Left = 32
  Top = 142
  Width = 610
  Height = 216
  Caption = 'Inutilizar Nota Fiscal Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 75
    Width = 54
    Height = 13
    Caption = 'Serie NF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 185
    Top = 73
    Width = 85
    Height = 13
    Caption = 'N'#250'mero inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 93
    Width = 21
    Height = 13
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 205
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 111
    Width = 43
    Height = 13
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 377
    Top = 73
    Width = 79
    Height = 13
    Caption = 'N'#250'mero Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 41
    Align = alTop
    Caption = 'INUTILIZAR NOTAS FISCAIS (NFe)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_serienf: TEdit
    Left = 75
    Top = 70
    Width = 86
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object edt_numnf_ini: TEdit
    Left = 279
    Top = 70
    Width = 86
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object edt_uf: TEdit
    Left = 75
    Top = 88
    Width = 86
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object edt_ano: TEdit
    Left = 235
    Top = 88
    Width = 86
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object edt_motivo: TEdit
    Left = 75
    Top = 106
    Width = 513
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
  end
  object bbInutilizar: TBitBtn
    Left = 45
    Top = 132
    Width = 131
    Height = 38
    Caption = 'Inutilizar Agora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = bbInutilizarClick
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
  object bbsair: TBitBtn
    Left = 443
    Top = 132
    Width = 131
    Height = 38
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = bbsairClick
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
  object cb_modelo: TComboBox
    Left = 75
    Top = 48
    Width = 86
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = '55'
    Items.Strings = (
      '55'
      '65')
  end
  object edt_numnf_final: TEdit
    Left = 471
    Top = 70
    Width = 86
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
  end
end
