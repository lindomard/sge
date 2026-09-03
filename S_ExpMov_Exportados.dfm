object Frm_ExpMov_Exportados: TFrm_ExpMov_Exportados
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  ActiveControl = GroupBox3
  Caption = 'Dados Exportados'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 45
    Width = 536
    Height = 119
    Align = alTop
    Caption = 'Arquivos Exportados:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 14
      Width = 534
      Height = 104
      Align = alClient
      DataSource = Src_Imp
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'EXP_CODEMP_ORI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_TIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_EMPRESA'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 164
    Width = 536
    Height = 136
    Align = alClient
    Caption = 'Tabelas Exportadas:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 14
      Width = 534
      Height = 121
      Align = alClient
      DataSource = Src_TabImp
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'EXP_TABEXP'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_QTDREG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_DESTINF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_EMPRESA'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_TABGER'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXP_PASTA'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object bbSair: TBitBtn
      Left = 165
      Top = 2
      Width = 196
      Height = 36
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
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 536
    Height = 45
    Align = alTop
    Caption = 'Pesquisar:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Pesquisar por:'
    end
    object cb_tppesq: TComboBox
      Left = 79
      Top = 13
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnExit = cb_tppesqExit
      Items.Strings = (
        'Data'
        'N'#250'mero do Lote')
    end
    object bbPesquisar: TBitBtn
      Left = 445
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = bbPesquisarClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
    object campo: TMaskEdit
      Left = 227
      Top = 14
      Width = 215
      Height = 19
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = campoExit
    end
  end
  object Tb_Exp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select EXP_CODEMP_ORI,EXP_TIPO,EXP_LOTE,EXP_DATA,EXP_EMPRESA'
      'from CADEXPDAD'
      'group by EXP_CODEMP_ORI,EXP_TIPO,EXP_LOTE,EXP_DATA,EXP_EMPRESA'
      'order by EXP_DATA,EXP_CODEMP_ORI')
    Left = 40
    Top = 16
    object Tb_ExpEXP_CODEMP_ORI: TFloatField
      DisplayLabel = 'Empresa Origem'
      FieldName = 'EXP_CODEMP_ORI'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_CODEMP_ORI'
    end
    object Tb_ExpEXP_TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'EXP_TIPO'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_TIPO'
    end
    object Tb_ExpEXP_LOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'EXP_LOTE'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_LOTE'
    end
    object Tb_ExpEXP_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EXP_DATA'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_DATA'
    end
    object Tb_ExpEXP_EMPRESA: TStringField
      DisplayLabel = 'Empresas'
      FieldName = 'EXP_EMPRESA'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_EMPRESA'
      Size = 60
    end
  end
  object Src_Imp: TDataSource
    DataSet = Tb_Exp
    OnDataChange = Src_ImpDataChange
    Left = 72
    Top = 24
  end
  object Tb_TabExp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *'
      'from CADEXPDAD'
      'order by  EXP_DATA,EXP_CODEMP_ORI')
    Left = 168
    Top = 8
    object Tb_TabExpEXP_CODEMP_ORI: TFloatField
      DisplayLabel = 'Empresa Origem'
      FieldName = 'EXP_CODEMP_ORI'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_CODEMP_ORI'
    end
    object Tb_TabExpEXP_TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'EXP_TIPO'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_TIPO'
    end
    object Tb_TabExpEXP_LOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'EXP_LOTE'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_LOTE'
    end
    object Tb_TabExpEXP_DESTINF: TFloatField
      DisplayLabel = 'Destino'
      FieldName = 'EXP_DESTINF'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_DESTINF'
    end
    object Tb_TabExpEXP_PASTA: TStringField
      DisplayLabel = 'Pasta'
      FieldName = 'EXP_PASTA'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_PASTA'
      Size = 120
    end
    object Tb_TabExpEXP_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'EXP_DATA'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_DATA'
    end
    object Tb_TabExpEXP_EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EXP_EMPRESA'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_EMPRESA'
      Size = 60
    end
    object Tb_TabExpEXP_TABEXP: TStringField
      DisplayLabel = 'Tabela exporta'#231#227'o'
      FieldName = 'EXP_TABEXP'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_TABEXP'
      Size = 60
    end
    object Tb_TabExpEXP_TABGER: TStringField
      DisplayLabel = 'Tabela Gerada'
      FieldName = 'EXP_TABGER'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_TABGER'
      Size = 60
    end
    object Tb_TabExpEXP_QTDREG: TFloatField
      DisplayLabel = 'Qtd.Registros'
      FieldName = 'EXP_QTDREG'
      Origin = 'SG_ASSOC.CADEXPDAD.EXP_QTDREG'
    end
  end
  object Src_TabImp: TDataSource
    DataSet = Tb_TabExp
    Left = 200
    Top = 8
  end
end
