object Frm_PSFor: TFrm_PSFor
  Left = 192
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Rela'#231'a'#245' de Produtos Excluidos das Formulas'
  ClientHeight = 317
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 688
    Height = 49
    Align = alTop
    TabOrder = 0
    object bb_gerar: TButton
      Left = 264
      Top = 16
      Width = 169
      Height = 25
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = bb_gerarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 688
    Height = 268
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 480
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select cpcodpro, cpcodmat'
      'from cadcomp '
      'where not exists (select * from cadpro where pdcodpro=cpcodmat)'
      'order by cpcodpro, cpcodmat')
    Left = 528
    Top = 16
  end
end
