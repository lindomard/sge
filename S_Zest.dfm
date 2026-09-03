object Frm_ZEst: TFrm_ZEst
  Left = 274
  Top = 135
  Width = 510
  Height = 430
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Zera o Estoque dos Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bbZerarAgora: TBitBtn
    Left = -1
    Top = 300
    Width = 493
    Height = 46
    Caption = 'Zerar Agora'
    TabOrder = 0
    OnClick = bbZerarAgoraClick
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 502
    Height = 300
    Align = alTop
    Caption = 'Produtos a Serem Zerados o Estoque:'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#237'vel do Produto:'
    end
    object Label2: TLabel
      Left = 8
      Top = 37
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fabricante:'
    end
    object Label4: TLabel
      Left = 8
      Top = 52
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo Produto:'
    end
    object Label10: TLabel
      Left = 8
      Top = 74
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Codigo Controle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 111
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Codigo do Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 151
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Codigo do Ramo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 192
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Marca:'
    end
    object Label8: TLabel
      Left = 8
      Top = 213
      Width = 102
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Local Estoque:'
    end
    object CB_NIVEL: TComboBox
      Left = 113
      Top = 13
      Width = 145
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      Text = '  - Todos'
      Items.Strings = (
        '  - Todos'
        '00 - Mercadoria para Revenda'
        '01 - Mat'#233'ria-Prima'
        '02 - Embalagem'
        '03 - Produto em Processo'
        '04 - Produto Acabado'
        '05 - Subproduto'
        '06 - Produto Intermediario'
        '07 - Mat'#233'rial de Uso e Consumo'
        '08 - Ativo Imobilizado'
        '09 - Servi'#231'o'
        '10 - Outros Insumos'
        '99 - Outras')
    end
    object CODFAB: TEdit
      Left = 113
      Top = 33
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODFABExit
      OnKeyPress = CODFABKeyPress
    end
    object NOMFAB: TEdit
      Left = 174
      Top = 33
      Width = 305
      Height = 19
      Color = 13828095
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Todos...'
    end
    object CODPRO: TEdit
      Left = 113
      Top = 51
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 174
      Top = 51
      Width = 305
      Height = 19
      Color = 13828095
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Todos...'
    end
    object edt_codcon: TEdit
      Left = 113
      Top = 69
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = edt_codconExit
      OnKeyPress = edt_codconKeyPress
    end
    object lbx_codcon: TListBox
      Left = 174
      Top = 69
      Width = 305
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyDown = lbx_codconKeyDown
    end
    object OMITIR_con: TCheckBox
      Left = 113
      Top = 92
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object cb_negativos: TCheckBox
      Left = 115
      Top = 234
      Width = 220
      Height = 17
      Caption = 'Somente com Saldo Negativo'
      TabOrder = 16
    end
    object edt_codgru: TEdit
      Left = 113
      Top = 110
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnExit = edt_codgruExit
      OnKeyPress = edt_codgruKeyPress
    end
    object lbx_codgru: TListBox
      Left = 174
      Top = 110
      Width = 305
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnKeyDown = lbx_codgruKeyDown
    end
    object OMITIR_GRU: TCheckBox
      Left = 113
      Top = 134
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object edt_codram: TEdit
      Left = 113
      Top = 151
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnExit = edt_codramExit
      OnKeyPress = edt_codramKeyPress
    end
    object lbx_codram: TListBox
      Left = 175
      Top = 151
      Width = 304
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnKeyDown = lbx_codramKeyDown
    end
    object OMITIR_RAM: TCheckBox
      Left = 113
      Top = 175
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object edtMarca: TEdit
      Left = 113
      Top = 192
      Width = 366
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 14
    end
    object CB_FILIAL: TComboBox
      Left = 113
      Top = 210
      Width = 145
      Height = 21
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 15
      Text = '  - Todos'
      Items.Strings = (
        '  - Todos'
        '00 - Mercadoria para Revenda'
        '01 - Mat'#233'ria-Prima'
        '02 - Embalagem'
        '03 - Produto em Processo'
        '04 - Produto Acabado'
        '05 - Subproduto'
        '06 - Produto Intermediario'
        '07 - Mat'#233'rial de Uso e Consumo'
        '08 - Ativo Imobilizado'
        '09 - Servi'#231'o'
        '10 - Outros Insumos'
        '99 - Outras')
    end
  end
  object BitBtn2: TBitBtn
    Left = 0
    Top = 345
    Width = 492
    Height = 45
    Caption = '&Sair do Programa'
    TabOrder = 1
    OnClick = BitBtn2Click
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
    Layout = blGlyphTop
    NumGlyphs = 2
  end
  object Qr_Pro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDNOME,PDCODPRO,PDNIVEL,PDCODFOR,PDCODEMP from'
      'CADPRO where PDCODEMP=1')
    Left = 384
    Top = 16
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
      Origin = 'SG_ASSOC.CADPRO.PDCODPRO'
    end
    object Qr_ProPDNIVEL: TFloatField
      FieldName = 'PDNIVEL'
      Origin = 'SG_ASSOC.CADPRO.PDNIVEL'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDCODEMP: TFloatField
      FieldName = 'PDCODEMP'
      Origin = 'SG_ASSOC.CADPRO.PDCODEMP'
    end
  end
  object Qr_LGC: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *  from CADLGC where CLCODEMP is null')
    Left = 296
    Top = 16
    object Qr_LGCCLCODEMP: TFloatField
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
    end
    object Qr_LGCCLCODPRO: TFloatField
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
    end
    object Qr_LGCCLDTVCTO: TDateTimeField
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
    end
    object Qr_LGCCLNUMERO: TStringField
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
    end
    object Qr_LGCCLQTD: TFloatField
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
    end
    object Qr_LGCCLQTDR: TFloatField
      FieldName = 'CLQTDR'
      Origin = 'SG_ASSOC.CADLGC.CLQTDR'
    end
    object Qr_LGCCLQTDC: TFloatField
      FieldName = 'CLQTDC'
      Origin = 'SG_ASSOC.CADLGC.CLQTDC'
    end
    object Qr_LGCCLPRECO1: TFloatField
      FieldName = 'CLPRECO1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO1'
    end
    object Qr_LGCCLPRECO2: TFloatField
      FieldName = 'CLPRECO2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO2'
    end
    object Qr_LGCCLPRECO3: TFloatField
      FieldName = 'CLPRECO3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO3'
    end
    object Qr_LGCCLPRECOA1: TFloatField
      FieldName = 'CLPRECOA1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA1'
    end
    object Qr_LGCCLPRECOA2: TFloatField
      FieldName = 'CLPRECOA2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA2'
    end
    object Qr_LGCCLPRECOA3: TFloatField
      FieldName = 'CLPRECOA3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA3'
    end
    object Qr_LGCCLPCUSTO: TFloatField
      FieldName = 'CLPCUSTO'
      Origin = 'SG_ASSOC.CADLGC.CLPCUSTO'
    end
    object Qr_LGCCLESTMAX: TFloatField
      FieldName = 'CLESTMAX'
      Origin = 'SG_ASSOC.CADLGC.CLESTMAX'
    end
    object Qr_LGCCLESTMIN: TFloatField
      FieldName = 'CLESTMIN'
      Origin = 'SG_ASSOC.CADLGC.CLESTMIN'
    end
    object Qr_LGCCLDTUATP1: TDateTimeField
      FieldName = 'CLDTUATP1'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP1'
    end
    object Qr_LGCCLDTUATP2: TDateTimeField
      FieldName = 'CLDTUATP2'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP2'
    end
    object Qr_LGCCLDTUATP3: TDateTimeField
      FieldName = 'CLDTUATP3'
      Origin = 'SG_ASSOC.CADLGC.CLDTUATP3'
    end
    object Qr_LGCCLQTDT: TFloatField
      FieldName = 'CLQTDT'
      Origin = 'SG_ASSOC.CADLGC.CLQTDT'
    end
    object Qr_LGCCLQTD_PRAT: TFloatField
      FieldName = 'CLQTD_PRAT'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_PRAT'
    end
    object Qr_LGCCLQTD_DEP: TFloatField
      FieldName = 'CLQTD_DEP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_DEP'
    end
    object Qr_LGCCLQTD_REP: TFloatField
      FieldName = 'CLQTD_REP'
      Origin = 'SG_ASSOC.CADLGC.CLQTD_REP'
    end
  end
end
