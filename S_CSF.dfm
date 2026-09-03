object Frm_CSF: TFrm_CSF
  Left = 169
  Top = 119
  Width = 497
  Height = 324
  Caption = 'Inclui dados para emiss'#227'o de cupom fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 12
    Width = 102
    Height = 13
    Caption = 'Chave do Pedido:'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 13
    Top = 36
    Width = 84
    Height = 13
    Caption = 'Razao Social.:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 13
    Top = 57
    Width = 82
    Height = 13
    Caption = 'Denomina'#231#227'o:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 13
    Top = 82
    Width = 75
    Height = 13
    Caption = 'Endere'#231'o....:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 13
    Top = 108
    Width = 38
    Height = 13
    Caption = 'Bairro:'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 13
    Top = 130
    Width = 44
    Height = 13
    Caption = 'Cidade:'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 13
    Top = 156
    Width = 33
    Height = 13
    Caption = 'CEP.:'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 263
    Top = 155
    Width = 55
    Height = 13
    Caption = 'Telefone:'
    FocusControl = DBEdit9
  end
  object Label2: TLabel
    Left = 389
    Top = 130
    Width = 44
    Height = 13
    Caption = 'Estado:'
    FocusControl = DBEdit2
  end
  object Label10: TLabel
    Left = 13
    Top = 180
    Width = 40
    Height = 13
    Caption = 'CNPJ.:'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 13
    Top = 202
    Width = 57
    Height = 13
    Caption = 'Inscri'#231#227'o:'
    FocusControl = DBEdit11
  end
  object DBEdit1: TDBEdit
    Left = 113
    Top = 8
    Width = 57
    Height = 21
    Ctl3D = True
    DataField = 'CFCHAVEP'
    DataSource = DM1.Src_CSF
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 240
    Width = 115
    Height = 50
    Caption = '&Gravar e Sair'
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 368
    Top = 240
    Width = 115
    Height = 50
    Caption = '&Sair sem Gravar'
    TabOrder = 2
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 175
    Top = 2
    Width = 185
    Height = 29
    Caption = 'Tipo de Pessoa:'
    Columns = 2
    DataField = 'CFTIPOC'
    DataSource = DM1.Src_CSF
    Items.Strings = (
      '&F'#237'sica'
      '&Jur'#237'dica')
    TabOrder = 3
    Values.Strings = (
      '0'
      '1')
    OnChange = DBRadioGroup1Change
  end
  object DBEdit3: TDBEdit
    Left = 113
    Top = 33
    Width = 365
    Height = 19
    Ctl3D = False
    DataField = 'CFRAZAO'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 113
    Top = 56
    Width = 365
    Height = 19
    Ctl3D = False
    DataField = 'CFDENOM'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 113
    Top = 80
    Width = 366
    Height = 19
    Ctl3D = False
    DataField = 'CFENDER'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 113
    Top = 102
    Width = 199
    Height = 19
    Ctl3D = False
    DataField = 'CFBAIRRO'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 113
    Top = 125
    Width = 199
    Height = 19
    Ctl3D = False
    DataField = 'CFCIDADE'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 113
    Top = 148
    Width = 104
    Height = 19
    Ctl3D = False
    DataField = 'CFCEP'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 337
    Top = 148
    Width = 144
    Height = 19
    Ctl3D = False
    DataField = 'CFFONE'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 10
  end
  object DBEdit2: TDBEdit
    Left = 449
    Top = 125
    Width = 30
    Height = 19
    Ctl3D = False
    DataField = 'CFUF'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 113
    Top = 171
    Width = 152
    Height = 19
    Ctl3D = False
    DataField = 'CFCGC'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 12
  end
  object DBEdit11: TDBEdit
    Left = 113
    Top = 194
    Width = 272
    Height = 19
    Ctl3D = False
    DataField = 'CFIE'
    DataSource = DM1.Src_CSF
    ParentCtl3D = False
    TabOrder = 13
  end
end
