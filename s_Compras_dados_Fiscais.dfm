object Frm_Compras_dados_Fiscais: TFrm_Compras_dados_Fiscais
  Left = 8
  Top = 142
  Width = 1313
  Height = 480
  Caption = 'dados fiscais do pedido de compras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1297
    Height = 40
    Align = alTop
    Alignment = taCenter
    Caption = 'Dados Fiscais do Pedido de Compras'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 1297
    Height = 57
    Align = alTop
    TabOrder = 0
    object bbatualizar: TBitBtn
      Left = 10
      Top = 8
      Width = 159
      Height = 25
      Caption = 'Atualizar Produtos'
      TabOrder = 0
      TabStop = False
      OnClick = bbatualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 184
      Top = 8
      Width = 159
      Height = 25
      Caption = 'Sair'
      TabOrder = 1
      TabStop = False
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
  object PageControl1: TPageControl
    Left = 952
    Top = 97
    Width = 345
    Height = 345
    ActivePage = TS_CST_PIS
    Align = alRight
    TabOrder = 1
    object TS_CST_ICMS2: TTabSheet
      Caption = 'CST icms '
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 48
        Align = alTop
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object StaticText32: TStaticText
          Left = 15
          Top = 4
          Width = 38
          Height = 45
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'do XML'
          Color = 14548957
          ParentColor = False
          TabOrder = 0
          Transparent = False
        end
        object StaticText33: TStaticText
          Left = 52
          Top = 3
          Width = 135
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Estadual'
          Color = 14548957
          ParentColor = False
          TabOrder = 1
          Transparent = False
        end
        object StaticText34: TStaticText
          Left = 186
          Top = 3
          Width = 135
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Interestadual'
          Color = 14544639
          ParentColor = False
          TabOrder = 2
          Transparent = False
        end
        object StaticText35: TStaticText
          Left = 52
          Top = 18
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14548957
          ParentColor = False
          TabOrder = 3
          Transparent = False
        end
        object StaticText36: TStaticText
          Left = 102
          Top = 18
          Width = 85
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Sugerido'
          Color = 14548957
          ParentColor = False
          TabOrder = 4
          Transparent = False
        end
        object StaticText37: TStaticText
          Left = 186
          Top = 18
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14544639
          ParentColor = False
          TabOrder = 5
          Transparent = False
        end
        object StaticText38: TStaticText
          Left = 236
          Top = 18
          Width = 85
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Sugerido'
          Color = 14544639
          ParentColor = False
          TabOrder = 6
          Transparent = False
        end
        object StaticText39: TStaticText
          Left = 52
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14548957
          ParentColor = False
          TabOrder = 7
          Transparent = False
        end
        object StaticText40: TStaticText
          Left = 77
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14548957
          ParentColor = False
          TabOrder = 8
          Transparent = False
        end
        object StaticText41: TStaticText
          Left = 102
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14548957
          ParentColor = False
          TabOrder = 9
          Transparent = False
        end
        object CB_CST_SUG_REV_DUF_ATU: TCheckBox
          Left = 130
          Top = 34
          Width = 17
          Height = 17
          TabOrder = 10
          OnClick = CB_CST_SUG_REV_DUF_ATUClick
        end
        object StaticText42: TStaticText
          Left = 145
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14548957
          ParentColor = False
          TabOrder = 11
          Transparent = False
        end
        object CB_CST_SUG_CF_DUF_ATU: TCheckBox
          Left = 172
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 12
          OnClick = CB_CST_SUG_CF_DUF_ATUClick
        end
        object StaticText43: TStaticText
          Left = 186
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14544639
          ParentColor = False
          TabOrder = 13
          Transparent = False
        end
        object StaticText44: TStaticText
          Left = 211
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14544639
          ParentColor = False
          TabOrder = 14
          Transparent = False
        end
        object StaticText45: TStaticText
          Left = 236
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14544639
          ParentColor = False
          TabOrder = 15
          Transparent = False
        end
        object CB_CST_SUG_REV_FUF_ATU: TCheckBox
          Left = 266
          Top = 34
          Width = 17
          Height = 17
          TabOrder = 16
          OnClick = CB_CST_SUG_REV_FUF_ATUClick
        end
        object StaticText46: TStaticText
          Left = 279
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14544639
          ParentColor = False
          TabOrder = 17
          Transparent = False
        end
        object CB_CST_SUG_CF_FUF_ATU: TCheckBox
          Left = 306
          Top = 33
          Width = 17
          Height = 17
          TabOrder = 18
          OnClick = CB_CST_SUG_CF_FUF_ATUClick
        end
      end
      object DBGrid_cst_icms2: TDBGrid
        Left = 0
        Top = 48
        Width = 337
        Height = 269
        Align = alClient
        DataSource = src_pfor
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid_cst_icms2CellClick
        OnDrawColumnCell = DBGrid_cst_icms2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CST_FOR'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_PRO_REV_DUF'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_PRO_CF_FUF'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_REV_DUF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_REV_DUF_ATU'
            Width = 19
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_CF_DUF'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_CF_DUF_ATU'
            Width = 15
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_PRO_REV_FUF'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_PRO_CF_DUF'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_REV_FUF'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_REV_FUF_ATU'
            Width = 18
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_CF_FUF'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_SUG_CF_FUF_ATU'
            Width = 19
            Visible = True
          end>
      end
    end
    object tsCSOSN: TTabSheet
      Caption = 'CSOSN'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 48
        Align = alTop
        TabOrder = 0
        object StaticText17: TStaticText
          Left = 15
          Top = 4
          Width = 38
          Height = 45
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'do XML'
          Color = 14548957
          ParentColor = False
          TabOrder = 0
          Transparent = False
        end
        object StaticText18: TStaticText
          Left = 52
          Top = 3
          Width = 135
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Estadual'
          Color = 14548957
          ParentColor = False
          TabOrder = 1
          Transparent = False
        end
        object StaticText19: TStaticText
          Left = 186
          Top = 3
          Width = 135
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Interestadual'
          Color = 14544639
          ParentColor = False
          TabOrder = 2
          Transparent = False
        end
        object StaticText20: TStaticText
          Left = 52
          Top = 18
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14548957
          ParentColor = False
          TabOrder = 3
          Transparent = False
        end
        object StaticText21: TStaticText
          Left = 102
          Top = 18
          Width = 85
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Sugerido'
          Color = 14548957
          ParentColor = False
          TabOrder = 4
          Transparent = False
        end
        object StaticText22: TStaticText
          Left = 186
          Top = 18
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14544639
          ParentColor = False
          TabOrder = 5
          Transparent = False
        end
        object StaticText23: TStaticText
          Left = 236
          Top = 18
          Width = 85
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Sugerido'
          Color = 14544639
          ParentColor = False
          TabOrder = 6
          Transparent = False
        end
        object StaticText24: TStaticText
          Left = 52
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14548957
          ParentColor = False
          TabOrder = 7
          Transparent = False
        end
        object StaticText25: TStaticText
          Left = 77
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14548957
          ParentColor = False
          TabOrder = 8
          Transparent = False
        end
        object StaticText26: TStaticText
          Left = 102
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14548957
          ParentColor = False
          TabOrder = 9
          Transparent = False
        end
        object CB_CSOSN_SUG_REV_DUF_ATU: TCheckBox
          Left = 130
          Top = 34
          Width = 17
          Height = 17
          TabOrder = 10
          OnClick = CB_CSOSN_SUG_REV_DUF_ATUClick
        end
        object StaticText27: TStaticText
          Left = 145
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14548957
          ParentColor = False
          TabOrder = 11
          Transparent = False
        end
        object CB_CSOSN_SUG_CF_DUF_ATU: TCheckBox
          Left = 172
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 12
          OnClick = CB_CSOSN_SUG_CF_DUF_ATUClick
        end
        object StaticText28: TStaticText
          Left = 186
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14544639
          ParentColor = False
          TabOrder = 13
          Transparent = False
        end
        object StaticText29: TStaticText
          Left = 211
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14544639
          ParentColor = False
          TabOrder = 14
          Transparent = False
        end
        object StaticText30: TStaticText
          Left = 236
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Rev'
          Color = 14544639
          ParentColor = False
          TabOrder = 15
          Transparent = False
        end
        object CB_CSOSN_SUG_REV_FUF_ATU: TCheckBox
          Left = 266
          Top = 34
          Width = 17
          Height = 17
          TabOrder = 16
          OnClick = CB_CSOSN_SUG_REV_FUF_ATUClick
        end
        object StaticText31: TStaticText
          Left = 279
          Top = 33
          Width = 26
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'CF'
          Color = 14544639
          ParentColor = False
          TabOrder = 17
          Transparent = False
        end
        object CB_CSOSN_SUG_CF_FUF_ATU: TCheckBox
          Left = 306
          Top = 33
          Width = 17
          Height = 17
          TabOrder = 18
          OnClick = CB_CSOSN_SUG_CF_FUF_ATUClick
        end
      end
      object DBGrid_csosn: TDBGrid
        Left = 0
        Top = 48
        Width = 337
        Height = 269
        Align = alClient
        DataSource = src_pfor
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid_csosnCellClick
        OnDrawColumnCell = DBGrid_csosnDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CSOSN_FOR'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_PRO_REV_DUF'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_PRO_CF_DUF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_REV_DUF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_REV_DUF_ATU'
            Width = 18
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_PRO_REV_FUF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_CF_DUF_ATU'
            Width = 18
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_PRO_REV_FUF'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_PRO_CF_FUF'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_REV_FUF'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_REV_FUF_ATU'
            Width = 15
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_CF_FUF'
            Width = 18
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSOSN_SUG_CF_FUF_ATU'
            Width = 20
            Visible = True
          end>
      end
    end
    object tsCST_COFINS: TTabSheet
      Caption = 'CST Cofins'
      object DBGrid_cst_COFINS: TDBGrid
        Left = 0
        Top = 48
        Width = 337
        Height = 269
        Align = alClient
        DataSource = src_pfor
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid_cst_COFINSCellClick
        OnDrawColumnCell = DBGrid_cst_COFINSDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'COFINS_CST_ENTRADA_PRO'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_CST_FOR'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_CST_FOR_ATU'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_CST_PRO_SAIDA'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_CST_SUG_SAIDA'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COFINS_CST_SUG_SAIDA_ATU'
            Width = 17
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 48
        Align = alTop
        TabOrder = 1
        object StaticText9: TStaticText
          Left = 109
          Top = 33
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14544639
          ParentColor = False
          TabOrder = 1
          Transparent = False
        end
        object LBL_CST_PRO_CF_DUF: TStaticText
          Left = 44
          Top = 34
          Width = 37
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Novo'
          Color = 14548957
          ParentColor = False
          TabOrder = 3
          Transparent = False
        end
        object LBL_CST_SUG_REV_DUF_ATU: TStaticText
          Left = 12
          Top = 34
          Width = 33
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14548957
          ParentColor = False
          TabOrder = 4
          Transparent = False
        end
        object CB_COFINS_CST_FOR_ATU: TCheckBox
          Left = 90
          Top = 34
          Width = 17
          Height = 17
          TabOrder = 5
          OnClick = CB_COFINS_CST_FOR_ATUClick
        end
        object StaticText13: TStaticText
          Left = 159
          Top = 33
          Width = 35
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Novo'
          Color = 14544639
          ParentColor = False
          TabOrder = 6
          Transparent = False
        end
        object CB_COFINS_CST_SUG_SAIDA_ATU: TCheckBox
          Left = 196
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 7
          OnClick = CB_COFINS_CST_SUG_SAIDA_ATUClick
        end
        object StaticText8: TStaticText
          Left = 109
          Top = 18
          Width = 101
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saidas'
          Color = 14544639
          ParentColor = False
          TabOrder = 0
          Transparent = False
        end
        object LBL_CST_PRO_REV_DUF: TStaticText
          Left = 12
          Top = 18
          Width = 99
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entrada'
          Color = 14548957
          ParentColor = False
          TabOrder = 2
          Transparent = False
        end
      end
    end
    object TS_CST_PIS: TTabSheet
      Caption = 'CST Pis/Cofins'
      ImageIndex = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 48
        Align = alTop
        TabOrder = 0
        object StaticText6: TStaticText
          Left = 12
          Top = 16
          Width = 99
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entrada'
          Color = 14548957
          ParentColor = False
          TabOrder = 0
          Transparent = False
        end
        object StaticText7: TStaticText
          Left = 12
          Top = 32
          Width = 33
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14548957
          ParentColor = False
          TabOrder = 1
          Transparent = False
        end
        object StaticText10: TStaticText
          Left = 44
          Top = 32
          Width = 37
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Novo'
          Color = 14548957
          ParentColor = False
          TabOrder = 2
          Transparent = False
        end
        object CB_PIS_CST_FOR_ATU: TCheckBox
          Left = 90
          Top = 33
          Width = 17
          Height = 17
          TabOrder = 3
          OnClick = CB_PIS_CST_FOR_ATUClick
        end
        object StaticText11: TStaticText
          Left = 110
          Top = 16
          Width = 101
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saidas'
          Color = 14544639
          ParentColor = False
          TabOrder = 4
          Transparent = False
        end
        object StaticText12: TStaticText
          Left = 110
          Top = 31
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Atual'
          Color = 14544639
          ParentColor = False
          TabOrder = 5
          Transparent = False
        end
        object StaticText14: TStaticText
          Left = 160
          Top = 31
          Width = 35
          Height = 16
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Novo'
          Color = 14544639
          ParentColor = False
          TabOrder = 6
          Transparent = False
        end
        object CB_PIS_CST_SUG_SAIDA_ATU: TCheckBox
          Left = 196
          Top = 32
          Width = 17
          Height = 17
          TabOrder = 7
          OnClick = CB_PIS_CST_SUG_SAIDA_ATUClick
        end
      end
      object DBGrid_cst_pis: TDBGrid
        Left = 0
        Top = 48
        Width = 337
        Height = 269
        Align = alClient
        DataSource = src_pfor
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid_cst_pisCellClick
        OnDrawColumnCell = DBGrid_cst_pisDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PIS_CST_FOR'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_ENTRADA_PRO'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_CST_FOR_ATU'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_CST_PRO_SAIDA'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_CST_SUG_SAIDA'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PIS_CST_SUG_SAIDA_ATU'
            Width = 16
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 97
    Width = 952
    Height = 345
    Align = alClient
    TabOrder = 2
    object DBGrid_pfor: TDBGrid
      Left = 1
      Top = 72
      Width = 950
      Height = 272
      Align = alClient
      DataSource = src_pfor
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid_pforCellClick
      OnDrawColumnCell = DBGrid_pforDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PF2CODPRO'
          Title.Alignment = taCenter
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Title.Alignment = taCenter
          Width = 326
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Title.Alignment = taCenter
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM_PRO'
          Title.Alignment = taCenter
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM_FOR'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM_FOR_ATU'
          Title.Alignment = taCenter
          Width = 14
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM_PRO'
          Title.Alignment = taCenter
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM_FOR'
          Title.Alignment = taCenter
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM_FOR_ATU'
          Title.Alignment = taCenter
          Width = 13
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEST_PRO'
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEST_FOR'
          Title.Alignment = taCenter
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEST_FOR_ATU'
          Title.Alignment = taCenter
          Width = 17
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 950
      Height = 71
      Align = alTop
      TabOrder = 1
      object StaticText15: TStaticText
        Left = 13
        Top = 36
        Width = 108
        Height = 35
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'C'#243'digo do Produto'
        Color = 14548957
        ParentColor = False
        TabOrder = 0
        Transparent = False
      end
      object StaticText16: TStaticText
        Left = 120
        Top = 36
        Width = 328
        Height = 35
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Descri'#231#227'o do Produto'
        Color = 14548957
        ParentColor = False
        TabOrder = 1
        Transparent = False
      end
      object StaticText47: TStaticText
        Left = 447
        Top = 36
        Width = 107
        Height = 35
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Marca'
        Color = 14548957
        ParentColor = False
        TabOrder = 2
        Transparent = False
      end
      object StaticText48: TStaticText
        Left = 553
        Top = 36
        Width = 28
        Height = 35
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Und'
        Color = 14548957
        ParentColor = False
        TabOrder = 3
        Transparent = False
      end
      object StaticText49: TStaticText
        Left = 580
        Top = 36
        Width = 133
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Codigo NCM'
        Color = 14548957
        ParentColor = False
        TabOrder = 4
        Transparent = False
      end
      object StaticText50: TStaticText
        Left = 580
        Top = 53
        Width = 60
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Atual'
        Color = 14548957
        ParentColor = False
        TabOrder = 5
        Transparent = False
      end
      object StaticText51: TStaticText
        Left = 639
        Top = 53
        Width = 60
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Novo'
        Color = 14548957
        ParentColor = False
        TabOrder = 6
        Transparent = False
      end
      object CB_NCM_FOR_ATU: TCheckBox
        Left = 699
        Top = 54
        Width = 17
        Height = 17
        TabOrder = 7
        OnClick = CB_NCM_FOR_ATUClick
      end
      object StaticText52: TStaticText
        Left = 712
        Top = 36
        Width = 78
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Origem'
        Color = 14548957
        ParentColor = False
        TabOrder = 8
        Transparent = False
      end
      object StaticText53: TStaticText
        Left = 713
        Top = 53
        Width = 32
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Atual'
        Color = 14548957
        ParentColor = False
        TabOrder = 9
        Transparent = False
      end
      object StaticText54: TStaticText
        Left = 744
        Top = 53
        Width = 32
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Novo'
        Color = 14548957
        ParentColor = False
        TabOrder = 10
        Transparent = False
      end
      object CB_ORIGEM_FOR_ATU: TCheckBox
        Left = 776
        Top = 54
        Width = 17
        Height = 17
        TabOrder = 11
        OnClick = CB_ORIGEM_FOR_ATUClick
      end
      object StaticText55: TStaticText
        Left = 789
        Top = 36
        Width = 132
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'CEST do Produto'
        Color = 14548957
        ParentColor = False
        TabOrder = 12
        Transparent = False
      end
      object StaticText56: TStaticText
        Left = 789
        Top = 53
        Width = 60
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Atual'
        Color = 14548957
        ParentColor = False
        TabOrder = 13
        Transparent = False
      end
      object StaticText57: TStaticText
        Left = 848
        Top = 53
        Width = 60
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Novo'
        Color = 14548957
        ParentColor = False
        TabOrder = 14
        Transparent = False
      end
      object CB_CEST_FOR_ATU: TCheckBox
        Left = 908
        Top = 54
        Width = 17
        Height = 17
        TabOrder = 15
        OnClick = CB_CEST_FOR_ATUClick
      end
    end
  end
  object Tb_pfor: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      'select FUF AS UF_FORNECEDOR'
      ','#39'GO'#39' AS UF_EMPRESA'
      ',pf2chave'
      ',PF2CODPRO'
      ',PDNOME'
      ',PDUND'
      ',PDMARCA'
      ''
      ',PF2SIT AS CST_FOR'
      ',PDFIS_CST_ICMS_EST_REV AS CST_PRO_REV_DUF'
      ',PDFIS_CST_ICMS_INT_REV AS CST_PRO_REV_DUF'
      ',PDFIS_CST_ICMS_EST_CF AS CST_PRO_CF_FUF'
      ',PDFIS_CST_ICMS_INT_CF AS CST_PRO_CF_DUF'
      ''
      ',fSaiCSTCSOSN(FCRT,'#39'N'#39',PF2SIT,PF2CSOSN,'#39'N'#39') AS CST_SUG_REV_DUF'
      ','#39'N'#39' as  CST_SUG_REV_DUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'N'#39',PF2SIT,PF2CSOSN,'#39'N'#39') AS CST_SUG_REV_FUF'
      ','#39'N'#39' AS CST_SUG_REV_FUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'S'#39',PF2SIT,PF2CSOSN,'#39'N'#39') AS CST_SUG_CF_DUF'
      ','#39'N'#39' AS CST_SUG_CF_DUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'S'#39',PF2SIT,PF2CSOSN,'#39'N'#39') AS CST_SUG_CF_FUF'
      ','#39'N'#39' AS CST_SUG_CF_FUF_ATU'
      ''
      ''
      
        ',CASE WHEN PF2CODNCM is null THEN PDCODNCM ELSE PF2CODNCM END AS' +
        ' NCM_FOR '
      ',PDCLAS AS NCM_PRO'
      ','#39'N'#39' as NCM_PRO_ATU'
      ''
      ',PF2CSOSN_ORI AS ORIGEM_FOR'
      ',PDFIS_ORIGEM AS ORIGEM_PRO'
      ','#39'N'#39' as ORIGEM_FOR_ATU'
      ''
      ',PF2CSOSN AS CSOSN_FOR '
      ',PDFIS_CSOSN_EST_CF AS CSOSN_PRO_CF_DUF'
      ',PDFIS_CSOSN_INT_CF AS CSOSN_PRO_CF_FUF'
      ',PDFIS_CSOSN_EST_REV AS CSOSN_PRO_REV_DUF'
      ',PDFIS_CSOSN_INT_REV AS CSOSN_PRO_REV_FUF'
      ''
      ',fSaiCSTCSOSN(FCRT,'#39'N'#39',PF2SIT,PF2CSOSN,'#39'S'#39') AS CSOSN_SUG_REV_DUF'
      ','#39'N'#39' AS CSOSN_SUG_REV_DUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'N'#39',PF2SIT,PF2CSOSN,'#39'S'#39') AS CSOSN_SUG_REV_FUF'
      ','#39'N'#39' AS CSOSN_SUG_REV_FUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'S'#39',PF2SIT,PF2CSOSN,'#39'S'#39') AS CSOSN_SUG_CF_DUF'
      ','#39'N'#39' AS CSOSN_SUG_CF_DUF_ATU'
      ',fSaiCSTCSOSN(FCRT,'#39'S'#39',PF2SIT,PF2CSOSN,'#39'S'#39') AS CSOSN_SUG_CF_FUF'
      ','#39'N'#39' AS CSOSN_SUG_CF_FUF_ATU'
      ''
      ''
      ',PF2CST_PIS AS PIS_CST_ENTRADA_FOR'
      ',PDFIS_CST_PISCOF_ENTRADA AS PIS_CST_ENTRADA_PRO'
      ','#39'N'#39' as CST_PIS_ENTRADA_ATU'
      ''
      ''
      ',PF2CST_COFINS AS PIS_COFINS_ENTRADA_FOR'
      ',PDFIS_CST_PISCOF_ENTRADA AS PIS_COFINS_ENTRADA_PRO'
      ','#39'N'#39' as CST_COFINS_FOR_ENTRADA_ATU'
      ''
      ',PF2CST_PIS AS PIS_CST_SAIDA_FOR'
      ',PDFIS_CST_PISCOF_SAIDA AS PIS_CST_SAIDA_PRO'
      ','#39'N'#39' as CST_PIS_SAIDA_ATU'
      ''
      ''
      ',PF2CST_COFINS AS PIS_COFINS_SAIDA_FOR'
      ',PDFIS_CST_PISCOF_ENTRADA AS PIS_COFINS_SAIDA_PRO'
      ','#39'N'#39' as CST_COFINS_FOR_SAIDA_ATU'
      ''
      ''
      ' from cadpf2,CADPF1,CADPRO,CADFOR'
      'where pf2chave=314'
      'AND PF1LOTSEQ=PF2LOTSEQ'
      'AND PF1CHAVE=PF2CHAVE'
      'AND PDCODPRO=PF2CODPRO'
      'AND FCODFOR=PF1CODFOR')
    UpdateObject = U_pfor
    Left = 832
    Top = 72
    object Tb_pforUF_FORNECEDOR: TStringField
      FieldName = 'UF_FORNECEDOR'
      Size = 2
    end
    object Tb_pforUF_EMPRESA: TStringField
      FieldName = 'UF_EMPRESA'
      Size = 2
    end
    object Tb_pforPF2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'PF2CHAVE'
    end
    object Tb_pforPF2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PF2CODPRO'
    end
    object Tb_pforPDNOME: TStringField
      DisplayLabel = 'Desci'#231#227'o'
      FieldName = 'PDNOME'
      Size = 100
    end
    object Tb_pforPDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Size = 60
    end
    object Tb_pforPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Size = 3
    end
    object Tb_pforCST_FOR: TStringField
      DisplayLabel = 'CST Forn'
      FieldName = 'CST_FOR'
      Size = 3
    end
    object Tb_pforCST_PRO_REV_DUF: TStringField
      FieldName = 'CST_PRO_REV_DUF'
      Size = 2
    end
    object Tb_pforCST_PRO_REV_FUF: TStringField
      FieldName = 'CST_PRO_REV_FUF'
      Size = 2
    end
    object Tb_pforCST_PRO_CF_DUF: TStringField
      FieldName = 'CST_PRO_CF_DUF'
      Size = 2
    end
    object Tb_pforCST_PRO_CF_FUF: TStringField
      FieldName = 'CST_PRO_CF_FUF'
      Size = 2
    end
    object Tb_pforCST_SUG_REV_DUF: TStringField
      FieldName = 'CST_SUG_REV_DUF'
      Size = 2
    end
    object Tb_pforCST_SUG_REV_DUF_ATU: TStringField
      FieldName = 'CST_SUG_REV_DUF_ATU'
      Size = 1
    end
    object Tb_pforCST_SUG_REV_FUF: TStringField
      FieldName = 'CST_SUG_REV_FUF'
      Size = 2
    end
    object Tb_pforCST_SUG_REV_FUF_ATU: TStringField
      FieldName = 'CST_SUG_REV_FUF_ATU'
      Size = 1
    end
    object Tb_pforCST_SUG_CF_DUF: TStringField
      FieldName = 'CST_SUG_CF_DUF'
      Size = 2
    end
    object Tb_pforCST_SUG_CF_DUF_ATU: TStringField
      FieldName = 'CST_SUG_CF_DUF_ATU'
      Size = 1
    end
    object Tb_pforCST_SUG_CF_FUF: TStringField
      FieldName = 'CST_SUG_CF_FUF'
      Size = 2
    end
    object Tb_pforCST_SUG_CF_FUF_ATU: TStringField
      FieldName = 'CST_SUG_CF_FUF_ATU'
      Size = 1
    end
    object Tb_pforNCM_PRO: TStringField
      DisplayLabel = 'NCM Atual'
      FieldName = 'NCM_PRO'
      Size = 8
    end
    object Tb_pforNCM_FOR: TStringField
      DisplayLabel = 'NCM Forn'
      FieldName = 'NCM_FOR'
      Size = 8
    end
    object Tb_pforNCM_FOR_ATU: TStringField
      FieldName = 'NCM_FOR_ATU'
      Size = 1
    end
    object Tb_pforORIGEM_PRO: TStringField
      FieldName = 'ORIGEM_PRO'
      Size = 1
    end
    object Tb_pforORIGEM_FOR: TFloatField
      DisplayLabel = 'Origem Fornec'
      FieldName = 'ORIGEM_FOR'
    end
    object Tb_pforORIGEM_FOR_ATU: TStringField
      FieldName = 'ORIGEM_FOR_ATU'
      Size = 1
    end
    object Tb_pforCSOSN_FOR: TStringField
      DisplayLabel = 'CSOSN Forn'
      FieldName = 'CSOSN_FOR'
      Size = 3
    end
    object Tb_pforCOFINS_CST_FOR: TStringField
      FieldName = 'COFINS_CST_FOR'
      Size = 2
    end
    object Tb_pforCOFINS_CST_PRO_SAIDA: TStringField
      FieldName = 'COFINS_CST_PRO_SAIDA'
      Size = 2
    end
    object Tb_pforCOFINS_CST_SUG_SAIDA: TStringField
      FieldName = 'COFINS_CST_SUG_SAIDA'
      Size = 2
    end
    object Tb_pforCOFINS_CST_SUG_SAIDA_ATU: TStringField
      FieldName = 'COFINS_CST_SUG_SAIDA_ATU'
      Size = 1
    end
    object Tb_pforPIS_CST_FOR: TStringField
      DisplayLabel = 'CST PIS Fornec'
      FieldName = 'PIS_CST_FOR'
      Size = 2
    end
    object Tb_pforPIS_CST_SUG_SAIDA: TStringField
      FieldName = 'PIS_CST_SUG_SAIDA'
      Size = 2
    end
    object Tb_pforPIS_CST_PRO_SAIDA: TStringField
      FieldName = 'PIS_CST_PRO_SAIDA'
      Size = 2
    end
    object Tb_pforPIS_CST_SUG_SAIDA_ATU: TStringField
      FieldName = 'PIS_CST_SUG_SAIDA_ATU'
      Size = 1
    end
    object Tb_pforCEST_PRO: TStringField
      DisplayLabel = 'CEST Atual'
      FieldName = 'CEST_PRO'
      Size = 10
    end
    object Tb_pforCEST_FOR: TStringField
      DisplayLabel = 'CEST Forn'
      FieldName = 'CEST_FOR'
      Size = 10
    end
    object Tb_pforCEST_FOR_ATU: TStringField
      FieldName = 'CEST_FOR_ATU'
      Size = 1
    end
    object Tb_pforCSOSN_SUG_REV_DUF_ATU: TStringField
      FieldName = 'CSOSN_SUG_REV_DUF_ATU'
      Size = 1
    end
    object Tb_pforCSOSN_PRO_REV_FUF: TStringField
      FieldName = 'CSOSN_PRO_REV_FUF'
    end
    object Tb_pforCSOSN_SUG_REV_FUF_ATU: TStringField
      FieldName = 'CSOSN_SUG_REV_FUF_ATU'
      Size = 1
    end
    object Tb_pforCSOSN_PRO_CF_DUF: TStringField
      FieldName = 'CSOSN_PRO_CF_DUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_CF_DUF_ATU: TStringField
      FieldName = 'CSOSN_SUG_CF_DUF_ATU'
      Size = 1
    end
    object Tb_pforCSOSN_PRO_CF_FUF: TStringField
      FieldName = 'CSOSN_PRO_CF_FUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_REV_DUF: TStringField
      FieldName = 'CSOSN_SUG_REV_DUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_REV_FUF: TStringField
      FieldName = 'CSOSN_SUG_REV_FUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_CF_DUF: TStringField
      FieldName = 'CSOSN_SUG_CF_DUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_CF_FUF: TStringField
      FieldName = 'CSOSN_SUG_CF_FUF'
      Size = 3
    end
    object Tb_pforCSOSN_SUG_CF_FUF_ATU: TStringField
      FieldName = 'CSOSN_SUG_CF_FUF_ATU'
      Size = 3
    end
    object Tb_pforCSOSN_PRO_REV_DUF: TStringField
      FieldName = 'CSOSN_PRO_REV_DUF'
      Size = 3
    end
    object Tb_pforCOFINS_CST_FOR_ATU: TStringField
      FieldName = 'COFINS_CST_FOR_ATU'
      Size = 1
    end
    object Tb_pforCOFINS_CST_ENTRADA_PRO: TStringField
      FieldName = 'COFINS_CST_ENTRADA_PRO'
      Size = 2
    end
    object Tb_pforPIS_ENTRADA_PRO: TStringField
      FieldName = 'PIS_ENTRADA_PRO'
      Size = 2
    end
    object Tb_pforPIS_CST_FOR_ATU: TStringField
      FieldName = 'PIS_CST_FOR_ATU'
      Size = 2
    end
  end
  object src_pfor: TDataSource
    DataSet = Tb_pfor
    Left = 880
    Top = 72
  end
  object U_pfor: TUpdateSQL
    Left = 920
    Top = 80
  end
end
