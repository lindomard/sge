object Frm_CarCor_Loc: TFrm_CarCor_Loc
  Left = 158
  Top = 119
  Width = 583
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisa no arquivo de Carta de Corre'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 575
    Height = 137
    Align = alTop
    Caption = 'Filtrar os seguintes registros:'
    TabOrder = 0
    object Label6: TLabel
      Left = 12
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label7: TLabel
      Left = 177
      Top = 26
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 14
      Top = 46
      Width = 64
      Height = 13
      Caption = 'Chave Inicial:'
    end
    object Label2: TLabel
      Left = 177
      Top = 46
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label3: TLabel
      Left = 14
      Top = 67
      Width = 66
      Height = 13
      Caption = 'N'#250'mero Nota:'
    end
    object Label4: TLabel
      Left = 14
      Top = 87
      Width = 59
      Height = 13
      Caption = 'Destinat'#225'rio:'
    end
    object MDT1: TMaskEdit
      Left = 82
      Top = 21
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 196
      Top = 21
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_TPDATA: TRadioGroup
      Left = 281
      Top = 6
      Width = 267
      Height = 35
      Caption = 'Pesquisar na seguinte data:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '&carta corre'#231#227'o'
        '&emiss'#227'o documento')
      TabOrder = 2
    end
    object CHAVEI: TEdit
      Left = 82
      Top = 42
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CHAVEIExit
    end
    object CHAVEF: TEdit
      Left = 196
      Top = 42
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CHAVEFExit
    end
    object NUMNF: TEdit
      Left = 82
      Top = 63
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = NUMNFExit
    end
    object RG_FILTRO: TRadioGroup
      Left = 283
      Top = 46
      Width = 264
      Height = 35
      Caption = 'Filtrar Somente as Notas:'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Nossa'
        'Sua'
        'Todas')
      TabOrder = 6
    end
    object RAZAOSOC: TEdit
      Left = 82
      Top = 83
      Width = 287
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object CB_EXATA: TCheckBox
      Left = 373
      Top = 85
      Width = 171
      Height = 17
      Caption = 'Somente Raz'#227'o Social Exata'
      TabOrder = 8
    end
    object bbPesquisar: TBitBtn
      Left = 16
      Top = 106
      Width = 132
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 9
      OnClick = bbPesquisarClick
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
    object bbSair: TBitBtn
      Left = 416
      Top = 106
      Width = 132
      Height = 25
      Caption = '&Sair'
      TabOrder = 10
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
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 575
    Height = 204
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 573
      Height = 202
      Align = alClient
      DataSource = Src_CCOR01
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
          FieldName = 'CC1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1DATA'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1RAZAO'
          Width = 311
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1ENDERECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1CIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1SERIE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1DATANF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC1EMISSAO'
          Visible = True
        end>
    end
  end
  object Qr_CCor01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADCCOR01')
    Left = 264
    Top = 108
    object Qr_CCor01CC1CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CC1CODEMP'
      Origin = 'SG_ASSOC.CADCCOR01.CC1CODEMP'
    end
    object Qr_CCor01CC1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CC1CHAVE'
      Origin = 'SG_ASSOC.CADCCOR01.CC1CHAVE'
    end
    object Qr_CCor01CC1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'CC1DATA'
      Origin = 'SG_ASSOC.CADCCOR01.CC1DATA'
    end
    object Qr_CCor01CC1RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CC1RAZAO'
      Origin = 'SG_ASSOC.CADCCOR01.CC1RAZAO'
      Size = 60
    end
    object Qr_CCor01CC1ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CC1ENDERECO'
      Origin = 'SG_ASSOC.CADCCOR01.CC1ENDERECO'
      Size = 60
    end
    object Qr_CCor01CC1CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CC1CIDADE'
      Origin = 'SG_ASSOC.CADCCOR01.CC1CIDADE'
      Size = 60
    end
    object Qr_CCor01CC1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'CC1NUMNF'
      Origin = 'SG_ASSOC.CADCCOR01.CC1NUMNF'
    end
    object Qr_CCor01CC1SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CC1SERIE'
      Origin = 'SG_ASSOC.CADCCOR01.CC1SERIE'
      Size = 6
    end
    object Qr_CCor01CC1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'CC1DATANF'
      Origin = 'SG_ASSOC.CADCCOR01.CC1DATANF'
    end
    object Qr_CCor01CC1EMISSAO: TFloatField
      DisplayLabel = 'Data Carta'
      FieldName = 'CC1EMISSAO'
      Origin = 'SG_ASSOC.CADCCOR01.CC1EMISSAO'
    end
  end
  object Src_CCOR01: TDataSource
    DataSet = Qr_CCor01
    Left = 294
    Top = 109
  end
end
