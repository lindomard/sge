object Frm_Prod_Loc: TFrm_Prod_Loc
  Left = 238
  Top = 148
  Width = 544
  Height = 390
  Caption = 'Localizar Ordem de Produ'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 83
      Height = 13
      Caption = 'Chave Inicial.:'
    end
    object Label2: TLabel
      Left = 193
      Top = 7
      Width = 76
      Height = 13
      Caption = 'Chave Final.:'
    end
    object Label3: TLabel
      Left = 10
      Top = 28
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label4: TLabel
      Left = 213
      Top = 50
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label5: TLabel
      Left = 12
      Top = 48
      Width = 94
      Height = 13
      Caption = 'Lote Sequencia:'
    end
    object MCHAVEI: TEdit
      Left = 94
      Top = 4
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCHAVEIExit
      OnKeyPress = MCHAVEIKeyPress
    end
    object MCHAVEF: TEdit
      Left = 275
      Top = 3
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = MCHAVEIKeyPress
    end
    object MDT1: TMaskEdit
      Left = 95
      Top = 26
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 275
      Top = 25
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object RG_TIPO: TRadioGroup
      Left = 1
      Top = 70
      Width = 534
      Height = 34
      Align = alBottom
      Caption = 'Listar Somente:'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        '&Pendentes'
        '&Baixou Mat.Prima'
        '&Confirmados'
        '&Todos')
      TabOrder = 5
    end
    object bbPesq: TBitBtn
      Left = 391
      Top = 3
      Width = 102
      Height = 21
      Caption = 'Pes&quisar'
      TabOrder = 6
      OnClick = bbPesqClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 391
      Top = 25
      Width = 102
      Height = 21
      Caption = '&Sair'
      TabOrder = 7
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
    object LOTSEQ: TEdit
      Left = 109
      Top = 46
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = LOTSEQExit
      OnKeyPress = MCHAVEIKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 536
    Height = 254
    Align = alClient
    DataSource = Src_Op01
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'OP1_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_DATA'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_NOME'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_LOTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TOTPREV'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TOTPROD'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TMPPREV'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TMPUTIL'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Situacao'
        Visible = True
      end>
  end
  object Qr_OP01: TQuery
    OnCalcFields = Qr_OP01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADOP01'
      '')
    Left = 184
    Top = 152
    object Qr_OP01OP1_CODEMP: TFloatField
      FieldName = 'OP1_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODEMP'
    end
    object Qr_OP01OP1_FABENV: TFloatField
      FieldName = 'OP1_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_FABENV'
    end
    object Qr_OP01OP1_LOTSEQ: TFloatField
      FieldName = 'OP1_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTSEQ'
    end
    object Qr_OP01OP1_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Qr_OP01OP1_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Qr_OP01OP1_ORIGEM: TFloatField
      FieldName = 'OP1_ORIGEM'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_OP01OP1_DATA: TDateTimeField
      DisplayLabel = 'data'
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Qr_OP01OP1_DATAPREV: TDateTimeField
      FieldName = 'OP1_DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Qr_OP01OP1_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Qr_OP01OP1_DATAVEN: TDateTimeField
      FieldName = 'OP1_DATAVEN'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAVEN'
    end
    object Qr_OP01OP1_TMPPREV: TFloatField
      DisplayLabel = 'Previsto'
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
    end
    object Qr_OP01OP1_TMPUTIL: TFloatField
      DisplayLabel = 'Utilizado'
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
    end
    object Qr_OP01OP1_TOTPREV: TFloatField
      DisplayLabel = 'Total Previsto'
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
    end
    object Qr_OP01OP1_TOTPROD: TFloatField
      DisplayLabel = 'Total Produzido'
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
    end
    object Qr_OP01OP1_STATUS: TFloatField
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Qr_OP01OP1_SITUACAO: TFloatField
      FieldName = 'OP1_SITUACAO'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITUACAO'
    end
    object Qr_OP01OP1_QTDMAN: TFloatField
      FieldName = 'OP1_QTDMAN'
      Origin = 'SG_ASSOC.CADOP01.OP1_QTDMAN'
    end
    object Qr_OP01OP1_SITMP: TFloatField
      FieldName = 'OP1_SITMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITMP'
    end
    object Qr_OP01OP1_SITACAB: TFloatField
      FieldName = 'OP1_SITACAB'
      Origin = 'SG_ASSOC.CADOP01.OP1_SITACAB'
    end
    object Qr_OP01OP1_OBS01: TStringField
      FieldName = 'OP1_OBS01'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS01'
      Size = 60
    end
    object Qr_OP01OP1_OBS02: TStringField
      FieldName = 'OP1_OBS02'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS02'
      Size = 60
    end
    object Qr_OP01OP1_OBS03: TStringField
      FieldName = 'OP1_OBS03'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS03'
      Size = 60
    end
    object Qr_OP01OP1_OBS04: TStringField
      FieldName = 'OP1_OBS04'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS04'
      Size = 60
    end
    object Qr_OP01OP1_OBS05: TStringField
      FieldName = 'OP1_OBS05'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS05'
      Size = 60
    end
    object Qr_OP01OP1_OBS06: TStringField
      FieldName = 'OP1_OBS06'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS06'
      Size = 60
    end
    object Qr_OP01OP1_OBS07: TStringField
      FieldName = 'OP1_OBS07'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS07'
      Size = 60
    end
    object Qr_OP01OP1_OBS08: TStringField
      FieldName = 'OP1_OBS08'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS08'
      Size = 60
    end
    object Qr_OP01OP1_OBS09: TStringField
      FieldName = 'OP1_OBS09'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS09'
      Size = 60
    end
    object Qr_OP01OP1_OBS10: TStringField
      FieldName = 'OP1_OBS10'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS10'
      Size = 60
    end
    object Qr_OP01Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 40
      Calculated = True
    end
  end
  object Src_Op01: TDataSource
    DataSet = Qr_OP01
    Left = 232
    Top = 152
  end
end
