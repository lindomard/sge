object Frm_IndMpUtil: TFrm_IndMpUtil
  Left = 192
  Top = 114
  Width = 745
  Height = 314
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Produtos Fabricados em um determinado Per'#237'odo'
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
    Width = 729
    Height = 68
    Align = alTop
    Alignment = taCenter
    Caption = 
      'Relat'#243'rio de Mat'#233'rias Primas Utilizadas no Processo de Fabrica'#231#227 +
      'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 102
    Top = 90
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo  de'
  end
  object Label3: TLabel
    Left = 282
    Top = 91
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label8: TLabel
    Left = 62
    Top = 106
    Width = 49
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 88
    Top = 149
    Width = 81
    Height = 13
    Caption = 'Separado por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MDT1: TMaskEdit
    Left = 170
    Top = 87
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 344
    Top = 87
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbImprimir: TBitBtn
    Left = 17
    Top = 185
    Width = 150
    Height = 50
    Caption = '&Imprimir'
    TabOrder = 7
    OnClick = bbImprimirClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 375
    Top = 185
    Width = 150
    Height = 50
    Caption = '&Sair'
    TabOrder = 8
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
  object CODPRO: TEdit
    Left = 115
    Top = 105
    Width = 56
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnExit = CODPROExit
    OnKeyPress = CODPROKeyPress
  end
  object lbx_codpro: TListBox
    Left = 170
    Top = 105
    Width = 360
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnKeyDown = lbx_codproKeyDown
  end
  object OMITIR_PRO: TCheckBox
    Left = 115
    Top = 125
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object cb_separado: TComboBox
    Left = 170
    Top = 146
    Width = 336
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 4
    Sorted = True
    TabOrder = 5
    Text = 'Sem Separar'
    Items.Strings = (
      'Ano'
      'Chave da OP'
      'Data'
      'Mes/Ano'
      'Sem Separar')
  end
  object rg_status: TRadioGroup
    Left = 544
    Top = 104
    Width = 105
    Height = 105
    Caption = 'Status'
    ItemIndex = 1
    Items.Strings = (
      'Pendentes'
      'Confirmadas'
      'Todas')
    TabOrder = 6
  end
  object Qr_OP03: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select sum(OP3_QTDUTIL) as OP3_QTDUTIL,sum(OP3_QTDPREV) as OP3_Q' +
        'TDPREV,'
      '       sum(OP3_PU*OP3_QTDPREV) as VLRPREV,'
      '       sum(OP3_PU*OP3_QTDUTIL) as VLRUTIL,'
      '       OP3_CODMAT,OP3_NUMERO, PDNOME, PDUND'
      '       from CADOP01,CADOP03,CADPRO'
      '       where OP3_CODEMP=OP1_CODEMP'
      '       and   OP3_LOTSEQ=OP1_LOTSEQ'
      '       and   OP3_FABENV=OP1_FABENV'
      '       and   OP3_CODIGO=OP1_CODIGO'
      'group by  OP3_CODMAT,OP3_NUMERO, PDNOME, PDUND')
    Left = 24
    Top = 48
    object Qr_OP03OP3_QTDUTIL: TFloatField
      FieldName = 'OP3_QTDUTIL'
    end
    object Qr_OP03OP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
    end
    object Qr_OP03VLRPREV: TFloatField
      FieldName = 'VLRPREV'
    end
    object Qr_OP03VLRUTIL: TFloatField
      FieldName = 'VLRUTIL'
    end
    object Qr_OP03OP3_CODMAT: TFloatField
      FieldName = 'OP3_CODMAT'
    end
    object Qr_OP03OP3_NUMERO: TStringField
      FieldName = 'OP3_NUMERO'
    end
    object Qr_OP03PDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_OP03PDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_OP03GRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
  end
end
