object Frm_CX_RAna: TFrm_CX_RAna
  Left = 240
  Top = 214
  Width = 514
  Height = 390
  Caption = 'Relatorio analitico do caixa'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 332
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 114
      Height = 13
      Caption = 'C'#243'digo da Empresa:'
    end
    object Label2: TLabel
      Left = 10
      Top = 32
      Width = 114
      Height = 13
      Caption = 'C'#243'digo do Banco...:'
    end
    object Label3: TLabel
      Left = 10
      Top = 52
      Width = 84
      Height = 13
      Caption = 'Departamento:'
    end
    object Label4: TLabel
      Left = 10
      Top = 97
      Width = 96
      Height = 13
      Caption = 'Centro de Custo:'
    end
    object Label5: TLabel
      Left = 10
      Top = 147
      Width = 79
      Height = 13
      Caption = 'Tipo/C'#243'digo.:'
    end
    object Label6: TLabel
      Left = 10
      Top = 205
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label7: TLabel
      Left = 180
      Top = 203
      Width = 8
      Height = 13
      Caption = #224
    end
    object SP2: TSpeedButton
      Left = 79
      Top = 70
      Width = 25
      Height = 19
      Flat = True
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
    object MCODEMP: TEdit
      Left = 125
      Top = 2
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCODEMPExit
      OnKeyPress = MCODEMPKeyPress
    end
    object CODBCO: TEdit
      Left = 125
      Top = 24
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODBCOExit
      OnKeyPress = CODBCOKeyPress
    end
    object NOMEMP: TEdit
      Left = 186
      Top = 2
      Width = 280
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
      Text = 'Todas...'
    end
    object NOMBCO: TEdit
      Left = 186
      Top = 24
      Width = 280
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
      Text = 'Todos...'
    end
    object edt_codccu: TEdit
      Left = 125
      Top = 93
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_codccuExit
      OnKeyPress = edt_codccuKeyPress
    end
    object CB_TIPO: TComboBox
      Left = 125
      Top = 141
      Width = 60
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'Todos'
      OnChange = CB_TIPOChange
      OnExit = CB_TIPOExit
      Items.Strings = (
        'Todos'
        'FR'
        'CL'
        'TR'
        'VD')
    end
    object CODIGO: TEdit
      Left = 187
      Top = 142
      Width = 58
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 13
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object NOME: TEdit
      Left = 246
      Top = 142
      Width = 220
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 14
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 85
      Top = 201
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 7
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 207
      Top = 201
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object RG_NAT: TRadioGroup
      Left = 5
      Top = 260
      Width = 284
      Height = 33
      Caption = 'Natureza:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Todas'
        '&D'#233'bitos'
        '&Cr'#233'ditos')
      TabOrder = 9
    end
    object RG_ESTADO: TRadioGroup
      Left = 5
      Top = 228
      Width = 284
      Height = 32
      Caption = 'Estado dos lan'#231'amentos:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        '&Realizados'
        '&Previstos'
        '&Todos')
      TabOrder = 10
    end
    object RG_TPPESQ: TRadioGroup
      Left = 10
      Top = 164
      Width = 289
      Height = 30
      Caption = 'Pesquisar por data:'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        '&Referencia'
        '&Prevista'
        '&Realizada')
      TabOrder = 6
    end
    object cb_equip: TCheckBox
      Left = 2
      Top = 301
      Width = 290
      Height = 17
      Caption = 'Equiparar ao faturamento do per'#237'odo'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object edt_coddep: TEdit
      Left = 125
      Top = 46
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = edt_coddepExit
      OnKeyPress = edt_coddepKeyPress
    end
    object lbx_nomedep: TListBox
      Left = 186
      Top = 46
      Width = 280
      Height = 45
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnKeyDown = lbx_nomedepKeyDown
    end
    object omitir_dep: TCheckBox
      Left = 126
      Top = 69
      Width = 56
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnMouseMove = omitir_depMouseMove
    end
    object lbx_nomccu: TListBox
      Left = 186
      Top = 93
      Width = 280
      Height = 45
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnKeyDown = lbx_nomccuKeyDown
    end
    object omitir_ccu: TCheckBox
      Left = 127
      Top = 116
      Width = 56
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      OnMouseMove = omitir_ccuMouseMove
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 506
    Height = 27
    Align = alBottom
    TabOrder = 1
    object bbExcel: TSpeedButton
      Left = 178
      Top = 0
      Width = 150
      Height = 26
      Cursor = crHandPoint
      Caption = 'Exportar p/Excel'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      OnClick = bbExcelClick
    end
    object BitBtn1: TBitBtn
      Left = 2
      Top = 1
      Width = 150
      Height = 26
      Cursor = crHandPoint
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 355
      Top = 1
      Width = 150
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
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
      NumGlyphs = 2
    end
  end
  object Qr_LDR: TQuery
    OnCalcFields = Qr_LDRCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select DATADP,DATAREAL,DATAREF,CODBCO,CODDEP,CODCC,'
      '       VALORP,VALORR,NATDC,DESCMV,NUMDOC,NUMDOC2,TIPO,CODIGO,'
      '       DNOME,CCNOME,NOME'
      'from CADLDR,CADDEP,CADCCU'
      'where CODEMP is null'
      'and DCODDEP =CODDEP'
      'and CCCODCCU=CODCC')
    Left = 320
    Top = 173
    object Qr_LDRDATADP: TDateTimeField
      FieldName = 'DATADP'
      Origin = 'SG_ASSOC.CADLDR.DATADP'
    end
    object Qr_LDRDATAREAL: TDateTimeField
      FieldName = 'DATAREAL'
      Origin = 'SG_ASSOC.CADLDR.DATAREAL'
    end
    object Qr_LDRDATAREF: TDateTimeField
      FieldName = 'DATAREF'
      Origin = 'SG_ASSOC.CADLDR.DATAREF'
    end
    object Qr_LDRCODBCO: TFloatField
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADLDR.CODBCO'
    end
    object Qr_LDRCODDEP: TStringField
      FieldName = 'CODDEP'
      Origin = 'SG_ASSOC.CADLDR.CODDEP'
      Size = 6
    end
    object Qr_LDRCODCC: TStringField
      FieldName = 'CODCC'
      Origin = 'SG_ASSOC.CADLDR.CODCC'
      Size = 6
    end
    object Qr_LDRVALORP: TFloatField
      FieldName = 'VALORP'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Qr_LDRVALORR: TFloatField
      FieldName = 'VALORR'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Qr_LDRNATDC: TStringField
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object Qr_LDRDESCMV: TStringField
      FieldName = 'DESCMV'
      Origin = 'SG_ASSOC.CADLDR.DESCMV'
      Size = 60
    end
    object Qr_LDRNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC'
      Size = 15
    end
    object Qr_LDRNUMDOC2: TStringField
      FieldName = 'NUMDOC2'
      Origin = 'SG_ASSOC.CADLDR.NUMDOC2'
      Size = 15
    end
    object Qr_LDRTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'SG_ASSOC.CADLDR.TIPO'
      Size = 2
    end
    object Qr_LDRCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADLDR.CODIGO'
    end
    object Qr_LDRDNOME: TStringField
      FieldName = 'DNOME'
      Origin = 'SG_ASSOC.CADDEP.DNOME'
    end
    object Qr_LDRCCNOME: TStringField
      FieldName = 'CCNOME'
      Origin = 'SG_ASSOC.CADCCU.CCNOME'
    end
    object Qr_LDRNOME: TStringField
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADLDR.NOME'
      Size = 40
    end
  end
  object Src_Ldr: TDataSource
    DataSet = Qr_LDR
    Left = 352
    Top = 173
  end
end
