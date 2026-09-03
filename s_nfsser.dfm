object frm_nfsser: Tfrm_nfsser
  Left = 188
  Top = 219
  BorderStyle = bsSingle
  Caption = 'Resumo de Notas Fiscais de Saida'
  ClientHeight = 446
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 145
    Align = alTop
    TabOrder = 0
    object lbl_cab: TLabel
      Left = 88
      Top = 37
      Width = 75
      Height = 16
      Caption = 'Data Inicial..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 304
      Top = 37
      Width = 70
      Height = 16
      Caption = 'Data Final..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtini: TDateEdit
      Left = 168
      Top = 32
      Width = 119
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object dtfin: TDateEdit
      Left = 376
      Top = 32
      Width = 119
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object cb_sonfe: TCheckBox
      Left = 376
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Somente NF-E'
      TabOrder = 2
    end
    object bb_buscar: TButton
      Left = 128
      Top = 88
      Width = 193
      Height = 49
      Caption = '&Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bb_buscarClick
    end
    object bb_imprimir: TButton
      Left = 328
      Top = 88
      Width = 193
      Height = 49
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bb_imprimirClick
    end
    object rg_tiponf: TRadioGroup
      Left = 552
      Top = 0
      Width = 121
      Height = 81
      Caption = 'Tipos NF'
      ItemIndex = 2
      Items.Strings = (
        'Mercadoria'
        'Servi'#231'o'
        'Todos')
      TabOrder = 5
      OnClick = rg_tiponfClick
    end
    object rg_ordem: TRadioGroup
      Left = 552
      Top = 80
      Width = 121
      Height = 49
      Caption = '-=Ordem=-'
      ItemIndex = 0
      Items.Strings = (
        'CHAVE'
        'NUM-NF')
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 677
    Height = 301
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbg: TDBGrid
      Left = 1
      Top = 1
      Width = 675
      Height = 299
      Align = alClient
      DataSource = ds1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Title.Caption = 'NUM NF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATANF'
          Title.Caption = 'DATA NF'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Title.Caption = 'RAZAO SOCIAL'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1MODELO'
          Title.Caption = 'MODELO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1BASEN'
          Title.Caption = 'BASE ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1ICMSN'
          Title.Caption = 'VALOR ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1BCISSQN'
          Title.Caption = 'BASE  ISSQN'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1VISSQN'
          Title.Caption = 'VALOR ISSQN'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Title.Caption = 'TOTAL NF'
          Width = 88
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Title.Caption = 'CGC'
          Visible = True
        end>
    end
    object RLReport1: TRLReport
      Left = 8
      Top = 64
      Width = 1123
      Height = 794
      DataSource = ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      ShowProgress = False
      Visible = False
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 1047
        Height = 99
        BandType = btTitle
        BeforePrint = RLBand1BeforePrint
        object RLLabel1: TRLLabel
          Left = 352
          Top = 48
          Width = 212
          Height = 16
          Caption = 'Rel'#225'torio de Notas Fiscais de Saida'
        end
        object RLNF: TRLLabel
          Left = 2
          Top = 80
          Width = 74
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nota Fiscal'
        end
        object RLDATANF: TRLLabel
          Left = 77
          Top = 80
          Width = 70
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'DATA NF'
        end
        object RL_CLIENTE: TRLLabel
          Left = 147
          Top = 80
          Width = 364
          Height = 16
          AutoSize = False
          Caption = 'Cliente'
        end
        object RL_CGC: TRLLabel
          Left = 511
          Top = 80
          Width = 120
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'CNPJ ou CPF'
        end
        object RL_BASE: TRLLabel
          Left = 799
          Top = 80
          Width = 88
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Base ISSQN'
        end
        object RL_VALOR: TRLLabel
          Left = 887
          Top = 80
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor ISSQN'
        end
        object rl_total_nf: TRLLabel
          Left = 967
          Top = 80
          Width = 78
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total NF'
        end
        object BASEICMS: TRLLabel
          Left = 631
          Top = 80
          Width = 88
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Base ICMS'
        end
        object VALICMS: TRLLabel
          Left = 719
          Top = 80
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor ICMS'
        end
        object RLAngleLabel1: TRLAngleLabel
          Left = 8
          Top = 8
          Width = 68
          Height = 16
          Caption = 'Empresa..:'
        end
      end
      object RLBand2: TRLBand
        Left = 38
        Top = 137
        Width = 1047
        Height = 22
        AfterPrint = RLBand2AfterPrint
        object RLDBText1: TRLDBText
          Left = 2
          Top = 1
          Width = 74
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1NUMNF'
          DataSource = ds1
          Holder = RLNF
        end
        object RLDBText2: TRLDBText
          Left = 77
          Top = 1
          Width = 70
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1DATANF'
          DataSource = ds1
          Holder = RLDATANF
        end
        object RLDBText3: TRLDBText
          Left = 147
          Top = 1
          Width = 364
          Height = 19
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'CRAZAO'
          DataSource = ds1
          Holder = RL_CLIENTE
        end
        object RLDBText4: TRLDBText
          Left = 511
          Top = 1
          Width = 120
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'CPF_CNPJ'
          DataSource = ds1
          Holder = RL_CGC
        end
        object RLDBText5: TRLDBText
          Left = 799
          Top = 1
          Width = 88
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1BCISSQN'
          DataSource = ds1
          Holder = RL_BASE
        end
        object RLDBText6: TRLDBText
          Left = 887
          Top = 1
          Width = 80
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1VISSQN'
          DataSource = ds1
          Holder = RL_VALOR
        end
        object RLDBText7: TRLDBText
          Left = 967
          Top = 1
          Width = 78
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataField = 'P1TOTALL'
          DataSource = ds1
          Holder = rl_total_nf
        end
        object RLDBText8: TRLDBText
          Left = 631
          Top = 1
          Width = 88
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1BASEN'
          DataSource = ds1
          Holder = BASEICMS
        end
        object RLDBText9: TRLDBText
          Left = 719
          Top = 1
          Width = 80
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataField = 'P1ICMSN'
          DataSource = ds1
          Holder = VALICMS
        end
      end
      object RLBand3: TRLBand
        Left = 38
        Top = 159
        Width = 1047
        Height = 20
        BandType = btSummary
        AfterPrint = RLBand3AfterPrint
        BeforePrint = RLBand3BeforePrint
        object rl_tot_nf: TRLLabel
          Left = 928
          Top = 2
          Width = 114
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total da NFE'
        end
        object RLLabel5: TRLLabel
          Left = 840
          Top = 2
          Width = 88
          Height = 16
          Alignment = taCenter
          Caption = 'Total da NF...:'
        end
        object rl_tot_base_issqn: TRLLabel
          Left = 130
          Top = 2
          Width = 99
          Height = 16
          AutoSize = False
          Caption = 'Total dos Servi'#231'os..:'
        end
        object RLLabel4: TRLLabel
          Left = 8
          Top = 2
          Width = 122
          Height = 16
          Alignment = taCenter
          Caption = 'Total Base ISSQN..:'
        end
        object rl_tot_base_icms: TRLLabel
          Left = 499
          Top = 2
          Width = 131
          Height = 16
          AutoSize = False
          Caption = 'total icms'
        end
        object RLLabel6: TRLLabel
          Left = 385
          Top = 2
          Width = 114
          Height = 16
          Alignment = taCenter
          Caption = 'Total Base ICMS..:'
        end
      end
    end
  end
  object qry1: TQuery
    OnCalcFields = qry1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      
        ' P1CHAVE, P1CODCLI, P1DATANF, P1MODELO, P1BCISSQN, P1BASEN, P1IC' +
        'MSN,'
      ' P1VISSQN, CRAZAO, CTPPESSOA, CCNPJ, CCPF, P1NUMNF, P1TOTALL'
      'FROM CADP01, CADCLI '
      'WHERE'
      'CCODCLI=P1CODCLI'
      'AND P1STATUS=2 '
      'AND P1CODEMP=1 '
      'AND P1TIPO=1 '
      'AND P1TOTSERLIQ>0')
    Left = 624
    Top = 112
    object qry1CPF_CNPJ: TStringField
      FieldKind = fkCalculated
      FieldName = 'CPF_CNPJ'
      Calculated = True
    end
    object qry1P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object qry1P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object qry1P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object qry1P1MODELO: TStringField
      FieldName = 'P1MODELO'
      Origin = 'SG_ASSOC.CADP01.P1MODELO'
      Size = 3
    end
    object qry1P1BCISSQN: TFloatField
      FieldName = 'P1BCISSQN'
      Origin = 'SG_ASSOC.CADP01.P1BCISSQN'
    end
    object qry1P1VISSQN: TFloatField
      FieldName = 'P1VISSQN'
      Origin = 'SG_ASSOC.CADP01.P1VISSQN'
    end
    object qry1CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object qry1CTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
      Origin = 'SG_ASSOC.CADCLI.CTPPESSOA'
    end
    object qry1CCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object qry1CCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object qry1P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object qry1P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object qry1P1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object qry1P1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 624
    Top = 72
  end
end
