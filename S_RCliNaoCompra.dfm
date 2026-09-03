object Frm_RCliNaoCompra: TFrm_RCliNaoCompra
  Left = 170
  Top = 129
  Width = 649
  Height = 388
  Caption = 'Clientes sem compras no periodo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 41
    Top = 181
    Width = 134
    Height = 13
    Caption = 'Data Inicial.................'
  end
  object Label4: TLabel
    Left = 232
    Top = 183
    Width = 20
    Height = 13
    Caption = 'Ate'
  end
  object Label5: TLabel
    Left = 42
    Top = 13
    Width = 98
    Height = 13
    Caption = 'Cod. Cliente.......'
  end
  object Label26: TLabel
    Left = 42
    Top = 51
    Width = 87
    Height = 13
    Caption = 'Vendedor........'
  end
  object Label1: TLabel
    Left = 45
    Top = 203
    Width = 81
    Height = 13
    Caption = 'Separado por:'
  end
  object Label10: TLabel
    Left = 75
    Top = 125
    Width = 44
    Height = 13
    Caption = 'Cidade:'
  end
  object MDT1: TMaskEdit
    Left = 127
    Top = 179
    Width = 90
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 259
    Top = 179
    Width = 89
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object bbImprimir: TBitBtn
    Left = 383
    Top = 289
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Hint = 'Impressao'
    Caption = '&Impressao'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
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
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 499
    Top = 289
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Hint = 'Sair'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
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
  object CODCLI: TEdit
    Left = 127
    Top = 8
    Width = 62
    Height = 19
    Hint = 'Informe Codigo do Cliente ou '#13#10'Tecle Uma Letra P/ Consultar'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object lbx_codcli: TListBox
    Left = 187
    Top = 8
    Width = 422
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyDown = lbx_codcliKeyDown
  end
  object OMITIR_CLI: TCheckBox
    Left = 127
    Top = 30
    Width = 56
    Height = 17
    Hint = 'Omitir se  Marcado nao sera impresso os selecionados'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object CB_SITUACAO: TCheckListBox
    Left = 445
    Top = 197
    Width = 165
    Height = 57
    Color = 16776176
    Columns = 1
    ItemHeight = 13
    Items.Strings = (
      'Normal'
      'Bloqueados Temporario'
      'Bloqueados Definitivo'
      'Todos')
    Style = lbOwnerDrawFixed
    TabOrder = 12
    OnClick = CB_SITUACAOClick
  end
  object StaticText11: TStaticText
    Left = 445
    Top = 180
    Width = 165
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Situacao'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 13
  end
  object CODVEN: TEdit
    Left = 127
    Top = 49
    Width = 62
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnExit = CODVENExit
    OnKeyPress = CODVENKeyPress
  end
  object lbx_codven: TListBox
    Left = 187
    Top = 49
    Width = 422
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnKeyDown = lbx_codvenKeyDown
  end
  object OMITIR_VEN: TCheckBox
    Left = 127
    Top = 69
    Width = 51
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object cb_separar: TComboBox
    Left = 127
    Top = 199
    Width = 314
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    TabOrder = 14
    Text = 'Sem Separar'
    Items.Strings = (
      'Bairro'
      'Cidade'
      'Ramo de Clientes'
      'Rede de Clientes'
      'Sem Separar'
      'UF'
      'Vendedor 01'
      'Vendedor 02'
      'Vendedor 03'
      'Vendedor 04')
  end
  object lbl_codred: TStaticText
    Left = 24
    Top = 87
    Width = 102
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Rede de Clientes:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object CODRED: TEdit
    Left = 127
    Top = 86
    Width = 61
    Height = 19
    Hint = 'Digite o C'#243'digo Desejado'
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    OnExit = CODREDExit
    OnKeyPress = CODREDKeyPress
  end
  object lbx_codred: TListBox
    Left = 187
    Top = 86
    Width = 422
    Height = 39
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnKeyDown = lbx_codredKeyDown
  end
  object OMITIR_RED: TCheckBox
    Left = 127
    Top = 107
    Width = 53
    Height = 17
    Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object CODLOC: TEdit
    Left = 127
    Top = 124
    Width = 61
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnExit = CODLOCExit
    OnKeyPress = CODLOCKeyPress
  end
  object lbx_codloc: TListBox
    Left = 187
    Top = 124
    Width = 422
    Height = 39
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnKeyDown = lbx_codlocKeyDown
  end
  object OMITIR_LOC: TCheckBox
    Left = 127
    Top = 145
    Width = 57
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
  end
  object cb_orcamento: TCheckBox
    Left = 46
    Top = 224
    Width = 345
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Listar Somente os que fizeram orcamentos no periodo'
    TabOrder = 20
  end
  object GroupBox1: TGroupBox
    Left = 45
    Top = 267
    Width = 321
    Height = 47
    Caption = 'Clientes Incluso:'
    TabOrder = 21
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 15
      Height = 13
      Caption = 'de'
    end
    object Label7: TLabel
      Left = 152
      Top = 19
      Width = 19
      Height = 13
      Caption = 'at'#233
    end
    object edt_datinc_ini: TDateEdit
      Left = 28
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datinc_fin: TDateEdit
      Left = 181
      Top = 14
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
