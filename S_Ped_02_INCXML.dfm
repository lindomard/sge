object Frm_Ped_02_INCXML: TFrm_Ped_02_INCXML
  Left = 53
  Top = 182
  Width = 816
  Height = 375
  Caption = 'Incluir Produtos A Partir de um XML da NFE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 808
    Height = 79
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 9
      Width = 193
      Height = 13
      Caption = 'Nome do Arquivo XML a Ser Lido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbnProcNFE: TSpeedButton
      Left = 686
      Top = 25
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = sbnProcNFEClick
    end
    object edt_nomxml: TEdit
      Left = 6
      Top = 26
      Width = 676
      Height = 21
      TabOrder = 0
    end
    object bbLer: TBitBtn
      Left = 6
      Top = 51
      Width = 119
      Height = 25
      Caption = 'Ler o Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbLerClick
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
      Left = 575
      Top = 52
      Width = 204
      Height = 25
      Caption = '&Sair Transferindo os Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbSairClick
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
    object bbSairSemGravar: TBitBtn
      Left = 293
      Top = 50
      Width = 204
      Height = 25
      Caption = 'Sair sem Gravar Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbSairSemGravarClick
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
  object gb_itens: TGroupBox
    Left = 0
    Top = 167
    Width = 808
    Height = 174
    Align = alClient
    Caption = 'Itens Encontrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 804
      Height = 157
      Align = alClient
      DataSource = Src_NFE_CadDet
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DETPRODCPROD'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODXPROD'
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODQCOM'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODVUNCOM'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETPRODVPROD'
          Width = 110
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 79
    Width = 808
    Height = 88
    Align = alTop
    Caption = 'Dados do Cabe'#231'alho:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 46
      Top = 20
      Width = 80
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label3: TLabel
      Left = 83
      Top = 40
      Width = 44
      Height = 13
      Caption = 'Cidade:'
    end
    object Label4: TLabel
      Left = 10
      Top = 59
      Width = 120
      Height = 13
      Caption = 'Valor da Nota Fiscal:'
    end
    object Label5: TLabel
      Left = 258
      Top = 62
      Width = 68
      Height = 13
      Caption = 'N'#250'mero NF:'
    end
    object Label6: TLabel
      Left = 466
      Top = 63
      Width = 82
      Height = 13
      Caption = 'Data Emiss'#227'o:'
    end
    object lbl_razsoc: TLabel
      Left = 130
      Top = 21
      Width = 58
      Height = 13
      Caption = 'lbl_razsoc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_cidadeuf: TLabel
      Left = 132
      Top = 40
      Width = 58
      Height = 13
      Caption = 'lbl_razsoc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_valornf: TLabel
      Left = 131
      Top = 60
      Width = 58
      Height = 13
      Caption = 'lbl_razsoc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_numnf: TLabel
      Left = 329
      Top = 62
      Width = 58
      Height = 13
      Caption = 'lbl_razsoc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_dtemissao: TLabel
      Left = 552
      Top = 62
      Width = 58
      Height = 13
      Caption = 'lbl_razsoc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 509
      Top = 14
      Width = 36
      Height = 13
      Caption = 'CNPJ:'
    end
    object lbl_cnpj: TLabel
      Left = 552
      Top = 13
      Width = 45
      Height = 13
      Caption = 'lbl_cnpj'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Src_NFE_CadDet: TDataSource
    DataSet = Qr_NFE_CADDET
    Left = 576
    Top = 111
  end
  object Qr_NFE_CADCAB: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '
      'DESTXNOME,'
      'IDEDEMI,'
      'DESTENDERDESTXMUN,'
      'TOTALICMSTOTVNF,'
      'IDENNF'
      ',DESTCNPJ'
      ',DESTCPF'
      ',DESTENDERDESTUF'
      ' from NFE_CADCAB')
    Left = 640
    Top = 15
    object Qr_NFE_CADCABDESTXNOME: TStringField
      FieldName = 'DESTXNOME'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTXNOME'
      Size = 60
    end
    object Qr_NFE_CADCABIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDEDEMI'
    end
    object Qr_NFE_CADCABDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTXMUN'
      Size = 60
    end
    object Qr_NFE_CADCABTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.TOTALICMSTOTVNF'
    end
    object Qr_NFE_CADCABIDENNF: TFloatField
      FieldName = 'IDENNF'
      Origin = 'SG_ASSOC.NFE_CADCAB.IDENNF'
    end
    object Qr_NFE_CADCABDESTCNPJ: TStringField
      FieldName = 'DESTCNPJ'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTCNPJ'
      Size = 14
    end
    object Qr_NFE_CADCABDESTCPF: TStringField
      FieldName = 'DESTCPF'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTCPF'
      Size = 14
    end
    object Qr_NFE_CADCABDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Origin = 'SG_ASSOC.NFE_CADCAB.DESTENDERDESTUF'
      Size = 2
    end
  end
  object Qr_NFE_CADDET: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '
      'DETPRODCPROD,'
      'DETPRODXPROD,'
      'DETPRODQCOM,'
      'DETPRODVUNCOM'
      ',DETPRODVPROD'
      ' from NFE_CADDET')
    Left = 552
    Top = 31
    object Qr_NFE_CADDETDETPRODCPROD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DETPRODCPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODCPROD'
      Size = 60
    end
    object Qr_NFE_CADDETDETPRODXPROD: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DETPRODXPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODXPROD'
      Size = 120
    end
    object Qr_NFE_CADDETDETPRODQCOM: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'DETPRODQCOM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODQCOM'
    end
    object Qr_NFE_CADDETDETPRODVUNCOM: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'DETPRODVUNCOM'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVUNCOM'
    end
    object Qr_NFE_CADDETDETPRODVPROD: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'DETPRODVPROD'
      Origin = 'SG_ASSOC.NFE_CADDET.DETPRODVPROD'
    end
  end
  object OPD1: TOpenDialog
    Left = 440
    Top = 8
  end
end
