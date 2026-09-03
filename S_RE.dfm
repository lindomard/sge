object Frm_RE: TFrm_RE
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Consultas de Lotes RE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 680
    Height = 99
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 141
      Top = 24
      Width = 48
      Height = 16
      Caption = 'Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 336
      Top = 23
      Width = 11
      Height = 16
      Caption = #224' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bb_gerar: TButton
      Left = 223
      Top = 71
      Width = 121
      Height = 25
      Caption = '&Gerar '
      TabOrder = 0
      OnClick = bb_gerarClick
    end
    object DT1: TDateEdit
      Left = 204
      Top = 22
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DT2: TDateEdit
      Left = 356
      Top = 22
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object Imprimir: TButton
      Left = 344
      Top = 71
      Width = 121
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = ImprimirClick
    end
    object cb_vcto: TCheckBox
      Left = 8
      Top = 72
      Width = 161
      Height = 17
      Caption = 'Validar Lotes e Vencimentos.'
      TabOrder = 4
    end
    object rg_tipo: TRadioGroup
      Left = 496
      Top = 6
      Width = 188
      Height = 89
      Caption = 'Filtros'
      ItemIndex = 2
      Items.Strings = (
        'Somente MP'
        'Somente ME'
        'Ambos MP e ME')
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 99
    Width = 680
    Height = 343
    Align = alClient
    DataSource = Src_RE
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
        FieldName = 'PF2CODPRO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        ReadOnly = True
        Title.Caption = 'NOME'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PF2QTDP'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'QTD'
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PF2LOTE'
        Title.Alignment = taCenter
        Title.Caption = 'LOTE'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PF2DATAV'
        Title.Alignment = taCenter
        Title.Caption = 'VENC'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE_RE'
        Title.Alignment = taCenter
        Title.Caption = 'RE'
        Width = 90
        Visible = True
      end>
  end
  object rl_lotesre: TRLReport
    Left = -32
    Top = 168
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = Src_RE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PrintEmpty = False
    ShowProgress = False
    Visible = False
    object RLBand2: TRLBand
      Left = 39
      Top = 200
      Width = 716
      Height = 17
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 56
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2CODPRO'
        DataSource = Src_RE
        Holder = rl_codigo
      end
      object RLDBText2: TRLDBText
        Left = 56
        Top = 0
        Width = 284
        Height = 16
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PDNOME'
        DataSource = Src_RE
        Holder = rl_nome
      end
      object RLDBText3: TRLDBText
        Left = 340
        Top = 0
        Width = 94
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2QTDP'
        DataSource = Src_RE
        Holder = rl_qtd
      end
      object RLDBText4: TRLDBText
        Left = 433
        Top = 0
        Width = 94
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2LOTE'
        DataSource = Src_RE
        Holder = rl_lote
      end
      object RLDBText5: TRLDBText
        Left = 526
        Top = 0
        Width = 116
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'PF2DATAV'
        DataSource = Src_RE
        Holder = rl_vcto
      end
      object RLDBText6: TRLDBText
        Left = 641
        Top = 0
        Width = 76
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'LOTE_RE'
        DataSource = Src_RE
        Holder = rl_lote_re
      end
    end
    object RLBand20: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 161
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rl_imgmod05: TRLImage
        Left = 0
        Top = 0
        Width = 349
        Height = 99
        Stretch = True
      end
      object RLDBText43: TRLDBText
        Left = 352
        Top = 0
        Width = 362
        Height = 22
        Alignment = taCenter
        AutoSize = False
        DataField = 'RAZAO'
        DataSource = DM1.Src_Emp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 352
        Top = -51
        Width = 362
        Height = 15
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 352
        Top = 34
        Width = 362
        Height = 32
        Alignment = taCenter
        AutoSize = False
        DataField = 'ender'
        DataSource = DM1.Src_Emp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object robs_mod05: TRLMemo
        Left = 352
        Top = 68
        Width = 362
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_periodo: TRLLabel
        Left = 0
        Top = 122
        Width = 716
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'De  01/01/1900 '#224' 01/01/1900'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 590
        Top = 104
        Width = 60
        Height = 16
        Alignment = taRightJustify
        Info = itFullDate
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 660
        Top = 104
        Width = 53
        Height = 16
        AutoSize = False
        Info = itHour
      end
      object RLLabel1: TRLLabel
        Left = 651
        Top = 104
        Width = 8
        Height = 16
        Caption = '/'
      end
      object rl_codigo: TRLLabel
        Left = 0
        Top = 144
        Width = 56
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'CODIGO'
      end
      object rl_nome: TRLLabel
        Left = 56
        Top = 144
        Width = 284
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'NOME'
      end
      object rl_qtd: TRLLabel
        Left = 340
        Top = 144
        Width = 94
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'QUANTIDADE'
      end
      object rl_lote: TRLLabel
        Left = 433
        Top = 144
        Width = 94
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'LOTE'
      end
      object rl_vcto: TRLLabel
        Left = 526
        Top = 144
        Width = 116
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'VENCIMENTO'
      end
      object rl_lote_re: TRLLabel
        Left = 641
        Top = 144
        Width = 76
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Borders.FixedTop = True
        Caption = 'LOTE RE'
      end
    end
    object RLBand1: TRLBand
      Left = 39
      Top = 217
      Width = 716
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand1BeforePrint
      object RLMemo1: TRLMemo
        Left = 352
        Top = -51
        Width = 362
        Height = 15
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_banner: TRLLabel
        Left = 1
        Top = 2
        Width = 716
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = '/'
      end
    end
  end
  object Src_RE: TDataSource
    DataSet = Qr_RE
    Left = 288
    Top = 256
  end
  object Qr_RE: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_REBeforeInsert
    BeforePost = Qr_REBeforePost
    AfterPost = Qr_REAfterPost
    AfterDelete = Qr_REAfterDelete
    AutoRefresh = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' select                            '
      '   CADPF2.*,                       '
      
        '   decode(CADPF2.PF2NOMPRO,NULL,CADPRO.PDNOME,CADPF2.PF2NOMPRO) ' +
        ' as PDNOME,                  '
      
        '   TO_NUMBER(LTRIM(translate('#39' '#39'||PF2LOTE_RE, translate('#39' '#39'||PF2' +
        'LOTE_RE,'#39'1234567890'#39','#39' '#39'),'#39' '#39'))) as ordem, '
      
        '   TO_NUMBER(LTRIM(translate('#39' '#39'||PF2LOTE_RE, translate('#39' '#39'||PF2' +
        'LOTE_RE,'#39'1234567890'#39','#39' '#39'),'#39' '#39')))||decode(PDNIVEL,4,'#39'MP'#39',decode(P' +
        'DNIVEL,6,'#39'ME'#39','#39'XX'#39')) as Lote_RE '
      ' from                              '
      '   CADPF1, CADPF2, CADPRO          '
      ' where                             '
      '   PDCODPRO=PF2CODPRO              '
      ' and PF1CODEMP=PF2CODEMP           '
      ' and PF1CHAVE=PF2CHAVE             '
      ' and PF1LOTSEQ=PF2LOTSEQ           '
      
        '  and TO_NUMBER(LTRIM(translate('#39' '#39'||PF2LOTE_RE, translate('#39' '#39'||' +
        'PF2LOTE_RE,'#39'1234567890'#39','#39' '#39'),'#39' '#39'))) is not null '
      ' order by                          '
      '  ORDEM                       '
      '')
    UpdateObject = Up_RE
    Left = 328
    Top = 256
    object Qr_REPF2CODEMP: TFloatField
      FieldName = 'PF2CODEMP'
    end
    object Qr_REPF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
    end
    object Qr_REPF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
    end
    object Qr_REPF2ITEM: TFloatField
      FieldName = 'PF2ITEM'
    end
    object Qr_REPF2CODPRO: TFloatField
      FieldName = 'PF2CODPRO'
    end
    object Qr_REPF2LOTE: TStringField
      FieldName = 'PF2LOTE'
    end
    object Qr_REPF2DATAV: TDateTimeField
      FieldName = 'PF2DATAV'
    end
    object Qr_REPF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
    end
    object Qr_REPF2PU: TFloatField
      FieldName = 'PF2PU'
    end
    object Qr_REPF2DESC01: TFloatField
      FieldName = 'PF2DESC01'
    end
    object Qr_REPF2DESC02: TFloatField
      FieldName = 'PF2DESC02'
    end
    object Qr_REPF2DESC03: TFloatField
      FieldName = 'PF2DESC03'
    end
    object Qr_REPF2SIT: TStringField
      FieldName = 'PF2SIT'
      Size = 4
    end
    object Qr_REPF2ALIQ: TFloatField
      FieldName = 'PF2ALIQ'
    end
    object Qr_REPF2ALIQNR: TFloatField
      FieldName = 'PF2ALIQNR'
    end
    object Qr_REPF2BASEN: TFloatField
      FieldName = 'PF2BASEN'
    end
    object Qr_REPF2ICMSN: TFloatField
      FieldName = 'PF2ICMSN'
    end
    object Qr_REPF2BASER: TFloatField
      FieldName = 'PF2BASER'
    end
    object Qr_REPF2ICMSR: TFloatField
      FieldName = 'PF2ICMSR'
    end
    object Qr_REPF2STATUS: TFloatField
      FieldName = 'PF2STATUS'
    end
    object Qr_REPF2TAB: TStringField
      FieldName = 'PF2TAB'
      Size = 1
    end
    object Qr_REPF2LISTA: TFloatField
      FieldName = 'PF2LISTA'
    end
    object Qr_REPF2PCOTAB: TFloatField
      FieldName = 'PF2PCOTAB'
    end
    object Qr_REPF2TOTDES: TFloatField
      FieldName = 'PF2TOTDES'
    end
    object Qr_REPF2BASENR: TFloatField
      FieldName = 'PF2BASENR'
    end
    object Qr_REPF2ICMSNR: TFloatField
      FieldName = 'PF2ICMSNR'
    end
    object Qr_REPF2ISENTAS: TFloatField
      FieldName = 'PF2ISENTAS'
    end
    object Qr_REPF2ALIPI: TFloatField
      FieldName = 'PF2ALIPI'
    end
    object Qr_REPF2IPI: TFloatField
      FieldName = 'PF2IPI'
    end
    object Qr_REPF2CFO: TFloatField
      FieldName = 'PF2CFO'
    end
    object Qr_REPF2DESCRAT: TFloatField
      FieldName = 'PF2DESCRAT'
    end
    object Qr_REPF2PMC: TFloatField
      FieldName = 'PF2PMC'
    end
    object Qr_REPF2VALDES: TFloatField
      FieldName = 'PF2VALDES'
    end
    object Qr_REPF2OUTRAS: TFloatField
      FieldName = 'PF2OUTRAS'
    end
    object Qr_REPF2QTDREC: TFloatField
      FieldName = 'PF2QTDREC'
    end
    object Qr_REPF2PUOUT: TFloatField
      FieldName = 'PF2PUOUT'
    end
    object Qr_REPF2PBT: TFloatField
      FieldName = 'PF2PBT'
    end
    object Qr_REPF2VALDESOUT: TFloatField
      FieldName = 'PF2VALDESOUT'
    end
    object Qr_REPF2TOTDESOUT: TFloatField
      FieldName = 'PF2TOTDESOUT'
    end
    object Qr_REPF2FRERAT: TFloatField
      FieldName = 'PF2FRERAT'
    end
    object Qr_REPF2FRERATOUT: TFloatField
      FieldName = 'PF2FRERATOUT'
    end
    object Qr_REPF2DESCRATOUT: TFloatField
      FieldName = 'PF2DESCRATOUT'
    end
    object Qr_REPF2ORIGEM: TFloatField
      FieldName = 'PF2ORIGEM'
    end
    object Qr_REPF2STATUS_PF1: TFloatField
      FieldName = 'PF2STATUS_PF1'
    end
    object Qr_REPF2SIV_OUTROS: TFloatField
      FieldName = 'PF2SIV_OUTROS'
    end
    object Qr_REPF2LOTE_RE: TStringField
      FieldName = 'PF2LOTE_RE'
    end
    object Qr_REPF2DTENTRADA: TDateTimeField
      FieldName = 'PF2DTENTRADA'
    end
    object Qr_REPF2PREDICMNOR: TFloatField
      FieldName = 'PF2PREDICMNOR'
    end
    object Qr_REPF2CFOP_COMP: TStringField
      FieldName = 'PF2CFOP_COMP'
      Size = 10
    end
    object Qr_REPF2OBS: TStringField
      FieldName = 'PF2OBS'
      Size = 200
    end
    object Qr_REPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_REORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_RELOTE_RE: TStringField
      FieldName = 'LOTE_RE'
      Size = 42
    end
    object Qr_REPF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Size = 120
    end
  end
  object Up_RE: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPF2'
      'set'
      '  PF2CODEMP = :PF2CODEMP,'
      '  PF2CHAVE = :PF2CHAVE,'
      '  PF2LOTSEQ = :PF2LOTSEQ,'
      '  PF2ITEM = :PF2ITEM,'
      '  PF2CODPRO = :PF2CODPRO,'
      '  PF2LOTE = :PF2LOTE,'
      '  PF2DATAV = :PF2DATAV,'
      '  PF2QTDP = :PF2QTDP,'
      '  PF2PU = :PF2PU,'
      '  PF2DESC01 = :PF2DESC01,'
      '  PF2DESC02 = :PF2DESC02,'
      '  PF2DESC03 = :PF2DESC03,'
      '  PF2SIT = :PF2SIT,'
      '  PF2ALIQ = :PF2ALIQ,'
      '  PF2ALIQNR = :PF2ALIQNR,'
      '  PF2BASEN = :PF2BASEN,'
      '  PF2ICMSN = :PF2ICMSN,'
      '  PF2BASER = :PF2BASER,'
      '  PF2ICMSR = :PF2ICMSR,'
      '  PF2STATUS = :PF2STATUS,'
      '  PF2TAB = :PF2TAB,'
      '  PF2LISTA = :PF2LISTA,'
      '  PF2PCOTAB = :PF2PCOTAB,'
      '  PF2TOTDES = :PF2TOTDES,'
      '  PF2BASENR = :PF2BASENR,'
      '  PF2ICMSNR = :PF2ICMSNR,'
      '  PF2ISENTAS = :PF2ISENTAS,'
      '  PF2ALIPI = :PF2ALIPI,'
      '  PF2IPI = :PF2IPI,'
      '  PF2CFO = :PF2CFO,'
      '  PF2DESCRAT = :PF2DESCRAT,'
      '  PF2PMC = :PF2PMC,'
      '  PF2VALDES = :PF2VALDES,'
      '  PF2OUTRAS = :PF2OUTRAS,'
      '  PF2QTDREC = :PF2QTDREC,'
      '  PF2PUOUT = :PF2PUOUT,'
      '  PF2PBT = :PF2PBT,'
      '  PF2VALDESOUT = :PF2VALDESOUT,'
      '  PF2TOTDESOUT = :PF2TOTDESOUT,'
      '  PF2FRERAT = :PF2FRERAT,'
      '  PF2FRERATOUT = :PF2FRERATOUT,'
      '  PF2DESCRATOUT = :PF2DESCRATOUT,'
      '  PF2ORIGEM = :PF2ORIGEM,'
      '  PF2STATUS_PF1 = :PF2STATUS_PF1,'
      '  PF2SIV_OUTROS = :PF2SIV_OUTROS,'
      '  PF2LOTE_RE = :PF2LOTE_RE,'
      '  PF2DTENTRADA = :PF2DTENTRADA,'
      '  PF2PREDICMNOR = :PF2PREDICMNOR,'
      '  PF2CFOP_COMP = :PF2CFOP_COMP,'
      '  PF2OBS = :PF2OBS'
      'where'
      '  PF2CODEMP = :OLD_PF2CODEMP and'
      '  PF2CHAVE = :OLD_PF2CHAVE and'
      '  PF2LOTSEQ = :OLD_PF2LOTSEQ and'
      '  PF2ITEM = :OLD_PF2ITEM and'
      '  PF2CODPRO = :OLD_PF2CODPRO')
    InsertSQL.Strings = (
      'insert into CADPF2'
      '  (PF2CODEMP, PF2CHAVE, PF2LOTSEQ, PF2ITEM, PF2CODPRO, PF2LOTE, '
      'PF2DATAV, '
      
        '   PF2QTDP, PF2PU, PF2DESC01, PF2DESC02, PF2DESC03, PF2SIT, PF2A' +
        'LIQ, '
      'PF2ALIQNR, '
      '   PF2BASEN, PF2ICMSN, PF2BASER, PF2ICMSR, PF2STATUS, PF2TAB, '
      'PF2LISTA, '
      
        '   PF2PCOTAB, PF2TOTDES, PF2BASENR, PF2ICMSNR, PF2ISENTAS, PF2AL' +
        'IPI, '
      'PF2IPI, '
      '   PF2CFO, PF2DESCRAT, PF2PMC, PF2VALDES, PF2OUTRAS, PF2QTDREC, '
      'PF2PUOUT, '
      '   PF2PBT, PF2VALDESOUT, PF2TOTDESOUT, PF2FRERAT, PF2FRERATOUT, '
      'PF2DESCRATOUT, '
      '   PF2ORIGEM, PF2STATUS_PF1, PF2SIV_OUTROS, PF2LOTE_RE, '
      'PF2DTENTRADA, PF2PREDICMNOR, '
      '   PF2CFOP_COMP, PF2OBS)'
      'values'
      
        '  (:PF2CODEMP, :PF2CHAVE, :PF2LOTSEQ, :PF2ITEM, :PF2CODPRO, :PF2' +
        'LOTE, '
      ':PF2DATAV, '
      
        '   :PF2QTDP, :PF2PU, :PF2DESC01, :PF2DESC02, :PF2DESC03, :PF2SIT' +
        ', '
      ':PF2ALIQ, '
      
        '   :PF2ALIQNR, :PF2BASEN, :PF2ICMSN, :PF2BASER, :PF2ICMSR, :PF2S' +
        'TATUS, '
      
        '   :PF2TAB, :PF2LISTA, :PF2PCOTAB, :PF2TOTDES, :PF2BASENR, :PF2I' +
        'CMSNR, '
      
        '   :PF2ISENTAS, :PF2ALIPI, :PF2IPI, :PF2CFO, :PF2DESCRAT, :PF2PM' +
        'C, '
      ':PF2VALDES, '
      '   :PF2OUTRAS, :PF2QTDREC, :PF2PUOUT, :PF2PBT, :PF2VALDESOUT, '
      ':PF2TOTDESOUT, '
      '   :PF2FRERAT, :PF2FRERATOUT, :PF2DESCRATOUT, :PF2ORIGEM, '
      ':PF2STATUS_PF1, '
      '   :PF2SIV_OUTROS, :PF2LOTE_RE, :PF2DTENTRADA, :PF2PREDICMNOR, '
      ':PF2CFOP_COMP, '
      '   :PF2OBS)')
    DeleteSQL.Strings = (
      'delete from CADPF2'
      'where'
      '  PF2CODEMP = :OLD_PF2CODEMP and'
      '  PF2CHAVE = :OLD_PF2CHAVE and'
      '  PF2LOTSEQ = :OLD_PF2LOTSEQ and'
      '  PF2ITEM = :OLD_PF2ITEM and'
      '  PF2CODPRO = :OLD_PF2CODPRO')
    Left = 368
    Top = 256
  end
end
