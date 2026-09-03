object Frm_Pro_Replica_Precos: TFrm_Pro_Replica_Precos
  Left = 0
  Top = 70
  Width = 790
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Replica Pre'#231'os de Produtos nas Filiais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 13
      Width = 177
      Height = 13
      Caption = 'Produtos Alterados no Periodo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 281
      Top = 13
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mdtini: TMaskEdit
      Left = 208
      Top = 10
      Width = 67
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object mdtfin: TMaskEdit
      Left = 297
      Top = 11
      Width = 67
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object bbAplicar: TBitBtn
      Left = 446
      Top = 5
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = 'Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbAplicarClick
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
      Left = 649
      Top = 5
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
  object Panel2: TPanel
    Left = 0
    Top = 395
    Width = 782
    Height = 41
    Align = alBottom
    TabOrder = 1
    object sbMarcar: TSpeedButton
      Left = 3
      Top = 4
      Width = 119
      Height = 22
      Caption = '&Marcar todos'
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
      OnClick = sbMarcarClick
    end
    object sbDesmarcar: TSpeedButton
      Left = 122
      Top = 4
      Width = 119
      Height = 22
      Caption = '&Desmarcar todos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      OnClick = sbDesmarcarClick
    end
    object bbReplica: TBitBtn
      Left = 312
      Top = 5
      Width = 227
      Height = 26
      Cursor = crHandPoint
      Caption = 'Replicar(Atualizar)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbReplicaClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 782
    Height = 354
    Align = alClient
    DataSource = Src_ProSel
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SELECIONADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 2'
        Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDCODPRO'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDCODBAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDPRECO1'
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
        FieldName = 'PDMARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDCODFOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PDNOMFOR'
        Visible = True
      end>
  end
  object Qr_ProSel: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select '#39'P'#39' AS SELECIONADO,PDNOME,PDCODPRO,PDCODBAR,PDPRECO1,PDPR' +
        'ECO2,PDPRECO3,'
      'PDMARCA,PDCODFOR,PDNOMFOR FROM CADPRO')
    UpdateObject = u_ProSel
    Left = 584
    Top = 16
    object Qr_ProSelSELECIONADO: TStringField
      DisplayLabel = 'Ok'
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object Qr_ProSelPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_ProSelPDCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDCODPRO'
    end
    object Qr_ProSelPDCODBAR: TFloatField
      DisplayLabel = 'C'#243'digo Barras'
      FieldName = 'PDCODBAR'
    end
    object Qr_ProSelPDPRECO1: TFloatField
      DisplayLabel = 'Pre'#231'o 01'
      FieldName = 'PDPRECO1'
    end
    object Qr_ProSelPDPRECO2: TFloatField
      DisplayLabel = 'Pre'#231'o 02'
      FieldName = 'PDPRECO2'
    end
    object Qr_ProSelPDPRECO3: TFloatField
      DisplayLabel = 'Pre'#231'o 03'
      FieldName = 'PDPRECO3'
    end
    object Qr_ProSelPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 40
    end
    object Qr_ProSelPDCODFOR: TFloatField
      DisplayLabel = 'C'#243'd.For'
      FieldName = 'PDCODFOR'
    end
    object Qr_ProSelPDNOMFOR: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'PDNOMFOR'
      Size = 40
    end
  end
  object Src_ProSel: TDataSource
    DataSet = Qr_ProSel
    Left = 616
    Top = 24
  end
  object u_ProSel: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPRO'
      'set'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  SELECIONADO = :OLD_SELECIONADO and'
      '  PDNOME = :OLD_PDNOME and'
      '  PDCODPRO = :OLD_PDCODPRO and'
      '  PDCODBAR = :OLD_PDCODBAR')
    InsertSQL.Strings = (
      'insert into CADPRO'
      '  (SELECIONADO)'
      'values'
      '  (:SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADPRO'
      'where'
      '  SELECIONADO = :OLD_SELECIONADO and'
      '  PDNOME = :OLD_PDNOME and'
      '  PDCODPRO = :OLD_PDCODPRO and'
      '  PDCODBAR = :OLD_PDCODBAR')
    Left = 664
    Top = 120
  end
end
