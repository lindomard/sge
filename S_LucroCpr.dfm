object Frm_LucroCpr: TFrm_LucroCpr
  Left = 215
  Top = 139
  BorderStyle = bsSingle
  Caption = 'Simula'#231#227'o de Lucro com base no Pre'#231'o de Venda Atual'
  ClientHeight = 339
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 41
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 50
      Height = 13
      Caption = 'Empresa..:'
    end
    object Label2: TLabel
      Left = 192
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Chave..:'
    end
    object edt_codemp: TEdit
      Left = 62
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_chave: TEdit
      Left = 235
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object bb_calcula: TButton
      Left = 365
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Calcular'
      TabOrder = 2
      OnClick = bb_calculaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 601
    Height = 264
    Align = alClient
    DataSource = Src_Lucro
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = 16776176
        Expanded = False
        FieldName = 'PF2CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'PF2NOMPRO'
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 238
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'COMPRA'
        Title.Alignment = taCenter
        Width = 82
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'PRECO'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'LUCRO'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object pnl_buton: TPanel
    Left = 0
    Top = 305
    Width = 601
    Height = 34
    Align = alBottom
    TabOrder = 2
    object btn_sair: TButton
      Left = 472
      Top = 4
      Width = 123
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = btn_sairClick
    end
    object btn_imprimir: TButton
      Left = 5
      Top = 4
      Width = 123
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = btn_imprimirClick
    end
  end
  object RLReport1: TRLReport
    Left = 64
    Top = 352
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = Src_Lucro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    Visible = False
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 92
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 657
        Top = 59
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
      object rl_codpro: TRLLabel
        Left = 1
        Top = 75
        Width = 76
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'CODIGO'
      end
      object rl_nome: TRLLabel
        Left = 76
        Top = 75
        Width = 362
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'NOME'
      end
      object rl_qtd: TRLLabel
        Left = 438
        Top = 75
        Width = 54
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'QTD'
      end
      object rl_pcocpr: TRLLabel
        Left = 492
        Top = 75
        Width = 95
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'PRE'#199'O CPR'
      end
      object rl_pcovnd: TRLLabel
        Left = 587
        Top = 75
        Width = 87
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'PRE'#199'O VND'
      end
      object rl_perc: TRLLabel
        Left = 674
        Top = 75
        Width = 44
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '%%'
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 68
        Height = 16
        Caption = 'Empresa..:'
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 16
        Width = 151
        Height = 16
        Caption = 'Referente ao Pedido N'#186'..:'
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 32
        Width = 86
        Height = 16
        Caption = 'Emitido em ..:'
      end
      object RLLabel4: TRLLabel
        Left = 381
        Top = 16
        Width = 100
        Height = 16
        Caption = 'Nota Fiscal N'#186'..:'
      end
      object RLLabel5: TRLLabel
        Left = 0
        Top = 57
        Width = 89
        Height = 16
        Caption = 'Digitado por ..:'
      end
      object RLDBText7: TRLDBText
        Left = 68
        Top = 0
        Width = 137
        Height = 16
        DataField = 'FANTASIA_CAB'
        DataSource = DM1.Src_Emp
      end
      object RLDBText8: TRLDBText
        Left = 152
        Top = 16
        Width = 153
        Height = 16
        AutoSize = False
        DataField = 'PF1CHAVE'
        DataSource = DataSource2
      end
      object RLDBText9: TRLDBText
        Left = 481
        Top = 16
        Width = 160
        Height = 16
        AutoSize = False
        DataField = 'PF1NUMNF'
        DataSource = DataSource2
      end
      object RLDBText10: TRLDBText
        Left = 88
        Top = 32
        Width = 153
        Height = 16
        AutoSize = False
        DataField = 'PF1DATANF'
        DataSource = DataSource2
      end
      object RLDBText11: TRLDBText
        Left = 92
        Top = 57
        Width = 153
        Height = 16
        AutoSize = False
        DataField = 'NOMUSR'
        DataSource = DataSource2
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 131
      Width = 716
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 1
        Top = 0
        Width = 76
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2CODPRO'
        DataSource = Src_Lucro
        Holder = rl_codpro
      end
      object RLDBText2: TRLDBText
        Left = 76
        Top = 0
        Width = 362
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2NOMPRO'
        DataSource = Src_Lucro
        Holder = rl_nome
      end
      object RLDBText3: TRLDBText
        Left = 438
        Top = 0
        Width = 54
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'QTD'
        DataSource = Src_Lucro
        Holder = rl_qtd
      end
      object RLDBText4: TRLDBText
        Left = 492
        Top = 0
        Width = 95
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'COMPRA'
        DataSource = Src_Lucro
        Holder = rl_pcocpr
      end
      object RLDBText5: TRLDBText
        Left = 587
        Top = 0
        Width = 87
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PRECO'
        DataSource = Src_Lucro
        Holder = rl_pcovnd
      end
      object RLDBText6: TRLDBText
        Left = 674
        Top = 0
        Width = 44
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'LUCRO'
        DataSource = Src_Lucro
        Holder = rl_perc
      end
    end
  end
  object Src_Lucro: TDataSource
    DataSet = Frm_PFor01.Tb_Lucro
    Left = 184
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = Frm_PFor01.Query1
    Left = 183
    Top = 127
  end
end
