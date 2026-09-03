object Frm_NFE_Manifestacao: TFrm_NFE_Manifestacao
  Left = 97
  Top = 164
  Width = 1003
  Height = 520
  Caption = 'Manifesta'#231#227'o de NFE (distDFeInt)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 147
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 993
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'DADOS PARA CONSULTAR AS NOTAS DE COMPRAS'
      Color = 16777162
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 31
      Width = 785
      Height = 115
      Align = alClient
      Caption = 'Pesquisar Gravadas:'
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 55
        Width = 63
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Periodo de '
      end
      object Label3: TLabel
        Left = 204
        Top = 52
        Width = 7
        Height = 13
        Caption = #224
      end
      object Label4: TLabel
        Left = 344
        Top = 52
        Width = 98
        Height = 13
        Caption = 'Data a Pesquisar:'
      end
      object Label6: TLabel
        Left = 9
        Top = 71
        Width = 63
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CNPJ:'
      end
      object Label7: TLabel
        Left = 407
        Top = 14
        Width = 40
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #218'ltimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 4
        Top = 15
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NSU Baixado Primeiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 9
        Top = 33
        Width = 63
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NSU Inicial:'
      end
      object Label10: TLabel
        Left = 384
        Top = 32
        Width = 63
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NSU Final:'
      end
      object cb_tipo_data: TComboBox
        Left = 453
        Top = 46
        Width = 122
        Height = 21
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 6
        Text = 'Download'
        Items.Strings = (
          'Download'
          'Emissao')
      end
      object bblerdados: TBitBtn
        Left = 585
        Top = 9
        Width = 174
        Height = 25
        Caption = 'Consultar'
        TabOrder = 10
        OnClick = bblerdadosClick
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
      object edt_cnpj: TEdit
        Left = 78
        Top = 67
        Width = 122
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = edt_cnpjExit
        OnKeyPress = edt_cnpjKeyPress
      end
      object lbx_codfor: TListBox
        Left = 199
        Top = 67
        Width = 377
        Height = 40
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object OMITIR_FOR: TCheckBox
        Left = 78
        Top = 89
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object edt_nsu_baixado_ultimo: TEdit
        Left = 453
        Top = 11
        Width = 122
        Height = 19
        TabStop = False
        Color = 15395541
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        OnExit = edt_cnpjExit
        OnKeyPress = edt_cnpjKeyPress
      end
      object edt_nsu_baixado_primeiro: TEdit
        Left = 141
        Top = 12
        Width = 122
        Height = 19
        TabStop = False
        Color = 15395541
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        OnExit = edt_cnpjExit
        OnKeyPress = edt_cnpjKeyPress
      end
      object bbSair: TBitBtn
        Left = 586
        Top = 66
        Width = 174
        Height = 25
        Caption = '&Sair'
        TabOrder = 11
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
      object edt_datini: TDateEdit
        Left = 78
        Top = 47
        Width = 122
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 4
      end
      object edt_datfin: TDateEdit
        Left = 215
        Top = 48
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 5
      end
      object edt_nsu_inicial: TEdit
        Left = 78
        Top = 30
        Width = 122
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = edt_cnpjExit
        OnKeyPress = edt_cnpjKeyPress
      end
      object edt_nsu_final: TEdit
        Left = 453
        Top = 29
        Width = 122
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = edt_cnpjExit
        OnKeyPress = edt_cnpjKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 786
      Top = 31
      Width = 208
      Height = 115
      Align = alRight
      Caption = 'Baixar/Download:'
      TabOrder = 1
      object Label5: TLabel
        Left = 10
        Top = 17
        Width = 180
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ultimo NSU:'
      end
      object edt_ultNSU: TEdit
        Left = 10
        Top = 39
        Width = 180
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object bbdownload: TBitBtn
        Left = 10
        Top = 65
        Width = 180
        Height = 25
        Caption = 'Download'
        TabOrder = 1
        OnClick = bbdownloadClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 448
    Width = 995
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbDownload_NFE: TBitBtn
      Left = 5
      Top = 9
      Width = 252
      Height = 25
      Caption = 'Download do XML'
      TabOrder = 0
      OnClick = bbDownload_NFEClick
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
    object bbCiencia: TBitBtn
      Left = 716
      Top = 8
      Width = 252
      Height = 25
      Caption = 'Ciencia da Opera'#231#227'o'
      TabOrder = 1
      OnClick = bbCienciaClick
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
    object bbdesconhecimento: TBitBtn
      Left = 355
      Top = 9
      Width = 252
      Height = 25
      Caption = 'Desconhecimento da Opera'#231#227'o'
      TabOrder = 2
      TabStop = False
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
  object PageControl1: TPageControl
    Left = 0
    Top = 147
    Width = 995
    Height = 301
    ActivePage = tsNotasEncontradas
    Align = alClient
    TabOrder = 2
    object tsNotasEncontradas: TTabSheet
      Caption = 'Rela'#231#227'o das Notas Encontradas'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 987
        Height = 273
        Align = alClient
        DataSource = src_nfeenc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chNFe'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'xNome'
            Title.Alignment = taCenter
            Width = 351
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhEmi'
            Title.Alignment = taCenter
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vNF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nProt'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSU'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tpNF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dhRecbto'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cSitNFe'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANIFESTACAO_SITUACAO'
            Title.Alignment = taCenter
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANIFESTACAO_SITUACAO_TEXTO'
            Title.Alignment = taCenter
            Width = 313
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MANIFESTACAO_DATHOR'
            Title.Alignment = taCenter
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pedido_compra'
            Title.Alignment = taCenter
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DFE_DATHOR_DOWNLOAD'
            Title.Alignment = taCenter
            Width = 149
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'XML Resultado'
      ImageIndex = 1
      object rich_xml_resultado: TRichEdit
        Left = 0
        Top = 0
        Width = 987
        Height = 273
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'rich_xml_resultado')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object cds_nfeenc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 88
    object cds_nfeencchNFe: TStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'chNFe'
      Size = 44
    end
    object cds_nfeencCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object cds_nfeencxNome: TStringField
      DisplayLabel = 'Emitente (fornecedor)'
      FieldName = 'xNome'
      Size = 100
    end
    object cds_nfeencIE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'IE'
      Size = 50
    end
    object cds_nfeencdhEmi: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'dhEmi'
    end
    object cds_nfeenctpNF: TIntegerField
      DisplayLabel = 'Tipo NF'
      FieldName = 'tpNF'
    end
    object cds_nfeencvNF: TFloatField
      DisplayLabel = 'Valor da Nota'
      FieldName = 'vNF'
    end
    object cds_nfeencdigVal: TStringField
      FieldName = 'digVal'
      Size = 40
    end
    object cds_nfeencdhRecbto: TDateTimeField
      DisplayLabel = 'Data Recibo'
      FieldName = 'dhRecbto'
    end
    object cds_nfeencnProt: TStringField
      DisplayLabel = 'N'#250'mero Protocolo'
      FieldName = 'nProt'
      Size = 50
    end
    object cds_nfeenccSitNFe: TIntegerField
      DisplayLabel = 'SitNFe'
      FieldName = 'cSitNFe'
    end
    object cds_nfeencultNSU: TStringField
      DisplayLabel = 'Ult.NSU'
      FieldName = 'ultNSU'
      Size = 15
    end
    object cds_nfeencmaxNSU: TStringField
      DisplayLabel = 'Max NSU'
      FieldName = 'maxNSU'
      Size = 15
    end
    object cds_nfeencid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
    end
    object cds_nfeencNSU: TStringField
      FieldName = 'NSU'
      Size = 15
    end
    object cds_nfeencMANIFESTACAO_SITUACAO: TIntegerField
      DisplayLabel = 'Sit Manif'
      FieldName = 'MANIFESTACAO_SITUACAO'
    end
    object cds_nfeencMANIFESTACAO_DATHOR: TDateTimeField
      DisplayLabel = 'Data Hor Manif'
      FieldName = 'MANIFESTACAO_DATHOR'
    end
    object cds_nfeencMANIFESTACAO_SITUACAO_TEXTO: TStringField
      DisplayLabel = 'Situa'#231'ao Manifestacao'
      FieldName = 'MANIFESTACAO_SITUACAO_TEXTO'
      Size = 80
    end
    object cds_nfeencpedido_compra: TStringField
      DisplayLabel = 'Pedido de Compra Vinculado'
      FieldName = 'pedido_compra'
      Size = 100
    end
    object cds_nfeencDFE_DATHOR_DOWNLOAD: TDateTimeField
      DisplayLabel = 'Data Hora Download'
      FieldName = 'DFE_DATHOR_DOWNLOAD'
    end
  end
  object src_nfeenc: TDataSource
    DataSet = cds_nfeenc
    Left = 552
    Top = 88
  end
end
