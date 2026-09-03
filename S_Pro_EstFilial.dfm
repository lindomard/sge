object frm_Pro_EstFilial: Tfrm_Pro_EstFilial
  Left = 203
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Estoque de Produtos por Filial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_nompro: TLabel
    Left = 0
    Top = 0
    Width = 912
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = 'lbl_nompro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_precoqtd: TLabel
    Left = 0
    Top = 23
    Width = 912
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = 'lbl_nompro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 168
    Top = 64
    Width = 545
    Height = 257
    Caption = 'Filiais:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 541
      Height = 240
      Align = alClient
      DataSource = src_cadpro_filial
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CFNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFFILIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CESALDO'
          Visible = True
        end>
    end
  end
  object bbFechar: TBitBtn
    Left = 272
    Top = 360
    Width = 265
    Height = 41
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = bbFecharClick
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
  object tb_cadpro_filial: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CESALDO,CFNOME,CFFILIAL from CADEST,CADPRO_FILIAL'
      'WHERE CFFILIAL=CEFILIAL ')
    Left = 776
    Top = 144
    object tb_cadpro_filialCESALDO: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'CESALDO'
      Origin = 'SG_ASSOC.CADEST.CESALDO'
    end
    object tb_cadpro_filialCFNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Local'
      FieldName = 'CFNOME'
      Origin = 'SG_ASSOC.CADPRO_FILIAL.CFNOME'
      Size = 60
    end
    object tb_cadpro_filialCFFILIAL: TFloatField
      DisplayLabel = 'Filial'
      FieldName = 'CFFILIAL'
      Origin = 'SG_ASSOC.CADPRO_FILIAL.CFFILIAL'
    end
  end
  object src_cadpro_filial: TDataSource
    DataSet = tb_cadpro_filial
    Left = 784
    Top = 96
  end
end
