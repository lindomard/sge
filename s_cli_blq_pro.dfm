object Frm_cli_blq_pro: TFrm_cli_blq_pro
  Left = 192
  Top = 116
  Width = 729
  Height = 541
  Caption = 'Bloqueio de Vendas Por Grupo de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 57
    Align = alTop
    Caption = 'panel_cab'
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 721
    Height = 412
    Align = alClient
    Caption = 'Grupos de Produtos'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 717
      Height = 370
      Align = alClient
      DataSource = src_blq_gru
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CBGP_CODGRU'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grnome'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 385
      Width = 717
      Height = 25
      DataSource = src_blq_gru
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 721
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbSair: TBitBtn
      Left = 506
      Top = 7
      Width = 193
      Height = 28
      Cursor = crHandPoint
      Caption = 'Cancelar e Sair'
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
    object BitBtn1: TBitBtn
      Left = 31
      Top = 8
      Width = 193
      Height = 28
      Cursor = crHandPoint
      Caption = 'Salvar e Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object src_blq_gru: TDataSource
    DataSet = cds_cli_gru_pro
    Left = 584
    Top = 153
  end
  object cds_cli_gru_pro: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = cds_cli_gru_proBeforeInsert
    AfterInsert = cds_cli_gru_proAfterInsert
    BeforeEdit = cds_cli_gru_proBeforeEdit
    BeforePost = cds_cli_gru_proBeforePost
    Left = 184
    Top = 121
    object cds_cli_gru_proCBGP_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd Emprsa'
      FieldName = 'CBGP_CODEMP'
    end
    object cds_cli_gru_proCBGP_CODGRU: TFloatField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'CBGP_CODGRU'
    end
    object cds_cli_gru_proCBGP_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd Cliente'
      FieldName = 'CBGP_CODCLI'
    end
    object cds_cli_gru_progrnome: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'grnome'
      Size = 100
    end
    object cds_cli_gru_proCBGP_ID: TFloatField
      FieldName = 'CBGP_ID'
    end
  end
end
