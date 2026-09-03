object Qr_Cotacao_Cpr: TQr_Cotacao_Cpr
  Left = 235
  Top = 170
  Width = 1016
  Height = 451
  Caption = 'Impressao de Cota'#231#227'o'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 420
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Unitario'
      object rlUnitario: TRLReport
        Left = 64
        Top = 16
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_CC3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlUnitarioBeforePrint
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 153
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 1
            Top = 1
            Width = 54
            Height = 14
            Caption = 'Empresa..:'
          end
          object RLDBText1: TRLDBText
            Left = 69
            Top = 1
            Width = 66
            Height = 14
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLLabel2: TRLLabel
            Left = 2
            Top = 19
            Width = 55
            Height = 14
            Caption = 'Endere'#231'o.:'
          end
          object RLDBText2: TRLDBText
            Left = 69
            Top = 19
            Width = 31
            Height = 14
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLDBText3: TRLDBText
            Left = 77
            Top = 41
            Width = 81
            Height = 16
            AutoSize = False
            DataField = 'CCT1CHAVE'
            DataSource = Src_CC1
          end
          object RLLabel3: TRLLabel
            Left = 2
            Top = 41
            Width = 61
            Height = 14
            Caption = 'Cota'#231#227'o N'#186':'
          end
          object RLLabel4: TRLLabel
            Left = 160
            Top = 41
            Width = 86
            Height = 14
            Caption = 'Data da Cota'#231#227'o:'
          end
          object RLDBText10: TRLDBText
            Left = 266
            Top = 41
            Width = 70
            Height = 16
            AutoSize = False
            DataField = 'CCT1DATA'
            DataSource = Src_CC1
          end
          object RLLabel5: TRLLabel
            Left = 2
            Top = 79
            Width = 72
            Height = 14
            Caption = 'Observa'#231#227'o..:'
          end
          object RLDBText11: TRLDBText
            Left = 87
            Top = 79
            Width = 402
            Height = 62
            AutoSize = False
            DataField = 'CCT1OBS'
            DataSource = Src_CC1
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 665
            Top = 0
            Width = 49
            Height = 14
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLLabel7: TRLLabel
            Left = 2
            Top = 60
            Width = 68
            Height = 14
            Caption = 'Fornecedor..:'
          end
          object RLDBText12: TRLDBText
            Left = 84
            Top = 60
            Width = 47
            Height = 14
            DataField = 'NOMFOR'
            DataSource = Src_CC3
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 208
          Width = 716
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLBand2BeforePrint
          object RLDBText4: TRLDBText
            Left = 1
            Top = 0
            Width = 49
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CCT3CODPRO'
            DataSource = Src_CC3
            Holder = rlCodPro
            Layout = tlCenter
          end
          object RLDBText5: TRLDBText
            Left = 331
            Top = 0
            Width = 52
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CCT3QTD'
            DataSource = Src_CC3
            Holder = rlQtd
            Layout = tlCenter
          end
          object RLDBText6: TRLDBText
            Left = 383
            Top = 0
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'preco_imp'
            DataSource = Src_CC3
            Holder = rlPreco
            Layout = tlCenter
          end
          object RLDBText7: TRLDBText
            Left = 547
            Top = 0
            Width = 96
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'total_imp'
            DataSource = Src_CC3
            Holder = rlTotal
            Layout = tlCenter
          end
          object RLDBText8: TRLDBText
            Left = 642
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CCT3PRAZO'
            DataSource = Src_CC3
            Holder = rlPrazo
            Layout = tlCenter
          end
          object RLDBText9: TRLDBText
            Left = 49
            Top = 0
            Width = 249
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CCT2NOMPRO'
            DataSource = Src_CC3
            Holder = rlNomPro
            Layout = tlCenter
          end
          object RLDBText25: TRLDBText
            Left = 467
            Top = 0
            Width = 80
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'obs_imp'
            DataSource = Src_CC3
            Holder = rlcab_obs
            Layout = tlCenter
          end
          object rldb_CCT2UNDPRO: TRLDBText
            Left = 300
            Top = 0
            Width = 30
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CCT2UNDPRO'
            DataSource = Src_CC3
            Holder = lbl_CCT2UNDPRO
            Layout = tlCenter
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 256
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand3BeforePrint
          object rl_banner: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 225
          Width = 716
          Height = 31
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand4BeforePrint
          object RLLabel6: TRLLabel
            Left = 505
            Top = 8
            Width = 64
            Height = 14
            Caption = 'Total Geral..:'
          end
          object rlTotall: TRLLabel
            Left = 586
            Top = 8
            Width = 130
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total Geral..:'
          end
        end
        object RLcab_det: TRLBand
          Left = 39
          Top = 192
          Width = 716
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object rlCodPro: TRLLabel
            Left = 1
            Top = 0
            Width = 49
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CODIGO'
            Layout = tlCenter
          end
          object rlNomPro: TRLLabel
            Left = 49
            Top = 0
            Width = 249
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'NOME'
            Layout = tlCenter
          end
          object rlPreco: TRLLabel
            Left = 383
            Top = 0
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'PRECO'
            Layout = tlCenter
          end
          object rlQtd: TRLLabel
            Left = 331
            Top = 0
            Width = 52
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'QTD'
            Layout = tlCenter
          end
          object rlTotal: TRLLabel
            Left = 547
            Top = 0
            Width = 96
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'TOTAL'
            Layout = tlCenter
          end
          object rlPrazo: TRLLabel
            Left = 642
            Top = 0
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'PRAZO'
            Layout = tlCenter
          end
          object rlcab_obs: TRLLabel
            Left = 467
            Top = 0
            Width = 80
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Observa'#231#245'es'
            Layout = tlCenter
          end
          object lbl_CCT2UNDPRO: TRLLabel
            Left = 300
            Top = 1
            Width = 30
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Und'
            Layout = tlCenter
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Grupo'
      ImageIndex = 1
      object rlGrupo: TRLReport
        Left = -128
        Top = 8
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = Src_Grupo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        BeforePrint = rlUnitarioBeforePrint
        object RLBand5: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 127
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel8: TRLLabel
            Left = 1
            Top = 1
            Width = 54
            Height = 14
            Caption = 'Empresa..:'
          end
          object RLDBText13: TRLDBText
            Left = 69
            Top = 1
            Width = 66
            Height = 14
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLLabel9: TRLLabel
            Left = 2
            Top = 19
            Width = 55
            Height = 14
            Caption = 'Endere'#231'o.:'
          end
          object RLDBText14: TRLDBText
            Left = 69
            Top = 19
            Width = 31
            Height = 14
            DataField = 'ender'
            DataSource = DM1.Src_Emp
          end
          object RLDBText15: TRLDBText
            Left = 77
            Top = 41
            Width = 81
            Height = 16
            AutoSize = False
            DataField = 'CCT1CHAVE'
            DataSource = Src_CC1
          end
          object RLLabel16: TRLLabel
            Left = 2
            Top = 41
            Width = 61
            Height = 14
            Caption = 'Cota'#231#227'o N'#186':'
          end
          object RLLabel17: TRLLabel
            Left = 160
            Top = 41
            Width = 86
            Height = 14
            Caption = 'Data da Cota'#231#227'o:'
          end
          object RLDBText16: TRLDBText
            Left = 266
            Top = 41
            Width = 70
            Height = 16
            AutoSize = False
            DataField = 'CCT1DATA'
            DataSource = Src_CC1
          end
          object RLLabel18: TRLLabel
            Left = 2
            Top = 60
            Width = 72
            Height = 14
            Caption = 'Observa'#231#227'o..:'
          end
          object RLDBText17: TRLDBText
            Left = 87
            Top = 60
            Width = 402
            Height = 62
            AutoSize = False
            DataField = 'CCT1OBS'
            DataSource = Src_CC1
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 665
            Top = 0
            Width = 49
            Height = 14
            Alignment = taRightJustify
            Info = itFullDate
          end
        end
        object RLBand7: TRLBand
          Left = 39
          Top = 250
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand3BeforePrint
          object RLLabel20: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 39
          Top = 166
          Width = 716
          Height = 84
          DataFields = 'CCT3CODFOR'
          object RLBand9: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 34
            BandType = btTitle
            object RLLabel10: TRLLabel
              Left = 1
              Top = 17
              Width = 88
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CODIGO'
            end
            object RLLabel11: TRLLabel
              Left = 89
              Top = 17
              Width = 292
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'NOME'
              Layout = tlCenter
            end
            object RLLabel12: TRLLabel
              Left = 476
              Top = 17
              Width = 86
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'PRECO'
              Layout = tlCenter
            end
            object RLLabel13: TRLLabel
              Left = 422
              Top = 17
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'QTD'
              Layout = tlCenter
            end
            object RLLabel14: TRLLabel
              Left = 562
              Top = 17
              Width = 92
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'TOTAL'
              Layout = tlCenter
            end
            object RLLabel15: TRLLabel
              Left = 653
              Top = 17
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'PRAZO'
              Layout = tlCenter
            end
            object RLLabel23: TRLLabel
              Left = 2
              Top = 1
              Width = 68
              Height = 14
              Caption = 'Fornecedor..:'
            end
            object RLDBText18: TRLDBText
              Left = 89
              Top = 0
              Width = 292
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'FRAZAO'
              DataSource = Src_Grupo
              Holder = RLLabel11
              Layout = tlCenter
            end
            object RLLabel19: TRLLabel
              Left = 380
              Top = 17
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'UND'
              Layout = tlCenter
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 34
            Width = 716
            Height = 17
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = RLBand6BeforePrint
            object RLDBText19: TRLDBText
              Left = 1
              Top = 0
              Width = 88
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CCT2CODPRO'
              DataSource = Src_Grupo
            end
            object RLDBText20: TRLDBText
              Left = 422
              Top = 0
              Width = 54
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CCT3QTD'
              DataSource = Src_Grupo
              Holder = RLLabel13
              Layout = tlCenter
            end
            object RLDBText21: TRLDBText
              Left = 476
              Top = 0
              Width = 86
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'CCT3PRECO'
              DataSource = Src_Grupo
              Holder = RLLabel12
              Layout = tlCenter
            end
            object RLDBText22: TRLDBText
              Left = 562
              Top = 0
              Width = 92
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'TOTAL'
              DataSource = Src_Grupo
              Holder = RLLabel14
              Layout = tlCenter
            end
            object RLDBText23: TRLDBText
              Left = 653
              Top = 0
              Width = 64
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'CCT3PRAZO'
              DataSource = Src_Grupo
              Holder = RLLabel15
              Layout = tlCenter
            end
            object RLDBText24: TRLDBText
              Left = 89
              Top = 0
              Width = 292
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDNOME'
              DataSource = Src_Grupo
              Holder = RLLabel11
              Layout = tlCenter
            end
            object RLDBText26: TRLDBText
              Left = 380
              Top = 0
              Width = 40
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'PDUND'
              DataSource = Src_Grupo
              Holder = RLLabel19
              Layout = tlCenter
            end
          end
          object RLBand8: TRLBand
            Left = 0
            Top = 51
            Width = 716
            Height = 31
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            BeforePrint = RLBand8BeforePrint
            object RLLabel21: TRLLabel
              Left = 505
              Top = 8
              Width = 64
              Height = 14
              Caption = 'Total Geral..:'
            end
            object rlTotGerGrupo: TRLLabel
              Left = 586
              Top = 8
              Width = 130
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total Geral..:'
            end
          end
        end
      end
    end
  end
  object Tb_CC1: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADCOT1')
    Left = 52
    Top = 264
    object Tb_CC1CCT1CODEMP: TFloatField
      FieldName = 'CCT1CODEMP'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CODEMP'
    end
    object Tb_CC1CCT1CHAVE: TFloatField
      FieldName = 'CCT1CHAVE'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CHAVE'
    end
    object Tb_CC1CCT1LOTSEQ: TFloatField
      FieldName = 'CCT1LOTSEQ'
      Origin = 'SG_ASSOC.CADCOT1.CCT1LOTSEQ'
    end
    object Tb_CC1CCT1OBS: TStringField
      FieldName = 'CCT1OBS'
      Origin = 'SG_ASSOC.CADCOT1.CCT1OBS'
      Size = 200
    end
    object Tb_CC1CCT1DATA: TDateTimeField
      FieldName = 'CCT1DATA'
      Origin = 'SG_ASSOC.CADCOT1.CCT1DATA'
    end
    object Tb_CC1CCT1CASAS: TFloatField
      FieldName = 'CCT1CASAS'
      Origin = 'SG_ASSOC.CADCOT1.CCT1CASAS'
    end
  end
  object Src_CC1: TDataSource
    DataSet = Tb_CC1
    Left = 156
    Top = 352
  end
  object Src_CC2: TDataSource
    DataSet = Tb_CC2
    Left = 228
    Top = 256
  end
  object Tb_CC2: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADCOT2')
    Left = 44
    Top = 312
    object Tb_CC2CCT2CODEMP: TFloatField
      FieldName = 'CCT2CODEMP'
      Origin = 'SG_ASSOC.CADCOT2.CCT2CODEMP'
    end
    object Tb_CC2CCT2CHAVE: TFloatField
      FieldName = 'CCT2CHAVE'
      Origin = 'SG_ASSOC.CADCOT2.CCT2CHAVE'
    end
    object Tb_CC2CCT2LOTSEQ: TFloatField
      FieldName = 'CCT2LOTSEQ'
      Origin = 'SG_ASSOC.CADCOT2.CCT2LOTSEQ'
    end
    object Tb_CC2CCT2CODPRO: TFloatField
      FieldName = 'CCT2CODPRO'
      Origin = 'SG_ASSOC.CADCOT2.CCT2CODPRO'
    end
    object Tb_CC2CCT2QTD: TFloatField
      FieldName = 'CCT2QTD'
      Origin = 'SG_ASSOC.CADCOT2.CCT2QTD'
    end
    object Tb_CC2CCT2OBS: TStringField
      FieldName = 'CCT2OBS'
      Origin = 'SG_ASSOC.CADCOT2.CCT2OBS'
      Size = 200
    end
  end
  object Src_CC3: TDataSource
    DataSet = Tb_CC3
    Left = 228
    Top = 296
  end
  object Tb_CC3: TQuery
    OnCalcFields = Tb_CC3CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT * FROM CADCOT3')
    Left = 196
    Top = 296
    object Tb_CC3CCT3CODEMP: TFloatField
      FieldName = 'CCT3CODEMP'
      Origin = 'SG_ASSOC.CADCOT3.CCT3CODEMP'
    end
    object Tb_CC3CCT3CHAVE: TFloatField
      FieldName = 'CCT3CHAVE'
      Origin = 'SG_ASSOC.CADCOT3.CCT3CHAVE'
    end
    object Tb_CC3CCT3LOTSEQ: TFloatField
      FieldName = 'CCT3LOTSEQ'
      Origin = 'SG_ASSOC.CADCOT3.CCT3LOTSEQ'
    end
    object Tb_CC3CCT3CODFOR: TFloatField
      FieldName = 'CCT3CODFOR'
      Origin = 'SG_ASSOC.CADCOT3.CCT3CODFOR'
    end
    object Tb_CC3CCT3CODPRO: TFloatField
      FieldName = 'CCT3CODPRO'
      Origin = 'SG_ASSOC.CADCOT3.CCT3CODPRO'
    end
    object Tb_CC3CCT3PRECO: TFloatField
      FieldName = 'CCT3PRECO'
      Origin = 'SG_ASSOC.CADCOT3.CCT3PRECO'
    end
    object Tb_CC3CCT3QTD: TFloatField
      FieldName = 'CCT3QTD'
      Origin = 'SG_ASSOC.CADCOT3.CCT3QTD'
    end
    object Tb_CC3CCT3OBS: TMemoField
      FieldName = 'CCT3OBS'
      Origin = 'SG_ASSOC.CADCOT3.CCT3OBS'
      BlobType = ftMemo
      Size = 400
    end
    object Tb_CC3CCT3PRAZO: TFloatField
      FieldName = 'CCT3PRAZO'
      Origin = 'SG_ASSOC.CADCOT3.CCT3PRAZO'
    end
    object Tb_CC3xTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'xTotal'
      Calculated = True
    end
    object Tb_CC3NOMPRO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMPRO'
      Size = 60
      Calculated = True
    end
    object Tb_CC3NOMFOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMFOR'
      Size = 120
      Calculated = True
    end
    object Tb_CC3CCT2NOMPRO: TStringField
      FieldName = 'CCT2NOMPRO'
      Size = 100
    end
    object Tb_CC3CCT2UNDPRO: TStringField
      FieldName = 'CCT2UNDPRO'
      Size = 3
    end
    object Tb_CC3preco_imp: TStringField
      FieldName = 'preco_imp'
      Size = 30
    end
    object Tb_CC3total_imp: TStringField
      FieldName = 'total_imp'
      Size = 30
    end
    object Tb_CC3obs_imp: TStringField
      FieldName = 'obs_imp'
      Size = 100
    end
  end
  object Tb_Grupo: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select  CCT2CHAVE, CCT2CODPRO, PDNOME, nvl(CCT2QTD,0) as CCT2QTD' +
        ', CCT3CODFOR, FRAZAO,'
      
        '        nvl(CCT3QTD,0) as CCT3QTD, nvl(CCT3PRECO,0) as CCT3PRECO' +
        ', '
      
        '        nvl(CCT3QTD,0)*nvl(CCT3PRECO,0) as Total, nvl(CCT3PRAZO,' +
        '0) CCT3PRAZO'
      'from CADCOT2,CADCOT3, CADPRO, CADFOR'
      
        'where CCT2CODEMP=CCT3CODEMP and CCT2CHAVE=CCT3CHAVE and CCT2LOTS' +
        'EQ=CCT3LOTSEQ'
      
        '  and CCT2CHAVE=2 and CCT2CODEMP=1 and CCT2CODPRO=PDCODPRO and C' +
        'CT3CODFOR=FCODFOR'
      'order by cct2chave, cct3codfor')
    Left = 515
    Top = 119
    object Tb_GrupoCCT2CHAVE: TFloatField
      FieldName = 'CCT2CHAVE'
    end
    object Tb_GrupoCCT2CODPRO: TFloatField
      FieldName = 'CCT2CODPRO'
    end
    object Tb_GrupoPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object Tb_GrupoCCT2QTD: TFloatField
      FieldName = 'CCT2QTD'
    end
    object Tb_GrupoCCT3CODFOR: TFloatField
      FieldName = 'CCT3CODFOR'
    end
    object Tb_GrupoCCT3QTD: TFloatField
      FieldName = 'CCT3QTD'
    end
    object Tb_GrupoCCT3PRECO: TFloatField
      FieldName = 'CCT3PRECO'
    end
    object Tb_GrupoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object Tb_GrupoCCT3PRAZO: TFloatField
      FieldName = 'CCT3PRAZO'
    end
    object Tb_GrupoFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 60
    end
    object Tb_GrupoPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
  end
  object Src_Grupo: TDataSource
    DataSet = Tb_Grupo
    Left = 548
    Top = 120
  end
end
