object Frm_Extp2: TFrm_Extp2
  Left = 48
  Top = 24
  Width = 785
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Extrato de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 777
    Height = 436
    ActivePage = TsIndividual
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TsIndividual: TTabSheet
      Caption = 'Extrato Individual por Item'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 112
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 22
          Top = 7
          Width = 110
          Height = 13
          Caption = 'C'#243'digo do Produto:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label2: TLabel
          Left = 273
          Top = 7
          Width = 128
          Height = 13
          Caption = 'Descricao do Produto:'
        end
        object Label3: TLabel
          Left = 57
          Top = 52
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label4: TLabel
          Left = 225
          Top = 52
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object lbl_grade: TLabel
          Left = 89
          Top = 30
          Width = 39
          Height = 13
          Caption = 'Grade:'
          Visible = False
        end
        object CODPRO2: TEdit
          Left = 136
          Top = 4
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = CODPRO2Enter
          OnExit = CODPRO2Exit
          OnKeyPress = CODPRO2KeyPress
        end
        object NOMPRO: TEdit
          Left = 408
          Top = 4
          Width = 333
          Height = 19
          TabStop = False
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object MDT1: TMaskEdit
          Left = 136
          Top = 50
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 293
          Top = 50
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object CB_ORC: TCheckBox
          Left = 30
          Top = 77
          Width = 216
          Height = 17
          Caption = 'Listar Tambem os Or'#231'amentos'
          TabOrder = 5
        end
        object GRADE: TEdit
          Left = 137
          Top = 27
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
          OnExit = GRADEExit
        end
        object RG_TIPO: TRadioGroup
          Left = 388
          Top = 41
          Width = 116
          Height = 63
          Caption = 'Tipo do Extrato:'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            '&Normal'
            '&Consignado'
            '&Em Revenda'
            '&Terceiros')
          ParentCtl3D = False
          TabOrder = 6
          Visible = False
        end
        object rg_serie: TRadioGroup
          Left = 568
          Top = 27
          Width = 169
          Height = 54
          Caption = 'Serie das NFS:'
          ItemIndex = 0
          Items.Strings = (
            'S'#233'rie 1'
            'S'#233'rie 2'
            'Todos')
          TabOrder = 7
          Visible = False
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 112
        Width = 769
        Height = 209
        Align = alClient
        DataSource = Src_Mov
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTE'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAIDAS'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMOV'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODUSR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Width = 53
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 321
        Width = 769
        Height = 46
        Align = alBottom
        BorderStyle = bsSingle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 4
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Compras:'
        end
        object Label6: TLabel
          Left = 229
          Top = 3
          Width = 47
          Height = 13
          Caption = 'Vendas:'
        end
        object Label7: TLabel
          Left = 406
          Top = 3
          Width = 42
          Height = 13
          Caption = 'Ajustes'
        end
        object Label8: TLabel
          Left = 568
          Top = 6
          Width = 84
          Height = 13
          Caption = 'Dev.p/Fornec:'
        end
        object Label9: TLabel
          Left = 212
          Top = 20
          Width = 77
          Height = 13
          Caption = 'Dev.Clientes:'
        end
        object Label11: TLabel
          Left = 3
          Top = 3
          Width = 99
          Height = 13
          Caption = 'Estoque Anterior:'
        end
        object Label12: TLabel
          Left = 405
          Top = 23
          Width = 44
          Height = 13
          Caption = 'Ent.Op.'
        end
        object Label13: TLabel
          Left = 595
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Saida.Op.'
        end
        object COMPRAS: TStaticText
          Left = 105
          Top = 22
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 0
        end
        object VENDASC: TStaticText
          Left = 290
          Top = 3
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 1
        end
        object AJUSTE: TStaticText
          Left = 457
          Top = 3
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 2
        end
        object DEVF: TStaticText
          Left = 658
          Top = 3
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 3
        end
        object DEVA: TStaticText
          Left = 290
          Top = 20
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 4
        end
        object ESTANT: TStaticText
          Left = 105
          Top = 4
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 5
        end
        object ENTOP: TStaticText
          Left = 457
          Top = 20
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 6
        end
        object SAIOP: TStaticText
          Left = 658
          Top = 20
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 7
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 367
        Width = 769
        Height = 41
        Align = alBottom
        TabOrder = 3
        object Label10: TLabel
          Left = 612
          Top = 12
          Width = 37
          Height = 13
          Caption = 'Saldo:'
        end
        object Label14: TLabel
          Left = 402
          Top = 12
          Width = 91
          Height = 13
          Caption = 'Saldo Cadastro:'
        end
        object BitBtn1: TBitBtn
          Left = 136
          Top = 2
          Width = 130
          Height = 36
          Cursor = crHandPoint
          Caption = '&Imprimir'
          TabOrder = 0
          OnClick = BitBtn1Click
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
        object BitBtn2: TBitBtn
          Left = 266
          Top = 2
          Width = 132
          Height = 36
          Cursor = crHandPoint
          Caption = '&Sair'
          TabOrder = 1
          OnClick = BitBtn2Click
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
        object bbAtualizar: TBitBtn
          Left = 1
          Top = 2
          Width = 132
          Height = 36
          Cursor = crHandPoint
          Caption = '&Atualizar'
          TabOrder = 2
          OnClick = bbAtualizarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object SALDO: TStaticText
          Left = 659
          Top = 10
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 3
        end
        object SALDO_CAD: TStaticText
          Left = 497
          Top = 10
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          BorderStyle = sbsSunken
          TabOrder = 4
        end
      end
    end
    object tsComparativoGeral: TTabSheet
      Caption = 'Extrato Comparativo Geral'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 367
        Width = 769
        Height = 41
        Align = alBottom
        TabOrder = 1
        object bbAtuaGer: TBitBtn
          Left = 4
          Top = 4
          Width = 132
          Height = 36
          Caption = '&Atualizar'
          TabOrder = 0
          OnClick = bbAtuaGerClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object bbImpGer: TBitBtn
          Left = 146
          Top = 4
          Width = 132
          Height = 36
          Caption = '&Imprimir'
          TabOrder = 1
          OnClick = bbImpGerClick
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
        object BitBtn6: TBitBtn
          Left = 282
          Top = 4
          Width = 132
          Height = 36
          Caption = '&Sair'
          TabOrder = 2
          OnClick = BitBtn2Click
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 769
        Height = 144
        Align = alTop
        Caption = 'Filtros:'
        TabOrder = 0
        object Label15: TLabel
          Left = 23
          Top = 18
          Width = 49
          Height = 13
          Caption = 'Produto:'
        end
        object Label16: TLabel
          Left = 6
          Top = 63
          Width = 69
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label17: TLabel
          Left = 57
          Top = 102
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label18: TLabel
          Left = 218
          Top = 102
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object Label80: TLabel
          Left = 17
          Top = 121
          Width = 118
          Height = 13
          Caption = 'Qtd Casas Decimais:'
        end
        object CODPRO: TEdit
          Left = 76
          Top = 18
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODPROExit
          OnKeyPress = CODPROKeyPress
        end
        object lbx_codpro: TListBox
          Left = 137
          Top = 18
          Width = 581
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codproKeyDown
        end
        object OMITIR_PRO: TCheckBox
          Left = 75
          Top = 39
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODFOR: TEdit
          Left = 76
          Top = 60
          Width = 62
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 137
          Top = 59
          Width = 581
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 76
          Top = 82
          Width = 58
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object MDT1_02: TMaskEdit
          Left = 137
          Top = 100
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 6
          Text = '  /  /    '
          OnExit = MDT1_02Exit
        end
        object MDT2_02: TMaskEdit
          Left = 286
          Top = 100
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 7
          Text = '  /  /    '
          OnExit = MDT2_02Exit
        end
        object StaticText1: TStaticText
          Left = 375
          Top = 103
          Width = 54
          Height = 17
          Caption = 'Estoque:'
          TabOrder = 8
        end
        object CB_TIPOEST: TComboBox
          Left = 430
          Top = 100
          Width = 125
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 9
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Consignado'
            'Em Revenda'
            'Terceiros')
        end
        object CB_FILTRAR: TComboBox
          Left = 608
          Top = 100
          Width = 110
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 10
          Text = 'Todos'
          Items.Strings = (
            'Todos'
            'Com Diferencas'
            'Sem Difefencas')
        end
        object StaticText2: TStaticText
          Left = 556
          Top = 104
          Width = 51
          Height = 17
          Caption = 'Imprimir:'
          TabOrder = 11
        end
        object CB_CASASD: TComboBox
          Left = 137
          Top = 118
          Width = 119
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          TabOrder = 12
          Text = 'Padrao'
          OnExit = CB_CASASDExit
          Items.Strings = (
            'Padrao'
            '0-Nenhuma'
            '1-uma'
            '2 duas'
            '3 tres'
            '4 quatro'
            '5 cinco'
            '6 seis'
            '7 sete'
            '8 oito')
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 144
        Width = 769
        Height = 223
        Align = alClient
        DataSource = Src_Resumo
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO_INIC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEVOL_CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADA_AJUSTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAIDA_AJUSTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADA_OP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAIDA_OP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEVOL_FORNEC'
            Visible = True
          end>
      end
    end
  end
  object Qr_Mov: TQuery
    OnCalcFields = Qr_MovCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select P1DATAP AS DATA, P1CODCLI AS CODIGO,'
      ' '#39'CL'#39' AS FORCLI, P1CHAVE AS DOCUM, P2QTD AS QUANT,'
      ' P2PRECO AS PRECO,'
      ' '#39'Venda Ja Entregue'#39' AS TIPOMOV, P2LOTE AS LOTE,'
      ' 0 as TIPO'
      ', P2PRECO AS ENTRADA'
      ', P2PRECO AS SAIDA'
      ', P2PRECO AS SALDO'
      ', P1CODUSR AS CODUSR'
      ', 0 AS EMIDOC'
      ', LPAD('#39' '#39',44) AS NUMNF'
      ', SYSDATE AS DATANF'
      '  FROM CADP01, CADP02 where P1CODEMP=1'
      '                and P1STATUS<>9'
      '                and P2CODEMP=P1CODEMP'
      '                and P2CHAVE=P1CHAVE'
      '                and P2CODPRO is null')
    Left = 216
    Top = 195
    object Qr_MovDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object Qr_MovCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object Qr_MovFORCLI: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FORCLI'
      FixedChar = True
      Size = 2
    end
    object Qr_MovDOCUM: TFloatField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUM'
    end
    object Qr_MovQUANT: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
    end
    object Qr_MovPRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit.'
      FieldName = 'PRECO'
    end
    object Qr_MovTIPOMOV: TStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'TIPOMOV'
      FixedChar = True
      Size = 17
    end
    object Qr_Movtotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_Movnome: TStringField
      DisplayLabel = 'Nome'
      FieldKind = fkCalculated
      FieldName = 'nome'
      Size = 40
      Calculated = True
    end
    object Qr_MovTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object Qr_MovENTRADA: TFloatField
      FieldName = 'ENTRADA'
    end
    object Qr_MovSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object Qr_MovSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object Qr_MovCODUSR: TFloatField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CODUSR'
    end
    object Qr_MovLOTE: TStringField
      FieldName = 'LOTE'
    end
    object Qr_MovEMIDOC: TFloatField
      FieldName = 'EMIDOC'
    end
    object Qr_MovNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 44
    end
    object Qr_MovDATANF: TDateTimeField
      FieldName = 'DATANF'
    end
  end
  object Src_Mov: TDataSource
    DataSet = mem_mov
    Left = 216
    Top = 252
  end
  object Qr_Resumo: TQuery
    OnCalcFields = Qr_MovCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * '
      ' FROM SGE30.TMPO00006'
      ''
      '')
    Left = 480
    Top = 163
    object Qr_ResumoCODIGO: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
    end
    object Qr_ResumoGRADE: TStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
    end
    object Qr_ResumoDESCRICAO: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'DESCRICAO'
      Size = 53
    end
    object Qr_ResumoUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UND'
      Size = 3
    end
    object Qr_ResumoSALDO_INIC: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'SALDO_INIC'
    end
    object Qr_ResumoVENDAS: TFloatField
      DisplayLabel = 'Vendas'
      FieldName = 'VENDAS'
    end
    object Qr_ResumoDEVOL_CLIENTE: TFloatField
      DisplayLabel = 'Devol.Cliente'
      FieldName = 'DEVOL_CLIENTE'
    end
    object Qr_ResumoCOMPRAS: TFloatField
      DisplayLabel = 'Compras'
      FieldName = 'COMPRAS'
    end
    object Qr_ResumoENTRADA_AJUSTE: TFloatField
      DisplayLabel = 'Entradas Ajuste'
      FieldName = 'ENTRADA_AJUSTE'
    end
    object Qr_ResumoSAIDA_AJUSTE: TFloatField
      DisplayLabel = 'Saidas Ajuste'
      FieldName = 'SAIDA_AJUSTE'
    end
    object Qr_ResumoENTRADA_OP: TFloatField
      DisplayLabel = 'Entradas OP'
      FieldName = 'ENTRADA_OP'
    end
    object Qr_ResumoSAIDA_OP: TFloatField
      DisplayLabel = 'Saidas OP'
      FieldName = 'SAIDA_OP'
    end
    object Qr_ResumoSALDO: TFloatField
      DisplayLabel = 'Saldo(Extrato)'
      FieldName = 'SALDO'
    end
    object Qr_ResumoESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
    end
    object Qr_ResumoDEVOL_FORNEC: TFloatField
      DisplayLabel = 'Devol.fornec'
      FieldName = 'DEVOL_FORNEC'
    end
  end
  object Src_Resumo: TDataSource
    DataSet = Qr_Resumo
    Left = 512
    Top = 156
  end
  object mem_mov: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'CODIGO'
        DataType = ftFloat
      end
      item
        Name = 'FORCLI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DOCUM'
        DataType = ftFloat
      end
      item
        Name = 'QUANT'
        DataType = ftFloat
      end
      item
        Name = 'PRECO'
        DataType = ftFloat
      end
      item
        Name = 'TIPOMOV'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'ENTRADAS'
        DataType = ftFloat
      end
      item
        Name = 'SAIDAS'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftFloat
      end
      item
        Name = 'CODUSR'
        DataType = ftFloat
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'ENTSAI'
        DataType = ftFloat
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Size = 20
      end>
    Left = 556
    Top = 80
    object mem_movDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object mem_movCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object mem_movFORCLI: TStringField
      DisplayLabel = 'Nome Sacado'
      FieldName = 'FORCLI'
      Size = 40
    end
    object mem_movQUANT: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
    end
    object mem_movPRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'PRECO'
    end
    object mem_movTIPOMOV: TStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'TIPOMOV'
      Size = 17
    end
    object mem_movENTRADAS: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'ENTRADAS'
    end
    object mem_movSAIDAS: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'SAIDAS'
    end
    object mem_movSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
    end
    object mem_movTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
    end
    object mem_movTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
    end
    object mem_movCODUSR: TFloatField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CODUSR'
    end
    object mem_movNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 53
    end
    object mem_movDOCUM: TFloatField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUM'
    end
    object mem_movLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
    end
    object mem_movDATANF: TDateTimeField
      FieldName = 'DATANF'
    end
    object mem_movNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 44
    end
    object mem_movEMIDOC: TIntegerField
      FieldName = 'EMIDOC'
    end
  end
end
