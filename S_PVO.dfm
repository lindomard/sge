object Frm_PVO: TFrm_PVO
  Left = 13
  Top = 5
  Width = 779
  Height = 558
  ActiveControl = BitBtn1
  Caption = 'Plano de Vendas Opcional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label29: TLabel
    Left = 5
    Top = 3
    Width = 101
    Height = 13
    Caption = 'Tipo de Comiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label30: TLabel
    Left = 1
    Top = 121
    Width = 197
    Height = 13
    Caption = 'Tipo de Desconto Comercial/Geral'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel
    Left = -1
    Top = 167
    Width = 145
    Height = 13
    Caption = ' Tipo de Desconto 1 '#205'tem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 0
    Top = 211
    Width = 145
    Height = 13
    Caption = ' Tipo de Desconto 2 '#205'tem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel
    Left = 4
    Top = 249
    Width = 141
    Height = 13
    Caption = 'Tipo de Desconto 3 '#205'tem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 516
    Top = 7
    Width = 125
    Height = 13
    Caption = 'Tipo de Preco Padrao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_hint: TLabel
    Left = 4
    Top = 470
    Width = 765
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '[alt-tab] - para voltar campo'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lbl_PERCPPARC: TLabel
    Left = 448
    Top = 438
    Width = 180
    Height = 13
    Caption = 'Percentual da Primeira Parcela:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gb_acres: TGroupBox
    Left = 242
    Top = 213
    Width = 259
    Height = 80
    Caption = '% Acr'#233'scimos no Pre'#231'o Unit'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 161
      Height = 13
      Caption = 'Em todos Produtos........................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 38
      Width = 164
      Height = 13
      Caption = 'Produtos com C'#243'digo do Tipo=0....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 59
      Width = 164
      Height = 13
      Caption = 'Produtos com C'#243'digo do Tipo=1....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 82
      Width = 208
      Height = 13
      Caption = 'Outros Produtos.............................'
    end
    object ACTD: TEdit
      Left = 171
      Top = 14
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = ACTDExit
      OnKeyPress = COMKeyPress
    end
    object ACT00: TEdit
      Left = 171
      Top = 36
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = ACT00Exit
      OnKeyPress = COMKeyPress
    end
    object ACT01: TEdit
      Left = 171
      Top = 57
      Width = 66
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = ACT01Exit
      OnKeyPress = COMKeyPress
    end
    object ACT99: TEdit
      Left = 196
      Top = 80
      Width = 66
      Height = 21
      TabOrder = 3
      OnExit = ACT99Exit
      OnKeyPress = COMKeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 257
    Top = 484
    Width = 303
    Height = 38
    TabOrder = 18
    Kind = bkOK
  end
  object gb_prazos: TGroupBox
    Left = 517
    Top = 48
    Width = 244
    Height = 380
    Caption = 'Prazos:'
    TabOrder = 13
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 240
      Height = 338
      Align = alClient
      DataSource = Src_PO99
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'POPRAZO'
          Title.Caption = 'Prazo'
          Width = 52
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 353
      Width = 240
      Height = 25
      Align = alBottom
      TabOrder = 1
      object PRAZO: TEdit
        Left = 0
        Top = 5
        Width = 54
        Height = 19
        Hint = 
          'Os prazos s'#227'o definidos da seguinte maneira: '#13#10'Para Incluir digi' +
          'te o prazo e ok. '#13#10'Para excluir selecione e click em EXCLUIR '
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object BBOK: TBitBtn
        Left = 59
        Top = 3
        Width = 72
        Height = 21
        Caption = '&OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBOKClick
      end
      object BitBtn2: TBitBtn
        Left = 140
        Top = 4
        Width = 58
        Height = 21
        Caption = 'E&xcluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
    end
  end
  object CB_PVTPC: TComboBox
    Left = 5
    Top = 18
    Width = 226
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Cadastro do Produto'
    OnClick = CB_PVTPCClick
    OnEnter = CB_PVTPCEnter
    OnExit = CB_PVTPCExit
    Items.Strings = (
      'Cadastro do Produto'
      'Plano de Vendas'
      'Cadastro do Vendedor'
      'Cadastro de Clientes'
      'Cadastro de Estados'
      'Extra por Produto'
      '% da Comiss'#227'o do Produto'
      'Comissao do Desconto'
      'Ref.Tabela de Status do Produtos'
      'Cadastro de Fornecedor')
  end
  object GB_COMIS: TGroupBox
    Left = 5
    Top = 41
    Width = 226
    Height = 72
    Caption = '% Comis do Plano de Vendas'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label8: TLabel
      Left = 6
      Top = 15
      Width = 154
      Height = 13
      Caption = 'Vendedor 01...............................'
    end
    object Label12: TLabel
      Left = 5
      Top = 34
      Width = 157
      Height = 13
      Caption = 'Vendedor 02................................'
    end
    object Label19: TLabel
      Left = 5
      Top = 52
      Width = 154
      Height = 13
      Caption = 'Vendedor 03...............................'
    end
    object COM: TEdit
      Left = 162
      Top = 13
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = COMExit
      OnKeyPress = COMKeyPress
    end
    object COM02: TEdit
      Left = 162
      Top = 31
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = COM02Exit
      OnKeyPress = COMKeyPress
    end
    object COM03: TEdit
      Left = 162
      Top = 49
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = COM03Exit
      OnKeyPress = COMKeyPress
    end
  end
  object CB_PVTPDC: TComboBox
    Left = 5
    Top = 137
    Width = 179
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Plano de Vendas..(%)..:'
    OnEnter = CB_PVTPDCEnter
    OnExit = CB_PVTPDCExit
    Items.Strings = (
      'Plano de Vendas..(%)..:'
      'Cadastro do Cliente'
      'Extra(digitado)')
  end
  object DES: TEdit
    Left = 185
    Top = 137
    Width = 45
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    OnExit = DESExit
    OnKeyPress = COMKeyPress
  end
  object CB_PVTPD1: TComboBox
    Left = 5
    Top = 184
    Width = 179
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 4
    TabOrder = 4
    Text = 'Ref.Tabela de Status do Produto'
    OnExit = CB_PVTPD1Exit
    Items.Strings = (
      'Plano de Vendas..(%)..:'
      'Cadastro Produto'
      'Cadastro Cliente'
      'Extra(digitado)'
      'Ref.Tabela de Status do Produto')
  end
  object DES1: TEdit
    Left = 185
    Top = 184
    Width = 45
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    OnExit = DES1Exit
    OnKeyPress = COMKeyPress
  end
  object CB_PVTPD2: TComboBox
    Left = 6
    Top = 228
    Width = 179
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'Plano de Vendas..(%)..:'
    OnExit = CB_PVTPD2Exit
    Items.Strings = (
      'Plano de Vendas..(%)..:'
      'Cadastro Produto'
      'Extra(digitado)'
      'Ref.Tabela de Status do Produto')
  end
  object DES2: TEdit
    Left = 185
    Top = 228
    Width = 45
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
    OnExit = DES2Exit
    OnKeyPress = COMKeyPress
  end
  object CB_PVTPD3: TComboBox
    Left = 6
    Top = 265
    Width = 179
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = 'Plano de Vendas..(%)..:'
    Items.Strings = (
      'Plano de Vendas..(%)..:'
      'Cadastro Produto'
      'Extra(digitado)'
      'Ref.Tabela de Status do Produto')
  end
  object DES3: TEdit
    Left = 185
    Top = 266
    Width = 45
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 9
    OnExit = DES3Exit
    OnKeyPress = COMKeyPress
  end
  object gb_financeiro: TGroupBox
    Left = 242
    Top = 4
    Width = 258
    Height = 207
    Caption = 'Descontos Financeiros:'
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 10
    object Label34: TLabel
      Left = 4
      Top = 12
      Width = 177
      Height = 13
      Caption = 'Origem do desconto Financeiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 9
      Top = 152
      Width = 161
      Height = 13
      Caption = 'Desconto Financeiro V'#225'lido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_PVTPDESF: TComboBox
      Left = 3
      Top = 26
      Width = 179
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Cadastro de Produtos'
      OnExit = CB_PVTPDESFExit
      Items.Strings = (
        'Cadastro de Produtos'
        'Cadastro de Fornecedores'
        'Grupos de Fornecedores'
        'Plano de Vendas %'
        'Intervalo de Desconto'
        'Ref.Tabela de Status do Produto')
    end
    object gb_intervalo: TGroupBox
      Left = 7
      Top = 47
      Width = 217
      Height = 104
      Caption = 'Intervalo de desconto'
      TabOrder = 1
      object Label5: TLabel
        Left = 61
        Top = 32
        Width = 6
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 143
        Top = 31
        Width = 6
        Height = 13
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 144
        Top = 49
        Width = 6
        Height = 13
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 61
        Top = 50
        Width = 6
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 144
        Top = 67
        Width = 6
        Height = 13
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 61
        Top = 68
        Width = 6
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 144
        Top = 85
        Width = 6
        Height = 13
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 61
        Top = 86
        Width = 6
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 1
        Top = 12
        Width = 216
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 0
        Text = '% desc    '#224'      % desc   =   Desc.Fin'
      end
      object PVDF01A: TEdit
        Left = 3
        Top = 32
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'PVDF01A'
        OnExit = PVDF01AExit
      end
      object PVDF01B: TEdit
        Left = 88
        Top = 32
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'PVDF01B'
        OnExit = PVDF01BExit
      end
      object PVDF01: TEdit
        Left = 163
        Top = 32
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = 'PVDF01'
        OnExit = PVDF01Exit
      end
      object PVDF02A: TEdit
        Left = 3
        Top = 48
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = 'PVDF02A'
        OnExit = PVDF02AExit
      end
      object PVDF02B: TEdit
        Left = 88
        Top = 48
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = 'PVDF02B'
        OnExit = PVDF02BExit
      end
      object PVDF02: TEdit
        Left = 163
        Top = 48
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = 'PVDF02'
        OnExit = PVDF02Exit
      end
      object PVDF03A: TEdit
        Left = 3
        Top = 65
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = 'PVDF03A'
        OnExit = PVDF03AExit
      end
      object PVDF03B: TEdit
        Left = 88
        Top = 65
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = 'PVDF03B'
        OnExit = PVDF03BExit
      end
      object PVDF03: TEdit
        Left = 163
        Top = 65
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = 'PVDF03'
        OnExit = PVDF03Exit
      end
      object PVDF04A: TEdit
        Left = 3
        Top = 83
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = 'PVDF04A'
        OnExit = PVDF04AExit
      end
      object PVDF04B: TEdit
        Left = 88
        Top = 83
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = 'PVDF04B'
        OnExit = PVDF04BExit
      end
      object PVDF04: TEdit
        Left = 163
        Top = 83
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = 'PVDF04'
        OnExit = PVDF04Exit
      end
    end
    object CB_PVDDESCF: TComboBox
      Left = 7
      Top = 168
      Width = 172
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'At'#233' a data do Vencimento'
      Items.Strings = (
        'At'#233' a data do Vencimento'
        'dia(s) ap'#243's a emiss'#227'o:'
        'por dia de antecipa'#231#227'o')
    end
    object DESCF: TEdit
      Left = 185
      Top = 26
      Width = 38
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = DESCFExit
      OnKeyPress = COMKeyPress
    end
    object DIASDESCF: TEdit
      Left = 180
      Top = 167
      Width = 43
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = DIASDESCFExit
      OnKeyPress = DIASDESCFKeyPress
    end
    object CB_PVFINPRM: TCheckBox
      Left = 8
      Top = 190
      Width = 241
      Height = 17
      Caption = 'Aplicar tamb'#233'm em promo'#231#245'es'
      TabOrder = 5
    end
  end
  object gb_status: TGroupBox
    Left = 4
    Top = 291
    Width = 496
    Height = 144
    Caption = ' Tabela de Status de Produtos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object Label17: TLabel
      Left = 1
      Top = 13
      Width = 87
      Height = 13
      Caption = 'Status...................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 1
      Top = 51
      Width = 88
      Height = 13
      Caption = 'Desconto 2...........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 1
      Top = 102
      Width = 94
      Height = 13
      Caption = 'Comiss'#227'o Vend.01..'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 1
      Top = 34
      Width = 85
      Height = 13
      Caption = 'Desconto 1..........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 1
      Top = 68
      Width = 94
      Height = 13
      Caption = 'Desconto 3.............'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 1
      Top = 87
      Width = 95
      Height = 13
      Caption = 'Desc.Financeiro......'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 1
      Top = 120
      Width = 94
      Height = 13
      Caption = 'Comiss'#227'o Vend.02..'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object StaticText1: TStaticText
      Left = 88
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 137
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 235
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 186
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText5: TStaticText
      Left = 333
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText6: TStaticText
      Left = 284
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText7: TStaticText
      Left = 431
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText8: TStaticText
      Left = 382
      Top = 11
      Width = 50
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object PVD1S0: TEdit
      Left = 88
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      Text = 'PVDF01A'
      OnExit = PVD1S0Exit
    end
    object PVD1S1: TEdit
      Left = 137
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Text = 'PVDF01A'
      OnExit = PVD1S1Exit
    end
    object PVD1S2: TEdit
      Left = 186
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      Text = 'PVDF01A'
      OnExit = PVD1S2Exit
    end
    object PVD1S5: TEdit
      Left = 333
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      Text = 'PVDF01A'
      OnExit = PVD1S5Exit
    end
    object PVD1S4: TEdit
      Left = 284
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      Text = 'PVDF01A'
      OnExit = PVD1S4Exit
    end
    object PVD1S3: TEdit
      Left = 235
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
      Text = 'PVDF01A'
      OnExit = PVD1S3Exit
    end
    object PVD1S7: TEdit
      Left = 430
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      Text = 'PVDF01A'
      OnExit = PVD1S7Exit
    end
    object PVD1S6: TEdit
      Left = 381
      Top = 29
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
      Text = 'PVDF01A'
      OnExit = PVD1S6Exit
    end
    object PVD2S0: TEdit
      Left = 88
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
      Text = 'PVDF01A'
      OnExit = PVD2S0Exit
    end
    object PVD2S1: TEdit
      Left = 137
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
      Text = 'PVDF01A'
      OnExit = PVD2S1Exit
    end
    object PVD2S2: TEdit
      Left = 186
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
      Text = 'PVDF01A'
      OnExit = PVD2S2Exit
    end
    object PVD2S3: TEdit
      Left = 235
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
      Text = 'PVDF01A'
      OnExit = PVD2S3Exit
    end
    object PVD2S4: TEdit
      Left = 284
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
      Text = 'PVDF01A'
      OnExit = PVD2S4Exit
    end
    object PVD2S5: TEdit
      Left = 333
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
      Text = 'PVDF01A'
      OnExit = PVD2S5Exit
    end
    object PVD2S6: TEdit
      Left = 381
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
      Text = 'PVDF01A'
      OnExit = PVD2S6Exit
    end
    object PVD2S7: TEdit
      Left = 430
      Top = 47
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
      Text = 'PVDF01A'
      OnExit = PVD2S7Exit
    end
    object PVD3S0: TEdit
      Left = 88
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
      Text = 'PVD3S0'
      OnExit = PVD3S0Exit
    end
    object PVD3S1: TEdit
      Left = 137
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 25
      Text = 'PVDF01A'
      OnExit = PVD3S1Exit
    end
    object PVD3S2: TEdit
      Left = 186
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 26
      Text = 'PVDF01A'
      OnExit = PVD3S2Exit
    end
    object PVD3S3: TEdit
      Left = 235
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 27
      Text = 'PVDF01A'
      OnExit = PVD3S3Exit
    end
    object PVD3S4: TEdit
      Left = 284
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 28
      Text = 'PVDF01A'
      OnExit = PVD3S4Exit
    end
    object PVD3S5: TEdit
      Left = 333
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 29
      Text = 'PVDF01A'
      OnExit = PVD3S5Exit
    end
    object PVD3S6: TEdit
      Left = 381
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 30
      Text = 'PVDF01A'
      OnExit = PVD3S6Exit
    end
    object PVD3S7: TEdit
      Left = 430
      Top = 65
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 31
      Text = 'PVDF01A'
      OnExit = PVD3S7Exit
    end
    object PVDFS0: TEdit
      Left = 88
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 32
      Text = 'PVDFS0'
      OnExit = PVDFS0Exit
    end
    object PVDFS1: TEdit
      Left = 137
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 33
      Text = 'PVDF01A'
      OnExit = PVDFS1Exit
    end
    object PVDFS2: TEdit
      Left = 186
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 34
      Text = 'PVDF01A'
      OnExit = PVDFS2Exit
    end
    object PVDFS3: TEdit
      Left = 235
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 35
      Text = 'PVDF01A'
      OnExit = PVDFS3Exit
    end
    object PVDFS4: TEdit
      Left = 284
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 36
      Text = 'PVDF01A'
      OnExit = PVDFS4Exit
    end
    object PVDFS5: TEdit
      Left = 333
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 37
      Text = 'PVDF01A'
      OnExit = PVDFS5Exit
    end
    object PVDFS6: TEdit
      Left = 381
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 38
      Text = 'PVDF01A'
      OnExit = PVDFS6Exit
    end
    object PVDFS7: TEdit
      Left = 430
      Top = 83
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 39
      Text = 'PVDF01A'
      OnExit = PVDFS7Exit
    end
    object PVCMS0: TEdit
      Left = 88
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 40
      Text = 'PVCMS0'
      OnExit = PVCMS0Exit
    end
    object PVCMS1: TEdit
      Left = 137
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 41
      Text = 'PVDF01A'
      OnExit = PVCMS1Exit
    end
    object PVCMS2: TEdit
      Left = 186
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 42
      Text = 'PVDF01A'
      OnExit = PVCMS2Exit
    end
    object PVCMS3: TEdit
      Left = 235
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 43
      Text = 'PVDF01A'
      OnExit = PVCMS3Exit
    end
    object PVCMS4: TEdit
      Left = 284
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 44
      Text = 'PVDF01A'
      OnExit = PVCMS4Exit
    end
    object PVCMS5: TEdit
      Left = 333
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 45
      Text = 'PVDF01A'
      OnExit = PVCMS5Exit
    end
    object PVCMS6: TEdit
      Left = 381
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 46
      Text = 'PVDF01A'
      OnExit = PVCMS6Exit
    end
    object PVCMS7: TEdit
      Left = 430
      Top = 101
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 47
      Text = 'PVDF01A'
      OnExit = PVCMS7Exit
    end
    object PVCMV02S0: TEdit
      Left = 88
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 48
      Text = 'PVCMV02S0'
      OnExit = PVCMV02S0Exit
    end
    object PVCMV02S1: TEdit
      Left = 137
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 49
      Text = 'PVCMV02S1'
      OnExit = PVCMV02S1Exit
    end
    object PVCMV02S2: TEdit
      Left = 186
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 50
      Text = 'PVCMV02S2'
      OnExit = PVCMV02S2Exit
    end
    object PVCMV02S3: TEdit
      Left = 235
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 51
      Text = 'PVDF01APVCMV02S3'
      OnExit = PVCMV02S3Exit
    end
    object PVCMV02S4: TEdit
      Left = 284
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 52
      Text = 'PVCMV02S4'
      OnExit = PVCMV02S4Exit
    end
    object PVCMV02S5: TEdit
      Left = 333
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 53
      Text = 'PVCMV02S5'
      OnExit = PVCMV02S5Exit
    end
    object PVCMV02S6: TEdit
      Left = 381
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 54
      Text = 'PVCMV02S6'
      OnExit = PVCMV02S6Exit
    end
    object PVCMV02S7: TEdit
      Left = 430
      Top = 119
      Width = 50
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 55
      Text = 'PVCMV02S7'
      OnEnter = PVCMV02S7Enter
    end
  end
  object CB_TPP: TComboBox
    Left = 515
    Top = 21
    Width = 246
    Height = 21
    AutoDropDown = True
    BevelKind = bkSoft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 14
    Text = 'Cadastro Estado'
    Items.Strings = (
      'Cadastro Estado'
      'Pre'#231'o 1'
      'Pre'#231'o 2'
      'Pre'#231'o 3'
      'Extra Digitado no Pedido')
  end
  object CB_ACREDESREG: TCheckBox
    Left = 9
    Top = 436
    Width = 433
    Height = 17
    Caption = 'Aceitar Acrescimos/descontos do Cadastro de Regiao'
    TabOrder = 15
  end
  object CB_AJCOMIS: TCheckBox
    Left = 10
    Top = 453
    Width = 425
    Height = 17
    Caption = 'Ajustar Comiss'#245'es de Acordo com a Tabela de Acrescimos/Desconto'
    TabOrder = 16
  end
  object PERCPPARC: TEdit
    Left = 631
    Top = 437
    Width = 66
    Height = 19
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
    OnExit = PERCPPARCExit
    OnKeyPress = COMKeyPress
  end
  object Tb_Po99_nov: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select POCODEMP,POPRAZO from CADPO99 where'
      'POCODEMP is null'
      '')
    UpdateObject = U_PO99
    Left = 488
    Top = 344
    object Tb_Po99_novPOCODEMP: TFloatField
      FieldName = 'POCODEMP'
      Origin = 'SG_ASSOC.CADPO99.POCODEMP'
    end
    object Tb_Po99_novPOPRAZO: TFloatField
      FieldName = 'POPRAZO'
      Origin = 'SG_ASSOC.CADPO99.POPRAZO'
    end
  end
  object U_PO99: TUpdateSQL
    Left = 520
    Top = 336
  end
  object Src_PO99: TDataSource
    DataSet = Tb_Po99_nov
    Left = 552
    Top = 336
  end
end
