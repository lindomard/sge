object Frm_MedVenPgt: TFrm_MedVenPgt
  Left = 84
  Top = 71
  Width = 595
  Height = 488
  Caption = 'Calculo de M'#233'dia de Vencimentos / Pagamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 413
    Width = 587
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbSair: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 392
    Align = alLeft
    Caption = '&Titulos:'
    TabOrder = 1
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 2
      Top = 38
      Width = 181
      Height = 185
      Align = alClient
      DataSource = Src_titulos
      PanelHeight = 20
      PanelWidth = 164
      TabOrder = 0
      RowCount = 9
      OnExit = DBCtrlGrid1Exit
      object DBEdit1: TDBEdit
        Left = 2
        Top = 2
        Width = 80
        Height = 21
        DataField = 'VALOR'
        DataSource = Src_titulos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 2
        Width = 80
        Height = 21
        DataField = 'DATA_DOC'
        DataSource = Src_titulos
        TabOrder = 1
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 365
      Width = 181
      Height = 25
      DataSource = Src_titulos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Inserir'
        'Deletar'
        'Alterar'
        'Gravar'
        'Cancelar'
        'Refresh data')
      TabOrder = 1
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 246
      Width = 181
      Height = 119
      Align = alBottom
      Caption = '&Importar do Contas a Receber:'
      TabOrder = 2
      object MDT1: TMaskEdit
        Left = 9
        Top = 33
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 98
        Top = 33
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object StaticText5: TStaticText
        Left = 8
        Top = 16
        Width = 66
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial'
        TabOrder = 2
      end
      object StaticText6: TStaticText
        Left = 98
        Top = 16
        Width = 65
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Final'
        TabOrder = 3
      end
      object CODVEN: TEdit
        Left = 9
        Top = 72
        Width = 65
        Height = 21
        TabOrder = 4
        OnExit = CODVENExit
      end
      object StaticText7: TStaticText
        Left = 9
        Top = 55
        Width = 65
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Vendedor'
        TabOrder = 5
      end
      object StaticText8: TStaticText
        Left = 98
        Top = 55
        Width = 65
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Cliente'
        TabOrder = 6
      end
      object CODCLI: TEdit
        Left = 98
        Top = 72
        Width = 65
        Height = 21
        TabOrder = 7
        OnExit = CODCLIExit
      end
      object bbImportar: TBitBtn
        Left = 24
        Top = 95
        Width = 106
        Height = 21
        Caption = '&Importar Agora'
        TabOrder = 8
        OnClick = bbImportarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 223
      Width = 181
      Height = 23
      Align = alBottom
      TabOrder = 3
      object StaticText18: TStaticText
        Left = 3
        Top = 5
        Width = 85
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Total dos T'#237'tulos:'
        TabOrder = 0
      end
      object st_tottit2: TStaticText
        Left = 95
        Top = 4
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 15
      Width = 181
      Height = 23
      Align = alTop
      TabOrder = 4
      object StaticText1: TStaticText
        Left = 82
        Top = 1
        Width = 79
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Dt.Vcto'
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 1
        Top = 1
        Width = 79
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Valor'
        TabOrder = 1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 370
    Top = 0
    Width = 217
    Height = 392
    Align = alClient
    Caption = 'Resultados:'
    TabOrder = 2
    object spnCalcular: TSpeedButton
      Left = 4
      Top = 268
      Width = 118
      Height = 22
      Caption = 'Calcular'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      OnClick = spnCalcularClick
    end
    object StaticText12: TStaticText
      Left = 3
      Top = 19
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'M'#233'dia dos Vencimentos'
      TabOrder = 0
    end
    object st_dtvcto: TStaticText
      Left = 126
      Top = 19
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 1
    end
    object StaticText13: TStaticText
      Left = 3
      Top = 39
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'M'#233'dia dos Pagamentos'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 2
    end
    object st_datadoc: TStaticText
      Left = 126
      Top = 39
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 3
    end
    object StaticText14: TStaticText
      Left = 3
      Top = 189
      Width = 121
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Qtd.dias Entre Datas:'
      TabOrder = 4
    end
    object QTDDIAS: TEdit
      Left = 125
      Top = 184
      Width = 80
      Height = 21
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 5
    end
    object StaticText15: TStaticText
      Left = 3
      Top = 212
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '% Juros ao M'#234's:'
      TabOrder = 6
    end
    object JURM: TEdit
      Left = 124
      Top = 207
      Width = 80
      Height = 21
      TabOrder = 7
      OnExit = JURMExit
      OnKeyPress = JURMKeyPress
    end
    object st_valjur: TStaticText
      Left = 3
      Top = 234
      Width = 202
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Valor dos Juros: '
      TabOrder = 8
    end
    object st_tottit: TStaticText
      Left = 126
      Top = 92
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 9
    end
    object StaticText16: TStaticText
      Left = 3
      Top = 92
      Width = 121
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total dos T'#237'tulos:'
      TabOrder = 10
    end
    object StaticText17: TStaticText
      Left = 3
      Top = 112
      Width = 121
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total Documentos:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 11
    end
    object st_totdoc: TStaticText
      Left = 126
      Top = 111
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 12
    end
    object StaticText19: TStaticText
      Left = 2
      Top = 130
      Width = 121
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total dos Juros:'
      TabOrder = 13
    end
    object st_totjur: TStaticText
      Left = 126
      Top = 129
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 14
    end
    object StaticText21: TStaticText
      Left = 2
      Top = 148
      Width = 121
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Valor Restante:'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 15
    end
    object st_saldo: TStaticText
      Left = 126
      Top = 147
      Width = 80
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 16
    end
    object bbImprimir: TBitBtn
      Left = 4
      Top = 292
      Width = 118
      Height = 22
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
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
  end
  object GroupBox3: TGroupBox
    Left = 185
    Top = 0
    Width = 185
    Height = 392
    Align = alLeft
    Caption = '&Documentos:'
    TabOrder = 3
    object DBCtrlGrid2: TDBCtrlGrid
      Left = 2
      Top = 38
      Width = 181
      Height = 187
      Align = alClient
      DataSource = Src_Documentos
      PanelHeight = 20
      PanelWidth = 164
      TabOrder = 0
      RowCount = 9
      OnExit = DBCtrlGrid2Exit
      object DBEdit3: TDBEdit
        Left = 2
        Top = 2
        Width = 80
        Height = 21
        DataField = 'VALOR'
        DataSource = Src_Documentos
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 2
        Width = 80
        Height = 21
        DataField = 'DATA_DOC'
        DataSource = Src_Documentos
        TabOrder = 1
      end
    end
    object DBNavigator2: TDBNavigator
      Left = 2
      Top = 365
      Width = 181
      Height = 25
      DataSource = Src_Documentos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alBottom
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Inserir'
        'Deletar'
        'Alterar'
        'Gravar'
        'Cancelar'
        'Refresh data')
      TabOrder = 1
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 248
      Width = 181
      Height = 117
      Align = alBottom
      Caption = 'Inserir a Partir dos Parametros:'
      TabOrder = 2
      object StaticText9: TStaticText
        Left = 8
        Top = 17
        Width = 68
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Inicial:'
        TabOrder = 0
      end
      object QTDP: TEdit
        Left = 80
        Top = 36
        Width = 65
        Height = 21
        TabOrder = 2
        OnExit = QTDPExit
      end
      object StaticText10: TStaticText
        Left = 8
        Top = 39
        Width = 68
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Qtd.Parcelas:'
        TabOrder = 3
      end
      object StaticText11: TStaticText
        Left = 7
        Top = 62
        Width = 68
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Intervalo:'
        TabOrder = 4
      end
      object INTERV: TEdit
        Left = 79
        Top = 59
        Width = 65
        Height = 21
        TabOrder = 5
        OnExit = INTERVExit
      end
      object bbInserir: TBitBtn
        Left = 24
        Top = 95
        Width = 106
        Height = 21
        Caption = 'Inserir &Agora'
        TabOrder = 6
        OnClick = bbInserirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
      object MDATAINI: TMaskEdit
        Left = 81
        Top = 14
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDATAINIExit
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 225
      Width = 181
      Height = 23
      Align = alBottom
      TabOrder = 3
      object StaticText20: TStaticText
        Left = 2
        Top = 4
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Total Documentos:'
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
      end
      object st_totdoc2: TStaticText
        Left = 95
        Top = 3
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 15
      Width = 181
      Height = 23
      Align = alTop
      TabOrder = 4
      object StaticText4: TStaticText
        Left = 82
        Top = 1
        Width = 79
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Dt.Pgto'
        TabOrder = 0
      end
      object StaticText3: TStaticText
        Left = 1
        Top = 1
        Width = 79
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Valor'
        TabOrder = 1
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 392
    Width = 587
    Height = 21
    Align = alBottom
    TabOrder = 4
    object Label1: TLabel
      Left = 6
      Top = 4
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object OBS: TEdit
      Left = 72
      Top = 1
      Width = 505
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object Tb_Titulos: TQuery
    CachedUpdates = True
    BeforeEdit = Tb_TitulosBeforeEdit
    BeforePost = Tb_TitulosBeforePost
    AfterPost = Tb_TitulosAfterPost
    AfterCancel = Tb_TitulosAfterCancel
    BeforeDelete = Tb_TitulosBeforeDelete
    DatabaseName = 'C:\SGE\TEMP'
    SQL.Strings = (
      'Select * from ttt00000')
    UpdateObject = U_Titulos
    Left = 200
    Top = 60
    object Tb_TitulosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object Tb_TitulosDATA_DOC: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA_DOC'
    end
  end
  object Tb_Documentos: TQuery
    CachedUpdates = True
    BeforeEdit = Tb_DocumentosBeforeEdit
    BeforePost = Tb_DocumentosBeforePost
    AfterPost = Tb_DocumentosAfterPost
    AfterCancel = Tb_DocumentosAfterCancel
    BeforeDelete = Tb_DocumentosBeforeDelete
    DatabaseName = 'C:\SGE\TEMP'
    SQL.Strings = (
      'Select * from ttt00000')
    UpdateObject = U_Documentos
    Left = 224
    Top = 60
    object Tb_DocumentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object Tb_DocumentosDATA_DOC: TDateField
      FieldName = 'DATA_DOC'
    end
  end
  object Src_titulos: TDataSource
    DataSet = Tb_Titulos
    Left = 133
    Top = 17
  end
  object Src_Documentos: TDataSource
    DataSet = Tb_Documentos
    Left = 253
    Top = 61
  end
  object U_Titulos: TUpdateSQL
    ModifySQL.Strings = (
      'update ttt00000'
      'set'
      '  VALOR = :VALOR,'
      '  DATA_DOC = :DATA_DOC'
      'where'
      '  VALOR = :OLD_VALOR and'
      '  DATA_DOC = :OLD_DATA_DOC')
    InsertSQL.Strings = (
      'insert into ttt00000'
      '  (VALOR, DATA_DOC)'
      'values'
      '  (:VALOR, :DATA_DOC)')
    DeleteSQL.Strings = (
      'delete from ttt00000'
      'where'
      '  VALOR = :OLD_VALOR and'
      '  DATA_DOC = :OLD_DATA_DOC')
    Left = 160
    Top = 16
  end
  object U_Documentos: TUpdateSQL
    ModifySQL.Strings = (
      'update ttt00000'
      'set'
      '  VALOR = :VALOR,'
      '  DATA_DOC = :DATA_DOC'
      'where'
      '  VALOR = :OLD_VALOR and'
      '  DATA_DOC = :OLD_DATA_DOC')
    InsertSQL.Strings = (
      'insert into ttt00000'
      '  (VALOR, DATA_DOC)'
      'values'
      '  (:VALOR, :DATA_DOC)')
    DeleteSQL.Strings = (
      'delete from ttt00000'
      'where'
      '  VALOR = :OLD_VALOR and'
      '  DATA_DOC = :OLD_DATA_DOC')
    Left = 281
    Top = 61
  end
end
