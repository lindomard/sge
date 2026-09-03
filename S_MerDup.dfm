object Frm_MerDup: TFrm_MerDup
  Left = 120
  Top = 114
  Width = 616
  Height = 375
  Caption = 'Compara'#231#227'o do total das mercadorias em rela'#231#227'o as duplicatas'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 45
      Top = 13
      Width = 74
      Height = 13
      Caption = 'Data Inicial.:'
    end
    object Label2: TLabel
      Left = 249
      Top = 13
      Width = 67
      Height = 13
      Caption = 'Data Final.:'
    end
    object MDT1: TMaskEdit
      Left = 120
      Top = 10
      Width = 91
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 332
      Top = 11
      Width = 93
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 608
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbVerificar: TBitBtn
      Left = 17
      Top = 9
      Width = 161
      Height = 25
      Caption = 'Verificar'
      TabOrder = 0
      OnClick = bbVerificarClick
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
    object BitBtn1: TBitBtn
      Left = 395
      Top = 9
      Width = 161
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 608
    Height = 259
    Align = alClient
    Caption = 'Pedidos Divergentes:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 604
      Height = 242
      Align = alClient
      DataSource = Src_MerDup
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CRCODEMP'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRNPED'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRICMSR'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlrped'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlrdup'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diferenca'
          Width = 85
          Visible = True
        end>
    end
  end
  object Tb_MerDup: TQuery
    OnCalcFields = Tb_MerDupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT CRCODEMP,CRLOTSEQ_CP,CRNPED,CRVALOR,CRICMSR,sum(P2TOTLIQ)' +
        ' as totped'
      'from CADDAR,CADP02'
      'where CRCODEMP is null'
      'and P2CODEMP=CRCODEMP'
      'and   P2CHAVE =CRNPED'
      'group by CRCODEMP,CRLOTSEQ_CP,CRNPED,CRVALOR,CRICMSR'
      'having(CRVALOR-CRICMSR<>(sum(P2TOTLIQ)))')
    Left = 232
    Top = 16
    object Tb_MerDupCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_MerDupCRNPED: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Tb_MerDupCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
      DisplayFormat = '0.00'
    end
    object Tb_MerDupCRICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
      DisplayFormat = '0.00'
    end
    object Tb_MerDupTOTPED: TFloatField
      DisplayLabel = 'Total Pedido'
      FieldName = 'TOTPED'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
      DisplayFormat = '0.00'
    end
    object Tb_MerDupvlrdup: TFloatField
      DisplayLabel = 'Valor Duplicata'
      FieldKind = fkCalculated
      FieldName = 'vlrdup'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Tb_MerDupvlrped: TFloatField
      DisplayLabel = 'Valor do Pedido'
      FieldKind = fkCalculated
      FieldName = 'vlrped'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Tb_MerDupdiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'diferenca'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object Tb_MerDupCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CP'
    end
  end
  object Src_MerDup: TDataSource
    DataSet = Tb_MerDup
    Left = 272
    Top = 8
  end
end
