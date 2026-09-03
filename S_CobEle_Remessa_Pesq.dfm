object Frm_CobEle_Remessa_Pesq: TFrm_CobEle_Remessa_Pesq
  Left = 32
  Top = 126
  Width = 766
  Height = 470
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisar T'#237'tulos Disponiveis para Remessa Bancaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 750
    Height = 177
    Align = alTop
    TabOrder = 0
    object periodo: TLabel
      Left = 179
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object a: TLabel
      Left = 365
      Top = 12
      Width = 6
      Height = 13
      Caption = 'a'
      Visible = False
    end
    object codcliente: TLabel
      Left = 151
      Top = 95
      Width = 85
      Height = 13
      Caption = 'C'#243'digo do Banco:'
    end
    object lbl_cheio: TLabel
      Left = 551
      Top = 116
      Width = 42
      Height = 13
      Caption = 'lbl_cheio'
    end
    object Label64: TLabel
      Left = 507
      Top = 15
      Width = 49
      Height = 13
      Caption = 'Qual data:'
    end
    object lbl_codcli: TLabel
      Left = 138
      Top = 50
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 168
      Top = 28
      Width = 70
      Height = 13
      Caption = 'Numero Inicial:'
    end
    object Label2: TLabel
      Left = 330
      Top = 28
      Width = 65
      Height = 13
      Caption = 'Numero Final:'
    end
    object lblLegenda: TLabel
      Left = 264
      Top = 151
      Width = 209
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Existem em outras Remessas'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MDT1: TMaskEdit
      Left = 246
      Top = 9
      Width = 87
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 408
      Top = 9
      Width = 87
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODBCO: TEdit
      Left = 246
      Top = 88
      Width = 87
      Height = 19
      TabStop = False
      Color = 16759260
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object NOMBCO: TEdit
      Left = 332
      Top = 88
      Width = 279
      Height = 19
      TabStop = False
      Ctl3D = False
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Todos...'
    end
    object bbLocalizar: TBitBtn
      Left = 271
      Top = 114
      Width = 185
      Height = 25
      Caption = '&Localizar'
      TabOrder = 4
      OnClick = bbLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object cb_tipopesq: TComboBox
      Left = 572
      Top = 10
      Width = 122
      Height = 21
      BevelKind = bkSoft
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      Sorted = True
      TabOrder = 5
      Text = 'Vencimento'
      Items.Strings = (
        'Emissao'
        'Vencimento')
    end
    object CODCLI: TEdit
      Left = 185
      Top = 47
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 246
      Top = 47
      Width = 448
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 186
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object edt_numini: TEdit
      Left = 246
      Top = 27
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnExit = edt_numiniExit
    end
    object edt_numfin: TEdit
      Left = 408
      Top = 27
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnExit = edt_numfinExit
    end
    object cb_todos: TCheckBox
      Left = 8
      Top = 156
      Width = 57
      Height = 17
      Caption = 'Todos'
      TabOrder = 11
      OnClick = cb_todosClick
    end
    object cb_sem_outras_remessas: TCheckBox
      Left = 84
      Top = 158
      Width = 189
      Height = 17
      Caption = 'Sem Outras Remessas'
      TabOrder = 12
      OnClick = cb_sem_outras_remessasClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 391
    Width = 750
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbFechar: TBitBtn
      Left = 271
      Top = 4
      Width = 185
      Height = 35
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = bbFecharClick
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 177
    Width = 750
    Height = 214
    Align = alClient
    DataSource = Src_Dar
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 2'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODEMP'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRAZAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTEMIS'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTVCTO'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESCF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODEMP'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTDESCF'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRJURD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESCD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRMULTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRQTDDM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNOSNUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTDI01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTDI02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTDIVL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALDES01'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTDI03'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALDES02'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVLRDES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTARBAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDNOSNUM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRACEITE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRESPECIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODBAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODDIG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTBCOCOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTCGRU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRTOTSGRU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDATCUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNUMCUP'
        Visible = True
      end>
  end
  object Qr_Dar: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' as OK,'
      '       CRCODEMP,'
      '       CRNUMERO,'
      '       CRDESD,'
      '       CRNUMCUP,'
      '       CRDATCUP,'
      '       CRVALOR,'
      '       CRDTEMIS,'
      '       CRDTVCTO,'
      '       CRDESCF,'
      '       CRDTDESCF,'
      '       CRJURD,'
      '       CRDESCD,'
      '       CRMULTA,'
      '       CRQTDDM,'
      '       CRNOSNUM,'
      '       CRTOTDI01,'
      '       CRTOTDI02,'
      '       CRTOTDI03,'
      '       CRTOTDIVL,'
      '       CRVALDES01,'
      '       CRVALDES02,'
      '       CRVLRDES,'
      '       CRTARBAN,'
      '       CRDNOSNUM,'
      '       CRACEITE,'
      '       CRESPECIE,'
      '       CRCODBAR,'
      '       CRCODDIG,'
      '       CRTBCOCOB,'
      '       CRTOTCGRU,'
      '       CRTOTSGRU,'
      '       CRDUP,'
      '       CRCODCLI,'
      '       CRCODBCO,'
      '       CROBS,'
      '       CRAZAO from CADDAR,CADCLI'
      '       where CCODEMP=CRCODEMP'
      '         and CCODCLI=CRCODCLI'
      '')
    UpdateObject = U_Dar
    Left = 40
    Top = 16
    object Qr_DarCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_DarCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DarCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DarCRNUMCUP: TFloatField
      DisplayLabel = 'N'#250'mero Cupom'
      FieldName = 'CRNUMCUP'
      Origin = 'SG_ASSOC.CADDAR.CRNUMCUP'
    end
    object Qr_DarCRDATCUP: TDateTimeField
      DisplayLabel = 'Data Cupom'
      FieldName = 'CRDATCUP'
      Origin = 'SG_ASSOC.CADDAR.CRDATCUP'
    end
    object Qr_DarCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DarCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DarCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DarCRDESCF: TFloatField
      DisplayLabel = 'Desc.Financ.'
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Qr_DarCRDTDESCF: TDateTimeField
      DisplayLabel = 'Dt.Desc.Fin'
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Qr_DarCRJURD: TFloatField
      DisplayLabel = 'Juros Dias'
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Qr_DarCRDESCD: TFloatField
      DisplayLabel = 'Desc.por dia Atenc.'
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Qr_DarCRMULTA: TFloatField
      DisplayLabel = 'Valor Multa'
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Qr_DarCRQTDDM: TFloatField
      DisplayLabel = 'Qtd.Dias p/Multa'
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.CADDAR.CRQTDDM'
    end
    object Qr_DarCRNOSNUM: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Qr_DarCRTOTDI01: TFloatField
      DisplayLabel = 'Total Desc.Item.01'
      FieldName = 'CRTOTDI01'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI01'
    end
    object Qr_DarCRTOTDI02: TFloatField
      DisplayLabel = 'Total Desc.Item.02'
      FieldName = 'CRTOTDI02'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI02'
    end
    object Qr_DarCRTOTDI03: TFloatField
      DisplayLabel = 'Total Desc.Item.03'
      FieldName = 'CRTOTDI03'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI03'
    end
    object Qr_DarCRTOTDIVL: TFloatField
      DisplayLabel = 'Total Desc.Item.Vlr'
      FieldName = 'CRTOTDIVL'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDIVL'
    end
    object Qr_DarCRVALDES01: TFloatField
      DisplayLabel = 'Valor do Desc.01'
      FieldName = 'CRVALDES01'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES01'
    end
    object Qr_DarCRVALDES02: TFloatField
      DisplayLabel = 'Valor do Desc.02'
      FieldName = 'CRVALDES02'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES02'
    end
    object Qr_DarCRVLRDES: TFloatField
      DisplayLabel = 'Desc.Em Valor'
      FieldName = 'CRVLRDES'
      Origin = 'SG_ASSOC.CADDAR.CRVLRDES'
    end
    object Qr_DarCRTARBAN: TFloatField
      DisplayLabel = 'Tarifa Bancaria'
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.CADDAR.CRTARBAN'
    end
    object Qr_DarCRDNOSNUM: TStringField
      DisplayLabel = 'Dig.Nosso N'#250'mero'
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object Qr_DarCRACEITE: TStringField
      DisplayLabel = 'Aceite'
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.CADDAR.CRACEITE'
      Size = 1
    end
    object Qr_DarCRESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.CADDAR.CRESPECIE'
      Size = 2
    end
    object Qr_DarCRCODBAR: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODBAR'
      Size = 60
    end
    object Qr_DarCRCODDIG: TStringField
      DisplayLabel = 'C'#243'digo Digitavel'
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.CADDAR.CRCODDIG'
      Size = 60
    end
    object Qr_DarCRTBCOCOB: TFloatField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'CRTBCOCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTBCOCOB'
    end
    object Qr_DarCRTOTCGRU: TFloatField
      DisplayLabel = 'Total c/Grupo'
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTCGRU'
    end
    object Qr_DarCRTOTSGRU: TFloatField
      DisplayLabel = 'Total Sem Grupo'
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTSGRU'
    end
    object Qr_DarCRDUP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_DarCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DarCRCODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_DarOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Qr_DarCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Qr_DarCROBS: TMemoField
      FieldName = 'CROBS'
      BlobType = ftMemo
    end
    object Qr_DarCRCHAVE_ID_ANO: TFloatField
      FieldName = 'CRCHAVE_ID_ANO'
    end
    object Qr_DarCRCHAVE_ID: TFloatField
      FieldName = 'CRCHAVE_ID'
    end
    object Qr_Darqtdrem: TFloatField
      FieldName = 'qtdrem'
    end
  end
  object Src_Dar: TDataSource
    DataSet = Qr_Dar
    Left = 72
    Top = 16
  end
  object U_Dar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAR'
      'set'
      '  OK = :OK,'
      '  CRCODEMP = :CRCODEMP,'
      '  CRNUMERO = :CRNUMERO,'
      '  CRDESD = :CRDESD,'
      '  CRNUMCUP = :CRNUMCUP,'
      '  CRDATCUP = :CRDATCUP,'
      '  CRVALOR = :CRVALOR,'
      '  CRDTEMIS = :CRDTEMIS,'
      '  CRDTVCTO = :CRDTVCTO,'
      '  CRDESCF = :CRDESCF,'
      '  CRDTDESCF = :CRDTDESCF,'
      '  CRJURD = :CRJURD,'
      '  CRDESCD = :CRDESCD,'
      '  CRMULTA = :CRMULTA,'
      '  CRQTDDM = :CRQTDDM,'
      '  CRNOSNUM = :CRNOSNUM,'
      '  CRTOTDI01 = :CRTOTDI01,'
      '  CRTOTDI02 = :CRTOTDI02,'
      '  CRTOTDI03 = :CRTOTDI03,'
      '  CRTOTDIVL = :CRTOTDIVL,'
      '  CRVALDES01 = :CRVALDES01,'
      '  CRVALDES02 = :CRVALDES02,'
      '  CRVLRDES = :CRVLRDES,'
      '  CRTARBAN = :CRTARBAN,'
      '  CRDNOSNUM = :CRDNOSNUM,'
      '  CRACEITE = :CRACEITE,'
      '  CRESPECIE = :CRESPECIE,'
      '  CRCODBAR = :CRCODBAR,'
      '  CRCODDIG = :CRCODDIG,'
      '  CRTBCOCOB = :CRTBCOCOB,'
      '  CRTOTCGRU = :CRTOTCGRU,'
      '  CRTOTSGRU = :CRTOTSGRU,'
      '  CRDUP = :CRDUP,'
      '  CRCODCLI = :CRCODCLI,'
      '  CRCODBCO = :CRCODBCO'
      'where'
      '  OK = :OLD_OK')
    InsertSQL.Strings = (
      'insert into CADDAR'
      '  (OK, CRCODEMP, CRNUMERO, CRDESD, CRNUMCUP, CRDATCUP, CRVALOR, '
      'CRDTEMIS, '
      '   CRDTVCTO, CRDESCF, CRDTDESCF, CRJURD, CRDESCD, CRMULTA, '
      'CRQTDDM, CRNOSNUM, '
      '   CRTOTDI01, CRTOTDI02, CRTOTDI03, CRTOTDIVL, CRVALDES01, '
      'CRVALDES02, '
      
        '   CRVLRDES, CRTARBAN, CRDNOSNUM, CRACEITE, CRESPECIE, CRCODBAR,' +
        ' '
      'CRCODDIG, '
      '   CRTBCOCOB, CRTOTCGRU, CRTOTSGRU, CRDUP, CRCODCLI, CRCODBCO)'
      'values'
      '  (:OK, :CRCODEMP, :CRNUMERO, :CRDESD, :CRNUMCUP, :CRDATCUP, '
      ':CRVALOR, '
      
        '   :CRDTEMIS, :CRDTVCTO, :CRDESCF, :CRDTDESCF, :CRJURD, :CRDESCD' +
        ', '
      ':CRMULTA, '
      '   :CRQTDDM, :CRNOSNUM, :CRTOTDI01, :CRTOTDI02, :CRTOTDI03, '
      ':CRTOTDIVL, '
      '   :CRVALDES01, :CRVALDES02, :CRVLRDES, :CRTARBAN, :CRDNOSNUM, '
      ':CRACEITE, '
      '   :CRESPECIE, :CRCODBAR, :CRCODDIG, :CRTBCOCOB, :CRTOTCGRU, '
      ':CRTOTSGRU, '
      '   :CRDUP, :CRCODCLI, :CRCODBCO)')
    DeleteSQL.Strings = (
      'delete from CADDAR'
      'where'
      '  OK = :OLD_OK')
    Left = 104
    Top = 16
  end
end
