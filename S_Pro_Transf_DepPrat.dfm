object Frm_Pro_Transf_DepPrat: TFrm_Pro_Transf_DepPrat
  Left = 176
  Top = 147
  Width = 723
  Height = 467
  Caption = 'Transferencias Entre Deposito/Prateleira e Vice-Versa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Top = 344
    Width = 707
    Height = 85
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 264
      Top = 24
      Width = 193
      Height = 41
      AutoSize = False
      Caption = 
        'Sera impresso se existir Tabula'#231#227'o no Menu Ajuste de Estoque Per' +
        'sonalizado Rel. Transferencias'
      WordWrap = True
    end
    object Label2: TLabel
      Left = 266
      Top = 67
      Width = 121
      Height = 13
      Caption = 'Transferencia Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 460
      Top = 68
      Width = 32
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODPRO: TEdit
      Left = 1
      Top = 3
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyDown = CODPROKeyDown
      OnKeyPress = CODPROKeyPress
    end
    object LOTE: TEdit
      Left = 66
      Top = 3
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = LOTEExit
      OnKeyPress = LOTEKeyPress
    end
    object MDTVCTO: TMaskEdit
      Left = 131
      Top = 3
      Width = 56
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDTVCTOExit
    end
    object OPER: TEdit
      Left = 251
      Top = 3
      Width = 18
      Height = 19
      Hint = '0-Prateleira p/Deposito 1-Deposito p/Prateleira'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = OPERExit
    end
    object QTD: TEdit
      Left = 186
      Top = 3
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = QTDExit
      OnKeyPress = QTDKeyPress
    end
    object UND: TEdit
      Left = 352
      Top = 3
      Width = 45
      Height = 19
      TabStop = False
      Color = 10813348
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object NOMPRO: TEdit
      Left = 396
      Top = 3
      Width = 304
      Height = 19
      TabStop = False
      Color = 10813348
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object OBSERVACOES: TEdit
      Left = 268
      Top = 3
      Width = 85
      Height = 19
      TabStop = False
      Color = 10813348
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object BBSAIR: TBitBtn
      Left = 583
      Top = 43
      Width = 130
      Height = 40
      Hint = 'Sair desta op'#231#227'o'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BBSAIRClick
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
    object GRAVAR: TBitBtn
      Left = 2
      Top = 42
      Width = 130
      Height = 40
      Hint = 'Grava o movimento'
      Caption = 'Grava&r'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
      NumGlyphs = 2
    end
    object bbImprimir: TBitBtn
      Left = 131
      Top = 42
      Width = 130
      Height = 40
      Hint = 'Grava o movimento'
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    object cb_leitor: TCheckBox
      Left = 585
      Top = 26
      Width = 97
      Height = 17
      Hint = 
        'se o movimento for'#13#10'feito atrav'#233's de um'#13#10'leitor optico deixe est' +
        'a '#13#10'op'#231#227'o marcada'
      Caption = 'Leitor Optico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object edt_primchave: TEdit
      Left = 388
      Top = 63
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnExit = edt_primchaveExit
    end
    object edt_ultchave: TEdit
      Left = 495
      Top = 62
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      OnExit = edt_ultchaveExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 131
    Width = 707
    Height = 40
    Align = alTop
    TabOrder = 1
    object st_Codpro: TStaticText
      Left = 0
      Top = 11
      Width = 67
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo do Produto'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object st_lote: TStaticText
      Left = 66
      Top = 11
      Width = 67
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object st_dtvcto: TStaticText
      Left = 132
      Top = 11
      Width = 55
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Dt. Vcto'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object st_oper: TStaticText
      Left = 251
      Top = 11
      Width = 19
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Op'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object st_qtd: TStaticText
      Left = 186
      Top = 11
      Width = 66
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object st_obs: TStaticText
      Left = 269
      Top = 11
      Width = 84
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Observa'#231#227'o'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object st_und: TStaticText
      Left = 352
      Top = 11
      Width = 45
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Und'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object st_descricao: TStaticText
      Left = 396
      Top = 11
      Width = 303
      Height = 30
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o'
      Color = 16769505
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
  end
  object STG1: TStringGrid
    Left = 0
    Top = 171
    Width = 707
    Height = 173
    Align = alClient
    ColCount = 8
    Ctl3D = False
    DefaultRowHeight = 19
    FixedCols = 0
    ParentCtl3D = False
    TabOrder = 2
    ColWidths = (
      65
      65
      53
      64
      17
      82
      43
      301)
  end
  object GB_LOTES: TGroupBox
    Left = 0
    Top = 0
    Width = 707
    Height = 131
    Align = alTop
    Caption = 'Lotes Existentes:'
    TabOrder = 3
    Visible = False
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 703
      Height = 114
      Align = alClient
      DataSource = DM1.Src_LGC
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLNUMERO'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLDTVCTO'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTD_DEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTD_PRAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTD'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTDC'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTDR'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTDT'
          Width = 95
          Visible = True
        end>
    end
  end
end
