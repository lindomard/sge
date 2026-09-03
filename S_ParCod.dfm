object Frm_ParCod: TFrm_ParCod
  Left = 233
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Parametros de C'#243'digos Diversos'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 185
    Top = 0
    Width = 343
    Height = 337
    Align = alClient
    Caption = 'C'#243'digo'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 96
      Width = 88
      Height = 13
      Caption = 'Pr'#243'ximo C'#243'digo.....'
    end
    object Label2: TLabel
      Left = 169
      Top = 96
      Width = 35
      Height = 13
      Caption = 'D'#237'gito..'
    end
    object lbl_desctab: TLabel
      Left = 2
      Top = 15
      Width = 339
      Height = 60
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tabela de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object CODIGO: TEdit
      Left = 97
      Top = 91
      Width = 70
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'CODIGO'
      OnChange = CODIGOChange
      OnExit = CODIGOExit
    end
    object DIG: TEdit
      Left = 206
      Top = 91
      Width = 30
      Height = 19
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
      Text = 'DIG'
    end
    object gb_status: TGroupBox
      Left = 12
      Top = 127
      Width = 185
      Height = 167
      Caption = 'Bloquear  Vendas'
      TabOrder = 2
      object cb_status01: TCheckBox
        Left = 10
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Status 01'
        TabOrder = 0
        OnClick = cb_status01Click
      end
      object cb_status02: TCheckBox
        Left = 10
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Status 02'
        TabOrder = 1
        OnClick = cb_status01Click
      end
      object cb_status03: TCheckBox
        Left = 10
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Status 03'
        TabOrder = 2
        OnClick = cb_status01Click
      end
      object cb_status04: TCheckBox
        Left = 10
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Status 04'
        TabOrder = 3
        OnClick = cb_status01Click
      end
      object cb_status05: TCheckBox
        Left = 10
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Status 05'
        TabOrder = 4
        OnClick = cb_status01Click
      end
      object cb_status06: TCheckBox
        Left = 10
        Top = 97
        Width = 97
        Height = 17
        Caption = 'Status 06'
        TabOrder = 5
        OnClick = cb_status01Click
      end
      object cb_status07: TCheckBox
        Left = 10
        Top = 113
        Width = 97
        Height = 17
        Caption = 'Status 07'
        TabOrder = 6
        OnClick = cb_status01Click
      end
      object cb_status08: TCheckBox
        Left = 10
        Top = 128
        Width = 97
        Height = 17
        Caption = 'Status 08'
        TabOrder = 7
        OnClick = cb_status01Click
      end
      object cb_status09: TCheckBox
        Left = 10
        Top = 144
        Width = 97
        Height = 17
        Caption = 'Status 09'
        TabOrder = 8
        OnClick = cb_status01Click
      end
    end
    object bbSalvar: TBitBtn
      Left = 16
      Top = 298
      Width = 135
      Height = 37
      Caption = 'Sal&var'
      Enabled = False
      TabOrder = 3
      OnClick = bbSalvarClick
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
    object bbSair: TBitBtn
      Left = 189
      Top = 298
      Width = 135
      Height = 37
      Caption = '&Sair'
      TabOrder = 4
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
  end
  object rg_tabelas: TRadioGroup
    Left = 0
    Top = 0
    Width = 185
    Height = 337
    Align = alLeft
    Caption = 'Tabelas'
    ItemIndex = 2
    Items.Strings = (
      'Bairros'
      'Cidades'
      'Clientes'
      'Conv'#234'nios'
      'Fornecedores'
      'Produtos'
      'Redes'
      'Funcionarios'
      'Grupo de Fornecedores'
      'Grupo de Produtos '
      'Vendedores')
    TabOrder = 1
    OnClick = rg_tabelasClick
    OnEnter = rg_tabelasEnter
  end
end
