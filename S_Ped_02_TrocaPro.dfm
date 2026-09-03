object Frm_Ped_02_TrocaPro: TFrm_Ped_02_TrocaPro
  Left = 13
  Top = 114
  Width = 779
  Height = 367
  Caption = 'Substituir Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GB_PRODFAT: TGroupBox
    Left = 0
    Top = 0
    Width = 771
    Height = 65
    Align = alTop
    Caption = 'Produto Faturado:'
    Color = 12320699
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object st_codpro: TStaticText
      Left = 4
      Top = 18
      Width = 60
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo'
      Color = 16755370
      ParentColor = False
      TabOrder = 0
    end
    object st_descricao: TStaticText
      Left = 63
      Top = 18
      Width = 300
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o do Produto'
      Color = 16755370
      ParentColor = False
      TabOrder = 1
    end
    object st_quantidade: TStaticText
      Left = 445
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
      Color = 16755370
      ParentColor = False
      TabOrder = 2
    end
    object st_pcounit: TStaticText
      Left = 528
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Unit'#225'rio'
      Color = 16755370
      ParentColor = False
      TabOrder = 3
    end
    object st_vltotal: TStaticText
      Left = 611
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Valor Total'
      Color = 16755370
      ParentColor = False
      TabOrder = 4
    end
    object txt_codpro: TStaticText
      Left = 4
      Top = 34
      Width = 60
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 5
    end
    object txt_descricao: TStaticText
      Left = 63
      Top = 34
      Width = 300
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 6
    end
    object txt_quantidade: TStaticText
      Left = 445
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 8
    end
    object txt_pcounit: TStaticText
      Left = 528
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 9
    end
    object txt_vltotal: TStaticText
      Left = 611
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 10
    end
    object txt_lote: TStaticText
      Left = 362
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 7
    end
    object st_lote: TStaticText
      Left = 362
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      Color = 16755370
      ParentColor = False
      TabOrder = 11
    end
    object txt_dtvcto: TStaticText
      Left = 682
      Top = 34
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 12
      Visible = False
    end
  end
  object gb_enviadas: TGroupBox
    Left = 0
    Top = 65
    Width = 771
    Height = 268
    Align = alClient
    Caption = 'Mercadorias a Serem Enviadas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object stEnv_codpro: TStaticText
      Left = 4
      Top = 18
      Width = 60
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo'
      TabOrder = 0
    end
    object stEnv_descricao: TStaticText
      Left = 63
      Top = 18
      Width = 300
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o do Produto'
      TabOrder = 1
    end
    object stEnv_quantidade: TStaticText
      Left = 445
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
      TabOrder = 2
    end
    object stEnv_pcounit: TStaticText
      Left = 528
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Pre'#231'o Unit'#225'rio'
      TabOrder = 3
    end
    object stEnv_vltotal: TStaticText
      Left = 611
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Valor Total'
      TabOrder = 4
    end
    object TxtEnv_codpro: TEdit
      Left = 4
      Top = 34
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = TxtEnv_codproExit
      OnKeyPress = TxtEnv_codproKeyPress
    end
    object TxtEnv_descricao: TEdit
      Left = 63
      Top = 34
      Width = 300
      Height = 19
      TabStop = False
      Color = 12697856
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object TxtEnv_quantidade: TCurrencyEdit
      Left = 445
      Top = 34
      Width = 84
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Ctl3D = False
      DecimalPlaces = 0
      ParentCtl3D = False
      TabOrder = 9
      OnExit = TxtEnv_quantidadeExit
    end
    object TxtEnv_pcounit: TCurrencyEdit
      Left = 528
      Top = 34
      Width = 84
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Color = 12697856
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 10
      OnExit = TxtEnv_pcounitExit
    end
    object TxtEnv_vltotal: TCurrencyEdit
      Left = 611
      Top = 34
      Width = 84
      Height = 19
      AutoSize = False
      CheckOnExit = True
      Color = 12697856
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBGrid_trocas: TDBGrid
      Left = 2
      Top = 15
      Width = 767
      Height = 206
      Align = alClient
      Ctl3D = False
      DataSource = src_cadp02_trocas
      Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      PopupMenu = pop_gridtrocas
      ReadOnly = True
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid_trocasDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'P2TRO_CODPRO_SAIDA'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMPRO_SAIDA'
          Width = 298
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_LOTE_SAIDA'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_QTD_SAIDA'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TRO_PCOUNI_SAIDA'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vltotal_saida'
          Width = 82
          Visible = True
        end>
    end
    object gb_totais: TGroupBox
      Left = 2
      Top = 221
      Width = 767
      Height = 45
      Align = alBottom
      Caption = 'Totais:'
      TabOrder = 14
      object Label1: TLabel
        Left = 10
        Top = 19
        Width = 123
        Height = 13
        Caption = 'N'#250'mero Itens Trocas:'
      end
      object txtSai_QtdItens: TEdit
        Left = 138
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'txtSai_QtdItens'
      end
      object txtSai_TotBru: TEdit
        Left = 314
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'txtSai_QtdItens'
      end
      object BitBtn1: TBitBtn
        Left = 464
        Top = 8
        Width = 75
        Height = 25
        Caption = 'dESATIva'
        TabOrder = 2
        Visible = False
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 536
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Ativa'
        TabOrder = 3
        Visible = False
        OnClick = BitBtn2Click
      end
      object bbSair: TBitBtn
        Left = 656
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Sair'
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
    object stEnv_Lote: TStaticText
      Left = 362
      Top = 18
      Width = 84
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      TabOrder = 7
    end
    object TxtEnv_Lote: TEdit
      Left = 362
      Top = 34
      Width = 84
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = TxtEnv_LoteExit
      OnKeyDown = TxtEnv_LoteKeyDown
    end
    object bbGravarItem: TBitBtn
      Left = 608
      Top = 120
      Width = 75
      Height = 25
      Caption = 'bbGravarItem'
      TabOrder = 12
      Visible = False
      OnClick = bbGravarItemClick
    end
    object txtEnv_dtvcto: TMaskEdit
      Left = 697
      Top = 29
      Width = 52
      Height = 19
      TabStop = False
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
      Text = '  /  /    '
      Visible = False
    end
  end
  object mem_cadp02_trocas: TRxMemoryData
    FieldDefs = <
      item
        Name = 'P2TRO_CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_CODPRO_ENTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_QTD_ENTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_CODPRO_SAIDA'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_QTD_SAIDA'
        DataType = ftFloat
      end
      item
        Name = 'NOMPRO_ENTRA'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'NOMPRO_SAIDA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vltotal_entra'
        DataType = ftFloat
      end
      item
        Name = 'vltotal_saida'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_PCOUNI_ENTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_PCOUNI_SAIDA'
        DataType = ftFloat
      end
      item
        Name = 'P2TRO_LOTE_ENTRA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2TRO_LOTE_SAIDA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2TRO_DTVCTO_ENTRA'
        DataType = ftDateTime
      end
      item
        Name = 'P2TRO_DTVCTO_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'P2TRO_LOCAL'
        DataType = ftInteger
      end>
    OnFilterRecord = mem_cadp02_trocasFilterRecord
    Left = 624
    Top = 73
    object mem_cadp02_trocasP2TRO_CODEMP: TFloatField
      FieldName = 'P2TRO_CODEMP'
    end
    object mem_cadp02_trocasP2TRO_ITEM: TFloatField
      FieldName = 'P2TRO_ITEM'
    end
    object mem_cadp02_trocasP2TRO_CODPRO_ENTRA: TFloatField
      FieldName = 'P2TRO_CODPRO_ENTRA'
    end
    object mem_cadp02_trocasP2TRO_QTD_ENTRA: TFloatField
      FieldName = 'P2TRO_QTD_ENTRA'
    end
    object mem_cadp02_trocasP2TRO_CODPRO_SAIDA: TFloatField
      FieldName = 'P2TRO_CODPRO_SAIDA'
    end
    object mem_cadp02_trocasP2TRO_QTD_SAIDA: TFloatField
      FieldName = 'P2TRO_QTD_SAIDA'
    end
    object mem_cadp02_trocasNOMPRO_ENTRA: TStringField
      FieldName = 'NOMPRO_ENTRA'
      Size = 53
    end
    object mem_cadp02_trocasNOMPRO_SAIDA: TStringField
      FieldName = 'NOMPRO_SAIDA'
      Size = 50
    end
    object mem_cadp02_trocasvltotal_entra: TFloatField
      FieldName = 'vltotal_entra'
    end
    object mem_cadp02_trocasvltotal_saida: TFloatField
      FieldName = 'vltotal_saida'
    end
    object mem_cadp02_trocasP2TRO_PCOUNI_ENTRA: TFloatField
      FieldName = 'P2TRO_PCOUNI_ENTRA'
    end
    object mem_cadp02_trocasP2TRO_PCOUNI_SAIDA: TFloatField
      FieldName = 'P2TRO_PCOUNI_SAIDA'
    end
    object mem_cadp02_trocasP2TRO_LOTE_ENTRA: TStringField
      FieldName = 'P2TRO_LOTE_ENTRA'
    end
    object mem_cadp02_trocasP2TRO_LOTE_SAIDA: TStringField
      FieldName = 'P2TRO_LOTE_SAIDA'
    end
    object mem_cadp02_trocasP2TRO_DTVCTO_ENTRA: TDateTimeField
      FieldName = 'P2TRO_DTVCTO_ENTRA'
    end
    object mem_cadp02_trocasP2TRO_DTVCTO_SAIDA: TDateTimeField
      FieldName = 'P2TRO_DTVCTO_SAIDA'
    end
    object mem_cadp02_trocasP2TRO_LOCAL: TIntegerField
      FieldName = 'P2TRO_LOCAL'
    end
  end
  object src_cadp02_trocas: TDataSource
    DataSet = mem_cadp02_trocas
    Left = 696
    Top = 81
  end
  object pop_gridtrocas: TPopupMenu
    Left = 543
    Top = 177
    object ExcluirTrocas: TMenuItem
      Caption = 'Exluir Saidas'
      OnClick = ExcluirTrocasClick
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 280
    Top = 177
  end
end
