object Frm_Nfe_Aguarde: TFrm_Nfe_Aguarde
  Left = 193
  Top = 124
  BorderStyle = bsNone
  Caption = 'Frm_Nfe_Aguarde'
  ClientHeight = 218
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 662
    Height = 52
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Aguardando autentica'#231#227'o do SEFAZ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 177
    Width = 662
    Height = 41
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object bbCancelar: TBitBtn
      Left = 162
      Top = 2
      Width = 276
      Height = 34
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = bbCancelarClick
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
      NumGlyphs = 2
    end
  end
  object Animate1: TAnimate
    Left = 1
    Top = 2
    Width = 32
    Height = 31
    AutoSize = False
    CommonAVI = aviFindFile
    StopFrame = 8
  end
  object Memo_evento: TMemo
    Left = 185
    Top = 52
    Width = 477
    Height = 125
    Align = alClient
    Alignment = taCenter
    Color = 15395541
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo_eve'
      'nto')
    ParentFont = False
    TabOrder = 2
  end
  object Memo_retorno: TMemo
    Left = 0
    Top = 52
    Width = 185
    Height = 125
    Align = alLeft
    Lines.Strings = (
      'Memo_retorno')
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object Timer_mudacor: TTimer
    OnTimer = Timer_mudacorTimer
    Left = 200
    Top = 56
  end
  object Query1: TQuery
    Left = 400
    Top = 128
  end
  object Timer_processar: TTimer
    Enabled = False
    OnTimer = Timer_processarTimer
    Left = 56
    Top = 40
  end
  object IdHTTP1: TIdHTTP
    ASCIIFilter = True
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = []
    Left = 176
    Top = 64
  end
  object cds_retorno: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 112
    object cds_retornocStatus: TIntegerField
      FieldName = 'cStatus'
    end
    object cds_retornocStatusMotivo: TStringField
      FieldName = 'cStatusMotivo'
      Size = 254
    end
    object cds_retornonumero_protocolo: TStringField
      FieldName = 'numero_protocolo'
      Size = 30
    end
    object cds_retornonumero_recibo: TStringField
      FieldName = 'numero_recibo'
      Size = 30
    end
    object cds_retornoXml_Resposta: TMemoField
      FieldName = 'Xml_Resposta'
      BlobType = ftMemo
    end
    object cds_retornoXml_dathoreve: TDateTimeField
      FieldName = 'Xml_dathoreve'
    end
    object cds_retornoXml_Retorno_assinado: TMemoField
      FieldName = 'Xml_Retorno_assinado'
      BlobType = ftMemo
    end
    object cds_retornoXml_Retorno_protocolado: TMemoField
      FieldName = 'Xml_Retorno_protocolado'
      BlobType = ftMemo
    end
    object cds_retornocertdigital_venc_dathor: TDateTimeField
      FieldName = 'certdigital_venc_dathor'
    end
  end
end
