object Frm_Aju: TFrm_Aju
  Left = 137
  Top = 114
  Width = 782
  Height = 467
  ActiveControl = CODPRO
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ajuste de Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 255
    Align = alClient
    TabOrder = 0
    object STG1: TStringGrid
      Left = 1
      Top = 1
      Width = 772
      Height = 122
      Align = alClient
      ColCount = 9
      DefaultRowHeight = 17
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      OnDrawCell = STG1DrawCell
      ColWidths = (
        106
        274
        64
        89
        114
        64
        327
        102
        64)
    end
    object GB_LOTES: TGroupBox
      Left = 1
      Top = 123
      Width = 772
      Height = 131
      Align = alBottom
      Caption = 'Lotes Existentes:'
      TabOrder = 1
      Visible = False
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 768
        Height = 114
        Align = alClient
        DataSource = DM1.Src_LGC
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLNUMERO'
            Title.Alignment = taCenter
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLDTFAB'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Fabrica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLDTVCTO'
            Title.Alignment = taCenter
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTD_PRAT'
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTD_DEP'
            Title.Alignment = taCenter
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTD'
            Title.Alignment = taCenter
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTDC'
            Title.Alignment = taCenter
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTDR'
            Title.Alignment = taCenter
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLQTDT'
            Title.Alignment = taCenter
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLLOTE_RE'
            Title.Alignment = taCenter
            Title.Caption = 'Lote RE'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLFILIAL'
            Title.Alignment = taCenter
            Width = 45
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 255
    Width = 774
    Height = 137
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 25
      Width = 110
      Height = 13
      Caption = 'C'#243'digo do Produto:'
    end
    object Label2: TLabel
      Left = 15
      Top = 101
      Width = 107
      Height = 13
      Caption = 'Motivo................:'
    end
    object Label3: TLabel
      Left = 152
      Top = 63
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = '&Quantidade..:'
      FocusControl = QTD
    end
    object Label4: TLabel
      Left = 543
      Top = 64
      Width = 102
      Height = 13
      Caption = 'Data Referencia.:'
    end
    object lbl_lote: TLabel
      Left = 139
      Top = 45
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Numero do Lot&e:'
      FocusControl = LOTE
      Visible = False
    end
    object lbl_vencimento: TLabel
      Left = 613
      Top = 47
      Width = 48
      Height = 13
      Caption = 'Dt Vcto:'
      Visible = False
    end
    object estoque: TLabel
      Left = 146
      Top = 79
      Width = 173
      Height = 13
      Caption = 'Estoque Atual deste Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 546
      Top = 83
      Width = 96
      Height = 13
      Caption = 'Estoque M'#237'nimo:'
      FocusControl = ESTMIN
    end
    object Label81: TLabel
      Left = 529
      Top = 101
      Width = 109
      Height = 13
      Caption = 'Local Mercadorias:'
      Visible = False
    end
    object lbl_lote_re: TLabel
      Left = 363
      Top = 45
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Lote RE.:'
      FocusControl = edt_lote_re
      Visible = False
    end
    object Label18: TLabel
      Left = 68
      Top = 4
      Width = 51
      Height = 13
      Caption = 'Estoque:'
    end
    object lbl_dtfab: TLabel
      Left = 461
      Top = 47
      Width = 43
      Height = 13
      Caption = 'Dt Fab:'
      Visible = False
    end
    object DATAV: TDateEdit
      Left = 672
      Top = 41
      Width = 92
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
    end
    object CODPRO: TEdit
      Left = 125
      Top = 25
      Width = 117
      Height = 19
      Hint = 'Digite o C'#243'digo do Produto '#13#10'ou o nome para consultar'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = CODPROExit
      OnKeyDown = CODPROKeyDown
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 241
      Top = 25
      Width = 522
      Height = 19
      TabStop = False
      Color = 16755413
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object RG_TIPOM: TRadioGroup
      Left = 5
      Top = 44
      Width = 120
      Height = 54
      Hint = 'Informe o tipo de Movimento'
      Caption = 'Tipo do Movimento'
      ItemIndex = 0
      Items.Strings = (
        '&Entrada'
        '&Saida')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = True
    end
    object QTD: TEdit
      Left = 241
      Top = 61
      Width = 121
      Height = 19
      Hint = 'Informe a Quantidade'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = QTDExit
      OnKeyPress = QTDKeyPress
    end
    object DATAREF: TMaskEdit
      Left = 672
      Top = 61
      Width = 91
      Height = 19
      Hint = 'informe a data de Refer'#234'ncia'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '  /  /    '
      OnExit = DATAREFExit
    end
    object LOTE: TEdit
      Left = 241
      Top = 43
      Width = 121
      Height = 19
      Hint = 'Informe o Lote do Produto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnExit = LOTEExit
      OnKeyPress = LOTEKeyPress
    end
    object MOTIVO: TComboBox
      Left = 125
      Top = 97
      Width = 393
      Height = 21
      Hint = 'Informe o Motivo do'#13#10'Movimento'
      BevelKind = bkFlat
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      Sorted = True
      TabOrder = 10
      Text = 'CONTAGEM DE ESTOQUE'
      OnExit = MOTIVOExit
      OnKeyDown = MOTIVOKeyDown
      Items.Strings = (
        'AVARIAS INTERNAS'
        'AVARIAS TRANPORTADORAS'
        'CONTAGEM DE ESTOQUE'
        'DEVOLU'#199#195'O CLIENTE'
        'DEVOLU'#199#195'O FABRICA'
        'DEVOLU'#199'AO FORNECEDOR'
        'MERCADORIA EMPRESTADA'
        'OUTRAS'
        'PERDAS'
        'PRODUTO EM QUARENTENA'
        'VENDA')
    end
    object cb_leitor: TCheckBox
      Left = 416
      Top = 118
      Width = 97
      Height = 17
      Hint = 
        'se o movimento for'#13#10'feito atrav'#233's de um'#13#10'leitor optico deixe est' +
        'a '#13#10'op'#231#227'o marcada'
      TabStop = False
      Caption = 'Leitor Optico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = cb_leitorClick
    end
    object ESTMIN: TEdit
      Left = 672
      Top = 79
      Width = 91
      Height = 19
      Hint = 'Informe o Estoque M'#237'nimo'#13#10'do Produto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnExit = QTDExit
      OnKeyPress = QTDKeyPress
    end
    object CB_LOCAL: TComboBox
      Left = 639
      Top = 97
      Width = 125
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      TabStop = False
      Text = 'Prateleira'
      Visible = False
      Items.Strings = (
        'Prateleira'
        'Deposito'
        'Em Reparo')
    end
    object CB_UTILCQ: TCheckBox
      Left = 125
      Top = 118
      Width = 257
      Height = 17
      Hint = 'se marcado ira movimentar o '#13#10'Estoque do Produto Em Quarentena'
      TabStop = False
      Caption = 'Movimenta Estoque em Quarentena'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object edt_lote_re: TEdit
      Left = 417
      Top = 43
      Width = 40
      Height = 19
      Hint = 'Informe o Lote do Produto'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Text = '0'
      Visible = False
      OnExit = LOTEExit
      OnKeyPress = LOTEKeyPress
    end
    object cb_estoque: TComboBox
      Left = 125
      Top = 2
      Width = 433
      Height = 21
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Text = 'cb_estoque'
    end
    object edt_dtfab: TDateEdit
      Left = 506
      Top = 45
      Width = 92
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 392
    Width = 774
    Height = 44
    Align = alBottom
    TabOrder = 2
    object GRAVAR: TBitBtn
      Left = 3
      Top = 0
      Width = 150
      Height = 44
      Hint = 'Grava o movimento'
      Caption = 'Grava&r'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object CANCELAR: TBitBtn
      Left = 226
      Top = 0
      Width = 150
      Height = 44
      Hint = 'Cancela a opera'#231#227'o que'#13#10'se inicializou'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CANCELARClick
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
    object SAIR: TBitBtn
      Left = 623
      Top = 0
      Width = 150
      Height = 44
      Hint = 'fecha esta janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = SAIRClick
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
      Left = 422
      Top = 0
      Width = 150
      Height = 44
      Hint = 'exclui determinado '#13#10'lan'#231'amentos'
      Caption = '&Excluir Lancamentos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
