object Frm_CalcularEstoque: TFrm_CalcularEstoque
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Calcular Estoque'
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
    Width = 912
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular Estoque por Lote Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -50
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 912
    Height = 86
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 92
      Height = 13
      Caption = 'CADLGC Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 464
      Top = 8
      Width = 138
      Height = 13
      Caption = 'CADLGC Novo Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 31
      Width = 118
      Height = 13
      Caption = 'Calcular a Partir de :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 55
      Width = 106
      Height = 13
      Caption = 'Estoque Novo Em:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_cadlgc: TEdit
      Left = 111
      Top = 5
      Width = 258
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'SGE_FRUTOS2.CADLGC'
    end
    object edt_cadlgc_novo: TEdit
      Left = 614
      Top = 5
      Width = 258
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'CADLGC_NOVO'
    end
    object edt_datini: TDateEdit
      Left = 131
      Top = 27
      Width = 120
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
      Text = '13/05/2016'
    end
    object bbCalcular: TBitBtn
      Left = 400
      Top = 26
      Width = 153
      Height = 25
      Caption = 'Calcular'
      TabOrder = 3
      OnClick = bbCalcularClick
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
    object bbSalvar: TBitBtn
      Left = 584
      Top = 26
      Width = 153
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
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
    object BitBtn2: TBitBtn
      Left = 752
      Top = 26
      Width = 153
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = BitBtn2Click
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
    object edt_datfin: TDateEdit
      Left = 131
      Top = 51
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 143
    Width = 912
    Height = 299
    Align = alClient
    Caption = 'Novo Estoque:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 908
      Height = 282
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object qr_estoque: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 288
    Top = 281
  end
  object DataSource1: TDataSource
    DataSet = qr_estoque
    Left = 352
    Top = 279
  end
end
