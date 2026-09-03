object Frm_RelBaixaRec: TFrm_RelBaixaRec
  Left = 5
  Top = 13
  Width = 774
  Height = 557
  Caption = 'Relat'#243'rio de Formas de Pagamentos de Duplicatas a Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 766
    Height = 211
    Align = alBottom
    TabOrder = 0
    object Label5: TLabel
      Left = 189
      Top = 60
      Width = 54
      Height = 13
      Caption = 'NR Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 36
      Top = 56
      Width = 61
      Height = 13
      Caption = 'NR Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 51
      Top = 22
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
    object Label2: TLabel
      Left = 187
      Top = 5
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
    object Label1: TLabel
      Left = 30
      Top = 2
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 27
      Top = 77
      Width = 68
      Height = 13
      Caption = 'Lote Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 186
      Top = 77
      Width = 61
      Height = 13
      Caption = 'Lote Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_fpag: TLabel
      Left = 512
      Top = 3
      Width = 249
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Formas de Pagamentos a Serem Listadas'
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object bbImprimir: TBitBtn
      Left = 289
      Top = 165
      Width = 150
      Height = 40
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = bbImprimirClick
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
      Left = 607
      Top = 165
      Width = 150
      Height = 40
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
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
    object NRF: TEdit
      Left = 248
      Top = 56
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = NRFExit
    end
    object NRI: TEdit
      Left = 102
      Top = 56
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NRIExit
    end
    object CODCLI: TEdit
      Left = 102
      Top = 19
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object MDT2: TMaskEdit
      Left = 202
      Top = 1
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object MDT1: TMaskEdit
      Left = 102
      Top = 1
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object bbAplicar: TBitBtn
      Left = 21
      Top = 165
      Width = 150
      Height = 40
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
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
    object LOTEI: TEdit
      Left = 102
      Top = 74
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object LOTEF: TEdit
      Left = 248
      Top = 74
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
    end
    object CB_BASETIT: TCheckBox
      Left = 103
      Top = 94
      Width = 201
      Height = 17
      Caption = 'Informa'#231#245'es Basedas no Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = CB_BASETITClick
    end
    object OMITIR_CLI: TCheckBox
      Left = 103
      Top = 39
      Width = 57
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object lbx_codcli: TListBox
      Left = 181
      Top = 19
      Width = 305
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnKeyDown = lbx_codcliKeyDown
    end
    object RG_FPAG: TCheckListBox
      Left = 512
      Top = 16
      Width = 251
      Height = 147
      Cursor = crHandPoint
      Hint = 'Emitir Somente Os Selecionados'
      Color = 16777088
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 16
      Items.Strings = (
        'A1'
        'A2'
        'A3'
        'B1'
        'B2'
        'B3')
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = lbOwnerDrawFixed
      TabOrder = 13
      OnClick = RG_FPAGClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 766
    Height = 315
    Align = alClient
    DataSource = Src_DupRec
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FPNUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDESD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPTIPO'
        Width = 38
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
        FieldName = 'FPVALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPJUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDESC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDTBX'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDTEMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDATPAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPVALDUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDEVOL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALPAG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODVEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRCODBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOCOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTPARCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDUP_CODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPLOTE'
        Visible = True
      end>
  end
  object Tb_DupRec: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '
      'FPNUMERO,FPDESD,FPLOTE,'
      'FPTIPO,FPCODCLI,FPDUP_CODEMP,'
      'FPDTBX,FPDTEMIS,FPDATPAG,'
      'FPVALDUP,FPDEVOL,'
      'FPJUROS,FPVALOR,'
      'FPDESC,'
      'CRVALOR,CRVALPAG,CRCODVEN'
      ',CRCODBCO,CRDTVCTO'
      ',decode(CRTIPCOB,0,'#39'Simples'#39','#39'Descontado'#39') AS TIPOCOB'
      ',decode(BCBANCO,null,'#39'Carteira'#39',BCBANCO) as NOMBCO'
      ',decode(FPPARCIAL,1,'#39'Parcial'#39','#39'Total'#39') as TOTPARCIAL'
      ',CRAZAO'
      'from FPCRDUP,CADDAR,CADBCO,CADCLI'
      'where ((FPCODEMP=1) or (FPCODEMP=101))'
      'and FPDTBX>='#39'26/06/2007'#39' and'
      'FPDTBX<='#39'05/07/2007'#39
      'and CRCODEMP=FPDUP_CODEMP'
      'AND CRCODECF=FPCODECF'
      'AND CRNUMERO=FPNUMERO'
      'AND CRDESD=FPDESD'
      'AND CRDUP=FPTIPO'
      'AND CRDTEMIS=FPDTEMIS'
      'AND CCODCLI=CRCODCLI'
      'AND BCCODBCO(+)=CRCODBCO'
      '')
    Left = 464
    Top = 40
    object Tb_DupRecFPNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'FPNUMERO'
    end
    object Tb_DupRecFPDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'FPDESC'
    end
    object Tb_DupRecFPTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'FPTIPO'
    end
    object Tb_DupRecFPCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'FPCODCLI'
    end
    object Tb_DupRecFPDUP_CODEMP: TFloatField
      DisplayLabel = 'Codemp Dup'
      FieldName = 'FPDUP_CODEMP'
    end
    object Tb_DupRecFPDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'FPDTBX'
    end
    object Tb_DupRecFPDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'FPDTEMIS'
    end
    object Tb_DupRecFPDATPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'FPDATPAG'
    end
    object Tb_DupRecFPVALDUP: TFloatField
      DisplayLabel = 'Valor Duplic'
      FieldName = 'FPVALDUP'
    end
    object Tb_DupRecFPDEVOL: TFloatField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'FPDEVOL'
    end
    object Tb_DupRecFPJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'FPJUROS'
    end
    object Tb_DupRecFPVALOR: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'FPVALOR'
    end
    object Tb_DupRecCRVALOR: TFloatField
      DisplayLabel = 'Valor Duplic'
      FieldName = 'CRVALOR'
    end
    object Tb_DupRecCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
    end
    object Tb_DupRecCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'CRCODVEN'
    end
    object Tb_DupRecCRCODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'CRCODBCO'
    end
    object Tb_DupRecNOMBCO: TStringField
      DisplayLabel = 'Nome do Banco '
      FieldName = 'NOMBCO'
      Size = 40
    end
    object Tb_DupRecFPDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'FPDESD'
      Size = 2
    end
    object Tb_DupRecTOTPARCIAL: TStringField
      DisplayLabel = 'T'
      FieldName = 'TOTPARCIAL'
      Size = 7
    end
    object Tb_DupRecTIPOCOB: TStringField
      DisplayLabel = 'Tipo Cobran'#231'a'
      FieldName = 'TIPOCOB'
      Size = 10
    end
    object Tb_DupRecCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Tb_DupRecCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
    end
    object Tb_DupRecFPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'FPLOTE'
    end
  end
  object Src_DupRec: TDataSource
    DataSet = Tb_DupRec
    Left = 488
    Top = 32
  end
  object Qr_Lote: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPCR.FPLOTE,FPCR.FPLOTSEQ,'
      '          max(FPCR.FPDATA) AS DATA,'
      '          max(FPCR.FPCODCLI) AS CODCLI'
      ' from FPCR, FPCRDUP'
      ' where FPCR.FPCODEMP is null'
      ' and FPCRDUP.FPLOTSEQ=FPCR.FPLOTSEQ'
      ' and FPCRDUP.FPLOTE=FPCR.FPLOTE'
      ' and FPCRDUP.FPCODEMP=FPCR.FPCODEMP'
      'group by FPCR.FPLOTE,FPCR.FPLOTSEQ')
    Left = 24
    Top = 56
    object Qr_LoteFPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'FPLOTE'
    end
    object Qr_LoteFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_LoteDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_LoteCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CODCLI'
      Origin = 'SG_ASSOC.FPCR.FPCODCLI'
    end
    object Qr_Loterazao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razao'
      Size = 40
      Calculated = True
    end
  end
  object Tb_Temp: TTable
    DatabaseName = 'C:\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'TP_OBS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TP_NUMERO'
        DataType = ftFloat
      end
      item
        Name = 'TP_DESD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TP_TIPO'
        DataType = ftFloat
      end
      item
        Name = 'TP_DTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'TP_DATPAG'
        DataType = ftDateTime
      end
      item
        Name = 'TP_CODCLI'
        DataType = ftFloat
      end
      item
        Name = 'TP_NOMCLI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TP_VALDUP'
        DataType = ftFloat
      end
      item
        Name = 'TP_VLRST'
        DataType = ftFloat
      end
      item
        Name = 'TP_VLRIPI'
        DataType = ftFloat
      end
      item
        Name = 'TP_FPDESC'
        DataType = ftFloat
      end
      item
        Name = 'TP_FPJUROS'
        DataType = ftFloat
      end
      item
        Name = 'TP_FPDEVOL'
        DataType = ftFloat
      end
      item
        Name = 'TP_FPVLRST'
        DataType = ftFloat
      end
      item
        Name = 'TP_FPVALOR'
        DataType = ftFloat
      end
      item
        Name = 'TP_PGFORMA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TP_PGDATA'
        DataType = ftDateTime
      end
      item
        Name = 'TP_PGNATUREZA'
        DataType = ftFloat
      end
      item
        Name = 'TP_PGNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'TP_PGVALOR'
        DataType = ftFloat
      end
      item
        Name = 'TP_NUMLOT'
        DataType = ftFloat
      end
      item
        Name = 'TP_IFEM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TP_TIPOCOB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TP_CODEMP_DUP'
        DataType = ftFloat
      end
      item
        Name = 'TP_DTBX'
        DataType = ftDateTime
      end
      item
        Name = 'TP_DTEMIS'
        DataType = ftDateTime
      end
      item
        Name = 'TP_FPPARCIAL'
        DataType = ftFloat
      end
      item
        Name = 'TP_CODVEN'
        DataType = ftFloat
      end
      item
        Name = 'TP_TOTPARC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TP_CODBCO'
        DataType = ftFloat
      end
      item
        Name = 'TP_DUP'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'TEM00185.DB'
    Left = 192
    Top = 136
    object Tb_TempTP_OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'TP_OBS'
      Size = 1
    end
    object Tb_TempTP_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'TP_NUMERO'
    end
    object Tb_TempTP_DESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'TP_DESD'
      Size = 2
    end
    object Tb_TempTP_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'TP_DTVCTO'
    end
    object Tb_TempTP_DATPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'TP_DATPAG'
    end
    object Tb_TempTP_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'TP_CODCLI'
    end
    object Tb_TempTP_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'TP_NOMCLI'
      Size = 40
    end
    object Tb_TempTP_VALDUP: TFloatField
      FieldName = 'TP_VALDUP'
    end
    object Tb_TempTP_VLRST: TFloatField
      FieldName = 'TP_VLRST'
    end
    object Tb_TempTP_VLRIPI: TFloatField
      FieldName = 'TP_VLRIPI'
    end
    object Tb_TempTP_FPDESC: TFloatField
      FieldName = 'TP_FPDESC'
    end
    object Tb_TempTP_FPJUROS: TFloatField
      FieldName = 'TP_FPJUROS'
    end
    object Tb_TempTP_FPDEVOL: TFloatField
      FieldName = 'TP_FPDEVOL'
    end
    object Tb_TempTP_FPVLRST: TFloatField
      FieldName = 'TP_FPVLRST'
    end
    object Tb_TempTP_FPVALOR: TFloatField
      FieldName = 'TP_FPVALOR'
    end
    object Tb_TempTP_PGFORMA: TStringField
      DisplayLabel = 'Forma Pgto.'
      FieldName = 'TP_PGFORMA'
      Size = 30
    end
    object Tb_TempTP_PGDATA: TDateTimeField
      DisplayLabel = 'Data Pgto'
      FieldName = 'TP_PGDATA'
    end
    object Tb_TempTP_PGNATUREZA: TFloatField
      DisplayLabel = 'Natureza'
      FieldName = 'TP_PGNATUREZA'
    end
    object Tb_TempTP_PGNUMERO: TFloatField
      DisplayLabel = 'Num.Doc.'
      FieldName = 'TP_PGNUMERO'
    end
    object Tb_TempTP_PGVALOR: TFloatField
      DisplayLabel = 'Valor Doc.'
      FieldName = 'TP_PGVALOR'
    end
    object Tb_TempTP_NUMLOT: TFloatField
      DisplayLabel = 'Num.Lote'
      FieldName = 'TP_NUMLOT'
    end
    object Tb_TempTP_IFEM: TStringField
      DisplayLabel = 'ifem'
      FieldName = 'TP_IFEM'
      Size = 1
    end
    object Tb_TempTP_TIPOCOB: TStringField
      FieldName = 'TP_TIPOCOB'
    end
    object Tb_TempTP_CODEMP_DUP: TFloatField
      FieldName = 'TP_CODEMP_DUP'
    end
    object Tb_TempTP_DTBX: TDateTimeField
      FieldName = 'TP_DTBX'
    end
    object Tb_TempTP_DTEMIS: TDateTimeField
      FieldName = 'TP_DTEMIS'
    end
    object Tb_TempTP_FPPARCIAL: TFloatField
      FieldName = 'TP_FPPARCIAL'
    end
    object Tb_TempTP_CODVEN: TFloatField
      FieldName = 'TP_CODVEN'
    end
    object Tb_TempTP_TOTPARC: TStringField
      FieldName = 'TP_TOTPARC'
    end
    object Tb_TempTP_TIPO: TFloatField
      FieldName = 'TP_TIPO'
    end
    object Tb_TempTP_CODBCO: TFloatField
      FieldName = 'TP_CODBCO'
    end
    object Tb_TempTP_DUP: TFloatField
      FieldName = 'TP_DUP'
    end
  end
  object Qr_Tit: TQuery
    OnCalcFields = Qr_TitCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FPCRDUP where FPCODEMP is null'
      '             and FPLOTE is null')
    Left = 528
    Top = 80
    object Qr_TitFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_TitFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object Qr_TitFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_TitFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_TitFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_TitFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_TitFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
    object Qr_TitFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_TitFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object Qr_TitFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object Qr_TitFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_TitFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_TitFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_Titnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Qr_TitFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTSEQ'
    end
    object Qr_TitFPCODECF: TFloatField
      FieldName = 'FPCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODECF'
    end
    object Qr_TitFPNR: TFloatField
      FieldName = 'FPNR'
      Origin = 'SG_ASSOC.FPCRDUP.FPNR'
    end
    object Qr_TitFPDUP_CODEMP: TFloatField
      FieldName = 'FPDUP_CODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPDUP_CODEMP'
    end
    object Qr_TitFPCODVEN: TFloatField
      FieldName = 'FPCODVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODVEN'
    end
    object Qr_TitFPDTBX: TDateTimeField
      FieldName = 'FPDTBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTBX'
    end
    object Qr_TitFPLEMAT: TFloatField
      FieldName = 'FPLEMAT'
      Origin = 'SG_ASSOC.FPCRDUP.FPLEMAT'
    end
    object Qr_TitFPVLRST: TFloatField
      FieldName = 'FPVLRST'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRST'
    end
    object Qr_TitFPVLRIPI: TFloatField
      FieldName = 'FPVLRIPI'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRIPI'
    end
    object Qr_TitFPVALDUP: TFloatField
      FieldName = 'FPVALDUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALDUP'
    end
    object Qr_TitFPDEVOL: TFloatField
      FieldName = 'FPDEVOL'
      Origin = 'SG_ASSOC.FPCRDUP.FPDEVOL'
    end
    object Qr_TitFPDATPAG: TDateTimeField
      FieldName = 'FPDATPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPDATPAG'
    end
    object Qr_TitFPDTVCTO: TDateTimeField
      FieldName = 'FPDTVCTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTVCTO'
    end
    object Qr_TitFPPARCIAL: TFloatField
      FieldName = 'FPPARCIAL'
      Origin = 'SG_ASSOC.FPCRDUP.FPPARCIAL'
    end
  end
  object Qr_FP: TQuery
    OnCalcFields = Qr_FPCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From FPCR where FPCODEMP is null'
      'and FPLOTE is null'
      '')
    Left = 316
    Top = 12
    object Qr_FPforma: TStringField
      FieldKind = fkCalculated
      FieldName = 'forma'
      Size = 10
      Calculated = True
    end
    object Qr_FPFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCR.FPCODEMP'
    end
    object Qr_FPFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCR.FPSEQ'
    end
    object Qr_FPFPDATA: TDateTimeField
      FieldName = 'FPDATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_FPFPFORMA: TFloatField
      FieldName = 'FPFORMA'
      Origin = 'SG_ASSOC.FPCR.FPFORMA'
    end
    object Qr_FPFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCR.FPNUMERO'
    end
    object Qr_FPFPBANCO: TFloatField
      FieldName = 'FPBANCO'
      Origin = 'SG_ASSOC.FPCR.FPBANCO'
    end
    object Qr_FPFPSERIE: TStringField
      FieldName = 'FPSERIE'
      Origin = 'SG_ASSOC.FPCR.FPSERIE'
    end
    object Qr_FPFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCR.FPVALOR'
    end
    object Qr_FPFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCR.FPLOTE'
    end
    object Qr_FPFPCC: TStringField
      FieldName = 'FPCC'
      Origin = 'SG_ASSOC.FPCR.FPCC'
    end
    object Qr_FPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCR.FPTIPO'
    end
    object Qr_FPFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCR.FPCAIXA'
    end
    object Qr_FPFPCODLDR: TFloatField
      FieldName = 'FPCODLDR'
      Origin = 'SG_ASSOC.FPCR.FPCODLDR'
    end
    object Qr_FPvinculo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vinculo'
      Calculated = True
    end
    object Qr_FPFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_FPFPLOTSEQ_FC: TFloatField
      FieldName = 'FPLOTSEQ_FC'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ_FC'
    end
    object Qr_FPFPLEMAT: TFloatField
      FieldName = 'FPLEMAT'
      Origin = 'SG_ASSOC.FPCR.FPLEMAT'
    end
    object Qr_FPFPVINCULO: TFloatField
      FieldName = 'FPVINCULO'
      Origin = 'SG_ASSOC.FPCR.FPVINCULO'
    end
    object Qr_FPFPNATUREZA: TFloatField
      FieldName = 'FPNATUREZA'
      Origin = 'SG_ASSOC.FPCR.FPNATUREZA'
    end
  end
end
