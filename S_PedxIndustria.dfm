object Frm_PedxIndustria: TFrm_PedxIndustria
  Left = 5
  Top = 2
  Width = 790
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pedido comparado a produ'#231#227'o'
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
    Width = 774
    Height = 429
    ActivePage = tsGerais
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    TabStop = False
    object tsGerais: TTabSheet
      Caption = 'Dados Gerais'
      object gb_rodape: TGroupBox
        Left = 0
        Top = 249
        Width = 747
        Height = 172
        Align = alClient
        Caption = 'Editar Ordem de Produ'#231#227'o:'
        TabOrder = 4
        object Panel_cabedit: TPanel
          Left = 2
          Top = 15
          Width = 743
          Height = 41
          Align = alTop
          TabOrder = 0
          object StaticText1: TStaticText
            Left = 3
            Top = 3
            Width = 55
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'C'#243'digo'
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 57
            Top = 3
            Width = 312
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Descri'#231#227'o dos Produtos'
            TabOrder = 1
          end
          object StaticText3: TStaticText
            Left = 525
            Top = 3
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Quantidade'
            TabOrder = 2
          end
          object edt_codpro: TEdit
            Left = 3
            Top = 19
            Width = 55
            Height = 19
            TabStop = False
            Color = 16759739
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_nompro: TEdit
            Left = 57
            Top = 19
            Width = 312
            Height = 19
            TabStop = False
            Color = 16759739
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object edt_qtd: TCurrencyEdit
            Left = 525
            Top = 19
            Width = 80
            Height = 19
            AutoSize = False
            Ctl3D = False
            DisplayFormat = '0.00'
            ParentCtl3D = False
            TabOrder = 9
          end
          object st_lote: TStaticText
            Left = 368
            Top = 3
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Lote'
            TabOrder = 5
          end
          object st_dtvcto: TStaticText
            Left = 447
            Top = 3
            Width = 79
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Dt.Vcto'
            TabOrder = 6
          end
          object edt_lote: TEdit
            Left = 368
            Top = 19
            Width = 80
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 20
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnKeyPress = edt_codmpKeyPress
          end
          object edt_dtvcto: TMaskEdit
            Left = 447
            Top = 19
            Width = 79
            Height = 19
            Ctl3D = False
            EditMask = '!99/99/9999;1; '
            MaxLength = 10
            ParentCtl3D = False
            TabOrder = 8
            Text = '  /  /    '
          end
        end
        object gb_editormp: TGroupBox
          Left = 2
          Top = 56
          Width = 743
          Height = 114
          Align = alClient
          Caption = 'Mat'#233'rias Primas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Panel_digmp: TPanel
            Left = 2
            Top = 15
            Width = 739
            Height = 37
            Align = alTop
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object StaticText4: TStaticText
              Left = 1
              Top = 3
              Width = 57
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object StaticText5: TStaticText
              Left = 57
              Top = 3
              Width = 312
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Nome da Mat'#233'ria Prima'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object StaticText6: TStaticText
              Left = 523
              Top = 3
              Width = 80
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object edt_codmp: TEdit
              Left = 1
              Top = 19
              Width = 57
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnExit = edt_codmpExit
              OnKeyDown = edt_codmpKeyDown
              OnKeyPress = edt_codmpKeyPress
            end
            object edt_nommp: TEdit
              Left = 57
              Top = 19
              Width = 312
              Height = 19
              TabStop = False
              Color = 16759739
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object edt_qtdmp: TCurrencyEdit
              Left = 523
              Top = 19
              Width = 80
              Height = 19
              AutoSize = False
              Ctl3D = False
              DisplayFormat = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnExit = edt_qtdmpExit
              OnKeyDown = edt_codmpKeyDown
            end
            object stmp_lote: TStaticText
              Left = 368
              Top = 3
              Width = 80
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Lote'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edtmp_lote: TEdit
              Left = 368
              Top = 19
              Width = 80
              Height = 19
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 20
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              OnExit = edtmp_loteExit
              OnKeyDown = edtmp_loteKeyDown
              OnKeyPress = edt_codmpKeyPress
            end
            object stmp_dtvcto: TStaticText
              Left = 447
              Top = 3
              Width = 79
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Dt.Vcto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edtmp_dtvcto: TMaskEdit
              Left = 447
              Top = 19
              Width = 79
              Height = 19
              Ctl3D = False
              Enabled = False
              EditMask = '!99/99/9999;1; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 10
              ParentColor = True
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Text = '  /  /    '
            end
          end
          object Panel_gridmp: TPanel
            Left = 2
            Top = 52
            Width = 647
            Height = 60
            Align = alLeft
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object DBGrid_editmp: TDBGrid
              Left = 1
              Top = 1
              Width = 645
              Height = 58
              Align = alClient
              DataSource = src_edittmp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnExit = DBGrid_editmpExit
              Columns = <
                item
                  Expanded = False
                  FieldName = 'OP2_CODMP'
                  Width = 55
                  Visible = True
                end
                item
                  Color = 16759739
                  Expanded = False
                  FieldName = 'NOMPRO'
                  Width = 310
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OP2_QTDPREV'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OP2_DTVCTO'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OP2_QTDPREV'
                  Width = 76
                  Visible = True
                end>
            end
          end
        end
      end
      object gb_opcoes: TGroupBox
        Left = 0
        Top = 217
        Width = 747
        Height = 32
        Align = alTop
        Caption = 'Op'#231#245'es:'
        TabOrder = 3
        object bbIncluir: TBitBtn
          Left = 51
          Top = 7
          Width = 75
          Height = 23
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = bbIncluirClick
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
        object bbAlterar: TBitBtn
          Left = 133
          Top = 7
          Width = 75
          Height = 23
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = bbAlterarClick
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
          NumGlyphs = 2
        end
        object bbExcluir: TBitBtn
          Left = 222
          Top = 7
          Width = 75
          Height = 23
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = bbExcluirClick
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
        object bbGravar: TBitBtn
          Left = 371
          Top = 7
          Width = 75
          Height = 23
          Caption = 'Gravar'
          Enabled = False
          TabOrder = 3
          OnClick = bbGravarClick
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
        object bbCancelar: TBitBtn
          Left = 302
          Top = 7
          Width = 75
          Height = 23
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 4
          OnClick = bbCancelarClick
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
          NumGlyphs = 2
        end
        object bbAtualizar: TBitBtn
          Left = 465
          Top = 7
          Width = 112
          Height = 23
          Caption = 'Atualizar Estoque'
          TabOrder = 5
          OnClick = bbAtualizarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
            0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
            0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
            0005555555575FF7777555555555000555555555555577755555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object bbCancEstoque: TBitBtn
          Left = 581
          Top = 7
          Width = 112
          Height = 23
          Caption = 'Cancela Estoque'
          Enabled = False
          TabOrder = 6
          OnClick = bbCancEstoqueClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object Panel_mp: TPanel
        Left = 0
        Top = 136
        Width = 747
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object gb_op01: TGroupBox
          Left = 1
          Top = 1
          Width = 325
          Height = 79
          Align = alLeft
          Caption = 'Ordem de Produ'#231#227'o do Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBGrid_op01: TDBGrid
            Left = 2
            Top = 15
            Width = 321
            Height = 62
            Align = alClient
            DataSource = src_op01
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid_op01DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'OP01_CHAVEOP'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP01_QTDPREV'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP01_QTDREAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP01_DATAHORA'
                Width = 106
                Visible = True
              end>
          end
        end
        object gb_mputilizadas: TGroupBox
          Left = 326
          Top = 1
          Width = 420
          Height = 79
          Align = alClient
          Caption = 'Materias Primas Utilizadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object DBGrid_op02: TDBGrid
            Left = 2
            Top = 15
            Width = 416
            Height = 62
            Align = alClient
            DataSource = src_op02
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'OP02_CODMP'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDNOME'
                Width = 213
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDUND'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP02_QTDPREV'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OP02_QTDUTIL'
                Visible = True
              end>
          end
        end
      end
      object Panel_perdidas: TPanel
        Left = 0
        Top = 60
        Width = 747
        Height = 76
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object gb_pedidas: TGroupBox
          Left = 1
          Top = 1
          Width = 745
          Height = 74
          Align = alClient
          Caption = 'Mercadorias Pedidas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBGrid_subtot: TDBGrid
            Left = 2
            Top = 15
            Width = 741
            Height = 57
            Align = alClient
            DataSource = src_subtot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P2CODPRO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDNOME'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDUND'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTDPED'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTDFAB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P2QTDREST'
                Visible = True
              end>
          end
        end
      end
      object gb_cabecalho: TGroupBox
        Left = 0
        Top = 0
        Width = 747
        Height = 60
        Align = alTop
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 10
          Top = 21
          Width = 41
          Height = 13
          Caption = 'Chave:'
        end
        object Label18: TLabel
          Left = 18
          Top = 40
          Width = 56
          Height = 13
          Caption = 'Lote Seq:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object SB1: TSpeedButton
          Left = 129
          Top = 18
          Width = 23
          Height = 20
          Hint = 'Pesquisa Pedidos'
          Flat = True
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000C40E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
            1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
            3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
            330000006600000099000000CC00003300000033330000336600003399000033
            CC000033FF00006600000066330000666600006699000066CC000066FF000099
            00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
            660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
            330033006600330099003300CC003300FF003333000033333300333366003333
            99003333CC003333FF00336600003366330033666600336699003366CC003366
            FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
            330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
            CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
            00006633330066336600663399006633CC006633FF0066660000666633006666
            6600666699006666CC00669900006699330066996600669999006699CC006699
            FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
            990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
            000099333300990066009933CC009900FF009966000099663300993366009966
            99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
            000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
            660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
            CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
            330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
            9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
            FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
            6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
            0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
            6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
            CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
            FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
            0303030300000000000301010101010E0303030301010101010E000E00000003
            03030303000E00000003010E0101010E03030303010E0101010E000E00000003
            03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
            00030000000000000003010101010101010E010101010101010E00000E000000
            0000000E00000000000301010E0101010101010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
            0F00000E00000000000301010E0101010F01010E01010101010E030000000000
            0000000000000000030303010101010101010101010101010E030303000E0000
            0003000E0000000303030303010E0101010E010E0101010E0303030300000000
            00030000000000030303030301010101010E01010101010E0303030303000000
            030303000000030303030303030101010E03030101010E030303030303000E00
            030303000E0003030303030303010E010E0303010E010E030303030303000000
            030303000000030303030303030101010E03030101010E030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SB1Click
        end
        object edt_chave: TEdit
          Left = 52
          Top = 18
          Width = 76
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = edt_chaveExit
        end
        object edt_nomcli: TEdit
          Left = 152
          Top = 18
          Width = 518
          Height = 19
          TabStop = False
          Color = 12320767
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_cidade: TEdit
          Left = 152
          Top = 36
          Width = 518
          Height = 19
          TabStop = False
          Color = 12320767
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edt_lotseq: TEdit
          Left = 90
          Top = 36
          Width = 38
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
        end
        object bbImprimir: TBitBtn
          Left = 673
          Top = 9
          Width = 75
          Height = 23
          Caption = '&Imprimir'
          TabOrder = 4
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
          Left = 673
          Top = 33
          Width = 75
          Height = 22
          Caption = 'Sair'
          TabOrder = 5
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
      Caption = 'Relat'#243'rios'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 0
        Top = 48
        Width = 794
        Height = 1123
        DataSource = src_subtot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 67
          BandType = btHeader
          object RLImage_cab: TRLImage
            Left = 0
            Top = 0
            Width = 105
            Height = 67
            Align = faLeft
            Stretch = True
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 105
            Top = 0
            Width = 94
            Height = 16
            AutoSize = False
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 606
            Top = 0
            Width = 112
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itHour
          end
          object lbl_cabempresa: TRLLabel
            Left = 364
            Top = 0
            Width = 95
            Height = 16
            Align = faCenterTop
            Alignment = taCenter
          end
          object lbl_titulo: TRLLabel
            Left = 105
            Top = 51
            Width = 52
            Height = 16
            Align = faLeftBottom
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 671
            Top = 51
            Width = 47
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 594
            Top = 51
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
        end
        object RLSubDet_Resumo: TRLSubDetail
          Left = 38
          Top = 105
          Width = 718
          Height = 64
          DataSource = src_subtot
          object RLBand_cabres01: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 16
            BandType = btHeader
            object RLLabel1: TRLLabel
              Left = 5
              Top = 1
              Width = 48
              Height = 16
              Caption = 'Pedido:'
            end
            object lbl_resumo_pedido: TRLLabel
              Left = 56
              Top = 1
              Width = 112
              Height = 16
            end
          end
          object RLBand_cabres02: TRLBand
            Left = 0
            Top = 16
            Width = 718
            Height = 16
            BandType = btHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_res_codpro: TRLLabel
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              Caption = 'C'#243'digo'
            end
            object lbl_res_descricao: TRLLabel
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              Caption = 'Descri'#231#227'o'
            end
            object lbl_res_und: TRLLabel
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              Caption = 'Und'
            end
            object lbl_res_qtdped: TRLLabel
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Pedida'
            end
            object lbl_res_qtdfab: TRLLabel
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Fabricada'
            end
            object lbl_res_qtdres: TRLLabel
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Qtd. Restante'
            end
          end
          object RLBand_res_det: TRLBand
            Left = 0
            Top = 32
            Width = 718
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AfterPrint = RLBand_res_detAfterPrint
            object edt_res_codpro: TRLDBText
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              DataField = 'P2CODPRO'
              DataSource = src_subtot
              Holder = lbl_res_codpro
            end
            object edt_res_descricao: TRLDBText
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              DataField = 'PDNOME'
              DataSource = src_subtot
              Holder = lbl_res_descricao
            end
            object edt_res_und: TRLDBText
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              DataField = 'PDUND'
              DataSource = src_subtot
              Holder = lbl_res_und
            end
            object edt_res_qtdped: TRLDBText
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTDPED'
              DataSource = src_subtot
              Holder = lbl_res_qtdped
            end
            object edt_res_qtdfab: TRLDBText
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTDFAB'
              DataSource = src_subtot
              Holder = lbl_res_qtdfab
            end
            object edt_res_qtdres: TRLDBText
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'P2QTDREST'
              DataSource = src_subtot
              Holder = lbl_res_qtdres
            end
          end
          object RLBand_resumo_total: TRLBand
            Left = 0
            Top = 48
            Width = 718
            Height = 16
            BandType = btSummary
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLBand_resumo_totalBeforePrint
            object tot_res_codpro: TRLLabel
              Left = 3
              Top = 0
              Width = 71
              Height = 16
              AutoSize = False
              Holder = lbl_res_codpro
            end
            object tot_res_descricao: TRLLabel
              Left = 76
              Top = 0
              Width = 317
              Height = 16
              AutoSize = False
              Caption = 
                '- Totais........................................................' +
                '.........................'
              Holder = lbl_res_descricao
            end
            object tot_res_und: TRLLabel
              Left = 394
              Top = 0
              Width = 33
              Height = 16
              AutoSize = False
              Holder = lbl_res_und
            end
            object tot_res_qtdped: TRLLabel
              Left = 428
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdped
            end
            object tot_res_qtdfab: TRLLabel
              Left = 524
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdfab
            end
            object tot_res_qtdres: TRLLabel
              Left = 620
              Top = 0
              Width = 96
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Holder = lbl_res_qtdres
            end
          end
        end
      end
    end
  end
  object src_subtot: TDataSource
    DataSet = mem_subtot
    OnDataChange = src_subtotDataChange
    Left = 188
    Top = 82
  end
  object qr_pedida: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODPRO,PDNOME,PDUND,'
      'P2PRECO,P2TOTDES,P2TOTLIQ,P2QTD '
      'FROM CADP02,'
      'CADPRO'
      'WHERE P2CHAVE IS NULL'
      'and PDCODPRO=P2CODPRO')
    Left = 241
    Top = 152
    object qr_pedidaP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object qr_pedidaPDNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object qr_pedidaPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object qr_pedidaP2PRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unitario'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object qr_pedidaP2TOTDES: TFloatField
      DisplayLabel = 'Total Desc.'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object qr_pedidaP2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object qr_pedidaP2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
  end
  object mem_subtot: TRxMemoryData
    Filtered = True
    FieldDefs = <
      item
        Name = 'P2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'PDNOME'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'PDUND'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTDES'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDPED'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTLIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDFAB'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDREST'
        DataType = ftFloat
      end
      item
        Name = 'P2CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'P2CHAVE'
        DataType = ftFloat
      end>
    Left = 159
    Top = 82
    object mem_subtotP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
    end
    object mem_subtotPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 53
    end
    object mem_subtotPDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
    end
    object mem_subtotP2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'
      FieldName = 'P2PRECO'
    end
    object mem_subtotP2TOTDES: TFloatField
      DisplayLabel = 'Total Desc'
      FieldName = 'P2TOTDES'
    end
    object mem_subtotP2TOTLIQ: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P2TOTLIQ'
    end
    object mem_subtotP2QTDPED: TFloatField
      DisplayLabel = 'Quant.Pedida'
      FieldName = 'P2QTDPED'
    end
    object mem_subtotP2QTDFAB: TFloatField
      DisplayLabel = 'Qtd.Fabricada'
      FieldName = 'P2QTDFAB'
    end
    object mem_subtotP2QTDREST: TFloatField
      DisplayLabel = 'Qtd.Restante'
      FieldName = 'P2QTDREST'
    end
    object mem_subtotP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object mem_subtotP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object mem_subtotP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
  end
  object qr_op01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT OP01_CODEMP,OP01_LOTSEQ,'
      'OP01_CHAVE,OP01_CHAVEOP,OP01_DATAHORA,'
      'OP01_CODPRO,OP01_QTDPREV,OP01_QTDREAL,OP01_STATUS'
      ',OP01_LOTE,OP01_DTVCTO'
      ',PDNOME,PDMARCA,PDUND'
      'FROM CADP02_OP01,CADPRO'
      'WHERE OP01_CODPRO=PDCODPRO')
    Left = 345
    Top = 130
    object qr_op01OP01_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP01_CODEMP'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_CODEMP'
    end
    object qr_op01OP01_LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OP01_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_LOTSEQ'
    end
    object qr_op01OP01_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OP01_CHAVE'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_CHAVE'
    end
    object qr_op01OP01_CHAVEOP: TFloatField
      DisplayLabel = 'Chave OP'
      FieldName = 'OP01_CHAVEOP'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_CHAVEOP'
    end
    object qr_op01OP01_DATAHORA: TDateTimeField
      DisplayLabel = 'Data e Hora Inclus'#227'o'
      FieldName = 'OP01_DATAHORA'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_DATAHORA'
    end
    object qr_op01OP01_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod.'
      FieldName = 'OP01_CODPRO'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_CODPRO'
    end
    object qr_op01OP01_QTDPREV: TFloatField
      DisplayLabel = 'Quant.Prev.'
      FieldName = 'OP01_QTDPREV'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_QTDPREV'
    end
    object qr_op01OP01_QTDREAL: TFloatField
      DisplayLabel = 'Quant.Real'
      FieldName = 'OP01_QTDREAL'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_QTDREAL'
    end
    object qr_op01PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object qr_op01PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object qr_op01PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object qr_op01OP01_STATUS: TFloatField
      FieldName = 'OP01_STATUS'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_STATUS'
    end
    object qr_op01OP01_LOTE: TStringField
      FieldName = 'OP01_LOTE'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_LOTE'
    end
    object qr_op01OP01_DTVCTO: TDateTimeField
      FieldName = 'OP01_DTVCTO'
      Origin = 'SG_ASSOC.CADP02_OP01.OP01_DTVCTO'
    end
  end
  object src_op01: TDataSource
    DataSet = qr_op01
    OnDataChange = src_op01DataChange
    Left = 377
    Top = 138
  end
  object qr_op02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT OP02_CODEMP,OP02_LOTSEQ,'
      'OP02_CHAVE,OP02_CHAVEOP,'
      'OP02_CODMP,OP02_QTDPREV,OP02_QTDUTIL'
      ',PDNOME,PDMARCA,PDUND'
      ',OP02_LOTE,OP02_DTVCTO'
      'FROM CADP02_OP02,CADPRO'
      'WHERE OP02_CODMP=PDCODPRO')
    Left = 513
    Top = 130
    object qr_op02OP02_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'OP02_CODEMP'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_CODEMP'
    end
    object qr_op02OP02_LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OP02_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_LOTSEQ'
    end
    object qr_op02OP02_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OP02_CHAVE'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_CHAVE'
    end
    object qr_op02OP02_CHAVEOP: TFloatField
      DisplayLabel = 'Chave OP'
      FieldName = 'OP02_CHAVEOP'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_CHAVEOP'
    end
    object qr_op02OP02_CODMP: TFloatField
      DisplayLabel = 'C'#243'digo MP'
      FieldName = 'OP02_CODMP'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_CODMP'
    end
    object qr_op02OP02_QTDPREV: TFloatField
      DisplayLabel = 'Qtd.Prev.'
      FieldName = 'OP02_QTDPREV'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_QTDPREV'
    end
    object qr_op02OP02_QTDUTIL: TFloatField
      DisplayLabel = 'Qtd.Real'
      FieldName = 'OP02_QTDUTIL'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_QTDUTIL'
    end
    object qr_op02PDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object qr_op02PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
      Size = 40
    end
    object qr_op02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object qr_op02OP02_LOTE: TStringField
      FieldName = 'OP02_LOTE'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_LOTE'
    end
    object qr_op02OP02_DTVCTO: TDateTimeField
      FieldName = 'OP02_DTVCTO'
      Origin = 'SG_ASSOC.CADP02_OP02.OP02_DTVCTO'
    end
  end
  object src_op02: TDataSource
    DataSet = qr_op02
    Left = 553
    Top = 130
  end
  object mem_editmp: TRxMemoryData
    FieldDefs = <
      item
        Name = 'OP2_CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'OP2_LOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'OP2_CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'OP2_CHAVEOP'
        DataType = ftFloat
      end
      item
        Name = 'OP2_CODMP'
        DataType = ftFloat
      end
      item
        Name = 'OP2_QTDPREV'
        DataType = ftFloat
      end
      item
        Name = 'OP2_QTDUTIL'
        DataType = ftFloat
      end
      item
        Name = 'NOMPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OP2_LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OP2_DTVCTO'
        DataType = ftDateTime
      end>
    Left = 522
    Top = 353
    object mem_editmpOP2_CODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'OP2_CODEMP'
    end
    object mem_editmpOP2_LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'OP2_LOTSEQ'
    end
    object mem_editmpOP2_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'OP2_CHAVE'
    end
    object mem_editmpOP2_CHAVEOP: TFloatField
      DisplayLabel = 'Chave OP'
      FieldName = 'OP2_CHAVEOP'
    end
    object mem_editmpOP2_CODMP: TFloatField
      DisplayLabel = 'C'#243'd.MP'
      FieldName = 'OP2_CODMP'
    end
    object mem_editmpOP2_QTDPREV: TFloatField
      DisplayLabel = 'Qtd.Prev.'
      FieldName = 'OP2_QTDPREV'
    end
    object mem_editmpOP2_QTDUTIL: TFloatField
      DisplayLabel = 'Qtd_Util'
      FieldName = 'OP2_QTDUTIL'
    end
    object mem_editmpNOMPRO: TStringField
      DisplayLabel = 'Nome da Mat'#233'ria Prima'
      FieldName = 'NOMPRO'
      Size = 53
    end
    object mem_editmpUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UND'
      Size = 3
    end
    object mem_editmpMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
    end
    object mem_editmpOP2_LOTE: TStringField
      FieldName = 'OP2_LOTE'
    end
    object mem_editmpOP2_DTVCTO: TDateTimeField
      FieldName = 'OP2_DTVCTO'
    end
  end
  object src_edittmp: TDataSource
    DataSet = mem_editmp
    Left = 554
    Top = 353
  end
  object pop_mp: TPopupMenu
    Left = 535
    Top = 296
    object ExluirItem1: TMenuItem
      Caption = 'Exluir Item'
      OnClick = ExluirItem1Click
    end
  end
  object Src_Impres: TDataSource
    DataSet = Qr_Impres
    Left = 308
    Top = 40
  end
  object Qr_Impres: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 348
    Top = 40
  end
end
