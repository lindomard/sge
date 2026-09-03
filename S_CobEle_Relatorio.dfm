object Frm_CobEle_Relatorio: TFrm_CobEle_Relatorio
  Left = 192
  Top = 117
  Width = 875
  Height = 240
  Caption = 'Rela'#231#227'o das Remessas de Cobran'#231'as Bancarias'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 867
    Height = 209
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 859
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Rela'#231#227'o das Remessas de Cobran'#231'as Bancarias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 5
        Top = 21
        Width = 120
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Periodo de:'
      end
      object Label63: TLabel
        Left = 375
        Top = 24
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label22: TLabel
        Left = 40
        Top = 39
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo do Banco:'
      end
      object edt_datini: TDateEdit
        Left = 129
        Top = 20
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_datfin: TDateEdit
        Left = 462
        Top = 20
        Width = 121
        Height = 21
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object CODCOB: TEdit
        Left = 129
        Top = 40
        Width = 62
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODCOBExit
        OnKeyPress = CODCOBKeyPress
      end
      object lbx_codbco: TListBox
        Left = 190
        Top = 40
        Width = 393
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyDown = lbx_codbcoKeyDown
      end
      object OMITIR_BCO: TCheckBox
        Left = 129
        Top = 60
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object bbImprimir: TBitBtn
        Left = 28
        Top = 89
        Width = 150
        Height = 21
        Cursor = crHandPoint
        Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
        Left = 428
        Top = 90
        Width = 150
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha Este Formul'#225'rio'#13#10'e Volta ao Menu Principal'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 7
        Top = -22
        Width = 794
        Height = 1123
        DataSource = src_cadrem_bco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        object RLCab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 36
          BandType = btColumnHeader
          object rlcab_emp: TRLLabel
            Left = 0
            Top = 0
            Width = 46
            Height = 12
            Align = faLeftTop
          end
          object rlcabDatHorEmi: TRLLabel
            Left = 649
            Top = 24
            Width = 69
            Height = 12
            Align = faRightBottom
          end
          object rlcab_pagina: TRLSystemInfo
            Left = 605
            Top = 0
            Width = 60
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 666
            Top = 0
            Width = 49
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object rlcabObsRel: TRLLabel
            Left = 0
            Top = 24
            Width = 205
            Height = 12
            Align = faLeftBottom
            Caption = 'Rela'#231#227'o das Remissas de Cobran'#231'as Bancarias'
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 74
          Width = 718
          Height = 71
          DataFields = 'RECHAVE'
          object rlcabdet: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object rlcab_RENUMDUP: TRLLabel
              Left = 0
              Top = 0
              Width = 51
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'N'#250'mero'
              Layout = tlCenter
            end
            object rlcab_REDESD: TRLLabel
              Left = 52
              Top = 0
              Width = 18
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'D'
              Layout = tlCenter
            end
            object rlcab_CRAZAO: TRLLabel
              Left = 71
              Top = 0
              Width = 330
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Raz'#227'o Social'
              Layout = tlCenter
            end
            object rlcab_REDTEMIS: TRLLabel
              Left = 405
              Top = 0
              Width = 55
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dt.Emiss'#227'o'
              Layout = tlCenter
            end
            object rlcab_REVALDUP: TRLLabel
              Left = 465
              Top = 0
              Width = 61
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor'
              Layout = tlCenter
            end
            object rlcab_REDTVCTO: TRLLabel
              Left = 536
              Top = 0
              Width = 59
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Dt Vcto'
              Layout = tlCenter
            end
            object rlcab_NOSSONUMERO: TRLLabel
              Left = 598
              Top = 0
              Width = 113
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nosso Numero'
              Layout = tlCenter
            end
          end
          object rldet: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            AfterPrint = rldetAfterPrint
            object rldet_RENUMDUP: TRLDBText
              Left = 0
              Top = -1
              Width = 51
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'RENUMDUP'
              DataSource = src_cadrem_bco
              Holder = rlcab_RENUMDUP
              Layout = tlCenter
            end
            object rldet_REDESD: TRLDBText
              Left = 52
              Top = 0
              Width = 18
              Height = 16
              AutoSize = False
              DataField = 'REDESD'
              DataSource = src_cadrem_bco
              Holder = rlcab_REDESD
              Layout = tlCenter
            end
            object rldet_CRAZAO: TRLDBText
              Left = 71
              Top = -1
              Width = 330
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = src_cadrem_bco
              Holder = rlcab_CRAZAO
              Layout = tlCenter
            end
            object rldet_REDTEMIS: TRLDBText
              Left = 405
              Top = 0
              Width = 55
              Height = 16
              AutoSize = False
              DataField = 'REDTEMIS'
              DataSource = src_cadrem_bco
              Holder = rlcab_REDTEMIS
              Layout = tlCenter
            end
            object rldet_REVALDUP: TRLDBText
              Left = 465
              Top = 0
              Width = 61
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'REVALDUP'
              DataSource = src_cadrem_bco
              Holder = rlcab_REVALDUP
              Layout = tlCenter
            end
            object rldet_REDTVCTO: TRLDBText
              Left = 536
              Top = 0
              Width = 59
              Height = 16
              AutoSize = False
              DataField = 'REDTVCTO'
              DataSource = src_cadrem_bco
              Holder = rlcab_REDTVCTO
              Layout = tlCenter
            end
            object rldet_NOSSONUMERO: TRLDBText
              Left = 598
              Top = 0
              Width = 113
              Height = 16
              AutoSize = False
              DataField = 'NOSSONUMERO'
              DataSource = src_cadrem_bco
              Holder = rlcab_NOSSONUMERO
              Layout = tlCenter
            end
          end
          object rlCabGru: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object RLLabel2: TRLLabel
              Left = 3
              Top = 3
              Width = 90
              Height = 12
              Caption = 'Chave da Remessa:'
              Layout = tlCenter
            end
            object RLDBText1: TRLDBText
              Left = 126
              Top = 1
              Width = 67
              Height = 16
              AutoSize = False
              DataField = 'RECHAVE'
              DataSource = src_cadrem_bco
              Layout = tlCenter
            end
            object RLLabel3: TRLLabel
              Left = 195
              Top = 3
              Width = 32
              Height = 12
              Caption = 'Banco:'
              Layout = tlCenter
            end
            object RLDBText2: TRLDBText
              Left = 243
              Top = 1
              Width = 33
              Height = 16
              AutoSize = False
              DataField = 'RECODBCO'
              DataSource = src_cadrem_bco
              Layout = tlCenter
            end
            object RLDBText3: TRLDBText
              Left = 277
              Top = 1
              Width = 284
              Height = 16
              AutoSize = False
              DataField = 'BCBANCO'
              DataSource = src_cadrem_bco
              Layout = tlCenter
            end
            object RLDBText4: TRLDBText
              Left = 614
              Top = 1
              Width = 102
              Height = 16
              AutoSize = False
              DataField = 'REDATREM'
              DataSource = src_cadrem_bco
              Layout = tlCenter
            end
            object RLLabel4: TRLLabel
              Left = 563
              Top = 3
              Width = 26
              Height = 12
              Caption = 'Data:'
              Layout = tlCenter
            end
          end
          object rlrodgru: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rlrodgruBeforePrint
            object lblQtdTitulos: TRLLabel
              Left = 3
              Top = 1
              Width = 161
              Height = 12
              Caption = 'Totais do Lote. Quantidade de Titulos:'
              Layout = tlCenter
            end
            object rlgru_REVALDUP: TRLLabel
              Left = 450
              Top = 0
              Width = 76
              Height = 12
              Alignment = taRightJustify
              Holder = rlcab_REVALDUP
            end
          end
        end
        object rlrodGer: TRLBand
          Left = 38
          Top = 145
          Width = 718
          Height = 16
          BandType = btSummary
          BeforePrint = rlrodGerBeforePrint
          object lblQtdTitulosGer: TRLLabel
            Left = 3
            Top = 1
            Width = 161
            Height = 12
            Caption = 'Totais do Lote. Quantidade de Titulos:'
            Layout = tlCenter
          end
          object rlger_REVALDUP: TRLLabel
            Left = 450
            Top = 0
            Width = 76
            Height = 12
            Alignment = taRightJustify
            Holder = rlcab_REVALDUP
          end
          object rlRodDatHorEmissao: TRLLabel
            Left = 623
            Top = -1
            Width = 91
            Height = 12
            Alignment = taRightJustify
          end
        end
      end
    end
  end
  object src_cadrem_bco: TDataSource
    DataSet = qr_cadrem_bco
    Left = 340
    Top = 72
  end
  object qr_cadrem_bco: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT RECHAVE,RECODBCO,BCBANCO'
      ',REORDEM'
      ',RECODEMP_DUP'
      ',RENUMDUP'
      ',REDESD,RETIPO,REDTEMIS,REVALDUP'
      ',RECODCLI '
      ',CRAZAO'
      ',REDTVCTO'
      ',REDESCF'
      ',REDTDESCF'
      ',RENOSNUM || REDNOSNUM as nossoNumero'
      ',REDATREM'
      'FROM CADREMBCO,CADBCO,CADCLI'
      'WHERE BCCODBCO=RECODBCO'
      'AND CCODCLI=RECODCLI'
      'ORDER BY RECHAVE,REORDEM,BCBANCO,BCCODBCO'
      ''
      '')
    Left = 428
    Top = 72
    object qr_cadrem_bcoRECHAVE: TFloatField
      FieldName = 'RECHAVE'
      Origin = 'SG_ASSOC.CADREMBCO.RECHAVE'
    end
    object qr_cadrem_bcoRECODBCO: TFloatField
      FieldName = 'RECODBCO'
      Origin = 'SG_ASSOC.CADREMBCO.RECODBCO'
    end
    object qr_cadrem_bcoBCBANCO: TStringField
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
      Size = 40
    end
    object qr_cadrem_bcoREORDEM: TFloatField
      FieldName = 'REORDEM'
      Origin = 'SG_ASSOC.CADREMBCO.REORDEM'
    end
    object qr_cadrem_bcoRECODEMP_DUP: TFloatField
      FieldName = 'RECODEMP_DUP'
      Origin = 'SG_ASSOC.CADREMBCO.RECODEMP_DUP'
    end
    object qr_cadrem_bcoRENUMDUP: TFloatField
      FieldName = 'RENUMDUP'
      Origin = 'SG_ASSOC.CADREMBCO.RENUMDUP'
    end
    object qr_cadrem_bcoREDESD: TStringField
      FieldName = 'REDESD'
      Origin = 'SG_ASSOC.CADREMBCO.REDESD'
      Size = 4
    end
    object qr_cadrem_bcoRETIPO: TFloatField
      FieldName = 'RETIPO'
      Origin = 'SG_ASSOC.CADREMBCO.RETIPO'
    end
    object qr_cadrem_bcoREDTEMIS: TDateTimeField
      FieldName = 'REDTEMIS'
      Origin = 'SG_ASSOC.CADREMBCO.REDTEMIS'
    end
    object qr_cadrem_bcoREVALDUP: TFloatField
      FieldName = 'REVALDUP'
      Origin = 'SG_ASSOC.CADREMBCO.REVALDUP'
    end
    object qr_cadrem_bcoRECODCLI: TFloatField
      FieldName = 'RECODCLI'
      Origin = 'SG_ASSOC.CADREMBCO.RECODCLI'
    end
    object qr_cadrem_bcoCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object qr_cadrem_bcoREDTVCTO: TDateTimeField
      FieldName = 'REDTVCTO'
      Origin = 'SG_ASSOC.CADREMBCO.REDTVCTO'
    end
    object qr_cadrem_bcoREDESCF: TFloatField
      FieldName = 'REDESCF'
      Origin = 'SG_ASSOC.CADREMBCO.REDESCF'
    end
    object qr_cadrem_bcoREDTDESCF: TDateTimeField
      FieldName = 'REDTDESCF'
      Origin = 'SG_ASSOC.CADREMBCO.REDTDESCF'
    end
    object qr_cadrem_bcoREDATREM: TDateTimeField
      FieldName = 'REDATREM'
      Origin = 'SG_ASSOC.CADREMBCO.REDATREM'
    end
    object qr_cadrem_bcoNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Origin = 'SG_ASSOC.CADREMBCO.RENOSNUM'
      Size = 40
    end
  end
  object Pdf: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 628
    Top = 32
  end
  object Word: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 588
    Top = 280
  end
  object Txt: TRLDraftFilter
    Left = 620
    Top = 256
  end
  object Excel: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 596
    Top = 248
  end
end
