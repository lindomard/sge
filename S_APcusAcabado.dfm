object Frm_APcusAcabado: TFrm_APcusAcabado
  Left = 197
  Top = 256
  Width = 689
  Height = 394
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Atualiza'#231'ao de Pre'#231'o de Custo dos Produtos Acabados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb_produtos: TGroupBox
    Left = 0
    Top = 0
    Width = 681
    Height = 167
    Align = alTop
    Caption = '-=Produtos=-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 26
      Width = 56
      Height = 16
      Caption = 'Produto..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 46
      Top = 68
      Width = 46
      Height = 16
      Caption = 'Grupo..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object origem: TLabel
      Left = 8
      Top = 112
      Width = 42
      Height = 16
      Caption = 'origem'
      Visible = False
    end
    object codpro: TEdit
      Left = 95
      Top = 22
      Width = 57
      Height = 24
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = codproExit
      OnKeyPress = codproKeyPress
    end
    object codgru: TEdit
      Left = 95
      Top = 65
      Width = 57
      Height = 21
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = codgruExit
      OnKeyPress = codgruKeyPress
    end
    object cb_estoque: TCheckBox
      Left = 55
      Top = 112
      Width = 218
      Height = 17
      Caption = 'ATUALIZAR SOMENTE COM ESTOQUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cb_formulas: TCheckBox
      Left = 280
      Top = 112
      Width = 217
      Height = 17
      Caption = 'CAPTURAR CUSTOS DAS FORMULAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object bb_capturar: TBitBtn
      Left = 73
      Top = 130
      Width = 152
      Height = 33
      Caption = '&Buscar produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bb_capturarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bb_atualizar: TBitBtn
      Left = 265
      Top = 130
      Width = 152
      Height = 33
      Caption = '&Atualizar Custos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bb_atualizarClick
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
    object bb_close: TBitBtn
      Left = 457
      Top = 130
      Width = 152
      Height = 33
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = bb_closeClick
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
    object cb_omitir_pro: TCheckBox
      Left = 95
      Top = 50
      Width = 55
      Height = 15
      Caption = 'Omitir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cb_omitir_gru: TCheckBox
      Left = 95
      Top = 90
      Width = 55
      Height = 15
      Caption = 'Omitir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object List_prod: TListBox
      Left = 153
      Top = 21
      Width = 522
      Height = 40
      Hint = 'Pressione DELETE para apagar o registro!'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnKeyDown = List_prodKeyDown
    end
    object List_gru: TListBox
      Left = 153
      Top = 65
      Width = 522
      Height = 40
      Hint = 'Pressione DELETE para apagar o registro!'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnKeyDown = List_gruKeyDown
    end
    object CB_PRECO_VENDA: TCheckBox
      Left = 496
      Top = 112
      Width = 162
      Height = 17
      Caption = 'ATUALIZAR PRECO VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object pnl_0: TPanel
    Left = 0
    Top = 167
    Width = 681
    Height = 196
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object db_01: TDBGrid
      Left = 1
      Top = 29
      Width = 679
      Height = 166
      Align = alClient
      DataSource = ds_01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PDCODPRO'
          ReadOnly = True
          Title.Caption = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          ReadOnly = True
          Title.Caption = 'NOME'
          Width = 359
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          ReadOnly = True
          Title.Caption = 'UND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMGRU'
          ReadOnly = True
          Title.Caption = 'GRUPO'
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDSALDO'
          ReadOnly = True
          Title.Caption = 'SALDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          ReadOnly = True
          Title.Caption = 'PRE'#199'O 01'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA1'
          Title.Caption = 'PRE'#199'O NOVO 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO2'
          ReadOnly = True
          Title.Caption = 'PRE'#199'O 02'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Caption = 'PRE'#199'O NOVO 2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO3'
          ReadOnly = True
          Title.Caption = 'PRE'#199'O 03'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA3'
          Title.Caption = 'PRE'#199'O NOVO 3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECOC'
          ReadOnly = True
          Title.Caption = 'PRE'#199'O CUSTO'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO_FORMULA'
          Title.Caption = 'CUSTO AQUISI'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO_DESP'
          ReadOnly = True
          Title.Caption = 'CUSTO OPERACIONAL'
          Visible = True
        end>
    end
    object progress_01: TProgressBar
      Left = 1
      Top = 1
      Width = 679
      Height = 28
      Align = alTop
      TabOrder = 1
    end
  end
  object qr_01: TQuery
    OnCalcFields = qr_01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select PDCODPRO , PDNOME, PDUND, PDNOMGRU, PDSALDO, PDPCOFAB,'
      '            PDPRECO1, PDPRECO2, PDPRECO3, PDPRECOC, PDQTDGRML,'
      
        '            (select count(*) from cadcomp where cpcodpro=pdcodpr' +
        'o)  as registros  '
      'from cadpro where pdstatus<9'
      ' and pdnivel=0 and ((PDCODEMP=1) or (PDCODEMP=101))'
      'order by '
      '    PDNOME')
    Left = 8
    Top = 152
    object qr_01PDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object qr_01PDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object qr_01PDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object qr_01PDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object qr_01PDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object qr_01PDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object qr_01PRECO_VENDA1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO_VENDA1'
      Calculated = True
    end
    object qr_01PDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object qr_01PRECO_VENDA2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO_VENDA2'
      Calculated = True
    end
    object qr_01PDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object qr_01PRECO_VENDA3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO_VENDA3'
      Calculated = True
    end
    object qr_01PDPRECOC: TFloatField
      FieldName = 'PDPRECOC'
      Origin = 'SG_ASSOC.CADPRO.PDPRECOC'
    end
    object qr_01PDQTDGRML: TFloatField
      FieldName = 'PDQTDGRML'
      Origin = 'SG_ASSOC.CADPRO.PDQTDGRML'
    end
    object qr_01CUSTO_FORMULA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CUSTO_FORMULA'
      Calculated = True
    end
    object qr_01PDPCOFAB: TFloatField
      FieldName = 'PDPCOFAB'
      Origin = 'SG_ASSOC.CADPRO.PDPCOFAB'
    end
    object qr_01CUSTO_DESP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CUSTO_DESP'
      Calculated = True
    end
    object qr_01REGISTROS: TFloatField
      FieldName = 'REGISTROS'
    end
  end
  object ds_01: TDataSource
    DataSet = qr_01
    Left = 40
    Top = 152
  end
end
