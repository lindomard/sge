object frm_corrigir_nfce: Tfrm_corrigir_nfce
  Left = 52
  Top = 125
  Width = 1250
  Height = 580
  Caption = 'Corrigir NFCE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label62: TLabel
      Left = 138
      Top = 20
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de:'
    end
    object Label63: TLabel
      Left = 365
      Top = 20
      Width = 6
      Height = 13
      Caption = #224
    end
    object edt_datini: TDateEdit
      Left = 217
      Top = 12
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 393
      Top = 12
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object BBnAtu: TBitBtn
      Left = 548
      Top = 11
      Width = 100
      Height = 25
      Caption = 'Atuali&zar'
      TabOrder = 2
      OnClick = BBnAtuClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 915
      Top = 11
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 3
      OnClick = btnSairClick
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
    object bbExportar: TBitBtn
      Left = 727
      Top = 11
      Width = 100
      Height = 25
      Caption = '&Exportar xls'
      TabOrder = 4
      OnClick = bbExportarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1234
    Height = 395
    Align = alClient
    Caption = 'Documentos Invalidos:'
    TabOrder = 1
    object DBGrid_docinvalidos: TDBGrid
      Left = 2
      Top = 15
      Width = 1230
      Height = 378
      Align = alClient
      DataSource = src_docinvalidos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1NFCE_CONTIGENCIA_XJUST'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODEMP'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFCE'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NFCE_CHV_ACESSO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1STATUS'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSSTATUS'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CADP01'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XML_PROTOCOLADO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADNS_TOTNOTA'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADP01_TOTNOTA'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XML_TOTNOTA'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XML_DATANF'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XML_VALORNF'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHACESSO_XML'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NPROT_CADP01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLO_XML'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSNFCE_NPROT'
          Width = 80
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 436
    Width = 1234
    Height = 105
    Align = alBottom
    Caption = 'Xml:'
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 1230
      Height = 88
      Align = alClient
      DataField = 'XML_PROTOCOLADO'
      DataSource = src_docinvalidos
      TabOrder = 0
    end
  end
  object src_docinvalidos: TDataSource
    DataSet = cds_corrigir
    Left = 280
    Top = 97
  end
  object qr_docinvalidos: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT P1NFCE_CONTIGENCIA_XJUST,P1CODEMP,NSNFCE_CHV_ACESSO AS NF' +
        'CE, P1NFCE_CHV_ACESSO,P1STATUS,NSSTATUS,P1DATAP AS DATA_CADP01, ' +
        'P1CHAVE FROM CADNS,CADP01 WHERE'
      
        'LENGTH(NVL(P1NFCE_CHV_ACESSO,'#39' '#39'))>2 AND P1CHAVE=NSCHAVEP AND P1' +
        'CODEMP=NSCODEMP '
      'AND NSNFCE_CHV_ACESSO<>P1NFCE_CHV_ACESSO'
      ''
      'AND P1STATUS<>9 AND P1CODEMP=1'
      '')
    Left = 328
    Top = 97
  end
  object cds_corrigir: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 312
    object cds_corrigirP1NFCE_CONTIGENCIA_XJUST: TStringField
      FieldName = 'P1NFCE_CONTIGENCIA_XJUST'
      Size = 254
    end
    object cds_corrigirP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object cds_corrigirNFCE: TStringField
      FieldName = 'NFCE'
      Size = 60
    end
    object cds_corrigirP1NFCE_CHV_ACESSO: TStringField
      FieldName = 'P1NFCE_CHV_ACESSO'
      Size = 60
    end
    object cds_corrigirP1STATUS: TFloatField
      FieldName = 'P1STATUS'
    end
    object cds_corrigirNSSTATUS: TFloatField
      FieldName = 'NSSTATUS'
    end
    object cds_corrigirP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object cds_corrigirDATA_CADP01: TDateTimeField
      FieldName = 'DATA_CADP01'
    end
    object cds_corrigirPROTOCOLO_XML: TStringField
      FieldName = 'PROTOCOLO_XML'
      Size = 254
    end
    object cds_corrigirXML_PROTOCOLADO: TBlobField
      FieldName = 'XML_PROTOCOLADO'
    end
    object cds_corrigirNSNFCE_NPROT: TStringField
      FieldName = 'NSNFCE_NPROT'
      Size = 60
    end
    object cds_corrigirCHACESSO_XML: TStringField
      FieldName = 'CHACESSO_XML'
      Size = 60
    end
    object cds_corrigirCADNS_TOTNOTA: TFloatField
      FieldName = 'CADNS_TOTNOTA'
    end
    object cds_corrigirCADP01_TOTNOTA: TFloatField
      FieldName = 'CADP01_TOTNOTA'
    end
    object cds_corrigirXML_TOTNOTA: TFloatField
      FieldName = 'XML_TOTNOTA'
    end
    object cds_corrigirXML_DATANF: TDateTimeField
      FieldName = 'XML_DATANF'
    end
    object cds_corrigirXML_VALORNF: TFloatField
      FieldName = 'XML_VALORNF'
    end
    object cds_corrigirNPROT_CADP01: TStringField
      FieldName = 'NPROT_CADP01'
      Size = 60
    end
  end
end
