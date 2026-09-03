object Frm_Tab00JC: TFrm_Tab00JC
  Left = 3
  Top = 18
  Width = 797
  Height = 546
  Caption = 'Juntar Campos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 471
    Align = alLeft
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 168
      Height = 436
      Align = alClient
      DataSource = Src_JC
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'JCNOMCAM'
          Visible = True
        end>
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 437
      Width = 168
      Height = 33
      Align = alBottom
      Caption = 'Posi'#231#227'o:'
      TabOrder = 1
      object DBEdit1: TDBEdit
        Left = 1
        Top = 13
        Width = 165
        Height = 19
        Ctl3D = False
        DataSource = Src_JC
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 170
    Top = 0
    Width = 619
    Height = 471
    Align = alClient
    Enabled = False
    TabOrder = 1
    object Label6: TLabel
      Left = 7
      Top = 6
      Width = 85
      Height = 13
      Caption = 'Nome do Campo.:'
    end
    object NOMCAM: TEdit
      Left = 115
      Top = 5
      Width = 130
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = NOMCAMExit
      OnKeyPress = NOMCAMKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 428
      Width = 617
      Height = 42
      Align = alBottom
      DataField = 'observacoes'
      DataSource = Src_JC
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 26
      Width = 606
      Height = 97
      Caption = 'Campo 01:'
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 75
        Width = 41
        Height = 13
        Caption = 'Formato:'
      end
      object Label10: TLabel
        Left = 262
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Tamanho M'#225'ximo:'
      end
      object Label11: TLabel
        Left = 439
        Top = 75
        Width = 116
        Height = 13
        Caption = 'Inserir quantos Espa'#231'os:'
      end
      object FORMA01: TLabel
        Left = 554
        Top = 49
        Width = 46
        Height = 13
        Caption = 'Caractere'
      end
      object lbl_tcampo01: TLabel
        Left = 8
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Dados da Empresa'
      end
      object FORMATO01: TEdit
        Left = 62
        Top = 74
        Width = 152
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = FORMATO01Exit
        OnKeyPress = FORMATO01KeyPress
      end
      object TAMMAX01: TEdit
        Left = 351
        Top = 74
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = TAMMAX01Exit
      end
      object ESPACO01: TEdit
        Left = 559
        Top = 73
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = ESPACO01Exit
      end
      object CAMPO01: TComboBox
        Left = 104
        Top = 43
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 2
        Visible = False
        OnExit = CAMPO01Exit
      end
      object RGTIPO01: TRadioGroup
        Left = 2
        Top = 12
        Width = 292
        Height = 28
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Campo'
          'Mensagem'
          'dados Empresa')
        TabOrder = 0
        OnClick = RGTIPO01Exit
        OnExit = RGTIPO01Exit
      end
      object CAMPO_EMP01: TComboBox
        Left = 104
        Top = 43
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 3
        OnExit = CAMPO_EMP01Exit
      end
      object MENSAGEM01: TEdit
        Left = 104
        Top = 43
        Width = 428
        Height = 21
        TabOrder = 4
        Visible = False
        OnExit = MENSAGEM01Exit
        OnKeyPress = MENSAGEM01KeyPress
      end
      object RG_BRANCOS01: TRadioGroup
        Left = 294
        Top = 12
        Width = 307
        Height = 28
        Caption = 'Eliminar Brancos:'
        Columns = 4
        ItemIndex = 3
        Items.Strings = (
          'N'#227'o'
          '1-Esquerda'
          '2-Direita'
          '3-Esq/Dir')
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 126
      Width = 606
      Height = 97
      Caption = 'Campo 01:'
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 75
        Width = 41
        Height = 13
        Caption = 'Formato:'
      end
      object Label2: TLabel
        Left = 262
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Tamanho M'#225'ximo:'
      end
      object Label3: TLabel
        Left = 436
        Top = 75
        Width = 116
        Height = 13
        Caption = 'Inserir quantos Espa'#231'os:'
      end
      object FORMA02: TLabel
        Left = 551
        Top = 49
        Width = 46
        Height = 13
        Caption = 'Caractere'
      end
      object lbl_tcampo02: TLabel
        Left = 8
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Dados da Empresa'
      end
      object FORMATO02: TEdit
        Left = 62
        Top = 74
        Width = 152
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = FORMATO02Exit
        OnKeyPress = FORMATO02KeyPress
      end
      object TAMMAX02: TEdit
        Left = 351
        Top = 74
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = TAMMAX02Exit
      end
      object ESPACO02: TEdit
        Left = 556
        Top = 73
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = ESPACO02Exit
      end
      object CAMPO02: TComboBox
        Left = 104
        Top = 43
        Width = 432
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 2
        Visible = False
        OnExit = CAMPO02Exit
      end
      object RGTIPO02: TRadioGroup
        Left = 2
        Top = 12
        Width = 292
        Height = 28
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Campo'
          'Mensagem'
          'dados Empresa')
        TabOrder = 0
        OnClick = RGTIPO02Exit
        OnExit = RGTIPO02Exit
      end
      object CAMPO_EMP02: TComboBox
        Left = 104
        Top = 43
        Width = 432
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 3
        OnExit = CAMPO_EMP02Exit
      end
      object MENSAGEM02: TEdit
        Left = 104
        Top = 43
        Width = 432
        Height = 21
        TabOrder = 4
        Visible = False
        OnExit = MENSAGEM02Exit
        OnKeyPress = MENSAGEM02KeyPress
      end
      object RG_BRANCOS02: TRadioGroup
        Left = 294
        Top = 12
        Width = 307
        Height = 28
        Caption = 'Eliminar Brancos:'
        Columns = 4
        ItemIndex = 3
        Items.Strings = (
          'N'#227'o'
          '1-Esquerda'
          '2-Direita'
          '3-Esq/Dir')
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 229
      Width = 606
      Height = 97
      Caption = 'Campo 01:'
      TabOrder = 3
      object Label7: TLabel
        Left = 8
        Top = 75
        Width = 41
        Height = 13
        Caption = 'Formato:'
      end
      object Label9: TLabel
        Left = 262
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Tamanho M'#225'ximo:'
      end
      object Label12: TLabel
        Left = 438
        Top = 75
        Width = 116
        Height = 13
        Caption = 'Inserir quantos Espa'#231'os:'
      end
      object FORMA03: TLabel
        Left = 553
        Top = 49
        Width = 46
        Height = 13
        Caption = 'Caractere'
      end
      object lbl_tcampo03: TLabel
        Left = 8
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Dados da Empresa'
      end
      object FORMATO03: TEdit
        Left = 62
        Top = 74
        Width = 152
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = FORMATO03Exit
        OnKeyPress = FORMATO03KeyPress
      end
      object TAMMAX03: TEdit
        Left = 351
        Top = 74
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = TAMMAX03Exit
      end
      object ESPACO03: TEdit
        Left = 558
        Top = 73
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = ESPACO03Exit
      end
      object CAMPO03: TComboBox
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 2
        Visible = False
        OnExit = CAMPO03Exit
      end
      object RGTIPO03: TRadioGroup
        Left = 2
        Top = 12
        Width = 292
        Height = 28
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Campo'
          'Mensagem'
          'dados Empresa')
        TabOrder = 0
        OnClick = CAMPO03Exit
        OnExit = RGTIPO03Exit
      end
      object CAMPO_EMP03: TComboBox
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 3
        OnExit = CAMPO_EMP03Exit
      end
      object MENSAGEM03: TEdit
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        TabOrder = 4
        Visible = False
        OnExit = MENSAGEM03Exit
        OnKeyPress = MENSAGEM03KeyPress
      end
      object RG_BRANCOS03: TRadioGroup
        Left = 294
        Top = 12
        Width = 307
        Height = 28
        Caption = 'Eliminar Brancos:'
        Columns = 4
        ItemIndex = 3
        Items.Strings = (
          'N'#227'o'
          '1-Esquerda'
          '2-Direita'
          '3-Esq/Dir')
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 4
      Top = 328
      Width = 606
      Height = 97
      Caption = 'Campo 01:'
      TabOrder = 4
      object Label15: TLabel
        Left = 8
        Top = 75
        Width = 41
        Height = 13
        Caption = 'Formato:'
      end
      object Label16: TLabel
        Left = 262
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Tamanho M'#225'ximo:'
      end
      object Label17: TLabel
        Left = 438
        Top = 75
        Width = 116
        Height = 13
        Caption = 'Inserir quantos Espa'#231'os:'
      end
      object FORMA04: TLabel
        Left = 553
        Top = 49
        Width = 46
        Height = 13
        Caption = 'Caractere'
      end
      object lbl_tcampo04: TLabel
        Left = 8
        Top = 48
        Width = 90
        Height = 13
        Caption = 'Dados da Empresa'
      end
      object FORMATO04: TEdit
        Left = 62
        Top = 74
        Width = 152
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = FORMATO04Exit
        OnKeyPress = FORMATO04KeyPress
      end
      object TAMMAX04: TEdit
        Left = 351
        Top = 74
        Width = 75
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = TAMMAX04Exit
      end
      object ESPACO04: TEdit
        Left = 558
        Top = 73
        Width = 41
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = ESPACO04Exit
      end
      object CAMPO04: TComboBox
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 2
        Visible = False
        OnExit = CAMPO04Exit
      end
      object RGTIPO04: TRadioGroup
        Left = 2
        Top = 12
        Width = 292
        Height = 28
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Campo'
          'Mensagem'
          'dados Empresa')
        TabOrder = 0
        OnClick = RGTIPO04Exit
        OnExit = RGTIPO04Exit
      end
      object CAMPO_EMP04: TComboBox
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        Sorted = True
        TabOrder = 3
        OnExit = CAMPO_EMP04Exit
      end
      object MENSAGEM04: TEdit
        Left = 104
        Top = 45
        Width = 428
        Height = 21
        TabOrder = 4
        Visible = False
        OnExit = MENSAGEM04Exit
        OnKeyPress = MENSAGEM04KeyPress
      end
      object RG_BRANCOS04: TRadioGroup
        Left = 294
        Top = 12
        Width = 307
        Height = 28
        Caption = 'Eliminar Brancos:'
        Columns = 4
        ItemIndex = 3
        Items.Strings = (
          'N'#227'o'
          '1-Esquerda'
          '2-Direita'
          '3-Esq/Dir')
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 471
    Width = 789
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BBINCLUIRClick
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
    object BBALTERAR: TBitBtn
      Left = 115
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = BBALTERARClick
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
    object BBGRAVAR: TBitBtn
      Left = 228
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
      OnClick = BBGRAVARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BBCANCELAR: TBitBtn
      Left = 341
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = BBCANCELARClick
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
    object BBEXCLUIR: TBitBtn
      Left = 454
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = BBEXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 567
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
  end
  object Qr_JC: TQuery
    OnCalcFields = Qr_JCCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVJC where '
      'JCCODEMP like :CODEMP and'
      'JCDOC        like  :DOC        and'
      'JCNOME     like  :NOME      and'
      'JCTDET         like  :TDET      and'
      'JCNOMCAM   like  :NOMCAM      and'
      'JCCODIGO  like  :CODIGO  '
      'order by JCCODIGO')
    Left = 80
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TDET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMCAM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_JCJCCODEMP: TFloatField
      FieldName = 'JCCODEMP'
      Origin = 'SG_ASSOC.CTDVJC.JCCODEMP'
    end
    object Qr_JCJCDOC: TStringField
      FieldName = 'JCDOC'
      Origin = 'SG_ASSOC.CTDVJC.JCDOC'
      Size = 10
    end
    object Qr_JCJCNOME: TStringField
      FieldName = 'JCNOME'
      Origin = 'SG_ASSOC.CTDVJC.JCNOME'
      Size = 50
    end
    object Qr_JCJCCODIGO: TFloatField
      FieldName = 'JCCODIGO'
      Origin = 'SG_ASSOC.CTDVJC.JCCODIGO'
    end
    object Qr_JCJCTCAMPO1: TFloatField
      FieldName = 'JCTCAMPO1'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO1'
    end
    object Qr_JCJCFORMA01: TStringField
      FieldName = 'JCFORMA01'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA01'
      Size = 1
    end
    object Qr_JCJCCAMPO01: TStringField
      FieldName = 'JCCAMPO01'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO01'
      Size = 132
    end
    object Qr_JCJCFORMATO01: TStringField
      FieldName = 'JCFORMATO01'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO01'
      Size = 30
    end
    object Qr_JCJCESPACO01: TFloatField
      FieldName = 'JCESPACO01'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO01'
    end
    object Qr_JCJCTAMMAX01: TFloatField
      FieldName = 'JCTAMMAX01'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX01'
    end
    object Qr_JCJCTCAMPO2: TFloatField
      FieldName = 'JCTCAMPO2'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO2'
    end
    object Qr_JCJCFORMA02: TStringField
      FieldName = 'JCFORMA02'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA02'
      Size = 1
    end
    object Qr_JCJCCAMPO02: TStringField
      FieldName = 'JCCAMPO02'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO02'
      Size = 132
    end
    object Qr_JCJCFORMATO02: TStringField
      FieldName = 'JCFORMATO02'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO02'
      Size = 30
    end
    object Qr_JCJCESPACO02: TFloatField
      FieldName = 'JCESPACO02'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO02'
    end
    object Qr_JCJCTAMMAX02: TFloatField
      FieldName = 'JCTAMMAX02'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX02'
    end
    object Qr_JCJCTCAMPO3: TFloatField
      FieldName = 'JCTCAMPO3'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO3'
    end
    object Qr_JCJCFORMA03: TStringField
      FieldName = 'JCFORMA03'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA03'
      Size = 1
    end
    object Qr_JCJCCAMPO03: TStringField
      FieldName = 'JCCAMPO03'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO03'
      Size = 132
    end
    object Qr_JCJCFORMATO03: TStringField
      FieldName = 'JCFORMATO03'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO03'
      Size = 30
    end
    object Qr_JCJCESPACO03: TFloatField
      FieldName = 'JCESPACO03'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO03'
    end
    object Qr_JCJCTAMMAX03: TFloatField
      FieldName = 'JCTAMMAX03'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX03'
    end
    object Qr_JCJCTCAMPO4: TFloatField
      FieldName = 'JCTCAMPO4'
      Origin = 'SG_ASSOC.CTDVJC.JCTCAMPO4'
    end
    object Qr_JCJCFORMA04: TStringField
      FieldName = 'JCFORMA04'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMA04'
      Size = 1
    end
    object Qr_JCJCCAMPO04: TStringField
      FieldName = 'JCCAMPO04'
      Origin = 'SG_ASSOC.CTDVJC.JCCAMPO04'
      Size = 132
    end
    object Qr_JCJCFORMATO04: TStringField
      FieldName = 'JCFORMATO04'
      Origin = 'SG_ASSOC.CTDVJC.JCFORMATO04'
      Size = 30
    end
    object Qr_JCJCESPACO04: TFloatField
      FieldName = 'JCESPACO04'
      Origin = 'SG_ASSOC.CTDVJC.JCESPACO04'
    end
    object Qr_JCJCTAMMAX04: TFloatField
      FieldName = 'JCTAMMAX04'
      Origin = 'SG_ASSOC.CTDVJC.JCTAMMAX04'
    end
    object Qr_JCJCNOMCAM: TStringField
      DisplayLabel = ' Nome do Campo'
      FieldName = 'JCNOMCAM'
      Origin = 'SG_ASSOC.CTDVJC.JCNOMCAM'
      Size = 30
    end
    object Qr_JCJCTDET: TFloatField
      FieldName = 'JCTDET'
      Origin = 'SG_ASSOC.CTDVJC.JCTDET'
    end
    object Qr_JCposicao: TStringField
      FieldKind = fkCalculated
      FieldName = 'posicao'
      Calculated = True
    end
    object Qr_JCnomcam01: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcam01'
      Size = 132
      Calculated = True
    end
    object Qr_JCnomcam02: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcam02'
      Size = 132
      Calculated = True
    end
    object Qr_JCnomcam03: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcam03'
      Size = 132
      Calculated = True
    end
    object Qr_JCnomcam04: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcam04'
      Size = 132
      Calculated = True
    end
    object Qr_JCJCBRANCOS01: TFloatField
      FieldName = 'JCBRANCOS01'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS01'
    end
    object Qr_JCJCBRANCOS02: TFloatField
      FieldName = 'JCBRANCOS02'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS02'
    end
    object Qr_JCJCBRANCOS03: TFloatField
      FieldName = 'JCBRANCOS03'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS03'
    end
    object Qr_JCJCBRANCOS04: TFloatField
      FieldName = 'JCBRANCOS04'
      Origin = 'SG_ASSOC.CTDVJC.JCBRANCOS04'
    end
    object Qr_JCobservacoes: TStringField
      FieldKind = fkCalculated
      FieldName = 'observacoes'
      Size = 200
      Calculated = True
    end
  end
  object Src_JC: TDataSource
    DataSet = Qr_JC
    OnDataChange = Src_JCDataChange
    Left = 48
    Top = 112
  end
end
