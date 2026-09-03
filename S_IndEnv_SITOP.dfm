object Frm_IndEnv_SITOP: TFrm_IndEnv_SITOP
  Left = 192
  Top = 124
  Width = 986
  Height = 480
  Caption = 'Situa'#231#227'o da Ordem de Produ'#231#227'o:'
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 970
    Height = 46
    Align = alTop
    Alignment = taCenter
    Caption = 'Situa'#231#227'o da Ordem de Produ'#231#227'o'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 970
    Height = 26
    Align = alTop
    TabOrder = 0
    object BBSAIR: TBitBtn
      Left = 310
      Top = 0
      Width = 271
      Height = 26
      Cursor = crHandPoint
      Hint = 'Sair do Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 46
    Width = 970
    Height = 105
    Align = alTop
    Caption = 'Ordem de Produ'#231#227'o:'
    TabOrder = 1
    object DBGrid_op01: TDBGrid
      Left = 2
      Top = 15
      Width = 966
      Height = 88
      Align = alClient
      DataSource = src_op01
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
          FieldName = 'OP1_CODIGO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP1_DATA'
          Title.Alignment = taCenter
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OP1_NOME'
          Title.Alignment = taCenter
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observacoes'
          Title.Alignment = taCenter
          Width = 443
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 970
    Height = 265
    Align = alClient
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 297
      Height = 263
      Align = alClient
      Caption = 'Processos:'
      TabOrder = 0
      object DBGrid_opeta: TDBGrid
        Left = 2
        Top = 15
        Width = 293
        Height = 246
        Align = alClient
        DataSource = src_op01_eta
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
            FieldName = 'ETA_DESCRICAO'
            Title.Alignment = taCenter
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ETA_DATHOR_INIPROC'
            Title.Alignment = taCenter
            Width = 133
            Visible = True
          end>
      end
    end
    object GB_DADOSPROC: TGroupBox
      Left = 298
      Top = 1
      Width = 671
      Height = 263
      Align = alRight
      Caption = 'Dados do Processo:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object Label11: TLabel
        Left = 1
        Top = 18
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Processo:'
      end
      object Label12: TLabel
        Left = 320
        Top = 16
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Responsavel:'
      end
      object Label13: TLabel
        Left = 1
        Top = 35
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Inicio:'
      end
      object Label15: TLabel
        Left = 320
        Top = 36
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Termino:'
      end
      object Label17: TLabel
        Left = 1
        Top = 52
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Conferido Por:'
      end
      object Label18: TLabel
        Left = 320
        Top = 51
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'em:'
      end
      object Label20: TLabel
        Left = 1
        Top = 71
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Resultado:'
      end
      object Label21: TLabel
        Left = 320
        Top = 81
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Observa'#231#227'o:'
      end
      object DBMemo_obs: TDBMemo
        Left = 403
        Top = 67
        Width = 244
        Height = 75
        DataField = 'ETA_OBS'
        DataSource = src_op01_eta
        ReadOnly = True
        TabOrder = 0
      end
      object DBE_ETA_DESCRICAO: TDBEdit
        Left = 83
        Top = 16
        Width = 244
        Height = 19
        DataField = 'ETA_DESCRICAO'
        DataSource = src_op01_eta
        TabOrder = 1
      end
      object DBE_ETA_RESPONSAVEL: TDBEdit
        Left = 403
        Top = 16
        Width = 244
        Height = 19
        DataField = 'ETA_RESPONSAVEL'
        DataSource = src_op01_eta
        TabOrder = 2
      end
      object DBE_ETA_DATHOR_INIPROC: TDBEdit
        Left = 83
        Top = 33
        Width = 244
        Height = 19
        DataField = 'ETA_DATHOR_INIPROC'
        DataSource = src_op01_eta
        TabOrder = 3
      end
      object DBE_ETA_DATHOR_TERMINO: TDBEdit
        Left = 403
        Top = 32
        Width = 244
        Height = 19
        DataField = 'ETA_DATHOR_TERMINO'
        DataSource = src_op01_eta
        TabOrder = 4
      end
      object DBE_ETA_CONFERENTE: TDBEdit
        Left = 83
        Top = 49
        Width = 244
        Height = 19
        DataField = 'ETA_CONFERENTE'
        DataSource = src_op01_eta
        TabOrder = 5
      end
      object DBE_ETA_DATHOR_CONF: TDBEdit
        Left = 403
        Top = 49
        Width = 244
        Height = 19
        DataField = 'ETA_DATHOR_CONF'
        DataSource = src_op01_eta
        TabOrder = 6
      end
      object DBE_ETA_RESULTADO: TDBEdit
        Left = 83
        Top = 67
        Width = 244
        Height = 19
        DataField = 'ETA_RESULTADO'
        DataSource = src_op01_eta
        TabOrder = 7
      end
    end
  end
  object src_op01: TDataSource
    DataSet = qr_op01
    OnDataChange = src_op01DataChange
    Left = 680
    Top = 110
  end
  object qr_op01: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 688
    Top = 150
    object qr_op01OP1_CODIGO: TFloatField
      DisplayLabel = 'Chave OP'
      FieldName = 'OP1_CODIGO'
    end
    object qr_op01OP1_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OP1_DATA'
    end
    object qr_op01OP1_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'OP1_NOME'
      Size = 60
    end
    object qr_op01observacoes: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacoes'
      Size = 150
    end
  end
  object src_op01_eta: TDataSource
    DataSet = qr_opeta
    Left = 792
    Top = 102
  end
  object qr_opeta: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 800
    Top = 142
    object qr_opetaETA_CODEMP: TFloatField
      FieldName = 'ETA_CODEMP'
    end
    object qr_opetaETA_CHAVE_OP: TFloatField
      FieldName = 'ETA_CHAVE_OP'
    end
    object qr_opetaETA_CHAVE_OP_ANO: TFloatField
      FieldName = 'ETA_CHAVE_OP_ANO'
    end
    object qr_opetaETA_ORDEM: TFloatField
      FieldName = 'ETA_ORDEM'
    end
    object qr_opetaETA_DESCRICAO: TStringField
      DisplayLabel = 'Processo'
      FieldName = 'ETA_DESCRICAO'
      Size = 100
    end
    object qr_opetaETA_RESPONSAVEL: TStringField
      FieldName = 'ETA_RESPONSAVEL'
      Size = 100
    end
    object qr_opetaETA_DATHOR_INIPROC: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'ETA_DATHOR_INIPROC'
    end
    object qr_opetaETA_DATHOR_TERMINO: TDateTimeField
      FieldName = 'ETA_DATHOR_TERMINO'
    end
    object qr_opetaETA_CONFERENTE: TStringField
      FieldName = 'ETA_CONFERENTE'
      Size = 100
    end
    object qr_opetaETA_DATHOR_CONF: TDateTimeField
      FieldName = 'ETA_DATHOR_CONF'
    end
    object qr_opetaETA_RESULTADO: TStringField
      FieldName = 'ETA_RESULTADO'
      Size = 30
    end
    object qr_opetaETA_OBS: TMemoField
      FieldName = 'ETA_OBS'
      BlobType = ftMemo
    end
  end
end
