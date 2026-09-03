object Frm_Conh_MercRelat: TFrm_Conh_MercRelat
  Left = 103
  Top = 135
  Width = 799
  Height = 435
  Caption = 'Relat'#243'rio de Conhecimento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 783
    Height = 397
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Relat'#243'rio Analitico'
      object RLReport1: TRLReport
        Left = 5
        Top = 376
        Width = 794
        Height = 945
        DataSource = Src_Conhec
        DefaultFilter = Matricial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.TopMargin = 3.000000000000000000
        Margins.BottomMargin = 0.000000000000000000
        PageSetup.PaperSize = fpCustom
        PageSetup.PaperWidth = 210.000000000000000000
        PageSetup.PaperHeight = 250.000000000000000000
        Visible = False
        BeforePrint = RLReport1BeforePrint
        object RLBand3: TRLBand
          Left = 38
          Top = 466
          Width = 718
          Height = 9
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object lbl_rodape: TRLLabel
            Left = 692
            Top = 1
            Width = 26
            Height = 6
            Align = faRightTop
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -5
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 11
          Width = 718
          Height = 455
          DataFields = 'GRUPO'
          BeforePrint = RLGroup1BeforePrint
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 202
            BandType = btHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = 6619057
            object RLDBText1: TRLDBText
              Left = 0
              Top = 0
              Width = 208
              Height = 16
              Align = faLeftTop
              DataField = 'RAZAO_CAB'
              DataSource = DM1.Src_Emp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel1: TRLLabel
              Left = 483
              Top = 1
              Width = 48
              Height = 16
              Caption = 'Data:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLSystemInfo1: TRLSystemInfo
              Left = 539
              Top = 0
              Width = 88
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbl_titulo02: TRLLabel
              Left = 0
              Top = 17
              Width = 184
              Height = 16
              Caption = 'Separa'#231#227'o de Produtos.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel3: TRLLabel
              Left = 562
              Top = 18
              Width = 64
              Height = 16
              Caption = 'P'#225'gina:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLSystemInfo2: TRLSystemInfo
              Left = 642
              Top = 17
              Width = 72
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Info = itPageNumber
              ParentFont = False
            end
            object RLSystemInfo3: TRLSystemInfo
              Left = 642
              Top = 0
              Width = 73
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Info = itHour
              ParentFont = False
            end
            object RLLabel2: TRLLabel
              Left = 2
              Top = 36
              Width = 104
              Height = 16
              Caption = 'Cod.Conhec :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel4: TRLLabel
              Left = 2
              Top = 54
              Width = 104
              Height = 16
              Caption = 'Cod.Cliente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText2: TRLDBText
              Left = 106
              Top = 35
              Width = 57
              Height = 16
              AutoSize = False
              DataField = 'C01CODCON'
              DataSource = Src_Conhec
            end
            object RLLabel5: TRLLabel
              Left = 165
              Top = 35
              Width = 64
              Height = 16
              Caption = 'Pedido:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText3: TRLDBText
              Left = 231
              Top = 34
              Width = 57
              Height = 16
              AutoSize = False
              DataField = 'C02CHAVE_PED'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel6: TRLLabel
              Left = 446
              Top = 37
              Width = 176
              Height = 16
              Caption = 'Data do Conhecimento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText4: TRLDBText
              Left = 627
              Top = 37
              Width = 88
              Height = 16
              AutoSize = False
              DataField = 'C01DATCON'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText5: TRLDBText
              Left = 107
              Top = 54
              Width = 57
              Height = 16
              AutoSize = False
              DataField = 'CCODCLI'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText6: TRLDBText
              Left = 166
              Top = 54
              Width = 417
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel7: TRLLabel
              Left = 3
              Top = 89
              Width = 104
              Height = 16
              AutoSize = False
              Caption = 'Endereco...:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBMemo1: TRLDBMemo
              Left = 110
              Top = 88
              Width = 603
              Height = 35
              AutoSize = False
              DataField = 'endereco'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel8: TRLLabel
              Left = 4
              Top = 126
              Width = 104
              Height = 16
              Caption = 'Cod.Transp.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText7: TRLDBText
              Left = 110
              Top = 126
              Width = 57
              Height = 16
              AutoSize = False
              DataField = 'C02CODTRA'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText8: TRLDBText
              Left = 169
              Top = 126
              Width = 319
              Height = 16
              AutoSize = False
              DataField = 'TRRAZTRA'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel9: TRLLabel
              Left = 529
              Top = 126
              Width = 112
              Height = 16
              Caption = 'C'#243'd.Vendedor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText9: TRLDBText
              Left = 645
              Top = 126
              Width = 66
              Height = 16
              AutoSize = False
              DataField = 'C02CODVEN'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel10: TRLLabel
              Left = 5
              Top = 145
              Width = 104
              Height = 16
              Caption = 'Volume.....:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText10: TRLDBText
              Left = 111
              Top = 146
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'p1qtdvol'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText11: TRLDBText
              Left = 375
              Top = 146
              Width = 57
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'p1pesob'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel11: TRLLabel
              Left = 318
              Top = 146
              Width = 56
              Height = 16
              Caption = 'Bruto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel12: TRLLabel
              Left = 539
              Top = 146
              Width = 112
              Height = 16
              Caption = 'Tipo Entrega:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText12: TRLDBText
              Left = 646
              Top = 146
              Width = 66
              Height = 16
              Alignment = taCenter
              AutoSize = False
              DataField = 'tipo_entrega'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText17: TRLDBText
              Left = 585
              Top = 54
              Width = 128
              Height = 16
              AutoSize = False
              DataField = 'CFONE01'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel14: TRLLabel
              Left = 5
              Top = 164
              Width = 104
              Height = 16
              AutoSize = False
              Caption = 'Endereco...:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText18: TRLDBText
              Left = 111
              Top = 164
              Width = 602
              Height = 16
              AutoSize = False
              DataField = 'C02OBSERVACAO'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText19: TRLDBText
              Left = 110
              Top = 182
              Width = 602
              Height = 16
              AutoSize = False
              DataField = 'C02OBS_CONHEC'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel15: TRLLabel
              Left = 3
              Top = 71
              Width = 152
              Height = 16
              Caption = 'C.N.P.J / C.P.F..:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText20: TRLDBText
              Left = 156
              Top = 71
              Width = 417
              Height = 16
              AutoSize = False
              DataField = 'CNPJ_CPF'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel16: TRLLabel
              Left = 179
              Top = 146
              Width = 80
              Height = 16
              Caption = 'Peso Liq:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText21: TRLDBText
              Left = 261
              Top = 146
              Width = 51
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'p1pesol'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText22: TRLDBText
              Left = 499
              Top = 146
              Width = 37
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'p1especie'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel17: TRLLabel
              Left = 433
              Top = 146
              Width = 68
              Height = 16
              Caption = 'Especie:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLLabel18: TRLLabel
              Left = 301
              Top = 36
              Width = 88
              Height = 16
              Caption = 'Numero NF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object RLDBText23: TRLDBText
              Left = 382
              Top = 35
              Width = 57
              Height = 16
              AutoSize = False
              DataField = 'p1numnf'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand5: TRLBand
            Left = 0
            Top = 202
            Width = 718
            Height = 22
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object lbl_codpro: TRLLabel
              Left = 3
              Top = 3
              Width = 75
              Height = 16
              AutoSize = False
              Caption = 'PRODUTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbl_descricao: TRLLabel
              Left = 175
              Top = 3
              Width = 443
              Height = 16
              AutoSize = False
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbl_qtd: TRLLabel
              Left = 627
              Top = 3
              Width = 89
              Height = 16
              AutoSize = False
              Caption = 'QUANTIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LBL_LOTE: TRLLabel
              Left = 85
              Top = 5
              Width = 75
              Height = 16
              AutoSize = False
              Caption = 'DET'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 224
            Width = 718
            Height = 17
            BeforePrint = RLBand2BeforePrint
            object RLDBText13: TRLDBText
              Left = 3
              Top = 0
              Width = 75
              Height = 16
              AutoSize = False
              DataField = 'C03CODPRO'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_codpro
              ParentFont = False
            end
            object RLDBText14: TRLDBText
              Left = 175
              Top = 0
              Width = 443
              Height = 16
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_descricao
              ParentFont = False
            end
            object RLDBText15: TRLDBText
              Left = 627
              Top = 0
              Width = 89
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'C03QTDENT'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_qtd
              ParentFont = False
            end
            object RLDBText16: TRLDBText
              Left = 85
              Top = 1
              Width = 75
              Height = 16
              AutoSize = False
              DataField = 'C03CODPRO'
              DataSource = Src_Conhec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = LBL_LOTE
              ParentFont = False
            end
          end
          object RLBand4: TRLBand
            Left = 0
            Top = 241
            Width = 718
            Height = 192
            BandType = btFooter
            BeforePrint = RLBand4BeforePrint
            object RLMemo1: TRLMemo
              Left = 1
              Top = 25
              Width = 712
              Height = 138
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Lines.Strings = (
                
                  'Recebi e conferi todas as mercadorias constantes deste pedido. T' +
                  'odas est'#227'o em'
                'perfeito estado.'
                ''
                ''
                ''
                ''
                
                  '________________________    ________________________     _______' +
                  '________________'
                
                  '    Transportador                 Conferente                    ' +
                  ' Cliente'
                
                  '                                                         RG.:___' +
                  '________________'
                
                  '                                                         CPF:___' +
                  '________________')
              ParentFont = False
            end
            object lbl_total: TRLLabel
              Left = 627
              Top = 4
              Width = 89
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_qtd
              ParentFont = False
            end
            object RLLabel13: TRLLabel
              Left = 627
              Top = 168
              Width = 89
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              Holder = lbl_qtd
              ParentFont = False
            end
          end
        end
      end
    end
  end
  object Qr_Conhec: TQuery
    OnCalcFields = Qr_ConhecCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select C01CODCON,C01DATCON,C01CODCON,'
      '       CCODCLI,CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF,'
      '       CCEP,CFONE01,'
      '       C02CODTRA,C02CODVEN,'
      '       C02QTDM3,C02PESOB,C02OBSERVACAO,C02OBS_CONHEC,'
      '       C02TIPO_ENTREGA,'
      '       C02CODEMP_PED,'
      '       C02LOTSEQ_PED,'
      '       C02CHAVE_PED,'
      '       C03CODPRO,C03LOTE,C03QTDENT,'
      '       PDNOME,PDUND,TRRAZTRA,'
      '       TO_CHAR(C02CHAVE_PED) AS GRUPO'
      '       , p1qtdvol,p1especie,p1pesol,p1pesob,p1numnf'
      ''
      'FROM CADCON01,'
      'CADCON02,'
      'CADCON03,'
      'CADPRO,'
      'CADCLI,'
      'CADTRA,cadp01'
      ''
      'where C02CODEMP=C01CODEMP'
      'AND C02CODCON=C01CODCON'
      'AND C03CODEMP=C02CODEMP'
      'AND C03CODCON=C02CODCON'
      'AND C03CODEMP_PED=C02CODEMP_PED'
      'AND C03LOTSEQ_PED=C02LOTSEQ_PED'
      'AND C03CHAVE_PED=C02CHAVE_PED'
      'AND CCODCLI=C02CODCLI'
      'AND PDCODPRO=C03CODPRO'
      'AND TRCODTRA=C02CODTRA'
      ''
      'and P1CODEMP=C02CODEMP_PED'
      'and P1CHAVE=C02CHAVE_PED'
      'and P1lotseq=C02LOTSEQ_PED'
      ''
      '')
    Left = 264
    object Qr_ConhecC01CODCON: TFloatField
      FieldName = 'C01CODCON'
      Origin = 'SG_ASSOC.CADCON01.C01CODCON'
    end
    object Qr_ConhecC01DATCON: TDateTimeField
      FieldName = 'C01DATCON'
      Origin = 'SG_ASSOC.CADCON01.C01DATCON'
    end
    object Qr_ConhecCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_ConhecCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_ConhecCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_ConhecCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_ConhecCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_ConhecCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_ConhecCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_ConhecC02CODTRA: TFloatField
      FieldName = 'C02CODTRA'
      Origin = 'SG_ASSOC.CADCON02.C02CODTRA'
    end
    object Qr_ConhecC02CODVEN: TFloatField
      FieldName = 'C02CODVEN'
      Origin = 'SG_ASSOC.CADCON02.C02CODVEN'
    end
    object Qr_ConhecC02QTDM3: TFloatField
      FieldName = 'C02QTDM3'
      Origin = 'SG_ASSOC.CADCON02.C02QTDM3'
    end
    object Qr_ConhecC02PESOB: TFloatField
      FieldName = 'C02PESOB'
      Origin = 'SG_ASSOC.CADCON02.C02PESOB'
    end
    object Qr_ConhecC02TIPO_ENTREGA: TFloatField
      FieldName = 'C02TIPO_ENTREGA'
      Origin = 'SG_ASSOC.CADCON02.C02TIPO_ENTREGA'
    end
    object Qr_ConhecC03CODPRO: TFloatField
      FieldName = 'C03CODPRO'
      Origin = 'SG_ASSOC.CADCON03.C03CODPRO'
    end
    object Qr_ConhecC03QTDENT: TFloatField
      FieldName = 'C03QTDENT'
      Origin = 'SG_ASSOC.CADCON03.C03QTDENT'
    end
    object Qr_ConhecPDNOME: TStringField
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_ConhecPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ConhecTRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Size = 40
    end
    object Qr_ConhecGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
    object Qr_ConhecC02CODEMP_PED: TFloatField
      FieldName = 'C02CODEMP_PED'
    end
    object Qr_ConhecC02LOTSEQ_PED: TFloatField
      FieldName = 'C02LOTSEQ_PED'
    end
    object Qr_ConhecC02CHAVE_PED: TFloatField
      FieldName = 'C02CHAVE_PED'
    end
    object Qr_ConhecCCODCLI: TFloatField
      FieldName = 'CCODCLI'
    end
    object Qr_Conhecendereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco'
      Size = 200
      Calculated = True
    end
    object Qr_Conhectipo_entrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_entrega'
      Size = 1
      Calculated = True
    end
    object Qr_ConhecC03LOTE: TStringField
      FieldName = 'C03LOTE'
    end
    object Qr_ConhecC02OBSERVACAO: TStringField
      FieldName = 'C02OBSERVACAO'
      Size = 60
    end
    object Qr_ConhecC02OBS_CONHEC: TStringField
      FieldName = 'C02OBS_CONHEC'
      Size = 60
    end
    object Qr_ConhecCNPJ_CPF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CNPJ_CPF'
      Size = 14
      Calculated = True
    end
    object Qr_Conhecp1qtdvol: TFloatField
      FieldName = 'p1qtdvol'
    end
    object Qr_Conhecp1especie: TStringField
      FieldName = 'p1especie'
    end
    object Qr_Conhecp1pesol: TFloatField
      FieldName = 'p1pesol'
    end
    object Qr_Conhecp1pesob: TFloatField
      FieldName = 'p1pesob'
    end
    object Qr_Conhecp1numnf: TFloatField
      FieldName = 'p1numnf'
    end
  end
  object Src_Conhec: TDataSource
    DataSet = Qr_Conhec
    Left = 328
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 56
  end
  object Matricial: TRLDraftFilter
    EjectMethod = ejForceWithCode
    Left = 576
    Top = 48
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 680
    Top = 56
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 720
    Top = 40
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 656
    Top = 16
  end
end
