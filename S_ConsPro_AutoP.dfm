object Frm_ConsPro_AutoP: TFrm_ConsPro_AutoP
  Left = 17
  Top = 3
  Width = 757
  Height = 536
  ActiveControl = CONTEUDO
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RG_TIPOCONS: TRadioGroup
    Left = 0
    Top = 0
    Width = 741
    Height = 63
    Align = alTop
    Caption = 'Consultar por:'
    Color = clBtnFace
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      '&Descri'#231#227'o'
      'C'#243'dig&o'
      'Nome &Generico'
      'C'#243'digo &Barras'
      'Nome &Fornecedor'
      '&Marca/Referencia'
      'C'#243'digo do Produto &no Fabricante')
    ParentColor = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 63
    Width = 741
    Height = 99
    Align = alTop
    Caption = 'Filtrar:'
    TabOrder = 1
    object CODTIP: TEdit
      Left = 3
      Top = 30
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODTIPExit
      OnKeyPress = CODTIPKeyPress
    end
    object NOMTIP: TEdit
      Left = 102
      Top = 30
      Width = 323
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object ANO: TEdit
      Left = 437
      Top = 30
      Width = 72
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 3
      Top = 13
      Width = 92
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo &Ve'#237'culo'
      Color = clTeal
      FocusControl = CODTIP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 102
      Top = 13
      Width = 323
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 437
      Top = 13
      Width = 72
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '&Ano'
      Color = clTeal
      FocusControl = ANO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object StaticText4: TStaticText
      Left = 3
      Top = 53
      Width = 92
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'C'#243'd&igo Grupo'
      Color = clTeal
      FocusControl = CODGRU
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object CODGRU: TEdit
      Left = 3
      Top = 70
      Width = 92
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CODGRUExit
      OnKeyPress = CODGRUKeyPress
    end
    object StaticText5: TStaticText
      Left = 102
      Top = 53
      Width = 323
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Nome do Grupo'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object NOMGRU: TEdit
      Left = 102
      Top = 70
      Width = 323
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 9
    end
    object bbCadPro: TBitBtn
      Left = 562
      Top = 55
      Width = 166
      Height = 41
      Caption = 'Cadastro de Produtos'
      TabOrder = 10
      OnClick = bbCadProClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
        FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
        FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
        FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
        00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
        55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
        5555777577775755555550FBFB0555555555575FFF7555555555570000755555
        5555557777555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 162
    Width = 741
    Height = 31
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 7
      Width = 59
      Height = 13
      Caption = '&Conte'#250'do:'
      FocusControl = CONTEUDO
    end
    object CONTEUDO: TEdit
      Left = 67
      Top = 4
      Width = 358
      Height = 19
      AutoSelect = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnChange = CONTEUDOChange
    end
    object bbAtualizar: TBitBtn
      Left = 430
      Top = 2
      Width = 130
      Height = 25
      Caption = 'Atuali&zar'
      TabOrder = 1
      OnClick = bbAtualizarClick
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
    object bbSair: TBitBtn
      Left = 589
      Top = 2
      Width = 130
      Height = 25
      Caption = '&Sair do Programa'
      TabOrder = 2
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 193
    Width = 741
    Height = 200
    Align = alClient
    Caption = #205'&tens:'
    TabOrder = 3
    object GroupBox4: TGroupBox
      Left = 2
      Top = 125
      Width = 737
      Height = 73
      Align = alBottom
      Caption = 'Observa'#231#245'es:'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object lbl_Acab: TStaticText
        Left = 16
        Top = 13
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Produtos Acabados'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 0
      end
      object lbl_Serv: TStaticText
        Left = 16
        Top = 30
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Servi'#231'o'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 1
      end
      object lbl_MPR: TStaticText
        Left = 16
        Top = 47
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Mat'#233'ria Prima Revenda'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 2
      end
      object lbl_PP: TStaticText
        Left = 156
        Top = 13
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Produto em Produ'#231#227'o'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 3
      end
      object lbl_MP: TStaticText
        Left = 156
        Top = 30
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Mat'#233'ria Prima'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 4
      end
      object lbl_Isum: TStaticText
        Left = 156
        Top = 47
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Insumos'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 5
      end
      object lbl_outros: TStaticText
        Left = 296
        Top = 12
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Outros Produtos'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 6
      end
      object lbl_ProBloq: TStaticText
        Left = 296
        Top = 30
        Width = 139
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Produto Bloqueado'
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 7
      end
      object lbl_ProVenc: TStaticText
        Left = 296
        Top = 48
        Width = 305
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Produtos com Vencimentos Inferior a: '
        Color = clInactiveCaptionText
        ParentColor = False
        TabOrder = 8
        Visible = False
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 737
      Height = 110
      Align = alClient
      DataSource = Src_Pro
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PDCODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estoque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMFOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDPRECO3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDCODGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOMGRU'
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 393
    Width = 741
    Height = 105
    Align = alBottom
    Caption = 'A&plica'#231#227'o:'
    TabOrder = 4
    object dbGrid_SGPro_Ano: TDBGrid
      Left = 526
      Top = 15
      Width = 213
      Height = 88
      Align = alRight
      Ctl3D = False
      DataSource = DM2.Src_SGPro_Ano
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'SGPAANO'
          Visible = True
        end>
    end
    object dbGrid_SGPro: TDBGrid
      Left = 2
      Top = 15
      Width = 524
      Height = 88
      Align = alClient
      Ctl3D = False
      DataSource = DM2.Src_SGPro
      FixedColor = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'SGPCODGRU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TNOME'
          Width = 347
          Visible = True
        end>
    end
  end
  object Src_Pro: TDataSource
    DataSet = Tb_Pro
    OnDataChange = Src_ProDataChange
    Left = 558
    Top = 64
  end
  object Src_SGPRO: TDataSource
    DataSet = DM2.Tb_SGPro
    OnDataChange = Src_SGPRODataChange
    Left = 586
    Top = 64
  end
  object Tb_Pro: TQuery
    OnCalcFields = Tb_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,'
      '       PDNOME2,'
      '       PDMARCA,'
      '       PDCODPRO,'
      '       PDCODBAR,'
      '       PDCODFOR,'
      '       PDNOMFOR,'
      '       PDCODFAB,'
      '       PDPRECO1,'
      '       PDPRECO2,'
      '       PDPRECO3,'
      '       PDCODGRU,'
      '       PDNOMGRU,'
      '       PDUND,'
      '       PDSECAO,'
      '       PDSALDO,'
      '       PDSALDOC,'
      '       PDSALDOT,'
      '       PDSALDOR,'
      '       PDDTULTSAI,'
      '       PDDTULTENT,'
      '       PDSTATUS,'
      '       PDNIVEL'
      'from CADPRO'
      'where PDNOME is null')
    Left = 517
    Top = 64
    object Tb_ProPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Tb_ProPDNOME2: TStringField
      DisplayLabel = 'Nome Gen'#233'rico'
      FieldName = 'PDNOME2'
      Origin = 'SG_ASSOC.CADPRO.PDNOME2'
      Size = 40
    end
    object Tb_ProPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Tb_ProPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Tb_ProPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Tb_ProPDCODFOR: TFloatField
      DisplayLabel = 'C'#243'digo do Fornecedor'
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Tb_ProPDNOMFOR: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'PDNOMFOR'
      Origin = 'SG_ASSOC.CADPRO.PDNOMFOR'
      Size = 40
    end
    object Tb_ProPDCODFAB: TStringField
      DisplayLabel = 'C'#243'digo Fabricante'
      FieldName = 'PDCODFAB'
      Origin = 'SG_ASSOC.CADPRO.PDCODFAB'
      Size = 30
    end
    object Tb_ProPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 1'
      FieldName = 'PDPRECO1'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Tb_ProPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 2'
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Tb_ProPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 3'
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Tb_ProPDCODGRU: TFloatField
      DisplayLabel = 'C'#243'digo Grupo'
      FieldName = 'PDCODGRU'
      Origin = 'SG_ASSOC.CADPRO.PDCODGRU'
    end
    object Tb_ProPDNOMGRU: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Tb_Proestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
    object Tb_Proestoquer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquer'
      Calculated = True
    end
    object Tb_Proestoquec: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquec'
      Calculated = True
    end
    object Tb_Prodtuent: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtuent'
      Calculated = True
    end
    object Tb_Prodtusai: TDateField
      FieldKind = fkCalculated
      FieldName = 'dtusai'
      Calculated = True
    end
    object Tb_ProPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Tb_ProPDSECAO: TStringField
      DisplayLabel = 'se'#231#227'o'
      FieldName = 'PDSECAO'
      Origin = 'SG_ASSOC.CADPRO.PDSECAO'
      Size = 10
    end
    object Tb_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Tb_ProPDSALDOC: TFloatField
      FieldName = 'PDSALDOC'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOC'
    end
    object Tb_ProPDSALDOR: TFloatField
      FieldName = 'PDSALDOR'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOR'
    end
    object Tb_ProPDDTULTSAI: TDateTimeField
      FieldName = 'PDDTULTSAI'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTSAI'
    end
    object Tb_ProPDDTULTENT: TDateTimeField
      FieldName = 'PDDTULTENT'
      Origin = 'SG_ASSOC.CADPRO.PDDTULTENT'
    end
    object Tb_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Tb_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Tb_Proestoquet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoquet'
      Calculated = True
    end
    object Tb_ProPDSALDOT: TFloatField
      FieldName = 'PDSALDOT'
      Origin = 'SG_ASSOC.CADPRO.PDSALDOT'
    end
  end
end
