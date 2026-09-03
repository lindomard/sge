object Frm_ordemdeproducao: TFrm_ordemdeproducao
  Left = 317
  Top = 183
  Width = 870
  Height = 480
  Caption = 'Frm_ordemdeproducao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 449
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 854
        Height = 81
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object RE_relatorio: TMemo
        Left = 0
        Top = 195
        Width = 854
        Height = 226
        Align = alBottom
        Lines.Strings = (
          'RE_relatorio')
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'grades'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 16
        Top = 24
        Width = 737
        Height = 273
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Query1: TQuery
    Left = 160
    Top = 104
  end
  object mem_grade: TRxMemoryData
    FieldDefs = <>
    Left = 288
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = mem_grade
    Left = 328
    Top = 168
  end
end
