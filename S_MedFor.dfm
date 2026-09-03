object Frm_MedFor: TFrm_MedFor
  Left = 181
  Top = 155
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'M'#233'dia de Vendas de Fornecedores'
  ClientHeight = 334
  ClientWidth = 700
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 212
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
    Top = 212
    Width = 26
    Height = 13
    Caption = 'ano:'
  end
  object Label3: TLabel
    Left = 414
    Top = 208
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
  object MES: TEdit
    Left = 139
    Top = 208
    Width = 36
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object ANO: TEdit
    Left = 226
    Top = 209
    Width = 83
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object bbImprimir: TBitBtn
    Left = 474
    Top = 305
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Imprimir'
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
    Left = 588
    Top = 305
    Width = 110
    Height = 26
    Cursor = crHandPoint
    Caption = '&Sair'
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
  object RG_ORDEM: TRadioGroup
    Left = 7
    Top = 238
    Width = 298
    Height = 51
    Caption = 'Ordem do Relat'#243'rio:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome &Fornecedor'
      '&C'#243'digo Fornecedor'
      'To&tais Crescente'
      'Totai&s Decrescente')
    TabOrder = 2
  end
  object CB_EmiDoc: TCheckBox
    Left = 323
    Top = 244
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object CB_FORCAR: TCheckBox
    Left = 322
    Top = 226
    Width = 215
    Height = 17
    Caption = 'For'#231'ar todos Registros'
    TabOrder = 4
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 700
    Height = 188
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 6
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label5: TLabel
        Left = 22
        Top = 2
        Width = 111
        Height = 13
        Caption = 'C'#243'digo do Fornecedor.:'
      end
      object CODFOR: TEdit
        Left = 139
        Top = 1
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object OMITIR_FOR: TCheckBox
        Left = 141
        Top = 24
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnMouseMove = OMITIR_FORMouseMove
      end
      object lbx_codfor: TListBox
        Left = 200
        Top = 1
        Width = 445
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codforKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipo de Pedido'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 673
        Height = 180
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 3
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
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
  object CB_ICMSRET: TCheckBox
    Left = 324
    Top = 263
    Width = 207
    Height = 17
    Caption = 'Incluir Tambem o Icms Retido'
    TabOrder = 5
  end
  object CB_TIPOPESQ: TComboBox
    Left = 496
    Top = 206
    Width = 132
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Data da Nota'
    Items.Strings = (
      'Data da Nota'
      'Data do Pedido')
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select FRAZAO AS NOME,PDCODFOR AS CODIGO,sum(decode(to_char(p1da' +
        'tanf, '#39'yyyymm'#39'),'#39'200301'#39',(P2TOTLIQ-P2DESCRAT) ,0)) as venmes01,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200302'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes02,'
      
        '                sum(decode(to_char(p1datanf, '#39'yyyymm'#39'),'#39'200303'#39',' +
        '(P2TOTLIQ-P2DESCRAT),0)) as venmes03'
      'from CADP01,CADP02,CADPRO,CADFOR'
      'where P1CODEMP is null'
      'and P2CODEMP=P1CODEMP'
      'and P2CHAVE =P1CHAVE'
      'and P2ORDEM =P1ORDEM'
      'and PDCODEMP=P2CODEMP'
      'and PDCODPRO=P2CODPRO'
      'and FCODEMP =PDCODEMP'
      'and FCODFOR =PDCODFOR'
      'group by FRAZAO,PDCODFOR')
    Left = 616
    Top = 8
    object Qr_VenNOME: TStringField
      FieldName = 'NOME'
      Size = 40
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
