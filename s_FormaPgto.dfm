object Frm_FormaPgto: TFrm_FormaPgto
  Left = 233
  Top = 182
  Width = 949
  Height = 309
  Caption = 'Forma de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 71
    Align = alTop
    TabOrder = 0
    object lbl_obs: TLabel
      Left = 1
      Top = 1
      Width = 939
      Height = 69
      Align = alClient
      Alignment = taCenter
      Caption = 'lbl_obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 941
    Height = 166
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 939
      Height = 15
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = -1
        Width = 521
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dados dos Titulos Recebidos'
        Color = 16766975
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 528
        Top = 0
        Width = 381
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Formas de Pagamento'
        Color = 14876614
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 16
      Width = 939
      Height = 149
      Align = alClient
      DataSource = src_fpag
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'tit_numero'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tit_dtvcto'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tit_dtpgto'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'tit_valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'tit_juros'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'tit_desc'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'tit_vlrrec'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fp_tipo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 168
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'fp_valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fp_data'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fp_lote'
          Width = 44
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 237
    Width = 941
    Height = 41
    Align = alBottom
    TabOrder = 2
    object sbt_emitirrecibo: TSpeedButton
      Left = 15
      Top = 7
      Width = 132
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Emitir Recibo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_emitirreciboClick
    end
    object bbSair: TBitBtn
      Left = 674
      Top = 7
      Width = 132
      Height = 26
      Caption = '&Sair'
      TabOrder = 0
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
  object mem_fpag: TRxMemoryData
    FieldDefs = <>
    Left = 328
    Top = 56
    object mem_fpagseq_lote: TIntegerField
      FieldName = 'seq_lote'
    end
    object mem_fpagtit_numero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'tit_numero'
    end
    object mem_fpagtit_dtvcto: TStringField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'tit_dtvcto'
      Size = 10
    end
    object mem_fpagtit_dtpgto: TStringField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'tit_dtpgto'
      Size = 10
    end
    object mem_fpagtit_juros: TStringField
      DisplayLabel = 'Juros'
      FieldName = 'tit_juros'
      Size = 15
    end
    object mem_fpagtit_desc: TStringField
      DisplayLabel = 'Descontos'
      FieldName = 'tit_desc'
      Size = 15
    end
    object mem_fpagtit_valor: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'tit_valor'
    end
    object mem_fpagtit_vlrrec: TStringField
      DisplayLabel = 'vr Recebido'
      FieldName = 'tit_vlrrec'
    end
    object mem_fpagfp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'fp_tipo'
      Size = 30
    end
    object mem_fpagfp_valor: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'fp_valor'
      Size = 15
    end
    object mem_fpagfp_data: TStringField
      DisplayLabel = 'Data'
      FieldName = 'fp_data'
      Size = 10
    end
    object mem_fpagfp_lote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'fp_lote'
    end
    object mem_fpagfp_numchq: TFloatField
      FieldName = 'fp_numchq'
    end
    object mem_fpagfp_vinculo: TIntegerField
      FieldName = 'fp_vinculo'
    end
  end
  object src_fpag: TDataSource
    DataSet = mem_fpag
    Left = 400
    Top = 56
  end
end
