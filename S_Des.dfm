object Frm_Des: TFrm_Des
  Left = 25
  Top = 108
  Width = 675
  Height = 180
  Caption = 'Descontos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 158
    Top = 55
    Width = 9
    Height = 16
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label12: TLabel
    Left = 233
    Top = 56
    Width = 9
    Height = 16
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 109
    Width = 667
    Height = 40
    Align = alBottom
    Caption = 'Tipo de Pre'#231'o/Produto:'
    TabOrder = 0
    object TIPO: TEdit
      Left = 4
      Top = 15
      Width = 400
      Height = 21
      TabStop = False
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      OnEnter = TIPOEnter
    end
  end
  object Panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 51
    Align = alTop
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 3
      Top = 2
      Width = 71
      Height = 23
      Alignment = taRightJustify
      BorderStyle = sbsSingle
      Caption = 'Produto:'
      Color = 16777147
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object NOMPRO: TStaticText
      Left = 97
      Top = 2
      Width = 520
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'MELHORAL ADULTO'
      Color = 16760767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 3
      Top = 24
      Width = 95
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Marca:'
      Color = 16777147
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object MARCA: TStaticText
      Left = 97
      Top = 24
      Width = 245
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'MELHORAL ADULTO'
      Color = 16760767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object StaticText5: TStaticText
      Left = 340
      Top = 24
      Width = 118
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Tabela:'
      Color = 16777147
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object PRECO: TStaticText
      Left = 457
      Top = 24
      Width = 160
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'MELHORAL ADULTO'
      Color = 16760767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194432
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object StaticText7: TStaticText
    Left = 3
    Top = 53
    Width = 95
    Height = 23
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Desconto(s):'
    Color = 16777147
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194432
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object DESC: TCurrencyEdit
    Left = 97
    Top = 53
    Width = 57
    Height = 23
    AutoSize = False
    Ctl3D = False
    DisplayFormat = ',0.00%;-,0.00%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnExit = DESCExit
  end
  object DESC02: TCurrencyEdit
    Left = 170
    Top = 54
    Width = 57
    Height = 23
    AutoSize = False
    Ctl3D = False
    DisplayFormat = ',0.00%;-,0.00%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnExit = DESCExit
  end
  object DESC03: TCurrencyEdit
    Left = 245
    Top = 54
    Width = 57
    Height = 23
    AutoSize = False
    Ctl3D = False
    DisplayFormat = ',0.00%;-,0.00%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnExit = DESCExit
  end
  object PCOLIQ: TCurrencyEdit
    Left = 457
    Top = 54
    Width = 160
    Height = 23
    TabStop = False
    AutoSize = False
    Ctl3D = False
    DisplayFormat = ',0.00;-,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 342
    Top = 54
    Width = 116
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Pre'#231'o Liquido:'
    Color = 16777147
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194432
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
end
