object Frm_NFCE_Duplicada: TFrm_NFCE_Duplicada
  Left = 0
  Top = 0
  Width = 739
  Height = 300
  Caption = 'Erro com possivel corre'#231#227'o no NFCE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 731
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Erro no NFCE com possivel corre'#231#227'o'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 34
    Width = 731
    Height = 105
    Align = alTop
    Caption = 'Irregularidade Encontrada:'
    TabOrder = 0
    object Memo_motivo: TMemo
      Left = 2
      Top = 15
      Width = 727
      Height = 88
      TabStop = False
      Align = alClient
      Alignment = taCenter
      Lines.Strings = (
        'Status: 539'
        
          'Motivo: Rejeicao: Duplicidade de NF-e, com diferenca na Chave de' +
          ' Acesso')
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 139
    Width = 731
    Height = 94
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 31
      Top = 46
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero Emitido:'
    end
    object Label3: TLabel
      Left = 224
      Top = 47
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Novo N'#250'mero:'
    end
    object Label4: TLabel
      Left = 30
      Top = 23
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'S'#233'rie Emitido:'
    end
    object Label5: TLabel
      Left = 221
      Top = 24
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nova S'#233'rie:'
    end
    object Label6: TLabel
      Left = 31
      Top = 7
      Width = 89
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave de Acesso:'
    end
    object Label7: TLabel
      Left = 560
      Top = 7
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNF:'
    end
    object edt_numnf_ant: TEdit
      Left = 126
      Top = 45
      Width = 91
      Height = 19
      TabStop = False
      Color = 15125759
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = '500'
    end
    object edt_numnf_novo: TEdit
      Left = 317
      Top = 44
      Width = 91
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = '500'
      OnExit = edt_numnf_novoExit
    end
    object edt_serie_ant: TSpinEdit
      Left = 126
      Top = 22
      Width = 39
      Height = 22
      TabStop = False
      Color = 15125759
      Ctl3D = False
      MaxValue = 899
      MinValue = 1
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      Value = 1
    end
    object edt_serie_nova: TSpinEdit
      Left = 317
      Top = 23
      Width = 39
      Height = 22
      Ctl3D = False
      MaxValue = 899
      MinValue = 1
      ParentCtl3D = False
      TabOrder = 1
      Value = 1
    end
    object GRAVAR: TBitBtn
      Left = 416
      Top = 21
      Width = 140
      Height = 43
      Hint = 'Grava o registro atual'
      Caption = 'Salvar e Tentar Enviar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = GRAVARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 568
      Top = 22
      Width = 140
      Height = 43
      Hint = 'Sair da Tela Atual'
      Caption = 'Cancelar Venda'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object edt_ch_Acesso: TEdit
      Left = 126
      Top = 4
      Width = 429
      Height = 19
      TabStop = False
      Color = 15125759
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
      Text = '500'
      OnExit = edt_numnf_novoExit
    end
    object edt_cnf_ant: TEdit
      Left = 607
      Top = 5
      Width = 100
      Height = 19
      TabStop = False
      Color = 15125759
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
      Text = '500'
      OnExit = edt_numnf_novoExit
    end
  end
end
