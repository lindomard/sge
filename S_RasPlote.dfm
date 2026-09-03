object Frm_RasPLote: TFrm_RasPLote
  Left = 259
  Top = 191
  Width = 501
  Height = 358
  Caption = 'Rastrear Produtos Por Lote'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 493
    Height = 327
    ActivePage = tsFiltro
    Align = alClient
    TabOrder = 0
    object TsRel: TTabSheet
      Caption = 'Relatorio'
      object Label1: TLabel
        Left = 15
        Top = 9
        Width = 50
        Height = 13
        Caption = 'Per'#237'odo:'
      end
      object Label2: TLabel
        Left = 191
        Top = 8
        Width = 8
        Height = 13
        Caption = #224
      end
      object Label4: TLabel
        Left = 15
        Top = 57
        Width = 44
        Height = 13
        Caption = 'Cliente:'
      end
      object Label5: TLabel
        Left = 15
        Top = 104
        Width = 78
        Height = 13
        Caption = 'Lote Produto:'
      end
      object Label6: TLabel
        Left = 282
        Top = 101
        Width = 151
        Height = 13
        Caption = 'Em Branco Procura todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 15
        Top = 126
        Width = 66
        Height = 13
        Caption = 'Data Vcto.:'
      end
      object Label8: TLabel
        Left = 189
        Top = 123
        Width = 151
        Height = 13
        Caption = 'Em Branco Procura todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 78
        Width = 49
        Height = 13
        Caption = 'Produto:'
      end
      object Label3: TLabel
        Left = 15
        Top = 32
        Width = 73
        Height = 13
        Caption = 'Fornecedor.:'
      end
      object Label10: TLabel
        Left = 294
        Top = 6
        Width = 61
        Height = 13
        Caption = 'Tipo Data:'
      end
      object MDT1: TMaskEdit
        Left = 100
        Top = 4
        Width = 79
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object MDT2: TMaskEdit
        Left = 211
        Top = 4
        Width = 80
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object NOMCLI: TEdit
        Left = 184
        Top = 51
        Width = 280
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 2
        Text = 'Todos...'
      end
      object CODCLI: TEdit
        Left = 100
        Top = 52
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object LOTE: TEdit
        Left = 100
        Top = 98
        Width = 179
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = LOTEKeyPress
      end
      object MDTVCTO: TMaskEdit
        Left = 100
        Top = 120
        Width = 79
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
        Text = '  /  /    '
      end
      object RG_ORIGEM: TRadioGroup
        Left = 16
        Top = 146
        Width = 446
        Height = 35
        Caption = 'Tipo do Relat'#243'rio:'
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          '&Origem'
          '&Destino'
          '&Ambas')
        TabOrder = 6
      end
      object CB_PEDPEN: TCheckBox
        Left = 17
        Top = 185
        Width = 472
        Height = 17
        Caption = 
          'Rastrear Tamb'#233'm os Pedidos que ja foram digitados e ainda n'#227'o em' +
          'itiu nota'
        TabOrder = 7
      end
      object bbImprimir: TBitBtn
        Left = 0
        Top = 263
        Width = 185
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 8
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
        Left = 269
        Top = 263
        Width = 185
        Height = 25
        Caption = '&Sair'
        TabOrder = 9
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
      object CB_AJUSTE: TCheckBox
        Left = 17
        Top = 200
        Width = 472
        Height = 19
        Caption = 'Rastrear Tamb'#233'm no arquivo de Ajuste de Estoque'
        TabOrder = 10
      end
      object NOMPRO: TEdit
        Left = 235
        Top = 74
        Width = 230
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 11
      end
      object CODPRO: TEdit
        Left = 101
        Top = 75
        Width = 131
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object CODFOR: TEdit
        Left = 100
        Top = 27
        Width = 80
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object NOMFOR: TEdit
        Left = 184
        Top = 26
        Width = 280
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 14
        Text = 'Todos...'
      end
      object cb_tipodata: TComboBox
        Left = 357
        Top = 2
        Width = 107
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 15
        Text = 'Pedido'
        Items.Strings = (
          'Pedido'
          'Nota')
      end
      object rg_serie: TRadioGroup
        Left = 92
        Top = 227
        Width = 273
        Height = 29
        Caption = 'Serie das NFS:'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'S'#233'rie 1'
          'S'#233'rie 2'
          'Todos')
        TabOrder = 16
        Visible = False
      end
    end
    object tsFiltro: TTabSheet
      Caption = 'Filtros Inibidos'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 485
        Height = 299
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        OnClickCheck = RG_TIPOPEDClickCheck
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = False
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
      end
    end
  end
  object Qr_Ent: TQuery
    OnCalcFields = Qr_EntCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1DATAP AS DATA,P1CHAVE AS CHAVE,'
      '       P1ORDEM AS ORDEM,'
      '       ,P1FILIAL AS LOCARMAZEN'
      '       '#39'CL'#39' AS FORCLI,'
      '       P1CODCLI AS CODIGO,'
      '       P1NUMNF AS NUMNF,'
      '       P1OBS1  AS MOTIVO,'
      '       P1TIPO  AS TIPO,'
      '       P2CODPRO AS CODPRO,'
      '       P2QTD AS QTD,'
      '       P2LOTE AS LOTE,'
      '       P2DTVCTO AS DTVCTO'
      '       from CADP01,CADP02 where P1TIPO=8 and P1STATUS <8 and'
      '       P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM')
    Left = 376
    Top = 97
    object Qr_EntDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Qr_EntCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_EntORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_EntFORCLI: TStringField
      FieldName = 'FORCLI'
      FixedChar = True
      Size = 2
    end
    object Qr_EntCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object Qr_EntNUMNF: TFloatField
      FieldName = 'NUMNF'
    end
    object Qr_EntCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_EntQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_EntLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_EntDTVCTO: TDateTimeField
      FieldName = 'DTVCTO'
    end
    object Qr_EntTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object Qr_Entnomsac: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomsac'
      Size = 40
      Calculated = True
    end
    object Qr_Enttipo_mov: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_mov'
      Calculated = True
    end
    object Qr_Entdatavenc: TStringField
      FieldKind = fkCalculated
      FieldName = 'datavenc'
      Size = 8
      Calculated = True
    end
    object Qr_Entchavereg: TStringField
      FieldKind = fkCalculated
      FieldName = 'chavereg'
      Size = 10
      Calculated = True
    end
    object Qr_EntMOTIVO: TMemoField
      FieldName = 'MOTIVO'
      BlobType = ftMemo
      Size = 1000
    end
    object Qr_EntLOCARMAZEN: TFloatField
      FieldName = 'LOCARMAZEN'
    end
  end
end
