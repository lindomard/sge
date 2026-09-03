object Frm_MedTPro: TFrm_MedTPro
  Left = 0
  Top = 25
  Width = 800
  Height = 513
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'M'#233'dia de Vendas por Tipo de Produtos'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 475
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object Label1: TLabel
        Left = 40
        Top = 7
        Width = 97
        Height = 13
        Caption = 'Referencia m'#234's.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 192
        Top = 7
        Width = 26
        Height = 13
        Caption = 'ano:'
      end
      object Label5: TLabel
        Left = 3
        Top = 67
        Width = 53
        Height = 13
        Caption = 'C'#243'd. For.'
      end
      object Label3: TLabel
        Left = 1
        Top = 21
        Width = 95
        Height = 13
        Caption = 'C'#243'd. Produto....:'
      end
      object Label11: TLabel
        Left = 1
        Top = 172
        Width = 74
        Height = 13
        Caption = 'Tipo Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 0
        Top = 203
        Width = 69
        Height = 13
        Caption = 'Tipo Pedido'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 561
        Top = 17
        Width = 103
        Height = 13
        Alignment = taCenter
        Caption = 'Status do Produto'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 565
        Top = 85
        Width = 75
        Height = 13
        Alignment = taCenter
        Caption = 'E s t o q u e '
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = -1
        Top = 112
        Width = 78
        Height = 13
        Caption = 'Tipo Produto:'
      end
      object RG_ORDEM: TRadioGroup
        Left = 4
        Top = 402
        Width = 305
        Height = 55
        Caption = 'Ordem do Relat'#243'rio:'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Nome do &Tipo'
          '&C'#243'digo do Tipo')
        TabOrder = 15
      end
      object MES: TEdit
        Left = 142
        Top = 3
        Width = 36
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object ANO: TEdit
        Left = 226
        Top = 3
        Width = 83
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object bbImprimir: TBitBtn
        Left = 538
        Top = 419
        Width = 123
        Height = 27
        Caption = '&Imprimir'
        TabOrder = 16
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
        Left = 662
        Top = 419
        Width = 123
        Height = 27
        Caption = '&Sair'
        TabOrder = 17
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
      object CLBNivel: TCheckListBox
        Left = 77
        Top = 156
        Width = 720
        Height = 45
        Color = 16776176
        Columns = 3
        ItemHeight = 13
        Items.Strings = (
          'Acabado'
          'Servi'#231'o'
          'Mat'#233'ria Prima Revenda'
          'Produto em Produ'#231'ao'
          'Mat'#233'ria Prima'
          'Insumos'
          'Acessorios'
          'Outros'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 13
        OnClick = CLBNivelClick
      end
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 216
        Width = 798
        Height = 182
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
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
        TabOrder = 14
        OnClick = RG_TIPOPEDClick
        OnExit = RG_TIPOPEDExit
      end
      object lbx_codfor: TListBox
        Left = 76
        Top = 66
        Width = 407
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codforKeyDown
      end
      object CODFOR: TEdit
        Left = 1
        Top = 84
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 486
        Top = 81
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnMouseMove = OMITIR_FORMouseMove
      end
      object OMITIR_PRO: TCheckBox
        Left = 486
        Top = 36
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnMouseMove = OMITIR_PROMouseMove
      end
      object CODPRO: TEdit
        Left = 1
        Top = 40
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
        OnMouseMove = CODPROMouseMove
      end
      object lbx_codpro: TListBox
        Left = 76
        Top = 22
        Width = 407
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codproKeyDown
      end
      object CLBStatus: TCheckListBox
        Left = 560
        Top = 30
        Width = 239
        Height = 47
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Ativos'
          'Bloqueados'
          'Inativos'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 11
        OnClick = CLBStatusClick
      end
      object CLBEstoque: TCheckListBox
        Left = 560
        Top = 99
        Width = 239
        Height = 46
        Color = 16776176
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 12
        OnClick = CLBEstoqueClick
      end
      object CODTIP: TEdit
        Left = 1
        Top = 129
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnExit = CODTIPExit
        OnKeyPress = CODTIPKeyPress
        OnMouseMove = CODTIPMouseMove
      end
      object lbx_codtip: TListBox
        Left = 76
        Top = 110
        Width = 408
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyDown = lbx_codtipKeyDown
      end
      object OMITIR_TPRO: TCheckBox
        Left = 487
        Top = 128
        Width = 63
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnMouseMove = OMITIR_TPROMouseMove
      end
      object CB_ICMSRET: TCheckBox
        Left = 317
        Top = 402
        Width = 207
        Height = 17
        Caption = 'Incluir Tambem o Icms Retido'
        TabOrder = 18
      end
      object CB_EmiDoc: TCheckBox
        Left = 319
        Top = 420
        Width = 136
        Height = 17
        Caption = 'So Emitidos Notas'
        Checked = True
        State = cbChecked
        TabOrder = 19
      end
      object CB_FORCAR: TCheckBox
        Left = 318
        Top = 434
        Width = 183
        Height = 17
        Caption = 'For'#231'ar todos Registros'
        TabOrder = 20
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros Secundarios'
      ImageIndex = 1
      object Label7: TLabel
        Left = -1
        Top = 92
        Width = 81
        Height = 13
        Caption = 'Tipo Controle:'
      end
      object Label8: TLabel
        Left = 6
        Top = 50
        Width = 35
        Height = 13
        Caption = 'Grupo'
      end
      object Label9: TLabel
        Left = 5
        Top = 135
        Width = 33
        Height = 13
        Caption = 'Ramo'
      end
      object Label6: TLabel
        Left = 5
        Top = 178
        Width = 60
        Height = 13
        Caption = 'Cod. Vend'
      end
      object lbl_codven: TLabel
        Left = 4
        Top = 9
        Width = 70
        Height = 13
        Caption = 'C'#243'd. Estado'
      end
      object CODCON: TEdit
        Left = 2
        Top = 109
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODCONExit
        OnKeyPress = CODCONKeyPress
        OnMouseMove = CODCONMouseMove
      end
      object lbx_codcon: TListBox
        Left = 83
        Top = 96
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codconKeyDown
      end
      object OMITIR_CON: TCheckBox
        Left = 536
        Top = 109
        Width = 64
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnMouseMove = OMITIR_CONMouseMove
      end
      object CODGRU: TEdit
        Left = 3
        Top = 66
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
        OnMouseMove = CODGRUMouseMove
      end
      object OMITIR_GRU: TCheckBox
        Left = 535
        Top = 67
        Width = 63
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_GRUMouseMove
      end
      object lbx_codgru: TListBox
        Left = 83
        Top = 53
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codgruKeyDown
      end
      object CODRAM: TEdit
        Left = 3
        Top = 151
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
        OnMouseMove = CODRAMMouseMove
      end
      object lbx_codram: TListBox
        Left = 83
        Top = 139
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 535
        Top = 154
        Width = 63
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnMouseMove = OMITIR_RAMMouseMove
      end
      object CODVEN: TEdit
        Left = 3
        Top = 194
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
        OnMouseMove = CODVENMouseMove
      end
      object lbx_codven: TListBox
        Left = 83
        Top = 182
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 535
        Top = 197
        Width = 63
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnMouseMove = OMITIR_VENMouseMove
      end
      object CODUF: TEdit
        Left = 3
        Top = 26
        Width = 62
        Height = 19
        Hint = 'Pressione [F3]-P/Consultar'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
        OnMouseMove = CODUFMouseMove
      end
      object lbx_coduf: TListBox
        Left = 83
        Top = 10
        Width = 444
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 535
        Top = 22
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnMouseMove = OMITIR_UFMouseMove
      end
    end
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PNOM AS NOME, CCODEMP AS CODIGO,sum(decode(to_char(p1data' +
        'nf, '#39'yyyymm'#39'),'#39'200301'#39',(P2TOTLIQ-P2DESCRAT) ,0)) as venmes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200302'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes03'
      'from CADP01,CADP02,CADCLI,CADUF'
      'where P1CODEMP is null'
      'and P2CODEMP=P1CODEMP'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and CCODEMP =P1CODEMP'
      'and CCODCLI =P1CODCLI'
      'and PCODEMP =CCODEMP'
      'and PUF     =CUF'
      'group by PNOM,CCODEMP')
    Left = 304
    Top = 40
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
    end
    object Qr_VenCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_VenVENMES01: TFloatField
      FieldName = 'VENMES01'
    end
    object Qr_VenVENMES02: TFloatField
      FieldName = 'VENMES02'
    end
    object Qr_VenVENMES03: TFloatField
      FieldName = 'VENMES03'
    end
  end
end
