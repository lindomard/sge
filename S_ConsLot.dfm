object Frm_ConsLot: TFrm_ConsLot
  Left = 567
  Top = 217
  Width = 544
  Height = 375
  Caption = 'Consulta no Arquivo de Lotes de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 6
      Width = 91
      Height = 13
      Caption = 'C'#243'digo do Produto:'
    end
    object CODPRO: TEdit
      Left = 102
      Top = 4
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 225
      Top = 4
      Width = 304
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbSair: TBitBtn
      Left = 149
      Top = 6
      Width = 225
      Height = 32
      Caption = '&Sair'
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 536
    Height = 262
    Align = alClient
    DataSource = src_lgc
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLDTVCTO'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLNUMERO'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLQTD'
        Width = 181
        Visible = True
      end>
  end
  object src_lgc: TDataSource
    DataSet = DM1.Tb_LGC
    Left = 232
    Top = 184
  end
end
