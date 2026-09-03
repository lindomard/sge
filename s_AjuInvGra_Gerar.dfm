object Frm_AjuInvGra_Gerar: TFrm_AjuInvGra_Gerar
  Left = 197
  Top = 197
  Width = 671
  Height = 314
  Caption = 'Gerar Novo Inventario'
  Color = 14806015
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 127
    Width = 116
    Height = 13
    Caption = 'Nome do Inventario:'
  end
  object Label2: TLabel
    Left = 41
    Top = 147
    Width = 155
    Height = 13
    Caption = 'Recalcular Estoque do dia:'
  end
  object Label3: TLabel
    Left = 41
    Top = 171
    Width = 129
    Height = 13
    Caption = 'Tipo de Pre'#231'o Padr'#227'o:'
  end
  object Label4: TLabel
    Left = 74
    Top = 62
    Width = 111
    Height = 13
    Caption = 'Data do Inventario:'
  end
  object Label5: TLabel
    Left = 78
    Top = 40
    Width = 108
    Height = 13
    Caption = 'Inventariio Origem:'
  end
  object Label6: TLabel
    Left = 4
    Top = 87
    Width = 647
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Dados Para Novo Invent'#225'rio'
    Color = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 4
    Top = 9
    Width = 647
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Inventario Origem'
    Color = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 42
    Top = 192
    Width = 147
    Height = 13
    Caption = 'Local de Armazenamento:'
  end
  object edt_nominv: TEdit
    Left = 200
    Top = 124
    Width = 433
    Height = 19
    Ctl3D = False
    MaxLength = 30
    ParentCtl3D = False
    TabOrder = 0
    Text = 'edt_nominv'
  end
  object bbGerarNovo: TBitBtn
    Left = 16
    Top = 231
    Width = 150
    Height = 25
    Caption = 'Gerar Novo Inventario'
    TabOrder = 7
    OnClick = bbGerarNovoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 504
    Top = 231
    Width = 150
    Height = 25
    Caption = '&Sair'
    TabOrder = 8
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
  object edt_datainv: TDateEdit
    Left = 200
    Top = 145
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object cbAjustes: TCheckBox
    Left = 326
    Top = 148
    Width = 187
    Height = 17
    Caption = 'Ignorar Ajustes de Estoques'
    TabOrder = 2
  end
  object CB_TIPOPRECO: TComboBox
    Left = 200
    Top = 167
    Width = 433
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'Pre'#231'o 1'
    Items.Strings = (
      'Pre'#231'o 1'
      'Pre'#231'o 2'
      'Pre'#231'o 3'
      'Pre'#231'o de Custo'
      'Pre'#231'o M'#233'dio de Custo'
      #218'ltimo Preco de Compra'
      'Preco de Fabrica')
  end
  object edt_datainv_oriigem: TDateEdit
    Left = 199
    Top = 60
    Width = 121
    Height = 21
    TabStop = False
    NumGlyphs = 2
    ReadOnly = True
    TabOrder = 4
  end
  object edt_nominv_origem: TEdit
    Left = 198
    Top = 37
    Width = 433
    Height = 19
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
    Text = 'edt_nominv'
  end
  object cb_locais: TComboBox
    Left = 199
    Top = 190
    Width = 433
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Pre'#231'o 1'
    Items.Strings = (
      'Pre'#231'o 1'
      'Pre'#231'o 2'
      'Pre'#231'o 3'
      'Pre'#231'o de Custo'
      'Pre'#231'o M'#233'dio de Custo'
      #218'ltimo Preco de Compra'
      'Preco de Fabrica')
  end
  object bbNovoHistorico: TBitBtn
    Left = 192
    Top = 231
    Width = 289
    Height = 25
    Caption = 'Gerar Novo Historico'
    TabOrder = 9
    Visible = False
    OnClick = bbNovoHistoricoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object cb_manter_se_negativo: TCheckBox
    Left = 192
    Top = 216
    Width = 305
    Height = 17
    Caption = 'Manter o Estoque Atual quando ficar  negativo'
    TabOrder = 10
    Visible = False
  end
end
