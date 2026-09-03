object Frm_RelNFS_Comparar: TFrm_RelNFS_Comparar
  Left = 192
  Top = 124
  Width = 720
  Height = 480
  Caption = 'Comparar dados da planilha'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 408
    Width = 712
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbSalvar: TBitBtn
      Left = 32
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Salvar Planilha'
      TabOrder = 0
      OnClick = bbSalvarClick
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
    object StringGrid1: TStringGrid
      Left = 673
      Top = -15
      Width = 704
      Height = 39
      ColCount = 10
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 1
      Visible = False
    end
    object bbSair: TBitBtn
      Left = 432
      Top = 8
      Width = 201
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
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
  object DBGrid_nfs: TDBGrid
    Left = 0
    Top = 0
    Width = 712
    Height = 408
    Align = alClient
    DataSource = src_nfs
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ger_numeronf'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ns_valor'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pla_valor'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ger_difer'
        Width = 107
        Visible = True
      end>
  end
  object mem_nfs: TRxMemoryData
    FieldDefs = <
      item
        Name = 'ger_numeronf'
        DataType = ftInteger
      end
      item
        Name = 'ns_valor'
        DataType = ftFloat
      end
      item
        Name = 'pla_valor'
        DataType = ftFloat
      end>
    Left = 352
    Top = 80
    object mem_nfsger_numeronf: TIntegerField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'ger_numeronf'
    end
    object mem_nfsns_valor: TFloatField
      DisplayLabel = 'Valor CADNS'
      FieldName = 'ns_valor'
    end
    object mem_nfspla_valor: TFloatField
      DisplayLabel = 'Valor Planilha'
      FieldName = 'pla_valor'
    end
    object mem_nfsger_difer: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldName = 'ger_difer'
    end
  end
  object src_nfs: TDataSource
    DataSet = mem_nfs
    Left = 400
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 409
  end
end
