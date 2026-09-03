object Frm_PonVen: TFrm_PonVen
  Left = 0
  Top = 9
  Width = 792
  Height = 561
  Caption = 'Ponto de Venda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 776
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Sections = <
      item
        ImageIndex = -1
        Text = 'Terminal ECF - 0025'
        Width = 200
      end
      item
        ImageIndex = -1
        Text = 'Operador: Lindomar Divino Cordeiro'
        Width = 300
      end
      item
        ImageIndex = -1
        Text = 'Data: 10/09/2002'
        Width = 150
      end
      item
        ImageIndex = -1
        Text = 'Horas: 10:10:10'
        Width = 150
      end>
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 776
    Height = 84
    Align = alTop
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -67
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 774
      Height = 82
      Align = alClient
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -67
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 101
    Width = 776
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'CAIXA LIVRE'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -67
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 0
    Top = 181
    Width = 776
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -33
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 261
    Width = 521
    Height = 224
    Align = alClient
    BevelOuter = bvLowered
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 10
      Top = 3
      Width = 102
      Height = 35
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 42
      Width = 158
      Height = 35
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODPRO: TEdit
      Left = 139
      Top = 3
      Width = 380
      Height = 33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyDown = CODPROKeyDown
      OnKeyPress = CODPROKeyPress
    end
    object QTD: TEdit
      Left = 243
      Top = 41
      Width = 276
      Height = 33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      OnExit = QTDExit
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 79
      Width = 526
      Height = 165
      Caption = 'Totais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 9
        Top = 60
        Width = 113
        Height = 23
        Caption = 'Mercadorias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 26
        Width = 49
        Height = 23
        Caption = 'Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 270
        Top = 26
        Width = 84
        Height = 23
        Caption = 'Unidades:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 7
        Top = 92
        Width = 102
        Height = 23
        Caption = 'Acr'#233'scimos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 267
        Top = 93
        Width = 53
        Height = 23
        Caption = 'Frete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 134
        Top = 131
        Width = 118
        Height = 23
        Caption = 'Total Liquido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 270
        Top = 56
        Width = 99
        Height = 23
        Caption = 'Promo'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SUBTOT: TEdit
        Left = 131
        Top = 58
        Width = 126
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object TOTITE: TEdit
        Left = 131
        Top = 24
        Width = 126
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
      object TOTUN: TEdit
        Left = 396
        Top = 18
        Width = 125
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
      end
      object TAXENT: TEdit
        Left = 395
        Top = 90
        Width = 126
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 3
      end
      object TOTLIQ: TEdit
        Left = 260
        Top = 126
        Width = 126
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 4
      end
      object TAXADM: TEdit
        Left = 131
        Top = 91
        Width = 126
        Height = 32
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 5
      end
      object TOTDES: TEdit
        Left = 395
        Top = 53
        Width = 126
        Height = 32
        Color = clRed
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object EFETIVAR: TBitBtn
      Left = 46
      Top = -27
      Width = 88
      Height = 25
      Caption = 'efetivar'
      TabOrder = 3
      OnClick = EFETIVARClick
    end
    object STG1: TStringGrid
      Left = 112
      Top = 207
      Width = 320
      Height = 7
      ColCount = 16
      DefaultRowHeight = 10
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 4
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 776
    Height = 19
    Color = clSkyBlue
    Panels = <
      item
        Text = '<F2>-Inicializa Pedido'
        Width = 110
      end
      item
        Text = '<F3>-Forma Pgto.'
        Width = 110
      end
      item
        Text = '<F5>-Quantidade'
        Width = 110
      end
      item
        Text = '<F6>-Configura'#231#245'es'
        Width = 110
      end
      item
        Text = '<F7>-Cancelar Item'
        Width = 110
      end
      item
        Text = '<CTRL-D>-Cancela Pedido'
        Width = 135
      end
      item
        Text = '<F12>-Calculadora'
        Width = 110
      end>
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 485
    Width = 776
    Height = 19
    Color = clSkyBlue
    Panels = <>
  end
  object Panel3: TPanel
    Left = 521
    Top = 261
    Width = 255
    Height = 224
    Align = alRight
    BevelOuter = bvLowered
    Color = clSkyBlue
    TabOrder = 7
    object StatusBar3: TStatusBar
      Left = 1
      Top = 1
      Width = 253
      Height = 32
      Align = alTop
      Panels = <
        item
          Text = 'Itens Efetivados:'
          Width = 250
        end>
      ParentColor = True
    end
    object Memo1: TMemo
      Left = 1
      Top = 33
      Width = 253
      Height = 190
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 352
    Top = 40
  end
end
