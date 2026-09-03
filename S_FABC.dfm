object Frm_FABC: TFrm_FABC
  Left = 32
  Top = 0
  BorderStyle = bsSingle
  Caption = 'ABC de Fornecedores'
  ClientHeight = 403
  ClientWidth = 770
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
  object Label3: TLabel
    Left = 28
    Top = 241
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label4: TLabel
    Left = 172
    Top = 239
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label1: TLabel
    Left = 414
    Top = 238
    Width = 82
    Height = 13
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_separado: TLabel
    Left = 16
    Top = 322
    Width = 67
    Height = 13
    Caption = 'Separado por:'
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 770
    Height = 221
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
        Width = 743
        Height = 213
        Align = alClient
        Caption = 'Filtros'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label5: TLabel
          Left = 10
          Top = 13
          Width = 60
          Height = 13
          Caption = 'Fornecedor.:'
        end
        object lbl_codven: TLabel
          Left = 23
          Top = 57
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object OMITIR_FOR: TCheckBox
          Left = 81
          Top = 32
          Width = 53
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnMouseMove = OMITIR_FORMouseMove
        end
        object CODFOR: TEdit
          Left = 78
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
          OnMouseMove = CODFORMouseMove
        end
        object lbx_codfor: TListBox
          Left = 139
          Top = 10
          Width = 445
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
          Left = 78
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
          Left = 139
          Top = 51
          Width = 445
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
          Left = 79
          Top = 74
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 92
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supervisor:'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
        end
        object CODSUP: TEdit
          Left = 78
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
          Left = 139
          Top = 92
          Width = 445
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
          Left = 81
          Top = 111
          Width = 56
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
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
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 89
    Top = 238
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 205
    Top = 238
    Width = 80
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object RG_ORDEM: TRadioGroup
    Left = 22
    Top = 264
    Width = 298
    Height = 51
    Caption = 'Ordem do Relat'#243'rio:'
    Columns = 2
    ItemIndex = 2
    Items.Strings = (
      'Nome &Fornecedor'
      '&C'#243'digo Fornecedor'
      'V&alor Crescente'
      'Va&lor Decrescente')
    TabOrder = 3
  end
  object CB_FORCAR: TCheckBox
    Left = 356
    Top = 267
    Width = 215
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 4
  end
  object CB_EmiDoc: TCheckBox
    Left = 300
    Top = 236
    Width = 109
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = CB_EmiDocClick
  end
  object CB_ICMSRET: TCheckBox
    Left = 357
    Top = 284
    Width = 207
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 6
  end
  object bbImprimir: TBitBtn
    Left = 543
    Top = 376
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
    TabOrder = 14
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
    Left = 659
    Top = 376
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 15
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
  object CB_TIPOPESQ: TComboBox
    Left = 496
    Top = 237
    Width = 132
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'Data da Nota'
    OnExit = CB_TIPOPESQExit
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object CB_SEPARADO: TComboBox
    Left = 91
    Top = 319
    Width = 178
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 9
    Sorted = True
    TabOrder = 8
    Text = 'Sem Separar'
    OnClick = CB_SEPARADOClick
    Items.Strings = (
      'Bairro'
      'Cidade'
      'Cliente'
      'Estado'
      'Fornecedor'
      'Grupo de Produtos'
      'Marca'
      'Mes/Ano'
      'Ramo/Sub-Grupo'
      'Sem Separar'
      'Tipo de Controle'
      'Vendedor')
  end
  object CB_AVANCPAG: TCheckBox
    Left = 274
    Top = 318
    Width = 101
    Height = 17
    Caption = 'Avan'#231'ar P'#225'gina'
    TabOrder = 9
  end
  object CB_QUOTAVEN: TComboBox
    Left = 89
    Top = 344
    Width = 179
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 10
    Text = 'N'#227'o Imprimir Cotas'
    Visible = False
    Items.Strings = (
      'N'#227'o Imprimir Cotas'
      'Imprimir Cotas Valores'
      'Imprimir Cotas Quantidades')
  end
  object ST_TIPOPFOR: TStaticText
    Left = 525
    Top = 257
    Width = 103
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Tipo de Pedido'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
  object CLB_TIPOPFOR: TCheckListBox
    Left = 526
    Top = 276
    Width = 102
    Height = 78
    Color = 16776176
    Columns = 1
    Ctl3D = False
    ItemHeight = 18
    Items.Strings = (
      'Normal'
      'Bonificacao'
      'Complementar'
      'Todos')
    ParentCtl3D = False
    Style = lbOwnerDrawFixed
    TabOrder = 12
    Visible = False
    OnClick = CLB_TIPOPFORClick
  end
  object StaticText1: TStaticText
    Left = 630
    Top = 257
    Width = 103
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Produto/Servi'#231'os'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 16
    Visible = False
  end
  object CLB_PRODSERV: TCheckListBox
    Left = 631
    Top = 276
    Width = 102
    Height = 57
    Color = 16776176
    Columns = 1
    Ctl3D = False
    ItemHeight = 18
    Items.Strings = (
      'Produtos'
      'Servicos'
      'Todos')
    ParentCtl3D = False
    Style = lbOwnerDrawFixed
    TabOrder = 13
    Visible = False
    OnClick = CLB_PRODSERVClick
  end
  object Qr_For: TQuery
    OnCalcFields = Qr_ForCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select FRAZAO AS NOME,FRAZAO AS GRUPO,'
      
        'P2CODFAB AS CODIGO,P2CODFAB AS CODVEN,sum(P2TOTLIQ-P2DESCRAT) as' +
        ' totvlr,'
      'sum(P2TOTLIQ-P2DESCRAT) as totqtd,'
      'sum(P2ICMSR) as ICMSR '
      ',SUM(p2icmsr) AS cotames'
      'from CADP01,CADP02,CADFOR where'
      'P1CODEMP=10 and'
      'P2CODEMP=P1CODEMP and'
      'P2LOTSEQ=P1LOTSEQ and'
      'P2CHAVE =P1CHAVE  and'
      'P2ORDEM =P1ORDEM  and'
      'FCODFOR =P2CODFAB'
      'group by FRAZAO,P2CODFAB')
    Left = 464
    Top = 24
    object Qr_ForNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object Qr_ForCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_ForICMSR: TFloatField
      FieldName = 'ICMSR'
    end
    object Qr_ForTOTVLR: TFloatField
      FieldName = 'TOTVLR'
    end
    object Qr_ForTOTQTD: TFloatField
      FieldName = 'TOTQTD'
    end
    object Qr_ForGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
    object Qr_ForCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Qr_Forpercentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percentual'
      Calculated = True
    end
    object Qr_ForCOTAMES: TFloatField
      FieldName = 'COTAMES'
    end
  end
end
