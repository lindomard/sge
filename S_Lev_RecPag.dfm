object Frm_Lev_RecPag: TFrm_Lev_RecPag
  Left = 122
  Top = 139
  Width = 413
  Height = 222
  Caption = 'Levantamento Financeiro(Resumido)'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 150
    Align = alClient
    TabOrder = 0
    object Label6: TLabel
      Left = 12
      Top = 15
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label7: TLabel
      Left = 247
      Top = 14
      Width = 8
      Height = 13
      Caption = #224
    end
    object MDT1: TMaskEdit
      Left = 125
      Top = 12
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 291
      Top = 12
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object RGTD: TRadioGroup
      Left = 7
      Top = 37
      Width = 124
      Height = 79
      Hint = 'Filtra duplicatas Pagas, em aberta '#13#10'ou lista todas'
      Caption = 'Listar duplicatas:'
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        '&Todas'
        '&Pagas'
        '&N'#227'o Pagas')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object RG_TIPORES: TRadioGroup
      Left = 247
      Top = 37
      Width = 124
      Height = 79
      Hint = 'Qual a modalidade '#13#10'do resumo'
      Caption = 'Tipo de Resumo:'
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Diario'
        'Mensal'
        'Anual')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object CB_CHQBAI: TCheckBox
      Left = 9
      Top = 120
      Width = 192
      Height = 17
      Caption = 'Listar Tambem Cheques baixados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 150
    Width = 405
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 1
      Width = 150
      Height = 40
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 223
      Top = 1
      Width = 150
      Height = 40
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object Qr_LDR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  DESCMV as grupo, VALORR as TOTRECAB, VALORP as TOTAPAG'
      ',VALORP as TOTCHQ'
      'from CADLDR'
      'where CODEMP is null')
    Left = 192
    Top = 56
    object Qr_LDRTOTRECAB: TFloatField
      FieldName = 'TOTRECAB'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Qr_LDRTOTAPAG: TFloatField
      FieldName = 'TOTAPAG'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LDRTOTCHQ: TFloatField
      FieldName = 'TOTCHQ'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LDRGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 50
    end
  end
end
