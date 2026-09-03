object Frm_Integra_SimilarEMS: TFrm_Integra_SimilarEMS
  Left = 192
  Top = 73
  Width = 782
  Height = 596
  Caption = 'Gerador de Arquivo de Integra'#231#227'o Distribuidor EMS SIMILAR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 99
    Top = 446
    Width = 93
    Height = 13
    Caption = 'Referencia m'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 273
    Top = 447
    Width = 27
    Height = 13
    Caption = 'Ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sbSalvarPadrao: TSpeedButton
    Left = 286
    Top = 495
    Width = 150
    Height = 50
    Caption = '&Salvar Padr'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentFont = False
    OnClick = sbSalvarPadraoClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 774
    Height = 325
    ActivePage = TabSheet1
    Align = alTop
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 747
        Height = 317
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label5: TLabel
          Left = 44
          Top = 13
          Width = 73
          Height = 13
          Caption = 'Fornecedor.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_codven: TLabel
          Left = 58
          Top = 57
          Width = 59
          Height = 13
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 43
          Top = 132
          Width = 74
          Height = 13
          Caption = 'C'#243'd. Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 73
          Top = 173
          Width = 44
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 214
          Width = 111
          Height = 13
          Caption = 'Grupo de Produtos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 38
          Top = 259
          Width = 78
          Height = 13
          Caption = 'Tipo Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object OMITIR_FOR: TCheckBox
          Left = 121
          Top = 32
          Width = 53
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object CODFOR: TEdit
          Left = 121
          Top = 10
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 182
          Top = 10
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codforKeyDown
        end
        object CODVEN: TEdit
          Left = 121
          Top = 52
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODVENExit
          OnKeyPress = CODVENKeyPress
        end
        object lbx_codven: TListBox
          Left = 182
          Top = 51
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codvenKeyDown
        end
        object OMITIR_VEN: TCheckBox
          Left = 121
          Top = 74
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object StaticText3: TStaticText
          Left = 48
          Top = 92
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supervisor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object CODSUP: TEdit
          Left = 121
          Top = 92
          Width = 62
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
          OnExit = CODSUPExit
          OnKeyPress = CODSUPKeyPress
        end
        object lbx_codsup: TListBox
          Left = 182
          Top = 92
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codsupKeyDown
        end
        object OMITIR_SUP: TCheckBox
          Left = 121
          Top = 111
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object lbx_coduf: TListBox
          Left = 182
          Top = 133
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codufKeyDown
        end
        object CODUF: TEdit
          Left = 121
          Top = 133
          Width = 62
          Height = 19
          Hint = 'Pressione [F3]-Para Consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnExit = CODUFExit
          OnKeyDown = CODUFKeyDown
        end
        object OMITIR_UF: TCheckBox
          Left = 121
          Top = 157
          Width = 54
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object CODLOC: TEdit
          Left = 121
          Top = 173
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 13
          OnExit = CODLOCExit
          OnKeyPress = CODLOCKeyPress
        end
        object lbx_codloc: TListBox
          Left = 182
          Top = 173
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnKeyDown = lbx_codlocKeyDown
        end
        object OMITIR_LOC: TCheckBox
          Left = 122
          Top = 196
          Width = 57
          Height = 17
          Caption = 'Omitir'
          TabOrder = 15
        end
        object CODGPRO: TEdit
          Left = 121
          Top = 214
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 16
          OnExit = CODGPROExit
          OnKeyPress = CODGPROKeyPress
        end
        object lbx_codgpro: TListBox
          Left = 182
          Top = 214
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnKeyDown = lbx_codgproKeyDown
        end
        object OMITIR_GPRO: TCheckBox
          Left = 122
          Top = 237
          Width = 57
          Height = 17
          Caption = 'Omitir'
          TabOrder = 18
        end
        object CODTIP: TEdit
          Left = 121
          Top = 255
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
        end
        object lbx_codtip: TListBox
          Left = 182
          Top = 255
          Width = 350
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnKeyDown = lbx_codtipKeyDown
        end
        object OMITIR_TPRO: TCheckBox
          Left = 122
          Top = 277
          Width = 53
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
        end
        object GB_STATUS: TGroupBox
          Left = 560
          Top = 144
          Width = 185
          Height = 173
          Caption = 'Status do Produto:'
          TabOrder = 22
          object CLBStatus: TCheckListBox
            Left = 1
            Top = 14
            Width = 183
            Height = 158
            Align = alClient
            Color = 16776176
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              '0-Ativo'
              '1-Normal'
              '2-Normal'
              '3-Normal'
              '4-Normal'
              '5-Normal'
              '6-Normal'
              '7-Normal'
              '8-Vda Bloq'
              '9-Inativo'
              'Todos')
            Style = lbOwnerDrawFixed
            TabOrder = 0
            OnClick = CLBStatusClick
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 3
        Top = 8
        Width = 654
        Height = 167
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Or'#231'amento'
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 325
    Width = 774
    Height = 43
    Align = alTop
    Caption = 'Nome da Pasta a Ser Gerado so Arquivos:'
    TabOrder = 1
    object SB01: TSpeedButton
      Left = 657
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Definir Caminho'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = SB01Click
    end
    object NOMPASTA: TEdit
      Left = 6
      Top = 15
      Width = 646
      Height = 21
      TabOrder = 0
      Text = 'C:\SGE'
    end
  end
  object bbImprimir: TBitBtn
    Left = 6
    Top = 495
    Width = 150
    Height = 50
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bbImprimirClick
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
  object bbSair: TBitBtn
    Left = 529
    Top = 495
    Width = 150
    Height = 50
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
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
  object GroupBox3: TGroupBox
    Left = 0
    Top = 368
    Width = 774
    Height = 73
    Align = alTop
    Caption = 'Arquivos Gerados:'
    TabOrder = 4
    object Label8: TLabel
      Left = 8
      Top = 14
      Width = 100
      Height = 13
      Caption = 'Itens de Clientes:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 32
      Width = 101
      Height = 13
      Caption = 'Itens de Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 50
      Width = 98
      Height = 13
      Caption = 'Cadastro Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ITENSCLIENTE: TEdit
      Left = 110
      Top = 12
      Width = 571
      Height = 19
      Color = 11075496
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object ITENSESTOQUE: TEdit
      Left = 110
      Top = 30
      Width = 571
      Height = 19
      Color = 11075496
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object EMS_CLIENTE: TEdit
      Left = 110
      Top = 48
      Width = 571
      Height = 19
      Color = 11075496
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object MES: TEdit
    Left = 200
    Top = 445
    Width = 36
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object ANO: TEdit
    Left = 314
    Top = 446
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object st_periodo: TStaticText
    Left = 50
    Top = 466
    Width = 569
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'st_periodo'
    Color = 8454143
    ParentColor = False
    TabOrder = 7
  end
  object Qr_ItensCliente: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CCNPJ,CCPF,CRAZAO,PDCODBAR,PDNOME,PDUND ,CRAZAO,CDENOM,CL' +
        'OG,CCOMPL,CNUM,CBAIRRO,CCEP ,CCIDADE,CUF,CFONE01,CFONE02,CFAX,CN' +
        'OMCON,CTPPESSOA,CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC ,CF' +
        'ONE03,CFAX ,sum(P2QTD) AS QTD,sum(P2QTD*P2PRECO) as TOTBRU ,sum(' +
        'P2TOTLIQ) AS TOTLIQ  from CADP01 ,CADP02,CADPRO,CADCLI          ' +
        '    where P1STATUS<>9  and ((P1CODEMP=1))        and  P2CODEMP=P' +
        '1CODEMP and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1' +
        'ORDEM and  PDCODPRO=P2CODPRO and  CCODCLI=P1CODCLI'
      ' and P1DATDOC>='#39'01/07/2008'#39
      ' and P1DATDOC<='#39'11/07/2008'#39
      ' and P1EMIDOC=1'
      ' and P1TIPO  IN (1)'
      ' and PDCODFOR  in (0000019)'
      
        ' group by CCNPJ,CCPF,CRAZAO,PDCODBAR,PDNOME,PDUND ,CRAZAO,CDENOM' +
        ',CLOG,CCOMPL,CNUM,CBAIRRO,CCEP ,CCIDADE,CUF,CFONE01,CFONE02,CFAX' +
        ',CNOMCON,CTPPESSOA,CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC ' +
        ',CFONE03,CFAX ')
    Left = 47
    Top = 180
    object Qr_ItensClienteCCNPJ: TFloatField
      FieldName = 'CCNPJ'
    end
    object Qr_ItensClienteCCPF: TFloatField
      FieldName = 'CCPF'
    end
    object Qr_ItensClienteCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Qr_ItensClientePDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
    end
    object Qr_ItensClientePDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_ItensClientePDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_ItensClienteCRAZAO_1: TStringField
      FieldName = 'CRAZAO_1'
      Size = 40
    end
    object Qr_ItensClienteCDENOM: TStringField
      FieldName = 'CDENOM'
      Size = 40
    end
    object Qr_ItensClienteCLOG: TStringField
      FieldName = 'CLOG'
      Size = 60
    end
    object Qr_ItensClienteCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Size = 30
    end
    object Qr_ItensClienteCNUM: TStringField
      FieldName = 'CNUM'
      Size = 10
    end
    object Qr_ItensClienteCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Size = 30
    end
    object Qr_ItensClienteCCEP: TStringField
      FieldName = 'CCEP'
      Size = 9
    end
    object Qr_ItensClienteCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Size = 30
    end
    object Qr_ItensClienteCUF: TStringField
      FieldName = 'CUF'
      Size = 2
    end
    object Qr_ItensClienteCFONE01: TStringField
      FieldName = 'CFONE01'
      Size = 16
    end
    object Qr_ItensClienteCFONE02: TStringField
      FieldName = 'CFONE02'
      Size = 16
    end
    object Qr_ItensClienteCFAX: TStringField
      FieldName = 'CFAX'
      Size = 16
    end
    object Qr_ItensClienteCNOMCON: TStringField
      FieldName = 'CNOMCON'
      Size = 40
    end
    object Qr_ItensClienteCTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
    end
    object Qr_ItensClienteCIE: TStringField
      FieldName = 'CIE'
      Size = 30
    end
    object Qr_ItensClienteCRG: TStringField
      FieldName = 'CRG'
      Size = 40
    end
    object Qr_ItensClienteCENDERC: TStringField
      FieldName = 'CENDERC'
      Size = 60
    end
    object Qr_ItensClienteCCEPC: TStringField
      FieldName = 'CCEPC'
      Size = 9
    end
    object Qr_ItensClienteCCIDADEC: TStringField
      FieldName = 'CCIDADEC'
      Size = 30
    end
    object Qr_ItensClienteCBAIRROC: TStringField
      FieldName = 'CBAIRROC'
      Size = 30
    end
    object Qr_ItensClienteCUFC: TStringField
      FieldName = 'CUFC'
      Size = 2
    end
    object Qr_ItensClienteCFONE03: TStringField
      FieldName = 'CFONE03'
      Size = 16
    end
    object Qr_ItensClienteCFAX_1: TStringField
      FieldName = 'CFAX_1'
      Size = 16
    end
    object Qr_ItensClienteQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_ItensClienteTOTBRU: TFloatField
      FieldName = 'TOTBRU'
    end
    object Qr_ItensClienteTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
  end
  object Qr_Inventario: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PDCODPRO,PDCODBAR,CLNUMERO,PDNOME,CLQTD,PDUND from CADPRO' +
        ' ,CADLGC'
      'where        CLCODPRO(+)=PDCODPRO and '
      ' PDCODFOR  in (0000019)')
    Left = 48
    Top = 236
    object Qr_InventarioPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
    end
    object Qr_InventarioCLNUMERO: TStringField
      FieldName = 'CLNUMERO'
    end
    object Qr_InventarioPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 53
    end
    object Qr_InventarioCLQTD: TFloatField
      FieldName = 'CLQTD'
    end
    object Qr_InventarioPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_InventarioPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
    end
  end
  object Qr_Clientes: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select CCNPJ,CCPF,CRAZAO ,CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAIRRO' +
        ',CCEP'
      
        ',CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA,CIE,CRG,CEND' +
        'ERC'
      ',CCEPC,CCIDADEC,CBAIRROC,CUFC ,CFONE03,CFAX'
      ',CEMAIL'
      
        ',sum(P2QTD) AS QTD,sum(P2QTD*P2PRECO) as TOTBRU ,sum(P2TOTLIQ) A' +
        'S TOTLIQ  from CADP01 ,CADP02,CADPRO,CADCLI              where P' +
        '1STATUS<>9  and ((P1CODEMP=1))        and  P2CODEMP=P1CODEMP and' +
        ' P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM and  ' +
        'PDCODPRO=P2CODPRO and  CCODCLI=P1CODCLI'
      ' and P1DATDOC>='#39'01/07/2008'#39
      ' and P1DATDOC<='#39'11/07/2008'#39
      ' and P1EMIDOC=1'
      ' and P1TIPO  IN (1)'
      ' and PDCODFOR  in (0000019)'
      
        ' group by CCNPJ,CCPF,CRAZAO ,CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAI' +
        'RRO,CCEP'
      
        ' ,CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA,CIE,CRG,CEN' +
        'DERC,CCEPC,CCIDADEC'
      ' ,CBAIRROC,CUFC ,CFONE03,CFAX,CEMAIL ')
    Left = 47
    Top = 276
    object Qr_ClientesCCNPJ: TFloatField
      FieldName = 'CCNPJ'
    end
    object Qr_ClientesCCPF: TFloatField
      FieldName = 'CCPF'
    end
    object Qr_ClientesCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Qr_ClientesCRAZAO_1: TStringField
      FieldName = 'CRAZAO_1'
      Size = 40
    end
    object Qr_ClientesCDENOM: TStringField
      FieldName = 'CDENOM'
      Size = 40
    end
    object Qr_ClientesCLOG: TStringField
      FieldName = 'CLOG'
      Size = 60
    end
    object Qr_ClientesCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Size = 30
    end
    object Qr_ClientesCNUM: TStringField
      FieldName = 'CNUM'
      Size = 10
    end
    object Qr_ClientesCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Size = 30
    end
    object Qr_ClientesCCEP: TStringField
      FieldName = 'CCEP'
      Size = 9
    end
    object Qr_ClientesCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Size = 30
    end
    object Qr_ClientesCUF: TStringField
      FieldName = 'CUF'
      Size = 2
    end
    object Qr_ClientesCFONE01: TStringField
      FieldName = 'CFONE01'
      Size = 16
    end
    object Qr_ClientesCFONE02: TStringField
      FieldName = 'CFONE02'
      Size = 16
    end
    object Qr_ClientesCFAX: TStringField
      FieldName = 'CFAX'
      Size = 16
    end
    object Qr_ClientesCNOMCON: TStringField
      FieldName = 'CNOMCON'
      Size = 40
    end
    object Qr_ClientesCTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
    end
    object Qr_ClientesCIE: TStringField
      FieldName = 'CIE'
      Size = 30
    end
    object Qr_ClientesCRG: TStringField
      FieldName = 'CRG'
      Size = 40
    end
    object Qr_ClientesCENDERC: TStringField
      FieldName = 'CENDERC'
      Size = 60
    end
    object Qr_ClientesCCEPC: TStringField
      FieldName = 'CCEPC'
      Size = 9
    end
    object Qr_ClientesCCIDADEC: TStringField
      FieldName = 'CCIDADEC'
      Size = 30
    end
    object Qr_ClientesCBAIRROC: TStringField
      FieldName = 'CBAIRROC'
      Size = 30
    end
    object Qr_ClientesCUFC: TStringField
      FieldName = 'CUFC'
      Size = 2
    end
    object Qr_ClientesCFONE03: TStringField
      FieldName = 'CFONE03'
      Size = 16
    end
    object Qr_ClientesCFAX_1: TStringField
      FieldName = 'CFAX_1'
      Size = 16
    end
    object Qr_ClientesQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_ClientesTOTBRU: TFloatField
      FieldName = 'TOTBRU'
    end
    object Qr_ClientesTOTLIQ: TFloatField
      FieldName = 'TOTLIQ'
    end
    object Qr_ClientesCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
  end
end
