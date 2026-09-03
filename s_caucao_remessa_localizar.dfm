object frm_caucao_remessa_localizar: Tfrm_caucao_remessa_localizar
  Left = 192
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Localizar Remessa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label62: TLabel
      Left = 107
      Top = 6
      Width = 177
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de:'
    end
    object Label63: TLabel
      Left = 436
      Top = 8
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label1: TLabel
      Left = 105
      Top = 26
      Width = 177
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lote Inicial:'
    end
    object Label2: TLabel
      Left = 370
      Top = 26
      Width = 109
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lote Final:'
    end
    object edt_datini: TDateEdit
      Left = 288
      Top = 3
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 483
      Top = 3
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object edt_chave_id_inicial: TEdit
      Left = 288
      Top = 23
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edt_chave_id_final: TEdit
      Left = 483
      Top = 23
      Width = 66
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 216
      Top = 43
      Width = 185
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 4
      OnClick = BitBtn1Click
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
      Left = 424
      Top = 43
      Width = 185
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1036
    Height = 436
    Align = alClient
    DataSource = Src_ComV
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TC_CHAVE_ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_DATA'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_CODBCO_CREDITO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bcbanco'
        Title.Alignment = taCenter
        Width = 386
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_ID_LDR_CREDITO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_VALOR_CREDITO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TC_OBSERVACOES'
        Title.Alignment = taCenter
        Width = 212
        Visible = True
      end>
  end
  object Qr_Dup: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CL1CHAVE,CL1DATA,CL1CODIGO,'
      '       CL1DATAI,CL1DATAF,CL1OBS01,'
      '       CL1OBS02 from'
      '       CADCL01 where'
      '       CL1CODEMP is null'
      '')
    Left = 800
    Top = 40
    object Qr_DupTC_CHAVE_ID: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'TC_CHAVE_ID'
    end
    object Qr_DupTC_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'TC_DATA'
    end
    object Qr_DupTC_CODBCO_CREDITO: TFloatField
      DisplayLabel = 'Cod Bco Credito'
      FieldName = 'TC_CODBCO_CREDITO'
    end
    object Qr_Dupbcbanco: TStringField
      DisplayLabel = 'Nome do Banco Credito'
      FieldName = 'bcbanco'
      Size = 100
    end
    object Qr_DupTC_ID_LDR_CREDITO: TFloatField
      DisplayLabel = 'Id Ldr Credito'
      FieldName = 'TC_ID_LDR_CREDITO'
    end
    object Qr_DupTC_VALOR_CREDITO: TFloatField
      DisplayLabel = 'Valor Credito'
      FieldName = 'TC_VALOR_CREDITO'
    end
    object Qr_DupTC_OBSERVACOES: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'TC_OBSERVACOES'
      BlobType = ftMemo
    end
  end
  object Src_ComV: TDataSource
    DataSet = Qr_Dup
    Left = 840
    Top = 40
  end
end
