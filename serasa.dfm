object frm_serasa: Tfrm_serasa
  Left = 191
  Top = 112
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gera Arquivos Serasa'
  ClientHeight = 333
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 576
    Height = 120
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Title.Caption = 'Desd.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTEMIS'
        Title.Caption = 'Emitido'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor(R$)'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTPAG'
        Title.Caption = 'Pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTVCTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 121
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 236
      Top = 40
      Width = 13
      Height = 24
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 40
      Width = 41
      Height = 24
      Caption = 'DE..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl_local: TLabel
      Left = 144
      Top = 102
      Width = 166
      Height = 13
      Caption = 'SALVO EM C:\SGE\SERASA.TXT'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object bb_busca: TBitBtn
      Left = 112
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Procurar'
      TabOrder = 0
      OnClick = bb_buscaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dtini: TDateEdit
      Left = 96
      Top = 40
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object dtfim: TDateEdit
      Left = 272
      Top = 40
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object bb_salvar: TBitBtn
      Left = 306
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 3
      OnClick = bb_salvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object bb_gerar: TBitBtn
      Left = 208
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 4
      OnClick = bb_gerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object rg_TIPO: TRadioGroup
      Left = 427
      Top = -1
      Width = 145
      Height = 92
      ItemIndex = 0
      Items.Strings = (
        'Remessa Normal'
        'Remessa Corre'#231#227'o'
        'Remessa Concilia'#231#227'o')
      TabOrder = 5
    end
  end
  object mm_serasa: TMemo
    Left = 0
    Top = 241
    Width = 576
    Height = 73
    Align = alTop
    TabOrder = 2
  end
  object cli: TMemo
    Left = 8
    Top = 344
    Width = 554
    Height = 89
    Lines.Strings = (
      'cli')
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 314
    Width = 576
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object Database1: TDatabase
    AliasName = 'SGE'
    DatabaseName = 'SGE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=SGE'
      'USER NAME=SGE'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=DEZENOVE'
      '')
    SessionName = 'Default'
    Left = 296
  end
  object qr_caddar: TQuery
    OnCalcFields = qr_caddarCalcFields
    DatabaseName = 'SGE'
    SQL.Strings = (
      'SELECT * FROM caddar'
      'where crcodemp=0')
    Left = 392
    object qr_caddarCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SGE.CADDAR.CRCODEMP'
    end
    object qr_caddarCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SGE.CADDAR.CRNUMERO'
    end
    object qr_caddarCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SGE.CADDAR.CRDESD'
      Size = 2
    end
    object qr_caddarCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SGE.CADDAR.CRDUP'
    end
    object qr_caddarCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SGE.CADDAR.CRCODCLI'
    end
    object qr_caddarCRNUMCUP: TFloatField
      FieldName = 'CRNUMCUP'
      Origin = 'SGE.CADDAR.CRNUMCUP'
    end
    object qr_caddarCRDATCUP: TDateTimeField
      FieldName = 'CRDATCUP'
      Origin = 'SGE.CADDAR.CRDATCUP'
    end
    object qr_caddarCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SGE.CADDAR.CRVALOR'
    end
    object qr_caddarCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SGE.CADDAR.CRDTEMIS'
    end
    object qr_caddarCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SGE.CADDAR.CRDTVCTO'
    end
    object qr_caddarCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
      Origin = 'SGE.CADDAR.CRDTPAG'
    end
    object qr_caddarCRDTBX: TDateTimeField
      FieldName = 'CRDTBX'
      Origin = 'SGE.CADDAR.CRDTBX'
    end
    object qr_caddarCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SGE.CADDAR.CRNPED'
    end
    object qr_caddarCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SGE.CADDAR.CRORDEM'
    end
    object qr_caddarCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SGE.CADDAR.CRVALPAG'
    end
    object qr_caddarCRCODVEN: TFloatField
      FieldName = 'CRCODVEN'
      Origin = 'SGE.CADDAR.CRCODVEN'
    end
    object qr_caddarCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SGE.CADDAR.CRCODTLV'
    end
    object qr_caddarCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SGE.CADDAR.CRSTATUS'
    end
    object qr_caddarCROBS: TStringField
      FieldName = 'CROBS'
      Origin = 'SGE.CADDAR.CROBS'
      Size = 30
    end
    object qr_caddarCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SGE.CADDAR.CRDESC'
    end
    object qr_caddarCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
      Origin = 'SGE.CADDAR.CRDEVOL'
    end
    object qr_caddarCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SGE.CADDAR.CRJUROS'
    end
    object qr_caddarCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SGE.CADDAR.CRCODBCO'
    end
    object qr_caddarCRLOTE: TFloatField
      FieldName = 'CRLOTE'
      Origin = 'SGE.CADDAR.CRLOTE'
    end
    object qr_caddarCRICMSR: TFloatField
      FieldName = 'CRICMSR'
      Origin = 'SGE.CADDAR.CRICMSR'
    end
    object qr_caddarCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SGE.CADDAR.CRDESCF'
    end
    object qr_caddarCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SGE.CADDAR.CRDTDESCF'
    end
    object qr_caddarCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SGE.CADDAR.CRJURD'
    end
    object qr_caddarCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SGE.CADDAR.CRDESCD'
    end
    object qr_caddarCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SGE.CADDAR.CRMULTA'
    end
    object qr_caddarCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SGE.CADDAR.CRQTDDM'
    end
    object qr_caddarCREMIDUP: TFloatField
      FieldName = 'CREMIDUP'
      Origin = 'SGE.CADDAR.CREMIDUP'
    end
    object qr_caddarCREMIBLQ: TFloatField
      FieldName = 'CREMIBLQ'
      Origin = 'SGE.CADDAR.CREMIBLQ'
    end
    object qr_caddarCRVALFRE: TFloatField
      FieldName = 'CRVALFRE'
      Origin = 'SGE.CADDAR.CRVALFRE'
    end
    object qr_caddarCRNOSNUM: TStringField
      FieldName = 'CRNOSNUM'
      Origin = 'SGE.CADDAR.CRNOSNUM'
      Size = 30
    end
    object qr_caddarCRTIPCOB: TFloatField
      FieldName = 'CRTIPCOB'
      Origin = 'SGE.CADDAR.CRTIPCOB'
    end
    object qr_caddarCRDTALT: TDateTimeField
      FieldName = 'CRDTALT'
      Origin = 'SGE.CADDAR.CRDTALT'
    end
    object qr_caddarCRUSRALT: TFloatField
      FieldName = 'CRUSRALT'
      Origin = 'SGE.CADDAR.CRUSRALT'
    end
    object qr_caddarCRUSRBX: TFloatField
      FieldName = 'CRUSRBX'
      Origin = 'SGE.CADDAR.CRUSRBX'
    end
    object qr_caddarCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SGE.CADDAR.CRCOMVEN'
    end
    object qr_caddarCRCOMTEL: TFloatField
      FieldName = 'CRCOMTEL'
      Origin = 'SGE.CADDAR.CRCOMTEL'
    end
    object qr_caddarCRCOMSUP: TFloatField
      FieldName = 'CRCOMSUP'
      Origin = 'SGE.CADDAR.CRCOMSUP'
    end
    object qr_caddarCRSEMCOM: TFloatField
      FieldName = 'CRSEMCOM'
      Origin = 'SGE.CADDAR.CRSEMCOM'
    end
    object qr_caddarCRCODLDR: TFloatField
      FieldName = 'CRCODLDR'
      Origin = 'SGE.CADDAR.CRCODLDR'
    end
    object qr_caddarCRLOTCV: TFloatField
      FieldName = 'CRLOTCV'
      Origin = 'SGE.CADDAR.CRLOTCV'
    end
    object qr_caddarCRLOTCS: TFloatField
      FieldName = 'CRLOTCS'
      Origin = 'SGE.CADDAR.CRLOTCS'
    end
    object qr_caddarCRCODORI: TFloatField
      FieldName = 'CRCODORI'
      Origin = 'SGE.CADDAR.CRCODORI'
    end
    object qr_caddarCRLOTCT: TFloatField
      FieldName = 'CRLOTCT'
      Origin = 'SGE.CADDAR.CRLOTCT'
    end
    object qr_caddarCRCODUSR: TFloatField
      FieldName = 'CRCODUSR'
      Origin = 'SGE.CADDAR.CRCODUSR'
    end
    object qr_caddarCRHRALT: TStringField
      FieldName = 'CRHRALT'
      Origin = 'SGE.CADDAR.CRHRALT'
      Size = 10
    end
    object qr_caddarCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SGE.CADDAR.CRNFACUM'
      Size = 100
    end
    object qr_caddarCRTOTNF: TFloatField
      FieldName = 'CRTOTNF'
      Origin = 'SGE.CADDAR.CRTOTNF'
    end
    object qr_caddarCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CP'
    end
    object qr_caddarCRCODV02: TFloatField
      FieldName = 'CRCODV02'
      Origin = 'SGE.CADDAR.CRCODV02'
    end
    object qr_caddarCRCODV03: TFloatField
      FieldName = 'CRCODV03'
      Origin = 'SGE.CADDAR.CRCODV03'
    end
    object qr_caddarCRCODCV: TFloatField
      FieldName = 'CRCODCV'
      Origin = 'SGE.CADDAR.CRCODCV'
    end
    object qr_caddarCRCOMV02: TFloatField
      FieldName = 'CRCOMV02'
      Origin = 'SGE.CADDAR.CRCOMV02'
    end
    object qr_caddarCRCOMV03: TFloatField
      FieldName = 'CRCOMV03'
      Origin = 'SGE.CADDAR.CRCOMV03'
    end
    object qr_caddarCRLOTCV02: TFloatField
      FieldName = 'CRLOTCV02'
      Origin = 'SGE.CADDAR.CRLOTCV02'
    end
    object qr_caddarCRLOTCV03: TFloatField
      FieldName = 'CRLOTCV03'
      Origin = 'SGE.CADDAR.CRLOTCV03'
    end
    object qr_caddarCRCODECF: TFloatField
      FieldName = 'CRCODECF'
      Origin = 'SGE.CADDAR.CRCODECF'
    end
    object qr_caddarCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SGE.CADDAR.CRLOTSEQ_LB'
    end
    object qr_caddarCRLOTSEQ_FC: TFloatField
      FieldName = 'CRLOTSEQ_FC'
      Origin = 'SGE.CADDAR.CRLOTSEQ_FC'
    end
    object qr_caddarCRLOTSEQ_CV: TFloatField
      FieldName = 'CRLOTSEQ_CV'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CV'
    end
    object qr_caddarCRLOTSEQ_CV02: TFloatField
      FieldName = 'CRLOTSEQ_CV02'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CV02'
    end
    object qr_caddarCRLOTSEQ_CV03: TFloatField
      FieldName = 'CRLOTSEQ_CV03'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CV03'
    end
    object qr_caddarCRLOTSEQ_CS: TFloatField
      FieldName = 'CRLOTSEQ_CS'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CS'
    end
    object qr_caddarCRLOTSEQ_CT: TFloatField
      FieldName = 'CRLOTSEQ_CT'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CT'
    end
    object qr_caddarCRTOTDI01: TFloatField
      FieldName = 'CRTOTDI01'
      Origin = 'SGE.CADDAR.CRTOTDI01'
    end
    object qr_caddarCRTOTDI02: TFloatField
      FieldName = 'CRTOTDI02'
      Origin = 'SGE.CADDAR.CRTOTDI02'
    end
    object qr_caddarCRTOTDI03: TFloatField
      FieldName = 'CRTOTDI03'
      Origin = 'SGE.CADDAR.CRTOTDI03'
    end
    object qr_caddarCRTOTDIVL: TFloatField
      FieldName = 'CRTOTDIVL'
      Origin = 'SGE.CADDAR.CRTOTDIVL'
    end
    object qr_caddarCRVALDES01: TFloatField
      FieldName = 'CRVALDES01'
      Origin = 'SGE.CADDAR.CRVALDES01'
    end
    object qr_caddarCRVALDES02: TFloatField
      FieldName = 'CRVALDES02'
      Origin = 'SGE.CADDAR.CRVALDES02'
    end
    object qr_caddarCRVLRDES: TFloatField
      FieldName = 'CRVLRDES'
      Origin = 'SGE.CADDAR.CRVLRDES'
    end
    object qr_caddarCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SGE.CADDAR.CRTARBAN'
    end
    object qr_caddarCRDNOSNUM: TStringField
      FieldName = 'CRDNOSNUM'
      Origin = 'SGE.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object qr_caddarCRACEITE: TStringField
      FieldName = 'CRACEITE'
      Origin = 'SGE.CADDAR.CRACEITE'
      Size = 1
    end
    object qr_caddarCRESPECIE: TStringField
      FieldName = 'CRESPECIE'
      Origin = 'SGE.CADDAR.CRESPECIE'
      Size = 2
    end
    object qr_caddarCRCODBAR: TStringField
      FieldName = 'CRCODBAR'
      Origin = 'SGE.CADDAR.CRCODBAR'
      Size = 60
    end
    object qr_caddarCRCODDIG: TStringField
      FieldName = 'CRCODDIG'
      Origin = 'SGE.CADDAR.CRCODDIG'
      Size = 60
    end
    object qr_caddarCRLEMAT: TFloatField
      FieldName = 'CRLEMAT'
      Origin = 'SGE.CADDAR.CRLEMAT'
    end
    object qr_caddarCRCODASSE: TFloatField
      FieldName = 'CRCODASSE'
      Origin = 'SGE.CADDAR.CRCODASSE'
    end
    object qr_caddarCRCOMASSE: TFloatField
      FieldName = 'CRCOMASSE'
      Origin = 'SGE.CADDAR.CRCOMASSE'
    end
    object qr_caddarCRLOTSEQ_CASSE: TFloatField
      FieldName = 'CRLOTSEQ_CASSE'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CASSE'
    end
    object qr_caddarCRLOTCASSE: TFloatField
      FieldName = 'CRLOTCASSE'
      Origin = 'SGE.CADDAR.CRLOTCASSE'
    end
    object qr_caddarCRINST01: TStringField
      FieldName = 'CRINST01'
      Origin = 'SGE.CADDAR.CRINST01'
      Size = 60
    end
    object qr_caddarCRINST02: TStringField
      FieldName = 'CRINST02'
      Origin = 'SGE.CADDAR.CRINST02'
      Size = 60
    end
    object qr_caddarCRINST03: TStringField
      FieldName = 'CRINST03'
      Origin = 'SGE.CADDAR.CRINST03'
      Size = 60
    end
    object qr_caddarCRINST04: TStringField
      FieldName = 'CRINST04'
      Origin = 'SGE.CADDAR.CRINST04'
      Size = 60
    end
    object qr_caddarCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SGE.CADDAR.CRQTDPARC'
    end
    object qr_caddarCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SGE.CADDAR.CRNUMPARC'
    end
    object qr_caddarCRVALSEG: TFloatField
      FieldName = 'CRVALSEG'
      Origin = 'SGE.CADDAR.CRVALSEG'
    end
    object qr_caddarCRCODV04: TFloatField
      FieldName = 'CRCODV04'
      Origin = 'SGE.CADDAR.CRCODV04'
    end
    object qr_caddarCRNR: TFloatField
      FieldName = 'CRNR'
      Origin = 'SGE.CADDAR.CRNR'
    end
    object qr_caddarCRCUSBCO: TFloatField
      FieldName = 'CRCUSBCO'
      Origin = 'SGE.CADDAR.CRCUSBCO'
    end
    object qr_caddarCRTBCOCOB: TFloatField
      FieldName = 'CRTBCOCOB'
      Origin = 'SGE.CADDAR.CRTBCOCOB'
    end
    object qr_caddarCRCOMV04: TFloatField
      FieldName = 'CRCOMV04'
      Origin = 'SGE.CADDAR.CRCOMV04'
    end
    object qr_caddarCRLOTSEQ_CV04: TFloatField
      FieldName = 'CRLOTSEQ_CV04'
      Origin = 'SGE.CADDAR.CRLOTSEQ_CV04'
    end
    object qr_caddarCRLOTCV04: TFloatField
      FieldName = 'CRLOTCV04'
      Origin = 'SGE.CADDAR.CRLOTCV04'
    end
    object qr_caddarCRTOTCGRU: TFloatField
      FieldName = 'CRTOTCGRU'
      Origin = 'SGE.CADDAR.CRTOTCGRU'
    end
    object qr_caddarCRTOTSGRU: TFloatField
      FieldName = 'CRTOTSGRU'
      Origin = 'SGE.CADDAR.CRTOTSGRU'
    end
    object qr_caddarCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SGE.CADDAR.CRTOTIPI'
    end
    object qr_caddarCREMIBOR: TFloatField
      FieldName = 'CREMIBOR'
      Origin = 'SGE.CADDAR.CREMIBOR'
    end
    object qr_caddarCRCHD_BANCO: TFloatField
      FieldName = 'CRCHD_BANCO'
      Origin = 'SGE.CADDAR.CRCHD_BANCO'
    end
    object qr_caddarCRCHD_AGENCIA: TStringField
      FieldName = 'CRCHD_AGENCIA'
      Origin = 'SGE.CADDAR.CRCHD_AGENCIA'
      Size = 5
    end
    object qr_caddarCRCHD_CC: TStringField
      FieldName = 'CRCHD_CC'
      Origin = 'SGE.CADDAR.CRCHD_CC'
      Size = 15
    end
    object qr_caddarCRCHD_NUMERO: TFloatField
      FieldName = 'CRCHD_NUMERO'
      Origin = 'SGE.CADDAR.CRCHD_NUMERO'
    end
    object qr_caddarCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SGE.CADDAR.CRTCB'
    end
    object qr_caddarCRCAUCAO: TFloatField
      FieldName = 'CRCAUCAO'
      Origin = 'SGE.CADDAR.CRCAUCAO'
    end
    object qr_caddarCRBCOCAU: TFloatField
      FieldName = 'CRBCOCAU'
      Origin = 'SGE.CADDAR.CRBCOCAU'
    end
    object qr_caddarCRDTCAU: TDateTimeField
      FieldName = 'CRDTCAU'
      Origin = 'SGE.CADDAR.CRDTCAU'
    end
    object qr_caddarCRSPC_DTPEN: TDateTimeField
      FieldName = 'CRSPC_DTPEN'
      Origin = 'SGE.CADDAR.CRSPC_DTPEN'
    end
    object qr_caddarCRSPC_DTNEG: TDateTimeField
      FieldName = 'CRSPC_DTNEG'
      Origin = 'SGE.CADDAR.CRSPC_DTNEG'
    end
    object qr_caddarCRSERASA_DTNEG: TDateTimeField
      FieldName = 'CRSERASA_DTNEG'
      Origin = 'SGE.CADDAR.CRSERASA_DTNEG'
    end
    object qr_caddarCRCODCTA: TFloatField
      FieldName = 'CRCODCTA'
      Origin = 'SGE.CADDAR.CRCODCTA'
    end
    object qr_caddarCRNOMCTA: TStringField
      FieldName = 'CRNOMCTA'
      Origin = 'SGE.CADDAR.CRNOMCTA'
      Size = 40
    end
    object qr_caddarCRCODCC: TStringField
      FieldName = 'CRCODCC'
      Origin = 'SGE.CADDAR.CRCODCC'
      Size = 5
    end
    object qr_caddarCRNOMCC: TStringField
      FieldName = 'CRNOMCC'
      Origin = 'SGE.CADDAR.CRNOMCC'
      Size = 40
    end
    object qr_caddarCRNATDC: TStringField
      FieldName = 'CRNATDC'
      Origin = 'SGE.CADDAR.CRNATDC'
      Size = 1
    end
    object qr_caddarCRCODDEP: TStringField
      FieldName = 'CRCODDEP'
      Origin = 'SGE.CADDAR.CRCODDEP'
      Size = 5
    end
    object qr_caddarCRNOMDEP: TStringField
      FieldName = 'CRNOMDEP'
      Origin = 'SGE.CADDAR.CRNOMDEP'
      Size = 40
    end
    object qr_caddarCRDESCMV: TStringField
      FieldName = 'CRDESCMV'
      Origin = 'SGE.CADDAR.CRDESCMV'
      Size = 60
    end
    object qr_caddarCRSEQ: TFloatField
      FieldName = 'CRSEQ'
      Origin = 'SGE.CADDAR.CRSEQ'
    end
    object qr_caddarCRCOMIS_EXTRA: TFloatField
      FieldName = 'CRCOMIS_EXTRA'
      Origin = 'SGE.CADDAR.CRCOMIS_EXTRA'
    end
    object qr_caddarCRPFPGTO: TFloatField
      FieldName = 'CRPFPGTO'
      Origin = 'SGE.CADDAR.CRPFPGTO'
    end
    object qr_caddarCRTABPV: TStringField
      FieldName = 'CRTABPV'
      Origin = 'SGE.CADDAR.CRTABPV'
      Size = 2
    end
    object qr_caddarCRCODPV: TFloatField
      FieldName = 'CRCODPV'
      Origin = 'SGE.CADDAR.CRCODPV'
    end
    object qr_caddarCRVINC02: TFloatField
      FieldName = 'CRVINC02'
      Origin = 'SGE.CADDAR.CRVINC02'
    end
    object qr_caddarCRCODFPGTO: TFloatField
      FieldName = 'CRCODFPGTO'
      Origin = 'SGE.CADDAR.CRCODFPGTO'
    end
    object qr_caddarCRNOMFPGTO: TStringField
      FieldName = 'CRNOMFPGTO'
      Origin = 'SGE.CADDAR.CRNOMFPGTO'
      Size = 40
    end
    object qr_caddarCRFIN_CODFIN: TFloatField
      FieldName = 'CRFIN_CODFIN'
      Origin = 'SGE.CADDAR.CRFIN_CODFIN'
    end
    object qr_caddarCRLANCFIN: TFloatField
      FieldName = 'CRLANCFIN'
      Origin = 'SGE.CADDAR.CRLANCFIN'
    end
    object qr_caddarCRRECFRENTE: TFloatField
      FieldName = 'CRRECFRENTE'
      Origin = 'SGE.CADDAR.CRRECFRENTE'
    end
    object qr_caddarCRDATPED: TDateTimeField
      FieldName = 'CRDATPED'
      Origin = 'SGE.CADDAR.CRDATPED'
    end
    object qr_caddarCRCX_CODCAI: TFloatField
      FieldName = 'CRCX_CODCAI'
      Origin = 'SGE.CADDAR.CRCX_CODCAI'
    end
    object qr_caddarCRCX_LOTMOV: TFloatField
      FieldName = 'CRCX_LOTMOV'
      Origin = 'SGE.CADDAR.CRCX_LOTMOV'
    end
    object qr_caddarCRJURDEB: TFloatField
      FieldName = 'CRJURDEB'
      Origin = 'SGE.CADDAR.CRJURDEB'
    end
    object qr_caddarCRJURDEB_SAC: TFloatField
      FieldName = 'CRJURDEB_SAC'
      Origin = 'SGE.CADDAR.CRJURDEB_SAC'
    end
    object qr_caddarCRCHD_EMITENTE: TStringField
      FieldName = 'CRCHD_EMITENTE'
      Origin = 'SGE.CADDAR.CRCHD_EMITENTE'
      Size = 40
    end
    object qr_caddarCRTARPROT: TFloatField
      FieldName = 'CRTARPROT'
      Origin = 'SGE.CADDAR.CRTARPROT'
    end
    object qr_caddarCRTARPROT_DATA: TDateTimeField
      FieldName = 'CRTARPROT_DATA'
      Origin = 'SGE.CADDAR.CRTARPROT_DATA'
    end
    object qr_caddarCRCUSPROT: TFloatField
      FieldName = 'CRCUSPROT'
      Origin = 'SGE.CADDAR.CRCUSPROT'
    end
    object qr_caddarCRCUSPROT_DATA: TDateTimeField
      FieldName = 'CRCUSPROT_DATA'
      Origin = 'SGE.CADDAR.CRCUSPROT_DATA'
    end
    object qr_caddarCRCODCAR: TFloatField
      FieldName = 'CRCODCAR'
      Origin = 'SGE.CADDAR.CRCODCAR'
    end
    object qr_caddarCRLOTSEQ_EC: TFloatField
      FieldName = 'CRLOTSEQ_EC'
      Origin = 'SGE.CADDAR.CRLOTSEQ_EC'
    end
    object qr_caddarCRLOTE_EC: TFloatField
      FieldName = 'CRLOTE_EC'
      Origin = 'SGE.CADDAR.CRLOTE_EC'
    end
    object qr_caddarCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SGE.CADDAR.CRTITPROT'
    end
    object qr_caddarvalor: TStringField
      FieldKind = fkCalculated
      FieldName = 'valor'
      Size = 14
      Calculated = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 352
  end
  object DataSource1: TDataSource
    DataSet = qr_caddar
    Left = 320
  end
  object Query1: TQuery
    DatabaseName = 'sge'
    Left = 424
  end
  object QR_CADEMP: TQuery
    DatabaseName = 'sge'
    SQL.Strings = (
      'SELECT * FROM CADEMP WHERE CODEMP=1')
    Left = 456
    object QR_CADEMPCODEMP: TFloatField
      FieldName = 'CODEMP'
      Origin = 'SGE.CADEMP.CODEMP'
    end
    object QR_CADEMPRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'SGE.CADEMP.RAZAO'
      Size = 40
    end
    object QR_CADEMPFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'SGE.CADEMP.FANTASIA'
      Size = 40
    end
    object QR_CADEMPENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'SGE.CADEMP.ENDERECO'
      Size = 40
    end
    object QR_CADEMPNUMERO: TFloatField
      FieldName = 'NUMERO'
      Origin = 'SGE.CADEMP.NUMERO'
    end
    object QR_CADEMPRESPONS: TStringField
      FieldName = 'RESPONS'
      Origin = 'SGE.CADEMP.RESPONS'
      Size = 40
    end
    object QR_CADEMPBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'SGE.CADEMP.BAIRRO'
    end
    object QR_CADEMPCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'SGE.CADEMP.CIDADE'
      Size = 25
    end
    object QR_CADEMPUF: TStringField
      FieldName = 'UF'
      Origin = 'SGE.CADEMP.UF'
      Size = 2
    end
    object QR_CADEMPCGC: TFloatField
      FieldName = 'CGC'
      Origin = 'SGE.CADEMP.CGC'
    end
    object QR_CADEMPINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Origin = 'SGE.CADEMP.INSCRICAO'
    end
    object QR_CADEMPFONE: TStringField
      FieldName = 'FONE'
      Origin = 'SGE.CADEMP.FONE'
      Size = 16
    end
    object QR_CADEMPFAX: TStringField
      FieldName = 'FAX'
      Origin = 'SGE.CADEMP.FAX'
      Size = 16
    end
    object QR_CADEMPE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Origin = 'SGE.CADEMP.E_MAIL'
      Size = 60
    end
    object QR_CADEMPPRESID: TStringField
      FieldName = 'PRESID'
      Origin = 'SGE.CADEMP.PRESID'
      Size = 40
    end
    object QR_CADEMPFONEP: TStringField
      FieldName = 'FONEP'
      Origin = 'SGE.CADEMP.FONEP'
      Size = 16
    end
    object QR_CADEMPDIRETOR: TStringField
      FieldName = 'DIRETOR'
      Origin = 'SGE.CADEMP.DIRETOR'
      Size = 40
    end
    object QR_CADEMPFONED: TStringField
      FieldName = 'FONED'
      Origin = 'SGE.CADEMP.FONED'
      Size = 16
    end
    object QR_CADEMPCEP: TStringField
      FieldName = 'CEP'
      Origin = 'SGE.CADEMP.CEP'
      Size = 9
    end
    object QR_CADEMPCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Origin = 'SGE.CADEMP.CAMINHO'
      Size = 60
    end
    object QR_CADEMPTELEVENDAS: TStringField
      FieldName = 'TELEVENDAS'
      Origin = 'SGE.CADEMP.TELEVENDAS'
    end
    object QR_CADEMPDATACAD: TDateTimeField
      FieldName = 'DATACAD'
      Origin = 'SGE.CADEMP.DATACAD'
    end
    object QR_CADEMPDATAALT: TDateTimeField
      FieldName = 'DATAALT'
      Origin = 'SGE.CADEMP.DATAALT'
    end
    object QR_CADEMPPA001: TStringField
      FieldName = 'PA001'
      Origin = 'SGE.CADEMP.PA001'
      Size = 15
    end
    object QR_CADEMPPA002: TStringField
      FieldName = 'PA002'
      Origin = 'SGE.CADEMP.PA002'
      Size = 15
    end
    object QR_CADEMPPA003: TStringField
      FieldName = 'PA003'
      Origin = 'SGE.CADEMP.PA003'
      Size = 15
    end
    object QR_CADEMPFONERES: TStringField
      FieldName = 'FONERES'
      Origin = 'SGE.CADEMP.FONERES'
    end
    object QR_CADEMPFUNCAORES: TStringField
      FieldName = 'FUNCAORES'
      Origin = 'SGE.CADEMP.FUNCAORES'
    end
    object QR_CADEMPINSCMUNIC: TStringField
      FieldName = 'INSCMUNIC'
      Origin = 'SGE.CADEMP.INSCMUNIC'
    end
    object QR_CADEMPCERTREG: TStringField
      FieldName = 'CERTREG'
      Origin = 'SGE.CADEMP.CERTREG'
    end
    object QR_CADEMPAUTFUNC: TStringField
      FieldName = 'AUTFUNC'
      Origin = 'SGE.CADEMP.AUTFUNC'
    end
    object QR_CADEMPAUTESP: TStringField
      FieldName = 'AUTESP'
      Origin = 'SGE.CADEMP.AUTESP'
    end
    object QR_CADEMPALVFUNC: TStringField
      FieldName = 'ALVFUNC'
      Origin = 'SGE.CADEMP.ALVFUNC'
    end
    object QR_CADEMPJUCEG: TStringField
      FieldName = 'JUCEG'
      Origin = 'SGE.CADEMP.JUCEG'
    end
    object QR_CADEMPRAZAO_CAB: TStringField
      FieldName = 'RAZAO_CAB'
      Origin = 'SGE.CADEMP.RAZAO_CAB'
      Size = 40
    end
    object QR_CADEMPFANTASIA_CAB: TStringField
      FieldName = 'FANTASIA_CAB'
      Origin = 'SGE.CADEMP.FANTASIA_CAB'
      Size = 40
    end
    object QR_CADEMPCONTADOR: TStringField
      FieldName = 'CONTADOR'
      Origin = 'SGE.CADEMP.CONTADOR'
      Size = 40
    end
    object QR_CADEMPCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Origin = 'SGE.CADEMP.CRC_CONTADOR'
    end
    object QR_CADEMPFECMEN: TFloatField
      FieldName = 'FECMEN'
      Origin = 'SGE.CADEMP.FECMEN'
    end
    object QR_CADEMPBLOQ: TFloatField
      FieldName = 'BLOQ'
      Origin = 'SGE.CADEMP.BLOQ'
    end
    object QR_CADEMPSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SGE.CADEMP.STATUS'
    end
    object QR_CADEMPEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      Origin = 'SGE.CADEMP.EMP_LOGO'
      Size = 1
    end
    object QR_CADEMPCNPF: TFloatField
      FieldName = 'CNPF'
      Origin = 'SGE.CADEMP.CNPF'
    end
    object QR_CADEMPRG: TStringField
      FieldName = 'RG'
      Origin = 'SGE.CADEMP.RG'
      Size = 40
    end
    object QR_CADEMPHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'SGE.CADEMP.HOMEPAGE'
      Size = 60
    end
    object QR_CADEMPCODLOC: TFloatField
      FieldName = 'CODLOC'
      Origin = 'SGE.CADEMP.CODLOC'
    end
  end
end
