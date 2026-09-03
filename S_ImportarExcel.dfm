object Frm_ImportarExcel: TFrm_ImportarExcel
  Left = 258
  Top = 42
  Width = 1038
  Height = 591
  Caption = 'Importador Excel'
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
    Width = 1030
    Height = 560
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 1022
        Height = 34
        Align = alTop
        Alignment = taCenter
        Caption = 'Importador Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 34
        Width = 1022
        Height = 34
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 13
          Top = 10
          Width = 98
          Height = 13
          Caption = 'Nome da Tabela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cb_tabelas: TComboBox
          Left = 118
          Top = 6
          Width = 259
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'cb_tabelas'
          OnChange = cb_tabelasChange
          OnClick = cb_tabelasClick
        end
      end
      object gbTabela: TGroupBox
        Left = 0
        Top = 68
        Width = 1022
        Height = 464
        Align = alClient
        Caption = 'Tabela:'
        TabOrder = 1
        OnExit = gbTabelaExit
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 1018
          Height = 91
          Align = alTop
          Color = 8454143
          TabOrder = 0
          object Label3: TLabel
            Left = 93
            Top = 10
            Width = 97
            Height = 13
            Caption = 'Tipo Importa'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 11
            Top = 34
            Width = 50
            Height = 13
            Caption = 'Planilha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object bbPlanilha: TBitBtn
            Left = 115
            Top = 64
            Width = 117
            Height = 23
            Cursor = crHandPoint
            Caption = '&Buscar Planilha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bbPlanilhaClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
              55555575555555775F55509999999901055557F55555557F75F5001111111101
              105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
              01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
              8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
              0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
              0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
              05555555575FF777755555555500055555555555557775555555}
            NumGlyphs = 2
          end
          object DBCheckBox1: TDBCheckBox
            Left = 9
            Top = 10
            Width = 72
            Height = 17
            Caption = 'Importar'
            DataField = 'CTIMPORTAR'
            DataSource = src_config_importador_tabela
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object RxDBCB_CST_PISCOF_ENTRADA: TRxDBComboBox
            Left = 189
            Top = 4
            Width = 125
            Height = 21
            Style = csDropDownList
            Ctl3D = True
            DataField = 'CTINCSUB'
            DataSource = src_config_importador_tabela
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Incluir'
              'Substituir')
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Values.Strings = (
              'I'
              'S')
          end
          object DBEdit1: TDBEdit
            Left = 60
            Top = 33
            Width = 293
            Height = 21
            DataField = 'CTPLANILHA'
            DataSource = src_config_importador_tabela
            TabOrder = 3
          end
          object GroupBox1: TGroupBox
            Left = 520
            Top = 1
            Width = 497
            Height = 89
            Align = alRight
            Caption = 'Comandos apos Importar:'
            TabOrder = 4
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 493
              Height = 72
              Align = alClient
              DataSource = src_config_importador_comando
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CMCOMANDO'
                  Title.Alignment = taCenter
                  Width = 450
                  Visible = True
                end>
            end
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 425
          Width = 1018
          Height = 37
          Align = alBottom
          Color = 8454143
          TabOrder = 1
          object sbSalvarPadrao: TSpeedButton
            Left = 5
            Top = 0
            Width = 150
            Height = 38
            Cursor = crHandPoint
            Caption = '&Salvar'
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
            OnClick = sbSalvarPadraoClick
          end
          object SpeedButton1: TSpeedButton
            Left = 252
            Top = 15
            Width = 181
            Height = 23
            Cursor = crHandPoint
            Caption = 'Importar dados'
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
            OnClick = SpeedButton1Click
          end
          object Label5: TLabel
            Left = 465
            Top = 15
            Width = 143
            Height = 13
            Caption = 'Formato da Data Padr'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cb_todas: TCheckBox
            Left = 255
            Top = -1
            Width = 178
            Height = 17
            Caption = 'Todas tabelas selecionadas'
            TabOrder = 0
          end
          object cb_datapadrao: TComboBox
            Left = 616
            Top = 12
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cb_datapadrao'
            OnExit = cb_datapadraoExit
            Items.Strings = (
              'dd/mm/yyyy hh:nn:ss'
              'dd-mm-yyyy hh:nn:ss'
              'yyyy/mm/dd hh:nn:ss'
              'yyyy-mm-dd hh:nn:ss')
          end
        end
        object Panel4: TPanel
          Left = 2
          Top = 106
          Width = 1018
          Height = 21
          Align = alTop
          TabOrder = 2
          object Label7: TLabel
            Left = 419
            Top = 3
            Width = 164
            Height = 13
            Caption = 'Retirar Nome Campo Tabela:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 651
            Top = 5
            Width = 170
            Height = 13
            Caption = 'Retirar Nome Campo Planilha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbnLinkarParecidos: TSpeedButton
            Left = 877
            Top = 0
            Width = 126
            Height = 20
            Cursor = crHandPoint
            Caption = 'Linkar Parecidos'
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
            OnClick = sbnLinkarParecidosClick
          end
          object cb_todos: TCheckBox
            Left = 225
            Top = 4
            Width = 97
            Height = 17
            Caption = 'Todos'
            TabOrder = 0
            OnClick = cb_todosClick
          end
          object _39Edt_pdprazo_dia_up: TUpDown
            Left = 626
            Top = 1
            Width = 16
            Height = 19
            Associate = edt_ret_tabela
            TabOrder = 1
            Thousands = False
          end
          object edt_ret_tabela: TEdit
            Left = 597
            Top = 1
            Width = 29
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Text = '0'
          end
          object edt_ret_planilha: TEdit
            Left = 829
            Top = 0
            Width = 29
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Text = '0'
          end
          object UpDown1: TUpDown
            Left = 858
            Top = 0
            Width = 16
            Height = 19
            Associate = edt_ret_planilha
            TabOrder = 4
            Thousands = False
          end
        end
        object GroupBox_dados: TGroupBox
          Left = 497
          Top = 127
          Width = 523
          Height = 298
          Align = alClient
          Caption = 'Dados da Planilha:'
          TabOrder = 3
          object StringGrid1: TStringGrid
            Left = 2
            Top = 15
            Width = 519
            Height = 240
            Align = alClient
            DefaultRowHeight = 15
            FixedCols = 0
            FixedRows = 3
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 0
            OnDrawCell = StringGrid1DrawCell
          end
          object Panel8: TPanel
            Left = 2
            Top = 255
            Width = 519
            Height = 41
            Align = alBottom
            TabOrder = 1
            object Gauge1: TGauge
              Left = 444
              Top = 1
              Width = 74
              Height = 39
              Align = alRight
              Kind = gkPie
              Progress = 0
            end
            object bbLerPlanilha: TBitBtn
              Left = 281
              Top = 3
              Width = 150
              Height = 38
              Cursor = crHandPoint
              Caption = 'Ler Dados Planilha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbLerPlanilhaClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
                55555575555555775F55509999999901055557F55555557F75F5001111111101
                105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
                01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
                8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
                0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
                0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
                05555555575FF777755555555500055555555555557775555555}
              NumGlyphs = 2
            end
          end
        end
        object Panel6: TPanel
          Left = 2
          Top = 127
          Width = 495
          Height = 298
          Align = alLeft
          Caption = 'Panel6'
          TabOrder = 4
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 493
            Height = 273
            Align = alClient
            DataSource = src_config_importador
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CIORDEM'
                Title.Alignment = taCenter
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CINOMECAMPO'
                Title.Alignment = taCenter
                Width = 122
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIIMPORTAR'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIMASCARA'
                Title.Alignment = taCenter
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'celula'
                Title.Alignment = taCenter
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIVALDIG'
                PickList.Strings = (
                  '[idseq01]')
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CITIPOCAMPO'
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 1
            Top = 274
            Width = 493
            Height = 23
            Align = alBottom
            TabOrder = 1
            object Label6: TLabel
              Left = 9
              Top = 4
              Width = 80
              Height = 13
              Caption = 'Pesquisar Nome:'
            end
            object Label9: TLabel
              Left = 255
              Top = 6
              Width = 81
              Height = 13
              Caption = 'Pesquisar Celula:'
              Visible = False
            end
            object edt_nomcampo: TEdit
              Left = 90
              Top = 2
              Width = 79
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              OnChange = edt_nomcampoChange
            end
            object bbPesquisar: TBitBtn
              Left = 170
              Top = 0
              Width = 75
              Height = 22
              Caption = 'Pesquisar'
              TabOrder = 1
              OnClick = bbPesquisarClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33033333333333333F7F3333333333333000333333333333F777333333333333
                000333333333333F777333333333333000333333333333F77733333333333300
                033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
                33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
                3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
                33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
                333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
                333333773FF77333333333370007333333333333777333333333}
              NumGlyphs = 2
            end
            object edt_celula: TEdit
              Left = 336
              Top = 4
              Width = 79
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 2
              Visible = False
              OnChange = edt_nomcampoChange
            end
            object bbPesqCelula: TBitBtn
              Left = 416
              Top = 1
              Width = 75
              Height = 22
              Caption = 'Pesquisar'
              TabOrder = 3
              Visible = False
              OnClick = bbPesqCelulaClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33033333333333333F7F3333333333333000333333333333F777333333333333
                000333333333333F777333333333333000333333333333F77733333333333300
                033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
                33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
                3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
                33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
                333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
                333333773FF77333333333370007333333333333777333333333}
              NumGlyphs = 2
            end
          end
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
    end
    object tsEventos: TTabSheet
      Caption = 'EVENTOS'
      ImageIndex = 2
      object RichEdit_eventos: TRichEdit
        Left = 0
        Top = 0
        Width = 1022
        Height = 491
        Align = alClient
        Lines.Strings = (
          'RichEdit_eventos'
          'SELECT COLUMN_NAME,DATA_TYPE,'
          
            'CASE WHEN NOT CHAR_COL_DECL_LENGTH IS NULL THEN CHAR_COL_DECL_LE' +
            'NGTH '
          '     WHEN NOT DATA_PRECISION IS NULL THEN DATA_PRECISION'
          '     WHEN NOT DATA_LENGTH IS NULL THEN DATA_LENGTH'
          '     ELSE 0 END AS TAMANHO, '
          '    DATA_SCALE  FROM USER_TAB_COLUMNS '
          '                      WHERE TABLE_NAME='#39'CADP01'#39)
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 0
        Top = 491
        Width = 1022
        Height = 41
        Align = alBottom
        TabOrder = 1
      end
    end
  end
  object mem_resumo: TRxMemoryData
    FieldDefs = <
      item
        Name = 'chave_sel'
        DataType = ftFloat
      end>
    OnCalcFields = mem_resumoCalcFields
    Left = 264
    Top = 32
    object mem_resumochave_sel: TFloatField
      FieldName = 'chave_sel'
    end
  end
  object mem_config_importador_tabela: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CTCODEMP'
        DataType = ftFloat
      end
      item
        Name = 'CTNOMETABELA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CTPLANILHA'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CTINCSUB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CTIMPORTAR'
        DataType = ftString
        Size = 1
      end>
    AfterEdit = mem_config_importador_tabelaAfterEdit
    Left = 520
    Top = 32
    object mem_config_importador_tabelaCTCODEMP: TFloatField
      FieldName = 'CTCODEMP'
    end
    object mem_config_importador_tabelaCTNOMETABELA: TStringField
      FieldName = 'CTNOMETABELA'
      Size = 200
    end
    object mem_config_importador_tabelaCTPLANILHA: TStringField
      FieldName = 'CTPLANILHA'
      Size = 255
    end
    object mem_config_importador_tabelaCTINCSUB: TStringField
      FieldName = 'CTINCSUB'
      Size = 1
    end
    object mem_config_importador_tabelaCTIMPORTAR: TStringField
      FieldName = 'CTIMPORTAR'
      Size = 1
    end
  end
  object src_config_importador: TDataSource
    DataSet = mem_config_importador
    Left = 472
    Top = 31
  end
  object opdl1: TOpenDialog
    Left = 824
    Top = 167
  end
  object src_config_importador_tabela: TDataSource
    DataSet = mem_config_importador_tabela
    Left = 570
    Top = 22
  end
  object mem_config_importador_comando: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CMCODEMP'
        DataType = ftFloat
      end
      item
        Name = 'CMCOMANDO'
        DataType = ftString
        Size = 254
      end>
    AfterEdit = mem_config_importador_comandoAfterEdit
    Left = 688
    Top = 24
    object mem_config_importador_comandoCMCODEMP: TFloatField
      FieldName = 'CMCODEMP'
    end
    object mem_config_importador_comandoCMCOMANDO: TStringField
      DisplayLabel = 'Comando'
      FieldName = 'CMCOMANDO'
      Size = 254
    end
  end
  object src_config_importador_comando: TDataSource
    DataSet = mem_config_importador_comando
    Left = 738
    Top = 14
  end
  object mem_config_importador: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CICODEMP'
        DataType = ftFloat
      end
      item
        Name = 'CINOMECAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CINOMETABELA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIORDEM'
        DataType = ftInteger
      end
      item
        Name = 'CIIMPORTAR'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CIMASCARA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CICELULA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CITAMANHO_CAMPO'
        DataType = ftInteger
      end
      item
        Name = 'CITAMANHO_DECIMAIS'
        DataType = ftInteger
      end
      item
        Name = 'CITIPOCAMPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIVALDIG'
        DataType = ftString
        Size = 254
      end>
    AfterEdit = mem_config_importadorAfterEdit
    AfterPost = mem_config_importadorAfterPost
    OnCalcFields = mem_resumoCalcFields
    Left = 328
    Top = 24
    object mem_config_importadorCICODEMP: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'CICODEMP'
    end
    object mem_config_importadorCINOMECAMPO: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'CINOMECAMPO'
      Size = 50
    end
    object mem_config_importadorCINOMETABELA: TStringField
      FieldName = 'CINOMETABELA'
    end
    object mem_config_importadorCIORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'CIORDEM'
    end
    object mem_config_importadorCIIMPORTAR: TStringField
      DisplayLabel = 'Importar'
      FieldName = 'CIIMPORTAR'
      Size = 2
    end
    object mem_config_importadorCIMASCARA: TStringField
      DisplayLabel = 'Mascara'
      FieldName = 'CIMASCARA'
      Size = 100
    end
    object mem_config_importadorCICELULA: TStringField
      DisplayLabel = 'Celula'
      FieldName = 'CICELULA'
      Size = 10
    end
    object mem_config_importadorCITAMANHO_CAMPO: TIntegerField
      FieldName = 'CITAMANHO_CAMPO'
    end
    object mem_config_importadorCITAMANHO_DECIMAIS: TIntegerField
      FieldName = 'CITAMANHO_DECIMAIS'
    end
    object mem_config_importadorCITIPOCAMPO: TStringField
      FieldName = 'CITIPOCAMPO'
      Size = 30
    end
    object mem_config_importadorCIVALDIG: TStringField
      DisplayLabel = 'Valor digitado'
      FieldName = 'CIVALDIG'
      Size = 254
    end
    object mem_config_importadorcelula: TStringField
      FieldKind = fkCalculated
      FieldName = 'celula'
      Size = 10
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = mem_resumo
    Left = 292
    Top = 48
  end
end
