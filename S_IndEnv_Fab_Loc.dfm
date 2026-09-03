object Frm_IndEnv_Fab_Loc: TFrm_IndEnv_Fab_Loc
  Left = 76
  Top = 163
  Width = 989
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
    Width = 981
    Height = 165
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 147
      Top = 53
      Width = 83
      Height = 13
      Caption = 'Chave Inicial.:'
    end
    object Label2: TLabel
      Left = 315
      Top = 52
      Width = 76
      Height = 13
      Caption = 'Chave Final.:'
    end
    object Label3: TLabel
      Left = 10
      Top = 7
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label4: TLabel
      Left = 177
      Top = 8
      Width = 8
      Height = 13
      Alignment = taCenter
      Caption = #224
    end
    object Label5: TLabel
      Left = 309
      Top = 8
      Width = 94
      Height = 13
      Caption = 'Lote Sequencia:'
    end
    object Label6: TLabel
      Left = 30
      Top = 52
      Width = 30
      Height = 13
      Caption = 'Lote:'
    end
    object Label7: TLabel
      Left = 11
      Top = 31
      Width = 49
      Height = 13
      Caption = 'Produto:'
    end
    object MCHAVEI: TEdit
      Left = 233
      Top = 49
      Width = 79
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCHAVEIExit
      OnKeyPress = MCHAVEIKeyPress
    end
    object MCHAVEF: TEdit
      Left = 395
      Top = 48
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnKeyPress = MCHAVEIKeyPress
    end
    object MDT1: TMaskEdit
      Left = 95
      Top = 5
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
      Left = 199
      Top = 5
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object RG_STATUS: TRadioGroup
      Left = 1
      Top = 130
      Width = 979
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
      Left = 127
      Top = 75
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
      Left = 264
      Top = 74
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
      Left = 406
      Top = 5
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = LOTSEQExit
      OnKeyPress = MCHAVEIKeyPress
    end
    object EDTLOTEOP: TEdit
      Left = 63
      Top = 49
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = LOTSEQExit
    end
    object RG_TIPO: TRadioGroup
      Left = 1
      Top = 96
      Width = 979
      Height = 34
      Align = alBottom
      Caption = 'Tipo OP'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Produ'#231#227'o'
        'Envase'
        'Todos')
      TabOrder = 9
    end
    object EDTCODPRO: TEdit
      Left = 63
      Top = 28
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = EDTCODPROExit
      OnKeyPress = EDTCODPROKeyPress
    end
    object EDTNOMPRO: TEdit
      Left = 122
      Top = 28
      Width = 353
      Height = 19
      Color = 16776176
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
      OnExit = LOTSEQExit
      OnKeyPress = MCHAVEIKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 165
    Width = 981
    Height = 194
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
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_DATA'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_NOME'
        Title.Alignment = taCenter
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_LOTE'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TOTPREV'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TOTPROD'
        Title.Alignment = taCenter
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TMPPREV'
        Title.Alignment = taCenter
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OP1_TMPUTIL'
        Title.Alignment = taCenter
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Situacao'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'origem'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Qr_OP01: TQuery
    OnCalcFields = Qr_OP01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select OP1_CODIGO,OP1_DATA,OP1_NOME,OP1_LOTE,OP1_TOTPREV,OP1_TOT' +
        'PROD,'
      '       OP1_TMPPREV,OP1_TMPUTIL,OP1_STATUS'
      'from CADOP01 where OP1_STATUS is null'
      '')
    Left = 168
    Top = 264
    object Qr_OP01OP1_CODIGO: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Qr_OP01OP1_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Qr_OP01OP1_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Qr_OP01OP1_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Qr_OP01OP1_TOTPREV: TFloatField
      DisplayLabel = '$ Previsto'
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
      DisplayFormat = '0.00'
    end
    object Qr_OP01OP1_TOTPROD: TFloatField
      DisplayLabel = '$ Realizado'
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
      DisplayFormat = '0.00'
    end
    object Qr_OP01OP1_TMPPREV: TFloatField
      DisplayLabel = 'Mat.Primas Prev.'
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
      DisplayFormat = '0.00'
    end
    object Qr_OP01OP1_TMPUTIL: TFloatField
      DisplayLabel = 'Mat.Primas Util.'
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
      DisplayFormat = '0.00'
    end
    object Qr_OP01OP1_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Qr_OP01Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 10
      Calculated = True
    end
    object Qr_OP01origem: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'origem'
      Size = 40
    end
  end
  object Src_Op01: TDataSource
    DataSet = Qr_OP01
    Left = 200
    Top = 265
  end
end
