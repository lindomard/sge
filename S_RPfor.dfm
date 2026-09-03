object Frm_RPFor: TFrm_RPFor
  Left = 135
  Top = 140
  Width = 587
  Height = 244
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emite Relat'#243'rio de Pedido de Fornecedor Resumido'
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
    Left = 176
    Top = 59
    Width = 8
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 10
    Top = 63
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label5: TLabel
    Left = 6
    Top = 11
    Width = 73
    Height = 13
    Caption = 'Fornecedor.:'
  end
  object bbImprimir: TBitBtn
    Left = 16
    Top = 175
    Width = 153
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 8
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
    Left = 319
    Top = 176
    Width = 153
    Height = 25
    Caption = '&Sair'
    TabOrder = 9
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
  object RG_SIT: TRadioGroup
    Left = 10
    Top = 87
    Width = 262
    Height = 71
    Caption = 'Situa'#231#227'o dos Pedidos a Serem Listados:'
    ItemIndex = 2
    Items.Strings = (
      'Pendentes'
      'Confirmados'
      'Todos')
    TabOrder = 5
  end
  object MDT2: TMaskEdit
    Left = 196
    Top = 56
    Width = 77
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 4
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object MDT1: TMaskEdit
    Left = 84
    Top = 56
    Width = 77
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 3
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object CODFOR: TEdit
    Left = 81
    Top = 9
    Width = 54
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
  end
  object lbx_codfor: TListBox
    Left = 134
    Top = 9
    Width = 426
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnKeyDown = lbx_codforKeyDown
  end
  object OMITIR_FOR: TCheckBox
    Left = 81
    Top = 31
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object CLB_TIPOPFOR: TCheckListBox
    Left = 280
    Top = 79
    Width = 102
    Height = 79
    Color = 16776176
    Columns = 1
    Ctl3D = False
    ItemHeight = 18
    Items.Strings = (
      'Normal'
      'Bonificacao'
      'Complementar'
      'Todos')
    ParentCtl3D = False
    Style = lbOwnerDrawFixed
    TabOrder = 6
    OnClick = CLB_TIPOPFORClick
  end
  object ST_TIPOPFOR: TStaticText
    Left = 279
    Top = 58
    Width = 103
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Tipo de Pedido'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object rg_data: TRadioGroup
    Left = 392
    Top = 56
    Width = 171
    Height = 102
    Caption = ' Tipo de Data '
    ItemIndex = 0
    Items.Strings = (
      'Inclus'#227'o / Digita'#231#227'o'
      'Emiss'#227'o'
      'Entrada')
    TabOrder = 10
  end
  object Tb_Pfor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF1CHAVE,PF1CODFOR,PF1DATA,PF1TOTLIQ,PF1STATUS,FRAZAO, PF' +
        '1NUMNF'
      'from CADPF1,CADFOR'
      'where PF1CODEMP is null'
      'and FCODEMP=PF1CODEMP '
      'and FCODFOR=PF1CODFOR')
    Left = 360
    Top = 40
    object Tb_PforPF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Tb_PforPF1DATA: TDateTimeField
      FieldName = 'PF1DATA'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Tb_PforPF1TOTLIQ: TFloatField
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Tb_PforPF1STATUS: TFloatField
      FieldName = 'PF1STATUS'
      Origin = 'SG_ASSOC.CADPF1.PF1STATUS'
    end
    object Tb_PforFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Tb_PforPF1CHAVE: TFloatField
      FieldName = 'PF1CHAVE'
      Origin = 'SG_ASSOC.CADPF1.PF1CHAVE'
    end
    object Tb_PforPF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
  end
end
