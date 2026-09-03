object Frm_Pro_Transf_Filial: TFrm_Pro_Transf_Filial
  Left = 192
  Top = 116
  Width = 947
  Height = 412
  ActiveControl = edt_codpro
  Caption = 'Transferencia entre filiais(Locais de Armazenagem)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 939
    Height = 167
    Align = alClient
    Caption = 'Ultimos '#205'tens Transferidos:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 935
      Height = 150
      Align = alClient
      DataSource = src_cadpro_transf
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ce_codpro'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ce_nompro'
          Title.Alignment = taCenter
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ce_filial_ent_nome'
          Title.Alignment = taCenter
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ce_filial_sai_nome'
          Title.Alignment = taCenter
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ce_lote'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ce_qtd'
          Title.Alignment = taCenter
          Width = 98
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 318
    Width = 939
    Height = 63
    Align = alBottom
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 4
      Top = 1
      Width = 97
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'C'#243'digo'
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 99
      Top = 1
      Width = 332
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Descri'#231#227'o do Produto'
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 429
      Top = 1
      Width = 130
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Filial Saida'
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 558
      Top = 1
      Width = 130
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Filial Entrada'
      TabOrder = 3
    end
    object st_lote: TStaticText
      Left = 687
      Top = 1
      Width = 91
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote'
      TabOrder = 4
    end
    object StaticText6: TStaticText
      Left = 776
      Top = 1
      Width = 97
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
      TabOrder = 5
    end
    object edt_codpro: TEdit
      Left = 4
      Top = 17
      Width = 97
      Height = 19
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edt_codproExit
      OnKeyDown = edt_codproKeyDown
      OnKeyPress = edt_codproKeyPress
    end
    object edt_descricao: TEdit
      Left = 99
      Top = 17
      Width = 332
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 16770790
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object edt_filial_saida: TEdit
      Left = 429
      Top = 17
      Width = 33
      Height = 19
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = edt_filial_saidaExit
    end
    object edt_filial_entrada: TEdit
      Left = 558
      Top = 17
      Width = 33
      Height = 19
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnExit = edt_filial_entradaExit
    end
    object edt_lote: TEdit
      Left = 687
      Top = 17
      Width = 91
      Height = 19
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
    end
    object edt_qtd: TEdit
      Left = 776
      Top = 17
      Width = 97
      Height = 19
      AutoSize = False
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnExit = edt_qtdExit
    end
    object SAIR: TBitBtn
      Left = 583
      Top = 37
      Width = 150
      Height = 25
      Hint = 'fecha esta janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = SAIRClick
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
    object edt_nome_filial_saida: TEdit
      Left = 461
      Top = 17
      Width = 98
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 16770790
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
    end
    object edt_nome_filial_entrada: TEdit
      Left = 590
      Top = 17
      Width = 98
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 16770790
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 15
    end
    object bbGravar: TBitBtn
      Left = 873
      Top = 0
      Width = 54
      Height = 36
      Caption = 'Efetivar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = bbGravarClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object gb_lotes: TGroupBox
    Left = 0
    Top = 167
    Width = 939
    Height = 136
    Align = alBottom
    Caption = 'Lotes Existentes:'
    TabOrder = 2
    object DBGrid_lotes: TDBGrid
      Left = 2
      Top = 15
      Width = 935
      Height = 119
      Align = alClient
      DataSource = DM1.Src_LGC
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid_lotesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLNUMERO'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLDTVCTO'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLQTD'
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLFILIAL'
          Visible = True
        end>
    end
  end
  object st_estpro: TStaticText
    Left = 0
    Top = 303
    Width = 939
    Height = 15
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Estoque Atual do Produto:'
    Color = 16744448
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
  end
  object mem_cadpro_transf: TRxMemoryData
    FieldDefs = <>
    Left = 640
    Top = 120
    object mem_cadpro_transfce_codemp: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'ce_codemp'
    end
    object mem_cadpro_transfce_nompro: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'ce_nompro'
      Size = 63
    end
    object mem_cadpro_transfce_filial_ent: TIntegerField
      DisplayLabel = 'Cod.Filial Entra'
      FieldName = 'ce_filial_ent'
    end
    object mem_cadpro_transfce_filial_saida: TIntegerField
      DisplayLabel = 'C'#243'd.Filial Saida'
      FieldName = 'ce_filial_saida'
    end
    object mem_cadpro_transfce_lote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'ce_lote'
    end
    object mem_cadpro_transfce_qtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ce_qtd'
    end
    object mem_cadpro_transfce_filial_ent_nome: TStringField
      DisplayLabel = 'Filial Entra'
      FieldName = 'ce_filial_ent_nome'
      Size = 40
    end
    object mem_cadpro_transfce_filial_sai_nome: TStringField
      DisplayLabel = 'Filial Saida'
      FieldName = 'ce_filial_sai_nome'
      Size = 40
    end
    object mem_cadpro_transfce_codpro: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ce_codpro'
    end
  end
  object src_cadpro_transf: TDataSource
    DataSet = mem_cadpro_transf
    Left = 672
    Top = 120
  end
end
