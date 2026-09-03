object Frm_Ped_ObsCli: TFrm_Ped_ObsCli
  Left = 27
  Top = 31
  Width = 736
  Height = 405
  VertScrollBar.Visible = False
  Caption = 'Observa'#231'ao do Cadastro de Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 225
    Align = alClient
    TabOrder = 0
    object lbl_nomcli: TLabel
      Left = 1
      Top = 1
      Width = 726
      Height = 58
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object lbl_endereco: TLabel
      Left = 1
      Top = 59
      Width = 726
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_fone: TLabel
      Left = 1
      Top = 88
      Width = 726
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_cidade: TLabel
      Left = 1
      Top = 117
      Width = 726
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_cnpj: TLabel
      Left = 1
      Top = 146
      Width = 726
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_vend: TLabel
      Left = 1
      Top = 175
      Width = 726
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GB_OBS: TGroupBox
    Left = 0
    Top = 225
    Width = 728
    Height = 105
    Align = alBottom
    Caption = 'Observa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbl_obs05: TLabel
      Left = 2
      Top = 67
      Width = 724
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_obs05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_obs04: TLabel
      Left = 2
      Top = 54
      Width = 724
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_obs03: TLabel
      Left = 2
      Top = 41
      Width = 724
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_obs02: TLabel
      Left = 2
      Top = 28
      Width = 724
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_obs01: TLabel
      Left = 2
      Top = 15
      Width = 724
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 330
    Width = 728
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object bbSair: TBitBtn
      Left = 536
      Top = 8
      Width = 170
      Height = 29
      Caption = '&Sair'
      TabOrder = 0
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
    object CB_LEITURA: TCheckBox
      Left = 15
      Top = 16
      Width = 360
      Height = 16
      Caption = '&Marcar este item para confirmar leitura da observa'#231#227'o'
      TabOrder = 1
    end
  end
end
