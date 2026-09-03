object Frm_listarcompras: TFrm_listarcompras
  Left = 101
  Top = 32
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Listar compras'
  ClientHeight = 517
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 265
    Align = alTop
    TabOrder = 0
    object lbl_razao: TLabel
      Left = 6
      Top = 35
      Width = 99
      Height = 13
      Caption = 'Nome/Raz'#227'o Social:'
    end
    object lbl_nomfantasia: TLabel
      Left = 25
      Top = 56
      Width = 80
      Height = 13
      Caption = 'Nome Fantasia..:'
    end
    object lbl_ender: TLabel
      Left = 50
      Top = 76
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o..:'
    end
    object lbl_bairro: TLabel
      Left = 75
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object lbl_cep: TLabel
      Left = 538
      Top = 96
      Width = 27
      Height = 13
      Caption = 'CEP.:'
    end
    object lbl_ptoref: TLabel
      Left = 19
      Top = 116
      Width = 86
      Height = 13
      Caption = 'Ponto Refer'#234'ncia:'
    end
    object lbl_cidade: TLabel
      Left = 302
      Top = 96
      Width = 93
      Height = 13
      Caption = 'Localidade/Cidade:'
    end
    object lbl_uf: TLabel
      Left = 256
      Top = 96
      Width = 18
      Height = 13
      Caption = 'Est:'
    end
    object lbl_fone1: TLabel
      Left = 63
      Top = 156
      Width = 42
      Height = 13
      Caption = 'Fone 01:'
    end
    object lbl_fone2: TLabel
      Left = 214
      Top = 156
      Width = 42
      Height = 13
      Caption = 'Fone 02:'
    end
    object lbl_fone3: TLabel
      Left = 365
      Top = 156
      Width = 42
      Height = 13
      Caption = 'Fone 03:'
    end
    object lbl_fone4: TLabel
      Left = 516
      Top = 156
      Width = 20
      Height = 13
      Caption = 'Fax:'
    end
    object lbl_email: TLabel
      Left = 14
      Top = 176
      Width = 91
      Height = 13
      Caption = 'Endere'#231'o p/E mail:'
    end
    object lbl_nomcontato: TLabel
      Left = 19
      Top = 136
      Width = 86
      Height = 13
      Caption = 'Nome do Contato:'
    end
    object lbl_comp: TLabel
      Left = 465
      Top = 76
      Width = 73
      Height = 13
      Caption = 'Complemento..:'
    end
    object lbl_num: TLabel
      Left = 366
      Top = 76
      Width = 46
      Height = 13
      Caption = 'Numero..:'
    end
    object lbl_percompra: TLabel
      Left = 7
      Top = 217
      Width = 98
      Height = 13
      Caption = 'Periodo da compra..:'
    end
    object a: TLabel
      Left = 194
      Top = 217
      Width = 6
      Height = 13
      Caption = #224
    end
    object lbl_CNPJ: TLabel
      Left = 38
      Top = 16
      Width = 67
      Height = 13
      Caption = 'CNPJ / CPF..:'
    end
    object Lbl_nserie: TLabel
      Left = 17
      Top = 196
      Width = 88
      Height = 13
      Caption = 'N'#186' Serie Produto..:'
    end
    object lbl_numnf: TLabel
      Left = 198
      Top = 196
      Width = 74
      Height = 13
      Caption = 'N'#186' Nota fiscal..:'
    end
    object lbl_cliente: TLabel
      Left = 257
      Top = 16
      Width = 54
      Height = 13
      Caption = 'CLIENTE..:'
    end
    object edt_nomerazao: TEdit
      Left = 107
      Top = 33
      Width = 256
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_nomfantasia: TEdit
      Left = 107
      Top = 53
      Width = 256
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_ender: TEdit
      Left = 107
      Top = 73
      Width = 256
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_bairro: TEdit
      Left = 107
      Top = 93
      Width = 147
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object edt_cep: TEdit
      Left = 568
      Top = 93
      Width = 91
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
    end
    object edt_ptoref: TEdit
      Left = 107
      Top = 113
      Width = 218
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object edt_cidade: TEdit
      Left = 397
      Top = 93
      Width = 138
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 9
    end
    object edt_uf: TEdit
      Left = 276
      Top = 93
      Width = 24
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object edt_fone1: TEdit
      Left = 107
      Top = 153
      Width = 105
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 13
    end
    object edt_fone2: TEdit
      Left = 258
      Top = 153
      Width = 105
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
    end
    object edt_fone3: TEdit
      Left = 409
      Top = 153
      Width = 105
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
    end
    object edt_fax: TEdit
      Left = 540
      Top = 153
      Width = 118
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 16
    end
    object edt_email: TEdit
      Left = 107
      Top = 173
      Width = 256
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 17
    end
    object edt_nomcontato: TEdit
      Left = 107
      Top = 133
      Width = 218
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 12
    end
    object edt_comp: TEdit
      Left = 540
      Top = 73
      Width = 119
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object edt_num: TEdit
      Left = 415
      Top = 73
      Width = 47
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object dt_inicial: TDateEdit
      Left = 107
      Top = 213
      Width = 85
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 20
    end
    object dt_fim: TDateEdit
      Left = 205
      Top = 213
      Width = 85
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 21
    end
    object bb_buscar: TBitBtn
      Left = 107
      Top = 236
      Width = 85
      Height = 25
      Caption = 'Buscar'
      TabOrder = 22
      OnClick = bb_buscarClick
      NumGlyphs = 2
    end
    object edt_numserie: TEdit
      Left = 107
      Top = 193
      Width = 85
      Height = 19
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
    end
    object edt_numNF: TEdit
      Left = 277
      Top = 193
      Width = 86
      Height = 19
      Color = clWhite
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 19
    end
    object edt_cnpf_cnpj: TEdit
      Left = 107
      Top = 13
      Width = 148
      Height = 19
      Color = clWhite
      Ctl3D = False
      MaxLength = 14
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_cnpf_cnpjExit
      OnKeyPress = edt_cnpf_cnpjKeyPress
    end
    object edt_codcli: TEdit
      Left = 313
      Top = 13
      Width = 50
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      MaxLength = 14
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object bbimprimir: TButton
      Left = 205
      Top = 236
      Width = 85
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 23
      OnClick = bbimprimirClick
    end
  end
  object DBG_listacompras: TDBGrid
    Left = 0
    Top = 265
    Width = 664
    Height = 252
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'P2CHAVE'
        Title.Alignment = taCenter
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'P2CODPRO'
        Title.Alignment = taCenter
        Title.Caption = 'PROD'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMPRO'
        Title.Alignment = taCenter
        Title.Caption = 'NOME'
        Width = 238
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'P2QTD'
        Title.Alignment = taCenter
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P2PRECO'
        Title.Alignment = taCenter
        Title.Caption = 'PRECO UNI'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'N_SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' SERIE'
        Width = 190
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'datanf'
        Title.Caption = 'DATA NF'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nr_nf'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' NF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'venvedor'
        Title.Alignment = taCenter
        Title.Caption = 'VENDEDOR'
        Width = 211
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 16
    Top = 296
    Width = 1123
    Height = 794
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    Visible = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 39
      Top = 39
      Width = 1045
      Height = 99
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLAngleLabel1: TRLAngleLabel
        Left = 0
        Top = 0
        Width = 64
        Height = 16
        Caption = 'Empresa.:'
      end
      object RLAngleLabel2: TRLAngleLabel
        Left = 0
        Top = 16
        Width = 71
        Height = 16
        Caption = 'Endere'#231'o..:'
      end
      object RLDBText1: TRLDBText
        Left = 68
        Top = 0
        Width = 110
        Height = 16
        DataField = 'FANTASIA'
        DataSource = DM1.Src_Emp
      end
      object RLDBText2: TRLDBText
        Left = 68
        Top = 16
        Width = 36
        Height = 16
        DataField = 'ender'
        DataSource = DM1.Src_Emp
      end
      object RLLabel1: TRLLabel
        Left = 467
        Top = 58
        Width = 127
        Height = 16
        Caption = 'Relat'#243'rio de compras'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 932
        Top = 0
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
      end
      object RLLabel2: TRLLabel
        Left = 1017
        Top = 0
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 940
        Top = 0
        Width = 56
        Height = 16
        Caption = 'P'#225'gina..:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 998
        Top = 0
        Width = 87
        Height = 16
        Info = itPageNumber
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 984
        Top = 80
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 138
      Width = 1045
      Height = 19
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel4: TRLLabel
        Left = 283
        Top = 1
        Width = 110
        Height = 16
        Caption = 'FILTRADO POR..:'
      end
      object RLMemo1: TRLMemo
        Left = 394
        Top = 0
        Width = 338
        Height = 16
      end
    end
    object RLBand3: TRLBand
      Left = 39
      Top = 157
      Width = 1045
      Height = 19
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rl_chave: TRLLabel
        Left = 1
        Top = 0
        Width = 54
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'CHAVE'
      end
      object rl_produto: TRLLabel
        Left = 55
        Top = 0
        Width = 42
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'PROD'
      end
      object rl_nrserie: TRLLabel
        Left = 558
        Top = 0
        Width = 192
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'N'#186' SERIE'
      end
      object rl_preco: TRLLabel
        Left = 480
        Top = 0
        Width = 78
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'PRE'#199'O UNI'
      end
      object rl_datanf: TRLLabel
        Left = 750
        Top = 0
        Width = 70
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'DATA NF'
      end
      object rl_nrnotafiscal: TRLLabel
        Left = 820
        Top = 0
        Width = 46
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'N'#186' NF'
      end
      object rl_vendedor: TRLLabel
        Left = 866
        Top = 0
        Width = 180
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'VENDEDOR'
      end
      object rl_nome: TRLLabel
        Left = 97
        Top = 0
        Width = 350
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'NOME'
      end
      object rl_qtd: TRLLabel
        Left = 446
        Top = 0
        Width = 34
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'QTD'
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 176
      Width = 1045
      Height = 17
      AutoExpand = False
      AutoSize = True
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDB_chave: TRLDBText
        Left = 1
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
        DataField = 'P2CHAVE'
        DataSource = DataSource1
        Holder = rl_chave
      end
      object RLDB_produto: TRLDBText
        Left = 55
        Top = 0
        Width = 42
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2CODPRO'
        DataSource = DataSource1
        Holder = rl_produto
      end
      object RLDB_nrserie: TRLDBText
        Left = 558
        Top = 0
        Width = 192
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'N_SERIE'
        DataSource = DataSource1
        Holder = rl_nrserie
      end
      object RLDB_preco: TRLDBText
        Left = 480
        Top = 0
        Width = 78
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2PRECO'
        DataSource = DataSource1
        Holder = rl_preco
      end
      object RLDB_datanf: TRLDBText
        Left = 750
        Top = 0
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'datanf'
        DataSource = DataSource1
        Holder = rl_datanf
      end
      object RLDB_nrnotafiscal: TRLDBText
        Left = 820
        Top = 0
        Width = 46
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'nr_nf'
        DataSource = DataSource1
        Holder = rl_nrnotafiscal
      end
      object RLDB_vendedor: TRLDBText
        Left = 866
        Top = 0
        Width = 180
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'venvedor'
        DataSource = DataSource1
        Holder = rl_vendedor
      end
      object RLDB_nome: TRLDBText
        Left = 97
        Top = 0
        Width = 350
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'NOMPRO'
        DataSource = DataSource1
        Holder = rl_nome
      end
      object RLDBText3: TRLDBText
        Left = 446
        Top = 0
        Width = 34
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'P2QTD'
        DataSource = DataSource1
        Holder = rl_qtd
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 193
      Width = 1045
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand5BeforePrint
      object lbl_patrocinio: TRLLabel
        Left = 0
        Top = 0
        Width = 752
        Height = 16
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
        Left = 751
        Top = 0
        Width = 293
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itFullDate
        Transparent = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 16
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADP02 '
      
        'WHERE p2chave in (select p1chave from cadp01 where p1codcli='#39'1 '#39 +
        ' and p1status<2 and p1emidoc=1)')
    Left = 520
    Top = 24
    object Query1P2CHAVE: TFloatField
      DisplayLabel = 'CHAVE'
      FieldName = 'P2CHAVE'
    end
    object Query1P2CODPRO: TFloatField
      DisplayLabel = 'PRODUTO'
      FieldName = 'P2CODPRO'
    end
    object Query1P2ITEM: TFloatField
      DisplayLabel = 'ITEM'
      FieldName = 'P2ITEM'
    end
    object Query1P2QTD: TFloatField
      DisplayLabel = 'QTD'
      FieldName = 'P2QTD'
    end
    object Query1P2PRECO: TFloatField
      DisplayLabel = 'PRECO'
      FieldName = 'P2PRECO'
      DisplayFormat = '#,0.00'
    end
    object Query1P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Query1P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Query1P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Query1P2CODANT: TFloatField
      FieldName = 'P2CODANT'
    end
    object Query1P2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
    end
    object Query1P2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object Query1P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object Query1P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
    end
    object Query1P2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object Query1P2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object Query1P2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object Query1P2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object Query1P2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Query1P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
    end
    object Query1P2BASEN: TFloatField
      FieldName = 'P2BASEN'
    end
    object Query1P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
    end
    object Query1P2REPAS: TFloatField
      FieldName = 'P2REPAS'
    end
    object Query1P2BASER: TFloatField
      FieldName = 'P2BASER'
    end
    object Query1P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
    end
    object Query1P2LISTA: TFloatField
      FieldName = 'P2LISTA'
    end
    object Query1P2STATUS: TFloatField
      FieldName = 'P2STATUS'
    end
    object Query1P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
    end
    object Query1P2UCPR: TFloatField
      FieldName = 'P2UCPR'
    end
    object Query1P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
    end
    object Query1P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
    end
    object Query1P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Query1P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
    end
    object Query1P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Size = 1
    end
    object Query1P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
    end
    object Query1P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
    end
    object Query1P2BCINR: TFloatField
      FieldName = 'P2BCINR'
    end
    object Query1P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
    end
    object Query1P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
    end
    object Query1P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
    end
    object Query1P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Query1P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Query1P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object Query1P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
    end
    object Query1P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
    end
    object Query1P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
    end
    object Query1P2DESCM: TFloatField
      FieldName = 'P2DESCM'
    end
    object Query1P2CFO: TFloatField
      FieldName = 'P2CFO'
    end
    object Query1P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
    end
    object Query1P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object Query1P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object Query1P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
    end
    object Query1P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
    end
    object Query1P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
    end
    object Query1P2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
    end
    object Query1P2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
    end
    object Query1P2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
    end
    object Query1P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
    end
    object Query1P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
    end
    object Query1P2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
    end
    object Query1P2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
    end
    object Query1P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Size = 30
    end
    object Query1P2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
    end
    object Query1P2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
    end
    object Query1P2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
    end
    object Query1P2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
    end
    object Query1P2STATUS_PED1: TFloatField
      FieldName = 'P2STATUS_PED1'
    end
    object Query1P2TIPO: TFloatField
      FieldName = 'P2TIPO'
    end
    object Query1P2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
    end
    object Query1P2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
    end
    object Query1P2PCOM03: TFloatField
      FieldName = 'P2PCOM03'
    end
    object Query1P2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object Query1P2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object Query1P2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
    end
    object Query1P2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
    end
    object Query1P2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
    end
    object Query1P2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
    end
    object Query1P2ALPIS: TFloatField
      FieldName = 'P2ALPIS'
    end
    object Query1P2VALPIS: TFloatField
      FieldName = 'P2VALPIS'
    end
    object Query1P2ALCOFINS: TFloatField
      FieldName = 'P2ALCOFINS'
    end
    object Query1P2COFINS: TFloatField
      FieldName = 'P2COFINS'
    end
    object Query1P2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object Query1P2TIPO_PCO: TFloatField
      FieldName = 'P2TIPO_PCO'
    end
    object Query1P2CONS_PROPRIO: TFloatField
      FieldName = 'P2CONS_PROPRIO'
    end
    object Query1P2COMPLEMENTO: TMemoField
      FieldName = 'P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Query1P2CODPRO_ORI: TStringField
      FieldName = 'P2CODPRO_ORI'
      Size = 15
    end
    object Query1P2NOMPRO_ORI: TStringField
      FieldName = 'P2NOMPRO_ORI'
      Size = 200
    end
    object Query1P2CHAVE_NIVEL: TFloatField
      FieldName = 'P2CHAVE_NIVEL'
    end
    object Query1P2PCRED_SN: TFloatField
      FieldName = 'P2PCRED_SN'
    end
    object Query1P2PCREDSN: TFloatField
      FieldName = 'P2PCREDSN'
    end
    object Query1P2UND: TStringField
      FieldName = 'P2UND'
      Size = 6
    end
    object Query1P2PREPAS: TFloatField
      FieldName = 'P2PREPAS'
    end
    object Query1P2MODBCST: TFloatField
      FieldName = 'P2MODBCST'
    end
    object Query1P2KIT_PRO: TStringField
      FieldName = 'P2KIT_PRO'
      Size = 1
    end
    object Query1P2LOTCT: TFloatField
      FieldName = 'P2LOTCT'
    end
    object Query1P2CST_PIS: TStringField
      FieldName = 'P2CST_PIS'
      Size = 3
    end
    object Query1P2CST_COFINS: TStringField
      FieldName = 'P2CST_COFINS'
      Size = 3
    end
    object Query1P2CSOSN: TFloatField
      FieldName = 'P2CSOSN'
    end
    object Query1P2CSOSN_ORI: TFloatField
      FieldName = 'P2CSOSN_ORI'
    end
    object Query1P2ESTNOR: TStringField
      FieldName = 'P2ESTNOR'
      Size = 1
    end
    object Query1P2ESTCONS: TStringField
      FieldName = 'P2ESTCONS'
      Size = 1
    end
    object Query1P2ESTTERC: TStringField
      FieldName = 'P2ESTTERC'
      Size = 1
    end
    object Query1P2ESTREV: TStringField
      FieldName = 'P2ESTREV'
      Size = 1
    end
    object Query1P2VLRICMS_SN: TFloatField
      FieldName = 'P2VLRICMS_SN'
    end
    object Query1P2SITUACAO: TFloatField
      FieldName = 'P2SITUACAO'
    end
    object Query1P2DESC_CAB: TFloatField
      FieldName = 'P2DESC_CAB'
    end
    object Query1P2CST_IPI: TStringField
      FieldName = 'P2CST_IPI'
      Size = 3
    end
    object Query1P2VSEGRAT: TFloatField
      FieldName = 'P2VSEGRAT'
    end
    object Query1P2VDESPACESRAT: TFloatField
      FieldName = 'P2VDESPACESRAT'
    end
    object Query1P2CONTESP: TFloatField
      FieldName = 'P2CONTESP'
    end
    object Query1P2VICMSDES: TFloatField
      FieldName = 'P2VICMSDES'
    end
    object Query1P2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
    end
    object Query1NOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 60
      Calculated = True
    end
    object Query1N_SERIE: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'N_SERIE'
      Size = 60
      Calculated = True
    end
    object Query1datanf: TDateField
      FieldKind = fkCalculated
      FieldName = 'datanf'
      Calculated = True
    end
    object Query1n_nf: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'nr_nf'
      Calculated = True
    end
    object Query1venvedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'venvedor'
      Size = 60
      Calculated = True
    end
  end
end
