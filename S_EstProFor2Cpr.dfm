object Frm_EstProFor2Cpr: TFrm_EstProFor2Cpr
  Left = 407
  Top = 139
  Width = 688
  Height = 365
  Caption = 'Estoque de Produtos por Fornecedor com as Ultimas Compras'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 680
    Height = 334
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label5: TLabel
        Left = 50
        Top = 13
        Width = 60
        Height = 13
        Caption = 'Fornecedor.:'
      end
      object Label1: TLabel
        Left = 74
        Top = 52
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object Label15: TLabel
        Left = 534
        Top = 24
        Width = 133
        Height = 13
        Alignment = taCenter
        AutoSize = False
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
      object Label6: TLabel
        Left = 177
        Top = 224
        Width = 215
        Height = 13
        Caption = 'N'#250'mero de Casas Decimais para Quantidade:'
      end
      object Label14: TLabel
        Left = 534
        Top = 96
        Width = 132
        Height = 13
        Alignment = taCenter
        AutoSize = False
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
      object Label12: TLabel
        Left = 75
        Top = 94
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object Label8: TLabel
        Left = 39
        Top = 134
        Width = 77
        Height = 13
        Caption = 'Grupo Produtos:'
      end
      object Label9: TLabel
        Left = 28
        Top = 173
        Width = 87
        Height = 13
        Caption = 'Ramo/Sub-Grupo:'
      end
      object CODFOR: TEdit
        Left = 118
        Top = 10
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 179
        Top = 10
        Width = 351
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 118
        Top = 32
        Width = 53
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODPRO: TEdit
        Left = 118
        Top = 52
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 179
        Top = 51
        Width = 351
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 118
        Top = 73
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CLBEstoque: TCheckListBox
        Left = 534
        Top = 39
        Width = 133
        Height = 55
        Color = 16776176
        Columns = 1
        Ctl3D = False
        ItemHeight = 13
        Items.Strings = (
          'c/Estoque'
          's/Estoque'
          'Estoque Negativo'
          'Todos')
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 6
        OnClick = CLBEstoqueClick
      end
      object CB_QDEC_QTD: TComboBox
        Left = 399
        Top = 217
        Width = 37
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 7
        Text = '0'
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object CLBStatus: TCheckListBox
        Left = 535
        Top = 110
        Width = 131
        Height = 80
        Color = 16776176
        Columns = 2
        Ctl3D = False
        IntegralHeight = True
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
        ParentCtl3D = False
        Style = lbOwnerDrawFixed
        TabOrder = 8
        OnClick = CLBStatusClick
      end
      object MARCA: TEdit
        Left = 118
        Top = 92
        Width = 140
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = MARCAExit
      end
      object lbx_marca: TListBox
        Left = 253
        Top = 92
        Width = 277
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_marcaKeyDown
      end
      object OMITIR_MAR: TCheckBox
        Left = 118
        Top = 114
        Width = 58
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object CODGRU: TEdit
        Left = 118
        Top = 133
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_codgru: TListBox
        Left = 179
        Top = 133
        Width = 351
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codgruKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 118
        Top = 157
        Width = 56
        Height = 14
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object CODRAM: TEdit
        Left = 118
        Top = 174
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = CODRAMExit
        OnKeyPress = CODRAMKeyPress
      end
      object lbx_codram: TListBox
        Left = 179
        Top = 174
        Width = 351
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_codramKeyDown
      end
      object OMITIR_RAM: TCheckBox
        Left = 118
        Top = 198
        Width = 56
        Height = 13
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object bbImprimir: TBitBtn
        Left = 438
        Top = 278
        Width = 110
        Height = 26
        Cursor = crHandPoint
        Caption = '&Imprimir'
        TabOrder = 19
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
        Left = 554
        Top = 278
        Width = 110
        Height = 26
        Cursor = crHandPoint
        Caption = '&Sair'
        TabOrder = 20
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
      object CB_AVANCPAG: TCheckBox
        Left = 180
        Top = 241
        Width = 357
        Height = 17
        Caption = 'Avancar Pagina ao trocar fornecedor'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 18
      end
    end
    object tsMaster: TTabSheet
      Caption = 'Configura'#231#227'o Master'
      ImageIndex = 1
      object Label2: TLabel
        Left = 40
        Top = 32
        Width = 138
        Height = 13
        Caption = 'N'#250'mero Maximo de Compras:'
      end
      object edt_qtdcompras: TSpinEdit
        Left = 184
        Top = 24
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 2
      end
    end
  end
  object Qr_ProFor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select '
      'PDCODPRO,PDNOME'
      ',PDUND,PDSALDO,FRAZAO'
      ',CODFOR,'
      'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
      ',CGC'
      ''
      ',max(ITEM) as ITEM'
      ',MAX(DTULTCPR)  as DTULTCPR'
      ',max(QTDULTCPR) as QTDULTCPR'
      ',max(PCOULTCPR) as PCOULTCPR'
      ''
      ',max(DTPENULTCPR) AS DTPENULTCPR'
      ',max(QTDPENULTCPR) AS QTDPENULTCPR'
      ',max(PCOPENULTCPR) AS PCOPENULTCPR'
      ''
      'from'
      ' ('
      ''
      ''
      'SELECT * FROM ('
      'Select PDCODPRO,PDNOME,PDUND,PDSALDO,FRAZAO'
      ',PF1CODFOR  as CODFOR,'
      'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
      ',FCGC AS CGC'
      ''
      
        ',ROW_NUMBER() OVER (PARTITION BY PF1CODFOR,PDCODPRO ORDER BY PF1' +
        'CODFOR,PDCODPRO) AS ITEM '
      ',PF1DATAENT AS DTULTCPR'
      ',PF2QTDP AS QTDULTCPR'
      ',PF2PU AS PCOULTCPR'
      ''
      ',null AS DTPENULTCPR'
      ',0 AS QTDPENULTCPR'
      ',0 AS PCOPENULTCPR'
      ''
      ''
      ' from CADPF1,CADPF2'
      ',CADPRO,CADFOR where '
      ' PF2CHAVE=PF1CHAVE'
      ' AND PF2LOTSEQ=PF1LOTSEQ'
      ' AND PF2CODEMP=PF1CODEMP'
      ' AND PDCODPRO=PF2CODPRO'
      ' AND FCODFOR=PF1CODFOR'
      ' ORDER BY PF1CODFOR,PDCODPRO'
      ') WHERE ITEM=1'
      'union'
      'SELECT * FROM ('
      'Select PDCODPRO,PDNOME,PDUND,PDSALDO,FRAZAO'
      ',PF1CODFOR  as CODFOR,'
      'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
      ',FCGC AS CGC'
      ''
      
        ',ROW_NUMBER() OVER (PARTITION BY PF1CODFOR,PDCODPRO ORDER BY PF1' +
        'CODFOR,PDCODPRO) AS ITEM '
      ',null AS DTULTCPR'
      ',0 AS QTDULTCPR'
      ',0 AS PCOULTCPR'
      ''
      ',PF1DATAENT AS DTPENULTCPR'
      ',PF2QTDP AS QTDPENULTCPR'
      ',PF2PU  AS PCOPENULTCPR'
      ''
      ''
      ' from CADPF1,CADPF2'
      ',CADPRO,CADFOR where '
      ' PF2CHAVE=PF1CHAVE'
      ' AND PF2LOTSEQ=PF1LOTSEQ'
      ' AND PF2CODEMP=PF1CODEMP'
      ' AND PDCODPRO=PF2CODPRO'
      ' AND FCODFOR=PF1CODFOR'
      ' ORDER BY PF1CODFOR,PDCODPRO'
      ') WHERE ITEM=2'
      ')'
      'group by '
      'PDCODPRO,PDNOME'
      ',PDUND,PDSALDO,FRAZAO'
      ',CODFOR,'
      'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
      ',CGC')
    Left = 464
    Top = 8
    object Qr_ProForPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
    end
    object Qr_ProForPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Qr_ProForPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_ProForPDSALDO: TFloatField
      FieldName = 'PDSALDO'
    end
    object Qr_ProForFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 60
    end
    object Qr_ProForCODFOR: TFloatField
      FieldName = 'CODFOR'
    end
    object Qr_ProForFEMAIL: TStringField
      FieldName = 'FEMAIL'
      Size = 35
    end
    object Qr_ProForFCGC: TStringField
      FieldName = 'FCGC'
    end
    object Qr_ProForFFONE: TStringField
      FieldName = 'FFONE'
      Size = 18
    end
    object Qr_ProForFFAX: TStringField
      FieldName = 'FFAX'
      Size = 18
    end
    object Qr_ProForFCONT01: TStringField
      FieldName = 'FCONT01'
      Size = 40
    end
    object Qr_ProForFFONEC01: TStringField
      FieldName = 'FFONEC01'
      Size = 18
    end
    object Qr_ProForFCIDADE: TStringField
      FieldName = 'FCIDADE'
      Size = 30
    end
    object Qr_ProForFUF: TStringField
      FieldName = 'FUF'
      Size = 2
    end
    object Qr_ProForCGC: TStringField
      FieldName = 'CGC'
    end
    object Qr_ProForDTULTCPR: TDateTimeField
      FieldName = 'DTULTCPR'
    end
    object Qr_ProForQTDULTCPR: TFloatField
      FieldName = 'QTDULTCPR'
    end
    object Qr_ProForPCOULTCPR: TFloatField
      FieldName = 'PCOULTCPR'
    end
    object Qr_ProForDTPENULTCPR: TDateTimeField
      FieldName = 'DTPENULTCPR'
    end
    object Qr_ProForQTDPENULTCPR: TFloatField
      FieldName = 'QTDPENULTCPR'
    end
    object Qr_ProForPCOPENULTCPR: TFloatField
      FieldName = 'PCOPENULTCPR'
    end
    object Qr_ProForITEM: TFloatField
      FieldName = 'ITEM'
    end
  end
end
