object frm_DRE: Tfrm_DRE
  Left = 260
  Top = 174
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DRE - Demonstrativo do Resultado do Exerc'#237'cio'
  ClientHeight = 274
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 443
    Height = 274
    ActivePage = ts_configuracao
    Align = alClient
    TabOrder = 0
    object ts_configuracao: TTabSheet
      Caption = 'DRE'
      object Label2: TLabel
        Left = 252
        Top = 47
        Width = 8
        Height = 16
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 4
        Top = 8
        Width = 404
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Impress'#227'o de DRE'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lbl_periodo: TLabel
        Left = 10
        Top = 48
        Width = 75
        Height = 16
        Caption = 'Periodo........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dtIni: TDateEdit
        Left = 110
        Top = 45
        Width = 122
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
      object dtFim: TDateEdit
        Left = 286
        Top = 43
        Width = 122
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object bb_imprimir: TBitBtn
        Left = 1
        Top = 92
        Width = 408
        Height = 49
        Caption = '&Imprimir DRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bb_imprimirClick
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 230
        Width = 435
        Height = 16
        Align = alBottom
        TabOrder = 3
      end
      object bb_salvar: TBitBtn
        Left = 1
        Top = 203
        Width = 75
        Height = 25
        Caption = '&Salvar'
        TabOrder = 4
        OnClick = bb_salvarClick
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
        NumGlyphs = 2
      end
      object cb_nome: TComboBox
        Left = 80
        Top = 204
        Width = 257
        Height = 21
        ItemHeight = 13
        MaxLength = 10
        TabOrder = 5
      end
      object rg_doc: TRadioGroup
        Left = 3
        Top = 144
        Width = 405
        Height = 49
        Caption = 'Documento'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Gerar Novo'
          'Salvo')
        TabOrder = 6
      end
      object bb_deletar: TButton
        Left = 341
        Top = 200
        Width = 68
        Height = 25
        Caption = '&Deletar'
        TabOrder = 7
        OnClick = bb_deletarClick
      end
    end
    object ts_relatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 85
        Top = 80
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object rl_cabecalho: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 103
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clMoneyGreen
          BeforePrint = rl_cabecalhoBeforePrint
          object rl_titulo: TRLLabel
            Left = 16
            Top = 30
            Width = 706
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'DRE - Demonstrativo do Resultado do Exerc'#237'cio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rl_periodo: TRLLabel
            Left = 104
            Top = 56
            Width = 496
            Height = 22
            Alignment = taCenter
            AutoSize = False
            Caption = 'De 01/01/2010 '#224' 31/01/2010'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 330
            Top = 81
            Width = 384
            Height = 19
            AutoSize = False
            Caption = 
              'Valor Previsto                %           Valor Real            ' +
              '   %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 6
            Top = 81
            Width = 324
            Height = 19
            AutoSize = False
            Caption = 'Movimenta'#231#227'o de Contas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbl_emp: TRLLabel
            Left = 7
            Top = 4
            Width = 706
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'EMPRESA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 690
            Top = 60
            Width = 26
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 644
            Top = 60
            Width = 28
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel2: TRLLabel
            Left = 672
            Top = 60
            Width = 18
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '/'
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
          Top = 237
          Width = 716
          Height = 23
          BandType = btSummary
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = 16776176
          Degrade.Direction = ddVertical
          Degrade.OppositeColor = clGray
          Degrade.Granularity = 2
          ParentColor = False
          Transparent = False
          BeforePrint = RLBand4BeforePrint
          object RLLabel4: TRLLabel
            Left = 4
            Top = 2
            Width = 161
            Height = 18
            Caption = '(=) Resultado Liquido.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rl_totger_P: TRLLabel
            Left = 330
            Top = 3
            Width = 152
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Totaliza'#231#227'o...:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rl_totger_R: TRLLabel
            Left = 532
            Top = 3
            Width = 133
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Totaliza'#231#227'o...:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object rl_percp: TRLLabel
            Left = 482
            Top = 3
            Width = 50
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = '%%,%%'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentColor = False
            ParentFont = False
          end
          object rl_percr: TRLLabel
            Left = 665
            Top = 3
            Width = 52
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = '%%,%%'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentColor = False
            ParentFont = False
          end
        end
        object RLGroup2: TRLGroup
          Left = 39
          Top = 142
          Width = 716
          Height = 95
          DataFields = 'TPD_DESPOP'
          BeforePrint = RLGroup2BeforePrint
          object RLGroup1: TRLGroup
            Left = 0
            Top = 0
            Width = 716
            Height = 49
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataFields = 'TPD_COMPOEM'
            object RLBand1: TRLBand
              Left = 1
              Top = 1
              Width = 714
              Height = 26
              BandType = btTitle
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = False
              Borders.DrawBottom = True
              BeforePrint = RLBand1BeforePrint
              object rl_grup: TRLLabel
                Left = 3
                Top = 5
                Width = 327
                Height = 16
                AutoSize = False
                Caption = '(+) Receita Operacional Bruta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
            end
            object RLBand2: TRLBand
              Left = 1
              Top = 27
              Width = 714
              Height = 21
              BeforePrint = RLBand2BeforePrint
              object RLDBText1: TRLDBText
                Left = 8
                Top = 3
                Width = 320
                Height = 17
                AutoSize = False
                DataField = 'TPD_DESCRICAO'
                DataSource = DataSource1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object vlr_prev: TRLDBText
                Left = 328
                Top = 3
                Width = 149
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'VLR_PREVISTO'
                DataSource = DataSource1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object vlr_real: TRLDBText
                Left = 533
                Top = 3
                Width = 129
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                DataField = 'VLR_REAL'
                DataSource = DataSource1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object rl_perp: TRLLabel
                Left = 477
                Top = 3
                Width = 56
                Height = 17
                Alignment = taCenter
                AutoSize = False
                Caption = '%%,%%'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object rl_perr: TRLLabel
                Left = 662
                Top = 3
                Width = 56
                Height = 17
                Alignment = taCenter
                AutoSize = False
                Caption = '%%,%%'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 49
            Width = 716
            Height = 21
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            AfterPrint = RLBand5AfterPrint
            BeforePrint = RLBand5BeforePrint
            object RLLabel5: TRLLabel
              Left = 244
              Top = 3
              Width = 86
              Height = 16
              Caption = 'Totaliza'#231#227'o...:'
            end
            object rl_val_pre: TRLLabel
              Left = 328
              Top = 3
              Width = 154
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totaliza'#231#227'o...:'
            end
            object rl_val_rel: TRLLabel
              Left = 534
              Top = 3
              Width = 131
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totaliza'#231#227'o...:'
            end
            object rlpersubtotr: TRLLabel
              Left = 665
              Top = 3
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%%,%%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object rlpersubtotp: TRLLabel
              Left = 482
              Top = 3
              Width = 52
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '%%,%%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 70
            Width = 716
            Height = 24
            BandType = btSummary
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Color = 16776176
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = clGray
            Degrade.Granularity = 2
            ParentColor = False
            Transparent = False
            AfterPrint = RLBand6AfterPrint
            BeforePrint = RLBand6BeforePrint
            object rl_resultadoop: TRLLabel
              Left = 9
              Top = 2
              Width = 186
              Height = 18
              Caption = '(=) Resultado Operacional'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object op_prev: TRLLabel
              Left = 330
              Top = 3
              Width = 152
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totaliza'#231#227'o...:'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object op_real: TRLLabel
              Left = 532
              Top = 3
              Width = 133
              Height = 18
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Totaliza'#231#227'o...:'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object rlpertotr: TRLLabel
              Left = 665
              Top = 3
              Width = 52
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Caption = '%%,%%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object rlpertotp: TRLLabel
              Left = 482
              Top = 3
              Width = 50
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Caption = '%%,%%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
        end
        object RLBand3: TRLBand
          Left = 39
          Top = 260
          Width = 716
          Height = 21
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Color = 16776176
          Degrade.OppositeColor = 10930928
          ParentColor = False
          Transparent = False
          BeforePrint = RLBand3BeforePrint
          object lbl_patrocinio: TRLLabel
            Left = 4
            Top = 1
            Width = 476
            Height = 19
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'In'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 480
            Top = 1
            Width = 237
            Height = 19
            Alignment = taRightJustify
            AutoSize = False
            Info = itFullDate
            Transparent = False
          end
        end
      end
    end
    object tsConfig: TTabSheet
      Caption = '&Configura'#231#227'o'
      ImageIndex = 2
      TabVisible = False
      object Label1: TLabel
        Left = 13
        Top = 4
        Width = 200
        Height = 13
        Caption = 'Data Inicial de Controle de Configura'#231#227'o..:'
      end
      object dtConf: TDateEdit
        Left = 216
        Top = 1
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object btnSalvar: TButton
        Left = 176
        Top = 40
        Width = 75
        Height = 25
        Caption = '&Salvar'
        TabOrder = 1
        OnClick = btnSalvarClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 332
    Top = 24
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO,  TPD_DESPOP,NATDC,'
      '       sum(valorp) as Vlr_Previsto, sum(valorr) as Vlr_Real '
      'from cadtpdre, cadccu, cadldr'
      'where tpd_chave=cccoddre and codcc=cccodccu'
      'and datareal>='#39'01/01/1900'#39' '
      'group by TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP,NATDC'
      'order by tpd_chave')
    Left = 300
    Top = 24
    object Query1TPD_DESCRICAO: TStringField
      FieldName = 'TPD_DESCRICAO'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_DESCRICAO'
      Size = 50
    end
    object Query1NATDC: TStringField
      FieldName = 'NATDC'
      Origin = 'SG_ASSOC.CADLDR.NATDC'
      Size = 1
    end
    object Query1VLR_PREVISTO: TFloatField
      FieldName = 'VLR_PREVISTO'
      Origin = 'SG_ASSOC.CADLDR.VALORP'
    end
    object Query1VLR_REAL: TFloatField
      FieldName = 'VLR_REAL'
      Origin = 'SG_ASSOC.CADLDR.VALORR'
    end
    object Query1TPD_COMPOEM: TFloatField
      FieldName = 'TPD_COMPOEM'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_COMPOEM'
    end
    object Query1TPD_DESPOP: TFloatField
      FieldName = 'TPD_DESPOP'
      Origin = 'SG_ASSOC.CADTPDRE.TPD_DESPOP'
    end
    object Query1TPD_CHAVE: TStringField
      FieldName = 'TPD_CHAVE'
      Origin = 'SGE_172.CADTPDRE.TPD_CHAVE'
      Size = 6
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 57
    Top = 120
  end
end
