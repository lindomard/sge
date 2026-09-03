object frm_ImpExcel: Tfrm_ImpExcel
  Left = 196
  Top = 85
  Width = 1070
  Height = 561
  Caption = 'Ler Arquivos de Licita'#231#227'o'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1062
    Height = 489
    ActivePage = tsDadosImp
    Align = alClient
    TabOrder = 0
    object tsDadosImp: TTabSheet
      Caption = 'Dados de Importa'#231#227'o'
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 1054
        Height = 102
        Align = alClient
        ColCount = 500
        DefaultRowHeight = 15
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 102
        Width = 1054
        Height = 359
        Align = alBottom
        TabOrder = 1
        object GB_ITENSIMPORT: TGroupBox
          Left = 741
          Top = 1
          Width = 312
          Height = 357
          Align = alRight
          Caption = 'Itens a Serem Importados:'
          TabOrder = 0
          OnExit = GB_ITENSIMPORTExit
          object Label2: TLabel
            Left = 5
            Top = 46
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Item:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 5
            Top = 69
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descri'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 5
            Top = 89
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 5
            Top = 111
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Unidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 5
            Top = 133
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Marca:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 5
            Top = 153
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pco Unitario:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 5
            Top = 174
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pco Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 5
            Top = 198
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descri'#231#227'o Complementar:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 3
            Top = 238
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ler a partir da linha:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 4
            Top = 19
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Lote do Pregao:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbn_salvarPadrao: TSpeedButton
            Left = 10
            Top = 328
            Width = 131
            Height = 24
            Cursor = crHandPoint
            Caption = 'Salvar Padr'#227'o'
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
            OnClick = sbn_salvarPadraoClick
          end
          object sbnCancelar: TSpeedButton
            Left = 152
            Top = 327
            Width = 131
            Height = 24
            Cursor = crHandPoint
            Caption = 'Cancelar Padr'#227'o'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = sbnCancelarClick
          end
          object Label15: TLabel
            Left = 6
            Top = 218
            Width = 145
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pre'#231'o Unitario Custo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cb_item: TComboBox
            Left = 153
            Top = 41
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 1
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_itemExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_descricao: TComboBox
            Left = 153
            Top = 63
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 2
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_descricaoExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_qtde: TComboBox
            Left = 153
            Top = 85
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 3
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_qtdeExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_unidade: TComboBox
            Left = 153
            Top = 106
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 4
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_unidadeExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_marca: TComboBox
            Left = 153
            Top = 128
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 5
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_marcaExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_unitario: TComboBox
            Left = 153
            Top = 150
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 6
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_unitarioExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_total: TComboBox
            Left = 153
            Top = 172
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 7
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_totalExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object cb_descricao_complementar: TComboBox
            Left = 153
            Top = 194
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 8
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_descricao_complementarExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object edt_linha_apartir: TSpinEdit
            Left = 154
            Top = 237
            Width = 52
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 10
            Value = 1
          end
          object cb_lote_pregao: TComboBox
            Left = 152
            Top = 17
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 0
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_lote_pregaoExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
          object GroupBox1: TGroupBox
            Left = 24
            Top = 255
            Width = 285
            Height = 70
            Caption = 'Sobre '#205'tens Ganhado:'
            TabOrder = 11
            object Label13: TLabel
              Left = -20
              Top = 21
              Width = 124
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Ganhou:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = -82
              Top = 45
              Width = 192
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Importar Quando:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cb_item_ganhou: TComboBox
              Left = 119
              Top = 17
              Width = 133
              Height = 21
              ItemHeight = 13
              ItemIndex = 20
              TabOrder = 0
              Text = 'Nenhum'
              OnChange = cb_itemChange
              OnExit = cb_item_ganhouExit
              Items.Strings = (
                'Coluna 01'
                'Coluna 02'
                'Coluna 03'
                'Coluna 04'
                'Coluna 05'
                'Coluna 06'
                'Coluna 07'
                'Coluna 08'
                'Coluna 09'
                'Coluna 10'
                'Coluna 11'
                'Coluna 12'
                'Coluna 13'
                'Coluna 14'
                'Coluna 15'
                'Coluna 16'
                'Coluna 17'
                'Coluna 18'
                'Coluna 19'
                'Coluna 20'
                'Nenhum')
            end
            object CB_IMPORTAR_QUANDO: TComboBox
              Left = 119
              Top = 41
              Width = 133
              Height = 21
              ItemHeight = 13
              ItemIndex = 1
              TabOrder = 1
              Text = 'Sempre'
              OnChange = CB_IMPORTAR_QUANDOChange
              OnExit = CB_IMPORTAR_QUANDOExit
              Items.Strings = (
                'Preenchido'
                'Sempre')
            end
          end
          object cb_pco_cpr: TComboBox
            Left = 154
            Top = 216
            Width = 133
            Height = 21
            ItemHeight = 13
            ItemIndex = 20
            TabOrder = 9
            Text = 'Nenhum'
            OnChange = cb_itemChange
            OnExit = cb_pco_cprExit
            Items.Strings = (
              'Coluna 01'
              'Coluna 02'
              'Coluna 03'
              'Coluna 04'
              'Coluna 05'
              'Coluna 06'
              'Coluna 07'
              'Coluna 08'
              'Coluna 09'
              'Coluna 10'
              'Coluna 11'
              'Coluna 12'
              'Coluna 13'
              'Coluna 14'
              'Coluna 15'
              'Coluna 16'
              'Coluna 17'
              'Coluna 18'
              'Coluna 19'
              'Coluna 20'
              'Nenhum')
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 740
          Height = 357
          Align = alClient
          TabOrder = 1
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 738
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 5
              Top = 11
              Width = 85
              Height = 13
              Caption = 'Nome do Arquivo:'
            end
            object nomarq: TEdit
              Left = 98
              Top = 6
              Width = 416
              Height = 21
              TabStop = False
              TabOrder = 0
              OnExit = nomarqExit
            end
            object bbPesq: TBitBtn
              Left = 521
              Top = 4
              Width = 97
              Height = 25
              Cursor = crHandPoint
              Caption = 'Pesquisar'
              TabOrder = 1
              OnClick = bbPesqClick
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
          object Panel5: TPanel
            Left = 1
            Top = 315
            Width = 738
            Height = 41
            Align = alBottom
            TabOrder = 1
            object bbGerar: TBitBtn
              Left = 4
              Top = 16
              Width = 125
              Height = 25
              Cursor = crHandPoint
              Caption = 'Gerar Arquivos'
              TabOrder = 0
              OnClick = bbGerarClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
                3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
                700077337F3333373777887007333337007733F773F333337733700070333333
                077037773733333F7F37703707333300080737F373333377737F003333333307
                78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
                078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
                70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
                3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
                33337F73FF737773333307800077033333337337773373333333}
              NumGlyphs = 2
            end
            object bbLerarq: TBitBtn
              Left = 131
              Top = 16
              Width = 125
              Height = 25
              Cursor = crHandPoint
              Caption = 'Ler Arquivo'
              TabOrder = 1
              Visible = False
              OnClick = bbLerarqClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                0033333337FFFFFF773333333000000003333333377777777333}
              NumGlyphs = 2
            end
            object btnImortar: TBitBtn
              Left = 256
              Top = 16
              Width = 163
              Height = 25
              Cursor = crHandPoint
              Caption = 'Importar para SGE'
              TabOrder = 2
              OnClick = btnImortarClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
                333333333333337FF3333333333333903333333333333377FF33333333333399
                03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
                99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
                99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
                03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
                33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
                33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
                3333777777333333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
            object cb_excluir_anteriores: TCheckBox
              Left = 424
              Top = 24
              Width = 273
              Height = 17
              Caption = 'Excluir Itens Existentes'
              TabOrder = 3
            end
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 42
            Width = 738
            Height = 273
            Align = alClient
            DataSource = DataSource1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
    object tsIrreg: TTabSheet
      Caption = 'Irregularidades'
      ImageIndex = 1
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 415
        Height = 25
        Align = alTop
        Alignment = taCenter
        Caption = 'Irregularidades Encontradas na Importa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Memo1: TMemo
        Left = 0
        Top = 24
        Width = 906
        Height = 430
        Align = alClient
        Color = 12320767
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 489
    Width = 1062
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 314
      Top = 11
      Width = 319
      Height = 25
      Cursor = crHandPoint
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object opd1: TOpenDialog
    Left = 551
    Top = 18
  end
  object Qr_Temp: TRxMemoryData
    Filtered = True
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtde'
        DataType = ftFloat
      end
      item
        Name = 'Marca'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VlrUnit'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Unid'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'LotePregao'
        DataType = ftString
        Size = 5
      end>
    Left = 582
    Top = 18
    object Qr_Templote_pregao: TStringField
      FieldName = 'lote_pregao'
      Size = 10
    end
    object Qr_TempItem: TIntegerField
      FieldName = 'Item'
    end
    object Qr_TempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 500
    end
    object Qr_TempUnid: TStringField
      FieldName = 'Unid'
      Size = 4
    end
    object Qr_TempQtde: TFloatField
      FieldName = 'Qtde'
      DisplayFormat = ',0.00;-,0.00'
      currency = True
    end
    object Qr_TempMarca: TStringField
      FieldName = 'Marca'
    end
    object Qr_TempVlrUnit: TFloatField
      FieldName = 'Vlr Unit'#225'rio'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_TempVlrTotal: TFloatField
      FieldName = 'Vlr Total'
      DisplayFormat = ',0.00;-,0.00'
    end
    object Qr_TempDescricao_Complementar: TStringField
      FieldName = 'Descricao_Complementar'
      Size = 3000
    end
    object Qr_Tempganhou: TStringField
      FieldName = 'ganhou'
      Size = 100
    end
    object Qr_Temppcocpr: TFloatField
      DisplayLabel = 'Pre'#231'o Un Custo'
      FieldName = 'pcocpr'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qr_Temp
    Left = 613
    Top = 18
  end
  object Query1: TQuery
    Left = 220
    Top = 104
  end
end
