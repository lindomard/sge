object Frm_Fin_FluxoCaixa: TFrm_Fin_FluxoCaixa
  Left = 0
  Top = 87
  Width = 766
  Height = 312
  Caption = 'Demonstrativo Financeiro.'
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
    Width = 758
    Height = 281
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      object gb_cabecalho: TGroupBox
        Left = 0
        Top = 0
        Width = 750
        Height = 212
        Align = alClient
        Caption = 'Filtros'
        Color = 13684398
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 28
          Top = 136
          Width = 63
          Height = 13
          AutoSize = False
          Caption = 'Per'#237'odo.........'
        end
        object Label3: TLabel
          Left = 170
          Top = 136
          Width = 8
          Height = 13
          Caption = #224
        end
        object Label22: TLabel
          Left = 38
          Top = 18
          Width = 41
          Height = 13
          Caption = 'Banco:'
        end
        object Label25: TLabel
          Left = 33
          Top = 53
          Width = 44
          Height = 13
          Caption = 'Cliente:'
        end
        object Label1: TLabel
          Left = 10
          Top = 93
          Width = 69
          Height = 13
          Caption = 'Fornecedor:'
        end
        object MDT1: TMaskEdit
          Left = 82
          Top = 136
          Width = 81
          Height = 19
          Hint = 
            'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
            #13#10'digite a mesma.'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 187
          Top = 136
          Width = 80
          Height = 19
          Hint = 
            'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
            '.'
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CB_SEMBORDAS: TCheckBox
          Left = 293
          Top = 136
          Width = 97
          Height = 17
          Caption = 'Sem Bordas'
          TabOrder = 2
          OnClick = CB_SEMBORDASClick
        end
        object CB_ANALITICO: TCheckBox
          Left = 389
          Top = 136
          Width = 131
          Height = 17
          Caption = 'Relat'#243'rio Analitico'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CODBCO: TEdit
          Left = 82
          Top = 15
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnExit = CODBCOExit
          OnKeyPress = CODBCOKeyPress
        end
        object lbx_codbco: TListBox
          Left = 155
          Top = 15
          Width = 581
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codbcoKeyDown
        end
        object OMITIR_BCO: TCheckBox
          Left = 83
          Top = 36
          Width = 69
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object CODCLI: TEdit
          Left = 82
          Top = 52
          Width = 74
          Height = 21
          Hint = 'Digite o C'#243'digo a Ser Filtrado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 155
          Top = 52
          Width = 581
          Height = 38
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 81
          Top = 73
          Width = 57
          Height = 17
          Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object lbx_codfor: TListBox
          Left = 155
          Top = 89
          Width = 581
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyDown = lbx_codforKeyDown
        end
        object CODFOR: TEdit
          Left = 82
          Top = 90
          Width = 74
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 11
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object OMITIR_FOR: TCheckBox
          Left = 85
          Top = 108
          Width = 56
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object CB_SEMDEGRADE: TCheckBox
          Left = 528
          Top = 137
          Width = 131
          Height = 17
          Caption = 'Eliminar Degrade'
          TabOrder = 13
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 212
        Width = 750
        Height = 41
        Align = alBottom
        Color = 13684398
        TabOrder = 1
        object sbSalvarPadrao: TSpeedButton
          Left = 287
          Top = 5
          Width = 150
          Height = 33
          Caption = '&Salvar Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          ParentFont = False
          OnClick = sbSalvarPadraoClick
        end
        object bbImprimir: TBitBtn
          Left = 97
          Top = 5
          Width = 150
          Height = 33
          Hint = 'Imprime os T'#237'tulos '#13#10'Selecionados'
          Caption = '&Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
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
          Left = 545
          Top = 5
          Width = 150
          Height = 33
          Hint = 'Click aqui para Sair doPrograma'
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -8
        Top = -584
        Width = 794
        Height = 1123
        DataSource = Src_Relatorio
        Degrade.Direction = ddHorizontal
        Degrade.OppositeColor = 16744576
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand_cab: TRLBand
          Left = 38
          Top = 54
          Width = 718
          Height = 47
          BandType = btColumnHeader
          BeforePrint = RLBand_cabBeforePrint
          object lbl_dataemi: TRLLabel
            Left = 0
            Top = 0
            Width = 109
            Height = 16
            Align = faLeftTop
            Caption = 'Data de Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_horaemi: TRLLabel
            Left = 609
            Top = 0
            Width = 109
            Height = 16
            Align = faRightTop
            Caption = 'Data de Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 168
            Top = 3
            Width = 414
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 612
            Top = 23
            Width = 53
            Height = 16
            Caption = 'P'#225'gina:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 667
            Top = 23
            Width = 27
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 692
            Top = 23
            Width = 23
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
            Text = '/'
          end
          object lbl_periodo: TRLLabel
            Left = 368
            Top = 17
            Width = 76
            Height = 16
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 192
            Top = 48
            Width = 48
            Height = 48
          end
        end
        object RLSubDetBancos: TRLSubDetail
          Left = 38
          Top = 118
          Width = 718
          Height = 81
          DataSource = Src_Bco
          object rlCabSaldoBco: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddVertical
            Degrade.OppositeColor = clLime
            object RLLabel1: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'SALDO BANCARIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rldetCab: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_codbco: TRLLabel
              Left = 2
              Top = 2
              Width = 44
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'C'#243'digo'
            end
            object lbl_nombco: TRLLabel
              Left = 51
              Top = 1
              Width = 380
              Height = 16
              HelpType = htKeyword
              HelpKeyword = #39
              Alignment = taCenter
              AutoSize = False
              Caption = 'Nome do Banco'
            end
            object lbl_saldo: TRLLabel
              Left = 436
              Top = 0
              Width = 90
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Saldo'
            end
            object lbl_limcred: TRLLabel
              Left = 536
              Top = 0
              Width = 90
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Lim. Credito'
            end
            object lbl_disponivel: TRLLabel
              Left = 627
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Dispon'#237'vel'
            end
          end
          object rldetBco: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rldetBcoBeforePrint
            object edt_codbco: TRLDBText
              Left = 2
              Top = 0
              Width = 44
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'BCCODBCO'
              DataSource = Src_Bco
              Holder = lbl_codbco
            end
            object edt_nombco: TRLDBText
              Left = 51
              Top = 0
              Width = 380
              Height = 16
              AutoSize = False
              DataField = 'BCBANCO'
              DataSource = Src_Bco
              Holder = lbl_nombco
            end
            object edt_saldo: TRLDBText
              Left = 436
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'BCSALDO'
              DataSource = Src_Bco
              Holder = lbl_saldo
            end
            object edt_limcred: TRLDBText
              Left = 536
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'BCLIMITE'
              DataSource = Src_Bco
              Holder = lbl_limcred
            end
            object edt_disponivel: TRLDBText
              Left = 627
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'disponivel'
              DataSource = Src_Bco
              Holder = lbl_disponivel
            end
          end
          object RLrodape_saldobco: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = RLrodape_saldobcoBeforePrint
            object lbl_totbanco: TRLLabel
              Left = 51
              Top = 2
              Width = 380
              Height = 16
              AutoSize = False
              Caption = 'Totais'
              Holder = lbl_nombco
            end
            object lblt_totsaldo: TRLLabel
              Left = 436
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_saldo
            end
            object lblt_limcred: TRLLabel
              Left = 536
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_limcred
            end
            object lblt_disponivel: TRLLabel
              Left = 627
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_disponivel
            end
            object lblt_codbco: TRLLabel
              Left = 2
              Top = 0
              Width = 44
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = ' '
              Holder = lbl_codbco
            end
          end
        end
        object lbl_titulo: TRLLabel
          Left = 40
          Top = 71
          Width = 171
          Height = 16
          Caption = 'Demonstrativo Financeiro.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSubDet_ArecAvenc: TRLSubDetail
          Left = 38
          Top = 199
          Width = 718
          Height = 77
          DataSource = Src_DarAvenc
          object rl_titcrecavenc: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clBlue
            object RLLabel3: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CONTAS A RECEBER A VENCER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlcabAvenc: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_ArecAvencNumero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lbl_desd: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Desd'
            end
            object lbl_razao: TRLLabel
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_dtvcto: TRLLabel
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Vcto.'
            end
            object lbl_valor: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
          end
          object rldetRecAvenc: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rldetRecAvencBeforePrint
            object edt_ArecAvencNumero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNUMERO'
              DataSource = Src_DarAvenc
              Holder = lbl_ArecAvencNumero
            end
            object edt_desd: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CRDESD'
              DataSource = Src_DarAvenc
              Holder = lbl_desd
            end
            object edt_razao: TRLDBText
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = Src_DarAvenc
              Holder = lbl_razao
            end
            object edt_dtvcto: TRLDBText
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CRDTVCTO'
              DataSource = Src_DarAvenc
              Holder = lbl_dtvcto
            end
            object edt_saldodev: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'SALDODEV'
              DataSource = Src_DarAvenc
              Holder = lbl_valor
            end
          end
          object rltotacrecvenc: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rltotacrecvencBeforePrint
            object lbl_totarecAvenc: TRLLabel
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_razao
            end
            object lblt_saldoavenc: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_valor
            end
            object lblt_dtvcto: TRLLabel
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lbl_dtvcto
            end
            object lblt_desd: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lbl_desd
            end
          end
        end
        object RLSubDet_Arecvenc: TRLSubDetail
          Left = 38
          Top = 276
          Width = 718
          Height = 77
          DataSource = Src_DarVenc
          object RLBand10: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clBlue
            object RLLabel5: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CONTAS A RECEBER VENCIDAS(INADIMPLENCIA)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabRecvenc: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_ArecVencNumero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lbl_Vencdesd: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Desd'
            end
            object lbl_VencRazao: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_Vencdtvcto: TRLLabel
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Vcto.'
            end
            object lbl_Vencvalor: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
            object lbl_VencAtraso: TRLLabel
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              AutoSize = False
              Caption = 'Atraso'
            end
          end
          object rldetRecvenc: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rldetRecvencBeforePrint
            object edt_ArecVencNumero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CRNUMERO'
              DataSource = Src_DarVenc
              Holder = lbl_ArecVencNumero
            end
            object edt_Vencdesd: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CRDESD'
              DataSource = Src_DarVenc
              Holder = lbl_Vencdesd
            end
            object edt_VencRazao: TRLDBText
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = Src_DarVenc
              Holder = lbl_VencRazao
            end
            object edt_Vencdtvcto: TRLDBText
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CRDTVCTO'
              DataSource = Src_DarVenc
              Holder = lbl_Vencdtvcto
            end
            object edt_Vencvalor: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'SALDODEV'
              DataSource = Src_DarVenc
              Holder = lbl_Vencvalor
            end
            object edt_VencAtraso: TRLDBText
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ATRASO'
              DataSource = Src_DarVenc
              Holder = lbl_VencAtraso
            end
          end
          object rlArecVenc: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rlArecVencBeforePrint
            object lbl_totarecvenc: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_VencRazao
            end
            object lblt_saldoVenc: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_Vencvalor
            end
            object lblt_Vencdtvcto: TRLLabel
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Atraso Medio'
              Holder = lbl_Vencdtvcto
            end
            object lblt_vencAtraso: TRLLabel
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0'
              Holder = lbl_VencAtraso
            end
            object lblt_ArecVencNumero: TRLLabel
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              AutoSize = False
              Caption = ' '
            end
          end
        end
        object RLSubDet_ChqCli: TRLSubDetail
          Left = 38
          Top = 353
          Width = 718
          Height = 102
          DataSource = Sr_ChqCli
          object RLBand14: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clBlue
            object RLLabel6: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CHEQUES PRE-DATADOS DE CLIENTES(A RECEBER)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabChqCli: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lblchqcli_numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lblchqcli_codbco: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Bco'
            end
            object lblchqcli_razao: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lblchqcli_dtdep: TRLLabel
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Deposito'
            end
            object lblchqcli_valor: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
          end
          object rlDetChqCli: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rlDetChqCliBeforePrint
            object edtchqcli_numero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CHNUMERO'
              DataSource = Sr_ChqCli
              Holder = lblchqcli_numero
            end
            object edtchqcli_codbco: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CHBANCO'
              DataSource = Sr_ChqCli
              Holder = lblchqcli_codbco
            end
            object edtchqcli_dtdep: TRLDBText
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CHDTDEP'
              DataSource = Sr_ChqCli
              Holder = lblchqcli_dtdep
            end
            object edtchqcli_valor: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CHVALOR'
              DataSource = Sr_ChqCli
              Holder = lblchqcli_valor
            end
            object edtchqcli_razao: TRLDBText
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              DataField = 'CRAZAO'
              DataSource = Sr_ChqCli
              Holder = lblchqcli_razao
            end
          end
          object rltotchqcli: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 19
            BandType = btSummary
            BeforePrint = rltotchqcliBeforePrint
            object lblt_chqcli: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_VencRazao
            end
            object lblt_totchq: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lblchqcli_valor
            end
            object lbltchqcli_dtdep: TRLLabel
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lblchqcli_dtdep
            end
            object lbltchqcli_numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = '  '
              Holder = lblchqcli_numero
            end
          end
          object rltotent: TRLBand
            Left = 0
            Top = 67
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rltotentBeforePrint
            object lblt_totent: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total das Entradas'
              Holder = lbl_VencRazao
            end
            object lbl_totent: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lblchqcli_valor
            end
          end
        end
        object RLSubDet_ApagVenc: TRLSubDetail
          Left = 38
          Top = 455
          Width = 718
          Height = 87
          DataSource = Src_DapAVenc
          object RLBand19: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clRed
            object RLLabel9: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CONTAS A PAGAR A VENCER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabApagAVenc: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_ApagAvenc_numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lbl_ApagAvenc_Desd: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Desd'
            end
            object lbl_ApagAvenc_Razao: TRLLabel
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_ApagAvenc_Dtvcto: TRLLabel
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Vcto.'
            end
            object lbl_ApagAvenc_SaldoDev: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
          end
          object rlDetPagAVenc: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rlDetPagAVencBeforePrint
            object edt_ApagAvenc_numero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CANUMERO'
              DataSource = Src_DapAVenc
              Holder = lbl_ArecAvencNumero
            end
            object edt_ApagAvenc_Desd: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CADESD'
              DataSource = Src_DapAVenc
              Holder = lbl_ApagAvenc_Desd
            end
            object edt_ApagAvenc_Razao: TRLDBText
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              DataField = 'FRAZAO'
              DataSource = Src_DapAVenc
              Holder = lbl_razao
            end
            object edt_ApagAvenc_Dtvcto: TRLDBText
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CADTVCTO'
              DataSource = Src_DapAVenc
              Holder = lbl_dtvcto
            end
            object edt_ApagAvenc_SaldoDev: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'SALDODEV'
              DataSource = Src_DapAVenc
              Holder = lbl_valor
            end
          end
          object rltotpagAvenc: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rltotpagAvencBeforePrint
            object lbl_totapagavenc: TRLLabel
              Left = 93
              Top = 0
              Width = 449
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_razao
            end
            object lblt_SaldoPagAVenc: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_valor
            end
            object lblt_ApagAvenc_numero: TRLLabel
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              AutoSize = False
              Caption = ' '
            end
            object lblt_ApagAvenc_Dtvcto: TRLLabel
              Left = 545
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lbl_ApagAvenc_Dtvcto
            end
          end
        end
        object RLSubDet_ApagAVenc: TRLSubDetail
          Left = 38
          Top = 542
          Width = 718
          Height = 71
          DataSource = Src_DapVenc
          object RLBand23: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clRed
            object RLLabel10: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CONTAS A PAGAR VENCIDAS(INADIMPLENCIA)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabAPagarVenc: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_Apagvenc_numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lbl_Apagvenc_Desd: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Desd'
            end
            object lbl_Apagvenc_Razao: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_Apagvenc_Dtvcto: TRLLabel
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Vcto.'
            end
            object lbl_Apagvenc_Valor: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
            object lbl_Apagvenc_Atraso: TRLLabel
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              AutoSize = False
              Caption = 'Atraso'
            end
          end
          object rlDetPagVenc: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rlDetPagVencBeforePrint
            object edt_Apagvenc_numero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CANUMERO'
              DataSource = Src_DapVenc
              Holder = lbl_ArecVencNumero
            end
            object edt_Apagvenc_Desd: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CADESD'
              DataSource = Src_DapVenc
              Holder = lbl_Vencdesd
            end
            object edt_Apagvenc_Razao: TRLDBText
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              DataField = 'FRAZAO'
              DataSource = Src_DapVenc
              Holder = lbl_VencRazao
            end
            object edt_Apagvenc_Dtvcto: TRLDBText
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CADTVCTO'
              DataSource = Src_DapVenc
              Holder = lbl_Vencdtvcto
            end
            object edt_Apagvenc_Valor: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'SALDODEV'
              DataSource = Src_DapVenc
              Holder = lbl_Vencvalor
            end
            object edt_Apagvenc_Atraso: TRLDBText
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ATRASO'
              DataSource = Src_DapVenc
              Holder = lbl_VencAtraso
            end
          end
          object rltotpagvenc: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = rltotpagvencBeforePrint
            object lbl_totapagvenc: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_VencRazao
            end
            object lblt_SaldoPagVenc: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lbl_Vencvalor
            end
            object RLLabel14: TRLLabel
              Left = 483
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Atraso Medio'
              Holder = lbl_Apagvenc_Dtvcto
            end
            object lblt_Apagvenc_Atraso: TRLLabel
              Left = 570
              Top = 0
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0'
              Holder = lbl_Apagvenc_Atraso
            end
          end
        end
        object RLSubDet_chqcp: TRLSubDetail
          Left = 38
          Top = 613
          Width = 718
          Height = 84
          DataSource = Src_ChqCP
          object RLBand27: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btColumnHeader
            Degrade.Direction = ddHorizontal
            Degrade.OppositeColor = clRed
            object RLLabel22: TRLLabel
              Left = 0
              Top = 0
              Width = 718
              Height = 16
              Align = faClient
              Alignment = taCenter
              Caption = 'CHEQUES PRE-DATADOS DE PROPRIA EMISSAO(A PAGAR)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlCabChqCP: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btColumnHeader
            object lbl_ChqCP_Numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = 'N'#250'mero'
            end
            object lbl_ChqCP_Bco: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = 'Bco'
            end
            object lbl_ChqCP_Razao: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = 'Raz'#227'o Social'
            end
            object lbl_ChqCP_DtDeposito: TRLLabel
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = 'Dt.Deposito'
            end
            object lbl_ChqCP_Valor: TRLLabel
              Left = 626
              Top = 1
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Valor'
            end
          end
          object rlDetChqCP: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            BeforePrint = rlDetChqCPBeforePrint
            object edt_ChqCP_Numero: TRLDBText
              Left = 3
              Top = 0
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CHNUMERO'
              DataSource = Src_ChqCP
              Holder = lblchqcli_numero
            end
            object edt_ChqCP_Bco: TRLDBText
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              DataField = 'CHBANCO'
              DataSource = Src_ChqCP
              Holder = lblchqcli_codbco
            end
            object edt_ChqCP_DtDeposito: TRLDBText
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              DataField = 'CHDTDEP'
              DataSource = Src_ChqCP
              Holder = lblchqcli_dtdep
            end
            object edt_ChqCP_Valor: TRLDBText
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'CHVALOR'
              DataSource = Src_ChqCP
              Holder = lblchqcli_valor
            end
            object edt_ChqCP_Razao: TRLDBText
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              DataField = 'FRAZAO'
              DataSource = Src_ChqCP
              Holder = lblchqcli_razao
            end
          end
          object rltotchqcp: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 19
            BandType = btSummary
            BeforePrint = rltotchqcpBeforePrint
            object lbl_totchqcp: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total.......................'
              Holder = lbl_VencRazao
            end
            object lblt_ChqCP_Valor: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lblchqcli_valor
            end
            object lblt_ChqCP_Numero: TRLLabel
              Left = 3
              Top = 1
              Width = 59
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lbl_ChqCP_Numero
            end
            object lblt_ChqCP_DtDeposito: TRLLabel
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = ' '
            end
            object lblt_ChqCP_Bco: TRLLabel
              Left = 62
              Top = 0
              Width = 27
              Height = 16
              AutoSize = False
              Caption = ' '
              Holder = lbl_ChqCP_Bco
            end
          end
          object tlTotchqCp: TRLBand
            Left = 0
            Top = 67
            Width = 718
            Height = 16
            BandType = btSummary
            BeforePrint = tlTotchqCpBeforePrint
            object RLLabel13: TRLLabel
              Left = 93
              Top = 0
              Width = 389
              Height = 16
              AutoSize = False
              Caption = '- Total das Saidas'
              Holder = lbl_VencRazao
            end
            object lbl_totsai: TRLLabel
              Left = 626
              Top = 0
              Width = 90
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Holder = lblchqcli_valor
            end
            object lbltg_ChqCP_DtDeposito: TRLLabel
              Left = 515
              Top = 0
              Width = 81
              Height = 16
              AutoSize = False
              Caption = ' '
            end
          end
        end
        object RLBand_resumo: TRLBand
          Left = 38
          Top = 713
          Width = 718
          Height = 220
          BandType = btSummary
          Degrade.Direction = ddHorizontal
          Degrade.OppositeColor = 16744576
          BeforePrint = RLBand_resumoBeforePrint
          object lbl_RESUMO: TRLLabel
            Left = 182
            Top = 1
            Width = 362
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'RESUMO GERAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_ressaldobco: TRLLabel
            Left = 182
            Top = 17
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'SALDO BANCARIO:'
          end
          object edtres_saldobco: TRLLabel
            Left = 420
            Top = 17
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
          end
          object lbl_contasreceber: TRLLabel
            Left = 182
            Top = 33
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'CONTAS A RECEBER:'
            Holder = lbl_ressaldobco
          end
          object edtres_arec: TRLLabel
            Left = 420
            Top = 33
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Holder = edtres_saldobco
          end
          object lbl_arecvenc: TRLLabel
            Left = 278
            Top = 48
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'A Vencer:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object edtres_arecAVenc: TRLLabel
            Left = 420
            Top = 48
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_arecAvenc: TRLLabel
            Left = 278
            Top = 64
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vencidas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = lbl_arecvenc
            ParentFont = False
          end
          object edtres_arecVenc: TRLLabel
            Left = 420
            Top = 64
            Width = 124
            Height = 19
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_chqcli: TRLLabel
            Left = 278
            Top = 80
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cheques Pr'#233'-datados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = lbl_arecvenc
            ParentFont = False
          end
          object edtres_ChqCli: TRLLabel
            Left = 420
            Top = 80
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_contaspagar: TRLLabel
            Left = 182
            Top = 97
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'CONTAS A PAGAR:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_ressaldobco
            ParentFont = False
          end
          object edtres_apag: TRLLabel
            Left = 420
            Top = 97
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_apagAvenc: TRLLabel
            Left = 278
            Top = 113
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'A Vencer:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = lbl_arecvenc
            ParentFont = False
          end
          object edtres_apagAvenc: TRLLabel
            Left = 420
            Top = 113
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_apagvenc: TRLLabel
            Left = 278
            Top = 128
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vencidas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = lbl_arecvenc
            ParentFont = False
          end
          object edtres_aPagVenc: TRLLabel
            Left = 420
            Top = 128
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_chqcp: TRLLabel
            Left = 278
            Top = 143
            Width = 142
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cheques Pr'#233'-datados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = lbl_arecvenc
            ParentFont = False
          end
          object edtres_ChqCP: TRLLabel
            Left = 420
            Top = 143
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_saldofinal: TRLLabel
            Left = 182
            Top = 158
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'SALDO REAL:'
            Holder = lbl_ressaldobco
          end
          object edtres_SaldoFinal: TRLLabel
            Left = 420
            Top = 158
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Holder = edtres_SaldoGeral
          end
          object lbl_reslimcred: TRLLabel
            Left = 182
            Top = 174
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'LIMITE DE CREDITO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_ressaldobco
            ParentFont = False
          end
          object edtres_LimCred: TRLLabel
            Left = 420
            Top = 174
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = edtres_saldobco
            ParentFont = False
          end
          object lbl_ressaldogeral: TRLLabel
            Left = 182
            Top = 190
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'SALDO TOTAL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = lbl_ressaldobco
            ParentFont = False
          end
          object edtres_SaldoGeral: TRLLabel
            Left = 420
            Top = 190
            Width = 124
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Holder = edtres_saldobco
            ParentFont = False
          end
        end
        object rlband_filtros: TRLBand
          Left = 38
          Top = 101
          Width = 718
          Height = 17
          AutoSize = True
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          AfterPrint = rlband_filtrosAfterPrint
          object filtros: TRLMemo
            Left = 0
            Top = 1
            Width = 718
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 16
          BandType = btHeader
        end
        object RLBand1: TRLBand
          Left = 38
          Top = 697
          Width = 718
          Height = 16
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
  end
  object Src_Bco: TDataSource
    DataSet = Qr_Bco
    Left = 92
    Top = 80
  end
  object Src_Relatorio: TDataSource
    DataSet = Qr_Relatorio
    Left = 140
    Top = 88
  end
  object Qr_Bco: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select BCCODBCO,BCBANCO,BCSALDO,BCLIMITE from CADBCO')
    Left = 68
    Top = 48
    object Qr_BcoBCCODBCO: TFloatField
      FieldName = 'BCCODBCO'
      Origin = 'SG_ASSOC.CADBCO.BCCODBCO'
    end
    object Qr_BcoBCBANCO: TStringField
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
      Size = 40
    end
    object Qr_BcoBCSALDO: TFloatField
      FieldName = 'BCSALDO'
      Origin = 'SG_ASSOC.CADBCO.BCSALDO'
    end
    object Qr_BcoBCLIMITE: TFloatField
      FieldName = 'BCLIMITE'
      Origin = 'SG_ASSOC.CADBCO.BCLIMITE'
    end
    object Qr_Bcodisponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'disponivel'
      Calculated = True
    end
  end
  object Qr_Relatorio: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select count(*) as qtdreg from CADBCO')
    Left = 172
    Top = 88
    object Qr_RelatorioQTDREG: TFloatField
      FieldName = 'QTDREG'
    end
  end
  object Qr_DarAVenc: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRNUMERO,CRDESD,CRVALOR,CRVALPAG,CRDTEMIS,CRDTVCTO'
      '       ,CRCODCLI,CRAZAO'
      '       ,CRVALOR-((CRVALPAG+CRDEVOL)-CRJUROS+CRDESC) as saldodev'
      '        from'
      '       CADDAR,CADCLI where CRSTATUS=9'
      '       and CCODCLI=CRCODCLI')
    Left = 220
    Top = 146
    object Qr_DarAVencCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DarAVencCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DarAVencCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DarAVencCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_DarAVencCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DarAVencCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DarAVencCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DarAVencCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_DarAVencSALDODEV: TFloatField
      FieldName = 'SALDODEV'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
  end
  object Src_DarAvenc: TDataSource
    DataSet = Qr_DarAVenc
    Left = 92
    Top = 122
  end
  object Qr_DarVenc: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CRNUMERO,CRDESD,CRVALOR,CRVALPAG,CRDTEMIS,CRDTVCTO'
      '       ,CRCODCLI,CRAZAO'
      '       ,CRVALOR-((CRVALPAG+CRDEVOL)-CRJUROS+CRDESC) as saldodev'
      '       ,SYSDATE-CRDTVCTO AS ATRASO'
      '        from'
      '       CADDAR,CADCLI where CRSTATUS=9'
      '       and CCODCLI=CRCODCLI')
    Left = 100
    Top = 125
    object Qr_DarVencCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DarVencCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DarVencCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DarVencCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_DarVencCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DarVencCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DarVencCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DarVencCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_DarVencSALDODEV: TFloatField
      FieldName = 'SALDODEV'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DarVencATRASO: TFloatField
      FieldName = 'ATRASO'
    end
  end
  object Src_DarVenc: TDataSource
    DataSet = Qr_DarVenc
    Left = 92
    Top = 165
  end
  object Qr_ChqCli: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CHNUMERO,CHBANCO,CHVALOR,CHDTEMIS,CHDTDEP'
      '       ,CHCODCLI,CRAZAO'
      '        from'
      '       CADCHQ,CADCLI where CHSTATUS=9'
      '       and CCODCLI=CHCODCLI')
    Left = 68
    Top = 295
    object Qr_ChqCliCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Qr_ChqCliCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Qr_ChqCliCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
    end
    object Qr_ChqCliCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
    end
    object Qr_ChqCliCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
    end
    object Qr_ChqCliCHCODCLI: TFloatField
      FieldName = 'CHCODCLI'
      Origin = 'SG_ASSOC.CADCHQ.CHCODCLI'
    end
    object Qr_ChqCliCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
  end
  object Sr_ChqCli: TDataSource
    DataSet = Qr_ChqCli
    Left = 92
    Top = 279
  end
  object Qr_DapAVenc: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CANUMERO,CADESD,CAVALOR,CAVALPAG,CADTEMIS,CADTVCTO'
      '       ,CACODFOR,FRAZAO'
      '       ,CAVALOR-((CAVALPAG+CADEVOL)-CAJUROS+CADESC) as saldodev'
      '        from'
      '       CADDAP,CADFOR where CASTATUS=9'
      '       and FCODFOR=CACODFOR')
    Left = 140
    Top = 122
    object Qr_DapAVencCANUMERO: TFloatField
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Qr_DapAVencCADESD: TStringField
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 2
    end
    object Qr_DapAVencCAVALOR: TFloatField
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Qr_DapAVencCAVALPAG: TFloatField
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Qr_DapAVencCADTEMIS: TDateTimeField
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
    end
    object Qr_DapAVencCADTVCTO: TDateTimeField
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
    end
    object Qr_DapAVencCACODFOR: TFloatField
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Qr_DapAVencFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_DapAVencSALDODEV: TFloatField
      FieldName = 'SALDODEV'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
  end
  object Src_DapAVenc: TDataSource
    DataSet = Qr_DapAVenc
    Left = 172
    Top = 122
  end
  object Qr_DapVenc: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CANUMERO,CADESD,CAVALOR,CAVALPAG,CADTEMIS,CADTVCTO'
      '       ,CACODFOR,FRAZAO'
      '       ,CAVALOR-((CAVALPAG+CADEVOL)-CAJUROS+CADESC) as saldodev'
      '       ,SYSDATE-CADTVCTO AS ATRASO'
      '        from'
      '       CADDAP,CADFOR where CASTATUS=9'
      '       and FCODFOR=CACODFOR')
    Left = 140
    Top = 157
    object Qr_DapVencCANUMERO: TFloatField
      FieldName = 'CANUMERO'
    end
    object Qr_DapVencCADESD: TStringField
      FieldName = 'CADESD'
      Size = 2
    end
    object Qr_DapVencCAVALOR: TFloatField
      FieldName = 'CAVALOR'
    end
    object Qr_DapVencCAVALPAG: TFloatField
      FieldName = 'CAVALPAG'
    end
    object Qr_DapVencCADTEMIS: TDateTimeField
      FieldName = 'CADTEMIS'
    end
    object Qr_DapVencCADTVCTO: TDateTimeField
      FieldName = 'CADTVCTO'
    end
    object Qr_DapVencCACODFOR: TFloatField
      FieldName = 'CACODFOR'
    end
    object Qr_DapVencFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Size = 40
    end
    object Qr_DapVencSALDODEV: TFloatField
      FieldName = 'SALDODEV'
    end
    object Qr_DapVencATRASO: TFloatField
      FieldName = 'ATRASO'
    end
  end
  object Src_DapVenc: TDataSource
    DataSet = Qr_DapVenc
    Left = 172
    Top = 157
  end
  object Qr_ChqCP: TQuery
    OnCalcFields = Qr_BcoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CHNUMERO,CHBANCO,CHVALOR,CHDTEMIS,CHDTDEP'
      '       ,CHCODFOR,FRAZAO'
      '        from'
      '       CADCHCP,CADFOR where CHSTATUS=9'
      '       and FCODFOR=CHCODFOR')
    Left = 141
    Top = 207
    object Qr_ChqCPCHNUMERO: TFloatField
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHCP.CHNUMERO'
    end
    object Qr_ChqCPCHBANCO: TFloatField
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHCP.CHBANCO'
    end
    object Qr_ChqCPCHVALOR: TFloatField
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHCP.CHVALOR'
    end
    object Qr_ChqCPCHDTEMIS: TDateTimeField
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHCP.CHDTEMIS'
    end
    object Qr_ChqCPCHDTDEP: TDateTimeField
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHCP.CHDTDEP'
    end
    object Qr_ChqCPCHCODFOR: TFloatField
      FieldName = 'CHCODFOR'
      Origin = 'SG_ASSOC.CADCHCP.CHCODFOR'
    end
    object Qr_ChqCPFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
  end
  object Src_ChqCP: TDataSource
    DataSet = Qr_ChqCP
    Left = 173
    Top = 199
  end
  object Matricial: TRLDraftFilter
    Left = 556
    Top = 168
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Documento Word'
    Left = 604
    Top = 176
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 644
    Top = 184
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF(Acrobat Reader)'
    Left = 692
    Top = 192
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel(arquivos xls)'
    Left = 700
    Top = 160
  end
end
