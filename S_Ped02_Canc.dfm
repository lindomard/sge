object Frm_Ped02_Canc: TFrm_Ped02_Canc
  Left = 198
  Top = 94
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Cancelamento de Cupom / Produto'
  ClientHeight = 390
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 209
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 135
      Width = 35
      Height = 13
      Caption = 'Data ..:'
    end
    object Label2: TLabel
      Left = 341
      Top = 134
      Width = 9
      Height = 13
      Caption = #224' '
    end
    object Label3: TLabel
      Left = 51
      Top = 8
      Width = 76
      Height = 13
      Caption = 'CAIXA/BANCO:'
    end
    object Label4: TLabel
      Left = 27
      Top = 48
      Width = 100
      Height = 13
      Caption = 'USUARIO LOGADO:'
    end
    object Label5: TLabel
      Left = 12
      Top = 88
      Width = 115
      Height = 13
      Caption = 'USUARIO LIBERA'#199#195'O:'
    end
    object bbAplicar: TButton
      Left = 216
      Top = 160
      Width = 121
      Height = 25
      Caption = '&Aplicar'
      TabOrder = 11
      OnClick = bbAplicarClick
    end
    object bbimprimir: TButton
      Left = 352
      Top = 160
      Width = 121
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 12
      OnClick = bbimprimirClick
    end
    object dtIni: TDateEdit
      Left = 216
      Top = 131
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object dtFim: TDateEdit
      Left = 352
      Top = 131
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
    end
    object EDT_CODCAI: TEdit
      Left = 128
      Top = 4
      Width = 73
      Height = 21
      TabOrder = 0
      OnExit = EDT_CODCAIExit
      OnKeyPress = EDT_CODCAIKeyPress
    end
    object cb_omitir_cx: TCheckBox
      Left = 135
      Top = 25
      Width = 58
      Height = 17
      Caption = 'OMITIR'
      TabOrder = 2
    end
    object lb_codcai: TListBox
      Left = 201
      Top = 4
      Width = 487
      Height = 38
      Color = 13828095
      ItemHeight = 13
      TabOrder = 1
      OnKeyDown = lb_codcaiKeyDown
    end
    object lb_codusr: TListBox
      Left = 201
      Top = 44
      Width = 487
      Height = 38
      Color = 13828095
      ItemHeight = 13
      TabOrder = 4
      OnKeyDown = lb_codusrKeyDown
    end
    object EDT_CODUSR: TEdit
      Left = 128
      Top = 44
      Width = 73
      Height = 21
      TabOrder = 3
      OnExit = EDT_CODUSRExit
      OnKeyPress = EDT_CODUSRKeyPress
    end
    object cb_omitir_usr: TCheckBox
      Left = 135
      Top = 65
      Width = 58
      Height = 17
      Caption = 'OMITIR'
      TabOrder = 5
    end
    object lb_codsi: TListBox
      Left = 201
      Top = 84
      Width = 487
      Height = 38
      Color = 13828095
      ItemHeight = 13
      TabOrder = 7
      OnKeyDown = lb_codsiKeyDown
    end
    object cb_omitir_si: TCheckBox
      Left = 135
      Top = 105
      Width = 58
      Height = 17
      Caption = 'OMITIR'
      TabOrder = 8
    end
    object EDT_CODSI: TEdit
      Left = 128
      Top = 84
      Width = 73
      Height = 21
      TabOrder = 6
      OnExit = EDT_CODSIExit
      OnKeyPress = EDT_CODSIKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 209
    Width = 691
    Height = 181
    Align = alClient
    DataSource = DM1.Src_Ped02_Canc
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'P2EX_CODCAI'
        Title.Alignment = taCenter
        Title.Caption = 'CAIXA'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_DATHOR_EXC'
        Title.Alignment = taCenter
        Title.Caption = 'HORARIO'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_NUMEROCF'
        Title.Alignment = taCenter
        Title.Caption = 'CF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_CHAVE'
        Title.Alignment = taCenter
        Title.Caption = 'PEDIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_ITEMVALOR'
        Title.Alignment = taCenter
        Title.Caption = 'CANCELAMENTO'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_NOMUSR_LOG'
        Title.Alignment = taCenter
        Title.Caption = 'USUARIO LOGADO'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_NOMUSR_SI'
        Title.Alignment = taCenter
        Title.Caption = 'USUARIO SENHA INTERNA'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2EX_NOMECOMPUTADOR'
        Title.Alignment = taCenter
        Title.Caption = 'COMPUTADOR'
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 624
    Top = 336
    Width = 1123
    Height = 794
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DM1.Src_Ped02_Canc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 70
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 416
        Top = 40
        Width = 233
        Height = 16
        Caption = 'Relat'#243'rio de Cupons / Itens Cancelados'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 984
        Top = 51
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 916
        Top = 2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
      end
      object RLLabel2: TRLLabel
        Left = 916
        Top = 2
        Width = 56
        Height = 16
        Caption = 'Pagina..:'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 1011
        Top = 2
        Width = 112
        Height = 16
        Info = itLastPageNumber
      end
      object RLLabel3: TRLLabel
        Left = 1003
        Top = 2
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLAngleLabel3: TRLAngleLabel
        Left = 0
        Top = 18
        Width = 67
        Height = 16
        Caption = 'Endere'#231'o.:'
      end
      object RLAngleLabel4: TRLAngleLabel
        Left = 1
        Top = 1
        Width = 64
        Height = 16
        Caption = 'Empresa.:'
      end
      object RLDBText8: TRLDBText
        Left = 66
        Top = 2
        Width = 110
        Height = 16
        DataField = 'FANTASIA'
        DataSource = DM1.Src_Emp
      end
      object RLDBText9: TRLDBText
        Left = 69
        Top = 18
        Width = 36
        Height = 16
        DataField = 'ender'
        DataSource = DM1.Src_Emp
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 141
      Width = 1045
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = -1
        Top = 0
        Width = 114
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2EX_DATHOR_EXC'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_datahora
      end
      object RLDBText2: TRLDBText
        Left = 113
        Top = 0
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2EX_NUMEROCF'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_cupom
      end
      object RLDBText3: TRLDBText
        Left = 382
        Top = 0
        Width = 184
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2EX_NOMUSR_SI'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_usrsi
      end
      object RLDBText4: TRLDBText
        Left = 249
        Top = 0
        Width = 134
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2EX_NOMUSR_LOG'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_usrlog
      end
      object RLDBText5: TRLDBText
        Left = 185
        Top = 0
        Width = 64
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2EX_CODCAI'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_codcai
      end
      object RLDBText6: TRLDBText
        Left = 565
        Top = 0
        Width = 482
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'P2EX_ITEMVALOR'
        DataSource = DM1.Src_Ped02_Canc
        Holder = rl_mov
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 158
      Width = 1045
      Height = 21
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = 16776176
      Degrade.OppositeColor = 10930928
      ParentColor = False
      Transparent = False
      BeforePrint = RLBand4BeforePrint
      object lbl_patrocinio: TRLLabel
        Left = 4
        Top = 1
        Width = 804
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'In'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 808
        Top = 1
        Width = 237
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Info = itFullDate
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 39
      Top = 125
      Width = 1045
      Height = 16
      BandType = btTitle
      object rl_mov: TRLLabel
        Left = 565
        Top = 0
        Width = 482
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'MOVIMETA'#199#195'O'
      end
      object rl_usrsi: TRLLabel
        Left = 382
        Top = 0
        Width = 184
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'USUARIO DA LIBERA'#199#195'O'
      end
      object rl_usrlog: TRLLabel
        Left = 249
        Top = 0
        Width = 134
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'USUARIO LOGADO'
      end
      object rl_codcai: TRLLabel
        Left = 185
        Top = 0
        Width = 64
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'N. CAIXA'
      end
      object rl_datahora: TRLLabel
        Left = -1
        Top = 0
        Width = 114
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'DATA E HORA'
      end
      object rl_cupom: TRLLabel
        Left = 113
        Top = 0
        Width = 72
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'N. CUPOM'
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 109
      Width = 1045
      Height = 16
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 193
        Top = 0
        Width = 110
        Height = 16
        Caption = 'FILTRADO POR..:'
      end
      object MEMO: TRLMemo
        Left = 304
        Top = 0
        Width = 565
        Height = 16
        Alignment = taCenter
      end
    end
  end
end
