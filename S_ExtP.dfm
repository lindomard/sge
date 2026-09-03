object Frm_ExtP: TFrm_ExtP
  Left = 29
  Top = 194
  Width = 746
  Height = 255
  Caption = 'Extrato de Produto'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 198
    Width = 738
    Height = 26
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 508
      Top = 0
      Width = 110
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
    object bbSair: TBitBtn
      Left = 622
      Top = 0
      Width = 110
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 1
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
    object bbAjustaExtrato: TBitBtn
      Left = 23
      Top = 0
      Width = 277
      Height = 26
      Cursor = crHandPoint
      Caption = 'Lan'#231'ar no Estoque de Acordo com Extrato'
      TabOrder = 2
      Visible = False
      OnClick = bbAjustaExtratoClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 198
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 20
      Width = 110
      Height = 13
      Caption = 'C'#243'digo do Produto:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label2: TLabel
      Left = 264
      Top = 20
      Width = 128
      Height = 13
      Caption = 'Descricao do Produto:'
    end
    object Label3: TLabel
      Left = 57
      Top = 70
      Width = 70
      Height = 13
      Caption = 'Data Inicial:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label4: TLabel
      Left = 232
      Top = 70
      Width = 63
      Height = 13
      Caption = 'Data Final:'
    end
    object lbl_grade: TLabel
      Left = 89
      Top = 44
      Width = 39
      Height = 13
      Caption = 'Grade:'
      Visible = False
    end
    object Label81: TLabel
      Left = 26
      Top = 158
      Width = 109
      Height = 13
      Caption = 'Local Mercadorias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object CODPRO: TEdit
      Left = 135
      Top = 18
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODPROExit
      OnKeyPress = CODPROKeyPress
    end
    object NOMPRO: TEdit
      Left = 397
      Top = 18
      Width = 333
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object MDT1: TMaskEdit
      Left = 135
      Top = 65
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 304
      Top = 67
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CB_ORC: TCheckBox
      Left = 23
      Top = 97
      Width = 216
      Height = 17
      Caption = 'Listar Tambem os Or'#231'amentos'
      TabOrder = 5
    end
    object GRADE: TEdit
      Left = 135
      Top = 42
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      OnExit = GRADEExit
    end
    object RG_TIPO: TRadioGroup
      Left = 400
      Top = 41
      Width = 124
      Height = 63
      Caption = 'Tipo do Extrato:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Normal'
        '&Consignado'
        '&Em Revenda'
        '&Terceiros')
      ParentCtl3D = False
      TabOrder = 6
      Visible = False
    end
    object SaidaVenda: TCheckBox
      Left = 24
      Top = 133
      Width = 236
      Height = 17
      Caption = 'SAIDAS POR VENDAS(ACUMULADA)'
      TabOrder = 7
    end
    object cb_cancelados: TCheckBox
      Left = 24
      Top = 115
      Width = 216
      Height = 17
      Caption = 'Listar Tambem Pedidos Cancelados'
      TabOrder = 8
    end
    object CB_FILIAL: TComboBox
      Left = 135
      Top = 154
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 9
      OnExit = CB_FILIALExit
    end
    object rg_serie: TRadioGroup
      Left = 394
      Top = 161
      Width = 273
      Height = 29
      Caption = 'Serie das NFS:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'S'#233'rie 1'
        'S'#233'rie 2'
        'Todos')
      TabOrder = 10
      Visible = False
    end
  end
  object Qr_Ven: TQuery
    OnCalcFields = Qr_VenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE'
      ',P2ORDEM,P2QTD_ATEN,P1CODUSR'
      ',P2LOTE,P2DTVCTO from'
      'CADP01, CADP02 where P1CODEMP is null and'
      'P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM'
      ''
      '')
    Left = 538
    Top = 116
    object Qr_VenP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_VenP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_VenP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_VenP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_VenP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Vennomecli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomecli'
      Size = 40
      Calculated = True
    end
    object Qr_VenP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Qr_VenP1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_VenP1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_VenP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_VenP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_VenP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
  end
  object Qr_Ent: TQuery
    OnCalcFields = Qr_EntCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PF1DATCONF,PF1CODFOR,PF1NUMNF,PF1DATANF,PF2LOTSEQ,PF2CHAV' +
        'E'
      ',PF2QTDP,PF2LOTE,PF2DATAV, PF1CODUSR from'
      'CADPF1, CADPF2 where PF1CODEMP is null and'
      'PF2CHAVE=PF1CHAVE'
      '')
    Left = 316
    Top = 120
    object Qr_EntPF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_EntPF2CHAVE: TFloatField
      FieldName = 'PF2CHAVE'
      Origin = 'SG_ASSOC.CADPF2.PF2CHAVE'
    end
    object Qr_EntPF2QTDP: TFloatField
      FieldName = 'PF2QTDP'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_EntPF1NUMNF: TFloatField
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_EntPF1DATANF: TDateTimeField
      FieldName = 'PF1DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Qr_Entnomefor: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomefor'
      Size = 40
      Calculated = True
    end
    object Qr_EntPF2LOTSEQ: TFloatField
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_EntPF1CODUSR: TFloatField
      FieldName = 'PF1CODUSR'
      Origin = 'SG_ASSOC.CADPF1.PF1CODUSR'
    end
    object Qr_EntPF1DATCONF: TDateTimeField
      FieldName = 'PF1DATCONF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATCONF'
    end
    object Qr_EntPF2LOTE: TStringField
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_EntPF2DATAV: TDateTimeField
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
  end
  object Qr_Dev: TQuery
    OnCalcFields = Qr_DevCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2CHAVE,P2LOTSEQ'
      ',P2ORDEM,P2QTD_ATEN,P1CODUSR,P2LOTE,P2DTVCTO from'
      'CADP01, CADP02 where P1CODEMP is null and'
      'P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM')
    Left = 424
    Top = 122
    object Qr_DevP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_DevP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_DevP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_DevP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_DevP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Devnomecli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomecli'
      Size = 40
      Calculated = True
    end
    object Qr_DevP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Qr_DevP1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_DevP1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_DevP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_DevP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_DevP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
  end
  object Qr_Devcli: TQuery
    OnCalcFields = Qr_DevcliCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1TIPO,P1DATAP,P1CODCLI,P1NUMNF,P2LOTSEQ,'
      'P2CHAVE,P2ORDEM,P2QTD_ATEN,P1CODUSR'
      ',P2LOTE,P2DTVCTO from'
      'CADP01, CADP02 where P1CODEMP is null and'
      'P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM'
      ''
      '')
    Left = 484
    Top = 116
    object Qr_DevcliP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Qr_DevcliP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_DevcliP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_DevcliP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_DevcliP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Devclinomecli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomecli'
      Size = 40
      Calculated = True
    end
    object Qr_DevcliP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Qr_DevcliP1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_DevcliP1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object Qr_DevcliP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_DevcliP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_DevcliP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
  end
  object Qr_Aju: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select AJSEQ,AJDATA,AJCODPRO,AJQTD,AJTIPOM,AJMOTIVO,AJCODUSR'
      '     ,AJLOTE,AJDATAV'
      '       from CADAJU where AJCODEMP is null'
      '')
    Left = 368
    Top = 120
    object Qr_AjuAJDATA: TDateTimeField
      FieldName = 'AJDATA'
      Origin = 'SG_ASSOC.CADAJU.AJDATA'
    end
    object Qr_AjuAJCODPRO: TFloatField
      FieldName = 'AJCODPRO'
      Origin = 'SG_ASSOC.CADAJU.AJCODPRO'
    end
    object Qr_AjuAJQTD: TFloatField
      FieldName = 'AJQTD'
      Origin = 'SG_ASSOC.CADAJU.AJQTD'
    end
    object Qr_AjuAJTIPOM: TFloatField
      FieldName = 'AJTIPOM'
      Origin = 'SG_ASSOC.CADAJU.AJTIPOM'
    end
    object Qr_AjuAJMOTIVO: TStringField
      FieldName = 'AJMOTIVO'
      Origin = 'SG_ASSOC.CADAJU.AJMOTIVO'
      Size = 60
    end
    object Qr_AjuAJSEQ: TFloatField
      FieldName = 'AJSEQ'
      Origin = 'SG_ASSOC.CADAJU.AJSEQ'
    end
    object Qr_AjuAJCODUSR: TFloatField
      FieldName = 'AJCODUSR'
      Origin = 'SG_ASSOC.CADAJU.AJCODUSR'
    end
    object Qr_AjuAJLOTE: TStringField
      FieldName = 'AJLOTE'
      Origin = 'SG_ASSOC.CADAJU.AJLOTE'
    end
    object Qr_AjuAJDATAV: TDateTimeField
      FieldName = 'AJDATAV'
      Origin = 'SG_ASSOC.CADAJU.AJDATAV'
    end
  end
  object Qr_EntOp: TQuery
    OnCalcFields = Qr_EntOpCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *'
      '       from CADOP01, CADOP02 where ((OP1_CODEMP=1))  and '
      '     OP2_CODPRO =0'
      ' and OP2_CODIGO = OP1_CODIGO'
      ' and OP2_CODEMP = OP1_CODEMP'
      ' and OP1_DATA>='#39'01/01/2001'#39
      ' and OP1_DATA<='#39'01/01/2001'#39
      ' Order by OP2_CODPRO,OP2_SEQ')
    Left = 592
    Top = 120
    object Qr_EntOpOP1_CODEMP: TFloatField
      FieldName = 'OP1_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODEMP'
    end
    object Qr_EntOpOP1_CODIGO: TFloatField
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Qr_EntOpOP1_NOME: TStringField
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Qr_EntOpOP1_DATA: TDateTimeField
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Qr_EntOpOP1_DATAPREV: TDateTimeField
      FieldName = 'OP1_DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Qr_EntOpOP1_LOTE: TStringField
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Qr_EntOpOP1_DATAVEN: TDateTimeField
      FieldName = 'OP1_DATAVEN'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAVEN'
    end
    object Qr_EntOpOP1_TMPPREV: TFloatField
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
    end
    object Qr_EntOpOP1_TMPUTIL: TFloatField
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
    end
    object Qr_EntOpOP1_TOTPREV: TFloatField
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
    end
    object Qr_EntOpOP1_TOTPROD: TFloatField
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
    end
    object Qr_EntOpOP1_STATUS: TFloatField
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Qr_EntOpOP1_OBS01: TStringField
      FieldName = 'OP1_OBS01'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS01'
      Size = 60
    end
    object Qr_EntOpOP1_OBS02: TStringField
      FieldName = 'OP1_OBS02'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS02'
      Size = 60
    end
    object Qr_EntOpOP1_OBS03: TStringField
      FieldName = 'OP1_OBS03'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS03'
      Size = 60
    end
    object Qr_EntOpOP1_OBS04: TStringField
      FieldName = 'OP1_OBS04'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS04'
      Size = 60
    end
    object Qr_EntOpOP1_OBS05: TStringField
      FieldName = 'OP1_OBS05'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS05'
      Size = 60
    end
    object Qr_EntOpOP1_OBS06: TStringField
      FieldName = 'OP1_OBS06'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS06'
      Size = 60
    end
    object Qr_EntOpOP1_OBS07: TStringField
      FieldName = 'OP1_OBS07'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS07'
      Size = 60
    end
    object Qr_EntOpOP1_OBS08: TStringField
      FieldName = 'OP1_OBS08'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS08'
      Size = 60
    end
    object Qr_EntOpOP1_OBS09: TStringField
      FieldName = 'OP1_OBS09'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS09'
      Size = 60
    end
    object Qr_EntOpOP1_OBS10: TStringField
      FieldName = 'OP1_OBS10'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS10'
      Size = 60
    end
    object Qr_EntOpOP1_LOTSEQ: TFloatField
      FieldName = 'OP1_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTSEQ'
    end
    object Qr_EntOpOP1_FABENV: TFloatField
      FieldName = 'OP1_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_FABENV'
    end
    object Qr_EntOpOP1_ORIGEM: TFloatField
      FieldName = 'OP1_ORIGEM'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_CODEMP: TFloatField
      FieldName = 'OP2_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_CODIGO: TFloatField
      FieldName = 'OP2_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_SEQ: TFloatField
      FieldName = 'OP2_SEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_CODPRO: TFloatField
      FieldName = 'OP2_CODPRO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_NUMERO: TStringField
      FieldName = 'OP2_NUMERO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_QTDPREV: TFloatField
      FieldName = 'OP2_QTDPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_QTDPROD: TFloatField
      FieldName = 'OP2_QTDPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_PU: TFloatField
      FieldName = 'OP2_PU'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_LOTSEQ: TFloatField
      FieldName = 'OP2_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FABENV: TFloatField
      FieldName = 'OP2_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_DTVCTO: TDateTimeField
      FieldName = 'OP2_DTVCTO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_CHORI: TFloatField
      FieldName = 'OP2_FAB_CHORI'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_CODIGO: TFloatField
      FieldName = 'OP2_FAB_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_LOTE: TStringField
      FieldName = 'OP2_FAB_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_VCTO: TDateTimeField
      FieldName = 'OP2_FAB_VCTO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_DTFAB: TDateTimeField
      FieldName = 'OP2_FAB_DTFAB'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_QTD: TFloatField
      FieldName = 'OP2_FAB_QTD'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpOP2_FAB_PU: TFloatField
      FieldName = 'OP2_FAB_PU'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_EntOpNOMEPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMEPRO'
      Size = 50
      Calculated = True
    end
  end
  object Qr_SaiOp: TQuery
    OnCalcFields = Qr_SaiOpCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select *'
      '       from CADOP01, CADOP03 where ((OP1_CODEMP=1))  and'
      '     OP3_CODMAT =0'
      ' and OP3_CODIGO = OP1_CODIGO'
      ' and OP3_CODEMP = OP1_CODEMP'
      ' and OP1_DATA>='#39'01/01/2001'#39
      ' and OP1_DATA<='#39'01/01/2001'#39
      ' Order by OP3_CODMAT,OP3_SEQ')
    Left = 648
    Top = 120
    object Qr_SaiOpOP1_CODEMP: TFloatField
      FieldName = 'OP1_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODEMP'
    end
    object Qr_SaiOpOP1_CODIGO: TFloatField
      FieldName = 'OP1_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_CODIGO'
    end
    object Qr_SaiOpOP1_NOME: TStringField
      FieldName = 'OP1_NOME'
      Origin = 'SG_ASSOC.CADOP01.OP1_NOME'
      Size = 60
    end
    object Qr_SaiOpOP1_DATA: TDateTimeField
      FieldName = 'OP1_DATA'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATA'
    end
    object Qr_SaiOpOP1_DATAPREV: TDateTimeField
      FieldName = 'OP1_DATAPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAPREV'
    end
    object Qr_SaiOpOP1_LOTE: TStringField
      FieldName = 'OP1_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTE'
    end
    object Qr_SaiOpOP1_DATAVEN: TDateTimeField
      FieldName = 'OP1_DATAVEN'
      Origin = 'SG_ASSOC.CADOP01.OP1_DATAVEN'
    end
    object Qr_SaiOpOP1_TMPPREV: TFloatField
      FieldName = 'OP1_TMPPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPPREV'
    end
    object Qr_SaiOpOP1_TMPUTIL: TFloatField
      FieldName = 'OP1_TMPUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_TMPUTIL'
    end
    object Qr_SaiOpOP1_TOTPREV: TFloatField
      FieldName = 'OP1_TOTPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPREV'
    end
    object Qr_SaiOpOP1_TOTPROD: TFloatField
      FieldName = 'OP1_TOTPROD'
      Origin = 'SG_ASSOC.CADOP01.OP1_TOTPROD'
    end
    object Qr_SaiOpOP1_STATUS: TFloatField
      FieldName = 'OP1_STATUS'
      Origin = 'SG_ASSOC.CADOP01.OP1_STATUS'
    end
    object Qr_SaiOpOP1_OBS01: TStringField
      FieldName = 'OP1_OBS01'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS01'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS02: TStringField
      FieldName = 'OP1_OBS02'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS02'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS03: TStringField
      FieldName = 'OP1_OBS03'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS03'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS04: TStringField
      FieldName = 'OP1_OBS04'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS04'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS05: TStringField
      FieldName = 'OP1_OBS05'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS05'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS06: TStringField
      FieldName = 'OP1_OBS06'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS06'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS07: TStringField
      FieldName = 'OP1_OBS07'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS07'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS08: TStringField
      FieldName = 'OP1_OBS08'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS08'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS09: TStringField
      FieldName = 'OP1_OBS09'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS09'
      Size = 60
    end
    object Qr_SaiOpOP1_OBS10: TStringField
      FieldName = 'OP1_OBS10'
      Origin = 'SG_ASSOC.CADOP01.OP1_OBS10'
      Size = 60
    end
    object Qr_SaiOpOP1_LOTSEQ: TFloatField
      FieldName = 'OP1_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_LOTSEQ'
    end
    object Qr_SaiOpOP1_FABENV: TFloatField
      FieldName = 'OP1_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_FABENV'
    end
    object Qr_SaiOpOP1_ORIGEM: TFloatField
      FieldName = 'OP1_ORIGEM'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_CODEMP: TFloatField
      FieldName = 'OP3_CODEMP'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_CODIGO: TFloatField
      FieldName = 'OP3_CODIGO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_SEQ: TFloatField
      FieldName = 'OP3_SEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_CODMAT: TFloatField
      FieldName = 'OP3_CODMAT'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_NUMERO: TStringField
      FieldName = 'OP3_NUMERO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_QTDPREV: TFloatField
      FieldName = 'OP3_QTDPREV'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_QTDUTIL: TFloatField
      FieldName = 'OP3_QTDUTIL'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_PU: TFloatField
      FieldName = 'OP3_PU'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_LOTSEQ: TFloatField
      FieldName = 'OP3_LOTSEQ'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_FABENV: TFloatField
      FieldName = 'OP3_FABENV'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_LOTE: TStringField
      FieldName = 'OP3_LOTE'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpOP3_DTVCTO: TDateTimeField
      FieldName = 'OP3_DTVCTO'
      Origin = 'SG_ASSOC.CADOP01.OP1_ORIGEM'
    end
    object Qr_SaiOpNOMEMAT: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMEMAT'
      Size = 50
      Calculated = True
    end
  end
  object qr_pedvda_excluido: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1TIPO,P1DATAP,P1NUMNF,P1CODCLI,P2LOTSEQ,P2CHAVE'
      ',P2ORDEM,P2QTD_ATEN,P1CODUSR'
      ',P2LOTE,P2DTVCTO from'
      'CADP01, CADP02 where P1CODEMP is null and'
      'P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM'
      ''
      '')
    Left = 674
    Top = 108
    object qr_pedvda_excluidoP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object qr_pedvda_excluidoP1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object qr_pedvda_excluidoP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object qr_pedvda_excluidoP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object qr_pedvda_excluidoP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object qr_pedvda_excluidonomecli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomecli'
      Size = 40
      Calculated = True
    end
    object qr_pedvda_excluidoP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object qr_pedvda_excluidoP1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object qr_pedvda_excluidoP1CODUSR: TFloatField
      FieldName = 'P1CODUSR'
      Origin = 'SG_ASSOC.CADP01.P1CODUSR'
    end
    object qr_pedvda_excluidoP2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object qr_pedvda_excluidoP2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object qr_pedvda_excluidoP2QTD_ATEN: TFloatField
      FieldName = 'P2QTD_ATEN'
      Origin = 'SG_ASSOC.CADP02.P2QTD_ATEN'
    end
  end
end
