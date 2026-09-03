object Frm_Gerar_CADP02_VdaCF: TFrm_Gerar_CADP02_VdaCF
  Left = 192
  Top = 124
  Width = 696
  Height = 480
  Caption = 
    'Gerar CADP02_VdaCF Atrav'#233's do Arquivo de Download MDB da Bematec' +
    'h'
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
  object gb_progress: TGroupBox
    Left = 0
    Top = 387
    Width = 680
    Height = 55
    Align = alBottom
    Caption = 'Progresso do Processamento:'
    TabOrder = 0
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 28
      Width = 676
      Height = 25
      Align = alClient
      Progress = 0
    end
    object lbl_titulo: TLabel
      Left = 2
      Top = 15
      Width = 676
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_titulo'
      Color = 12189625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 680
    Height = 387
    ActivePage = TsGerais
    Align = alClient
    TabOrder = 1
    object TsGerais: TTabSheet
      Caption = 'Gerais'
      object Label2: TLabel
        Left = 7
        Top = 7
        Width = 47
        Height = 13
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 149
        Top = 7
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
        Left = 7
        Top = 31
        Width = 208
        Height = 13
        Caption = 'Nome do Arquivo da Memoria Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbn: TSpeedButton
        Left = 649
        Top = 51
        Width = 23
        Height = 22
        OnClick = sbnClick
      end
      object MDT1: TMaskEdit
        Left = 61
        Top = 3
        Width = 81
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
          #13#10'digite a mesma.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '  /  /    '
      end
      object MDT2: TMaskEdit
        Left = 166
        Top = 3
        Width = 80
        Height = 19
        Hint = 
          'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
          '.'
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
      end
      object edt_nomarq: TEdit
        Left = 8
        Top = 52
        Width = 641
        Height = 21
        TabOrder = 2
        Text = 'C:\BKP\MEGAWATT\DOWNLOAD_MES05\DOWNLOAD.MDB'
      end
      object bbImportar: TBitBtn
        Left = 8
        Top = 77
        Width = 209
        Height = 25
        Caption = 'Iniciar Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bbImportarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
          0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
          00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
          00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
          00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
          D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
          FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object bbSair: TBitBtn
        Left = 463
        Top = 80
        Width = 209
        Height = 25
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
    object tsLogs: TTabSheet
      Caption = 'Logs'
      ImageIndex = 1
      object Memo_Erros: TMemo
        Left = 0
        Top = 0
        Width = 672
        Height = 359
        Align = alClient
        Lines.Strings = (
          'Memo_Erros')
        TabOrder = 0
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\BKP\MEGAWATT\DOW' +
      'NLOAD_MES05\DOWNLOAD.MDB;Persist Security Info=False;'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 280
    Top = 40
  end
  object ADO_Origem: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * from CuponsFiscais')
    Left = 368
    Top = 40
    object ADO_OrigemcontCOO: TIntegerField
      FieldName = 'contCOO'
    end
    object ADO_OrigemHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object ADO_OrigemcontCCF: TIntegerField
      FieldName = 'contCCF'
    end
    object ADO_OrigemCNPJ_CPFConsumidor: TWideStringField
      FieldName = 'CNPJ_CPFConsumidor'
      Size = 30
    end
    object ADO_OrigemNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
    object ADO_OrigemEndereco: TWideStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object ADO_OrigemSubTotal: TBCDField
      FieldName = 'SubTotal'
      Precision = 19
    end
    object ADO_OrigemValorAcrescimo: TBCDField
      FieldName = 'ValorAcrescimo'
      Precision = 19
    end
    object ADO_OrigemValorDesconto: TBCDField
      FieldName = 'ValorDesconto'
      Precision = 19
    end
    object ADO_OrigemTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object ADO_OrigemSomaPgto: TBCDField
      FieldName = 'SomaPgto'
      Precision = 19
    end
    object ADO_OrigemTroco: TBCDField
      FieldName = 'Troco'
      Precision = 19
    end
    object ADO_OrigemTextoSuplementar: TMemoField
      FieldName = 'TextoSuplementar'
      BlobType = ftMemo
    end
    object ADO_OrigemCancelado: TBooleanField
      FieldName = 'Cancelado'
    end
    object ADO_OrigemCupomAdicional: TBooleanField
      FieldName = 'CupomAdicional'
    end
    object ADO_OrigemDescontoISSDesabilitado: TBooleanField
      FieldName = 'DescontoISSDesabilitado'
    end
  end
  object ADO_Itens: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select'
      
        'contCOOCupom,CodigoItem,Codigo,Quantidade,ValorTotal,SituacaoTri' +
        'butaria'
      ',ValorUnitario'
      'from ItensPorCupom,itensCadastrados'
      'where codigoItem=IdCodigoItem')
    Left = 432
    Top = 48
    object ADO_Itensaliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'aliq'
      Calculated = True
    end
    object ADO_ItenscontCOOCupom: TIntegerField
      FieldName = 'contCOOCupom'
    end
    object ADO_ItensCodigoItem: TIntegerField
      FieldName = 'CodigoItem'
    end
    object ADO_ItensCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object ADO_ItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ADO_ItensValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 19
    end
    object ADO_ItensSituacaoTributaria: TIntegerField
      FieldName = 'SituacaoTributaria'
    end
    object ADO_ItensValorUnitario: TBCDField
      FieldName = 'ValorUnitario'
      Precision = 19
    end
  end
  object Qr_IncPed02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Insert into CADP02_VDACF ('
      'P2CODEMP'
      ',P2LOTSEQ'
      ',P2CHAVE'
      ',P2CHAVE_NIVEL'
      ',P2ORDEM'
      ',P2ITEM'
      ',P2CODPRO'
      ',P2UND'
      ',P2CODANT'
      ',P2QTD'
      ',P2QTD_ATEN'
      ',P2LOTE'
      ',P2DTVCTO'
      ',P2DESC1'
      ',P2DESC2'
      ',P2DESC3'
      ',P2VALDES'
      ',P2PRECO'
      ',P2SIT'
      ',P2CODFAB'
      ',P2CODGRU'
      ',P2BASEN'
      ',P2ICMSN'
      ',P2REPAS'
      ',P2BASER'
      ',P2ICMSR'
      ',P2LISTA'
      ',P2STATUS'
      ',P2PCOTAB'
      ',P2PCOFPG'
      ',P2UCPR'
      ',P2PCOCUS'
      ',P2TOTDES'
      ',P2DESCRAT'
      ',P2ACRERAT'
      ',P2TABELA'
      ',P2ALIPI'
      ',P2VALIPI'
      ',P2BCINR'
      ',P2ICMSNR'
      ',P2ISENTAS'
      ',P2TOTOUT'
      ',P2ALIQ'
      ',P2ALIQNR'
      ',P2PCOMIS'
      ',P2VCOMIS'
      ',P2VCOM02'
      ',P2VCOM03'
      ',P2PCOM02'
      ',P2PCOM03'
      ',P2VCOM04'
      ',P2DESCM'
      ',P2CFO'
      ',P2CFOSUBECF'
      ',P2SEMCOM'
      ',P2TOTLIQ'
      ',P2PDESCF'
      ',P2VDESCF'
      ',P2ACRECONV'
      ',P2ACREGER'
      ',P2PCOMAX'
      ',P2QTDDEV'
      ',P2PROMOCAO'
      ',P2QTD_ENTREGUE'
      ',P2QTD_ENTREGANDO'
      ',P2AMBIENTE'
      ',P2COMPLEMENTO'
      ',P2PCOMIS_EXTRA'
      ',P2VCOMIS_EXTRA'
      ',P2STATUS_PED1'
      ',P2TIPO'
      ',P2CODAGRU'
      ',P2CONSIG'
      ',P2ST_IVA'
      ',P2ST_REDUT'
      ',P2ST_ICMCRED'
      ',P2ST_ICMDEB'
      ',P2REDUTICM'
      ',P2PRAZO'
      ',P2ALPIS'
      ',P2VALPIS'
      ',P2ALCOFINS'
      ',P2COFINS'
      ',P2CODVEN'
      ',P2TIPO_PCO'
      ',P2CONS_PROPRIO'
      ',P2CODPRO_ORI'
      ',P2NOMPRO_ORI'
      ',P2PCREDSN'
      ',P2KIT_PRO'
      ') Values  ('
      ':P2CODEMP'
      ',:P2LOTSEQ'
      ',:P2CHAVE'
      ',:P2CHAVE_NIVEL'
      ',:P2ORDEM'
      ',:P2ITEM'
      ',:P2CODPRO'
      ',:P2UND'
      ',:P2CODANT'
      ',:P2QTD'
      ',:P2QTD_ATEN'
      ',:P2LOTE'
      ',:P2DTVCTO'
      ',:P2DESC1'
      ',:P2DESC2'
      ',:P2DESC3'
      ',:P2VALDES'
      ',:P2PRECO'
      ',:P2SIT'
      ',:P2CODFAB'
      ',:P2CODGRU'
      ',:P2BASEN'
      ',:P2ICMSN'
      ',:P2REPAS'
      ',:P2BASER'
      ',:P2ICMSR'
      ',:P2LISTA'
      ',:P2STATUS'
      ',:P2PCOTAB'
      ',:P2PCOFPG'
      ',:P2UCPR'
      ',:P2PCOCUS'
      ',:P2TOTDES'
      ',:P2DESCRAT'
      ',:P2ACRERAT'
      ',:P2TABELA'
      ',:P2ALIPI'
      ',:P2VALIPI'
      ',:P2BCINR'
      ',:P2ICMSNR'
      ',:P2ISENTAS'
      ',:P2TOTOUT'
      ',:P2ALIQ'
      ',:P2ALIQNR'
      ',:P2PCOMIS'
      ',:P2VCOMIS'
      ',:P2VCOM02'
      ',:P2VCOM03'
      ',:P2PCOM02'
      ',:P2PCOM03'
      ',:P2VCOM04'
      ',:P2DESCM'
      ',:P2CFO'
      ',:P2CFOSUBECF'
      ',:P2SEMCOM'
      ',:P2TOTLIQ'
      ',:P2PDESCF'
      ',:P2VDESCF'
      ',:P2ACRECONV'
      ',:P2ACREGER'
      ',:P2PCOMAX'
      ',:P2QTDDEV'
      ',:P2PROMOCAO'
      ',:P2QTD_ENTREGUE'
      ',:P2QTD_ENTREGANDO'
      ',:P2AMBIENTE'
      ',:P2COMPLEMENTO'
      ',:P2PCOMIS_EXTRA'
      ',:P2VCOMIS_EXTRA'
      ',:P2STATUS_PED1'
      ',:P2TIPO'
      ',:P2CODAGRU'
      ',:P2CONSIG'
      ',:P2ST_IVA'
      ',:P2ST_REDUT'
      ',:P2ST_ICMCRED'
      ',:P2ST_ICMDEB'
      ',:P2REDUTICM'
      ',:P2PRAZO'
      ',:P2ALPIS'
      ',:P2VALPIS'
      ',:P2ALCOFINS'
      ',:P2COFINS'
      ',:P2CODVEN'
      ',:P2TIPO_PCO'
      ',:P2CONS_PROPRIO'
      ',:P2CODPRO_ORI'
      ',:P2NOMPRO_ORI'
      ',:P2PCREDSN'
      ',:P2KIT_PRO'
      ')')
    Left = 56
    Top = 261
    ParamData = <
      item
        DataType = ftString
        Name = 'P2CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CHAVE_NIVEL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ORDEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ITEM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODPRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2UND'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODANT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD_ATEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LOTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DTVCTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESC3'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PRECO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2SIT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODFAB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BASEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2REPAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BASER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2LISTA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2STATUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOTAB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOFPG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2UCPR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOCUS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTDES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESCRAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACRERAT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TABELA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALIPI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2BCINR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ICMSNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ISENTAS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTOUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALIQNR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOMIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOM02'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOM03'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOM04'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2DESCM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CFO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CFOSUBECF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2SEMCOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TOTLIQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VDESCF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACRECONV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ACREGER'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMAX'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTDDEV'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PROMOCAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD_ENTREGUE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2QTD_ENTREGANDO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2AMBIENTE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2COMPLEMENTO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VCOMIS_EXTRA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2STATUS_PED1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TIPO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODAGRU'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CONSIG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_IVA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_REDUT'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_ICMCRED'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ST_ICMDEB'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2REDUTICM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PRAZO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALPIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2VALPIS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2ALCOFINS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2COFINS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODVEN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2TIPO_PCO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CONS_PROPRIO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2CODPRO_ORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2NOMPRO_ORI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2PCREDSN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'P2KIT_PRO'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object opd1: TOpenDialog
    DefaultExt = '*.accdb'
    Left = 608
    Top = 184
  end
end
