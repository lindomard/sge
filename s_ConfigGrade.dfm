object Frm_ConfigGrade: TFrm_ConfigGrade
  Left = 184
  Top = 124
  Width = 936
  Height = 583
  Caption = 'Configura'#231#227'o da Grade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel_cab: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 41
    Align = alTop
    Caption = 'Contrato de Presta'#231#227'o de Servico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 920
    Height = 463
    ActivePage = tsConfiguracao
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object tsConfiguracao: TTabSheet
      Caption = 'Configura'#231#227'o das Grades'
      object Panel_detalhe: TPanel
        Left = 0
        Top = 150
        Width = 912
        Height = 149
        Align = alTop
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 1
          Top = 1
          Width = 104
          Height = 147
          Align = alLeft
          Caption = 'Itens:'
          TabOrder = 0
          object DBGrid_TabOP02_res: TDBGrid
            Left = 1
            Top = 14
            Width = 102
            Height = 132
            Align = alClient
            DataSource = src_dword02_res
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Width = 45
                Visible = True
              end>
          end
        end
        object GroupBox3: TGroupBox
          Left = 105
          Top = 1
          Width = 806
          Height = 147
          Align = alClient
          Caption = 'Dados das Colunas:'
          TabOrder = 1
          object DBGrid_dadoscol: TDBGrid
            Left = 1
            Top = 14
            Width = 726
            Height = 132
            Align = alClient
            DataSource = src_dword02
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnColExit = DBGrid_dadoscolColExit
            OnDrawColumnCell = DBGrid_dadoscolDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DW02_COLUNA'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_MESCLAR_FIN'
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_TIPOCAMPO'
                PickList.Strings = (
                  'Texto'
                  'Dados')
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_CAMPOOUTEXTO'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_TAMANHO_DIG'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_ALINHAMENTO'
                PickList.Strings = (
                  'Esquerda'
                  'Centro'
                  'Direita')
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_FORMATO'
                PickList.Strings = (
                  '#,##0.00'
                  'dd/mm/yyyy'
                  'extenso_reais'
                  'extenso_data'
                  'extenso_numero')
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_FONTE_TAMANHO'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tamcalc'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_POSICAO'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_NOMGRADE'
                Width = 74
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 727
            Top = 14
            Width = 78
            Height = 132
            Align = alRight
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 1
              Top = 0
              Width = 75
              Height = 49
              Caption = 'Cor Fonte'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555550555
                555555555555F55555555505555B0555570555F55557F55555F55B50555B0555
                7B55575F5557F555575555B5055B5557B5555575F55755557555555B5550005B
                55555557555FFF575555555555BBB0055555555555777FF5555555555BBBBB00
                55555555577777FF55555000BBBBBBB050005FFF7777777F5FFFBBB5BBBBBBB0
                BBB577757777777F77755555BBBBBBB55555555577777775555555555BBBBB55
                55555555577777555555555705BBB55505555555F5777555F555557B5555055B
                505555575555F5575F5557B5555B0555B50555755557F55575F55B55555B0555
                5B5557555557F55557555555555B555555555555555755555555}
              Layout = blGlyphTop
              NumGlyphs = 2
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 0
              Top = 47
              Width = 75
              Height = 49
              Caption = 'Cor Fundo'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333000003333333333F777773FF333333003333300
                33333337733333773F33330333333333033333733FFFFFFF73F3303300000003
                303337F37777777337F3303330CCC0333033373337777733373F0333330C0333
                33037F33337773FFF37F03333330300033037F3FFFF73777FF7F0300000307B7
                03037F77777F77777F7F030999030BBB03037F77777F77777F7F0309990307B7
                03037377777F7777737330099903300030333777777F377737F3300000033333
                3033377777733333373333033333333303333373FF33333F7333333003333300
                3333333773FFFF77333333333000003333333333377777333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              OnClick = SpeedButton2Click
            end
            object BitBtn1: TBitBtn
              Left = 5
              Top = 95
              Width = 37
              Height = 25
              Caption = 'Grade'
              TabOrder = 0
              Visible = False
              OnClick = BitBtn1Click
            end
            object BitBtn2: TBitBtn
              Left = 40
              Top = 95
              Width = 37
              Height = 25
              Caption = 'BitBtn1'
              TabOrder = 1
              Visible = False
              OnClick = BitBtn2Click
            end
            object BitBtn8: TBitBtn
              Left = 32
              Top = 112
              Width = 75
              Height = 25
              Caption = 'BitBtn8'
              TabOrder = 2
              Visible = False
              OnClick = BitBtn8Click
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 912
        Height = 150
        Align = alTop
        TabOrder = 1
        object GroupBox5: TGroupBox
          Left = 1
          Top = 1
          Width = 120
          Height = 148
          Align = alLeft
          Caption = 'Grades Existentes:'
          TabOrder = 0
          object DBGrid_grades: TDBGrid
            Left = 2
            Top = 15
            Width = 116
            Height = 91
            Align = alClient
            DataSource = src_dword01_grades
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'DW01G_NOMGRADE'
                Width = 150
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 2
            Top = 106
            Width = 116
            Height = 40
            Align = alBottom
            TabOrder = 1
            object bbgrade_incluir: TBitBtn
              Left = 4
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Inclus'#227'o de novos registros'
              Caption = '&Novo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbgrade_incluirClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object bbgrade_alterar: TBitBtn
              Left = 38
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Permite alterar o registro atual'
              Caption = '&Alterar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bbgrade_alterarClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                00333377737FFFFF773333303300000003333337337777777333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object bbgrade_excluir: TBitBtn
              Left = 72
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Exclus'#227'o do registro atual'
              Caption = '&Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = bbgrade_excluirClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
                993337777F777F3377F3393999707333993337F77737333337FF993399933333
                399377F3777FF333377F993339903333399377F33737FF33377F993333707333
                399377F333377FF3377F993333101933399377F333777FFF377F993333000993
                399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
                99333773FF777F777733339993707339933333773FF7FFF77333333999999999
                3333333777333777333333333999993333333333377777333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object bbgrade_gravar: TBitBtn
              Left = 106
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Grava o registro atual'
              Caption = '&Gravar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bbgrade_gravarClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object bbgrade_cancelar: TBitBtn
              Left = 140
              Top = 2
              Width = 42
              Height = 37
              Hint = 'Cancela a opera'#231#227'o atual'
              Caption = 'Cance&lar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object DBNavigator_tabop01: TDBNavigator
              Left = 181
              Top = 2
              Width = 112
              Height = 37
              Hint = 'Navega entre os registros selecionados'
              DataSource = src_dword01
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Hints.Strings = (
                'Primeiro Registro'
                'Registro Anterior'
                'Proximo Registro'
                #218'ltimo Registro')
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
            end
          end
        end
        object Panel3: TPanel
          Left = 298
          Top = 1
          Width = 613
          Height = 148
          Align = alRight
          TabOrder = 1
          OnExit = Panel3Exit
          object StaticText1: TStaticText
            Left = 3
            Top = 4
            Width = 250
            Height = 19
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Nome da Grade'
            TabOrder = 0
          end
          object DBEdit_nomrel: TDBEdit
            Left = 252
            Top = 4
            Width = 250
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DW01_NOMGRADE'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 1
            OnExit = DBEdit_nomrelExit
          end
          object StaticText4: TStaticText
            Left = 148
            Top = 22
            Width = 169
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Quantidade de Linhas'
            TabOrder = 2
          end
          object StaticText7: TStaticText
            Left = 316
            Top = 22
            Width = 288
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Observa'#231#245'es'
            TabOrder = 3
          end
          object StaticText2: TStaticText
            Left = 3
            Top = 38
            Width = 72
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Tamanho da grade'
            TabOrder = 4
          end
          object StaticText3: TStaticText
            Left = 74
            Top = 38
            Width = 75
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Qtd Colunas'
            TabOrder = 5
          end
          object StaticText5: TStaticText
            Left = 148
            Top = 38
            Width = 86
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'p/Cabecalho'
            TabOrder = 6
          end
          object StaticText6: TStaticText
            Left = 232
            Top = 38
            Width = 85
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'p/Rodape'
            TabOrder = 7
          end
          object DBE_DW01_TAMANHO: TDBEdit
            Left = 3
            Top = 54
            Width = 72
            Height = 19
            Ctl3D = False
            DataField = 'DW01_TAMANHO'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 8
          end
          object DBEdit_QTDCOL: TDBEdit
            Left = 74
            Top = 54
            Width = 75
            Height = 19
            Ctl3D = False
            DataField = 'DW01_QTDCOL'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 9
            OnEnter = DBEdit_QTDCOLEnter
            OnExit = DBEdit_QTDCOLExit
          end
          object DBEdit_QTDLINCAB: TDBEdit
            Left = 148
            Top = 54
            Width = 85
            Height = 19
            Ctl3D = False
            DataField = 'DW01_QTDLINCAB'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 10
            OnEnter = DBEdit_QTDLINCABEnter
            OnExit = DBEdit_QTDLINCABExit
          end
          object DBE_QTDLINROD: TDBEdit
            Left = 232
            Top = 54
            Width = 85
            Height = 19
            Ctl3D = False
            DataField = 'DW01_QTDLINROD'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 11
            OnEnter = DBE_QTDLINRODEnter
            OnExit = DBE_QTDLINRODExit
          end
          object DBMemo_OBS: TDBMemo
            Left = 316
            Top = 38
            Width = 288
            Height = 35
            Ctl3D = False
            DataField = 'DW01_OBS'
            DataSource = src_dword01
            ParentCtl3D = False
            TabOrder = 12
          end
          object Panel5: TPanel
            Left = 1
            Top = 108
            Width = 611
            Height = 39
            Align = alBottom
            TabOrder = 13
          end
          object StaticText8: TStaticText
            Left = 3
            Top = 72
            Width = 250
            Height = 19
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Tipo da Tabela(Local)'
            TabOrder = 14
          end
          object RxDBComboBox1: TRxDBComboBox
            Left = 253
            Top = 72
            Width = 351
            Height = 21
            Style = csDropDownList
            Ctl3D = False
            DataField = 'DW01_TABELA'
            DataSource = src_dword01
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Licencas'
              'Locacoes'
              'Mercadorias')
            ParentCtl3D = False
            TabOrder = 15
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
        object GroupBox6: TGroupBox
          Left = 136
          Top = 1
          Width = 162
          Height = 148
          Align = alRight
          Caption = 'Grades Existentes:'
          TabOrder = 2
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 158
            Height = 91
            Align = alClient
            DataSource = src_dword01
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'DW01_NOMGRADE'
                Width = 101
                Visible = True
              end>
          end
          object Panel6: TPanel
            Left = 2
            Top = 106
            Width = 158
            Height = 40
            Align = alBottom
            TabOrder = 1
            object BitBtn3: TBitBtn
              Left = 4
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Inclus'#227'o de novos registros'
              Caption = '&Novo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbgrade_incluirClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BitBtn4: TBitBtn
              Left = 38
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Permite alterar o registro atual'
              Caption = '&Alterar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bbgrade_alterarClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                00333377737FFFFF773333303300000003333337337777777333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BitBtn5: TBitBtn
              Left = 72
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Exclus'#227'o do registro atual'
              Caption = '&Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = bbgrade_excluirClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
                993337777F777F3377F3393999707333993337F77737333337FF993399933333
                399377F3777FF333377F993339903333399377F33737FF33377F993333707333
                399377F333377FF3377F993333101933399377F333777FFF377F993333000993
                399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
                99333773FF777F777733339993707339933333773FF7FFF77333333999999999
                3333333777333777333333333999993333333333377777333333}
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BitBtn6: TBitBtn
              Left = 106
              Top = 2
              Width = 35
              Height = 37
              Hint = 'Grava o registro atual'
              Caption = '&Gravar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bbgrade_gravarClick
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object BitBtn7: TBitBtn
              Left = 140
              Top = 2
              Width = 42
              Height = 37
              Hint = 'Cancela a opera'#231#227'o atual'
              Caption = 'Cance&lar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
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
              Layout = blGlyphTop
              NumGlyphs = 2
            end
            object DBNavigator1: TDBNavigator
              Left = 181
              Top = 2
              Width = 112
              Height = 37
              Hint = 'Navega entre os registros selecionados'
              DataSource = src_dword01
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Hints.Strings = (
                'Primeiro Registro'
                'Registro Anterior'
                'Proximo Registro'
                #218'ltimo Registro')
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
            end
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 299
        Width = 912
        Height = 136
        Align = alClient
        Caption = 'Preview da Grade:'
        TabOrder = 2
        object PaintBox1: TPaintBox
          Left = 2
          Top = 15
          Width = 908
          Height = 119
          Align = alClient
        end
      end
    end
    object tsLegenda: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 354
        Width = 912
        Height = 81
        Align = alBottom
        Caption = 'Importar Documento Padr'#227'o'
        TabOrder = 0
        object bbop_esp_adq: TBitBtn
          Left = 80
          Top = 15
          Width = 600
          Height = 25
          Caption = 'Adiquirir de um Arquivo Externo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = bbop_esp_adqClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
        end
        object bbop_esp_visedit: TBitBtn
          Left = 80
          Top = 39
          Width = 600
          Height = 25
          Caption = 'Visualizar'
          TabOrder = 1
          OnClick = bbop_esp_viseditClick
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
        object cb_original: TCheckBox
          Left = 688
          Top = 44
          Width = 97
          Height = 17
          Caption = 'Original'
          TabOrder = 2
        end
      end
    end
    object tsLegContServ: TTabSheet
      Caption = 'Legenda Contrato Presta'#231#227'o de Servi'#231'os'
      ImageIndex = 2
      object richEdit_leg_ContPServ: TRichEdit
        Left = 0
        Top = 0
        Width = 912
        Height = 435
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Lines.Strings = (
          '%CIDADE_EMPRESA%     - Cidade da Empresa Contratada'
          '%UF_EMPRESA%         - Cidade da Empresa Contratada'
          '%NUM_PROPOSTA%       - N'#250'mero da Proposta'
          '%NOME_CONTATO%       - Nome da Pessoa de Contrato (Contratante)'
          '%NOME_GENERICO%      - Nome Generico do Servi'#231'o Contratado'
          '%RAZSOC_CONTRATADA%  - Raz'#227'o Social do Contratado'
          '%RAZSOC_CONTRATANTE% - Raz'#227'o Social do Contratante'
          '%COND_PAGTO%         - Condi'#231#245'es de Pagamento'
          ''
          
            '%CIDADE_EMPRESA%'#39'              -Cidade da Empresa Contratada'#39'   ' +
            '       '
          
            '%UF_EMPRESA%'#39'                  -UF da Empresa Contratada'#39'       ' +
            '       '
          
            '%NUM_PROPOSTA%'#39'                -'#250'mero da Proposta'#39'              ' +
            '       '
          
            '%NOME_CONTATO%'#39'                -ome da Pessoa de Contrato (Contr' +
            'atante)'
          
            '%DATCON_EXT%'#39'                  -ata do Contrato por Extenso'#39'    ' +
            '       '
          
            '%RAZSOC_CONTRATADA%'#39'           -az'#227'o Social do Contratado'#39'      ' +
            '       '
          
            '%ENDER_CONTRATADA%'#39'            -ndere'#231'o do Contratado'#39'          ' +
            '       '
          
            '%RAZSOC_CONTRATANTE%'#39'          -az'#227'o Sociao do Contratante'#39'     ' +
            '       '
          
            '%ENDER_CONTRATANTE%'#39'           -ndereco do Contratante'#39'         ' +
            '       '
          
            '%BAIRRO_CONTRATANTE%'#39'          -airro do Contratante'#39'           ' +
            '       '
          
            '%BAIRRO_CONTRATADO%'#39'           -airro do Contratado'#39'            ' +
            '       '
          
            '%COND_PAGTO%'#39'                  -ondi'#231#245'es de Pagamento'#39'          ' +
            '       '
          
            '%CIDADE_CONTRATANTE%'#39'          -idade Contratante'#39'              ' +
            '       '
          
            '%UF_CONTRATANTE%'#39'              -F do Contratante'#39'               ' +
            '       '
          '%CNPJ_CONTRATANTE%'#39'            -NPJ do Contratante'#39
          
            '%IE_CONTRATANTE%'#39'              -nscri'#231#227'o Estadual do Contratante' +
            #39
          
            '%REPLEGAL_CONTRATANTE%'#39'        -epresentante Legal da Empresa Co' +
            'ntratante'
          
            '%REPLEGAL_CONTRATANTE_SR_SRA%'#39' -epresentante Legal da Empresa Co' +
            'ntratante Sr ou Sra'
          
            '%REPLEGAL_CONTRATANTE_CPF%'#39'    -epresentante Legal da Emprea CPF' +
            #39'      '
          
            '%REPLEGAL_CONTRATANTE_RG%'#39'     -epresentante Legal da Emprea RG'#39 +
            '       '
          
            '%IE_CONTRATANTE%'#39'              -nscri'#231#227'o Estadual do Contratante' +
            #39'      '
          
            '%TODOSSERVICOS%'#39'               -odos os Servicos Contratado'#39'    ' +
            '       '
          
            '%VALOR_PARC%'#39'                  -alor da Parcela do Contrato'#39'    ' +
            '       '
          
            '%VALOR_PARC_EXT%'#39'              -'#39'Valor da Licen'#231'a por Extenso'#39'  ' +
            '       '
          
            '%TOTAL_LIC%'#39'                   -Total das Licen'#231'as'#39'             ' +
            '       '
          
            '%TOTAL_LIC_EXT%'#39'               -Total das Licen'#231'as por extenso'#39' ' +
            '       '
          
            '%VENCIMENTO%'#39'                  -Vencimento da Parcela do Contrat' +
            'o'#39'     '
          '')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object panel_rodape: TPanel
    Left = 0
    Top = 504
    Width = 920
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbSairSemGravar: TBitBtn
      Left = 8
      Top = 2
      Width = 406
      Height = 36
      Hint = 'Fecha Esta Janela'
      Caption = 'Sair sem Gravar as altera'#231#245'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbSairSemGravarClick
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
    end
    object bbgrade_sair: TBitBtn
      Left = 513
      Top = 2
      Width = 406
      Height = 36
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair Gravando'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bbgrade_sairClick
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
  object tb_dword01: TRxMemoryData
    FieldDefs = <>
    BeforeInsert = tb_dword01BeforeInsert
    AfterInsert = tb_dword01AfterInsert
    BeforeEdit = tb_dword01BeforeEdit
    AfterEdit = tb_dword01AfterEdit
    BeforePost = tb_dword01BeforePost
    AfterPost = tb_dword01AfterPost
    BeforeCancel = tb_dword01BeforeCancel
    AfterCancel = tb_dword01AfterCancel
    BeforeDelete = tb_dword01BeforeDelete
    OnFilterRecord = tb_dword01FilterRecord
    Left = 576
    Top = 24
    object tb_dword01DW01_NOMREL: TStringField
      FieldName = 'DW01_NOMREL'
      Size = 50
    end
    object tb_dword01DW01_NOMGRADE: TStringField
      FieldName = 'DW01_NOMGRADE'
      Size = 50
    end
    object tb_dword01DW01_OBS: TMemoField
      FieldName = 'DW01_OBS'
      BlobType = ftMemo
    end
    object tb_dword01DW01_QTDCOL: TIntegerField
      FieldName = 'DW01_QTDCOL'
    end
    object tb_dword01DW01_QTDLINCAB: TIntegerField
      FieldName = 'DW01_QTDLINCAB'
    end
    object tb_dword01DW01_QTDLINROD: TIntegerField
      FieldName = 'DW01_QTDLINROD'
    end
    object tb_dword01DW01_TAMANHO: TIntegerField
      FieldName = 'DW01_TAMANHO'
    end
    object tb_dword01DW01_TABELA: TIntegerField
      FieldName = 'DW01_TABELA'
    end
  end
  object src_dword01: TDataSource
    DataSet = tb_dword01
    OnDataChange = src_dword01DataChange
    Left = 600
    Top = 24
  end
  object tb_dword02_res: TRxMemoryData
    FieldDefs = <>
    OnFilterRecord = tb_dword02_resFilterRecord
    Left = 664
    Top = 16
    object tb_dword02_resITEM: TStringField
      DisplayLabel = #205'tem'
      FieldName = 'ITEM'
      Size = 10
    end
    object tb_dword02_resNOMGRADE: TStringField
      FieldName = 'NOMGRADE'
      Size = 50
    end
  end
  object src_dword02_res: TDataSource
    DataSet = tb_dword02_res
    OnDataChange = src_dword02_resDataChange
    Left = 696
    Top = 16
  end
  object tb_dword02: TRxMemoryData
    FieldDefs = <>
    BeforePost = tb_dword02BeforePost
    AfterPost = tb_dword02AfterPost
    OnCalcFields = tb_dword02CalcFields
    OnFilterRecord = tb_dword02FilterRecord
    Left = 752
    Top = 24
    object tb_dword02DW02_TAMANHO: TIntegerField
      DisplayLabel = 'Tam'
      FieldName = 'DW02_TAMANHO'
    end
    object tb_dword02DW02_FORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'DW02_FORMATO'
      Size = 50
    end
    object tb_dword02DW02_CORFUNDO: TStringField
      DisplayLabel = 'Cor Fundo'
      FieldName = 'DW02_CORFUNDO'
      Size = 10
    end
    object tb_dword02DW02_CORFONTE: TStringField
      DisplayLabel = 'Cor Fonte'
      FieldName = 'DW02_CORFONTE'
      Size = 10
    end
    object tb_dword02DW02_NOMGRADE: TStringField
      FieldName = 'DW02_NOMGRADE'
      Size = 50
    end
    object tb_dword02DW02_CAMPOOUTEXTO: TStringField
      DisplayLabel = 'Campo/Texto'
      FieldName = 'DW02_CAMPOOUTEXTO'
      Size = 200
    end
    object tb_dword02DW02_COLUNA: TIntegerField
      DisplayLabel = 'Coluna'
      FieldName = 'DW02_COLUNA'
    end
    object tb_dword02DW02_POSICAO: TStringField
      FieldName = 'DW02_POSICAO'
      Size = 10
    end
    object tb_dword02DW02_MESCLAR_FIN: TIntegerField
      DisplayLabel = 'Mesclar at'#233
      FieldName = 'DW02_MESCLAR_FIN'
    end
    object tb_dword02DW02_TAMANHO_DIG: TIntegerField
      DisplayLabel = 'Tamanho'
      FieldName = 'DW02_TAMANHO_DIG'
    end
    object tb_dword02DW02_ALINHAMENTO: TStringField
      DisplayLabel = 'Alinhamento'
      FieldName = 'DW02_ALINHAMENTO'
    end
    object tb_dword02DW02_TIPOCAMPO: TStringField
      DisplayLabel = 'Tipo do Campo'
      FieldName = 'DW02_TIPOCAMPO'
    end
    object tb_dword02DW02_DATATYPE: TStringField
      FieldName = 'DW02_DATATYPE '
    end
    object tb_dword02tamcalc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'tamcalc'
      Calculated = True
    end
    object tb_dword02DW02_FONTE_TAMANHO: TIntegerField
      DisplayLabel = 'Tam Fonte'
      FieldName = 'DW02_FONTE_TAMANHO'
    end
  end
  object src_dword02: TDataSource
    DataSet = tb_dword02
    Left = 776
    Top = 24
  end
  object ColorDialog1: TColorDialog
    Left = 716
    Top = 97
  end
  object tb_dword01_grades: TRxMemoryData
    FieldDefs = <>
    Left = 504
    Top = 24
    object tb_dword01_gradesDW01G_NOMGRADE: TStringField
      DisplayLabel = 'Nome da Grade'
      FieldName = 'DW01G_NOMGRADE'
      Size = 50
    end
  end
  object src_dword01_grades: TDataSource
    DataSet = tb_dword01_grades
    OnDataChange = src_dword01_gradesDataChange
    Left = 536
    Top = 24
  end
  object tb_dword02_temp: TRxMemoryData
    FieldDefs = <>
    Left = 752
    Top = 56
    object tb_dword02_tempDW02_TAMANHO: TIntegerField
      DisplayLabel = 'Tam'
      FieldName = 'DW02_TAMANHO'
    end
    object tb_dword02_tempDW02_FORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'DW02_FORMATO'
      Size = 50
    end
    object tb_dword02_tempDW02_CORFUNDO: TStringField
      DisplayLabel = 'Cor Fundo'
      FieldName = 'DW02_CORFUNDO'
      Size = 10
    end
    object tb_dword02_tempDW02_CORFONTE: TStringField
      DisplayLabel = 'Cor Fonte'
      FieldName = 'DW02_CORFONTE'
      Size = 10
    end
    object tb_dword02_tempDW02_NOMGRADE: TStringField
      FieldName = 'DW02_NOMGRADE'
      Size = 50
    end
    object tb_dword02_tempDW02_CAMPOOUTEXTO: TStringField
      FieldName = 'DW02_CAMPOOUTEXTO'
      Size = 200
    end
    object tb_dword02_tempDW02_COLUNA: TIntegerField
      FieldName = 'DW02_COLUNA'
    end
    object tb_dword02_tempDW02_POSICAO: TStringField
      FieldName = 'DW02_POSICAO'
      Size = 10
    end
    object tb_dword02_tempDW02_MESCLAR_FIN: TIntegerField
      DisplayLabel = 'Mesclar at'#233
      FieldName = 'DW02_MESCLAR_FIN'
    end
    object tb_dword02_tempDW02_TAMANHO_DIG: TIntegerField
      DisplayLabel = 'Tamanho'
      FieldName = 'DW02_TAMANHO_DIG'
    end
    object tb_dword02_tempDW02_TIPOCAMPO: TStringField
      FieldName = 'DW02_TIPOCAMPO'
    end
    object tb_dword02_tempDW02_ALINHAMENTO: TStringField
      FieldName = 'DW02_ALINHAMENTO'
    end
    object tb_dword02_tempDW02_DATATYPE: TStringField
      FieldName = 'DW02_DATATYPE'
    end
    object tb_dword02_tempDW02_FONTE_TAMANHO: TIntegerField
      FieldName = 'DW02_FONTE_TAMANHO'
    end
  end
  object opd1: TOpenDialog
    DefaultExt = '*.doc'
    Left = 772
    Top = 185
  end
  object WordApp: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 416
    Top = 24
  end
  object WordDoc: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 472
    Top = 24
  end
end
