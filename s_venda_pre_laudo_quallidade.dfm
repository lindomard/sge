object frm_venda_pre_laudo_quallidade: Tfrm_venda_pre_laudo_quallidade
  Left = 231
  Top = 131
  Width = 992
  Height = 580
  Caption = 'frm_venda_pre_laudo_quallidade'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 976
    Height = 542
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 77
        Height = 13
        Caption = 'Data da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 320
        Top = 40
        Width = 64
        Height = 13
        Caption = 'N'#250'mero NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 17
        Top = 77
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 321
        Top = 75
        Width = 260
        Height = 13
        Caption = 'Nome do Responsavel Pela Emiss'#227'o da Nota '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 615
        Top = 75
        Width = 136
        Height = 13
        Caption = 'Processo de Impress'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 968
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 966
          Height = 39
          Align = alClient
          Alignment = taCenter
          Caption = 'Laudo de Qualidade Assegurada'
          Color = 8421440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -35
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
      end
      object DBD_P1DATANF: TDBDateEdit
        Left = 16
        Top = 55
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'P1DATANF'
        DataSource = src_laudo01
        ReadOnly = True
        Color = 16764622
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
      object DBE_P1NUMNF: TDBEdit
        Left = 320
        Top = 55
        Width = 134
        Height = 19
        TabStop = False
        Color = 16764622
        Ctl3D = False
        DataField = 'P1NUMNF'
        DataSource = src_laudo01
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 2
      end
      object DBE_CRAZAO: TDBEdit
        Left = 16
        Top = 91
        Width = 289
        Height = 19
        TabStop = False
        Color = 16764622
        Ctl3D = False
        DataField = 'CRAZAO'
        DataSource = src_laudo01
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 3
      end
      object DBE_L01_NOMERESP: TDBEdit
        Left = 320
        Top = 91
        Width = 281
        Height = 19
        Ctl3D = False
        DataField = 'L01_NOMERESP'
        DataSource = src_laudo01
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object Gb_substrato: TGroupBox
        Left = 16
        Top = 112
        Width = 345
        Height = 289
        Caption = 'Substrato:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object DBGrid_substrato: TDBGrid
          Left = 1
          Top = 14
          Width = 343
          Height = 274
          Align = alClient
          DataSource = src_Laudo02_substrato
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid_substratoDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'L02_SELECIONADO'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LCFG_ITEM_NOME'
              Width = 233
              Visible = True
            end>
        end
      end
      object gb_corte: TGroupBox
        Left = 376
        Top = 112
        Width = 345
        Height = 98
        Caption = 'Corte'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        object DBGrid_corte: TDBGrid
          Left = 1
          Top = 14
          Width = 343
          Height = 83
          Align = alClient
          DataSource = src_Laudo02_corte
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid_corteDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'L02_SELECIONADO'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LCFG_ITEM_NOME'
              Width = 233
              Visible = True
            end>
        end
      end
      object gb_tipoadesivo: TGroupBox
        Left = 378
        Top = 210
        Width = 345
        Height = 82
        Caption = 'Tipo Adesivo'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        object DBGrid_tipoadesivo: TDBGrid
          Left = 1
          Top = 14
          Width = 343
          Height = 67
          Align = alClient
          DataSource = src_Laudo02_tipoadesivo
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid_tipoadesivoDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'L02_SELECIONADO'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LCFG_ITEM_NOME'
              Width = 233
              Visible = True
            end>
        end
      end
      object gb_gramatura: TGroupBox
        Left = 376
        Top = 293
        Width = 345
        Height = 105
        Caption = 'Gramatura:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        object DBGrid_gramatura: TDBGrid
          Left = 1
          Top = 14
          Width = 343
          Height = 90
          Align = alClient
          DataSource = src_Laudo02_gramatura
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid_gramaturaDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'L02_SELECIONADO'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LCFG_ITEM_NOME'
              Width = 233
              Visible = True
            end>
        end
      end
      object gb_produtos: TGroupBox
        Left = 0
        Top = 408
        Width = 968
        Height = 106
        Align = alBottom
        Caption = 'Produtos:'
        TabOrder = 9
        object DBGrid_Laudo03: TDBGrid
          Left = 2
          Top = 15
          Width = 964
          Height = 89
          Align = alClient
          DataSource = Src_Laudo03
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = DBGrid_Laudo03ColExit
          OnKeyDown = DBGrid_Laudo03KeyDown
          OnKeyPress = DBGrid_Laudo03KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'L03_ITEM'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_CODPRO'
              Title.Alignment = taCenter
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_DESCRICAO_PROD'
              Title.Alignment = taCenter
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_NUM_PEDORI'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_QTDETIQ'
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_CORES'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_QTDCAIXAS'
              Title.Alignment = taCenter
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_LOTE'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_DATFAB'
              Title.Alignment = taCenter
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L03_DATVAL'
              Title.Alignment = taCenter
              Width = 83
              Visible = True
            end>
        end
      end
      object bbImprimir: TBitBtn
        Left = 816
        Top = 232
        Width = 113
        Height = 25
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
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
      object bbSalvar: TBitBtn
        Left = 816
        Top = 192
        Width = 113
        Height = 25
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = bbSalvarClick
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
      object bbSair: TBitBtn
        Left = 816
        Top = 280
        Width = 113
        Height = 25
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
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
      object DBE_L01_PROCIMP: TDBEdit
        Left = 614
        Top = 91
        Width = 281
        Height = 19
        Ctl3D = False
        DataField = 'L01_PROCIMP'
        DataSource = src_laudo01
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 13
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 32
        Top = 0
        Width = 794
        Height = 1123
        DataSource = src_laudo01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        BeforePrint = RLReport1BeforePrint
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 83
          BandType = btHeader
          object RLSintImage1: TRLImage
            Left = 8
            Top = 3
            Width = 105
            Height = 77
            Stretch = True
          end
          object lbl_razao: TRLLabel
            Left = 120
            Top = 2
            Width = 457
            Height = 16
            Alignment = taCenter
            AutoSize = False
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 584
            Top = 2
            Width = 73
            Height = 16
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 660
            Top = 2
            Width = 30
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object lbl_data: TRLLabel
            Left = 584
            Top = 23
            Width = 103
            Height = 16
            Caption = 'Data: 10/09/2014'
          end
          object lbl_hora: TRLLabel
            Left = 584
            Top = 42
            Width = 89
            Height = 16
            Caption = 'Hora: 10:09:15'
          end
        end
        object RLBand2: TRLBand
          Left = 38
          Top = 187
          Width = 718
          Height = 83
          object RLMemo1: TRLMemo
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            Align = faTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              
                'Certificamos que o produto abaixo descrito cont'#233'm as caracterist' +
                'icas e especifica'#231#245'es:')
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 0
            Top = 32
            Width = 154
            Height = 16
            Caption = 'Processo de Impress'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDb_L01_PROCIMP: TRLDBText
            Left = 156
            Top = 33
            Width = 387
            Height = 16
            AutoSize = False
            DataField = 'L01_PROCIMP'
            DataSource = src_laudo01
          end
        end
        object RLSubDetail2: TRLSubDetail
          Left = 38
          Top = 327
          Width = 718
          Height = 183
          DataSource = Src_Laudo03
          object band_cab03: TRLBand
            Left = 0
            Top = 112
            Width = 718
            Height = 27
            BandType = btTitle
            object cab_L03_DESCRICAO_PROD: TRLMemo
              Left = 6
              Top = 0
              Width = 214
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Descri'#231#227'o do Produto')
              ParentFont = False
            end
            object cab_L03_CODPRO: TRLMemo
              Left = 221
              Top = 0
              Width = 50
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'C'#243'digo do Produto')
              ParentFont = False
            end
            object cab_L03_NUM_PEDORI: TRLMemo
              Left = 271
              Top = 0
              Width = 52
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Pedido de Compra')
              ParentFont = False
            end
            object cab_L03_QTDETIQ: TRLMemo
              Left = 326
              Top = 0
              Width = 64
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Quantidade de Etiquetas')
              ParentFont = False
            end
            object cab_L03_CORES: TRLMemo
              Left = 390
              Top = 0
              Width = 62
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Cores')
              ParentFont = False
            end
            object cab_L03_QTDCAIXAS: TRLMemo
              Left = 451
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Quantidade de Caixas')
              ParentFont = False
            end
            object cab_L03_LOTE: TRLMemo
              Left = 515
              Top = 0
              Width = 58
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Lote')
              ParentFont = False
            end
            object cab_L03_DATFAB: TRLMemo
              Left = 575
              Top = 0
              Width = 68
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Data de Fabrica'#231#227'o')
              ParentFont = False
            end
            object cab_L03_DATVAL: TRLMemo
              Left = 643
              Top = 0
              Width = 72
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Layout = tlCenter
              Lines.Strings = (
                'Data de Validade')
              ParentFont = False
            end
          end
          object band_det03: TRLBand
            Left = 0
            Top = 139
            Width = 718
            Height = 16
            object det_L03_DESCRICAO_PROD: TRLDBText
              Left = 6
              Top = 0
              Width = 214
              Height = 16
              AutoSize = False
              DataField = 'L03_DESCRICAO_PROD'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_DESCRICAO_PROD
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_CODPRO: TRLDBText
              Left = 221
              Top = 0
              Width = 50
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'L03_CODPRO'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_CODPRO
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_NUM_PEDORI: TRLDBText
              Left = 271
              Top = 0
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'L03_NUM_PEDORI'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_NUM_PEDORI
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_QTDETIQ: TRLDBText
              Left = 326
              Top = 0
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'L03_QTDETIQ'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_QTDETIQ
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_CORES: TRLDBText
              Left = 390
              Top = 0
              Width = 62
              Height = 16
              AutoSize = False
              DataField = 'L03_CORES'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_CORES
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_QTDCAIXAS: TRLDBText
              Left = 451
              Top = 0
              Width = 58
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'L03_QTDCAIXAS'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_QTDCAIXAS
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_LOTE: TRLDBText
              Left = 515
              Top = 0
              Width = 58
              Height = 16
              AutoSize = False
              DataField = 'L03_LOTE'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_LOTE
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_DATFAB: TRLDBText
              Left = 575
              Top = 0
              Width = 68
              Height = 16
              AutoSize = False
              DataField = 'L03_DATFAB'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_DATFAB
              Layout = tlCenter
              ParentFont = False
            end
            object det_L03_DATVAL: TRLDBText
              Left = 643
              Top = 0
              Width = 72
              Height = 16
              AutoSize = False
              DataField = 'L03_DATVAL'
              DataSource = Src_Laudo03
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
              Holder = cab_L03_DATVAL
              Layout = tlCenter
              ParentFont = False
            end
          end
          object RLBand3: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 112
            BandType = btTitle
            object RLMemo2: TRLMemo
              Left = 0
              Top = 0
              Width = 718
              Height = 80
              Align = faTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Lines.Strings = (
                
                  'Atualmente o respons'#225'vel pela emiss'#227'o da nota assinala manualmen' +
                  'te qual o material, de acordo com a informa'#231#227'o cadastrada pelo v' +
                  'endedor.'
                
                  'As informa'#245'es de corte, tipo de adesivo e gramatura ainda n'#227'o s'#227 +
                  'o cadastradas pelo vendedor, a respons'#225'vel assinala consultando ' +
                  'verbalmente o vendedor ou arte finalista, precisamos abrir o cam' +
                  'po para cadastrar essas informa'#231#245'es.')
              ParentFont = False
              Visible = False
            end
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 38
          Top = 270
          Width = 718
          Height = 57
          DataSource = Src_Laudo02
          object RLGroup3: TRLGroup
            Left = 0
            Top = 0
            Width = 718
            Height = 39
            DataFields = 'LCFG_GRUPO_NOME'
            object RLBand4: TRLBand
              Left = 0
              Top = 0
              Width = 718
              Height = 20
              BandType = btTitle
              object det_LCFG_GRUPO_NOME: TRLDBText
                Left = 3
                Top = -1
                Width = 138
                Height = 16
                DataField = 'LCFG_GRUPO_NOME'
                DataSource = Src_Laudo02
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object RLBand5: TRLBand
              Left = 0
              Top = 20
              Width = 718
              Height = 16
              object det_LCFG_ITEM_NOME: TRLDBText
                Left = 4
                Top = 0
                Width = 104
                Height = 16
                DataField = 'SEL_COMPLETO'
                DataSource = Src_Laudo02
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
        object RLBand_cabcli: TRLBand
          Left = 38
          Top = 121
          Width = 718
          Height = 66
          object RLLabel2: TRLLabel
            Left = 7
            Top = 5
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Data:'
          end
          object RLDBText1: TRLDBText
            Left = 99
            Top = 5
            Width = 137
            Height = 16
            AutoSize = False
            DataField = 'P1DATANF'
            DataSource = src_laudo01
          end
          object RLLabel3: TRLLabel
            Left = 481
            Top = 5
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'N'#250'mero NF:'
          end
          object RLDBText2: TRLDBText
            Left = 573
            Top = 5
            Width = 137
            Height = 16
            AutoSize = False
            DataField = 'P1NUMNF'
            DataSource = src_laudo01
          end
          object RLLabel4: TRLLabel
            Left = 8
            Top = 23
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente:'
          end
          object RLDBText3: TRLDBText
            Left = 100
            Top = 23
            Width = 597
            Height = 16
            AutoSize = False
            DataField = 'CRAZAO'
            DataSource = src_laudo01
          end
          object RLLabel5: TRLLabel
            Left = 9
            Top = 42
            Width = 89
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Responsavel:'
          end
          object RLDBText4: TRLDBText
            Left = 102
            Top = 42
            Width = 597
            Height = 16
            AutoSize = False
            DataField = 'L01_NOMERESP'
            DataSource = src_laudo01
          end
        end
      end
    end
  end
  object Tb_Laudo01: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo01AfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select laudo01.*'
      ',P1DATANF'
      ',P1CODCLI'
      ',CRAZAO'
      ',P1NUMNF'
      ',L01_PROCIMP'
      ' from CADP01,CADLAUDO_01 laudo01,CADCLI'
      'where P1CHAVE=:CHAVE'
      'and P1LOTSEQ=:CHAVE_ANO'
      'and P1CODEMP=:CODEMP'
      'and L01_CODEMP(+)=P1CODEMP'
      'and L01_CHAVE(+)=P1CHAVE'
      'and L01_CHAVE_ANO(+)=P1LOTSEQ'
      'and CCODCLI=P1CODCLI'
      '')
    UpdateObject = u_Laudo01
    Left = 232
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo01L01_CODEMP: TFloatField
      FieldName = 'L01_CODEMP'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_CODEMP'
    end
    object Tb_Laudo01L01_CHAVE: TFloatField
      FieldName = 'L01_CHAVE'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_CHAVE'
    end
    object Tb_Laudo01L01_CHAVE_ANO: TFloatField
      FieldName = 'L01_CHAVE_ANO'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_CHAVE_ANO'
    end
    object Tb_Laudo01L01_NOMERESP: TStringField
      FieldName = 'L01_NOMERESP'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_NOMERESP'
      Size = 100
    end
    object Tb_Laudo01L01_DATHOR_INC: TDateTimeField
      FieldName = 'L01_DATHOR_INC'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_DATHOR_INC'
    end
    object Tb_Laudo01L01_CODUSR_INC: TFloatField
      FieldName = 'L01_CODUSR_INC'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_CODUSR_INC'
    end
    object Tb_Laudo01L01_NOMUSR_INC: TStringField
      FieldName = 'L01_NOMUSR_INC'
      Origin = 'SG_ASSOC.CADLAUDO_01.L01_NOMUSR_INC'
      Size = 60
    end
    object Tb_Laudo01P1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_Laudo01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_Laudo01CRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Tb_Laudo01P1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_Laudo01L01_PROCIMP: TStringField
      FieldName = 'L01_PROCIMP'
      Size = 100
    end
  end
  object u_Laudo01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_01'
      'set'
      '  L01_CODEMP = :L01_CODEMP,'
      '  L01_CHAVE = :L01_CHAVE,'
      '  L01_CHAVE_ANO = :L01_CHAVE_ANO,'
      '  L01_NOMERESP = :L01_NOMERESP,'
      '  L01_DATHOR_INC = :L01_DATHOR_INC,'
      '  L01_CODUSR_INC = :L01_CODUSR_INC,'
      '  L01_NOMUSR_INC = :L01_NOMUSR_INC'
      'where'
      '  L01_CODEMP = :OLD_L01_CODEMP and'
      '  L01_CHAVE = :OLD_L01_CHAVE and'
      '  L01_CHAVE_ANO = :OLD_L01_CHAVE_ANO')
    InsertSQL.Strings = (
      'insert into CADLAUDO_01'
      
        '  (L01_CODEMP, L01_CHAVE, L01_CHAVE_ANO, L01_NOMERESP, L01_DATHO' +
        'R_INC, '
      '   L01_CODUSR_INC, L01_NOMUSR_INC)'
      'values'
      
        '  (:L01_CODEMP, :L01_CHAVE, :L01_CHAVE_ANO, :L01_NOMERESP, :L01_' +
        'DATHOR_INC, '
      '   :L01_CODUSR_INC, :L01_NOMUSR_INC)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_01'
      'where'
      '  L01_CODEMP = :OLD_L01_CODEMP and'
      '  L01_CHAVE = :OLD_L01_CHAVE and'
      '  L01_CHAVE_ANO = :OLD_L01_CHAVE_ANO')
    Left = 264
    Top = 40
  end
  object src_laudo01: TDataSource
    DataSet = Tb_Laudo01
    Left = 292
    Top = 40
  end
  object Tb_Laudo02_substrato: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo02_substratoAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select nvl(L02_CHAVEREG,LCFG_CHAVEREG) AS L02_CHAVEREG,NVL(L02_S' +
        'ELECIONADO,'#39' '#39') AS L02_SELECIONADO'
      ',LCFG_GRUPO_ORDEM'
      ',LCFG_GRUPO_NOME'
      ',LCFG_ITEM_ORDEM'
      ',LCFG_ITEM_NOME'
      'from CADLAUDO_CFG,CADLAUDO_02'
      'where L02_CODEMP(+)=:CODEMP'
      'and L02_CHAVE(+)=:CHAVE'
      'and L02_CHAVE_ANO(+)=:CHAVE_ANO'
      'and L02_CHAVEREG(+)=LCFG_CHAVEREG'
      'and LCFG_GRUPO_NOME=:NOMEGRUPO'
      'order by LCFG_GRUPO_ORDEM,LCFG_ITEM_ORDEM'
      ''
      ''
      '')
    UpdateObject = U_Laudo02_substrato
    Left = 320
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMEGRUPO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo02_substratoL02_CHAVEREG: TFloatField
      FieldName = 'L02_CHAVEREG'
    end
    object Tb_Laudo02_substratoL02_SELECIONADO: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'L02_SELECIONADO'
      Size = 1
    end
    object Tb_Laudo02_substratoLCFG_GRUPO_ORDEM: TFloatField
      FieldName = 'LCFG_GRUPO_ORDEM'
    end
    object Tb_Laudo02_substratoLCFG_GRUPO_NOME: TStringField
      FieldName = 'LCFG_GRUPO_NOME'
      Size = 50
    end
    object Tb_Laudo02_substratoLCFG_ITEM_ORDEM: TFloatField
      FieldName = 'LCFG_ITEM_ORDEM'
    end
    object Tb_Laudo02_substratoLCFG_ITEM_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LCFG_ITEM_NOME'
      Size = 50
    end
  end
  object U_Laudo02_substrato: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_02'
      'set'
      '  L02_SELECIONADO = :L02_SELECIONADO'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    InsertSQL.Strings = (
      'insert into CADLAUDO_02'
      '  (L02_SELECIONADO)'
      'values'
      '  (:L02_SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_02'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    Left = 352
    Top = 8
  end
  object src_Laudo02_substrato: TDataSource
    DataSet = Tb_Laudo02_substrato
    Left = 380
    Top = 8
  end
  object Tb_Laudo02_corte: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo02_corteAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select nvl(L02_CHAVEREG,LCFG_CHAVEREG) AS L02_CHAVEREG,NVL(L02_S' +
        'ELECIONADO,'#39' '#39') AS L02_SELECIONADO'
      ',LCFG_GRUPO_ORDEM'
      ',LCFG_GRUPO_NOME'
      ',LCFG_ITEM_ORDEM'
      ',LCFG_ITEM_NOME'
      'from CADLAUDO_CFG,CADLAUDO_02'
      'where L02_CODEMP(+)=:CODEMP'
      'and L02_CHAVE(+)=:CHAVE'
      'and L02_CHAVE_ANO(+)=:CHAVE_ANO'
      'and L02_CHAVEREG(+)=LCFG_CHAVEREG'
      'and LCFG_GRUPO_NOME=:NOMEGRUPO'
      'order by LCFG_GRUPO_ORDEM,LCFG_ITEM_ORDEM'
      ''
      ''
      '')
    UpdateObject = U_Laudo02_corte
    Left = 400
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMEGRUPO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo02_corteL02_CHAVEREG: TFloatField
      FieldName = 'L02_CHAVEREG'
    end
    object Tb_Laudo02_corteL02_SELECIONADO: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'L02_SELECIONADO'
      Size = 1
    end
    object Tb_Laudo02_corteLCFG_GRUPO_ORDEM: TFloatField
      FieldName = 'LCFG_GRUPO_ORDEM'
    end
    object Tb_Laudo02_corteLCFG_GRUPO_NOME: TStringField
      FieldName = 'LCFG_GRUPO_NOME'
      Size = 50
    end
    object Tb_Laudo02_corteLCFG_ITEM_ORDEM: TFloatField
      FieldName = 'LCFG_ITEM_ORDEM'
    end
    object Tb_Laudo02_corteLCFG_ITEM_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LCFG_ITEM_NOME'
      Size = 50
    end
  end
  object U_Laudo02_corte: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_02'
      'set'
      '  L02_SELECIONADO = :L02_SELECIONADO'
      'where'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    InsertSQL.Strings = (
      'insert into CADLAUDO_02'
      '  (L02_SELECIONADO)'
      'values'
      '  (:L02_SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_02'
      'where'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    Left = 424
    Top = 56
  end
  object src_Laudo02_corte: TDataSource
    DataSet = Tb_Laudo02_corte
    Left = 452
    Top = 56
  end
  object Tb_Laudo02_tipoadesivo: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo02_tipoadesivoAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select nvl(L02_CHAVEREG,LCFG_CHAVEREG) AS L02_CHAVEREG,NVL(L02_S' +
        'ELECIONADO,'#39' '#39') AS L02_SELECIONADO'
      ',LCFG_GRUPO_ORDEM'
      ',LCFG_GRUPO_NOME'
      ',LCFG_ITEM_ORDEM'
      ',LCFG_ITEM_NOME'
      'from CADLAUDO_CFG,CADLAUDO_02'
      'where L02_CODEMP(+)=:CODEMP'
      'and L02_CHAVE(+)=:CHAVE'
      'and L02_CHAVE_ANO(+)=:CHAVE_ANO'
      'and L02_CHAVEREG(+)=LCFG_CHAVEREG'
      'and LCFG_GRUPO_NOME=:NOMEGRUPO'
      'order by LCFG_GRUPO_ORDEM,LCFG_ITEM_ORDEM'
      ''
      ''
      '')
    UpdateObject = u_Laudo02_tipoadesivo
    Left = 488
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMEGRUPO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo02_tipoadesivoL02_CHAVEREG: TFloatField
      FieldName = 'L02_CHAVEREG'
    end
    object Tb_Laudo02_tipoadesivoL02_SELECIONADO: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'L02_SELECIONADO'
      Size = 1
    end
    object Tb_Laudo02_tipoadesivoLCFG_GRUPO_ORDEM: TFloatField
      FieldName = 'LCFG_GRUPO_ORDEM'
    end
    object Tb_Laudo02_tipoadesivoLCFG_GRUPO_NOME: TStringField
      FieldName = 'LCFG_GRUPO_NOME'
      Size = 50
    end
    object Tb_Laudo02_tipoadesivoLCFG_ITEM_ORDEM: TFloatField
      DisplayLabel = 'descri'#231#227'o'
      FieldName = 'LCFG_ITEM_ORDEM'
    end
    object Tb_Laudo02_tipoadesivoLCFG_ITEM_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LCFG_ITEM_NOME'
      Size = 50
    end
  end
  object u_Laudo02_tipoadesivo: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_02'
      'set'
      '  L02_SELECIONADO = :L02_SELECIONADO'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    InsertSQL.Strings = (
      'insert into CADLAUDO_02'
      '  (L02_SELECIONADO)'
      'values'
      '  (:L02_SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_02'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    Left = 520
    Top = 72
  end
  object src_Laudo02_tipoadesivo: TDataSource
    DataSet = Tb_Laudo02_tipoadesivo
    Left = 564
    Top = 72
  end
  object Tb_Laudo02_gramatura: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo02_gramaturaAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select nvl(L02_CHAVEREG,LCFG_CHAVEREG) AS L02_CHAVEREG,NVL(L02_S' +
        'ELECIONADO,'#39' '#39') AS L02_SELECIONADO'
      ',LCFG_GRUPO_ORDEM'
      ',LCFG_GRUPO_NOME'
      ',LCFG_ITEM_ORDEM'
      ',LCFG_ITEM_NOME'
      'from CADLAUDO_CFG,CADLAUDO_02'
      'where L02_CODEMP(+)=:CODEMP'
      'and L02_CHAVE(+)=:CHAVE'
      'and L02_CHAVE_ANO(+)=:CHAVE_ANO'
      'and L02_CHAVEREG(+)=LCFG_CHAVEREG'
      'and LCFG_GRUPO_NOME=:NOMEGRUPO'
      'order by LCFG_GRUPO_ORDEM,LCFG_ITEM_ORDEM'
      ''
      ''
      '')
    UpdateObject = U_Laudo02_gramatura
    Left = 704
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOMEGRUPO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo02_gramaturaL02_CHAVEREG: TFloatField
      FieldName = 'L02_CHAVEREG'
    end
    object Tb_Laudo02_gramaturaL02_SELECIONADO: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'L02_SELECIONADO'
      Size = 1
    end
    object Tb_Laudo02_gramaturaLCFG_GRUPO_ORDEM: TFloatField
      FieldName = 'LCFG_GRUPO_ORDEM'
    end
    object Tb_Laudo02_gramaturaLCFG_GRUPO_NOME: TStringField
      FieldName = 'LCFG_GRUPO_NOME'
      Size = 50
    end
    object Tb_Laudo02_gramaturaLCFG_ITEM_ORDEM: TFloatField
      FieldName = 'LCFG_ITEM_ORDEM'
    end
    object Tb_Laudo02_gramaturaLCFG_ITEM_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'LCFG_ITEM_NOME'
      Size = 50
    end
  end
  object U_Laudo02_gramatura: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_02'
      'set'
      '  L02_SELECIONADO = :L02_SELECIONADO'
      'where'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    InsertSQL.Strings = (
      'insert into CADLAUDO_02'
      '  (L02_SELECIONADO)'
      'values'
      '  (:L02_SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_02'
      'where'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    Left = 725
    Top = 24
  end
  object src_Laudo02_gramatura: TDataSource
    DataSet = Tb_Laudo02_gramatura
    Left = 756
    Top = 16
  end
  object Tb_Laudo03: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Laudo03AfterInsert
    AfterEdit = Tb_Laudo03AfterEdit
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      ' L03_CODEMP,'
      '  L03_CHAVE,'
      '  L03_CHAVE_ANO,'
      '  L03_ITEM,'
      '  L03_CODPRO,'
      '  L03_DESCRICAO_PROD,'
      '  L03_NUM_PEDORI,'
      '  L03_QTDETIQ,'
      '  L03_CORES,'
      '  L03_QTDCAIXAS,'
      '  L03_LOTE,'
      
        '  case when L03_DATFAB<'#39'01/01/1901'#39' then null else L03_DATFAB en' +
        'd  as L03_DATFAB ,'
      
        '  case when L03_DATVAL<'#39'01/01/1901'#39' then null else L03_DATVAL en' +
        'd as L03_DATVAL'
      ' from CADLAUDO_03'
      'where L03_CODEMP=:CODEMP'
      'and L03_CHAVE=:CHAVE'
      'and L03_CHAVE_ANO=:CHAVE_ANO'
      'order by L03_ITEM')
    UpdateObject = U_Laudo03
    Left = 760
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo03L03_CODEMP: TFloatField
      FieldName = 'L03_CODEMP'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_CODEMP'
    end
    object Tb_Laudo03L03_CHAVE: TFloatField
      FieldName = 'L03_CHAVE'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_CHAVE'
    end
    object Tb_Laudo03L03_CHAVE_ANO: TFloatField
      FieldName = 'L03_CHAVE_ANO'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_CHAVE_ANO'
    end
    object Tb_Laudo03L03_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'L03_ITEM'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_ITEM'
    end
    object Tb_Laudo03L03_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'L03_CODPRO'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_CODPRO'
    end
    object Tb_Laudo03L03_DESCRICAO_PROD: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'L03_DESCRICAO_PROD'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_DESCRICAO_PROD'
      Size = 100
    end
    object Tb_Laudo03L03_NUM_PEDORI: TStringField
      DisplayLabel = 'Ped.Compra'
      FieldName = 'L03_NUM_PEDORI'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_NUM_PEDORI'
    end
    object Tb_Laudo03L03_QTDETIQ: TFloatField
      DisplayLabel = 'Qtd.Etiq'
      FieldName = 'L03_QTDETIQ'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_QTDETIQ'
    end
    object Tb_Laudo03L03_QTDCAIXAS: TFloatField
      DisplayLabel = 'Qtd.Caixas'
      FieldName = 'L03_QTDCAIXAS'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_QTDCAIXAS'
    end
    object Tb_Laudo03L03_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'L03_LOTE'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_LOTE'
    end
    object Tb_Laudo03L03_DATFAB: TDateTimeField
      DisplayLabel = 'Dt.Fabrica'#231#227'o'
      FieldName = 'L03_DATFAB'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_DATFAB'
    end
    object Tb_Laudo03L03_DATVAL: TDateTimeField
      DisplayLabel = 'Dt.Validade'
      FieldName = 'L03_DATVAL'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_DATVAL'
    end
    object Tb_Laudo03L03_CORES: TStringField
      DisplayLabel = 'Cores'
      FieldName = 'L03_CORES'
      Origin = 'SG_ASSOC.CADLAUDO_03.L03_CORES'
      Size = 240
    end
  end
  object U_Laudo03: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_03'
      'set'
      '  L03_CODEMP = :L03_CODEMP,'
      '  L03_CHAVE = :L03_CHAVE,'
      '  L03_CHAVE_ANO = :L03_CHAVE_ANO,'
      '  L03_ITEM = :L03_ITEM,'
      '  L03_CODPRO = :L03_CODPRO,'
      '  L03_DESCRICAO_PROD = :L03_DESCRICAO_PROD,'
      '  L03_NUM_PEDORI = :L03_NUM_PEDORI,'
      '  L03_QTDETIQ = :L03_QTDETIQ,'
      '  L03_CORES = :L03_CORES,'
      '  L03_QTDCAIXAS = :L03_QTDCAIXAS,'
      '  L03_LOTE = :L03_LOTE,'
      '  L03_DATFAB = :L03_DATFAB,'
      '  L03_DATVAL = :L03_DATVAL'
      'where'
      '  L03_CODEMP = :OLD_L03_CODEMP and'
      '  L03_CHAVE = :OLD_L03_CHAVE and'
      '  L03_CHAVE_ANO = :OLD_L03_CHAVE_ANO and'
      '  L03_ITEM = :OLD_L03_ITEM')
    InsertSQL.Strings = (
      'insert into CADLAUDO_03'
      
        '  (L03_CODEMP, L03_CHAVE, L03_CHAVE_ANO, L03_ITEM, L03_CODPRO, L' +
        '03_DESCRICAO_PROD, '
      
        '   L03_NUM_PEDORI, L03_QTDETIQ, L03_CORES, L03_QTDCAIXAS, L03_LO' +
        'TE, L03_DATFAB, '
      '   L03_DATVAL)'
      'values'
      
        '  (:L03_CODEMP, :L03_CHAVE, :L03_CHAVE_ANO, :L03_ITEM, :L03_CODP' +
        'RO, :L03_DESCRICAO_PROD, '
      
        '   :L03_NUM_PEDORI, :L03_QTDETIQ, :L03_CORES, :L03_QTDCAIXAS, :L' +
        '03_LOTE, '
      '   :L03_DATFAB, :L03_DATVAL)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_03'
      'where'
      '  L03_CODEMP = :OLD_L03_CODEMP and'
      '  L03_CHAVE = :OLD_L03_CHAVE and'
      '  L03_CHAVE_ANO = :OLD_L03_CHAVE_ANO and'
      '  L03_ITEM = :OLD_L03_ITEM')
    Left = 784
    Top = 160
  end
  object Src_Laudo03: TDataSource
    DataSet = Tb_Laudo03
    Left = 812
    Top = 160
  end
  object Tb_Laudo02: TQuery
    CachedUpdates = True
    AfterPost = Tb_Laudo02_substratoAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select nvl(L02_CHAVEREG,LCFG_CHAVEREG) AS L02_CHAVEREG,NVL(L02_S' +
        'ELECIONADO,'#39' '#39') AS L02_SELECIONADO'
      ',LCFG_GRUPO_ORDEM'
      ',LCFG_GRUPO_NOME'
      ',LCFG_ITEM_ORDEM'
      ',LCFG_ITEM_NOME'
      
        ','#39'('#39' ||case when nvl(L02_SELECIONADO,'#39' '#39')='#39'S'#39' then '#39' X '#39' else '#39' ' +
        '  '#39' end || '#39') '#39'  || LCFG_ITEM_NOME  as sel_completo'
      ''
      'from CADLAUDO_CFG,CADLAUDO_02'
      'where L02_CODEMP(+)=:CODEMP'
      'and L02_CHAVE(+)=:CHAVE'
      'and L02_CHAVE_ANO(+)=:CHAVE_ANO'
      'and L02_CHAVEREG(+)=LCFG_CHAVEREG'
      'and L02_SELECIONADO='#39'S'#39
      ''
      'order by LCFG_GRUPO_ORDEM,LCFG_ITEM_ORDEM'
      ''
      ''
      '')
    UpdateObject = U_Laudo02
    Left = 552
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE_ANO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Laudo02L02_CHAVEREG: TFloatField
      FieldName = 'L02_CHAVEREG'
    end
    object Tb_Laudo02L02_SELECIONADO: TStringField
      FieldName = 'L02_SELECIONADO'
      Size = 1
    end
    object Tb_Laudo02LCFG_GRUPO_ORDEM: TFloatField
      FieldName = 'LCFG_GRUPO_ORDEM'
    end
    object Tb_Laudo02LCFG_GRUPO_NOME: TStringField
      FieldName = 'LCFG_GRUPO_NOME'
      Size = 50
    end
    object Tb_Laudo02LCFG_ITEM_ORDEM: TFloatField
      FieldName = 'LCFG_ITEM_ORDEM'
    end
    object Tb_Laudo02LCFG_ITEM_NOME: TStringField
      FieldName = 'LCFG_ITEM_NOME'
      Size = 50
    end
    object Tb_Laudo02SEL_COMPLETO: TStringField
      FieldName = 'SEL_COMPLETO'
      Size = 57
    end
  end
  object U_Laudo02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLAUDO_02'
      'set'
      '  L02_SELECIONADO = :L02_SELECIONADO'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    InsertSQL.Strings = (
      'insert into CADLAUDO_02'
      '  (L02_SELECIONADO)'
      'values'
      '  (:L02_SELECIONADO)')
    DeleteSQL.Strings = (
      'delete from CADLAUDO_02'
      'where'
      '  L02_CODEMP = :OLD_L02_CODEMP and'
      '  L02_CHAVE = :OLD_L02_CHAVE and'
      '  L02_CHAVE_ANO = :OLD_L02_CHAVE_ANO and'
      '  L02_CHAVEREG = :OLD_L02_CHAVEREG')
    Left = 584
    Top = 24
  end
  object Src_Laudo02: TDataSource
    DataSet = Tb_Laudo02
    Left = 612
    Top = 24
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 836
    Top = 96
  end
end
