object Frm_Fiscal_RelPisCofins: TFrm_Fiscal_RelPisCofins
  Left = 37
  Top = 133
  Width = 737
  Height = 429
  Caption = 'Relat'#243'rio de PIS/COFINS Faturamento'
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
    Top = 306
    Width = 729
    Height = 92
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 103
      Height = 13
      Caption = 'Per'#237'odo m'#234's/ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 344
      Top = 28
      Width = 26
      Height = 13
      Caption = 'Nota:'
    end
    object MES: TEdit
      Left = 116
      Top = 4
      Width = 34
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Text = '1'
      OnExit = MESExit
    end
    object UpDown_mes: TUpDown
      Left = 150
      Top = 4
      Width = 17
      Height = 21
      Associate = MES
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 1
      Wrap = True
    end
    object ANO: TEdit
      Left = 168
      Top = 4
      Width = 31
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      Text = '2100'
    end
    object UpDown_ano: TUpDown
      Left = 199
      Top = 4
      Width = 17
      Height = 21
      Associate = ANO
      Min = 1990
      Max = 2100
      Position = 2100
      TabOrder = 3
      Thousands = False
      Wrap = True
    end
    object clb_lista: TCheckListBox
      Left = 225
      Top = 19
      Width = 97
      Height = 57
      Color = 16776176
      Columns = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      Items.Strings = (
        'Inalterado'
        'Positivo'
        'Negativo'
        'Todos')
      ParentFont = False
      Style = lbOwnerDrawFixed
      TabOrder = 4
      OnClick = clb_listaClick
    end
    object StaticText12: TStaticText
      Left = 225
      Top = 2
      Width = 99
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Lista Pis/Cofins'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object bbAplicar: TBitBtn
      Left = 576
      Top = 3
      Width = 150
      Height = 30
      Hint = 'Seleciona so T'#237'tulos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object bbImprimir: TBitBtn
      Left = 576
      Top = 32
      Width = 150
      Height = 30
      Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
      Left = 576
      Top = 61
      Width = 150
      Height = 30
      Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object CB_SEPALIQ: TCheckBox
      Left = 343
      Top = 3
      Width = 154
      Height = 17
      Caption = 'Separar Aliquotas'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object NUMNF: TEdit
      Left = 382
      Top = 22
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 306
    ActivePage = tsRegSel
    Align = alClient
    TabOrder = 1
    object tsRegSel: TTabSheet
      Caption = 'Registros Selecionados'
      object DBG_PisCofins: TDBGrid
        Left = 0
        Top = 0
        Width = 721
        Height = 278
        Align = alClient
        DataSource = Src_PisCofins
        FixedColor = 11796479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'GRUPO'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDVENDA'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALVENDA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCLAS'
            Title.Alignment = taCenter
            Width = 89
            Visible = True
          end>
      end
    end
    object tsFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 721
        Height = 278
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
  end
  object Qr_PisCof: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT PDLISTA,P2CODPRO,PDNOME,PDUND,PDCLAS'
      ',DECODE( PDLISTA,'
      '        2,'#39'Lista Negativa'#39','
      '        1,'#39'Lista Positiva'#39
      '         ,'#39'Lista Inalterada'#39') as grupo'
      ''
      ',sum(DECODE( PDLISTA,'
      '        2,P2QTD,'
      '        1,P2QTD'
      '         ,0)) as qtdpago'
      ''
      ',sum(DECODE( PDLISTA,'
      '        2,0,'
      '        1,0'
      '         ,P2QTD)) as qtdapagar'
      ''
      ',sum(DECODE( PDLISTA,'
      '        2,P2TOTLIQ-P2DESCRAT,'
      '        1,P2TOTLIQ-P2DESCRAT'
      '         ,0)) as valpago'
      ''
      ',sum(DECODE( PDLISTA,'
      '        2,0,'
      '        1,0'
      '         ,P2TOTLIQ-P2DESCRAT)) as valapagar'
      ',sum(P2TOTLIQ-P2DESCRAT) as valvenda'
      ',sum(P2QTD) as qtdvenda'
      ',P2ALIQ as aliq'
      'FROM CADP02,CADP01,CADPRO WHERE'
      '   P2CODEMP=P1CODEMP'
      'AND P2LOTSEQ=P1LOTSEQ'
      'AND P2CHAVE=P1CHAVE'
      'AND P2ORDEM=P1ORDEM'
      'AND PDCODPRO=P2CODPRO'
      'and P1CODEMP=1'
      'AND P1DATDOC>='#39'01/05/2007'#39
      'and P1DATDOC<='#39'31/05/2007'#39
      'group by PDLISTA,P2CODPRO,PDNOME,PDUND,PDCLAS,P2ALIQ'
      '')
    Left = 384
    Top = 200
    object Qr_PisCofP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'P2CODPRO'
    end
    object Qr_PisCofPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_PisCofPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_PisCofPDCLAS: TStringField
      DisplayLabel = 'Classif.Fiscal'
      FieldName = 'PDCLAS'
    end
    object Qr_PisCofGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Size = 16
    end
    object Qr_PisCofQTDPAGO: TFloatField
      DisplayLabel = 'Qtd.Pago'
      FieldName = 'QTDPAGO'
    end
    object Qr_PisCofQTDAPAGAR: TFloatField
      DisplayLabel = 'Qtd.A Pagar'
      FieldName = 'QTDAPAGAR'
    end
    object Qr_PisCofVALPAGO: TFloatField
      DisplayLabel = 'Vlr Pago'
      FieldName = 'VALPAGO'
    end
    object Qr_PisCofVALAPAGAR: TFloatField
      DisplayLabel = 'Vlr a Pagar'
      FieldName = 'VALAPAGAR'
    end
    object Qr_PisCofVALVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VALVENDA'
    end
    object Qr_PisCofQTDVENDA: TFloatField
      DisplayLabel = 'Qtd Vendida'
      FieldName = 'QTDVENDA'
    end
    object Qr_PisCofPDLISTA: TFloatField
      FieldName = 'PDLISTA'
    end
    object Qr_PisCofALIQ: TFloatField
      FieldName = 'ALIQ'
    end
  end
  object Src_PisCofins: TDataSource
    DataSet = Qr_PisCof
    Left = 448
    Top = 200
  end
end
