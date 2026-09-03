object Frm_RMen: TFrm_RMen
  Left = 127
  Top = 109
  Width = 517
  Height = 317
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resumo Mensal detalhado por dia dos movimentos'
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
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 147
    Height = 13
    Caption = 'M'#234's/ano de Referencia..:'
  end
  object Label2: TLabel
    Left = 207
    Top = 14
    Width = 4
    Height = 15
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label39: TLabel
    Left = 19
    Top = 39
    Width = 72
    Height = 13
    Caption = 'Usuario/Cx.:'
  end
  object ANO: TEdit
    Left = 219
    Top = 10
    Width = 50
    Height = 21
    MaxLength = 4
    TabOrder = 1
    OnExit = ANOExit
    OnKeyPress = MESKeyPress
  end
  object MES: TEdit
    Left = 169
    Top = 10
    Width = 30
    Height = 21
    MaxLength = 2
    TabOrder = 0
    OnExit = MESExit
    OnKeyPress = MESKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 509
    Height = 41
    Align = alBottom
    TabOrder = 5
    object BitBtn2: TBitBtn
      Left = 302
      Top = 3
      Width = 143
      Height = 35
      Caption = '&Sair'
      TabOrder = 0
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
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 4
      Top = 3
      Width = 143
      Height = 35
      Caption = '&Imprimir'
      TabOrder = 1
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
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 99
    Width = 509
    Height = 146
    Align = alBottom
    Caption = 'Filtrar os Bancos:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    object Panel3: TPanel
      Left = 1
      Top = 99
      Width = 507
      Height = 46
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 0
      object Label8: TLabel
        Left = 8
        Top = 3
        Width = 48
        Height = 13
        Caption = 'C'#243'digo.:'
      end
      object Label16: TLabel
        Left = 326
        Top = 7
        Width = 62
        Height = 13
        Caption = 'Descricao:'
      end
      object Label9: TLabel
        Left = 212
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Nome:'
      end
      object BitBtn6: TBitBtn
        Left = 304
        Top = 21
        Width = 100
        Height = 21
        Caption = '&Excluir'
        TabOrder = 4
        OnClick = BitBtn6Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
      object ITEM_CANCELAR: TBitBtn
        Left = 204
        Top = 21
        Width = 100
        Height = 21
        Caption = '&Cancelar'
        TabOrder = 3
        OnClick = ITEM_CANCELARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
      end
      object ITEM_EDITAR: TBitBtn
        Left = 104
        Top = 21
        Width = 100
        Height = 21
        Caption = '&Editar'
        TabOrder = 2
        OnClick = ITEM_EDITARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
      end
      object ITEM_GRAVAR: TBitBtn
        Left = 3
        Top = 21
        Width = 100
        Height = 20
        Caption = 'Grava&r'
        TabOrder = 1
        OnClick = ITEM_GRAVARClick
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
      object COD: TEdit
        Left = 60
        Top = 1
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODExit
        OnKeyPress = CODKeyPress
      end
      object NOM: TEdit
        Left = 263
        Top = 1
        Width = 267
        Height = 19
        Ctl3D = False
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    object STG1: TStringGrid
      Left = 1
      Top = 14
      Width = 507
      Height = 85
      Align = alClient
      ColCount = 2
      DefaultRowHeight = 15
      FixedCols = 0
      TabOrder = 1
      ColWidths = (
        127
        379)
    end
  end
  object edt_codusr_cx: TEdit
    Left = 92
    Top = 36
    Width = 61
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnExit = edt_codusr_cxExit
    OnKeyPress = edt_codusr_cxKeyPress
  end
  object lbx_codusr_cx: TListBox
    Left = 150
    Top = 36
    Width = 345
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnKeyDown = lbx_codusr_cxKeyDown
  end
  object OMITIR_USR_CX: TCheckBox
    Left = 93
    Top = 55
    Width = 57
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Tb_Vendas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMP00004')
    Left = 280
    Top = 32
    object Tb_VendasTMDATA: TDateTimeField
      FieldName = 'TMDATA'
      Origin = 'SG_ASSOC.TMP00004.TMDATA'
    end
    object Tb_VendasTMVALPED: TFloatField
      FieldName = 'TMVALPED'
      Origin = 'SG_ASSOC.TMP00004.TMVALPED'
    end
    object Tb_VendasTMQTDPED: TFloatField
      FieldName = 'TMQTDPED'
      Origin = 'SG_ASSOC.TMP00004.TMQTDPED'
    end
    object Tb_VendasTMQTDCLI: TFloatField
      FieldName = 'TMQTDCLI'
      Origin = 'SG_ASSOC.TMP00004.TMQTDCLI'
    end
    object Tb_VendasTMVENDAS: TFloatField
      FieldName = 'TMVENDAS'
      Origin = 'SG_ASSOC.TMP00004.TMVENDAS'
    end
    object Tb_VendasTMDEVOL: TFloatField
      FieldName = 'TMDEVOL'
      Origin = 'SG_ASSOC.TMP00004.TMDEVOL'
    end
    object Tb_VendasTMFRETE: TFloatField
      FieldName = 'TMFRETE'
      Origin = 'SG_ASSOC.TMP00004.TMFRETE'
    end
    object Tb_VendasTMARECEB: TFloatField
      FieldName = 'TMARECEB'
      Origin = 'SG_ASSOC.TMP00004.TMARECEB'
    end
    object Tb_VendasTMCOMPRAS: TFloatField
      FieldName = 'TMCOMPRAS'
      Origin = 'SG_ASSOC.TMP00004.TMCOMPRAS'
    end
    object Tb_VendasTMAPAGAR: TFloatField
      FieldName = 'TMAPAGAR'
      Origin = 'SG_ASSOC.TMP00004.TMAPAGAR'
    end
    object Tb_VendasTMPGTO: TFloatField
      FieldName = 'TMPGTO'
      Origin = 'SG_ASSOC.TMP00004.TMPGTO'
    end
    object Tb_VendasTMRECBTO: TFloatField
      FieldName = 'TMRECBTO'
      Origin = 'SG_ASSOC.TMP00004.TMRECBTO'
    end
  end
end
