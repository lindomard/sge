object Frm_LancAutoFC: TFrm_LancAutoFC
  Left = 22
  Top = 82
  Width = 765
  Height = 407
  Caption = 'Lan'#231'amento de Titulos a Pagar/Fluxo de Caixa Automaticamente'
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
    Top = 270
    Width = 757
    Height = 106
    Align = alBottom
    Caption = 'Filtros:'
    TabOrder = 0
    object Label13: TLabel
      Left = 6
      Top = 43
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label2: TLabel
      Left = 5
      Top = 17
      Width = 177
      Height = 13
      Caption = 'Gerar Para Vencimento Entre os dias:'
    end
    object Label3: TLabel
      Left = 227
      Top = 19
      Width = 6
      Height = 13
      Caption = 'e'
    end
    object Label4: TLabel
      Left = 42
      Top = 86
      Width = 85
      Height = 13
      Caption = 'Conta p/o m'#234's de'
    end
    object Label5: TLabel
      Left = 287
      Top = 88
      Width = 21
      Height = 13
      Caption = 'ano:'
    end
    object bbAplicar: TBitBtn
      Left = 598
      Top = 9
      Width = 150
      Height = 30
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbAplicarClick
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
    object CODFOR: TEdit
      Left = 66
      Top = 41
      Width = 70
      Height = 21
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      BevelKind = bkSoft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object lbx_codfor: TListBox
      Left = 135
      Top = 39
      Width = 438
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 66
      Top = 65
      Width = 69
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object MDIAVI: TEdit
      Left = 187
      Top = 15
      Width = 34
      Height = 19
      Hint = 
        'Dia Inicial para Gera'#231#227'o '#13#10'dos T'#237'tulos, em branco'#13#10'Gera para Tod' +
        'os at'#233#13#10'o dia final'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = MDIAVIExit
    end
    object MDIAVF: TEdit
      Left = 254
      Top = 15
      Width = 34
      Height = 19
      Hint = 
        'Dia Final para Gera'#231#227'o '#13#10'dos T'#237'tulos em branco'#13#10'Gera para Todos ' +
        'ap'#243's'#13#10'o dia inicial'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = MDIAVFExit
    end
    object bbGerar: TBitBtn
      Left = 598
      Top = 38
      Width = 150
      Height = 30
      Hint = 'Click aqui para Realizar'#13#10'a inclus'#227'o dos Titulos'
      Caption = '&Gerar T'#237'tulos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbGerarClick
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
    object Sair: TBitBtn
      Left = 598
      Top = 67
      Width = 150
      Height = 30
      Caption = '&Sair'
      TabOrder = 8
      OnClick = SairClick
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
    object CB_CTAPAG: TCheckBox
      Left = 336
      Top = 16
      Width = 241
      Height = 17
      Hint = 
        'Se Marcado Gera Lan'#231'amentos no'#13#10'Arquivo de Contas a Pagar, caso ' +
        #13#10'Contrario so ser'#225' lan'#231'ado no Fluxo '#13#10'de Caixa'
      Caption = 'Incluir Tamb'#233'm no Arquivo de Contas a Pagar'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 2
    end
    object CB_MES: TComboBox
      Left = 135
      Top = 83
      Width = 145
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      ItemHeight = 13
      TabOrder = 9
      Text = 'CB_MES'
      OnExit = CB_MESExit
    end
    object ANO: TEdit
      Left = 311
      Top = 84
      Width = 60
      Height = 19
      Hint = 
        'Dia Final para Gera'#231#227'o '#13#10'dos T'#237'tulos em branco'#13#10'Gera para Todos ' +
        'ap'#243's'#13#10'o dia inicial'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnExit = ANOExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 63
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 755
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Lan'#231'amento Automatico de Contas Fixas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbMarcar: TSpeedButton
      Left = 3
      Top = 40
      Width = 119
      Height = 22
      Caption = '&Marcar todos'
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
      OnClick = sbMarcarClick
    end
    object sbDesmarcar: TSpeedButton
      Left = 122
      Top = 40
      Width = 119
      Height = 22
      Caption = '&Desmarcar todos'
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
      OnClick = sbDesmarcarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 63
    Width = 757
    Height = 207
    Align = alClient
    DataSource = Src_Temp
    FixedColor = 13041663
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'TP_SEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 2'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NOME'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_DATAREF'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_DATADP'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_VALORP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_CODBCO'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NOMBCO'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_CODCC'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NOMCCU'
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_CODDEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NOMDEP'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NATDC'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_DESCMV'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NUMDOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_TIPO'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_CODIGO'
        Width = 42
        Visible = True
      end>
  end
  object Tb_Temp: TTable
    DatabaseName = 'C:\SGE\TEMP'
    TableName = 'ldc.DB'
    Left = 344
    Top = 16
    object Tb_TempTP_SEL: TStringField
      DisplayLabel = 'Ok'
      FieldName = 'TP_SEL'
      Size = 1
    end
    object Tb_TempTP_DATADP: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'TP_DATADP'
    end
    object Tb_TempTP_DATAREF: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'TP_DATAREF'
    end
    object Tb_TempTP_VALORP: TFloatField
      DisplayLabel = 'Valor Previsto'
      FieldName = 'TP_VALORP'
    end
    object Tb_TempTP_NOMBCO: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'TP_NOMBCO'
      Size = 40
    end
    object Tb_TempTP_CODCC: TStringField
      DisplayLabel = 'C'#243'd.CC'
      FieldName = 'TP_CODCC'
      Size = 6
    end
    object Tb_TempTP_NOMCCU: TStringField
      DisplayLabel = 'Nome Centro de Custo'
      FieldName = 'TP_NOMCCU'
      Size = 40
    end
    object Tb_TempTP_CODDEP: TStringField
      DisplayLabel = 'C'#243'd.Depto'
      FieldName = 'TP_CODDEP'
      Size = 6
    end
    object Tb_TempTP_NOMDEP: TStringField
      DisplayLabel = 'Nome do Departamento'
      FieldName = 'TP_NOMDEP'
      Size = 40
    end
    object Tb_TempTP_NATDC: TStringField
      DisplayLabel = 'Nat.'
      FieldName = 'TP_NATDC'
      Size = 1
    end
    object Tb_TempTP_DESCMV: TStringField
      DisplayLabel = 'Descri'#231#227'o do Movimento'
      FieldName = 'TP_DESCMV'
      Size = 50
    end
    object Tb_TempTP_NUMDOC: TStringField
      DisplayLabel = 'N'#250'm.Doc.'
      FieldName = 'TP_NUMDOC'
      Size = 50
    end
    object Tb_TempTP_TIPO: TStringField
      DisplayLabel = 'T.'
      FieldName = 'TP_TIPO'
      Size = 50
    end
    object Tb_TempTP_CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TP_CODIGO'
    end
    object Tb_TempTP_NOME: TStringField
      DisplayLabel = 'Sacado'
      FieldName = 'TP_NOME'
      Size = 40
    end
    object Tb_TempTP_CODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco.'
      FieldName = 'TP_CODBCO'
    end
  end
  object Src_Temp: TDataSource
    DataSet = Tb_Temp
    Left = 384
    Top = 16
  end
end
